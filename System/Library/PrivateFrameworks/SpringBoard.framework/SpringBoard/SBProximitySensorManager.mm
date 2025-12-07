@interface SBProximitySensorManager
- (NSString)description;
- (SBProximitySensorManager)init;
- (SBProximitySensorManager)initWithHIDInterface:(id)interface hardwareDefaults:(id)defaults interfaceOrientationProvider:(id)provider;
- (id)suppressBacklightChangesForReason:(id)reason;
- (void)_disableProx;
- (void)_enableProx;
- (void)_reloadDefaults;
- (void)_setObjectInCrudeProximity:(BOOL)proximity;
- (void)_setObjectInProximity:(BOOL)proximity detectionMode:(int)mode postToApps:(BOOL)apps;
- (void)_setProximityDetectionEnabled:(BOOL)enabled;
- (void)_setProximityDetectionPermitted:(BOOL)permitted;
- (void)_updateProxState;
- (void)addObserver:(id)observer;
- (void)client:(id)client wantsProximityDetectionEnabled:(BOOL)enabled disableGracePeriod:(BOOL)period;
- (void)dealloc;
- (void)processHIDEvent:(__IOHIDEvent *)event;
- (void)removeObserver:(id)observer;
@end

@implementation SBProximitySensorManager

- (void)_updateProxState
{
  if ([(SBProximitySensorManager *)self _clientsWantDetectionEnabled]&& ![(SBProximitySensorManager *)self isProximityDetectionEnabled])
  {
    if (([(SpringBoard *)self->_interfaceOrientationProvider activeInterfaceOrientation]- 3) >= 2)
    {

      [(SBProximitySensorManager *)self _enableProx];
    }
  }

  else if ([(SBProximitySensorManager *)self isProximityDetectionEnabled]&& (![(SBProximitySensorManager *)self _clientsWantDetectionEnabled]|| ([(SpringBoard *)self->_interfaceOrientationProvider activeInterfaceOrientation]- 3) <= 1) && !self->_objectInProximity)
  {

    [(SBProximitySensorManager *)self _disableProx];
  }
}

- (SBProximitySensorManager)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"init not available"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"SBProximitySensorManager.m";
    v17 = 1024;
    v18 = 55;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (SBProximitySensorManager)initWithHIDInterface:(id)interface hardwareDefaults:(id)defaults interfaceOrientationProvider:(id)provider
{
  interfaceCopy = interface;
  defaultsCopy = defaults;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = SBProximitySensorManager;
  v12 = [(SBProximitySensorManager *)&v24 init];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientsWantingDetectionEnabled = v12->_clientsWantingDetectionEnabled;
    v12->_clientsWantingDetectionEnabled = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientsWantingGracePeriodDisabled = v12->_clientsWantingGracePeriodDisabled;
    v12->_clientsWantingGracePeriodDisabled = v15;

    objc_storeStrong(&v12->_hidInterface, interface);
    objc_storeStrong(&v12->_hardwareDefaults, defaults);
    objc_storeStrong(&v12->_interfaceOrientationProvider, provider);
    hardwareDefaults = v12->_hardwareDefaults;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableProximitySensor"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__SBProximitySensorManager_initWithHIDInterface_hardwareDefaults_interfaceOrientationProvider___block_invoke;
    v22[3] = &unk_2783A8C18;
    v19 = v12;
    v23 = v19;
    v20 = [(SBHardwareDefaults *)hardwareDefaults observeDefault:v18 onQueue:MEMORY[0x277D85CD0] withBlock:v22];

    [(SBProximitySensorManager *)v19 _reloadDefaults];
    [(SpringBoard *)v12->_interfaceOrientationProvider addActiveOrientationObserver:v19];
  }

  return v12;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_suppressBacklightChangesAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBProximitySensorManager;
  [(SBProximitySensorManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_proximityDetectionEnabled withName:@"_proximityDetectionEnabled"];
  v5 = [v3 appendBool:self->_proximityDetectionPermitted withName:@"_proximityDetectionPermitted"];
  v6 = [v3 appendBool:self->_objectInProximity withName:@"_objectInProximity"];
  v7 = [v3 appendObject:self->_clientsWantingDetectionEnabled withName:@"_clientsWantingDetectionEnabled"];
  v8 = [v3 appendObject:self->_clientsWantingGracePeriodDisabled withName:@"_clientsWantingGracePeriodDisabled"];
  build = [v3 build];

  return build;
}

