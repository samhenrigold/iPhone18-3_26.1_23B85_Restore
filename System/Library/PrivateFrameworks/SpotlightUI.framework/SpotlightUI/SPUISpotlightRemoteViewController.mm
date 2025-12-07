@interface SPUISpotlightRemoteViewController
+ (unint64_t)spotlightSupportedInterfaceOrientations;
- (CGRect)sceneSettingsFrameFromRect:(CGRect)rect;
- (CGSize)initialFittingSize;
- (FBSDisplayConfiguration)displayConfiguration;
- (SPUISpotlightRemoteViewController)initWithSceneIdentifier:(id)identifier;
- (id)sceneSpecification;
- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context;
- (id)watchdogTerminationRequestForProcess:(id)process error:(id)error;
- (int64_t)currentOrientation;
- (void)addOrExecuteEventAsNeeded:(id)needed;
- (void)clearEventQueue;
- (void)createSceneIfNeededWithPriority:(int64_t)priority;
- (void)createSceneWithPriority:(int64_t)priority;
- (void)didInvalidateSceneWhenForeground;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setForeground:(BOOL)foreground;
- (void)setLegibilitySettings:(id)settings;
- (void)transaction:(id)transaction didCreateScene:(id)scene;
- (void)updateSafeAreasOnSettings:(id)settings;
- (void)updateSceneToOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)updateTraitCollection;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willLaunchSpotlightInBackground;
@end

@implementation SPUISpotlightRemoteViewController

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
    mainConfiguration = displayConfiguration;
  }

  else
  {
    mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
  }

  return mainConfiguration;
}

- (CGSize)initialFittingSize
{
  view = [(SPUISpotlightRemoteViewController *)self view];
  tlks_screen = [view tlks_screen];
  [tlks_screen bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)currentOrientation
{
  if ([objc_opt_class() spotlightSupportedInterfaceOrientations] == 2)
  {
    result = 1;
    self->_currentOrientation = 1;
  }

  else
  {
    result = self->_currentOrientation;
    if (!result)
    {
      v4 = SBUIGetUserAgent();
      self->_currentOrientation = [v4 activeInterfaceOrientation];

      return self->_currentOrientation;
    }
  }

  return result;
}

+ (unint64_t)spotlightSupportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = SPUISpotlightRemoteViewController;
  [(SPUISpotlightRemoteViewController *)&v22 viewDidLayoutSubviews];
  view = [(SPUISpotlightRemoteViewController *)self view];
  [view bounds];
  [(SPUISpotlightRemoteViewController *)self sceneSettingsFrameFromRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  scene = [(SPUISpotlightRemoteViewController *)self scene];
  settings = [scene settings];
  [settings frame];
  v24.origin.x = v14;
  v24.origin.y = v15;
  v24.size.width = v16;
  v24.size.height = v17;
  *&v23.origin.x = v5;
  *&v23.origin.y = v7;
  *&v23.size.width = v9;
  *&v23.size.height = v11;
  v18 = CGRectEqualToRect(v23, v24);

  if (!v18)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__SPUISpotlightRemoteViewController_viewDidLayoutSubviews__block_invoke;
    v19[3] = &unk_279D05670;
    objc_copyWeak(v20, &location);
    v20[1] = v5;
    v20[2] = v7;
    v20[3] = v9;
    v20[4] = v11;
    [(SPUISpotlightRemoteViewController *)self addOrExecuteEventAsNeeded:v19];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __58__SPUISpotlightRemoteViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained scene];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SPUISpotlightRemoteViewController_viewDidLayoutSubviews__block_invoke_2;
  v5[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v4;
  [v3 updateSettingsWithBlock:v5];
}

- (void)clearEventQueue
{
  sceneEventsQueue = [(SPUISpotlightRemoteViewController *)self sceneEventsQueue];
  [sceneEventsQueue removeAllObjects];
}

- (SPUISpotlightRemoteViewController)initWithSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SPUISpotlightRemoteViewController;
  v5 = [(SPUISpotlightRemoteViewController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(SPUISpotlightRemoteViewController *)v5 setSceneIdentifier:identifierCopy];
    v7 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
    [(SPUISpotlightRemoteViewController *)v6 setLegibilitySettings:v7];

    v8 = objc_opt_new();
    [(SPUISpotlightRemoteViewController *)v6 setSceneEventsQueue:v8];

    v9 = +[SPUISpotlightSceneManager sharedManager];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_updateTraitCollection name:*MEMORY[0x277D77548] object:0];

    if ([(SPUISpotlightRemoteViewController *)v6 prewarmSceneInTheBackground])
    {
      v11 = +[SPUISpotlightSceneManager sharedManager];
      [v11 setDelegate:v6];
    }
  }

  return v6;
}

