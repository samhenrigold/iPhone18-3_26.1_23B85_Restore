@interface SBCaptureHardwareButton
+ (uint64_t)deviceSupportsCaptureButton;
+ (uint64_t)isCaptureFeatureEnabled;
+ (uint64_t)simulateCaptureButtonWithActionButton;
- (BOOL)_isVisionIntelligenceSupported;
- (BOOL)_physicalButtonTargetMatchesExpectedTargetScene;
- (BOOL)_sendCaptureIntentToEligibleForegroundScene;
- (BOOL)_shouldContinueAfterProcessingStateForClickDown;
- (BOOL)_waitingForCaptureAppActivation;
- (BOOL)handleSimulatedCaptureButtonEvent:(uint64_t)event;
- (double)_doubleClickInterval;
- (id)_sendCameraCaptureButtonDownToSceneOverride;
- (id)initWithActivationManager:(void *)manager suppressionManager:(void *)suppressionManager configurationCoordinator:(void *)coordinator restrictionCoordinator:(void *)restrictionCoordinator mainWindowScene:(void *)scene setupManager:(void *)setupManager authenticationController:(void *)controller HUDController:;
- (id)requestActiveScanningModeForReason:(id)reason;
- (id)requestActiveScanningModeUntilSceneAcquisition:(id)acquisition;
- (uint64_t)simulationButtonArbiter;
- (unint64_t)_clickGesture;
- (void)_attemptButtonActivationWithClickCountToActivate:(int64_t)activate atTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event;
- (void)_bufferPressForBundleIdentifier:(id)identifier timestamp:(unint64_t)timestamp;
- (void)_captureButtonGestureRecognizerAction:(id)action;
- (void)_configureButtonProcessor;
- (void)_handleButtonDownAtTimestamp:(unint64_t)timestamp isAccessibilityEvent:(BOOL)event;
- (void)_handleButtonUpAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event;
- (void)_handleLongPressAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp;
- (void)_ignoreNextButtonUpForReason:(id)reason;
- (void)_invalidateBufferedPress;
- (void)_nextClickTimeoutDidFire;
- (void)_postBufferedPress;
- (void)_processZStackParticipantSettings:(id)settings;
- (void)_reevaluateButtonScanState;
- (void)_resetNextClickTimer;
- (void)_sendCaptureIntentToEligibleForegroundScene;
- (void)cancelHardwareButtonPress;
- (void)captureButtonAppActivatorLaunchDidComplete:(BOOL)complete;
- (void)dealloc;
- (void)performActionsForButtonDown:(id)down;
- (void)performActionsForButtonLongPress:(id)press;
- (void)performActionsForButtonUp:(id)up;
- (void)physicalButtonSceneOverridesDidChange:(id)change;
- (void)setSimulationButtonArbiter:(uint64_t)arbiter;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBCaptureHardwareButton

+ (uint64_t)deviceSupportsCaptureButton
{
  objc_opt_self();

  return MGGetBoolAnswer();
}

+ (uint64_t)isCaptureFeatureEnabled
{
  objc_opt_self();

  return CAMIsCameraButtonEnabled();
}

+ (uint64_t)simulateCaptureButtonWithActionButton
{
  objc_opt_self();
  v1 = +[SBDefaults localDefaults];
  captureButtonDefaults = [v1 captureButtonDefaults];
  simulateCaptureButtonUsingActionButton = [captureButtonDefaults simulateCaptureButtonUsingActionButton];

  return simulateCaptureButtonUsingActionButton;
}

