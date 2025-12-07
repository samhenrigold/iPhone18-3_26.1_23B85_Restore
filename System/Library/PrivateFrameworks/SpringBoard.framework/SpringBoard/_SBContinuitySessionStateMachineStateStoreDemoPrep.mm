@interface _SBContinuitySessionStateMachineStateStoreDemoPrep
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateStoreDemoPrep)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)continuitySessionSystemEventMonitor:(id)monitor eventOccurred:(id)occurred;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateStoreDemoPrep

- (_SBContinuitySessionStateMachineStateStoreDemoPrep)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator
{
  monitorCopy = monitor;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = _SBContinuitySessionStateMachineStateStoreDemoPrep;
  v9 = [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_blockOnUIUnlock = 1;
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
  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSBContinuitySessionState(from);
  v6 = [v5 stringWithFormat:@"entered state from: %@", v7];
  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _reevaluateStateForReason:v6];
}

- (void)continuitySessionSystemEventMonitor:(id)monitor eventOccurred:(id)occurred
{
  occurredCopy = occurred;
  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _evaluateSystemEvents];
  occurredCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"system monitor event occurred: %@", occurredCopy];

  [(_SBContinuitySessionStateMachineStateStoreDemoPrep *)self _reevaluateStateForReason:occurredCopy];
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
  v7[2] = __80___SBContinuitySessionStateMachineStateStoreDemoPrep_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateSystemEvents
{
  if (self->_isCurrentState)
  {
    self->_uiLocked = [(SBContinuitySessionSystemEventMonitor *)self->_systemEventMonitor isUILocked];
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
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.StoreDemoPrep] Re-evaluating state for reason: %{public}@", &v14, 0xCu);
    }

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = v7;
    if (!self->_uiLocked && self->_blockOnUIUnlock)
    {
      [v7 addObject:@"block.embedded-display.uiUnlocked"];
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
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[State.StoreDemoPrep] still blocked by %{public}@", &v14, 0xCu);
      }

      v13 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[State.StoreDemoPrep] --> moving to .blocked", &v14, 2u);
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