@interface HeadphoneWhatsNew2025ViewController
- (_TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneWhatsNew2025ViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001169C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneWhatsNew2025ViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100013518(view);

  return v5;
}

@end