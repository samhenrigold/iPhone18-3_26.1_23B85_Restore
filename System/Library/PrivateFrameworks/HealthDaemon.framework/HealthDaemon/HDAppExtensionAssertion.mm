@interface HDAppExtensionAssertion
- (BOOL)_unitTest_invalidated;
- (BOOL)shouldAssert;
- (HDAppExtensionAssertion)init;
- (HDAppExtensionAssertion)initWithBundleIdentifier:(id)identifier profile:(id)profile queue:(id)queue;
- (HDAppExtensionAssertionDelegate)delegate;
- (NSObject)_newTimerWithDuration:(double)duration handler:;
- (double)_unitTest_lastAssertionAttempt;
- (double)nextAssertionAttempt;
- (id)_unitTest_pendingDataTypeCodesToAnchors;
- (id)extension;
- (int64_t)_unitTest_connectionErrorCount;
- (unint64_t)_unitTest_pendingAssertionCompletionsCount;
- (void)_incrementErrorCount;
- (void)_invalidate;
- (void)_lock_cancelTimeoutTimers;
- (void)assertAndUpdateWithCompletion:(id)completion;
- (void)extendForDataType:(int64_t)type anchor:(id)anchor completion:(id)completion;
- (void)invalidateForDataType:(int64_t)type anchor:(id)anchor;
@end

@implementation HDAppExtensionAssertion

- (HDAppExtensionAssertion)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAppExtensionAssertion)initWithBundleIdentifier:(id)identifier profile:(id)profile queue:(id)queue
{
  identifierCopy = identifier;
  profileCopy = profile;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = HDAppExtensionAssertion;
  v12 = [(HDAppExtensionAssertion *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_profile, profileCopy);
    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_queue, queue);
    objc_storeStrong(&v13->_bundleIdentifier, identifier);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingDataTypeCodesToAnchors = v13->_pendingDataTypeCodesToAnchors;
    v13->_pendingDataTypeCodesToAnchors = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingAssertionCompletions = v13->_pendingAssertionCompletions;
    v13->_pendingAssertionCompletions = v16;
  }

  return v13;
}

- (void)extendForDataType:(int64_t)type anchor:(id)anchor completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    extension = [(HDAppExtensionAssertion *)&self->super.isa extension];

    if (extension)
    {
      if (!anchorCopy)
      {
        anchorCopy = &unk_283CB2148;
      }

      pendingDataTypeCodesToAnchors = self->_pendingDataTypeCodesToAnchors;
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      v13 = [(NSMutableDictionary *)pendingDataTypeCodesToAnchors objectForKeyedSubscript:v12];
      v14 = [v13 compare:anchorCopy];

      if (v14 == 1)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC288];
        if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
        {
          v22 = 134218242;
          typeCopy = type;
          v24 = 2114;
          v25 = anchorCopy;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Ignoring attempt to set '%lu' to lower anchor '%{public}@'", &v22, 0x16u);
        }
      }

      else
      {
        v16 = self->_pendingDataTypeCodesToAnchors;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        [(NSMutableDictionary *)v16 setObject:anchorCopy forKeyedSubscript:v17];
      }

      v18 = objc_msgSend_copy(completionCopy);
      v19 = _Block_copy(v18);
      pendingAssertionCompletions = self->_pendingAssertionCompletions;
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)pendingAssertionCompletions setObject:v19 forKeyedSubscript:v21];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)extension
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 6);
    daemon = [WeakRetained daemon];
    extensionManager = [daemon extensionManager];
    selfCopy = [extensionManager extensionForBundleIdentifier:selfCopy[3] error:0];
  }

  return selfCopy;
}

- (void)assertAndUpdateWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  if (self->_pendingAssertion)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_pendingAssertion = 1;
    os_unfair_lock_unlock(&self->_lock);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke;
    aBlock[3] = &unk_278620608;
    aBlock[4] = self;
    v25 = completionCopy;
    completionCopy = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    extensionManager = [daemon extensionManager];
    bundleIdentifier = self->_bundleIdentifier;
    v23 = 0;
    v9 = [extensionManager extensionForBundleIdentifier:bundleIdentifier error:&v23];
    v10 = v23;

    if (v9)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_300;
      v19[3] = &unk_278613150;
      v20 = v9;
      selfCopy = self;
      v22 = completionCopy;
      [v20 connectWithCompletionHandler:v19];
    }

    else
    {
      [(HDAppExtensionAssertion *)self _incrementErrorCount];
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v12 = [defaultWorkspace applicationIsInstalled:self->_bundleIdentifier];

      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC288];
      v14 = *MEMORY[0x277CCC288];
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = self->_bundleIdentifier;
          *buf = 138543618;
          v27 = v18;
          v28 = 2114;
          v29 = v10;
          _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to assert app extension: '%{public}@' with error: %{public}@", buf, 0x16u);
        }

        (*(completionCopy + 2))(completionCopy, 0, 1);
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_bundleIdentifier;
          *buf = 138543362;
          v27 = v15;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Failed to assert app extesnion: '%{public}@' since the app has been uninstalled.", buf, 0xCu);
        }

        v16 = objc_loadWeakRetained(&self->_profile);
        appSubscriptionManager = [v16 appSubscriptionManager];
        [appSubscriptionManager removeBundleID:self->_bundleIdentifier];

        (*(completionCopy + 2))(completionCopy, 0, 0);
      }
    }
  }
}

