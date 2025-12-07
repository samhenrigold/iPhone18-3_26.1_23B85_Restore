@interface HDWorkoutCondenser
+ (BOOL)_condenseAndUpdateWorkout:(void *)workout configuration:(void *)configuration error:;
+ (BOOL)coalesceCumulativeDatumsInDatumsCollection:(id)collection;
+ (BOOL)coalesceHeartRateDatumsInDatumsCollection:(id)collection;
+ (id)_insertValuesForSeries:(void *)series quantityType:(void *)type startTime:(void *)time values:(void *)values provenance:(void *)provenance configuration:(void *)configuration transaction:(double)transaction countOut:(uint64_t)self0 error:;
+ (id)_workoutEntitiesRequiringCondensationWithProfile:(uint64_t)profile limit:(char)limit allowRecondensation:(void *)recondensation analyticsAccumulator:(uint64_t)accumulator error:;
+ (id)condensableQuantityTypes;
+ (id)seriesSyncIdentifierForEntity:(id)entity workout:(id)workout transaction:(id)transaction error:(id *)error;
+ (uint64_t)_condenseSamplesWithQuantityType:(void *)type workout:(void *)workout entity:(void *)entity configuration:(void *)configuration transaction:(double *)transaction error:;
+ (uint64_t)_deleteSamplesWithUUIDData:(void *)data configuration:(uint64_t)configuration error:;
+ (uint64_t)_finishSeries:(void *)series quantityType:(void *)type baseMetadata:(void *)metadata workout:(void *)workout UUIDDataToDelete:(void *)delete configuration:(void *)configuration transaction:(uint64_t)transaction error:;
+ (void)_predicateForFirstPartyWorkoutSources:(uint64_t)sources error:;
+ (void)_workoutEntitiesRequiringCondensationWithPredicate:(uint64_t)predicate limit:(void *)limit orderingTerms:(void *)terms transaction:(uint64_t)transaction error:;
- (BOOL)condenseWorkout:(id)workout error:(id *)error;
- (HDWorkoutCondenser)initWithProfile:(id)profile;
- (id)condensableWorkoutsWithError:(id *)error;
- (id)condensedWorkoutsWithError:(id *)error;
- (void)_performPeriodicActivityWithBatchLimit:(void *)limit completion:;
- (void)condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion;
- (void)dealloc;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
@end

@implementation HDWorkoutCondenser

- (HDWorkoutCondenser)initWithProfile:(id)profile
{
  v40 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v35.receiver = self;
  v35.super_class = HDWorkoutCondenser;
  v5 = [(HDWorkoutCondenser *)&v35 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    *&v6->_minimumSeriesSize = xmmword_2291816A0;
    v6->_deletedSamplesThreshold = 30000;
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    features = [behavior features];
    workoutCondensationOnLocking = [features workoutCondensationOnLocking];

    if (workoutCondensationOnLocking)
    {
      objc_initWeak(&location, v6);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __38__HDWorkoutCondenser_initWithProfile___block_invoke;
      aBlock[3] = &unk_278624EB0;
      objc_copyWeak(&v33, &location);
      v14 = _Block_copy(aBlock);
      v15 = objc_alloc(MEMORY[0x277D10B10]);
      v16 = HKLogCondenser();
      daemon2 = [profileCopy daemon];
      systemScheduler = [daemon2 systemScheduler];
      v19 = [v15 initWithName:@"com.apple.healthd.HDWorkoutCondenser-activity" loggingCategory:v16 scheduler:systemScheduler handler:v14 condition:0];
      repeatingBackgroundTask = v6->_repeatingBackgroundTask;
      v6->_repeatingBackgroundTask = v19;

      getRequest = [(HDRepeatingBackgroundTask *)v6->_repeatingBackgroundTask getRequest];
      if (!getRequest)
      {
        getRequest = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:@"com.apple.healthd.HDWorkoutCondenser-activity"];
        [getRequest setRequiresProtectionClass:2];
        [getRequest setInterval:14400.0];
        [getRequest interval];
        [getRequest setMinDurationBetweenInstances:v22 * 0.8];
        [getRequest setPriority:2];
        [getRequest setRequiresNetworkConnectivity:1];
        v23 = v6->_repeatingBackgroundTask;
        v31 = 0;
        [(HDRepeatingBackgroundTask *)v23 submitRequest:getRequest error:&v31];
        v24 = v31;
        if (v24)
        {
          _HKInitializeLogging();
          v25 = HKLogCondenser();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v37 = v6;
            v38 = 2114;
            v39 = v24;
            _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Unable to submitRequest: %{public}@", buf, 0x16u);
          }
        }
      }

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = [HDPeriodicActivity alloc];
      v27 = HKLogCondenser();
      v28 = [(HDPeriodicActivity *)v26 initWithProfile:profileCopy name:@"com.apple.healthd.HDWorkoutCondenser-activity" interval:v6 delegate:v27 loggingCategory:*MEMORY[0x277D86298]];
      periodicActivity = v6->_periodicActivity;
      v6->_periodicActivity = v28;
    }
  }

  return v6;
}

void __38__HDWorkoutCondenser_initWithProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__HDWorkoutCondenser_initWithProfile___block_invoke_2;
  v9[3] = &unk_278624E88;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = v6;
  v10 = v8;
  [(HDWorkoutCondenser *)WeakRetained _performPeriodicActivityWithBatchLimit:v9 completion:?];

  objc_destroyWeak(&v11);
}

void __38__HDWorkoutCondenser_initWithProfile___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HDStringFromPeriodicActivityResult(a2);
  _HKInitializeLogging();
  v7 = HKLogCondenser();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogCondenser();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v11 = 138543874;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: HDRepeatingBackgroundTask performed condensing: %@ : %@", &v11, 0x20u);
    }
  }

  if (a2 <= 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_performPeriodicActivityWithBatchLimit:(void *)limit completion:
{
  limitCopy = limit;
  if (self)
  {
    dispatch_assert_queue_not_V2(*(self + 8));
    v6 = *(self + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_sync(v6, block);
    _HKInitializeLogging();
    v7 = HKLogCondenser();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

    if (v8)
    {
      v9 = HKLogCondenser();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Maintenance operation enqueued", buf, 2u);
      }
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_400;
    v14[3] = &unk_27862E460;
    v14[4] = self;
    v16 = a2;
    v15 = limitCopy;
    v10 = [HDMaintenanceOperation maintenanceOperationWithName:@"Workout Condensing" asynchronousBlock:v14];
    WeakRetained = objc_loadWeakRetained((self + 64));
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v10];
  }
}

- (void)dealloc
{
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDWorkoutCondenser;
  [(HDWorkoutCondenser *)&v3 dealloc];
}

- (void)condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDWorkoutCondenser_condenseWorkoutsForReason_workoutBatchLimit_completion___block_invoke;
  v11[3] = &unk_27862E280;
  limitCopy = limit;
  reasonCopy = reason;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

void __77__HDWorkoutCondenser_condenseWorkoutsForReason_workoutBatchLimit_completion___block_invoke(void *a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = a1[6];
  v4 = HKStringFromWorkoutCondenserReason();
  v76 = [v2 stringWithFormat:@"Condense workouts (%ld, %@)", v3, v4];

  _HKInitializeLogging();
  v5 = HKLogCondenser();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v76;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v77 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1[4] activityName:@"condenseWorkouts"];
  v7 = objc_alloc_init(_HDWorkoutCondenserAnalyticsAccumulator);
  v8 = a1[4];
  v9 = a1[6];
  v79 = 0;
  v10 = v7;
  if (v8)
  {
    dispatch_assert_queue_V2(*(v8 + 8));
    WeakRetained = objc_loadWeakRetained((v8 + 64));
    v12 = [WeakRetained daemon];
    v13 = [v12 behavior];
    v14 = [v13 performsWorkoutCondensation];

    if ((v14 & 1) == 0)
    {
      _HKInitializeLogging();
      v31 = HKLogCondenser();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);

      if (v32)
      {
        v33 = HKLogCondenser();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_INFO, "Workout condenser is not enabled", buf, 2u);
        }
      }

      v30 = 1;
      goto LABEL_15;
    }

    v15 = *(v8 + 24);
    v16 = *(v8 + 24);
    *(v8 + 24) = 0;

    if (!v15)
    {
      v17 = objc_loadWeakRetained((v8 + 64));
      v18 = [v17 database];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v80[0] = 0;
      v15 = [v18 takeAccessibilityAssertionWithOwnerIdentifier:v20 timeout:v80 error:300.0];
      v21 = v80[0];

      if (!v15)
      {
        _HKInitializeLogging();
        v71 = HKLogCondenser();
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_INFO);

        if (v72)
        {
          v73 = HKLogCondenser();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_228986000, v73, OS_LOG_TYPE_INFO, "Workout condenser cannot run without access to protected data", buf, 2u);
          }
        }

        v74 = v21;
        v24 = v74;
        if (v74)
        {
          v75 = v74;
          v79 = v24;
        }

        v29 = 0;
        goto LABEL_9;
      }
    }

    v22 = v10;
    v23 = *(v8 + 8);
    v24 = v15;
    dispatch_assert_queue_V2(v23);
    v25 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v25 setCacheScope:1];
    [(HDMutableDatabaseTransactionContext *)v25 addAccessibilityAssertion:v24];

    v26 = objc_loadWeakRetained((v8 + 64));
    v27 = [v26 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __110__HDWorkoutCondenser__queue_condenseWorkoutsWithAccessibilityAssertion_batchLimit_analyticsAccumulator_error___block_invoke;
    v83 = &unk_27862E2F8;
    v84 = v8;
    v86 = v9;
    v28 = v22;
    v85 = v28;
    v29 = [v27 performWithTransactionContext:v25 error:&v79 block:buf];

    [v24 invalidate];
LABEL_9:
    buf[0] = v29;

    v30 = buf[0];
LABEL_15:
    v78 = v30;
    goto LABEL_16;
  }

  v78 = 0;
