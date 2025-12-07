@interface BLSHBacklightStateMachine
- (BLSHBacklightHostTelemetryDelegate)telemetryDelegate;
- (BLSHBacklightStateMachine)initWithPlatformProvider:(id)provider eventPerformer:(id)performer osInterfaceProvider:(id)interfaceProvider;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)isAlwaysOnDisabledByAssertion;
- (BOOL)isAlwaysOnEnabled;
- (id)performChangeRequest:(id)request;
- (os_unfair_lock_s)activeOnAPAwakeAssertionIsActive;
- (os_unfair_lock_s)enableAlwaysOnAfterInitialization;
- (uint64_t)onMain_notifyInitialStateForObserver:(uint64_t)observer;
- (void)addObserver:(id)observer;
- (void)backlight:(id)backlight didCompleteUpdateToFlipbookState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)backlight:(id)backlight didUpdateToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode activeEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)backlight:(id)backlight didUpdateVisualContentsToBeginTransitionToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)backlight:(id)backlight willUpdateToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)dealloc;
- (void)endSuppressionServiceWithExplanation:(void *)explanation logBlock:;
- (void)notifyObserversWithBlock:(uint64_t)block;
- (void)onMain_handleSuppressionEvent:(uint64_t)event;
- (void)onMain_performChangeRequest:(uint64_t)request;
- (void)onMain_updateAlwaysOnConfiguration;
- (void)performUnexpectedSleepRequest:(id)request;
- (void)platformProvider:(id)provider didChangeAlwaysOnSetting:(BOOL)setting;
- (void)platformProviderDidDetectSignificantUserInteraction:(id)interaction;
- (void)registerHandlersForService:(id)service;
- (void)removeObserver:(id)observer;
- (void)setAlwaysOnDisabledByAssertion:(BOOL)assertion;
- (void)startSuppressionServiceWithLogBlock:(uint64_t)block;
- (void)systemSleepAction:(id)action performWithCompletion:(id)completion;
- (void)systemSleepAction:(id)action systemWillWakeForReason:(id)reason;
- (void)updateSuppressionServiceForActivityState:(_BYTE *)state;
@end

@implementation BLSHBacklightStateMachine

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledResolved = self->_lock_alwaysOnEnabledResolved;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabledResolved;
}

- (void)onMain_updateAlwaysOnConfiguration
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  OUTLINED_FUNCTION_12_2(self);
  if (*(v1 + 126) == 1 && *(v1 + 121) == 1 && (*(v1 + 122) & 1) == 0)
  {
    v2 = *(v1 + 123);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 1;
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  if (v5 != v3)
  {
    *(v1 + 120) = v3;
    changeRequest = [*(v1 + 32) changeRequest];
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    backlightState = [*(v1 + 144) backlightState];
    if (*(v1 + 120) == 1)
    {
      [*(v1 + 144) isAlwaysOnSuppressed];
    }

    v7 = backlightState != BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable();
    goto LABEL_13;
  }

  changeRequest = 0;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 0;
LABEL_13:
  os_unfair_lock_unlock((v1 + 96));
  if (v5 != v3)
  {
    [(BLSHBacklightStateMachine *)v1 updateSuppressionServiceForActivityState:v4];
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3_2();
    v14[2] = __63__BLSHBacklightStateMachine_onMain_updateAlwaysOnConfiguration__block_invoke;
    v14[3] = &unk_27841FBB8;
    v14[4] = v1;
    v15 = v3;
    [(BLSHBacklightStateMachine *)v1 notifyObserversWithBlock:v14];
    if (v7)
    {
      v9 = @"alwaysOnDisabled";
      if (v3)
      {
        v9 = @"alwaysOnEnabled";
      }

      v10 = v9;
      v11 = changeRequest;
      if (!v11)
      {
        v11 = [objc_alloc(MEMORY[0x277CF0890]) initWithRequestedActivityState:v4 explanation:v10 timestamp:mach_continuous_time() sourceEvent:12 sourceEventMetadata:0];
      }

      v12 = bls_backlight_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v17 = v1;
        v18 = 2114;
        v19 = v10;
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, "BSM:%p sendNewChangeRequest explanation:%{public}@ request:%{public}@", buf, 0x20u);
      }

      v13 = [v1 performChangeRequest:v11];
    }
  }
}

- (os_unfair_lock_s)enableAlwaysOnAfterInitialization
{
  if (result)
  {
    OUTLINED_FUNCTION_12_2(result);
    *(v1 + 123) = 1;
    os_unfair_lock_unlock((v1 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    return BSDispatchMain();
  }

  return result;
}

void __63__BLSHBacklightStateMachine_onMain_updateAlwaysOnConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlight:*(a1 + 32) didChangeAlwaysOnEnabled:*(a1 + 40)];
  }
}

- (BLSHBacklightHostTelemetryDelegate)telemetryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_telemetryDelegate);

  return WeakRetained;
}

