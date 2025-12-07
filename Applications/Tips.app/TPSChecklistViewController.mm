@interface TPSChecklistViewController
- (TPSChecklistViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TPSChecklistViewController)initWithViewModel:(id)model;
- (id)currentCollection;
- (void)loadView;
- (void)setHostingController:(id)controller;
- (void)setPreferredViewMethod:(id)method;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TPSChecklistViewController

- (void)setHostingController:(id)controller
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_hostingController);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___TPSChecklistViewController_hostingController) = controller;
  controllerCopy = controller;
}

- (TPSChecklistViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v4 = sub_100048A04(modelCopy);

  return v4;
}

- (void)setPreferredViewMethod:(id)method
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod) = method;
  methodCopy = method;
}

- (id)currentCollection
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)loadView
{
  selfCopy = self;
  sub_1000480AC();
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ChecklistViewController();
  v2 = v4.receiver;
  [(TPSViewController *)&v4 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  *(*&v2[OBJC_IVAR___TPSChecklistViewController_viewModel] + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ChecklistViewController();
  v4 = v9.receiver;
  [(TipsTOCViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    tintColor = [objc_opt_self() tintColor];
    [navigationBar setTintColor:tintColor];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1000485F0(appearCopy, selfCopy);
}

- (TPSChecklistViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end