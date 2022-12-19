from django.urls import path
from . import views

urlpatterns = [

	path('',views.index),
	path('about/',views.about),
	path('contact/',views.contact),
	path('faqs/',views.faqs),
	path('help/',views.help),
	path('icons/',views.icons),
	path('payment/',views.payment),
	path('privacy/',views.privacy),
	path('product/',views.product),
	path('product2/',views.product2),
	path('single/',views.single),
	path('single2/',views.single2),
	path('terms/',views.terms),
	path('typography/',views.typography),
	path('signin/',views.signin),
	path('signup/',views.signup),
	path('logout/',views.logout),
	path('addtocart/',views.addtocart),
	path('cart/',views.cart),
	path('updatecart/',views.updatecart),
	path('removecart/',views.removecart),
	



########################################################################
	path('admin_index/',views.admin_index),
	path('admin_registration/',views.admin_registration),
	path('admin_login/',views.admin_login),
	path('admin_form_component/',views.admin_form_component),
	path('admin_logout/',views.admin_logout),
	path('admin_product_form/',views.admin_product_form),
	path('admin_product_table/',views.admin_product_table),
	path('admin_productupdate/',views.admin_productupdate),
	path('admin_productdelete/',views.admin_productdelete),
	path('admin_ordertable/',views.admin_ordertable),
	path('admin_payment_table/',views.admin_payment_table),
	path('admin_userform/',views.admin_userform),
	path('ajaxview/',views.ajaxview),
	

	


]