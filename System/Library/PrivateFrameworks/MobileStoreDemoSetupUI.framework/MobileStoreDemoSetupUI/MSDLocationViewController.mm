@interface MSDLocationViewController
- (MSDLocationViewController)init;
- (void)_locationButtonTapped:(id)tapped;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)viewDidLoad;
@end

@implementation MSDLocationViewController

- (MSDLocationViewController)init
{
  v3 = [MSDSetupUILocalization localizedStringForKey:@"LOCATION_SERVICES_TITLE"];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"LOCATION_SERVICES_DESCRIPTION"];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  v10.receiver = self;
  v10.super_class = MSDLocationViewController;
  v6 = [(MSDLocationViewController *)&v10 initWithTitle:v3 detailText:v4 icon:v5];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBFC10]);
    [(MSDLocationViewController *)v6 setLocationManager:v7];

    locationManager = [(MSDLocationViewController *)v6 locationManager];
    [locationManager setDelegate:v6];
  }

  return v6;
}

- (void)viewDidLoad
{
  v31[5] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MSDLocationViewController;
  [(OBBaseWelcomeController *)&v28 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CBFCF8]);
  [v3 setLabel:4];
  [v3 setIcon:0];
  [v3 setCornerRadius:14.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addTarget:self action:sel__locationButtonTapped_ forControlEvents:64];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton setTitle:@"placeholder" forState:0];
  buttonTray = [(MSDLocationViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  buttonTray2 = [(MSDLocationViewController *)self buttonTray];
  [buttonTray2 addSubview:v3];

  topAnchor = [v3 topAnchor];
  topAnchor2 = [boldButton topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v25;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [boldButton bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[1] = v22;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [boldButton leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[2] = v8;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [boldButton trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[3] = v11;
  heightAnchor = [v3 heightAnchor];
  [boldButton frame];
  v14 = [heightAnchor constraintEqualToConstant:v13];
  v31[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];

  v16 = defaultLogHandle([MEMORY[0x277CCAAD0] activateConstraints:v15]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = 2;
    _os_log_impl(&dword_259BCA000, v16, OS_LOG_TYPE_DEFAULT, "Setting location button use mode to %d...", buf, 8u);
  }

  v17 = MEMORY[0x277CBFC10];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v17 setLocationButtonUseMode:2 forBundleIdentifier:bundleIdentifier];

  v20 = +[MSDSetupUIController sharedInstance];
  [v20 enableLocationServices];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v19 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v4 = defaultLogHandle(authorizationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    authorizationStatus = [authorizationCopy authorizationStatus];
    v17 = 2048;
    accuracyAuthorization = [authorizationCopy accuracyAuthorization];
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: location authorization status changed to %d; accuracy authorization %ld", &v13, 0x1Cu);
  }

  authorizationStatus2 = [authorizationCopy authorizationStatus];
  if (authorizationStatus2 >= 3)
  {
    v8 = defaultLogHandle(authorizationStatus2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v13 = 138543362;
      v14 = v9;
      v10 = v9;
      _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: location authorized; moving to store search view controller", &v13, 0xCu);
    }

    v11 = objc_alloc_init(MSDStoreSearchViewController);
    v12 = +[MSDSetupUIController sharedInstance];
    [v12 pushViewController:v11 andRemoveTopmostView:1];
  }
}

- (void)_locationButtonTapped:(id)tapped
{
  v10 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v4 = defaultLogHandle(tappedCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = tappedCopy;
    v5 = v7;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Location button tapped from: %{public}@", &v6, 0x16u);
  }
}

@end