# Generated by Django 4.1.3 on 2022-11-25 05:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app3', '0008_payment_tb'),
    ]

    operations = [
        migrations.AlterField(
            model_name='payment_tb',
            name='uid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app3.signup_tb'),
        ),
    ]