- (id)initWithActivationManager:(void *)manager suppressionManager:(void *)suppressionManager configurationCoordinator:(void *)coordinator restrictionCoordinator:(void *)restrictionCoordinator mainWindowScene:(void *)scene setupManager:(void *)setupManager authenticationController:(void *)controller HUDController:
{
  v17 = a2;
  managerCopy = manager;
  suppressionManagerCopy = suppressionManager;
  coordinatorCopy = coordinator;
  restrictionCoordinatorCopy = restrictionCoordinator;
  sceneCopy = scene;
  setupManagerCopy = setupManager;
  controllerCopy = controller;
  if (!self)
  {
    goto LABEL_10;
  }

  v41 = v17;
  if (!v17)
  {
    [SBCaptureHardwareButton initWithActivationManager:self suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  if (!suppressionManagerCopy)
  {
    [SBCaptureHardwareButton initWithActivationManager:self suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  if (!restrictionCoordinatorCopy)
  {
    [SBCaptureHardwareButton initWithActivationManager:self suppressionManager:? configurationCoordinator:? restrictionCoordinator:? mainWindowScene:? setupManager:? authenticationController:? HUDController:?];
  }

  v54.receiver = self;
  v54.super_class = SBCaptureHardwareButton;
  self = objc_msgSendSuper2(&v54, sel_init);
  if (self)
  {
    v40 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    physicalButtonSceneOverrideManager = [v40 physicalButtonSceneOverrideManager];
    objc_storeStrong(self + 9, physicalButtonSceneOverrideManager);
    v39 = physicalButtonSceneOverrideManager;
    v19 = [(SBPhysicalButtonSceneOverrideManager *)physicalButtonSceneOverrideManager addObserver:self forReason:@"capture button"];
    v20 = self[10];
    self[10] = v19;

    objc_storeStrong(self + 11, a2);
    objc_storeStrong(self + 12, manager);
    objc_storeStrong(self + 13, suppressionManager);
    objc_storeStrong(self + 8, restrictionCoordinator);
    objc_storeStrong(self + 11, a2);
    objc_storeStrong(self + 15, coordinator);
    objc_storeStrong(self + 20, scene);
    objc_storeStrong(self + 21, setupManager);
    objc_storeStrong(self + 22, controller);
    [self _configureButtonProcessor];
    v21 = +[SBCaptureButtonDomain rootSettings];
    v22 = self[17];
    self[17] = v21;

    v23 = controllerCopy;
    v24 = [[SBCaptureHardwareButtonAppActivator alloc] initWithSettingsSnapshot:self[17] windowScene:self[8] scanModeResource:self activationManager:self[11] suppressionManager:self[12] setupManager:self[20] authenticationController:self[21] HUDController:controllerCopy];
    v25 = self[14];
    self[14] = v24;

    zStackResolver = [restrictionCoordinatorCopy zStackResolver];
    v27 = [zStackResolver addObserver:self ofParticipantWithIdentifier:29];
    [self _processZStackParticipantSettings:v27];
    systemGestureManager = [restrictionCoordinatorCopy systemGestureManager];
    [systemGestureManager addGestureRecognizer:self[16] withType:139];
    [self[17] addKeyObserver:self];
    v29 = +[SBDefaults localDefaults];
    captureButtonDefaults = [v29 captureButtonDefaults];

    self[27] = [captureButtonDefaults captureButtonClickCount];
    objc_initWeak(&location, self);
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"captureButtonClickCount"];
    v32 = MEMORY[0x277D85CD0];
    v33 = MEMORY[0x277D85CD0];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __188__SBCaptureHardwareButton_initWithActivationManager_suppressionManager_configurationCoordinator_restrictionCoordinator_mainWindowScene_setupManager_authenticationController_HUDController___block_invoke;
    v49[3] = &unk_2783B00B0;
    objc_copyWeak(&v52, &location);
    self = self;
    selfCopy = self;
    v34 = captureButtonDefaults;
    v51 = v34;
    v35 = [v34 observeDefault:v31 onQueue:v32 withBlock:v49];

    [self _resetNextClickTimer];
    v36 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.camera"];
    v37 = self[32];
    self[32] = v36;

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    v17 = v41;
  }

  else
  {
LABEL_10:
    v23 = controllerCopy;
  }

  return self;
}

void __188__SBCaptureHardwareButton_initWithActivationManager_suppressionManager_configurationCoordinator_restrictionCoordinator_mainWindowScene_setupManager_authenticationController_HUDController___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(a1[4] + 27) = [a1[5] captureButtonClickCount];
    [v3 _resetNextClickTimer];
    [*(a1[4] + 14) cancelActivationForGesture:{objc_msgSend(a1[4], "_clickGesture")}];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_physicalButtonOverrideObserver invalidate];
  physicalButtonOverrideObserver = self->_physicalButtonOverrideObserver;
  self->_physicalButtonOverrideObserver = 0;

  [(SBCaptureHardwareButtonAppActivator *)self->_appActivator invalidate];
  appActivator = self->_appActivator;
  self->_appActivator = 0;

  v5.receiver = self;
  v5.super_class = SBCaptureHardwareButton;
  [(SBCaptureHardwareButton *)&v5 dealloc];
}

- (id)requestActiveScanningModeForReason:(id)reason
{
  reasonCopy = reason;
  buttonScanningActiveAssertion = self->_buttonScanningActiveAssertion;
  if (!buttonScanningActiveAssertion)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__SBCaptureHardwareButton_requestActiveScanningModeForReason___block_invoke;
    v17 = &unk_2783AD688;
    objc_copyWeak(&v18, &location);
    v7 = [v6 assertionWithIdentifier:@"buttonScanningActiveAssertion" stateDidChangeHandler:&v14];
    v8 = self->_buttonScanningActiveAssertion;
    self->_buttonScanningActiveAssertion = v7;

    v9 = self->_buttonScanningActiveAssertion;
    v11 = SBLogCameraCaptureButtonScanMode(v10);
    [(BSCompoundAssertion *)v9 setLog:v11, v14, v15, v16, v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    buttonScanningActiveAssertion = self->_buttonScanningActiveAssertion;
  }

  v12 = [(BSCompoundAssertion *)buttonScanningActiveAssertion acquireForReason:reasonCopy];

  return v12;
}

void __62__SBCaptureHardwareButton_requestActiveScanningModeForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateButtonScanState];
}

- (id)requestActiveScanningModeUntilSceneAcquisition:(id)acquisition
{
  acquisitionCopy = acquisition;
  launchGracePeriodButtonPowerAssertion = self->_launchGracePeriodButtonPowerAssertion;
  if (self->_clientRequestedButtonPowerAssertion)
  {
    if (launchGracePeriodButtonPowerAssertion)
    {
      [(SBCaptureHardwareButton *)a2 requestActiveScanningModeUntilSceneAcquisition:?];
    }

    v7 = 0;
  }

  else
  {
    v8 = launchGracePeriodButtonPowerAssertion;
    v9 = [(SBCaptureHardwareButton *)self requestActiveScanningModeForReason:acquisitionCopy];
    v10 = self->_launchGracePeriodButtonPowerAssertion;
    self->_launchGracePeriodButtonPowerAssertion = v9;

    [(BSInvalidatable *)v8 invalidate];
    v7 = self->_launchGracePeriodButtonPowerAssertion;
  }

  v11 = v7;

  return v7;
}

