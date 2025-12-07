@interface SBLiftToWakeController
+ (id)sharedController;
- (NSString)description;
- (SBLiftToWakeController)init;
- (SBLiftToWakeController)initWithBacklightController:(id)controller idleTimerDefaults:(id)defaults;
- (id)acquireBumpToWakeEnableAssertionForReason:(id)reason;
- (void)_handleBacklightLevelChanged:(id)changed;
- (void)_ignoredTransition:(int64_t)transition;
- (void)_reconsiderEnablement;
- (void)_screenTurnedOff;
- (void)_screenTurnedOn;
- (void)_sendIgnoredTransitionToObservers:(int64_t)observers;
- (void)_sendTransitionToObservers:(int64_t)observers deviceOrientation:(int64_t)orientation;
- (void)_startObservingBumpsIfNecessary;
- (void)_startObservingIfNecessary;
- (void)_stopObservingBumpsIfNecessary;
- (void)_stopObservingIfNecessary;
- (void)addObserver:(id)observer;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)removeObserver:(id)observer;
- (void)wakeGestureManager:(id)manager didUpdateWakeGestureEvent:(id)event;
@end

@implementation SBLiftToWakeController

- (void)_screenTurnedOn
{
  if (!self->_screenOn)
  {
    v3 = SBLogLiftToWake(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBLiftToWakeController *)v3 _screenTurnedOn];
    }

    self->_screenOn = 1;
  }
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SBLiftToWakeController sharedController];
  }

  v3 = sharedController_sController;

  return v3;
}

void __42__SBLiftToWakeController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SBLiftToWakeController);
  v1 = sharedController_sController;
  sharedController_sController = v0;
}

- (SBLiftToWakeController)init
{
  v3 = +[SBBacklightController sharedInstanceIfExists];
  v4 = +[SBDefaults localDefaults];
  idleTimerDefaults = [v4 idleTimerDefaults];
  v6 = [(SBLiftToWakeController *)self initWithBacklightController:v3 idleTimerDefaults:idleTimerDefaults];

  return v6;
}

- (SBLiftToWakeController)initWithBacklightController:(id)controller idleTimerDefaults:(id)defaults
{
  controllerCopy = controller;
  defaultsCopy = defaults;
  v25.receiver = self;
  v25.super_class = SBLiftToWakeController;
  v8 = [(SBLiftToWakeController *)&v25 init];
  if (v8)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__handleBacklightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];

    mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
    [mEMORY[0x277CF0880] addObserver:v8];

    v8->_screenOn = [controllerCopy screenIsOn];
    objc_initWeak(&location, v8);
    objc_storeStrong(&v8->_idleTimerDefaults, defaults);
    idleTimerDefaults = v8->_idleTimerDefaults;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supportLiftToWake"];
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __72__SBLiftToWakeController_initWithBacklightController_idleTimerDefaults___block_invoke;
    v22 = &unk_2783A8C68;
    objc_copyWeak(&v23, &location);
    v15 = [(SBIdleTimerDefaults *)idleTimerDefaults observeDefault:v12 onQueue:v13 withBlock:&v19];

    [(SBLiftToWakeController *)v8 _reconsiderEnablement:v19];
    v16 = objc_alloc_init(SBWakeDebounceFilter);
    bumpToWakeDebounceFilter = v8->_bumpToWakeDebounceFilter;
    v8->_bumpToWakeDebounceFilter = v16;

    [(SBWakeDebounceFilter *)v8->_bumpToWakeDebounceFilter setFilterInterval:300.0];
    [(SBWakeDebounceFilter *)v8->_bumpToWakeDebounceFilter setIntervalActivationLimit:10];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __72__SBLiftToWakeController_initWithBacklightController_idleTimerDefaults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reconsiderEnablement];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:LODWORD(self->_wakeGestureState) withName:@"wakeGestureState"];
  v5 = [v3 appendBool:self->_screenOn withName:@"screenOn"];
  v6 = [v3 appendBool:self->_isEnabled withName:@"enabled"];
  v7 = [v3 appendBool:self->_observingCMWakeGestureManager withName:@"observingCMWakeGestureManager"];
  v8 = [v3 appendObject:self->_observers withName:@"observers"];
  build = [v3 build];

  return build;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
  if (self->_isEnabled)
  {
    [(SBLiftToWakeController *)self _startObservingIfNecessary];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  if (![(NSHashTable *)self->_observers count])
  {

    [(SBLiftToWakeController *)self _stopObservingIfNecessary];
  }
}

- (id)acquireBumpToWakeEnableAssertionForReason:(id)reason
{
  reasonCopy = reason;
  bumpToWakeAssertions = self->_bumpToWakeAssertions;
  if (!bumpToWakeAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__SBLiftToWakeController_acquireBumpToWakeEnableAssertionForReason___block_invoke;
    v14 = &unk_2783AD688;
    objc_copyWeak(&v15, &location);
    v7 = [v6 assertionWithIdentifier:@"SBLiftToWakeController bump-to-wake" stateDidChangeHandler:&v11];
    v8 = self->_bumpToWakeAssertions;
    self->_bumpToWakeAssertions = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    bumpToWakeAssertions = self->_bumpToWakeAssertions;
  }

  v9 = [(BSCompoundAssertion *)bumpToWakeAssertions acquireForReason:reasonCopy, v11, v12, v13, v14];

  return v9;
}

