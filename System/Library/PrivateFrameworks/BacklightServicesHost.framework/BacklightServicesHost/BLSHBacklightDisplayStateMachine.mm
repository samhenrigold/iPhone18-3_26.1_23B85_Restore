@interface BLSHBacklightDisplayStateMachine
- (BLSHBacklightDisplayStateMachine)initWithDelegate:(id)delegate platformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider;
- (BLSHBacklightDisplayStateMachineDelegate)delegate;
- (BOOL)isHighLuminanceAlwaysOn;
- (BOOL)isTransitioningDisplayMode;
- (BOOL)releaseLiveRenderingSystemActivityAssertion;
- (NSString)description;
- (id)abortContextForTimer:(id)timer;
- (id)identifier;
- (int64_t)displayMode;
- (int64_t)lastSteadyStateDisplayMode;
- (os_unfair_lock_s)switchToFlipbookState:(os_unfair_lock_s *)result;
- (os_unfair_lock_s)transitionToCADisplayState:(os_unfair_lock_s *)result;
- (uint64_t)_lock_cbDisplayModeForBacklightDisplayMode:(uint64_t)result;
- (uint64_t)displayModeForOSInterfaceProvider:(uint64_t)provider;
- (void)_acquireLiveRenderingSystemActivityAssertion;
- (void)acquireDisplayPowerAssertionForReason:(os_unfair_lock_s *)reason;
- (void)acquireLiveRenderingSystemActivityAssertionIfNecessary:(uint64_t)necessary;
- (void)dealloc;
- (void)onMain_performNextStepInModeTransition;
- (void)osInterfaceProvider:(id)provider didCompleteSwitchToCBFlipbookState:(int64_t)state withError:(id)error;
- (void)osInterfaceProvider:(id)provider didCompleteTransitionToCADisplayState:(int64_t)state currentState:(int64_t)currentState transitionStatus:(int64_t)status;
- (void)osInterfaceProvider:(id)provider didCompleteTransitionToCBDisplayMode:(int64_t)mode withError:(id)error;
- (void)prewarmForDisplayMode:(int64_t)mode;
- (void)releaseDisplayPowerAssertion;
- (void)replaceCurrentWatchdog;
- (void)resumeDisplayMode:(int64_t)mode;
- (void)setDisplayMode:(int64_t)mode withRampDuration:(double)duration;
- (void)setHighLuminanceAlwaysOn:(BOOL)on;
- (void)transitionToDisplayMode:(int)mode withDuration:(double)duration shouldWaitForCompletion:;
@end

@implementation BLSHBacklightDisplayStateMachine

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  isShowingBlankingWindow = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface isShowingBlankingWindow];
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  displayMode = self->_lock_displayRampOperation.displayMode;
  v6 = NSStringFromBLSBacklightDisplayMode(displayMode);
  [v4 appendString:v6 withName:@"displayMode"];

  v7 = [v4 appendBool:self->_lock_displayRampOperation.phase != 2 withName:@"transitioning"];
  v8 = [v4 appendBool:self->_lock_caDisplayStateChangeOperation.phase == 1 withName:@"updatingCA" ifEqualTo:1];
  lock_prewarmingDisplayMode = self->_lock_prewarmingDisplayMode;
  if (self->_lock_isPrewarmingDisplayMode)
  {
    v10 = @"prewarmingDisplayMode";
  }

  else
  {
    if (displayMode != lock_prewarmingDisplayMode)
    {
      goto LABEL_6;
    }

    v10 = @"prewarmedDisplayMode";
    lock_prewarmingDisplayMode = displayMode;
  }

  v11 = NSStringFromBLSBacklightDisplayMode(lock_prewarmingDisplayMode);
  [v4 appendString:v11 withName:v10];

LABEL_6:
  if (self->_lock_displayRampOperation.phase == 2)
  {
    if (self->_lock_cbDisplayModeTransitionOperation.phase == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v12 = NSStringFromBLSBacklightDisplayMode(self->_lock_lastSteadyStateDisplayMode);
  [v4 appendString:v12 withName:@"lastSteadyStateMode"];

  if (self->_lock_cbDisplayModeTransitionOperation.phase != 2)
  {
LABEL_14:
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u->%u", self->_lock_completedCBDisplayMode, self->_lock_cbDisplayModeTransitionOperation.cbDisplayMode];
    if (self->_lock_cbDisplayModeTransitionOperation.shouldWait)
    {
      v16 = @"waitingForCBDisplayMode";
    }

    else
    {
      v16 = @"pendingCBDisplayMode";
    }

    [v4 appendString:v15 withName:v16];

    goto LABEL_18;
  }

  if (self->_lock_cbDisplayModeTransitionOperation.shouldWait)
  {
    v13 = @"completedWaitForCBDisplayMode";
  }

  else
  {
    v13 = @"completedCBDisplayMode";
  }

  v14 = [v4 appendInteger:self->_lock_cbDisplayModeTransitionOperation.cbDisplayMode withName:v13];
LABEL_18:
  if (self->_lock_cbFlipbookStateChangeOperation.phase != 2)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u->%u", self->_lock_completedCBFlipbookState, self->_lock_cbFlipbookStateChangeOperation.cbFlipbookState];
    [v4 appendString:v17 withName:@"pendingCBFlipbookState"];
  }

  v18 = [v4 appendObject:self->_lock_liveRenderingSystemActivityAssertion withName:@"liveAssertion" skipIfNil:1];
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightOSInterfaceProviding *)self->_osInterface caDisplayState];
  v19 = NSStringFromCADisplayState();
  v20 = [v4 appendObject:v19 withName:@"caDisplayState"];

  v21 = NSStringFromCBDisplayMode_bls([(BLSHBacklightOSInterfaceProviding *)self->_osInterface cbDisplayMode]);
  v22 = [v4 appendObject:v21 withName:@"cbDisplayMode"];

  v23 = [v4 appendBool:isShowingBlankingWindow withName:@"showingBlankingWindow" ifEqualTo:1];
  v24 = [v4 appendInteger:-[BLSHBacklightOSInterfaceProviding cbFlipbookState](self->_osInterface withName:{"cbFlipbookState"), @"cbFlipbookState"}];
  build = [v4 build];

  return build;
}

