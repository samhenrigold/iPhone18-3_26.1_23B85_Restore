@interface SBThermalController
+ (SBThermalController)sharedInstance;
+ (void)logThermalEvent:(id)event;
- (NSString)description;
- (SBThermalController)init;
- (void)_respondToCurrentThermalCondition;
- (void)_setBlocked:(BOOL)blocked;
- (void)_updateThermalJetsamCPUSamplingState;
- (void)addThermalObserver:(id)observer;
- (void)dealloc;
- (void)removeThermalObserver:(id)observer;
- (void)startListeningForThermalEvents;
@end

@implementation SBThermalController

+ (SBThermalController)sharedInstance
{
  if (sharedInstance_onceToken_48 != -1)
  {
    +[SBThermalController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_24;

  return v3;
}

uint64_t __37__SBThermalController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBThermalController);
  v1 = sharedInstance___sharedInstance_24;
  sharedInstance___sharedInstance_24 = v0;

  return kdebug_trace();
}

- (SBThermalController)init
{
  v12.receiver = self;
  v12.super_class = SBThermalController;
  v2 = [(SBThermalController *)&v12 init];
  if (v2)
  {
    v3 = +[SBDefaults localDefaults];
    thermalDefaults = [v3 thermalDefaults];
    thermalDefaults = v2->_thermalDefaults;
    v2->_thermalDefaults = thermalDefaults;

    securityDefaults = [v3 securityDefaults];
    securityDefaults = v2->_securityDefaults;
    v2->_securityDefaults = securityDefaults;

    v8 = +[SBDefaults externalDefaults];
    networkDefaults = [v8 networkDefaults];
    networkDefaults = v2->_networkDefaults;
    v2->_networkDefaults = networkDefaults;

    v2->_hotToken = -1;
    v2->_coldToken = -1;
    v2->_sunToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  hotToken = self->_hotToken;
  if (hotToken != -1)
  {
    notify_cancel(hotToken);
  }

  coldToken = self->_coldToken;
  if (coldToken != -1)
  {
    notify_cancel(coldToken);
  }

  sunToken = self->_sunToken;
  if (sunToken != -1)
  {
    notify_cancel(sunToken);
  }

  v6.receiver = self;
  v6.super_class = SBThermalController;
  [(SBThermalController *)&v6 dealloc];
}

+ (void)logThermalEvent:(id)event
{
  v3 = MEMORY[0x277CCACA8];
  eventCopy = event;
  v5 = [[v3 alloc] initWithFormat:eventCopy arguments:&v8];

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
  v7 = GetThermalState();
  [v6 addObjectsFromArray:v7];

  logEventForAppleCare();
}

- (void)startListeningForThermalEvents
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = self;
  OUTLINED_FUNCTION_0_6(&dword_21ED4E000, a2, a3, "notify_register(sun) failed : status=%i", a5, a6, a7, a8, v8);
}

uint64_t __53__SBThermalController_startListeningForThermalEvents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  result = notify_get_state(*(v2 + 16), (v2 + 24));
  if (v3 != *(*(a1 + 32) + 24))
  {
    v5 = SBLogThermal(result);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      *buf = 134218240;
      v9 = v3;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "hot condition changed from %llu to %llu", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v7[3] > 0x28uLL || v3 >= 0x29)
    {
      [objc_opt_class() logThermalEvent:{@"ThermalLevel, %llu", *(*(a1 + 32) + 24)}];
      v7 = *(a1 + 32);
    }

    return [v7 _respondToCurrentThermalCondition];
  }

  return result;
}

uint64_t __53__SBThermalController_startListeningForThermalEvents__block_invoke_41(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  result = notify_get_state(*(v2 + 32), (v2 + 40));
  if (v3 != *(*(a1 + 32) + 40))
  {
    v5 = SBLogThermal(result);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 40);
      v7 = 134218240;
      v8 = v3;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "cold condition changed from %llu to %llu", &v7, 0x16u);
    }

    return [*(a1 + 32) _respondToCurrentThermalCondition];
  }

  return result;
}

