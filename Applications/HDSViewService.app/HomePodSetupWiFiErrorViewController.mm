@interface HomePodSetupWiFiErrorViewController
- (_TtC14HDSViewService35HomePodSetupWiFiErrorViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupWiFiErrorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000498BC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupWiFiErrorViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupIconContentViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (_TtC14HDSViewService35HomePodSetupWiFiErrorViewController)initWithContentView:(id)view
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView] = 0;
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController_showInfo] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupWiFiErrorViewController(0);
  return [(HomePodSetupIconContentViewController *)&v5 initWithContentView:view];
}

@end