- (int64_t)displayMode
{
  os_unfair_lock_lock(&self->_lock);
  displayMode = self->_lock_displayRampOperation.displayMode;
  os_unfair_lock_unlock(&self->_lock);
  return displayMode;
}

- (void)_acquireLiveRenderingSystemActivityAssertion
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_9_2(self);
    if (*(v1 + 288))
    {
      v2 = bls_backlight_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(v1 + 288);
        v10 = 134218242;
        v11 = v1;
        v12 = 2114;
        v13 = v8;
        OUTLINED_FUNCTION_14_4(&dword_21FD11000, v2, v3, "DSM:%p already have live rendering system activity assertion %{public}@", &v10);
      }
    }

    else
    {
      v4 = mach_continuous_time();
      v5 = [*(v1 + 32) createSystemActivityAssertionWithIdentifier:@"BacklightServices.liveRendering" configurator:&__block_literal_global_162];
      v6 = *(v1 + 288);
      *(v1 + 288) = v5;

      v7 = *(v1 + 288);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __80__BLSHBacklightDisplayStateMachine__acquireLiveRenderingSystemActivityAssertion__block_invoke_2;
      v9[3] = &unk_278420450;
      v9[4] = v1;
      v9[5] = v4;
      [v7 acquireWithTimeout:v9 handler:0.0];
    }

    os_unfair_lock_unlock((v1 + 24));
  }
}

- (void)replaceCurrentWatchdog
{
  if (self)
  {
    OUTLINED_FUNCTION_9_2(self);
    v2 = *(v1 + 8);
    if (v2)
    {
      explanation = [v2 explanation];
      v4 = bls_diagnostics_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_10_2();
        _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, 0x16u);
      }

      [*(v1 + 8) invalidate:1];
      v9 = [*(v1 + 32) scheduleWatchdogWithDelegate:v1 explanation:explanation timeout:20.0 + 2.0 + 2.0];
      v10 = *(v1 + 8);
      *(v1 + 8) = v9;
    }

    os_unfair_lock_unlock((v1 + 24));
  }
}

void __80__BLSHBacklightDisplayStateMachine__acquireLiveRenderingSystemActivityAssertion__block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
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
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    v14 = [v7 bls_loggingString];
    v15 = 134218754;
    v16 = v11;
    v17 = 2048;
    v18 = v13;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_21FD11000, v9, v10, "DSM:%p live rendering system activity assertion callback elapsed:%.4lfs details:%{public}@ error:%{public}@", &v15, 0x2Au);
  }
}

- (void)onMain_performNextStepInModeTransition
{
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v4 = v3 <= 0.05;
  v5 = bls_backlight_log();
  v6 = 2 * v4;
  if (os_log_type_enabled(v5, v6))
  {
    v11 = NSStringFromCADisplayState();
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v7, v8, v6, v9, v10, 0x20u);
  }
}

- (BLSHBacklightDisplayStateMachine)initWithDelegate:(id)delegate platformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider
{
  delegateCopy = delegate;
  providerCopy = provider;
  interfaceProviderCopy = interfaceProvider;
  v29.receiver = self;
  v29.super_class = BLSHBacklightDisplayStateMachine;
  v11 = [(BLSHBacklightDisplayStateMachine *)&v29 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v14 = [(BLSHBacklightDisplayStateMachine *)v11 displayModeForOSInterfaceProvider:interfaceProviderCopy];
    *(v12 + 104) = v14;
    *(v12 + 112) = v14;
    *(v12 + 56) = 0;
    *(v12 + 64) = v14;
    *(v12 + 72) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = 0;
    *(v12 + 96) = 2;
    [interfaceProviderCopy setDisplayStateDelegate:v12];
    cbDisplayMode = [interfaceProviderCopy cbDisplayMode];
    *(v12 + 128) = 0;
    *(v12 + 136) = cbDisplayMode;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0;
    *(v12 + 184) = xmmword_21FDA5490;
    *(v12 + 120) = cbDisplayMode;
    cbFlipbookState = [interfaceProviderCopy cbFlipbookState];
    v17 = mach_continuous_time();
    *(v12 + 200) = 0;
    *(v12 + 208) = cbFlipbookState;
    *(v12 + 216) = 2;
    *(v12 + 224) = v17;
    *(v12 + 232) = cbFlipbookState;
    objc_storeStrong((v12 + 32), interfaceProvider);
    objc_storeWeak((v12 + 320), delegateCopy);
    objc_initWeak(&location, v12);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __90__BLSHBacklightDisplayStateMachine_initWithDelegate_platformProvider_osInterfaceProvider___block_invoke;
    v26 = &unk_27841EC40;
    objc_copyWeak(&v27, &location);
    *(v12 + 312) = os_state_add_handler();
    if ((IsOffForBLSBacklightDisplayMode(v14) & 1) == 0)
    {
      v18 = [*(v12 + 32) acquireDisplayPowerAssertionForReason:{0, v23, 3221225472, __90__BLSHBacklightDisplayStateMachine_initWithDelegate_platformProvider_osInterfaceProvider___block_invoke, &unk_27841EC40}];
      v19 = *(v12 + 280);
      *(v12 + 280) = v18;
    }

    [(BLSHBacklightDisplayStateMachine *)v12 acquireLiveRenderingSystemActivityAssertionIfNecessary:v14];
    if (v14 - 2 > 4)
    {
      v20 = 100;
    }

    else
    {
      v20 = qword_21FDA54B0[v14 - 2];
    }

    v21 = [interfaceProviderCopy createDisplayPowerResourceHintWithState:{v20, v23, v24, v25, v26}];
    v22 = *(v12 + 40);
    *(v12 + 40) = v21;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v12;
}

uint64_t __90__BLSHBacklightDisplayStateMachine_initWithDelegate_platformProvider_osInterfaceProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained description];
  v4 = BLSStateDataWithTitleDescriptionAndHints();

  return v4;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  [(BLSHTTRWatchdog *)self->_liveRenderingTTRWatchdog stopWatchdog];
  [(BLSHSystemActivityAsserting *)self->_lock_liveRenderingSystemActivityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BLSHBacklightDisplayStateMachine;
  [(BLSHBacklightDisplayStateMachine *)&v3 dealloc];
}

