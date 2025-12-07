@interface LiveActivityElementViewController
- (NSURL)launchURL;
- (_TtC16SafetyMonitorApp33LiveActivityElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation LiveActivityElementViewController

- (NSURL)launchURL
{
  v3 = sub_100007B4C(&qword_100019AC8, &qword_1000116D0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v15 - v5;
  selfCopy = self;
  sub_1000024E8(v6);

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002EAC();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000038F0(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC16SafetyMonitorApp33LiveActivityElementViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100006FFC(v5, v7, bundle);
}

@end