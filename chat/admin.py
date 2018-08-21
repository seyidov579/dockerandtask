from django.contrib import admin

from .models import Thread, ChatMessage


class ChatMessages(admin.TabularInline):
    model = ChatMessage


class ThreadAdmin(admin.ModelAdmin):
    inlines = [ChatMessages]

    class Meta:
        model = Thread


admin.site.register(Thread, ThreadAdmin)
