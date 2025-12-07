@interface HDAssertionManager
+ (id)_sharedBudgetTimerQueue;
- (BOOL)hasActiveAssertion:(id)assertion;
- (BOOL)hasActiveAssertionForIdentifier:(id)identifier;
- (BOOL)hasActiveOrPendingAssertions;
- (BOOL)takeAssertion:(id)assertion preNotificationBlock:(id)block;
- (HDAssertionManager)init;
- (id)activeAssertionsForIdentifier:(id)identifier;
- (id)allAssertionsForIdentifier:(id)identifier;
- (id)ownerIdentifiersForAssertionIdentifier:(id)identifier;
- (void)_budgetConsumptionTimerDidFire;
- (void)_lock_consumeBudgetsThenResetTimerWithIntermediateBlock:(uint64_t)block;
- (void)_lock_consumeBudgetsThroughTime:(uint64_t)time;
- (void)_lock_enumerateActiveAssertionsWithIdentifier:(void *)identifier handler:;
- (void)_lock_releaseAssertion:(uint64_t)assertion;
- (void)_lock_resumeBudgetConsumption;
- (void)_lock_setBudgetConsumptionTimerWithStartTime:(uint64_t)time;
- (void)_lock_suspendBudgetConsumption;
- (void)_postNotification:(void *)notification forAssertion:;
- (void)_releaseAssertion:(id)assertion;
- (void)addObserver:(id)observer forAssertionIdentifier:(id)identifier queue:(id)queue;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer forAssertionIdentifier:(id)identifier;
- (void)resumeBudgetConsumption;
- (void)suspendBudgetConsumption;
@end

@implementation HDAssertionManager

- (void)suspendBudgetConsumption
{
  os_unfair_lock_lock(&self->_lock);
  [(HDAssertionManager *)self _lock_suspendBudgetConsumption];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_suspendBudgetConsumption
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_5(self);
    os_unfair_lock_assert_owner(v2);
    if (*(v1 + 41))
    {
      *(v1 + 41) = 0;
      HKMachAbsoluteTimeGetCurrent();

      [(HDAssertionManager *)v1 _lock_consumeBudgetsThroughTime:v3];
    }
  }
}

- (HDAssertionManager)init
{
  v11.receiver = self;
  v11.super_class = HDAssertionManager;
  v2 = [(HDAssertionManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = HKCreateSerialDispatchQueue();
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v4;

    v6 = +[HDAssertionManager _sharedBudgetTimerQueue];
    budgetTimerQueue = v3->_budgetTimerQueue;
    v3->_budgetTimerQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerSetsByAssertionIdentifier = v3->_observerSetsByAssertionIdentifier;
    v3->_observerSetsByAssertionIdentifier = v8;

    v3->_consumeBudgets = 0;
  }

  return v3;
}

+ (id)_sharedBudgetTimerQueue
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDAssertionManager__sharedBudgetTimerQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (_sharedBudgetTimerQueue_onceToken != -1)
  {
    dispatch_once(&_sharedBudgetTimerQueue_onceToken, block);
  }

  v2 = _sharedBudgetTimerQueue_queue;

  return v2;
}

