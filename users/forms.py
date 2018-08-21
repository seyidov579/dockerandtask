from django import forms
from django.contrib.auth.forms import UserCreationForm
from users.models import Users


class SignUpForm(UserCreationForm):
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')

    class Meta:
        model = Users
        fields = ('email', 'password1', 'password2')