- (void)captureButtonAppActivatorLaunchDidComplete:(BOOL)complete
{
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    completeCopy = complete;
    v5 = SBLogButtonsCapture(self);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (completeCopy)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Buffer: posting; successful launch", buf, 2u);
      }

      [(SBCaptureHardwareButton *)self _postBufferedPress];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Buffer: dropping; unsuccesful launch", v7, 2u);
      }

      [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (objc_msgSend_containsObject_(&unk_28336EA90, a2, key))
  {
    [(SBCaptureHardwareButtonAppActivator *)self->_appActivator invalidate];
    v5 = [[SBCaptureHardwareButtonAppActivator alloc] initWithSettingsSnapshot:self->_settings windowScene:self->_mainWindowScene scanModeResource:self activationManager:self->_activationManager suppressionManager:self->_suppressionManager setupManager:self->_setupManager authenticationController:self->_authenticationController HUDController:self->_hudController];
    appActivator = self->_appActivator;
    self->_appActivator = v5;

    [(SBCaptureHardwareButton *)self _resetNextClickTimer];
  }
}

- (void)_configureButtonProcessor
{
  if (+[SBCaptureHardwareButton simulateCaptureButtonWithActionButton]&& !self->_simulationButtonArbiter)
  {
    v3 = objc_alloc_init(SBHIDButtonStateArbiter);
    simulationButtonArbiter = self->_simulationButtonArbiter;
    self->_simulationButtonArbiter = v3;

    [(SBHIDButtonStateArbiter *)self->_simulationButtonArbiter setDelegate:self];
  }

  if (!self->_captureButtonRecognizer)
  {
    v5 = [[SBCaptureHardwareButtonFullPressRecognizer alloc] initWithTarget:self action:sel__captureButtonGestureRecognizerAction_];
    captureButtonRecognizer = self->_captureButtonRecognizer;
    self->_captureButtonRecognizer = v5;
  }
}

- (void)_processZStackParticipantSettings:(id)settings
{
  v31 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  captureButtonFullFidelityEventRequestingScenes = [settingsCopy captureButtonFullFidelityEventRequestingScenes];
  if ((BSEqualArrays() & 1) == 0)
  {
    v6 = [captureButtonFullFidelityEventRequestingScenes copy];
    buttonEventRequestingScenes = self->_buttonEventRequestingScenes;
    self->_buttonEventRequestingScenes = v6;

    v9 = SBLogButtonsCapture(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_buttonEventRequestingScenes];
      v29 = 138543362;
      v30 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "captureButtonFullFidelityEventRequestingScenes %{public}@", &v29, 0xCu);
    }

    v11 = [(NSArray *)self->_buttonEventRequestingScenes count];
    clientRequestedButtonPowerAssertion = self->_clientRequestedButtonPowerAssertion;
    if (v11)
    {
      if (!clientRequestedButtonPowerAssertion)
      {
        v13 = [(SBCaptureHardwareButton *)self requestActiveScanningModeForReason:@"externalSceneRequest"];
        v14 = self->_clientRequestedButtonPowerAssertion;
        self->_clientRequestedButtonPowerAssertion = v13;

        [(BSInvalidatable *)self->_launchGracePeriodButtonPowerAssertion invalidate];
        launchGracePeriodButtonPowerAssertion = self->_launchGracePeriodButtonPowerAssertion;
        self->_launchGracePeriodButtonPowerAssertion = 0;
      }
    }

    else if (clientRequestedButtonPowerAssertion)
    {
      [(BSInvalidatable *)clientRequestedButtonPowerAssertion invalidate];
      v16 = self->_clientRequestedButtonPowerAssertion;
      self->_clientRequestedButtonPowerAssertion = 0;

      [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
    }
  }

  foregroundCaptureSceneTargets = [settingsCopy foregroundCaptureSceneTargets];
  if ((BSEqualArrays() & 1) == 0)
  {
    v18 = [foregroundCaptureSceneTargets copy];
    foregroundCaptureSceneTargets = self->_foregroundCaptureSceneTargets;
    self->_foregroundCaptureSceneTargets = v18;

    v21 = SBLogButtonsCapture(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_foregroundCaptureSceneTargets];
      v29 = 138543362;
      v30 = v22;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "foregroundCaptureSceneTargets %{public}@", &v29, 0xCu);
    }
  }

  physicalButtonSceneTargets = [settingsCopy physicalButtonSceneTargets];
  if ((BSEqualArrays() & 1) == 0)
  {
    v24 = [physicalButtonSceneTargets copy];
    physicalButtonSceneTargets = self->_physicalButtonSceneTargets;
    self->_physicalButtonSceneTargets = v24;

    v27 = SBLogButtonsCapture(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_physicalButtonSceneTargets];
      v29 = 138543362;
      v30 = v28;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "physicalButtonSceneTargets %{public}@", &v29, 0xCu);
    }
  }
}

- (BOOL)_physicalButtonTargetMatchesExpectedTargetScene
{
  selfCopy = self;
  lastObject = [(NSArray *)self->_physicalButtonSceneTargets lastObject];
  scene = [lastObject scene];
  clientHandle = [scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  LOBYTE(selfCopy) = [bundleIdentifier isEqual:selfCopy->_captureAppBundleIdentifierForBufferedPress];

  return selfCopy;
}

- (BOOL)_waitingForCaptureAppActivation
{
  isActivationInProgress = [(SBCaptureHardwareButtonAppActivator *)self->_appActivator isActivationInProgress];
  if (isActivationInProgress)
  {
    LOBYTE(isActivationInProgress) = ![(SBCaptureHardwareButton *)self _physicalButtonTargetMatchesExpectedTargetScene];
  }

  return isActivationInProgress;
}

- (void)_invalidateBufferedPress
{
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
    self->_bufferedPressAbsoluteTimestamp = 0;
    self->_captureAppBundleIdentifierForBufferedPress = 0;
  }
}

