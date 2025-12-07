@interface AAUIBaseDetailViewController
- (AAUIBaseDetailViewController)init;
- (void)_setupNavigationBarButtons;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AAUIBaseDetailViewController

- (AAUIBaseDetailViewController)init
{
  v3.receiver = self;
  v3.super_class = AAUIBaseDetailViewController;
  return [(AAUIBaseDetailViewController *)&v3 init];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIBaseDetailViewController;
  [(AAUIBaseDetailViewController *)&v3 viewDidLoad];
  [(AAUIBaseDetailViewController *)self _setupNavigationBarButtons];
}

- (void)_setupNavigationBarButtons
{
  navigationItem = [(AAUIBaseDetailViewController *)self navigationItem];
  if (([(AAUIBaseDetailViewController *)self isPresentedAsModalSheet]& 1) == 0)
  {
    [navigationItem setRightBarButtonItem:0];
  }

  [(AAUIBaseDetailViewController *)self setCancelButton:0];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setHidesBackButton:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v21.receiver = self;
  v21.super_class = AAUIBaseDetailViewController;
  [(AAUIBaseDetailViewController *)&v21 viewWillAppear:appear];
  specifier = [(AAUIBaseDetailViewController *)self specifier];
  v5 = [specifier propertyForKey:PSAppSettingsBundleIDKey];

  v6 = [*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:ACUIAccountKey];
  v7 = _AAUILogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_33494(v5, v6, v7);
  }

  v8 = [[AAUIBaseDataclassDetailViewController alloc] initWithBundleID:v5 account:v6];
  [(AAUIBaseDetailViewController *)self addChildViewController:v8];
  view = [(AAUIBaseDetailViewController *)self view];
  [view bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  view2 = [(AAUIBaseDataclassDetailViewController *)v8 view];
  [view2 setFrame:{v11, v13, v15, v17}];

  view3 = [(AAUIBaseDetailViewController *)self view];
  view4 = [(AAUIBaseDataclassDetailViewController *)v8 view];
  [view3 addSubview:view4];

  [(AAUIBaseDataclassDetailViewController *)v8 didMoveToParentViewController:self];
}

@end