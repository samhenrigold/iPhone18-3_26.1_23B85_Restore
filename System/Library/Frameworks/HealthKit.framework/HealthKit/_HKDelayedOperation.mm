@interface _HKDelayedOperation
- (_HKDelayedOperation)initWithMode:(int64_t)mode clock:(int64_t)clock queue:(id)queue delay:(double)delay block:(id)block;
- (void)_queue_executeBlockIfScheduled;
- (void)disableLogging;
- (void)enableLoggingWithName:(id)name category:(id)category;
- (void)executeWithDelay:(double)delay;
- (void)invalidate;
@end

@implementation _HKDelayedOperation

- (_HKDelayedOperation)initWithMode:(int64_t)mode clock:(int64_t)clock queue:(id)queue delay:(double)delay block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = _HKDelayedOperation;
  v15 = [(_HKDelayedOperation *)&v25 init];
  if (v15)
  {
    v16 = _Block_copy(blockCopy);
    v17 = *(v15 + 1);
    *(v15 + 1) = v16;

    objc_storeStrong(v15 + 2, queue);
    *(v15 + 3) = mode;
    *(v15 + 4) = clock;
    *(v15 + 7) = 0;
    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v15 + 2));
    v19 = *(v15 + 5);
    *(v15 + 5) = v18;

    *(v15 + 6) = delay;
    objc_initWeak(&location, v15);
    v20 = *(v15 + 5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60___HKDelayedOperation_initWithMode_clock_queue_delay_block___block_invoke;
    v22[3] = &unk_1E73782E8;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v20, v22);
    dispatch_resume(*(v15 + 5));
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (void)executeWithDelay:(double)delay
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_block)
  {
    lastExecution = _CurrentTimeForClock(self->_clock);
    v9 = lastExecution;
    if (!self->_mode)
    {
      lastExecution = self->_lastExecution;
    }

    v10 = lastExecution + delay;
    v11 = v10 - v9;
    if (v10 - v9 <= 0.0)
    {
      if (self->_loggingCategory)
      {
        _HKInitializeLogging(v6, v7);
        loggingCategory = self->_loggingCategory;
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_INFO))
        {
          loggingName = self->_loggingName;
          *buf = 138543362;
          v27 = loggingName;
          _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Scheduling immediate execution.", buf, 0xCu);
        }
      }

      self->_nextScheduledExecution = v9;
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40___HKDelayedOperation_executeWithDelay___block_invoke;
      block[3] = &unk_1E7376780;
      block[4] = self;
      dispatch_async(queue, block);
    }

    else
    {
      nextScheduledExecution = self->_nextScheduledExecution;
      v13 = self->_loggingCategory;
      if (nextScheduledExecution == 0.0 || v10 < nextScheduledExecution)
      {
        if (v13)
        {
          _HKInitializeLogging(v6, v7);
          v15 = self->_loggingCategory;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = self->_loggingName;
            *buf = 138543618;
            v27 = v16;
            v28 = 2048;
            v29 = v10 - v9;
            _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Scheduling execution in %lfs.", buf, 0x16u);
          }
        }

        self->_nextScheduledExecution = v10;
        if (!self->_timerSource)
        {
          [(_HKDelayedOperation *)a2 executeWithDelay:?];
        }

        clock = self->_clock;
        if (clock == 1)
        {
          v18 = dispatch_time(0, (v11 * 1000000000.0));
        }

        else
        {
          if (clock)
          {
            [_HKDelayedOperation executeWithDelay:?];
          }

          v18 = dispatch_walltime(0, (v11 * 1000000000.0));
        }

        dispatch_source_set_timer(self->_timerSource, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else if (v13)
      {
        _HKInitializeLogging(v6, v7);
        v22 = self->_loggingCategory;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = self->_nextScheduledExecution;
          v23 = self->_loggingName;
          *buf = 138543874;
          v27 = v23;
          v28 = 2048;
          v29 = v10;
          v30 = 2048;
          v31 = v24;
          _os_log_impl(&dword_19197B000, v22, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Ignoring scheduling request (requested %lf > scheduled %lf).", buf, 0x20u);
        }
      }
    }
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___HKDelayedOperation_invalidate__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)enableLoggingWithName:(id)name category:(id)category
{
  categoryCopy = category;
  queue = self->_queue;
  nameCopy = name;
  dispatch_assert_queue_V2(queue);
  v9 = [nameCopy copy];

  loggingName = self->_loggingName;
  self->_loggingName = v9;

  loggingCategory = self->_loggingCategory;
  self->_loggingCategory = categoryCopy;
}

- (void)disableLogging
{
  dispatch_assert_queue_V2(self->_queue);
  loggingCategory = self->_loggingCategory;
  self->_loggingCategory = 0;

  loggingName = self->_loggingName;
  self->_loggingName = 0;
}

- (void)_queue_executeBlockIfScheduled
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_nextScheduledExecution > 0.0)
  {
    v5 = _CurrentTimeForClock(self->_clock);
    if (self->_loggingCategory)
    {
      lastExecution = self->_lastExecution;
      nextScheduledExecution = self->_nextScheduledExecution;
      _HKInitializeLogging(v3, v4);
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_INFO))
      {
        loggingName = self->_loggingName;
        v11 = 138543874;
        v12 = loggingName;
        v13 = 2048;
        v14 = v5 - lastExecution;
        v15 = 2048;
        v16 = v5 - nextScheduledExecution;
        _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Executing after %lfs (slipped %lfs).", &v11, 0x20u);
      }
    }

    self->_lastExecution = v5;
    self->_nextScheduledExecution = 0.0;
    block = self->_block;
    if (block)
    {
      block[2]();
    }
  }
}

- (void)executeWithDelay:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKDelayedOperation.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"_timerSource != nil"}];
}

- (void)executeWithDelay:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"dispatch_time_t _HKDispatchTimeForDelayAndClock(NSTimeInterval, _HKDelayedOperationClock)"}];
  [v2 handleFailureInFunction:v3 file:@"_HKDelayedOperation.m" lineNumber:24 description:{@"Invalid clock value for delayed operation: %ld", a1}];

  __break(1u);
}

@end