@interface AMUIDataLayerViewController
+ (Class)_dataLayerClassForConfiguration:(id)configuration;
+ (int64_t)_dataLayoutForDataLayerClass:(Class)class;
+ (int64_t)dataLayoutForConfiguration:(id)configuration;
- (AMUIDataLayerViewControllerDelegate)delegate;
- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings;
- (BOOL)viewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier;
- (UIView)viewForOpacityAdjustment;
- (id)ambientDefaultsForViewController:(id)controller;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)createUnlockRequestForViewController:(id)controller;
- (id)defaultWidgetDescriptorStacksForViewController:(id)controller;
- (id)widgetHostManagerForViewController:(id)controller;
- (int64_t)currentDataLayout;
- (void)_registerForAmbientPresentationTraitChanges;
- (void)_updateRedModeFiltersForTraitEnvironment:(id)environment previousTraitCollection:(id)collection animated:(BOOL)animated;
- (void)invalidate;
- (void)loadView;
- (void)requestUnlockForViewController:(id)controller withRequest:(id)request completion:(id)completion;
- (void)setChromeOrientationPolicy:(int64_t)policy;
- (void)setChromeVisibility:(BOOL)visibility withAnimationSettings:(id)settings animationFence:(id)fence;
- (void)setDateProvider:(id)provider;
- (void)setDateTimeLayerHidden:(BOOL)hidden;
- (void)viewController:(id)controller didUpdateActiveConfigurationMetadata:(id)metadata;
- (void)viewControllerWillBeginConfiguration:(id)configuration;
- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)overlay;
- (void)viewControllerWillEndConfiguration:(id)configuration;
- (void)viewControllerWillEndShowingTemporaryOverlay:(id)overlay;
- (void)viewDidLoad;
@end

@implementation AMUIDataLayerViewController

- (void)setChromeVisibility:(BOOL)visibility withAnimationSettings:(id)settings animationFence:(id)fence
{
  settingsCopy = settings;
  if (fence)
  {
    fenceCopy = fence;
    view = [(AMUIDataLayerViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];

    [windowScene _synchronizeDrawingWithFence:fenceCopy];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__AMUIDataLayerViewController_setChromeVisibility_withAnimationSettings_animationFence___block_invoke;
  v13[3] = &unk_278C76298;
  v13[4] = self;
  visibilityCopy = visibility;
  [MEMORY[0x277CF0D38] animateWithSettings:settingsCopy actions:v13];
}

void __88__AMUIDataLayerViewController_setChromeVisibility_withAnimationSettings_animationFence___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewForOpacityAdjustment];
  LOBYTE(v2) = *(a1 + 40);
  [v3 setAlpha:v2];
}

- (void)setChromeOrientationPolicy:(int64_t)policy
{
  self->_chromeOrientationPolicy = policy;
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  v5 = objc_opt_class();
  v6 = concreteDataLayerViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(AMUIAmbientViewControlling *)v8 setChromeOrientationPolicy:self->_chromeOrientationPolicy];
}

- (void)setDateProvider:(id)provider
{
  providerCopy = provider;
  objc_storeStrong(&self->_dateProvider, provider);
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  v6 = objc_opt_class();
  v7 = concreteDataLayerViewController;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(AMUIAmbientViewControlling *)v9 setDateProvider:self->_dateProvider];
}

- (int64_t)currentDataLayout
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [v2 _dataLayoutForDataLayerClass:v3];
}

+ (int64_t)dataLayoutForConfiguration:(id)configuration
{
  v4 = [self _dataLayerClassForConfiguration:configuration];

  return [self _dataLayoutForDataLayerClass:v4];
}