- (void)willLaunchSpotlightInBackground
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPUISpotlightRemoteViewController_willLaunchSpotlightInBackground__block_invoke;
  block[3] = &unk_279D052A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTraitCollection
{
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SPUISpotlightRemoteViewController_updateTraitCollection__block_invoke;
  v4[3] = &unk_279D054C8;
  v4[4] = self;
  [scene updateSettingsWithBlock:v4];
}

void __58__SPUISpotlightRemoteViewController_updateTraitCollection__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 isUISubclass])
  {
    v3 = *(a1 + 32);
    v4 = v8;
    v5 = [v3 view];
    v6 = [v5 tlks_screen];
    v7 = [v6 traitCollection];
    [v4 setUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SPUISpotlightRemoteViewController;
  [(SPUISpotlightRemoteViewController *)&v7 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__SPUISpotlightRemoteViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke;
  v6[3] = &unk_279D054C8;
  v6[4] = self;
  [scene updateSettingsWithBlock:v6];
}

- (void)updateSafeAreasOnSettings:(id)settings
{
  settingsCopy = settings;
  view = [(SPUISpotlightRemoteViewController *)self view];
  window = [view window];
  _scene = [window _scene];
  settings = [_scene settings];

  v10 = settingsCopy;
  if ([settings isUISubclass])
  {
    if ([v10 isUISubclass])
    {
      [settings safeAreaInsetsPortrait];
      [v10 setSafeAreaInsetsPortrait:?];
      [settings peripheryInsets];
      if (v9 > 0.0)
      {
        UIEdgeInsetsRotate();
        [v10 setSafeAreaInsetsLandscapeLeft:?];
        UIEdgeInsetsRotate();
        [v10 setSafeAreaInsetsLandscapeRight:?];
      }
    }
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  objc_storeStrong(&self->_legibilitySettings, settings);
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SPUISpotlightRemoteViewController_setLegibilitySettings___block_invoke;
  v8[3] = &unk_279D054C8;
  v9 = settingsCopy;
  v7 = settingsCopy;
  [scene updateSettingsWithBlock:v8];
}

void __59__SPUISpotlightRemoteViewController_setLegibilitySettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setLegibilitySettings:*(a1 + 32)];
  }
}