- (BLSHBacklightStateMachine)initWithPlatformProvider:(id)provider eventPerformer:(id)performer osInterfaceProvider:(id)interfaceProvider
{
  v41 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  performerCopy = performer;
  interfaceProviderCopy = interfaceProvider;
  v36.receiver = self;
  v36.super_class = BLSHBacklightStateMachine;
  v11 = [(BLSHBacklightStateMachine *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v11->_osInterfaceProvider, interfaceProvider);
  v12->_lock._os_unfair_lock_opaque = 0;
  v12->_lock_nextEventID = 1;
  v13 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
  lock_observers = v12->_lock_observers;
  v12->_lock_observers = v13;

  if (objc_opt_respondsToSelector())
  {
    suppressionSupported = [providerCopy suppressionSupported];
    v12->_suppressionSupported = suppressionSupported;
    if (!suppressionSupported)
    {
LABEL_6:
      if (os_variant_has_internal_diagnostics())
      {
        v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
        v12->_suppressionSupported = [v16 BOOLForKey:@"SuppressionServiceEnabled"];
      }
    }
  }

  else if (!v12->_suppressionSupported)
  {
    goto LABEL_6;
  }

  [performerCopy backlightState];
  if (BLSBacklightStateIsActive())
  {
    mach_continuous_time = [interfaceProviderCopy mach_continuous_time];
    v18 = [(BLSHOSInterfaceProviding *)v12->_osInterfaceProvider createSystemActivityAssertionWithIdentifier:@"BacklightServices.backlightActiveOn.startup" configurator:&__block_literal_global_11];
    lock_activeOnAPAwakeAssertion = v12->_lock_activeOnAPAwakeAssertion;
    v12->_lock_activeOnAPAwakeAssertion = v18;

    v20 = v12->_lock_activeOnAPAwakeAssertion;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_2;
    v32[3] = &unk_27841F988;
    v33 = interfaceProviderCopy;
    v34 = v12;
    v35 = mach_continuous_time;
    [(BLSHSystemActivityAsserting *)v20 acquireWithTimeout:v32 handler:0.0];
  }

  v12->_deviceSupportsAlwaysOn = [interfaceProviderCopy deviceSupportsAlwaysOn];
  objc_storeStrong(&v12->_eventPerformer, performer);
  v12->_lock_activityState = BLSBacklightActivityStateForBLSBacklightState();
  [performerCopy setPerformerDelegate:v12];
  if (objc_opt_respondsToSelector())
  {
    isAlwaysOnEnabled = [providerCopy isAlwaysOnEnabled];
  }

  else
  {
    isAlwaysOnEnabled = 0;
  }

  v12->_lock_alwaysOnEnabledByPlatform = isAlwaysOnEnabled;
  v12->_lock_alwaysOnEnabledResolved = 0;
  [providerCopy addObserver:v12];
  v22 = [BLSHOnSystemSleepAction actionWithIdentifier:@"BacklightStateMachine-Action" delegate:v12 osInterfaceProvider:interfaceProviderCopy];
  sleepAction = v12->_sleepAction;
  v12->_sleepAction = v22;

  [(BLSHOnSystemSleepAction *)v12->_sleepAction install];
  v24 = bls_backlight_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    lock_alwaysOnEnabledByPlatform = v12->_lock_alwaysOnEnabledByPlatform;
    *buf = 134218240;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = lock_alwaysOnEnabledByPlatform;
    _os_log_impl(&dword_21FD11000, v24, OS_LOG_TYPE_INFO, "BSM:%p startup alwaysOnEnabledByPlatform:%{BOOL}u", buf, 0x12u);
  }

  [(BLSHBacklightStateMachine *)v12 updateSuppressionServiceForActivityState:?];
  objc_initWeak(&location, v12);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__6;
  v39 = __Block_byref_object_dispose__6;
  v40 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_81;
  v29[3] = &unk_27841F9B0;
  objc_copyWeak(&v30, &location);
  v29[4] = buf;
  v26 = [interfaceProviderCopy scheduledTimerWithIdentifier:@"backlightAssertionInitialization" interval:v29 leewayInterval:5.0 handler:1.0];
  v27 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v26;

  objc_destroyWeak(&v30);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
LABEL_16:

  return v12;
}

void __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) mach_continuous_time];
  if (a2)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      os_unfair_lock_lock((v10 + 96));
      *(v10 + 56) = v9;
      os_unfair_lock_unlock((v10 + 96));
    }

    v11 = bls_backlight_log();
    if ([v8 afterPendingSleepWasAlreadyInitiated])
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }
  }

  else
  {
    v12 = OS_LOG_TYPE_FAULT;
    v11 = bls_backlight_log();
  }

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(a1 + 40);
    BSTimeDifferenceFromMachTimeToMachTime();
    v15 = 134218754;
    v16 = v13;
    v17 = 2114;
    v18 = v8;
    v19 = 2048;
    v20 = v14;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_21FD11000, v11, v12, "BSM:%p startup activeOn system activity assertion callback details:%{public}@ elapsed:%.4lfs error:%{public}@", &v15, 0x2Au);
  }
}

void __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BLSHBacklightStateMachine *)WeakRetained enableAlwaysOnAfterInitialization];

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)dealloc
{
  [(BLSHBacklightStateMachineEventPerforming *)self->_eventPerformer removeObserver:self];
  [(BLSHSystemActivityAsserting *)self->_lock_activeOnAPAwakeAssertion invalidate];
  [(BLSHSystemActivityAsserting *)self->_lock_performEventAPAwakeAssertion invalidate];
  [(BSTimerScheduleQuerying *)self->_lock_activeOnAPAwakeTimeoutTimer invalidate];
  v3.receiver = self;
  v3.super_class = BLSHBacklightStateMachine;
  [(BLSHBacklightStateMachine *)&v3 dealloc];
}

- (void)registerHandlersForService:(id)service
{
  serviceCopy = service;
  v5 = [BLSHDisableAlwaysOnAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [(BLSHBacklightStateMachine *)a2 registerHandlersForService:?];
  }

  v6 = v5;
  v7 = [(BLSHLocalAssertionAttributeHandler *)BLSHValidWhenBacklightInactiveAttributeHandler registerHandlerForService:serviceCopy];

  if (!v7)
  {
    [(BLSHBacklightStateMachine *)a2 registerHandlersForService:?];
  }
}

- (BOOL)deviceSupportsAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  deviceSupportsAlwaysOn = self->_deviceSupportsAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return deviceSupportsAlwaysOn;
}

- (id)performChangeRequest:(id)request
{
  requestCopy = request;
  v3 = requestCopy;
  BSDispatchMain();

  return 0;
}

