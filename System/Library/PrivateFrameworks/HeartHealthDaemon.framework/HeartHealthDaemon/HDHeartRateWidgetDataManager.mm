@interface HDHeartRateWidgetDataManager
- (BOOL)_isFirstSampleHeartRate:(id)rate;
- (BOOL)_isFirstSampleWorkout:(id)workout;
- (BOOL)_isSampleFromWatch:(id)watch;
- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile;
- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile latestWorkoutFetchOperation:(id)operation;
- (id)_latestWorkoutSample;
- (id)_watchSamplesFrom:(id)from;
- (id)latestWorkoutFrom:(id)from;
- (void)_latestWorkoutSample;
- (void)_reloadWidgetsWithReason:(int64_t)reason;
- (void)_reloadWorkoutRelevanceAndWidgetWithReason:(int64_t)reason for:(id)for;
- (void)_startObservingHeartRateSamples;
- (void)_startObservingWorkoutSamples;
- (void)_stopObservingHeartRateSamples;
- (void)_stopObservingWorkoutSamples;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDHeartRateWidgetDataManager

- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277D10800];
  profileCopy = profile;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithProfile:profileCopy debugIdentifier:v8 delegate:self];

  v10 = [(HDHeartRateWidgetDataManager *)self initWithProfile:profileCopy latestWorkoutFetchOperation:v9];
  return v10;
}

- (HDHeartRateWidgetDataManager)initWithProfile:(id)profile latestWorkoutFetchOperation:(id)operation
{
  profileCopy = profile;
  operationCopy = operation;
  v27.receiver = self;
  v27.super_class = HDHeartRateWidgetDataManager;
  v8 = [(HDHeartRateWidgetDataManager *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    workoutType = [MEMORY[0x277CCD8D8] workoutType];
    workoutType = v9->_workoutType;
    v9->_workoutType = workoutType;

    v12 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v12;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v9 queue:v9->_queue];

    objc_initWeak(&location, v9);
    v16 = objc_alloc(MEMORY[0x277CCDD98]);
    v17 = v9->_queue;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __76__HDHeartRateWidgetDataManager_initWithProfile_latestWorkoutFetchOperation___block_invoke;
    v24 = &unk_2786609E0;
    objc_copyWeak(&v25, &location);
    v18 = [v16 initWithMode:0 clock:1 queue:v17 delay:&v21 block:30.0];
    reloadOperation = v9->_reloadOperation;
    v9->_reloadOperation = v18;

    objc_storeStrong(&v9->_latestWorkoutFetchOperation, operation);
    [(HDProtectedDataOperation *)v9->_latestWorkoutFetchOperation setDelegate:v9, v21, v22, v23, v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __76__HDHeartRateWidgetDataManager_initWithProfile_latestWorkoutFetchOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_reloadHRWidgets];
}

- (void)dealloc
{
  [(HDHeartRateWidgetDataManager *)self _stopObservingHeartRateSamples];
  [(HDHeartRateWidgetDataManager *)self _stopObservingWorkoutSamples];
  v3.receiver = self;
  v3.super_class = HDHeartRateWidgetDataManager;
  [(HDHeartRateWidgetDataManager *)&v3 dealloc];
}

- (void)_startObservingHeartRateSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v4 = [MEMORY[0x277CCD8D8] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [dataManager addObserver:self forDataType:v4];
}

- (void)_stopObservingHeartRateSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v4 = [MEMORY[0x277CCD8D8] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [dataManager removeObserver:self forDataType:v4];
}

- (void)_startObservingWorkoutSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  [dataManager addObserver:self forDataType:self->_workoutType];
}

- (void)_stopObservingWorkoutSamples
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  [dataManager removeObserver:self forDataType:self->_workoutType];
}

- (void)daemonReady:(id)ready
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v5 = v11;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] daemonReady", buf, 0xCu);
  }

  [(HDHeartRateWidgetDataManager *)self _startObservingHeartRateSamples];
  [(HDHeartRateWidgetDataManager *)self _startObservingWorkoutSamples];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke;
  v9[3] = &unk_27865FD90;
  v9[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v9];
}

void __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] first unlock occurred", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  [v6 _reloadWidgetsWithReason:0];
  v7 = *(*v5 + 40);
  v11 = 0;
  v8 = [v7 requestWorkWithPriority:2 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke_cold_1(v5, v9, v10);
    }
  }
}

- (id)_latestWorkoutSample
{
  workoutType = [MEMORY[0x277CCD720] workoutType];
  v4 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [autoupdatingCurrentCalendar startOfDayForDate:date];

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 initWithStartDate:v7 endDate:date2];

  v11 = HDSampleEntityPredicateForDateInterval();
  v12 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v4 otherPredicate:v11];
  v13 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v20 = 0;
  v15 = [v13 mostRecentSampleWithType:workoutType profile:WeakRetained encodingOptions:0 predicate:v12 anchor:0 error:&v20];
  v16 = v20;

  if (v15 || !v16)
  {
    v18 = v15;
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(HDHeartRateWidgetDataManager *)v16 _latestWorkoutSample];
    }

    v18 = 0;
  }

  return v18;
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  _latestWorkoutSample = [(HDHeartRateWidgetDataManager *)self _latestWorkoutSample];
  if (_latestWorkoutSample)
  {
    [(HDHeartRateWidgetDataManager *)self _reloadWorkoutRelevanceAndWidgetWithReason:0 for:_latestWorkoutSample];
  }

  completionCopy[2]();
}

