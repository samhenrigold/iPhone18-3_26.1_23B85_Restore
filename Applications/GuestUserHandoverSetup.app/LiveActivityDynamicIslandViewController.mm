@interface LiveActivityDynamicIslandViewController
- (NSString)associatedAppBundleIdentifier;
- (NSURL)launchURL;
- (_TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)endGuestUserModeButtonTapped;
- (void)launchAppGestureDetectedWithSender:(id)sender;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation LiveActivityDynamicIslandViewController

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSURL)launchURL
{
  v3 = sub_10000280C(&qword_100033EF8, &qword_10001F988);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_1000181AC(self + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_launchURL, &v13 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v9 = v11;
  }

  return v9;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100015B78();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100015F64(coordinator);
  swift_unknownObjectRelease();
}

- (void)endGuestUserModeButtonTapped
{
  selfCopy = self;
  sub_1000178D4();
}

- (void)launchAppGestureDetectedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100018030("[%{public}s] Tap leading accessory gesture detected.", sub_100004464);
}

- (_TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end