uint64_t __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  *(*(a1 + 32) + 9) = 0;
  *(*(a1 + 32) + 96) = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_incrementErrorCount
{
  if (self)
  {
    os_unfair_lock_lock((self + 12));
    ++*(self + 104);
    os_unfair_lock_unlock((self + 12));
    v2 = _Block_copy(*(self + 32));
    if (v2)
    {
      v3 = v2;
      v2[2]();
      v2 = v3;
    }
  }
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_300(uint64_t a1, int a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC288];
  v7 = *MEMORY[0x277CCC288];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v8 extensionIdentifier];
      *buf = 138543362;
      v35 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Connected to app extension: '%{public}@'", buf, 0xCu);
    }

    v11 = (a1 + 40);
    objc_initWeak(buf, *(a1 + 40));
    os_unfair_lock_lock((*(a1 + 40) + 12));
    [(HDAppExtensionAssertion *)*(a1 + 40) _lock_cancelTimeoutTimers];
    v12 = *(a1 + 40);
    if (*(v12 + 8))
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 14.0;
    }

    if (*(*(a1 + 40) + 8))
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 15.0;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_301;
    v32[3] = &unk_278616F38;
    objc_copyWeak(&v33, buf);
    v15 = [(HDAppExtensionAssertion *)v12 _newTimerWithDuration:v32 handler:v13];
    v16 = *(*v11 + 80);
    *(*v11 + 80) = v15;

    v17 = *v11;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_2;
    v29[3] = &unk_2786177F8;
    v30 = *(a1 + 32);
    objc_copyWeak(&v31, buf);
    v18 = [(HDAppExtensionAssertion *)v17 _newTimerWithDuration:v29 handler:v14];
    v19 = *(*v11 + 72);
    *(*v11 + 72) = v18;

    v20 = objc_msgSend_copy(*(*v11 + 56));
    [*(*(a1 + 40) + 56) removeAllObjects];
    *(*(a1 + 40) + 104) = 0;
    os_unfair_lock_unlock((*(a1 + 40) + 12));
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_303;
    v26[3] = &unk_278620630;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v27 = v21;
    v28 = v22;
    [v20 enumerateKeysAndObjectsUsingBlock:v26];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v6;
      v25 = [v23 extensionIdentifier];
      *buf = 138543618;
      v35 = v25;
      v36 = 2114;
      v37 = v5;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Failed to connect to app extension: '%{public}@' with error: %{public}@", buf, 0x16u);
    }

    [(HDAppExtensionAssertion *)*(a1 + 40) _incrementErrorCount];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_lock_cancelTimeoutTimers
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 12));
    v2 = *(self + 72);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 72);
      *(self + 72) = 0;
    }

    v4 = *(self + 80);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(self + 80);
      *(self + 80) = 0;
    }
  }
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_301(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [(HDAppExtensionAssertion *)WeakRetained extension];
    [v2 notifyExtensionOfUpcomingTimeout];

    v3 = _Block_copy(v5[5]);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    WeakRetained = v5;
  }
}

