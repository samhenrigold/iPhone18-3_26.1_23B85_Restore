@interface SBLockHardwareButtonActions
- (BOOL)_sendButtonDownToRegisteredApp;
- (BOOL)_sendButtonUpToRegisteredApp;
- (BOOL)_shouldWaitForDoublePress;
- (BOOL)disallowsDoublePressForReason:(id *)reason;
- (BOOL)disallowsLongPressForReason:(id *)reason;
- (BOOL)disallowsSinglePressForReason:(id *)reason;
- (BOOL)disallowsTriplePressForReason:(id *)reason;
- (BOOL)performButtonUpPreActions;
- (BOOL)shouldBeginDoublePressGestureWhileObjectWithinProximity;
- (SBLockHardwareButtonActions)initWithHomeButtonType:(int64_t)type proximitySensorManager:(id)manager;
- (id)_foregroundAppRegisteredForLockButtonEvents;
- (id)hardwareButtonGestureParameters;
- (void)_performSOSDidTriggerActions;
- (void)_registeredLockButtonAppsDidChange:(id)change;
- (void)_sendButtonEventToApp:(id)app down:(BOOL)down;
- (void)_showPowerDownTransientOverlayOnForceReset;
- (void)performDoublePressActions;
- (void)performFinalButtonUpActions;
- (void)performForceResetSequenceBeganActions;
- (void)performInitialButtonDownActions;
- (void)performInitialButtonUpActions;
- (void)performKeyboardShortcut;
- (void)performLongPressActions;
- (void)performLongPressCancelledActions;
- (void)performSOSActionsWithUUID:(id)d triggerMechanism:(int64_t)mechanism completion:(id)completion;
- (void)performSecondButtonDownActions;
- (void)performSinglePressAction;
- (void)performSinglePressDidFailActions;
- (void)performTriplePressActions;
- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters;
@end

@implementation SBLockHardwareButtonActions

- (SBLockHardwareButtonActions)initWithHomeButtonType:(int64_t)type proximitySensorManager:(id)manager
{
  managerCopy = manager;
  v35.receiver = self;
  v35.super_class = SBLockHardwareButtonActions;
  v8 = [(SBLockHardwareButtonActions *)&v35 init];
  if (v8)
  {
    v9 = +[SBHardwareButtonService sharedInstance];
    hardwareButtonService = v8->_hardwareButtonService;
    v8->_hardwareButtonService = v9;

    v11 = +[SBWalletPreArmController sharedInstance];
    walletPreArmController = v8->_walletPreArmController;
    v8->_walletPreArmController = v11;

    objc_storeStrong(&v8->_proximitySensorManager, manager);
    mEMORY[0x277D495A0] = [MEMORY[0x277D495A0] sharedInstance];
    sosManager = v8->_sosManager;
    v8->_sosManager = mEMORY[0x277D495A0];

    v8->_homeButtonType = type;
    v8->_sosTriggerMechanism = 0;
    if (v8->_homeButtonType == 2)
    {
      v15 = +[SBSiriHardwareButtonInteraction hardwareButtonInteractionForLockButton];
      siriButtonInteraction = v8->_siriButtonInteraction;
      v8->_siriButtonInteraction = v15;

      [(SBHardwareButtonGestureParametersProviderBase *)v8->_siriButtonInteraction addHardwareButtonGestureParametersObserver:v8];
      hardwareButtonGestureParameters = [(SBSiriHardwareButtonInteraction *)v8->_siriButtonInteraction hardwareButtonGestureParameters];
      siriGestureParameters = v8->_siriGestureParameters;
      v8->_siriGestureParameters = hardwareButtonGestureParameters;

      v19 = +[SBAccessibilityHardwareButtonInteraction hardwareButtonInteractionForLockButton];
      accessibilityButtonInteraction = v8->_accessibilityButtonInteraction;
      v8->_accessibilityButtonInteraction = v19;

      [(SBHardwareButtonGestureParametersProviderBase *)v8->_accessibilityButtonInteraction addHardwareButtonGestureParametersObserver:v8];
      hardwareButtonGestureParameters2 = [(SBAccessibilityHardwareButtonInteraction *)v8->_accessibilityButtonInteraction hardwareButtonGestureParameters];
      accessibilityGestureParameters = v8->_accessibilityGestureParameters;
      v8->_accessibilityGestureParameters = hardwareButtonGestureParameters2;

      v23 = [[SBRecalibrateProximitySensorMultiphaseHardwareButtonInteraction alloc] initWithProximitySensorManager:v8->_proximitySensorManager];
      proximitySensorButtonInteraction = v8->_proximitySensorButtonInteraction;
      v8->_proximitySensorButtonInteraction = v23;

      [(SBHardwareButtonInteraction *)v8->_proximitySensorButtonInteraction addHardwareButtonGestureParametersObserver:v8];
      hardwareButtonGestureParameters3 = [(SBHardwareButtonInteraction *)v8->_proximitySensorButtonInteraction hardwareButtonGestureParameters];
      proximitySensorGestureParameters = v8->_proximitySensorGestureParameters;
      v8->_proximitySensorGestureParameters = hardwareButtonGestureParameters3;

      v27 = [[SBDoubleClickSleepWakeHardwareButtonInteraction alloc] initWithProximitySensorManager:v8->_proximitySensorManager];
    }

    else
    {
      v28 = [[SBRecalibrateProximitySensorHardwareButtonInteraction alloc] initWithProximitySensorManager:v8->_proximitySensorManager];
      v29 = v8->_proximitySensorButtonInteraction;
      v8->_proximitySensorButtonInteraction = v28;

      [(SBHardwareButtonInteraction *)v8->_proximitySensorButtonInteraction addHardwareButtonGestureParametersObserver:v8];
      hardwareButtonGestureParameters4 = [(SBHardwareButtonInteraction *)v8->_proximitySensorButtonInteraction hardwareButtonGestureParameters];
      v31 = v8->_proximitySensorGestureParameters;
      v8->_proximitySensorGestureParameters = hardwareButtonGestureParameters4;

      v27 = objc_alloc_init(SBSleepWakeHardwareButtonInteraction);
    }

    sleepWakeButtonInteraction = v8->_sleepWakeButtonInteraction;
    v8->_sleepWakeButtonInteraction = &v27->super;

    [(SBHardwareButtonGestureParametersProviderBase *)v8 addHardwareButtonGestureParametersObserver:v8->_sleepWakeButtonInteraction];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__registeredLockButtonAppsDidChange_ name:@"SBApplicationsRegisteredForLockButtonEventsChangedNotification" object:0];
  }

  return v8;
}

