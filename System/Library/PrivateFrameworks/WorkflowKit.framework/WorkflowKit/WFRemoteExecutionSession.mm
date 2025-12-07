@interface WFRemoteExecutionSession
- (WFRemoteExecutionSession)initWithService:(id)service;
- (WFRemoteExecutionSessionDelegate)delegate;
- (id)invalidAceCommandError;
- (id)sessionTimedOutError;
- (void)cancelTimeout;
- (void)finish;
- (void)restartTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
- (void)setState:(unint64_t)state;
@end

@implementation WFRemoteExecutionSession

- (WFRemoteExecutionSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)invalidAceCommandError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Unable to run action");
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:2 userInfo:v4];

  return v5;
}

- (id)sessionTimedOutError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Remote execution timed out");
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:0 userInfo:v4];

  return v5;
}

- (void)cancelTimeout
{
  timeoutTimer = [(WFRemoteExecutionSession *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(WFRemoteExecutionSession *)self timeoutTimer];
    dispatch_source_cancel(timeoutTimer2);

    [(WFRemoteExecutionSession *)self setTimeoutTimer:0];
  }
}

- (void)restartTimeout
{
  v19 = *MEMORY[0x1E69E9840];
  [(WFRemoteExecutionSession *)self cancelTimeout];
  v3 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    [(WFRemoteExecutionSession *)self timeoutLimitInSeconds];
    *buf = 136315650;
    v14 = "[WFRemoteExecutionSession restartTimeout]";
    v15 = 2048;
    v16 = v4;
    v17 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Starting %f second timer for session %{public}@", buf, 0x20u);
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
  [(WFRemoteExecutionSession *)self setTimeoutTimer:v5];

  [(WFRemoteExecutionSession *)self timeoutLimitInSeconds];
  v7 = (v6 * 1000000000.0);
  timeoutTimer = [(WFRemoteExecutionSession *)self timeoutTimer];
  v9 = dispatch_time(0, v7);
  dispatch_source_set_timer(timeoutTimer, v9, v7, 0x3B9ACA00uLL);

  timeoutTimer2 = [(WFRemoteExecutionSession *)self timeoutTimer];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__WFRemoteExecutionSession_restartTimeout__block_invoke;
  handler[3] = &unk_1E837FA70;
  handler[4] = self;
  dispatch_source_set_event_handler(timeoutTimer2, handler);

  timeoutTimer3 = [(WFRemoteExecutionSession *)self timeoutTimer];
  dispatch_activate(timeoutTimer3);
}

uint64_t __42__WFRemoteExecutionSession_restartTimeout__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cancelTimeout];
  v2 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    [v3 timeoutLimitInSeconds];
    v6 = 136315650;
    v7 = "[WFRemoteExecutionSession restartTimeout]_block_invoke";
    v8 = 2114;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s %{public}@ hit timeout (%f)", &v6, 0x20u);
  }

  return [*(a1 + 32) handleTimeout];
}

- (void)setState:(unint64_t)state
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    state = self->_state;
    v7 = 136315650;
    v8 = "[WFRemoteExecutionSession setState:]";
    v9 = 2048;
    stateCopy = state;
    v11 = 2048;
    stateCopy2 = state;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Transitioning from state %lu to %lu", &v7, 0x20u);
  }

  self->_state = state;
}

- (void)finish
{
  [(WFRemoteExecutionSession *)self cancelTimeout];
  delegate = [(WFRemoteExecutionSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRemoteExecutionSession *)self delegate];
    [delegate2 sessionDidFinish:self];
  }
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  if (!destinations)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionSession.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
  }
}

- (WFRemoteExecutionSession)initWithService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionSession.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  v12.receiver = self;
  v12.super_class = WFRemoteExecutionSession;
  v7 = [(WFRemoteExecutionSession *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = 0;
    objc_storeStrong(&v7->_service, service);
    v9 = v8;
  }

  return v8;
}

@end