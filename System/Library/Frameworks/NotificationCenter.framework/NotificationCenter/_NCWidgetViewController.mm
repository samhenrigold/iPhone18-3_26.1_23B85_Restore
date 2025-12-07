@interface _NCWidgetViewController
+ (void)_reduceTransparencyDidChange:(id)change;
+ (void)initialize;
- (BOOL)_setVisibleFrame:(CGRect)frame;
- (UIEdgeInsets)_clientMarginInsets;
- (UIEdgeInsets)_initialLayoutMargins;
- (_NCWidgetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_clientPreferredContentHeightPermittingAutolayout:(BOOL)autolayout didUseFittingSize:(BOOL *)size;
- (int64_t)_clientLargestSupportedDisplayMode;
- (void)__openTransactionForAppearanceCallWithState:(int)state withIdentifier:(id)identifier;
- (void)__performUpdateWithReplyHandler:(id)handler;
- (void)__requestEncodedLayerTreeToURL:(id)l withCodingImageFormat:(id)format withReplyHandler:(id)handler;
- (void)__setMaximumSize:(CGSize)size forDisplayMode:(int64_t)mode;
- (void)__updateLayoutMargins:(id)margins;
- (void)__updateVisibleFrame:(CGRect)frame withReplyHandler:(id)handler;
- (void)_clientLargestSupportedDisplayModeDidChange;
- (void)_closeTransactionWithAppearState:(int)state;
- (void)_encodeLayerTreeToURL:(id)l withCodingImageFormat:(id)format withReplyHandler:(id)handler;
- (void)_enqueueProxyRequest:(id)request;
- (void)_notifyContentProvidingViewControllerOfActiveDisplayModeChange;
- (void)_performUpdateWithCompletionHandler:(id)handler;
- (void)_processInputItems:(id)items initialActiveDisplayMode:(int64_t *)mode;
- (void)_requestMarginInsets;
- (void)_requestPreferredViewHeight:(double)height;
- (void)_setActiveDisplayMode:(int64_t)mode unconditionallyNotifyingContentProvidingViewController:(BOOL)controller;
- (void)_setContentProvidingViewController:(id)controller;
- (void)_setMaximumWidth:(double)width forDisplayMode:(int64_t)mode;
- (void)_setVisibilityState:(int64_t)state force:(BOOL)force;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _NCWidgetViewController

+ (void)initialize
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_class();
    NCSwizzleClassMethod(v3, sel_labelColor, sel_nc_labelColor);
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    [mEMORY[0x277D75830] setKeyboardFencingEnabled:0];

    v5 = MEMORY[0x277D75B40];
    v24[0] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v7 = [v5 appearanceWhenContainedInInstancesOfClasses:v6];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:clearColor];

    v9 = MEMORY[0x277D75B40];
    v23 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v11 = [v9 appearanceWhenContainedInInstancesOfClasses:v10];
    [v11 setSeparatorInset:{*MEMORY[0x277D76F30], 0.0, *MEMORY[0x277D76F30], *MEMORY[0x277D76F30]}];

    v12 = MEMORY[0x277D75B48];
    v22 = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v14 = [v12 appearanceWhenContainedInInstancesOfClasses:v13];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v14 setBackgroundColor:clearColor2];

    v16 = MEMORY[0x277D756B8];
    v21 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v18 = [v16 appearanceWhenContainedInInstancesOfClasses:v17];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v18 setTextColor:labelColor];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__reduceTransparencyDidChange_ name:*MEMORY[0x277D764C8] object:0];

    [self _reduceTransparencyDidChange:0];
  }
}

