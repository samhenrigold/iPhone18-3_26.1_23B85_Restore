@interface Restrictions
- (_TtC20AttributionKitDaemon12Restrictions)init;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation Restrictions

- (_TtC20AttributionKitDaemon12Restrictions)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  self->cachedValues[0] = 2;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v4 = [(Restrictions *)&v9 init];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedConnection];
  if (result)
  {
    v8 = result;
    [(Restrictions *)result registerObserver:v6];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;

  sub_10001267C(0, 0, v7, &unk_1001BFCD8, v9);
}

@end