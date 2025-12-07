@interface MSVSonicBackgroundTaskProvider
- (MSVSonicBackgroundTaskProvider)initWithInvalidationDuration:(double)duration;
- (unint64_t)beginTaskWithName:(id)name expirationHandler:(id)handler;
- (void)_taskDidTimeout:(unint64_t)timeout;
- (void)endTask:(unint64_t)task;
@end

@implementation MSVSonicBackgroundTaskProvider

- (void)_taskDidTimeout:(unint64_t)timeout
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  expirationHandlers = self->_expirationHandlers;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timeout];
  v7 = [(NSMutableDictionary *)expirationHandlers objectForKeyedSubscript:v6];

  assertions = self->_assertions;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timeout];
  v10 = [(NSMutableDictionary *)assertions objectForKeyedSubscript:v9];

  if (v7)
  {
    v11 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      name = [v10 name];
      v13 = 134218498;
      selfCopy = self;
      v15 = 2048;
      timeoutCopy = timeout;
      v17 = 2114;
      v18 = name;
      _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] expired", &v13, 0x20u);
    }

    v7[2](v7);
  }

  os_unfair_recursive_lock_unlock();
}

- (void)endTask:(unint64_t)task
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  timeoutGuards = self->_timeoutGuards;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
  v7 = [(NSMutableDictionary *)timeoutGuards objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 disarm];
    assertions = self->_assertions;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    v10 = [(NSMutableDictionary *)assertions objectForKeyedSubscript:v9];

    v11 = self->_timeoutGuards;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];

    expirationHandlers = self->_expirationHandlers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)expirationHandlers setObject:0 forKeyedSubscript:v14];

    v15 = self->_assertions;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:v16];

    v17 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      name = [v10 name];
      v19 = 134218498;
      selfCopy = self;
      v21 = 2048;
      taskCopy = task;
      v23 = 2114;
      v24 = name;
      _os_log_impl(&dword_1AC81F000, v17, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] ended", &v19, 0x20u);
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (unint64_t)beginTaskWithName:(id)name expirationHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  os_unfair_recursive_lock_lock_with_options();
  v7 = (self->_lastIdentifier + 1);
  self->_lastIdentifier = v7;
  if (!nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackgroundTask#%ld", v7];
  }

  v8 = [[MSVSonicAssertion alloc] initWithName:nameCopy];
  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [MSVBlockGuard alloc];
    invalidationDuration = self->_invalidationDuration;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke;
    v25[3] = &unk_1E7981840;
    objc_copyWeak(v26, &location);
    v26[1] = v7;
    v11 = [(MSVBlockGuard *)v9 initWithTimeout:v25 interruptionHandler:invalidationDuration];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke_2;
    v23[3] = &unk_1E7981778;
    objc_copyWeak(v24, &location);
    v24[1] = v7;
    [(MSVSonicAssertion *)v8 setInvalidationHandler:v23];
    v12 = MEMORY[0x1B26EC6C0](handlerCopy);
    expirationHandlers = self->_expirationHandlers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)expirationHandlers setObject:v12 forKeyedSubscript:v14];

    timeoutGuards = self->_timeoutGuards;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)timeoutGuards setObject:v11 forKeyedSubscript:v16];

    assertions = self->_assertions;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)assertions setObject:v8 forKeyedSubscript:v18];

    v19 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy2 = self;
      v30 = 2048;
      v31 = v7;
      v32 = 2114;
      v33 = nameCopy;
      _os_log_impl(&dword_1AC81F000, v19, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] started", buf, 0x20u);
    }

    objc_destroyWeak(v24);
    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy2 = self;
      v30 = 2048;
      v31 = v7;
      v32 = 2114;
      v33 = nameCopy;
      _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] failed to start", buf, 0x20u);
    }

    v7 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v7;
}

void __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!a2)
  {
    [WeakRetained _taskDidTimeout:*(a1 + 40)];
    WeakRetained = v5;
  }

  [WeakRetained endTask:*(a1 + 40)];
}

void __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _taskDidTimeout:*(a1 + 40)];
  [WeakRetained endTask:*(a1 + 40)];
}

- (MSVSonicBackgroundTaskProvider)initWithInvalidationDuration:(double)duration
{
  if (+[MSVSonicAssertion hasEntitlement])
  {
    v15.receiver = self;
    v15.super_class = MSVSonicBackgroundTaskProvider;
    v5 = [(MSVSonicBackgroundTaskProvider *)&v15 init];
    v6 = v5;
    if (v5)
    {
      v5->_invalidationDuration = duration;
      v5->_lock = 0;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      timeoutGuards = v6->_timeoutGuards;
      v6->_timeoutGuards = dictionary;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      expirationHandlers = v6->_expirationHandlers;
      v6->_expirationHandlers = dictionary2;

      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      assertions = v6->_assertions;
      v6->_assertions = dictionary3;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end