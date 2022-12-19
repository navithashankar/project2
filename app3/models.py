from django.db import models

# Create your models here.
# class signin_tb(models.Model):
# 	name=models.CharField(max_length=255)
# 	password=models.CharField(max_length=255)

class signup_tb(models.Model):
	name=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	password=models.CharField(max_length=255)
	hashpassword=models.TextField()

class cont_tb(models.Model):
	name=models.CharField(max_length=255)
	subject=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	message=models.TextField()


class admin_tb(models.Model):
	name=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	password=models.CharField(max_length=255)
	phone=models.CharField(max_length=255)

	
class product_tb(models.Model):
	name=models.CharField(max_length=255)
	price=models.CharField(max_length=255)
	offprice=models.CharField(max_length=255)
	details=models.TextField()
	proimage=models.ImageField(upload_to="product/")
	category=models.CharField(max_length=255)


class cart_tb(models.Model):
	pid = models.ForeignKey(product_tb, on_delete=models.CASCADE)
	uid = models.ForeignKey(signup_tb, on_delete=models.CASCADE)
	quantity=models.CharField(max_length=255)
	totalamount=models.CharField(max_length=255)
	status=models.CharField(max_length=255,default="pending")


class payment_tb(models.Model):
	uid=models.ForeignKey(signup_tb, on_delete=models.CASCADE)
	totalamount=models.CharField(max_length=255)
	status=models.CharField(max_length=255)
	date=models.DateField()
	time=models.TimeField()