- (void)setDateTimeLayerHidden:(BOOL)hidden
{
  if ([(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController isMemberOfClass:objc_opt_class()])
  {
    view = [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController view];
    v6 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__AMUIDataLayerViewController_setDateTimeLayerHidden___block_invoke;
    v8[3] = &unk_278C76298;
    v9 = view;
    hiddenCopy = hidden;
    v7 = view;
    [v6 animateWithDuration:v8 animations:0.2];
  }
}

uint64_t __54__AMUIDataLayerViewController_setDateTimeLayerHidden___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (UIView)viewForOpacityAdjustment
{
  if (objc_opt_respondsToSelector())
  {
    [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController viewForOpacityAdjustment];
  }

  else
  {
    [(AMUIDataLayerViewController *)self view];
  }
  v3 = ;

  return v3;
}

- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings
{
  configurationCopy = configuration;
  settingsCopy = settings;
  if (!-[AMUIAmbientViewControlling isMemberOfClass:](self->_concreteDataLayerViewController, "isMemberOfClass:", [objc_opt_class() _dataLayerClassForConfiguration:configurationCopy]) || (-[AMUIAmbientViewControlling updatePosterConfiguration:withAnimationSettings:](self->_concreteDataLayerViewController, "updatePosterConfiguration:withAnimationSettings:", configurationCopy, settingsCopy) & 1) == 0)
  {
    v8 = self->_concreteDataLayerViewController;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke;
    v42[3] = &unk_278C75DD8;
    v42[4] = self;
    v9 = v8;
    v43 = v9;
    v10 = MEMORY[0x245CAD730](v42);
    v11 = objc_alloc_init([objc_opt_class() _dataLayerClassForConfiguration:configurationCopy]);
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [v15 setDelegate:self];
    v16 = objc_opt_class();
    v17 = v13;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v19 setChromeOrientationPolicy:self->_chromeOrientationPolicy];
    v20 = objc_opt_class();
    v21 = v17;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    [v23 setDateProvider:self->_dateProvider];
    view = [(AMUIDataLayerViewController *)self view];
    view2 = [v21 view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view2 setAlpha:0.0];
    if (settingsCopy)
    {
      [view2 layer];
      v26 = view;
      v27 = configurationCopy;
      v28 = v11;
      v29 = settingsCopy;
      v30 = v10;
      v32 = v31 = v9;
      [v32 setAllowsGroupOpacity:1];

      v9 = v31;
      v10 = v30;
      settingsCopy = v29;
      v11 = v28;
      configurationCopy = v27;
      view = v26;
    }

    [(AMUIDataLayerViewController *)self bs_addChildViewController:v21];
    objc_storeStrong(&self->_concreteDataLayerViewController, v11);
    [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController updatePosterConfiguration:configurationCopy withAnimationSettings:0];
    v33 = MEMORY[0x277CF0D38];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2;
    v40[3] = &unk_278C75D60;
    v41 = v21;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_3;
    v37[3] = &unk_278C762C0;
    v37[4] = self;
    v38 = v41;
    v39 = v10;
    v34 = v10;
    v35 = v41;
    [v33 animateWithSettings:settingsCopy actions:v40 completion:v37];
  }

  return 1;
}

uint64_t __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)invalidate
{
  [(AMUIDataLayerViewController *)self bs_removeChildViewController:self->_concreteDataLayerViewController];
  [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController invalidate];
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  self->_concreteDataLayerViewController = 0;
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  if (objc_opt_respondsToSelector())
  {
    cancelTouchesForCurrentEventInHostedContent = [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    cancelTouchesForCurrentEventInHostedContent = 0;
  }

  return cancelTouchesForCurrentEventInHostedContent;
}

- (void)loadView
{
  v3 = objc_alloc_init(AMUITouchPassthroughView);
  [(AMUIDataLayerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMUIDataLayerViewController;
  [(AMUIDataLayerViewController *)&v3 viewDidLoad];
  [(AMUIDataLayerViewController *)self _registerForAmbientPresentationTraitChanges];
  [(AMUIDataLayerViewController *)self _updateRedModeFiltersForTraitEnvironment:self previousTraitCollection:0 animated:0];
}

- (id)createUnlockRequestForViewController:(id)controller
{
  delegate = [(AMUIDataLayerViewController *)self delegate];
  v5 = [delegate createUnlockRequestForViewController:self];

  return v5;
}

- (void)requestUnlockForViewController:(id)controller withRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMUIDataLayerViewController *)self delegate];
  [delegate requestUnlockForViewController:self withRequest:requestCopy completion:completionCopy];
}

- (void)viewControllerWillBeginConfiguration:(id)configuration
{
  delegate = [(AMUIDataLayerViewController *)self delegate];
  [delegate viewControllerWillBeginConfiguration:self];
}

- (void)viewControllerWillEndConfiguration:(id)configuration
{
  delegate = [(AMUIDataLayerViewController *)self delegate];
  [delegate viewControllerWillEndConfiguration:self];
}

- (void)viewController:(id)controller didUpdateActiveConfigurationMetadata:(id)metadata
{
  metadataCopy = metadata;
  delegate = [(AMUIDataLayerViewController *)self delegate];
  [delegate viewController:self didUpdateActiveConfigurationMetadata:metadataCopy];
}

- (id)widgetHostManagerForViewController:(id)controller
{
  delegate = [(AMUIDataLayerViewController *)self delegate];
  v5 = [delegate widgetHostManagerForViewController:self];

  return v5;
}

