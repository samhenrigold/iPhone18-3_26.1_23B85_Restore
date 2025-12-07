@interface TPSAppViewController
- (TPSAppViewController)initWithAppController:(id)controller;
- (TPSAppViewControllerViewCycleDelegate)viewCycleDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TPSAppViewController

- (TPSAppViewController)initWithAppController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = TPSAppViewController;
  v6 = [(TPSViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appController, controller);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = TPSAppViewController;
  [(TPSAppViewController *)&v5 viewWillAppear:appear];
  self->_viewWillAppear = 1;
  viewCycleDelegate = [(TPSAppViewController *)self viewCycleDelegate];
  [viewCycleDelegate appViewControllerViewWillAppear:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TPSAppViewController;
  [(TPSAppViewController *)&v5 viewWillDisappear:disappear];
  self->_viewWillAppear = 0;
  viewCycleDelegate = [(TPSAppViewController *)self viewCycleDelegate];
  [viewCycleDelegate appViewControllerViewWillDisappear:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TPSAppViewController;
  [(TPSAppViewController *)&v4 viewDidAppear:appear];
  self->_viewDidAppeared = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TPSAppViewController;
  [(TPSAppViewController *)&v4 viewDidDisappear:disappear];
  self->_viewDidAppeared = 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (TPSAppViewControllerViewCycleDelegate)viewCycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewCycleDelegate);

  return WeakRetained;
}

@end