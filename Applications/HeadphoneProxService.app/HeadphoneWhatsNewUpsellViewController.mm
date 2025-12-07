@interface HeadphoneWhatsNewUpsellViewController
- (_TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneWhatsNewUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008F728();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneWhatsNewUpsellViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100090BB8(view);

  return v5;
}

@end