LABEL_16:

  v34 = v79;
  [v77 invalidate];
  v35 = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v36 = HKLogCondenser();
  v37 = v36;
  v38 = v35 - Current;
  if (v78)
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v76;
      *&buf[12] = 2048;
      *&buf[14] = v38;
      _os_log_impl(&dword_228986000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ finished in %0.4f s, Success", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    *&buf[4] = v76;
    *&buf[12] = 2048;
    *&buf[14] = v38;
    *&buf[22] = 2114;
    v83 = v34;
    _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@ finished in %0.4f s, Error: %{public}@", buf, 0x20u);
  }

  v39 = a1[4];
  v41 = a1[6];
  v40 = a1[7];
  v42 = v10;
  v43 = v34;
  if (v39)
  {
    dispatch_assert_queue_V2(*(v39 + 8));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v83 = __Block_byref_object_copy__194;
    v84 = __Block_byref_object_dispose__194;
    v85 = 0;
    v44 = objc_loadWeakRetained((v39 + 64));
    v45 = [v44 database];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __112__HDWorkoutCondenser__queue_submitAnalyticEventForReason_batchSize_success_duration_analyticsAccumulator_error___block_invoke;
    v80[3] = &unk_278618610;
    v80[4] = buf;
    v81 = 0;
    v46 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v45 error:&v81 block:v80];
    v47 = v81;

    if (v46)
    {
      v48 = [*(*&buf[8] + 40) integerValue];
      v49 = objc_loadWeakRetained((v39 + 64));
      v50 = [v49 daemon];
      v51 = [v50 analyticsSubmissionCoordinator];
      v52 = v51;
      if (v42)
      {
        workoutsToCondense = v42->_workoutsToCondense;
        workoutsToRecondense = v42->_workoutsToRecondense;
        condensedWorkouts = v42->_condensedWorkouts;
        processedWorkouts = v42->_processedWorkouts;
        createdSeries = v42->_createdSeries;
        deletedSamples = v42->_deletedSamples;
      }

      else
      {
        createdSeries = 0;
        condensedWorkouts = 0;
        workoutsToCondense = 0;
        workoutsToRecondense = 0;
        processedWorkouts = 0;
        deletedSamples = 0;
      }

      [v51 workout_reportWorkoutCondenserEventWithReason:v40 batchSize:v41 hasWatchSource:v48 > 0 duration:v78 success:v43 error:workoutsToCondense workoutsToCondense:v38 workoutsToRecondense:workoutsToRecondense condensedWorkouts:condensedWorkouts processedWorkouts:processedWorkouts createdSeries:createdSeries deletedSamples:deletedSamples];
    }

    else
    {
      _HKInitializeLogging();
      v49 = HKLogCondenser();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v87 = 138543362;
        v88 = v47;
        _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "Unable to determine if profile has any watch sources: %{public}@", v87, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v59 = a1[4];
  v60 = a1[7];
  v61 = v43;
  if (v59)
  {
    dispatch_assert_queue_V2(*(v59 + 8));
    if (v60)
    {
      v62 = *(v59 + 16);
      if (v78)
      {
        [v62 didPerformActivityWithResult:0 minimumRetryInterval:0 activityStartDate:0 error:*MEMORY[0x277D86298]];
      }

      else
      {
        [v62 didPerformActivityWithResult:2 minimumRetryInterval:0 activityStartDate:v61 error:0.0];
      }
    }
  }

  v63 = a1[4];
  v64 = v61;
  if (v63)
  {
    dispatch_assert_queue_V2(*(v63 + 8));
    if ([v64 hk_isErrorInDomain:*MEMORY[0x277CCBDB0] code:6])
    {
      _HKInitializeLogging();
      v65 = HKLogCondenser();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = [v64 description];
        *buf = 138543362;
        *&buf[4] = v66;
        _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "Skipping WorkoutCondenser TTR for error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v67 = [HDTTRPromptController alloc];
      v68 = objc_loadWeakRetained((v63 + 64));
      v69 = HKLogCondenser();
      v65 = [(HDTTRPromptController *)v67 initWithProfile:v68 domainName:@"HDWorkoutCondenser" loggingCategory:v69];

      [v65 setMinimumPromptInterval:604800.0];
      [v65 setMaximumErrorCount:10];
      [v65 setNotificationTitle:@"Health Unable to Compress Older Workouts"];
      [v65 setNotificationMessage:@"Health has run into a number of errors while attempting to compress your older workouts"];
      [v65 setRadarTitle:@"[Database Efficiency] Workout Condenser Problem Detected"];
      [v65 setRadarDescription:@"The workout condenser has failed multiple times since last success"];
      v70 = HKStringFromWorkoutCondenserReason();
      [v65 promptIfRequiredForReason:v70 success:v78 error:v64];
    }
  }

  (*(a1[5] + 16))();
}

- (BOOL)condenseWorkout:(id)workout error:(id *)error
{
  workoutCopy = workout;
  v7 = objc_alloc_init(_HDWorkoutCondenserAnalyticsAccumulator);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [_HDWorkoutCondensationConfiguration configurationWithProfile:self->_minimumSeriesSize minimumSeriesSize:self->_maximumSeriesSize maximumSeriesSize:self->_deletedSamplesThreshold deletedSampleThreshold:v7 analyticsAccumulator:error error:?];

  if (v9)
  {
    v10 = objc_loadWeakRetained(v9 + 1);
    daemon = [v10 daemon];
    behavior = [daemon behavior];
    features = [behavior features];
    condenseFirstPartyiOSWorkouts = [features condenseFirstPartyiOSWorkouts];

    v14 = objc_loadWeakRetained(&self->_profile);
    v15 = [HDWorkoutCondenser _predicateForFirstPartyWorkoutSources:v14 error:error];

    v16 = MEMORY[0x277D10B70];
    uUID = [workoutCopy UUID];
    v18 = HDDataEntityPredicateForDataUUID();
    v19 = [v16 compoundPredicateWithPredicate:v18 otherPredicate:v15];

    v20 = objc_loadWeakRetained(v9 + 1);
    database = [v20 database];
    v35 = 0;
    v22 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v19 healthDatabase:database error:&v35];
    v23 = v35;

    if (v22)
    {
      v24 = [HDWorkoutCondenser _condenseAndUpdateWorkout:v22 configuration:v9 error:error];
LABEL_15:

      goto LABEL_16;
    }

    if (v23)
    {
      v23 = v23;
    }

    else
    {
      v25 = @"Unable to locate 1st Party Apple Watch workout entity for condensation with workout with UUID %@ from source %@";
      if (condenseFirstPartyiOSWorkouts)
      {
        v25 = @"Unable to locate 1st Party Apple Watch or 1st party fitnessAppSource workout entity for condensation with workout with UUID %@ from source %@";
      }

      v31 = MEMORY[0x277CCA9B8];
      v33 = v25;
      uUID2 = [workoutCopy UUID];
      uUIDString = [uUID2 UUIDString];
      sourceRevision = [workoutCopy sourceRevision];
      v34 = [v31 hk_error:100 format:{v33, uUIDString, sourceRevision}];

      v23 = v34;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    if (error)
    {
      v29 = v23;
      *error = v23;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  v24 = 0;
LABEL_16:

  return v24;
}

+ (void)_predicateForFirstPartyWorkoutSources:(uint64_t)sources error:
{
  v4 = a2;
  objc_opt_self();
  daemon = [v4 daemon];
  behavior = [daemon behavior];
  features = [behavior features];
  condenseFirstPartyiOSWorkouts = [features condenseFirstPartyiOSWorkouts];

  v9 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
  v10 = v4;
  objc_opt_self();
  sourceManager = [v10 sourceManager];

  v12 = [sourceManager allSourcesForBundleIdentifier:*MEMORY[0x277CCE340] error:sources];

  if ([v12 count])
  {
    v13 = HDDataEntityPredicateForSourceEntitySet(7, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v9 otherPredicate:v13];
  v15 = v14;
  if (condenseFirstPartyiOSWorkouts)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;

  return v16;
}

+ (BOOL)_condenseAndUpdateWorkout:(void *)workout configuration:(void *)configuration error:
{
  v71[13] = *MEMORY[0x277D85DE8];
  v6 = a2;
  workoutCopy = workout;
  objc_opt_self();
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
  if (workoutCopy)
  {
    WeakRetained = objc_loadWeakRetained(workoutCopy + 1);
  }

  else
  {
    WeakRetained = 0;
  }

  v59[0] = 0;
  v10 = [(HDDataEntity *)HDWorkoutEntity objectWithID:v8 encodingOptions:0 profile:WeakRetained error:v59];
  v11 = v59[0];

  if (v10)
  {
    v12 = v10;
    v13 = v6;
    v14 = workoutCopy;
    v57 = objc_opt_self();
    v58 = v12;
    [v12 duration];
    if (workoutCopy)
    {
      v16 = v14[3];
    }

    else
    {
      v16 = 0.0;
    }

    v54 = v11;
    v55 = v10;
    if (v15 >= v16)
    {
      v52 = workoutCopy;
      v53 = v6;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = [objc_opt_class() condensableQuantityTypes];
      v24 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v66;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v66 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v65 + 1) + 8 * i);
            v59[1] = MEMORY[0x277D85DD0];
            v59[2] = 3221225472;
            v59[3] = __66__HDWorkoutCondenser__condenseWorkout_entity_configuration_error___block_invoke;
            v59[4] = &unk_27861A268;
            v29 = v58;
            v60 = v29;
            v61 = v28;
            v30 = v14;
            v62 = v30;
            v64 = v57;
            v31 = v13;
            v63 = v31;
            configurationCopy = configuration;
            v33 = HKWithAutoreleasePool();

            if (!v33)
            {

              v22 = 0;
              workoutCopy = v52;
              v6 = v53;
              goto LABEL_34;
            }

            configuration = configurationCopy;
          }

          v25 = [obj countByEnumeratingWithState:&v65 objects:buf count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      workoutCopy = v52;
      v6 = v53;
    }

    else
    {
    }

    v34 = v13;
    v35 = v14;
    objc_opt_self();
    if (workoutCopy)
    {
      v36 = objc_loadWeakRetained(v35 + 1);
    }

    else
    {
      v36 = 0;
    }

    database = [v36 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __76__HDWorkoutCondenser__updateCondenserVersionForWorkout_configuration_error___block_invoke;
    v70 = &unk_278616048;
    v71[0] = v34;
    v38 = v34;
    v39 = [(HDHealthEntity *)HDWorkoutEntity performWriteTransactionWithHealthDatabase:database error:configuration block:buf];

    if (v39)
    {
      v40 = v58;
      objc_opt_self();
      _HKInitializeLogging();
      v41 = HKLogCondenser();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);

      v11 = v54;
      v10 = v55;
      if (v42)
      {
        v43 = HKLogCondenser();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          uUID = [v40 UUID];
          [uUID UUIDString];
          v46 = v45 = workoutCopy;
          [v40 workoutActivityType];
          v47 = _HKWorkoutActivityNameForActivityType();
          [v40 duration];
          v48 = HKDiagnosticStringFromDuration();
          _creationDate = [v40 _creationDate];
          v50 = HKDiagnosticStringFromDate();
          *buf = 138544130;
          *&buf[4] = v46;
          *&buf[12] = 2114;
          *&buf[14] = v47;
          *&buf[22] = 2114;
          v70 = v48;
          LOWORD(v71[0]) = 2114;
          *(v71 + 2) = v50;
          _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_INFO, "Condensed workout with UUID: %{public}@, type: %{public}@, duration: %{public}@, added: %{public}@", buf, 0x2Au);

          workoutCopy = v45;
          v11 = v54;
          v10 = v55;
        }
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
LABEL_34:
      v11 = v54;
      v10 = v55;
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogCondenser();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v19 = HKLogCondenser();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        persistentID = [v6 persistentID];
        *buf = 134218242;
        *&buf[4] = persistentID;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "Failed to lookup workout with persistentID %lld: %{public}@", buf, 0x16u);
      }
    }

    v21 = v11;
    v22 = v21 == 0;
    if (v21)
    {
      if (configuration)
      {
        v23 = v21;
        *configuration = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v22;
}

- (id)condensedWorkoutsWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CCD158]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HDWorkoutCondenser_condensedWorkoutsWithError___block_invoke;
  v11[3] = &unk_27862E2A8;
  v12 = v5;
  v7 = v5;
  LODWORD(error) = [HDWorkoutEntity enumerateCondensedWorkoutsWithPredicate:0 profile:WeakRetained error:error handler:v11];

  if (error)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)condensableWorkoutsWithError:(id *)error
{
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 workoutEntitiesRequiringCondensationWithProfile:WeakRetained limit:0 allowRecondensation:0 error:error];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCD158]);
    v9 = objc_loadWeakRetained(&self->_profile);
    database = [v9 database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HDWorkoutCondenser_condensableWorkoutsWithError___block_invoke;
    v16[3] = &unk_278613218;
    v17 = v7;
    v18 = v8;
    v11 = v8;
    v12 = [(HDHealthEntity *)HDWorkoutEntity performReadTransactionWithHealthDatabase:database error:error block:v16];

    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __51__HDWorkoutCondenser_condensableWorkoutsWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) codableCondensedWorkoutWithTransaction:v5 error:{a3, v15}];
        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }

        v12 = v11;
        [*(a1 + 40) addWorkouts:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

+ (id)_workoutEntitiesRequiringCondensationWithProfile:(uint64_t)profile limit:(char)limit allowRecondensation:(void *)recondensation analyticsAccumulator:(uint64_t)accumulator error:
{
  v40[4] = *MEMORY[0x277D85DE8];
  recondensationCopy = recondensation;
  v9 = a2;
  v27 = objc_opt_self();
  v10 = [HDWorkoutCondenser _predicateForFirstPartyWorkoutSources:v9 error:accumulator];
  v11 = HDWorkoutEntityPredicateForWorkoutCondenserVersionLessThan(6);
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10368000.0];
  v13 = HDDataEntityPredicateForCreationDate(3, v12);

  v14 = HDWorkoutEntityPredicateForDuration(6);
  v15 = MEMORY[0x277D10B20];
  v30 = v11;
  v31 = v10;
  v40[0] = v10;
  v40[1] = v11;
  v40[2] = v13;
  v40[3] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v17 = [v15 predicateMatchingAllPredicates:v16];

  v18 = HDWorkoutEntityPredicateForWorkoutCondenserVersionEqualTo(6);
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [v9 database];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __124__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithProfile_limit_allowRecondensation_analyticsAccumulator_error___block_invoke;
  v32[3] = &unk_27862E320;
  v37 = v27;
  profileCopy = profile;
  v33 = v17;
  v34 = recondensationCopy;
  v21 = v19;
  limitCopy = limit;
  v35 = v21;
  v36 = v18;
  v22 = v18;
  v23 = recondensationCopy;
  v24 = v17;
  LODWORD(v16) = [(HDHealthEntity *)HDWorkoutEntity performReadTransactionWithHealthDatabase:database error:accumulator block:v32];

  if (v16)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)seriesSyncIdentifierForEntity:(id)entity workout:(id)workout transaction:(id)transaction error:(id *)error
{
  entityCopy = entity;
  workoutCopy = workout;
  transactionCopy = transaction;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__194;
  v24 = __Block_byref_object_dispose__194;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__HDWorkoutCondenser_seriesSyncIdentifierForEntity_workout_transaction_error___block_invoke;
  v16[3] = &unk_27862E2D0;
  v18 = &v20;
  selfCopy = self;
  v13 = workoutCopy;
  v17 = v13;
  if ([entityCopy startTimeEndTimeCountForSeriesWithTransaction:transactionCopy error:error handler:v16])
  {
    v14 = v21[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __78__HDWorkoutCondenser_seriesSyncIdentifierForEntity_workout_transaction_error___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a1 + 32);
  objc_opt_self();
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 UUID];

  v11 = [v10 UUIDString];
  v12 = [v9 stringWithFormat:@"%ld:%@:%.5f:%.5f:%lld", 6, v11, *&a3, *&a4, a2];

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

uint64_t __110__HDWorkoutCondenser__queue_condenseWorkoutsWithAccessibilityAssertion_batchLimit_analyticsAccumulator_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v5 = [HDWorkoutCondenser _workoutEntitiesRequiringCondensationWithProfile:*(a1 + 48) limit:1 allowRecondensation:*(a1 + 40) analyticsAccumulator:a2 error:?];

  if (v5)
  {
    if ([v5 count])
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 64));
      v24 = [_HDWorkoutCondensationConfiguration configurationWithProfile:v6 minimumSeriesSize:*(*(a1 + 32) + 40) maximumSeriesSize:*(*(a1 + 32) + 48) deletedSampleThreshold:*(*(a1 + 32) + 56) analyticsAccumulator:*(a1 + 40) error:a2];

      v7 = v24;
      if (v24)
      {
        v8 = v5;
        v9 = v24;
        objc_opt_self();
        Current = CFAbsoluteTimeGetCurrent();
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = v8;
        v11 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v11)
        {
          v12 = *v28;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v26 = v9;
              v14 = HKWithAutoreleasePool();
              if ((v14 & 1) == 0)
              {
                goto LABEL_28;
              }

              v15 = CFAbsoluteTimeGetCurrent() - Current;
              if (v15 > 180.0)
              {
                _HKInitializeLogging();
                v17 = HKLogCondenser();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = *(v32 + 3);
                  *buf = 134218240;
                  v36 = v18;
                  v37 = 2048;
                  v38 = v15;
                  _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "End with early success due to timeout, condensed %ld workouts in %0.4f s", buf, 0x16u);
                }

                goto LABEL_27;
              }

              v16 = v9[7];
              if (v16)
              {
                v16 = v16[7];
              }

              if (v16 >= v9[6])
              {
                _HKInitializeLogging();
                v17 = HKLogCondenser();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = v9[7];
                  v20 = v19;
                  if (v19)
                  {
                    v21 = *(v19 + 7);
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v22 = v32[3];
                  *buf = 134218496;
                  v36 = v21;
                  v37 = 2048;
                  v38 = v22;
                  v39 = 2048;
                  v40 = v15;
                  _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "End with early success due number of deleted samples (%ld), condensed %ld workouts in %0.4f s", buf, 0x20u);
                }

