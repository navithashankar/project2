# Generated by Django 4.1.3 on 2022-11-23 04:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app3', '0006_product_tb_category'),
    ]

    operations = [
        migrations.CreateModel(
            name='cart_tb',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.CharField(max_length=255)),
                ('totalamount', models.CharField(max_length=255)),
                ('status', models.CharField(default='pending', max_length=255)),
                ('pid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app3.product_tb')),
                ('uid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app3.signup_tb')),
            ],
        ),
    ]
