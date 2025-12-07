@interface AMAmbientPresentationTriggerManager
- (AMAmbientDefaults)ambientDefaults;
- (AMAmbientPresentationTriggerManager)initWithMagicMountManager:(id)manager;
- (BOOL)_analogousTriggerEvents;
- (BOOL)_ignoreBatteryChargingForPresentation;
- (BOOL)_isDeviceBatteryCharging;
- (int64_t)_currentMountState;
- (int64_t)_currentPresentationState;
- (int64_t)_currentTriggerState;
- (void)_deviceBatteryStateChanged;
- (void)_disableMagicMountDetection;
- (void)_notifyObserversUpdatedAmbientMountState:(int64_t)state;
- (void)_notifyObserversUpdatedAmbientPresentationState:(int64_t)state;
- (void)_notifyObserversUpdatedAmbientTriggerState:(int64_t)state;
- (void)_setDeviceBatteryMonitoringEnabled:(BOOL)enabled;
- (void)_setEffectiveMountState:(int64_t)state;
- (void)_setupMagicMountDetectionIfNecessary;
- (void)_updateAmbientMountState;
- (void)_updateAmbientTriggerState;
- (void)_updateEffectiveMountState;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setAmbientDefaults:(id)defaults;
- (void)setPresentationDetectionEnabled:(BOOL)enabled;
- (void)testSetOverrideBatteryCharging:(BOOL)charging;
@end

@implementation AMAmbientPresentationTriggerManager

- (AMAmbientPresentationTriggerManager)initWithMagicMountManager:(id)manager
{
  managerCopy = manager;
  v6 = [(AMAmbientPresentationTriggerManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overridenMagicMountManager, manager);
  }

  return v7;
}