+ (void)_reduceTransparencyDidChange:(id)change
{
  v59[1] = *MEMORY[0x277D85DE8];
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (dyld_program_sdk_at_least())
    {
      v13 = MEMORY[0x277D75B40];
      v56 = objc_opt_class();
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      v15 = [v13 appearanceWhenContainedInInstancesOfClasses:v14];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v15 setSeparatorColor:whiteColor];

      v17 = MEMORY[0x277D75B40];
      v55 = objc_opt_class();
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      v19 = [v17 appearanceWhenContainedInInstancesOfClasses:v18];
      v20 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:120];
      [v19 setSeparatorEffect:v20];

      v21 = objc_alloc(MEMORY[0x277D75D68]);
      v22 = [MEMORY[0x277D75D00] widgetEffectForVibrancyStyle:112];
      v11 = [v21 initWithEffect:v22];

      contentView = [v11 contentView];
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [contentView setBackgroundColor:whiteColor2];

      v25 = MEMORY[0x277D75B48];
      v54 = objc_opt_class();
      v26 = MEMORY[0x277CBEA60];
      v27 = &v54;
    }

    else
    {
      v28 = dyld_program_sdk_at_least();
      v29 = MEMORY[0x277D75B40];
      v30 = objc_opt_class();
      if (!v28)
      {
        v50 = v30;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        v46 = [v29 appearanceWhenContainedInInstancesOfClasses:v45];
        v47 = [MEMORY[0x277D75348] colorWithWhite:0.52 alpha:1.0];
        [v46 setSeparatorColor:v47];

        v48 = MEMORY[0x277D75B40];
        v49 = objc_opt_class();
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        v12 = [v48 appearanceWhenContainedInInstancesOfClasses:v11];
        notificationCenterVibrancyEffect = [MEMORY[0x277D75D00] notificationCenterVibrancyEffect];
        [v12 setSeparatorEffect:notificationCenterVibrancyEffect];
        goto LABEL_9;
      }

      v53 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      v32 = [v29 appearanceWhenContainedInInstancesOfClasses:v31];
      v33 = [MEMORY[0x277D26740] _visualStylingProviderForStyleSetNamed:@"platterClientStyle" inBundle:0];
      v34 = [v33 _visualStylingForStyle:2];
      color = [v34 color];
      [v32 setSeparatorColor:color];

      v36 = MEMORY[0x277D75B40];
      v52 = objc_opt_class();
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v38 = [v36 appearanceWhenContainedInInstancesOfClasses:v37];
      widgetTertiaryVibrancyEffect = [MEMORY[0x277D75D00] widgetTertiaryVibrancyEffect];
      [v38 setSeparatorEffect:widgetTertiaryVibrancyEffect];

      v40 = objc_alloc(MEMORY[0x277D75D68]);
      widgetQuaternaryVibrancyEffect = [MEMORY[0x277D75D00] widgetQuaternaryVibrancyEffect];
      v11 = [v40 initWithEffect:widgetQuaternaryVibrancyEffect];

      contentView2 = [v11 contentView];
      tintColor = [contentView2 tintColor];
      [v11 setBackgroundColor:tintColor];

      v25 = MEMORY[0x277D75B48];
      v51 = objc_opt_class();
      v26 = MEMORY[0x277CBEA60];
      v27 = &v51;
    }

    v12 = [v26 arrayWithObjects:v27 count:1];
    notificationCenterVibrancyEffect = [v25 appearanceWhenContainedInInstancesOfClasses:v12];
    [notificationCenterVibrancyEffect _forSpringBoardSetDefaultSelectedBackgroundView:v11];
LABEL_9:

    goto LABEL_10;
  }

  v3 = MEMORY[0x277D75B40];
  v59[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
  v5 = [v3 appearanceWhenContainedInInstancesOfClasses:v4];
  tableSeparatorLightColor = [MEMORY[0x277D75348] tableSeparatorLightColor];
  [v5 setSeparatorColor:tableSeparatorLightColor];

  v7 = MEMORY[0x277D75B40];
  v58 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v9 = [v7 appearanceWhenContainedInInstancesOfClasses:v8];
  [v9 setSeparatorEffect:0];

  v10 = MEMORY[0x277D75B48];
  v57 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  v12 = [v10 appearanceWhenContainedInInstancesOfClasses:v11];
  [v12 _forSpringBoardSetDefaultSelectedBackgroundView:0];
LABEL_10:
}

- (_NCWidgetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = _NCWidgetViewController;
  v4 = [(_NCWidgetViewController *)&v14 initWithNibName:name bundle:bundle];
  v6 = v4;
  if (v4)
  {
    NCRegisterWidgetsLogging(v4, v5);
    v7 = dispatch_queue_create("com.apple.NotificationCenter.RVCProxyQueue", 0);
    remoteViewControllerProxyQueue = v6->_remoteViewControllerProxyQueue;
    v6->_remoteViewControllerProxyQueue = v7;

    dispatch_suspend(v6->_remoteViewControllerProxyQueue);
    if (dyld_program_sdk_at_least())
    {
      v9 = *MEMORY[0x277D768C8];
      v10 = *(MEMORY[0x277D768C8] + 16);
    }

    else
    {
      v9 = xmmword_22D11FCB0;
      v10 = xmmword_22D11FCC0;
    }

    *&v6->_clientMarginInsets.top = v9;
    *&v6->_clientMarginInsets.bottom = v10;
    [MEMORY[0x277D757F8] _setPanGestureRecognizersEnabled:0];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    wrappedAppearStatesToOpenTransactionIDs = v6->_wrappedAppearStatesToOpenTransactionIDs;
    v6->_wrappedAppearStatesToOpenTransactionIDs = strongToStrongObjectsMapTable;

    [(_NCWidgetViewController *)v6 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v6;
}

- (void)dealloc
{
  remoteViewControllerProxyQueue = self->_remoteViewControllerProxyQueue;
  if (!dispatch_queue_get_specific(remoteViewControllerProxyQueue, "_NCWidgetHostViewControllerQueueIsEnabledTag"))
  {
    dispatch_resume(remoteViewControllerProxyQueue);
  }

  v4.receiver = self;
  v4.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v4 dealloc];
}

- (void)_enqueueProxyRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    objc_initWeak(&location, self);
    remoteViewControllerProxyQueue = self->_remoteViewControllerProxyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48___NCWidgetViewController__enqueueProxyRequest___block_invoke;
    block[3] = &unk_278750A48;
    v7 = requestCopy;
    objc_copyWeak(&v8, &location);
    dispatch_async(remoteViewControllerProxyQueue, block);
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

- (void)_setContentProvidingViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (!self->_contentProvidingViewController)
  {
    v7 = 1;
    if (!controllerCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_ERROR))
  {
    [_NCWidgetViewController _setContentProvidingViewController:];
  }

  v7 = self->_contentProvidingViewController == 0;
  if (v6)
  {
LABEL_7:
    if (v7)
    {
      objc_storeStrong(&self->_contentProvidingViewController, controller);
      [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController setViewRespectsSystemMinimumLayoutMargins:0];
      [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController willMoveToParentViewController:self];
      [(_NCWidgetViewController *)self addChildViewController:self->_contentProvidingViewController];
      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xFD | v8;
      if (objc_opt_respondsToSelector())
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xFB | v9;
      if (objc_opt_respondsToSelector())
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xF7 | v10;
      if (objc_opt_respondsToSelector())
      {
        v11 = 16;
      }

      else
      {
        v11 = 0;
      }

      *&self->_contentProvidingViewControllerFlags = *&self->_contentProvidingViewControllerFlags & 0xEF | v11;
    }
  }

LABEL_21:
}