LABEL_27:

LABEL_28:
                goto LABEL_29;
              }
            }

            v11 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
            v14 = 1;
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v14 = 1;
        }

LABEL_29:

        _Block_object_dispose(&v31, 8);
        v7 = v24;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __124__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithProfile_limit_allowRecondensation_analyticsAccumulator_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = HDSampleEntityOrderingTermsForOldness();
  v10 = [(HDWorkoutCondenser *)v7 _workoutEntitiesRequiringCondensationWithPredicate:v6 limit:v8 orderingTerms:v9 transaction:v5 error:a3];

  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = [v10 count];
  v12 = *(a1 + 40);
  if (v12)
  {
    *(v12 + 16) = v11;
  }

  [*(a1 + 48) addObjectsFromArray:v10];
  if (*(a1 + 80) != 1)
  {
    goto LABEL_13;
  }

  if (!*(a1 + 72))
  {
    v15 = 0;
LABEL_9:
    v17 = *(a1 + 56);
    v16 = *(a1 + 64);
    v18 = HDWorkoutEntityOrderingTermsForCondenserDate();
    v19 = [(HDWorkoutCondenser *)v16 _workoutEntitiesRequiringCondensationWithPredicate:v17 limit:v15 orderingTerms:v18 transaction:v5 error:a3];

    if (v19)
    {
      v20 = [v19 count];
      v21 = *(a1 + 40);
      if (v21)
      {
        *(v21 + 24) = v20;
      }

      [*(a1 + 48) addObjectsFromArray:v19];

      goto LABEL_13;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v13 = [*(a1 + 48) count];
  v14 = *(a1 + 72);
  if (v13 < v14)
  {
    v15 = v14 - [*(a1 + 48) count];
    goto LABEL_9;
  }

LABEL_13:
  _HKInitializeLogging();
  v22 = HKLogCondenser();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 48) count];
    v24 = [v10 count];
    v25 = [*(a1 + 48) count];
    v28 = 134218496;
    v29 = v23;
    v30 = 2048;
    v31 = v24;
    v32 = 2048;
    v33 = v25 - [v10 count];
    _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "%ld workouts requiring condensation (%ld uncondensed, %ld recondensable)", &v28, 0x20u);
  }

  v26 = 1;
LABEL_17:

  return v26;
}

+ (void)_workoutEntitiesRequiringCondensationWithPredicate:(uint64_t)predicate limit:(void *)limit orderingTerms:(void *)terms transaction:(uint64_t)transaction error:
{
  termsCopy = terms;
  limitCopy = limit;
  v12 = a2;
  objc_opt_self();
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [termsCopy databaseForEntityClass:objc_opt_class()];

  v15 = [(HDSQLiteEntity *)HDWorkoutEntity queryWithDatabase:v14 predicate:v12 limit:predicate orderingTerms:limitCopy groupBy:0];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithPredicate_limit_orderingTerms_transaction_error___block_invoke;
  v20[3] = &unk_278615128;
  v21 = v13;
  v16 = v13;
  if ([v15 enumeratePersistentIDsAndProperties:0 error:transaction enumerationHandler:v20])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

uint64_t __111__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithPredicate_limit_orderingTerms_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

BOOL __60__HDWorkoutCondenser__condenseWorkouts_configuration_error___block_invoke(void *a1, NSObject **a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Condense workout %ld", *(*(a1[6] + 8) + 24)];
  _HKInitializeLogging();
  v5 = HKLogCondenser();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogCondenser();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v27 = v4;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@ started", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = a1[4];
  if (v9)
  {
    v10 = *(v9 + 56);
    if (v10)
    {
      v10[8] = 0;
    }
  }

  v11 = a1[7];
  v13 = a1[4];
  v12 = a1[5];
  v25 = 0;
  v14 = [(HDWorkoutCondenser *)v11 _condenseAndUpdateWorkout:v12 configuration:v13 error:&v25];
  v15 = v25;
  v16 = CFAbsoluteTimeGetCurrent() - Current;
  _HKInitializeLogging();
  v17 = HKLogCondenser();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

  if (!v14)
  {
    if (v18)
    {
      v20 = HKLogCondenser();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v27 = v4;
        v28 = 2048;
        v29 = v16;
        v30 = 2114;
        v31 = v15;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_INFO, "%{public}@ finished in %0.4f s, Error: %{public}@", buf, 0x20u);
      }
    }

    v19 = v15;
    if (v19)
    {
      if (a2)
      {
        v21 = v19;
        *a2 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_20;
  }

  if (v18)
  {
    v19 = HKLogCondenser();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v27 = v4;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@ finished in %0.4f s, Success", buf, 0x16u);
    }

LABEL_20:
  }

  v22 = a1[4];
  if (v22)
  {
    v23 = *(v22 + 56);
    if (v23)
    {
      ++v23[4];
    }
  }

  ++*(*(a1[6] + 8) + 24);

  return v14;
}

