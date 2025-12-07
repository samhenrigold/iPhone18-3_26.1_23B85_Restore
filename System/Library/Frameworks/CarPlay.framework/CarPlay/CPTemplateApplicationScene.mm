@interface CPTemplateApplicationScene
- (BOOL)_shouldCallAppDelegate;
- (BOOL)_shouldCreateCarWindow;
- (CGRect)_referenceBounds;
- (CPTemplateApplicationScene)initWithSession:(id)session connectionOptions:(id)options;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation;
- (UIScreen)_screen;
- (UITraitCollection)_traitCollection;
- (UITraitCollection)carTraitCollection;
- (id)_allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows;
- (id)_fbsSceneLayerForWindow:(id)window;
- (id)_frameRateLimit;
- (id)_templateSettings;
- (int64_t)_interfaceOrientation;
- (int64_t)_mapStyle;
- (void)_attachWindow:(id)window;
- (void)_deliverInterfaceControllerToDelegate;
- (void)_detachWindow:(id)window;
- (void)_invalidate;
- (void)_readySceneForConnection;
- (void)_refreshTraitCollection;
- (void)_updateContentStyle;
- (void)_updateFrameRateLimit;
- (void)_updateSceneTraitsAndPushTraitsToScreen:(BOOL)screen;
- (void)_windowUpdatedVisibility:(id)visibility;
@end

@implementation CPTemplateApplicationScene

- (UIScreen)_screen
{
  screen = self->_screen;
  if (!screen)
  {
    v4 = MEMORY[0x277D759A0];
    _FBSScene = [(CPTemplateApplicationScene *)self _FBSScene];
    v6 = [v4 _screenForScene:_FBSScene];
    v7 = self->_screen;
    self->_screen = v6;

    screen = self->_screen;
  }

  return screen;
}

- (UITraitCollection)_traitCollection
{
  traitCollection = self->_traitCollection;
  if (!traitCollection)
  {
    [(CPTemplateApplicationScene *)self _refreshTraitCollection];
    traitCollection = self->_traitCollection;
  }

  return traitCollection;
}