- (int64_t)lastSteadyStateDisplayMode
{
  os_unfair_lock_lock(&self->_lock);
  lock_lastSteadyStateDisplayMode = self->_lock_lastSteadyStateDisplayMode;
  os_unfair_lock_unlock(&self->_lock);
  return lock_lastSteadyStateDisplayMode;
}

- (BOOL)isTransitioningDisplayMode
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_displayRampOperation.phase == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isHighLuminanceAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  lock_highLuminanceAlwaysOn = self->_lock_highLuminanceAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return lock_highLuminanceAlwaysOn;
}

- (void)setHighLuminanceAlwaysOn:(BOOL)on
{
  onCopy = on;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_highLuminanceAlwaysOn == onCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = IsAlwaysOnBrightnessForBLSBacklightDisplayMode(self->_lock_displayRampOperation.displayMode);
    self->_lock_highLuminanceAlwaysOn = onCopy;
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      BSDispatchMain();
    }
  }
}

- (void)resumeDisplayMode:(int64_t)mode
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  displayMode = self->_lock_displayRampOperation.displayMode;
  lock_isPrewarmingDisplayMode = self->_lock_isPrewarmingDisplayMode;
  self->_lock_isPrewarmingDisplayMode = 0;
  if (displayMode == mode)
  {
    if (lock_isPrewarmingDisplayMode)
    {
      v7 = bls_backlight_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromBLSBacklightDisplayMode(mode);
        *buf = 134218242;
        selfCopy2 = self;
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "DSM:%p resumed transition to display mode:%{public}@", buf, 0x16u);
      }

      os_unfair_lock_unlock(&self->_lock);
LABEL_9:
      BSDispatchMain();
      return;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = bls_backlight_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = NSStringFromBLSBacklightDisplayMode(mode);
      v11 = NSStringFromBLSBacklightDisplayMode(displayMode);
      *buf = 134218498;
      selfCopy2 = self;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_fault_impl(&dword_21FD11000, v9, OS_LOG_TYPE_FAULT, "DSM:%p resumed display mode:%{public}@ did not match current target:%{public}@", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (lock_isPrewarmingDisplayMode)
    {
      goto LABEL_9;
    }
  }
}

BLSHTTRWatchdogConfiguration *__91__BLSHBacklightDisplayStateMachine_acquireLiveRenderingSystemActivityAssertionIfNecessary___block_invoke()
{
  v0 = objc_opt_new();
  [v0 setIdentifier:@"bls_dsm_live_rendering_assertion"];
  [v0 setTimeout:90.0];
  [v0 setLeeway:2.0];
  [v0 setEnabledByDefault:0];

  return v0;
}

BLSHTTRWatchdogDetails *__91__BLSHBacklightDisplayStateMachine_acquireLiveRenderingSystemActivityAssertionIfNecessary___block_invoke_2()
{
  v0 = objc_opt_new();
  [v0 setRadarTitle:@"DSM Live Rendering Assertion Held Longer Than 90s"];
  [v0 setRadarDescription:@"BacklightServices DisplayStateMachine held it's live rendering assertion for longer than 90s while not in the live display mode. This will cause higher power drain than necessary."];
  [v0 setDisplayReason:@"Live rendering assertion held for > 90 seconds"];
  v1 = [MEMORY[0x277CBEAA8] now];
  [v0 setTimeOfIssue:v1];

  [v0 setShowTTRAlert:1];

  return v0;
}

- (void)osInterfaceProvider:(id)provider didCompleteTransitionToCBDisplayMode:(int64_t)mode withError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = bls_backlight_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v17 = NSStringFromCBDisplayMode_bls(mode);
      bls_loggingString = [errorCopy bls_loggingString];
      *buf = 134218498;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = bls_loggingString;
      _os_log_fault_impl(&dword_21FD11000, v10, OS_LOG_TYPE_FAULT, "DSM:%p core brightness failed to switch to display mode:%{public}@ error:%{public}@", buf, 0x20u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_completedCBDisplayMode = mode;
  if (self->_lock_cbDisplayModeTransitionOperation.cbDisplayMode != mode)
  {
    v13 = bls_backlight_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromCBDisplayMode_bls(mode);
      v15 = NSStringFromCBDisplayMode_bls(self->_lock_cbDisplayModeTransitionOperation.cbDisplayMode);
      phase = self->_lock_cbDisplayModeTransitionOperation.phase;
      *buf = 134218754;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      v25 = 1024;
      v26 = phase;
      _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "DSM:%p core brightness completed switch to wrong display mode:%{public}@, waiting for display mode:%{public}@ phase:%u", buf, 0x26u);

LABEL_15:
    }