- (void)setPresentationDetectionEnabled:(BOOL)enabled
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_presentationDetectionEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = AMLogPresentation(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = enabledCopy;
      _os_log_impl(&dword_23EE48000, v5, OS_LOG_TYPE_DEFAULT, "Ambient presentation detection enabled : %{BOOL}d", v6, 8u);
    }

    self->_presentationDetectionEnabled = enabledCopy;
    [(AMAmbientPresentationTriggerManager *)self _setDeviceBatteryMonitoringEnabled:enabledCopy];
    if (enabledCopy)
    {
      [(AMAmbientPresentationTriggerManager *)self _setupMagicMountDetectionIfNecessary];
    }

    else
    {
      [(AMAmbientPresentationTriggerManager *)self _disableMagicMountDetection];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  [(NSHashTable *)self->_observers removeObject:observer];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (int64_t)_currentTriggerState
{
  if ([(AMAmbientPresentationTriggerManager *)self _effectiveMountState]== 1)
  {
    return [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
  }

  else
  {
    return 0;
  }
}

- (int64_t)_currentMountState
{
  if (![(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging])
  {
    return 0;
  }

  cachedMagicMountState = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  if ([cachedMagicMountState isMounted])
  {

    return 3;
  }

  else
  {
    cachedMagicMountState2 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    mountStatus = [cachedMagicMountState2 mountStatus];

    if ((mountStatus - 2) >= 3)
    {
      return 0;
    }

    else
    {
      return mountStatus - 1;
    }
  }
}

- (int64_t)_currentPresentationState
{
  if (![(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging])
  {
    return 0;
  }

  cachedMagicMountState = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  if ([cachedMagicMountState isMounted])
  {

    return 1;
  }

  cachedMagicMountState2 = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  mountStatus = [cachedMagicMountState2 mountStatus];

  if ((mountStatus - 2) <= 2)
  {
    return qword_23EE4FC00[mountStatus - 2];
  }

  else
  {
    return 0;
  }
}

- (void)_updateAmbientTriggerState
{
  v29 = *MEMORY[0x277D85DE8];
  _effectiveMountState = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
  _isDeviceBatteryCharging = [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
  _currentTriggerState = [(AMAmbientPresentationTriggerManager *)self _currentTriggerState];
  v6 = AMLogPresentation(_currentTriggerState);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _effectiveMountState == 1;
    v8 = @"asserted";
    if (_currentTriggerState != 1)
    {
      v8 = @"unknown";
    }

    if (!_currentTriggerState)
    {
      v8 = @"idle";
    }

    v9 = v8;
    cachedMagicMountState = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v11 = [cachedMagicMountState mountStatus] - 1;
    v12 = @"unknown";
    if (v11 <= 3)
    {
      v12 = off_278C735F0[v11];
    }

    _ignoreBatteryChargingForPresentation = [(AMAmbientPresentationTriggerManager *)self _ignoreBatteryChargingForPresentation];
    _effectiveMountState2 = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
    v15 = @"mounted";
    if (_effectiveMountState2 != 1)
    {
      v15 = @"unknown";
    }

    if (!_effectiveMountState2)
    {
      v15 = @"unmounted";
    }

    v16 = v15;
    v17 = 138544642;
    v18 = v9;
    v19 = 1024;
    v20 = v7;
    v21 = 2114;
    v22 = v12;
    v23 = 1024;
    v24 = _isDeviceBatteryCharging;
    v25 = 1024;
    v26 = _ignoreBatteryChargingForPresentation;
    v27 = 2114;
    v28 = v16;
    _os_log_impl(&dword_23EE48000, v6, OS_LOG_TYPE_DEFAULT, "Updating ambient trigger state : %{public}@ [ isMounted : %{BOOL}d ; mountStatus : %{public}@ ; isCharging : %{BOOL}d ; ignoreCharging : %{BOOL}d ; effectiveMountState : %{public}@ ]", &v17, 0x32u);
  }

  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientPresentationState:[(AMAmbientPresentationTriggerManager *)self _currentPresentationState]];
  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientTriggerState:_currentTriggerState];
}

- (void)_updateAmbientMountState
{
  v24 = *MEMORY[0x277D85DE8];
  _isDeviceBatteryCharging = [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
  _currentMountState = [(AMAmbientPresentationTriggerManager *)self _currentMountState];
  v5 = AMLogPresentation(_currentMountState);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (_currentMountState > 3)
    {
      v6 = @"unknown";
    }

    else
    {
      v6 = off_278C735D0[_currentMountState];
    }

    cachedMagicMountState = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v8 = [cachedMagicMountState mountStatus] - 1;
    v9 = @"unknown";
    if (v8 <= 3)
    {
      v9 = off_278C735F0[v8];
    }

    _ignoreBatteryChargingForPresentation = [(AMAmbientPresentationTriggerManager *)self _ignoreBatteryChargingForPresentation];
    _effectiveMountState = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
    v12 = @"mounted";
    if (_effectiveMountState != 1)
    {
      v12 = @"unknown";
    }

    if (!_effectiveMountState)
    {
      v12 = @"unmounted";
    }

    v13 = v12;
    v14 = 138544386;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 1024;
    v19 = _isDeviceBatteryCharging;
    v20 = 1024;
    v21 = _ignoreBatteryChargingForPresentation;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_23EE48000, v5, OS_LOG_TYPE_DEFAULT, "Updating ambient mount state : %{public}@ [ mountStatus : %{public}@ ; isCharging : %{BOOL}d ; ignoreCharging : %{BOOL}d ; effectiveMountState : %{public}@ ]", &v14, 0x2Cu);
  }

  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientPresentationState:[(AMAmbientPresentationTriggerManager *)self _currentPresentationState]];
  [(AMAmbientPresentationTriggerManager *)self _notifyObserversUpdatedAmbientMountState:_currentMountState];
}

- (void)_updateEffectiveMountState
{
  cachedMagicMountState = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
  mountStatus = [cachedMagicMountState mountStatus];

  _effectiveMountState = [(AMAmbientPresentationTriggerManager *)self _effectiveMountState];
  if (_effectiveMountState == 1)
  {
    v6 = mountStatus != 1;
  }

  else
  {
    v6 = _effectiveMountState;
    if (!_effectiveMountState)
    {
      v6 = mountStatus == 4 || mountStatus == 3 && [(AMAmbientPresentationTriggerManager *)self _analogousTriggerEvents];
    }
  }

  [(AMAmbientPresentationTriggerManager *)self _setEffectiveMountState:v6];
}