- (void)createSceneWithPriority:(int64_t)priority
{
  v5 = +[SPUISpotlightSceneManager sharedManager];
  [v5 launchSpotlightIfNeededWithForegroundPriority:1];

  transaction = [(SPUISpotlightRemoteViewController *)self transaction];

  v9 = qword_280F8EFF0;
  if (transaction)
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v7, v8);
      v9 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SPUISpotlightRemoteViewController *)v9 createSceneWithPriority:?];
    }
  }

  else
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v7, v8);
      v9 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B824000, v9, OS_LOG_TYPE_DEFAULT, "Spotlight is running the frontboard transaction", &buf, 2u);
    }

    v11 = qword_280F8EFF8;
    if (!qword_280F8EFF8)
    {
      SPUIInitLogging(0, v10);
      v11 = qword_280F8EFF8;
    }

    v12 = os_signpost_id_generate(v11);
    v14 = v12;
    v15 = qword_280F8EFF8;
    if (!qword_280F8EFF8)
    {
      SPUIInitLogging(v12, v13);
      v15 = qword_280F8EFF8;
    }

    v16 = v15;
    v17 = v16;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_26B824000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "sceneTransactionInterval", &unk_26B830347, &buf, 2u);
    }

    v18 = objc_alloc(MEMORY[0x277D0AA80]);
    v19 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.Spotlight"];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke;
    v53[3] = &unk_279D054F0;
    v53[4] = self;
    v53[5] = priority;
    v20 = [v18 initWithProcessIdentity:v19 executionContextProvider:v53];
    [(SPUISpotlightRemoteViewController *)self setTransaction:v20];

    objc_initWeak(&buf, self);
    transaction2 = [(SPUISpotlightRemoteViewController *)self transaction];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_2;
    v50[3] = &unk_279D05540;
    objc_copyWeak(v51, &buf);
    v51[1] = priority;
    v51[2] = v14;
    [transaction2 setCompletionBlock:v50];

    sceneSpecification = [(SPUISpotlightRemoteViewController *)self sceneSpecification];
    v23 = objc_alloc_init([sceneSpecification settingsClass]);
    v24 = [v23 mutableCopy];

    displayConfiguration = [(SPUISpotlightRemoteViewController *)self displayConfiguration];
    [v24 setDisplayConfiguration:displayConfiguration];

    view = [(SPUISpotlightRemoteViewController *)self view];
    tlks_screen = [view tlks_screen];
    traitCollection = [tlks_screen traitCollection];
    [v24 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    [v24 setForeground:priority == 4];
    [(SPUISpotlightRemoteViewController *)self sceneSettingsFrameFromRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [v24 setFrame:?];
    [v24 setDeviceOrientationEventsEnabled:0];
    [v24 setInterfaceOrientation:{-[SPUISpotlightRemoteViewController currentOrientation](self, "currentOrientation")}];
    ignoreOcclusionReasons = [v24 ignoreOcclusionReasons];
    [ignoreOcclusionReasons addObject:@"SPUIRemoteSearchIgnoreOcclusionsReason"];

    [v24 setForcedStatusBarForegroundTransparent:1];
    [v24 setInterruptionPolicy:3];
    sceneIdentifier = [(SPUISpotlightRemoteViewController *)self sceneIdentifier];
    [v24 setPersistenceIdentifier:sceneIdentifier];

    legibilitySettings = [(SPUISpotlightRemoteViewController *)self legibilitySettings];
    [v24 setLegibilitySettings:legibilitySettings];

    [v24 addPropagatedProperty:sel_cornerRadiusConfiguration];
    if (+[SPUIDefaults enableFloatingWindow])
    {
      [v24 setEnhancedWindowingEnabled:1];
    }

    v45 = MEMORY[0x277D85DD0];
    v46 = 3221225472;
    v47 = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_21;
    v48 = &unk_279D05568;
    v32 = v24;
    v49 = v32;
    v33 = MEMORY[0x26D682990](&v45);
    v33[2](v33, 1);
    v33[2](v33, 2);
    v33[2](v33, 4);
    v33[2](v33, 3);
    v34 = objc_alloc_init([sceneSpecification clientSettingsClass]);
    v35 = [v34 mutableCopy];

    [v35 setStatusBarAlpha:1.0];
    [v35 setStatusBarHidden:0];
    [v35 setBackgroundStyle:4];
    v36 = [MEMORY[0x277D0AD50] parametersForSpecification:sceneSpecification];
    [v36 setSettings:v32];
    [v36 setClientSettings:v35];
    transaction3 = [(SPUISpotlightRemoteViewController *)self transaction];
    v38 = MEMORY[0x277D0ADC0];
    sceneIdentifier2 = [(SPUISpotlightRemoteViewController *)self sceneIdentifier];
    v40 = [v38 identityForIdentifier:sceneIdentifier2 workspaceIdentifier:@"com.apple.Spotlight"];
    v41 = objc_alloc_init([sceneSpecification transitionContextClass]);
    [transaction3 updateSceneWithIdentity:v40 parameters:v36 transitionContext:v41];

    transaction4 = [(SPUISpotlightRemoteViewController *)self transaction];
    [transaction4 addObserver:self];

    transaction5 = [(SPUISpotlightRemoteViewController *)self transaction];
    [transaction5 begin];

    transaction6 = [(SPUISpotlightRemoteViewController *)self transaction];
    [transaction6 setWaitsForSceneCommits:1];

    objc_destroyWeak(v51);
    objc_destroyWeak(&buf);
  }
}

id __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setWatchdogProvider:*(a1 + 32)];
  [v2 setLaunchIntent:*(a1 + 40)];

  return v2;
}

