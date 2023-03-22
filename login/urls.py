from django.urls import path
from . import views

urlpatterns = [
    path('',views.startpage, name='startpage'),
    path('login',views.loginpage, name='loginpage'),
    path('admin_signup',views.admin_signup, name='admin_signup'),
    path('adm_login',views.adm_login, name='adm_login'),
    path('adminland',views.adminland, name='adminland'),
    path('ad_doc_add',views.ad_doc_add, name='ad_doc_add'),
    path('delete_doc',views.delete_doc, name='delete_doc'),
    path('signup',views.signup, name='signup'),
    path('home',views.home, name='home'),
    path('about',views.about,name='about'),
    path('find_d',views.find_d,name='find_d'),
    path('blog',views.blog,name='blog'),
    path('news',views.news,name='news'),
    path('bmi',views.bmi,name='bmi'),
    path('profile',views.profile,name='profile'),
    path('profileedit',views.profileedit,name='profileedit'),
    path('doctorprof',views.doctorprof,name='doctorprof'),
    path('cancel_app',views.cancel_app,name='cancel_app'),
    path('drrev',views.drrev,name='drrev'),
    path('faq',views.faq,name='faq'),
    path('deleterev',views.deleterev,name='deleterev'),
]