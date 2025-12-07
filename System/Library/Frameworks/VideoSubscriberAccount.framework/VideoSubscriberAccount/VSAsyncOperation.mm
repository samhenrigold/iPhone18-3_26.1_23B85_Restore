@interface VSAsyncOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)finishExecutionIfPossible;
- (void)start;
@end

@implementation VSAsyncOperation

- (void)finishExecutionIfPossible
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    selfCopy = "[VSAsyncOperation finishExecutionIfPossible]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v7, 0xCu);
  }

  v5 = VSDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Finishing execution of operation %p.", &v7, 0xCu);
  }

  [(VSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  [(VSAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  v6 = 1;
  atomic_compare_exchange_strong(&self->_state, &v6, 2u);
  [(VSAsyncOperation *)self didChangeValueForKey:@"isFinished"];
  [(VSAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (BOOL)isExecuting
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_state, &v2, v2);
  return v2 == 1;
}

- (BOOL)isFinished
{
  v2 = 2;
  atomic_compare_exchange_strong(&self->_state, &v2, v2);
  return v2 == 2;
}

- (void)start
{
  v12 = *MEMORY[0x277D85DE8];
  if (([(VSAsyncOperation *)self isReady]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Operation cannot start before it's ready."];
  }

  [(VSAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  v3 = 0;
  atomic_compare_exchange_strong(&self->_state, &v3, 1u);
  v4 = v3 == 0;
  [(VSAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
  if (v4)
  {
    isCancelled = [(VSAsyncOperation *)self isCancelled];
    if (isCancelled)
    {

      [(VSAsyncOperation *)self finishExecutionIfPossible];
    }

    else
    {
      v8 = VSDefaultLogObject(isCancelled);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Will begin execution of %@", &v10, 0xCu);
      }

      v9 = VSDefaultLogObject([(VSAsyncOperation *)self executionDidBegin]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Did begin execution of %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE660];

    [v6 raise:v7 format:@"The -start method may only be called once."];
  }
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will cancel operation %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = VSAsyncOperation;
  cancel = [(VSAsyncOperation *)&v6 cancel];
  v5 = VSDefaultLogObject(cancel);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Did cancel operation %@", buf, 0xCu);
  }
}

@end