uint64_t __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_110(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  kdebug_trace();
  [v3 invalidate];

  v4 = bls_backlight_log();
  if ([*(a1 + 32) safeToUnblank])
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v5 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [*(a1 + 56) timestamp];
    [*(a1 + 64) mach_continuous_time];
    BSTimeDifferenceFromMachTimeToMachTime();
    v10 = 134218498;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_21FD11000, v4, v5, "BSM:%p activeOn system activity assertion timed out (related to rdar://74802930) event:%{public}@ elapsed:%.4lfs", &v10, 0x20u);
  }

  return [*(a1 + 32) setSafeToUnblank:1];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) mach_continuous_time];
  if (v7)
  {
    [v7 code];
  }

  kdebug_trace();
  if (a2)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      os_unfair_lock_lock((v10 + 96));
      *(v10 + 56) = v9;
      os_unfair_lock_unlock((v10 + 96));
    }

    v11 = bls_backlight_log();
    if ([v8 afterPendingSleepWasAlreadyInitiated])
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }
  }

  else
  {
    v12 = OS_LOG_TYPE_FAULT;
    v11 = bls_backlight_log();
  }

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [*(a1 + 56) timestamp];
    BSTimeDifferenceFromMachTimeToMachTime();
    *buf = 134219010;
    v21 = v13;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v14;
    v26 = 2048;
    v27 = v15;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&dword_21FD11000, v11, v12, "BSM:%p activeOn system activity assertion callback details:%{public}@ event:%{public}@ elapsed:%.4lfs error:%{public}@", buf, 0x34u);
  }

  [*(a1 + 64) invalidate];
  [*(a1 + 72) setSafeToUnblank:1];
  v18 = v7;
  v19 = *(a1 + 48);
  v16 = v8;
  v17 = v7;
  BSDispatchMain();
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_117(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDelegate];
  [v2 backlightTelemetrySource:*(a1 + 32) didAcquireSystemActivityWithError:*(a1 + 40) isActive:*(a1 + 64) details:*(a1 + 48) forEvent:*(a1 + 56)];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_118(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDelegate];
  [v2 backlightTelemetrySource:*(a1 + 32) hadExistingSystemActivityForEvent:*(a1 + 40)];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_4(uint64_t a1, int a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = bls_backlight_log();
  if (a2)
  {
    if ([v8 afterPendingSleepWasAlreadyInitiated])
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEBUG;
    }
  }

  else
  {
    v10 = OS_LOG_TYPE_FAULT;
  }

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [*(a1 + 48) timestamp];
    [*(a1 + 56) mach_continuous_time];
    BSTimeDifferenceFromMachTimeToMachTime();
    v14 = 134219010;
    v15 = v11;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_21FD11000, v9, v10, "BSM:%p performEvent system activity assertion callback details:%{public}@ event:%{public}@ elapsed:%.4lfs error:%{public}@", &v14, 0x34u);
  }
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_124(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlightHost:a1[4] willTransitionToState:a1[6] forEvent:a1[5]];
  }
}

uint64_t __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_128(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 observesPerformingAllEvents])
  {
    [v4 backlight:*(a1 + 32) performingEvent:*(a1 + 40)];
  }

  else if (*(a1 + 48) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 observesActivation])
  {
    [v4 backlight:*(a1 + 32) activatingWithEvent:*(a1 + 40)];
  }

  else if (*(a1 + 49) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 observesDeactivation])
  {
    [v4 backlight:*(a1 + 32) deactivatingWithEvent:*(a1 + 40)];
  }

  return MEMORY[0x2821F97D0]();
}

void __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = bls_backlight_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v8 = a1[4];
    v9 = NSStringFromBLSBacklightActivityState();
    v10 = NSStringFromBLSBacklightState();
    v11 = 134218754;
    v12 = v8;
    v13 = 2080;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_21FD11000, v5, v6, "BSM:%p will %sstart suppression service; activityState:%{public}@ unsuppressedTargetBacklightState:%{public}@", &v11, 0x2Au);
  }
}

void __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke_141(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = bls_backlight_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v8 = a1[4];
    v9 = NSStringFromBLSBacklightActivityState();
    v10 = NSStringFromBLSBacklightState();
    v11 = 134218754;
    v12 = v8;
    v13 = 2080;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_21FD11000, v5, v6, "BSM:%p will %send suppression service; activityState:%{public}@ unsuppressedTargetBacklightState:%{public}@", &v11, 0x2Au);
  }
}

- (void)endSuppressionServiceWithExplanation:(void *)explanation logBlock:
{
  v16 = a2;
  explanationCopy = explanation;
  if (self)
  {
    isSuppressionServiceActive = [*(self + 8) isSuppressionServiceActive];
    explanationCopy[2](explanationCopy, isSuppressionServiceActive);
    if (isSuppressionServiceActive)
    {
      [*(self + 8) endSuppressionService];
    }

    os_unfair_lock_lock((self + 96));
    isAlwaysOnSuppressed = [*(self + 144) isAlwaysOnSuppressed];
    [*(self + 144) setAlwaysOnSuppressed:0];
    if ((isSuppressionServiceActive & 1) == 0 && isAlwaysOnSuppressed)
    {
      [BLSHBacklightStateMachine endSuppressionServiceWithExplanation:self logBlock:sel_endSuppressionServiceWithExplanation_logBlock_];
    }

    if (isSuppressionServiceActive & isAlwaysOnSuppressed)
    {
      v8 = mach_continuous_time();
      v9 = objc_alloc(MEMORY[0x277CF0890]);
      v10 = *(self + 112);
      v11 = objc_alloc(MEMORY[0x277CF0898]);
      v12 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0x80000000 timestamp:v8];
      v13 = [v11 initWithSuppressionEvent:v12];
      v14 = [v9 initWithRequestedActivityState:v10 explanation:v16 timestamp:v8 sourceEvent:14 sourceEventMetadata:v13];

      os_unfair_lock_unlock((self + 96));
      if (v14)
      {
        v15 = [self performChangeRequest:v14];
      }
    }

    else
    {
      os_unfair_lock_unlock((self + 96));
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = observerCopy;
  BSDispatchMain();
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

void __88__BLSHBacklightStateMachine_backlight_didCompleteUpdateToState_forEvents_abortedEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToState:a1[8] forEvents:a1[5] abortedEvents:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToState:a1[8] forEvent:a1[7]];
  }
}

void __96__BLSHBacklightStateMachine_backlight_didCompleteUpdateToFlipbookState_forEvents_abortedEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToFlipbookState:a1[8] forEvents:a1[5] abortedEvents:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToFlipbookState:a1[8] forEvent:a1[7]];
  }
}

void __111__BLSHBacklightStateMachine_backlight_didUpdateVisualContentsToBeginTransitionToState_forEvents_abortedEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 observesDidUpdateVisualContents])
  {
    [v3 backlight:a1[4] didUpdateVisualContentsToBeginTransitionToState:a1[7] forEvents:a1[5] abortedEvents:a1[6]];
  }
}

void __103__BLSHBacklightStateMachine_backlight_willUpdateToDisplayMode_fromDisplayMode_forEvents_abortedEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 observesUpdateToDisplayMode])
  {
    [v3 backlight:*(a1 + 32) willUpdateToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) forEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }

  else if (*(a1 + 72) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 observesBlankingChanges])
  {
    [v3 backlight:*(a1 + 32) willUnblankToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) forEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }
}

