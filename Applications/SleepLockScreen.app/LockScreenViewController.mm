@interface LockScreenViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (_TtC15SleepLockScreen24LockScreenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithUserInfo:(id)info contentBounds:(id)bounds endpoint:(id)endpoint;
- (void)didChangeContentBounds;
- (void)didDismissForDismissType:(int64_t)type;
- (void)getContentPreferencesWithReplyBlock:(id)block;
- (void)getInlinePresentationContentFrameWithReplyBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation LockScreenViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000043DC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100004878(appear, &selRef_viewDidAppear_, "[%{public}s] view did appear");
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100004878(disappear, &selRef_viewDidDisappear_, "[%{public}s] view did disappear");
}

+ (id)_remoteViewControllerInterface
{
  v2 = HKSPSleepLockScreenRemoteContentHostInterface();

  return v2;
}

+ (id)_exportedInterface
{
  v2 = HKSPSleepLockScreenRemoteContentServiceInterface();

  return v2;
}

- (void)configureWithUserInfo:(id)info contentBounds:(id)bounds endpoint:(id)endpoint
{
  if (info)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for MainActor();
  __chkstk_darwin(v9);
  v11[2] = self;
  v11[3] = v8;
  v11[4] = bounds;
  v11[5] = endpoint;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100007E00(sub_10000F25C, v11, "SleepLockScreen/LockScreenViewController.swift", 46, 2u, 226);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)didChangeContentBounds
{
  selfCopy = self;
  sub_1000080A8();
}

- (void)getInlinePresentationContentFrameWithReplyBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for MainActor();
  v7[2] = self;
  v7[3] = sub_10000EE4C;
  v7[4] = v5;
  v7[5] = 0;
  v7[6] = 0;
  selfCopy = self;
  sub_100007E00(sub_10000F238, v7, "SleepLockScreen/LockScreenViewController.swift", 46, 2u, 259);
}

- (void)getContentPreferencesWithReplyBlock:(id)block
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();
  selfCopy = self;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = 0;
  v13[5] = 0;
  v13[6] = sub_10000EE4C;
  v13[7] = v9;
  v13[8] = selfCopy;
  sub_100008C3C(0, 0, v7, &unk_1000112E0, v13);
}

- (void)didDismissForDismissType:(int64_t)type
{
  type metadata accessor for MainActor();
  v6[2] = self;
  v6[3] = type;
  selfCopy = self;
  sub_100007E00(sub_10000EDC0, v6, "SleepLockScreen/LockScreenViewController.swift", 46, 2u, 314);
}

- (_TtC15SleepLockScreen24LockScreenViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end