LABEL_18:

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_19;
  }

  v11 = self->_lock_cbDisplayModeTransitionOperation.phase;
  v12 = bls_backlight_log();
  v13 = v12;
  if (v11 == 2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromCBDisplayMode_bls(mode);
      *buf = 134218242;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "DSM:%p (likely initialization) core brightness completed switch to display mode:%{public}@", buf, 0x16u);
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (v11 != 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BLSHBacklightDisplayStateMachine osInterfaceProvider:mode didCompleteTransitionToCBDisplayMode:? withError:?];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BLSHBacklightDisplayStateMachine osInterfaceProvider:mode didCompleteTransitionToCBDisplayMode:? withError:?];
  }

  self->_lock_cbDisplayModeTransitionOperation.phase = 2;
  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
LABEL_19:
}

- (void)osInterfaceProvider:(id)provider didCompleteSwitchToCBFlipbookState:(int64_t)state withError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = bls_backlight_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v15 = NSStringFromCBFlipbookState_bls(state);
      bls_loggingString = [errorCopy bls_loggingString];
      *buf = 134218498;
      selfCopy2 = self;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = bls_loggingString;
      _os_log_fault_impl(&dword_21FD11000, v10, OS_LOG_TYPE_FAULT, "DSM:%p core brightness failed to switch to flipbook state:%{public}@ error:%{public}@", buf, 0x20u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_completedCBFlipbookState = state;
  if (self->_lock_cbFlipbookStateChangeOperation.phase == 1 && self->_lock_cbFlipbookStateChangeOperation.cbFlipbookState == state)
  {
    v11 = bls_backlight_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BLSHBacklightDisplayStateMachine osInterfaceProvider:state didCompleteSwitchToCBFlipbookState:? withError:?];
    }

    self->_lock_cbFlipbookStateChangeOperation.phase = 2;
    os_unfair_lock_unlock(&self->_lock);
    kdebug_trace();
    BSDispatchMain();
  }

  else
  {
    v12 = bls_backlight_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromCBFlipbookState_bls(state);
      v14 = NSStringFromCBFlipbookState_bls(self->_lock_cbFlipbookStateChangeOperation.cbFlipbookState);
      *buf = 134218498;
      selfCopy2 = self;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, "DSM:%p core brightness completed switch to wrong flipbook state:%{public}@}, waiting for flipbook state:%{public}@", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)osInterfaceProvider:(id)provider didCompleteTransitionToCADisplayState:(int64_t)state currentState:(int64_t)currentState transitionStatus:(int64_t)status
{
  v41 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (status != 3 && status)
  {
    v11 = bls_backlight_log();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v22 = NSStringFromCADisplayStateTransitionStatus();
    v23 = NSStringFromCADisplayState();
    v24 = NSStringFromCADisplayState();
    v25 = NSStringFromCADisplayState();
    phase = self->_lock_caDisplayStateChangeOperation.phase;
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    *buf = 134219522;
    selfCopy6 = self;
    v31 = 2112;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v24;
    v37 = 2114;
    *v38 = v25;
    *&v38[8] = 1024;
    *&v38[10] = phase;
    v39 = 2048;
    v40 = v27;
    _os_log_fault_impl(&dword_21FD11000, v11, OS_LOG_TYPE_FAULT, "DSM:%p core animation state transition status:%@ to display state:%{public}@, current display state:%{public}@ – pending transition to display state:%{public}@ phase:%u elapsed:%lfs", buf, 0x44u);

LABEL_16:
    goto LABEL_18;
  }

  self->_lock_completedCADisplayState = state;
  if (self->_lock_caDisplayStateChangeOperation.caDisplayState != state)
  {
    v11 = bls_backlight_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromCADisplayState();
      v18 = NSStringFromCADisplayState();
      v19 = NSStringFromCADisplayState();
      v20 = self->_lock_caDisplayStateChangeOperation.phase;
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      *buf = 134219266;
      selfCopy6 = self;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = v19;
      v37 = 1024;
      *v38 = v20;
      *&v38[4] = 2048;
      *&v38[6] = v21;
      _os_log_impl(&dword_21FD11000, v11, OS_LOG_TYPE_INFO, "DSM:%p core animation completed transition to wrong display state:%{public}@ (currentState:%{public}@), waiting for display state:%{public}@ phase:%u elapsed:%lfs", buf, 0x3Au);
    }

    goto LABEL_18;
  }

  v9 = self->_lock_caDisplayStateChangeOperation.phase;
  v10 = bls_backlight_log();
  v11 = v10;
  if (v9 == 2)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v22 = NSStringFromCADisplayStateTransitionStatus();
    v23 = NSStringFromCADisplayState();
    v24 = NSStringFromCADisplayState();
    *buf = 134218754;
    selfCopy6 = self;
    v31 = 2114;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v24;
    _os_log_impl(&dword_21FD11000, v11, OS_LOG_TYPE_INFO, "DSM:%p (likely initialization) core animation completed(%{public}@) switch to display state:%{public}@ currentState:%{public}@", buf, 0x2Au);
    goto LABEL_16;
  }

  if (v9 == 1)
  {
    if (status)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_21:

        self->_lock_caDisplayStateChangeOperation.phase = 2;
        os_unfair_lock_unlock(&self->_lock);
        BSDispatchMain();
        return;
      }

      v12 = NSStringFromCADisplayState();
      v13 = NSStringFromCADisplayState();
      v14 = NSStringFromCADisplayState();
      v15 = self->_lock_caDisplayStateChangeOperation.phase;
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      *buf = 134219266;
      selfCopy6 = self;
      v31 = 2114;
      v32 = v12;
      v33 = 2114;
      v34 = v13;
      v35 = 2114;
      v36 = v14;
      v37 = 1024;
      *v38 = v15;
      *&v38[4] = 2048;
      *&v38[6] = v16;
      _os_log_impl(&dword_21FD11000, v11, OS_LOG_TYPE_INFO, "DSM:%p core animation reporting interrupted transition to display state:%{public}@, current display state:%{public}@ – pending transition to display state:%{public}@ phase:%u elapsed:%lfs", buf, 0x3Au);
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v12 = NSStringFromCADisplayState();
      v13 = NSStringFromCADisplayState();
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      *buf = 134218754;
      selfCopy6 = self;
      v31 = 2114;
      v32 = v12;
      v33 = 2114;
      v34 = v13;
      v35 = 2048;
      v36 = v28;
      _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "DSM:%p core animation completed transition to display state:%{public}@ (currentState:%{public}@) elapsed:%lfs", buf, 0x2Au);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v22 = NSStringFromCADisplayStateTransitionStatus();
    v23 = NSStringFromCADisplayState();
    v24 = NSStringFromCADisplayState();
    *buf = 134218754;
    selfCopy6 = self;
    v31 = 2114;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v24;
    _os_log_error_impl(&dword_21FD11000, v11, OS_LOG_TYPE_ERROR, "DSM:%p core animation completed(%{public}@) transition to matching display state:%{public}@, (currentState:%{public}@), but operation is not started", buf, 0x2Au);
    goto LABEL_16;
  }