void __105__BLSHBacklightStateMachine_backlight_didUpdateToDisplayMode_fromDisplayMode_activeEvents_abortedEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 observesUpdateToDisplayMode])
  {
    [v3 backlight:*(a1 + 32) didUpdateToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) activeEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }

  else if (*(a1 + 72) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 observesBlankingChanges])
  {
    [v3 backlight:*(a1 + 32) didBlankToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) activeEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }
}

- (void)platformProvider:(id)provider didChangeAlwaysOnSetting:(BOOL)setting
{
  settingCopy = setting;
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysOnEnabledByPlatform = settingCopy;
  v6 = bls_backlight_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v9 = 1024;
    v10 = settingCopy;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "BSM:%p didChangeAlwaysOnSetting:%{BOOL}u", buf, 0x12u);
  }

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
}

- (void)platformProviderDidDetectSignificantUserInteraction:(id)interaction
{
  if (self->_suppressionSupported)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_activityState = self->_lock_activityState;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_activityState == 1)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __81__BLSHBacklightStateMachine_platformProviderDidDetectSignificantUserInteraction___block_invoke;
      v5[3] = &unk_27841FB90;
      v5[4] = self;
      v5[5] = 1;
      [(BLSHBacklightStateMachine *)self endSuppressionServiceWithExplanation:v5 logBlock:?];
    }
  }

  [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider didDetectSignificantUserInteraction];
}

void __81__BLSHBacklightStateMachine_platformProviderDidDetectSignificantUserInteraction___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = bls_backlight_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v8 = *(a1 + 32);
    v9 = NSStringFromBLSBacklightActivityState();
    v10 = 134218498;
    v11 = v8;
    v12 = 2080;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_21FD11000, v5, v6, "BSM:%p will %send suppression service after significant user interaction; activityState:%{public}@", &v10, 0x20u);
  }
}

- (BOOL)isAlwaysOnDisabledByAssertion
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnDisabledByAssertion = self->_lock_alwaysOnDisabledByAssertion;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnDisabledByAssertion;
}

- (void)setAlwaysOnDisabledByAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysOnDisabledByAssertion = assertionCopy;
  self->_lock_alwaysOnEnabledAfterInitialization = 1;
  v5 = bls_backlight_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    selfCopy = self;
    v8 = 1024;
    v9 = assertionCopy;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "BSM:%p setAlwaysOnDisabledByAssertion:%{BOOL}u", buf, 0x12u);
  }

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
}

- (void)systemSleepAction:(id)action performWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(BLSHBacklightStateMachine *)self backlightState];
  IsActive = BLSBacklightStateIsActive();
  if (IsActive && [(BLSHBacklightStateMachine *)self activeOnAPAwakeAssertionIsActive])
  {
    v9 = [objc_alloc(MEMORY[0x277CF0890]) initWithRequestedActivityState:0 explanation:@"unexpected system sleep" timestamp:mach_continuous_time() sourceEvent:12 sourceEventMetadata:0];
    os_unfair_lock_lock(&self->_lock);
    v10 = MEMORY[0x223D70730](completionCopy);
    lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
    self->_lock_sleepActionCompletion = v10;

    [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider mach_continuous_time];
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    v14 = 0.5 - v12;
    v15 = bls_backlight_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 <= 0.0)
    {
      if (v16)
      {
        BLSLoggingStringForContinuousMachTime();
        v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134219010;
        selfCopy2 = self;
        v30 = 2114;
        v31 = v22;
        v32 = 2048;
        v33 = v13;
        v34 = 2048;
        v35 = 0.5 - v13;
        v36 = 2114;
        v37 = v9;
        _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_DEFAULT, "BSM:%p unexpected system sleep - assertion acquired %{public}@ {elapsedTime:%lf timerInterval:%lf} — dispatching request:%{public}@", buf, 0x34u);
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __69__BLSHBacklightStateMachine_systemSleepAction_performWithCompletion___block_invoke_201;
      v24[3] = &unk_27841E538;
      v18 = &v25;
      v24[4] = self;
      v25 = v9;
      v23 = v9;
      dispatch_async(MEMORY[0x277D85CD0], v24);
    }

    else
    {
      if (v16)
      {
        *buf = 134218498;
        selfCopy2 = self;
        v30 = 2048;
        v31 = 0.5 - v13;
        v32 = 2114;
        v33 = *&v9;
        _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_DEFAULT, "BSM:%p unexpected system sleep - will wait %lfs before sending request:%{public}@", buf, 0x20u);
      }

      osInterfaceProvider = self->_osInterfaceProvider;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __69__BLSHBacklightStateMachine_systemSleepAction_performWithCompletion___block_invoke;
      v26[3] = &unk_27841FBE0;
      v18 = &v27;
      v26[4] = self;
      v27 = v9;
      v19 = v9;
      v20 = [(BLSHOSInterfaceProviding *)osInterfaceProvider scheduledTimerWithIdentifier:@"unexpected system sleep debounce" interval:v26 leewayInterval:0.5 - v13 handler:0.1];
      lock_unexpectedSleepDebounceTimer = self->_lock_unexpectedSleepDebounceTimer;
      self->_lock_unexpectedSleepDebounceTimer = v20;
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = v9 == 0;
  }

  else
  {
    completionCopy[2](completionCopy);
    v7 = 1;
  }

  if ((IsActive & v7) == 1)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BLSHBacklightStateMachine systemSleepAction:v8 performWithCompletion:?];
    }
  }
}

uint64_t __69__BLSHBacklightStateMachine_systemSleepAction_performWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 performUnexpectedSleepRequest:v4];
}

