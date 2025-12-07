@interface BLSHBacklightTransitionStateMachine
- (BLSHBacklightHostObserving)performerDelegate;
- (BLSHBacklightInactiveEnvironmentSession)session;
- (BLSHBacklightMutableTargetState)withLock_ensureTargetStateCreated;
- (BLSHBacklightTransitionStateMachine)initWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy;
- (BLSHPendingEnvironmentUpdateOperation)onMainWithLock_environmentUpdateOperationForEvents:(BLSHPendingEnvironmentUpdateOperation *)events;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)globalCacheFlipbookOnDisplayWake;
- (BOOL)hasEnsureFlipbookCurrent;
- (BOOL)hostEnvironment:(id)environment didAmendSceneSettings:(id)settings;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isAlwaysOnSuppressed;
- (BOOL)isFlipbookDisabled;
- (BOOL)isGlobalHighLuminanceAlwaysOn;
- (BOOL)isGlobalUnrestrictedFramerate;
- (BOOL)isTransitioning;
- (BOOL)safeToUnblank;
- (BOOL)willUnblankTransitioningToDisplayMode:(uint64_t)mode;
- (BOOL)withLock_isTransitioning;
- (NSObject)_lock_ensureFlipbookCurrent;
- (NSString)backlightStateDescription;
- (NSString)debugDescription;
- (NSString)description;
- (id)abortContextForTimer:(id)timer;
- (id)identifier;
- (id)lock_displayOperationForTarget:(uint64_t)target isNullOperationAllowed:;
- (id)onMainWithLock_environmentPerformUpdateIfNeededAfterDisplayUpdate;
- (id)onMainWithLock_environmentPerformUpdateIfNeededBeforeDisplayUpdate;
- (id)onMainWithLock_onScreenSpecifierForDisplayMode:(uint64_t)mode;
- (id)onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:(id *)change;
- (id)onMainWithLock_updateDisplayOrEngineOperationIfNeeded;
- (id)onMainWithLock_updatePresentationOperationIfNeeded;
- (id)setupRampOperationIfNeeded;
- (id)withLock_backlightStateDescription;
- (int64_t)backlightState;
- (int64_t)flipbookState;
- (uint64_t)_lock_updateCacheFlipbookWithSession:(uint64_t)session;
- (uint64_t)createSession;
- (uint64_t)flipbookStateForEngine;
- (uint64_t)hasUnrestrictedFramerateWithSession:(uint64_t)session;
- (uint64_t)isDisplayModeTransitionAnimatedToMode:(unint64_t)mode fromMode:;
- (uint64_t)lock_displayModeForBacklightState:(uint64_t)result;
- (uint64_t)lock_isHighLuminanceAlwaysOnWithSession:(uint64_t)session;
- (uint64_t)setDisplayMode:(uint64_t)result withRampDuration:;
- (unint64_t)backlightStateChangeTimestamp;
- (unsigned)withLock_debugDescription;
- (void)_lock_enqueueNewEvent:(id *)event;
- (void)_lock_setPendingUpdateDisplayMode:(uint64_t)mode;
- (void)acquireTouchLockAssertion;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)destroySession;
- (void)displayState:(id)state didUpdateToMode:(int64_t)mode;
- (void)environmentStateMachine:(id)machine didUpdateToPresentation:(id)presentation;
- (void)environmentStateMachine:(id)machine didUpdateToSpecifier:(id)specifier;
- (void)environmentStateMachineDidBeginUpdateToState:(uint64_t)state;
- (void)environmentStateMachineDidCompleteUpdateToState:(uint64_t)state;
- (void)hostEnvironment:(id)environment hostDidSetAlwaysOnEnabledForEnvironment:(BOOL)forEnvironment;
- (void)hostEnvironment:(id)environment hostDidSetCacheFlipbookOnDisplayWake:(BOOL)wake;
- (void)hostEnvironment:(id)environment hostDidSetHighLuminanceAlwaysOn:(BOOL)on;
- (void)hostEnvironment:(id)environment hostDidSetLiveUpdating:(BOOL)updating;
- (void)hostEnvironment:(id)environment hostDidSetUnrestrictedFramerateUpdates:(BOOL)updates;
- (void)ifStillValidPerformAlwaysOnBrightnessRamp:(double)ramp withDuration:;
- (void)inactiveEnvironmentSession:(id)session updateToPresentation:(id)presentation;
- (void)invalidateTouchLockAssertion;
- (void)lock_displayOperationForCurrentTarget;
- (void)logForPerformEvent:(void *)event currentState:(void *)state targetState:(int)targetState matchesPrewarm:(void *)prewarm pendingPrewarmedEvent:;
- (void)onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:(uint64_t)mode;
- (void)onMainWithLock_updateSpecifierOperationIfNeeded;
- (void)onMain_ensureSessionCreated;
- (void)onMain_performEvent:(uint64_t)event;
- (void)onMain_performNextStepInTransition;
- (void)onMain_setDisplayMode:(double)mode withRampDuration:;
- (void)onMain_updateHostEnvironmentAndPerformNextStep:(uint64_t)step;
- (void)performEvent:(id)event;
- (void)presentationEngine:(id)engine didInvalidateContentForEnvironment:(id)environment reason:(id)reason;
- (void)presentationEngine:(id)engine didUpdateToCurrentWithSpecifier:(id)specifier;
- (void)prewarmEvent:(id)event;
- (void)registerHandlersForService:(id)service;
- (void)releaseTransitionAPAwakeAssertion;
- (void)setAlwaysOnSuppressed:(BOOL)suppressed;
- (void)setFlipbookDisabled:(BOOL)disabled;
- (void)setGlobalCacheFlipbookOnDisplayWake:(BOOL)wake;
- (void)setGlobalHighLuminanceAlwaysOn:(BOOL)on;
- (void)setGlobalUnrestrictedFramerate:(BOOL)framerate;
- (void)setPerformerDelegate:(id)delegate;
- (void)setSafeToUnblank:(BOOL)unblank;
- (void)updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:(uint64_t)environment;
- (void)withLock_acquireTransitionAPAwakeAssertion;
@end

@implementation BLSHBacklightTransitionStateMachine

- (int64_t)backlightState
{
  os_unfair_lock_lock(&self->_lock);
  lock_backlightState = self->_lock_backlightState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightState;
}

- (unsigned)withLock_debugDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
    withLock_backlightStateDescription = [(BLSHBacklightTransitionStateMachine *)selfCopy withLock_backlightStateDescription];
    v4 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v5 = NSStringFromBLSFlipbookState();
    v6 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    [(BLSHBacklightTransitionStateMachine *)selfCopy flipbookStateForEngine];
    v7 = NSStringFromBLSFlipbookState();
    v8 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v9 = [v2 appendBool:selfCopy[243] withName:@"safeToUnblank" ifEqualTo:0];
    v10 = [*(selfCopy + 19) debugDescription];
    v11 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v12 = [*(selfCopy + 20) debugDescription];
    v13 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v14 = [*(selfCopy + 13) debugDescription];
    v15 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v16 = [*(selfCopy + 16) debugDescription];
    v17 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v18 = [*(selfCopy + 14) debugDescription];
    v19 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v20 = [*(selfCopy + 15) debugDescription];
    v21 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v22 = [*(selfCopy + 17) debugDescription];
    v23 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v24 = [*(selfCopy + 22) debugDescription];
    v25 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v26 = [*(selfCopy + 21) debugDescription];
    v27 = [v2 appendObject:v26 withName:@"pendingPrewarmedEvent"];

    selfCopy = [v2 build];
  }

  return selfCopy;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  withLock_debugDescription = [(BLSHBacklightTransitionStateMachine *)self withLock_debugDescription];
  os_unfair_lock_unlock(&self->_lock);

  return withLock_debugDescription;
}

- (id)withLock_backlightStateDescription
{
  if (self)
  {
    v2 = MEMORY[0x277CCACA8];
    if ([(BLSHBacklightTransitionStateMachine *)self withLock_isTransitioning])
    {
      v3 = "transitioning to ";
    }

    else
    {
      v3 = "";
    }

    v4 = NSStringFromBLSBacklightState();
    mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v6 = [mEMORY[0x277CF0BF0] formatDuration:?];
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    v8 = [v7 bls_initWithMachContinuousTime:*(self + 80)];
    bls_shortLoggingString = [v8 bls_shortLoggingString];
    v10 = [v2 stringWithFormat:@"%s%@ for %@ since %@", v3, v4, v6, bls_shortLoggingString];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)withLock_isTransitioning
{
  if (result)
  {
    return *(result + 104) || *(result + 112) || *(result + 120) || *(result + 128) || *(result + 136) || [*(result + 176) count] != 0;
  }

  return result;
}

- (uint64_t)flipbookStateForEngine
{
  if (result)
  {
    v1 = result;
    result = [*(result + 40) engineState];
    if (result)
    {
      v2 = result;
      if ([*(v1 + 40) isSuppressed])
      {
        if (BLSBacklightStateIsActive())
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }

      else if (v2 > 4)
      {
        return 0;
      }

      else
      {
        return qword_21FDA5420[v2 - 1];
      }
    }
  }

  return result;
}

- (BOOL)isAlwaysOnSuppressed
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnSuppressed = self->_lock_alwaysOnSuppressed;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnSuppressed;
}

- (BOOL)isTransitioning
{
  v3 = OUTLINED_FUNCTION_15_2(self);
  os_unfair_lock_lock(v3);
  withLock_isTransitioning = [(BLSHBacklightTransitionStateMachine *)v2 withLock_isTransitioning];
  os_unfair_lock_unlock(v2 + 2);
  return withLock_isTransitioning;
}

- (void)onMain_ensureSessionCreated
{
  v5 = MEMORY[0x277CCACA8];
  sessionProvider = [*self sessionProvider];
  v7 = [v5 stringWithFormat:@"%p nil presentation from session provider:%@", a2, sessionProvider];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a3);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHBacklightMutableTargetState)withLock_ensureTargetStateCreated
{
  v24 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 160);
    if (!v2)
    {
      v8 = [[BLSHBacklightMutableTargetState alloc] initWithState:*(self + 152)];
      v9 = *(self + 160);
      *(self + 160) = v8;

      v3 = v8;
      presentation3 = bls_backlight_log();
      if (os_log_type_enabled(presentation3, OS_LOG_TYPE_DEBUG))
      {
        [(BLSHBacklightMutableTargetState *)v3 bls_shortLoggingString];
        v18 = 134218242;
        selfCopy2 = self;
        v21 = v20 = 2114;
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v11, v12, v13, v14, v15, v16);
      }

      goto LABEL_10;
    }

    v3 = v2;
    presentation = [(BLSHBacklightMutableTargetState *)v2 presentation];

    if (!presentation)
    {
      presentation2 = [*(self + 152) presentation];

      if (presentation2)
      {
        v6 = bls_backlight_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v17 = *(self + 152);
          v18 = 134218498;
          selfCopy2 = self;
          v20 = 2114;
          v21 = v3;
          v22 = 2114;
          v23 = v17;
          _os_log_error_impl(&dword_21FD11000, v6, OS_LOG_TYPE_ERROR, "TSM:%p nil target presentation, will adopt from current state — target:%{public}@ current:%{public}@", &v18, 0x20u);
        }

        presentation3 = [*(self + 152) presentation];
        [OUTLINED_FUNCTION_14_3() setPresentation:?];
LABEL_10:
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)invalidateTouchLockAssertion
{
  if (self)
  {
    v3 = OUTLINED_FUNCTION_15_2(self);
    os_unfair_lock_lock(v3);
    v4 = *(v2 + 56);
    *(v2 + 56) = 0;
    v5 = v4;

    os_unfair_lock_unlock((v2 + 8));
    [v5 invalidate];
  }
}

- (void)onMain_performNextStepInTransition
{
  [self state];
  v2 = OUTLINED_FUNCTION_30_0();
  [(BLSHBacklightTransitionStateMachine *)v2 environmentStateMachineDidBeginUpdateToState:v3];
  [self state];
  v4 = OUTLINED_FUNCTION_30_0();
  [(BLSHBacklightTransitionStateMachine *)v4 environmentStateMachineDidCompleteUpdateToState:v5];
}

