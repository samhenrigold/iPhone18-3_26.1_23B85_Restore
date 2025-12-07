@interface HeadphoneBatteryViewController
- (_TtC20HeadphoneProxService30HeadphoneBatteryViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HeadphoneBatteryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100081988();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(HeadphoneBatteryViewController *)&v8 viewWillAppear:appearCopy];
  sub_1000821A4();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6)
  {
    v7 = v6;
    sub_1000099F8();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100082670(disappear);
}

- (_TtC20HeadphoneProxService30HeadphoneBatteryViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_10008BFE4(view);

  return v5;
}

@end