- (void)_requestMarginInsets
{
  if ((dyld_program_sdk_at_least() & 1) == 0 && (*&self->_contentProvidingViewControllerFlags & 2) != 0)
  {
    [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController widgetMarginInsetsForProposedMarginInsets:self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right];
    self->_clientMarginInsets.top = v3;
    self->_clientMarginInsets.left = v4;
    self->_clientMarginInsets.bottom = v5;
    self->_clientMarginInsets.right = v6;
  }
}

- (void)_processInputItems:(id)items initialActiveDisplayMode:(int64_t *)mode
{
  itemsCopy = items;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = dyld_program_sdk_at_least();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71___NCWidgetViewController__processInputItems_initialActiveDisplayMode___block_invoke;
  v7[3] = &unk_278750A70;
  v7[4] = self;
  v7[5] = v26;
  v7[6] = v24;
  v7[7] = v22;
  v7[8] = v20;
  v7[9] = v18;
  v7[10] = v16;
  v7[11] = v14;
  v7[12] = v12;
  v7[13] = v10;
  v7[14] = v8;
  v7[15] = mode;
  [itemsCopy enumerateObjectsUsingBlock:v7];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21.receiver = self;
    v21.super_class = _NCWidgetViewController;
    [(_NCWidgetViewController *)&v21 beginRequestWithExtensionContext:contextCopy];
    [contextCopy _setHostViewController:self];
    childViewControllers = [(_NCWidgetViewController *)self childViewControllers];
    lastObject = [childViewControllers lastObject];
    [(_NCWidgetViewController *)self _setContentProvidingViewController:lastObject];

    if (!self->_contentProvidingViewController)
    {
      v7 = NCLogWidgets;
      if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D116000, v7, OS_LOG_TYPE_DEFAULT, "No content providing view controller found", buf, 2u);
      }
    }

    v20 = 0;
    inputItems = [contextCopy inputItems];
    [(_NCWidgetViewController *)self _processInputItems:inputItems initialActiveDisplayMode:&v20];

    v9 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
      _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
      *buf = 138543874;
      v23 = _widgetIdentifier;
      v24 = 2050;
      selfCopy = self;
      v26 = 2114;
      v27 = _containerIdentifier;
      _os_log_impl(&dword_22D116000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Beginning request", buf, 0x20u);
    }

    [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController beginRequestWithExtensionContext:contextCopy];
    [(_NCWidgetViewController *)self _setVisibilityState:self->_visibilityState force:1];
    [(_NCWidgetViewController *)self loadViewIfNeeded];
    _clientLargestSupportedDisplayMode = [(_NCWidgetViewController *)self _clientLargestSupportedDisplayMode];
    v14 = v20;
    if (_clientLargestSupportedDisplayMode == -1)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __60___NCWidgetViewController_beginRequestWithExtensionContext___block_invoke;
      v19[3] = &__block_descriptor_40_e33_v16__0___NCWidgetViewController_8l;
      v19[4] = v20;
      [(_NCWidgetViewController *)self _enqueueProxyRequest:v19];
    }

    else if (v20 >= _clientLargestSupportedDisplayMode)
    {
      v14 = _clientLargestSupportedDisplayMode;
    }

    [(_NCWidgetViewController *)self _setActiveDisplayMode:v14 unconditionallyNotifyingContentProvidingViewController:1];
  }

  else
  {
    v15 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_22D116000, v16, OS_LOG_TYPE_DEFAULT, "Extension context of unexpected class (%{public}@)", buf, 0xCu);
    }
  }
}