LABEL_18:

  os_unfair_lock_unlock(&self->_lock);
}

- (id)abortContextForTimer:(id)timer
{
  caDisplayState = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface caDisplayState];
  cbDisplayMode = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface cbDisplayMode];
  isShowingBlankingWindow = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface isShowingBlankingWindow];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  hasEnsureFlipbookCurrent = [WeakRetained hasEnsureFlipbookCurrent];

  systemSleepMonitor = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface systemSleepMonitor];
  v10 = [BLSHBacklightDisplayStateMachineAbortContext alloc];
  displayMode = self->_lock_displayRampOperation.displayMode;
  lock_prewarmingDisplayMode = self->_lock_prewarmingDisplayMode;
  lock_lastSteadyStateDisplayMode = self->_lock_lastSteadyStateDisplayMode;
  aggregateState = [systemSleepMonitor aggregateState];
  LOBYTE(v17) = hasEnsureFlipbookCurrent;
  v15 = [(BLSHBacklightDisplayStateMachineAbortContext *)v10 initWithDisplayMode:displayMode prewarmingDisplayMode:lock_prewarmingDisplayMode lastSteadyStateDisplayMode:lock_lastSteadyStateDisplayMode caDisplayState:caDisplayState cbDisplayMode:cbDisplayMode showingBlankingWindow:isShowingBlankingWindow sleepMonitorAggregateState:aggregateState hasEnsureFlipbookCurrent:v17];

  return v15;
}

- (id)identifier
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  build = [v2 build];

  return build;
}

- (BLSHBacklightDisplayStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)displayModeForOSInterfaceProvider:(uint64_t)provider
{
  v3 = a2;
  v4 = v3;
  if (provider)
  {
    caDisplayState = [v3 caDisplayState];
    cbDisplayMode = [v4 cbDisplayMode];
    if (caDisplayState == 3)
    {
      provider = 1;
    }

    else
    {
      provider = cbDisplayMode;
      if (cbDisplayMode)
      {
        if (caDisplayState == 2)
        {
          provider = 2;
        }

        else if (caDisplayState == 1)
        {
          isShowingBlankingWindow = [v4 isShowingBlankingWindow];
          v8 = 3;
          if (provider != 1)
          {
            v8 = 4;
          }

          if (provider == 4)
          {
            v8 = 6;
          }

          if (isShowingBlankingWindow)
          {
            provider = 5;
          }

          else
          {
            provider = v8;
          }
        }

        else
        {
          provider = 0;
        }
      }
    }
  }

  return provider;
}

- (void)acquireLiveRenderingSystemActivityAssertionIfNecessary:(uint64_t)necessary
{
  if (necessary && !IsBlankedForBLSBacklightDisplayMode(a2))
  {
    v4 = WouldUserExpectDisplayToBeActiveForBLSBacklightDisplayMode(a2);
    v5 = *(necessary + 16);
    if (v4)
    {
      [v5 stopWatchdog];
    }

    else
    {
      if (!v5)
      {
        v6 = [[BLSHTTRWatchdog alloc] initWithOSProvider:*(necessary + 32) configurationProvider:&__block_literal_global_26 detailProvider:&__block_literal_global_146];
        v7 = *(necessary + 16);
        *(necessary + 16) = v6;

        v5 = *(necessary + 16);
      }

      [v5 startWatchdog];
    }

    [(BLSHBacklightDisplayStateMachine *)necessary _acquireLiveRenderingSystemActivityAssertion];
  }
}

- (void)acquireDisplayPowerAssertionForReason:(os_unfair_lock_s *)reason
{
  if (reason)
  {
    OUTLINED_FUNCTION_9_2(reason);
    v4 = [*(v2 + 32) acquireDisplayPowerAssertionForReason:a2];
    v5 = *(v2 + 280);
    *(v2 + 280) = v4;

    os_unfair_lock_unlock((v2 + 24));
  }
}

- (void)releaseDisplayPowerAssertion
{
  if (self)
  {
    OUTLINED_FUNCTION_9_2(self);
    [*(v1 + 280) invalidate];
    v2 = *(v1 + 280);
    *(v1 + 280) = 0;

    os_unfair_lock_unlock((v1 + 24));
  }
}