BOOL __66__HDWorkoutCondenser__condenseWorkout_entity_configuration_error___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [*(a1 + 32) UUID];
  v6 = [v4 stringWithFormat:@"Condense workout (%@) samples with quantity type %@", v5, *(a1 + 40)];

  _HKInitializeLogging();
  v7 = HKLogCondenser();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogCondenser();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v31 = v6;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@ started", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = *(a1 + 48);
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((v11 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v13 = [WeakRetained database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__HDWorkoutCondenser__condenseWorkout_entity_configuration_error___block_invoke_344;
  v24[3] = &unk_27862C6D8;
  v28 = *(a1 + 64);
  v29 = 0;
  v23 = *(a1 + 32);
  v14 = v23.i64[0];
  v25 = vextq_s8(v23, v23, 8uLL);
  v26 = *(a1 + 56);
  v27 = *(a1 + 48);
  v15 = [(HDHealthEntity *)HDQuantitySampleSeriesEntity performWriteTransactionWithHealthDatabase:v13 error:&v29 block:v24];
  v16 = v29;

  v17 = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v18 = HKLogCondenser();
  LODWORD(v13) = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

  if (v13)
  {
    v19 = HKLogCondenser();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138544130;
      v31 = v6;
      v32 = 2048;
      v33 = v17 - Current;
      v34 = 1024;
      v35 = v15;
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@ finished in %0.4f s, (%{BOOL}d, %{public}@)", buf, 0x26u);
    }
  }

  if (!v15)
  {
    v20 = v16;
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        *a2 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v15;
}

+ (uint64_t)_condenseSamplesWithQuantityType:(void *)type workout:(void *)workout entity:(void *)entity configuration:(void *)configuration transaction:(double *)transaction error:
{
  v331 = *MEMORY[0x277D85DE8];
  v11 = a2;
  typeCopy = type;
  workoutCopy = workout;
  entityCopy = entity;
  configurationCopy = configuration;
  v229 = objc_opt_self();
  v252 = 0;
  v253 = &v252;
  v254 = 0x3032000000;
  v255 = __Block_byref_object_copy__194;
  v256 = __Block_byref_object_dispose__194;
  v257 = 0;
  v242 = entityCopy;
  if (entityCopy)
  {
    WeakRetained = objc_loadWeakRetained(entityCopy + 1);
  }

  else
  {
    WeakRetained = 0;
  }

  database = [WeakRetained database];
  v247[0] = MEMORY[0x277D85DD0];
  v247[1] = 3221225472;
  v247[2] = __102__HDWorkoutCondenser__condenseSamplesWithQuantityType_workout_entity_configuration_transaction_error___block_invoke;
  v247[3] = &unk_27862E370;
  v250 = &v252;
  v251 = v229;
  v222 = v11;
  v248 = v222;
  v221 = workoutCopy;
  v249 = v221;
  v16 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:transaction block:v247];

  if (v16)
  {
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    obj = v253[5];
    v212 = [obj countByEnumeratingWithState:&v243 objects:v287 count:16];
    if (v212)
    {
      v211 = *v244;
      v210 = *MEMORY[0x277D10C08];
      v225 = *MEMORY[0x277CCC520];
      v224 = *MEMORY[0x277CCC528];
      v223 = *MEMORY[0x277CCC530];
      v200 = *MEMORY[0x277CCCB90];
      v202 = *MEMORY[0x277D10A48];
      while (1)
      {
        v232 = 0;
        do
        {
          if (*v244 != v211)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v243 + 1) + 8 * v232);
          v18 = v242;
          v19 = v17;
          v20 = v221;
          v21 = v222;
          objc_opt_self();
          [MEMORY[0x277D10B18] predicateWithProperty:@"provenance" equalToValue:v19];
          v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          persistentID = [v20 persistentID];
          v24 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject(persistentID);
          v25 = MEMORY[0x277D10B18];
          v26 = MEMORY[0x277CCABB0];
          code = [v21 code];

          v28 = [v26 numberWithInteger:code];
          v29 = [v25 predicateWithProperty:@"data_type" value:v28 comparisonType:1 influenceIndexUsage:0];

          v30 = MEMORY[0x277D10B20];
          *buf = v29;
          if (v242)
          {
            v31 = v242[2];
          }

          else
          {
            v31 = 0;
          }

          *&buf[8] = v31;
          *&buf[16] = v24;
          v304 = v22;
          v32 = MEMORY[0x277CBEA60];
          v33 = v31;
          v34 = [v32 arrayWithObjects:buf count:4];

          v35 = [v30 predicateMatchingAllPredicates:v34];

          v238 = v20;
          v233 = v21;
          v36 = v35;
          v37 = v18;
          v38 = configurationCopy;
          v39 = v19;
          objc_opt_self();
          v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Checking if workoutEntity (%@) requires processing for quantity type %@ collected by data provenance with ID %@", v238, v233, v39];

          _HKInitializeLogging();
          v40 = HKLogCondenser();
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);

          if (v41)
          {
            v42 = HKLogCondenser();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v226;
              _os_log_debug_impl(&dword_228986000, v42, OS_LOG_TYPE_DEBUG, "%{public}@ started", buf, 0xCu);
            }
          }

          Current = CFAbsoluteTimeGetCurrent();
          v241 = v36;
          v44 = v37;
          v45 = v38;
          objc_opt_self();
          v46 = [v45 databaseForEntityClass:objc_opt_class()];
          v47 = [(HDSQLiteEntity *)HDSampleEntity queryWithDatabase:v46 predicate:v241 limit:v210 orderingTerms:0 groupBy:0];
          *v288 = 0;
          *&v288[8] = v288;
          *&v288[16] = 0x2020000000;
          LOBYTE(v289) = 1;
          *&v258 = 0;
          *(&v258 + 1) = &v258;
          *&v259 = 0x2020000000;
          BYTE8(v259) = 0;
          *&v298 = 0;
          *(&v298 + 1) = &v298;
          v299 = 0x3032000000;
          v300 = __Block_byref_object_copy__194;
          v301 = __Block_byref_object_dispose__194;
          v302 = 0;
          v325 = v225;
          v326 = v224;
          v327 = v223;
          v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v325 count:3];
          v49 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v45];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __77__HDWorkoutCondenser__hasConsistentMetadata_configuration_transaction_error___block_invoke;
          v304 = COERCE_DOUBLE(&unk_27862E398);
          v235 = v44;
          *&v305 = v235;
          v50 = v49;
          *(&v305 + 1) = v50;
          v51 = v48;
          v306 = v51;
          v307 = &v258;
          v308 = &v298;
          v309 = v288;
          if ([v47 enumeratePersistentIDsAndProperties:0 error:transaction enumerationHandler:buf])
          {
            if (*(*&v288[8] + 24))
            {
              v52 = 1;
            }

            else
            {
              v52 = 2;
            }
          }

          else
          {
            v52 = 0;
          }

          _Block_object_dispose(&v298, 8);
          _Block_object_dispose(&v258, 8);
          _Block_object_dispose(v288, 8);

          v53 = CFAbsoluteTimeGetCurrent();
          _HKInitializeLogging();
          v54 = HKLogCondenser();
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);

          v56 = v53 - Current;
          if (v55)
          {
            v57 = HKLogCondenser();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              v148 = HKStringFromFailableBooleanResult();
              *buf = 138544130;
              *&buf[4] = v226;
              *&buf[12] = 2048;
              *&buf[14] = v53 - Current;
              *&buf[22] = 2048;
              v304 = v53 - Current;
              LOWORD(v305) = 2114;
              *(&v305 + 2) = v148;
              _os_log_debug_impl(&dword_228986000, v57, OS_LOG_TYPE_DEBUG, "%{public}@ finished consistent metadata check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
            }
          }

          if ((v52 & 1) == 0)
          {
            goto LABEL_78;
          }

          if (v242)
          {
            v58 = objc_loadWeakRetained(v242 + 1);
          }

          else
          {
            v58 = 0;
          }

          daemon = [v58 daemon];
          behavior = [daemon behavior];
          features = [behavior features];
          coalesceCumulativeTypesInWorkoutSeries = [features coalesceCumulativeTypesInWorkoutSeries];

          if (v242)
          {
            v63 = objc_loadWeakRetained(v242 + 1);
          }

          else
          {
            v63 = 0;
          }

          daemon2 = [v63 daemon];
          behavior2 = [daemon2 behavior];
          features2 = [behavior2 features];
          coalesceHeartRatesInWorkoutSeries = [features2 coalesceHeartRatesInWorkoutSeries];

          v68 = 0.0;
          if (![v238 isCondenserVersionLessThan:6 transaction:v45])
          {
            goto LABEL_46;
          }

          if (coalesceCumulativeTypesInWorkoutSeries)
          {
            aggregationStyle = [v233 aggregationStyle];
            if (((aggregationStyle != 0) & coalesceHeartRatesInWorkoutSeries) == 0)
            {
              if (aggregationStyle)
              {
                goto LABEL_46;
              }

              goto LABEL_36;
            }
          }

          else if ((coalesceHeartRatesInWorkoutSeries & 1) == 0)
          {
            goto LABEL_46;
          }

          v70 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v200];
          v71 = [v233 isEqual:v70];

          if (!v71)
          {
            goto LABEL_46;
          }

