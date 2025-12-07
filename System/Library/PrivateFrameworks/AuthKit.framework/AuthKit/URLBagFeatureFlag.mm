@interface URLBagFeatureFlag
- (_TtC3akd17URLBagFeatureFlag)init;
- (_TtC3akd17URLBagFeatureFlag)initWithUrlBagKey:(id)key urlBagProvider:(id)provider;
- (void)featureStatusWithCompletionHandler:(id)handler;
- (void)fetchURLWithCompletionHandler:(id)handler;
@end

@implementation URLBagFeatureFlag

- (_TtC3akd17URLBagFeatureFlag)initWithUrlBagKey:(id)key urlBagProvider:(id)provider
{
  v6 = _Block_copy(provider);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  keyCopy = key;
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&self->$defaultActor[v9], 1, 1, v10);
  *&self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = keyCopy;
  v11 = &self->$defaultActor[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v11 = sub_10022B974;
  v11[1] = v7;
  v13.receiver = self;
  v13.super_class = type metadata accessor for URLBagFeatureFlag(0);
  return [(URLBagFeatureFlag *)&v13 init];
}

- (void)fetchURLWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029F4E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F4E8;
  v12[5] = v11;

  sub_100244978(0, 0, v7, &unk_10029F4F0, v12);
}

- (void)featureStatusWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029F4D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;

  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

- (_TtC3akd17URLBagFeatureFlag)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end