- (void)client:(id)client wantsProximityDetectionEnabled:(BOOL)enabled disableGracePeriod:(BOOL)period
{
  periodCopy = period;
  enabledCopy = enabled;
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v10 = clientCopy;
  if (!clientCopy)
  {
    [SBProximitySensorManager client:a2 wantsProximityDetectionEnabled:self disableGracePeriod:?];
  }

  v11 = SBLogProximitySensor(clientCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = v10;
    v15 = 1024;
    v16 = enabledCopy;
    v17 = 1024;
    v18 = periodCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Client:%{public}@ wants active proximity sensor:%{BOOL}u disable grace period:%{BOOL}u", &v13, 0x18u);
  }

  clientsWantingDetectionEnabled = self->_clientsWantingDetectionEnabled;
  if (enabledCopy)
  {
    [(NSMutableSet *)clientsWantingDetectionEnabled addObject:v10];
    if (periodCopy)
    {
      [(NSMutableSet *)self->_clientsWantingGracePeriodDisabled addObject:v10];
    }
  }

  else
  {
    [(NSMutableSet *)clientsWantingDetectionEnabled removeObject:v10];
    [(NSMutableSet *)self->_clientsWantingGracePeriodDisabled removeObject:v10];
  }

  [(SBProximitySensorManager *)self _updateProxState];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)processHIDEvent:(__IOHIDEvent *)event
{
  v13 = *MEMORY[0x277D85DE8];
  if (IOHIDEventGetType() != 14)
  {
    [(SBProximitySensorManager *)a2 processHIDEvent:?];
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v6 = IntegerValue;
  v7 = SBLogProximitySensor(IntegerValue);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = BKSHIDEventGetConciseDescription();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "prox! %{public}@", &v11, 0xCu);
  }

  v9 = BKSHIDEventGetProximityAttributes();
  proximityDetectionMode = [v9 proximityDetectionMode];
  [(SBProximitySensorManager *)self _setObjectInCrudeProximity:(v6 >> 10) & 1];
  [(SBProximitySensorManager *)self _setObjectInProximity:(v6 >> 6) & 1 detectionMode:proximityDetectionMode];
}

- (id)suppressBacklightChangesForReason:(id)reason
{
  reasonCopy = reason;
  suppressBacklightChangesAssertion = self->_suppressBacklightChangesAssertion;
  if (!suppressBacklightChangesAssertion)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__SBProximitySensorManager_suppressBacklightChangesForReason___block_invoke;
    v13[3] = &unk_2783BB090;
    v13[4] = self;
    v6 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"SuppressProxBacklightChanges" stateDidChangeHandler:v13];
    v7 = self->_suppressBacklightChangesAssertion;
    self->_suppressBacklightChangesAssertion = v6;

    v8 = self->_suppressBacklightChangesAssertion;
    v10 = SBLogProximitySensor(v9);
    [(BSCompoundAssertion *)v8 setLog:v10];

    suppressBacklightChangesAssertion = self->_suppressBacklightChangesAssertion;
  }

  v11 = [(BSCompoundAssertion *)suppressBacklightChangesAssertion acquireForReason:reasonCopy];

  return v11;
}

