@interface HDWorkoutLocationSmoother
+ (id)_saveNewRouteSeriesWithProfile:(id)profile sourceEntity:(id)entity forWorkout:(id)workout locations:(id)locations routes:(id)routes associateWithWorkout:(BOOL)withWorkout error:(id *)error;
- (HDWorkoutLocationSmoother)initWithProfile:(id)profile;
- (id)_queue_saveLocations:(void *)locations forTask:(void *)task activity:(uint64_t)activity saveError:;
- (id)_shouldObserveWorkouts;
- (id)_workoutWithUUIDString:(uint64_t *)string error:;
- (void)_associationsSyncedForWorkout:(id)workout;
- (void)_finishSmoothingSampleWithTask:(void *)task;
- (void)_queue_cancelTimeout;
- (void)_queue_clearSmoothingTimeoutTimerForTask:(uint64_t)task;
- (void)_queue_deleteRoutesForTask:(uint64_t)task;
- (void)_queue_finishTaskAttempt:(id *)attempt;
- (void)_queue_locationManagerDidSmoothRoutes:(void *)routes forTask:(void *)task error:;
- (void)_queue_smoothAllUnsmoothedLocationSeries;
- (void)_queue_smoothNextActivityForCurrentTask;
- (void)_queue_smoothNextSample;
- (void)_queue_smoothingDidFailForTask:(void *)task error:(int)error shouldRetry:;
- (void)_queue_startSmoothingCurrentTask;
- (void)_submitWorkoutPerformanceTask:(void *)task event:(char)event failure:;
- (void)_submitWorkoutPerformanceTask:(void *)task event:(void *)event activity:(uint64_t)activity locations:(char)locations failure:;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)foregroundClientProcessesDidChange:(id)change previouslyForegroundBundleIdentifiers:(id)identifiers;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)smoothRouteWithWorkoutUUID:(id)d completion:(id)completion;
- (void)unitTest_smoothRouteForTask:(id)task completion:(id)completion;
@end

@implementation HDWorkoutLocationSmoother

- (HDWorkoutLocationSmoother)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDWorkoutLocationSmoother;
  v5 = [(HDWorkoutLocationSmoother *)&v13 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v6;

    objc_storeWeak(&v5->_profile, profileCopy);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSmoothingTasks = v5->_pendingSmoothingTasks;
    v5->_pendingSmoothingTasks = v8;

    currentSmoothingTask = v5->_currentSmoothingTask;
    v5->_currentSmoothingTask = 0;

    objc_storeWeak(&v5->_queueCurrentSmoother, 0);
    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    [WeakRetained registerProfileReadyObserver:v5 queue:v5->_queue];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"HDAssociationEntityDidReceiveSyncObjectsNotification" object:0];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v6 = objc_loadWeakRetained(&self->_profile);
  daemon = [v6 daemon];
  processStateManager = [daemon processStateManager];
  [processStateManager unregisterForegroundClientProcessObserver:self];

  if ([(HDWorkoutLocationSmoother *)&self->super.isa _shouldObserveWorkouts])
  {
    v9 = objc_loadWeakRetained(&self->_profile);
    dataManager = [v9 dataManager];
    workoutType = [MEMORY[0x277CCD720] workoutType];
    [dataManager removeObserver:self forDataType:workoutType];
  }

  v12.receiver = self;
  v12.super_class = HDWorkoutLocationSmoother;
  [(HDWorkoutLocationSmoother *)&v12 dealloc];
}

- (id)_shouldObserveWorkouts
{
  if (result)
  {
    WeakRetained = objc_loadWeakRetained(result + 2);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    routeSmoothingEnabled = [behavior routeSmoothingEnabled];

    return routeSmoothingEnabled;
  }

  return result;
}

- (void)_associationsSyncedForWorkout:(id)workout
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Workout-sample associations occurred, start smoothing if unlocked.", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDWorkoutLocationSmoother__associationsSyncedForWorkout___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__HDWorkoutLocationSmoother__associationsSyncedForWorkout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained database];
  v4 = [v3 isProtectedDataAvailable];

  v5 = *(a1 + 32);
  if (v4)
  {

    [(HDWorkoutLocationSmoother *)v5 _queue_smoothAllUnsmoothedLocationSeries];
  }

  else
  {
    *(v5 + 48) = 1;
  }
}

- (void)_queue_smoothAllUnsmoothedLocationSeries
{
  v47[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    v2 = [MEMORY[0x277CCD8D8] dataTypeWithCode:102];
    WeakRetained = objc_loadWeakRetained((selfCopy + 16));
    v33 = v2;
    v4 = [HDSampleEntity entityEnumeratorWithType:v2 profile:WeakRetained];

    v5 = objc_loadWeakRetained((selfCopy + 16));
    metadataManager = [v5 metadataManager];
    v7 = [metadataManager predicateWithMetadataKey:*MEMORY[0x277CCE118] value:0 operatorType:5];

    v31 = v7;
    [v4 setPredicate:v7];
    v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"end_date" entityClass:objc_opt_class() ascending:1];
    v47[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    [v4 setOrderingTerms:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v41 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__HDWorkoutLocationSmoother__queue_smoothAllUnsmoothedLocationSeries__block_invoke;
    v39[3] = &unk_27861D470;
    v39[4] = selfCopy;
    v11 = v10;
    v40 = v11;
    v32 = v4;
    v29 = [v4 enumerateWithError:&v41 handler:v39];
    v30 = v41;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [HDSmoothingTask alloc];
          v18 = [obj objectForKeyedSubscript:v16];
          v19 = objc_loadWeakRetained((selfCopy + 16));
          daemon = [v19 daemon];
          [daemon analyticsSubmissionCoordinator];
          v22 = v21 = selfCopy;
          v23 = [(HDSmoothingTask *)v17 _initWithWorkout:v16 routes:v18 analyticsSubmissionCoordinator:v22];

          selfCopy = v21;
          [*(v21 + 24) addObject:v23];
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v13);
    }

    if ([*(selfCopy + 24) count])
    {
      [(HDWorkoutLocationSmoother *)selfCopy _queue_smoothNextSample];
    }

    if (v29)
    {
      v24 = 0;
      v26 = v32;
      v25 = v33;
    }

    else
    {
      v27 = selfCopy;
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC330];
      v26 = v32;
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v43 = v30;
        v44 = 2112;
        v45 = v32;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "[routes] Error occurred in enumerator: %{public}@ %@", buf, 0x16u);
      }

      v24 = 1;
      v25 = v33;
      selfCopy = v27;
    }

    *(selfCopy + 48) = v24;
    *(selfCopy + 49) = 0;
  }
}

uint64_t __69__HDWorkoutLocationSmoother__queue_smoothAllUnsmoothedLocationSeries__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 metadata];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCE118]];

  v6 = *(a1 + 32);
  v22 = 0;
  v7 = [(HDWorkoutLocationSmoother *)v6 _workoutWithUUIDString:v5 error:&v22];
  v8 = v22;
  if (v7)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v3 UUID];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[routes] Will smooth route: %@, workout: %@", buf, 0x16u);
    }

    v12 = [*(a1 + 40) objectForKeyedSubscript:v7];

    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
    }

    v14 = [*(a1 + 40) objectForKeyedSubscript:v7];
    [v14 addObject:v3];
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    v16 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (!v16)
      {
        goto LABEL_12;
      }

      v14 = v15;
      v17 = [v3 UUID];
      *buf = 138412802;
      v24 = v5;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v8;
      v18 = "[routes] Unable to fetch workout %@ for route %@. Error: %@";
      v19 = v14;
      v20 = 32;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_12;
      }

      v14 = v15;
      v17 = [v3 UUID];
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v5;
      v18 = "[routes] Route %@ is orphaned, workout %@ doesn't exist.";
      v19 = v14;
      v20 = 22;
    }

    _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
  }