LABEL_36:
          v72 = CFAbsoluteTimeGetCurrent();
          v73 = v233;
          v74 = v241;
          v75 = v45;
          v76 = objc_opt_self();
          *&v298 = 0;
          *(&v298 + 1) = &v298;
          v299 = 0x2020000000;
          LOBYTE(v300) = 0;
          *v288 = 0;
          *&v288[8] = v288;
          *&v288[16] = 0x2020000000;
          LOBYTE(v289) = 0;
          *&v258 = 0;
          *(&v258 + 1) = &v258;
          v259 = 0x2020000000uLL;
          v325 = 0;
          v326 = &v325;
          v327 = 0x2020000000;
          v328 = 0;
          v281 = 0;
          v282 = &v281;
          v283 = 0x2020000000;
          v284 = 0;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __100__HDWorkoutCondenser__hasNonCoalescedSamplesOrDatumInSeries_enumerationPredicate_transaction_error___block_invoke;
          v304 = COERCE_DOUBLE(&unk_27862E3C0);
          *(&v305 + 1) = v288;
          v77 = v73;
          *&v305 = v77;
          v306 = &v258;
          v307 = &v281;
          v308 = &v325;
          v310 = v76;
          v309 = &v298;
          if ([HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v74 transaction:v75 options:0 error:transaction handler:buf])
          {
            if (*(*(&v298 + 1) + 24))
            {
              v52 = 1;
            }

            else
            {
              v52 = 2;
            }
          }

          else
          {
            v52 = 0;
          }

          _Block_object_dispose(&v281, 8);
          _Block_object_dispose(&v325, 8);
          _Block_object_dispose(&v258, 8);
          _Block_object_dispose(v288, 8);
          _Block_object_dispose(&v298, 8);

          v78 = CFAbsoluteTimeGetCurrent();
          _HKInitializeLogging();
          v79 = HKLogCondenser();
          v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);

          v68 = v78 - v72;
          if (v80)
          {
            v81 = HKLogCondenser();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v151 = HKStringFromFailableBooleanResult();
              *buf = 138544130;
              *&buf[4] = v226;
              *&buf[12] = 2048;
              *&buf[14] = v78 - v72;
              *&buf[22] = 2048;
              v304 = v56 + v68;
              LOWORD(v305) = 2114;
              *(&v305 + 2) = v151;
              _os_log_debug_impl(&dword_228986000, v81, OS_LOG_TYPE_DEBUG, "%{public}@ finished uncoalesced data check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
            }
          }

          if (v52 >= 2)
          {
LABEL_46:
            v82 = CFAbsoluteTimeGetCurrent();
            v83 = v238;
            v84 = v235;
            v85 = v45;
            v86 = v241;
            objc_opt_self();
            v87 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"hfd_key"];
            v88 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v86 otherPredicate:v87];

            protectedDatabase = [v85 protectedDatabase];

            *buf = 0;
            v90 = [(HDSQLiteEntity *)HDQuantitySampleSeriesEntity countValueForProperty:v202 predicate:v88 database:protectedDatabase error:buf];
            v91 = *buf;

            if (v90)
            {
              integerValue = [v90 integerValue];
              v93 = v242;
              if (v242)
              {
                v93 = v242[4];
              }

              if (integerValue >= v93)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              goto LABEL_60;
            }

            if (v91)
            {
              v91 = v91;
              goto LABEL_55;
            }

            v91 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Error getting count of single value samples associated with workout entity %lld", objc_msgSend(v83, "persistentID")}];
            if (v91)
            {
LABEL_55:
              if (transaction)
              {
                v94 = v91;
                *transaction = v91;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v52 = 0;
LABEL_60:

            v95 = CFAbsoluteTimeGetCurrent();
            _HKInitializeLogging();
            v96 = HKLogCondenser();
            v97 = os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG);

            if (v97)
            {
              v98 = HKLogCondenser();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                v149 = HKStringFromFailableBooleanResult();
                *buf = 138544130;
                *&buf[4] = v226;
                *&buf[12] = 2048;
                *&buf[14] = v95 - v82;
                *&buf[22] = 2048;
                v304 = v56 + v68 + v95 - v82;
                LOWORD(v305) = 2114;
                *(&v305 + 2) = v149;
                _os_log_debug_impl(&dword_228986000, v98, OS_LOG_TYPE_DEBUG, "%{public}@ finished single value samples check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
              }
            }

            if (v52 >= 2)
            {
              v99 = v86;
              v100 = v84;
              v101 = v85;
              objc_opt_self();
              *&v298 = 0;
              *(&v298 + 1) = &v298;
              v299 = 0x2020000000;
              LOBYTE(v300) = 0;
              *v288 = 0;
              *&v288[8] = v288;
              *&v288[16] = 0x2020000000;
              v289 = 0;
              *&v258 = 0;
              *(&v258 + 1) = &v258;
              *&v259 = 0x2020000000;
              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              [distantPast timeIntervalSinceReferenceDate];
              v104 = v103;

              *(&v259 + 1) = v104;
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __93__HDWorkoutCondenser__hasSamplesThatOverlapInTimeWithEntity_configuration_transaction_error___block_invoke;
              v304 = COERCE_DOUBLE(&unk_27862E3E8);
              *(&v305 + 1) = &v258;
              v306 = &v298;
              v307 = v288;
              v105 = v100;
              *&v305 = v105;
              if ([HDQuantitySampleValueEnumerator orderedQuantityValuesBySeriesForPredicate:v99 transaction:v101 options:0 error:transaction handler:buf])
              {
                v106 = v242;
                if (v242)
                {
                  v106 = v242[4];
                }

                if (*(*&v288[8] + 24) >= v106)
                {
                  if (*(*(&v298 + 1) + 24))
                  {
                    v52 = 1;
                  }

                  else
                  {
                    v52 = 2;
                  }
                }

                else
                {
                  v52 = 2;
                }
              }

              else
              {
                v52 = 0;
              }

              _Block_object_dispose(&v258, 8);
              _Block_object_dispose(v288, 8);
              _Block_object_dispose(&v298, 8);

              v107 = CFAbsoluteTimeGetCurrent();
              _HKInitializeLogging();
              v108 = HKLogCondenser();
              v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);

              if (v109)
              {
                v110 = HKLogCondenser();
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v150 = HKStringFromFailableBooleanResult();
                  *buf = 138544130;
                  *&buf[4] = v226;
                  *&buf[12] = 2048;
                  *&buf[14] = v107 - v95;
                  *&buf[22] = 2048;
                  v304 = v56 + v68 + v107 - v82;
                  LOWORD(v305) = 2114;
                  *(&v305 + 2) = v150;
                  _os_log_debug_impl(&dword_228986000, v110, OS_LOG_TYPE_DEBUG, "%{public}@ finished overlapping samples check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
                }
              }
            }
          }

LABEL_78:

          if (v52 == 2)
          {
            goto LABEL_152;
          }

          if (!v52)
          {
            goto LABEL_159;
          }

          if (v242)
          {
            v111 = v242[7];
            if (!v111 || (v112 = v111[8], v111, (v112 & 1) == 0))
            {
              v113 = v242[7];
              if (v113)
              {
                ++v113[5];
              }

              v114 = v242[7];
              if (v114)
              {
                v114[8] = 1;
              }
            }
          }

          v115 = v233;
          v116 = typeCopy;
          v234 = v241;
          v117 = v235;
          v118 = v45;
          v227 = objc_opt_self();
          v325 = 0;
          v326 = &v325;
          v327 = 0x3032000000;
          v328 = __Block_byref_object_copy__194;
          v329 = __Block_byref_object_dispose__194;
          v330 = 0;
          v281 = 0;
          v282 = &v281;
          v283 = 0x3032000000;
          v284 = __Block_byref_object_copy__194;
          v285 = __Block_byref_object_dispose__194;
          v286 = 0;
          v324[0] = v225;
          v324[1] = v224;
          v324[2] = v223;
          v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v324 count:3];
          v120 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v118];
          v275 = 0;
          v276 = &v275;
          v277 = 0x3032000000;
          v278 = __Block_byref_object_copy__194;
          v279 = __Block_byref_object_dispose__194;
          v280 = 0;
          v271 = 0;
          v272 = &v271;
          v273 = 0x2020000000;
          v274 = 0xFFEFFFFFFFFFFFFFLL;
          v270[0] = 0;
          v270[1] = v270;
          v270[2] = 0x2020000000;
          v270[3] = 0x8010000000000000;
          v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v236 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v122 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v123 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v213 = v115;
          v215 = v120;
          v230 = v119;
          v239 = v117;
          v217 = v116;
          if (v242)
          {
            v124 = objc_loadWeakRetained(v242 + 1);
          }

          else
          {
            v124 = 0;
          }

          daemon3 = [v124 daemon];
          behavior3 = [daemon3 behavior];
          features3 = [behavior3 features];
          coalesceCumulativeTypesInWorkoutSeries2 = [features3 coalesceCumulativeTypesInWorkoutSeries];

          if (v242)
          {
            v129 = objc_loadWeakRetained(v242 + 1);
          }

          else
          {
            v129 = 0;
          }

          daemon4 = [v129 daemon];
          behavior4 = [daemon4 behavior];
          features4 = [behavior4 features];
          coalesceHeartRatesInWorkoutSeries2 = [features4 coalesceHeartRatesInWorkoutSeries];

          v266 = 0;
          v267 = &v266;
          v268 = 0x2020000000;
          v269 = 0;
          v262 = 0;
          v263 = &v262;
          v264 = 0x2020000000;
          v265 = 0;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __104__HDWorkoutCondenser__processSamplesWithQuantityType_workout_predicate_configuration_transaction_error___block_invoke;
          v304 = COERCE_DOUBLE(&unk_27862E410);
          v314 = &v266;
          v315 = &v325;
          v134 = v118;
          *&v305 = v134;
          v321 = v227;
          v219 = v239;
          *(&v305 + 1) = v219;
          v316 = &v281;
          v209 = v215;
          v306 = v209;
          v208 = v230;
          v307 = v208;
          v231 = v122;
          v308 = v231;
          v216 = v123;
          v309 = v216;
          v240 = v121;
          v310 = v240;
          v135 = v236;
          v311 = v135;
          v317 = v270;
          v318 = &v275;
          v237 = v213;
          v312 = v237;
          v319 = &v271;
          v136 = v217;
          v322 = coalesceCumulativeTypesInWorkoutSeries2;
          v218 = v136;
          v313 = v136;
          v320 = &v262;
          v323 = coalesceHeartRatesInWorkoutSeries2;
          v214 = v134;
          if (![HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v234 transaction:v134 options:0 error:transaction handler:buf])
          {
            _HKInitializeLogging();
            v143 = HKLogCondenser();
            if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_149;
            }

            LODWORD(v298) = 136315138;
            *(&v298 + 4) = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]";
            v144 = &v298;
            v145 = v143;
            v146 = "Call to enumerator in workout condenser failed in %s";
            goto LABEL_98;
          }

          v137 = [v135 count];
          v138 = [v240 count];
          v139 = [v135 count];
          v140 = [v240 count];
          if (v242)
          {
            v203 = v242[4];
            if (coalesceCumulativeTypesInWorkoutSeries2)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v203 = 0;
            if (coalesceCumulativeTypesInWorkoutSeries2)
            {
LABEL_94:
              v141 = [v237 aggregationStyle] == 0;
              if (!coalesceHeartRatesInWorkoutSeries2)
              {
                goto LABEL_95;
              }

              goto LABEL_106;
            }
          }

          v141 = 0;
          if (!coalesceHeartRatesInWorkoutSeries2)
          {
LABEL_95:
            v142 = 0;
            goto LABEL_107;
          }

LABEL_106:
          v152 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v200];
          v142 = [v237 isEqual:v152];

LABEL_107:
          v205 = v141 | v142;
          if (v140 + v139 >= v203 || ((v137 != -v138) & (v141 | v142)) != 0)
          {
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v153 = v240;
            v154 = [v153 countByEnumeratingWithState:&v258 objects:&v298 count:16];
            if (!v154)
            {
              goto LABEL_131;
            }

            v155 = *v259;
            while (1)
            {
              v156 = 0;
              do
              {
                if (*v259 != v155)
                {
                  objc_enumerationMutation(v153);
                }

                v157 = *(*(&v258 + 1) + 8 * v156);
                if (![v135 count])
                {
                  if (v157)
                  {
                    v158 = *(v157 + 4);
                  }

                  else
                  {
                    v158 = 0;
                  }

                  *(v272 + 3) = v158;
                }

                if (v157)
                {
                  v160 = v157[5];
                  v159 = v157[6];
                  v161 = v157[4];
                }

                else
                {
                  v159 = 0.0;
                  v161 = 0.0;
                  v160 = 0.0;
                }

                v162 = [MEMORY[0x277CCD180] datumWithStartTime:v161 value:v159 endTime:v160];
                [v135 addObject:v162];

                if (v141)
                {
                  if ([HDWorkoutCondenser coalesceCumulativeDatumsInDatumsCollection:v135])
                  {
                    goto LABEL_125;
                  }
                }

                else if (v142 && [HDWorkoutCondenser coalesceHeartRateDatumsInDatumsCollection:v135])
                {
LABEL_125:
                  ++v263[3];
                }

                ++v156;
              }

              while (v154 != v156);
              v163 = [v153 countByEnumeratingWithState:&v258 objects:&v298 count:16];
              v154 = v163;
              if (!v163)
              {
LABEL_131:

                [v153 removeAllObjects];
                v199 = [v135 count];
                v164 = v276[5];
                v165 = v282[5];
                v166 = v272[3];
                v167 = v326[5];
                v201 = v218;
                v168 = v237;
                v169 = v165;
                v204 = v216;
                v170 = v219;
                v171 = v214;
                v172 = v167;
                v173 = v135;
                v174 = v164;
                v175 = objc_opt_self();
                v176 = [(HDWorkoutCondenser *)v175 _insertValuesForSeries:v174 quantityType:v168 startTime:v173 values:v172 provenance:v170 configuration:v171 transaction:0 countOut:v166 error:transaction];

                if (v176)
                {
                  v177 = [(HDWorkoutCondenser *)v175 _finishSeries:v176 quantityType:v168 baseMetadata:v169 workout:v201 UUIDDataToDelete:v204 configuration:v170 transaction:v171 error:transaction];

                  if (v177)
                  {
                    [v204 setLength:0];
                    break;
                  }
                }

                else
                {
                }

                _HKInitializeLogging();
                v143 = HKLogCondenser();
                if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  v192 = *transaction;
                  *v288 = 138544130;
                  *&v288[4] = v227;
                  *&v288[12] = 2048;
                  *&v288[14] = v199;
                  *&v288[22] = 2080;
                  v289 = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]";
                  v290 = 2112;
                  v291 = v192;
                  v144 = v288;
                  v145 = v143;
                  v146 = "%{public}@: Failed to create a series with %ld leftovers after the enumerator of workout condenser in %s with error %@";
                  v147 = 42;
LABEL_148:
                  _os_log_error_impl(&dword_228986000, v145, OS_LOG_TYPE_ERROR, v146, v144, v147);
                }

LABEL_149:
                v191 = 0;
LABEL_150:

                goto LABEL_151;
              }
            }
          }

          if ([v231 hk_countOfUUIDs] && (+[HDWorkoutCondenser _deleteSamplesWithUUIDData:configuration:error:](v227, v231, v219, transaction) & 1) == 0)
          {
            _HKInitializeLogging();
            v143 = HKLogCondenser();
            if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_149;
            }

            *v288 = 136315138;
            *&v288[4] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]";
            v144 = v288;
            v145 = v143;
            v146 = "Failed to delete old series after enumerator in %s";
