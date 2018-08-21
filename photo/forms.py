from django import forms

from photo.models import Photo


class ComposeForm(forms.Form):
    comment = forms.CharField(
        widget=forms.TextInput(
            attrs={"class": "form-control"}
            )
        )


class UploadPhotoForm(forms.ModelForm):
    class Meta:
        model = Photo
        # fields = '__all__'
        exclude = ('users', )