LABEL_12:
  return 1;
}

- (id)_workoutWithUUIDString:(uint64_t *)string error:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    WeakRetained = objc_loadWeakRetained(self + 2);
    self = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:v6 encodingOptions:0 profile:WeakRetained error:string];

    if (!self)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v10 = *string;
        v11 = 138412546;
        v12 = v5;
        v13 = 2114;
        v14 = v10;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[routes] Failed to find workout with UUID=%@: %{public}@", &v11, 0x16u);
      }

      self = 0;
    }
  }

  return self;
}

- (void)_queue_smoothNextSample
{
  v26 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = self + 4;
    if (!self[4])
    {
      hk_dequeue = [self[3] hk_dequeue];
      obj = hk_dequeue;
      if (hk_dequeue)
      {
        v4 = hk_dequeue;
        v5 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self];
        [(HDSmoothingTask *)v4 setTransaction:v5];

        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v7 = [standardUserDefaults hk_BOOLForKey:@"HDLocationSmootherSmoothWithZeroLocations" defaultValue:0];

        metadata = [v4[2] metadata];
        v9 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE1A0]];

        if (v4[4] || v9 || (v7 & 1) != 0)
        {
          v4[7] = 1;
          objc_storeStrong(v2, obj);
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v25 = v4;
            _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[routes] New smoothing task will run: %{public}@", buf, 0xCu);
          }

          v22 = [MEMORY[0x277CBEAA8] now];
          objc_storeStrong(v4 + 15, v22);

          [(HDWorkoutLocationSmoother *)self _queue_startSmoothingCurrentTask];
        }

        else
        {
          _HKInitializeLogging();
          v10 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            v11 = v4[2];
            v12 = v10;
            uUID = [v11 UUID];
            *buf = 138543362;
            v25 = uUID;
            _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Workout %{public}@ has 0 locations; deleting it.", buf, 0xCu);
          }

          [(HDWorkoutLocationSmoother *)self _queue_deleteRoutesForTask:v4];
          [(HDWorkoutLocationSmoother *)self _finishSmoothingSampleWithTask:v4];
        }
      }

      else
      {
        didCompleteAllPendingSmoothingTasksHandler = [self didCompleteAllPendingSmoothingTasksHandler];
        v4 = didCompleteAllPendingSmoothingTasksHandler;
        if (didCompleteAllPendingSmoothingTasksHandler)
        {
          (*(didCompleteAllPendingSmoothingTasksHandler + 16))(didCompleteAllPendingSmoothingTasksHandler);
        }

        WeakRetained = objc_loadWeakRetained(self + 2);
        nanoSyncManager = [WeakRetained nanoSyncManager];
        [nanoSyncManager syncHealthDataWithOptions:0 reason:@"Workout route smoothed" completion:&__block_literal_global_73];

        v17 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
        v18 = objc_loadWeakRetained(self + 2);
        cloudSyncManager = [v18 cloudSyncManager];
        v20 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v17];
        [cloudSyncManager syncWithRequest:v20 reason:@"Workout route smoothed" completion:&__block_literal_global_395];
      }
    }
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if (isProtectedDataAvailable)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    queue = self->_queue;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__HDWorkoutLocationSmoother_profileDidBecomeReady___block_invoke;
    v30[3] = &unk_278613968;
    v30[4] = self;
    v10 = [HDMaintenanceOperation maintenanceOperationWithName:v8 queue:queue synchronousBlock:v30];

    v11 = objc_loadWeakRetained(&self->_profile);
    daemon = [v11 daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v10];
  }

  else if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(self->_queue);
  v14 = objc_loadWeakRetained(&self->_profile);
  daemon2 = [v14 daemon];
  behavior = [daemon2 behavior];
  isCompanionCapable = [behavior isCompanionCapable];

  if (isCompanionCapable)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[routes] Set up location observers", buf, 2u);
    }

    self->_isFirstLaunchAndNotYetSmoothed = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__associationsSyncedForWorkout_ name:@"HDAssociationEntityDidReceiveSyncObjectsNotification" object:0];

    v20 = objc_loadWeakRetained(&self->_profile);
    database2 = [v20 database];
    [database2 addProtectedDataObserver:self queue:self->_queue];

    v22 = objc_loadWeakRetained(&self->_profile);
    daemon3 = [v22 daemon];
    processStateManager = [daemon3 processStateManager];
    [processStateManager registerForegroundClientProcessObserver:self];
  }

  if ([(HDWorkoutLocationSmoother *)&self->super.isa _shouldObserveWorkouts])
  {
    v25 = objc_loadWeakRetained(&self->_profile);
    database3 = [v25 database];
    [database3 addProtectedDataObserver:self queue:self->_queue];

    v27 = objc_loadWeakRetained(&self->_profile);
    dataManager = [v27 dataManager];
    workoutType = [MEMORY[0x277CCD720] workoutType];
    [dataManager addObserver:self forDataType:workoutType];
  }
}

- (void)foregroundClientProcessesDidChange:(id)change previouslyForegroundBundleIdentifiers:(id)identifiers
{
  if ([change count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    isProtectedDataAvailable = [database isProtectedDataAvailable];

    if (isProtectedDataAvailable)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__HDWorkoutLocationSmoother_foregroundClientProcessesDidChange_previouslyForegroundBundleIdentifiers___block_invoke;
      block[3] = &unk_278613968;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

void __102__HDWorkoutLocationSmoother_foregroundClientProcessesDidChange_previouslyForegroundBundleIdentifiers___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 49) == 1)
  {
    v6 = v1;
    v7 = v2;
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Activity app launched, is first launch, and is unlocked.", v5, 2u);
    }

    [(HDWorkoutLocationSmoother *)*(a1 + 32) _queue_smoothAllUnsmoothedLocationSeries];
  }
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy)
  {
    if (self->_isFirstLaunchAndNotYetSmoothed)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        [(HDWorkoutLocationSmoother *)self _queue_smoothAllUnsmoothedLocationSeries];
        return;
      }

      v10 = 0;
      v7 = "[routes] Protected data available and isFirstLaunch; Attempting to smooth unsmoothed routes.";
      v8 = &v10;
    }

    else
    {
      if (!self->_needToCheckForLocationSeriesOnUnlock)
      {
        return;
      }

      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v9 = 0;
      v7 = "[routes] Protected data available; location samples were possibly added while locked; check for workout route.";
      v8 = &v9;
    }

    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_9;
  }
}

