@interface EKTimedEventStorePurger
- (BOOL)purgingAllowed;
- (EKTimedEventStorePurger)init;
- (double)timeout;
- (id)acquireCachedEventStoreOrCreate:(BOOL)create;
- (id)changedBlock;
- (id)creationBlock;
- (void)_addPersistentNotificationObservers;
- (void)_databaseChangedExternally;
- (void)_eventStoreChangedNotification:(id)notification;
- (void)_fireChangedBlock;
- (void)_removePersistentNotificationObservers;
- (void)_removeTransientEventStoreChangeObserver;
- (void)_resetIdleTimer;
- (void)_uninstallTimer;
- (void)dealloc;
- (void)setChangedBlock:(id)block;
- (void)setCreationBlock:(id)block;
- (void)setPurgingAllowed:(BOOL)allowed;
- (void)setTimeout:(double)timeout;
@end

@implementation EKTimedEventStorePurger

- (EKTimedEventStorePurger)init
{
  v10.receiver = self;
  v10.super_class = EKTimedEventStorePurger;
  v2 = [(EKTimedEventStorePurger *)&v10 init];
  if (v2)
  {
    objc_opt_class();
    v3 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v3 UTF8String];

    v5 = dispatch_queue_create(uTF8String, 0);
    [(EKTimedEventStorePurger *)v2 setWorkQueue:v5];

    objc_opt_class();
    v6 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v6 UTF8String];

    v8 = dispatch_queue_create(uTF8String2, 0);
    [(EKTimedEventStorePurger *)v2 setCallbackQueue:v8];

    [(EKTimedEventStorePurger *)v2 _addPersistentNotificationObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(EKTimedEventStorePurger *)self _uninstallTimer];
  [(EKTimedEventStorePurger *)self _removePersistentNotificationObservers];
  [(EKTimedEventStorePurger *)self _removeTransientEventStoreChangeObserver];
  v3.receiver = self;
  v3.super_class = EKTimedEventStorePurger;
  [(EKTimedEventStorePurger *)&v3 dealloc];
}

- (void)setTimeout:(double)timeout
{
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__EKTimedEventStorePurger_setTimeout___block_invoke;
  v6[3] = &unk_1E77FDDC0;
  v6[4] = self;
  *&v6[5] = timeout;
  dispatch_async(workQueue, v6);
}

void *__38__EKTimedEventStorePurger_setTimeout___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) internalTimeout];
  v4 = v3;
  if (vabdd_f64(v3, *(a1 + 40)) >= 2.22044605e-16)
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = MEMORY[0x1E696AD98];
      v8 = v5;
      v9 = [v7 numberWithDouble:v4];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEBUG, "Changing timeout in [%@] from [%@] to [%@].", &v11, 0x20u);
    }

    [*(a1 + 32) setInternalTimeout:*(a1 + 40)];
    return [*(a1 + 32) _resetIdleTimer];
  }

  return result;
}

- (double)timeout
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__EKTimedEventStorePurger_timeout__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__34__EKTimedEventStorePurger_timeout__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalTimeout];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setCreationBlock:(id)block
{
  blockCopy = block;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__EKTimedEventStorePurger_setCreationBlock___block_invoke;
  v7[3] = &unk_1E77FD1A8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __44__EKTimedEventStorePurger_setCreationBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeTransientEventStoreChangeObserver];
  [*(a1 + 32) setInternalStore:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setInternalCreationBlock:v3];
}

- (id)creationBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EKTimedEventStorePurger_creationBlock__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__EKTimedEventStorePurger_creationBlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalCreationBlock];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setChangedBlock:(id)block
{
  blockCopy = block;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EKTimedEventStorePurger_setChangedBlock___block_invoke;
  v7[3] = &unk_1E77FD1A8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (id)changedBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__EKTimedEventStorePurger_changedBlock__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__EKTimedEventStorePurger_changedBlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalChangedBlock];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setPurgingAllowed:(BOOL)allowed
{
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EKTimedEventStorePurger_setPurgingAllowed___block_invoke;
  v6[3] = &unk_1E77FDDE8;
  v6[4] = self;
  allowedCopy = allowed;
  dispatch_async(workQueue, v6);
}

void *__45__EKTimedEventStorePurger_setPurgingAllowed___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) internalPurgingAllowed];
  if (*(a1 + 40) != result)
  {
    [*(a1 + 32) setInternalPurgingAllowed:?];
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
      v5 = CalBooleanAsString();
      v6 = CalBooleanAsString();
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_debug_impl(&dword_1A805E000, v4, OS_LOG_TYPE_DEBUG, "Set 'purgingAllowed' from [%@] to [%@] in [%@]", &v8, 0x20u);
    }

    return [*(a1 + 32) _resetIdleTimer];
  }

  return result;
}

- (BOOL)purgingAllowed
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__EKTimedEventStorePurger_purgingAllowed__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__41__EKTimedEventStorePurger_purgingAllowed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalPurgingAllowed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)acquireCachedEventStoreOrCreate:(BOOL)create
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__17;
  v15 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke;
  block[3] = &unk_1E77FDE10;
  block[4] = self;
  block[5] = &v10;
  createCopy = create;
  dispatch_sync(workQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) internalStore];
  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_2;
  }

  if (*(a1 + 48) == 1)
  {
    v7 = [*v2 internalCreationBlock];
    v8 = v7[2]();
    v9 = *(*v4 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*v2 setInternalStore:*(*(*v4 + 8) + 40)];
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke_cold_1();
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:*v2 selector:sel__eventStoreChangedNotification_ name:@"EKEventStoreChangedNotification" object:*(*(*v4 + 8) + 40)];

    [*v2 setIgnoreLowLevelDatabaseChangedNotifications:1];
    if (*(*(*v4 + 8) + 40))
    {
LABEL_2:
      [*v2 _resetIdleTimer];
    }
  }
}