- (void)performFinalButtonUpActions
{
  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction observeFinalPressUp];
  }

  if (objc_opt_respondsToSelector())
  {
    sleepWakeButtonInteraction = self->_sleepWakeButtonInteraction;

    [(SBSleepWakeHardwareButtonInteraction *)sleepWakeButtonInteraction observeFinalPressUp];
  }
}

- (void)performInitialButtonDownActions
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, self->_siriButtonInteraction);
  if (v5)
  {
    [v5 setInitialPressDownTime:CFAbsoluteTimeGetCurrent()];
  }

  self->_isButtonDown = 1;
  v6 = dispatch_get_global_queue(0, 0);
  dispatch_async(v6, &__block_literal_global_16);

  if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = [(SBHardwareButtonInteraction *)self->_proximitySensorButtonInteraction consumeInitialPressDown], !v7))
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    v12 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v12 transientOverlayPresentationManager];
    v9 = [transientOverlayPresentationManager transientOverlayPresenterForWindowScene:activeDisplayWindowScene];

    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    if ([systemApertureControllerForMainDisplay handleLockButtonPress])
    {
      bannerManager = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:1]);
      if (!os_log_type_enabled(bannerManager, OS_LOG_TYPE_DEFAULT))
      {
LABEL_44:

        goto LABEL_45;
      }

      lockOutController = NSStringFromSelector(a2);
      *buf = 138543362;
      v55 = lockOutController;
      _os_log_impl(&dword_21ED4E000, bannerManager, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because the system aperture controller is handling it", buf, 0xCu);
LABEL_43:

      goto LABEL_44;
    }

    aSelector = a2;
    v53 = v5;
    bannerManager = [SBApp bannerManager];
    v16 = [bannerManager bannerWindowInWindowScene:activeDisplayWindowScene];
    [v16 windowLevel];
    if (([v9 hasPresentationAboveWindowLevel:?]& 1) != 0)
    {
    }

    else
    {
      handleLockButtonPress = [bannerManager handleLockButtonPress];

      if (handleLockButtonPress)
      {
        lockOutController = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:1]);
        v5 = v53;
        if (!os_log_type_enabled(lockOutController, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v18 = NSStringFromSelector(aSelector);
        *buf = 138543362;
        v55 = v18;
        v19 = "%{public}@ result: ignoring lock down because a banner manager is handling it";
LABEL_18:
        _os_log_impl(&dword_21ED4E000, lockOutController, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);

        goto LABEL_43;
      }
    }

    if ([v9 handleLockButtonPress])
    {
      lockOutController = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:1]);
      v5 = v53;
      if (!os_log_type_enabled(lockOutController, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      v18 = NSStringFromSelector(aSelector);
      *buf = 138543362;
      v55 = v18;
      v19 = "%{public}@ result: ignoring lock down because a transient overlay is handling it";
      goto LABEL_18;
    }

    lockOutController = [SBApp lockOutController];
    if ([lockOutController isProximityReaderBlocked])
    {
      v50 = systemApertureControllerForMainDisplay;
      systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
      proximityReaderUISceneController = [systemUIScenesCoordinator proximityReaderUISceneController];
      if ([proximityReaderUISceneController handleLockButtonPress])
      {
        v22 = systemUIScenesCoordinator;
        v23 = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:1]);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = NSStringFromSelector(aSelector);
          *buf = 138543362;
          v55 = v24;
          _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because a proximity reader is handling it", buf, 0xCu);
        }

        v5 = v53;
        v25 = v22;
        systemApertureControllerForMainDisplay = v50;
        goto LABEL_42;
      }

      systemApertureControllerForMainDisplay = v50;
    }

    v48 = v9;
    v51 = lockOutController;
    v26 = +[SBLockScreenManager sharedInstance];
    lockScreenEnvironment = [v26 lockScreenEnvironment];
    buttonEventsHandler = [lockScreenEnvironment buttonEventsHandler];

    v49 = buttonEventsHandler;
    handleLockButtonPress2 = [buttonEventsHandler handleLockButtonPress];
    if (handleLockButtonPress2)
    {
      v30 = SBLogButtonsLock(handleLockButtonPress2);
      v25 = buttonEventsHandler;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = NSStringFromSelector(aSelector);
        *buf = 138543618;
        v55 = v31;
        v56 = 2114;
        v57 = buttonEventsHandler;
        _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because a lockscreen is handling it: %{public}@", buf, 0x16u);
      }

      v5 = v53;
      lockOutController = v51;
      v9 = v48;
      goto LABEL_42;
    }

    v32 = +[SBLockScreenManager sharedInstance];
    isSupressingLockButton = [v32 isSupressingLockButton];

    if (isSupressingLockButton)
    {
      v35 = SBLogButtonsLock(v34);
      v9 = v48;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = NSStringFromSelector(aSelector);
        *buf = 138543362;
        v55 = v36;
        _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because lock button is supressed", buf, 0xCu);
      }

      [(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:1];
      v5 = v53;
      v25 = v49;
      lockOutController = v51;
      goto LABEL_42;
    }

    v37 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    handleLockButtonPress3 = [v37 handleLockButtonPress];

    v9 = v48;
    if (handleLockButtonPress3)
    {
      v25 = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:1]);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v39 = NSStringFromSelector(aSelector);
        *buf = 138543362;
        v55 = v39;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because main switcher is handling it", buf, 0xCu);
      }

      v5 = v53;
    }

    else
    {
      _sendButtonDownToRegisteredApp = [(SBLockHardwareButtonActions *)self _sendButtonDownToRegisteredApp];
      lockOutController = v51;
      if (_sendButtonDownToRegisteredApp)
      {
        v25 = SBLogButtonsLock(_sendButtonDownToRegisteredApp);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v41 = NSStringFromSelector(aSelector);
          appsRegisteredForLockButtonEvents = [SBApp appsRegisteredForLockButtonEvents];
          firstObject = [appsRegisteredForLockButtonEvents firstObject];
          *buf = 138543618;
          v55 = v41;
          v56 = 2114;
          v57 = firstObject;
          _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ result: registered app handled initial button down: %{public}@", buf, 0x16u);

          lockOutController = v51;
        }

        v5 = v53;
        goto LABEL_42;
      }

      v5 = v53;
      if ((objc_opt_respondsToSelector() & 1) != 0 && (v44 = [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction consumeInitialPressDown], v44))
      {
        v25 = SBLogButtonsLock(v44);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v45 = NSStringFromSelector(aSelector);
        *buf = 138543362;
        v55 = v45;
        v46 = "%{public}@ result: Siri handled it";
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_43;
        }

        consumeInitialPressDown = [(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction consumeInitialPressDown];
        if (!consumeInitialPressDown)
        {
          goto LABEL_43;
        }

        v25 = SBLogButtonsLock(consumeInitialPressDown);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v45 = NSStringFromSelector(aSelector);
        *buf = 138543362;
        v55 = v45;
        v46 = "%{public}@ result: Sleep/wake interaction handled it";
      }

      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
    }

    lockOutController = v51;