- (void)_setEffectiveMountState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = AMLogPresentation(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"unknown";
    v7 = @"mounted";
    if (state != 1)
    {
      v7 = @"unknown";
    }

    if (!state)
    {
      v7 = @"unmounted";
    }

    v8 = v7;
    cachedMagicMountState = [(AMAmbientPresentationTriggerManager *)self cachedMagicMountState];
    v10 = [cachedMagicMountState mountStatus] - 1;
    if (v10 <= 3)
    {
      v6 = off_278C735F0[v10];
    }

    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v6;
    v15 = 1024;
    _analogousTriggerEvents = [(AMAmbientPresentationTriggerManager *)self _analogousTriggerEvents];
    _os_log_impl(&dword_23EE48000, v5, OS_LOG_TYPE_DEFAULT, "Updating ambient effective mount state : %{public}@ [ mountStatus : %{public}@ ; analogousTriggerEvents : %{BOOL}d ]", &v11, 0x1Cu);
  }

  if (self->_effectiveMountState != state)
  {
    self->_effectiveMountState = state;
    [(AMAmbientPresentationTriggerManager *)self _updateAmbientTriggerState];
  }
}

- (void)_notifyObserversUpdatedAmbientPresentationState:(int64_t)state
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects copy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientPresentationState___block_invoke;
  v7[3] = &unk_278C73560;
  v7[4] = self;
  v7[5] = state;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __87__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientPresentationState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdatePresentationState:*(a1 + 40) analogousTriggerEvents:{objc_msgSend(*(a1 + 32), "_analogousTriggerEvents")}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdatePresentationState:*(a1 + 40)];
  }
}

- (void)_notifyObserversUpdatedAmbientTriggerState:(int64_t)state
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects copy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientTriggerState___block_invoke;
  v7[3] = &unk_278C73560;
  v7[4] = self;
  v7[5] = state;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __82__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientTriggerState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdateTriggerState:*(a1 + 40) analogousTriggerEvents:{objc_msgSend(*(a1 + 32), "_analogousTriggerEvents")}];
  }
}

- (void)_notifyObserversUpdatedAmbientMountState:(int64_t)state
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects copy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientMountState___block_invoke;
  v7[3] = &unk_278C73560;
  v7[4] = self;
  v7[5] = state;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __80__AMAmbientPresentationTriggerManager__notifyObserversUpdatedAmbientMountState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 ambientPresentationManager:*(a1 + 32) didUpdateMountState:*(a1 + 40)];
  }
}

- (BOOL)_analogousTriggerEvents
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(AMAmbientPresentationTriggerManager *)self _currentMountState])
  {
    return 0;
  }

  batteryStateChangeTimestamp = self->_batteryStateChangeTimestamp;
  if (!batteryStateChangeTimestamp || !self->_magicMountEventTimestamp)
  {
    return 0;
  }

  v4 = [(NSDate *)batteryStateChangeTimestamp timeIntervalSinceDate:?];
  v6 = fabs(v5);
  v7 = v6 < 3.0;
  v8 = AMLogPresentation(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_batteryStateChangeTimestamp;
    magicMountEventTimestamp = self->_magicMountEventTimestamp;
    v12[0] = 67109890;
    v12[1] = v6 < 3.0;
    v13 = 2048;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = magicMountEventTimestamp;
    _os_log_impl(&dword_23EE48000, v8, OS_LOG_TYPE_DEFAULT, "Ambient presentation trigger events analogous : %{BOOL}d [ timeInterval : %.2f sec ; batteryTimestamp : %{public}@ ; magicMountTimestamp : %{public}@ ]", v12, 0x26u);
  }

  return v7;
}

- (void)_setupMagicMountDetectionIfNecessary
{
  if (!self->_magicMountManager)
  {
    overridenMagicMountManager = self->_overridenMagicMountManager;
    if (overridenMagicMountManager)
    {
      v4 = overridenMagicMountManager;
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x277CC1CB8]);
    }

    magicMountManager = self->_magicMountManager;
    self->_magicMountManager = v4;

    [(CMMagicMountManager *)self->_magicMountManager setMagicMountConfiguration:2];
    objc_initWeak(&location, self);
    v6 = self->_magicMountManager;
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__AMAmbientPresentationTriggerManager__setupMagicMountDetectionIfNecessary__block_invoke;
    v8[3] = &unk_278C73588;
    objc_copyWeak(&v9, &location);
    [(CMMagicMountManager *)v6 startMagicMountUpdatesToQueue:mainQueue withHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __75__AMAmbientPresentationTriggerManager__setupMagicMountDetectionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AMLogPresentation(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 isMounted];
    v6 = [v3 mountStatus];
    if ((v6 - 1) > 3)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = off_278C735F0[v6 - 1];
    }

    v11[0] = 67109378;
    v11[1] = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_23EE48000, v4, OS_LOG_TYPE_DEFAULT, "Ambient magic mount state change detected [ isMounted : %{BOOL}d ; status : %{public}@ ]", v11, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedMagicMountState:v3];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = WeakRetained[2];
  WeakRetained[2] = v9;

  [WeakRetained _updateEffectiveMountState];
  [WeakRetained _updateAmbientMountState];
  [WeakRetained _updateAmbientTriggerState];
}

