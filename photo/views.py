import json

from django.contrib.auth.decorators import login_required
from django.core.checks import messages
from django.core.exceptions import PermissionDenied
from django.http import Http404, HttpResponse
from django.shortcuts import render, get_object_or_404, redirect

from labrintask import settings
from photo.forms import ComposeForm, UploadPhotoForm
from photo.models import Photo, PhotoSharing, Comment
from photo.utils import generate_photo_thumnail_name
from users.models import Users


@login_required
def home(request):
    photo_data = []
    template = 'content.html'
    photo = Photo.objects.filter(users=request.user)
    for photo_item in photo:
        crop_url = generate_photo_thumnail_name(photo_item.image)
        data = {'id': photo_item.id, 'photo': photo_item.image, 'crop_url': crop_url}
        photo_data.append(data)

    users = Users.objects.all()
    return render(request, template, {'photo': photo_data, 'users': users})


def check_sharing(preview_user, user):
    list_id = []
    photo = Photo.objects.filter(users=Users.objects.get(email=preview_user))
    for photo_item in photo:
        list_id.append(photo_item.id)
    sharing = PhotoSharing.objects.filter(photo__in=photo, users=user)
    if sharing:
        return True
    else:
        return False


def check_sharing_photo(photo, user):
    photo = get_object_or_404(Photo, id=photo)
    sharing = PhotoSharing.objects.filter(photo=photo, users=user)
    if sharing:
        return True
    else:
        return False


def check_write_comment(photo, user):
    photo = get_object_or_404(Photo, id=photo)
    sharing = PhotoSharing.objects.filter(photo=photo, users=user)
    for sharing_item in sharing:
        return sharing_item.comment


@login_required
def photo_list(request):
    crop_data = []
    if 'user' in request.GET:
        preview_user = request.GET['user']
    else:
        raise Http404
    if not check_sharing(preview_user, request.user):
        raise PermissionDenied()
    else:
        template = 'photo.html'
        sharing = PhotoSharing.objects.filter(users=request.user, photo__users=Users.objects.get(email=preview_user))
        for sharing_item in sharing:
            crop_url = generate_photo_thumnail_name(sharing_item.photo.image)
            data = {'id': sharing_item.photo.id, 'photo': sharing_item.photo.image, 'crop_url': crop_url}
            crop_data.append(data)
        return render(request, template, {'photo': crop_data, 'users': Users.objects.get(email=preview_user)})


@login_required
def photo_details(request, pk):
    if not check_sharing_photo(pk, request.user):
        raise PermissionDenied()
    template = 'photo_details.html'
    photo = get_object_or_404(Photo, id=pk)
    form = ComposeForm()
    comments = Comment.objects.filter(photo=photo).order_by("id")
    write_comment = check_write_comment(pk, request.user)
    print(write_comment)
    content = {
        'photo': photo,
        'comments': comments,
        'form': form,
        'write_comment': write_comment
    }
    return render(request, template, content)


def check_delete_or_edit(user, comment, photo):
    if photo == None:
        if user == comment:
            return False
        else:
            return True
    else:
        if user == comment or user == photo:
            return False
        else:
            return True


@login_required
def comment_edit(request):
    if 'id' in request.GET:
        template = 'comment_edit_dialog.html'
        comments = Comment.objects.get(id=request.GET['id'])
        if check_delete_or_edit(request.user, comments.users, None):
            raise PermissionDenied
        # material_form = OrderMaterialForm(instance=material)
        form = ComposeForm(initial={'comment': comments.comment})
        if request.POST:
            if check_delete_or_edit(request.user, comments.users, None):
                raise PermissionDenied()
            comments.comment = request.POST['comment']
            comments.save()
        return render(request, template, {'form': form, 'comment_id': request.GET['id']})
    else:
        return Http404


@login_required
def comment_delete(request, pk):
    comment = get_object_or_404(Comment, id=pk)
    if check_delete_or_edit(request.user, comment.users, comment.photo.users):
        raise PermissionDenied
    comment.delete()
    return HttpResponse("success")


@login_required
def upload_photo(request):
    template = 'uploadphoto.html'
    if request.POST:
        form = UploadPhotoForm(request.POST,request.FILES)
        if form.is_valid():
            f = form.save(commit=False)
            f.users = request.user
            f.save()
            return redirect('home')
    else:
        form = UploadPhotoForm()
    context = {
        'form': form
    }
    return render(request, template, context)


def check_allow(user, photo_user):
    if user == photo_user:
        return False
    else:
        return True


def bad_request(message):
    response = HttpResponse(json.dumps({'message': message}),
        content_type='application/json')
    response.status_code = 400
    return response


@login_required
def allow_photo(request):
    if request.GET:
        photo_id = request.GET['id']
        photo = Photo.objects.get(id=photo_id)
        email = request.GET['email']
        user = Users.objects.get(email=email)
        type = request.GET['type']
        if check_allow(request.user, photo.users):
            return bad_request(message='You do not have permission')
        else:
            if type == 'photo':
                if check_sharing_photo(photo_id, user):
                    return bad_request(message='Previously allowed')
                else:
                    PhotoSharing.objects.create(photo=photo, users=user, comment=False)
                    return HttpResponse("success")
            elif type == 'comment':
                if check_write_comment(photo_id, user):
                    return bad_request(message='Previously allowed')
                elif not check_sharing_photo(photo_id, user):
                    return bad_request(message='First allow the picture')
                else:
                    sharing = PhotoSharing.objects.filter(photo=photo, users=user)[0]
                    sharing.comment = True
                    sharing.save()
                    return HttpResponse("success")
    else:
        return HttpResponse("error")
