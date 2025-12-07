@interface TimerApertureElementController
- (NSString)associatedAppBundleIdentifier;
- (NSURL)launchURL;
- (_TtC10ClockAngel30TimerApertureElementController)init;
- (_TtC10ClockAngel30TimerApertureElementController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeightForBottomSafeArea;
- (id)_timelinesForDateInterval:(id)interval;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)collapse;
- (void)playPausedAction;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setElementIdentifier:(id)identifier;
- (void)setLaunchURL:(id)l;
- (void)setPresentationBehaviors:(unint64_t)behaviors;
- (void)stopAction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TimerApertureElementController

- (void)setPresentationBehaviors:(unint64_t)behaviors
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors);
  *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors) = behaviors;
  if (v4 != behaviors)
  {
    selfCopy = self;
    [-[TimerApertureElementController systemApertureElementContext](selfCopy "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }
}

- (double)preferredHeightForBottomSafeArea
{
  selfCopy = self;
  view = [(TimerApertureElementController *)selfCopy view];
  if (view)
  {
    v5 = view;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];

    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v16.origin.x = v8;
    v16.origin.y = v10;
    v16.size.width = v12;
    v16.size.height = v14;
    Height = CGRectGetHeight(v16);

    return 84.0 - Height;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSURL)launchURL
{
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL;
  swift_beginAccess();
  sub_10002CFC4(self + v6, v5, &unk_100119A20, &qword_1000D1DC0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setLaunchURL:(id)l
{
  v5 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL;
  swift_beginAccess();
  selfCopy = self;
  sub_10004EC60(v7, self + v10, &unk_100119A20, &qword_1000D1DC0);
  swift_endAccess();
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAssociatedAppBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier);
  *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000B4E30();
}

- (_TtC10ClockAngel30TimerApertureElementController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000B5C9C(v5, v7, bundle);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B6674(appear);
}

- (void)playPausedAction
{
  selfCopy = self;
  sub_1000BBF38();
}

- (void)stopAction
{
  selfCopy = self;
  sub_1000BC4BC();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000BC698(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)collapse
{
  selfCopy = self;
  [-[TimerApertureElementController systemApertureElementContext](selfCopy "systemApertureElementContext")];
  swift_unknownObjectRelease();
}

- (_TtC10ClockAngel30TimerApertureElementController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000BF7D4(change);
}

- (id)_timelinesForDateInterval:(id)interval
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for TimerApertureElementController(0);
  v13.receiver = selfCopy;
  v13.super_class = v10;
  v11 = [(TimerApertureElementController *)&v13 _timelinesForDateInterval:isa];

  if (!v11)
  {
    sub_10002BB3C(0, &unk_100119780, BLSAlwaysOnTimeline_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = Array._bridgeToObjectiveC()().super.isa;
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000BFE7C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1000BFEC4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B270;
  aBlock[3] = &unk_100103A30;
  v9 = _Block_copy(aBlock);
  specifierCopy = specifier;
  selfCopy = self;

  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for TimerApertureElementController(0);
  [(TimerApertureElementController *)&v12 _updateWithFrameSpecifier:specifierCopy completion:v9];

  _Block_release(v9);
}

@end