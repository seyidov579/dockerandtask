import asyncio
import json
from channels.consumer import AsyncConsumer
from channels.db import database_sync_to_async
from django.core.exceptions import PermissionDenied

from photo.models import Comment, Photo
from photo.views import check_write_comment


class CommentConsumer(AsyncConsumer):
    async def websocket_connect(self, event):
        print("connected", event)
        await self.send({
            "type": "websocket.accept"
        })
        photo_id = self.scope['url_route']['kwargs']['pk']
        # comment_user = self.scope['user']
        # thread = await self.get_comment(photo_id)
        # self.thread = thread
        # print(thread)
        chat_room = f"thread_{photo_id}"
        self.chat_room = chat_room
        await self.channel_layer.group_add(
            chat_room,
            self.channel_name
        )
        # await asyncio.sleep(30)
        # await self.send({
        #     "type": "websocket.send",
        #     "text": "Hello World"
        # })

    async def websocket_receive(self, event):
        print("receive", event)
        front_text = event.get("text", None)
        if front_text is not None:
            loaded_dict_data = json.loads(front_text)
            msg = loaded_dict_data.get("message")
            comment_last_id = Comment.objects.all().last()
            if comment_last_id == None:
                current_id = 1
            else:
                current_id = comment_last_id.id + 1
            photo_id = self.scope['url_route']['kwargs']['pk']
            user = self.scope['user']
            username = 'default'
            if user.is_authenticated:
                username = user.email
            myResponse = {
                'message': msg,
                'username': username,
                'id': current_id
            }
            await self.create_comment(current_id, photo_id, user, msg)

            # broadcasts the message event to be send
            await self.channel_layer.group_send(
                self.chat_room,
                {
                    "type": "chat_message",
                    "text": json.dumps(myResponse)
                }
            )
        # await self.send({
        #     "type": "websocket.send",
        #     "text": json.dumps(myResponse)
        # })

    async def chat_message(self, event):
        # send the actual message
        print("message", event)
        await self.send({
            "type": "websocket.send",
            "text": event['text']
        })

    async def websocket_disconnect(self, event):
        print("disconnected", event)

    @database_sync_to_async
    def get_comment(self):
        comment = Comment.objects.all().last()
        if comment == None:
            id = 0
        else:
            id = comment.id
        return id

    @database_sync_to_async
    def create_comment(self,current_id,  photo, me, message):
        if not check_write_comment(photo, me):
            raise PermissionError
        else:
            return Comment.objects.create(id=current_id, photo=Photo.objects.get(id=photo), users=me, comment=message)