LABEL_98:
            v147 = 12;
            goto LABEL_148;
          }

          if (v205)
          {
            v178 = v267[3];
            v179 = v263[3];
            _HKInitializeLogging();
            v180 = HKLogCondenser();
            v181 = v178 - v179;
            v182 = v179 / v178;
            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
            {
              uUID = [v218 UUID];
              uUIDString = [uUID UUIDString];
              v185 = v267[3];
              sourceID = [v326[5] sourceID];
              deviceID = [v326[5] deviceID];
              *v288 = 138413826;
              *&v288[4] = uUIDString;
              *&v288[12] = 2048;
              *&v288[14] = v182;
              *&v288[22] = 2112;
              v289 = v222;
              v290 = 2048;
              v291 = v185;
              v292 = 2048;
              v293 = v181;
              v294 = 2112;
              v295 = sourceID;
              v296 = 2112;
              v297 = deviceID;
              _os_log_impl(&dword_228986000, v180, OS_LOG_TYPE_DEFAULT, "Workout with UUID %@ had a compression rate of %.2f for %@ (%ld samples before, %ld samples after) for data provenance with sourceID %@ and deviceID %@", v288, 0x48u);
            }

            if (v242)
            {
              v143 = objc_loadWeakRetained(v242 + 1);
            }

            else
            {
              v143 = 0;
            }

            daemon5 = [v143 daemon];
            analyticsSubmissionCoordinator = [daemon5 analyticsSubmissionCoordinator];
            identifier = [v237 identifier];
            [analyticsSubmissionCoordinator workout_reportWorkoutCondenserCoalescingCompressionRate:identifier numberOfSamplesBeforeCoalescing:v267[3] numberOfSamplesAfterCoalescing:v181 compressionRate:v182];

            v191 = 1;
            goto LABEL_150;
          }

          v191 = 1;
LABEL_151:

          _Block_object_dispose(&v262, 8);
          _Block_object_dispose(&v266, 8);

          _Block_object_dispose(v270, 8);
          _Block_object_dispose(&v271, 8);
          _Block_object_dispose(&v275, 8);

          _Block_object_dispose(&v281, 8);
          _Block_object_dispose(&v325, 8);

          if ((v191 & 1) == 0)
          {
LABEL_159:

            goto LABEL_160;
          }

LABEL_152:

          ++v232;
        }

        while (v232 != v212);
        v193 = [obj countByEnumeratingWithState:&v243 objects:v287 count:16];
        v194 = 1;
        v212 = v193;
        if (!v193)
        {
          goto LABEL_161;
        }
      }
    }

    v194 = 1;
  }

  else
  {
    _HKInitializeLogging();
    obj = HKLogCondenser();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      uUID2 = [typeCopy UUID];
      uUIDString2 = [uUID2 UUIDString];
      v197 = *transaction;
      *buf = 138412802;
      *&buf[4] = v222;
      *&buf[12] = 2112;
      *&buf[14] = uUIDString2;
      *&buf[22] = 2114;
      v304 = v197;
      _os_log_error_impl(&dword_228986000, obj, OS_LOG_TYPE_ERROR, "Failed to get data provenances for type %@ in workout with UUID %@ with error: %{public}@", buf, 0x20u);
    }

LABEL_160:
    v194 = 0;
  }

LABEL_161:

  _Block_object_dispose(&v252, 8);
  return v194;
}

uint64_t __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) code];

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 1;
}

BOOL __102__HDWorkoutCondenser__condenseSamplesWithQuantityType_workout_entity_configuration_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v24 = *(a1 + 32);
  v23 = v4;
  v5 = a2;
  objc_opt_self();
  v26 = MEMORY[0x277CCACA8];
  v6 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v7 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v8 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v9 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v10 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v11 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v12 = v5;
  v13 = [v26 stringWithFormat:@"SELECT DISTINCT %@ FROM %@ INNER JOIN %@ ON %@.%@=%@.%@ INNER JOIN %@ USING(%@) WHERE %@=? AND +%@.%@=?", @"provenance", v6, v7, v8, @"source_object_id", v9, @"data_id", v10, @"data_id", @"destination_object_id", v11, @"data_type"];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__194;
  v35 = __Block_byref_object_dispose__194;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [v5 protectedDatabase];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke;
  v28[3] = &unk_278613038;
  v15 = v23;
  v29 = v15;
  v16 = v24;
  v30 = v16;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke_2;
  v27[3] = &unk_278614620;
  v27[4] = &v31;
  if ([v14 executeSQL:v13 error:a3 bindingHandler:v28 enumerationHandler:v27])
  {
    v17 = v32[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  _Block_object_dispose(&v31, 8);
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

uint64_t __77__HDWorkoutCondenser__hasConsistentMetadata_configuration_transaction_error___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a1[4];
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained metadataManager];
  v12 = [v11 metadataForObjectID:a2 baseMetadata:0 keyFilter:0 statement:a1[5] error:a5];

  if (v12)
  {
    v13 = [v12 mutableCopy];
    [v13 removeObjectsForKeys:a1[6]];
    v14 = a1 + 7;
    if (*(*(a1[7] + 8) + 24) == 1 && ([v13 isEqual:*(*(a1[8] + 8) + 40)] & 1) == 0)
    {
      v15 = 0;
      v14 = a1 + 9;
    }

    else
    {
      objc_storeStrong((*(a1[8] + 8) + 40), v13);
      v15 = 1;
    }

    *(*(*v14 + 8) + 24) = v15;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogCondenser();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 134218242;
      v19 = a2;
      v20 = 2080;
      v21 = "+[HDWorkoutCondenser _hasConsistentMetadata:configuration:transaction:error:]_block_invoke";
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to get the metadata dictionary of sample with data_id %lld in %s", &v18, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

uint64_t __100__HDWorkoutCondenser__hasNonCoalescedSamplesOrDatumInSeries_enumerationPredicate_transaction_error___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = a1 + 40;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (![*(a1 + 32) aggregationStyle])
    {
      v18 = *(*(*(a1 + 48) + 8) + 24);
      v19 = *(*(*(a1 + 56) + 8) + 24);
      v20 = *(*(*(a1 + 64) + 8) + 24);
      objc_opt_self();
      if (a6 - a5 > 0.0)
      {
        v21 = vabdd_f64(a5, v20);
        v22 = v20 - v18 <= 0.0 || v21 > 0.000011920929;
        if (!v22 && vabdd_f64(a4 / (a6 - a5), v19 / (v20 - v18)) <= 0.0000011920929)
        {
          goto LABEL_19;
        }
      }
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    if ([v11 isEqual:v12])
    {
      v13 = *(*(*(a1 + 56) + 8) + 24);
      v14 = *(*(*(a1 + 64) + 8) + 24);
      objc_opt_self();
      v15 = vabdd_f64(a5, v14);

      if (vabdd_f64(a4, v13) <= 0.0000011920929 && v15 < 11.0)
      {
LABEL_19:
        result = 0;
        v10 = a1 + 72;
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a5;
  *(*(*(a1 + 64) + 8) + 24) = a6;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  result = 1;
LABEL_12:
  *(*(*v10 + 8) + 24) = 1;
  return result;
}

uint64_t __93__HDWorkoutCondenser__hasSamplesThatOverlapInTimeWithEntity_configuration_transaction_error___block_invoke(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 + 0.00000011920929 < *(*(a1[5] + 8) + 24))
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  *(*(a1[7] + 8) + 24) += a8;
  v8 = a1[4];
  if (v8)
  {
    v8 = *(v8 + 32);
  }

  if (*(*(a1[7] + 8) + 24) >= v8 && (*(*(a1[6] + 8) + 24) & 1) != 0)
  {
    return 0;
  }

  v10 = *(a1[5] + 8);
  v11 = *(v10 + 24);
  if (v11 <= a3)
  {
    v11 = a3;
  }

  *(v10 + 24) = v11;
  return 1;
}

uint64_t __104__HDWorkoutCondenser__processSamplesWithQuantityType_workout_predicate_configuration_transaction_error___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, const unsigned __int8 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v101 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 112) + 8) + 24);
  v21 = [(HDSQLiteEntity *)[HDQuantitySampleEntity alloc] initWithPersistentID:a2];
  if (!*(*(*(a1 + 120) + 8) + 40))
  {
    v34 = [*(a1 + 32) protectedDatabase];
    v35 = [(HDSQLiteEntity *)v21 valueForProperty:@"provenance" database:v34];

    if (!v35)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a13 code:100 format:{@"Unable to get %@ ID for sample with persistentID %lld", @"provenance", a2}];
      goto LABEL_74;
    }

    v94 = a11;
    v95 = v35;
    v96 = a9;
    v98 = a13;
    v37 = *(a1 + 32);
    v36 = *(a1 + 40);
    v38 = v21;
    v39 = v21;
    v40 = v36;
    v41 = v37;
    objc_opt_self();
    v42 = [v41 protectedDatabase];
    v43 = [(HDSQLiteEntity *)v39 valueForProperty:@"provenance" database:v42];
    v97 = v38;
    if (v43)
    {
      v93 = v39;
      if (v40)
      {
        WeakRetained = objc_loadWeakRetained(v40 + 1);
      }

      else
      {
        v40 = 0;
        WeakRetained = 0;
      }

      v35 = v95;
      v45 = [WeakRetained dataProvenanceManager];
      v46 = [v45 originProvenanceForPersistentID:v43 transaction:v41 error:v98];

      if (v46)
      {
        v47 = v46;
      }

      a9 = v96;
      v39 = v93;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:v98 code:100 format:{@"Unable to get %@ for persistentID %lld", @"provenance", -[HDSQLiteEntity persistentID](v39, "persistentID")}];
      v46 = 0;
      v35 = v95;
      a9 = v96;
    }

    v82 = *(*(a1 + 120) + 8);
    v83 = *(v82 + 40);
    *(v82 + 40) = v46;

    if (!*(*(*(a1 + 120) + 8) + 40))
    {
      _HKInitializeLogging();
      v84 = HKLogCondenser();
      v21 = v97;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *v100 = 134218242;
        *&v100[4] = a2;
        *&v100[12] = 2080;
        *&v100[14] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
        _os_log_error_impl(&dword_228986000, v84, OS_LOG_TYPE_ERROR, "Failed to get the data provenance object of the first sample with data_id %lld in %s", v100, 0x16u);
      }

      goto LABEL_74;
    }

    v21 = v97;
    a13 = v98;
    a11 = v94;
  }

  if (!*(*(*(a1 + 128) + 8) + 40))
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = objc_loadWeakRetained((v22 + 8));
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 metadataManager];
    v25 = [v24 metadataForObjectID:a2 baseMetadata:0 keyFilter:0 statement:*(a1 + 48) error:a13];

    if (v25)
    {
      v26 = [v25 mutableCopy];
      [v26 removeObjectsForKeys:*(a1 + 56)];
      v27 = *(*(a1 + 128) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      goto LABEL_7;
    }

    _HKInitializeLogging();
    v35 = HKLogCondenser();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v100 = 134218242;
      *&v100[4] = a2;
      *&v100[12] = 2080;
      *&v100[14] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to get the metadata dictionary of the sample with data_id %lld in %s", v100, 0x16u);
    }