- (CGRect)_referenceBounds
{
  _FBSScene = [(CPTemplateApplicationScene *)self _FBSScene];
  settings = [_FBSScene settings];
  [settings bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CPTemplateApplicationScene)initWithSession:(id)session connectionOptions:(id)options
{
  v61[2] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  optionsCopy = options;
  v59.receiver = self;
  v59.super_class = CPTemplateApplicationScene;
  v8 = [(CPTemplateApplicationScene *)&v59 initWithSession:sessionCopy connectionOptions:optionsCopy];
  if (v8)
  {
    _specification = [optionsCopy _specification];
    sceneSubstrateClass = [_specification sceneSubstrateClass];

    v11 = objc_alloc(MEMORY[0x277D75E90]);
    v12 = [sceneSubstrateClass alloc];
    _FBSScene = [(CPTemplateApplicationScene *)v8 _FBSScene];
    v14 = [v12 initWithScene:_FBSScene];
    v15 = [v11 initWithSubstrate:v14];
    contextBinder = v8->_contextBinder;
    v8->_contextBinder = v15;

    [(_UIContextBinder *)v8->_contextBinder setContextCreationPolicyHolder:v8];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v19 = *MEMORY[0x277D76668];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke;
    v57[3] = &unk_278A10508;
    v20 = v8;
    v58 = v20;
    v21 = [defaultCenter addObserverForName:v19 object:0 queue:mainQueue usingBlock:v57];
    didFinishLaunchingObserver = v20->_didFinishLaunchingObserver;
    v20->_didFinishLaunchingObserver = v21;

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
    v25 = *MEMORY[0x277D76E70];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_4;
    v55[3] = &unk_278A10508;
    v26 = v20;
    v56 = v26;
    v27 = [defaultCenter2 addObserverForName:v25 object:v26 queue:mainQueue2 usingBlock:v55];
    sceneWillConnectObserver = v26->_sceneWillConnectObserver;
    v26->_sceneWillConnectObserver = v27;

    v29 = objc_opt_new();
    sceneSettingsInterfaceStyleDiffInspector = v26->_sceneSettingsInterfaceStyleDiffInspector;
    v26->_sceneSettingsInterfaceStyleDiffInspector = v29;

    objc_initWeak(&location, v26);
    v31 = v26->_sceneSettingsInterfaceStyleDiffInspector;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_6;
    v52[3] = &unk_278A10530;
    objc_copyWeak(&v53, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v31 observeUserInterfaceStyleWithBlock:v52];
    v32 = [MEMORY[0x277CBEB18] arrayWithObject:v26->_sceneSettingsInterfaceStyleDiffInspector];
    v33 = objc_alloc_init(CPUIContentStyleDiffInspector);
    mapStyleInspector = v26->_mapStyleInspector;
    v26->_mapStyleInspector = v33;

    v35 = v26->_mapStyleInspector;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_2;
    v50[3] = &unk_278A10530;
    objc_copyWeak(&v51, &location);
    [(CPUIContentStyleDiffInspector *)v35 observeMapStyleWithBlock:v50];
    [(CPTemplateApplicationScene *)v26 _updateContentStyle];
    v36 = objc_alloc_init(CPUIFrameRateLimitDiffInspector);
    frameRateLimitInspector = v26->_frameRateLimitInspector;
    v26->_frameRateLimitInspector = v36;

    v38 = v26->_frameRateLimitInspector;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_3;
    v48[3] = &unk_278A10530;
    objc_copyWeak(&v49, &location);
    [(CPUIFrameRateLimitDiffInspector *)v38 observeFrameRateLimitWithBlock:v48];
    [(CPTemplateApplicationScene *)v26 _updateFrameRateLimit];
    v61[0] = v26->_mapStyleInspector;
    v61[1] = v26->_frameRateLimitInspector;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    [v32 addObjectsFromArray:v39];

    v40 = [[CPTemplateUISceneSettingsDiffAction alloc] initWithInspectors:v32];
    [(CPTemplateApplicationScene *)v26 setSceneSettingsDiffAction:v40];

    sceneSettingsDiffAction = [(CPTemplateApplicationScene *)v26 sceneSettingsDiffAction];
    v60 = sceneSettingsDiffAction;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    [(CPTemplateApplicationScene *)v26 _registerSettingsDiffActionArray:v42 forKey:@"settingsObserver"];

    v43 = v26;
    v44 = _templateScenes;
    if (!_templateScenes)
    {
      v45 = objc_opt_new();
      v46 = _templateScenes;
      _templateScenes = v45;

      v44 = _templateScenes;
    }

    [v44 insertObject:v43 atIndex:0];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&v51);

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  return v8;
}

uint64_t __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Did finish launching observer fired", v4, 2u);
  }

  return [*(a1 + 32) _deliverInterfaceControllerToDelegate];
}

uint64_t __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 264) = 1;
  v2 = CarPlayFrameworkGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "Scene will connect observer fired", v4, 2u);
  }

  return [*(a1 + 32) _deliverInterfaceControllerToDelegate];
}

void __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshTraitCollection];
}

void __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContentStyle];
}

void __64__CPTemplateApplicationScene_initWithSession_connectionOptions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFrameRateLimit];
}

- (void)_updateContentStyle
{
  v14 = *MEMORY[0x277D85DE8];
  _mapStyle = [(CPTemplateApplicationScene *)self _mapStyle];
  self->_contentStyle = _mapStyle;
  v4 = CarPlayFrameworkGeneralLogging(_mapStyle);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_contentStyle == 2)
    {
      v5 = @"dark";
    }

    else
    {
      v5 = @"light";
    }

    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "Template scene content style updated to %{public}@", &v12, 0xCu);
  }

  delegate = [(CPTemplateApplicationScene *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = CarPlayFrameworkGeneralLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_236ED4000, v9, OS_LOG_TYPE_DEFAULT, "Informing delegate of style update", &v12, 2u);
    }

    delegate2 = [(CPTemplateApplicationScene *)self delegate];
    [delegate2 contentStyleDidChange:self->_contentStyle];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CPTemplateApplicationSceneContentStyleUpdated" object:self];
}

- (int64_t)_mapStyle
{
  _templateSettings = [(CPTemplateApplicationScene *)self _templateSettings];
  mapStyle = [_templateSettings mapStyle];

  return mapStyle;
}

