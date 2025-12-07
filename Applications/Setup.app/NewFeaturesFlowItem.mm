@interface NewFeaturesFlowItem
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (id)viewController;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setChronicle:(id)chronicle;
@end

@implementation NewFeaturesFlowItem

- (void)setChronicle:(id)chronicle
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_chronicle) = chronicle;
  chronicleCopy = chronicle;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BuddyFeatureFlags)featureFlags
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BOOL)controllerNeedsToRun
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup19NewFeaturesFlowItem_runState);
  if (v2)
  {
    selfCopy = self;
    hasCompletedInitialRun = [v2 hasCompletedInitialRun];
    if (hasCompletedInitialRun)
    {
      v6 = [sub_100004C40(hasCompletedInitialRun v5)];
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    LOBYTE(self) = v6;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v5 = sub_100006410(&qword_1003A0110, &qword_100297980);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100297308;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100297310;
  v12[5] = v11;
  selfCopy = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (void)controllerWasPopped
{
  selfCopy = self;
  [sub_100004C40(selfCopy v2)];
  swift_unknownObjectRelease();
}

- (id)viewController
{
  selfCopy = self;
  v3 = sub_100005764();

  return v3;
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end