void __68__SBLiftToWakeController_acquireBumpToWakeEnableAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reconsiderEnablement];
}

- (void)_ignoredTransition:(int64_t)transition
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogLiftToWake(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((transition - 1) > 3)
    {
      v6 = @"<unknown>";
    }

    else
    {
      v6 = off_2783B69A8[transition - 1];
    }

    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: intentionally ignored transition: %{public}@", &v7, 0xCu);
  }

  [(SBLiftToWakeController *)self _sendIgnoredTransitionToObservers:transition];
}

- (void)_screenTurnedOff
{
  if (self->_screenOn)
  {
    v3 = SBLogLiftToWake(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBLiftToWakeController *)v3 _screenTurnedOff];
    }

    self->_screenOn = 0;
    self->_wakeGestureState = 0;
  }
}

- (void)_reconsiderEnablement
{
  v28 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  isWakeGestureAvailable = [MEMORY[0x277CC1D78] isWakeGestureAvailable];
  if (isWakeGestureAvailable)
  {
    if (([(SBIdleTimerDefaults *)self->_idleTimerDefaults supportLiftToWake]& 1) != 0)
    {
      isWakeGestureAvailable = 1;
    }

    else
    {
      isWakeGestureAvailable = [(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive];
    }
  }

  if (self->_isEnabled == isWakeGestureAvailable)
  {
    if ([(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive])
    {

      [(SBLiftToWakeController *)self _startObservingBumpsIfNecessary];
    }

    else
    {

      [(SBLiftToWakeController *)self _stopObservingBumpsIfNecessary];
    }
  }

  else
  {
    self->_isEnabled = isWakeGestureAvailable;
    v4 = SBLogLiftToWake(isWakeGestureAvailable);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromBOOL();
      [MEMORY[0x277CC1D78] isWakeGestureAvailable];
      v6 = NSStringFromBOOL();
      [(SBIdleTimerDefaults *)self->_idleTimerDefaults supportLiftToWake];
      v7 = NSStringFromBOOL();
      isActive = [(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive];
      *buf = 138544130;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      v26 = 1024;
      v27 = isActive;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Lift to wake enablement changed to: %{public}@ (Available: %{public}@, UserPref: %{public}@, Bump: %{BOOL}u)", buf, 0x26u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSHashTable *)self->_observers copy];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v14 liftToWakeControllerEnablementDidChange:self];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    if (self->_isEnabled)
    {
      if ([(NSHashTable *)self->_observers count])
      {
        [(SBLiftToWakeController *)self _startObservingIfNecessary];
      }
    }

    else
    {
      [(SBLiftToWakeController *)self _stopObservingIfNecessary];
    }
  }
}

- (void)_handleBacklightLevelChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277D67A30]];
  [v6 floatValue];
  v8 = v7;

  v9 = [userInfo objectForKey:*MEMORY[0x277D67A28]];
  [v9 floatValue];
  v11 = v10;

  v12 = [userInfo objectForKey:*MEMORY[0x277D67A10]];
  intValue = [v12 intValue];

  v15 = SBLogLiftToWake(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(SBLiftToWakeController *)changedCopy _handleBacklightLevelChanged:v15];
  }

  v17 = v11 > 0.0 && v8 <= 0.0;
  if (intValue != 13)
  {
    if (v8 <= 0.0 || v11 > 0.0)
    {
      if (v17)
      {
        [(SBLiftToWakeController *)self _screenTurnedOn];
      }
    }

    else
    {
      [(SBLiftToWakeController *)self _screenTurnedOff];
    }
  }
}

- (void)_startObservingIfNecessary
{
  if (!self->_observingCMWakeGestureManager && self->_isEnabled)
  {
    v3 = [(NSHashTable *)self->_observers count];
    if (v3)
    {
      self->_wakeGestureState = 0;
      v4 = SBLogLiftToWake(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Starting to observe the CMWakeGestureManager.", v7, 2u);
      }

      self->_observingCMWakeGestureManager = 1;
      mEMORY[0x277CC1D78] = [MEMORY[0x277CC1D78] sharedManager];
      wakeGestureManager = self->_wakeGestureManager;
      self->_wakeGestureManager = mEMORY[0x277CC1D78];

      [(CMWakeGestureManager *)self->_wakeGestureManager setDelegate:self];
      [(CMWakeGestureManager *)self->_wakeGestureManager startWakeGestureUpdates];
    }
  }

  [(SBLiftToWakeController *)self _startObservingBumpsIfNecessary];
}

- (void)_stopObservingIfNecessary
{
  [(SBLiftToWakeController *)self _stopObservingBumpsIfNecessary];
  if (self->_observingCMWakeGestureManager)
  {
    self->_observingCMWakeGestureManager = 0;
    [(CMWakeGestureManager *)self->_wakeGestureManager stopWakeGestureUpdates];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = 0;

    v5 = SBLogLiftToWake(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Stopped observing the CMWakeGestureManager.", v6, 2u);
    }
  }
}