- (void)prewarmForDisplayMode:(int64_t)mode
{
  v53 = *MEMORY[0x277D85DE8];
  if ((mode - 3) <= 3)
  {
    [(BLSDisplayPowerResourceHint *)self->_powerResourceHint updateState:101];
  }

  cbDisplayMode = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface cbDisplayMode];
  os_unfair_lock_lock(&self->_lock);
  lock_isPrewarmingDisplayMode = self->_lock_isPrewarmingDisplayMode;
  lock_prewarmingDisplayMode = self->_lock_prewarmingDisplayMode;
  LODWORD(v7) = IsOffForBLSBacklightDisplayMode(mode);
  displayMode = self->_lock_displayRampOperation.displayMode;
  v9 = displayMode != mode;
  if ((cbDisplayMode & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 & (v7 ^ 1);
  }

  phase = self->_lock_cbFlipbookStateChangeOperation.phase;
  lock_caDisplayPowerAssertion = self->_lock_caDisplayPowerAssertion;
  self->_lock_isPrewarmingDisplayMode = v9;
  self->_lock_prewarmingDisplayMode = mode;
  v29 = v10;
  v12 = displayMode == mode && lock_isPrewarmingDisplayMode;
  if (displayMode != mode)
  {
    self->_lock_prewarmingDisplayMode_startTimestamp = mach_continuous_time();
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = bls_backlight_log();
  v14 = v13;
  if (v12)
  {
    v15 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    NSStringFromBLSBacklightDisplayMode(displayMode);
    v16 = v25 = v7 ^ 1;
    v26 = v16;
    v17 = NSStringFromBLSBacklightDisplayMode(mode);
    v18 = phase;
    v19 = v17;
    v27 = v7;
    if (v18 == 1)
    {
      v7 = " (interrupting ramp)";
    }

    else
    {
      v7 = "";
    }

    v20 = NSStringFromBLSBacklightDisplayMode(lock_prewarmingDisplayMode);
    v21 = cbDisplayMode;
    v22 = v20;
    NSStringFromCBDisplayMode_bls(v21);
    *buf = 134220546;
    selfCopy = self;
    v33 = 2114;
    v34 = v16;
    v35 = 2114;
    v36 = v19;
    v37 = 2080;
    v38 = v7;
    v39 = 2114;
    v40 = v22;
    v41 = 1024;
    v42 = lock_caDisplayPowerAssertion != 0;
    v43 = 1024;
    v44 = v25;
    v45 = 1024;
    LOBYTE(v7) = v27;
    v46 = displayMode != mode;
    v47 = 1024;
    v48 = v29;
    v49 = 1024;
    v50 = v12;
    v52 = v51 = 2114;
    v23 = v12;
    v24 = v52;
    _os_log_impl(&dword_21FD11000, v14, v15, "DSM:%p prewarmForDisplayMode:%{public}@->%{public}@%s previousPrewarm:%{public}@ hasAssertion:%{BOOL}u isPrewarmOn:%{BOOL}u requiresModeChange:%{BOOL}u shouldSignalPowerOn:%{BOOL}u shouldCleanup:%{BOOL}u cbDisplayMode:%{public}@", buf, 0x5Cu);

    v12 = v23;
  }

  if (v7)
  {
    v12 = (displayMode == mode) & ((lock_caDisplayPowerAssertion != 0) | v12);
  }

  else if (!lock_caDisplayPowerAssertion)
  {
    [(BLSHBacklightDisplayStateMachine *)self acquireDisplayPowerAssertionForReason:?];
  }

  [(BLSHBacklightDisplayStateMachine *)self acquireLiveRenderingSystemActivityAssertionIfNecessary:mode];
  if (displayMode == mode)
  {
    if (!v12)
    {
      return;
    }
  }

  else
  {
    [(BLSHBacklightDisplayStateMachine *)self replaceCurrentWatchdog];
    if (!v12)
    {
      return;
    }
  }

  BSDispatchMain();
}

- (void)setDisplayMode:(int64_t)mode withRampDuration:(double)duration
{
  v58 = *MEMORY[0x277D85DE8];
  if ((mode - 3) <= 3)
  {
    [(BLSDisplayPowerResourceHint *)self->_powerResourceHint updateState:101];
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = (self->_lock_sequenceNumber + 1);
  self->_lock_sequenceNumber = v7;
  phase = self->_lock_displayRampOperation.phase;
  sequenceNumber = self->_lock_displayRampOperation.sequenceNumber;
  displayMode = self->_lock_displayRampOperation.displayMode;
  duration = self->_lock_displayRampOperation.duration;
  startSeconds = self->_lock_displayRampOperation.startSeconds;
  v13 = 0x277CCA000;
  if (phase == 2)
  {
    v14 = bls_backlight_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromBLSBacklightDisplayMode(mode);
      OUTLINED_FUNCTION_12_5();
      v43 = v16;
      v44 = 2048;
      durationCopy2 = duration;
      v46 = 1024;
      v47 = v7;
      _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, "DSM:%p setDisplayMode:%{public}@ duration:%lf seqId:%d", buf, 0x26u);
    }
  }

  else
  {
    v17 = 0.0;
    if (self->_lock_cbDisplayModeTransitionOperation.phase == 1)
    {
      v18 = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface now];
      [v18 timeIntervalSinceReferenceDate];
      v17 = v19 - self->_lock_cbDisplayModeTransitionOperation.startSeconds;
    }

    v20 = bls_backlight_log();
    v14 = v20;
    if (v17 <= 3.0)
    {
      v21 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v21 = OS_LOG_TYPE_FAULT;
    }

    if (os_log_type_enabled(v20, v21))
    {
      v41 = sequenceNumber;
      NSStringFromBLSBacklightDisplayMode(mode);
      v40 = v39 = displayMode;
      v22 = NSStringFromBLSBacklightDisplayMode(displayMode);
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:startSeconds];
      bls_shortLoggingString = [v23 bls_shortLoggingString];
      if (v17 <= 3.0)
      {
        v25 = &stru_283373E60;
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@" cbOperationIsOverdue! %lfs sinceCBOperationStart", *&v17];
      }

      OUTLINED_FUNCTION_12_5();
      v43 = v40;
      v44 = 2048;
      durationCopy2 = duration;
      v46 = 1024;
      v47 = v7;
      v48 = v26;
      v49 = v22;
      v50 = 2048;
      durationCopy3 = duration;
      v52 = 1024;
      v53 = v41;
      v54 = v26;
      v55 = bls_shortLoggingString;
      v56 = v26;
      v57 = v25;
      _os_log_impl(&dword_21FD11000, v14, v21, "DSM:%p setDisplayMode:%{public}@ duration:%lf seqId:%d interrupting previous setDisplayMode:%{public}@ duration:%lf seqId:%d with started at:%{public}@%{public}@", buf, 0x54u);
      if (v17 > 3.0)
      {
      }

      sequenceNumber = v41;
      displayMode = v39;
    }

    v13 = 0x277CCA000uLL;
  }

  v27 = self->_lock_displayRampOperation.displayMode;
  v28 = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface now];
  [v28 timeIntervalSinceReferenceDate];
  self->_lock_displayRampOperation.sequenceNumber = v7;
  self->_lock_displayRampOperation.displayMode = mode;
  self->_lock_displayRampOperation.previousDisplayMode = v27;
  self->_lock_displayRampOperation.duration = duration;
  self->_lock_displayRampOperation.startSeconds = v29;
  self->_lock_displayRampOperation.phase = 1;

  self->_lock_isPrewarmingDisplayMode = 0;
  [(BLSHWatchdogInvalidatable *)self->_watchdogTimer invalidate:1];
  v30 = *(v13 + 3240);
  v31 = NSStringFromBLSBacklightDisplayMode(mode);
  v32 = v31;
  if (phase == 2)
  {
    v33 = [v30 stringWithFormat:@"%p transition to displayMode:%@ duration:%lf seqId:%d", self, v31, *&duration, v7];
  }

  else
  {
    v34 = NSStringFromBLSBacklightDisplayMode(displayMode);
    v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:startSeconds];
    bls_shortLoggingString2 = [v35 bls_shortLoggingString];
    v33 = [v30 stringWithFormat:@"DSM:%p transition to displayMode:%@ duration:%lf seqId:%d interrupting previous setDisplayMode:%@ duration:%lf seqId:%d with started at:%@", self, v32, *&duration, v7, v34, *&duration, sequenceNumber, bls_shortLoggingString2];
  }

  v37 = [(BLSHBacklightOSInterfaceProviding *)self->_osInterface scheduleWatchdogWithDelegate:self explanation:v33 timeout:18.0];
  watchdogTimer = self->_watchdogTimer;
  self->_watchdogTimer = v37;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightDisplayStateMachine *)self acquireLiveRenderingSystemActivityAssertionIfNecessary:mode];
  BSDispatchMain();
}

