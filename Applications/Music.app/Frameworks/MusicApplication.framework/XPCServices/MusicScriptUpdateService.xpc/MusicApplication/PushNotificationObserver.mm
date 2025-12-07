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
    v4 = sub_1004B6B74();
    sub_100004D90(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v9 = &v15 - v8;
  if (topic)
  {
    topic = sub_1004BBE64();
    v11 = v10;
    if (info)
    {
LABEL_3:
      v12 = sub_1004BBC44();
      v13 = sub_1004BC4B4();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = self;
      v14[5] = topic;
      v14[6] = v11;
      v14[7] = v12;

      sub_1000FD6BC(0, 0, v9, &unk_1004D2540, v14);

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
  v3 = sub_10003DADC(_swiftEmptyArrayStorage);
  *self->registeredHandlers = v3;
  v5 = type metadata accessor for PushNotificationObserver(v3, v4);
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(PushNotificationObserver *)&v7 init];
}

@end