- (id)onMainWithLock_updatePresentationOperationIfNeeded
{
  selfCopy = self;
  if (self)
  {
    presentation = [self[20] presentation];
    presentation2 = [selfCopy[19] presentation];
    if (presentation && ([presentation isEqual:presentation2] & 1) == 0)
    {
      v11 = [[BLSHPendingUpdatePresentation alloc] initWithPresentation:presentation];
      v12 = selfCopy[14];
      selfCopy[14] = v11;

      v13 = bls_backlight_log();
      if (!OUTLINED_FUNCTION_34_0(v13))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = selfCopy[14];
      if (!v5)
      {
LABEL_9:
        v10 = bls_backlight_log();
        if (OUTLINED_FUNCTION_34_0(v10))
        {
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_12_4();
          _os_log_debug_impl(v15, v16, v17, v18, v19, 0x20u);
        }

        selfCopy = 0;
        goto LABEL_16;
      }

      isCompleted = [v5 isCompleted];
      v7 = bls_backlight_log();
      v8 = OUTLINED_FUNCTION_34_0(v7);
      if (isCompleted)
      {
        if (v8)
        {
          OUTLINED_FUNCTION_10_1();
          OUTLINED_FUNCTION_11_2();
          OUTLINED_FUNCTION_12_4();
          _os_log_debug_impl(v20, v21, v22, v23, v24, 0x16u);
        }

        v9 = selfCopy[14];
        selfCopy[14] = 0;

        goto LABEL_9;
      }

      if (!v8)
      {
LABEL_15:

        selfCopy = selfCopy[14];
LABEL_16:

        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_12_4();
    _os_log_debug_impl(v25, v26, v27, v28, v29, 0x16u);
    goto LABEL_15;
  }

LABEL_17:

  return selfCopy;
}

- (id)onMainWithLock_environmentPerformUpdateIfNeededBeforeDisplayUpdate
{
  if (self)
  {
    self = [(BLSHBacklightTransitionStateMachine *)self onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:?];
    v1 = vars8;
  }

  return self;
}

- (id)setupRampOperationIfNeeded
{
  if (self)
  {
    v3 = OUTLINED_FUNCTION_15_2(self);
    os_unfair_lock_lock(v3);
    lock_displayOperationForCurrentTarget = [(BLSHBacklightTransitionStateMachine *)v2 lock_displayOperationForCurrentTarget];
    rampOperation = [lock_displayOperationForCurrentTarget rampOperation];
    if (rampOperation)
    {
      [(BLSHBacklightTransitionStateMachine *)v2 _lock_setPendingUpdateDisplayMode:lock_displayOperationForCurrentTarget];
    }

    os_unfair_lock_unlock((v2 + 8));
  }

  else
  {
    rampOperation = 0;
  }

  return rampOperation;
}

- (void)lock_displayOperationForCurrentTarget
{
  if (self)
  {
    selfCopy = self;
    v3 = self[20];
    if (!v3)
    {
      v3 = selfCopy[19];
    }

    [v3 displayMode];
    v4 = OUTLINED_FUNCTION_30_0();
    self = [(BLSHBacklightTransitionStateMachine *)v4 lock_displayOperationForTarget:v5 isNullOperationAllowed:1];
    v1 = vars8;
  }

  return self;
}

- (void)withLock_acquireTransitionAPAwakeAssertion
{
  v17[9] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v4 = OUTLINED_FUNCTION_15_2(self);
    os_unfair_lock_assert_owner(v4);
    if (*(v2 + 88))
    {
      v5 = bls_backlight_log();
      if (OUTLINED_FUNCTION_33_0(v5))
      {
        OUTLINED_FUNCTION_2_4();
        *(&v17[7] + 6) = v10;
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v11, v12, v13, v14, v15, v16);
      }
    }

    else
    {
      v6 = mach_continuous_time();
      v7 = [*(v2 + 24) createSystemActivityAssertionWithIdentifier:@"BacklightServices.transition" configurator:&__block_literal_global_21];
      v8 = *(v2 + 88);
      *(v2 + 88) = v7;

      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3_2();
      v17[2] = __81__BLSHBacklightTransitionStateMachine_withLock_acquireTransitionAPAwakeAssertion__block_invoke_2;
      v17[3] = &unk_278420450;
      v17[4] = v2;
      v17[5] = v6;
      [v9 acquireWithTimeout:v17 handler:0.0];
    }
  }
}

void __81__BLSHBacklightTransitionStateMachine_withLock_acquireTransitionAPAwakeAssertion__block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
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
    _os_log_impl(&dword_21FD11000, v9, v10, "TSM:%p transition system activity assertion callback elapsed:%.4lfs details:%{public}@ error:%{public}@", &v15, 0x2Au);
  }
}

- (BLSHBacklightHostObserving)performerDelegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_performerDelegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)onMainWithLock_updateSpecifierOperationIfNeeded
{
  v43 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    v4 = self[15];
    if (v4)
    {
      if (![v4 isCompleted])
      {
        v15 = bls_backlight_log();
        if (!OUTLINED_FUNCTION_33_0(v15))
        {
LABEL_15:

          self = selfCopy[15];
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_26_0();
LABEL_23:
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v27, v28, v29, v30, v31, v32);
        goto LABEL_15;
      }

      v5 = selfCopy[15];
      selfCopy[15] = 0;
    }

    v6 = selfCopy[12];
    if (v6)
    {
      v7 = selfCopy[9];
      if (v7 == 1)
      {
        presentation = [selfCopy[19] presentation];
        presentation2 = [selfCopy[20] presentation];
        v10 = [BLSHPendingUpdateToSpecifier alloc];
        v11 = selfCopy[12];
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_3_2();
        v33[2] = __86__BLSHBacklightTransitionStateMachine_onMainWithLock_updateSpecifierOperationIfNeeded__block_invoke;
        v33[3] = &unk_2784204A0;
        v37 = presentation2 != presentation;
        v34 = presentation;
        v35 = presentation2;
        v36 = selfCopy;
        v2 = presentation2;
        v1 = presentation;
        v12 = [v11 filter:v33];
        v13 = [(BLSHPendingUpdateToSpecifier *)v10 initWithSpecifier:v12];
        v14 = selfCopy[15];
        selfCopy[15] = v13;
      }

      else
      {
        v1 = v6;
        v16 = bls_backlight_log();
        if (OUTLINED_FUNCTION_32_0(v16))
        {
          OUTLINED_FUNCTION_36_0();
          v39 = 2114;
          v40 = v1;
          v41 = 1024;
          v42 = v7;
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v17, v18, v19, v20, v21, 0x1Cu);
        }
      }

      v22 = selfCopy[12];
      selfCopy[12] = 0;
    }

    v23 = selfCopy[15];
    v24 = bls_backlight_log();
    v25 = OUTLINED_FUNCTION_33_0(v24);
    if (v23)
    {
      if (!v25)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_26_0();
      goto LABEL_23;
    }

    if (v25)
    {
      OUTLINED_FUNCTION_36_0();
      _os_log_debug_impl(&dword_21FD11000, v1, OS_LOG_TYPE_DEBUG, "TSM:%p (findNextOperation) no updateSpecifier needed", buf, 0xCu);
    }

    self = 0;
  }

LABEL_19:

  return self;
}

- (id)onMainWithLock_updateDisplayOrEngineOperationIfNeeded
{
  v79 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = *(self + 128);
    if (v3)
    {
      isFullyCompleted = [v3 isFullyCompleted];
      v4 = *(self + 128);
      if (isFullyCompleted)
      {
        *(self + 128) = 0;

        v4 = *(self + 128);
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = v4;
    lock_displayOperationForCurrentTarget = [(BLSHBacklightTransitionStateMachine *)self lock_displayOperationForCurrentTarget];
    v8 = *(self + 160);
    if (!v8)
    {
      v8 = *(self + 152);
    }

    displayMode = [v8 displayMode];
    v10 = IsOffForBLSBacklightDisplayMode(displayMode);
    v11 = *(self + 104);
    if (v11 && (([v11 isCompleted] | v10) & 1) == 0)
    {
      didUpdateInitialState = [*(self + 104) didUpdateInitialState];
      v13 = bls_backlight_log();
      v1 = v13;
      if (!didUpdateInitialState)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_4_8();
          OUTLINED_FUNCTION_16_2();
          _os_log_fault_impl(v34, v35, OS_LOG_TYPE_FAULT, v36, v37, 0x22u);
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_16_2();
        _os_log_debug_impl(v30, v31, OS_LOG_TYPE_DEBUG, v32, v33, 0x22u);
      }
    }

    if (!((*(self + 112) == 0) | v10 & 1))
    {
      displayMode = bls_backlight_log();
      if (os_log_type_enabled(displayMode, OS_LOG_TYPE_FAULT))
      {
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_4_8();
        _os_log_fault_impl(&dword_21FD11000, displayMode, OS_LOG_TYPE_FAULT, "TSM:%p (findNextOperation) pending presentation update while determining display update, animating:%{BOOL}u forcedUnanimated:%{BOOL}u pending:%{public}@", v73, 0x22u);
      }

LABEL_17:

LABEL_18:
      v14 = 0;
LABEL_19:

      goto LABEL_20;
    }

    [(BLSHBacklightTransitionStateMachine *)self _lock_setPendingUpdateDisplayMode:lock_displayOperationForCurrentTarget];
    if (displayMode == 2)
    {
      if ([*(self + 152) displayMode] == 1)
      {
        _lock_ensureFlipbookCurrent = [(BLSHBacklightTransitionStateMachine *)self _lock_ensureFlipbookCurrent];
        if (_lock_ensureFlipbookCurrent)
        {
          v14 = _lock_ensureFlipbookCurrent;
          v39 = bls_backlight_log();
          if (OUTLINED_FUNCTION_44(v39))
          {
            OUTLINED_FUNCTION_1_0();
            v75 = v14;
            v76 = v40;
            *v77 = lock_displayOperationForCurrentTarget;
            OUTLINED_FUNCTION_16_2();
            v45 = OS_LOG_TYPE_DEBUG;
            v46 = 32;
LABEL_55:
            _os_log_debug_impl(v41, v42, v45, v43, v44, v46);
            goto LABEL_46;
          }

          goto LABEL_46;
        }
      }

      if (lock_displayOperationForCurrentTarget)
      {
        if (v6 != lock_displayOperationForCurrentTarget)
        {
LABEL_30:
          v16 = bls_backlight_log();
          if (OUTLINED_FUNCTION_34_0(v16))
          {
            OUTLINED_FUNCTION_40();
            OUTLINED_FUNCTION_10_1();
            v74 = 2114;
            v75 = lock_displayOperationForCurrentTarget;
            v76 = 1024;
            *v77 = v66;
            *&v77[4] = 1024;
            *&v77[6] = v67;
            OUTLINED_FUNCTION_12_4();
            _os_log_debug_impl(v68, v69, v70, v71, v72, 0x22u);
          }

          goto LABEL_40;
        }

        goto LABEL_40;
      }

      _lock_ensureFlipbookCurrent2 = [(BLSHBacklightTransitionStateMachine *)self _lock_ensureFlipbookCurrent];
      if (_lock_ensureFlipbookCurrent2)
      {
        v14 = _lock_ensureFlipbookCurrent2;
        v48 = bls_backlight_log();
        if (OUTLINED_FUNCTION_44(v48))
        {
          OUTLINED_FUNCTION_1_0();
          v75 = v14;
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_13_3();
          goto LABEL_55;
        }

LABEL_46:

        goto LABEL_19;
      }
    }

    else
    {
      v17 = *(self + 136);
      if (v17 && ([v17 isCompleted] & 1) == 0)
      {
        v18 = bls_backlight_log();
        if (OUTLINED_FUNCTION_35_0(v18))
        {
          v19 = *(self + 136);
          v20 = NSStringFromBLSBacklightDisplayMode(displayMode);
          OUTLINED_FUNCTION_1_0();
          v75 = v19;
          v76 = v21;
          *v77 = v22;
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_22_1();
          _os_log_impl(v23, v24, v25, v26, v27, v28);
        }
      }

      v29 = *(self + 136);
      *(self + 136) = 0;

      if (lock_displayOperationForCurrentTarget)
      {
        if (v6 != lock_displayOperationForCurrentTarget)
        {
          [(BLSHBacklightTransitionStateMachine *)self onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:displayMode];
          if (IsBlankedForBLSBacklightDisplayMode([*(self + 152) displayMode]))
          {
            onMainWithLock_updateSpecifierOperationIfNeeded = [(BLSHBacklightTransitionStateMachine *)self onMainWithLock_updateSpecifierOperationIfNeeded];
            if (onMainWithLock_updateSpecifierOperationIfNeeded)
            {
              v56 = onMainWithLock_updateSpecifierOperationIfNeeded;
              v57 = bls_backlight_log();
              if (OUTLINED_FUNCTION_35_0(v57))
              {
                v58 = NSStringFromBLSBacklightDisplayMode([*(self + 152) displayMode]);
                v59 = NSStringFromBLSBacklightDisplayMode(displayMode);
                OUTLINED_FUNCTION_1_0();
                v75 = v56;
                v76 = v60;
                *v77 = v58;
                *&v77[8] = v60;
                v78 = v61;
                OUTLINED_FUNCTION_16_2();
                _os_log_impl(v62, v63, OS_LOG_TYPE_INFO, v64, v65, 0x2Au);
              }

              v14 = v56;
              goto LABEL_19;
            }
          }

          goto LABEL_30;
        }

LABEL_40:
        v14 = lock_displayOperationForCurrentTarget;
        goto LABEL_19;
      }
    }

    v49 = bls_backlight_log();
    if (OUTLINED_FUNCTION_34_0(v49))
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_12_4();
      _os_log_debug_impl(v50, v51, v52, v53, v54, 0xCu);
    }

    goto LABEL_17;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (BOOL)safeToUnblank
{
  os_unfair_lock_lock(&self->_lock);
  lock_safeToUnblank = self->_lock_safeToUnblank;
  os_unfair_lock_unlock(&self->_lock);
  return lock_safeToUnblank;
}

- (BLSHBacklightTransitionStateMachine)initWithPlatformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy
{
  providerCopy = provider;
  interfaceProviderCopy = interfaceProvider;
  policyCopy = policy;
  v43.receiver = self;
  v43.super_class = BLSHBacklightTransitionStateMachine;
  v13 = [(BLSHBacklightTransitionStateMachine *)&v43 init];
  v14 = v13;
  if (v13)
  {
    v13->_lock._os_unfair_lock_opaque = 0;
    v13->_lock_safeToUnblank = 1;
    objc_storeStrong(&v13->_platformProvider, provider);
    objc_storeStrong((v14 + 16), policy);
    objc_storeStrong((v14 + 24), interfaceProvider);
    v16 = [[BLSHBacklightDisplayStateMachine alloc] initWithDelegate:v14 platformProvider:providerCopy osInterfaceProvider:interfaceProviderCopy];
    v17 = *(v14 + 256);
    *(v14 + 256) = v16;

    array = [MEMORY[0x277CBEB18] array];
    v19 = *(v14 + 176);
    *(v14 + 176) = array;

    array2 = [MEMORY[0x277CBEB18] array];
    v21 = *(v14 + 184);
    *(v14 + 184) = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    v23 = *(v14 + 192);
    *(v14 + 192) = array3;

    *(v14 + 224) = [interfaceProviderCopy deviceSupportsAlwaysOnFlipbook];
    if ([interfaceProviderCopy deviceSupportsAlwaysOn])
    {
      v24 = [[BLSHAlwaysOnPresentationEngine alloc] initWithDelegate:v14 platformProvider:providerCopy osInterfaceProvider:interfaceProviderCopy inactiveBudgetPolicy:policyCopy];
      v25 = *(v14 + 40);
      *(v14 + 40) = v24;
    }

    flipbookStateForEngine = [(BLSHBacklightTransitionStateMachine *)v14 flipbookStateForEngine];
    v27 = *(v14 + 40);
    *(v14 + 200) = flipbookStateForEngine;
    if ([v27 engineState])
    {
      [BLSHBacklightTransitionStateMachine initWithPlatformProvider:a2 osInterfaceProvider:? inactiveBudgetPolicy:?];
    }

    displayMode = [*(v14 + 256) displayMode];
    if (displayMode == 1)
    {
      v29 = [*(v14 + 40) suppressForReason:@"flipbookSuppressedOnInit"];
    }

    *(v14 + 72) = BLSBacklightStateForBLSBacklightDisplayMode(displayMode);
    *(v14 + 80) = mach_continuous_time();
    v30 = [[BLSHBacklightAggregateState alloc] initWithDisplayModeSource:*(v14 + 256)];
    v31 = *(v14 + 152);
    *(v14 + 152) = v30;

    displayMode2 = [*(v14 + 152) displayMode];
    *(v14 + 208) = displayMode2;
    *(v14 + 216) = displayMode2;
    objc_initWeak(&location, v14);
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __105__BLSHBacklightTransitionStateMachine_initWithPlatformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke;
    v40 = &unk_27841EC40;
    objc_copyWeak(&v41, &location);
    *(v14 + 232) = os_state_add_handler();
    [BLSHBacklightFBSceneHostEnvironment setAmendSceneSettingsDelegate:v14];
    if ((BLSBacklightStateIsActive() & 1) == 0)
    {
      [(BLSHBacklightTransitionStateMachine *)v14 acquireTouchLockAssertion];
      [(BLSHBacklightTransitionStateMachine *)v14 createSession];
      withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)v14 withLock_ensureTargetStateCreated];
      [withLock_ensureTargetStateCreated setDisplayMode:{-[BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:](v14, *(v14 + 72))}];
      [*(v14 + 32) updateAllEnvironmentsInPresentation];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__BLSHBacklightTransitionStateMachine_initWithPlatformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke_2;
      block[3] = &unk_27841E650;
      v36 = v14;
      v34 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v14;
}

uint64_t __105__BLSHBacklightTransitionStateMachine_initWithPlatformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained debugDescription];
  v4 = BLSStateDataWithTitleDescriptionAndHints();

  return v4;
}