- (void)_reloadWidgetsWithReason:(int64_t)reason
{
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDHeartRateWidgetDataManager__reloadWidgetsWithReason___block_invoke;
  v7[3] = &unk_278660A08;
  v7[4] = self;
  v7[5] = reason;
  dispatch_async(queue, v7);
  didRequestHRWidgetReloadHandler = self->_didRequestHRWidgetReloadHandler;
  if (didRequestHRWidgetReloadHandler)
  {
    didRequestHRWidgetReloadHandler[2](didRequestHRWidgetReloadHandler, reason);
  }
}

- (void)_reloadWorkoutRelevanceAndWidgetWithReason:(int64_t)reason for:(id)for
{
  v30 = *MEMORY[0x277D85DE8];
  forCopy = for;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = HDStringFromHeartRateWidgetDataManagerReloadReason(reason);
    *buf = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = *&forCopy;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] _reloadWorkoutRelevanceAndWidgetWithReason reason %@ for %@", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  endDate = [forCopy endDate];
  [date timeIntervalSinceDate:endDate];
  v14 = v13;

  if (v14 >= *MEMORY[0x277D12F20])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *MEMORY[0x277D12F20] - v14;
  }

  _HKInitializeLogging();
  v16 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    v19 = HDStringFromHeartRateWidgetDataManagerReloadReason(reason);
    *buf = 138543874;
    v25 = v17;
    v26 = 2112;
    v27 = v19;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] _reloadWorkoutRelevanceAndWidgetWithReason reason %@ delayInSeconds %lf", buf, 0x20u);
  }

  v20 = dispatch_time(0, (v15 * 1000000000.0));
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__HDHeartRateWidgetDataManager__reloadWorkoutRelevanceAndWidgetWithReason_for___block_invoke;
  v23[3] = &unk_278660A08;
  v23[4] = self;
  v23[5] = reason;
  dispatch_after(v20, queue, v23);
  didRequestWorkoutWidgetReloadHandler = self->_didRequestWorkoutWidgetReloadHandler;
  if (didRequestWorkoutWidgetReloadHandler)
  {
    didRequestWorkoutWidgetReloadHandler[2](didRequestWorkoutWidgetReloadHandler, reason, forCopy, v15);
  }
}

uint64_t __79__HDHeartRateWidgetDataManager__reloadWorkoutRelevanceAndWidgetWithReason_for___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 24) = *(a1 + 40);
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _reloadWorkoutRelevanceAndWidgetWithReason", &v6, 0xCu);
  }

  [*(a1 + 32) _queue_reloadRelevances];
  return [*(a1 + 32) _queue_reloadWorkoutHRWidgets];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v12 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  _HKInitializeLogging();
  v6 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] samplesAdded", &v10, 0xCu);
  }

  v8 = [(HDHeartRateWidgetDataManager *)self _watchSamplesFrom:addedCopy];
  if ([v8 count])
  {
    if ([(HDHeartRateWidgetDataManager *)self _isFirstSampleHeartRate:v8])
    {
      [(HDHeartRateWidgetDataManager *)self _reloadWidgetsWithReason:1];
    }

    else
    {
      v9 = [(HDHeartRateWidgetDataManager *)self latestWorkoutFrom:addedCopy];
      [(HDHeartRateWidgetDataManager *)self _reloadWorkoutRelevanceAndWidgetWithReason:2 for:v9];
    }
  }
}

- (id)latestWorkoutFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = fromCopy;
    v5 = v13;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] latestWorkoutFrom in samples %@", &v12, 0x16u);
  }

  v6 = [fromCopy sortedArrayUsingComparator:&__block_literal_global_10];
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v9 = v8;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] latestWorkoutFrom sortedSamples %@", &v12, 0x16u);
  }

  lastObject = [v6 lastObject];

  return lastObject;
}

uint64_t __50__HDHeartRateWidgetDataManager_latestWorkoutFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_watchSamplesFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = fromCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(HDHeartRateWidgetDataManager *)self _isSampleFromWatch:v11, v13])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_isSampleFromWatch:(id)watch
{
  _source = [watch _source];
  _isAppleWatch = [_source _isAppleWatch];

  return _isAppleWatch;
}

- (BOOL)_isFirstSampleHeartRate:(id)rate
{
  firstObject = [rate firstObject];
  sampleType = [firstObject sampleType];
  identifier = [sampleType identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277CCCB90]];

  return v6;
}

- (BOOL)_isFirstSampleWorkout:(id)workout
{
  firstObject = [workout firstObject];
  sampleType = [firstObject sampleType];
  identifier = [sampleType identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277CCCF78]];

  return v6;
}

void __44__HDHeartRateWidgetDataManager_daemonReady___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 description];
  v8 = 138543618;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] error requesting maintenance work for fetching latest workout on healthd ready: %@", &v8, 0x16u);
}

- (void)_latestWorkoutSample
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "Error retrieving most recent workout : %@", &v2, 0xCu);
}

@end