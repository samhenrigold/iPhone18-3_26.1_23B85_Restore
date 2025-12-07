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
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002C064(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v9 = &v15 - v8;
  if (topic)
  {
    topic = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (info)
    {
LABEL_3:
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = self;
      v14[5] = topic;
      v14[6] = v11;
      v14[7] = v12;

      sub_100969440(0, 0, v9, &unk_100EF6750, v14);

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
  *self->registeredHandlers = sub_1008BD7C4(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end