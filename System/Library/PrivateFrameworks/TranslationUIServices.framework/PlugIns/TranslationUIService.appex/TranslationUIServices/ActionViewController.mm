@interface ActionViewController
- (_TtC20TranslationUIService20ActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_willAppearInRemoteViewController;
- (void)adaptForPresentationInPopover:(BOOL)popover;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ActionViewController

- (void)_willAppearInRemoteViewController
{
  selfCopy = self;
  sub_100005E78();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100006550(selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ActionViewController();
  v4 = v6.receiver;
  [(ActionViewController *)&v6 viewWillAppear:appearCopy];
  v5 = sub_100007350();
  if (v5)
  {
    [v5 remoteIsReady];
    swift_unknownObjectRelease();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActionViewController();
  v4 = v5.receiver;
  [(ActionViewController *)&v5 viewWillDisappear:disappearCopy];
  if (!*&v4[OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp])
  {
    sub_100004FF4();
    sub_10002E884();
  }
}

- (void)adaptForPresentationInPopover:(BOOL)popover
{
  selfCopy = self;
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100050308();
}

- (_TtC20TranslationUIService20ActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100051158();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100007484(v5, v7, bundle);
}

@end