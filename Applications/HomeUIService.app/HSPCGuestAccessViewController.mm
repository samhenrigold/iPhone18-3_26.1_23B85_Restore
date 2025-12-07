@interface HSPCGuestAccessViewController
- (HSPCGuestAccessViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HSPCGuestAccessViewController

- (HSPCGuestAccessViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[HSPCGuestAccessTableViewController alloc] initWithCoordinator:coordinatorCopy config:configCopy];
  [(HSPCGuestAccessViewController *)self setGuestsTableVC:v9];
  v10 = [PRXScrollableContentView alloc];
  tableView = [(HSPCGuestAccessTableViewController *)v9 tableView];
  v12 = [v10 initWithCardStyle:0 scrollView:tableView];

  v21.receiver = self;
  v21.super_class = HSPCGuestAccessViewController;
  v13 = [(HSPCGuestAccessViewController *)&v21 initWithContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v14->_coordinator, coordinator);
    v15 = sub_100063A44(@"HSProximityCardGuestAccessTitle");
    [(HSPCGuestAccessViewController *)v14 setTitle:v15];

    v16 = sub_100063A44(@"HSProximityCardGuestAccessSubitle");
    [(HSPCGuestAccessViewController *)v14 setSubtitle:v16];

    v17 = sub_100063A44(@"HSProximityCardGuestAccessFooter");
    [(HSPCGuestAccessViewController *)v14 setBottomTrayTitle:v17];

    v18 = HULocalizedString();
    v19 = [(HSPCGuestAccessViewController *)v14 addProminentButtonWithTitleKey:v18 target:v14 futureSelector:"commitConfiguration"];
  }

  return v14;
}

- (id)commitConfiguration
{
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  commitConfiguration = [guestsTableVC commitConfiguration];

  return commitConfiguration;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HSPCGuestAccessViewController;
  [(HSPCGuestAccessViewController *)&v8 viewDidLoad];
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  [(HSPCGuestAccessViewController *)self addChildViewController:guestsTableVC];

  contentView = [(HSPCGuestAccessViewController *)self contentView];
  guestsTableVC2 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view = [guestsTableVC2 view];
  [contentView addSubview:view];

  guestsTableVC3 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  [guestsTableVC3 didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v38.receiver = self;
  v38.super_class = HSPCGuestAccessViewController;
  [(HSPCGuestAccessViewController *)&v38 viewWillAppear:appear];
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  tableView = [guestsTableVC tableView];
  [tableView layoutIfNeeded];

  contentView = [(HSPCGuestAccessViewController *)self contentView];
  [contentView setNeedsUpdateConstraints];

  contentView2 = [(HSPCGuestAccessViewController *)self contentView];
  actionButtons = [contentView2 actionButtons];
  v9 = [actionButtons na_firstObjectPassingTest:&stru_1000C6DC8];

  contentView3 = [(HSPCGuestAccessViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  guestsTableVC2 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view = [guestsTableVC2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  guestsTableVC3 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view2 = [guestsTableVC3 view];
  topAnchor = [view2 topAnchor];
  v33 = mainContentGuide;
  topAnchor2 = [mainContentGuide topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[0] = v32;
  guestsTableVC4 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view3 = [guestsTableVC4 view];
  bottomAnchor = [view3 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[1] = v26;
  guestsTableVC5 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view4 = [guestsTableVC5 view];
  leadingAnchor = [view4 leadingAnchor];
  v16 = v9;
  v27 = v9;
  leadingAnchor2 = [v9 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[2] = v18;
  guestsTableVC6 = [(HSPCGuestAccessViewController *)self guestsTableVC];
  view5 = [guestsTableVC6 view];
  trailingAnchor = [view5 trailingAnchor];
  trailingAnchor2 = [v16 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[3] = v23;
  v24 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v24];
}

- (id)hu_preloadContent
{
  guestsTableVC = [(HSPCGuestAccessViewController *)self guestsTableVC];
  hu_preloadContent = [guestsTableVC hu_preloadContent];

  return hu_preloadContent;
}

@end