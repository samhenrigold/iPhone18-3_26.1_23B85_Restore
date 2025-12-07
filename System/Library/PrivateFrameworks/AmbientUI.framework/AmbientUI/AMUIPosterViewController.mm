@interface AMUIPosterViewController
+ (NSArray)suggestedInstanceIdentifiers;
- (AMUIPosterViewControllerDelegate)delegate;
- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings;
- (id)_posterExtensionDisplayNameWithBundleIdentifier:(id)identifier;
- (id)_snapshotController;
- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)identifier;
- (unint64_t)ambientPosterViewController:(id)controller titleAlignmentForInterfaceOrientation:(int64_t)orientation;
- (void)_evaluateAuthenticationWithConfiguration:(id)configuration;
- (void)_triggerTapEvent:(id)event;
- (void)_updateStateForContentMode:(int64_t)mode;
- (void)ambientPosterViewController:(id)controller relinquishExtensionInstanceIdentifier:(id)identifier;
- (void)ambientPosterViewController:(id)controller setChromeVisibility:(BOOL)visibility withAnimationSettings:(id)settings animationFence:(id)fence;
- (void)setAppearanceTransitionCoordinator:(id)coordinator;
- (void)setContentMode:(int64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AMUIPosterViewController

- (void)setContentMode:(int64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    [(AMUIPosterViewController *)self _updateStateForContentMode:[(AMUIPosterViewController *)self effectiveContentMode]];
    self->_appearanceTransitionProgress = 1.0;
    v5 = objc_alloc_init(AMUIPosterAppearanceTransitionCoordinator);
    appearanceTransitionCoordinator = self->_appearanceTransitionCoordinator;
    self->_appearanceTransitionCoordinator = v5;

    MEMORY[0x2821F96F8](v5, appearanceTransitionCoordinator);
  }
}

