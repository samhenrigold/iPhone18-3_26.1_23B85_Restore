@interface IAMModalViewController
- (BOOL)shouldAutorotate;
- (IAMModalViewController)init;
- (IAMViewControllerMetricsDelegate)metricsDelegate;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation IAMModalViewController

- (IAMModalViewController)init
{
  v5.receiver = self;
  v5.super_class = IAMModalViewController;
  v2 = [(IAMModalViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IAMModalViewController *)v2 setModalPresentationStyle:4];
  }

  return v3;
}

- (void)viewDidLoad
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = IAMModalViewController;
  [(IAMModalViewController *)&v33 viewDidLoad];
  [(IAMModalViewController *)self setNeedsStatusBarAppearanceUpdate];
  contentViewController = [(IAMModalViewController *)self contentViewController];
  [(IAMModalViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(IAMModalViewController *)self contentViewController];
  view = [contentViewController2 view];
  [(IAMModalViewController *)self setContentView:view];

  contentView = [(IAMModalViewController *)self contentView];
  [contentView setClipsToBounds:1];

  contentView2 = [(IAMModalViewController *)self contentView];
  [contentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(IAMModalViewController *)self view];
  contentView3 = [(IAMModalViewController *)self contentView];
  [view2 addSubview:contentView3];

  v23 = MEMORY[0x277CCAAD0];
  contentView4 = [(IAMModalViewController *)self contentView];
  topAnchor = [contentView4 topAnchor];
  view3 = [(IAMModalViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v28;
  contentView5 = [(IAMModalViewController *)self contentView];
  leftAnchor = [contentView5 leftAnchor];
  view4 = [(IAMModalViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v34[1] = v22;
  contentView6 = [(IAMModalViewController *)self contentView];
  rightAnchor = [contentView6 rightAnchor];
  view5 = [(IAMModalViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v34[2] = v12;
  contentView7 = [(IAMModalViewController *)self contentView];
  bottomAnchor = [contentView7 bottomAnchor];
  view6 = [(IAMModalViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v23 activateConstraints:v18];

  contentViewController3 = [(IAMModalViewController *)self contentViewController];
  [contentViewController3 didMoveToParentViewController:self];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  viewControllerWillDismissBlock = [(IAMModalViewController *)self viewControllerWillDismissBlock];

  if (viewControllerWillDismissBlock)
  {
    viewControllerWillDismissBlock2 = [(IAMModalViewController *)self viewControllerWillDismissBlock];
    viewControllerWillDismissBlock2[2]();
  }

  v9.receiver = self;
  v9.super_class = IAMModalViewController;
  [(IAMModalViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (BOOL)shouldAutorotate
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v20[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v8 = MEMORY[0x277D75FA8];
  presentingControllerCopy = presentingController;
  v10 = [[v8 alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];

  [v10 setDelegate:self];
  [v10 _setShouldDismissWhenTappedOutside:1];
  traitCollection = [controllerCopy traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    traitCollection2 = [controllerCopy traitCollection];
    v13 = [traitCollection2 userInterfaceIdiom] == 1;
  }

  else
  {
    v13 = 0;
  }

  if ([(IAMModalViewController *)self shouldPresentFullscreen])
  {
    _largeDetent = [MEMORY[0x277D76238] _largeDetent];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __110__IAMModalViewController__presentationControllerForPresentedController_presentingController_sourceController___block_invoke;
    v18[3] = &__block_descriptor_33_e16_d16__0__UIView_8l;
    v19 = v13;
    _largeDetent = [MEMORY[0x277D76238] _detentWithContainerViewBlock:v18];
  }

  v15 = _largeDetent;
  v20[0] = _largeDetent;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v10 _setDetents:v16];

  if (!v13)
  {
    [v10 _setWantsBottomAttachedInCompactHeight:1];
    [v10 _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
  }

  return v10;
}

double __110__IAMModalViewController__presentationControllerForPresentedController_presentingController_sourceController___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return 648.0;
  }

  [a2 safeAreaInsets];
  return 500.0 - v5;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  metricsDelegate = [(IAMModalViewController *)self metricsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    metricsDelegate2 = [(IAMModalViewController *)self metricsDelegate];
    [metricsDelegate2 viewController:self didReportDismissalAction:1];
  }
}

- (IAMViewControllerMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

@end