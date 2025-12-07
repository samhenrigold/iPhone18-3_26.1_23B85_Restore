@interface HomePodSetupAppleMusicViewController
- (_TtC14HDSViewService36HomePodSetupAppleMusicViewController)initWithContentView:(id)view;
- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HomePodSetupAppleMusicViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000669E0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100066DE0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupAppleMusicViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupAppleMusicViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (_TtC14HDSViewService36HomePodSetupAppleMusicViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000681DC();
}

@end