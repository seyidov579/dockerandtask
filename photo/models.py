from django.db import models
from django.db.models import Q
from django.db.models.signals import post_save
from django.dispatch import receiver
from easy_thumbnails.fields import ThumbnailerImageField

from labrintask import settings
from users.models import Users


class Photo(models.Model):
    users = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.DO_NOTHING, related_name='users_photo')
    image = ThumbnailerImageField('Image', upload_to='users/image')


class PhotoSharing(models.Model):
    photo = models.ForeignKey(Photo, related_name='sharing_photo', on_delete=models.DO_NOTHING)
    users = models.ForeignKey(settings.AUTH_USER_MODEL, related_name='sharing_users', on_delete=models.DO_NOTHING)
    comment = models.BooleanField(default=False)


class Comment(models.Model):
    users = models.ForeignKey(settings.AUTH_USER_MODEL, related_name='users_comment', on_delete=models.DO_NOTHING)
    photo = models.ForeignKey(Photo, related_name='photo_comment', on_delete=models.DO_NOTHING)
    comment = models.TextField('Comment')


@receiver(post_save, sender=Photo, dispatch_uid="photo_signal")
def photo_signal(sender, **kwargs):
    instance = kwargs.get('instance')
    if kwargs['created']:
        PhotoSharing.objects.create(users=instance.users, photo=Photo.objects.get(id=instance.id), comment=True)