LABEL_42:

    goto LABEL_43;
  }

  activeDisplayWindowScene = SBLogButtonsLock(v7);
  if (os_log_type_enabled(activeDisplayWindowScene, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v55 = v9;
    v56 = 2114;
    v57 = objc_opt_class();
    systemApertureControllerForMainDisplay = v57;
    _os_log_impl(&dword_21ED4E000, activeDisplayWindowScene, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignoring lock down because %{public}@ handled it", buf, 0x16u);
LABEL_45:
  }
}

- (void)performInitialButtonUpActions
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction observeInitialPressUp];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction consumeInitialPressUp]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(a2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ result: Sleep/wake interaction handled it", &v6, 0xCu);
    }
  }
}

- (void)performSecondButtonDownActions
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v4 = SBLogButtonsLock([(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction consumeSecondPressDown]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(a2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ result: Sleep/wake interaction handled it", &v6, 0xCu);
    }
  }
}

- (void)performLongPressActions
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_lastLockButtonEventRecipient)
  {
    homeHardwareButton = SBLogButtonsLock(self);
    if (os_log_type_enabled(homeHardwareButton, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(a2);
      v22 = 138543362;
      v23 = v4;
      v5 = "%{public}@ result: ignored because there's a lock button recipient waiting for an up event";
LABEL_13:
      _os_log_impl(&dword_21ED4E000, homeHardwareButton, OS_LOG_TYPE_DEFAULT, v5, &v22, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v7 = [(SBHardwareButtonService *)self->_hardwareButtonService consumeLockButtonLongPressWithPriority:0];
  if (v7)
  {
    homeHardwareButton = SBLogButtonsLock(v7);
    if (os_log_type_enabled(homeHardwareButton, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(a2);
      v22 = 138543362;
      v23 = v4;
      v5 = "%{public}@ result: button consumer app handled it";
      goto LABEL_13;
    }

LABEL_14:

    return;
  }

  v8 = +[SBSyncController sharedInstance];
  isRestoring = [v8 isRestoring];

  if (isRestoring)
  {
    homeHardwareButton = SBLogButtonsLock(v10);
    if (os_log_type_enabled(homeHardwareButton, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(a2);
      v22 = 138543362;
      v23 = v4;
      v5 = "%{public}@ result: ignored because we're restoring";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = +[SBSyncController sharedInstance];
  isResetting = [v11 isResetting];

  if (isResetting)
  {
    homeHardwareButton = SBLogButtonsLock(v13);
    if (os_log_type_enabled(homeHardwareButton, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(a2);
      v22 = 138543362;
      v23 = v4;
      v5 = "%{public}@ result: ignored because we're resetting";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (self->_homeButtonType != 2)
  {
    homeHardwareButton = [SBApp homeHardwareButton];
    isButtonDown = [homeHardwareButton isButtonDown];
    v17 = isButtonDown;
    v18 = SBLogButtonsLock(isButtonDown);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = NSStringFromSelector(a2);
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignored because home button is down", &v22, 0xCu);
      }
    }

    else
    {
      if (v19)
      {
        v21 = NSStringFromSelector(a2);
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ result: showing power down transient overlay", &v22, 0xCu);
      }

      v18 = +[SBWorkspace mainWorkspace];
      [v18 presentPowerDownTransientOverlay];
    }

    goto LABEL_14;
  }

  v14 = SBLogButtonsLock(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v22 = 138543362;
    v23 = v15;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ result: sending to Siri", &v22, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction consumeLongPress];
  }
}

- (void)_showPowerDownTransientOverlayOnForceReset
{
  v10 = *MEMORY[0x277D85DE8];
  isButtonDown = self->_isButtonDown;
  v4 = SBLogButtonsLock(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isButtonDown)
  {
    if (v5)
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ result: showing power down transient overlay now", &v8, 0xCu);
    }

    v4 = +[SBWorkspace mainWorkspace];
    [v4 presentPowerDownTransientOverlay];
  }

  else if (v5)
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ result: button isn't down anymore, not showing power down transient overlay", &v8, 0xCu);
  }
}

- (void)performForceResetSequenceBeganActions
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SBLogButtonsLock(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ result: showing power down transient overlay soon", &v6, 0xCu);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showPowerDownTransientOverlayOnForceReset object:0];
  [(SBLockHardwareButtonActions *)self performSelector:sel__showPowerDownTransientOverlayOnForceReset withObject:0 afterDelay:0.35];
}

- (void)performSinglePressDidFailActions
{
  if (objc_opt_respondsToSelector())
  {
    sleepWakeButtonInteraction = self->_sleepWakeButtonInteraction;

    [(SBSleepWakeHardwareButtonInteraction *)sleepWakeButtonInteraction observeSinglePressDidFail];
  }
}

- (BOOL)performButtonUpPreActions
{
  self->_isButtonDown = 0;
  [(SBLockHardwareButtonActions *)self _sendButtonUpToRegisteredApp];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showPowerDownTransientOverlayOnForceReset object:0];
  return 1;
}

- (void)performSinglePressAction
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction observeFinalPressUp];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D67A80] object:0];

  _sendButtonUpToRegisteredApp = [(SBLockHardwareButtonActions *)self _sendButtonUpToRegisteredApp];
  if (_sendButtonUpToRegisteredApp)
  {
    v6 = SBLogButtonsLock(_sendButtonUpToRegisteredApp);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *v24 = 138543362;
      *&v24[4] = v7;
      v8 = "%{public}@ result: registered app handled it";
LABEL_17:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v8, v24, 0xCu);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ([(SBLockHardwareButtonActions *)self _isSOSActive]&& self->_sosTriggerMechanism == 3)
  {
    v6 = SBLogButtonsLock([(SOSManager *)self->_sosManager dismissSOSWithCompletion:&__block_literal_global_94]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *v24 = 138543362;
      *&v24[4] = v7;
      v8 = "%{public}@ result: SOS dismiss handled it";
      goto LABEL_17;
    }

LABEL_19:

    v12 = 1;
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    consumeSinglePressUp = [(SBHardwareButtonInteraction *)self->_proximitySensorButtonInteraction consumeSinglePressUp];
    if (consumeSinglePressUp)
    {
      v6 = SBLogButtonsLock(consumeSinglePressUp);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = NSStringFromSelector(a2);
        *v24 = 138543618;
        *&v24[4] = v7;
        *&v24[12] = 2114;
        *&v24[14] = objc_opt_class();
        v10 = *&v24[14];
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ result: %{public}@ handled it", v24, 0x16u);

LABEL_18:
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v11 = [(SBHardwareButtonService *)self->_hardwareButtonService consumeLockButtonSinglePressUpWithPriority:0];
  if (v11)
  {
    v6 = SBLogButtonsLock(v11);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      *v24 = 138543362;
      *&v24[4] = v7;
      v8 = "%{public}@ result: button consumer app handled it";
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    consumeSinglePressUp2 = [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction consumeSinglePressUp];
    if (consumeSinglePressUp2)
    {
      v6 = SBLogButtonsLock(consumeSinglePressUp2);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v7 = NSStringFromSelector(a2);
      *v24 = 138543362;
      *&v24[4] = v7;
      v8 = "%{public}@ result: Siri handled it";
      goto LABEL_17;
    }
  }

  v12 = 0;
LABEL_20:
  v13 = [(SBLockHardwareButtonActions *)self _isSOSActive:*v24];
  if (v13)
  {
    v14 = SBLogButtonsLock(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *v24 = 138543362;
      *&v24[4] = v15;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignored because _isSOSActive", v24, 0xCu);
    }

    v12 = 1;
  }

  v16 = +[SBMainWorkspace sharedInstance];
  isPowerDownTransientOverlayTopmost = [v16 isPowerDownTransientOverlayTopmost];

  if (isPowerDownTransientOverlayTopmost)
  {
    v19 = SBLogButtonsLock(v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:

      return;
    }

    v20 = NSStringFromSelector(a2);
    *v24 = 138543362;
    *&v24[4] = v20;
    v21 = "%{public}@ result: ignored because power down alert is topmost";
LABEL_27:
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, v21, v24, 0xCu);

    goto LABEL_28;
  }

  if (v12 & 1) == 0 && (objc_opt_respondsToSelector())
  {
    consumeSinglePressUp3 = [(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction consumeSinglePressUp];
    if (consumeSinglePressUp3)
    {
      v19 = SBLogButtonsLock(consumeSinglePressUp3);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v20 = NSStringFromSelector(a2);
      *v24 = 138543362;
      *&v24[4] = v20;
      v21 = "%{public}@ result: Sleep/wake interaction handled it";
      goto LABEL_27;
    }
  }
}

- (void)performDoublePressActions
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction observeFinalPressUp];
  }

  v4 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v4 transientOverlayPresentationManager];

  if (+[SBInCallPresentationManager isSpecializedAPISupported](SBInCallPresentationManager, "isSpecializedAPISupported") || (v6 = [transientOverlayPresentationManager handleLockButtonPress], !v6))
  {
    v9 = 0;
  }

  else
  {
    v7 = SBLogButtonsLock(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      v23 = 138543362;
      v24 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ result: transient overlay is handling it as a separate single press", &v23, 0xCu);
    }

    v9 = 1;
  }

  _isSOSActive = [(SBLockHardwareButtonActions *)self _isSOSActive];
  if (_isSOSActive)
  {
    v11 = SBLogButtonsLock(_isSOSActive);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v23 = 138543362;
      v24 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ result: ignored because SOS is active", &v23, 0xCu);
    }

    v9 = 1;
  }

  v13 = +[SBMainWorkspace sharedInstance];
  isPowerDownTransientOverlayTopmost = [v13 isPowerDownTransientOverlayTopmost];

  if (isPowerDownTransientOverlayTopmost)
  {
    v16 = SBLogButtonsLock(v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_19;
    }

    v17 = NSStringFromSelector(a2);
    v23 = 138543362;
    v24 = v17;
    v18 = "%{public}@ result: ignored because power down alert is topmost";
LABEL_16:
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, v18, &v23, 0xCu);

    goto LABEL_17;
  }

  if (v9)
  {
    goto LABEL_19;
  }

  [MEMORY[0x277CD4790] notifyEvent:0];
  v19 = [(SBHardwareButtonService *)self->_hardwareButtonService consumeLockButtonDoublePressUpWithPriority:0];
  if (v19)
  {
    v16 = SBLogButtonsLock(v19);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = NSStringFromSelector(a2);
    v23 = 138543362;
    v24 = v17;
    v18 = "%{public}@ result: button consumer app handled it";
    goto LABEL_16;
  }

  isPreArmTriggeredByLockButtonDoublePress = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmTriggeredByLockButtonDoublePress];
  if (!isPreArmTriggeredByLockButtonDoublePress || (isPreArmTriggeredByLockButtonDoublePress = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmAllowed], !isPreArmTriggeredByLockButtonDoublePress))
  {
    v16 = SBLogButtonsLock(isPreArmTriggeredByLockButtonDoublePress);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = NSStringFromSelector(a2);
    v23 = 138543362;
    v24 = v17;
    v18 = "%{public}@ result: ignored";
    goto LABEL_16;
  }

  v21 = SBLogButtonsLock(isPreArmTriggeredByLockButtonDoublePress);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = NSStringFromSelector(a2);
    v23 = 138543362;
    v24 = v22;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ result: presenting wallet pre-arm", &v23, 0xCu);
  }

  [(SBWalletPreArmController *)self->_walletPreArmController presentPreArmInterfaceForWalletConsumer];
