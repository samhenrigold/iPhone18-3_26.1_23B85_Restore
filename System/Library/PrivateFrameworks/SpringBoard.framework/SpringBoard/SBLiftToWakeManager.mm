@interface SBLiftToWakeManager
- (BOOL)_isLockScreenMainPageVisible;
- (BOOL)handleEvent:(id)event;
- (NSString)coverSheetIdentifier;
- (NSString)description;
- (SBBacklightController)_backlightController;
- (SBIdleTimerGlobalCoordinator)_idleTimerCoordinator;
- (SBLiftToWakeManager)init;
- (SBLockScreenManager)_lockScreenManager;
- (SBMainDisplayPolicyAggregator)_policyAggregator;
- (id)_initWithLiftToWakeController:(id)controller;
- (int64_t)participantState;
- (void)_backlightWillTurnOn:(id)on;
- (void)dealloc;
- (void)invalidate;
- (void)liftToWakeController:(id)controller didObserveTransition:(int64_t)transition deviceOrientation:(int64_t)orientation;
@end

@implementation SBLiftToWakeManager

- (SBMainDisplayPolicyAggregator)_policyAggregator
{
  accessor_policyAggregator = self->_accessor_policyAggregator;
  if (accessor_policyAggregator)
  {
    policyAggregator = accessor_policyAggregator;
  }

  else
  {
    v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    policyAggregator = [v4 policyAggregator];
  }

  return policyAggregator;
}

- (SBLockScreenManager)_lockScreenManager
{
  accessor_lockScreenManager = self->_accessor_lockScreenManager;
  if (accessor_lockScreenManager)
  {
    v3 = accessor_lockScreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstance];
  }

  return v3;
}

- (int64_t)participantState
{
  if ([(SBLiftToWakeController *)self->_liftToWakeController isEnabled])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBLiftToWakeManager)init
{
  v3 = +[SBLiftToWakeController sharedController];
  v4 = [(SBLiftToWakeManager *)self _initWithLiftToWakeController:v3];

  return v4;
}

- (id)_initWithLiftToWakeController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBLiftToWakeManager;
  v6 = [(SBLiftToWakeManager *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_liftToWakeController, controller);
    [p_isa[1] addObserver:p_isa];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:p_isa selector:sel__backlightWillTurnOn_ name:*MEMORY[0x277D67A38] object:0];
  }

  return p_isa;
}