- (void)performUnexpectedSleepRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x223D70730](self->_lock_sleepActionCompletion);
  lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
  systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  aggregateState = [systemSleepMonitor aggregateState];

  v9 = (lock_sleepActionCompletion != 0) & [aggregateState isAwakeOrAbortingSleep];
  if (v9 == 1)
  {
    v10 = self->_lock_sleepActionCompletion;
    self->_lock_sleepActionCompletion = 0;
  }

  [(BSInvalidatable *)self->_lock_unexpectedSleepDebounceTimer invalidate];
  lock_unexpectedSleepDebounceTimer = self->_lock_unexpectedSleepDebounceTimer;
  self->_lock_unexpectedSleepDebounceTimer = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightStateMachine *)self backlightState];
  IsActive = BLSBacklightStateIsActive();
  if (v9)
  {
    v13 = bls_backlight_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v24 = 134218754;
      selfCopy5 = self;
      v26 = 1024;
      *v27 = 1;
      *&v27[4] = 2114;
      *&v27[6] = aggregateState;
      *&v27[14] = 2114;
      *&v27[16] = requestCopy;
      _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "BSM:%p (no longer requested) unexpected system sleep - hasSleepActionCompletion:%{BOOL}u %{public}@ - will not send request:%{public}@", &v24, 0x26u);
    }

    v5[2](v5);
    goto LABEL_13;
  }

  if (!lock_sleepActionCompletion)
  {
    v14 = bls_backlight_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      goto LABEL_13;
    }

    v24 = 134218498;
    selfCopy5 = self;
    v26 = 2114;
    *v27 = requestCopy;
    *&v27[8] = 2114;
    *&v27[10] = aggregateState;
    v15 = "BSM:%p (no sleep action completion) unexpected system sleep - will not send request:%{public}@ %{public}@";
    goto LABEL_10;
  }

  v18 = IsActive;
  activeOnAPAwakeAssertionIsActive = [(BLSHBacklightStateMachine *)self activeOnAPAwakeAssertionIsActive];
  if ((v18 & activeOnAPAwakeAssertionIsActive) != 1)
  {
    v22 = activeOnAPAwakeAssertionIsActive;
    v14 = bls_backlight_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v24 = 134219010;
    selfCopy5 = self;
    v26 = 1024;
    *v27 = v18;
    *&v27[4] = 1024;
    *&v27[6] = v22 & 1;
    *&v27[10] = 2114;
    *&v27[12] = requestCopy;
    *&v27[20] = 2114;
    *&v27[22] = aggregateState;
    v15 = "BSM:%p (no longer active) unexpected system sleep - isActive:%{BOOL}u activeOnAPAssertion:%{BOOL}u – will not send request:%{public}@ %{public}@";
    v16 = v14;
    v17 = 44;
    goto LABEL_11;
  }

  isAwakeOrAbortingSleep = [aggregateState isAwakeOrAbortingSleep];
  v21 = bls_backlight_log();
  v14 = v21;
  if (isAwakeOrAbortingSleep)
  {
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v24 = 134218498;
    selfCopy5 = self;
    v26 = 2114;
    *v27 = requestCopy;
    *&v27[8] = 2114;
    *&v27[10] = aggregateState;
    v15 = "BSM:%p (sleep not requested) unexpected system sleep – will not send request:%{public}@ %{public}@";
LABEL_10:
    v16 = v14;
    v17 = 32;
LABEL_11:
    _os_log_impl(&dword_21FD11000, v16, OS_LOG_TYPE_INFO, v15, &v24, v17);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v24 = 134218498;
    selfCopy5 = self;
    v26 = 2114;
    *v27 = requestCopy;
    *&v27[8] = 2114;
    *&v27[10] = aggregateState;
    _os_log_error_impl(&dword_21FD11000, v14, OS_LOG_TYPE_ERROR, "BSM:%p unexpected system sleep - will deactivate backlight with request:%{public}@ %{public}@", &v24, 0x20u);
  }

  v23 = [(BLSHBacklightStateMachine *)self performChangeRequest:requestCopy];
LABEL_13:
}

- (void)systemSleepAction:(id)action systemWillWakeForReason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  v6 = MEMORY[0x223D70730](self->_lock_sleepActionCompletion);
  lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
  self->_lock_sleepActionCompletion = 0;

  [(BSInvalidatable *)self->_lock_unexpectedSleepDebounceTimer invalidate];
  lock_unexpectedSleepDebounceTimer = self->_lock_unexpectedSleepDebounceTimer;
  self->_lock_unexpectedSleepDebounceTimer = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v9 = bls_backlight_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
      aggregateState = [systemSleepMonitor aggregateState];
      v12 = 134218498;
      selfCopy = self;
      v14 = 2112;
      v15 = reasonCopy;
      v16 = 2114;
      v17 = aggregateState;
      _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "BSM:%p (will not sleep - %@) unexpected system sleep - will not send request %{public}@", &v12, 0x20u);
    }

    v6[2](v6);
  }
}

- (void)updateSuppressionServiceForActivityState:(_BYTE *)state
{
  if (state && state[125] == 1)
  {
    [state isAlwaysOnEnabled];
    v4 = BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable();
    if (v4)
    {
      if (v4 == 1)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke;
        v6[3] = &unk_27841FAC8;
        v6[4] = state;
        v6[5] = a2;
        v6[6] = 1;
        [(BLSHBacklightStateMachine *)state startSuppressionServiceWithLogBlock:v6];
      }
    }

    else
    {
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3_2();
      v5[2] = __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke_141;
      v5[3] = &unk_27841FAC8;
      v5[4] = state;
      v5[5] = a2;
      v5[6] = 0;
      [(BLSHBacklightStateMachine *)state endSuppressionServiceWithExplanation:v5 logBlock:?];
    }
  }
}

- (os_unfair_lock_s)activeOnAPAwakeAssertionIsActive
{
  if (result)
  {
    OUTLINED_FUNCTION_12_2(result);
    isActive = [*(v1 + 48) isActive];
    os_unfair_lock_unlock((v1 + 96));
    return isActive;
  }

  return result;
}