- (void)_bufferPressForBundleIdentifier:(id)identifier timestamp:(unint64_t)timestamp
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = SBLogButtonsCapture(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    timestampCopy = timestamp;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Buffering press(down time: %llu)", &v10, 0xCu);
  }

  v8 = [identifierCopy copy];
  captureAppBundleIdentifierForBufferedPress = self->_captureAppBundleIdentifierForBufferedPress;
  self->_captureAppBundleIdentifierForBufferedPress = v8;

  self->_bufferedPressAbsoluteTimestamp = timestamp;
}

- (void)_postBufferedPress
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *self;
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, a2, a3, "Buffer: Nothing to do? (down time: %llu)", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_reevaluateButtonScanState
{
  isActive = [(BSCompoundAssertion *)self->_buttonScanningActiveAssertion isActive];
  underlyingButtonPowerAssertion = self->_underlyingButtonPowerAssertion;
  if (isActive)
  {
    if (underlyingButtonPowerAssertion)
    {
      return;
    }

    v5 = BKSHIDTouchSensitiveButtonRequestScanMode();
    v6 = self->_underlyingButtonPowerAssertion;
    self->_underlyingButtonPowerAssertion = v5;

    v8 = SBLogCameraCaptureButtonScanMode(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v14 = 0;
    v9 = "Setting Capture Button scan state to Active";
    v10 = &v14;
    goto LABEL_8;
  }

  if (!underlyingButtonPowerAssertion)
  {
    return;
  }

  [(BSInvalidatable *)underlyingButtonPowerAssertion invalidate];
  v11 = self->_underlyingButtonPowerAssertion;
  self->_underlyingButtonPowerAssertion = 0;

  v8 = SBLogCameraCaptureButtonScanMode(v12);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 0;
    v9 = "Setting Capture Button scan state to Idle";
    v10 = &v13;
LABEL_8:
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
  }

LABEL_9:
}

- (id)_sendCameraCaptureButtonDownToSceneOverride
{
  v9 = *MEMORY[0x277D85DE8];
  sendCameraCaptureButtonDown = [(SBPhysicalButtonSceneOverrideManager *)&self->_physicalButtonOverrideManager->super.isa sendCameraCaptureButtonDown];
  v3 = sendCameraCaptureButtonDown;
  if (sendCameraCaptureButtonDown)
  {
    v4 = SBLogButtonsCapture(sendCameraCaptureButtonDown);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v3 identifier];
      v7 = 138543362;
      v8 = identifier;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "_sendCameraCaptureButtonDownToSceneOverride to: %{public}@", &v7, 0xCu);
    }
  }

  return v3;
}

- (BOOL)_sendCaptureIntentToEligibleForegroundScene
{
  selfCopy = self;
  lastObject = [(NSArray *)self->_foregroundCaptureSceneTargets lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    scene = [lastObject scene];
    isActive = [scene isActive];
    if (isActive)
    {
      captureApplication = [v4 captureApplication];
      associatedAppBundleIdentifier = [(SBCaptureButtonAppConfigurationCoordinator *)selfCopy->_configurationCoordinator associatedAppBundleIdentifier];
      bundleIdentifier = [captureApplication bundleIdentifier];
      selfCopy = [associatedAppBundleIdentifier isEqualToString:bundleIdentifier];
      launchActions = SBLogButtonsCapture(selfCopy);
      v11 = os_log_type_enabled(launchActions, OS_LOG_TYPE_ERROR);
      if (selfCopy)
      {
        if (v11)
        {
          [(SBCaptureHardwareButton *)scene _sendCaptureIntentToEligibleForegroundScene:launchActions];
        }

        launchActions = [captureApplication launchActions];
        [scene sendActions:launchActions];
      }

      else if (v11)
      {
        [(SBCaptureHardwareButton *)bundleIdentifier _sendCaptureIntentToEligibleForegroundScene];
      }
    }

    else
    {
      captureApplication = SBLogButtonsCapture(isActive);
      if (os_log_type_enabled(captureApplication, OS_LOG_TYPE_ERROR))
      {
        [(SBCaptureHardwareButton *)scene _sendCaptureIntentToEligibleForegroundScene:captureApplication];
      }

      LOBYTE(selfCopy) = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  assistantController = [(SBWindowScene *)selfCopy->_mainWindowScene assistantController];
  presentationContext = [assistantController presentationContext];
  LODWORD(selfCopy) = [presentationContext hasVisionModality];

  if (selfCopy)
  {
    scene = SBLogButtonsCapture(v20);
    if (os_log_type_enabled(scene, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_21ED4E000, scene, OS_LOG_TYPE_DEFAULT, "_sendCaptureIntentToEligibleForegroundScene consuming on behalf of siri", v28, 2u);
    }

    LOBYTE(selfCopy) = 1;
    goto LABEL_18;
  }

LABEL_19:

  return selfCopy;
}

- (void)_resetNextClickTimer
{
  [(BSAbsoluteMachTimer *)self->_nextClickDownTimer invalidate];
  nextClickDownTimer = self->_nextClickDownTimer;
  self->_nextClickDownTimer = 0;

  clickCountToActivateApp = self->_clickCountToActivateApp;
  self->_remainingClicksDownToActivateApp = clickCountToActivateApp;
  self->_remainingClicksUpToActivateApp = clickCountToActivateApp;
}

- (void)_nextClickTimeoutDidFire
{
  v3 = SBLogButtonsCapture(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[button down] Timed out waiting for second click", v4, 2u);
  }

  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
  [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"nextClickTimeout"];
}

- (double)_doubleClickInterval
{
  v2 = [(NSUserDefaults *)self->_cameraDefaults objectForKey:@"systemOverlay.doubleClickMaxIntervalMilliseconds"];
  intValue = [v2 intValue];

  result = intValue / 1000.0;
  if (result == 0.0)
  {
    return 0.4;
  }

  return result;
}

- (BOOL)_shouldContinueAfterProcessingStateForClickDown
{
  v22 = *MEMORY[0x277D85DE8];
  [(BSAbsoluteMachTimer *)self->_nextClickDownTimer invalidate];
  nextClickDownTimer = self->_nextClickDownTimer;
  self->_nextClickDownTimer = 0;

  remainingClicksDownToActivateApp = self->_remainingClicksDownToActivateApp;
  v6 = remainingClicksDownToActivateApp - 1;
  self->_remainingClicksDownToActivateApp = remainingClicksDownToActivateApp - 1;
  if (remainingClicksDownToActivateApp == 1)
  {
    v15 = SBLogButtonsCapture(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[button down] Got required clicks to activate app", buf, 2u);
    }
  }

  else
  {
    _doubleClickInterval = [(SBCaptureHardwareButton *)self _doubleClickInterval];
    v9 = v8;
    v10 = SBLogButtonsCapture(_doubleClickInterval);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_remainingClicksDownToActivateApp;
      *buf = 134218240;
      v19 = v9;
      v20 = 1024;
      v21 = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[button down] Waiting for next click (for %gs) (%d clicks remaining)", buf, 0x12u);
    }

    v12 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"Capture button next click"];
    v13 = self->_nextClickDownTimer;
    self->_nextClickDownTimer = v12;

    v14 = self->_nextClickDownTimer;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__SBCaptureHardwareButton__shouldContinueAfterProcessingStateForClickDown__block_invoke;
    v17[3] = &unk_2783ABAA8;
    v17[4] = self;
    [(BSAbsoluteMachTimer *)v14 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v17 queue:v9 handler:0.01];
  }

  return v6 == 0;
}