- (void)setAppearanceTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_appearanceTransitionCoordinator, coordinator);
    appearanceTransitionCoordinator = self->_appearanceTransitionCoordinator;
    if (!appearanceTransitionCoordinator)
    {
      v6 = objc_alloc_init(AMUIPosterAppearanceTransitionCoordinator);
      v7 = self->_appearanceTransitionCoordinator;
      self->_appearanceTransitionCoordinator = v6;

      appearanceTransitionCoordinator = self->_appearanceTransitionCoordinator;
    }

    [(AMUIPosterAppearanceTransitionCoordinator *)appearanceTransitionCoordinator setPosterViewController:self progress:self->_appearanceTransitionProgress];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AMUIPosterViewController;
  [(AMUIPosterViewController *)&v12 viewDidLoad];
  view = [(AMUIPosterViewController *)self view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v6 = [v5 initWithFrame:?];
  [(UIView *)v6 setAutoresizingMask:18];
  layer = [(UIView *)v6 layer];
  [layer setHitTestsAsOpaque:1];

  [view addSubview:v6];
  touchBlockingView = self->_touchBlockingView;
  self->_touchBlockingView = v6;
  v9 = v6;

  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__triggerTapEvent_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v10;

  [(UIGestureRecognizer *)self->_tapGestureRecognizer setName:@"AmbientTap"];
  [(UIView *)self->_touchBlockingView addGestureRecognizer:self->_tapGestureRecognizer];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMUIPosterViewController;
  [(AMUIPosterViewController *)&v4 viewWillAppear:appear];
  [(AMUIPosterViewController *)self _evaluateAuthenticationWithConfiguration:self->_configuration];
  [(PRUISAmbientPosterViewController *)self->_posterViewController setVisibility:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMUIPosterViewController;
  [(AMUIPosterViewController *)&v4 viewDidAppear:appear];
  [(PRUISAmbientPosterViewController *)self->_posterViewController setVisibility:2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AMUIPosterViewController;
  [(AMUIPosterViewController *)&v4 viewWillDisappear:disappear];
  [(PRUISAmbientPosterViewController *)self->_posterViewController setVisibility:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AMUIPosterViewController;
  [(AMUIPosterViewController *)&v4 viewDidDisappear:disappear];
  [(PRUISAmbientPosterViewController *)self->_posterViewController setVisibility:0];
}

- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings
{
  configurationCopy = configuration;
  settingsCopy = settings;
  if (([(PRUISAmbientPosterViewController *)self->_posterViewController updateConfiguration:configurationCopy]& 1) != 0)
  {
    v9 = 1;
  }

  else if (configurationCopy)
  {
    objc_storeStrong(&self->_configuration, configuration);
    v10 = self->_posterViewController;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke;
    v32[3] = &unk_278C75DD8;
    v32[4] = self;
    v11 = v10;
    v33 = v11;
    v12 = MEMORY[0x245CAD730](v32);
    v13 = objc_alloc_init(getPRUISAmbientPosterViewControllerClass());
    view = [v13 view];
    view2 = [(AMUIPosterViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    [view setAutoresizingMask:18];
    [view setAlpha:0.0];
    if (settingsCopy)
    {
      layer = [view layer];
      [layer setAllowsGroupOpacity:1];
    }

    [(AMUIPosterViewController *)self bs_addChildViewController:v13];
    view3 = [(AMUIPosterViewController *)self view];
    [view3 bringSubviewToFront:self->_touchBlockingView];

    objc_storeStrong(&self->_posterViewController, v13);
    [(PRUISAmbientPosterViewController *)self->_posterViewController setDelegate:self];
    posterViewController = self->_posterViewController;
    _snapshotController = [(AMUIPosterViewController *)self _snapshotController];
    [(PRUISAmbientPosterViewController *)posterViewController setSnapshotController:_snapshotController];

    [(PRUISAmbientPosterViewController *)self->_posterViewController setVisibleSnapshotLayers:1];
    v9 = [(PRUISAmbientPosterViewController *)self->_posterViewController updateConfiguration:configurationCopy];
    v20 = self->_posterViewController;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2;
    v27 = &unk_278C75EF8;
    selfCopy = self;
    v29 = v13;
    v30 = settingsCopy;
    v31 = v12;
    v21 = v12;
    v22 = v13;
    [(PRUISAmbientPosterViewController *)v20 activateWithCompletion:&v24];
    [(AMUIPosterViewController *)self _updateStateForContentMode:[(AMUIPosterViewController *)self effectiveContentMode:v24]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 40);
  if (*(*(a1 + 32) + 992) == v2)
  {
    v4 = MEMORY[0x277CF0D38];
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_3;
    v8[3] = &unk_278C75D60;
    v9 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_4;
    v6[3] = &unk_278C75D08;
    v7 = *(a1 + 56);
    [v4 animateWithSettings:v5 actions:v8 completion:v6];
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

void __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

+ (NSArray)suggestedInstanceIdentifiers
{
  PRUISAmbientPosterViewControllerClass = getPRUISAmbientPosterViewControllerClass();

  return [PRUISAmbientPosterViewControllerClass suggestedInstanceIdentifiers];
}

- (void)ambientPosterViewController:(id)controller setChromeVisibility:(BOOL)visibility withAnimationSettings:(id)settings animationFence:(id)fence
{
  visibilityCopy = visibility;
  fenceCopy = fence;
  settingsCopy = settings;
  delegate = [(AMUIPosterViewController *)self delegate];
  [delegate posterViewController:self setChromeVisibility:visibilityCopy withAnimationSettings:settingsCopy animationFence:fenceCopy];
}

- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)identifier
{
  delegate = [(AMUIPosterViewController *)self delegate];
  v5 = [delegate posterViewControllerRequestExtensionInstanceIdentifier:self];

  return v5;
}

- (void)ambientPosterViewController:(id)controller relinquishExtensionInstanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(AMUIPosterViewController *)self delegate];
  [delegate posterViewController:self relinquishExtensionInstanceIdentifier:identifierCopy];
}

- (unint64_t)ambientPosterViewController:(id)controller titleAlignmentForInterfaceOrientation:(int64_t)orientation
{
  chromeOrientationPolicy = self->_chromeOrientationPolicy;
  if (chromeOrientationPolicy == 2)
  {
    if (orientation == 3)
    {
      return 3;
    }

    else
    {
      return 2 * (orientation == 4);
    }
  }

  else if (chromeOrientationPolicy == 1)
  {
    return 5;
  }

  else if (chromeOrientationPolicy)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (id)_snapshotController
{
  if (_snapshotController_onceToken != -1)
  {
    [AMUIPosterViewController _snapshotController];
  }

  v3 = _snapshotController___sharedSnapshotController;

  return v3;
}

void __47__AMUIPosterViewController__snapshotController__block_invoke()
{
  v0 = [getPRUISAmbientPosterViewControllerClass() defaultSnapshotCacheURL];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v2 = [v1 createDirectoryAtURL:v0 withIntermediateDirectories:1 attributes:0 error:&v10];
  v3 = v10;

  if ((v2 & 1) == 0)
  {
    v5 = AMUILogSwitcher(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__AMUIPosterViewController__snapshotController__block_invoke_cold_1();
    }
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getPRUISPosterSnapshotControllerClass_softClass;
  v15 = getPRUISPosterSnapshotControllerClass_softClass;
  if (!getPRUISPosterSnapshotControllerClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getPRUISPosterSnapshotControllerClass_block_invoke;
    v11[3] = &unk_278C75E70;
    v11[4] = &v12;
    __getPRUISPosterSnapshotControllerClass_block_invoke(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = [[v6 alloc] initWithCacheURL:v0];
  v9 = _snapshotController___sharedSnapshotController;
  _snapshotController___sharedSnapshotController = v8;
}

- (void)_updateStateForContentMode:(int64_t)mode
{
  if (mode == 1)
  {
    v3 = 2;
  }

  else
  {
    if (mode)
    {
      return;
    }

    v3 = 1;
  }

  [(PRUISAmbientPosterViewController *)self->_posterViewController setPresentationMode:v3];
}

- (void)_triggerTapEvent:(id)event
{
  [event locationInView:self->_touchBlockingView];
  posterViewController = self->_posterViewController;

  [(PRUISAmbientPosterViewController *)posterViewController userTapEventOccurredWithLocation:?];
}

- (void)_evaluateAuthenticationWithConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v18 = 0;
  v5 = [configurationCopy pr_loadAmbientConfigurationWithError:&v18];
  v6 = v18;
  v7 = v6;
  if (v5)
  {
    delegate = [(AMUIPosterViewController *)self delegate];
    v9 = [delegate posterViewControllerIsAuthenticated:self];
    v10 = [delegate posterViewControllerHasInlineAuthenticated:self];
    needsAuthentication = [v5 needsAuthentication];
    if (!v9 && !v10 && needsAuthentication)
    {
      v12 = AMUILogSwitcher(needsAuthentication);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = MEMORY[0x245CAD1C0](v9);
        v14 = MEMORY[0x245CAD1C0](v10);
        v15 = MEMORY[0x245CAD1C0](1);
        *buf = 138543874;
        v20 = v13;
        v21 = 2114;
        v22 = v14;
        v23 = 2114;
        v24 = v15;
        _os_log_impl(&dword_23F38B000, v12, OS_LOG_TYPE_DEFAULT, "Poster configuration requesting in-line authentication... isAuthenticated: %{public}@, hasInlineAuthenticated: %{public}@, configurationNeedsAuthentication: %{public}@", buf, 0x20u);
      }

      providerBundleIdentifier = [configurationCopy providerBundleIdentifier];
      v17 = [(AMUIPosterViewController *)self _posterExtensionDisplayNameWithBundleIdentifier:providerBundleIdentifier];
      [delegate posterViewController:self didRequestInlineAuthenticationWithUnlockDestination:v17];
    }
  }

  else
  {
    delegate = AMUILogSwitcher(v6);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [AMUIPosterViewController _evaluateAuthenticationWithConfiguration:];
    }
  }
}

- (id)_posterExtensionDisplayNameWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CC1E50];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy error:0];

  localizedName = [v5 localizedName];

  return localizedName;
}

- (AMUIPosterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end