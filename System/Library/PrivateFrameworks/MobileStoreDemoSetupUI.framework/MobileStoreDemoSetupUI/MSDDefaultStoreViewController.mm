@interface MSDDefaultStoreViewController
- (MSDDefaultStoreViewController)init;
- (void)_completeSetupTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation MSDDefaultStoreViewController

- (MSDDefaultStoreViewController)init
{
  v15.receiver = self;
  v15.super_class = MSDDefaultStoreViewController;
  v2 = [(MSDDefaultStoreViewController *)&v15 init];
  if (v2)
  {
    v3 = [MSDSetupUILocalization localizedStringForKey:@"DEFAULT_STORE_VIEW_TITLE"];
    v4 = [MSDSetupUILocalization localizedStringForKey:@"DEFAULT_STORE_VIEW_DESCRIPTION"];
    v5 = [MSDSetupUILocalization localizedStringForKey:@"COMPLETE_SETUP_BUTTON"];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"building.2.crop.circle.fill"];
    v7 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v3 detailText:v4 icon:v6];
    [(MSDDefaultStoreViewController *)v2 setContentViewController:v7];

    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTitle:v5 forState:0];
    [boldButton addTarget:v2 action:sel__completeSetupTapped_ forControlEvents:64];
    contentViewController = [(MSDDefaultStoreViewController *)v2 contentViewController];
    buttonTray = [contentViewController buttonTray];
    [buttonTray addButton:boldButton];

    contentViewController2 = [(MSDDefaultStoreViewController *)v2 contentViewController];
    navigationItem = [contentViewController2 navigationItem];
    [navigationItem setHidesBackButton:1];

    v13 = [MSDSetupUILocalization localizedStringForKey:@"CANNOT_FIND_STORE_HEADER"];
    [(MSDDefaultStoreViewController *)v2 setTitle:v13];
  }

  return v2;
}

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = MSDDefaultStoreViewController;
  [(MSDDefaultStoreViewController *)&v29 viewDidLoad];
  contentViewController = [(MSDDefaultStoreViewController *)self contentViewController];
  [(MSDDefaultStoreViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(MSDDefaultStoreViewController *)self contentViewController];
  view = [contentViewController2 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(MSDDefaultStoreViewController *)self view];
  [view2 addSubview:view];

  topAnchor = [view topAnchor];
  view3 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v24;
  bottomAnchor = [view bottomAnchor];
  view4 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[1] = v19;
  leftAnchor = [view leftAnchor];
  view5 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v30[2] = v9;
  rightAnchor = [view rightAnchor];
  view6 = [(MSDDefaultStoreViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v30[3] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  contentViewController3 = [(MSDDefaultStoreViewController *)self contentViewController];
  [contentViewController3 didMoveToParentViewController:self];
}

- (void)_completeSetupTapped:(id)tapped
{
  v11 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v4 = defaultLogHandle(tappedCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = tappedCopy;
    v5 = v8;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Complete setup button tapped from: %{public}@", &v7, 0x16u);
  }

  v6 = +[MSDSetupUIController sharedInstance];
  [v6 setupCompleteWithStoreID:0];
}

@end