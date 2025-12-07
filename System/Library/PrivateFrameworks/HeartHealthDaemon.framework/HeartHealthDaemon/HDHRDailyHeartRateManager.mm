@interface HDHRDailyHeartRateManager
- (HDHRDailyHeartRateManager)initWithProfile:(id)profile;
- (void)_queue_cleanupValuesForTodayCacheIndex:(int64_t)index yesterdayCacheIndex:(int64_t)cacheIndex;
- (void)_queue_deleteHeartRateOfType:(id)type forCacheIndex:(int64_t)index replacementUUID:(id)d;
- (void)_queue_replaceHeartRate:(id)rate ofType:(id)type forCacheIndex:(int64_t)index dateInterval:(id)interval heartRateByCacheIndex:(id)cacheIndex;
- (void)activityCacheManager:(id)manager changedHeartRateSummary:(id)summary isToday:(BOOL)today;
- (void)daemonReady:(id)ready;
- (void)dealloc;
@end

@implementation HDHRDailyHeartRateManager

- (HDHRDailyHeartRateManager)initWithProfile:(id)profile
{
  v22 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v19.receiver = self;
  v19.super_class = HDHRDailyHeartRateManager;
  v5 = [(HDHRDailyHeartRateManager *)&v19 init];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_profile, profileCopy);
    v9 = HDDispatchQueueName();
    v10 = dispatch_queue_create(v9, 0);
    queue = v5->_queue;
    v5->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    healthDaemon = [WeakRetained healthDaemon];
    [healthDaemon registerForDaemonReady:v5];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    restingHeartRateByActivityCacheIndex = v5->_restingHeartRateByActivityCacheIndex;
    v5->_restingHeartRateByActivityCacheIndex = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    walkingAverageHeartRateByActivityCacheIndex = v5->_walkingAverageHeartRateByActivityCacheIndex;
    v5->_walkingAverageHeartRateByActivityCacheIndex = dictionary2;
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_activityCacheInterface);
  [WeakRetained removeActivityCacheObserver:self];

  v4.receiver = self;
  v4.super_class = HDHRDailyHeartRateManager;
  [(HDHRDailyHeartRateManager *)&v4 dealloc];
}

- (void)daemonReady:(id)ready
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received daemon ready", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  activityCacheInterface = [WeakRetained activityCacheInterface];
  objc_storeWeak(&self->_activityCacheInterface, activityCacheInterface);

  v9 = objc_loadWeakRetained(&self->_activityCacheInterface);
  [v9 addActivityCacheObserver:self];
}

- (void)activityCacheManager:(id)manager changedHeartRateSummary:(id)summary isToday:(BOOL)today
{
  v26 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(summaryCopy, "activityCacheIndex")}];
    restingHeartRate = [summaryCopy restingHeartRate];
    walkingAverageHeartRate = [summaryCopy walkingAverageHeartRate];
    *buf = 138544130;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2112;
    v23 = restingHeartRate;
    v24 = 2112;
    v25 = walkingAverageHeartRate;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received heart rate summary (%{public}@) with resting: %@, walking: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDHRDailyHeartRateManager_activityCacheManager_changedHeartRateSummary_isToday___block_invoke;
  v15[3] = &unk_27865FE98;
  v16 = summaryCopy;
  selfCopy = self;
  v14 = summaryCopy;
  dispatch_async(queue, v15);
}

void __82__HDHRDailyHeartRateManager_activityCacheManager_changedHeartRateSummary_isToday___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityCacheIndex];
  v15 = [*(a1 + 32) heartRateDateInterval];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) restingHeartRate];
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC20]];
  [v3 _queue_replaceHeartRate:v4 ofType:v5 forCacheIndex:v2 dateInterval:v15 heartRateByCacheIndex:*(*(a1 + 40) + 32)];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) walkingAverageHeartRate];
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCB8]];
  [v6 _queue_replaceHeartRate:v7 ofType:v8 forCacheIndex:v2 dateInterval:v15 heartRateByCacheIndex:*(*(a1 + 40) + 40)];

  v9 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained(v9 + 2);
  v11 = [WeakRetained currentActivityCache];
  v12 = [v11 cacheIndex];
  v13 = objc_loadWeakRetained((*(a1 + 40) + 16));
  v14 = [v13 yesterdayActivityCache];
  [v9 _queue_cleanupValuesForTodayCacheIndex:v12 yesterdayCacheIndex:{objc_msgSend(v14, "cacheIndex")}];
}