void __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained setTransaction:0];
  v7 = qword_280F8EFF0;
  if (a2)
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v5, v6);
      v7 = qword_280F8EFF0;
    }

    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *v16 = 0;
      _os_log_impl(&dword_26B824000, v7, OS_LOG_TYPE_DEFAULT, "Spotlight scene transaction passed", v16, 2u);
    }
  }

  else
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v5, v6);
      v7 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_2_cold_1(v7);
    }

    v10 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_16;
    block[3] = &unk_279D05518;
    v11 = *(a1 + 40);
    block[4] = WeakRetained;
    block[5] = v11;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }

  v12 = qword_280F8EFF8;
  if (!qword_280F8EFF8)
  {
    SPUIInitLogging(v8, v9);
    v12 = qword_280F8EFF8;
  }

  v13 = v12;
  v14 = v13;
  v15 = *(a1 + 48);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B824000, v14, OS_SIGNPOST_INTERVAL_END, v15, "sceneTransactionInterval", " enableTelemetry=YES ", v16, 2u);
  }
}

uint64_t __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_21(uint64_t a1, uint64_t a2)
{
  [*MEMORY[0x277D76620] statusBarHeightForOrientation:a2 ignoreHidden:1];
  v4 = *(a1 + 32);

  return [v4 setDefaultStatusBarHeight:a2 forOrientation:?];
}

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (configurationCopy && self->_displayConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_displayConfiguration, configuration);
    self->_delayPresentationTillSceneContentIsReady = 1;
    if ([(FBSDisplayConfiguration *)v6 isExternal])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [(SPUISpotlightRemoteViewController *)self setCurrentOrientation:v7];
    scene = [(SPUISpotlightRemoteViewController *)self scene];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__SPUISpotlightRemoteViewController_setDisplayConfiguration___block_invoke;
    v9[3] = &unk_279D05590;
    v10 = v6;
    selfCopy = self;
    [scene updateSettingsWithBlock:v9];
  }
}

void __61__SPUISpotlightRemoteViewController_setDisplayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDisplayConfiguration:v3];
  v4 = *(a1 + 40);
  [*(a1 + 32) bounds];
  [v4 sceneSettingsFrameFromRect:?];
  [v5 setFrame:?];
}

- (void)createSceneIfNeededWithPriority:(int64_t)priority
{
  v16 = *MEMORY[0x277D85DE8];
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  if (scene && (v6 = scene, -[SPUISpotlightRemoteViewController scene](self, "scene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isValid], v7, v6, (v8 & 1) != 0))
  {
    v11 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v9, v10);
      v11 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      scene2 = [(SPUISpotlightRemoteViewController *)self scene];
      v14 = 138412290;
      v15 = scene2;
      _os_log_impl(&dword_26B824000, v12, OS_LOG_TYPE_DEFAULT, "Current scene %@", &v14, 0xCu);
    }
  }

  else
  {

    [(SPUISpotlightRemoteViewController *)self createSceneWithPriority:priority];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SPUISpotlightRemoteViewController *)self createSceneIfNeededWithPriority:4];
  v5.receiver = self;
  v5.super_class = SPUISpotlightRemoteViewController;
  [(SPUISpotlightRemoteViewController *)&v5 viewWillAppear:appearCopy];
  [(SPUISpotlightRemoteViewController *)self setForeground:1];
}