- (void)dealloc
{
  [(SBLiftToWakeManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBLiftToWakeManager;
  [(SBLiftToWakeManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_gestureWokeScreen withName:@"gestureWokeScreen"];
  v5 = [v3 appendBool:-[SBLiftToWakeController isEnabled](self->_liftToWakeController withName:{"isEnabled"), @"enabled"}];
  v6 = [v3 appendObject:self->_liftToWakeController withName:@"liftToWakeController"];
  build = [v3 build];

  return build;
}

- (void)_backlightWillTurnOn:(id)on
{
  userInfo = [on userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D67A10]];
  intValue = [v5 intValue];

  if (intValue != 13)
  {

    [(SBLiftToWakeManager *)self _setGestureWokeScreen:intValue == 20];
  }
}

- (SBBacklightController)_backlightController
{
  accessor_backlightController = self->_accessor_backlightController;
  if (accessor_backlightController)
  {
    v3 = accessor_backlightController;
  }

  else
  {
    v3 = +[SBBacklightController sharedInstance];
  }

  return v3;
}

- (SBIdleTimerGlobalCoordinator)_idleTimerCoordinator
{
  accessor_idleTimerCoordinator = self->_accessor_idleTimerCoordinator;
  if (accessor_idleTimerCoordinator)
  {
    v3 = accessor_idleTimerCoordinator;
  }

  else
  {
    v3 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  }

  return v3;
}

- (BOOL)_isLockScreenMainPageVisible
{
  _lockScreenManager = [(SBLiftToWakeManager *)self _lockScreenManager];
  lockScreenEnvironment = [_lockScreenManager lockScreenEnvironment];
  contentStateProvider = [lockScreenEnvironment contentStateProvider];

  if ([_lockScreenManager isLockScreenVisible] && objc_msgSend(contentStateProvider, "isMainPageVisible"))
  {
    v5 = [_lockScreenManager isUIUnlocking] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(SBLiftToWakeController *)self->_liftToWakeController removeObserver:self];
    _lockScreenManager = [(SBLiftToWakeManager *)self _lockScreenManager];
    coverSheetViewController = [_lockScreenManager coverSheetViewController];
    [coverSheetViewController unregisterExternalEventHandler:self];
  }
}

- (void)liftToWakeController:(id)controller didObserveTransition:(int64_t)transition deviceOrientation:(int64_t)orientation
{
  v62[3] = *MEMORY[0x277D85DE8];
  v8 = NSStringFromSBLiftToWakeTransition(transition);
  v9 = SBLogLiftToWake(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v56 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Transition received: %{public}@", buf, 0xCu);
  }

  v10 = BKSHIDServicesProximityDetectionActive();
  if (!v10)
  {
    _policyAggregator = [(SBLiftToWakeManager *)self _policyAggregator];
    v54 = 0;
    v13 = [_policyAggregator allowsCapability:25 explanation:&v54];
    v14 = v54;

    if (v13)
    {
      if (transition <= 1)
      {
        if (transition)
        {
          if (transition == 1)
          {
LABEL_19:
            caseIsEnabledAndLatched = [SBApp caseIsEnabledAndLatched];
            if (caseIsEnabledAndLatched)
            {
              _idleTimerCoordinator = SBLogLiftToWake(caseIsEnabledAndLatched);
              if (os_log_type_enabled(_idleTimerCoordinator, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v56 = v8;
                _os_log_impl(&dword_21ED4E000, _idleTimerCoordinator, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@ because smart cover is locked", buf, 0xCu);
              }
            }

            else
            {
              _lockScreenManager = [(SBLiftToWakeManager *)self _lockScreenManager];
              isUILocked = [_lockScreenManager isUILocked];

              if (isUILocked)
              {
                _lockScreenManager2 = [(SBLiftToWakeManager *)self _lockScreenManager];
                coverSheetViewController = [_lockScreenManager2 coverSheetViewController];
                [coverSheetViewController registerExternalEventHandler:self];

                v38 = BKLogOrientationDevice();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = BSDeviceOrientationDescription();
                  *buf = 138412290;
                  *v56 = v39;
                  _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_INFO, "Waking with requested orientation %@", buf, 0xCu);
                }

                v41 = SBLogLiftToWake(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v56 = v8;
                  _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Attemping unlock for transition %{public}@", buf, 0xCu);
                }

                v61[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
                v42 = [MEMORY[0x277CCABB0] numberWithBool:1];
                v62[0] = v42;
                v61[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
                v43 = [MEMORY[0x277CCABB0] numberWithBool:1];
                v62[1] = v43;
                v61[2] = @"SBUIUnlockOptionsRequestedOrientationKey";
                v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:orientation];
                v62[2] = v44;
                v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];

                if (transition == 4)
                {
                  v46 = 37;
                }

                else
                {
                  v46 = 5;
                }

                _lockScreenManager3 = [(SBLiftToWakeManager *)self _lockScreenManager];
                [_lockScreenManager3 unlockUIFromSource:v46 withOptions:v45];

                self->_significantUserInteractionOccuredSinceWake = 0;
                goto LABEL_50;
              }

              v48 = SBLogLiftToWake(v35);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v56 = v8;
                _os_log_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEFAULT, "Resetting idle timer for transition %{public}@", buf, 0xCu);
              }

              _idleTimerCoordinator = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
              v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"LiftToWakeTransition:%@", v8];
              [_idleTimerCoordinator resetIdleTimerForReason:v49];
            }

            goto LABEL_49;
          }

LABEL_50:

          goto LABEL_51;
        }

        v32 = SBLogLiftToWake(v15);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Unknown transition!", buf, 2u);
        }

        selfCopy3 = self;
        transitionCopy = 0;
      }

      else
      {
        if (transition == 2)
        {
          v21 = SBLogLiftToWake(v15);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Resetting idle timer for transition wake -> wake", buf, 2u);
          }

          _backlightController = [(SBLiftToWakeManager *)self _backlightController];
          screenIsDim = [_backlightController screenIsDim];

          if (screenIsDim)
          {
            _backlightController2 = [(SBLiftToWakeManager *)self _backlightController];
            [_backlightController2 _undimFromSource:20];
          }

          _idleTimerCoordinator = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
          [_idleTimerCoordinator resetIdleTimerForReason:@"LiftToWakeTransition:wake -> wake"];
LABEL_49:

          goto LABEL_50;
        }

        if (transition != 3)
        {
          if (transition != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_19;
        }

        _gestureWokeScreen = [(SBLiftToWakeManager *)self _gestureWokeScreen];
        _isLockScreenMainPageVisible = [(SBLiftToWakeManager *)self _isLockScreenMainPageVisible];
        _idleTimerCoordinator2 = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
        isIdleTimerDisabled = [_idleTimerCoordinator2 isIdleTimerDisabled];

        if (_gestureWokeScreen && _isLockScreenMainPageVisible && (isIdleTimerDisabled & 1) == 0 && !self->_significantUserInteractionOccuredSinceWake)
        {
          v50 = SBLogLiftToWake(v29);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "Turning screen off for transition wake -> sleep", buf, 2u);
          }

          _backlightController3 = [(SBLiftToWakeManager *)self _backlightController];
          [_backlightController3 _startFadeOutAnimationFromLockSource:5];

          _lockScreenManager4 = [(SBLiftToWakeManager *)self _lockScreenManager];
          coverSheetViewController2 = [_lockScreenManager4 coverSheetViewController];
          [coverSheetViewController2 unregisterExternalEventHandler:self];

          goto LABEL_50;
        }

        v30 = SBLogLiftToWake(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          significantUserInteractionOccuredSinceWake = self->_significantUserInteractionOccuredSinceWake;
          *buf = 67109888;
          *v56 = _gestureWokeScreen;
          *&v56[4] = 1024;
          *&v56[6] = _isLockScreenMainPageVisible;
          v57 = 1024;
          v58 = isIdleTimerDisabled ^ 1;
          v59 = 1024;
          v60 = significantUserInteractionOccuredSinceWake;
          _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Not turning screen off for transition wake -> sleep because gestureWokeScreen: %d isLockScreenMainPageVisible: %d idleTimerRunning: %d significantUserInteractionOccuredSinceWake: %d", buf, 0x1Au);
        }

        selfCopy3 = self;
        transitionCopy = 3;
      }
    }

    else
    {
      v16 = SBLogLiftToWake(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v56 = v14;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring transition - policy aggregator denied with with reason: %@", buf, 0xCu);
      }

      selfCopy3 = self;
      transitionCopy = transition;
    }

    [(SBLiftToWakeManager *)selfCopy3 _ignoredTransition:transitionCopy];
    goto LABEL_50;
  }

  v11 = SBLogLiftToWake(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring transition -- prox is active", buf, 2u);
  }

  [(SBLiftToWakeManager *)self _ignoredTransition:transition];
LABEL_51:
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  v6 = type == 21 || type == 12;
  if (v6 && [(SBLiftToWakeManager *)self _gestureWokeScreen])
  {
    self->_significantUserInteractionOccuredSinceWake = 1;
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    isConsumable = 0;
  }

  return isConsumable;
}

@end