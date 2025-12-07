@interface ShareAssetStoryActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (_TtC5Music23ShareAssetStoryActivity)init;
- (id)_bundleIdentifierForActivityImageCreation;
@end

@implementation ShareAssetStoryActivity

- (NSString)activityType
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)activityTitle
{
  sub_10044BB14(*(&self->super.super.isa + OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork));
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  selfCopy = self;
  v4 = sub_1005EED94();

  return v4 & 1;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_100115508;
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  v11 = sub_1005EEED8();
  sub_100020438(v7, v8);

  return v11 & 1;
}

- (_TtC5Music23ShareAssetStoryActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end