@interface HeadphoneYodelHearingSwitchListeningModeViewController
- (_TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneYodelHearingSwitchListeningModeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100039A80();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneYodelHearingSwitchListeningModeViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService54HeadphoneYodelHearingSwitchListeningModeViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_10003B1A0(view);

  return v5;
}

@end