- (void)_queue_locationManagerDidSmoothRoutes:(void *)routes forTask:(void *)task error:
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  routesCopy = routes;
  taskCopy = task;
  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC330];
  v11 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v41 = 134217984;
    v42 = [v7 count];
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Successfully smoothed %lu routes", &v41, 0xCu);
  }

  if (routesCopy && (*(routesCopy + 9) & 1) != 0)
  {
    _HKInitializeLogging();
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = routesCopy[2];
      v15 = v13;
      uUID = [v14 UUID];
      v41 = 138543362;
      v42 = uUID;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[routes] Did finish smoothing locations after timeout for workout %{public}@, locations will be ignored.", &v41, 0xCu);
    }
  }

  else if (taskCopy)
  {
    domain = [taskCopy domain];
    v18 = [domain isEqualToString:@"CLSmootherErrorDomain"];

    if (v18 && ([taskCopy code] - 3) <= 1)
    {
      selfCopy2 = self;
      v20 = routesCopy;
      v21 = taskCopy;
      v22 = 1;
    }

    else
    {
      selfCopy2 = self;
      v20 = routesCopy;
      v21 = taskCopy;
      v22 = 0;
    }

    [(HDWorkoutLocationSmoother *)selfCopy2 _queue_smoothingDidFailForTask:v20 error:v21 shouldRetry:v22];
  }

  else
  {
    _HKInitializeLogging();
    v23 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (routesCopy)
      {
        v24 = routesCopy[2];
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      v26 = v23;
      uUID2 = [v25 UUID];
      v41 = 138543362;
      v42 = uUID2;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "[routes] Did finish smoothing locations for workout %{public}@", &v41, 0xCu);
    }

    if (![v7 count] && (!routesCopy || !routesCopy[4]))
    {
      _HKInitializeLogging();
      v28 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        if (routesCopy)
        {
          v29 = routesCopy[2];
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v31 = v28;
        uUID3 = [v30 UUID];
        v41 = 138543362;
        v42 = uUID3;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[routes] Smoothed route has 0 locations for workout %{public}@, deleting it", &v41, 0xCu);
      }
    }

    _HKInitializeLogging();
    v33 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      if (routesCopy)
      {
        v34 = routesCopy[2];
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      v36 = v33;
      uUID4 = [v35 UUID];
      uUIDString = [uUID4 UUIDString];
      v41 = 138543362;
      v42 = uUIDString;
      _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "[routes] Deleting old routes for workout %{public}@", &v41, 0xCu);
    }

    [(HDWorkoutLocationSmoother *)self _queue_deleteRoutesForTask:routesCopy];
    if (routesCopy)
    {
      v39 = routesCopy[5];
      if (v39)
      {
        v40 = v39;
        v40[2](v40, v7, routesCopy[7], 0);
      }
    }

    [(HDWorkoutLocationSmoother *)self _finishSmoothingSampleWithTask:routesCopy];
  }
}

- (void)_queue_smoothingDidFailForTask:(void *)task error:(int)error shouldRetry:
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  taskCopy = task;
  if (!self)
  {
    goto LABEL_37;
  }

  if (!error || v7 && *(v7 + 7) > 2uLL)
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277CCC330];
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
    {
      if (v7)
      {
        v26 = *(v7 + 2);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = v15;
      uUID = [v27 UUID];
      WeakRetained = objc_loadWeakRetained(self + 2);
      daemon = [WeakRetained daemon];
      behavior = [daemon behavior];
      isAppleWatch = [behavior isAppleWatch];
      v34 = @"Phone";
      *buf = 138544130;
      v45 = 2048;
      v44 = uUID;
      v46 = 3;
      if (isAppleWatch)
      {
        v34 = @"Watch";
      }

      v47 = 2112;
      v48 = v34;
      v49 = 2112;
      v50 = taskCopy;
      _os_log_fault_impl(&dword_228986000, v28, OS_LOG_TYPE_FAULT, "[routes] Couldn't smooth routes for workout %{public}@ after %ld attempts on device %@, marking as v2. Error: %@", buf, 0x2Au);

      if (!v7)
      {
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_29;
    }

    if (*(v7 + 4))
    {
      v41 = 0;
      v16 = [(HDWorkoutLocationSmoother *)self _queue_saveLocations:v7 forTask:0 activity:&v41 saveError:?];
      v17 = v41;
      _HKInitializeLogging();
      v18 = *v14;
      v19 = *v14;
      if (v16)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v7 + 2);
          v21 = v18;
          uUID2 = [v20 UUID];
          uUIDString = [uUID2 UUIDString];
          *buf = 138543362;
          v44 = uUIDString;
          _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[routes] Deleting old routes for workout %{public}@", buf, 0xCu);
        }

        [(HDWorkoutLocationSmoother *)self _queue_deleteRoutesForTask:v7];

        if (!*(v7 + 5))
        {
          goto LABEL_36;
        }

        v42 = v16;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v25 = *(v7 + 5);
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v17;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[routes] An error occurred marking routes as V2: %{public}@", buf, 0xCu);
        }

        v25 = *(v7 + 5);
        if (!v25)
        {
          goto LABEL_36;
        }

        v16 = 0;
        v24 = 0;
      }

LABEL_35:
      v40 = v25;
      v40[2](v40, v24, *(v7 + 7), taskCopy);

LABEL_36:
      [(HDWorkoutLocationSmoother *)self _finishSmoothingSampleWithTask:v7];

      goto LABEL_37;
    }

LABEL_29:
    _HKInitializeLogging();
    v35 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v36 = *(v7 + 2);
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      v38 = v35;
      uUID3 = [v37 UUID];
      *buf = 138543362;
      v44 = uUID3;
      _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "[routes] v2 route has 0 locations for workout %{public}@, deleting it", buf, 0xCu);
    }

    [(HDWorkoutLocationSmoother *)self _queue_deleteRoutesForTask:v7];
    v16 = 0;
    if (!v7)
    {
      goto LABEL_36;
    }

    v24 = 0;
    v25 = *(v7 + 5);
    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v10 = *(v7 + 2);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = v9;
    uUID4 = [v11 UUID];
    *buf = 138543618;
    v44 = uUID4;
    v45 = 2112;
    v46 = taskCopy;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Smoothing did fail for workout %{public}@ with error: %@", buf, 0x16u);
  }

  if (v7)
  {
    ++*(v7 + 7);
  }

  [(HDWorkoutLocationSmoother *)self _queue_startSmoothingCurrentTask];
LABEL_37:
}

- (void)_queue_deleteRoutesForTask:(uint64_t)task
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__68;
  v15 = __Block_byref_object_dispose__68;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDWorkoutLocationSmoother__queue_deleteRoutesForTask___block_invoke;
  v10[3] = &unk_27861D538;
  v10[4] = &v11;
  [v5 enumerateObjectsUsingBlock:v10];

  v6 = v12[5];
  v7 = &__block_literal_global_410;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __55__HDWorkoutLocationSmoother__deleteSamples_completion___block_invoke;
  v20 = &unk_278614160;
  taskCopy = task;
  v8 = v6;
  v22 = v8;
  v9 = &__block_literal_global_410;
  v23 = &__block_literal_global_410;
  HKDispatchAsyncOnGlobalConcurrentQueue();

  _Block_object_dispose(&v11, 8);
}

- (void)_finishSmoothingSampleWithTask:(void *)task
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = v3[15];
  }

  [v3 timeIntervalSinceNow];
  v6 = v5;
  if (v5 < -30.0)
  {
    v7 = v4;
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

    if (isAppleInternalInstall)
    {
      v10 = objc_alloc_init(MEMORY[0x277D10BC0]);
      [v10 setTitle:@"Route Smoothing Issue Detected"];
      0x403E000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Route Smoothing took over %f seconds to complete", 0x403E000000000000];
      [v10 setMessage:0x403E000000000000];

      [v10 setDefaultButton:@"Tap-to-Radar"];
      [v10 setCancelButton:@"Not Now"];
      objc_initWeak(&location, task);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__HDWorkoutLocationSmoother__showTTRAlertForTask_duration___block_invoke;
      v16[3] = &unk_27861D5B0;
      objc_copyWeak(v18, &location);
      v17 = v7;
      *&v18[1] = -v6;
      [v10 presentWithResponseHandler:v16];

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
    }
  }

  v12 = task[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDWorkoutLocationSmoother__finishSmoothingSampleWithTask___block_invoke;
  block[3] = &unk_278613920;
  block[4] = task;
  v13 = v4;
  v15 = v13;
  dispatch_async(v12, block);
}

void __52__HDWorkoutLocationSmoother__queue_smoothNextSample__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  v6 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes] Successfully synced smoothed route", &v7, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[routes] Failed to sync smoothed workout route with error: %{public}@", &v7, 0xCu);
  }
}

void __52__HDWorkoutLocationSmoother__queue_smoothNextSample__block_invoke_393(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v4 localizedDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to cloud sync after route smoothing: %{public}@", &v8, 0xCu);
    }
  }
}

