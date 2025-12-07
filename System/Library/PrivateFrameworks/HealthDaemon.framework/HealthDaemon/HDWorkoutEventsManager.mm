@interface HDWorkoutEventsManager
- (HDWorkoutEventsManager)initWithProfile:(id)profile;
- (id)takeSessionAssertionWithOwnerIdentifier:(id)identifier activityType:(unint64_t)type sessionIdentifier:(id)sessionIdentifier eventsDelegate:(id)delegate swimTracker:(id)tracker;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity;
- (void)requestPendingEventsThroughDate:(id)date sessionIdentifier:(id)identifier completion:(id)completion;
- (void)unitTest_setCMWorkoutManager:(id)manager;
- (void)updateEventCollectorsForActivityType:(unint64_t)type activityIdentifier:(id)identifier;
@end

@implementation HDWorkoutEventsManager

- (HDWorkoutEventsManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDWorkoutEventsManager;
  v5 = [(HDWorkoutEventsManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v6->_assertionManager;
    v6->_assertionManager = v9;

    [(HDAssertionManager *)v6->_assertionManager addObserver:v6 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection" queue:v6->_queue];
  }

  return v6;
}

- (id)takeSessionAssertionWithOwnerIdentifier:(id)identifier activityType:(unint64_t)type sessionIdentifier:(id)sessionIdentifier eventsDelegate:(id)delegate swimTracker:(id)tracker
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  delegateCopy = delegate;
  trackerCopy = tracker;
  v16 = [_HDEventsCollectionAssertion alloc];
  if (v16)
  {
    v32.receiver = v16;
    v32.super_class = _HDEventsCollectionAssertion;
    v17 = [(HDWorkoutEventsManager *)&v32 initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection" ownerIdentifier:identifierCopy];
  }

  else
  {
    v17 = 0;
  }

  objc_storeWeak(&self->_eventsDelegate, delegateCopy);
  swimTracker = self->_swimTracker;
  self->_swimTracker = trackerCopy;
  v19 = trackerCopy;

  assertionManager = self->_assertionManager;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke;
  v27[3] = &unk_278613608;
  v27[4] = self;
  v28 = v17;
  v30 = sessionIdentifierCopy;
  typeCopy = type;
  v29 = delegateCopy;
  v21 = sessionIdentifierCopy;
  v22 = delegateCopy;
  v23 = v17;
  if ([(HDAssertionManager *)assertionManager takeAssertion:v23 preNotificationBlock:v27])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

void __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke_2;
  block[3] = &unk_278613608;
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v3, block);
}

void __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v23 = *(a1 + 48);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = _allEventCollectorClasses();
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          if ([(objc_class *)v10 isAvailableInCurrentHardware]&& [(objc_class *)v10 supportsWorkoutActivityType:v2])
          {
            v11 = [v10 alloc];
            WeakRetained = objc_loadWeakRetained((v3 + 8));
            v13 = [v11 initWithProfile:WeakRetained delegate:v23];

            v14 = *(v3 + 48);
            v15 = v13;
            v16 = v14;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v16 registerObserver:v15];
            }

            [v4 addObject:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  [(_HDEventsCollectionAssertion *)*(a1 + 32) setEventCollectors:v4];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = v17[11];
  }

  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * j) startWithSessionId:*(a1 + 56)];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)requestPendingEventsThroughDate:(id)date sessionIdentifier:(id)identifier completion:(id)completion
{
  dateCopy = date;
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke;
  v15[3] = &unk_278613680;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  [*(*(a1 + 32) + 16) activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection"];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v23)
  {
    v22 = *v34;
    do
    {
      v3 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v3;
        v4 = *(*(&v33 + 1) + 8 * v3);
        _HKInitializeLogging();
        v5 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          *buf = 138543618;
          v39 = v6;
          v40 = 2114;
          v41 = v4;
          _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting post-stop events collection for active assertion %{public}@", buf, 0x16u);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        if (v4)
        {
          v7 = v4[11];
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v29 + 1) + 8 * i);
              v14 = [v13 sessionId];
              v15 = *(a1 + 40);

              if (v14 == v15)
              {
                dispatch_group_enter(v2);
                _HKInitializeLogging();
                v16 = *MEMORY[0x277CCC330];
                if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                {
                  v17 = *(a1 + 32);
                  *buf = 138543618;
                  v39 = v17;
                  v40 = 2114;
                  v41 = v13;
                  _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting post-stop events collection for %{public}@", buf, 0x16u);
                }

                v18 = *(a1 + 48);
                v27[0] = MEMORY[0x277D85DD0];
                v27[1] = 3221225472;
                v27[2] = __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_307;
                v27[3] = &unk_278613630;
                v27[4] = *(a1 + 32);
                v27[5] = v13;
                v28 = v2;
                [v13 requestPendingEventsThroughDate:v18 completion:v27];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v10);
        }

        v3 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v19 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      v23 = v19;
    }

    while (v19);
  }

  v20 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_309;
  block[3] = &unk_278613658;
  v26 = *(a1 + 56);
  dispatch_group_notify(v2, v20, block);
}

