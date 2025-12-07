@interface PACoalescingIntervalTracker
- (PAAccessLogger)logger;
- (PACoalescingIntervalTracker)initWithLogger:(id)logger;
- (void)coalesce:(id)coalesce;
- (void)dealloc;
- (void)expireIntervalWithMatcher:(id)matcher state:(id)state;
- (void)invalidate;
@end

@implementation PACoalescingIntervalTracker

- (PAAccessLogger)logger
{
  WeakRetained = objc_loadWeakRetained(&self->_logger);

  return WeakRetained;
}

- (PACoalescingIntervalTracker)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v10.receiver = self;
  v10.super_class = PACoalescingIntervalTracker;
  v5 = [(PACoalescingIntervalTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_logger, loggerCopy);
    v6->_intervalEndTime = 60.0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    coalescingIntervals = v6->_coalescingIntervals;
    v6->_coalescingIntervals = dictionary;

    v6->_collectAssetIdentifiers = _os_feature_enabled_impl();
    v6->_loggingOptions = [loggerCopy options];
  }

  return v6;
}

- (void)coalesce:(id)coalesce
{
  v29 = *MEMORY[0x1E69E9840];
  coalesceCopy = coalesce;
  os_unfair_lock_lock(&self->_lock);
  v5 = [PAAccessMatcher coalescingMatcherForAccess:coalesceCopy];
  v6 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:v5];
  if (self->_loggingOptions)
  {
    supportsSameMinuteAccessCountLogging = [coalesceCopy supportsSameMinuteAccessCountLogging];
  }

  else
  {
    supportsSameMinuteAccessCountLogging = 0;
  }

  assetIdentifiers = [coalesceCopy assetIdentifiers];
  v9 = _os_feature_enabled_impl();
  if (v9)
  {
    v9 = [assetIdentifiers count];
    if (!v9)
    {
      v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_injectedIdentifier length:8];
      ++self->_injectedIdentifier;
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v10];

      assetIdentifiers = v11;
    }
  }

  v12 = v6;
  if (!v6)
  {
    if (supportsSameMinuteAccessCountLogging)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v15 = [currentCalendar components:128 fromDate:date];

      second = [v15 second];
      logger = [(PACoalescingIntervalTracker *)self logger];
      v18 = [logger beginIntervalForAccess:coalesceCopy];

      v12 = [[PACoalescingIntervalState alloc] initWithInterval:v18 matcher:v5 tracker:self expiry:59.0 - second];
    }

    else
    {
      logger2 = [(PACoalescingIntervalTracker *)self logger];
      v15 = [logger2 beginIntervalForAccess:coalesceCopy];

      v12 = [[PACoalescingIntervalState alloc] initWithInterval:v15 matcher:v5 tracker:self];
    }

    v9 = [(NSMutableDictionary *)self->_coalescingIntervals setObject:v12 forKeyedSubscript:v5];
  }

  v20 = logger_1(v9);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412802;
    v24 = coalesceCopy;
    v25 = 2112;
    v26 = v12;
    v27 = 1024;
    v28 = v6 == 0;
    _os_log_debug_impl(&dword_1DF25B000, v20, OS_LOG_TYPE_DEBUG, "Coalescing access=%@ into interval=%@ isNew=%d", &v23, 0x1Cu);
  }

  if (self->_collectAssetIdentifiers)
  {
    interval = [(PACoalescingIntervalState *)v12 interval];
    [interval recordAccessToAssetIdentifiers:assetIdentifiers withVisibilityState:0 accessEventCount:1];
  }

  if (supportsSameMinuteAccessCountLogging)
  {
    [(PACoalescingIntervalState *)v12 setAccessCount:[(PACoalescingIntervalState *)v12 accessCount]+ 1];
  }

  else
  {
    [(PACoalescingIntervalState *)v12 touch];
  }

  logger3 = [(PACoalescingIntervalTracker *)self logger];
  [logger3 notifyDidCoalesceAccess:coalesceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)expireIntervalWithMatcher:(id)matcher state:(id)state
{
  matcherCopy = matcher;
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:matcherCopy];
  v9 = logger_1(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PACoalescingIntervalTracker expireIntervalWithMatcher:v8 state:v9];
  }

  [(NSMutableDictionary *)self->_coalescingIntervals setObject:0 forKeyedSubscript:matcherCopy];
  interval = [v8 interval];
  [v8 timestampAdjustment];
  [interval endWithTimestampAdjustment:objc_msgSend(v8 accessCount:{"accessCount"), v11}];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_coalescingIntervals;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_coalescingIntervals objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v6), v9];
        [v7 invalidate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  coalescingIntervals = self->_coalescingIntervals;
  self->_coalescingIntervals = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(PACoalescingIntervalTracker *)self invalidate];
  v3.receiver = self;
  v3.super_class = PACoalescingIntervalTracker;
  [(PACoalescingIntervalTracker *)&v3 dealloc];
}

- (void)expireIntervalWithMatcher:(uint64_t)a1 state:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_DEBUG, "Ending idle coalescing interval=%@", &v2, 0xCu);
}

@end