LABEL_19:
}

- (void)performTriplePressActions
{
  v10 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction observeFinalPressUp];
  }

  v4 = objc_opt_respondsToSelector();
  if ((v4 & 1) != 0 && (v4 = [(SBAccessibilityHardwareButtonInteraction *)self->_accessibilityButtonInteraction consumeTriplePressUp], v4))
  {
    v5 = SBLogButtonsLock(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138543362;
      v9 = v6;
      v7 = "%{public}@ result: accessibility handled it";
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
    }
  }

  else
  {
    v5 = SBLogButtonsLock(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138543362;
      v9 = v6;
      v7 = "%{public}@ result: ignored";
      goto LABEL_9;
    }
  }
}

- (void)performSOSActionsWithUUID:(id)d triggerMechanism:(int64_t)mechanism completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  self->_sosTriggerMechanism = mechanism;
  v10 = +[SBAlertItemsController sharedInstance];
  hasVisibleSuperModalAlert = [v10 hasVisibleSuperModalAlert];

  if (hasVisibleSuperModalAlert)
  {
    v13 = SBLogButtonsLock(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBLockHardwareButtonActions performSOSActionsWithUUID:v13 triggerMechanism:? completion:?];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v14 = dispatch_get_global_queue(21, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__SBLockHardwareButtonActions_performSOSActionsWithUUID_triggerMechanism_completion___block_invoke;
    v15[3] = &unk_2783AB780;
    v15[4] = self;
    v16 = dCopy;
    mechanismCopy = mechanism;
    v17 = completionCopy;
    dispatch_async(v14, v15);
  }
}