void __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_307(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully finished collecting post-stop events pending for %{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to collect post-stop pending events for %{public}@, error: %{public}@", &v12, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_309(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateEventCollectorsForActivityType:(unint64_t)type activityIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating event collectors", buf, 0xCu);
  }

  if (type != 83)
  {
    v9 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection"];
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v9 count])
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HDWorkoutEventsManager_updateEventCollectorsForActivityType_activityIdentifier___block_invoke;
      block[3] = &unk_278613608;
      v14 = v9;
      typeCopy = type;
      v15 = v10;
      selfCopy2 = self;
      v17 = identifierCopy;
      dispatch_sync(queue, block);
    }

    else
    {
      _HKInitializeLogging();
      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: No active event collector assertions to update", buf, 0xCu);
      }
    }
  }
}

void __82__HDWorkoutEventsManager_updateEventCollectorsForActivityType_activityIdentifier___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v27 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v27)
  {
    v26 = *v40;
    do
    {
      v2 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v39 + 1) + 8 * v2);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v28 = v3;
        v29 = v2;
        if (v3)
        {
          v4 = *(v3 + 88);
        }

        else
        {
          v4 = 0;
        }

        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v35 objects:v48 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v36;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v36 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v35 + 1) + 8 * i);
              if ([objc_opt_class() supportsWorkoutActivityType:*(a1 + 64)])
              {
                [*(a1 + 40) addObject:v10];
              }

              else
              {
                [v10 stop];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v35 objects:v48 count:16];
          }

          while (v7);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = _allEventCollectorClasses();
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              if ([(objc_class *)v16 supportsWorkoutActivityType:*(a1 + 64)])
              {
                v17 = *(a1 + 40);
                v30[0] = MEMORY[0x277D85DD0];
                v30[1] = 3221225472;
                v30[2] = __82__HDWorkoutEventsManager_updateEventCollectorsForActivityType_activityIdentifier___block_invoke_2;
                v30[3] = &__block_descriptor_40_e33_B16__0__HDWorkoutEventCollector_8lu32l8;
                v30[4] = v16;
                if ([v17 hk_containsObjectPassingTest:v30])
                {
                  _HKInitializeLogging();
                  v18 = *MEMORY[0x277CCC330];
                  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = *(a1 + 48);
                    *buf = 138543618;
                    v44 = v19;
                    v45 = 2114;
                    v46 = v16;
                    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Event collector %{public}@, already exists", buf, 0x16u);
                  }
                }

                else
                {
                  v20 = [v16 alloc];
                  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
                  v22 = objc_loadWeakRetained((*(a1 + 48) + 40));
                  v23 = [v20 initWithProfile:WeakRetained delegate:v22];

                  [*(a1 + 40) addObject:v23];
                  [v23 startWithSessionId:*(a1 + 56)];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v47 count:16];
          }

          while (v13);
        }

        [(_HDEventsCollectionAssertion *)v28 setEventCollectors:?];
        v2 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v24 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      v27 = v24;
    }

    while (v24);
  }
}

- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity
{
  v29 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  activityCopy = activity;
  [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        if (v12)
        {
          v12 = v12[11];
        }

        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          do
          {
            v17 = 0;
            do
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v19 + 1) + 8 * v17++) fakeActivityDetection:detectionCopy workoutActivity:activityCopy];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v15);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v17 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (invalidatedCopy)
  {
    v6 = invalidatedCopy[11];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) stop];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)unitTest_setCMWorkoutManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_eventCollectors;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) unitTest_setCMWorkoutManager:{managerCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end