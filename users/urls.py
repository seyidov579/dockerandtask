from django.conf.urls import url
from django.urls import path, re_path


from users import views

app_name = 'users'
urlpatterns = [
    path('', views.signup, name='reg'),
    path('logout/', views.logout_view, name='logout'),
]