- (void)_ignoreNextButtonUpForReason:(id)reason
{
  reasonCopy = reason;
  if (self->_buttonActiveAssertion)
  {
    ignoreButtonUpReasons = self->_ignoreButtonUpReasons;
    v8 = reasonCopy;
    if (!ignoreButtonUpReasons)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_ignoreButtonUpReasons;
      self->_ignoreButtonUpReasons = v6;

      ignoreButtonUpReasons = self->_ignoreButtonUpReasons;
    }

    [(NSMutableSet *)ignoreButtonUpReasons addObject:v8];
    reasonCopy = v8;
  }
}

- (void)_handleLongPressAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp
{
  v7 = SBLogButtonsCapture(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[long press] recognized", v9, 2u);
  }

  [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"long press"];
  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  longPressTimer = self->_longPressTimer;
  self->_longPressTimer = 0;

  [(SBCaptureHardwareButton *)self _attemptButtonActivationWithClickCountToActivate:0 atTimestamp:timestamp forDownTimestamp:downTimestamp isAccessibilityEvent:0];
  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
}

- (void)_handleButtonDownAtTimestamp:(unint64_t)timestamp isAccessibilityEvent:(BOOL)event
{
  v51 = *MEMORY[0x277D85DE8];
  _invalidateBufferedPress = [(SBCaptureHardwareButton *)self _invalidateBufferedPress];
  if (!self->_buttonActiveAssertion)
  {
    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
    v12 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:hardwareButtonIdentifier];
    buttonActiveAssertion = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = v12;

    [(SBCaptureHardwareButton *)self _stopIgnoringNextButtonUp];
    v14 = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier2 = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
    LOBYTE(v14) = [(SBHardwareButtonCoordinator *)v14 buttonShouldStart:hardwareButtonIdentifier2];

    if ((v14 & 1) == 0)
    {
      v17 = SBLogButtonsCapture(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[button down] Inhibit Actions preventing further processing", buf, 2u);
      }

      [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"buttonCoordinator"];
    }

    restrictionCoordinator = self->_restrictionCoordinator;
    v48 = 0;
    v19 = [(SBCaptureButtonRestrictionCoordinator *)restrictionCoordinator isCaptureButtonActionInhibited:&v48];
    v20 = v48;
    v9 = v20;
    if (v19)
    {
      v21 = SBLogButtonsCapture(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        timestampCopy2 = v9;
        _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "[button down] Ignoring button press to inhibit assertion(s): %{public}@.", buf, 0xCu);
      }

      [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:v9];
    }

    if ([(NSMutableSet *)self->_ignoreButtonUpReasons count])
    {
      [(SBCaptureHardwareButton *)self _resetNextClickTimer];
      goto LABEL_25;
    }

    if ([(SBCaptureHardwareButton *)self _waitingForCaptureAppActivation])
    {
      associatedAppBundleIdentifier = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
      [(SBCaptureHardwareButton *)self _bufferPressForBundleIdentifier:associatedAppBundleIdentifier timestamp:timestamp];

      goto LABEL_25;
    }

    _sendCameraCaptureButtonDownToSceneOverride = [(SBCaptureHardwareButton *)self _sendCameraCaptureButtonDownToSceneOverride];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = _sendCameraCaptureButtonDownToSceneOverride;

    if (self->_overrideButtonUpHandler)
    {
      v26 = SBLogButtonsCapture(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        timestampCopy2 = timestamp;
        v27 = "Invoking scene override Button Down Action (down time: %llu)";
LABEL_22:
        _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
      }
    }

    else
    {
      _sendCaptureIntentToEligibleForegroundScene = [(SBCaptureHardwareButton *)self _sendCaptureIntentToEligibleForegroundScene];
      if (!_sendCaptureIntentToEligibleForegroundScene)
      {
        _shouldContinueAfterProcessingStateForClickDown = [(SBCaptureHardwareButton *)self _shouldContinueAfterProcessingStateForClickDown];
        clickCountToActivateApp = self->_clickCountToActivateApp;
        remainingClicksUpToActivateApp = self->_remainingClicksUpToActivateApp;
        _isVisionIntelligenceSupported = [(SBCaptureHardwareButton *)self _isVisionIntelligenceSupported];
        v34 = _isVisionIntelligenceSupported;
        if (_shouldContinueAfterProcessingStateForClickDown)
        {
          appActivator = self->_appActivator;
          if (event)
          {
            _clickGesture = 4;
          }

          else
          {
            _clickGesture = [(SBCaptureHardwareButton *)self _clickGesture];
          }

          associatedAppBundleIdentifier2 = [(SBCaptureButtonAppConfigurationCoordinator *)self->_configurationCoordinator associatedAppBundleIdentifier];
          [(SBCaptureHardwareButtonAppActivator *)appActivator prepareForGesture:_clickGesture forAppBundleID:associatedAppBundleIdentifier2 atMachAbsoluteTime:timestamp suppressionOptions:[(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions]];
        }

        else
        {
          if (clickCountToActivateApp != remainingClicksUpToActivateApp)
          {
            goto LABEL_24;
          }

          if (!_isVisionIntelligenceSupported)
          {
            if (self->_hintDropletAssertion)
            {
              [SBCaptureHardwareButton _handleButtonDownAtTimestamp:a2 isAccessibilityEvent:self];
            }

            hardwareButtonBezelEffectsCoordinator = [(SBWindowScene *)self->_mainWindowScene hardwareButtonBezelEffectsCoordinator];
            v45 = [hardwareButtonBezelEffectsCoordinator activateHintDropletForButton:9];
            hintDropletAssertion = self->_hintDropletAssertion;
            self->_hintDropletAssertion = v45;

            goto LABEL_24;
          }

          [(SBCaptureHardwareButtonAppActivator *)self->_appActivator prepareForGesture:3 forAppBundleID:@"com.apple.siri" atMachAbsoluteTime:timestamp suppressionOptions:[(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions]];
        }

        if (clickCountToActivateApp == remainingClicksUpToActivateApp && v34)
        {
          v38 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"Capture button long press"];
          longPressTimer = self->_longPressTimer;
          self->_longPressTimer = v38;

          [(SBCaptureButtonSettings *)self->_settings longPressVisionIntelligenceDelay];
          v41 = v40;
          UIAnimationDragCoefficient();
          v42 = self->_longPressTimer;
          v47[1] = 3221225472;
          v47[0] = MEMORY[0x277D85DD0];
          v47[2] = __77__SBCaptureHardwareButton__handleButtonDownAtTimestamp_isAccessibilityEvent___block_invoke;
          v47[3] = &unk_2783BF7D0;
          v47[4] = self;
          v47[5] = timestamp;
          [(BSAbsoluteMachTimer *)v42 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v47 queue:v41 * v43 handler:0.01];
        }

        goto LABEL_24;
      }

      v26 = SBLogButtonsCapture(_sendCaptureIntentToEligibleForegroundScene);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        timestampCopy2 = timestamp;
        v27 = "Sending capture intent to foreground scene (down time: %llu)";
        goto LABEL_22;
      }
    }

