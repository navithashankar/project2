# Generated by Django 4.1.3 on 2022-11-11 04:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app3', '0002_signup_tb_rename_login_tb_signin_tb_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='cont_tb',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('subject', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255)),
                ('message', models.TextField()),
            ],
        ),
    ]