- (void)_queue_startSmoothingCurrentTask
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(self + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
    }

    else
    {
      v4 = 0;
    }

    v9 = 134218242;
    v10 = v4;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[routes]: Starting smoothing task attempt %lu for Task: %{public}@ ", &v9, 0x16u);
  }

  [(HDWorkoutLocationSmoother *)self _submitWorkoutPerformanceTask:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskBegin" event:0 failure:?];
  v5 = *(self + 32);
  if (v5)
  {
    v6 = v5[12];
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  v8 = objc_msgSend_copy(v6);
  if (v5)
  {
    objc_storeStrong(v7 + 16, v8);
  }

  [(HDSmoothingTask *)v7 setSmoothingError:?];
  [(HDWorkoutLocationSmoother *)self _queue_smoothNextActivityForCurrentTask];
}

- (void)_submitWorkoutPerformanceTask:(void *)task event:(char)event failure:
{
  v7 = a2;
  taskCopy = task;
  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  if (v7)
  {
    v10 = v7[2];
  }

  else
  {
    v10 = 0;
  }

  metadata = [v10 metadata];
  v12 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE0E8]];
  v13 = [v9 initWithUUIDString:v12];

  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    daemon = [WeakRetained daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    if (v7)
    {
      v16 = v7[2];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    workoutActivityType = [v17 workoutActivityType];
    eventCopy = event;
    if (v7)
    {
      v19 = v7[2];
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    [v20 duration];
    v22 = v21;
    if (v7)
    {
      v23 = v7[2];
    }

    else
    {
      v23 = 0;
    }

    workoutActivities = [v23 workoutActivities];
    v25 = [workoutActivities count];
    if (v7)
    {
      v26 = *(v7 + 8);
      v27 = v7[4];
      v28 = v7[7];
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v28 = 0;
    }

    LOBYTE(v31) = eventCopy;
    LOBYTE(v30) = v26 & 1;
    [HDWorkoutUtilities submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:analyticsSubmissionCoordinator event:taskCopy sessionIdentifier:v13 activityType:workoutActivityType duration:v22 activityCount:v25 extendedMode:v30 totalLocations:v27 routeSmoothingRetryCount:v28 activityID:0 failure:v31];
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Unable to log analytics for workout, no sessionUUID not found", buf, 2u);
    }
  }
}

- (void)_queue_smoothNextActivityForCurrentTask
{
  v93[8] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 32);
    v3 = v2;
    if (v2)
    {
      v4 = v2[12];
      if (v4)
      {
      }

      else
      {
        v5 = v3[10];
        if (v5 < [v3[11] count])
        {
          v6 = v3[10];
          v7 = v3[11];
          v8 = [v7 objectAtIndexedSubscript:v6];

          inited = objc_initWeak(&location, v3);
          objc_initWeak(&from, self);
          v10 = inited;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v68 = __68__HDWorkoutLocationSmoother__queue_smoothNextActivityForCurrentTask__block_invoke;
          v69 = &unk_27861D498;
          objc_copyWeak(&v72, &from);
          objc_copyWeak(&v73, &location);
          v70 = v8;
          selfCopy = self;
          v11 = v70;
          v66 = v3;
          v64 = v67;
          _HKInitializeLogging();
          v12 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes] Smoothing route for activity %@", buf, 0xCu);
          }

          workoutConfiguration = [v11 workoutConfiguration];
          activityType = [workoutConfiguration activityType];

          if (v6)
          {
            startDate = [v11 startDate];
          }

          else
          {
            startDate = 0;
          }

          v15 = v3[11];
          if ([v15 count] - 1 <= v6)
          {
            endDate = 0;
          }

          else
          {
            endDate = [v11 endDate];
          }

          v17 = v66[3];
          v76 = 0;
          v18 = v17;
          v19 = startDate;
          v65 = endDate;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v20 = 0;
          v21 = [v18 countByEnumeratingWithState:&v82 objects:buf count:16];
          if (v21)
          {
            v22 = *v83;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v83 != v22)
                {
                  objc_enumerationMutation(v18);
                }

                v20 += [*(*(&v82 + 1) + 8 * i) count];
              }

              v21 = [v18 countByEnumeratingWithState:&v82 objects:buf count:16];
            }

            while (v21);
          }

          if (v19)
          {
            if (v65)
            {
              [v65 timeIntervalSinceDate:v19];
              if (v24 > 0.0 && v24 < v20)
              {
                v20 = vcvtad_u64_f64(v24);
              }
            }
          }

          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v26 = [standardUserDefaults hk_BOOLForKey:@"HDLocationSmootherSmoothWithOverMaxRouteLength" defaultValue:0];

          if ((v20 < 0x8CA1) | v26 & 1)
          {
            v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
            WeakRetained = objc_loadWeakRetained((self + 16));
            database = [WeakRetained database];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __73__HDWorkoutLocationSmoother__locationsForRoutes_startDate_endDate_error___block_invoke;
            v77[3] = &unk_27861B120;
            v78 = v18;
            v79 = v19;
            v80 = v65;
            v81 = v27;
            v30 = v27;
            v31 = [(HDHealthEntity *)HDLocationSeriesSampleEntity performReadTransactionWithHealthDatabase:database error:&v76 block:v77];

            if (v31)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            v33 = v32;
          }

          else
          {
            [MEMORY[0x277CCA9B8] hk_assignError:&v76 code:130 format:{@"Cannot smooth route with estimated length %ld", v20}];
            v33 = 0;
          }

          v63 = v76;
          if (v33)
          {
            v34 = objc_alloc(MEMORY[0x277CCA970]);
            startDate2 = [v11 startDate];
            endDate2 = [v11 endDate];
            v37 = [v34 initWithStartDate:startDate2 endDate:endDate2];

            v38 = v66[9];
            *&v82 = MEMORY[0x277D85DD0];
            *(&v82 + 1) = 3221225472;
            *&v83 = __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke;
            *(&v83 + 1) = &unk_27861D4C0;
            v60 = v37;
            *&v84 = v60;
            v62 = [v38 hk_map:&v82];
            if ([v33 count] || objc_msgSend(v62, "count"))
            {
              v39 = [v66 _newLocationSmootherWithWorkoutActivityType:activityType shouldReconstructEntireRoute:*(v66 + 8) timeIntervalsThatNeedPopulating:v62];
              objc_storeWeak((self + 56), v39);
              -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](self, v66, @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSmoothBegin", v11, [v33 count], 0);
              v40 = v66;
              [(HDWorkoutLocationSmoother *)self _queue_cancelTimeout];
              v40[9] = 0;

              v41 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(self + 8));
              v42 = *(self + 40);
              *(self + 40) = v41;

              objc_initWeak(v77, self);
              v43 = *(self + 40);
              v44 = dispatch_time(0, (*(v40 + 8) * 1000000000.0));
              dispatch_source_set_timer(v43, v44, 0xFFFFFFFFFFFFFFFFLL, 0);
              v45 = *(self + 40);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __73__HDWorkoutLocationSmoother__queue_scheduleSmoothingTimeoutTimerForTask___block_invoke;
              v87 = &unk_2786177F8;
              v46 = v40;
              v88 = v46;
              objc_copyWeak(&v89, v77);
              dispatch_source_set_event_handler(v45, buf);
              dispatch_resume(*(self + 40));
              objc_destroyWeak(&v89);

              objc_destroyWeak(v77);
              _HKInitializeLogging();
              v47 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v48 = v47;
                v49 = [v33 count];
                *buf = 138543874;
                *&buf[4] = v39;
                *&buf[12] = 2114;
                *&buf[14] = v11;
                *&buf[22] = 2048;
                v87 = v49;
                _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "[routes]: Calling smoother (%{public}@) for activity %{public}@ with %lu location points", buf, 0x20u);
              }

              objc_initWeak(v77, self);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_400;
              v87 = &unk_27861D510;
              objc_copyWeak(v93, v77);
              v50 = v39;
              v88 = v50;
              v89 = v11;
              v90 = v46;
              v51 = v33;
              v91 = v51;
              v92 = v64;
              [v50 smoothLocations:v51 batchType:0 handler:buf];

              objc_destroyWeak(v93);
              objc_destroyWeak(v77);
            }

            else
            {
              _HKInitializeLogging();
              v56 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v57 = v66[2];
                v58 = v56;
                uUID = [v57 UUID];
                *buf = 138412290;
                *&buf[4] = uUID;
                _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "[routes] No locations or activity intervals to smooth for route with UUID=%@:", buf, 0xCu);
              }

              v68(v64, 0, v63);
            }
          }

          else
          {
            _HKInitializeLogging();
            v52 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
            {
              v53 = v66[2];
              v54 = v52;
              uUID2 = [v53 UUID];
              *buf = 138412546;
              *&buf[4] = uUID2;
              *&buf[12] = 2114;
              *&buf[14] = v63;
              _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "[routes] Failed to fetch locations for route with UUID=%@: %{public}@", buf, 0x16u);
            }

            v68(v64, 0, v63);
          }

          objc_destroyWeak(&v73);
          objc_destroyWeak(&v72);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);

          goto LABEL_11;
        }
      }

      [(HDWorkoutLocationSmoother *)self _queue_finishTaskAttempt:v3];
    }