LABEL_24:
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBCaptureHardwareButtonPressNotification" object:0];

    goto LABEL_25;
  }

  v9 = SBLogButtonsCapture(_invalidateBufferedPress);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SBCaptureHardwareButton _handleButtonDownAtTimestamp:v9 isAccessibilityEvent:?];
  }

LABEL_25:
}

uint64_t __77__SBCaptureHardwareButton__handleButtonDownAtTimestamp_isAccessibilityEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  v4 = *(a1 + 40);

  return [v2 _handleLongPressAtTimestamp:v3 forDownTimestamp:v4];
}

- (BOOL)_isVisionIntelligenceSupported
{
  assistantController = [(SBWindowScene *)self->_mainWindowScene assistantController];
  isVisualSearchEnabled = [assistantController isVisualSearchEnabled];

  return isVisualSearchEnabled;
}

- (unint64_t)_clickGesture
{
  if (self->_clickCountToActivateApp == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_handleButtonUpAtTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event
{
  eventCopy = event;
  v26 = *MEMORY[0x277D85DE8];
  [(BSInvalidatable *)self->_buttonActiveAssertion invalidate];
  buttonActiveAssertion = self->_buttonActiveAssertion;
  self->_buttonActiveAssertion = 0;

  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  longPressTimer = self->_longPressTimer;
  self->_longPressTimer = 0;

  [(BSInvalidatable *)self->_hintDropletAssertion invalidate];
  hintDropletAssertion = self->_hintDropletAssertion;
  self->_hintDropletAssertion = 0;

  if (self->_clickCountToActivateApp >= 2 && self->_remainingClicksUpToActivateApp >= 2)
  {
    [(SBCaptureHardwareButtonAppActivator *)self->_appActivator cancelActivationForGesture:3];
  }

  v12 = [(NSMutableSet *)self->_ignoreButtonUpReasons count];
  if (v12)
  {
    v13 = SBLogButtonsCapture(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_ignoreButtonUpReasons];
      v22 = 138412290;
      downTimestampCopy = v14;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[button up] Ignoring button up because %@", &v22, 0xCu);
    }
  }

  else if (self->_bufferedPressAbsoluteTimestamp)
  {
    v15 = SBLogButtonsCapture(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[button up] bailing because buffered press.", &v22, 2u);
    }
  }

  else if (self->_overrideButtonUpHandler)
  {
    v16 = SBLogButtonsCapture(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134218240;
      downTimestampCopy = downTimestamp;
      v24 = 2048;
      timestampCopy = timestamp;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Invoking scene override Button Up Action (down time: %llu, up time: %llu)", &v22, 0x16u);
    }

    [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:0];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = 0;
  }

  else
  {
    remainingClicksUpToActivateApp = self->_remainingClicksUpToActivateApp;
    self->_remainingClicksUpToActivateApp = remainingClicksUpToActivateApp - 1;
    v19 = SBLogButtonsCapture(0);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (remainingClicksUpToActivateApp < 2)
    {
      if (v20)
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[button up] Got required clicks to activate app", &v22, 2u);
      }

      [(SBCaptureHardwareButton *)self _resetNextClickTimer];
      [(SBCaptureHardwareButton *)self _attemptButtonActivationWithClickCountToActivate:self->_clickCountToActivateApp atTimestamp:timestamp forDownTimestamp:downTimestamp isAccessibilityEvent:eventCopy];
    }

    else
    {
      if (v20)
      {
        v21 = self->_remainingClicksUpToActivateApp;
        v22 = 67109120;
        LODWORD(downTimestampCopy) = v21;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[button up] Waiting for next click (%d remaining)", &v22, 8u);
      }
    }
  }
}