- (uint64_t)lock_displayModeForBacklightState:(uint64_t)result
{
  if (result)
  {
    if (a2 == 3)
    {
      return 6;
    }

    else if (a2 == 1)
    {
      if (*(result + 231))
      {
        [BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:?];
      }

      if (*(result + 224) != 1 || (*(result + 242) & 1) != 0 || (*(result + 240) & 1) != 0 || [(BLSHBacklightTransitionStateMachine *)result hasUnrestrictedFramerateWithSession:?])
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else if (a2)
    {
      return 4;
    }

    else
    {
      return *(result + 231);
    }
  }

  return result;
}

- (void)dealloc
{
  [BLSHBacklightFBSceneHostEnvironment setAmendSceneSettingsDelegate:0];
  [(BLSHBacklightTransitionStateMachine *)self invalidateTouchLockAssertion];
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v4.receiver = self;
  v4.super_class = BLSHBacklightTransitionStateMachine;
  [(BLSHBacklightTransitionStateMachine *)&v4 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  withLock_backlightStateDescription = [(BLSHBacklightTransitionStateMachine *)self withLock_backlightStateDescription];
  v5 = [v3 appendObject:withLock_backlightStateDescription withName:@"backlightState"];

  v6 = NSStringFromBLSFlipbookState();
  v7 = [v3 appendObject:v6 withName:@"flipbookState"];

  v8 = [v3 appendBool:self->_lock_safeToUnblank withName:@"safeToUnblank" ifEqualTo:0];
  v9 = [v3 appendObject:self->_currentState withName:@"currentState"];
  v10 = [v3 appendObject:self->_lock_targetState withName:@"targetState"];
  v11 = [v3 appendBool:self->_flipbookSupported withName:@"fb" ifEqualTo:0];
  v12 = [v3 appendPointer:self->_lock_pendingEnvironmentUpdate withName:@"pendingEventToPerform"];
  v13 = [v3 appendPointer:self->_lock_pendingUpdateDisplayMode withName:@"pendingUpdateDisplayMode"];
  v14 = [v3 appendPointer:self->_lock_pendingUpdatePresentation withName:@"pendingUpdatePresentation"];
  v15 = [v3 appendPointer:self->_lock_pendingUpdateToSpecifier withName:@"pendingUpdateToSpecifier"];
  v16 = [v3 appendPointer:self->_lock_ensureFlipbookCurrentOperation withName:@"ensureFlipbookCurrentOperation"];
  v17 = NSStringFromBLSBacklightChangeEvents();
  [v3 appendString:v17 withName:@"queuedEvents"];

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (void)registerHandlersForService:(id)service
{
  serviceCopy = service;
  v5 = [BLSHDisableFlipbookAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  v6 = v5;
  v7 = [BLSHGlobalUnrestrictedFramerateAttributeHandler registerHandlerForService:serviceCopy provider:self];

  if (!v7)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  v8 = [BLSHGlobalHighLuminanceAlwaysOnAttributeHandler registerHandlerForService:serviceCopy provider:self];

  if (!v8)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  v9 = [BLSHGlobalCacheFlipbookOnDisplayWakeAttributeHandler registerHandlerForService:serviceCopy provider:self];

  if (!v9)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  [(BLSHAlwaysOnPresentationEngine *)self->_alwaysOnPresentationEngine registerHandlersForService:serviceCopy];
}

- (int64_t)flipbookState
{
  os_unfair_lock_lock(&self->_lock);
  lastSteadyStateFlipbookState = self->_lastSteadyStateFlipbookState;
  os_unfair_lock_unlock(&self->_lock);
  return lastSteadyStateFlipbookState;
}

- (BLSHBacklightInactiveEnvironmentSession)session
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_session;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)backlightStateChangeTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  backlightStateChangeTimestamp = self->_backlightStateChangeTimestamp;
  os_unfair_lock_unlock(&self->_lock);
  return backlightStateChangeTimestamp;
}

- (void)setAlwaysOnSuppressed:(BOOL)suppressed
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysOnSuppressed = suppressed;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAlwaysOnEnabled
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called"];
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
    v16 = @"BLSHBacklightTransitionStateMachine.m";
    v17 = 1024;
    v18 = 328;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BOOL)deviceSupportsAlwaysOn
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called"];
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
    v16 = @"BLSHBacklightTransitionStateMachine.m";
    v17 = 1024;
    v18 = 334;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)setSafeToUnblank:(BOOL)unblank
{
  unblankCopy = unblank;
  os_unfair_lock_lock(&self->_lock);
  lock_safeToUnblank = self->_lock_safeToUnblank;
  self->_lock_safeToUnblank = unblankCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_safeToUnblank != unblankCopy && unblankCopy != 0)
  {
    BSDispatchMain();
  }
}

- (void)setPerformerDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  lock_performerDelegate = self->_lock_performerDelegate;
  self->_lock_performerDelegate = delegateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFlipbookDisabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookDisabled = self->_lock_flipbookDisabled;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flipbookDisabled;
}

- (void)setFlipbookDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_flipbookDisabled != disabledCopy && self->_lock_backlightState == 1;
  self->_lock_flipbookDisabled = disabledCopy;
  if (self->_lock_targetState)
  {
    v6 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
    v7 = bls_backlight_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromBLSBacklightDisplayMode(v6);
      lock_targetState = self->_lock_targetState;
      *buf = 134218754;
      selfCopy = self;
      v12 = 1024;
      v13 = disabledCopy;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = lock_targetState;
      _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "TSM:%p setFlipbookDisabled:%{BOOL}u targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x26u);
    }

    [(BLSHBacklightMutableTargetState *)self->_lock_targetState setDisplayMode:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    BSDispatchMain();
  }
}

- (void)performEvent:(id)event
{
  eventCopy = event;
  v3 = eventCopy;
  BSDispatchMain();
}

id __120__BLSHBacklightTransitionStateMachine_logForPerformEvent_currentState_targetState_matchesPrewarm_pendingPrewarmedEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __120__BLSHBacklightTransitionStateMachine_logForPerformEvent_currentState_targetState_matchesPrewarm_pendingPrewarmedEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

- (void)prewarmEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_pendingPrewarmedEvent, event);
  v5 = -[BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:](self, [eventCopy state]);
  v6 = [(BLSHBacklightTransitionStateMachine *)self lock_displayOperationForTarget:v5 isNullOperationAllowed:0];
  if ([v6 isCompleted])
  {
    [v6 last];
  }

  else
  {
    [v6 first];
  }
  v7 = ;
  targetDisplayMode = [v7 targetDisplayMode];
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightDisplayStateMachine *)self->_displayStateMachine prewarmForDisplayMode:targetDisplayMode];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"should not add observers to %@", self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BLSHBacklightTransitionStateMachine.m";
    v18 = 1024;
    v19 = 730;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __86__BLSHBacklightTransitionStateMachine_onMainWithLock_updateSpecifierOperationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 environment];
  if ([*(a1 + 32) containsEnvironment:v3] & 1) != 0 || *(a1 + 56) == 1 && (objc_msgSend(*(a1 + 40), "containsEnvironment:", v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = [v3 identifier];
      v9 = [*(a1 + 32) bls_shortLoggingString];
      v10 = *(a1 + 56);
      if (v10 == 1)
      {
        v11 = [*(a1 + 40) bls_shortLoggingString];
      }

      else
      {
        v11 = @"(same)";
      }

      v12 = 134218754;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      _os_log_error_impl(&dword_21FD11000, v5, OS_LOG_TYPE_ERROR, "TSM:%p specifier environment:%{public}@ not in presentation:%{public}@ or target:%{public}@", &v12, 0x2Au);
      if (v10)
      {
      }
    }

    v4 = 0;
  }

  return v4;
}

void __90__BLSHBacklightTransitionStateMachine_onMainWithLock_environmentUpdateOperationForEvents___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCompleted:1];
  v2 = bls_backlight_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_21FD11000, v2, OS_LOG_TYPE_INFO, "TSM:%p completed pendingEnvironmentUpdate %{public}@", &v5, 0x16u);
  }

  [(BLSHBacklightTransitionStateMachine *)*(a1 + 40) onMain_performNextStepInTransition];
}

- (void)ifStillValidPerformAlwaysOnBrightnessRamp:(double)ramp withDuration:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (!v5)
    {
      [BLSHBacklightTransitionStateMachine ifStillValidPerformAlwaysOnBrightnessRamp:? withDuration:?];
    }

    [v5 setReadyToStart:1];
    [v6 setDuration:ramp];
    os_unfair_lock_lock((self + 8));
    v7 = *(self + 128);
    v8 = *(self + 160);
    if (!v8)
    {
      v8 = *(self + 152);
    }

    displayMode = [v8 displayMode];
    rampOperation = [v7 rampOperation];
    if (rampOperation == v6)
    {
      last = [v6 last];
      v11 = [last targetDisplayMode] == displayMode;
    }

    else
    {
      v11 = 0;
    }

    first = [v7 first];
    os_unfair_lock_unlock((self + 8));
    if ([v6 isStarted])
    {
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218242;
        selfCopy5 = self;
        v22 = 2114;
        rampCopy3 = *&v6;
        v15 = "TSM:%p nothing do here since rampOperation has already started:%{public}@";
        v16 = v14;
        v17 = 22;
LABEL_18:
        _os_log_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
      }
    }

    else if (v11)
    {
      if (first == v6 || ([first isCompleted] & 1) != 0)
      {
        v18 = bls_backlight_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v20 = 134218498;
          selfCopy5 = self;
          v22 = 2048;
          rampCopy3 = ramp;
          v24 = 2114;
          v25 = v6;
          _os_log_debug_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEBUG, "TSM:%p performing brightness ramp with duration:%.2lfs using operation:%{public}@", &v20, 0x20u);
        }

        [v6 setStarted:1];
        v19 = bls_backlight_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = 134218242;
          selfCopy5 = self;
          v22 = 2114;
          rampCopy3 = *&v6;
          _os_log_impl(&dword_21FD11000, v19, OS_LOG_TYPE_INFO, "TSM:%p started rampOperation %{public}@", &v20, 0x16u);
        }

        [v6 targetDisplayMode];
        [BLSHBacklightTransitionStateMachine setDisplayMode:self withRampDuration:?];
        goto LABEL_20;
      }

      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = 134218498;
        selfCopy5 = self;
        v22 = 2048;
        rampCopy3 = ramp;
        v24 = 2114;
        v25 = v7;
        _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "TSM:%p waiting to perform brightness ramp with duration:%.2lfs using operation:%{public}@", &v20, 0x20u);
      }
    }

    else
    {
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218754;
        selfCopy5 = self;
        v22 = 2048;
        rampCopy3 = ramp;
        v24 = 2114;
        v25 = v6;
        v26 = 2114;
        v27 = v7;
        v15 = "TSM:%p not performing brightness ramp with duration:%.2lfs using operation:%{public}@ because display operation has changed to operation:%{public}@";
        v16 = v14;
        v17 = 42;
        goto LABEL_18;
      }
    }

LABEL_20:
  }
}