- (void)loadView
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    v10 = 138543874;
    v11 = _widgetIdentifier;
    v12 = 2050;
    selfCopy = self;
    v14 = 2114;
    v15 = _containerIdentifier;
    _os_log_impl(&dword_22D116000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Loading view", &v10, 0x20u);
  }

  v7 = [_NCWidgetViewControllerView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = [(_NCWidgetViewControllerView *)v7 initWithFrame:?];

  [(_NCWidgetViewControllerView *)v9 setAutoresizingMask:18];
  [(NCSizeObservingView *)v9 setDelegate:self];
  [(_NCWidgetViewController *)self setView:v9];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v25 viewDidLoad];
  view = [(_NCWidgetViewController *)self view];
  [view setAutoresizesSubviews:1];
  [view setInsetsLayoutMarginsFromSafeArea:0];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];

  v5 = [objc_alloc(MEMORY[0x277D759E0]) initWithTarget:self action:sel_delayed_];
  touchDelayGestureRecognizer = self->_touchDelayGestureRecognizer;
  self->_touchDelayGestureRecognizer = v5;

  [(UIScrollViewDelayedTouchesBeganGestureRecognizer *)self->_touchDelayGestureRecognizer setDelaysTouchesBegan:1];
  [view addGestureRecognizer:self->_touchDelayGestureRecognizer];
  [(_NCWidgetViewController *)self _requestMarginInsets];
  SanitizedClientFrameFromHostSize(self->_initialBounds.size.width, self->_initialBounds.size.height, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
  v8 = v7;
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v7}];
  contentView = self->_contentView;
  self->_contentView = v12;

  [(_NCWidgetViewController *)self _requestPreferredViewHeight:v8];
  [(UIView *)self->_contentView setClipsToBounds:1];
  [(UIView *)self->_contentView setAutoresizesSubviews:1];
  [(UIView *)self->_contentView setAutoresizingMask:0];
  [(UIView *)self->_contentView setInsetsLayoutMarginsFromSafeArea:0];
  v14 = *MEMORY[0x277D768C8];
  v15 = *(MEMORY[0x277D768C8] + 8);
  v16 = *(MEMORY[0x277D768C8] + 16);
  v17 = *(MEMORY[0x277D768C8] + 24);
  [(UIView *)self->_contentView setLayoutMargins:*MEMORY[0x277D768C8], v15, v16, v17];
  [(UIView *)self->_contentView setPreservesSuperviewLayoutMargins:1];
  [view addSubview:self->_contentView];
  view2 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:1];

  view3 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [view3 setLayoutMargins:{v14, v15, v16, v17}];

  view4 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [view4 setPreservesSuperviewLayoutMargins:1];

  view5 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [(UIView *)self->_contentView bounds];
  [view5 setFrame:?];

  view6 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [view6 setAutoresizingMask:18];

  v23 = self->_contentView;
  view7 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
  [(UIView *)v23 addSubview:view7];

  [view setLayoutMargins:{self->_initialLayoutMargins.top, self->_initialLayoutMargins.left, self->_initialLayoutMargins.bottom, self->_initialLayoutMargins.right}];
}

- (void)_closeTransactionWithAppearState:(int)state
{
  v3 = *&state;
  v34 = *MEMORY[0x277D85DE8];
  v5 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    *buf = 138544386;
    v25 = _widgetIdentifier;
    v26 = 2050;
    selfCopy2 = self;
    v28 = 2114;
    v29 = _containerIdentifier;
    v30 = 1026;
    v31 = v3;
    v32 = 1026;
    _appearState = [(_NCWidgetViewController *)self _appearState];
    _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Attempting to close transaction with appear state '%{public}d' (current appear state '%{public}d')", buf, 0x2Cu);
  }

  wrappedAppearStatesToOpenTransactionIDs = self->_wrappedAppearStatesToOpenTransactionIDs;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v11 = [(NSMapTable *)wrappedAppearStatesToOpenTransactionIDs objectForKey:v10];

  if (v11)
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __60___NCWidgetViewController__closeTransactionWithAppearState___block_invoke;
    v21 = &unk_278750AB8;
    v23 = v3;
    v22 = v11;
    [(_NCWidgetViewController *)self _enqueueProxyRequest:&v18];
  }

  else
  {
    v12 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      _widgetIdentifier2 = [(_NCWidgetViewController *)self _widgetIdentifier];
      _containerIdentifier2 = [(_NCWidgetViewController *)self _containerIdentifier];
      *buf = 138544130;
      v25 = _widgetIdentifier2;
      v26 = 2050;
      selfCopy2 = self;
      v28 = 2114;
      v29 = _containerIdentifier2;
      v30 = 1026;
      v31 = v3;
      _os_log_impl(&dword_22D116000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> No open appearance transaction for state '%{public}d' to close", buf, 0x26u);
    }
  }

  v16 = self->_wrappedAppearStatesToOpenTransactionIDs;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v3, v18, v19, v20, v21}];
  [(NSMapTable *)v16 removeObjectForKey:v17];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v20 = *MEMORY[0x277D85DE8];
  v5 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    *buf = 138543874;
    v15 = _widgetIdentifier;
    v16 = 2050;
    selfCopy = self;
    v18 = 2114;
    v19 = _containerIdentifier;
    _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> View will appear", buf, 0x20u);
  }

  remoteViewControllerProxyQueue = self->_remoteViewControllerProxyQueue;
  if (!dispatch_queue_get_specific(remoteViewControllerProxyQueue, "_NCWidgetHostViewControllerQueueIsEnabledTag"))
  {
    dispatch_queue_set_specific(remoteViewControllerProxyQueue, "_NCWidgetHostViewControllerQueueIsEnabledTag", 1, 0);
    dispatch_resume(self->_remoteViewControllerProxyQueue);
  }

  v13.receiver = self;
  v13.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v13 viewWillAppear:appearCopy];
  [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController beginAppearanceTransition:1 animated:appearCopy];
  objc_initWeak(buf, self);
  v10 = *MEMORY[0x277D76620];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42___NCWidgetViewController_viewWillAppear___block_invoke;
  v11[3] = &unk_278750AE0;
  objc_copyWeak(&v12, buf);
  [v10 _performBlockAfterCATransactionCommits:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v16 = *MEMORY[0x277D85DE8];
  v5 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    *buf = 138543874;
    v11 = _widgetIdentifier;
    v12 = 2050;
    selfCopy = self;
    v14 = 2114;
    v15 = _containerIdentifier;
    _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> View did appear", buf, 0x20u);
  }

  v9.receiver = self;
  v9.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v9 viewDidAppear:appearCopy];
  [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController endAppearanceTransition];
  [(_NCWidgetViewController *)self _closeTransactionWithAppearState:2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v16 = *MEMORY[0x277D85DE8];
  v5 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    *buf = 138543874;
    v11 = _widgetIdentifier;
    v12 = 2050;
    selfCopy = self;
    v14 = 2114;
    v15 = _containerIdentifier;
    _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> View will disappear", buf, 0x20u);
  }

  v9.receiver = self;
  v9.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v9 viewWillDisappear:disappearCopy];
  [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController beginAppearanceTransition:0 animated:disappearCopy];
  [(_NCWidgetViewController *)self _closeTransactionWithAppearState:3];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v16 = *MEMORY[0x277D85DE8];
  v5 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    *buf = 138543874;
    v11 = _widgetIdentifier;
    v12 = 2050;
    selfCopy = self;
    v14 = 2114;
    v15 = _containerIdentifier;
    _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> View did disappear", buf, 0x20u);
  }

  v9.receiver = self;
  v9.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v9 viewDidDisappear:disappearCopy];
  [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController endAppearanceTransition];
  [(_NCWidgetViewController *)self _closeTransactionWithAppearState:0];
}