- (void)dealloc
{
  [(HDAssertionManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDAssertionManager;
  [(HDAssertionManager *)&v3 dealloc];
}

- (BOOL)hasActiveOrPendingAssertions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_assertionRecordsByIdentifier != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

uint64_t __45__HDAssertionManager__sharedBudgetTimerQueue__block_invoke(uint64_t a1)
{
  _sharedBudgetTimerQueue_queue = HKCreateSerialDispatchQueue();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasActiveAssertionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HDAssertionManager_hasActiveAssertionForIdentifier___block_invoke;
  v6[3] = &unk_2796BDBF0;
  v6[4] = &v7;
  [(HDAssertionManager *)self _lock_enumerateActiveAssertionsWithIdentifier:identifierCopy handler:v6];
  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __54__HDAssertionManager_hasActiveAssertionForIdentifier___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (BOOL)hasActiveAssertion:(id)assertion
{
  assertionCopy = assertion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  os_unfair_lock_lock(&self->_lock);
  assertionIdentifier = [assertionCopy assertionIdentifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HDAssertionManager_hasActiveAssertion___block_invoke;
  v8[3] = &unk_2796BDC18;
  v6 = assertionCopy;
  v9 = v6;
  v10 = &v11;
  [(HDAssertionManager *)self _lock_enumerateActiveAssertionsWithIdentifier:assertionIdentifier handler:v8];

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __41__HDAssertionManager_hasActiveAssertion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  v5 = [*(a1 + 32) ownerIdentifier];
  v6 = [v13 ownerIdentifier];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [v13 ownerIdentifier];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  v10 = [*(a1 + 32) ownerIdentifier];
  v11 = [v13 ownerIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

LABEL_8:
}

void __61__HDAssertionManager_ownerIdentifiersForAssertionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 ownerIdentifier];
  [v2 addObject:v3];
}

- (BOOL)takeAssertion:(id)assertion preNotificationBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    if (!self->_assertionRecordsByIdentifier)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      assertionRecordsByIdentifier = self->_assertionRecordsByIdentifier;
      self->_assertionRecordsByIdentifier = v9;
    }

    assertionIdentifier = [assertionCopy assertionIdentifier];
    v12 = [assertionCopy _takeWithManager:self];
    if (v12 == 3)
    {
      _HKInitializeLogging();
      v22 = HKLogAssertions();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

      if (!v23)
      {
LABEL_23:
        os_unfair_lock_unlock(&self->_lock);
        v8 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v24 = HKLogAssertions();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v37 = assertionIdentifier;
        v38 = 2114;
        v39 = assertionCopy;
        _os_log_impl(&dword_25156C000, v24, OS_LOG_TYPE_INFO, "%{public}@: Cannot retake invalidated assertion %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = v12;
      if (v12 == 2)
      {
        v14 = [(NSMutableDictionary *)self->_assertionRecordsByIdentifier objectForKeyedSubscript:assertionIdentifier];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = [[_HDAssertionRecord alloc] initWithAssertionIdentifier:assertionIdentifier];
          v26 = self->_assertionRecordsByIdentifier;
          assertionIdentifier2 = [assertionCopy assertionIdentifier];
          [(NSMutableDictionary *)v26 setObject:v15 forKeyedSubscript:assertionIdentifier2];

          if (!v15)
          {
            v16 = 0;
LABEL_10:
            v17 = [v16 containsObject:assertionCopy];
            v18 = v17;
            if (v17)
            {
              _HKInitializeLogging();
              v19 = HKLogAssertions();
              v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

              if (!v20)
              {
LABEL_15:

                os_unfair_lock_unlock(&self->_lock);
                if ((v18 & 1) == 0)
                {
                  if (blockCopy)
                  {
                    blockCopy[2](blockCopy);
                  }

                  [(HDAssertionManager *)self _postNotification:assertionIdentifier forAssertion:?];
                }

                v8 = 1;
                goto LABEL_24;
              }

              v21 = HKLogAssertions();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v37 = assertionIdentifier;
                v38 = 2114;
                v39 = assertionCopy;
                _os_log_impl(&dword_25156C000, v21, OS_LOG_TYPE_INFO, "%{public}@: Assertion %{public}@ already taken", buf, 0x16u);
              }
            }

            else
            {
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke;
              v33[3] = &unk_2796BDA28;
              v34 = v15;
              v28 = assertionCopy;
              v35 = v28;
              [(HDAssertionManager *)self _lock_consumeBudgetsThenResetTimerWithIntermediateBlock:v33];
              v29 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:assertionIdentifier];
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke_2;
              v30[3] = &unk_2796BDC68;
              v32 = sel_assertionManager_assertionTaken_;
              v30[4] = self;
              v31 = v28;
              [v29 notifyObservers:v30];

              v21 = v34;
            }

            goto LABEL_15;
          }
        }

        v16 = v15[2];
        goto LABEL_10;
      }

      _HKInitializeLogging();
      v24 = HKLogAssertions();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v37 = assertionIdentifier;
        v38 = 2114;
        v39 = assertionCopy;
        v40 = 2048;
        v41 = v13;
        _os_log_error_impl(&dword_25156C000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected state for assertion %{public}@: %ld", buf, 0x20u);
      }
    }

    goto LABEL_23;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = 0;
LABEL_25:

  return v8;
}