LABEL_11:
  }
}

- (void)_queue_finishTaskAttempt:(id *)attempt
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (attempt)
  {
    [(HDWorkoutLocationSmoother *)attempt _queue_cancelTimeout];
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v5 = *(v3 + 7);
        v6 = *(v3 + 13);
      }

      else
      {
        v5 = 0;
        v6 = 0;
      }

      v7 = v6;
      v8 = [v7 count];
      if (v3)
      {
        v9 = *(v3 + 12);
      }

      else
      {
        v9 = 0;
      }

      v13 = 134218754;
      v14 = v5;
      v15 = 2114;
      v16 = v3;
      v17 = 2048;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[routes]: Finished smoothing task attempt %lu for Task: %{public}@. Routes smoothed: %lu. Error: %{public}@", &v13, 0x2Au);
    }

    if (v3)
    {
      v10 = *(v3 + 12);
      if (v10)
      {
        v11 = v10;
        [(HDWorkoutLocationSmoother *)attempt _submitWorkoutPerformanceTask:v3 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskEnd" failure:1];
        [(HDWorkoutLocationSmoother *)attempt _queue_locationManagerDidSmoothRoutes:v3 forTask:v11 error:?];

        goto LABEL_13;
      }

      [(HDWorkoutLocationSmoother *)attempt _submitWorkoutPerformanceTask:v3 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskEnd" failure:0];
      v12 = *(v3 + 13);
    }

    else
    {
      [(HDWorkoutLocationSmoother *)attempt _submitWorkoutPerformanceTask:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskEnd" event:0 failure:?];
      v12 = 0;
    }

    [(HDWorkoutLocationSmoother *)attempt _queue_locationManagerDidSmoothRoutes:v12 forTask:v3 error:0];
  }

LABEL_13:
}

void __68__HDWorkoutLocationSmoother__queue_smoothNextActivityForCurrentTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = v8;
    if (v8[4])
    {
      v10 = [v8 unitTest_smootherCompletionHandlerDidReturn];
      v11 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10);
      }

      if (v6 || ![v5 count])
      {
        v12 = objc_loadWeakRetained((a1 + 56));
        [(HDSmoothingTask *)v12 setSmoothingError:v6];
      }

      else
      {
        v13 = objc_loadWeakRetained((a1 + 56));
        v14 = *(a1 + 32);
        v28 = 0;
        v12 = [(HDWorkoutLocationSmoother *)v9 _queue_saveLocations:v5 forTask:v13 activity:v14 saveError:&v28];
        v15 = v28;

        v16 = objc_loadWeakRetained((a1 + 56));
        v17 = v16;
        if (v12)
        {
          if (v16)
          {
            v18 = *(v16 + 13);
          }

          else
          {
            v18 = 0;
          }

          [v18 addObject:v12];
        }

        else
        {
          if (v16)
          {
            v19 = *(v16 + 12);
          }

          else
          {
            v19 = 0;
          }

          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v15;
          }

          v27 = v20;
          v21 = v19;
          v22 = objc_loadWeakRetained((a1 + 56));
          [(HDSmoothingTask *)v22 setSmoothingError:v27];

          *(*(a1 + 40) + 48) = 1;
          v17 = v15;
        }
      }

      v23 = objc_loadWeakRetained((a1 + 56));
      if (v23)
      {
        v24 = v23[12];
      }

      else
      {
        v24 = 0;
      }

      v25 = objc_loadWeakRetained((a1 + 56));
      v26 = v25;
      if (v24)
      {
        [(HDWorkoutLocationSmoother *)v9 _queue_finishTaskAttempt:v25];
      }

      else
      {
        if (v25)
        {
          ++v25[10];
        }

        [(HDWorkoutLocationSmoother *)v9 _queue_smoothNextActivityForCurrentTask];
      }
    }
  }
}

- (id)_queue_saveLocations:(void *)locations forTask:(void *)task activity:(uint64_t)activity saveError:
{
  v24 = a2;
  locationsCopy = locations;
  taskCopy = task;
  if (self)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__68;
    v34 = __Block_byref_object_dispose__68;
    v35 = 0;
    v11 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v11 setCacheScope:1];
    if (taskCopy)
    {
      -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](self, locationsCopy, @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveBegin", taskCopy, [v24 count], 0);
    }

    else
    {
      [(HDWorkoutLocationSmoother *)self _submitWorkoutPerformanceTask:locationsCopy event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveBegin" failure:0];
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[routes]: Taking write transaction to save route", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(self + 2);
    database = [WeakRetained database];
    v15 = +[HDDatabaseTransactionContext contextForWritingProtectedData];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__HDWorkoutLocationSmoother__queue_saveLocations_forTask_activity_saveError___block_invoke;
    v25[3] = &unk_27861D560;
    v28 = &v30;
    v25[4] = self;
    v16 = locationsCopy;
    v26 = v16;
    v17 = v24;
    v27 = v17;
    v18 = [database performTransactionWithContext:v15 error:activity block:v25 inaccessibilityHandler:0];

    if (taskCopy)
    {
      unitTest_didSaveSmoothedRouteForActivityAndTask = [self unitTest_didSaveSmoothedRouteForActivityAndTask];
      v20 = unitTest_didSaveSmoothedRouteForActivityAndTask;
      if (unitTest_didSaveSmoothedRouteForActivityAndTask)
      {
        (*(unitTest_didSaveSmoothedRouteForActivityAndTask + 16))(unitTest_didSaveSmoothedRouteForActivityAndTask, taskCopy, v16);
      }

      -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](self, v16, @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveEnd", taskCopy, [v17 count], v18 ^ 1);
    }

    else
    {
      [(HDWorkoutLocationSmoother *)self _submitWorkoutPerformanceTask:v16 event:@"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSaveEnd" failure:v18 ^ 1];
    }

    if (v18)
    {
      v21 = v31[5];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_submitWorkoutPerformanceTask:(void *)task event:(void *)event activity:(uint64_t)activity locations:(char)locations failure:
{
  v11 = a2;
  taskCopy = task;
  eventCopy = event;
  if (self && v11)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    metadata = [v11[2] metadata];
    v16 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE0E8]];
    v17 = [v14 initWithUUIDString:v16];

    if (v17)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      daemon = [WeakRetained daemon];
      analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
      workoutConfiguration = [eventCopy workoutConfiguration];
      activityType = [workoutConfiguration activityType];
      [eventCopy duration];
      v31 = v18;
      [v11[2] workoutActivities];
      v20 = v19 = locations;
      v30 = [v20 count];
      v21 = *(v11 + 8);
      v22 = v17;
      v23 = taskCopy;
      v24 = v11[7];
      uUID = [eventCopy UUID];
      LOBYTE(v29) = v19;
      v28 = v24;
      taskCopy = v23;
      v17 = v22;
      LOBYTE(v27) = v21;
      [HDWorkoutUtilities submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:analyticsSubmissionCoordinator event:taskCopy sessionIdentifier:v22 activityType:activityType duration:v31 activityCount:v30 extendedMode:v27 totalLocations:activity routeSmoothingRetryCount:v28 activityID:uUID failure:v29];
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Unable to log analytics for workout, no sessionUUID not found", buf, 2u);
      }
    }
  }
}