void __84__BLSHBacklightTransitionStateMachine_environmentStateMachineDidBeginUpdateToState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performerDelegate];
  [v2 backlight:*(a1 + 32) didUpdateVisualContentsToBeginTransitionToState:*(a1 + 56) forEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  os_unfair_lock_unlock((v3 + 8));
  [v4 updaterDidBeginUpdateToBacklightState:*(a1 + 56)];
  [(BLSHBacklightTransitionStateMachine *)*(a1 + 32) onMain_performNextStepInTransition];
}

void __87__BLSHBacklightTransitionStateMachine_environmentStateMachine_didUpdateToPresentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updaterDidUpdateToPresentation:*(a1 + 40)];
  v2 = *(a1 + 48);

  [(BLSHBacklightTransitionStateMachine *)v2 onMain_performNextStepInTransition];
}

- (void)environmentStateMachine:(id)machine didUpdateToSpecifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  specifier = [(BLSHPendingUpdateToSpecifier *)self->_lock_pendingUpdateToSpecifier specifier];
  v7 = specifier;
  if (self->_lock_pendingUpdateToSpecifier)
  {
    v8 = ([specifier isEqual:specifierCopy] & 1) != 0 || (specifierCopy | v7) == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_backlight_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    lock_pendingUpdateToSpecifier = self->_lock_pendingUpdateToSpecifier;
    *buf = 134218754;
    selfCopy2 = self;
    v15 = 2114;
    v16 = specifierCopy;
    v17 = 1024;
    v18 = v8;
    v19 = 2114;
    v20 = lock_pendingUpdateToSpecifier;
    _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "TSM:%p didUpdateToSpecifier:%{public}@ matchesPendingUpdate:%{BOOL}u pending:%{public}@", buf, 0x26u);
  }

  if (v8)
  {
    [(BLSHPendingUpdateToSpecifier *)self->_lock_pendingUpdateToSpecifier setCompleted:1];
    v10 = bls_backlight_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = self->_lock_pendingUpdateToSpecifier;
      *buf = 134218242;
      selfCopy2 = self;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_21FD11000, v10, OS_LOG_TYPE_INFO, "TSM:%p completed pendingUpdateToSpecifier %{public}@", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
    BSDispatchMain();
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)inactiveEnvironmentSession:(id)session updateToPresentation:(id)presentation
{
  v43 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  presentationCopy = presentation;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_session == sessionCopy)
  {
    if (!self->_environmentStateMachine)
    {
      [BLSHBacklightTransitionStateMachine inactiveEnvironmentSession:sessionCopy updateToPresentation:a2];
    }

    [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
    withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
    v12 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
    [(BLSHBacklightTransitionStateMachine *)self _lock_updateCacheFlipbookWithSession:?];
    v13 = bls_backlight_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (!v14)
    {
      goto LABEL_22;
    }

    presentation = [withLock_ensureTargetStateCreated presentation];
    v16 = [presentationCopy differenceFromPresentation:presentation];

    if ([v16 hasChanges])
    {
      insertions = [v16 insertions];
      removals = [v16 removals];
      v19 = [insertions count];
      if ([(BLSHBacklightInactiveEnvironmentSession *)removals count])
      {
        v20 = bls_backlight_log();
        v24 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v19)
        {
          if (v24)
          {
            v31 = [insertions bs_map:&__block_literal_global_274];
            v28 = [(BLSHBacklightInactiveEnvironmentSession *)removals bs_map:&__block_literal_global_276];
            NSStringFromBLSBacklightDisplayMode(v12);
            *buf = 134219010;
            selfCopy5 = self;
            v35 = 2114;
            v36 = v31;
            v37 = 2114;
            v38 = v28;
            v40 = v39 = 2114;
            v26 = v40;
            v41 = 2114;
            v42 = withLock_ensureTargetStateCreated;
            _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation by adding:%{public}@ and removing:%{public}@ displayMode:%{public}@ previousTarget:%{public}@", buf, 0x34u);
          }
        }

        else if (v24)
        {
          v30 = [(BLSHBacklightInactiveEnvironmentSession *)removals bs_map:&__block_literal_global_271];
          NSStringFromBLSBacklightDisplayMode(v12);
          *buf = 134218754;
          selfCopy5 = self;
          v35 = 2114;
          v36 = v30;
          v38 = v37 = 2114;
          v25 = v38;
          v39 = 2114;
          v40 = withLock_ensureTargetStateCreated;
          _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation by removing:%{public}@ displayMode:%{public}@ previousTarget:%{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v20 = bls_backlight_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          [insertions bs_map:&__block_literal_global_268];
          v21 = v29 = removals;
          v22 = NSStringFromBLSBacklightDisplayMode(v12);
          *buf = 134218754;
          selfCopy5 = self;
          v35 = 2114;
          v36 = v21;
          v37 = 2114;
          v38 = v22;
          v39 = 2114;
          v40 = withLock_ensureTargetStateCreated;
          _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation by adding:%{public}@ displayMode:%{public}@ previousTarget:%{public}@", buf, 0x2Au);

          removals = v29;
        }
      }
    }

    else
    {
      insertions = bls_backlight_log();
      if (!os_log_type_enabled(insertions, OS_LOG_TYPE_INFO))
      {
LABEL_21:

LABEL_22:
        [withLock_ensureTargetStateCreated setDisplayMode:v12];
        [withLock_ensureTargetStateCreated setPresentation:presentationCopy];
        [(BLSHBacklightTransitionStateMachine *)self lock_isHighLuminanceAlwaysOnWithSession:sessionCopy];

        os_unfair_lock_unlock(&self->_lock);
        v32 = self->_displayStateMachine;
        v27 = v32;
        BSDispatchMain();

        goto LABEL_5;
      }

      removals = NSStringFromBLSBacklightDisplayMode(v12);
      *buf = 134218498;
      selfCopy5 = self;
      v35 = 2114;
      v36 = removals;
      v37 = 2114;
      v38 = withLock_ensureTargetStateCreated;
      _os_log_impl(&dword_21FD11000, insertions, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation (redundant) displayMode:%{public}@ previousTarget:%{public}@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    lock_session = self->_lock_session;
    *buf = 134218754;
    selfCopy5 = self;
    v35 = 2114;
    v36 = sessionCopy;
    v37 = 2114;
    v38 = lock_session;
    v39 = 2114;
    v40 = presentationCopy;
    _os_log_error_impl(&dword_21FD11000, v10, OS_LOG_TYPE_ERROR, "TSM:%p updated presentation on invalid session:%{public}@ currentSession:%{public}@ new presentation:%{public}@", buf, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_5:
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_269(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_272(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

void __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_277(uint64_t a1)
{
  [*(a1 + 32) setHighLuminanceAlwaysOn:*(a1 + 48)];
  v2 = *(a1 + 40);

  [(BLSHBacklightTransitionStateMachine *)v2 onMain_performNextStepInTransition];
}

- (BOOL)isGlobalUnrestrictedFramerate
{
  os_unfair_lock_lock(&self->_lock);
  lock_globalUnrestrictedFramerate = self->_lock_globalUnrestrictedFramerate;
  os_unfair_lock_unlock(&self->_lock);
  return lock_globalUnrestrictedFramerate;
}

- (void)setGlobalUnrestrictedFramerate:(BOOL)framerate
{
  framerateCopy = framerate;
  os_unfair_lock_lock(&self->_lock);
  lock_globalUnrestrictedFramerate = self->_lock_globalUnrestrictedFramerate;
  self->_lock_globalUnrestrictedFramerate = framerateCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_globalUnrestrictedFramerate != framerateCopy)
  {

    [(BLSHBacklightTransitionStateMachine *)self updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:?];
  }
}

- (BOOL)isGlobalHighLuminanceAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  lock_globalHighLuminanceAlwaysOn = self->_lock_globalHighLuminanceAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return lock_globalHighLuminanceAlwaysOn;
}

- (BOOL)globalCacheFlipbookOnDisplayWake
{
  os_unfair_lock_lock(&self->_lock);
  lock_globalCacheFlipbook = self->_lock_globalCacheFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_globalCacheFlipbook;
}

- (void)setGlobalCacheFlipbookOnDisplayWake:(BOOL)wake
{
  wakeCopy = wake;
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_globalCacheFlipbook = self->_lock_globalCacheFlipbook;
  self->_lock_globalCacheFlipbook = wakeCopy;
  if (lock_globalCacheFlipbook == wakeCopy)
  {
    goto LABEL_2;
  }

  v6 = bls_backlight_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    selfCopy = self;
    v10 = 1024;
    v11 = wakeCopy;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "TSM:%p new globalCacheFlipbook:%{BOOL}u", buf, 0x12u);
  }

  if ([(BLSHBacklightTransitionStateMachine *)self _lock_updateCacheFlipbookWithSession:?]&& self->_lock_session)
  {
    [(BLSHBacklightTransitionStateMachine *)self setGlobalCacheFlipbookOnDisplayWake:v7];
  }

  else
  {
LABEL_2:
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)hostEnvironment:(id)environment hostDidSetLiveUpdating:(BOOL)updating
{
  updatingCopy = updating;
  v30 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  presentation = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  if ([presentation containsEnvironment:environmentCopy])
  {
  }

  else
  {
    presentation2 = [(BLSHBacklightMutableTargetState *)self->_lock_targetState presentation];
    v9 = [presentation2 containsEnvironment:environmentCopy];

    if (!v9)
    {
      v11 = bls_backlight_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        identifier = [environmentCopy identifier];
        *buf = 134218498;
        selfCopy2 = self;
        v22 = 1024;
        v23 = updatingCopy;
        v24 = 2114;
        v25 = identifier;
        _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "TSM:%p hostDidSetLiveUpdating:%{BOOL}u forEnvironment:%{public}@ but not in presentation", buf, 0x1Cu);
      }

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_6;
    }
  }

  if (updatingCopy)
  {
    [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
  }

  withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
  v13 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
  v14 = bls_backlight_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    identifier2 = [environmentCopy identifier];
    v16 = NSStringFromBLSBacklightDisplayMode(v13);
    *buf = 134219010;
    selfCopy2 = self;
    v22 = 1024;
    v23 = updatingCopy;
    v24 = 2114;
    v25 = identifier2;
    v26 = 2114;
    v27 = v16;
    v28 = 2114;
    v29 = withLock_ensureTargetStateCreated;
    _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, "TSM:%p hostDidSetLiveUpdating:%{BOOL}u forEnvironment:%{public}@ targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x30u);
  }

  [withLock_ensureTargetStateCreated setDisplayMode:v13];
  os_unfair_lock_unlock(&self->_lock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__BLSHBacklightTransitionStateMachine_hostEnvironment_hostDidSetLiveUpdating___block_invoke;
  v18[3] = &unk_27841E538;
  v18[4] = self;
  v19 = environmentCopy;
  dispatch_async(MEMORY[0x277D85CD0], v18);

LABEL_6:
}

- (void)hostEnvironment:(id)environment hostDidSetUnrestrictedFramerateUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v18 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  presentation = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  if ([presentation containsEnvironment:environmentCopy])
  {

    goto LABEL_8;
  }

  presentation2 = [(BLSHBacklightMutableTargetState *)self->_lock_targetState presentation];
  v9 = [presentation2 containsEnvironment:environmentCopy];

  if (v9)
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    [(BLSHBacklightTransitionStateMachine *)self updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:environmentCopy];
    goto LABEL_6;
  }

  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = [environmentCopy identifier];
    v12 = 134218498;
    selfCopy = self;
    v14 = 1024;
    v15 = updatesCopy;
    v16 = 2114;
    v17 = identifier;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p changed unrestrictedFramerate:%{BOOL}u forEnvironment:%{public}@ but not in presentation", &v12, 0x1Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_6:
}

void __115__BLSHBacklightTransitionStateMachine_updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) prewarmForDisplayMode:*(a1 + 64)];
  }

  if (*(a1 + 73) == 1)
  {
    if (*(a1 + 40))
    {
      [*(a1 + 48) updateEnvironment:?];
    }

    v2 = *(a1 + 56);

    [(BLSHBacklightTransitionStateMachine *)v2 onMain_performNextStepInTransition];
  }
}

- (void)presentationEngine:(id)engine didUpdateToCurrentWithSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_ensureFlipbookCurrentOperation;
  [(BLSHEnsureFlipbookCurrentOperation *)v6 setCompleted:1];
  v7 = bls_backlight_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  v9 = bls_backlight_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *buf = 134218498;
    selfCopy2 = self;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = specifierCopy;
    v11 = "TSM:%p completed ensureFlipbookCurrentOperation %{public}@, flipbook did update to current with:%{public}@";
    v12 = v9;
    v13 = 32;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *buf = 134218242;
    selfCopy2 = self;
    v16 = 2114;
    v17 = v6;
    v11 = "TSM:%p completed ensureFlipbookCurrentOperation %{public}@";
    v12 = v9;
    v13 = 22;
  }

  _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
LABEL_7:

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    BSDispatchMain();
  }
}

- (void)presentationEngine:(id)engine didInvalidateContentForEnvironment:(id)environment reason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  v9 = !self->_lock_flipbookIsStale && self->_lock_session != 0;
  self->_lock_flipbookIsStale = 1;
  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = [environmentCopy identifier];
    *buf = 134218498;
    selfCopy = self;
    v15 = 2114;
    v16 = identifier;
    v17 = 2114;
    v18 = reasonCopy;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p flipbookIsStale=YES env:%{public}@ invalidateContentForReason:%{public}@", buf, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__BLSHBacklightTransitionStateMachine_presentationEngine_didInvalidateContentForEnvironment_reason___block_invoke;
    block[3] = &unk_27841E650;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)displayState:(id)state didUpdateToMode:(int64_t)mode
{
  v59 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_didNotifyDisplayModeTransitionStartedButNotCompleted && self->_lock_lastNotifiedTargetDisplayMode == mode)
  {
    p_lock_lastNotifiedCompletedDisplayMode = &self->_lock_lastNotifiedCompletedDisplayMode;
    lock_lastNotifiedCompletedDisplayMode = self->_lock_lastNotifiedCompletedDisplayMode;
    self->_lock_didNotifyDisplayModeTransitionStartedButNotCompleted = 0;
    v10 = lock_lastNotifiedCompletedDisplayMode != mode;
LABEL_9:
    *p_lock_lastNotifiedCompletedDisplayMode = mode;
    v9 = 1;
    goto LABEL_10;
  }

  p_lock_lastNotifiedCompletedDisplayMode = &self->_lock_lastNotifiedCompletedDisplayMode;
  lock_lastNotifiedCompletedDisplayMode = self->_lock_lastNotifiedCompletedDisplayMode;
  if (lock_lastNotifiedCompletedDisplayMode != mode)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v9 = 0;
  v10 = 0;
  lock_lastNotifiedCompletedDisplayMode = mode;
