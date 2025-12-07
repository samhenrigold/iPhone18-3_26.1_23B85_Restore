@interface HomePodSetupFeatureListViewController
- (_TtC14HDSViewService37HomePodSetupFeatureListViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupFeatureListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005C520();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupFeatureListViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupFeatureListViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (_TtC14HDSViewService37HomePodSetupFeatureListViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_10005D9E8(view);

  return v5;
}

@end