- (void)_attemptButtonActivationWithClickCountToActivate:(int64_t)activate atTimestamp:(unint64_t)timestamp forDownTimestamp:(unint64_t)downTimestamp isAccessibilityEvent:(BOOL)event
{
  eventCopy = event;
  hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
  hardwareButtonIdentifier = [(SBCaptureHardwareButton *)self hardwareButtonIdentifier];
  LODWORD(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:hardwareButtonIdentifier];

  if (hardwareButtonCoordinator)
  {
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    if (activate > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_21F8A8260[activate];
    }

    if (eventCopy)
    {
      v17 = 4;
    }

    else
    {
      v17 = v14;
    }

    appActivator = self->_appActivator;
    captureButtonSuppressionOptions = [(SBCaptureButtonRestrictionCoordinator *)self->_restrictionCoordinator captureButtonSuppressionOptions];

    [(SBCaptureHardwareButtonAppActivator *)appActivator activateForGesture:v17 atMachAbsoluteTime:timestamp pressDuration:captureButtonSuppressionOptions suppressionOptions:v13];
  }

  else
  {
    v15 = self->_appActivator;
    _clickGesture = [(SBCaptureHardwareButton *)self _clickGesture];

    [(SBCaptureHardwareButtonAppActivator *)v15 cancelActivationForGesture:_clickGesture];
  }
}

- (void)_captureButtonGestureRecognizerAction:(id)action
{
  v17 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  state = [actionCopy state];
  switch(state)
  {
    case 4:
      pressDownTimestamp = [actionCopy pressDownTimestamp];
      v12 = SBLogButtonsCapture(pressDownTimestamp);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = pressDownTimestamp;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Capture Button Press Cancel (down time: %llu)", &v13, 0xCu);
      }

      [(SBCaptureHardwareButton *)self cancelHardwareButtonPress];
      break;
    case 3:
      pressUpTimestamp = [actionCopy pressUpTimestamp];
      pressDownTimestamp2 = [actionCopy pressDownTimestamp];
      v10 = SBLogButtonsCapture(pressDownTimestamp2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218240;
        v14 = pressDownTimestamp2;
        v15 = 2048;
        v16 = pressUpTimestamp;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Capture Button Up (down time: %llu, up time: %llu)", &v13, 0x16u);
      }

      -[SBCaptureHardwareButton _handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:](self, "_handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:", pressUpTimestamp, pressDownTimestamp2, [actionCopy isCaptureButtonSourceAccessibility]);
      break;
    case 1:
      pressDownTimestamp3 = [actionCopy pressDownTimestamp];
      v7 = SBLogButtonsCapture(pressDownTimestamp3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = pressDownTimestamp3;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Capture Button Down (down time: %llu)", &v13, 0xCu);
      }

      -[SBCaptureHardwareButton _handleButtonDownAtTimestamp:isAccessibilityEvent:](self, "_handleButtonDownAtTimestamp:isAccessibilityEvent:", pressDownTimestamp3, [actionCopy isCaptureButtonSourceAccessibility]);
      break;
  }
}

