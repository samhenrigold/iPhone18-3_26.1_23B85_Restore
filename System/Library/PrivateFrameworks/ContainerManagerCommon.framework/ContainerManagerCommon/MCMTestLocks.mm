@interface MCMTestLocks
+ (id)sharedInstance;
- (BOOL)enabled;
- (MCMTestLocks)init;
- (int64_t)countOfLock:(unint64_t)lock;
- (void)_stateQueue_acquireLock:(unint64_t)lock;
- (void)_stateQueue_releaseLock:(unint64_t)lock;
- (void)_stateQueue_updateCountForLock:(unint64_t)lock byCount:(int64_t)count;
- (void)acquireLock:(unint64_t)lock;
- (void)releaseAllLocks;
- (void)releaseLock:(unint64_t)lock;
- (void)setEnabled:(BOOL)enabled;
- (void)setStateQueue:(id)queue;
- (void)waitOnLock:(unint64_t)lock;
@end

@implementation MCMTestLocks

- (void)setStateQueue:(id)queue
{
  p_stateQueue = &self->_stateQueue;

  objc_storeStrong(p_stateQueue, queue);
}

- (void)_stateQueue_releaseLock:(unint64_t)lock
{
  v3 = self->_lockSemaphore[lock];

  dispatch_semaphore_signal(v3);
}

- (void)_stateQueue_acquireLock:(unint64_t)lock
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = (&self->super.isa + lock);
  v5 = v4[31];
  v6 = v4[16];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MCMTestLocks__stateQueue_acquireLock___block_invoke;
  block[3] = &unk_1E86AF8A0;
  v10 = v5;
  lockCopy = lock;
  v7 = v5;
  v8 = v6;
  dispatch_barrier_async(v8, block);
}

void __40__MCMTestLocks__stateQueue_acquireLock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Blocking waiters for lock: %llu", &v6, 0xCu);
  }

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Unblocking waiters for lock: %llu", &v6, 0xCu);
  }
}

- (void)_stateQueue_updateCountForLock:(unint64_t)lock byCount:(int64_t)count
{
  v18 = *MEMORY[0x1E69E9840];
  if (count)
  {
    lockCount = self->_lockCount;
    v7 = self->_lockCount[lock];
    v8 = v7 + count;
    if (v7 + count < 0)
    {
      v11 = self->_lockCount[lock];
      v10 = container_log_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        lockCopy = lock;
        v14 = 2048;
        countCopy = count;
        v16 = 2048;
        v17 = v11;
        _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Unbalanced update to test lock: %llu by: %ld from: %ld", buf, 0x20u);
      }

      abort();
    }

    if (v7)
    {
      if (v8)
      {
LABEL_5:
        lockCount[lock] = v8;
        return;
      }
    }

    else
    {
      [(MCMTestLocks *)self _stateQueue_acquireLock:lock];
      if (v8)
      {
        goto LABEL_5;
      }
    }

    [(MCMTestLocks *)self _stateQueue_releaseLock:lock];
    goto LABEL_5;
  }
}

- (BOOL)enabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabled = selfCopy->_enabled;
  objc_sync_exit(selfCopy);

  return enabled;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (enabledCopy)
  {
    if (!selfCopy->_enabled)
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v6 = "Enabled test locks feature.";
        v7 = &v9;
LABEL_8:
        _os_log_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (selfCopy->_enabled)
  {
    [(MCMTestLocks *)selfCopy releaseAllLocks];
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v6 = "Disabled test locks feature.";
      v7 = &v8;
      goto LABEL_8;
    }

LABEL_9:
  }

  selfCopy->_enabled = enabledCopy;
  objc_sync_exit(selfCopy);
}

- (int64_t)countOfLock:(unint64_t)lock
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  if ([(MCMTestLocks *)self enabled])
  {
    stateQueue = [(MCMTestLocks *)self stateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__MCMTestLocks_countOfLock___block_invoke;
    v8[3] = &unk_1E86B0708;
    v8[4] = self;
    v8[5] = &v9;
    v8[6] = lock;
    dispatch_sync(stateQueue, v8);
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)waitOnLock:(unint64_t)lock
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(MCMTestLocks *)self enabled])
  {
    v5 = self->_lockQueue[lock];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      uTF8String = [uUIDString UTF8String];
      v15 = 2048;
      lockCopy = lock;
      _os_log_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEFAULT, "[%s] Waiting on lock: %llu", buf, 0x16u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__MCMTestLocks_waitOnLock___block_invoke;
    v10[3] = &unk_1E86AF8A0;
    v11 = uUIDString;
    lockCopy2 = lock;
    v9 = uUIDString;
    dispatch_sync(v5, v10);
  }
}

void __27__MCMTestLocks_waitOnLock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "[%s] No longer waiting on lock: %llu", &v5, 0x16u);
  }
}

- (void)releaseAllLocks
{
  v4[5] = *MEMORY[0x1E69E9840];
  stateQueue = [(MCMTestLocks *)self stateQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__MCMTestLocks_releaseAllLocks__block_invoke;
  v4[3] = &unk_1E86B0E08;
  v4[4] = self;
  dispatch_sync(stateQueue, v4);
}

void __31__MCMTestLocks_releaseAllLocks__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  for (i = 1; i != 16; ++i)
  {
    [*(a1 + 32) _stateQueue_updateCountForLock:i - 1 byCount:-*(*(a1 + 32) + 8 * i)];
  }

  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEFAULT, "Released all test locks.", v4, 2u);
  }
}

- (void)releaseLock:(unint64_t)lock
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = [(MCMTestLocks *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MCMTestLocks_releaseLock___block_invoke;
  block[3] = &unk_1E86AF8A0;
  block[4] = self;
  block[5] = lock;
  dispatch_sync(stateQueue, block);
}

void __28__MCMTestLocks_releaseLock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _stateQueue_updateCountForLock:*(a1 + 40) byCount:-1];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8 * v3 + 8);
    v5 = 134218240;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Released test lock: %llu; count: %ld", &v5, 0x16u);
  }
}

- (void)acquireLock:(unint64_t)lock
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = [(MCMTestLocks *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MCMTestLocks_acquireLock___block_invoke;
  block[3] = &unk_1E86AF8A0;
  block[4] = self;
  block[5] = lock;
  dispatch_sync(stateQueue, block);
}

void __28__MCMTestLocks_acquireLock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _stateQueue_updateCountForLock:*(a1 + 40) byCount:1];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8 * v3 + 8);
    v5 = 134218240;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Acquired test lock: %llu; count: %ld", &v5, 0x16u);
  }
}

- (MCMTestLocks)init
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MCMTestLocks;
  v2 = [(MCMTestLocks *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 0;
    v4 = dispatch_queue_create("com.apple.containermanagerd.MCMTestLocks.stateQueue", 0);
    stateQueue = v3->_stateQueue;
    v3->_stateQueue = v4;

    lockSemaphore = v3->_lockSemaphore;
    v7 = 15;
    v8 = MEMORY[0x1E69E96A8];
    do
    {
      v9 = dispatch_queue_create("com.apple.containermanagerd.MCMTestLocks.lockQueue", v8);
      v10 = *(lockSemaphore - 15);
      *(lockSemaphore - 15) = v9;

      v11 = dispatch_semaphore_create(0);
      v12 = *lockSemaphore;
      *lockSemaphore++ = v11;

      --v7;
    }

    while (v7);
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global);
  }

  v2 = sharedInstance_singleton;

  return v2;
}

uint64_t __30__MCMTestLocks_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end