@interface HomePodSetupVisualAuthViewController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HomePodSetupVisualAuthViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006D280();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10006D980(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupVisualAuthViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupVisualAuthViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10006E0B8(disappear);
}

@end