void __62__SBProximitySensorManager_suppressBacklightChangesForReason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 isActive];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(*(a1 + 32) + 40) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 proximitySensorManager:*(a1 + 32) shouldSuppressBacklightChanges:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setObjectInCrudeProximity:(BOOL)proximity
{
  proximityCopy = proximity;
  v16 = *MEMORY[0x277D85DE8];
  if (self->_objectInCrudeProximity != proximity || !proximity)
  {
    self->_objectInCrudeProximity = proximity;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 proximitySensorManager:self crudeProximityDidChange:proximityCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setObjectInProximity:(BOOL)proximity detectionMode:(int)mode postToApps:(BOOL)apps
{
  v56[1] = *MEMORY[0x277D85DE8];
  if (self->_objectInProximity != proximity)
  {
    v5 = *&mode;
    proximityCopy = proximity;
    cf = apps;
    self->_objectInProximity = proximity;
    self->_proximityDetectionMode = mode;
    v8 = SBLogProximitySensor(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromBKSHIDServicesProximityDetectionMode();
      *buf = 67109378;
      v48 = proximityCopy;
      v49 = 2114;
      v50 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "objectInProximity is now:%{BOOL}u mode:(%{public}@)", buf, 0x12u);
    }

    [(SBProximitySensorManager *)self _updateProxState];
    v55 = *MEMORY[0x277D67B30];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_objectInProximity];
    v56[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v36 = v11;
    [defaultCenter postNotificationName:*MEMORY[0x277D67AA0] object:0 userInfo:v11];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v14 = [allObjects countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v44;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(allObjects);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v18 proximitySensorManager:self objectWithinProximityDidChange:proximityCopy detectionMode:v5];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v18 proximitySensorManager:self objectWithinProximityDidChange:proximityCopy];
          }
        }

        v15 = [allObjects countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v15);
    }

    if (cf)
    {
      mach_absolute_time();
      cfa = IOHIDEventCreateProximtyEvent();
      v19 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      externalForegroundApplicationSceneHandles = [v19 externalForegroundApplicationSceneHandles];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = externalForegroundApplicationSceneHandles;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            scene = [*(*(&v39 + 1) + 8 * j) scene];
            uiClientSettings = [scene uiClientSettings];
            proximityDetectionModes = [uiClientSettings proximityDetectionModes];

            if ((proximityDetectionModes & 2) != 0)
            {
              clientHandle = [scene clientHandle];
              bundleIdentifier = [clientHandle bundleIdentifier];

              clientProcess = [scene clientProcess];
              state = [clientProcess state];
              v33 = [state pid];

              v35 = SBLogProximitySensor(v34);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                v48 = proximityCopy;
                v49 = 2114;
                v50 = bundleIdentifier;
                v51 = 1024;
                v52 = v33;
                _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "sending prox notification (object in proximity:%{BOOL}u) to %{public}@ (pid %d)", buf, 0x18u);
              }

              BKSHIDEventSendToProcess();
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v39 objects:v53 count:16];
        }

        while (v23);
      }

      CFRelease(cfa);
    }
  }
}

- (void)_setProximityDetectionEnabled:(BOOL)enabled
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_proximityDetectionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_proximityDetectionEnabled = enabled;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 proximitySensorManager:self proximityDetectionEnabledDidChange:enabledCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setProximityDetectionPermitted:(BOOL)permitted
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_proximityDetectionPermitted != permitted)
  {
    permittedCopy = permitted;
    self->_proximityDetectionPermitted = permitted;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allObjects);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 proximitySensorManager:self proximityDetectionPermittedDidChange:permittedCopy];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_reloadDefaults
{
  v3 = [(SBHardwareDefaults *)self->_hardwareDefaults disableProximitySensor]^ 1;

  [(SBProximitySensorManager *)self _setProximityDetectionPermitted:v3];
}

- (void)_enableProx
{
  v19 = *MEMORY[0x277D85DE8];
  isProximityDetectionPermitted = [(SBProximitySensorManager *)self isProximityDetectionPermitted];
  if (isProximityDetectionPermitted)
  {
    [(SBProximitySensorManager *)self _setProximityDetectionEnabled:1];
    v4 = +[SBMainWorkspace sharedInstanceIfExists];
    currentTransaction = [v4 currentTransaction];
    transitionRequest = [currentTransaction transitionRequest];
    v7 = objc_opt_class();
    v8 = transitionRequest;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v14 = v9;

    v15 = [v14 source] == 61;
    v10 = SBLogProximitySensor([(SBProximitySensorControlling *)self->_hidInterface setProximityDetectionEnabled:1 changeSource:4 * v15]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      clientsWantingDetectionEnabled = self->_clientsWantingDetectionEnabled;
      v17 = 138543362;
      v18 = clientsWantingDetectionEnabled;
      v11 = "Enabling proximity sensor detection for clients:%{public}@";
      v12 = v10;
      v13 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = SBLogProximitySensor(isProximityDetectionPermitted);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v11 = "Not enabling prox detection because prox isn't permitted on this device";
      v12 = v10;
      v13 = 2;
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    }
  }
}

- (void)_disableProx
{
  [(SBProximitySensorManager *)self _setProximityDetectionEnabled:0];
  hidInterface = self->_hidInterface;

  [(SBProximitySensorControlling *)hidInterface setProximityDetectionEnabled:0];
}

- (void)client:(uint64_t)a1 wantsProximityDetectionEnabled:(uint64_t)a2 disableGracePeriod:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBProximitySensorManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"clientID"}];
}

- (void)processHIDEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBProximitySensorManager.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"IOHIDEventGetType(event) == kIOHIDEventTypeProximity"}];
}

@end