@interface AXTwiceCompanionMainViewController
- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cardSwipeDownWithGesture:(id)gesture;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AXTwiceCompanionMainViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  v4 = v7.receiver;
  [(AXTwiceCompanionMainViewController *)&v7 viewDidAppear:appearCopy];
  LODWORD(appearCopy) = *MEMORY[0x277D76488];
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v6 = *&v4[v5];
  UIAccessibilityPostNotification(appearCopy, v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23D6CF160();
}

- (void)cardSwipeDownWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_23D6D0A2C(gestureCopy);
}

- (_TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_23D6EE740();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return AXTwiceCompanionMainViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end