- (void)_requestPreferredViewHeight:(double)height
{
  [(_NCWidgetViewController *)self _effectiveHeightForRequestedHeight:height];
  v5 = v4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55___NCWidgetViewController__requestPreferredViewHeight___block_invoke;
  v17[3] = &__block_descriptor_40_e33_v16__0___NCWidgetViewController_8l;
  *&v17[4] = v4;
  [(_NCWidgetViewController *)self _enqueueProxyRequest:v17];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if ([(_NCWidgetViewController *)self isViewLoaded])
    {
      [(UIView *)self->_contentView frame];
      SanitizedClientFrameFromHostSize(v6, v7, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
      width = v18.size.width;
      height = v18.size.height;
      if (CGRectGetHeight(v18) == v5)
      {
        v10 = objc_alloc_init(MEMORY[0x277D763A0]);
        contentProvidingViewController = self->_contentProvidingViewController;
        _transitionCoordinator = [v10 _transitionCoordinator];
        [(NCWidgetProvidingPrivate *)contentProvidingViewController viewWillTransitionToSize:_transitionCoordinator withTransitionCoordinator:width, height];

        if (self->_clientUsesAutolayout)
        {
          objc_initWeak(&location, self);
          _transitionCoordinator2 = [v10 _transitionCoordinator];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __55___NCWidgetViewController__requestPreferredViewHeight___block_invoke_2;
          v14[3] = &unk_278750B08;
          objc_copyWeak(&v15, &location);
          [_transitionCoordinator2 animateAlongsideTransition:v14 completion:0];

          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }

        [v10 __runAlongsideAnimations];
        [v10 completeTransition:1];
      }
    }
  }
}

