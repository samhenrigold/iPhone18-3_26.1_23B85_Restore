@interface SBContinuityDisplayDelayedUIWindowSceneDelegate
+ (id)_individuallyManagedRoles;
- (BOOL)_shouldManageParticipantWithRole:(id)role;
- (SBContinuityDisplayDelayedUIWindowSceneDelegate)init;
- (id)_displayLayoutPublisherForConnectingWindowScene:(id)scene;
- (id)_pipelineManager;
- (id)_sceneManagerForConnectingWindowScene:(id)scene;
- (void)_configureForConnectingWindowScene:(id)scene windowSceneContext:(id)context;
- (void)_configureNewPresentationBinderForWindowScene:(id)scene sceneManager:(id)manager;
- (void)_initializeUIIfNecessaryForReason:(id)reason;
- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)reason;
- (void)continuitySession:(id)session didUpdateHostedInterfaceOrientation:(int64_t)orientation;
- (void)continuitySessionDidUpdateState:(id)state;
- (void)didConnectToSession:(id)session;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setInterfaceOrientation:(int64_t)orientation supportedInterfaceOrientations:(unint64_t)orientations;
@end

@implementation SBContinuityDisplayDelayedUIWindowSceneDelegate

- (SBContinuityDisplayDelayedUIWindowSceneDelegate)init
{
  v6.receiver = self;
  v6.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
  v2 = [(SBAbstractWindowSceneDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBTraitsWindowParticipantDelegate);
    traitsWindowParticipantsDelegate = v2->_traitsWindowParticipantsDelegate;
    v2->_traitsWindowParticipantsDelegate = v3;
  }

  return v2;
}

+ (id)_individuallyManagedRoles
{
  if (_individuallyManagedRoles_onceToken_0 != -1)
  {
    +[SBContinuityDisplayDelayedUIWindowSceneDelegate _individuallyManagedRoles];
  }

  v3 = _individuallyManagedRoles__individuallyManagedRoles_0;

  return v3;
}

void __76__SBContinuityDisplayDelayedUIWindowSceneDelegate__individuallyManagedRoles__block_invoke()
{
  v2[23] = *MEMORY[0x277D85DE8];
  v2[0] = @"SBTraitsParticipantRoleAudioHUD";
  v2[1] = @"SBTraitsParticipantRoleAXAssistiveTouchUI";
  v2[2] = @"SBTraitsParticipantRoleAXFullKeyboardUI";
  v2[3] = @"SBTraitsParticipantRoleAXVoiceControlUI";
  v2[4] = @"SBTraitsParticipantRoleAXUIServer";
  v2[5] = @"SBTraitsParticipantRoleBanner";
  v2[6] = @"SBTraitsParticipantRoleCoverSheetCamera";
  v2[7] = @"SBTraitsParticipantRoleCoverSheetPosterSwitcher";
  v2[8] = @"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay";
  v2[9] = @"SBTraitsParticipantRoleDruid";
  v2[10] = @"SBTraitsParticipantRoleEnsembleUI";
  v2[11] = @"SBTraitsParticipantRoleEyedropperUI";
  v2[12] = @"SBTraitsParticipantRoleInputUI";
  v2[13] = @"SBTraitsParticipantRoleInternalPerfPowerHUD";
  v2[14] = @"SBTraitsParticipantRoleLiveTranscriptionUI";
  v2[15] = @"SBTraitsParticipantRoleMedusaDrag";
  v2[16] = @"SBTraitsParticipantRoleMomentsUI";
  v2[17] = @"SBTraitsParticipantRolePerfPowerHUD";
  v2[18] = @"SBTraitsParticipantRoleOverlayUI";
  v2[19] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v2[20] = @"SBTraitsParticipantRoleSecureApp";
  v2[21] = @"SBTraitsParticipantRoleSwitcherRaw";
  v2[22] = @"SBTraitsParticipantRoleSystemAperture";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:23];
  v1 = _individuallyManagedRoles__individuallyManagedRoles_0;
  _individuallyManagedRoles__individuallyManagedRoles_0 = v0;
}