- (void)_updateFrameRateLimit
{
  v19 = *MEMORY[0x277D85DE8];
  self->_frameRateLimit = [(CPTemplateApplicationScene *)self _frameRateLimit];
  _templateSettings = [(CPTemplateApplicationScene *)self _templateSettings];
  displayConfiguration = [_templateSettings displayConfiguration];
  cADisplay = [displayConfiguration CADisplay];

  frameRateLimit = self->_frameRateLimit;
  if (frameRateLimit)
  {
    doubleValue = [(NSNumber *)frameRateLimit doubleValue];
    if (v8 <= 0.0)
    {
      v9 = 30.0;
    }

    else
    {
      v9 = v8;
    }

    v10 = CarPlayFrameworkGeneralLogging(doubleValue);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v18 = v9;
      _os_log_impl(&dword_236ED4000, v10, OS_LOG_TYPE_DEFAULT, "Template app scene frameRateLimit updated to %{public}f fps", buf, 0xCu);
    }

    v11 = 1.0 / v9;
  }

  else
  {
    v12 = CarPlayFrameworkGeneralLogging(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v12, OS_LOG_TYPE_DEFAULT, "Template app scene updated to unrestricted frame rate", buf, 2u);
    }

    v11 = 0.0333333333;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:{v11, *MEMORY[0x277CDA1A8]}];
  v16 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [cADisplay overrideDisplayTimings:v14];
}

- (id)_frameRateLimit
{
  _templateSettings = [(CPTemplateApplicationScene *)self _templateSettings];
  frameRateLimit = [_templateSettings frameRateLimit];

  return frameRateLimit;
}

- (id)_templateSettings
{
  _FBSScene = [(CPTemplateApplicationScene *)self _FBSScene];
  settings = [_FBSScene settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _FBSScene2 = [(CPTemplateApplicationScene *)self _FBSScene];
    settings2 = [_FBSScene2 settings];
  }

  else
  {
    settings2 = 0;
  }

  return settings2;
}

- (void)_updateSceneTraitsAndPushTraitsToScreen:(BOOL)screen
{
  screenCopy = screen;
  [(CPTemplateApplicationScene *)self _refreshTraitCollection];
  v5.receiver = self;
  v5.super_class = CPTemplateApplicationScene;
  [(CPTemplateApplicationScene *)&v5 _updateSceneTraitsAndPushTraitsToScreen:screenCopy];
}

- (int64_t)_interfaceOrientation
{
  _FBSScene = [(CPTemplateApplicationScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isUISubclass = [settings isUISubclass];

  if (isUISubclass)
  {
    settings2 = [_FBSScene settings];
    interfaceOrientation = [settings2 interfaceOrientation];
  }

  else
  {
    interfaceOrientation = 1;
  }

  return interfaceOrientation;
}

- (void)_refreshTraitCollection
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:3];
  v4 = MEMORY[0x277D75C80];
  _screen = [(CPTemplateApplicationScene *)self _screen];
  traitCollection = [_screen traitCollection];
  [traitCollection displayScale];
  v7 = [v4 traitCollectionWithDisplayScale:?];

  objc_opt_class();
  _FBSScene = [(CPTemplateApplicationScene *)self _FBSScene];
  settings = [_FBSScene settings];
  if (objc_opt_isKindOfClass())
  {
    v10 = settings;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D75C80];
  if (v10)
  {
    userInterfaceStyle = [v10 userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 0;
  }

  v13 = [v11 traitCollectionWithUserInterfaceStyle:userInterfaceStyle];
  v14 = MEMORY[0x277D75C80];
  v18[0] = v3;
  v18[1] = v13;
  v18[2] = v7;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [v14 traitCollectionWithTraitsFromCollections:v15];
  traitCollection = self->_traitCollection;
  self->_traitCollection = v16;
}

- (void)_attachWindow:(id)window
{
  windowCopy = window;
  _windowHostingScene = [windowCopy _windowHostingScene];
  if (([_windowHostingScene isEqual:self] & 1) == 0)
  {
    [_windowHostingScene _detachWindow:windowCopy];
    [(CPTemplateApplicationScene *)self __captureWindow:windowCopy];
    [(_UIContextBinder *)self->_contextBinder enrollBindable:windowCopy];
    [windowCopy _didMoveFromScene:_windowHostingScene toScene:self];
  }

  if (([windowCopy isHidden] & 1) == 0)
  {
    [(_UIContextBinder *)self->_contextBinder attachBindable:windowCopy];
  }
}

- (void)_detachWindow:(id)window
{
  contextBinder = self->_contextBinder;
  windowCopy = window;
  [(_UIContextBinder *)contextBinder expellBindable:windowCopy];
  [(CPTemplateApplicationScene *)self __releaseWindow:windowCopy];
}

- (void)_windowUpdatedVisibility:(id)visibility
{
  visibilityCopy = visibility;
  isHidden = [visibilityCopy isHidden];
  contextBinder = self->_contextBinder;
  if (isHidden)
  {
    [(_UIContextBinder *)contextBinder detachBindable:visibilityCopy];
  }

  else
  {
    [(_UIContextBinder *)contextBinder attachBindable:visibilityCopy];
  }
}

- (id)_allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows
{
  windowsCopy = windows;
  contextBinder = self->_contextBinder;
  if (visibleWindows)
  {
    [(_UIContextBinder *)contextBinder attachedBindables];
  }

  else
  {
    [(_UIContextBinder *)contextBinder enrolledBindables];
  }
  v6 = ;
  v7 = v6;
  if (windowsCopy)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_24];
    v8 = [v7 filteredArrayUsingPredicate:v9];
  }

  return v8;
}