- (void)setForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  v22 = *MEMORY[0x277D85DE8];
  hostView = [(SPUISpotlightRemoteViewController *)self hostView];
  presenter = [hostView presenter];
  presentationContext = [presenter presentationContext];
  backgroundColorWhileHosting = [presentationContext backgroundColorWhileHosting];

  if (backgroundColorWhileHosting)
  {
    hostView2 = [(SPUISpotlightRemoteViewController *)self hostView];
    presenter2 = [hostView2 presenter];
    [presenter2 modifyPresentationContext:&__block_literal_global_2];
  }

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_2;
  v16[3] = &unk_279D05600;
  objc_copyWeak(&v17, &location);
  v18 = foregroundCopy;
  [(SPUISpotlightRemoteViewController *)self addOrExecuteEventAsNeeded:v16];
  v11 = @"background";
  if (foregroundCopy)
  {
    v11 = @"foreground";
  }

  v12 = v11;
  v14 = v12;
  v15 = qword_280F8EFF0;
  if (!qword_280F8EFF0)
  {
    SPUIInitLogging(v12, v13);
    v15 = qword_280F8EFF0;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&dword_26B824000, v15, OS_LOG_TYPE_DEFAULT, "Spotlight is getting to the %@", buf, 0xCu);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained scene];
  v4 = [v3 renderingEnvironment];

  v5 = *(a1 + 40);
  v6 = +[SPUISpotlightSceneManager sharedManager];
  v7 = [WeakRetained scene];
  if (v5 == 1)
  {
    [v6 sceneWillForeground:v7];
  }

  else
  {
    [v6 sceneWillBackground:v7];
  }

  [v4 setActiveAppearance:*(a1 + 40)];
  v8 = [WeakRetained scene];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_3;
  v9[3] = &unk_279D055D8;
  v10 = *(a1 + 40);
  v9[4] = WeakRetained;
  [v8 updateSettingsWithTransitionBlock:v9];
}

uint64_t __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setForeground:*(a1 + 40)];
  if ([v3 isUISubclass] && *(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) view];
    v5 = [v4 window];
    [*(a1 + 32) setCurrentOrientation:{objc_msgSend(v5, "_windowInterfaceOrientation")}];

    v6 = v3;
    [v6 setInterfaceOrientation:{objc_msgSend(*(a1 + 32), "currentOrientation")}];
    [*(a1 + 32) updateSafeAreasOnSettings:v6];
    if (!+[SPUIDefaults enableFloatingWindow])
    {
      [v6 setForcedStatusBarStyle:&unk_287C48B58];
    }
  }

  return 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SPUISpotlightRemoteViewController;
  [(SPUISpotlightRemoteViewController *)&v4 viewDidDisappear:disappear];
  [(SPUISpotlightRemoteViewController *)self setCrashedWhileForeground:0];
  [(SPUISpotlightRemoteViewController *)self setForeground:0];
  [(SPUISpotlightRemoteViewController *)self clearEventQueue];
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  [scene removeObserver:self];

  transaction = [(SPUISpotlightRemoteViewController *)self transaction];
  [transaction removeObserver:self];

  [(SPUISpotlightRemoteViewController *)self setScene:0];
  presenter = [(SPUISpotlightRemoteViewController *)self presenter];
  [presenter invalidate];

  [(SPUISpotlightRemoteViewController *)self setPresenter:0];
  hostView = [(SPUISpotlightRemoteViewController *)self hostView];
  [hostView removeFromSuperview];

  [(SPUISpotlightRemoteViewController *)self setHostView:0];
  v10 = +[SPUISpotlightSceneManager sharedManager];
  [v10 removeScene:invalidateCopy];

  settings = [invalidateCopy settings];
  if ([settings isForeground])
  {
    v12 = [(SPUISpotlightRemoteViewController *)self _appearState]!= 0;
  }

  else
  {
    v12 = 0;
  }

  [(SPUISpotlightRemoteViewController *)self setCrashedWhileForeground:v12];

  crashedWhileForeground = [(SPUISpotlightRemoteViewController *)self crashedWhileForeground];
  if (crashedWhileForeground)
  {
    v15 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(crashedWhileForeground, v14);
      v15 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SPUISpotlightRemoteViewController sceneDidInvalidate:invalidateCopy withContext:v15];
    }

    [(SPUISpotlightRemoteViewController *)self createSceneWithPriority:4];
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  if (self->_delayPresentationTillSceneContentIsReady)
  {
    contentState = [change contentState];
    if (contentState == 2)
    {
      self->_delayPresentationTillSceneContentIsReady = 0;
    }

    hostView = [(SPUISpotlightRemoteViewController *)self hostView];
    v7 = hostView;
    v6 = 0.0;
    if (contentState == 2)
    {
      v6 = 1.0;
    }

    [hostView setAlpha:v6];
  }
}

