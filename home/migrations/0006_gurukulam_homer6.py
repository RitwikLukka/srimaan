# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2018-12-26 11:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_homer4'),
    ]

    operations = [
        migrations.CreateModel(
            name='Gurukulam',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('content', models.FileField(upload_to='documents')),
                ('image', models.ImageField(upload_to='images')),
                ('link', models.CharField(max_length=50)),
                ('updated_by', models.CharField(max_length=100)),
                ('updated_on', models.DateTimeField()),
                ('active', models.IntegerField()),
            ],
            options={
                'db_table': 'gurukulam',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='HomeR6',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('content', models.TextField()),
                ('updated_by', models.CharField(max_length=100)),
                ('updated_on', models.DateTimeField()),
                ('active', models.IntegerField()),
            ],
            options={
                'db_table': 'home_r6',
                'managed': False,
            },
        ),
    ]
