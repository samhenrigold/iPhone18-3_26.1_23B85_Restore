@interface AKAuthorizationContainerViewController
- (AKAuthorizationContainerViewController)init;
- (AKAuthorizationContainerViewController)initWithCoder:(id)coder;
- (AKAuthorizationContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AKAuthorizationContainerViewController)initWithRootViewController:(id)controller authorizationContext:(id)context;
- (AKAuthorizationContainerViewControllerDelegate)delegate;
- (AKAuthorizationPaneViewControllerDelegate)paneDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_clearPaneDelegateForViewController:(id)controller;
- (void)_setPaneDelegate:(id)delegate forViewController:(id)controller;
- (void)_setPaneDelegateForTopViewController;
- (void)_setPaneDelegateForViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)setPaneDelegate:(id)delegate;
@end

@implementation AKAuthorizationContainerViewController

- (AKAuthorizationContainerViewController)init
{
  v4 = 0;
  v4 = [(AKAuthorizationContainerViewController *)self initWithRootViewController:0 authorizationContext:?];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationContainerViewController)initWithRootViewController:(id)controller authorizationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v17 = 0;
  objc_storeStrong(&v17, context);
  v14 = objc_opt_class();
  if (v14 == objc_opt_class())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    *&v4 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (userInterfaceIdiom == 1)
    {
      v5 = [AKAuthorizationContaineriPadViewController alloc];
      v20 = [(AKAuthorizationContaineriPadViewController *)v5 initWithRootViewController:location[0] authorizationContext:v17];
      v16 = 1;
    }

    else
    {
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
      MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
      if (isAuthKitSolariumFeatureEnabled)
      {
        v6 = [AKAuthorizationContaineriPadViewController alloc];
      }

      else
      {
        v6 = [AKAuthorizationContaineriPhoneViewController alloc];
      }

      v20 = [(AKAuthorizationContaineriPadViewController *)v6 initWithRootViewController:location[0] authorizationContext:v17];
      v16 = 1;
    }
  }

  else
  {
    v7 = selfCopy;
    selfCopy = 0;
    v15.receiver = v7;
    v15.super_class = AKAuthorizationContainerViewController;
    selfCopy = [(AKAuthorizationContainerViewController *)&v15 initWithNibName:0 bundle:?];
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      objc_storeStrong(selfCopy + 124, location[0]);
      objc_storeStrong(selfCopy + 125, v17);
    }

    v20 = MEMORY[0x277D82BE0](selfCopy);
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v20;
}

- (AKAuthorizationContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, name);
  v6 = 0;
  objc_storeStrong(&v6, bundle);
  [(AKAuthorizationContainerViewController *)selfCopy doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationContainerViewController)initWithCoder:(id)coder
{
  selfCopy = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, coder);
  [(AKAuthorizationContainerViewController *)selfCopy doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setPaneDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_paneDelegate, location[0]);
  [(AKAuthorizationContainerViewController *)selfCopy _setPaneDelegateForTopViewController];
  objc_storeStrong(location, 0);
}

- (void)_setPaneDelegateForTopViewController
{
  selfCopy = self;
  v7[1] = a2;
  rootViewController = [(AKAuthorizationContainerViewController *)self rootViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v2 = MEMORY[0x277D82BD8](rootViewController).n128_u64[0];
  if (isKindOfClass)
  {
    v7[0] = [(AKAuthorizationContainerViewController *)selfCopy rootViewController];
    v3 = selfCopy;
    topViewController = [v7[0] topViewController];
    [(AKAuthorizationContainerViewController *)v3 _setPaneDelegateForViewController:?];
    MEMORY[0x277D82BD8](topViewController);
    objc_storeStrong(v7, 0);
  }
}

- (void)_setPaneDelegateForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  paneDelegate = [(AKAuthorizationContainerViewController *)selfCopy paneDelegate];
  [AKAuthorizationContainerViewController _setPaneDelegate:v3 forViewController:"_setPaneDelegate:forViewController:"];
  MEMORY[0x277D82BD8](paneDelegate);
  objc_storeStrong(location, 0);
}

- (void)_clearPaneDelegateForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(AKAuthorizationContainerViewController *)selfCopy _setPaneDelegate:0 forViewController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_setPaneDelegate:(id)delegate forViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v6 = 0;
  objc_storeStrong(&v6, controller);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](v6);
    [v5 setPaneDelegate:location[0]];
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, viewController);
  v7 = selfCopy;
  topViewController = [location[0] topViewController];
  [(AKAuthorizationContainerViewController *)v7 _clearPaneDelegateForViewController:?];
  *&v5 = MEMORY[0x277D82BD8](topViewController).n128_u64[0];
  [(AKAuthorizationContainerViewController *)selfCopy _setPaneDelegateForViewController:v9, v5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (AKAuthorizationContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKAuthorizationPaneViewControllerDelegate)paneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paneDelegate);

  return WeakRetained;
}

@end