- (void)transaction:(id)transaction didCreateScene:(id)scene
{
  *(&v50[1] + 4) = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  [(SPUISpotlightRemoteViewController *)self setScene:sceneCopy];
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  [scene addObserver:self];

  v7 = +[SPUISpotlightSceneManager sharedManager];
  [v7 addScene:sceneCopy];

  scene2 = [(SPUISpotlightRemoteViewController *)self scene];
  uiPresentationManager = [scene2 uiPresentationManager];

  sceneIdentifier = [(SPUISpotlightRemoteViewController *)self sceneIdentifier];
  v11 = [uiPresentationManager createPresenterWithIdentifier:sceneIdentifier];

  presenter = [(SPUISpotlightRemoteViewController *)self presenter];
  [presenter invalidate];

  [(SPUISpotlightRemoteViewController *)self setPresenter:v11];
  presentationView = [v11 presentationView];
  [(SPUISpotlightRemoteViewController *)self setHostView:presentationView];

  [v11 modifyPresentationContext:&__block_literal_global_41];
  [v11 activate];
  view = [(SPUISpotlightRemoteViewController *)self view];
  hostView = [(SPUISpotlightRemoteViewController *)self hostView];
  hostView2 = [(SPUISpotlightRemoteViewController *)self hostView];
  [view addSubview:hostView2];

  hostView3 = [(SPUISpotlightRemoteViewController *)self hostView];
  [hostView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  leadingAnchor = [hostView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v20 setActive:1];

  trailingAnchor = [hostView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 setActive:1];

  topAnchor = [hostView topAnchor];
  topAnchor2 = [view topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v26 setActive:1];

  bottomAnchor = [hostView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v29 setActive:1];

  v32 = qword_280F8EFF0;
  if (!qword_280F8EFF0)
  {
    SPUIInitLogging(v30, v31);
    v32 = qword_280F8EFF0;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50[0] = sceneCopy;
    _os_log_impl(&dword_26B824000, v32, OS_LOG_TYPE_DEFAULT, "Spotlight created scene %@", buf, 0xCu);
  }

  [(SPUISpotlightRemoteViewController *)self sceneContentStateDidChange:sceneCopy];
  if ([(SPUISpotlightRemoteViewController *)self crashedWhileForeground])
  {
    [(SPUISpotlightRemoteViewController *)self didInvalidateSceneWhenForeground];
    [(SPUISpotlightRemoteViewController *)self setCrashedWhileForeground:0];
  }

  else
  {
    v42 = v11;
    v43 = uiPresentationManager;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    sceneEventsQueue = [(SPUISpotlightRemoteViewController *)self sceneEventsQueue];
    v34 = [sceneEventsQueue countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v45;
      do
      {
        v37 = 0;
        do
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(sceneEventsQueue);
          }

          v38 = (*(*(*(&v44 + 1) + 8 * v37) + 16))();
          v40 = qword_280F8EFF0;
          if (!qword_280F8EFF0)
          {
            SPUIInitLogging(v38, v39);
            v40 = qword_280F8EFF0;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            [(SPUISpotlightRemoteViewController *)buf transaction:v40 didCreateScene:self, v50];
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = [sceneEventsQueue countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v35);
    }

    [(SPUISpotlightRemoteViewController *)self clearEventQueue];
    uiPresentationManager = v43;
    v11 = v42;
  }

  view2 = [(SPUISpotlightRemoteViewController *)self view];
  [view2 layoutIfNeeded];
}

void __64__SPUISpotlightRemoteViewController_transaction_didCreateScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)didInvalidateSceneWhenForeground
{
  v2 = qword_280F8EFF0;
  if (!qword_280F8EFF0)
  {
    SPUIInitLogging(self, a2);
    v2 = qword_280F8EFF0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(SPUISpotlightRemoteViewController *)v2 didInvalidateSceneWhenForeground];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = SPUISpotlightRemoteViewController;
  coordinatorCopy = coordinator;
  [(SPUISpotlightRemoteViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = [(SPUISpotlightRemoteViewController *)self view:v11.receiver];
  window = [v8 window];
  _toWindowOrientation = [window _toWindowOrientation];

  if (_toWindowOrientation)
  {
    [(SPUISpotlightRemoteViewController *)self setCurrentOrientation:_toWindowOrientation];
  }

  else
  {
    _toWindowOrientation = [(SPUISpotlightRemoteViewController *)self currentOrientation];
  }

  [(SPUISpotlightRemoteViewController *)self updateSceneToOrientation:_toWindowOrientation withTransitionCoordinator:coordinatorCopy];
}

- (void)updateSceneToOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  settings = [scene settings];
  interfaceOrientation = [settings interfaceOrientation];

  if (interfaceOrientation != orientation)
  {
    scene2 = [(SPUISpotlightRemoteViewController *)self scene];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__SPUISpotlightRemoteViewController_updateSceneToOrientation_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_279D05628;
    v12 = coordinatorCopy;
    orientationCopy = orientation;
    [scene2 updateSettingsWithTransitionBlock:v11];
  }
}

id __88__SPUISpotlightRemoteViewController_updateSceneToOrientation_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D75188] transitionContext];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MEMORY[0x277CF0B70];
    [v5 transitionDuration];
    v7 = [v6 settingsWithDuration:?];
    [v4 setAnimationSettings:v7];

    v8 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
    [v4 setAnimationFence:v8];
  }

  [v3 setInterfaceOrientation:*(a1 + 40)];

  return v4;
}