LABEL_10:
  updateOperation = [(BLSHPendingUpdateDisplayMode *)self->_lock_pendingUpdateDisplayMode updateOperation];
  v12 = updateOperation;
  if (self->_lock_pendingUpdateDisplayMode && [updateOperation targetDisplayMode] == mode)
  {
    [v12 setCompleted:1];
    currentDisplayMode = [v12 currentDisplayMode];
    v14 = bls_backlight_log();
    if (os_log_type_enabled(v14, (currentDisplayMode == lock_lastNotifiedCompletedDisplayMode)))
    {
      v15 = NSStringFromBLSBacklightDisplayMode(currentDisplayMode);
      *buf = 134218754;
      selfCopy3 = self;
      v45 = 2114;
      v46 = v12;
      v47 = 1024;
      *v48 = currentDisplayMode == lock_lastNotifiedCompletedDisplayMode;
      *&v48[4] = 2114;
      *&v48[6] = v15;
      _os_log_impl(&dword_21FD11000, v14, (currentDisplayMode == lock_lastNotifiedCompletedDisplayMode), "TSM:%p completed updateOperation:%{public}@ modeMatches:%{BOOL}u lastNotifiedMode:%{public}@", buf, 0x26u);
    }

    LODWORD(v16) = 1;
  }

  else
  {
    LODWORD(v16) = 0;
    currentDisplayMode = lock_lastNotifiedCompletedDisplayMode;
  }

  rampOperation = [(BLSHPendingUpdateDisplayMode *)self->_lock_pendingUpdateDisplayMode rampOperation];
  v18 = rampOperation;
  v41 = v12;
  v40 = v16;
  if (rampOperation && [rampOperation targetDisplayMode] == mode)
  {
    [v18 setCompleted:1];
    currentDisplayMode = [v12 currentDisplayMode];
    v16 = bls_backlight_log();
    if (os_log_type_enabled(v16, (currentDisplayMode == lock_lastNotifiedCompletedDisplayMode)))
    {
      NSStringFromBLSBacklightDisplayMode(currentDisplayMode);
      v19 = v38 = v9;
      *buf = 134218754;
      selfCopy3 = self;
      v45 = 2114;
      v46 = v12;
      v47 = 1024;
      *v48 = currentDisplayMode == lock_lastNotifiedCompletedDisplayMode;
      *&v48[4] = 2114;
      *&v48[6] = v19;
      _os_log_impl(&dword_21FD11000, v16, (currentDisplayMode == lock_lastNotifiedCompletedDisplayMode), "TSM:%p completed rampOperation:%{public}@ modeMatches:%{BOOL}u lastNotifiedMode:%{public}@", buf, 0x26u);

      v9 = v38;
    }

    v20 = 1;
    LOBYTE(v16) = v40;
  }

  else
  {
    v20 = 0;
  }

  if (v10)
  {
    v21 = lock_lastNotifiedCompletedDisplayMode;
  }

  else
  {
    v21 = currentDisplayMode;
  }

  if (!v9)
  {
    v21 = lock_lastNotifiedCompletedDisplayMode;
  }

  v42 = v21;
  lock_targetState = self->_lock_targetState;
  if (!lock_targetState)
  {
    goto LABEL_32;
  }

  v23 = (v16 | v20) ^ 1;
  if (!self->_lock_pendingUpdateDisplayMode)
  {
    v23 = 1;
  }

  if (v23)
  {
LABEL_32:
    v24 = v9;
    v27 = 0;
  }

  else
  {
    v24 = v9;
    displayMode = [(BLSHBacklightMutableTargetState *)lock_targetState displayMode];
    last = [(BLSHPendingUpdateDisplayMode *)self->_lock_pendingUpdateDisplayMode last];
    v27 = displayMode == [last targetDisplayMode];
  }

  v28 = [(NSMutableArray *)self->_lock_activeEvents copy];
  v29 = [(NSMutableArray *)self->_lock_abortedEvents copy];
  v30 = bls_backlight_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v39 = NSStringFromBLSBacklightDisplayMode(mode);
    v33 = NSStringFromBLSBacklightDisplayMode(v42);
    lock_pendingUpdateDisplayMode = self->_lock_pendingUpdateDisplayMode;
    v37 = v33;
    v34 = NSStringFromBLSBacklightChangeEvents();
    *buf = 134220034;
    selfCopy3 = self;
    v45 = 2114;
    v46 = v39;
    v47 = 2114;
    *v48 = v37;
    *&v48[8] = 1024;
    *&v48[10] = v40;
    v49 = 1024;
    v50 = v20;
    v51 = 1024;
    v52 = v27;
    v53 = 1024;
    v54 = v24;
    v55 = 2114;
    v56 = lock_pendingUpdateDisplayMode;
    v57 = 2114;
    v35 = v34;
    v58 = v34;
    _os_log_debug_impl(&dword_21FD11000, v30, OS_LOG_TYPE_DEBUG, "TSM:%p didUpdateToMode:%{public}@ fromMode:%{public}@ matchesUpdate:%{BOOL}u matchesRamp:%{BOOL}u matchesTargetDisplayMode:%{BOOL}u shouldNotify:%{BOOL}u update:%{public}@ events:%{public}@", buf, 0x4Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
  v31 = v29;
  v32 = v28;
  BSDispatchMain();
}

void __68__BLSHBacklightTransitionStateMachine_displayState_didUpdateToMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) performerDelegate];
    [v2 backlight:*(a1 + 32) didUpdateToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) activeEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }

  if (*(a1 + 73) == 1)
  {
    v3 = *(a1 + 32);

    [(BLSHBacklightTransitionStateMachine *)v3 onMain_performNextStepInTransition];
  }
}

- (BOOL)hasEnsureFlipbookCurrent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_ensureFlipbookCurrentOperation != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)abortContextForTimer:(id)timer
{
  systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  v19 = [BLSHBacklightTransitionStateMachineAbortContext alloc];
  lock_targetState = self->_lock_targetState;
  currentState = self->_currentState;
  lock_activeEvents = self->_lock_activeEvents;
  lock_abortedEvents = self->_lock_abortedEvents;
  lock_pendingEnvironmentUpdate = self->_lock_pendingEnvironmentUpdate;
  lock_pendingUpdatePresentation = self->_lock_pendingUpdatePresentation;
  v16 = *&self->_lock_pendingUpdateToSpecifier;
  lock_ensureFlipbookCurrentOperation = self->_lock_ensureFlipbookCurrentOperation;
  pendingPrewarmedEvent = self->_pendingPrewarmedEvent;
  lock_queuedEventsToPerform = self->_lock_queuedEventsToPerform;
  environmentStateMachine = self->_environmentStateMachine;
  aggregateState = [systemSleepMonitor aggregateState];
  v14 = [(BLSHBacklightTransitionStateMachineAbortContext *)v19 initWithCurrentState:currentState targetState:lock_targetState activeEvents:lock_activeEvents abortedEvents:lock_abortedEvents pendingEnvironmentUpdate:lock_pendingEnvironmentUpdate pendingUpdatePresentation:lock_pendingUpdatePresentation pendingUpdateToSpecifier:v16 pendingUpdateDisplayMode:lock_ensureFlipbookCurrentOperation ensureFlipbookCurrentOperation:lock_queuedEventsToPerform queuedEventsToPerform:pendingPrewarmedEvent pendingPrewarmedEvent:environmentStateMachine environmentStateMachine:aggregateState sleepMonitorAggregateState:?];

  return v14;
}

- (id)identifier
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  build = [v2 build];

  return build;
}

- (void)acquireTouchLockAssertion
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = OUTLINED_FUNCTION_15_2(self);
    os_unfair_lock_lock(v2);
    v3 = *(v1 + 56);
    if (v3)
    {
      isActive = [v3 isActive];
      os_unfair_lock_unlock((v1 + 8));
      if (isActive)
      {
        return;
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 8));
    }

    v5 = MEMORY[0x277CF0868];
    touchLock = [MEMORY[0x277CF09D8] touchLock];
    v12[0] = touchLock;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [v5 acquireWithExplanation:@"inactiveBacklight" observer:0 attributes:v7];

    os_unfair_lock_lock((v1 + 8));
    v9 = *(v1 + 56);
    *(v1 + 56) = v8;
    v10 = v8;
    v11 = v9;

    os_unfair_lock_unlock((v1 + 8));
    [v11 invalidate];
  }
}

- (uint64_t)createSession
{
  if (result)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    return BSDispatchMain();
  }

  return result;
}

- (NSString)backlightStateDescription
{
  v3 = OUTLINED_FUNCTION_15_2(self);
  os_unfair_lock_lock(v3);
  withLock_backlightStateDescription = [(BLSHBacklightTransitionStateMachine *)v2 withLock_backlightStateDescription];
  os_unfair_lock_unlock(v2 + 2);

  return withLock_backlightStateDescription;
}

- (uint64_t)_lock_updateCacheFlipbookWithSession:(uint64_t)session
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (session)
  {
    v6 = *(session + 229);
    if (*(session + 228))
    {
      v7 = 1;
    }

    else
    {
      presentation = [v4 presentation];
      presentationEntries = [presentation presentationEntries];

      v7 = OUTLINED_FUNCTION_43(v9, v10, v11, v12, v13, v14, v15, v16, v43, 0, 0, 0, 0, 0, 0, 0, buf, v53, *(&v53 + 1), v54);
      if (v7)
      {
        v17 = *v46;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v46 != v17)
            {
              objc_enumerationMutation(presentationEntries);
            }

            v19 = *(v45 + 8 * i);
            environment = [v19 environment];
            v21 = BLSCacheFlipbookOnDisplayWakeForEnvironment(environment);

            if (v21)
            {
              v30 = bls_backlight_log();
              v31 = v30;
              if (v6)
              {
                v32 = OS_LOG_TYPE_DEBUG;
              }

              else
              {
                v32 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(v30, v32))
              {
                environment2 = [v19 environment];
                identifier = [environment2 identifier];
                OUTLINED_FUNCTION_37_0();
                WORD2(v53) = 2114;
                *(&v53 + 6) = v35;
                _os_log_impl(&dword_21FD11000, v31, v32, "TSM:%p cacheFlipbook:YES for %{public}@", &buf, 0x16u);
              }

              v7 = 1;
              goto LABEL_19;
            }
          }

          v7 = OUTLINED_FUNCTION_43(v22, v23, v24, v25, v26, v27, v28, v29, v44, v45, v46, v47, v48, v49, v50, v51, buf, v53, *(&v53 + 1), v54);
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    if (v6 == v7)
    {
      session = 0;
    }

    else
    {
      v36 = bls_backlight_log();
      if (OUTLINED_FUNCTION_32_0(v36))
      {
        OUTLINED_FUNCTION_37_0();
        WORD2(v53) = 1024;
        *(&v53 + 6) = v7;
        OUTLINED_FUNCTION_27_0();
        _os_log_impl(v37, v38, v39, v40, v41, 0x12u);
      }

      *(session + 229) = v7;
      [*(session + 40) setCacheFlipbook:v7];
      session = 1;
    }
  }

  return session;
}

- (uint64_t)lock_isHighLuminanceAlwaysOnWithSession:(uint64_t)session
{
  v3 = a2;
  v4 = v3;
  if (session)
  {
    if (*(session + 241))
    {
      session = 1;
    }

    else
    {
      presentation = [v3 presentation];
      session = [presentation isHighLuminanceAlwaysOn];
    }
  }

  return session;
}

- (void)destroySession
{
  if (self)
  {
    v3 = OUTLINED_FUNCTION_15_2(self);
    os_unfair_lock_lock(v3);
    v4 = *(v1 + 144);
    v5 = bls_backlight_log();
    if (OUTLINED_FUNCTION_32_0(v5))
    {
      presentation = [*(v1 + 32) presentation];
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_27();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    }

    [v4 setUpdater:0];
    v12 = *(v1 + 144);
    *(v1 + 144) = 0;

    [*(v1 + 152) setPresentationSource:0];
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    v14 = v13;

    v15 = *(v1 + 160);
    *(v1 + 160) = 0;

    os_unfair_lock_unlock((v1 + 8));
    [v4 sessionDidEnd];
    [v14 invalidate];
    v16 = [*(v1 + 40) stopForReason:@"destroySession"];
    [*(v1 + 40) purgeFlipbook];
  }
}

- (uint64_t)hasUnrestrictedFramerateWithSession:(uint64_t)session
{
  v3 = a2;
  v4 = v3;
  if (session)
  {
    if (v3)
    {
      presentation = [v3 presentation];
      session = [presentation hasUnrestrictedFramerateUpdates];
    }

    else
    {
      session = 1;
    }
  }

  return session;
}

- (void)releaseTransitionAPAwakeAssertion
{
  if (self)
  {
    v3 = OUTLINED_FUNCTION_15_2(self);
    os_unfair_lock_lock(v3);
    if (*(v1 + 88))
    {
      v4 = bls_backlight_log();
      if (OUTLINED_FUNCTION_33_0(v4))
      {
        OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v6, v7, v8, v9, v10, v11);
      }

      [*(v1 + 88) invalidate];
      v5 = *(v1 + 88);
      *(v1 + 88) = 0;
    }

    os_unfair_lock_unlock((v1 + 8));
  }
}

