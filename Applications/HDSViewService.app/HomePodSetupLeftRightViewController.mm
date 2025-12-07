@interface HomePodSetupLeftRightViewController
- (_TtC14HDSViewService35HomePodSetupLeftRightViewController)initWithContentView:(id)view;
- (void)leftButtonPressed:(id)pressed;
- (void)rightButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupLeftRightViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100068440();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupLeftRightViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupLeftRightViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (void)leftButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000695E8("HomePodSetupLeftRight: User tapped on left speaker button", 6);
}

- (void)rightButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000695E8("HomePodSetupLeftRight: User tapped on right speaker button", 7);
}

- (_TtC14HDSViewService35HomePodSetupLeftRightViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100069740(view);

  return v5;
}

@end