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
    v4 = sub_10056C918();
    sub_10008246C(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v9 = &v15 - v8;
  if (topic)
  {
    topic = sub_1005728D8();
    v11 = v10;
    if (info)
    {
LABEL_3:
      v12 = sub_1005726A8();
      v13 = sub_100572F48();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = self;
      v14[5] = topic;
      v14[6] = v11;
      v14[7] = v12;

      sub_1001B3FAC(0, 0, v9, &unk_10058F890, v14);

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
  *self->registeredHandlers = sub_1000F4B7C(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *self->connection = 0u;
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end