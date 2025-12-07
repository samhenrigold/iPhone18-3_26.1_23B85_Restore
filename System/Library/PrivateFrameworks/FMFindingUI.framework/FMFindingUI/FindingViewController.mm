@interface FindingViewController
- (NSString)description;
- (_TtC11FMFindingUI21FindingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FindingViewController

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24A510414();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24A510890(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = self + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 1);
    selfCopy = self;
    v9 = sub_24A5173CC(v6, v7);
    v6(v9);
    sub_24A50D354(v6, v7);
  }

  else
  {
    selfCopy2 = self;
  }

  sub_24A60FDA0();
  sub_24A510D64();
  v11.receiver = self;
  v11.super_class = type metadata accessor for FindingViewController();
  [(FindingViewController *)&v11 viewWillDisappear:disappearCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 2;
  }

  else
  {
    return 26;
  }
}

- (_TtC11FMFindingUI21FindingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end