void __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assertionManager:a1[4] assertionTaken:a1[5]];
  }
}

- (void)resumeBudgetConsumption
{
  os_unfair_lock_lock(&self->_lock);
  [(HDAssertionManager *)self _lock_resumeBudgetConsumption];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer forAssertionIdentifier:(id)identifier queue:(id)queue
{
  observerCopy = observer;
  identifierCopy = identifier;
  queueCopy = queue;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    v10 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:identifierCopy];
    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x277CCD738]);
      v12 = HKLogAssertions();
      v10 = [v11 initWithName:identifierCopy loggingCategory:v12];

      [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier setObject:v10 forKeyedSubscript:identifierCopy];
    }

    [v10 registerObserver:observerCopy queue:queueCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer forAssertionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:identifierCopy];

  [v8 unregisterObserver:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_observerSetsByAssertionIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_observerSetsByAssertionIdentifier objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 unregisterObserver:observerCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues = [(NSMutableDictionary *)self->_assertionRecordsByIdentifier allValues];
    v5 = [allValues countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      do
      {
        v8 = 0;
        do
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v34 + 1) + 8 * v8);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          if (v9)
          {
            v10 = *(v9 + 16);
          }

          else
          {
            v10 = 0;
          }

          objectEnumerator = [v10 objectEnumerator];
          v12 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v31;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                [v3 addObject:*(*(&v30 + 1) + 8 * i)];
              }

              v13 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v13);
          }

          ++v8;
        }

        while (v8 != v6);
        v16 = [allValues countByEnumeratingWithState:&v34 objects:v40 count:16];
        v6 = v16;
      }

      while (v16);
    }

    assertionRecordsByIdentifier = self->_assertionRecordsByIdentifier;
    self->_assertionRecordsByIdentifier = 0;

    observerSetsByAssertionIdentifier = self->_observerSetsByAssertionIdentifier;
    self->_observerSetsByAssertionIdentifier = 0;

    budgetConsumptionTimer = self->_budgetConsumptionTimer;
    if (budgetConsumptionTimer)
    {
      dispatch_source_cancel(budgetConsumptionTimer);
      v20 = self->_budgetConsumptionTimer;
      self->_budgetConsumptionTimer = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v26 + 1) + 8 * j) _invalidateAndRelease:{0, v26}];
      }

      v23 = [v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v23);
  }
}

- (void)_releaseAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(HDAssertionManager *)self _lock_releaseAssertion:assertionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

void __53__HDAssertionManager__postNotification_forAssertion___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = @"HDAssertionManagerAssertionKey";
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:v3 object:v4 userInfo:v6];
}

- (void)_lock_enumerateActiveAssertionsWithIdentifier:(void *)identifier handler:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v7 = [*(self + 24) objectForKeyedSubscript:v5];
    v8 = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    if (v7)
    {
      v7 = v7[2];
    }

    objectEnumerator = [v7 objectEnumerator];
    v10 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if ([v14 state] == 2)
        {
          v15 = 0;
          identifierCopy[2](identifierCopy, v14, &v15);
          if (v15)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

- (id)activeAssertionsForIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEB58];
  identifierCopy = identifier;
  v6 = objc_alloc_init(v4);
  os_unfair_lock_lock(&self->_lock);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  OUTLINED_FUNCTION_2_1(v7, v8);

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v6 copy];

  return v9;
}