- (NSObject)_newTimerWithDuration:(double)duration handler:
{
  if (!self)
  {
    return 0;
  }

  v4 = *(self + 88);
  v5 = a2;
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
  v7 = dispatch_time(0, (duration * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(v6, v5);

  dispatch_resume(v6);
  return v6;
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 extensionIdentifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "Invalidating app extension assertion due to timeout for '%{public}@'", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(HDAppExtensionAssertion *)WeakRetained _invalidate];
}

- (void)_invalidate
{
  if (self)
  {
    os_unfair_lock_lock((self + 12));
    if (*(self + 10))
    {

      os_unfair_lock_unlock((self + 12));
    }

    else
    {
      *(self + 9) = 256;
      [(HDAppExtensionAssertion *)self _lock_cancelTimeoutTimers];
      os_unfair_lock_unlock((self + 12));
      extension = [(HDAppExtensionAssertion *)self extension];
      [extension disconnect];

      delegate = [self delegate];
      [delegate appExtensionAssertionDidInvalidate:self];
    }
  }
}

void __57__HDAppExtensionAssertion_assertAndUpdateWithCompletion___block_invoke_303(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  (*(a3 + 16))(a3);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 extensionIdentifier];
    *v17 = 138543618;
    *&v17[4] = v9;
    *&v17[12] = 2114;
    *&v17[14] = v5;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Updating app extension: '%{public}@' for data type code: '%{public}@'", v17, 0x16u);
  }

  v10 = *(a1 + 40);
  v11 = [v5 integerValue];
  if (v10)
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v11];
    if (v13)
    {
      v14 = [(HDAppExtensionAssertion *)v10 extension];
      v15 = v14;
      if (v14)
      {
        *v17 = MEMORY[0x277D85DD0];
        *&v17[8] = 3221225472;
        *&v17[16] = __58__HDAppExtensionAssertion__notifyAppExtensionForDataType___block_invoke;
        v18 = &unk_278620658;
        v19 = v10;
        v22 = v12;
        v16 = v14;
        v20 = v16;
        v21 = v13;
        [v16 notifyExtensionOfUpdateForSampleType:v21 completionHandler:v17];
      }
    }
  }
}

- (void)invalidateForDataType:(int64_t)type anchor:(id)anchor
{
  anchorCopy = anchor;
  if (!anchorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAppExtensionAssertion.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"anchor != nil"}];
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors objectForKeyedSubscript:v7];
  if ([v8 compare:anchorCopy] != 1)
  {
    [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors removeObjectForKey:v7];
    [(NSMutableDictionary *)self->_pendingAssertionCompletions removeObjectForKey:v7];
  }

  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_pendingDataTypeCodesToAnchors count];
    os_unfair_lock_unlock(&self->_lock);
    if (!v9)
    {
      [(HDAppExtensionAssertion *)self _invalidate];
    }
  }
}

- (BOOL)shouldAssert
{
  os_unfair_lock_lock(&self->_lock);
  v3 = !self->_pendingAssertion;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)nextAssertionAttempt
{
  os_unfair_lock_lock(&self->_lock);
  lastAssertionAttempt = self->_lastAssertionAttempt;
  v4 = lastAssertionAttempt + exp2(self->_connectionErrorCount) * 15.0;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

void __58__HDAppExtensionAssertion__notifyAppExtensionForDataType___block_invoke(void *a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a1[4];
  if (a2)
  {
    os_unfair_lock_lock(v6 + 3);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    v8 = [*(a1[4] + 64) objectForKeyedSubscript:v7];
    [*(a1[4] + 64) removeObjectForKey:v7];
    os_unfair_lock_unlock((a1[4] + 12));
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      v10 = a1[5];
      v11 = v9;
      v12 = [v10 extensionIdentifier];
      *buf = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Updated app extension: '%{public}@' with data type code: %{public}@ and anchor: %{public}@", buf, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x277CCD858]) initWithDataAnchor:v8 associationAnchor:0];
    WeakRetained = objc_loadWeakRetained((a1[4] + 48));
    v15 = [WeakRetained appSubscriptionManager];
    v16 = *(a1[4] + 24);
    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{a1[6], 0}];
    v18 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
    [v15 ackForBundleID:v16 dataTypes:v17 anchor:v13 ackTime:v18];
  }

  else
  {
    [(HDAppExtensionAssertion *)v6 _incrementErrorCount];
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC288];
    if (!os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v20 = a1[5];
    v7 = v19;
    v21 = [v20 extensionIdentifier];
    *buf = 138543618;
    v23 = v21;
    v24 = 2114;
    v25 = v5;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to update app extension: '%{public}@' with error: %{public}@", buf, 0x16u);
  }

LABEL_7:
}

- (unint64_t)_unitTest_pendingAssertionCompletionsCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_pendingAssertionCompletions count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_unitTest_pendingDataTypeCodesToAnchors
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_msgSend_copy(self->_pendingDataTypeCodesToAnchors);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)_unitTest_connectionErrorCount
{
  os_unfair_lock_lock(&self->_lock);
  connectionErrorCount = self->_connectionErrorCount;
  os_unfair_lock_unlock(&self->_lock);
  return connectionErrorCount;
}

- (double)_unitTest_lastAssertionAttempt
{
  os_unfair_lock_lock(&self->_lock);
  lastAssertionAttempt = self->_lastAssertionAttempt;
  os_unfair_lock_unlock(&self->_lock);
  return lastAssertionAttempt;
}

- (BOOL)_unitTest_invalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (HDAppExtensionAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end