- (void)_startObservingBumpsIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_observingCMWakeGestureManager)
  {
    isActive = [(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive];
    v4 = SBLogLiftToWake(isActive);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = isActive;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Setting nightStandWakeEnabled to %{BOOL}u.", v5, 8u);
    }

    [(CMWakeGestureManager *)self->_wakeGestureManager setNightStandWakeEnabled:isActive withConfiguration:2];
  }
}

- (void)_stopObservingBumpsIfNecessary
{
  v3 = SBLogLiftToWake(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Setting nightStandWakeEnabled to NO", v4, 2u);
  }

  [(CMWakeGestureManager *)self->_wakeGestureManager setNightStandWakeEnabled:0 withConfiguration:2];
}

- (void)_sendTransitionToObservers:(int64_t)observers deviceOrientation:(int64_t)orientation
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = BSDispatchQueueAssertMain();
  v8 = SBLogLiftToWake(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((observers - 1) > 3)
    {
      v9 = @"<unknown>";
    }

    else
    {
      v9 = off_2783B69A8[observers - 1];
    }

    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: sending to observers: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSHashTable *)self->_observers copy];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 liftToWakeController:self didObserveTransition:observers deviceOrientation:orientation];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)_sendIgnoredTransitionToObservers:(int64_t)observers
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = BSDispatchQueueAssertMain();
  v6 = SBLogLiftToWake(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if ((observers - 1) > 3)
    {
      v7 = @"<unknown>";
    }

    else
    {
      v7 = off_2783B69A8[observers - 1];
    }

    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: sending ignored transition to observers: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 liftToWakeController:self didIgnoreTransition:observers];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  if (state > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_21F8A6BE0[state];
  }

  [(CMWakeGestureManager *)self->_wakeGestureManager setBacklightState:v5];
}

- (void)wakeGestureManager:(id)manager didUpdateWakeGestureEvent:(id)event
{
  managerCopy = manager;
  eventCopy = event;
  v8 = wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor;
  if (*&wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor == 0.0)
  {
    info = 0;
    if (!mach_timebase_info(&info))
    {
      LODWORD(v9) = info.numer;
      LODWORD(v8) = info.denom;
      *&v8 = v8 / v9 * 1000000000.0;
      wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor = v8;
    }
  }

  orientation = [eventCopy orientation];
  state = [eventCopy state];
  [eventCopy timestamp];
  if (state == 1)
  {
    v13 = (v12 * *&wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor);
    mEMORY[0x277D66010] = [MEMORY[0x277D66010] sharedInstance];
    [mEMORY[0x277D66010] wakeMayBegin:2 withTimestamp:v13];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SBLiftToWakeController_wakeGestureManager_didUpdateWakeGestureEvent___block_invoke;
  block[3] = &unk_2783B6988;
  v19 = orientation;
  v17 = eventCopy;
  v18 = state;
  block[4] = self;
  v15 = eventCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__SBLiftToWakeController_wakeGestureManager_didUpdateWakeGestureEvent___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = SBLogLiftToWake(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = BSDeviceOrientationDescription();
    v22 = 67109378;
    v23 = v4;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: updated wake gesture state received:%d %@", &v22, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = *(a1 + 48);
  v8 = [*(a1 + 40) type];
  v9 = *(a1 + 32);
  if (v8 == 7)
  {
    if ([*(v9 + 48) isActive])
    {
      v10 = *(a1 + 32);
      if (*(a1 + 48) != 1)
      {
LABEL_23:
        v19 = 4;
LABEL_29:
        [v10 _ignoredTransition:v19];
        return;
      }

      v11 = [*(v10 + 56) wakeEventOccurred];
      if (v11)
      {
        v10 = *(a1 + 32);
        v12 = 4;
LABEL_13:
        [v10 _sendTransitionToObservers:v12 deviceOrientation:v2];
        return;
      }

      v18 = SBLogLiftToWake(v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "debounce filter rejected bump event", &v22, 2u);
      }
    }

    v10 = *(a1 + 32);
    goto LABEL_23;
  }

  v13 = [*(v9 + 32) supportLiftToWake];
  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + 48);
  if ((v14 - 2) < 2)
  {
    v10 = *(a1 + 32);
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 2 && *(v10 + 40) == 1)
    {
      v12 = 3;
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if (v14 != 1)
  {
    v20 = SBLogLiftToWake(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 48);
      v22 = 67109120;
      v23 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: wake gesture state not handled -- were we supposed to receive %d ?", &v22, 8u);
    }

LABEL_27:
    v10 = *(a1 + 32);
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v15 = *(a1 + 32);
  if (v15[40])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v15 _sendTransitionToObservers:v16 deviceOrientation:v2];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:*MEMORY[0x277D67A78] object:*(a1 + 32)];
}

- (void)_handleBacklightLevelChanged:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "SBLiftToWakeController: backlight changed: %@", &v2, 0xCu);
}

@end