- (double)_clientPreferredContentHeightPermittingAutolayout:(BOOL)autolayout didUseFittingSize:(BOOL *)size
{
  autolayoutCopy = autolayout;
  preferredContentSize = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController preferredContentSize];
  v10 = v9;
  if (autolayoutCopy && fabs(v9) < 2.22044605e-16)
  {
    view = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
    view2 = [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController view];
    [view2 bounds];
    v14 = v13;
    v16 = v15;
    LODWORD(v13) = 1148846080;
    LODWORD(v15) = 1112014848;
    [view systemLayoutSizeFittingSize:v14 withHorizontalFittingPriority:v16 verticalFittingPriority:{v13, v15}];
    v10 = v17;

    if (size)
    {
      *size = 1;
    }
  }

  v18.n128_u64[0] = NCMainScreenScale(preferredContentSize, v8);
  v19.n128_f64[0] = v10;

  MEMORY[0x2821DE7E8](v19, v18);
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  if (self->_contentProvidingViewController == container)
  {
    [(_NCWidgetViewController *)self _clientPreferredContentHeight];

    [(_NCWidgetViewController *)self _requestPreferredViewHeight:?];
  }
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  contentProvidingViewController = self->_contentProvidingViewController;
  if (contentProvidingViewController == container)
  {
    [(NCWidgetProvidingPrivate *)contentProvidingViewController preferredContentSize];
    if (fabs(v5) < 2.22044605e-16)
    {
      [(_NCWidgetViewController *)self _clientPreferredContentHeightPermittingAutolayout:1 didUseFittingSize:&self->_clientUsesAutolayout];

      [(_NCWidgetViewController *)self _requestPreferredViewHeight:?];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v8 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    v28.width = width;
    v28.height = height;
    v12 = NSStringFromCGSize(v28);
    *buf = 138544130;
    v20 = _widgetIdentifier;
    v21 = 2050;
    selfCopy = self;
    v23 = 2114;
    v24 = _containerIdentifier;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_22D116000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Transitioning to size: %{public}@", buf, 0x2Au);
  }

  SanitizedClientFrameFromHostSize(width, height, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
  v13 = v29.size.width;
  v14 = v29.size.height;
  v15 = CGRectGetWidth(v29);
  [(_NCWidgetViewController *)self _setMaximumWidth:0 forDisplayMode:?];
  [(_NCWidgetViewController *)self _setMaximumWidth:1 forDisplayMode:v15];
  v18.receiver = self;
  v18.super_class = _NCWidgetViewController;
  [(_NCWidgetViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:v13, v14];
  if (self->_clientUsesAutolayout)
  {
    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78___NCWidgetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v16[3] = &unk_278750B08;
    objc_copyWeak(&v17, buf);
    [coordinatorCopy animateAlongsideTransition:v16 completion:0];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

- (void)_performUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (*&self->_contentProvidingViewControllerFlags)
  {
    _contentProvidingViewController = [(_NCWidgetViewController *)self _contentProvidingViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63___NCWidgetViewController__performUpdateWithCompletionHandler___block_invoke;
    v7[3] = &unk_278750B30;
    v8 = v5;
    [_contentProvidingViewController widgetPerformUpdateWithCompletionHandler:v7];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

- (void)_clientLargestSupportedDisplayModeDidChange
{
  _clientLargestSupportedDisplayMode = [(_NCWidgetViewController *)self _clientLargestSupportedDisplayMode];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70___NCWidgetViewController__clientLargestSupportedDisplayModeDidChange__block_invoke;
  v4[3] = &__block_descriptor_40_e33_v16__0___NCWidgetViewController_8l;
  v4[4] = _clientLargestSupportedDisplayMode & ~(_clientLargestSupportedDisplayMode >> 63);
  [(_NCWidgetViewController *)self _enqueueProxyRequest:v4];
}

- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v33 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v8 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    v13 = v8;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    v34.width = width;
    v34.height = height;
    v16 = NSStringFromCGSize(v34);
    [viewCopy bounds];
    v35.width = v17;
    v35.height = v18;
    v19 = NSStringFromCGSize(v35);
    contentView = self->_contentView;
    v21 = 138544642;
    v22 = _widgetIdentifier;
    v23 = 2050;
    selfCopy = self;
    v25 = 2114;
    v26 = _containerIdentifier;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = contentView;
    _os_log_debug_impl(&dword_22D116000, v13, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p; container: %{public}@> View did change from size: %{public}@; to size: %{public}@; _contentView: %{public}@", &v21, 0x3Eu);
  }

  if (![(UIView *)self->_contentView autoresizingMask])
  {
    v9 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(_NCWidgetViewController *)v9 sizeObservingView:&self->_contentView didChangeSize:?];
    }

    v10 = self->_contentView;
    [viewCopy bounds];
    SanitizedClientFrameFromHostSize(v11, v12, self->_clientMarginInsets.top, self->_clientMarginInsets.left, self->_clientMarginInsets.bottom, self->_clientMarginInsets.right);
    [(UIView *)v10 setFrame:?];
    [(UIView *)self->_contentView setAutoresizingMask:18];
  }
}

- (void)_encodeLayerTreeToURL:(id)l withCodingImageFormat:(id)format withReplyHandler:(id)handler
{
  v45[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  formatCopy = format;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = dispatch_get_global_queue(17, 0);
    view = [(_NCWidgetViewController *)self view];
    v13 = 0;
    if (self->_snapshotTimestampsEnabled)
    {
      v13 = objc_alloc_init(MEMORY[0x277D756B8]);
      v14 = MEMORY[0x277CCACA8];
      v15 = MEMORY[0x277CCA968];
      date = [MEMORY[0x277CBEAA8] date];
      v17 = [v15 localizedStringFromDate:date dateStyle:1 timeStyle:2];
      v18 = [v14 stringWithFormat:@"snapshot - %@", v17];
      [v13 setText:v18];

      redColor = [MEMORY[0x277D75348] redColor];
      [v13 setTextColor:redColor];

      v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      [v13 setFont:v20];

      [v13 sizeToFit];
      [view addSubview:v13];
      [v13 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [view bounds];
      Width = CGRectGetWidth(v46);
      v47.origin.x = v22;
      v47.origin.y = v24;
      v47.size.width = v26;
      v47.size.height = v28;
      v30 = Width - CGRectGetWidth(v47);
      [view bounds];
      Height = CGRectGetHeight(v48);
      v49.origin.x = v22;
      v49.origin.y = v24;
      v49.size.width = v26;
      v49.size.height = v28;
      [v13 setFrame:{v30, Height - CGRectGetHeight(v49), v26, v28}];
    }

    layer = [view layer];
    v33 = layer;
    if (lCopy && v11 && layer)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke;
      block[3] = &unk_278750BA8;
      v39 = layer;
      v40 = lCopy;
      v41 = formatCopy;
      v42 = v13;
      v43 = handlerCopy;
      dispatch_async(v11, block);

      lCopy = v39;
    }

    else
    {
      v35 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no layer to encode (%@), we failed to obtain a queue (%@), or no URL was provided (%@)", layer, v11, lCopy];
      v45[0] = lCopy;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v37 = [v35 errorWithDomain:@"NCWidgetErrorDomain" code:3 userInfo:v36];
      (*(handlerCopy + 2))(handlerCopy, v37);
    }
  }
}

- (int64_t)_clientLargestSupportedDisplayMode
{
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  _widgetExtensionContext = [(_NCWidgetViewController *)self _widgetExtensionContext];
  _largestAvailableDisplayMode = [_widgetExtensionContext _largestAvailableDisplayMode];

  return _largestAvailableDisplayMode;
}

- (void)_notifyContentProvidingViewControllerOfActiveDisplayModeChange
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*&self->_contentProvidingViewControllerFlags & 4) != 0)
  {
    _widgetExtensionContext = [(_NCWidgetViewController *)self _widgetExtensionContext];
    _activeDisplayMode = [_widgetExtensionContext _activeDisplayMode];
    v5 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
      _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
      v9 = NCStringFromWidgetDisplayMode(_activeDisplayMode);
      v11 = 138544130;
      v12 = _widgetIdentifier;
      v13 = 2050;
      selfCopy = self;
      v15 = 2114;
      v16 = _containerIdentifier;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Notifying content providing view controller of active display mode change: %{public}@", &v11, 0x2Au);
    }

    _contentProvidingViewController = [(_NCWidgetViewController *)self _contentProvidingViewController];
    [_widgetExtensionContext _maximumSizeForDisplayMode:_activeDisplayMode];
    [_contentProvidingViewController widgetActiveDisplayModeDidChange:_activeDisplayMode withMaximumSize:?];
  }
}

