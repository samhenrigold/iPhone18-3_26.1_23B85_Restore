@interface LKAttentionAwareIdleTimer
+ (id)sharedInstance;
- (LKAttentionAwareIdleTimer)init;
- (LKAttentionAwareIdleTimerDelegate)delegate;
- (void)startMonitoringAttentionAwareIdleWithDelegate:(id)delegate timeout:(double)timeout;
- (void)stopMonitoringAttentionAwareIdleWithDelegate:(id)delegate timeout:(double)timeout;
@end

@implementation LKAttentionAwareIdleTimer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LKAttentionAwareIdleTimer sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__LKAttentionAwareIdleTimer_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (LKAttentionAwareIdleTimer)init
{
  v10.receiver = self;
  v10.super_class = LKAttentionAwareIdleTimer;
  v2 = [(LKAttentionAwareIdleTimer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create([@"LKAttentionAwareIdleTimerQueue" UTF8String], 0);
    attentionAwarenessClientQueue = v2->_attentionAwarenessClientQueue;
    v2->_attentionAwarenessClientQueue = v3;

    v5 = objc_opt_new();
    timeoutDelegateMap = v2->_timeoutDelegateMap;
    v2->_timeoutDelegateMap = v5;

    v7 = dispatch_queue_create("com.apple.LoginUI.LUIAttentionAwareIdleTimer", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)startMonitoringAttentionAwareIdleWithDelegate:(id)delegate timeout:(double)timeout
{
  delegateCopy = delegate;
  queue = [(LKAttentionAwareIdleTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__LKAttentionAwareIdleTimer_startMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke;
  block[3] = &unk_2798262B8;
  timeoutCopy = timeout;
  v10 = delegateCopy;
  selfCopy = self;
  v8 = delegateCopy;
  dispatch_async(queue, block);
}

void __83__LKAttentionAwareIdleTimer_startMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [LKAttentionAwareIdleTimerClient alloc];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) attentionAwarenessClientQueue];
  v6 = [(LKAttentionAwareIdleTimerClient *)v2 initWithClientDelegate:v4 timeout:v5 queue:v3];

  v7 = [*(a1 + 40) timeoutDelegateMap];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [*(a1 + 40) timeoutDelegateMap];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [*(a1 + 40) timeoutDelegateMap];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v15 = [v13 objectForKeyedSubscript:v14];

  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = [v20 clientDelegate];
        v22 = *(a1 + 32);

        if (v21 == v22)
        {
          [v20 resume];
          goto LABEL_13;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  [(LKAttentionAwareIdleTimerClient *)v6 resume];
  v15 = [*(a1 + 40) timeoutDelegateMap];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v24 = [v15 objectForKeyedSubscript:v23];
  [v24 addObject:v6];

LABEL_13:
}

- (void)stopMonitoringAttentionAwareIdleWithDelegate:(id)delegate timeout:(double)timeout
{
  delegateCopy = delegate;
  queue = [(LKAttentionAwareIdleTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__LKAttentionAwareIdleTimer_stopMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke;
  block[3] = &unk_2798262B8;
  timeoutCopy = timeout;
  block[4] = self;
  v10 = delegateCopy;
  v8 = delegateCopy;
  dispatch_async(queue, block);
}

void __82__LKAttentionAwareIdleTimer_stopMonitoringAttentionAwareIdleWithDelegate_timeout___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) timeoutDelegateMap];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [*(a1 + 32) timeoutDelegateMap];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 clientDelegate];
          v14 = *(a1 + 40);

          if (v13 == v14)
          {
            [v12 pause];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (LKAttentionAwareIdleTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end