- (id)allAssertionsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_assertionRecordsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v5)
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = MEMORY[0x277CBEB98];
  allObjects = [v7 allObjects];

  v10 = [v8 setWithArray:allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)ownerIdentifiersForAssertionIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEB58];
  identifierCopy = identifier;
  v6 = [v4 set];
  os_unfair_lock_lock(&self->_lock);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  OUTLINED_FUNCTION_2_1(v7, v8);

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v6 copy];

  return v9;
}

uint64_t __57__HDAssertionManager_takeAssertion_preNotificationBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)_lock_consumeBudgetsThenResetTimerWithIntermediateBlock:(uint64_t)block
{
  v3 = a2;
  if (block)
  {
    v7 = v3;
    os_unfair_lock_assert_owner((block + 8));
    HKMachAbsoluteTimeGetCurrent();
    v5 = v4;
    v6 = *(block + 41);
    if (v6 == 1)
    {
      [(HDAssertionManager *)block _lock_consumeBudgetsThroughTime:v4];
    }

    v3 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
      v3 = v7;
    }

    if (v6)
    {
      [(HDAssertionManager *)block _lock_setBudgetConsumptionTimerWithStartTime:v5];
      v3 = v7;
    }
  }
}

- (void)_postNotification:(void *)notification forAssertion:
{
  v5 = a2;
  notificationCopy = notification;
  if (self)
  {
    v7 = *(self + 16);
    OUTLINED_FUNCTION_0_3();
    v9 = 3221225472;
    v10 = __53__HDAssertionManager__postNotification_forAssertion___block_invoke;
    v11 = &unk_2796BDAC0;
    v12 = v5;
    selfCopy = self;
    v14 = notificationCopy;
    dispatch_async(v7, block);
  }
}

- (void)_lock_resumeBudgetConsumption
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_5(self);
    os_unfair_lock_assert_owner(v2);
    if ((*(v1 + 41) & 1) == 0)
    {
      *(v1 + 41) = 1;
      HKMachAbsoluteTimeGetCurrent();

      [(HDAssertionManager *)v1 _lock_setBudgetConsumptionTimerWithStartTime:v3];
    }
  }
}

- (void)_lock_releaseAssertion:(uint64_t)assertion
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (assertion)
  {
    os_unfair_lock_assert_owner((assertion + 8));
    if ((*(assertion + 40) & 1) == 0)
    {
      assertionIdentifier = [v3 assertionIdentifier];
      v5 = [*(assertion + 24) objectForKeyedSubscript:assertionIdentifier];
      if (v5)
      {
        v6 = v5;
        v7 = *(v5 + 16);
        v8 = [v7 count];
        [v7 removeObject:v3];
        v9 = [v7 count];
        if (v9 == v8)
        {
          _HKInitializeLogging();
          v10 = HKLogAssertions();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

          if (v11)
          {
            v12 = HKLogAssertions();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v18 = assertionIdentifier;
              v19 = 2114;
              v20 = v3;
              _os_log_debug_impl(&dword_25156C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Released %{public}@ was not found", buf, 0x16u);
            }
          }
        }

        if (!v9)
        {
          [*(assertion + 24) removeObjectForKey:assertionIdentifier];
          if (![*(assertion + 24) count])
          {
            v13 = *(assertion + 24);
            *(assertion + 24) = 0;
          }
        }

        [assertion _handleAssertionReleased:*(assertion + 24) != 0];
        v14 = [*(assertion + 32) objectForKeyedSubscript:assertionIdentifier];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __45__HDAssertionManager__lock_releaseAssertion___block_invoke;
        v15[3] = &unk_2796BDC90;
        v15[4] = assertion;
        v16 = v3;
        [v14 notifyObservers:v15];

        [(HDAssertionManager *)assertion _postNotification:assertionIdentifier forAssertion:?];
      }
    }
  }
}