LABEL_74:
    v57 = 0;
    goto LABEL_75;
  }

LABEL_7:
  v29 = [_HDWorkoutCondenserBufferDatum alloc];
  if (v29 && (*v100 = v29, *&v100[8] = _HDWorkoutCondenserBufferDatum, (v30 = objc_msgSendSuper2(v100, sel_init)) != 0))
  {
    v31 = v30;
    *(v30 + 4) = a6;
    *(v30 + 5) = a7;
    *(v30 + 6) = a5;
    uuid_copy(v30 + 8, a9);
    v32 = 0;
    v31[24] = a11 > 1;
    if (a11 > 1)
    {
      v33 = 64;
      goto LABEL_20;
    }
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

  v33 = 72;
LABEL_20:
  [*(a1 + v33) hk_appendUUIDBytes:a9];
  v48 = *(a1 + 80);
  v35 = v31;
  v49 = v48;
  objc_opt_self();
  v50 = [v49 lastObject];
  v51 = v50;
  if (v50)
  {
    if (v32)
    {
      if (v50[4] != 0.0)
      {
        goto LABEL_28;
      }

      v92 = v50;
      goto LABEL_62;
    }

    if (*(v35 + 4) == v50[4])
    {
      v52 = v50;
      if (*(v35 + 4) != v51[4])
      {
        v91 = [MEMORY[0x277CCA890] currentHandler];
        [v91 handleFailureInMethod:sel_shouldReplaceDatum_ object:v35 file:@"HDWorkoutCondenser.m" lineNumber:2001 description:{@"Invalid parameter not satisfying: %@", @"_startTime == anotherDatum->_startTime"}];
      }

      v53 = *(v35 + 5);
      v54 = v52[5];
      if (v53 < v54)
      {
        goto LABEL_26;
      }

      if (v53 <= v54)
      {
        v86 = *(v35 + 6);
        v87 = v52[6];
        if (v86 < v87)
        {
LABEL_26:

LABEL_27:
          [v49 removeLastObject];
          goto LABEL_28;
        }

        if (v86 <= v87)
        {
          v88 = HKCompareUUIDBytes();

          if (v88 == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

LABEL_62:

      goto LABEL_29;
    }
  }

LABEL_28:
  [v49 addObject:v35];
LABEL_29:

  v55 = [*(a1 + 80) count];
  v56 = *(a1 + 40);
  if (!v56 || v55 >= *(v56 + 32))
  {
    v58 = [*(a1 + 80) firstObject];
    v59 = [*(a1 + 88) count];
    v60 = *(a1 + 40);
    if (v60 && v59 < v60[5] || (!v58 ? (v61 = 0.00000011920929) : (v61 = v58[4] + 0.00000011920929), v61 < *(*(*(a1 + 136) + 8) + 24)))
    {
LABEL_44:
      if (![*(a1 + 88) count])
      {
        if (v58)
        {
          *(*(*(a1 + 152) + 8) + 24) = v58[4];
          v71 = *(v58 + 5);
        }

        else
        {
          *(*(*(a1 + 152) + 8) + 24) = 0;
          v71 = 0;
        }

        *(*(*(a1 + 136) + 8) + 24) = v71;
      }

      v72 = *(*(a1 + 136) + 8);
      v73 = *(v72 + 24);
      if (v58)
      {
        if (v73 < v58[5])
        {
          v73 = v58[5];
        }

        *(v72 + 24) = v73;
        v75 = v58[5];
        v74 = v58[6];
        v76 = v58[4];
      }

      else
      {
        v74 = 0.0;
        if (v73 < 0.0)
        {
          v73 = 0.0;
        }

        *(v72 + 24) = v73;
        v76 = 0.0;
        v75 = 0.0;
      }

      v77 = *(a1 + 88);
      v78 = [MEMORY[0x277CCD180] datumWithStartTime:v76 value:v74 endTime:v75];
      [v77 addObject:v78];

      if ([*(a1 + 96) aggregationStyle] || *(a1 + 176) != 1)
      {
        v79 = *(a1 + 96);
        v80 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
        if (![v79 isEqual:v80])
        {

          goto LABEL_64;
        }

        v81 = *(a1 + 177);

        if (v81 != 1 || ![HDWorkoutCondenser coalesceHeartRateDatumsInDatumsCollection:*(a1 + 88)])
        {
          goto LABEL_64;
        }
      }

      else if (![HDWorkoutCondenser coalesceCumulativeDatumsInDatumsCollection:*(a1 + 88)])
      {
        goto LABEL_64;
      }

      ++*(*(*(a1 + 160) + 8) + 24);
LABEL_64:
      [*(a1 + 80) removeObjectAtIndex:0];
      v57 = 1;
LABEL_65:

      goto LABEL_75;
    }

    v99 = 0;
    v62 = [(HDWorkoutCondenser *)*(a1 + 168) _insertValuesForSeries:*(a1 + 96) quantityType:*(a1 + 88) startTime:*(*(*(a1 + 120) + 8) + 40) values:v60 provenance:*(a1 + 32) configuration:&v99 transaction:*(*(*(a1 + 152) + 8) + 24) countOut:a13 error:?];
    v63 = *(*(a1 + 144) + 8);
    v64 = *(v63 + 40);
    *(v63 + 40) = v62;

    v65 = *(*(*(a1 + 144) + 8) + 40);
    if (v65)
    {
      v66 = *(a1 + 40);
      if (v66)
      {
        v67 = v66[5];
      }

      else
      {
        v67 = 0;
      }

      if (v99 < v67)
      {
        goto LABEL_43;
      }

      v68 = [(HDWorkoutCondenser *)*(a1 + 168) _finishSeries:v65 quantityType:*(a1 + 96) baseMetadata:*(*(*(a1 + 128) + 8) + 40) workout:*(a1 + 104) UUIDDataToDelete:*(a1 + 72) configuration:v66 transaction:*(a1 + 32) error:a13];
      [*(*(*(a1 + 128) + 8) + 40) removeObjectsForKeys:*(a1 + 56)];
      if (v68)
      {
        v69 = *(*(a1 + 144) + 8);
        v70 = *(v69 + 40);
        *(v69 + 40) = 0;

        [*(a1 + 72) setLength:0];
LABEL_43:
        [*(a1 + 88) removeAllObjects];
        goto LABEL_44;
      }

      _HKInitializeLogging();
      v89 = HKLogCondenser();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
LABEL_83:

        v57 = 0;
        goto LABEL_65;
      }

      *v100 = 136315138;
      *&v100[4] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
      v90 = "Failed to finish a series in the enumerator of workout condenser in %s";
    }

    else
    {
      _HKInitializeLogging();
      v89 = HKLogCondenser();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *v100 = 136315138;
      *&v100[4] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
      v90 = "Failed to insert into series in the enumerator of workout condenser in %s";
    }

    _os_log_error_impl(&dword_228986000, v89, OS_LOG_TYPE_ERROR, v90, v100, 0xCu);
    goto LABEL_83;
  }

  v57 = 1;
LABEL_75:

  return v57;
}

+ (id)_insertValuesForSeries:(void *)series quantityType:(void *)type startTime:(void *)time values:(void *)values provenance:(void *)provenance configuration:(void *)configuration transaction:(double)transaction countOut:(uint64_t)self0 error:
{
  outCopy2 = out;
  v63[1] = *MEMORY[0x277D85DE8];
  WeakRetained = a2;
  seriesCopy = series;
  typeCopy = type;
  timeCopy = time;
  valuesCopy = values;
  provenanceCopy = provenance;
  objc_opt_self();
  if (!WeakRetained)
  {
    v56 = provenanceCopy;
    _HKInitializeLogging();
    v22 = HKLogCondenser();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

    if (v23)
    {
      v24 = HKLogCondenser();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = seriesCopy;
        *&buf[12] = 2048;
        *&buf[14] = [typeCopy count];
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "Create series quantityType %{public}@ with %lu values", buf, 0x16u);
      }
    }

    v57 = valuesCopy;
    v58 = typeCopy;
    if (valuesCopy)
    {
      WeakRetained = objc_loadWeakRetained(valuesCopy + 1);
    }

    else
    {
      WeakRetained = 0;
    }

    dataObjectClass = [seriesCopy dataObjectClass];
    v26 = MEMORY[0x277CCD7E8];
    canonicalUnit = [seriesCopy canonicalUnit];
    v28 = [v26 quantityWithUnit:canonicalUnit doubleValue:0.0];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:transaction];
    v59 = seriesCopy;
    v30 = [dataObjectClass _unfrozenQuantitySampleWithQuantityType:seriesCopy quantity:v28 startDate:v29 device:0];

    dataManager = [WeakRetained dataManager];
    v63[0] = v30;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    v32 = [HDSourceEntity alloc];
    sourceID = [timeCopy sourceID];
    v33 = -[HDSQLiteEntity initWithPersistentID:](v32, "initWithPersistentID:", [sourceID longLongValue]);
    v34 = [HDDeviceEntity alloc];
    deviceID = [timeCopy deviceID];
    v36 = -[HDSQLiteEntity initWithPersistentID:](v34, "initWithPersistentID:", [deviceID longLongValue]);
    sourceVersion = [timeCopy sourceVersion];
    Current = CFAbsoluteTimeGetCurrent();
    timeZoneName = [timeCopy timeZoneName];
    if (timeCopy)
    {
      objc_msgSend_operatingSystemVersion(timeCopy);
    }

    else
    {
      memset(buf, 0, 24);
    }

    v40 = [dataManager insertDataObjects:v55 sourceEntity:v33 deviceEntity:v36 sourceVersion:sourceVersion creationDate:timeZoneName timeZone:buf OSVersion:Current error:out];

    if (!v40)
    {
      v51 = 0;
      typeCopy = v58;
      v42 = v59;
      v45 = v56;
      valuesCopy = v57;
      goto LABEL_26;
    }

    uUID = [v30 UUID];

    WeakRetained = uUID;
    typeCopy = v58;
    seriesCopy = v59;
    provenanceCopy = v56;
    valuesCopy = v57;
    outCopy2 = out;
  }

  v42 = seriesCopy;
  protectedDatabase = [provenanceCopy protectedDatabase];
  v44 = HDDataEntityPredicateForDataUUID();
  v30 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:protectedDatabase predicate:v44 error:outCopy2];

  v45 = provenanceCopy;
  if (!v30)
  {
    v51 = 0;
LABEL_26:
    v49 = timeCopy;
    goto LABEL_27;
  }

  _HKInitializeLogging();
  v46 = HKLogCondenser();
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);

  if (v47)
  {
    v48 = HKLogCondenser();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v53 = [typeCopy count];
      *buf = 134217984;
      *&buf[4] = v53;
      _os_log_debug_impl(&dword_228986000, v48, OS_LOG_TYPE_DEBUG, "Insert %lu values into series", buf, 0xCu);
    }
  }

  v49 = timeCopy;
  if ([v30 insertValues:typeCopy transaction:provenanceCopy error:outCopy2])
  {
    if (configuration)
    {
      v50 = [v30 countForSeriesWithTransaction:provenanceCopy error:outCopy2];
      v51 = v50;
      if (!v50)
      {
        goto LABEL_27;
      }

      *configuration = [v50 integerValue];
    }

    WeakRetained = WeakRetained;
    v51 = WeakRetained;
  }

  else
  {
    v51 = 0;
  }

