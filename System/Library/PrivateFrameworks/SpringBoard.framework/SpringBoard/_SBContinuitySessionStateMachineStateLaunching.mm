@interface _SBContinuitySessionStateMachineStateLaunching
- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider;
- (_SBContinuitySessionStateMachineStateLaunching)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator;
- (void)_evaluateClientExternallyBlockedReasons;
- (void)_evaluateLockState;
- (void)_evaluateSystemEvents;
- (void)_reevaluateStateForReason:(id)reason;
- (void)appendDescriptionToStream:(id)stream;
- (void)didHandleLaunchEvent:(id)event;
- (void)didReceiveLaunchEvent:(id)event;
- (void)enteredStateFrom:(unint64_t)from;
- (void)invalidate;
@end

@implementation _SBContinuitySessionStateMachineStateLaunching

- (_SBContinuitySessionStateMachineStateLaunching)initWithSystemEventMonitor:(id)monitor continuityDisplayAuthenticationCoordinator:(id)coordinator
{
  monitorCopy = monitor;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = _SBContinuitySessionStateMachineStateLaunching;
  v9 = [(_SBContinuitySessionStateMachineStateLaunching *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemEventMonitor, monitor);
    [monitorCopy addObserver:v10];
    array = [MEMORY[0x277CBEB18] array];
    handlingLaunchEvents = v10->_handlingLaunchEvents;
    v10->_handlingLaunchEvents = array;

    objc_storeStrong(&v10->_authenticationCoordinator, coordinator);
    [(SBContinuityDisplayAuthenticationCoordinator *)v10->_authenticationCoordinator addObserver:v10];
  }

  return v10;
}

- (void)didReceiveLaunchEvent:(id)event
{
  handlingLaunchEvents = self->_handlingLaunchEvents;
  eventCopy = event;
  [(NSMutableArray *)handlingLaunchEvents addObject:eventCopy];
  eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"did receive launch event %@", eventCopy];

  [(_SBContinuitySessionStateMachineStateLaunching *)self _reevaluateStateForReason:eventCopy];
}

- (void)didHandleLaunchEvent:(id)event
{
  handlingLaunchEvents = self->_handlingLaunchEvents;
  eventCopy = event;
  [(NSMutableArray *)handlingLaunchEvents removeObject:eventCopy];
  eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"did handle launch event %@", eventCopy];

  [(_SBContinuitySessionStateMachineStateLaunching *)self _reevaluateStateForReason:eventCopy];
}

- (void)enteredStateFrom:(unint64_t)from
{
  self->_isCurrentState = 1;
  self->_radar124642623 = [(NSMutableArray *)self->_handlingLaunchEvents count]== 0;
  [(_SBContinuitySessionStateMachineStateLaunching *)self _evaluateClientExternallyBlockedReasons];
  [(_SBContinuitySessionStateMachineStateLaunching *)self _evaluateLockState];
  [(_SBContinuitySessionStateMachineStateLaunching *)self _evaluateSystemEvents];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSBContinuitySessionState(from);
  v7 = [v5 stringWithFormat:@"entered state from: %@", v6];
  [(_SBContinuitySessionStateMachineStateLaunching *)self _reevaluateStateForReason:v7];

  if (self->_radar124642623)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___SBContinuitySessionStateMachineStateLaunching_enteredStateFrom___block_invoke;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v9, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
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
  v7[2] = __76___SBContinuitySessionStateMachineStateLaunching_appendDescriptionToStream___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = streamCopy;
  selfCopy = self;
  v6 = streamCopy;
  [v6 overlayStyle:collectionLineBreakNoneStyle block:v7];
}

- (void)_evaluateClientExternallyBlockedReasons
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateLaunching.m" lineNumber:132 description:@"Must have _SBContinuitySessionStateMachineExternallyBlockedReasonsProvider"];
}

- (void)_evaluateSystemEvents
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_SBContinuitySessionStateMachineStateLaunching.m" lineNumber:202 description:@"Must have invalid reason"];
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
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Launching] --> moving to .invalid keybag has been unexpectedly unlocked", v10, 2u);
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
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Launching] --> moving to .invalid keybag has been unexpectedly  locked", buf, 2u);
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
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = reasonCopy;
  if (self->_isCurrentState)
  {
    v6 = SBLogContinuitySession(reasonCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[State.Launching] Re-evaluating state for reason: %{public}@", &v18, 0xCu);
    }

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = v7;
    if (self->_radar124642623)
    {
      v9 = SBLogContinuitySession(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[State.Launching] waiting on rdar://124642623", &v18, 2u);
      }

      [v8 addObject:@"rdar://124642623"];
    }

    v10 = [(NSMutableArray *)self->_handlingLaunchEvents count];
    if (v10)
    {
      v11 = SBLogContinuitySession(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        handlingLaunchEvents = self->_handlingLaunchEvents;
        v18 = 138543362;
        v19 = handlingLaunchEvents;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[State.Launching] still waiting on launch events: %{public}@", &v18, 0xCu);
      }

      [v8 addObject:@"checkpoint.handling-launch-event"];
    }

    v13 = [v8 count];
    v14 = SBLogContinuitySession(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        bs_array = [v8 bs_array];
        v18 = 138543362;
        v19 = bs_array;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[State.Launching] still blocked by %{public}@", &v18, 0xCu);
      }

      v17 = *(self->_stateUpdateHandler + 2);
    }

    else
    {
      if (v15)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[State.Launching] --> moving to .active", &v18, 2u);
      }

      v17 = *(self->_stateTransitionHandler + 2);
    }

    v17();
  }
}

- (_SBContinuitySessionStateMachineClientExternallyBlockedReasonsProvider)clientExternallyBlockedReasonsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_clientExternallyBlockedReasonsProvider);

  return WeakRetained;
}

@end