void __85__SBLockHardwareButtonActions_performSOSActionsWithUUID_triggerMechanism_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x277D495A0];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__SBLockHardwareButtonActions_performSOSActionsWithUUID_triggerMechanism_completion___block_invoke_2;
  v5[3] = &unk_2783AB758;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 48);
  [v2 triggerSOSWithUUID:v3 triggerMechanism:v4 completion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __85__SBLockHardwareButtonActions_performSOSActionsWithUUID_triggerMechanism_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained;
    BSDispatchMain();
  }
}

- (void)performLongPressCancelledActions
{
  v3 = SBLogButtonsLock(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Performing long press cancelled actions", v4, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBSiriHardwareButtonInteraction *)self->_siriButtonInteraction observeLongPressCanceled];
  }
}

- (void)performKeyboardShortcut
{
  [(SBSleepWakeHardwareButtonInteraction *)self->_sleepWakeButtonInteraction setInhibitNextSinglePressUp:0];

  [(SBLockHardwareButtonActions *)self performSinglePressAction];
}

- (BOOL)_shouldWaitForDoublePress
{
  v23 = *MEMORY[0x277D85DE8];
  isPreArmTriggeredByLockButtonDoublePress = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmTriggeredByLockButtonDoublePress];
  if (isPreArmTriggeredByLockButtonDoublePress)
  {
    isPreArmAvailable = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmAvailable];
    isPreArmExternallySuppressed = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmExternallySuppressed];
  }

  else
  {
    isPreArmAvailable = 0;
    isPreArmExternallySuppressed = 0;
  }

  maximumPressCount = [(SBHardwareButtonGestureParameters *)self->_accessibilityGestureParameters maximumPressCount];
  hasConsumersForLockButtonDoublePressUp = [(SBHardwareButtonService *)self->_hardwareButtonService hasConsumersForLockButtonDoublePressUp];
  v8 = hasConsumersForLockButtonDoublePressUp;
  v9 = (isPreArmAvailable || isPreArmExternallySuppressed) | hasConsumersForLockButtonDoublePressUp | (maximumPressCount > 2);
  v10 = SBLogButtonsLock(hasConsumersForLockButtonDoublePressUp);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67110400;
    v12[1] = v9 & 1;
    v13 = 1024;
    v14 = isPreArmTriggeredByLockButtonDoublePress;
    v15 = 1024;
    v16 = isPreArmAvailable;
    v17 = 1024;
    v18 = isPreArmExternallySuppressed;
    v19 = 1024;
    v20 = maximumPressCount > 2;
    v21 = 1024;
    v22 = v8 & 1;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Lock button single press should wait for double-press timeout: %{BOOL}u  (preArmDevice: %{BOOL}u preArmAvailable: %{BOOL}u preArmSuppressed: %{BOOL}u axTripleClickEnabled: %{BOOL}u buttonConsumer: %{BOOL}u)", v12, 0x26u);
  }

  return v9 & 1;
}