- (CGRect)sceneSettingsFrameFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectEqualToRect(rect, *MEMORY[0x277CBF3A0]))
  {
    [(SPUISpotlightRemoteViewController *)self initialFittingSize];
    width = v8;
    [(SPUISpotlightRemoteViewController *)self initialFittingSize];
    height = v9;
  }

  currentOrientation = [(SPUISpotlightRemoteViewController *)self currentOrientation];
  if ((currentOrientation - 3) >= 2)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  if ((currentOrientation - 3) >= 2)
  {
    v12 = width;
  }

  else
  {
    v12 = height;
  }

  v13 = x;
  v14 = y;
  result.size.height = v11;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)addOrExecuteEventAsNeeded:(id)needed
{
  neededCopy = needed;
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  if (scene && (v6 = scene, -[SPUISpotlightRemoteViewController scene](self, "scene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isValid], v7, v6, v8))
  {
    v9 = neededCopy[2](neededCopy);
    v11 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v9, v10);
      v11 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(SPUISpotlightRemoteViewController *)v11 addOrExecuteEventAsNeeded:?];
    }
  }

  else
  {
    sceneEventsQueue = [(SPUISpotlightRemoteViewController *)self sceneEventsQueue];
    v13 = MEMORY[0x26D682990](neededCopy);
    [sceneEventsQueue addObject:v13];
  }
}

- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([contextCopy event] == 1 || objc_msgSend(contextCopy, "event") == 2)
  {
    v5 = 0;
  }

  else
  {
    sceneSettings = [contextCopy sceneSettings];
    [sceneSettings isForeground];

    v7 = MEMORY[0x277D0AD88];
    FBSProcessResourceAllowanceMakeWithRealTimeInterval();
    v8 = [v7 provisionWithAllowance:v12];
    v9 = MEMORY[0x277D0AD98];
    v13[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v5 = [v9 policyWithProvisions:v10];
  }

  return v5;
}

- (id)watchdogTerminationRequestForProcess:(id)process error:(id)error
{
  v4 = [MEMORY[0x277D0AD90] requestForProcess:process withLabel:@"Spotlight is unresponsive"];
  [v4 setExplanation:@"Spotlight is unresponsive"];
  [v4 setReportType:1];

  return v4;
}

- (void)createSceneWithPriority:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 transaction];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_26B824000, v3, OS_LOG_TYPE_ERROR, "Spotlight has an existing transaction in progress %@", &v5, 0xCu);
}

- (void)sceneDidInvalidate:(uint64_t)a1 withContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B824000, a2, OS_LOG_TYPE_ERROR, "Spotlight died in the foreground for scene %@", &v2, 0xCu);
}

- (void)transaction:(void *)a3 didCreateScene:(void *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 scene];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_26B824000, v7, OS_LOG_TYPE_DEBUG, "Spotlight scene got updated %@", a1, 0xCu);
}

- (void)addOrExecuteEventAsNeeded:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 scene];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_26B824000, v3, OS_LOG_TYPE_DEBUG, "Spotlight scene got updated %@", &v5, 0xCu);
}

@end