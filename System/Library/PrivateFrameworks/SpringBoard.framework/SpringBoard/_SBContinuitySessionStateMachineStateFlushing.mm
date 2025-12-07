@interface _SBContinuitySessionStateMachineStateFlushing
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateFlushing)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(id)state;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateFlushing

- (_SBContinuitySessionStateMachineStateFlushing)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator
{
  monitorCopy = monitor;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStateFlushing;
  v9 = [(_SBContinuitySessionStateMachineStateFlushing *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemEventMonitor, monitor);
    [monitorCopy addObserver:v10];
    objc_storeStrong(&v10->_authenticationCoordinator, coordinator);
    [(SBContinuityDisplayAuthenticationCoordinator *)v10->_authenticationCoordinator addObserver:v10];
  }

  return v10;
}

- (void)enteredStateFrom:(unint64_t)from
{
  self->_isCurrentState = 1;
  [(_SBContinuitySessionStateMachineStateFlushing *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateFlushing *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStateFlushing *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(from);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStateFlushing *)self _reevaluateStateForReason:v6];
}

- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(id)state
{
  stateCopy = state;
  v5 = SBLogContinuitySession(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_SBContinuitySessionStateMachineStateFlushing *)stateCopy continuityDisplayAuthenticationCoordinatorDidUpdateLockState:v5];
  }

  [(_SBContinuitySessionStateMachineStateFlushing *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStateFlushing *)self _reevaluateStateForReason:@"lock state change"];
}

- (void)invalidate
{
  stateTransitionHandler = self->_stateTransitionHandler;
  self->_stateTransitionHandler = 0;

  stateUpdateHandler = self->_stateUpdateHandler;
  self->_stateUpdateHandler = 0;

  invalidStateHandler = self->_invalidStateHandler;
  self->_invalidStateHandler = 0;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  collectionLineBreakNoneStyle = [MEMORY[0x277CF0C10] collectionLineBreakNoneStyle];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75___SBContinuitySessionStateMachineStateFlushing_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateFlushing.m" lineNumber:114 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    v18 = v2;
    v19 = v3;
    isUIBlocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUIBlocked];
    if (isUIBlocked)
    {
      v6 = SBLogContinuitySession(isUIBlocked);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because UI blocked ", v17, 2u);
      }

      v7 = SBContinuityBlockUIBlocked;
LABEL_14:

      invalidStateHandler = self->_invalidStateHandler;
      v11 = [MEMORY[0x277CBEB98] setWithObject:*v7];
      invalidStateHandler[2](invalidStateHandler, v11);

      return;
    }

    isUILocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked];
    if ((isUILocked & 1) == 0)
    {
      v6 = SBLogContinuitySession(isUILocked);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because UI unlocked", v17, 2u);
      }

      v7 = SBContinuityBlockUIUnlocked;
      goto LABEL_14;
    }

    isInCall = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isInCall];
    if (isInCall)
    {
      v6 = SBLogContinuitySession(isInCall);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because in call", v17, 2u);
      }

      v7 = SBContinuityBlockInCall;
      goto LABEL_14;
    }

    isSOSActive = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isSOSActive];
    if (isSOSActive)
    {
      v6 = SBLogContinuitySession(isSOSActive);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because SOS active", v17, 2u);
      }

      v7 = SBContinuityBlockSOSActive;
      goto LABEL_14;
    }

    isLockScreenSearchPresented = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isLockScreenSearchPresented];
    if (isLockScreenSearchPresented)
    {
      v6 = SBLogContinuitySession(isLockScreenSearchPresented);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because lock screen search presented", v17, 2u);
      }

      v7 = SBContinuityBlockLockScreenSearchPresented;
      goto LABEL_14;
    }

    isUsingSecureApp = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUsingSecureApp];
    if (isUsingSecureApp)
    {
      v6 = SBLogContinuitySession(isUsingSecureApp);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because using secure app", v17, 2u);
      }

      v7 = SBContinuityBlockSecureAppUsage;
      goto LABEL_14;
    }

    isAirplayMirroring = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isAirplayMirroring];
    if (isAirplayMirroring)
    {
      v6 = SBLogContinuitySession(isAirplayMirroring);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because airplay mirroring", v17, 2u);
      }

      v7 = SBContinuityBlockAirplayMirroring;
      goto LABEL_14;
    }

    isUserInitiatedRemoteTransientOverlayPresented = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUserInitiatedRemoteTransientOverlayPresented];
    if (isUserInitiatedRemoteTransientOverlayPresented)
    {
      v6 = SBLogContinuitySession(isUserInitiatedRemoteTransientOverlayPresented);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid because user-initiated remote transient overlay is presented", v17, 2u);
      }

      v7 = SBContinuityBlockUserInitiatedRemoteTransientOverlayPresented;
      goto LABEL_14;
    }
  }
}

- (void)_evaluateLockState
{
  if (self->_isCurrentState)
  {
    v12 = v2;
    v13 = v3;
    lockState = [(SBContinuityDisplayAuthenticationCoordinator *)self->_authenticationCoordinator lockState];
    if (lockState == 2)
    {
      v6 = SBLogContinuitySession(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid keybag has been unexpectedly unlocked", v10, 2u);
      }

      v7 = SBContinuityBlockKeybagUnlocked;
    }

    else
    {
      if (lockState)
      {
        return;
      }

      v6 = SBLogContinuitySession(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .invalid keybag has been unexpectedly locked", buf, 2u);
      }

      v7 = SBContinuityBlockKeybagLocked;
    }

    invalidStateHandler = self->_invalidStateHandler;
    v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
    invalidStateHandler[2](invalidStateHandler, v9);
  }
}

- (void)_reevaluateStateForReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = reasonCopy;
  if (self->_isCurrentState)
  {
    v6 = SBLogContinuitySession(reasonCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Flushing] Re-evaluating state for reason: %{public}@", &v14, 0xCu);
    }

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = v7;
    if (!self->_uiFlushed)
    {
      [v7 addObject:@"checkpoint.waiting-for-ui-flush"];
    }

    v9 = [v8 count];
    v10 = SBLogContinuitySession(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        bs_array = [v8 bs_array];
        v14 = 138543362;
        v15 = bs_array;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[State.Flushing] still blocked by %{public}@", &v14, 0xCu);
      }

      v13 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[State.Flushing] --> moving to .active", &v14, 2u);
      }

      v13 = *(self->_stateTransitionHandler + 2);
    }

    v13();
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

- (void)continuityDisplayAuthenticationCoordinatorDidUpdateLockState:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 lockState];
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[State.WaitingForHIDServices] lock state changed %ld", &v3, 0xCu);
}

@end