- (id)_fbsSceneLayerForWindow:(id)window
{
  v24 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  substrate = [(_UIContextBinder *)self->_contextBinder substrate];
  scene = [substrate scene];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  clientSettings = [scene clientSettings];
  layers = [clientSettings layers];

  v9 = [layers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v18 = substrate;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(layers);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          cAContext = [v14 CAContext];
          _boundContext = [windowCopy _boundContext];

          if (cAContext == _boundContext)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [layers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
    v14 = 0;
LABEL_12:
    substrate = v18;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation
{
  _FBSScene = [(CPTemplateApplicationScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isUISubclass = [settings isUISubclass];

  if (isUISubclass)
  {
    settings2 = [_FBSScene settings];
    [settings2 safeAreaInsetsPortrait];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v14 = *(MEMORY[0x277D768C8] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_readySceneForConnection
{
  v15.receiver = self;
  v15.super_class = CPTemplateApplicationScene;
  [(CPTemplateApplicationScene *)&v15 _readySceneForConnection];
  [(CPTemplateApplicationScene *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CPTemplateApplicationScene *)self _shouldCreateCarWindow])
  {
    v11 = [[CPWindow alloc] initWithFrame:self templateScene:v4, v6, v8, v10];
    carWindow = self->_carWindow;
    self->_carWindow = v11;

    [(CPWindow *)self->_carWindow _setWindowHostingScene:self];
    [(CPWindow *)self->_carWindow setAutoresizesSubviews:1];
    [(CPWindow *)self->_carWindow setAutoresizingMask:18];
    [(CPWindow *)self->_carWindow setFrame:v4, v6, v8, v10];
    [(CPWindow *)self->_carWindow makeKeyAndVisible];
  }

  _init = [[CPInterfaceController alloc] _init];
  interfaceController = self->_interfaceController;
  self->_interfaceController = _init;

  [(CPInterfaceController *)self->_interfaceController setWindowProvider:self];
  [(CPInterfaceController *)self->_interfaceController _sceneConnect:self];
}

- (void)_invalidate
{
  [(CPInterfaceController *)self->_interfaceController _invalidate];
  delegate = [(CPTemplateApplicationScene *)self delegate];
  if ([(CPTemplateApplicationScene *)self _shouldCreateCarWindow]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate templateApplicationScene:self didDisconnectInterfaceController:self->_interfaceController fromWindow:self->_carWindow];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate templateApplicationScene:self didDisconnectInterfaceController:self->_interfaceController];
  }

  else if ([(CPTemplateApplicationScene *)self _shouldCallAppDelegate])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    delegate2 = [mEMORY[0x277D75128] delegate];

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [delegate2 application:mEMORY[0x277D75128]2 didDisconnectCarInterfaceController:self->_interfaceController fromWindow:self->_carWindow];
  }

  [(CPWindow *)self->_carWindow setHidden:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_sceneWillConnectObserver];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self->_didFinishLaunchingObserver];

  didFinishLaunchingObserver = self->_didFinishLaunchingObserver;
  self->_didFinishLaunchingObserver = 0;

  sceneWillConnectObserver = self->_sceneWillConnectObserver;
  self->_sceneWillConnectObserver = 0;

  if (_templateScenes)
  {
    [_templateScenes removeObject:self];
  }

  [(CPTemplateApplicationScene *)self _unregisterSettingsDiffActionArrayForKey:@"InterfaceStyle"];
  v11.receiver = self;
  v11.super_class = CPTemplateApplicationScene;
  [(CPTemplateApplicationScene *)&v11 _invalidate];
}

- (UITraitCollection)carTraitCollection
{
  traitCollection = self->_traitCollection;
  if (!traitCollection)
  {
    [(CPTemplateApplicationScene *)self _refreshTraitCollection];
    traitCollection = self->_traitCollection;
  }

  return traitCollection;
}

- (BOOL)_shouldCreateCarWindow
{
  if (_shouldCreateCarWindow_onceToken != -1)
  {
    [CPTemplateApplicationScene _shouldCreateCarWindow];
  }

  return _shouldCreateCarWindow___shouldCreateWindow;
}

void *__52__CPTemplateApplicationScene__shouldCreateCarWindow__block_invoke()
{
  result = CPCurrentProcessHasMapsEntitlement();
  _shouldCreateCarWindow___shouldCreateWindow = result;
  return result;
}

- (BOOL)_shouldCallAppDelegate
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];

  if ([(CPTemplateApplicationScene *)self _shouldCreateCarWindow]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_deliverInterfaceControllerToDelegate
{
  v3 = CarPlayFrameworkGeneralLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to deliver interface controller...", buf, 2u);
  }

  _hasApplicationCalledLaunchDelegate = [*MEMORY[0x277D76620] _hasApplicationCalledLaunchDelegate];
  if (_hasApplicationCalledLaunchDelegate && self->_sceneWillConnect)
  {
    v5 = CarPlayFrameworkGeneralLogging(_hasApplicationCalledLaunchDelegate);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "App ready to receive interface controller", buf, 2u);
    }

    delegate = [(CPTemplateApplicationScene *)self delegate];
    if ([(CPTemplateApplicationScene *)self _shouldCreateCarWindow]&& (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0))
    {
      v8 = CarPlayFrameworkGeneralLogging(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "App supports CPTemplateApplicationScene method with window", buf, 2u);
      }

      interfaceController = [(CPTemplateApplicationScene *)self interfaceController];
      carWindow = [(CPTemplateApplicationScene *)self carWindow];
      [delegate templateApplicationScene:self didConnectInterfaceController:interfaceController toWindow:carWindow];
    }

    else
    {
      v11 = objc_opt_respondsToSelector();
      if ((v11 & 1) == 0)
      {
        _shouldCallAppDelegate = [(CPTemplateApplicationScene *)self _shouldCallAppDelegate];
        if (_shouldCallAppDelegate)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __67__CPTemplateApplicationScene__deliverInterfaceControllerToDelegate__block_invoke;
          v16[3] = &unk_278A105A0;
          v16[4] = self;
          v14 = MEMORY[0x2383C2A40](v16);
          if (dyld_program_sdk_at_least())
          {
            v14[2](v14);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v14);
          }
        }

        else
        {
          v15 = CarPlayFrameworkGeneralLogging(_shouldCallAppDelegate);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_236ED4000, v15, OS_LOG_TYPE_DEFAULT, "App does not support any CarPlay template connection", buf, 2u);
          }

          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Application does not implement CarPlay template application lifecycle methods in its scene delegate."];
        }

        goto LABEL_25;
      }

      v12 = CarPlayFrameworkGeneralLogging(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_236ED4000, v12, OS_LOG_TYPE_DEFAULT, "App supports CPTemplateApplicationScene method without window", buf, 2u);
      }

      interfaceController = [(CPTemplateApplicationScene *)self interfaceController];
      [delegate templateApplicationScene:self didConnectInterfaceController:interfaceController];
    }

LABEL_25:
  }
}

void __67__CPTemplateApplicationScene__deliverInterfaceControllerToDelegate__block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "App supports CPApplicationDelegate method", v8, 2u);
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 delegate];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [*(a1 + 32) interfaceController];
  v7 = [*(a1 + 32) carWindow];
  [v4 application:v5 didConnectCarInterfaceController:v6 toWindow:v7];
}

@end