@interface CHUISKeybag
+ (id)sharedInstance;
- (BOOL)isEffectivelyLocked:(int64_t)locked;
- (CHUISKeybag)init;
- (void)_queue_evaluateState;
- (void)_queue_handleKeybagStatusChanged;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation CHUISKeybag

- (void)_queue_evaluateState
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"ExtendedDeviceLockState";
  v19[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v4 = MKBGetDeviceLockStateInfo();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1A40]];
  integerValue = [v5 integerValue];

  v7 = integerValue < 7;
  v8 = v7 & (0x46u >> integerValue);
  v9 = BSEqualBools();
  v10 = v7 & (6u >> integerValue);
  if (!v9 || (v9 = BSEqualBools(), (v9 & 1) == 0))
  {
    self->_queue_isEffectivelyLocked = v8;
    self->_queue_isEffectivelyLockedAuthentic = v10;
    v11 = CHUISLogKeybag(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (self->_queue_isEffectivelyLocked)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (self->_queue_isEffectivelyLockedAuthentic)
      {
        v12 = @"YES";
      }

      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1D928E000, v11, OS_LOG_TYPE_DEFAULT, "Keybag state changed - locked default policy? %{public}@, locked authentic policy? %{public}@", &v14, 0x16u);
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[CHUISKeybag sharedInstance];
  }

  v3 = sharedInstance___keybag;

  return v3;
}

void __29__CHUISKeybag_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CHUISKeybag);
  v1 = sharedInstance___keybag;
  sharedInstance___keybag = v0;
}

- (CHUISKeybag)init
{
  v17.receiver = self;
  v17.super_class = CHUISKeybag;
  v2 = [(CHUISKeybag *)&v17 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v3;

    v5 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v5;

    objc_initWeak(&location, v2);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __19__CHUISKeybag_init__block_invoke;
    v14 = &unk_1E85754A8;
    objc_copyWeak(&v15, &location);
    v2->_mkbRegistrationToken = MKBEventsRegister();
    v7 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __19__CHUISKeybag_init__block_invoke_2;
    block[3] = &unk_1E85754D0;
    v10 = v2;
    dispatch_sync(v7, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_queue_handleKeybagStatusChanged
{
  BSDispatchQueueAssert();
  [(CHUISKeybag *)self _queue_evaluateState];
  v3 = [(NSHashTable *)self->_queue_observers copy];
  if ([v3 count])
  {
    calloutQueue = self->_calloutQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__CHUISKeybag__queue_handleKeybagStatusChanged__block_invoke;
    v5[3] = &unk_1E8575520;
    v6 = v3;
    selfCopy = self;
    dispatch_async(calloutQueue, v5);
  }
}

void __19__CHUISKeybag_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 == 1 && WeakRetained)
  {
    [WeakRetained _queue_handleKeybagStatusChanged];
  }
}

- (BOOL)isEffectivelyLocked:(int64_t)locked
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CHUISKeybag_isEffectivelyLocked___block_invoke;
  block[3] = &unk_1E85754F8;
  block[5] = &v7;
  block[6] = locked;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__35__CHUISKeybag_isEffectivelyLocked___block_invoke(void *result)
{
  v1 = 40;
  if (result[6])
  {
    v1 = 41;
  }

  *(*(result[5] + 8) + 24) = *(result[4] + v1);
  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHUISKeybag.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertNot();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CHUISKeybag_addObserver___block_invoke;
  block[3] = &unk_1E8575520;
  block[4] = self;
  v10 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, block);
}

uint64_t __27__CHUISKeybag_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHUISKeybag.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertNot();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CHUISKeybag_removeObserver___block_invoke;
  block[3] = &unk_1E8575520;
  block[4] = self;
  v10 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, block);
}

void __47__CHUISKeybag__queue_handleKeybagStatusChanged__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 keybagStateDidChange:{*(a1 + 40), v7}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

@end