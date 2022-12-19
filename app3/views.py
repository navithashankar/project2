from django.shortcuts import render
from app3.models import *
from django.http import HttpResponseRedirect, JsonResponse,HttpResponse
import os
import random
import string
from django.conf import settings
from django.core.mail import send_mail
import datetime

import hashlib 
# Create your views here.
 
def index(request):
	data=product_tb.objects.all()
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'index.html',{"prd":data,"category":category})

def about(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'about.html',{"category":category})

def faqs(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'faqs.html',{"category":category})

def help(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'help.html',{"category":category})

def icons(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'icons.html',{"category":category})

def payment(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	if request.method == "POST":
		uid=request.session["myid"]
		uidd=signup_tb.objects.get(id=uid)
		total=request.POST['total']
		cdate=datetime.datetime.now().date()
		ctime=datetime.datetime.now().time()
		add=payment_tb(uid=uidd,totalamount=total,status="paid",date=cdate,time=ctime)
		add.save()
		cart_tb.objects.filter(uid=uidd,status="pending").update(status="paid")
		return HttpResponseRedirect("/")
	else:
		total=request.GET['gt']
		return render(request,'payment.html',{"category":category,"total":total})

def privacy(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'privacy.html',{"category":category})

def product(request):
	cat=request.GET['ct']
	prd=product_tb.objects.filter(category=cat)
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	content={"category":category,"product":prd,"cat":cat}
	return render(request,'product.html',content)

def product2(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'product2.html',{"category":category})

def single(request):
	if request.session.has_key('myid'):
		category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
		pid=request.GET["pid"]
		data=product_tb.objects.filter(id=pid)
		products=product_tb.objects.all()
		return render(request,'single.html',{"prd":data,"category":category,"products":products})
	else:
		return HttpResponseRedirect('/signin/')


def single2(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'single2.html',{"category":category})

def terms(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'terms.html',{"category":category})

def typography(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'typography.html',{"category":category})


def contact(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	if request.method == "POST":
		cname=request.POST['name']
		csubject=request.POST['subject']
		cemail=request.POST['email']
		cmessage=request.POST['message']
		check=cont_tb.objects.filter(name=cname,subject=csubject,email=cemail,message=cmessage)
		if check:
			return render(request,'contact.html',{"error":"already registered phno"})
		else:
			add=cont_tb(name=cname,subject=csubject,email=cemail,message=cmessage)
			add.save()
			x = ''.join(random.choices(cname + string.digits, k=8))
			y = ''.join(random.choices(string.ascii_letters + string.digits, k=7))
			subject = 'Contact Form'
			message = f'Hi a message from {cname} {cemail}, subjects is {csubject}, message is {cmessage} thank you .'
			email_from = settings.EMAIL_HOST_USER 
			recipient_list = ['navitha18123@gmail.com', ] 
			send_mail( subject, message, email_from, recipient_list ) 
			return render(request,'index.html',{"success":"email saved"})
	else:
		return render(request,'contact.html',{"category":category})

def usercontact(request):
	data=cont_tb.objects.all()
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	return render(request,'uservw.html',{"details":data,"category":category})


def signup(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	if request.method == "POST":
		cname=request.POST['Name']
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		cpassword2=request.POST['ConfirmPassword']
		hashpass=hashlib.md5(cpassword.encode('utf8')).hexdigest()
		check=signup_tb.objects.filter(email=cemail)
		if cpassword == cpassword2:			
			if check:
				return render(request,'signup.html',{"error":"already registered email"})
			else:
				add=signup_tb(name=cname,email=cemail,password=cpassword,hashpassword=hashpass)
				add.save()

				x = ''.join(random.choices(cname + string.digits, k=8))
				y = ''.join(random.choices(string.ascii_letters + string.digits, k=7))
				subject = 'welcome to Grocery'
				message = f'Hi {cname}, thank you for registering in Grocery . your user username: {cname} and  password: {cpassword}.'
				email_from = settings.EMAIL_HOST_USER 
				recipient_list = [cemail, ] 
				send_mail( subject, message, email_from, recipient_list ) 
				return render(request,'index.html',{"success":"email saved"})
		else:
			return render(request,'signup.html',{"error":"Password does not match"})


	else:
		return render(request,'signup.html',{"category":category})



def signin(request):
	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	if request.method == "POST":
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		hashpass=hashlib.md5(cpassword.encode('utf8')).hexdigest()

		check=signup_tb.objects.filter(email=cemail,password=cpassword,hashpassword=hashpass)
		if check:
			for x in check:
				request.session["myid"]=x.id
				request.session['myname']=x.name
			return render(request,'index.html',{"success":"login success"})
		else:
			return render(request,'signin.html',{"error":"invalid details"})
	else:
		return render(request,'signin.html',{"category":category})


def logout(request):
	# category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	if request.session.has_key('myid'):
		del request.session['myid']
		del request.session['myname']

	return HttpResponseRedirect('/')

def addtocart(request):

	category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
	if request.method=="POST":
		pid=request.GET["pid"]
		pidd=product_tb.objects.get(id=pid)
		uid=request.session["myid"]
		uidd=signup_tb.objects.get(id=uid)
		prd=product_tb.objects.filter(id=pid)
		total=0
		for x in prd:
			amount=x.offprice
		total=((int(amount)*10)/100+int(amount))
		check=cart_tb.objects.filter(pid=pidd,uid=uidd,status="pending")
		if check:
			uid=request.session["myid"]
			uidd=signup_tb.objects.get(id=uid)
			cart=cart_tb.objects.filter(uid=uidd,status="pending")
			total=0
			for x in cart:
				price=x.totalamount
				total=float(price)+total
			return render(request,"cart.html",{"cart":cart,"total":total,"category":category})
		else:

			add=cart_tb(pid=pidd,uid=uidd,quantity=1,totalamount=total)
			add.save()
			return HttpResponseRedirect("/cart/",{"success":"product saved"})
	else:
		pid=request.GET["pid"]
		data=product_tb.objects.filter(id=pid)
		return render(request,'single.html',{"prd":data,"category":category})


def cart(request):
	if request.session.has_key('myid'):
		category=product_tb.objects.raw('SELECT * FROM app3_product_tb  GROUP BY category')
		uid=request.session["myid"]
		uidd=signup_tb.objects.get(id=uid)
		cart=cart_tb.objects.filter(uid=uidd,status="pending")
		total=0
		for x in cart:
			price=x.totalamount
			total=float(price)+total
		return render(request,"cart.html",{"cart":cart,"total":total,"category":category})

	else:
		return HttpResponseRedirect('/signin/')

def updatecart(request):
	cid=request.GET['cid']
	qty=request.POST['qty']
	cart=cart_tb.objects.filter(id=cid)
	total=0
	for x in cart:
		price=x.pid.offprice
	delv=(int(price)*10)/100
	total=(float(delv)+int(price))*int(qty)
	cart_tb.objects.filter(id=cid).update(quantity=qty,totalamount=total)
	return HttpResponseRedirect("/cart/")

def removecart(request):
	cid=request.GET['cid']
	cart_tb.objects.filter(id=cid).delete()
	return HttpResponseRedirect("/cart/")




################################################################################################################################
################################################################################################################################
################################################################################################################################
#################################################################Admin##########################################################




def admin_login(request):
	if request.method == "POST":
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		login=admin_tb.objects.filter(email=cemail,password=cpassword)
		if login:
			for x in login:
				request.session["aid"]=x.id
				request.session["aname"]=x.name
			return HttpResponseRedirect("/admin_index/")
		else:
			return render(request,'admin/login.html',{"error":"invalid details"})
	else:
		return render(request,'admin/login.html')

		
def admin_logout(request):
	if request.session.has_key('aid'):
		del request.session['aid']
		del request.session['aname']		
	return HttpResponseRedirect('/')

		
def admin_registration(request):
	if request.method == "POST":
		cname=request.POST['Name']
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		cphone=request.POST['Phone']
		check=admin_tb.objects.filter(email=cemail)
		if check:
			return render(request,'admin/registration.html',{"error":"already registered email"})
		else:
			add=admin_tb(name=cname,email=cemail,password=cpassword,phone=cphone)
			add.save()
			return render(request,'admin/login.html',{"success":"email saved"})
	else:
		return render(request,'admin/registration.html')

def admin_index(request):
	if request.session.has_key('aid'):
		return render(request,'admin/index.html')
	else:
		return HttpResponseRedirect('/admin_login/')

def admin_form_component(request):
	return render(request,'admin/form_component.html')


def admin_product_form(request):
	if request.method == "POST":
		cname=request.POST['Name']
		cprice=request.POST['Price']
		coffprice=request.POST['Offprice']
		cdetails=request.POST['Details']
		cproimage=request.FILES['Proimage']
		ccategory=request.POST['category']
		check=product_tb.objects.filter(name=cname)
		if check:
			return render(request,'admin/productform.html',{"error":"already registered product"})
		else:
			add=product_tb(name=cname,price=cprice,offprice=coffprice,details=cdetails,proimage=cproimage,category=ccategory)
			add.save()
			return render(request,'admin/productform.html',{"success":"product saved"})
	else:

		return render(request,'admin/productform.html')


def admin_product_table(request):
	data=product_tb.objects.all()
	return render(request,'admin/product_table.html',{"prd":data})


def admin_productupdate(request):
	if request.method == "POST":
		cname=request.POST['Name']
		cprice=request.POST['Price']
		coffprice=request.POST['Offprice']
		cdetails=request.POST['Details']
		prdid=request.GET['pid']
		ccategory=request.POST['Category']
		imgup=request.POST['imgup']
		if imgup == "yes":
			cproimage=request.FILES['Proimage']
			oldrec=product_tb.objects.filter(id=prdid)
			updrec=product_tb.objects.get(id=prdid)
			for x in oldrec:
				imgurl=x.proimage.url
				pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
				if os.path.exists(pathtoimage):
					os.remove(pathtoimage)
					print('Successfully deleted')
			updrec.proimage=cproimage
			updrec.save()


		data=product_tb.objects.filter(id=prdid).update(name=cname,price=cprice,offprice=coffprice,details=cdetails,category=ccategory)
		return HttpResponseRedirect('/admin_product_form/')
	else:
		prdid=request.GET['pid']
		data=product_tb.objects.filter(id=prdid)
		return render(request,'admin/productupdate.html',{"details":data})


def admin_productdelete(request):
	prdid=request.GET['pid']
	oldrec=product_tb.objects.filter(id=prdid)
	for x in oldrec:
		imgurl=x.proimage.url
		pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
		if os.path.exists(pathtoimage):
			os.remove(pathtoimage)
			print('Successfully deleted')
	data=product_tb.objects.filter(id=prdid).delete()
	return HttpResponseRedirect('/admin_product_form/')


def admin_ordertable(request):
	data=cart_tb.objects.all()
	return render(request,'admin/ordertable.html',{"prd":data})



def admin_payment_table(request):
	data=payment_tb.objects.all()
	return render(request,'admin/payment_table.html',{"prd":data})


def admin_userform(request):
	data=signup_tb.objects.all()
	return render(request,'admin/userform.html',{"usr":data})


def ajaxview(request):
	uid=request.GET.get('uid')
	user=signup_tb.objects.filter(id=uid)
	for x in user:
		name=x.name
		email=x.email
		
	dat={"aa":name,"bb":email}
	print(dat)
	return JsonResponse(dat)	


from reportlab.pdfgen import canvas 
from django.views.generic import View
from pro3.utils import render_to_pdf


def downloadpdf(request):
	pid=request.GET['pid']		
	data=payment_tb.objects.filter(id=pid)
	pdf=render_to_pdf('admin/pdfdownload.html',{'data':data})
	return HttpResponse(pdf,content_type='application/pdf')
	
	
