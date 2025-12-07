@interface SWProcessTerminationManager
- (SWProcessTerminationManager)initWithTerminationThrottler:(id)throttler errorReporter:(id)reporter;
- (void)onRetry:(id)retry;
- (void)webContentProcessTerminated;
@end

@implementation SWProcessTerminationManager

- (SWProcessTerminationManager)initWithTerminationThrottler:(id)throttler errorReporter:(id)reporter
{
  throttlerCopy = throttler;
  reporterCopy = reporter;
  v9 = reporterCopy;
  selfCopy = 0;
  if (throttlerCopy && reporterCopy)
  {
    v16.receiver = self;
    v16.super_class = SWProcessTerminationManager;
    v11 = [(SWProcessTerminationManager *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_throttler, throttler);
      objc_storeStrong(&v12->_errorReporter, reporter);
      array = [MEMORY[0x1E695DF70] array];
      onRetryBlocks = v12->_onRetryBlocks;
      v12->_onRetryBlocks = array;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)webContentProcessTerminated
{
  v17 = *MEMORY[0x1E69E9840];
  throttler = [(SWProcessTerminationManager *)self throttler];
  retryPolicy = [throttler retryPolicy];

  if (retryPolicy)
  {
    if (retryPolicy == 1)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:2 userInfo:0];
      errorReporter = [(SWProcessTerminationManager *)self errorReporter];
      [errorReporter reportError:v11];
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    onRetryBlocks = [(SWProcessTerminationManager *)self onRetryBlocks];
    v7 = [onRetryBlocks countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(onRetryBlocks);
          }

          (*(*(*(&v12 + 1) + 8 * i) + 16))();
        }

        v8 = [onRetryBlocks countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)onRetry:(id)retry
{
  if (retry)
  {
    retryCopy = retry;
    onRetryBlocks = [(SWProcessTerminationManager *)self onRetryBlocks];
    v5 = MEMORY[0x1DA6FDA60](retryCopy);

    [onRetryBlocks addObject:v5];
  }
}

@end