@interface FPUIAuthenticationViewController
- (FPUIAuthenticationDelegate)authenticationDelegate;
- (FPUIAuthenticationLandingViewController)landingViewController;
- (FPUIAuthenticationViewController)initWithServerURL:(id)l;
- (void)setInitialConnectionURL:(id)l;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationViewController

- (FPUIAuthenticationViewController)initWithServerURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = FPUIAuthenticationViewController;
  v5 = [(FPUIAuthenticationViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [lCopy copy];
    initialConnectionURL = v5->_initialConnectionURL;
    v5->_initialConnectionURL = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = FPUIAuthenticationViewController;
  [(FPUIAuthenticationViewController *)&v31 viewDidLoad];
  v3 = [[FPUIAuthenticationLandingViewController alloc] initWithURL:self->_initialConnectionURL];
  authenticationDelegate = [(FPUIAuthenticationViewController *)self authenticationDelegate];
  [(FPUIAuthenticationTableViewController *)v3 setAuthenticationDelegate:authenticationDelegate];

  v30 = v3;
  objc_storeWeak(&self->_landingViewController, v3);
  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [(FPUIAuthenticationViewController *)self addChildViewController:v5];
  view = [(FPUIAuthenticationViewController *)self view];
  view2 = [v5 view];
  [view addSubview:view2];

  v20 = MEMORY[0x277CCAAD0];
  view3 = [(FPUIAuthenticationViewController *)self view];
  centerXAnchor = [view3 centerXAnchor];
  view4 = [v5 view];
  centerXAnchor2 = [view4 centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[0] = v25;
  view5 = [(FPUIAuthenticationViewController *)self view];
  centerYAnchor = [view5 centerYAnchor];
  view6 = [v5 view];
  centerYAnchor2 = [view6 centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[1] = v19;
  view7 = [(FPUIAuthenticationViewController *)self view];
  widthAnchor = [view7 widthAnchor];
  view8 = [v5 view];
  widthAnchor2 = [view8 widthAnchor];
  v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v32[2] = v9;
  view9 = [(FPUIAuthenticationViewController *)self view];
  heightAnchor = [view9 heightAnchor];
  view10 = [v5 view];
  heightAnchor2 = [view10 heightAnchor];
  v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v32[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v20 activateConstraints:v15];

  [v5 didMoveToParentViewController:self];
}

- (void)setInitialConnectionURL:(id)l
{
  lCopy = l;
  if (self->_initialConnectionURL != lCopy)
  {
    v7 = lCopy;
    objc_storeStrong(&self->_initialConnectionURL, l);
    WeakRetained = objc_loadWeakRetained(&self->_landingViewController);
    [WeakRetained setInitialConnectionURL:v7];

    lCopy = v7;
  }
}

- (FPUIAuthenticationDelegate)authenticationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);

  return WeakRetained;
}

- (FPUIAuthenticationLandingViewController)landingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_landingViewController);

  return WeakRetained;
}

@end