- (void)onMain_performChangeRequest:(uint64_t)request
{
  v81[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (request)
  {
    os_unfair_lock_lock((request + 96));
    v4 = *(request + 124);
    os_unfair_lock_unlock((request + 96));
    if (v4 == 1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke;
      block[3] = &unk_27841E538;
      block[4] = request;
      v76 = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      os_unfair_lock_lock((request + 96));
      v5 = *(request + 144);
      backlightState = [v5 backlightState];
      requestedActivityState = [v3 requestedActivityState];
      if (*(request + 120) == 1)
      {
        [*(request + 144) isAlwaysOnSuppressed];
      }

      v8 = BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable();
      isTransitioning = [v5 isTransitioning];
      v10 = *(request + 104);
      *(request + 104) = v10 + 1;
      v11 = [objc_alloc(MEMORY[0x277CF0888]) initWithEventID:v10 state:v8 previousState:backlightState wasTransitioning:isTransitioning changeRequest:v3];
      objc_storeStrong((request + 32), v11);
      *(request + 112) = requestedActivityState;
      *(request + 124) = 1;
      v41 = *(request + 72);
      v12 = *(request + 48);
      v43 = *(request + 80);
      v44 = backlightState;
      if (!*(request + 40))
      {
        v13 = MEMORY[0x277CF0868];
        v14 = [BLSHDisableFlipbookPowerSavingAttribute disablePowerSavingForReason:1];
        v81[0] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
        v16 = [v13 acquireWithExplanation:@"BacklightEvent" observer:0 attributes:v15];
        v17 = *(request + 40);
        *(request + 40) = v16;

        backlightState = v44;
      }

      os_unfair_lock_unlock((request + 96));
      v18 = bls_backlight_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        requestCopy = request;
        v79 = 2114;
        v80 = v11;
        _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEFAULT, "BSM:%p will performRequest with event:%{public}@", buf, 0x16u);
      }

      [v3 sourceEvent];
      [v3 timestamp];
      kdebug_trace();
      [v5 prewarmEvent:v11];
      telemetryDelegate = [request telemetryDelegate];
      if (objc_opt_respondsToSelector())
      {
        [telemetryDelegate backlightTelemetrySource:request willPerformEvent:v11];
      }

      else
      {
        [telemetryDelegate backlightTelemetrySource:request willTransitionToState:v8 forEvent:v11];
      }

      [(BLSHBacklightStateMachine *)request updateSuppressionServiceForActivityState:requestedActivityState];
      v42 = *(request + 8);
      v40 = telemetryDelegate;
      if (BLSBacklightStateIsActive())
      {
        if (v12)
        {
          v56 = MEMORY[0x277D85DD0];
          v57 = 3221225472;
          v58 = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_118;
          v59 = &unk_27841E538;
          requestCopy2 = request;
          v61 = v11;
          BSDispatchMain();
          v24 = v61;
        }

        else
        {
          [v5 setSafeToUnblank:0];
          [v43 invalidate];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_110;
          v69[3] = &unk_27841F9D8;
          v39 = v5;
          v70 = v39;
          requestCopy3 = request;
          v20 = v11;
          v72 = v20;
          v21 = v3;
          v73 = v21;
          v22 = v42;
          v74 = v22;
          v38 = [v22 scheduledTimerWithIdentifier:@"systemActivity.backlightActiveOn.timeout" interval:v69 leewayInterval:0.6 handler:0.1];

          v12 = [v22 createSystemActivityAssertionWithIdentifier:@"BacklightServices.backlightActiveOn" configurator:&__block_literal_global_116];
          kdebug_trace();
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2;
          v62[3] = &unk_27841FA28;
          v23 = v22;
          backlightState = v44;
          v63 = v23;
          requestCopy4 = request;
          v65 = v20;
          v66 = v21;
          v43 = v38;
          v67 = v43;
          v68 = v39;
          [v12 acquireWithTimeout:v62 handler:0.0];

          v24 = v70;
        }
      }

      if (backlightState == v8)
      {
        v25 = v41;
      }

      else
      {
        state = [*(request + 16) state];
        v25 = v41;
        if (!(v12 | v41))
        {
          if (state == 1)
          {
            v25 = 0;
          }

          else
          {
            v27 = MEMORY[0x277CCACA8];
            changeRequest = [v11 changeRequest];
            v29 = [v27 stringWithFormat:@"BacklightServices.performEvent:%p:%d", v11, objc_msgSend(changeRequest, "sourceEvent")];
            v25 = [v42 createSystemActivityAssertionWithIdentifier:v29 configurator:&__block_literal_global_123];

            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_4;
            v52[3] = &unk_27841FA50;
            v52[4] = request;
            v53 = v11;
            v54 = v3;
            v55 = v42;
            [v25 acquireWithTimeout:v52 handler:22.0];
          }
        }

        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_124;
        v49[3] = &unk_27841FA78;
        v49[4] = request;
        v51 = v8;
        v50 = v11;
        [(BLSHBacklightStateMachine *)request notifyObserversWithBlock:v49];
      }

      os_unfair_lock_lock((request + 96));
      v30 = *(request + 72);
      *(request + 72) = v25;
      v31 = v25;

      v32 = *(request + 48);
      *(request + 48) = v12;
      v33 = v12;

      v34 = *(request + 80);
      *(request + 80) = v43;
      v35 = v43;

      *(request + 124) = 0;
      os_unfair_lock_unlock((request + 96));
      LOBYTE(v34) = BLSBacklightStateIsActive();
      IsActive = BLSBacklightStateIsActive();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_128;
      v45[3] = &unk_27841FAA0;
      v45[4] = request;
      v46 = v11;
      v47 = (v34 ^ 1) & IsActive;
      v48 = v34 & (IsActive ^ 1);
      v37 = v11;
      [(BLSHBacklightStateMachine *)request notifyObserversWithBlock:v45];
      [v5 performEvent:v37];
    }
  }
}

- (void)notifyObserversWithBlock:(uint64_t)block
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (block)
  {
    os_unfair_lock_lock((block + 96));
    allObjects = [*(block + 88) allObjects];
    os_unfair_lock_unlock((block + 96));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = allObjects;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)startSuppressionServiceWithLogBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    isSuppressionServiceActive = [*(block + 8) isSuppressionServiceActive];
    v5 = isSuppressionServiceActive;
    v3[2](v3, isSuppressionServiceActive ^ 1u);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v8 = __65__BLSHBacklightStateMachine_startSuppressionServiceWithLogBlock___block_invoke;
      v9 = &unk_27841FAF0;
      blockCopy = block;
      [v6 startSuppressionServiceWithHandler:v7];
    }
  }
}