- (BOOL)releaseLiveRenderingSystemActivityAssertion
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 24));
  v2 = *(self + 288);
  v3 = v2 != 0;
  if (v2)
  {
    v4 = bls_backlight_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_14_4(v8, v9, v10, v11, v12);
    }

    [*(self + 288) invalidate];
    v5 = *(self + 288);
    *(self + 288) = 0;
  }

  os_unfair_lock_unlock((self + 24));
  [*(self + 16) stopWatchdog];
  v6 = *(self + 16);
  *(self + 16) = 0;

  return v3;
}

- (uint64_t)_lock_cbDisplayModeForBacklightDisplayMode:(uint64_t)result
{
  if (result)
  {
    switch(a2)
    {
      case 1:
        result = 2;
        break;
      case 2:
      case 3:
        if (*(result + 305))
        {
          result = 3;
        }

        else
        {
          result = 1;
        }

        break;
      case 4:
      case 5:
        result = 3;
        break;
      case 6:
        result = 4;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

- (os_unfair_lock_s)switchToFlipbookState:(os_unfair_lock_s *)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(result + 6);
    if (*&v3[54]._os_unfair_lock_opaque != 2)
    {
      v4 = bls_backlight_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v7 = NSStringFromCBFlipbookState_bls(*&v3[52]._os_unfair_lock_opaque);
        v8 = [*&v3[8]._os_unfair_lock_opaque now];
        [v8 bls_machContinuousTime];
        BSTimeDifferenceFromMachTimeToMachTime();
        v9 = NSStringFromCBFlipbookState_bls(a2);
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_10_2();
        _os_log_fault_impl(v10, v11, OS_LOG_TYPE_FAULT, v12, v13, 0x2Au);
      }
    }

    v5 = v3[12]._os_unfair_lock_opaque + 1;
    v3[12]._os_unfair_lock_opaque = v5;
    v6 = mach_continuous_time();
    v3[50]._os_unfair_lock_opaque = v5;
    *&v3[52]._os_unfair_lock_opaque = a2;
    *&v3[54]._os_unfair_lock_opaque = 1;
    *&v3[56]._os_unfair_lock_opaque = v6;
    os_unfair_lock_unlock(v3 + 6);
    OUTLINED_FUNCTION_8_3(0x1Cu);
    return [*&v3[8]._os_unfair_lock_opaque switchToFlipbookState:a2];
  }

  return result;
}