- (void)physicalButtonSceneOverridesDidChange:(id)change
{
  changeCopy = change;
  if (self->_bufferedPressAbsoluteTimestamp)
  {
    _physicalButtonTargetMatchesExpectedTargetScene = [(SBCaptureHardwareButton *)self _physicalButtonTargetMatchesExpectedTargetScene];
    v6 = _physicalButtonTargetMatchesExpectedTargetScene;
    v7 = SBLogButtonsCapture(_physicalButtonTargetMatchesExpectedTargetScene);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Buffer: Posting early!", buf, 2u);
      }

      [(SBCaptureHardwareButton *)self _postBufferedPress];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Buffer: Not posting yet", v9, 2u);
      }
    }
  }
}

- (void)performActionsForButtonLongPress:(id)press
{
  v3 = SBLogButtonsCapture(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Long Press (should be disabled?)", v4, 2u);
  }
}

- (void)performActionsForButtonDown:(id)down
{
  v8 = *MEMORY[0x277D85DE8];
  downCopy = down;
  v5 = SBLogButtonsCapture(downCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    downTime = [downCopy downTime];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Down (down time: %llu)", &v6, 0xCu);
  }

  -[SBCaptureHardwareButton _handleButtonDownAtTimestamp:isAccessibilityEvent:](self, "_handleButtonDownAtTimestamp:isAccessibilityEvent:", [downCopy downTime], 0);
}

- (void)performActionsForButtonUp:(id)up
{
  v11 = *MEMORY[0x277D85DE8];
  upCopy = up;
  v5 = mach_absolute_time();
  v6 = SBLogButtonsCapture(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    downTime = [upCopy downTime];
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Simulated Capture Button Up (down time: %llu, up time: %llu)", &v7, 0x16u);
  }

  -[SBCaptureHardwareButton _handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:](self, "_handleButtonUpAtTimestamp:forDownTimestamp:isAccessibilityEvent:", v5, [upCopy downTime], 0);
}

- (void)cancelHardwareButtonPress
{
  v17 = *MEMORY[0x277D85DE8];
  buttonActiveAssertion = self->_buttonActiveAssertion;
  if (buttonActiveAssertion)
  {
    [(BSInvalidatable *)buttonActiveAssertion invalidate];
    v4 = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = 0;
  }

  else
  {
    [(SBCaptureHardwareButton *)self _ignoreNextButtonUpForReason:@"coordinatorCancel"];
  }

  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  longPressTimer = self->_longPressTimer;
  self->_longPressTimer = 0;

  [(BSInvalidatable *)self->_hintDropletAssertion invalidate];
  hintDropletAssertion = self->_hintDropletAssertion;
  self->_hintDropletAssertion = 0;

  [(SBCaptureHardwareButton *)self _resetNextClickTimer];
  if (self->_overrideButtonUpHandler)
  {
    pressUpTimestamp = [(SBCaptureHardwareButtonFullPressRecognizer *)self->_captureButtonRecognizer pressUpTimestamp];
    pressDownTimestamp = [(SBCaptureHardwareButtonFullPressRecognizer *)self->_captureButtonRecognizer pressDownTimestamp];
    v9 = SBLogButtonsCapture(pressDownTimestamp);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = pressDownTimestamp;
      v15 = 2048;
      v16 = pressUpTimestamp;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Invoking scene override Button Up Action due to press cancellation (down time: %llu, up time: %llu)", &v13, 0x16u);
    }

    [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:1];
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = 0;
  }

  else
  {
    appActivator = self->_appActivator;
    _clickGesture = [(SBCaptureHardwareButton *)self _clickGesture];

    [(SBCaptureHardwareButtonAppActivator *)appActivator cancelActivationForGesture:_clickGesture];
  }
}

- (BOOL)handleSimulatedCaptureButtonEvent:(uint64_t)event
{
  if (event)
  {
    objc_opt_self();
    if (CAMIsCameraButtonEnabled())
    {
      [*(event + 272) processEvent:a2];
    }
  }

  return event != 0;
}

- (uint64_t)simulationButtonArbiter
{
  if (result)
  {
    return *(result + 272);
  }

  return result;
}

- (void)setSimulationButtonArbiter:(uint64_t)arbiter
{
  if (arbiter)
  {
    objc_storeStrong((arbiter + 272), a2);
  }
}

- (void)initWithActivationManager:(uint64_t)a1 suppressionManager:(uint64_t)a2 configurationCoordinator:restrictionCoordinator:mainWindowScene:setupManager:authenticationController:HUDController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButton.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"activationManager != nil"}];
}

- (void)initWithActivationManager:(uint64_t)a1 suppressionManager:(uint64_t)a2 configurationCoordinator:restrictionCoordinator:mainWindowScene:setupManager:authenticationController:HUDController:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButton.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"configurationCoordinator != nil"}];
}

- (void)initWithActivationManager:(uint64_t)a1 suppressionManager:(uint64_t)a2 configurationCoordinator:restrictionCoordinator:mainWindowScene:setupManager:authenticationController:HUDController:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButton.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"windowScene != nil"}];
}

- (void)requestActiveScanningModeUntilSceneAcquisition:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"can have either client assertion or launch period assertion, not both"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"SBCaptureHardwareButton.m";
    v10 = 1024;
    v11 = 210;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_sendCaptureIntentToEligibleForegroundScene
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, a2, a3, "sendCaptureIntent: posting to: (%{public}@)", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_handleButtonDownAtTimestamp:(const char *)a1 isAccessibilityEvent:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"shouldn't already have a hint droplet assertion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"SBCaptureHardwareButton.m";
    v10 = 1024;
    v11 = 563;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end