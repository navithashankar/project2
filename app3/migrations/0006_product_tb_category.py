# Generated by Django 4.1.3 on 2022-11-21 05:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app3', '0005_admin_tb'),
    ]

    operations = [
        migrations.AddField(
            model_name='product_tb',
            name='category',
            field=models.CharField(default=1, max_length=255),
            preserve_default=False,
        ),
    ]