void __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_400(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 72));
    v9 = objc_loadWeakRetained(v8 + 7);
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      objc_storeWeak(v8 + 7, 0);
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *buf = 138543874;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        v28 = 2114;
        v29 = v6;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[routes]: Smoother (%{public}@) did finish for activity %{public}@ with error: %{public}@", buf, 0x20u);
      }

      -[HDWorkoutLocationSmoother _submitWorkoutPerformanceTask:event:activity:locations:failure:](v8, *(a1 + 48), @"HDWorkoutAnalyticsPerformanceEventNameRouteSmoothingTaskSmoothEnd", *(a1 + 40), [*(a1 + 56) count], v6 != 0);
      v16 = *(v8 + 1);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_401;
      v17[3] = &unk_27861D4E8;
      objc_copyWeak(&v23, (a1 + 72));
      v18 = *(a1 + 48);
      v19 = *(a1 + 40);
      v22 = *(a1 + 64);
      v20 = v5;
      v21 = v6;
      dispatch_async(v16, v17);

      objc_destroyWeak(&v23);
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v25 = v12;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[routes]: Previously timed out smoother (%{public}@) eventually returned, igorning result", buf, 0xCu);
      }
    }
  }
}

void __84__HDWorkoutLocationSmoother__queue_smoothActivity_activityIndex_forTask_completion___block_invoke_401(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 72));
    [(HDWorkoutLocationSmoother *)v3 _queue_clearSmoothingTimeoutTimerForTask:?];

    v4 = objc_loadWeakRetained((a1 + 72));
    v5 = [v4 unitTest_didSmoothActivityForTask];

    if (v5)
    {
      (*(v5 + 2))(v5, *(a1 + 40), *(a1 + 32));
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_queue_clearSmoothingTimeoutTimerForTask:(uint64_t)task
{
  v3 = a2;
  if (task)
  {
    v4 = v3;
    [(HDWorkoutLocationSmoother *)task _queue_cancelTimeout];
    v3 = v4;
    if (v4)
    {
      *(v4 + 9) = 0;
    }
  }
}

- (void)_queue_cancelTimeout
{
  v2 = *(self + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(self + 40);
    *(self + 40) = 0;
  }
}

void __56__HDWorkoutLocationSmoother__queue_deleteRoutesForTask___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 UUID];
  [v2 addObject:v3];
}

void __56__HDWorkoutLocationSmoother__queue_deleteRoutesForTask___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[routes] An error occurred deleting old route series %{public}@", &v6, 0xCu);
    }
  }
}

BOOL __77__HDWorkoutLocationSmoother__queue_saveLocations_forTask_activity_saveError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[routes]: Write transaction taken to save route series", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v32 = v7;
  if (!v6)
  {
    v24 = 0;
    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained((v6 + 16));
  v10 = [WeakRetained sourceManager];
  if (v8)
  {
    v11 = *(v8 + 2);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 _source];
  v14 = [v13 bundleIdentifier];
  v33 = 0;
  v15 = [v10 localSourceForBundleIdentifier:v14 copyIfNecessary:1 error:&v33];
  v31 = v33;

  if (v15)
  {
    v16 = objc_loadWeakRetained((v6 + 16));
    if (v8)
    {
      v17 = *(v8 + 2);
      v18 = *(v8 + 3);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = v18;
    v20 = v32;
    v21 = v17;
    v22 = v15;
    v23 = v16;
    objc_opt_self();
    v24 = [HDWorkoutLocationSmoother _saveNewRouteSeriesWithProfile:v23 sourceEntity:v22 forWorkout:v21 locations:v20 routes:v19 associateWithWorkout:1 error:a3];

    v25 = v31;
    goto LABEL_17;
  }

  _HKInitializeLogging();
  v26 = *MEMORY[0x277CCC330];
  v25 = v31;
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = v31;
    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "[routes] Could not fetch local device source. %{public}@", buf, 0xCu);
  }

  v23 = v31;
  if (!v23)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  v27 = v23;
  v24 = 0;
  *a3 = v23;
LABEL_17:

LABEL_18:
  v28 = *(*(a1 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v24;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

+ (id)_saveNewRouteSeriesWithProfile:(id)profile sourceEntity:(id)entity forWorkout:(id)workout locations:(id)locations routes:(id)routes associateWithWorkout:(BOOL)withWorkout error:(id *)error
{
  withWorkoutCopy = withWorkout;
  v73 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  workoutCopy = workout;
  v15 = MEMORY[0x277CBEB38];
  routesCopy = routes;
  locationsCopy = locations;
  entityCopy = entity;
  v18 = [v15 alloc];
  v63[0] = *MEMORY[0x277CCC520];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v64[0] = uUIDString;
  v63[1] = *MEMORY[0x277CCE108];
  v61 = workoutCopy;
  uUID2 = [workoutCopy UUID];
  uUIDString2 = [uUID2 UUIDString];
  v64[1] = uUIDString2;
  v63[2] = *MEMORY[0x277CCC528];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE5D0]];
  v64[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v25 = [v18 initWithDictionary:v24];

  v26 = profileCopy;
  v27 = v25;
  v28 = entityCopy;
  v29 = locationsCopy;
  v30 = routesCopy;
  objc_opt_self();
  v31 = [MEMORY[0x277CCDC70] _workoutRouteWithDevice:0 metadata:0];
  database = [v26 database];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __105__HDWorkoutLocationSmoother__createWorkoutRouteWithProfile_metadata_sourceEntity_locations_routes_error___block_invoke;
  v66 = &unk_2786199D0;
  v67 = v26;
  v68 = v31;
  v69 = v28;
  v70 = v29;
  v71 = v30;
  v72 = v27;
  v33 = v27;
  v34 = v30;
  v35 = v29;
  v36 = v28;
  v37 = v31;
  v38 = v26;
  [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database error:error block:buf];

  [v37 _setMetadata:v33];
  uUID3 = [v37 UUID];
  v40 = [(HDDataEntity *)HDLocationSeriesSampleEntity objectWithUUID:uUID3 encodingOptions:MEMORY[0x277CBEC10] profile:v38 error:error];

  if (!v40)
  {
    v50 = 0;
    v43 = v61;
    goto LABEL_17;
  }

  v41 = objc_alloc_init(MEMORY[0x277CBEB28]);
  uUID4 = [v40 UUID];
  [v41 hk_appendBytesWithUUID:uUID4];

  if (!withWorkoutCopy)
  {
    v46 = 0;
    v43 = v61;
    goto LABEL_11;
  }

  v43 = v61;
  uUID5 = [v61 UUID];
  v62 = 0;
  v45 = [HDAssociationEntity insertEntriesWithAssociationUUID:uUID5 objectUUIDsData:v41 type:0 behavior:0 destinationSubObjectReference:0 profile:v38 error:&v62];
  v46 = v62;

  if (v45)
  {
LABEL_11:
    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v52 = v51;
      uUID6 = [v40 UUID];
      uUID7 = [v43 UUID];
      *buf = 138543618;
      *&buf[4] = uUID6;
      *&buf[12] = 2114;
      *&buf[14] = uUID7;
      _os_log_impl(&dword_228986000, v52, OS_LOG_TYPE_DEFAULT, "[routes] Successfully saved and associated smoothed route -> %{public}@ for workout %{public}@", buf, 0x16u);
    }

    v50 = v40;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v47 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v56 = v47;
    uUID8 = [v40 UUID];
    uUID9 = [v61 UUID];
    *buf = 138543874;
    *&buf[4] = uUID8;
    *&buf[12] = 2114;
    *&buf[14] = uUID9;
    *&buf[22] = 2114;
    v66 = v46;
    _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "[routes] Failed to associate route %{public}@ with workout %{public}@ %{public}@", buf, 0x20u);
  }

  v48 = v46;
  v46 = v48;
  if (v48)
  {
    if (error)
    {
      v49 = v48;
      *error = v46;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v50 = 0;
LABEL_16:

LABEL_17:

  return v50;
}

void __60__HDWorkoutLocationSmoother__finishSmoothingSampleWithTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  [(HDWorkoutLocationSmoother *)*(a1 + 32) _queue_smoothNextSample];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  [v5 invalidate];
  v6 = *(a1 + 40);

  [(HDSmoothingTask *)v6 setTransaction:?];
}