- (id)_pipelineManager
{
  traitsDisplayPipelineManager = self->_traitsDisplayPipelineManager;
  if (!traitsDisplayPipelineManager)
  {
    v4 = [SBTraitsContinuityDisplayPipelineManager alloc];
    v5 = +[SBContinuitySessionManager sharedInstance];
    userInterfaceStyleProvider = [v5 userInterfaceStyleProvider];
    v7 = [(SBTraitsPipelineManager *)v4 initWithUserInterfaceStyleProvider:userInterfaceStyleProvider];
    v8 = self->_traitsDisplayPipelineManager;
    self->_traitsDisplayPipelineManager = v7;

    traitsDisplayPipelineManager = self->_traitsDisplayPipelineManager;
  }

  return traitsDisplayPipelineManager;
}

- (id)_displayLayoutPublisherForConnectingWindowScene:(id)scene
{
  sceneCopy = scene;
  if (!self->_continuitySession)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _displayLayoutPublisherForConnectingWindowScene:];
  }

  _sbDisplayConfiguration = [sceneCopy _sbDisplayConfiguration];
  if (!_sbDisplayConfiguration)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _displayLayoutPublisherForConnectingWindowScene:];
  }

  displayLayoutPublisher = [(SBContinuitySession *)self->_continuitySession displayLayoutPublisher];
  if (!displayLayoutPublisher)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _displayLayoutPublisherForConnectingWindowScene:];
  }

  [displayLayoutPublisher setDisplayConfiguration:_sbDisplayConfiguration];

  return displayLayoutPublisher;
}

- (id)_sceneManagerForConnectingWindowScene:(id)scene
{
  sceneCopy = scene;
  v4 = +[SBSceneManagerCoordinator sharedInstance];
  _FBSScene = [sceneCopy _FBSScene];

  settings = [_FBSScene settings];
  displayIdentity = [settings displayIdentity];
  v8 = [v4 sceneManagerForDisplayIdentity:displayIdentity];

  return v8;
}

- (void)_configureNewPresentationBinderForWindowScene:(id)scene sceneManager:(id)manager
{
  managerCopy = manager;
  if (!self->_presentationBinderWindow)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _configureNewPresentationBinderForWindowScene:sceneManager:];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@-%p", v7, self];

  v9 = [objc_alloc(MEMORY[0x277D75970]) initWithIdentifier:v8 priority:0 rootView:self->_presentationBinderWindow appearanceStyle:0];
  [managerCopy updatePresentationBinder:v9];
}

- (BOOL)_shouldManageParticipantWithRole:(id)role
{
  roleCopy = role;
  _individuallyManagedRoles = [objc_opt_class() _individuallyManagedRoles];
  v5 = objc_msgSend_containsObject_(_individuallyManagedRoles);

  return v5 ^ 1;
}

