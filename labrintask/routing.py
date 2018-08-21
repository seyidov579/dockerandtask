from channels.routing import ProtocolTypeRouter, URLRouter
from django.conf.urls import url
from channels.auth import AuthMiddlewareStack
from channels.security.websocket import AllowedHostsOriginValidator, OriginValidator

from photo.consumers import CommentConsumer

application = ProtocolTypeRouter({
    # Empty for now (http->django views is added by default)
    'websocket': AllowedHostsOriginValidator(
        AuthMiddlewareStack(
            URLRouter(
                [
                    # url(r"^messages/(?P<email>[\w.@+-]+)/$", ChatConsumer),
                    # url(r"^photo/(?P<id>\d+)/$", CommentConsumer),
                    url(r'^photo/details/(?P<pk>\d+)/$', CommentConsumer)
                ]
            )
        )
    )
})