uint64_t __105__HDWorkoutLocationSmoother__createWorkoutRouteWithProfile_metadata_sourceEntity_locations_routes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v51 = a2;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC330];
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes]: Creating new workout route series", buf, 2u);
  }

  v7 = [*(a1 + 32) dataManager];
  v65[0] = *(a1 + 40);
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
  v9 = *(a1 + 48);
  v59 = 0;
  v10 = [v7 insertDataObjects:v8 sourceEntity:v9 deviceEntity:0 sourceVersion:0 creationDate:&v59 error:CFAbsoluteTimeGetCurrent()];
  v11 = v59;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v62 = v11;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[routes] Error occurred while saving new series sample: %{public}@", buf, 0xCu);
    }

    v18 = v11;
    if (v18)
    {
      if (!a3)
      {
        goto LABEL_10;
      }

LABEL_15:
      v21 = v18;
      v19 = 0;
      *a3 = v18;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v12 = *(a1 + 56);
  if (!v12)
  {
    v50 = a3;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = *(a1 + 64);
    v23 = [v18 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v55;
      while (2)
      {
        v26 = 0;
        v27 = v11;
        do
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v18);
          }

          v28 = [*(*(&v54 + 1) + 8 * v26) UUID];
          v29 = [*(a1 + 40) UUID];
          v53 = v27;
          v30 = [HDLocationSeriesSampleEntity copyLocationDataFromSeriesIdentifier:v28 toSeriesIdentifier:v29 transaction:v51 error:&v53];
          v11 = v53;

          if (!v30)
          {
            _HKInitializeLogging();
            v36 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
            {
              v44 = *(a1 + 40);
              v45 = v36;
              v46 = [v44 UUID];
              *buf = 138543618;
              v62 = v46;
              v63 = 2114;
              v64 = v11;
              _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "[routes] Couldn't copy location data for series sample %{public}@: %{public}@", buf, 0x16u);
            }

            v22 = v11;
            if (v22)
            {
              if (v50)
              {
                v37 = v22;
                *v50 = v22;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            goto LABEL_43;
          }

          ++v26;
          v27 = v11;
        }

        while (v24 != v26);
        v24 = [v18 countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v16 = v11;
    a3 = v50;
    v5 = MEMORY[0x277CCC330];
    goto LABEL_27;
  }

  v13 = [*(a1 + 40) UUID];
  v14 = *(a1 + 32);
  v58 = v11;
  v15 = [HDLocationSeriesSampleEntity insertLocationData:v12 seriesIdentifier:v13 assertion:0 profile:v14 error:&v58];
  v16 = v58;

  if (v15)
  {
LABEL_27:
    v31 = [*(a1 + 40) sampleType];
    v32 = [objc_msgSend(v31 "dataObjectClass")];

    v33 = [*(a1 + 40) UUID];
    v34 = *(a1 + 72);
    v35 = *(a1 + 32);
    v52 = v16;
    v18 = [v32 freezeSeriesWithIdentifier:v33 metadata:v34 profile:v35 error:&v52];
    v22 = v52;

    if (v18)
    {
      v19 = 1;
      goto LABEL_44;
    }

    _HKInitializeLogging();
    v38 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v47 = *(a1 + 40);
      v48 = v38;
      v49 = [v47 UUID];
      *buf = 138543618;
      v62 = v49;
      v63 = 2114;
      v64 = v22;
      _os_log_error_impl(&dword_228986000, v48, OS_LOG_TYPE_ERROR, "[routes] Couldn't freeze series %{public}@: %{public}@", buf, 0x16u);
    }

    v22 = v22;
    if (v22)
    {
      if (a3)
      {
        v39 = v22;
        *a3 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
LABEL_43:
    v19 = 0;
    goto LABEL_44;
  }

  _HKInitializeLogging();
  v17 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    v41 = *(a1 + 40);
    v42 = v17;
    v43 = [v41 UUID];
    *buf = 138543618;
    v62 = v43;
    v63 = 2114;
    v64 = v16;
    _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "[routes] Couldn't insert location data for series sample %{public}@: %{public}@", buf, 0x16u);
  }

  v18 = v16;
  if (!v18)
  {
LABEL_17:
    v22 = 0;
    goto LABEL_43;
  }

  if (a3)
  {
    goto LABEL_15;
  }

LABEL_10:
  _HKLogDroppedError();
  v19 = 0;
LABEL_16:
  v22 = v18;
LABEL_44:

  return v19;
}

void __55__HDWorkoutLocationSmoother__deleteSamples_completion___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDDataDeletionConfiguration);
  [(HDDataDeletionConfiguration *)v2 setNotifyObservers:0];
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  v4 = [WeakRetained dataManager];
  v5 = a1[5];
  v10 = 0;
  v6 = [v4 deleteObjectsWithUUIDCollection:v5 configuration:v2 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      *buf = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[routes] Error deleting route samples <%{public}@>, error=%{public}@", buf, 0x16u);
    }
  }

  (*(a1[6] + 16))();
}