- (void)_disableMagicMountDetection
{
  magicMountManager = self->_magicMountManager;
  if (magicMountManager)
  {
    [(CMMagicMountManager *)magicMountManager stopMagicMountUpdates];
    v4 = self->_magicMountManager;
    self->_magicMountManager = 0;

    cachedMagicMountState = self->_cachedMagicMountState;
    self->_cachedMagicMountState = 0;
  }
}

- (void)_setDeviceBatteryMonitoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = defaultCenter;
  if (enabledCopy)
  {
    [defaultCenter addObserver:self selector:sel__deviceBatteryStateChanged name:*MEMORY[0x277D76870] object:0];
  }

  else
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76870] object:0];
  }
}

- (void)_deviceBatteryStateChanged
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = AMLogPresentation(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [(AMAmbientPresentationTriggerManager *)self _isDeviceBatteryCharging];
    _os_log_impl(&dword_23EE48000, v3, OS_LOG_TYPE_DEFAULT, "Ambient device battery state change detected [ isDeviceBatteryCharging : %{BOOL}d ]", v6, 8u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  batteryStateChangeTimestamp = self->_batteryStateChangeTimestamp;
  self->_batteryStateChangeTimestamp = date;

  [(AMAmbientPresentationTriggerManager *)self _updateEffectiveMountState];
  [(AMAmbientPresentationTriggerManager *)self _updateAmbientMountState];
  [(AMAmbientPresentationTriggerManager *)self _updateAmbientTriggerState];
}

- (BOOL)_isDeviceBatteryCharging
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(AMAmbientPresentationTriggerManager *)self _ignoreBatteryChargingForPresentation])
  {
    return 1;
  }

  overriddenBatteryChargingState = [(AMAmbientPresentationTriggerManager *)self overriddenBatteryChargingState];

  if (overriddenBatteryChargingState)
  {
    overriddenBatteryChargingState2 = [(AMAmbientPresentationTriggerManager *)self overriddenBatteryChargingState];
    bOOLValue = [overriddenBatteryChargingState2 BOOLValue];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    batteryState = [currentDevice batteryState];

    v8 = batteryState & 0xFFFFFFFFFFFFFFFELL;
    bOOLValue = (batteryState & 0xFFFFFFFFFFFFFFFELL) == 2;
    overriddenBatteryChargingState2 = AMLogPresentation(v9);
    if (os_log_type_enabled(overriddenBatteryChargingState2, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v8 == 2;
      _os_log_impl(&dword_23EE48000, overriddenBatteryChargingState2, OS_LOG_TYPE_DEFAULT, "Ambient determining battery charging = %{BOOL}d ", v11, 8u);
    }
  }

  return bOOLValue;
}

- (void)testSetOverrideBatteryCharging:(BOOL)charging
{
  self->_overriddenBatteryChargingState = [MEMORY[0x277CCABB0] numberWithBool:charging];

  [(AMAmbientPresentationTriggerManager *)self _deviceBatteryStateChanged];
}

- (BOOL)_ignoreBatteryChargingForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);
  ignoreBatteryChargingForPresentation = [WeakRetained ignoreBatteryChargingForPresentation];

  return ignoreBatteryChargingForPresentation;
}

- (void)setAmbientDefaults:(id)defaults
{
  v13[1] = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);

  if (WeakRetained != defaultsCopy)
  {
    objc_storeWeak(&self->_ambientDefaults, defaultsCopy);
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ignoreBatteryChargingForPresentation"];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__AMAmbientPresentationTriggerManager_setAmbientDefaults___block_invoke;
    v10[3] = &unk_278C735B0;
    objc_copyWeak(&v11, &location);
    v9 = [defaultsCopy observeDefaults:v7 onQueue:MEMORY[0x277D85CD0] withBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __58__AMAmbientPresentationTriggerManager_setAmbientDefaults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateEffectiveMountState];
  [WeakRetained _updateAmbientTriggerState];
}

- (AMAmbientDefaults)ambientDefaults
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);

  return WeakRetained;
}

@end