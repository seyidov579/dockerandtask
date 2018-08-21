from django.conf.urls import url
from django.urls import path, re_path


from photo import views

app_name = 'photo'
urlpatterns = [
    path('', views.photo_list, name='list'),
    path('upload/', views.upload_photo, name='upload'),
    path('allow/', views.allow_photo, name='allow'),
    re_path(r'^details/(?P<pk>\d+)/', views.photo_details, name='details'),
    re_path(r'^details/comment/edit/', views.comment_edit, name='edit'),
    re_path(r'^details/comment/delete/(?P<pk>\d+)/', views.comment_delete, name='delete'),
]