uint64_t __73__HDWorkoutLocationSmoother__locationsForRoutes_startDate_endDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v34 = [v33 databaseForEntityClass:objc_opt_class()];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v29 = a3;
    v32 = *v40;
    v7 = off_27860E000;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 UUID];
        v11 = HDDataEntityPredicateForDataUUID();

        v12 = v7[451];
        v38 = 0;
        v13 = [(__objc2_class *)v12 anyInDatabase:v34 predicate:v11 error:&v38];
        v14 = v38;
        v15 = v14;
        if (!v13)
        {
          if (v14)
          {
            if (v29)
            {
              v25 = v14;
              *v29 = v15;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          else
          {
            v26 = MEMORY[0x277CCA9B8];
            v27 = [v9 UUID];
            [v26 hk_assignError:v29 code:100 format:{@"Did not find the expected route sample with UUID=%@", v27}];
          }

          v24 = 0;
          goto LABEL_26;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v37 = 0;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __73__HDWorkoutLocationSmoother__locationsForRoutes_startDate_endDate_error___block_invoke_2;
        v35[3] = &unk_27861D588;
        v36 = *(a1 + 56);
        v18 = [v13 enumerateLocationDataInTransaction:v33 startDate:v16 endDate:v17 error:&v37 handler:v35];
        v19 = v37;
        v20 = v19;
        if ((v18 & 1) == 0)
        {
          v21 = v19;
          v22 = v21;
          v30 = v21 == 0;
          if (v21)
          {
            if (v29)
            {
              v23 = v21;
              *v29 = v22;
            }

            else
            {
              _HKLogDroppedError();
            }

            v7 = off_27860E000;
          }
        }

        if (!v18)
        {
          v24 = v30;
          goto LABEL_26;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      v24 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_26:

  return v24 & 1;
}

void __73__HDWorkoutLocationSmoother__queue_scheduleSmoothingTimeoutTimerForTask___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v3 = v3[2];
    }

    v4 = v3;
    v5 = [v4 UUID];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = *(v7 + 64);
    }

    v11 = 138543618;
    v12 = v5;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[routes] Smoothing did timeout for workout %{public}@ after %f sec", &v11, 0x16u);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:103 description:@"Smoothing task timed out"];
  v9 = *(a1 + 32);
  if (v9)
  {
    *(v9 + 9) = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_storeWeak(WeakRetained + 7, 0);
  [(HDWorkoutLocationSmoother *)WeakRetained _queue_smoothingDidFailForTask:v8 error:1 shouldRetry:?];
}

void __59__HDWorkoutLocationSmoother__showTTRAlertForTask_duration___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  v13 = v7;
  if (WeakRetained)
  {
    if (a3 == 1)
    {
      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = WeakRetained;
        _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Smoothing TTR alert: 'Not Now' button pressed", buf, 0xCu);
      }
    }

    else if (!a3)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = WeakRetained;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Route smoothing TTR alert: 'Tap-to-Radar' button pressed", buf, 0xCu);
      }

      v37 = MEMORY[0x277CCACA8];
      if (v12)
      {
        v15 = *(v12 + 2);
      }

      else
      {
        v15 = 0;
      }

      v38 = v11;
      v35 = v15;
      v36 = [v35 device];
      if (v12)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [*(v12 + 2) UUID];
        v18 = *(v12 + 4);
        v19 = *(v12 + 14);
        v20 = *(v12 + 15);
        v21 = *(v12 + 7);
        v22 = *(v12 + 12);
        v23 = *(v12 + 16);
        v24 = v20;
        v25 = v19;
        v26 = [v16 stringWithFormat:@"<Workout UUID=%@ \ntotalLocations=%tu \nTask Creation Date=%@ \nTask Start Date=%@ \nAttempts=%lu \nPrevious Attempts Error=%@ \nError=%@>", v17, v18, v25, v24, v21, v23, v22];

        v27 = *(v12 + 2);
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      v28 = [v27 _detailedDescriptionString];
      v29 = [v37 stringWithFormat:@"TimeOut: %f seconds \nTaskDuration: %f seconds \n\nDevice: %@ \n\nTask:\n%@ \n\nWorkout: %@", 0x403E000000000000, v10, v36, v26, v28];

      v30 = MEMORY[0x277CBEBC0];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Route Smoothing took %f seconds to complete", v10];
      v32 = [v30 hk_tapToHealthRadarURLForComponent:1855988 title:v31 description:v29 classification:4 reproducibility:6 keywords:0 autoDiagnostics:3 attachments:0];

      v33 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v33 openURL:v32 configuration:0 completionHandler:&__block_literal_global_461_0];

      v11 = v38;
    }
  }
}

void __85__HDWorkoutLocationSmoother__handleAlertResponse_selectedButton_task_duration_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Could not open Tap-to-Radar URL %{public}@", &v6, 0xCu);
    }
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HDWorkoutLocationSmoother_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __49__HDWorkoutLocationSmoother_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "Workout Sample saved. Attempting to smooth all unsmoothed location series samples.", v9, 2u);
  }

  v3 = [*(a1 + 32) unitTest_wilTriggerSmoothing];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = [WeakRetained database];
  v7 = [v6 isProtectedDataAvailable];

  v8 = *(a1 + 32);
  if (v7)
  {
    [(HDWorkoutLocationSmoother *)v8 _queue_smoothAllUnsmoothedLocationSeries];
  }

  else
  {
    *(v8 + 48) = 1;
  }
}

- (void)smoothRouteWithWorkoutUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = HDDataEntityPredicateForDataUUID();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v29 = 0;
  v11 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v8 healthDatabase:database error:&v29];
  v12 = v29;

  if (v11)
  {
    v13 = [MEMORY[0x277CCD8D8] dataTypeWithCode:102];
    v14 = objc_loadWeakRetained(&self->_profile);
    v15 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject([v11 persistentID]);
    v28 = v12;
    v16 = [(HDSampleEntity *)HDSeriesSampleEntity samplesWithType:v13 profile:v14 encodingOptions:0 predicate:v15 limit:0 anchor:0 error:&v28];
    v17 = v28;

    if (v16)
    {
      uUIDString = [dCopy UUIDString];
      v27 = v17;
      v19 = [(HDWorkoutLocationSmoother *)&self->super.isa _workoutWithUUIDString:uUIDString error:&v27];
      v20 = v27;

      if (v19)
      {
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__HDWorkoutLocationSmoother_smoothRouteWithWorkoutUUID_completion___block_invoke;
        block[3] = &unk_278613680;
        v23 = v16;
        v19 = v19;
        v24 = v19;
        selfCopy = self;
        v26 = completionCopy;
        dispatch_sync(queue, block);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, v20);
      }
    }

    else
    {
      v20 = v17;
      v19 = v20;
      if (!v20)
      {
        v19 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Object not found"];
      }

      (*(completionCopy + 2))(completionCopy, 0, v19);
    }
  }

  else
  {
    v20 = v12;
    v13 = v20;
    if (!v20)
    {
      v13 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Object not found"];
    }

    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __67__HDWorkoutLocationSmoother_smoothRouteWithWorkoutUUID_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = [HDSmoothingTask alloc];
        v8 = *(a1 + 40);
        v25 = v6;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
        v11 = [WeakRetained daemon];
        v12 = [v11 analyticsSubmissionCoordinator];
        v13 = [(HDSmoothingTask *)v7 _initWithWorkout:v8 routes:v9 analyticsSubmissionCoordinator:v12];

        [*(*(a1 + 48) + 24) addObject:v13];
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  if ([*(*(a1 + 48) + 24) count])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__HDWorkoutLocationSmoother_smoothRouteWithWorkoutUUID_completion___block_invoke_2;
    v19[3] = &unk_278613658;
    v20 = *(a1 + 56);
    [*(a1 + 48) setDidCompleteAllPendingSmoothingTasksHandler:v19];
    v14 = objc_loadWeakRetained((*(a1 + 48) + 16));
    v15 = [v14 database];
    v16 = [v15 isProtectedDataAvailable];

    v17 = *(a1 + 48);
    if (v16)
    {
      [(HDWorkoutLocationSmoother *)v17 _queue_smoothNextSample];
    }

    else
    {
      *(v17 + 48) = 1;
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)unitTest_smoothRouteForTask:(id)task completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HDWorkoutLocationSmoother_unitTest_smoothRouteForTask_completion___block_invoke;
  block[3] = &unk_278616D18;
  selfCopy = self;
  v14 = completionCopy;
  v12 = taskCopy;
  v9 = completionCopy;
  v10 = taskCopy;
  dispatch_async(queue, block);
}

void __68__HDWorkoutLocationSmoother_unitTest_smoothRouteForTask_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[3];
    }

    v5 = v4;
    v6 = v2;
    v7 = [v5 firstObject];
    v8 = [v7 UUID];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[routes] Will smooth sample %@", &v12, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9 && (*(v9 + 64) = 0x3FC999999999999ALL, (v10 = *(a1 + 32)) != 0))
  {
    objc_setProperty_nonatomic_copy(v10, v3, *(a1 + 48), 40);
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  [*(*(a1 + 40) + 24) addObject:v11];
  [(HDWorkoutLocationSmoother *)*(a1 + 40) _queue_smoothNextSample];
}

@end