uint64_t __53__SBThermalController_startListeningForThermalEvents__block_invoke_43(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  result = notify_get_state(*(v2 + 48), (v2 + 56));
  if (v3 != *(*(a1 + 32) + 56))
  {
    v5 = SBLogThermal(result);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 56);
      v7 = 134218240;
      v8 = v3;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "sunlight condition changed from %llu to %llu", &v7, 0x16u);
    }

    return [*(a1 + 32) _respondToCurrentThermalCondition];
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_samplingToken withName:@"samplingToken" skipIfNil:1];
  v5 = NSStringFromSBThermalLevel(self->_level);
  [v3 appendString:v5 withName:@"ThermalLevel"];

  v6 = [v3 appendBool:self->_inSunlight withName:@"inSunlight"];
  v7 = [v3 appendUInt64:self->_hotLevel withName:@"hotLevel"];
  v8 = [v3 appendUInt64:self->_coldLevel withName:@"coldLevel"];
  v9 = [v3 appendUInt64:self->_sunLevel withName:@"sunLevel"];
  build = [v3 build];

  return build;
}

- (void)addThermalObserver:(id)observer
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

- (void)removeThermalObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_respondToCurrentThermalCondition
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBThermalController _respondToCurrentThermalCondition]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBThermalController.m" lineNumber:238 description:@"this call must be made on the main thread"];
}

- (void)_updateThermalJetsamCPUSamplingState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBThermalController.m" lineNumber:293 description:@"failed to create a sampling token"];
}

id __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [MEMORY[0x277D0AAC0] sharedInstance];
  v2 = [v1 allApplicationProcesses];

  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 isPendingExit] & 1) == 0)
        {
          v8 = MEMORY[0x277CCABB0];
          [v7 elapsedCPUTime];
          v9 = [v8 numberWithDouble:?];
          [v0 setObject:v9 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v0;
}

void __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v65 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 8)])
  {
    v2 = (*(*(v1 + 56) + 16))();
    BSContinuousMachTimeNow();
    v4 = v3;
    v5 = *(v1 + 64);
    v39 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = v4 - v5;
      v10 = *v52;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v52 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v51 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          [v13 doubleValue];
          v15 = v14;
          v16 = [*(v1 + 48) objectForKey:v12];
          [v16 doubleValue];
          v18 = v15 - v17;

          v20 = v18 / v9 * 100.0;
          if (v20 > 30.0)
          {
            v21 = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_3(v19, v12);
            if (v21)
            {
              v22 = SBLogThermal(v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v12 bundleIdentifier];
                v24 = [v12 pid];
                *buf = 138544130;
                v57 = v23;
                v58 = 1026;
                v59 = v24;
                v60 = 2048;
                v61 = v20;
                v62 = 2048;
                v63 = v9;
                _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Thermal: Killing %{public}@(%{public}i), which used %.2f%% CPU over the past %.1f seconds.", buf, 0x26u);
              }

              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%CPU:                %.2f%% (sampled for %.1f s)", *&v20, *&v9];
              [v39 setObject:v25 forKey:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v8);
    }

    v26 = v39;
    if (![v39 count])
    {
      v27 = +[SBSceneManagerCoordinator sharedInstance];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_82;
      v48[3] = &unk_2783BFD38;
      v49 = v39;
      v50 = &__block_literal_global_77_1;
      [v27 enumerateSceneManagersWithBlock:v48];
    }

    if ([v39 count])
    {
      v38 = v1;
      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v28 = v39;
      v29 = [v28 countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v45;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v44 + 1) + 8 * j);
            v34 = [v28 objectForKey:v33];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_87;
            v43[3] = &unk_2783A9398;
            v43[4] = v33;
            [v33 killForReason:4 andReport:1 withDescription:v34 completion:v43];
          }

          v30 = [v28 countByEnumeratingWithState:&v44 objects:v55 count:16];
        }

        while (v30);
      }

      v1 = v38;
      v26 = v39;
    }

    v35 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_89;
    block[3] = &unk_2783A92D8;
    v36 = *(v1 + 32);
    v37 = *(v1 + 40);
    v41 = v36;
    v42 = v37;
    dispatch_after(v35, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isCurrentProcess];
  if (v3)
  {
    v4 = SBLogThermal(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Keeping ourselves alive since we can't reasonably exit", buf, 2u);
    }

    goto LABEL_12;
  }

  v4 = [v2 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.mobilephone"];
  if (!v5)
  {
    v9 = [v4 isEqualToString:@"com.apple.LoginUI"];
    if (!v9)
    {
      v10 = 1;
      goto LABEL_13;
    }

    v6 = SBLogThermal(v9);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v12 = 0;
    v7 = "Keeping login window app alive since we can't reasonably exit it";
    v8 = &v12;
    goto LABEL_10;
  }

  v6 = SBLogThermal(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 0;
    v7 = "Keeping phone alive since we need them for emergency calls";
    v8 = &v13;
LABEL_10:
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }

LABEL_11:

LABEL_12:
  v10 = 0;
LABEL_13:

  return v10;
}

