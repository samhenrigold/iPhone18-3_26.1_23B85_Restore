@interface WFOutOfProcessWorkflowControllerStateMachine
- (BOOL)isFinishingShortcut;
- (BOOL)isRunningShortcut;
- (WFOutOfProcessWorkflowControllerStateMachine)init;
- (WFOutOfProcessWorkflowControllerStateMachineDelegate)delegate;
- (void)acquiringRunnerWithReason:(id)reason;
- (void)exitWithReason:(id)reason;
- (void)finishRunningWithReason:(id)reason result:(id)result;
- (void)handleRunnerWillExit;
- (void)handleXPCErrorWithDescription:(id)description reason:(id)reason currentDialogAttribution:(id)attribution;
- (void)handlingRequestWithReason:(id)reason;
- (void)idleStateWithReason:(id)reason;
- (void)notifyDelegateWithReason:(id)reason result:(id)result currentDialogAttribution:(id)attribution;
- (void)pauseAndWriteShortcutToDiskState;
- (void)startRunningShortcutWithReason:(id)reason;
- (void)stopShortcutWithError:(id)error reason:(id)reason;
- (void)tearDownRunnerWithReason:(id)reason;
@end

@implementation WFOutOfProcessWorkflowControllerStateMachine

- (WFOutOfProcessWorkflowControllerStateMachine)init
{
  v8.receiver = self;
  v8.super_class = WFOutOfProcessWorkflowControllerStateMachine;
  v2 = [(WFStateMachine *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.shortcuts.WFOutOfProcessWorkflowControllerStateMachine.delegate-queue", v3);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (WFOutOfProcessWorkflowControllerStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleRunnerWillExit
{
  v9 = *MEMORY[0x1E69E9840];
  isKindOfClass = [(WFStateMachine *)self currentState];
  v4 = isKindOfClass;
  if (isKindOfClass && (v6 = isKindOfClass, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4 = v6, (isKindOfClass & 1) != 0))
  {
    if ([v6 stage] > 4)
    {
      v5 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v8 = "[WFOutOfProcessWorkflowControllerStateMachine handleRunnerWillExit]";
        _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEFAULT, "%s Runner will exit, but we're already in the proper cleanup. Ignore.", buf, 0xCu);
      }
    }

    else
    {
      [(WFOutOfProcessWorkflowControllerStateMachine *)self stopShortcutWithError:0 reason:@"runner notified us of exit, moving to stop and cleanup"];
    }
  }

  else
  {

    MEMORY[0x1EEE66BB8](isKindOfClass, v4);
  }
}

- (void)handleXPCErrorWithDescription:(id)description reason:(id)reason currentDialogAttribution:(id)attribution
{
  v18[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  reasonCopy = reason;
  attributionCopy = attribution;
  currentState = [(WFStateMachine *)self currentState];
  if (currentState && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([currentState stage] <= 6)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = WFOutOfProcessWorkflowControllerErrorDomain;
      v17 = *MEMORY[0x1E696A578];
      v18[0] = descriptionCopy;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v15 = [v12 errorWithDomain:v13 code:4 userInfo:v14];

      v16 = [[WFWorkflowRunResult alloc] initWithError:v15];
      [(WFOutOfProcessWorkflowControllerStateMachine *)self notifyDelegateWithReason:reasonCopy result:v16 currentDialogAttribution:attributionCopy];
    }
  }

  else
  {

    currentState = 0;
  }
}

- (void)exitWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (void)tearDownRunnerWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:8];
  v6 = [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];

  if (v6)
  {
    delegate = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

    if (delegate)
    {
      delegateQueue = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__WFOutOfProcessWorkflowControllerStateMachine_tearDownRunnerWithReason___block_invoke;
      block[3] = &unk_1E7B02158;
      block[4] = self;
      dispatch_async(delegateQueue, block);
    }
  }
}

void __73__WFOutOfProcessWorkflowControllerStateMachine_tearDownRunnerWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachineDidRequestRunnerTearDown:*(a1 + 32)];
}

- (void)notifyDelegateWithReason:(id)reason result:(id)result currentDialogAttribution:(id)attribution
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  resultCopy = result;
  attributionCopy = attribution;
  currentState = [(WFStateMachine *)self currentState];
  if (currentState)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([currentState stage] < 7)
      {
        v13 = objc_opt_new();
        [v13 setStage:7];
        if ([(WFStateMachine *)self transitionToState:v13 withReason:reasonCopy])
        {
          delegate = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

          if (delegate)
          {
            delegateQueue = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __105__WFOutOfProcessWorkflowControllerStateMachine_notifyDelegateWithReason_result_currentDialogAttribution___block_invoke;
            block[3] = &unk_1E7B01C60;
            block[4] = self;
            v17 = resultCopy;
            v18 = attributionCopy;
            dispatch_async(delegateQueue, block);
          }
        }
      }

      else
      {
        v12 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v20 = "[WFOutOfProcessWorkflowControllerStateMachine notifyDelegateWithReason:result:currentDialogAttribution:]";
          v21 = 2112;
          v22 = reasonCopy;
          _os_log_impl(&dword_1B1DE3000, v12, OS_LOG_TYPE_DEFAULT, "%s Asked to notify delegate because %@ but we're already >= notifying delegate. Ignoring the request.", buf, 0x16u);
        }
      }
    }
  }
}