- (BOOL)disallowsSinglePressForReason:(id *)reason
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  proximitySensorButtonInteraction = self->_proximitySensorButtonInteraction;

  return [(SBHardwareButtonInteraction *)proximitySensorButtonInteraction disallowsSinglePressForReason:reason];
}

- (BOOL)disallowsDoublePressForReason:(id *)reason
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBHardwareButtonInteraction *)self->_proximitySensorButtonInteraction disallowsDoublePressForReason:reason]& 1) == 0)
  {
    v5 = +[SBWorkspace mainWorkspace];
    inCallPresentationManager = [v5 inCallPresentationManager];
    disallowsLockHardwareButtonDoublePress = [inCallPresentationManager disallowsLockHardwareButtonDoublePress];

    if (disallowsLockHardwareButtonDoublePress)
    {
      v8 = @"InCall handling all device lock button presses";
    }

    else
    {
      if ([(SBLockHardwareButtonActions *)self _shouldWaitForDoublePress])
      {
        return 0;
      }

      v8 = @"nothing active wants it";
    }

    *reason = v8;
  }

  return 1;
}

- (BOOL)disallowsTriplePressForReason:(id *)reason
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SBHardwareButtonInteraction *)self->_proximitySensorButtonInteraction disallowsTriplePressForReason:reason]& 1) != 0)
  {
    return 1;
  }

  if ([(SBHardwareButtonGestureParameters *)self->_accessibilityGestureParameters maximumPressCount]<= 2)
  {
    *reason = @"nothing active wants it";
    return 1;
  }

  return 0;
}

