@interface HeadphoneYodelHearingProtectionViewController
- (_TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneYodelHearingProtectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001FD78();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneYodelHearingProtectionViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_1000232F4(view);

  return v5;
}

@end