- (void)_configureForConnectingWindowScene:(id)scene windowSceneContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  v74.receiver = self;
  v74.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v74 _configureForConnectingWindowScene:sceneCopy windowSceneContext:contextCopy];
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  layoutStateProvider = [embeddedDisplayWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  v12 = +[SBMainDisplayLayoutStateManager _initialLayoutStateWithDisplayOrdinal:isDisplayExternal:](SBMainDisplayLayoutStateManager, "_initialLayoutStateWithDisplayOrdinal:isDisplayExternal:", [layoutState displayOrdinal], objc_msgSend(layoutState, "isDisplayExternal"));

  layoutStateProvider2 = [sceneCopy layoutStateProvider];
  v72 = v12;
  [layoutStateProvider2 setLayoutState:v12];

  v14 = +[SBHIDEventDispatchController sharedInstance];
  _sbDisplayConfiguration = [sceneCopy _sbDisplayConfiguration];
  v16 = [v14 configureDispatchRootsForContinuityDisplay:_sbDisplayConfiguration];
  eventRoutingAssertion = self->_eventRoutingAssertion;
  self->_eventRoutingAssertion = v16;

  v18 = os_transaction_create();
  increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
  self->_increasedMemoryLimitsTransaction = v18;

  v20 = [SBSystemPointerInteractionManager alloc];
  multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
  v22 = [(SBSystemPointerInteractionManager *)v20 initWithMultiDisplayUserInteractionCoordinator:multiDisplayUserInteractionCoordinator];

  [contextCopy setSystemPointerInteractionManager:v22];
  v23 = [SBContinuityDisplaySystemGestureManager alloc];
  screen = [sceneCopy screen];
  displayIdentity = [screen displayIdentity];
  v26 = [(SBContinuityDisplaySystemGestureManager *)v23 initWithDisplayIdentity:displayIdentity];

  v71 = v22;
  [(SBSystemGestureManager *)v26 setSystemPointerInteractionDelegate:v22];
  [contextCopy setSystemGestureManager:v26];
  v70 = [[SBHomeAffordanceInteractionManager alloc] initWithWindowScene:sceneCopy];
  [contextCopy setHomeAffordanceInteractionManager:?];
  v69 = [[SBModalUIFluidDismissGestureManager alloc] initWithWindowScene:sceneCopy systemGestureManager:v26];
  [contextCopy setModalUIFluidDismissGestureManager:?];
  v68 = [[SBTransientUIInteractionManager alloc] initWithSystemGestureManager:v26];
  [contextCopy setTransientUIInteractionManager:?];
  v67 = [[SBRecordingIndicatorManager alloc] initWithWindowScene:sceneCopy];
  [contextCopy setRecordingIndicatorManager:?];
  v73 = embeddedDisplayWindowScene;
  iconController = [embeddedDisplayWindowScene iconController];
  [contextCopy setIconController:iconController];
  v66 = iconController;
  v28 = [[SBHomeScreenController alloc] initWithWindowScene:sceneCopy iconController:iconController];
  homeScreenController = self->_homeScreenController;
  self->_homeScreenController = v28;

  [contextCopy setHomeScreenController:self->_homeScreenController];
  [(SBHomeScreenController *)self->_homeScreenController beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
  [(SBHomeScreenController *)self->_homeScreenController restoreContentAndUnscatterIconsAnimated:0];
  v30 = self->_homeScreenController;
  v31 = +[SBSetupManager sharedInstance];
  [(SBHomeScreenController *)v30 addFloatingDockControllerObserver:v31];

  v65 = [(SBHomeScreenController *)self->_homeScreenController createFloatingDockControllerForWindowScene:sceneCopy];
  [contextCopy setFloatingDockController:?];
  v64 = [(SBHomeScreenController *)self->_homeScreenController createModalLibraryControllerForWindowScene:sceneCopy];
  [contextCopy setModalLibraryController:?];
  statusBarManager = [sceneCopy statusBarManager];
  [statusBarManager updateHomeScreenStatusBarLegibility];

  v33 = [(SBHomeScreenController *)self->_homeScreenController createStatusBarVisibiltyAssertionForWindowScene:sceneCopy];
  showStatusBarAssertion = self->_showStatusBarAssertion;
  self->_showStatusBarAssertion = v33;

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion acquire];
  v35 = [[SBExternalDisplayWallpaperController alloc] initWithWindowScene:sceneCopy requiresTraitsParticipant:0];
  wallpaperController = self->_wallpaperController;
  self->_wallpaperController = v35;

  v37 = objc_alloc_init(SBContinuityLockStateProvider);
  [contextCopy setUILockStateProvider:v37];

  v38 = objc_alloc_init(SBContinuitySecureDisplayStateProvider);
  [contextCopy setSecureDisplayStateProvider:v38];

  authenticationController = [SBApp authenticationController];
  v40 = [authenticationController authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:1];
  [contextCopy setAuthenticationStatusProvider:v40];

  v41 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v41 transientOverlayPresentationManager];
  [transientOverlayPresentationManager windowSceneDidConnect:sceneCopy];

  if (([MEMORY[0x277D244C8] inUserSessionLoginUI] & 1) == 0)
  {
    v43 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v43 windowSceneDidConnect:sceneCopy];

    v44 = [[SBSwitcherController alloc] initWithWindowScene:sceneCopy debugName:@"Continuity"];
    [contextCopy setSwitcherController:v44];
    v45 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v45 beginCoordinatingSwitcherController:v44 options:1];
  }

  if (SBFIsControlCenterInOnenessAvailable())
  {
    v46 = [SBControlCenterController alloc];
    v47 = +[SBControlCenterCoordinator sharedInstance];
    v48 = [(SBControlCenterController *)v46 initWithWindowScene:sceneCopy controlCenterCoordinator:v47];

    [contextCopy setControlCenterController:v48];
  }

  pictureInPictureManager = [sceneCopy pictureInPictureManager];
  [pictureInPictureManager windowSceneDidConnect:sceneCopy];

  pictureInPictureCoordinator = [SBApp pictureInPictureCoordinator];
  v51 = [pictureInPictureCoordinator controllerForType:0];
  [v51 movePIPContentToWindowScene:sceneCopy];
  v52 = [SBAlertLayoutPresentationVerifier alloc];
  screen2 = [sceneCopy screen];
  v54 = [(SBAlertLayoutPresentationVerifier *)v52 initWithScreen:screen2];

  v55 = [SBSharedModalAlertItemPresenter alloc];
  lockOutController = [SBApp lockOutController];
  v57 = +[SBReachabilityManager sharedInstance];
  v58 = [(SBSharedModalAlertItemPresenter *)v55 initWithLockOutProvider:lockOutController systemGestureManager:v26 reachabilityManager:v57 alertLayoutPresentationVerifier:v54 windowScene:sceneCopy];

  v59 = +[SBAlertItemsController sharedInstance];
  [v59 windowSceneDidConnect:sceneCopy withSharedModalAlertItemPresenter:v58];

  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  [contextCopy setSystemApertureController:systemApertureControllerForMainDisplay];
  v61 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v61 windowSceneDidConnect:sceneCopy];

  multiDisplayUserInteractionCoordinator2 = [SBApp multiDisplayUserInteractionCoordinator];
  [multiDisplayUserInteractionCoordinator2 windowSceneDidConnect:sceneCopy];

  statusBarManager2 = [sceneCopy statusBarManager];
  [statusBarManager2 windowSceneDidConnect:sceneCopy];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = SBLogContinuitySession(optionsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [sceneCopy _sceneIdentifier];
    v31 = 134218242;
    v32 = sceneCopy;
    v33 = 2114;
    v34 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ willConnectToSession", &v31, 0x16u);
  }

  role = [(UISceneSession *)sessionCopy role];
  if (([role isEqualToString:*MEMORY[0x277D68048]] & 1) == 0)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
  }

  v14 = objc_opt_class();
  v15 = sceneCopy;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate scene:v15 willConnectToSession:? options:?];
  }

  v18 = [[SBContinuityDisplayPresentationBinderWindow alloc] initWithWindowScene:v17];
  presentationBinderWindow = self->_presentationBinderWindow;
  self->_presentationBinderWindow = &v18->super.super;

  [(UIWindow *)self->_presentationBinderWindow setWindowLevel:1.79769313e308];
  v20 = self->_presentationBinderWindow;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIWindow *)v20 setBackgroundColor:clearColor];

  [(UIWindow *)self->_presentationBinderWindow setHidden:0];
  connectingScene = self->_connectingScene;
  self->_connectingScene = v17;
  v23 = v17;

  connectingSceneSession = self->_connectingSceneSession;
  self->_connectingSceneSession = sessionCopy;
  v25 = sessionCopy;

  connectingSceneConnectionOptions = self->_connectingSceneConnectionOptions;
  self->_connectingSceneConnectionOptions = optionsCopy;
  v27 = optionsCopy;

  v28 = +[SBContinuitySessionManager sharedInstance];
  v29 = [v28 registerWindowScene:v23];
  continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
  self->_continuitySessionManagerRegistration = v29;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v16 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = SBLogContinuitySession(disconnectCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectCopy _sceneIdentifier];
    v12 = 134218242;
    v13 = disconnectCopy;
    v14 = 2114;
    v15 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ didDisconnect", &v12, 0x16u);
  }

  [(BSInvalidatable *)self->_continuitySessionManagerRegistration invalidate];
  continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
  self->_continuitySessionManagerRegistration = 0;

  v8 = objc_opt_class();
  v9 = disconnectCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [(SBContinuitySession *)self->_continuitySession noteMainSceneDisconnected:v11];
  [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"scene disconnected"];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v3 = SBLogContinuitySession(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)v3 sceneWillEnterForeground:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)didConnectToSession:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = sessionCopy;
  if (self->_continuitySession)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  v8 = SBLogContinuitySession(sessionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    connectingScene = self->_connectingScene;
    _sceneIdentifier = [(SBWindowScene *)connectingScene _sceneIdentifier];
    *v16 = 134218498;
    *&v16[4] = connectingScene;
    v17 = 2114;
    v18 = _sceneIdentifier;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ connected to session <%p>", v16, 0x20u);
  }

  objc_storeStrong(&self->_continuitySession, session);
  [v7 addStateObserver:self];
  [(SBContinuitySession *)self->_continuitySession setOrientationDelegate:self];
  v11 = self->_connectingScene;
  if (!v11)
  {
    [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)a2 didConnectToSession:&self->_connectingScene, v16];
    v11 = *v16;
  }

  _FBSScene = [(SBWindowScene *)v11 _FBSScene];
  continuitySessionParticipantClientComponent = [_FBSScene continuitySessionParticipantClientComponent];

  if (!continuitySessionParticipantClientComponent)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  [continuitySessionParticipantClientComponent setContinuitySession:v7];
  _FBSScene2 = [(SBWindowScene *)self->_connectingScene _FBSScene];
  hostProxyClientComponent = [_FBSScene2 hostProxyClientComponent];

  if (!hostProxyClientComponent)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  [v7 addScreenRecordingObserver:hostProxyClientComponent];
  [hostProxyClientComponent continuitySessionDidUpdateScreenRecordingState:v7];
  [(SBContinuitySession *)self->_continuitySession noteMainSceneConnected:self->_connectingScene];
  [v7 noteSceneHasValidDisplayUUID:self->_connectingScene];
  [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self continuitySessionDidUpdateState:v7];
}

