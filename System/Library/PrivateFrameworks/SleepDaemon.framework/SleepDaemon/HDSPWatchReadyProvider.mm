@interface HDSPWatchReadyProvider
- (BOOL)_isInRootRobot;
- (BOOL)isInRootRobotOrDemoMode;
- (BOOL)isSystemReady;
- (HDSPEnvironment)environment;
- (HDSPSystemReadyDelegate)delegate;
- (HDSPWatchReadyProvider)initWithEnvironment:(id)environment;
- (void)_withLock:(id)lock;
- (void)restoreDidFinish;
- (void)springboardDidStart;
@end

@implementation HDSPWatchReadyProvider

- (HDSPWatchReadyProvider)initWithEnvironment:(id)environment
{
  v22 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v17.receiver = self;
  v17.super_class = HDSPWatchReadyProvider;
  v5 = [(HDSPWatchReadyProvider *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = [HDSPSpringboardMonitor alloc];
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v9 = [(HDSPSpringboardMonitor *)v7 initWithCallbackScheduler:defaultCallbackScheduler isAppleWatch:1];
    springboardMonitor = v6->_springboardMonitor;
    v6->_springboardMonitor = v9;

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v6->_springboardMonitor;
      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v14 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing with %{public}@", buf, 0x16u);
    }

    v15 = v6;
  }

  return v6;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSystemReady
{
  v11 = *MEMORY[0x277D85DE8];
  isSpringboardStarted = [(HDSPSpringboardMonitor *)self->_springboardMonitor isSpringboardStarted];
  v4 = HKSPLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSpringboardStarted)
  {
    if (v5)
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Carousel is started.", &v9, 0xCu);
    }

    if ([(HDSPWatchReadyProvider *)self _waitForInitialSync])
    {
      return 1;
    }
  }

  else
  {
    if (v5)
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Waiting for Carousel to start.", &v9, 0xCu);
    }

    [(HDSPSpringboardMonitor *)self->_springboardMonitor addObserver:self];
  }

  return 0;
}

- (BOOL)isInRootRobotOrDemoMode
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDemoEnvironment = [WeakRetained isDemoEnvironment];

  if (isDemoEnvironment)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] we're in demo environment", &v8, 0xCu);
    }

    return 1;
  }

  else
  {

    return [(HDSPWatchReadyProvider *)self _isInRootRobot];
  }
}

- (BOOL)_isInRootRobot
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDSPWatchReadyProvider__isInRootRobot__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E28 != -1)
  {
    dispatch_once(&qword_2814C0E28, block);
  }

  return _MergedGlobals_13;
}

void __40__HDSPWatchReadyProvider__isInRootRobot__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HKSPLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v2 = v9;
    _os_log_impl(&dword_269B11000, v1, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if we are in root robot.", &v8, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.rootrobot"];
  v4 = [v3 stringForKey:@"configuration"];
  _MergedGlobals_13 = [@"minimal" isEqualToString:v4];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = _MergedGlobals_13;
    v7 = v6;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running in root robot %d", &v8, 0x12u);
  }
}

- (void)springboardDidStart
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 138543362;
    *&v6[4] = objc_opt_class();
    v4 = *&v6[4];
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Carousel has started", v6, 0xCu);
  }

  if ([(HDSPWatchReadyProvider *)self _waitForInitialSync])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained systemDidBecomeReady];

    [(HDSPWatchReadyProvider *)self _finishWaitingForInitialSync];
  }

  [(HDSPSpringboardMonitor *)self->_springboardMonitor removeObserver:self, *v6, *&v6[8]];
}

- (void)restoreDidFinish
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] restore finished", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemDidBecomeReady];

  [(HDSPWatchReadyProvider *)self _finishWaitingForInitialSync];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSystemReadyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end