LABEL_27:

  return v51;
}

+ (uint64_t)_finishSeries:(void *)series quantityType:(void *)type baseMetadata:(void *)metadata workout:(void *)workout UUIDDataToDelete:(void *)delete configuration:(void *)configuration transaction:(uint64_t)transaction error:
{
  v15 = a2;
  seriesCopy = series;
  typeCopy = type;
  metadataCopy = metadata;
  workoutCopy = workout;
  deleteCopy = delete;
  configurationCopy = configuration;
  objc_opt_self();
  v31 = deleteCopy;
  v32 = configurationCopy;
  v33 = v15;
  v34 = typeCopy;
  v35 = seriesCopy;
  v36 = metadataCopy;
  v22 = workoutCopy;
  v23 = metadataCopy;
  v24 = seriesCopy;
  v25 = typeCopy;
  v26 = v15;
  v27 = configurationCopy;
  v28 = deleteCopy;
  v29 = HKWithAutoreleasePool();

  return v29;
}

+ (uint64_t)_deleteSamplesWithUUIDData:(void *)data configuration:(uint64_t)configuration error:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  dataCopy = data;
  objc_opt_self();
  hk_countOfUUIDs = [v6 hk_countOfUUIDs];
  _HKInitializeLogging();
  v9 = HKLogCondenser();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogCondenser();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134217984;
      v19 = hk_countOfUUIDs;
      _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Delete %ld condensed samples", &v18, 0xCu);
    }
  }

  if (dataCopy)
  {
    v12 = dataCopy[7];
    if (v12)
    {
      v12[7] += hk_countOfUUIDs;
    }
  }

  v13 = objc_alloc_init(HDDataDeletionConfiguration);
  [(HDDataDeletionConfiguration *)v13 setFailIfNotFound:0];
  [(HDDataDeletionConfiguration *)v13 setPreserveExactStartAndEndDates:1];
  if (dataCopy)
  {
    WeakRetained = objc_loadWeakRetained(dataCopy + 1);
  }

  else
  {
    WeakRetained = 0;
  }

  dataManager = [WeakRetained dataManager];
  v16 = [dataManager deleteObjectsWithUUIDCollection:v6 configuration:v13 error:configuration];

  return v16;
}

uint64_t __119__HDWorkoutCondenser__finishSeries_quantityType_baseMetadata_workout_UUIDDataToDelete_configuration_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [*(a1 + 40) protectedDatabase];
  v7 = HDDataEntityPredicateForDataUUID();
  v8 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v6 predicate:v7 error:a2];

  if (v8)
  {
    v37 = WeakRetained;
    v9 = *(a1 + 72);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = v9;
    v14 = v8;
    v15 = [objc_opt_self() seriesSyncIdentifierForEntity:v14 workout:v13 transaction:v12 error:a2];

    if (v15)
    {
      [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCC520]];
      [v11 setObject:&unk_283CB3FD8 forKeyedSubscript:*MEMORY[0x277CCC528]];
      v16 = v11;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      _HKInitializeLogging();
      v18 = HKLogCondenser();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (v19)
      {
        v20 = HKLogCondenser();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v33 = [*(a1 + 72) UUID];
          v34 = *(a1 + 48);
          *buf = 138543874;
          v41 = v33;
          v42 = 2114;
          v43 = v34;
          v44 = 2114;
          v45 = v16;
          _os_log_debug_impl(&dword_228986000, v20, OS_LOG_TYPE_DEBUG, "Workout (%{public}@) freeze series %{public}@ with metadata: %{public}@", buf, 0x20u);
        }
      }

      WeakRetained = v37;
      v21 = [HDQuantitySampleSeriesEntity freezeSeriesWithIdentifier:*(a1 + 48) metadata:v16 endDate:0 profile:v37 error:a2];
      if (v21)
      {
        _HKInitializeLogging();
        v22 = HKLogCondenser();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

        if (v23)
        {
          v24 = HKLogCondenser();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v35 = [*(a1 + 72) UUID];
            v36 = [v21 frozenIdentifier];
            *buf = 138543618;
            v41 = v35;
            v42 = 2114;
            v43 = v36;
            _os_log_debug_impl(&dword_228986000, v24, OS_LOG_TYPE_DEBUG, "Workout (%{public}@) associate series %{public}@", buf, 0x16u);
          }
        }

        v25 = [v21 frozenIdentifier];
        v39 = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        v27 = [*(a1 + 72) UUID];
        v38 = 0;
        v28 = [HDAssociationEntity associateSampleUUIDs:v26 withSampleUUID:v27 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v38 profile:v37 error:a2];
        v29 = v38;

        if (v28)
        {
          v30 = *(a1 + 32);
          if (v30)
          {
            v31 = *(v30 + 56);
            if (v31)
            {
              ++v31[6];
            }
          }

          v17 = [(HDWorkoutCondenser *)*(a1 + 88) _deleteSamplesWithUUIDData:*(a1 + 32) configuration:a2 error:?];
        }

        else
        {
          v17 = 0;
        }

        WeakRetained = v37;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
      WeakRetained = v37;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __76__HDWorkoutCondenser__updateCondenserVersionForWorkout_configuration_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  v7 = [v5 date];
  v8 = [v4 updateCondenserVersion:6 date:v7 transaction:v6 error:a3];

  return v8;
}

+ (id)condensableQuantityTypes
{
  v29[25] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v29[0] = v28;
  v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v29[1] = v27;
  v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v29[2] = v26;
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v29[3] = v25;
  v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB48]];
  v29[4] = v24;
  v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v29[5] = v23;
  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC30]];
  v29[6] = v22;
  v21 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC38]];
  v29[7] = v21;
  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC40]];
  v29[8] = v20;
  v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC48]];
  v29[9] = v19;
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC50]];
  v29[10] = v18;
  v17 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
  v29[11] = v17;
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];
  v29[12] = v16;
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v29[13] = v15;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];
  v29[14] = v14;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v29[15] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v29[16] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v29[17] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v29[18] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v29[19] = v6;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v29[20] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v29[21] = v8;
  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];
  v29[22] = v9;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];
  v29[23] = v10;
  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];
  v29[24] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:25];

  return v13;
}

+ (BOOL)coalesceCumulativeDatumsInDatumsCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy count];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    lastObject = [collectionCopy lastObject];
    [lastObject timeInterval];
    v9 = v8;
    [lastObject value];
    v11 = v10;
    [lastObject duration];
    v13 = v9 + v12;
    v14 = [collectionCopy objectAtIndex:v5];
    [v14 timeInterval];
    v16 = v15;
    [v14 value];
    v18 = v17;
    [v14 duration];
    v20 = v19;
    objc_opt_self();
    v6 = 0;
    if (v13 - v9 > 0.0)
    {
      v21 = v16 + v20;
      if (v21 - v16 > 0.0)
      {
        v6 = 0;
        if (vabdd_f64(v9, v21) <= 0.000011920929 && vabdd_f64(v11 / (v13 - v9), v18 / (v21 - v16)) <= 0.0000011920929)
        {
          if (v13 <= v21)
          {
            v22 = v16 + v20;
          }

          else
          {
            v22 = v13;
          }

          [collectionCopy removeObjectsInRange:{objc_msgSend(collectionCopy, "count") - 2, 2}];
          v23 = [MEMORY[0x277CCD180] datumWithStartTime:v16 value:v11 + v18 endTime:v22];
          [collectionCopy addObject:v23];

          v6 = 1;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)coalesceHeartRateDatumsInDatumsCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy count];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    lastObject = [collectionCopy lastObject];
    [lastObject timeInterval];
    v9 = v8;
    [lastObject value];
    v11 = v10;
    [lastObject duration];
    v13 = v12;
    v14 = [collectionCopy objectAtIndex:v5];
    [v14 timeInterval];
    v16 = v15;
    [v14 value];
    v18 = v17;
    [v14 duration];
    v20 = v16 + v19;
    objc_opt_self();
    v21 = vabdd_f64(v11, v18) <= 0.0000011920929;
    v6 = vabdd_f64(v9, v20) < 11.0 && v21;
    if (v6)
    {
      if (v9 + v13 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v9 + v13;
      }

      [collectionCopy removeObjectsInRange:{objc_msgSend(collectionCopy, "count") - 2, 2}];
      v23 = [MEMORY[0x277CCD180] datumWithStartTime:v16 value:v18 endTime:v22];
      [collectionCopy addObject:v23];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

BOOL __112__HDWorkoutCondenser__queue_submitAnalyticEventForReason_batchSize_success_duration_analyticsAccumulator_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D10A48];
  v6 = a2;
  v7 = HDSourceEntityPredicateForAppleWatchSources();
  v8 = [v6 unprotectedDatabase];

  v9 = [(HDSQLiteEntity *)HDSourceEntity countValueForProperty:v5 predicate:v7 database:v8 error:a3];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v4 = *MEMORY[0x277D86230];
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, v4, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86378], 1);
}

void __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 24) invalidate];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = [WeakRetained database];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v13 = 0;
  v6 = [v3 takeAccessibilityAssertionWithOwnerIdentifier:v5 timeout:&v13 error:300.0];
  v7 = v13;
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v6;

  if (!*(*(a1 + 32) + 24))
  {
    _HKInitializeLogging();
    v10 = HKLogCondenser();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

    if (v11)
    {
      v12 = HKLogCondenser();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "Unable to get accessibilityAssertion before enqueing maintenance operation: %{public}@", buf, 0xCu);
      }
    }
  }
}

void __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_400(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogCondenser();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogCondenser();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Maintenance operation running", buf, 2u);
    }
  }

  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_401;
  v10[3] = &unk_27861FA38;
  v10[4] = v7;
  v11 = v3;
  v8 = *(a1 + 48);
  v12 = *(a1 + 40);
  v9 = v3;
  [v7 condenseWorkoutsForReason:0 workoutBatchLimit:v8 completion:v10];
}

void __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_401(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[5];
  v5 = *(v4 + 16);
  v6 = a3;
  v5(v4);
  _HKInitializeLogging();
  v7 = HKLogCondenser();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogCondenser();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Maintenance operation finished", v12, 2u);
    }
  }

  [*(a1[4] + 24) invalidate];
  v10 = a1[4];
  v11 = *(v10 + 24);
  *(v10 + 24) = 0;

  (*(a1[6] + 16))(0.0);
}

@end