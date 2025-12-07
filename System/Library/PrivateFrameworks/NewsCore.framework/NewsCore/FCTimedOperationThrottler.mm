@interface FCTimedOperationThrottler
- (BOOL)suspended;
- (FCOperationThrottlerDelegate)delegate;
- (FCTimedOperationThrottler)init;
- (FCTimedOperationThrottler)initWithDelegate:(id)delegate;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)setSuspended:(BOOL)suspended;
- (void)tickle;
- (void)tickleWithCompletion:(id)completion;
@end

@implementation FCTimedOperationThrottler

- (void)tickle
{
  operationThrottler = [(FCTimedOperationThrottler *)self operationThrottler];
  [operationThrottler tickle];
}

- (FCTimedOperationThrottler)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTimedOperationThrottler init]";
    v10 = 2080;
    v11 = "FCOperationThrottler.m";
    v12 = 1024;
    v13 = 189;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTimedOperationThrottler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTimedOperationThrottler)initWithDelegate:(id)delegate
{
  v20 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (!delegateCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate"];
    *buf = 136315906;
    v13 = "[FCTimedOperationThrottler initWithDelegate:]";
    v14 = 2080;
    v15 = "FCOperationThrottler.m";
    v16 = 1024;
    v17 = 194;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCTimedOperationThrottler;
  v5 = [(FCTimedOperationThrottler *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [[FCOperationThrottler alloc] initWithDelegate:v6];
    operationThrottler = v6->_operationThrottler;
    v6->_operationThrottler = v7;
  }

  return v6;
}

- (void)tickleWithCompletion:(id)completion
{
  completionCopy = completion;
  operationThrottler = [(FCTimedOperationThrottler *)self operationThrottler];
  [operationThrottler tickleWithCompletion:completionCopy];
}

- (BOOL)suspended
{
  operationThrottler = [(FCTimedOperationThrottler *)self operationThrottler];
  suspended = [operationThrottler suspended];

  return suspended;
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  operationThrottler = [(FCTimedOperationThrottler *)self operationThrottler];
  [operationThrottler setSuspended:suspendedCopy];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __84__FCTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v12 = &unk_1E7C37BC0;
  selfCopy = self;
  v6 = completionCopy;
  v14 = v6;
  v7 = _Block_copy(&v9);
  v8 = [(FCTimedOperationThrottler *)self delegate:v9];
  if (objc_opt_respondsToSelector())
  {
    [v8 operationThrottlerPerformOperation:self];
LABEL_5:
    v7[2](v7);
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  [v8 operationThrottler:self performAsyncOperationWithCompletion:v7];
LABEL_6:
}

void __84__FCTimedOperationThrottler_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cooldownTime];
  v3 = dispatch_time(0, (v2 * 1000000000.0));
  v4 = dispatch_get_global_queue(9, 0);
  dispatch_after(v3, v4, *(a1 + 40));
}

- (FCOperationThrottlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end