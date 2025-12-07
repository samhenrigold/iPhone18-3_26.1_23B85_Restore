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
    v4 = sub_AB3260();
    sub_466B8(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v9 = &v15 - v8;
  if (topic)
  {
    topic = sub_AB92A0();
    v11 = v10;
    if (info)
    {
LABEL_3:
      v12 = sub_AB8FF0();
      v13 = sub_AB9990();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = self;
      v14[5] = topic;
      v14[6] = v11;
      v14[7] = v12;

      sub_5E89D8(0, 0, v9, &unk_B20E90, v14);

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
  *&self->connection[8] = sub_52ACC8(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for PushNotificationObserver();
  *&self->connection[16] = 0u;
  *&self->pushConfiguration[8] = 0u;
  *&self[1].$defaultActor[8] = 0;
  v5.receiver = self;
  v5.super_class = v3;
  return [(PushNotificationObserver *)&v5 init];
}

@end