- (BOOL)disallowsLongPressForReason:(id *)reason
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  proximitySensorButtonInteraction = self->_proximitySensorButtonInteraction;

  return [(SBHardwareButtonInteraction *)proximitySensorButtonInteraction disallowsLongPressForReason:reason];
}

- (BOOL)shouldBeginDoublePressGestureWhileObjectWithinProximity
{
  if (self->_homeButtonType == 2)
  {
    return 1;
  }

  else
  {
    return MGGetBoolAnswer() ^ 1;
  }
}

- (id)hardwareButtonGestureParameters
{
  v3 = objc_alloc_init(SBMutableHardwareButtonGestureParameters);
  if ([(SBLockHardwareButtonActions *)self _usesLockButtonForSecureIntent])
  {
    [(SBHardwareButtonGestureParameters *)self->_accessibilityGestureParameters multiplePressTimeInterval];
    v5 = v4;
    _foregroundAppRegisteredForLockButtonEvents = [(SBLockHardwareButtonActions *)self _foregroundAppRegisteredForLockButtonEvents];
    if (_foregroundAppRegisteredForLockButtonEvents)
    {
      maximumPressCount = 1;
    }

    else
    {
      maximumPressCount = [(SBHardwareButtonGestureParameters *)self->_accessibilityGestureParameters maximumPressCount];
      maximumPressCount2 = [(SBHardwareButtonGestureParameters *)self->_proximitySensorGestureParameters maximumPressCount];
      if (maximumPressCount2)
      {
        maximumPressCount = maximumPressCount2;
      }
    }
  }

  else
  {
    maximumPressCount = 1;
    v5 = 0.3;
  }

  v9 = 2.5;
  if ([(SBLockHardwareButtonActions *)self _usesLockButtonForSiri])
  {
    [(SBHardwareButtonGestureParameters *)self->_siriGestureParameters longPressTimeInterval];
    if (v10 <= 0.0)
    {
      v9 = 0.4;
    }

    else
    {
      v9 = v10;
    }
  }

  [(SBMutableHardwareButtonGestureParameters *)v3 setMaximumPressCount:maximumPressCount];
  [(SBMutableHardwareButtonGestureParameters *)v3 setMultiplePressTimeInterval:v5];
  [(SBMutableHardwareButtonGestureParameters *)v3 setLongPressTimeInterval:v9];

  return v3;
}

- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters
{
  providerCopy = provider;
  parametersCopy = parameters;
  if (self->_accessibilityButtonInteraction == providerCopy)
  {
    v8 = SBLogButtonsHome();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "reconfiguring due to AX prefs change", buf, 2u);
    }

    objc_storeStrong(&self->_accessibilityGestureParameters, parameters);
  }

  if (self->_siriButtonInteraction == providerCopy)
  {
    v9 = SBLogButtonsHome();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "reconfiguring due to Siri prefs change", v13, 2u);
    }

    objc_storeStrong(&self->_siriGestureParameters, parameters);
  }

  if (self->_proximitySensorButtonInteraction == providerCopy)
  {
    v10 = SBLogButtonsHome();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "reconfiguring due to proximitySensor change", v12, 2u);
    }

    objc_storeStrong(&self->_proximitySensorGestureParameters, parameters);
  }

  hardwareButtonGestureParameters = [(SBLockHardwareButtonActions *)self hardwareButtonGestureParameters];
  [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:hardwareButtonGestureParameters];
}

- (void)_performSOSDidTriggerActions
{
  if ([(SBLockHardwareButtonActions *)self isButtonDown])
  {
    sleepWakeButtonInteraction = self->_sleepWakeButtonInteraction;

    [(SBSleepWakeHardwareButtonInteraction *)sleepWakeButtonInteraction setInhibitNextSinglePressUp:1];
  }
}

- (void)_registeredLockButtonAppsDidChange:(id)change
{
  hardwareButtonGestureParameters = [(SBLockHardwareButtonActions *)self hardwareButtonGestureParameters];
  [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:hardwareButtonGestureParameters];
}

- (id)_foregroundAppRegisteredForLockButtonEvents
{
  appsRegisteredForLockButtonEvents = [SBApp appsRegisteredForLockButtonEvents];
  firstObject = [appsRegisteredForLockButtonEvents firstObject];

  if (firstObject && SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(firstObject))
  {
    v4 = firstObject;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_sendButtonUpToRegisteredApp
{
  lastLockButtonEventRecipient = self->_lastLockButtonEventRecipient;
  if (lastLockButtonEventRecipient)
  {
    [(SBLockHardwareButtonActions *)self _sendButtonEventToApp:self->_lastLockButtonEventRecipient down:0];
    v4 = self->_lastLockButtonEventRecipient;
    self->_lastLockButtonEventRecipient = 0;
  }

  return lastLockButtonEventRecipient != 0;
}

- (BOOL)_sendButtonDownToRegisteredApp
{
  _foregroundAppRegisteredForLockButtonEvents = [(SBLockHardwareButtonActions *)self _foregroundAppRegisteredForLockButtonEvents];
  if (_foregroundAppRegisteredForLockButtonEvents)
  {
    objc_storeStrong(&self->_lastLockButtonEventRecipient, _foregroundAppRegisteredForLockButtonEvents);
    [(SBLockHardwareButtonActions *)self _sendButtonEventToApp:self->_lastLockButtonEventRecipient down:1];
  }

  return _foregroundAppRegisteredForLockButtonEvents != 0;
}

- (void)_sendButtonEventToApp:(id)app down:(BOOL)down
{
  downCopy = down;
  v17 = *MEMORY[0x277D85DE8];
  appCopy = app;
  bundleIdentifier = [appCopy bundleIdentifier];
  processState = [appCopy processState];

  v9 = [processState pid];
  v11 = SBLogButtonsLock(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ result: sending to %{public}@", &v13, 0x16u);
  }

  SBSendFakeButtonPressEventToApplication(bundleIdentifier, v9, 104, downCopy);
}

@end