# Generated by Django 2.1 on 2018-08-19 17:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('photo', '0003_auto_20180819_0146'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='commentsharing',
            name='comment',
        ),
        migrations.RemoveField(
            model_name='commentsharing',
            name='users',
        ),
        migrations.AddField(
            model_name='photosharing',
            name='comment',
            field=models.BooleanField(default=False),
        ),
        migrations.DeleteModel(
            name='CommentSharing',
        ),
    ]