- (void)onMain_performEvent:(uint64_t)event
{
  v14 = a2;
  if (!event)
  {
    goto LABEL_12;
  }

  os_unfair_lock_lock((event + 8));
  state = [v14 state];
  v4 = *(event + 168);
  *(event + 168) = 0;

  [v14 setAninmationPropertiesWithPlatformProvider:*(event + 248)];
  if (*(event + 227))
  {
    isTransitionForcedUnanimated = 0;
  }

  else
  {
    isTransitionForcedUnanimated = [v14 isTransitionForcedUnanimated];
  }

  *(event + 226) = isTransitionForcedUnanimated;
  [(BLSHBacklightTransitionStateMachine *)event _lock_enqueueNewEvent:v14];
  v6 = *(event + 72);
  *(event + 72) = state;
  if (v6 == state)
  {
    os_unfair_lock_unlock((event + 8));
    if (BLSBacklightStateIsActive())
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(event + 80) = mach_continuous_time();
    os_unfair_lock_unlock((event + 8));
  }

  [(BLSHBacklightTransitionStateMachine *)event onMain_ensureSessionCreated];
LABEL_10:
  v7 = v4 == v14;
  os_unfair_lock_lock((event + 8));
  withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)event withLock_ensureTargetStateCreated];
  [withLock_ensureTargetStateCreated setDisplayMode:{-[BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:](event, *(event + 72))}];
  os_unfair_lock_unlock((event + 8));
  [(BLSHBacklightTransitionStateMachine *)event logForPerformEvent:v14 currentState:*(event + 152) targetState:withLock_ensureTargetStateCreated matchesPrewarm:v7 pendingPrewarmedEvent:*(event + 168)];
  if (v6 != state)
  {
    if (BLSBacklightStateIsActive())
    {
      [(BLSHBacklightTransitionStateMachine *)event invalidateTouchLockAssertion];
    }

    else
    {
      [(BLSHBacklightTransitionStateMachine *)event acquireTouchLockAssertion];
    }
  }

  [*(event + 48) invalidate:1];
  v9 = *(event + 24);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSM:%p transition to backlight state for event:%@", event, v14];
  v11 = [v9 scheduleWatchdogWithDelegate:event explanation:v10 timeout:20.0];
  v12 = *(event + 48);
  *(event + 48) = v11;

  [(BLSHBacklightTransitionStateMachine *)event onMain_performNextStepInTransition];
LABEL_12:
}

- (void)_lock_enqueueNewEvent:(id *)event
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (event)
  {
    state = [v3 state];
    firstObject = [event[23] firstObject];
    v7 = firstObject;
    if (firstObject && state != [firstObject state])
    {
      [event[24] addObjectsFromArray:event[23]];
      v9[0] = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [event[23] setArray:v8];
      [event[22] setArray:v8];
    }

    else
    {
      [event[23] addObject:v4];
      [event[22] addObject:v4];
    }
  }
}

- (void)logForPerformEvent:(void *)event currentState:(void *)state targetState:(int)targetState matchesPrewarm:(void *)prewarm pendingPrewarmedEvent:
{
  v102[1] = *MEMORY[0x277D85DE8];
  v71 = a2;
  eventCopy = event;
  stateCopy = state;
  prewarmCopy = prewarm;
  if (self)
  {
    if (!targetState || (bls_backlight_log(), v12 = objc_claimAutoreleasedReturnValue(), v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO), v12, v13))
    {
      selfCopy = self;
      presentation = [eventCopy presentation];
      presentation2 = [stateCopy presentation];
      presentationEntries = [presentation2 presentationEntries];
      v17 = [presentationEntries count];

      if (v17 >= 2)
      {
        v18 = eventCopy;
        v19 = [BLSHBacklightEnvironmentPresentation alloc];
        presentationEntries2 = [presentation2 presentationEntries];
        firstObject = [presentationEntries2 firstObject];
        v102[0] = firstObject;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:1];
        flipbookContext = [presentation2 flipbookContext];
        [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
        v25 = v24 = presentation;
        v26 = [(BLSHBacklightEnvironmentPresentation *)v19 initWithPresentationEntries:v22 flipbookContext:flipbookContext expirationDate:v25];

        presentation = v26;
        eventCopy = v18;
      }

      v27 = [presentation2 differenceFromPresentation:presentation];
      insertions = [v27 insertions];
      removals = [v27 removals];
      v67 = insertions;
      v65 = [insertions count];
      v66 = removals;
      v30 = [removals count];
      changeRequest = [v71 changeRequest];
      v32 = bls_backlight_log();
      targetStateCopy = targetState;
      if (targetState)
      {
        v34 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v34 = OS_LOG_TYPE_ERROR;
      }

      log = v32;
      if (os_log_type_enabled(v32, v34))
      {
        v35 = @"(unmatched prewarm event) ";
        v36 = &stru_283373E60;
        v63 = targetStateCopy;
        if (targetStateCopy)
        {
          v35 = &stru_283373E60;
        }

        v53 = v35;
        eventID = [v71 eventID];
        [v71 previousState];
        v61 = NSStringFromBLSBacklightState();
        [v71 state];
        v60 = NSStringFromBLSBacklightState();
        [changeRequest sourceEvent];
        v59 = NSStringFromBLSBacklightChangeSourceEvent();
        [changeRequest explanation];
        v56 = v55 = eventCopy;
        v58 = NSStringFromBLSBacklightDisplayMode([eventCopy displayMode]);
        v57 = NSStringFromBLSBacklightDisplayMode([stateCopy displayMode]);
        if (presentation != presentation2)
        {
          v37 = MEMORY[0x277CCACA8];
          presentationEntries3 = [presentation presentationEntries];
          v38 = [presentationEntries3 count];
          presentationEntries4 = [presentation2 presentationEntries];
          v36 = [v37 stringWithFormat:@"presentation:%p(%lu)->%p(%lu)", presentation, v38, presentation2, objc_msgSend(presentationEntries4, "count")];
        }

        if (v65)
        {
          v39 = MEMORY[0x277CCACA8];
          v50 = [v67 bs_map:&__block_literal_global_186];
          v40 = [v39 stringWithFormat:@"\nadded %@", v50];
        }

        else
        {
          v40 = &stru_283373E60;
        }

        v54 = presentation;
        if (v30)
        {
          v41 = v40;
          bls_shortLoggingString2 = 0x277CCA000;
          v43 = MEMORY[0x277CCACA8];
          v48 = [v66 bs_map:&__block_literal_global_194];
          v44 = v43;
          v40 = v41;
          v45 = [v44 stringWithFormat:@"\nremoved %@", v48];
        }

        else
        {
          bls_shortLoggingString2 = 0x277CCA000;
          v45 = &stru_283373E60;
        }

        bls_shortLoggingString = [presentation2 bls_shortLoggingString];
        if (v63)
        {
          v46 = &stru_283373E60;
        }

        else
        {
          v47 = MEMORY[0x277CCACA8];
          bls_shortLoggingString2 = [prewarmCopy bls_shortLoggingString];
          v46 = [v47 stringWithFormat:@"\n%@", bls_shortLoggingString2];
        }

        *buf = 134221570;
        v73 = selfCopy;
        v74 = 2114;
        v75 = v53;
        v76 = 2048;
        v77 = eventID;
        v78 = 2048;
        v79 = v71;
        v80 = 2114;
        v81 = v61;
        v82 = 2114;
        v83 = v60;
        v84 = 2114;
        v85 = v59;
        v86 = 2114;
        v87 = v56;
        v88 = 2114;
        v89 = v58;
        v90 = 2114;
        v91 = v57;
        v92 = 2114;
        v93 = v36;
        v94 = 2114;
        v95 = v40;
        v96 = 2114;
        v97 = v45;
        v98 = 2114;
        v99 = bls_shortLoggingString;
        v100 = 2114;
        v101 = v46;
        _os_log_impl(&dword_21FD11000, log, v34, "TSM:%p %{public}@will performEvent(%llu:%p) %{public}@->%{public}@ %{public}@:%{public}@ %{public}@->%{public}@ %{public}@%{public}@%{public}@\n%{public}@%{public}@", buf, 0x98u);
        if ((v63 & 1) == 0)
        {
        }

        if (v30)
        {
        }

        eventCopy = v55;
        if (v65)
        {
        }

        presentation = v54;
        if (v54 != presentation2)
        {
        }
      }
    }
  }
}

