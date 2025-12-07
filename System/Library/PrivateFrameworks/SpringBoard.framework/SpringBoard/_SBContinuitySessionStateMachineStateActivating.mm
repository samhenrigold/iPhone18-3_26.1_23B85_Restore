@interface _SBContinuitySessionStateMachineStateActivating
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateActivating)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateActivating

- (_SBContinuitySessionStateMachineStateActivating)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator
{
  monitorCopy = monitor;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStateActivating;
  v9 = [(_SBContinuitySessionStateMachineStateActivating *)&v12 init];
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
  [(_SBContinuitySessionStateMachineStateActivating *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateActivating *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStateActivating *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(from);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStateActivating *)self _reevaluateStateForReason:v6];
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
  v7[2] = __77___SBContinuitySessionStateMachineStateActivating_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateActivating.m" lineNumber:124 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateActivating.m" lineNumber:194 description:@"Must have invalid reason"];
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
      if (!self->_isCurrentState)
      {
        return;
      }

      v6 = SBLogContinuitySession(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Activating] --> moving to .invalid keybag has been unexpectedly unlocked", v10, 2u);
      }

      v7 = SBContinuityBlockKeybagUnlocked;
      goto LABEL_12;
    }

    if (!lockState && self->_isCurrentState)
    {
      v6 = SBLogContinuitySession(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Activating] --> moving to .invalid keybag has been unexpectedly  locked", buf, 2u);
      }

      v7 = SBContinuityBlockKeybagLocked;
LABEL_12:

      invalidStateHandler = self->_invalidStateHandler;
      v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
      invalidStateHandler[2](invalidStateHandler, v9);
    }
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
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Activating] Re-evaluating state for reason: %{public}@", &v14, 0xCu);
    }

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = v7;
    if (!self->_uiReady)
    {
      [v7 addObject:@"checkpoint.waiting-for-ui-ready"];
    }

    if (SBSIsSystemApertureAvailable())
    {
      if (!self->_systemApertureReady)
      {
        [v8 addObject:@"checkpoint.waiting-for-system-aperture-ui-ready"];
      }

      if (!self->_systemApertureCurtainReady)
      {
        [v8 addObject:@"checkpoint.waiting-for-system-aperture-curtain-ui-ready"];
      }
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
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[State.Activating] still blocked by %{public}@", &v14, 0xCu);
      }

      v13 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[State.Activating] --> moving to .updatingActiveDisplay", &v14, 2u);
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

@end