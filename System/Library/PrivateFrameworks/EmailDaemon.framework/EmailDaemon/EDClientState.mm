@interface EDClientState
+ (OS_os_log)log;
+ (id)sharedInstance;
- (EDClientState)init;
- (id)giveBoostWithCompletionBlock:(id)block;
- (void)dealloc;
- (void)exitDaemon;
- (void)setIsForeground:(BOOL)foreground;
- (void)setIsRunningTests:(BOOL)tests;
- (void)setStateForDemoMode:(id)mode;
- (void)setVisibleMailboxObjectIDs:(id)ds;
@end

@implementation EDClientState

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[EDClientState sharedInstance];
  }

  v3 = sharedInstance_sInstance_0;

  return v3;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EDClientState_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_25 != -1)
  {
    dispatch_once(&log_onceToken_25, block);
  }

  v2 = log_log_25;

  return v2;
}

void __20__EDClientState_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_25;
  log_log_25 = v1;
}

void __31__EDClientState_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(EDClientState);
  v1 = sharedInstance_sInstance_0;
  sharedInstance_sInstance_0 = v0;
}

- (EDClientState)init
{
  v7.receiver = self;
  v7.super_class = EDClientState;
  v2 = [(EDClientState *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E699B7F0]);
    v4 = [v3 initWithObject:MEMORY[0x1E695E0F0]];
    visibleMailboxObjectIDs = v2->_visibleMailboxObjectIDs;
    v2->_visibleMailboxObjectIDs = v4;
  }

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[EDClientState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: deallocating client state", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = EDClientState;
  [(EDClientState *)&v4 dealloc];
}

- (void)setIsForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = !foreground;
  EFContentProtectionValidateObservedStateIsUnlocked();
  v6 = v5;
  atomic_compare_exchange_strong(&self->_isForeground, &v6, foregroundCopy);
  if (v6 == v5)
  {
    v10 = @"EDClientStateForegroundStateDidChangeKeyIsForeground";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:foregroundCopy];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"EDClientStateForegroundStateDidChange" object:self userInfo:v8];
  }
}

- (void)setIsRunningTests:(BOOL)tests
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = !tests;
  atomic_compare_exchange_strong(&self->_isRunningTests, &v3, tests);
  if (v3 == !tests)
  {
    testsCopy = tests;
    v6 = +[EDClientState log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 1024;
      v10 = testsCopy;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Changed testing state. isRunningTests=%{BOOL}d", &v7, 0x12u);
    }
  }
}

- (void)setVisibleMailboxObjectIDs:(id)ds
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [dsCopy copy];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = +[EDClientState log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 ef_mapSelector:sel_ef_publicDescription];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting visible mailboxes to %{public}@", buf, 0x16u);
  }

  v11 = [(EFLocked *)self->_visibleMailboxObjectIDs replaceObject:v8];
  if (([v11 isEqualToArray:v8] & 1) == 0)
  {
    v14 = @"visibleMailboxObjectIDs";
    v15 = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"EDClientStateForegroundStateVisibleMailboxesDidChange" object:self userInfo:v12];
  }
}

- (id)giveBoostWithCompletionBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = +[EDClientState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client Requested Boost", buf, 0xCu);
  }

  v6 = MEMORY[0x1E699B7D8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EDClientState-%p", self];
  v8 = [v6 tokenWithLabel:v7 invocationBlock:blockCopy];

  v9 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__EDClientState_giveBoostWithCompletionBlock___block_invoke;
  v12[3] = &unk_1E8250128;
  v10 = v8;
  v13 = v10;
  selfCopy2 = self;
  [v9 setCancellationHandler:v12];

  return v9;
}

void __46__EDClientState_giveBoostWithCompletionBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) invoke];
  v2 = +[EDClientState log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Client Cancelled Boost", &v4, 0xCu);
  }
}

- (void)setStateForDemoMode:(id)mode
{
  v9 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v5 = +[EDClientState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting demo mode state", &v7, 0xCu);
  }

  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  [em_userDefaults enableMailTrackingProtection:1];

  modeCopy[2](modeCopy, 1, 0);
}

- (void)exitDaemon
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = +[EDClientState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Exit daemon", &v4, 0xCu);
  }

  exit(0);
}

@end