- (void)onMain_handleSuppressionEvent:(uint64_t)event
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    if ([*(event + 8) isSuppressionServiceActive])
    {
      os_unfair_lock_lock((event + 96));
      wantsSuppression = [v3 wantsSuppression];
      [*(event + 144) setAlwaysOnSuppressed:wantsSuppression];
      v5 = MEMORY[0x277CCACA8];
      if (wantsSuppression)
      {
        v6 = @"alwaysOn suppressed";
      }

      else
      {
        v6 = @"alwaysOn unsuppressed";
      }

      [v3 reason];
      v7 = NSStringFromBLSAlwaysOnSuppressionReason();
      v8 = [v5 stringWithFormat:@"%@ — %@", v6, v7];

      v9 = objc_alloc(MEMORY[0x277CF0890]);
      v10 = *(event + 112);
      machContinuousTimestamp = [v3 machContinuousTimestamp];
      v12 = [objc_alloc(MEMORY[0x277CF0898]) initWithSuppressionEvent:v3];
      v13 = [v9 initWithRequestedActivityState:v10 explanation:v8 timestamp:machContinuousTimestamp sourceEvent:14 sourceEventMetadata:v12];

      os_unfair_lock_unlock((event + 96));
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_26();
        v20 = v8;
        v21 = v15;
        v22 = v13;
        v23 = v15;
        v24 = v3;
        _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, "BSM:%p suppressionEvent explanation:%{public}@ request:%{public}@ event:%{public}@", buf, 0x2Au);
      }

      v16 = [event performChangeRequest:v13];
    }

    else
    {
      v8 = bls_backlight_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      [v3 reason];
      v13 = NSStringFromBLSAlwaysOnSuppressionReason();
      OUTLINED_FUNCTION_26();
      v20 = v17;
      v21 = v18;
      v22 = v3;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEFAULT, "BSM:%p will ignore suppressionEvent — arrived after service was deactivated — explanation:%{public}@ event:%{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (uint64_t)onMain_notifyInitialStateForObserver:(uint64_t)observer
{
  v3 = a2;
  if (observer)
  {
    v45 = v3;
    os_unfair_lock_lock((observer + 96));
    v4 = [*(observer + 88) containsObject:v45];
    v5 = *(observer + 120);
    os_unfair_lock_unlock((observer + 96));
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        backlightState = [observer backlightState];
        [OUTLINED_FUNCTION_2_8(backlightState v7];
      }

      else if (objc_opt_respondsToSelector())
      {
        backlightState2 = [observer backlightState];
        [OUTLINED_FUNCTION_2_8(backlightState2 v15];
      }

      if (objc_opt_respondsToSelector())
      {
        [v45 backlight:observer didChangeAlwaysOnEnabled:v5];
      }

      if (objc_opt_respondsToSelector())
      {
        flipbookState = [observer flipbookState];
        [OUTLINED_FUNCTION_2_8(flipbookState v23];
      }

      else if (objc_opt_respondsToSelector())
      {
        flipbookState2 = [observer flipbookState];
        [OUTLINED_FUNCTION_2_8(flipbookState2 v31];
      }

      v38 = IsBlankedForBLSBacklightDisplayMode([*(observer + 144) backlightDisplayMode]);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v45 observesUpdateToDisplayMode])
      {
        OUTLINED_FUNCTION_3_6();
        [v39 backlight:? didUpdateToDisplayMode:? fromDisplayMode:? activeEvents:? abortedEvents:?];
      }

      else
      {
        v40 = objc_opt_respondsToSelector();
        if (v38)
        {
          if ((v40 & 1) != 0 && [v45 observesBlankingChanges])
          {
            OUTLINED_FUNCTION_3_6();
            [v41 backlight:? didBlankToDisplayMode:? fromDisplayMode:? activeEvents:? abortedEvents:?];
          }
        }

        else if ((v40 & 1) != 0 && [v45 observesBlankingChanges])
        {
          OUTLINED_FUNCTION_3_6();
          [v42 backlight:? willUnblankToDisplayMode:? fromDisplayMode:? forEvents:? abortedEvents:?];
        }
      }
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents
{
  v55 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  abortedEventsCopy = abortedEvents;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_transitioningEvent && [eventsCopy containsObject:?])
  {
    lock_transitioningEvent = self->_lock_transitioningEvent;
    self->_lock_transitioningEvent = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  firstObject = [eventsCopy firstObject];
  changeRequest = [firstObject changeRequest];
  [firstObject previousState];
  [changeRequest sourceEvent];
  [changeRequest timestamp];
  kdebug_trace();
  v14 = [eventsCopy count];
  v15 = bls_backlight_log();
  v16 = 2 * (v14 == 0);
  if (os_log_type_enabled(v15, v16))
  {
    NSStringFromBLSBacklightState();
    stateCopy = state;
    v17 = changeRequest;
    v19 = v18 = abortedEventsCopy;
    [v17 timestamp];
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v21 = v20;
    v22 = NSStringFromBLSBacklightChangeEvents();
    OUTLINED_FUNCTION_10();
    v50 = v19;
    v51 = 2048;
    v52 = v21;
    v53 = v23;
    v54 = v24;
    _os_log_impl(&dword_21FD11000, v15, v16, "BSM:%p didCompleteUpdateToState:%{public}@ elapsed:%.4lfs forEvents:%{public}@", buf, 0x2Au);

    abortedEventsCopy = v18;
    changeRequest = v17;
    state = stateCopy;
  }

  if (v14)
  {
    telemetryDelegate = [(BLSHBacklightStateMachine *)self telemetryDelegate];
    if (objc_opt_respondsToSelector())
    {
      [telemetryDelegate backlightTelemetrySource:self didCompleteUpdateToState:state forEvents:eventsCopy abortedEvents:abortedEventsCopy];
    }

    else
    {
      [telemetryDelegate backlightTelemetrySource:self didCompleteUpdateToState:state forEvent:firstObject];
    }
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  v42 = __88__BLSHBacklightStateMachine_backlight_didCompleteUpdateToState_forEvents_abortedEvents___block_invoke;
  v43 = &unk_27841FB18;
  selfCopy = self;
  stateCopy2 = state;
  v26 = eventsCopy;
  v45 = v26;
  v27 = abortedEventsCopy;
  v46 = v27;
  v28 = firstObject;
  v47 = v28;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v41];
  os_unfair_lock_lock(&self->_lock);
  [(BLSHSystemActivityAsserting *)self->_lock_performEventAPAwakeAssertion invalidate];
  lock_performEventAPAwakeAssertion = self->_lock_performEventAPAwakeAssertion;
  self->_lock_performEventAPAwakeAssertion = 0;

  IsActive = BLSBacklightStateIsActive();
  if ((IsActive & 1) == 0)
  {
    [(BSTimerScheduleQuerying *)self->_lock_activeOnAPAwakeTimeoutTimer invalidate];
    lock_activeOnAPAwakeTimeoutTimer = self->_lock_activeOnAPAwakeTimeoutTimer;
    self->_lock_activeOnAPAwakeTimeoutTimer = 0;

    [(BLSHSystemActivityAsserting *)self->_lock_activeOnAPAwakeAssertion invalidate];
    lock_activeOnAPAwakeAssertion = self->_lock_activeOnAPAwakeAssertion;
    self->_lock_activeOnAPAwakeAssertion = 0;
  }

  v33 = MEMORY[0x223D70730](self->_lock_sleepActionCompletion);
  lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
  self->_lock_sleepActionCompletion = 0;

  [(BLSAssertion *)self->_lock_flipbookPowerSavingAssertion invalidate];
  lock_flipbookPowerSavingAssertion = self->_lock_flipbookPowerSavingAssertion;
  self->_lock_flipbookPowerSavingAssertion = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v33)
  {
    v36 = IsActive;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = bls_backlight_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = NSStringFromBLSBacklightChangeEvents();
      OUTLINED_FUNCTION_10();
      v50 = v39;
      _os_log_impl(&dword_21FD11000, v37, OS_LOG_TYPE_DEFAULT, "BSM:%p unexpected system sleep - did deactivate backlight with events:%{public}@", buf, 0x16u);
    }

    v33[2](v33);
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToFlipbookState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents
{
  eventsCopy = events;
  abortedEventsCopy = abortedEvents;
  firstObject = [eventsCopy firstObject];
  telemetryDelegate = [(BLSHBacklightStateMachine *)self telemetryDelegate];
  if (objc_opt_respondsToSelector())
  {
    [telemetryDelegate backlightTelemetrySource:self didCompleteUpdateToFlipbookState:state forEvents:eventsCopy abortedEvents:abortedEventsCopy];
  }

  else
  {
    [telemetryDelegate backlightTelemetrySource:self didCompleteUpdateToFlipbookState:state forEvent:firstObject];
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  v17 = __96__BLSHBacklightStateMachine_backlight_didCompleteUpdateToFlipbookState_forEvents_abortedEvents___block_invoke;
  v18 = &unk_27841FB18;
  v22 = firstObject;
  stateCopy = state;
  selfCopy = self;
  v20 = eventsCopy;
  v21 = abortedEventsCopy;
  v13 = firstObject;
  v14 = abortedEventsCopy;
  v15 = eventsCopy;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v16];
}

- (void)backlight:(id)backlight didUpdateVisualContentsToBeginTransitionToState:(int64_t)state forEvents:(id)events abortedEvents:(id)abortedEvents
{
  eventsCopy = events;
  abortedEventsCopy = abortedEvents;
  firstObject = [eventsCopy firstObject];
  telemetryDelegate = [(BLSHBacklightStateMachine *)self telemetryDelegate];
  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_6_4() backlightTelemetrySource:? didUpdateVisualContentsToBeginTransitionToState:? forEvents:? abortedEvents:?];
  }

  else
  {
    [OUTLINED_FUNCTION_6_4() backlightTelemetrySource:? didUpdateVisualContentsToBeginTransitionToState:? forEvent:?];
  }

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v15[2] = __111__BLSHBacklightStateMachine_backlight_didUpdateVisualContentsToBeginTransitionToState_forEvents_abortedEvents___block_invoke;
  v15[3] = &unk_27841FB40;
  v15[4] = self;
  v16 = eventsCopy;
  v17 = abortedEventsCopy;
  stateCopy = state;
  v13 = abortedEventsCopy;
  v14 = eventsCopy;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v15];
}

- (void)backlight:(id)backlight willUpdateToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode forEvents:(id)events abortedEvents:(id)abortedEvents
{
  eventsCopy = events;
  abortedEventsCopy = abortedEvents;
  WillUnblankForDisplayModeTransition(displayMode, mode);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v16[2] = __103__BLSHBacklightStateMachine_backlight_willUpdateToDisplayMode_fromDisplayMode_forEvents_abortedEvents___block_invoke;
  v16[3] = &unk_27841FB68;
  modeCopy = mode;
  displayModeCopy = displayMode;
  v16[4] = self;
  v17 = eventsCopy;
  v18 = abortedEventsCopy;
  v21 = v13;
  v14 = abortedEventsCopy;
  v15 = eventsCopy;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v16];
}