- (void)_resetIdleTimer
{
  v25 = *MEMORY[0x1E69E9840];
  [(EKTimedEventStorePurger *)self internalTimeout];
  v4 = v3;
  if (fabs(v3) < 2.22044605e-16)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _resetIdleTimer];
    }

LABEL_17:
    [(EKTimedEventStorePurger *)self _uninstallTimer];
    return;
  }

  internalStore = [(EKTimedEventStorePurger *)self internalStore];

  if (!internalStore)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _resetIdleTimer];
    }

    goto LABEL_17;
  }

  if (![(EKTimedEventStorePurger *)self internalPurgingAllowed])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _resetIdleTimer];
    }

    goto LABEL_17;
  }

  timer = [(EKTimedEventStorePurger *)self timer];
  if (!timer)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _resetIdleTimer];
    }

    workQueue = [(EKTimedEventStorePurger *)self workQueue];
    timer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, workQueue);

    [(EKTimedEventStorePurger *)self setTimer:timer];
    objc_initWeak(location, self);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke;
    handler[3] = &unk_1E77FD3F0;
    objc_copyWeak(&v17, location);
    dispatch_source_set_event_handler(timer, handler);
    dispatch_activate(timer);
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  v8 = dispatch_time(0, (v4 * 1000000000.0));
  v9 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = v9;
    v12 = [v10 numberWithDouble:v4];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * 0.1];
    date = [MEMORY[0x1E695DF00] date];
    v15 = [date dateByAddingTimeInterval:v4];
    *location = 138413058;
    *&location[4] = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEBUG, "Setting the timer's timeout to [%@] seconds and its leeway to [%@] seconds.  The timer will fire around [%@] in [%@]", location, 0x2Au);
  }

  dispatch_source_set_timer(timer, v8, 0xFFFFFFFFFFFFFFFFLL, (v4 * 0.1 * 1000000000.0));
}

void __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke_cold_1();
    if (!WeakRetained)
    {
      goto LABEL_8;
    }
  }

  else if (!WeakRetained)
  {
    goto LABEL_8;
  }

  [WeakRetained setIgnoreLowLevelDatabaseChangedNotifications:0];
  v2 = [WeakRetained internalStore];
  if (v2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke_cold_2();
    }

    [WeakRetained _removeTransientEventStoreChangeObserver];
    [WeakRetained setInternalStore:0];
  }

  [WeakRetained _uninstallTimer];

LABEL_8:
}

- (void)_uninstallTimer
{
  timer = [(EKTimedEventStorePurger *)self timer];
  if (timer)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _uninstallTimer];
    }

    dispatch_source_cancel(timer);
    [(EKTimedEventStorePurger *)self setTimer:0];
  }
}

- (void)_addPersistentNotificationObservers
{
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKTimedEventStorePurger _addPersistentNotificationObservers];
  }

  [MEMORY[0x1E6992F98] addObserver:self selector:sel__databaseChangedExternally name:*MEMORY[0x1E6992E00]];
}

- (void)_removePersistentNotificationObservers
{
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKTimedEventStorePurger _removePersistentNotificationObservers];
  }

  [MEMORY[0x1E6992F98] removeObserver:self name:*MEMORY[0x1E6992E00]];
}

- (void)_databaseChangedExternally
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1A805E000, v1, OS_LOG_TYPE_DEBUG, "[%@] received notification: [%@]", v2, 0x16u);
}

void __53__EKTimedEventStorePurger__databaseChangedExternally__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) ignoreLowLevelDatabaseChangedNotifications])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __53__EKTimedEventStorePurger__databaseChangedExternally__block_invoke_cold_1();
    }
  }

  else
  {
    v2 = *v1;

    [v2 _fireChangedBlock];
  }
}

- (void)_removeTransientEventStoreChangeObserver
{
  internalStore = [(EKTimedEventStorePurger *)self internalStore];
  if (internalStore)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _removeTransientEventStoreChangeObserver];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"EKEventStoreChangedNotification" object:internalStore];
  }
}

- (void)_eventStoreChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKTimedEventStorePurger _eventStoreChangedNotification:];
  }

  if (![EKChangeListener isSyncStatusChangeNotification:notificationCopy])
  {
    workQueue = [(EKTimedEventStorePurger *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EKTimedEventStorePurger__eventStoreChangedNotification___block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)_fireChangedBlock
{
  internalChangedBlock = [(EKTimedEventStorePurger *)self internalChangedBlock];
  if (internalChangedBlock)
  {
    callbackQueue = [(EKTimedEventStorePurger *)self callbackQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke;
    v5[3] = &unk_1E77FD1A8;
    v5[4] = self;
    v6 = internalChangedBlock;
    dispatch_async(callbackQueue, v5);
  }
}

uint64_t __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke(uint64_t a1)
{
  v2 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return (*(*(a1 + 40) + 16))();
}

void __53__EKTimedEventStorePurger__databaseChangedExternally__block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_1A805E000, v0, OS_LOG_TYPE_DEBUG, "Ignored low-level [%@] notification in [%@].", v1, 0x16u);
}

void __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, a2, a3, "Firing changed block from [%@]", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end