- (void)transitionToDisplayMode:(int)mode withDuration:(double)duration shouldWaitForCompletion:
{
  v77 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_9_2(self);
    v8 = [*(v4 + 32) now];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    v11 = *(v4 + 136);
    if (*(v4 + 184) == 2)
    {
      v12 = bls_backlight_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = NSStringFromCBDisplayMode_bls(a2);
        v55 = 134219010;
        v56 = v4;
        v57 = 2114;
        v58 = v13;
        v59 = 2048;
        durationCopy = duration;
        v61 = 2048;
        durationCopy2 = duration;
        v63 = 1024;
        modeCopy = mode;
        OUTLINED_FUNCTION_7_4();
        _os_log_debug_impl(v14, v15, v16, v17, v18, 0x30u);
LABEL_35:
      }
    }

    else
    {
      v19 = *(v4 + 144);
      v20 = v19 == a2 || !a2 && v19 == 2 || a2 == 2 && v19 == 0;
      v22 = *(v4 + 160);
      if (v20 && v22 > 0.0)
      {
        v23 = v10 - *(v4 + 176);
        v24 = 1.0;
        v25 = v23 / v22 >= 1.0;
        v26 = v23 / v22 > 0.0 || v23 / v22 >= 1.0;
        if (v23 / v22 <= 0.0)
        {
          v25 = 1;
        }

        if (!v26)
        {
          v24 = 0.0;
        }

        if (v25)
        {
          v27 = v24;
        }

        else
        {
          v27 = v23 / v22;
        }

        durationCopy5 = v27 * duration;
        v29 = v10 - (duration - v27 * duration);
        v12 = bls_backlight_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v30 = NSStringFromCBDisplayMode_bls(v11);
          v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v4 + 168)];
          bls_shortLoggingString = [v31 bls_shortLoggingString];
          v33 = NSStringFromCBDisplayMode_bls(a2);
          OUTLINED_FUNCTION_2_13();
          v65 = v34;
          v66 = v23;
          v67 = v34;
          durationCopy4 = v27;
          v69 = v35;
          v70 = v36;
          v71 = v34;
          v72 = v27 * duration;
          v73 = v34;
          durationCopy3 = duration;
          v75 = 1024;
          modeCopy2 = mode;
          OUTLINED_FUNCTION_7_4();
          _os_log_debug_impl(v37, v38, v39, v40, v41, 0x6Cu);
        }

        goto LABEL_31;
      }

      v12 = bls_backlight_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = NSStringFromCBDisplayMode_bls(v11);
        v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v4 + 168)];
        bls_shortLoggingString2 = [v43 bls_shortLoggingString];
        v45 = NSStringFromCBDisplayMode_bls(a2);
        OUTLINED_FUNCTION_2_13();
        v65 = v46;
        v66 = v47;
        v67 = v48;
        durationCopy4 = duration;
        v69 = 1024;
        LODWORD(v70) = mode;
        OUTLINED_FUNCTION_7_4();
        _os_log_debug_impl(v49, v50, v51, v52, v53, 0x4Eu);

        goto LABEL_35;
      }
    }

    v29 = v10;
    durationCopy5 = duration;
LABEL_31:

    v42 = *(v4 + 48) + 1;
    *(v4 + 48) = v42;
    *(v4 + 128) = v42;
    *(v4 + 136) = a2;
    *(v4 + 144) = v11;
    *(v4 + 152) = durationCopy5;
    *(v4 + 160) = duration;
    *(v4 + 168) = v10;
    *(v4 + 176) = v29;
    *(v4 + 184) = 1;
    *(v4 + 192) = mode;
    os_unfair_lock_unlock((v4 + 24));
    [*(v4 + 32) transitionToDisplayMode:a2 withDuration:durationCopy5];
    if ((mode & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__BLSHBacklightDisplayStateMachine_transitionToDisplayMode_withDuration_shouldWaitForCompletion___block_invoke;
      block[3] = &unk_27841E650;
      block[4] = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (os_unfair_lock_s)transitionToCADisplayState:(os_unfair_lock_s *)result
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(result + 6);
    if (*&v3[64]._os_unfair_lock_opaque != 2)
    {
      v4 = bls_backlight_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = NSStringFromCADisplayState();
        v8 = [*&v3[8]._os_unfair_lock_opaque now];
        [v8 bls_machContinuousTime];
        BSTimeDifferenceFromMachTimeToMachTime();
        v9 = NSStringFromCADisplayState();
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_5_7();
        OUTLINED_FUNCTION_10_2();
        _os_log_debug_impl(v10, v11, OS_LOG_TYPE_DEBUG, v12, v13, 0x2Au);
      }
    }

    v5 = v3[12]._os_unfair_lock_opaque + 1;
    v3[12]._os_unfair_lock_opaque = v5;
    v6 = mach_continuous_time();
    v3[60]._os_unfair_lock_opaque = v5;
    *&v3[62]._os_unfair_lock_opaque = a2;
    *&v3[64]._os_unfair_lock_opaque = 1;
    *&v3[66]._os_unfair_lock_opaque = v6;
    os_unfair_lock_unlock(v3 + 6);
    OUTLINED_FUNCTION_8_3(0x40u);
    return [*&v3[8]._os_unfair_lock_opaque transitionToCADisplayState:a2];
  }

  return result;
}

- (void)osInterfaceProvider:(uint64_t)a1 didCompleteTransitionToCBDisplayMode:(unint64_t)a2 withError:.cold.1(uint64_t a1, unint64_t a2)
{
  v2 = NSStringFromCBDisplayMode_bls(a2);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_14_4(v3, v4, v5, v6, v7);
}

- (void)osInterfaceProvider:(uint64_t)a1 didCompleteTransitionToCBDisplayMode:(unint64_t)a2 withError:.cold.2(uint64_t a1, unint64_t a2)
{
  v2 = NSStringFromCBDisplayMode_bls(a2);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_11_3();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

- (void)osInterfaceProvider:(uint64_t)a1 didCompleteSwitchToCBFlipbookState:(uint64_t)a2 withError:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = NSStringFromCBFlipbookState_bls(a2);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_14_4(v3, v4, v5, v6, v7);
}

@end