- (void)_queue_replaceHeartRate:(id)rate ofType:(id)type forCacheIndex:(int64_t)index dateInterval:(id)interval heartRateByCacheIndex:(id)cacheIndex
{
  v56 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  typeCopy = type;
  intervalCopy = interval;
  cacheIndexCopy = cacheIndex;
  identifier = [typeCopy identifier];
  if (rateCopy && ![rateCopy _isZero])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
    v45 = cacheIndexCopy;
    v20 = [cacheIndexCopy objectForKeyedSubscript:v19];
    v21 = [rateCopy isEqual:v20];

    if (v21)
    {
      _HKInitializeLogging();
      v17 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
        *buf = 138543874;
        v51 = v22;
        v52 = 2114;
        v53 = identifier;
        v54 = 2112;
        v55 = rateCopy;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[Daily HR] ignoring activity cache (%{public}@) for %{public}@ because value (%@) did not change", buf, 0x20u);
      }

      cacheIndexCopy = v45;
    }

    else
    {
      v48 = *MEMORY[0x277CCDF98];
      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
      v49 = v23;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

      v24 = MEMORY[0x277CCD800];
      startDate = [intervalCopy startDate];
      v44 = intervalCopy;
      [intervalCopy endDate];
      v27 = v26 = self;
      v28 = [v24 quantitySampleWithType:typeCopy quantity:rateCopy startDate:startDate endDate:v27 metadata:v17];

      WeakRetained = objc_loadWeakRetained(&v26->_profile);
      dataManager = [WeakRetained dataManager];
      v42 = v28;
      v47 = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v39 = v26;
      v31 = objc_loadWeakRetained(&v26->_profile);
      dataProvenanceManager = [v31 dataProvenanceManager];
      defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
      v46 = 0;
      v40 = [dataManager insertDataObjects:v30 withProvenance:defaultLocalDataProvenance creationDate:&v46 error:CFAbsoluteTimeGetCurrent()];
      v43 = v46;

      _HKInitializeLogging();
      v34 = HKLogHeartRateCategory();
      uUID = v34;
      if (v40)
      {
        cacheIndexCopy = v45;
        v36 = v42;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = identifier;
          v52 = 2112;
          v53 = v42;
          _os_log_impl(&dword_229486000, uUID, OS_LOG_TYPE_DEFAULT, "[Daily HR] saved new %{public}@: %@", buf, 0x16u);
        }

        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
        [v45 setObject:rateCopy forKeyedSubscript:v37];

        uUID = [v42 UUID];
        [(HDHRDailyHeartRateManager *)v39 _queue_deleteHeartRateOfType:typeCopy forCacheIndex:index replacementUUID:uUID];
        v38 = v43;
        intervalCopy = v44;
      }

      else
      {
        cacheIndexCopy = v45;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v38 = v43;
          [HDHRDailyHeartRateManager _queue_replaceHeartRate:ofType:forCacheIndex:dateInterval:heartRateByCacheIndex:];
          intervalCopy = v44;
        }

        else
        {
          v38 = v43;
          intervalCopy = v44;
        }

        v36 = v42;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
      *buf = 138543618;
      v51 = v18;
      v52 = 2114;
      v53 = identifier;
      _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[Daily HR] ignoring activity cache (%{public}@) with no value for %{public}@", buf, 0x16u);
    }
  }
}

- (void)_queue_deleteHeartRateOfType:(id)type forCacheIndex:(int64_t)index replacementUUID:(id)d
{
  v35[3] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  v10 = HDSampleEntityPredicateForDataType();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  metadataManager = [WeakRetained metadataManager];
  v13 = *MEMORY[0x277CCDF98];
  v14 = MEMORY[0x277CBEB98];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
  v16 = [v14 setWithObject:v15];
  v17 = [metadataManager predicateWithMetadataKey:v13 allowedValues:v16];

  v18 = MEMORY[0x277D10B20];
  v19 = HDDataEntityPredicateForDataUUID();

  v20 = [v18 negatedPredicate:v19];

  v21 = MEMORY[0x277D10B20];
  v35[0] = v10;
  v35[1] = v17;
  v35[2] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  v23 = [v21 predicateMatchingAllPredicates:v22];

  v34 = 0;
  v24 = objc_loadWeakRetained(&self->_profile);
  dataManager = [v24 dataManager];
  v26 = HDSampleEntityClassForDataType();
  v27 = *MEMORY[0x277D10C08];
  v33 = 0;
  LOBYTE(v32) = 0;
  LOBYTE(v16) = [dataManager deleteDataObjectsOfClass:v26 predicate:v23 limit:v27 deletedSampleCount:&v34 notifyObservers:1 generateDeletedObjects:1 userRequested:v32 recursiveDeleteAuthorizationBlock:0 error:&v33];
  v28 = v33;

  _HKInitializeLogging();
  v29 = HKLogHeartRateCategory();
  v30 = v29;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [HDHRDailyHeartRateManager _queue_deleteHeartRateOfType:typeCopy forCacheIndex:v28 replacementUUID:v30];
    }

    goto LABEL_7;
  }

  v31 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);

  if (v31)
  {
    v30 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [HDHRDailyHeartRateManager _queue_deleteHeartRateOfType:typeCopy forCacheIndex:&v34 replacementUUID:v30];
    }

LABEL_7:
  }
}

- (void)_queue_cleanupValuesForTodayCacheIndex:(int64_t)index yesterdayCacheIndex:(int64_t)cacheIndex
{
  v23 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v16 = v15 = self;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSMutableDictionary *)self->_restingHeartRateByActivityCacheIndex allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:index];
        if ([v11 isEqualToNumber:v12])
        {
        }

        else
        {
          v13 = [MEMORY[0x277CCABB0] numberWithLongLong:cacheIndex];
          v14 = [v11 isEqualToNumber:v13];

          if ((v14 & 1) == 0)
          {
            [v16 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)v15->_restingHeartRateByActivityCacheIndex removeObjectsForKeys:v16];
  [(NSMutableDictionary *)v15->_walkingAverageHeartRateByActivityCacheIndex removeObjectsForKeys:v16];
}

- (void)_queue_replaceHeartRate:ofType:forCacheIndex:dateInterval:heartRateByCacheIndex:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  v3 = v0;
  _os_log_error_impl(&dword_229486000, v1, OS_LOG_TYPE_ERROR, "[Daily HR] error saving new %{public}@: %@", v2, 0x16u);
}

- (void)_queue_deleteHeartRateOfType:(void *)a1 forCacheIndex:(uint64_t)a2 replacementUUID:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_0_11();
  v7 = a2;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[Daily HR] error deleting %@ heart rate sample(s): %@", v6, 0x16u);
}

- (void)_queue_deleteHeartRateOfType:(void *)a1 forCacheIndex:(void *)a2 replacementUUID:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a2];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_229486000, a3, OS_LOG_TYPE_DEBUG, "[Daily HR] deleted %@ previous %@ heart rate sample(s)", &v7, 0x16u);
}

@end