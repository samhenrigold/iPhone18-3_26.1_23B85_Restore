@interface HeadphoneNotGenuineViewController
- (_TtC20HeadphoneProxService33HeadphoneNotGenuineViewController)initWithContentView:(id)view;
- (void)handleTapOnLabel:(id)label;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneNotGenuineViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001C8AC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneNotGenuineViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)handleTapOnLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_10001D9C8(labelCopy);
}

- (_TtC20HeadphoneProxService33HeadphoneNotGenuineViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_10001E49C(view);

  return v5;
}

@end