- (void)backlight:(id)backlight didUpdateToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode activeEvents:(id)events abortedEvents:(id)abortedEvents
{
  eventsCopy = events;
  abortedEventsCopy = abortedEvents;
  v13 = WillUnblankForDisplayModeTransition(displayMode, mode);
  firstObject = [eventsCopy firstObject];
  telemetryDelegate = [(BLSHBacklightStateMachine *)self telemetryDelegate];
  if (v13)
  {
    if (objc_opt_respondsToSelector())
    {
      [OUTLINED_FUNCTION_6_4() backlightTelemetrySource:? didUnblankToDisplayMode:? fromDisplayMode:? activeEvents:? abortedEvents:?];
    }

    else if (firstObject)
    {
      v16 = BLSBacklightStateForBLSBacklightDisplayMode(mode);
      if (objc_opt_respondsToSelector())
      {
        [telemetryDelegate backlightTelemetrySource:self didUpdateDisplayForState:v16 forEvents:eventsCopy abortedEvents:abortedEventsCopy];
      }

      else
      {
        [telemetryDelegate backlightTelemetrySource:self didUpdateDisplayForState:v16 forEvent:firstObject];
      }
    }
  }

  WillBlankForDisplayModeTransition(displayMode, mode);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v20[2] = __105__BLSHBacklightStateMachine_backlight_didUpdateToDisplayMode_fromDisplayMode_activeEvents_abortedEvents___block_invoke;
  v20[3] = &unk_27841FB68;
  modeCopy = mode;
  displayModeCopy = displayMode;
  v20[4] = self;
  v21 = eventsCopy;
  v22 = abortedEventsCopy;
  v25 = v17;
  v18 = abortedEventsCopy;
  v19 = eventsCopy;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v20];
}

- (void)registerHandlersForService:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)endSuppressionServiceWithExplanation:(uint64_t)a1 logBlock:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"BSM:%p suppressed but suppression service not active", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)systemSleepAction:(uint64_t)a1 performWithCompletion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "BSM:%p system sleep while acquiring system activity, did not deactivate backlight", &v2, 0xCu);
}

@end