- (void)_budgetConsumptionTimerDidFire
{
  v8 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = OUTLINED_FUNCTION_5(self);
    os_unfair_lock_lock(v2);
    _HKInitializeLogging();
    v3 = HKLogAssertions();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

    if (v4)
    {
      v5 = HKLogAssertions();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 138543362;
        v7 = v1;
        _os_log_impl(&dword_25156C000, v5, OS_LOG_TYPE_INFO, "%{public}@: Budget Consumption timer fired.", &v6, 0xCu);
      }
    }

    [(HDAssertionManager *)v1 _lock_consumeBudgetsThenResetTimerWithIntermediateBlock:?];
    os_unfair_lock_unlock(v1 + 2);
  }
}

- (void)_lock_setBudgetConsumptionTimerWithStartTime:(uint64_t)time
{
  v40 = *MEMORY[0x277D85DE8];
  if (time)
  {
    v4 = OUTLINED_FUNCTION_5(time);
    os_unfair_lock_assert_owner(v4);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allValues = [*(v2 + 24) allValues];
    v6 = [allValues countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      v9 = 1.79769313e308;
      do
      {
        v10 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          if (v11)
          {
            v12 = *(v11 + 16);
          }

          else
          {
            v12 = 0;
          }

          objectEnumerator = [v12 objectEnumerator];
          v14 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                v18 = *(*(&v30 + 1) + 8 * i);
                [v18 remainingBudget];
                if (v9 >= v19)
                {
                  v9 = v19;
                }

                [v18 _setBudgetIntervalStartTime:a2];
              }

              v15 = [objectEnumerator countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v15);
          }

          ++v10;
        }

        while (v10 != v7);
        v20 = [allValues countByEnumeratingWithState:&v34 objects:v39 count:16];
        v7 = v20;
      }

      while (v20);

      if (v9 < 1.79769313e308)
      {
        v21 = *(v2 + 48);
        if (v21)
        {
          dispatch_source_cancel(v21);
          v22 = *(v2 + 48);
          *(v2 + 48) = 0;
        }

        v23 = dispatch_time(0, (v9 * 1000000000.0));
        v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 56));
        v25 = *(v2 + 48);
        *(v2 + 48) = v24;

        dispatch_source_set_timer(*(v2 + 48), v23, 0xFFFFFFFFFFFFFFFFLL, 0);
        objc_initWeak(&location, v2);
        v26 = *(v2 + 48);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __67__HDAssertionManager__lock_setBudgetConsumptionTimerWithStartTime___block_invoke;
        v27[3] = &unk_2796BDCB8;
        objc_copyWeak(&v28, &location);
        dispatch_source_set_event_handler(v26, v27);
        dispatch_activate(*(v2 + 48));
        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

- (void)_lock_consumeBudgetsThroughTime:(uint64_t)time
{
  v42 = *MEMORY[0x277D85DE8];
  if (time)
  {
    v4 = OUTLINED_FUNCTION_5(time);
    os_unfair_lock_assert_owner(v4);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = v2;
    obj = [*(v2 + 24) allValues];
    v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v36;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * v9);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          if (v10)
          {
            v11 = *(v10 + 16);
          }

          else
          {
            v11 = 0;
          }

          objectEnumerator = [v11 objectEnumerator];
          v13 = [objectEnumerator countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v32;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v32 != v15)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                v17 = *(*(&v31 + 1) + 8 * i);
                if ([v17 _consumeFromBudgetThroughTime:a2])
                {
                  if (!v7)
                  {
                    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  [v7 addObject:v17];
                }
              }

              v14 = [objectEnumerator countByEnumeratingWithState:&v31 objects:v40 count:16];
            }

            while (v14);
          }

          ++v9;
        }

        while (v9 != v6);
        v18 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        v6 = v18;
      }

      while (v18);
    }

    else
    {
      v7 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v27 + 1) + 8 * j);
          [v24 _invalidateAndRelease:0];
          [(HDAssertionManager *)v25 _lock_releaseAssertion:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v21);
    }
  }
}

void __67__HDAssertionManager__lock_setBudgetConsumptionTimerWithStartTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDAssertionManager *)WeakRetained _budgetConsumptionTimerDidFire];
}

@end