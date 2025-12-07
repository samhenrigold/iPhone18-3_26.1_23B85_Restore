@interface HSPCMVVMShellViewController
- (HSPCMVVMShellViewController)initWithTableViewStyle:(int64_t)style moduleCreator:(id)creator moduleControllerBuilder:(id)builder;
- (void)performPRXLayoutPass;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HSPCMVVMShellViewController

- (HSPCMVVMShellViewController)initWithTableViewStyle:(int64_t)style moduleCreator:(id)creator moduleControllerBuilder:(id)builder
{
  builderCopy = builder;
  creatorCopy = creator;
  v10 = [[HUPRXItemModuleTableViewController alloc] initWithTableViewStyle:style moduleCreator:creatorCopy moduleControllerBuilder:builderCopy];

  v11 = [PRXScrollableContentView alloc];
  tableView = [(HUPRXItemModuleTableViewController *)v10 tableView];
  v13 = [v11 initWithCardStyle:0 scrollView:tableView];

  v17.receiver = self;
  v17.super_class = HSPCMVVMShellViewController;
  v14 = [(HSPCMVVMShellViewController *)&v17 initWithContentView:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mvvmController, v10);
  }

  return v15;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSPCMVVMShellViewController;
  [(HSPCMVVMShellViewController *)&v5 viewDidLoad];
  mvvmController = [(HSPCMVVMShellViewController *)self mvvmController];
  [(HSPCMVVMShellViewController *)self addChildViewController:mvvmController];

  mvvmController2 = [(HSPCMVVMShellViewController *)self mvvmController];
  [mvvmController2 didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = HSPCMVVMShellViewController;
  [(HSPCMVVMShellViewController *)&v9 viewWillAppear:appear];
  mvvmController = [(HSPCMVVMShellViewController *)self mvvmController];
  tableView = [mvvmController tableView];

  v6 = +[UIColor systemBackgroundColor];
  [tableView setBackgroundColor:v6];

  v7 = +[UIColor systemBackgroundColor];
  backgroundView = [tableView backgroundView];
  [backgroundView setBackgroundColor:v7];

  if ([tableView style] == 2)
  {
    [tableView _setTopPadding:0.0];
    [tableView _setBottomPadding:0.0];
  }

  [(HSPCMVVMShellViewController *)self performPRXLayoutPass];
}

- (void)performPRXLayoutPass
{
  mvvmController = [(HSPCMVVMShellViewController *)self mvvmController];
  tableView = [mvvmController tableView];
  [tableView layoutIfNeeded];

  contentView = [(HSPCMVVMShellViewController *)self contentView];
  [contentView setNeedsUpdateConstraints];

  view = [(HSPCMVVMShellViewController *)self view];
  [view bounds];
  [(HSPCMVVMShellViewController *)self updatePreferredContentSizeForCardWidth:v6];
}

@end