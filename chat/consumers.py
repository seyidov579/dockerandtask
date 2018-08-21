import asyncio
import json
from channels.consumer import AsyncConsumer
from channels.db import database_sync_to_async

from chat.models import Thread, ChatMessage


class ChatConsumer(AsyncConsumer):
    async def websocket_connect(self, event):
        print("connected", event)
        await self.send({
            "type": "websocket.accept"
        })
        other_user = self.scope['url_route']['kwargs']['email']
        me = self.scope['user']
        thread = await self.get_thread(me, other_user)
        self.thread = thread
        # print(thread)
        chat_room = f"thread_{thread.id}"
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
            print(msg)
            user = self.scope['user']
            username= 'default'
            if user.is_authenticated:
                username = user.email
            myResponse = {
                'message': msg,
                'username': username
            }
            await self.create_message(user, msg)

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
    def get_thread(self, user, other_user):
        return Thread.objects.get_or_new(user, other_user)[0]

    @database_sync_to_async
    def create_message(self, me, message):
        thread = self.thread
        return ChatMessage.objects.create(thread=thread, user=me, message=message)
