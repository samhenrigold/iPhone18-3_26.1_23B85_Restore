@interface HDSHAccessibilityAssertionManager
- (BOOL)shouldBeObservingContentProtectionState;
- (HDAssertion)accessibilityAssertion;
- (HDSHAccessibilityAssertionManager)initWithProfile:(id)profile;
- (void)_queue_takeAccessibilityAssertion;
- (void)_restoreContentProtectionObservingState;
- (void)beginObservingContentProtectionState;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)invalidateAccessibilityAssertion;
- (void)profileDidBecomeReady:(id)ready;
- (void)setShouldBeObservingContentProtectionState:(BOOL)state;
- (void)stopObservingContentProtectionState;
@end

@implementation HDSHAccessibilityAssertionManager

- (HDSHAccessibilityAssertionManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HDSHAccessibilityAssertionManager;
  v5 = [(HDSHAccessibilityAssertionManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v6 = *&v7[4];
    _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] profileDidBecomeReady", v7, 0xCu);
  }

  [(HDSHAccessibilityAssertionManager *)self _restoreContentProtectionObservingState:*v7];
}

- (BOOL)shouldBeObservingContentProtectionState
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 initWithCategory:0 domainName:@"SleepTracking" profile:WeakRetained];

  v15 = 0;
  v6 = [v5 dateForKey:@"SleepTrackingSessionStartDate" error:&v15];
  v7 = v15;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      v12 = objc_opt_class();
      *buf = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v7;
      v13 = v12;
      _os_log_error_impl(&dword_269C02000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] failed to read observing protection state key: %{public}@", buf, 0x16u);

      if (v6)
      {
        goto LABEL_4;
      }

LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_4:
  [v6 timeIntervalSinceNow];
  v10 = v9 > -86400.0;
LABEL_7:

  return v10;
}

- (void)setShouldBeObservingContentProtectionState:(BOOL)state
{
  stateCopy = state;
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 initWithCategory:0 domainName:@"SleepTracking" profile:WeakRetained];

  if (stateCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    date = 0;
  }

  v15 = 0;
  v9 = [v7 setDate:date forKey:@"SleepTrackingSessionStartDate" error:&v15];
  v10 = v15;
  if (stateCopy)
  {
  }

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v10;
      v14 = v13;
      _os_log_error_impl(&dword_269C02000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] failed to set observing protection state key: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_restoreContentProtectionObservingState
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HDSHAccessibilityAssertionManager *)self shouldBeObservingContentProtectionState])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v9 = 138543362;
      v10 = objc_opt_class();
      v5 = v10;
      _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] should be observing content protection state", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    contentProtectionManager = [daemon contentProtectionManager];
    [contentProtectionManager addContentProtectionObserver:self withQueue:self->_queue];
  }
}

- (void)beginObservingContentProtectionState
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v9 = 138543362;
    *&v9[4] = objc_opt_class();
    v5 = *&v9[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] beginObservingContentProtectionState", v9, 0xCu);
  }

  [(HDSHAccessibilityAssertionManager *)self setShouldBeObservingContentProtectionState:1, *v9, *&v9[8]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  contentProtectionManager = [daemon contentProtectionManager];
  [contentProtectionManager addContentProtectionObserver:self withQueue:self->_queue];
}

- (void)stopObservingContentProtectionState
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v9 = 138543362;
    *&v9[4] = objc_opt_class();
    v5 = *&v9[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopObservingContentProtectionState", v9, 0xCu);
  }

  [(HDSHAccessibilityAssertionManager *)self setShouldBeObservingContentProtectionState:0, *v9, *&v9[8]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  contentProtectionManager = [daemon contentProtectionManager];
  [contentProtectionManager removeContentProtectionObserver:self];
}

- (void)invalidateAccessibilityAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidateAccessibilityAssertion", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDSHAccessibilityAssertionManager_invalidateAccessibilityAssertion__block_invoke;
  block[3] = &unk_279C830E0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __69__HDSHAccessibilityAssertionManager_invalidateAccessibilityAssertion__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (HDAssertion)accessibilityAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HDSHAccessibilityAssertionManager_accessibilityAssertion__block_invoke;
  v5[3] = &unk_279C83108;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (changed == 3 && [(HDSHAccessibilityAssertionManager *)self shouldBeObservingContentProtectionState])
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *v9 = 138543362;
      *&v9[4] = objc_opt_class();
      v8 = *&v9[4];
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] database is locking, taking assertion", v9, 0xCu);
    }

    [(HDSHAccessibilityAssertionManager *)self _queue_takeAccessibilityAssertion:*v9];
  }
}

- (void)_queue_takeAccessibilityAssertion
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCC320];
  if (self->_accessibilityAssertion)
  {
    _HKInitializeLogging();
    v4 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      *buf = 138543362;
      v20 = objc_opt_class();
      v6 = v20;
      _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidating existing assertion", buf, 0xCu);
    }

    [(HDAssertion *)self->_accessibilityAssertion invalidate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v18 = 0;
  v11 = [database takeAccessibilityAssertionWithOwnerIdentifier:v10 timeout:&v18 error:600.0];
  v12 = v18;
  accessibilityAssertion = self->_accessibilityAssertion;
  self->_accessibilityAssertion = v11;

  if (!self->_accessibilityAssertion)
  {
    _HKInitializeLogging();
    v14 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = objc_opt_class();
      *buf = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v12;
      v17 = v16;
      _os_log_error_impl(&dword_269C02000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] failed to take assertion with error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)dealloc
{
  [(HDAssertion *)self->_accessibilityAssertion invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  contentProtectionManager = [daemon contentProtectionManager];
  [contentProtectionManager removeContentProtectionObserver:self];

  v6.receiver = self;
  v6.super_class = HDSHAccessibilityAssertionManager;
  [(HDSHAccessibilityAssertionManager *)&v6 dealloc];
}

@end