- (void)_setActiveDisplayMode:(int64_t)mode unconditionallyNotifyingContentProvidingViewController:(BOOL)controller
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    v11 = NCStringFromWidgetDisplayMode(mode);
    v14 = 138544130;
    v15 = _widgetIdentifier;
    v16 = 2050;
    selfCopy = self;
    v18 = 2114;
    v19 = _containerIdentifier;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_22D116000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Setting active display mode: %{public}@", &v14, 0x2Au);
  }

  _widgetExtensionContext = [(_NCWidgetViewController *)self _widgetExtensionContext];
  _activeDisplayMode = [_widgetExtensionContext _activeDisplayMode];
  [_widgetExtensionContext _setActiveDisplayMode:mode];
  if (controller || _activeDisplayMode != [_widgetExtensionContext _activeDisplayMode])
  {
    [(_NCWidgetViewController *)self _notifyContentProvidingViewControllerOfActiveDisplayModeChange];
  }
}

- (void)_setMaximumWidth:(double)width forDisplayMode:(int64_t)mode
{
  _widgetExtensionContext = [(_NCWidgetViewController *)self _widgetExtensionContext];
  [_widgetExtensionContext _maximumSizeForDisplayMode:mode];
  v9 = v8;

  _widgetExtensionContext2 = [(_NCWidgetViewController *)self _widgetExtensionContext];
  [_widgetExtensionContext2 _setMaximumSize:mode forDisplayMode:{width, v9}];
}

- (void)_setVisibilityState:(int64_t)state force:(BOOL)force
{
  v18 = *MEMORY[0x277D85DE8];
  if (force || self->_visibilityState != state)
  {
    self->_visibilityState = state;
    if ((*&self->_contentProvidingViewControllerFlags & 8) != 0)
    {
      v5 = NCLogWidgets;
      if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
        _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
        v9 = NCStringFromWidgetVisibilityState(self->_visibilityState);
        v10 = 138544130;
        v11 = _widgetIdentifier;
        v12 = 2050;
        selfCopy = self;
        v14 = 2114;
        v15 = _containerIdentifier;
        v16 = 2114;
        v17 = v9;
        _os_log_impl(&dword_22D116000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Updating visibility state: %{public}@", &v10, 0x2Au);
      }

      [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController widgetDidBecomeForeground:self->_visibilityState == 1];
    }
  }
}

