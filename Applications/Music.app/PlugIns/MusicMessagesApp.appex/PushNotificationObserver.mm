@interface PushNotificationObserver
- (_TtC9MusicCore24PushNotificationObserver)init;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushNotificationObserver

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    v4 = sub_1004D810C();
    sub_100010598(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  if (topic)
  {
    topic = sub_1004DD43C();
    v11 = v10;
    if (info)
    {
LABEL_3:
      v12 = sub_1004DD21C();
      v13 = sub_1004DDA8C();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = self;
      v14[5] = topic;
      v14[6] = v11;
      v14[7] = v12;

      sub_10011F560(0, 0, v9, &unk_10051FBE0, v14);

      return;
    }
  }

  else
  {
    v11 = 0;
    if (info)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

- (_TtC9MusicCore24PushNotificationObserver)init
{
  swift_defaultActor_initialize();
  *self->registeredHandlers = sub_10005FAD4(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end