- (id)ambientDefaultsForViewController:(id)controller
{
  delegate = [(AMUIDataLayerViewController *)self delegate];
  v5 = [delegate ambientDefaultsForViewController:self];

  return v5;
}

- (id)defaultWidgetDescriptorStacksForViewController:(id)controller
{
  delegate = [(AMUIDataLayerViewController *)self delegate];
  v5 = [delegate defaultWidgetDescriptorStacksForViewController:self];

  return v5;
}

- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(AMUIDataLayerViewController *)self delegate];
  [delegate viewControllerWillBeginShowingTemporaryOverlay:overlayCopy];
}

- (void)viewControllerWillEndShowingTemporaryOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(AMUIDataLayerViewController *)self delegate];
  [delegate viewControllerWillEndShowingTemporaryOverlay:overlayCopy];
}

- (BOOL)viewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  delegate = [(AMUIDataLayerViewController *)self delegate];
  v9 = [delegate viewController:controllerCopy isApplicationVisibleWithBundleIdentifier:identifierCopy];

  return v9;
}

+ (Class)_dataLayerClassForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15 = 0;
  v4 = [configurationCopy pr_loadAmbientConfigurationWithError:&v15];
  v5 = v15;
  if (v4)
  {
    supportedDataLayout = [v4 supportedDataLayout];
    if (supportedDataLayout == 1 || supportedDataLayout == 2)
    {
      v11 = objc_opt_class();
    }

    else
    {
      v11 = 0;
    }

    v10 = v11;
    goto LABEL_10;
  }

  providerBundleIdentifier = [configurationCopy providerBundleIdentifier];
  v8 = [providerBundleIdentifier isEqualToString:@"com.apple.ambient.AmbientUI.InfographPoster"];

  if (v8)
  {
    v10 = objc_opt_class();
LABEL_10:
    v12 = v10;
    goto LABEL_11;
  }

  v14 = AMUILogDataLayer(v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(AMUIDataLayerViewController *)configurationCopy _dataLayerClassForConfiguration:v5, v14];
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (int64_t)_dataLayoutForDataLayerClass:(Class)class
{
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 2;
  }

  if ([(objc_class *)class isEqual:objc_opt_class()])
  {
    return 1;
  }

  return 3;
}

- (void)_registerForAmbientPresentationTraitChanges
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [(AMUIDataLayerViewController *)self registerForTraitChanges:v4 withHandler:&__block_literal_global_6];
}

- (void)_updateRedModeFiltersForTraitEnvironment:(id)environment previousTraitCollection:(id)collection animated:(BOOL)animated
{
  v27 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  environmentCopy = environment;
  view = [(AMUIDataLayerViewController *)self view];
  traitCollection = [environmentCopy traitCollection];

  v11 = objc_opt_self();
  [traitCollection valueForNSIntegerTrait:v11];
  IsRedMode = AMUIAmbientDisplayStyleIsRedMode();

  v13 = objc_opt_self();
  [collectionCopy valueForNSIntegerTrait:v13];

  v14 = AMUIAmbientDisplayStyleIsRedMode();
  if (collectionCopy && IsRedMode == v14)
  {
    v22 = AMUILogDataLayer(v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218240;
      selfCopy3 = self;
      v25 = 1024;
      LODWORD(v26) = IsRedMode;
      _os_log_impl(&dword_23F38B000, v22, OS_LOG_TYPE_DEFAULT, "0x%p: Not changing red mode filters because red mode trait did not change(isRedModeEnabled=%{BOOL}u)", &v23, 0x12u);
    }
  }

  else
  {
    v16 = AMUILogDataLayer(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (IsRedMode)
    {
      if (v17)
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v23 = 134218242;
        selfCopy3 = self;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&dword_23F38B000, v16, OS_LOG_TYPE_DEFAULT, "0x%p: Applying red mode filter on the concreteDataLayerViewController of type:%@", &v23, 0x16u);
      }

      [view amui_applyRedModeFilterAnimated:1 withCompletion:0];
    }

    else
    {
      if (v17)
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v23 = 134218242;
        selfCopy3 = self;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_23F38B000, v16, OS_LOG_TYPE_DEFAULT, "0x%p: Clearing red mode filter on the concreteDataLayerViewController of type:%@", &v23, 0x16u);
      }

      [view amui_clearRedModeFilterAnimated:1 withCompletion:0];
    }
  }
}

- (AMUIDataLayerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_dataLayerClassForConfiguration:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23F38B000, log, OS_LOG_TYPE_ERROR, "Failed to load ambient configuration from configuration %@ with error %@", &v3, 0x16u);
}

@end