- (id)lock_displayOperationForTarget:(uint64_t)target isNullOperationAllowed:
{
  if (self)
  {
    displayMode = [*(self + 152) displayMode];
    v7 = objc_opt_new();
    [v7 setIsNullOperationAllowed:target];
    v8 = OUTLINED_FUNCTION_41();
    [v7 setIsAnimatedTransition:{-[BLSHBacklightTransitionStateMachine isDisplayModeTransitionAnimatedToMode:fromMode:](v8, v9, displayMode)}];
    [v7 setPendingOperation:*(self + 128)];
    v10 = [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:displayMode toTargetDisplayMode:a2 withConfiguration:v7];
    rampOperation = [v10 rampOperation];
    v12 = rampOperation;
    if (rampOperation)
    {
      [rampOperation duration];
      if (v13 == 0.0)
      {
        [*(self + 248) backlightFadeOutDuration];
        [v12 setDuration:?];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:(uint64_t)mode
{
  if (!mode)
  {
    return;
  }

  v5 = *(mode + 40);
  if (a2 == 1)
  {
    v6 = [v5 suppressForReason:@"flipbookSuppressed"];
    goto LABEL_17;
  }

  engineState = [v5 engineState];
  if (engineState)
  {
    if (a2 == 2)
    {
      if (engineState != 1)
      {
        goto LABEL_17;
      }

      v8 = *(mode + 40);
      v9 = @"wantFlipbookEngine";
    }

    else
    {
      if (*(mode + 72) != 1)
      {
        v11 = *(mode + 40);
        if (*(mode + 229) == 1)
        {
          [v11 suppressForReason:@"cacheFlipbook"];
        }

        else
        {
          [v11 stopForReason:@"wantStopped"];
        }
        v10 = ;
        goto LABEL_16;
      }

      if ((engineState - 2) > 2)
      {
        goto LABEL_17;
      }

      v8 = *(mode + 40);
      v9 = @"wantLiveUpdatingEngine";
    }

    v10 = [v8 suspendForReason:v9];
LABEL_16:
    v12 = *(mode + 96);
    *(mode + 96) = v10;
  }

LABEL_17:
  v13 = *(mode + 136);
  if (v13 && ([v13 isCompleted] & 1) == 0)
  {
    v14 = bls_backlight_log();
    if (OUTLINED_FUNCTION_32_0(v14))
    {
      v15 = NSStringFromBLSBacklightDisplayMode(a2);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_27();
      _os_log_impl(v16, v17, v18, v19, v20, 0x20u);
    }
  }

  v21 = *(mode + 136);
  *(mode + 136) = 0;
}

- (id)onMainWithLock_onScreenSpecifierForDisplayMode:(uint64_t)mode
{
  if (mode)
  {
    if (a2 == 2)
    {
      onGlassFlipbookFrame = [*(mode + 40) onGlassFlipbookFrame];
      bls_specifier = [onGlassFlipbookFrame bls_specifier];
    }

    else
    {
      presentation = [*(mode + 144) presentation];
      currentSpecifier = [presentation currentSpecifier];

      bls_specifier = currentSpecifier;
      onGlassFlipbookFrame = bls_specifier;
    }

    v8 = bls_specifier;
    v9 = bls_backlight_log();
    if (OUTLINED_FUNCTION_44(v9))
    {
      v11 = NSStringFromBLSBacklightDisplayMode(a2);
      bls_shortLoggingString = [onGlassFlipbookFrame bls_shortLoggingString];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_16_2();
      _os_log_debug_impl(v13, v14, OS_LOG_TYPE_DEBUG, v15, v16, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)setDisplayMode:(uint64_t)result withRampDuration:
{
  if (result)
  {
    OUTLINED_FUNCTION_0_5();
    return BSDispatchMain();
  }

  return result;
}

- (void)onMain_setDisplayMode:(double)mode withRampDuration:
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v6 = *(self + 208);
    *(self + 208) = a2;
    v9 = [*(self + 184) copy];
    v7 = [*(self + 192) copy];
    os_unfair_lock_unlock((self + 8));
    if (v6 != a2)
    {
      performerDelegate = [self performerDelegate];
      [performerDelegate backlight:self willUpdateToDisplayMode:a2 fromDisplayMode:v6 forEvents:v9 abortedEvents:v7];
    }

    [*(self + 256) setDisplayMode:a2 withRampDuration:mode];
    if (a2 != 2)
    {
      [*(self + 40) invalidateOnGlassFlipbookFrame];
    }

    [*(self + 40) setOnStandby:IsOffForBLSBacklightDisplayMode(a2) ^ 1];
  }
}

- (id)onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:(id *)change
{
  changeCopy = change;
  v30 = *MEMORY[0x277D85DE8];
  if (!change)
  {
    goto LABEL_9;
  }

  if ([change[22] count])
  {
    firstObject = [changeCopy[22] firstObject];
    if ((([firstObject state] == 0) ^ a2))
    {
      v9 = [changeCopy[22] copy];
      [changeCopy[22] removeAllObjects];
      changeCopy = [(BLSHBacklightTransitionStateMachine *)changeCopy onMainWithLock_environmentUpdateOperationForEvents:v9];

      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!changeCopy[13])
  {
LABEL_6:
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromBLSBacklightChangeEvents();
      OUTLINED_FUNCTION_18_1();
      v26 = 1024;
      v27 = a2;
      v28 = 2114;
      v29 = v8;
      _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "TSM:%p (findNextOperation) no environmentPerformUpdate operation needed isBeforeDisplayBlankingChange:%{BOOL}u (queuedEvents:%{public}@})", v25, 0x1Cu);
    }

    changeCopy = 0;
    goto LABEL_9;
  }

  [changeCopy[20] displayMode];
  v10 = OUTLINED_FUNCTION_30_0();
  v12 = [(BLSHBacklightTransitionStateMachine *)v10 willUnblankTransitioningToDisplayMode:v11];
  v13 = changeCopy[16];
  if (v13 && [v13 isCompleted] && (objc_msgSend(changeCopy[16], "isDirectRamp") & 1) == 0 && changeCopy[20])
  {
    last = [changeCopy[16] last];
    targetDisplayMode = [last targetDisplayMode];
    v16 = targetDisplayMode == [changeCopy[20] displayMode];
  }

  else
  {
    v16 = 0;
  }

  v17 = changeCopy[13];
  if (a2 && (v12 || v16))
  {
    if ([v17 didUpdateInitialState])
    {
      goto LABEL_6;
    }
  }

  else if ([v17 isCompleted])
  {
    goto LABEL_6;
  }

  v18 = bls_backlight_log();
  if (OUTLINED_FUNCTION_33_0(v18))
  {
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_13_3();
    _os_log_debug_impl(v19, v20, v21, v22, v23, v24);
  }

  changeCopy = changeCopy[13];
LABEL_9:

  return changeCopy;
}

- (id)onMainWithLock_environmentPerformUpdateIfNeededAfterDisplayUpdate
{
  if (self)
  {
    self = [(BLSHBacklightTransitionStateMachine *)self onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:?];
    v1 = vars8;
  }

  return self;
}

- (BLSHPendingEnvironmentUpdateOperation)onMainWithLock_environmentUpdateOperationForEvents:(BLSHPendingEnvironmentUpdateOperation *)events
{
  v100 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (events)
  {
    isa = events[5].super.isa;
    if (!isa)
    {
      isa = events[4]._initialSpecifier;
    }

    displayMode = [isa displayMode];
    if (displayMode == 1)
    {
      v6 = [[BLSHPendingEnvironmentUpdateOperation alloc] initWithEvents:v3 withInitialSpecifier:0];
      v7 = *&events[3]._started;
      *&events[3]._started = v6;

      v8 = v6;
      [(BLSHPendingEnvironmentUpdateOperation *)v8 setStarted:1];
      [(BLSHPendingEnvironmentUpdateOperation *)v8 setUpdatedInitialState:1];
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromBLSBacklightChangeEvents();
        OUTLINED_FUNCTION_6_5(3.8522e-34);
        v97 = v8;
        v98 = v11;
        v99 = v12;
        OUTLINED_FUNCTION_22_1();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__BLSHBacklightTransitionStateMachine_onMainWithLock_environmentUpdateOperationForEvents___block_invoke;
      block[3] = &unk_27841E538;
      v19 = v8;
      v93 = v19;
      eventsCopy = events;
      dispatch_async(MEMORY[0x277D85CD0], block);
      events = v19;
      initialSpecifier = v93;
    }

    else
    {
      if (BYTE3(events[7].super.isa))
      {
        v21 = 1;
      }

      else
      {
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v22 = v3;
        v23 = [v22 countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v89;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v89 != v25)
              {
                objc_enumerationMutation(v22);
              }

              if ([*(*(&v88 + 1) + 8 * i) isEnvironmentTransitionAnimated])
              {
                v21 = 1;
                goto LABEL_20;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v88 objects:v96 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v21 = 0;
LABEL_20:
      }

      if (IsBlankedForBLSBacklightDisplayMode(displayMode))
      {
        v27 = bls_backlight_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [*&events[1]._started description];
          v29 = NSStringFromBLSBacklightDisplayMode(displayMode);
          OUTLINED_FUNCTION_6_5(3.8522e-34);
          v97 = v28;
          v98 = v30;
          v99 = v31;
          OUTLINED_FUNCTION_22_1();
          _os_log_impl(v32, v33, v34, v35, v36, v37);
        }
      }

      else
      {
        v75 = OUTLINED_FUNCTION_41();
        [(BLSHBacklightTransitionStateMachine *)v75 onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:v76];
      }

      firstObject = [v3 firstObject];
      v39 = firstObject;
      if (events[3].super.isa)
      {
        previousState = [firstObject previousState];
        v41 = events[3].super.isa;
        initialSpecifier = v41;
        if (previousState != 1)
        {
          if (v41)
          {
            v42 = bls_backlight_log();
            if (OUTLINED_FUNCTION_35_0(v42))
            {
              v43 = NSStringFromBLSBacklightChangeEvents();
              OUTLINED_FUNCTION_6_5(3.8522e-34);
              v97 = initialSpecifier;
              v98 = v44;
              v99 = v45;
              OUTLINED_FUNCTION_22_1();
              _os_log_impl(v46, v47, v48, v49, v50, v51);
            }
          }

          initialSpecifier = 0;
        }

        v52 = events[3].super.isa;
        events[3].super.isa = 0;
      }

      else
      {
        initialSpecifier = 0;
      }

      [v39 state];
      IsActive = BLSBacklightStateIsActive();
      v54 = *&events[3]._started;
      v55 = v54;
      if (v54 && !initialSpecifier && IsActive)
      {
        initialSpecifier = [(BLSHPendingEnvironmentUpdateOperation *)v54 initialSpecifier];
      }

      if (!initialSpecifier)
      {
        if ((IsActive & 1) != 0 || ([v39 previousState], (BLSBacklightStateIsActive() & 1) == 0))
        {
          initialSpecifier = [(BLSHBacklightTransitionStateMachine *)events onMainWithLock_onScreenSpecifierForDisplayMode:?];
        }

        else
        {
          initialSpecifier = 0;
        }
      }

      v56 = [[BLSHPendingEnvironmentUpdateOperation alloc] initWithEvents:v3 withInitialSpecifier:initialSpecifier];
      v57 = *&events[3]._started;
      *&events[3]._started = v56;

      v58 = v56;
      BYTE3(events[7].super.isa) = v21;
      if (v21)
      {
        v59 = 0;
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v60 = v3;
        v61 = [v60 countByEnumeratingWithState:&v84 objects:v95 count:16];
        if (v61)
        {
          v62 = v61;
          v83 = v39;
          v59 = v21 ^ 1;
          v63 = *v85;
          while (2)
          {
            for (j = 0; j != v62; ++j)
            {
              if (*v85 != v63)
              {
                objc_enumerationMutation(v60);
              }

              if (![*(*(&v84 + 1) + 8 * j) isTransitionForcedUnanimated])
              {
                v59 = 0;
                goto LABEL_54;
              }
            }

            v62 = [v60 countByEnumeratingWithState:&v84 objects:v95 count:16];
            if (v62)
            {
              continue;
            }

            break;
          }

LABEL_54:
          v39 = v83;
        }

        else
        {
          v59 = 1;
        }
      }

      BYTE2(events[7].super.isa) = v59;
      v65 = bls_backlight_log();
      v66 = v65;
      if (v55)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_5(3.8522e-34);
          v97 = v55;
          v98 = v67;
          v99 = v58;
          OUTLINED_FUNCTION_22_1();
          _os_log_impl(v68, v69, v70, v71, v72, v73);
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_6_5(3.8521e-34);
        v97 = v58;
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v77, v78, v79, v80, v81, v82);
      }

      events = v58;
    }
  }

  return events;
}

- (BOOL)willUnblankTransitioningToDisplayMode:(uint64_t)mode
{
  if (!mode || IsBlankedForBLSBacklightDisplayMode(a2))
  {
    return 0;
  }

  displayMode = [*(mode + 152) displayMode];

  return IsBlankedForBLSBacklightDisplayMode(displayMode);
}

- (uint64_t)isDisplayModeTransitionAnimatedToMode:(unint64_t)mode fromMode:
{
  if (!self)
  {
    return 0;
  }

  v5 = BLSBacklightStateForBLSBacklightDisplayMode(a2);
  v6 = BLSBacklightStateForBLSBacklightDisplayMode(mode);
  if (objc_opt_respondsToSelector())
  {
    if (([*(self + 248) isTransitionForcedUnanimatedToState:v5 fromPreviousState:v6] & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v9 = OUTLINED_FUNCTION_41();
  if (DefaultIsTransitionForcedUnanimated(v9, v10))
  {
    return 0;
  }

LABEL_4:
  if (objc_opt_respondsToSelector())
  {
    v7 = *(self + 248);

    return [v7 isEnvironmentTransitionAnimatedToState:v5 fromPreviousState:v6];
  }

  else
  {
    v11 = OUTLINED_FUNCTION_41();

    return DefaultIsEnvironmentTransitionAnimated(v11, v12);
  }
}

- (void)_lock_setPendingUpdateDisplayMode:(uint64_t)mode
{
  v5 = a2;
  if (mode)
  {
    v6 = *(mode + 128);
    v7 = v6;
    if (v6 == v5)
    {
LABEL_12:

      goto LABEL_13;
    }

    if (v6)
    {
      [v6 isStartedButIncomplete];
      v8 = bls_backlight_log();
      if (OUTLINED_FUNCTION_35_0(v8))
      {
        OUTLINED_FUNCTION_16_2();
        v13 = 42;
LABEL_9:
        _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, v13);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_11:
        objc_storeStrong((mode + 128), a2);
        goto LABEL_12;
      }

      v14 = bls_backlight_log();
      if (OUTLINED_FUNCTION_35_0(v14))
      {
        OUTLINED_FUNCTION_16_2();
        v13 = 22;
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (NSObject)_lock_ensureFlipbookCurrent
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_9;
  }

  v2 = *(self + 136);
  if (v2)
  {
    v3 = v2;
    if (![v2 isCompleted])
    {
      goto LABEL_9;
    }

    *(self + 230) = 0;
    v4 = bls_backlight_log();
    if (OUTLINED_FUNCTION_33_0(v4))
    {
      OUTLINED_FUNCTION_18_1();
      _os_log_debug_impl(&dword_21FD11000, v3, OS_LOG_TYPE_DEBUG, "TSM:%p flipbookIsStale=NO ensureCurrent completed", v8, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = +[BLSHEnsureFlipbookCurrentOperation operation];
  v6 = *(self + 136);
  *(self + 136) = v5;

  v3 = v5;
LABEL_9:

  return v3;
}

- (void)environmentStateMachineDidBeginUpdateToState:(uint64_t)state
{
  v25 = *MEMORY[0x277D85DE8];
  if (state)
  {
    os_unfair_lock_lock((state + 8));
    v4 = [*(state + 184) copy];
    v5 = [*(state + 192) copy];
    triggerEvent = [*(state + 104) triggerEvent];
    v7 = triggerEvent;
    if (*(state + 104))
    {
      v8 = [triggerEvent state] == a2;
    }

    else
    {
      v8 = 0;
    }

    v9 = bls_backlight_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromBLSBacklightState();
      v11 = *(state + 104);
      v12 = NSStringFromBLSBacklightChangeEvents();
      *buf = 134219010;
      stateCopy = state;
      v17 = 2114;
      v18 = v10;
      v19 = 1024;
      v20 = v8;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "TSM:%p didBeginUpdateToState:%{public}@ matchesPendingEvent:%{BOOL}u pendingEvent:%{public}@ events:%{public}@", buf, 0x30u);
    }

    if (v8)
    {
      [*(state + 104) setUpdatedInitialState:1];
      os_unfair_lock_unlock((state + 8));
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3_2();
      v13 = v4;
      v14 = v5;
      BSDispatchMain();
    }

    else
    {
      os_unfair_lock_unlock((state + 8));
    }
  }
}

- (void)environmentStateMachineDidCompleteUpdateToState:(uint64_t)state
{
  v21 = *MEMORY[0x277D85DE8];
  if (state)
  {
    v4 = OUTLINED_FUNCTION_15_2(state);
    os_unfair_lock_lock(v4);
    v5 = *(v2 + 104);
    if (v5)
    {
      triggerEvent = [v5 triggerEvent];
      v7 = [triggerEvent state] == a2;
    }

    else
    {
      v7 = 0;
    }

    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromBLSBacklightState();
      OUTLINED_FUNCTION_2_4();
      v16 = v12;
      v17 = 1024;
      v18 = v7;
      v19 = v13;
      v20 = v14;
      _os_log_debug_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEBUG, "TSM:%p environmentStateMachine didCompleteUpdateToState:%{public}@ matchesPendingEvent:%{BOOL}u pendingEvent:%{public}@ ", buf, 0x26u);
    }

    if (v7)
    {
      [*(v2 + 104) setCompleted:1];
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_2_4();
        v16 = v10;
        _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "TSM:%p completed pendingEnvironmentUpdate %{public}@", buf, 0x16u);
      }

      os_unfair_lock_unlock((v2 + 8));
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      BSDispatchMain();
    }

    else
    {
      os_unfair_lock_unlock((v2 + 8));
    }
  }
}

- (void)environmentStateMachine:(id)machine didUpdateToPresentation:(id)presentation
{
  v37 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  os_unfair_lock_lock(&self->_lock);
  lock_pendingUpdatePresentation = self->_lock_pendingUpdatePresentation;
  if (lock_pendingUpdatePresentation && (-[BLSHPendingUpdatePresentation presentation](lock_pendingUpdatePresentation, "presentation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:presentationCopy], v8, v9))
  {
    v10 = 1;
    [(BLSHPendingUpdatePresentation *)self->_lock_pendingUpdatePresentation setCompleted:1];
    v11 = bls_backlight_log();
    if (OUTLINED_FUNCTION_32_0(v11))
    {
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_27_0();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }

    self->_lock_flipbookIsStale = 1;
  }

  else
  {
    v10 = 0;
  }

  withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
  v18 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
  v19 = bls_backlight_log();
  if (OUTLINED_FUNCTION_44(v19))
  {
    v23 = NSStringFromBLSBacklightDisplayMode(v18);
    OUTLINED_FUNCTION_37_0();
    v29 = 2114;
    v30 = presentationCopy;
    v31 = 1024;
    v32 = v10;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = v25;
    _os_log_debug_impl(&dword_21FD11000, v4, OS_LOG_TYPE_DEBUG, "TSM:%p didUpdateToPresentation:%{public}@ matchesPendingUpdate:%{BOOL}u targetDisplayMode:%{public}@ pending:%{public}@", buf, 0x30u);
  }

  [withLock_ensureTargetStateCreated setDisplayMode:v18];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v20 = self->_lock_session;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v26 = v21;
    v27 = presentationCopy;
    v22 = v20;
    BSDispatchMain();
  }
}

- (void)updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:(uint64_t)environment
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (environment)
  {
    os_unfair_lock_lock((environment + 8));
    v5 = *(environment + 72);
    if (*(environment + 240))
    {
      v6 = 1;
    }

    else
    {
      v6 = [(BLSHBacklightTransitionStateMachine *)environment hasUnrestrictedFramerateWithSession:?];
    }

    if (v5 == 1 && v6 != 0)
    {
      [(BLSHBacklightTransitionStateMachine *)environment withLock_acquireTransitionAPAwakeAssertion];
    }

    withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)environment withLock_ensureTargetStateCreated];
    displayMode = [withLock_ensureTargetStateCreated displayMode];
    v10 = [(BLSHBacklightTransitionStateMachine *)environment lock_displayModeForBacklightState:?];
    v11 = bls_backlight_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v12)
      {
        identifier = [v3 identifier];
        v13 = NSStringFromBLSBacklightDisplayMode(v10);
        OUTLINED_FUNCTION_23_0();
        v27 = identifier;
        v28 = v14;
        v29 = v15;
        v30 = v14;
        v31 = withLock_ensureTargetStateCreated;
        _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "TSM:%p changed unrestrictedFramerate:%{BOOL}u forEnvironment:%{public}@ targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x30u);
      }
    }

    else if (v12)
    {
      v19 = NSStringFromBLSBacklightDisplayMode(v10);
      OUTLINED_FUNCTION_23_0();
      v27 = v20;
      v28 = v21;
      v29 = withLock_ensureTargetStateCreated;
      _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "TSM:%p changed global unrestrictedFramerate:%{BOOL}u targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x26u);
    }

    [withLock_ensureTargetStateCreated setDisplayMode:v10];
    v16 = *(environment + 256);
    v17 = *(environment + 32);
    os_unfair_lock_unlock((environment + 8));
    if (displayMode != v10 || v5 == 1)
    {
      v23 = v16;
      v24 = v3;
      v25 = v17;
      BSDispatchMain();
    }
  }
}

