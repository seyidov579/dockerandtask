from django.contrib import admin
from photo.models import Photo, PhotoSharing, Comment

admin.site.register(Photo)
admin.site.register(PhotoSharing)
admin.site.register(Comment)