- (void)continuitySessionDidUpdateState:(id)state
{
  stateCopy = state;
  connectingScene = self->_connectingScene;
  if (connectingScene)
  {
    windowScene = connectingScene;
  }

  else
  {
    windowScene = [(SBAbstractWindowSceneDelegate *)self windowScene];
  }

  v7 = windowScene;
  v8 = stateCopy;
  if (self->_continuitySession != stateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    _sceneIdentifier = [(SBWindowScene *)v7 _sceneIdentifier];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBContinuityDisplayDelayedUIWindowSceneDelegate.m" lineNumber:427 description:{@"Main scene <%p>:%@ state update for session <%p> is not the one i'm tracking <%p>", v7, _sceneIdentifier, stateCopy, self->_continuitySession}];

    v8 = stateCopy;
  }

  state = [(SBContinuitySession *)v8 state];
  if (state > 6)
  {
    if (state > 9)
    {
      switch(state)
      {
        case 10:
          if (!self->_initializedUI)
          {
            [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
          }

          break;
        case 11:
          if (!self->_initializedUI)
          {
            [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
          }

          break;
        case 12:
          [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"session state is .invalid"];
          break;
      }
    }

    else if (state == 7)
    {
      [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self _initializeUIIfNecessaryForReason:@"session state .activating"];
    }

    else if (state == 8)
    {
      if (!self->_initializedUI)
      {
        [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (!self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (state > 3)
  {
    if (state == 4)
    {
      if (self->_initializedUI)
      {
        [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 5)
    {
      if (self->_initializedUI)
      {
        [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (state == 1)
  {
    if (self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (state == 2)
  {
    if (self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (state == 3 && self->_initializedUI)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
  }
}

- (void)continuitySession:(id)session didUpdateHostedInterfaceOrientation:(int64_t)orientation
{
  if (BSInterfaceOrientationIsValid())
  {
    traitsDisplayPipelineManager = self->_traitsDisplayPipelineManager;

    [(SBTraitsContinuityDisplayPipelineManager *)traitsDisplayPipelineManager setDeviceOrientation:orientation];
  }
}

- (void)setInterfaceOrientation:(int64_t)orientation supportedInterfaceOrientations:(unint64_t)orientations
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  continuitySession = self->_continuitySession;

  [(SBContinuitySession *)continuitySession setInterfaceOrientation:orientation supportedInterfaceOrientations:orientations];
}

- (void)_initializeUIIfNecessaryForReason:(id)reason
{
  v51 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = reasonCopy;
  if (self->_initializedUI)
  {
    windowScene = [(SBAbstractWindowSceneDelegate *)self windowScene];
    v7 = SBLogContinuitySession(windowScene);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _sceneIdentifier = [windowScene _sceneIdentifier];
      *buf = 134218498;
      v46 = windowScene;
      v47 = 2114;
      v48 = _sceneIdentifier;
      v49 = 2114;
      v50 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ initializing UI if necessary - %{public}@ --> already initialized UI", buf, 0x20u);
    }
  }

  else
  {
    v9 = SBLogContinuitySession(reasonCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      connectingScene = self->_connectingScene;
      _sceneIdentifier2 = [(SBWindowScene *)connectingScene _sceneIdentifier];
      *buf = 134218498;
      v46 = connectingScene;
      v47 = 2114;
      v48 = _sceneIdentifier2;
      v49 = 2114;
      v50 = v5;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ initializing UI if necessary - %{public}@", buf, 0x20u);
    }

    state = [(SBContinuitySession *)self->_continuitySession state];
    v13 = SBLogContinuitySession(state);
    windowScene = v13;
    if (state == 7)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)windowScene _initializeUIIfNecessaryForReason:v14, v15, v16, v17, v18, v19, v20];
      }

      v22 = SBLogContinuitySession(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)v22 _initializeUIIfNecessaryForReason:v23, v24, v25, v26, v27, v28, v29];
      }

      v30 = self->_connectingScene;
      connectingSceneSession = self->_connectingSceneSession;
      connectingSceneConnectionOptions = self->_connectingSceneConnectionOptions;
      v44.receiver = self;
      v44.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
      [(SBAbstractWindowSceneDelegate *)&v44 scene:v30 willConnectToSession:connectingSceneSession options:connectingSceneConnectionOptions];
      v33 = self->_connectingScene;
      self->_connectingScene = 0;

      v34 = self->_connectingSceneSession;
      self->_connectingSceneSession = 0;

      v35 = self->_connectingSceneConnectionOptions;
      self->_connectingSceneConnectionOptions = 0;

      self->_initializedUI = 1;
      continuitySession = self->_continuitySession;
      windowScene2 = [(SBAbstractWindowSceneDelegate *)self windowScene];
      [(SBContinuitySession *)continuitySession noteUIIsReady:windowScene2];

      v38 = +[SBLockScreenManager sharedInstance];
      [v38 noteContinuityDisplayWindowSceneConnectionDidChange];

      windowScene = [SBApp dynamicLightingController];
      v39 = [windowScene disableEffectsForReason:@"Continuity"];
      disableDynamicLightingAssertion = self->_disableDynamicLightingAssertion;
      self->_disableDynamicLightingAssertion = v39;
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      _sceneIdentifier3 = [(SBWindowScene *)self->_connectingScene _sceneIdentifier];
      v42 = self->_continuitySession;
      if (v42)
      {
        v43 = NSStringFromSBContinuitySessionState(state);
      }

      else
      {
        v43 = @".unknown because we don't have a session yet!";
      }

      *buf = 138543618;
      v46 = _sceneIdentifier3;
      v47 = 2114;
      v48 = v43;
      _os_log_impl(&dword_21ED4E000, windowScene, OS_LOG_TYPE_DEFAULT, "scene %{public}@ refuses to initialize UI because the session state is %{public}@", buf, 0x16u);
      if (v42)
      {
      }
    }
  }
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)reason
{
  v51 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  windowScene = [(SBAbstractWindowSceneDelegate *)self windowScene];
  connectingScene = windowScene;
  if (!windowScene)
  {
    connectingScene = self->_connectingScene;
  }

  v7 = connectingScene;

  v9 = SBLogContinuitySession(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [(SBWindowScene *)v7 _sceneIdentifier];
    *buf = 134218498;
    v46 = v7;
    v47 = 2114;
    v48 = _sceneIdentifier;
    v49 = 2114;
    v50 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ tear down UI and invalidate if necessary - %{public}@", buf, 0x20u);
  }

  isInvalidated = [(SBAbstractWindowSceneDelegate *)self isInvalidated];
  if (isInvalidated)
  {
    hostProxyClientComponent = SBLogContinuitySession(isInvalidated);
    if (os_log_type_enabled(hostProxyClientComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, hostProxyClientComponent, OS_LOG_TYPE_DEFAULT, "--> already invalidated", buf, 2u);
    }
  }

  else
  {
    _FBSScene = [(SBWindowScene *)v7 _FBSScene];
    hostProxyClientComponent = [_FBSScene hostProxyClientComponent];

    if (!hostProxyClientComponent)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
    }

    [(SBContinuitySession *)self->_continuitySession removeScreenRecordingObserver:hostProxyClientComponent];
    [(SBContinuitySession *)self->_continuitySession setOrientationDelegate:0];
    [(SBContinuitySession *)self->_continuitySession removeStateObserver:self];
    continuitySession = self->_continuitySession;
    self->_continuitySession = 0;

    initializedUI = self->_initializedUI;
    v17 = SBLogContinuitySession(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (initializedUI)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "--> tearing down UI now...", buf, 2u);
      }

      [(BSDefaultObserver *)self->_displayModeSettingsToken invalidate];
      [(BSInvalidatable *)self->_eventRoutingAssertion invalidate];
      eventRoutingAssertion = self->_eventRoutingAssertion;
      self->_eventRoutingAssertion = 0;

      increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
      self->_increasedMemoryLimitsTransaction = 0;

      v21 = +[SBMainWorkspace sharedInstanceIfExists];
      keyboardFocusController = [v21 keyboardFocusController];
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      screen = [(SBWindowScene *)v7 screen];
      displayIdentity = [screen displayIdentity];
      v28 = [v23 stringWithFormat:@"%@ - %@", v25, displayIdentity];
      v43 = [keyboardFocusController suppressKeyboardFocusEvaluationForReason:v28];

      [(SBWindowScene *)v7 setInvalidating:1];
      v29 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      switcherController = [(SBWindowScene *)v7 switcherController];
      [v29 endCoordinatingSwitcherController:switcherController options:1];

      v31 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      [v31 windowSceneDidDisconnect:v7];

      [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion invalidate];
      showStatusBarAssertion = self->_showStatusBarAssertion;
      self->_showStatusBarAssertion = 0;

      floatingDockController = [(SBAbstractWindowSceneDelegate *)self floatingDockController];
      [floatingDockController invalidate];

      modalLibraryController = [(SBAbstractWindowSceneDelegate *)self modalLibraryController];
      [modalLibraryController invalidate];

      homeScreenController = [(SBAbstractWindowSceneDelegate *)self homeScreenController];
      [homeScreenController invalidate];

      systemGestureManager = [(SBWindowScene *)v7 systemGestureManager];
      [systemGestureManager invalidate];

      v37 = +[SBAlertItemsController sharedInstance];
      [v37 windowSceneDidDisconnect:v7];

      v38 = +[SBAppInteractionEventSourceManager sharedInstance];
      [v38 windowSceneDidDisconnect:v7];

      multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
      [multiDisplayUserInteractionCoordinator windowSceneDidDisconnect:v7];

      controlCenterController = [(SBWindowScene *)v7 controlCenterController];
      [controlCenterController invalidate];

      v44.receiver = self;
      v44.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
      [(SBAbstractWindowSceneDelegate *)&v44 sceneDidDisconnect:v7];
      [v43 invalidate];
      v41 = +[SBLockScreenManager sharedInstance];
      [v41 noteContinuityDisplayWindowSceneConnectionDidChange];

      [(BSInvalidatable *)self->_disableDynamicLightingAssertion invalidate];
      sceneManager = [(SBAbstractWindowSceneDelegate *)self sceneManager];
      [sceneManager invalidate];

      [(SBWindowScene *)v7 invalidate];
      [(SBAbstractWindowSceneDelegate *)self setInvalidated:1];
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "--> never initialized UI", buf, 2u);
      }

      [(SBWindowScene *)v7 invalidate];
      [(SBAbstractWindowSceneDelegate *)self setInvalidated:1];
    }
  }
}

- (void)_displayLayoutPublisherForConnectingWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_displayLayoutPublisherForConnectingWindowScene:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_displayLayoutPublisherForConnectingWindowScene:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_configureNewPresentationBinderForWindowScene:sceneManager:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:willConnectToSession:options:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:(uint64_t)a1 willConnectToSession:options:.cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBContinuityDisplayDelayedUIWindowSceneDelegate.m" lineNumber:400 description:{@"_connectingScene is nil, this means we already setup the UI but we just got the scene!"}];

  *a4 = *a3;
}

- (void)didConnectToSession:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.7()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.10()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end