- (void)setGlobalHighLuminanceAlwaysOn:(BOOL)on
{
  onCopy = on;
  os_unfair_lock_lock(&self->_lock);
  lock_globalHighLuminanceAlwaysOn = self->_lock_globalHighLuminanceAlwaysOn;
  self->_lock_globalHighLuminanceAlwaysOn = onCopy;
  [(BLSHBacklightTransitionStateMachine *)self lock_isHighLuminanceAlwaysOnWithSession:?];
  if (lock_globalHighLuminanceAlwaysOn != onCopy && onCopy != 0)
  {
    [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (lock_globalHighLuminanceAlwaysOn != onCopy)
  {
    v8 = self->_displayStateMachine;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3_2();
    v11 = v9;
    v10 = v9;
    BSDispatchMain();
  }
}

- (void)hostEnvironment:(id)environment hostDidSetAlwaysOnEnabledForEnvironment:(BOOL)forEnvironment
{
  forEnvironmentCopy = forEnvironment;
  v23 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
  withLock_ensureTargetStateCreated = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
  v9 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    identifier = [environmentCopy identifier];
    v12 = NSStringFromBLSBacklightDisplayMode(v9);
    *buf = 134219010;
    selfCopy = self;
    v15 = 1024;
    v16 = forEnvironmentCopy;
    v17 = 2114;
    v18 = identifier;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = withLock_ensureTargetStateCreated;
    _os_log_impl(&dword_21FD11000, v10, OS_LOG_TYPE_INFO, "TSM:%p hostDidSetAlwaysOnEnabled:%{BOOL}u forEnvironment:%{public}@ targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x30u);
  }

  [withLock_ensureTargetStateCreated setDisplayMode:v9];
  os_unfair_lock_unlock(&self->_lock);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  BSDispatchMain();
}

- (void)onMain_updateHostEnvironmentAndPerformNextStep:(uint64_t)step
{
  if (step)
  {
    v3 = a2;
    os_unfair_lock_lock((step + 8));
    v4 = *(step + 32);
    os_unfair_lock_unlock((step + 8));
    [v4 updateEnvironment:v3];

    [(BLSHBacklightTransitionStateMachine *)step onMain_performNextStepInTransition];
  }
}

- (void)hostEnvironment:(id)environment hostDidSetCacheFlipbookOnDisplayWake:(BOOL)wake
{
  v5 = OUTLINED_FUNCTION_15_2(self);
  os_unfair_lock_lock(v5);
  if ([(BLSHBacklightTransitionStateMachine *)v4 _lock_updateCacheFlipbookWithSession:?])
  {
    v6 = *(v4 + 144);
    os_unfair_lock_unlock((v4 + 8));
    if (v6)
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v8 = __92__BLSHBacklightTransitionStateMachine_hostEnvironment_hostDidSetCacheFlipbookOnDisplayWake___block_invoke;
      v9 = &unk_27841E650;
      v10 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {

    os_unfair_lock_unlock((v4 + 8));
  }
}

- (void)hostEnvironment:(id)environment hostDidSetHighLuminanceAlwaysOn:(BOOL)on
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSHBacklightTransitionStateMachine *)self lock_isHighLuminanceAlwaysOnWithSession:?];
  v6 = self->_displayStateMachine;
  isHighLuminanceAlwaysOn = [(BLSHBacklightDisplayStateMachine *)v6 isHighLuminanceAlwaysOn];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 != isHighLuminanceAlwaysOn)
  {
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3_2();
    v8 = v6;
    BSDispatchMain();
  }
}

- (BOOL)hostEnvironment:(id)environment didAmendSceneSettings:(id)settings
{
  v100 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  isForeground = [settingsCopy isForeground];
  presentation = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  withLock_isTransitioning = [(BLSHBacklightTransitionStateMachine *)self withLock_isTransitioning];
  os_unfair_lock_unlock(&self->_lock);
  v11 = [presentation containsEnvironment:environmentCopy];
  presentationDate = [environmentCopy presentationDate];
  bls_presentationDate = [settingsCopy bls_presentationDate];
  if (bls_presentationDate)
  {
    v13 = BSEqualObjects();
  }

  else
  {
    v13 = 1;
  }

  v14 = (isForeground | withLock_isTransitioning) & v11;
  v81 = (v14 ^ 1) & v13;
  if (v81)
  {
    v78 = bls_presentationDate;
    v15 = OUTLINED_FUNCTION_38_0();
    v20 = BLSVisualStateForBacklightStateAndSettings(v15, v16, v17, v18, v19);
    v21 = bls_backlight_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      identifier = [environmentCopy identifier];
      v22 = NSStringFromBLSBacklightState();
      bls_shortLoggingString = [v20 bls_shortLoggingString];
      v59 = v11 & 1;
      bls_shortLoggingString2 = [presentation bls_shortLoggingString];
      visualState = [environmentCopy visualState];
      bls_shortLoggingString3 = [visualState bls_shortLoggingString];
      presentationDate2 = [environmentCopy presentationDate];
      bls_shortLoggingString4 = [presentationDate2 bls_shortLoggingString];
      bls_visualState = [settingsCopy bls_visualState];
      [bls_visualState bls_shortLoggingString];
      v25 = v63 = environmentCopy;
      [settingsCopy bls_presentationDate];
      v26 = v69 = presentation;
      [v26 bls_shortLoggingString];
      v27 = log = v20;
      OUTLINED_FUNCTION_21_1();
      v84 = identifier;
      v85 = v28;
      v86 = v22;
      v87 = v28;
      v88 = bls_shortLoggingString;
      OUTLINED_FUNCTION_20_1();
      v89 = v59;
      v90 = v29;
      v91 = bls_shortLoggingString2;
      v92 = v29;
      v93 = bls_shortLoggingString3;
      v94 = v29;
      v95 = bls_shortLoggingString4;
      v96 = v29;
      v97 = v25;
      v98 = v29;
      v99 = v30;
      _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_INFO, "TSM:%p will amend scene %{public}@ for backlightState:%{public}@ with visualState:%{public}@ – willBeForeground:%{BOOL}u containsEnv:%{BOOL}u presentation:%{public}@ oldVisualState:%{public}@ oldPresentationDate:%{public}@ settingsVisualState:%{public}@ settingsPresentationDate:%{public}@", buf, 0x68u);

      presentation = v69;
      v20 = log;

      environmentCopy = v63;
    }

    [settingsCopy bls_setVisualState:v20];
    [settingsCopy bls_setPresentationDate:0];
    bls_presentationDate = v78;
  }

  else
  {
    v31 = bls_backlight_log();
    v32 = v31;
    if (v14)
    {
      v20 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        identifier2 = [environmentCopy identifier];
        v33 = NSStringFromBLSBacklightState();
        loga = [settingsCopy bls_visualState];
        [loga bls_shortLoggingString];
        v34 = v79 = bls_presentationDate;
        bls_shortLoggingString5 = [presentation bls_shortLoggingString];
        [environmentCopy visualState];
        v36 = v70 = presentation;
        bls_shortLoggingString6 = [v36 bls_shortLoggingString];
        OUTLINED_FUNCTION_21_1();
        v84 = identifier2;
        v85 = v38;
        v86 = v33;
        v87 = v38;
        v88 = v34;
        OUTLINED_FUNCTION_20_1();
        v89 = 1;
        v90 = v39;
        v91 = bls_shortLoggingString5;
        v92 = v39;
        v93 = v40;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "TSM:%p will not amend scene %{public}@ for backlightState:%{public}@ with settingsVisualState:%{public}@ willBeForeground:%{BOOL}u containsEnv:%{BOOL}u presentation:%{public}@ oldVisualState:%{public}@", buf, 0x4Au);

        presentation = v70;
        bls_presentationDate = v79;
      }
    }

    else
    {
      v20 = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        identifier3 = [environmentCopy identifier];
        v71 = NSStringFromBLSBacklightState();
        v41 = OUTLINED_FUNCTION_38_0();
        v68 = BLSVisualStateForBacklightStateAndSettings(v41, v42, v43, v44, v45);
        bls_shortLoggingString7 = [v68 bls_shortLoggingString];
        v60 = v11 & 1;
        bls_shortLoggingString8 = [presentation bls_shortLoggingString];
        visualState2 = [environmentCopy visualState];
        bls_shortLoggingString9 = [visualState2 bls_shortLoggingString];
        [environmentCopy presentationDate];
        v64 = v80 = bls_presentationDate;
        bls_shortLoggingString10 = [v64 bls_shortLoggingString];
        bls_visualState2 = [settingsCopy bls_visualState];
        [bls_visualState2 bls_shortLoggingString];
        v48 = logb = v32;
        bls_presentationDate2 = [settingsCopy bls_presentationDate];
        [bls_presentationDate2 bls_shortLoggingString];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_21_1();
        v84 = identifier3;
        v85 = v50;
        v86 = v71;
        v87 = v50;
        v88 = bls_shortLoggingString7;
        OUTLINED_FUNCTION_20_1();
        v89 = v60;
        v90 = v51;
        v91 = bls_shortLoggingString8;
        v92 = v51;
        v93 = bls_shortLoggingString9;
        v94 = v51;
        v95 = bls_shortLoggingString10;
        v96 = v51;
        v97 = v48;
        v98 = v51;
        v99 = v52;
        v53 = v52;
        _os_log_impl(&dword_21FD11000, logb, OS_LOG_TYPE_INFO, "TSM:%p would have (but will not) amend scene %{public}@ for backlightState:%{public}@ with visualState:%{public}@ – willBeForeground:%{BOOL}u containsEnv:%{BOOL}u presentation:%{public}@ oldVisualState:%{public}@ oldPresentationDate:%{public}@ settingsVisualState:%{public}@ settingsPresentationDate:%{public}@", buf, 0x68u);

        bls_presentationDate = v80;
        v20 = logb;
      }
    }
  }

  return v81 & 1;
}

- (void)initWithPlatformProvider:(uint64_t *)a1 osInterfaceProvider:(char *)a2 inactiveBudgetPolicy:.cold.1(uint64_t *a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"presentationEngine:%@ is not stopped on intitialization", *a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_4(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)lock_displayModeForBacklightState:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unexpectedly wants suppression when backlightState:BLSBacklightStateInactiveOn"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    LODWORD(v12) = 138544642;
    *(&v12 + 4) = a1;
    WORD6(v12) = 2114;
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ifStillValidPerformAlwaysOnBrightnessRamp:(char *)a1 withDuration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"rampOperation != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)inactiveEnvironmentSession:(uint64_t)a1 updateToPresentation:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"session:%@ exists but no environment state machine", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_4(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setGlobalCacheFlipbookOnDisplayWake:(void *)a3 .cold.1(uint64_t a1, os_unfair_lock_s *a2, void *a3)
{
  [(BLSHBacklightTransitionStateMachine *)a1 withLock_acquireTransitionAPAwakeAssertion];
  os_unfair_lock_unlock(a2);
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __75__BLSHBacklightTransitionStateMachine_setGlobalCacheFlipbookOnDisplayWake___block_invoke;
  a3[3] = &unk_27841E650;
  a3[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], a3);
}

@end