- (BOOL)_setVisibleFrame:(CGRect)frame
{
  v24 = *MEMORY[0x277D85DE8];
  contentProvidingViewControllerFlags = self->_contentProvidingViewControllerFlags;
  if ((*&contentProvidingViewControllerFlags & 0x10) != 0)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v9 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
      _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v13 = NSStringFromCGRect(v25);
      v16 = 138544130;
      v17 = _widgetIdentifier;
      v18 = 2050;
      selfCopy = self;
      v20 = 2114;
      v21 = _containerIdentifier;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_22D116000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Updating visibility frame: %{public}@", &v16, 0x2Au);
    }

    [(NCWidgetProvidingPrivate *)self->_contentProvidingViewController widgetVisibleFrameDidChange:x, y, width, height];
  }

  return (*&contentProvidingViewControllerFlags >> 4) & 1;
}

- (void)__setMaximumSize:(CGSize)size forDisplayMode:(int64_t)mode
{
  height = size.height;
  width = size.width;
  _widgetExtensionContext = [(_NCWidgetViewController *)self _widgetExtensionContext];
  [_widgetExtensionContext _setMaximumSize:mode forDisplayMode:{width, height}];
}

- (void)__requestEncodedLayerTreeToURL:(id)l withCodingImageFormat:(id)format withReplyHandler:(id)handler
{
  if (handler)
  {
    [(_NCWidgetViewController *)self _encodeLayerTreeToURL:l withCodingImageFormat:format withReplyHandler:?];
  }
}

- (void)__performUpdateWithReplyHandler:(id)handler
{
  if (handler)
  {
    [(_NCWidgetViewController *)self _performUpdateWithCompletionHandler:?];
  }
}

- (void)__openTransactionForAppearanceCallWithState:(int)state withIdentifier:(id)identifier
{
  v4 = *&state;
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(NSMapTable *)self->_wrappedAppearStatesToOpenTransactionIDs count]>= 2)
  {
    v7 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_ERROR))
    {
      [_NCWidgetViewController __openTransactionForAppearanceCallWithState:v7 withIdentifier:?];
    }
  }

  v8 = [(NSMapTable *)self->_wrappedAppearStatesToOpenTransactionIDs copy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        -[_NCWidgetViewController _closeTransactionWithAppearState:](self, "_closeTransactionWithAppearState:", [*(*(&v20 + 1) + 8 * v13++) integerValue]);
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v34 count:16];
    }

    while (v11);
  }

  wrappedAppearStatesToOpenTransactionIDs = self->_wrappedAppearStatesToOpenTransactionIDs;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMapTable *)wrappedAppearStatesToOpenTransactionIDs setObject:identifierCopy forKey:v15];

  v16 = NCLogWidgets;
  if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    _widgetIdentifier = [(_NCWidgetViewController *)self _widgetIdentifier];
    _containerIdentifier = [(_NCWidgetViewController *)self _containerIdentifier];
    *buf = 138544386;
    v25 = _widgetIdentifier;
    v26 = 2050;
    selfCopy = self;
    v28 = 2114;
    v29 = _containerIdentifier;
    v30 = 1026;
    v31 = v4;
    v32 = 2114;
    v33 = identifierCopy;
    _os_log_impl(&dword_22D116000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Opened appearance transaction with state: %{public}d; identifier: %{public}@", buf, 0x30u);
  }
}

- (void)__updateVisibleFrame:(CGRect)frame withReplyHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  height = [(_NCWidgetViewController *)self _setVisibleFrame:x, y, width, height];
  v10 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, height);
    v10 = handlerCopy;
  }
}

- (void)__updateLayoutMargins:(id)margins
{
  string = margins;
  if ([(NSString *)string length])
  {
    viewIfLoaded = [(_NCWidgetViewController *)self viewIfLoaded];
    v7 = UIEdgeInsetsFromString(string);
    [viewIfLoaded setLayoutMargins:{v7.top, v7.left, v7.bottom, v7.right}];
  }
}

- (UIEdgeInsets)_clientMarginInsets
{
  top = self->_clientMarginInsets.top;
  left = self->_clientMarginInsets.left;
  bottom = self->_clientMarginInsets.bottom;
  right = self->_clientMarginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_initialLayoutMargins
{
  top = self->_initialLayoutMargins.top;
  left = self->_initialLayoutMargins.left;
  bottom = self->_initialLayoutMargins.bottom;
  right = self->_initialLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setContentProvidingViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D116000, v0, OS_LOG_TYPE_ERROR, "Attempt to set content providing VC (%{public}@) when one already exists (%{public}@)", v1, 0x16u);
}

- (void)sizeObservingView:(uint64_t *)a3 didChangeSize:.cold.1(void *a1, void *a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 _widgetIdentifier];
  v7 = [a2 _containerIdentifier];
  v8 = *a3;
  v9 = 138544130;
  v10 = v6;
  v11 = 2050;
  v12 = a2;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  _os_log_debug_impl(&dword_22D116000, v5, OS_LOG_TYPE_DEBUG, "<%{public}@: %{public}p; container: %{public}@> Updating content view autoresizing mask: %{public}@", &v9, 0x2Au);
}

- (void)__openTransactionForAppearanceCallWithState:(void *)a1 withIdentifier:(void *)a2 .cold.1(void **a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_22D116000, v3, OS_LOG_TYPE_ERROR, "have %{public}lu open appearance transactions (expected 0 or 1): %{public}@", v4, 0x16u);
}

@end