void __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_82(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a2 externalForegroundApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138543618;
    v16 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v17 + 1) + 8 * v8) scene];
        v10 = [v9 clientProcess];

        v11 = [*(a1 + 32) objectForKey:v10];

        if (!v11)
        {
          v12 = (*(*(a1 + 40) + 16))();
          if (v12)
          {
            v13 = SBLogThermal(v12);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v10 bundleIdentifier];
              v15 = [v10 pid];
              *buf = v16;
              v22 = v14;
              v23 = 1026;
              v24 = v15;
              _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Thermal: Killing %{public}@(%{public}i), which was topmost.", buf, 0x12u);
            }

            [*(a1 + 32) setObject:@"Topmost application" forKey:v10];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }
}

void __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_87(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = SBLogThermal(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      v5 = [*(a1 + 32) pid];
      v6 = 138543618;
      v7 = v4;
      v8 = 1026;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Thermal: failed to kill %{public}@(%{public}i)", &v6, 0x12u);
    }
  }
}

void *__59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_89(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 8)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    v5 = *(a1 + 40);

    return [v5 _updateThermalJetsamCPUSamplingState];
  }

  return result;
}

- (void)_setBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  v34 = *MEMORY[0x277D85DE8];
  _isBlocked = [(SBThermalController *)self _isBlocked];
  if (_isBlocked != blockedCopy)
  {
    v6 = SBLogThermal(_isBlocked);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromBOOL();
      *buf = 138543362;
      v33 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Will toggle bricked state to: %{public}@", buf, 0xCu);
    }

    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromBOOL();
      *buf = 138543362;
      v33 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Will toggle bricked state to: %{public}@", buf, 0xCu);
    }

    if (blockedCopy)
    {
      v10 = @"ThermalUIAlertEnter";
    }

    else
    {
      v10 = @"ThermalUIAlertExit";
    }

    [SBThermalController logThermalEvent:v10];
    v11 = +[SBTelephonyManager sharedTelephonyManager];
    if ([v11 _serverConnection])
    {
      if (blockedCopy)
      {
        v12 = _CTServerConnectionDisableRegistration();
      }

      else
      {
        v12 = _CTServerConnectionEnableRegistration();
      }

      v15 = v12;
      if (HIDWORD(v12))
      {
        [v11 _serverConnectionDidError:v12];
      }
    }

    else
    {
      v13 = SBLogThermal(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SBThermalController _setBlocked:v13];
      }

      v14 = SBLogStatusBarish();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Unable to change CT registration status. _CTServerConnectionCreate() failed.", buf, 2u);
      }
    }

    if (blockedCopy)
    {
      v16 = +[SBWiFiManager sharedInstance];
      if ([v16 wiFiEnabled])
      {
        [v16 setWiFiEnabled:0];
        [(SBThermalDefaults *)self->_thermalDefaults setWasConnectedToWiFiWhenBrickedForThermalConditions:1];
      }

      [(SBExternalWifiDefaults *)self->_networkDefaults setWifiEnabled:0];
    }

    else if ([(SBThermalDefaults *)self->_thermalDefaults wasConnectedToWiFiWhenBrickedForThermalConditions])
    {
      v17 = +[SBWiFiManager sharedInstance];
      [v17 setWiFiEnabled:1];

      [(SBExternalWifiDefaults *)self->_networkDefaults setWifiEnabled:1];
      [(SBThermalDefaults *)self->_thermalDefaults setWasConnectedToWiFiWhenBrickedForThermalConditions:0];
    }

    [(SBSecurityDefaults *)self->_securityDefaults setBlockedForThermal:blockedCopy];
    v18 = SBLogThermal([(SBSecurityDefaults *)self->_securityDefaults synchronizeDefaults]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromBOOL();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Did toggle bricked state to: %{public}@", buf, 0xCu);
    }

    v20 = SBLogStatusBarish();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = NSStringFromBOOL();
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "Did toggle bricked state to: %{public}@", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = self->_observers;
    v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v27 + 1) + 8 * i) thermalBlockStatusChanged:{self, v27}];
        }

        v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }
}

@end