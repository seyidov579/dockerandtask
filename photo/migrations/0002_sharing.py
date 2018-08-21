# Generated by Django 2.1 on 2018-08-17 23:35

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('photo', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Sharing',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('photo', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='sharing_photo', to='photo.Photo')),
                ('users', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='sharing_users', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