void __105__WFOutOfProcessWorkflowControllerStateMachine_notifyDelegateWithReason_result_currentDialogAttribution___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachine:*(a1 + 32) shouldNotifyDelegateWithResult:*(a1 + 40) currentDialogAttribution:*(a1 + 48)];

  v3 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[WFOutOfProcessWorkflowControllerStateMachine notifyDelegateWithReason:result:currentDialogAttribution:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1B1DE3000, v3, OS_LOG_TYPE_DEFAULT, "%s Notifying delegate with result: %@", &v5, 0x16u);
  }
}

- (void)finishRunningWithReason:(id)reason result:(id)result
{
  resultCopy = result;
  reasonCopy = reason;
  v8 = objc_opt_new();
  [v8 setStage:6];
  v9 = [(WFStateMachine *)self transitionToState:v8 withReason:reasonCopy];

  if (v9)
  {
    delegate = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

    if (delegate)
    {
      delegateQueue = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __79__WFOutOfProcessWorkflowControllerStateMachine_finishRunningWithReason_result___block_invoke;
      v12[3] = &unk_1E7B02180;
      v12[4] = self;
      v13 = resultCopy;
      dispatch_async(delegateQueue, v12);
    }
  }
}

void __79__WFOutOfProcessWorkflowControllerStateMachine_finishRunningWithReason_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachine:*(a1 + 32) didFinishRunningShortcutWithResult:*(a1 + 40)];
}

- (void)stopShortcutWithError:(id)error reason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  reasonCopy = reason;
  currentState = [(WFStateMachine *)self currentState];
  if (currentState)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_opt_new();
      [v9 setStage:5];
      if ([currentState stage] > 1)
      {
        if ([currentState stage] != 2)
        {
          if ([currentState stage] == 3)
          {
            if ([(WFStateMachine *)self transitionToState:v9 withReason:reasonCopy])
            {
              delegate = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegate];

              if (delegate)
              {
                delegateQueue = [(WFOutOfProcessWorkflowControllerStateMachine *)self delegateQueue];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __77__WFOutOfProcessWorkflowControllerStateMachine_stopShortcutWithError_reason___block_invoke;
                block[3] = &unk_1E7B02180;
                block[4] = self;
                v15 = errorCopy;
                dispatch_async(delegateQueue, block);
              }
            }
          }

          else if ([currentState stage] >= 4)
          {
            v13 = getWFVoiceShortcutClientLogObject();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v17 = "[WFOutOfProcessWorkflowControllerStateMachine stopShortcutWithError:reason:]";
              v18 = 2048;
              stage = [currentState stage];
              _os_log_impl(&dword_1B1DE3000, v13, OS_LOG_TYPE_DEFAULT, "%s stop was requested, but we're ignoring it because the current stage (%lu) will already result in a stop.", buf, 0x16u);
            }
          }

          goto LABEL_8;
        }

        [(WFStateMachine *)self transitionToState:v9 withReason:reasonCopy];
        reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"stop was requested because %@, tearing down runner", reasonCopy];
        [(WFOutOfProcessWorkflowControllerStateMachine *)self tearDownRunnerWithReason:reasonCopy];
      }

      else
      {
        [(WFStateMachine *)self transitionToState:v9 withReason:reasonCopy];
        reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"stop was requested because %@, but we haven't yet acquired a runner, so just exiting", reasonCopy];
        [(WFOutOfProcessWorkflowControllerStateMachine *)self exitWithReason:reasonCopy];
      }

LABEL_8:
    }
  }
}

void __77__WFOutOfProcessWorkflowControllerStateMachine_stopShortcutWithError_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 controllerStateMachine:*(a1 + 32) didRequestStoppingShortcutWithError:*(a1 + 40)];
}

- (void)pauseAndWriteShortcutToDiskState
{
  v3 = objc_opt_new();
  [v3 setStage:4];
  [(WFStateMachine *)self transitionToState:v3 withReason:@"pause and write shortcut to disk requested"];
}

- (void)startRunningShortcutWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:3];
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (void)acquiringRunnerWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:2];
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (void)handlingRequestWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:1];
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (void)idleStateWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [v5 setStage:0];
  [(WFStateMachine *)self transitionToState:v5 withReason:reasonCopy];
}

- (BOOL)isFinishingShortcut
{
  currentState = [(WFStateMachine *)self currentState];
  v3 = currentState && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [currentState stage] == 6;

  return v3;
}

- (BOOL)isRunningShortcut
{
  currentState = [(WFStateMachine *)self currentState];
  v3 = currentState && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [currentState stage] == 3;

  return v3;
}

@end