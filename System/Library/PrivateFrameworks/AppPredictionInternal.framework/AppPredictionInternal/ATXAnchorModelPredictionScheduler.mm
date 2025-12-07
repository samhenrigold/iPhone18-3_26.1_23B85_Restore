@interface ATXAnchorModelPredictionScheduler
- (ATXAnchorModelPredictionScheduler)init;
- (ATXAnchorModelPredictionScheduler)initWithPredictionForwarder:(id)forwarder hyperParameters:(id)parameters tracker:(id)tracker now:(id)now maxPredictions:(unint64_t)predictions;
- (BOOL)dateIsInFuture:(id)future now:(id)now;
- (id)_cache;
- (id)_readPredictionsFromCache;
- (id)criteriaForJobOnDate:(id)date;
- (id)dateOfSoonestUpcomingPredictionChange;
- (id)deduplicatedPredictions:(id)predictions;
- (id)earlierDateInFuture:(id)future earliestDateSoFar:(id)far now:(id)now;
- (id)now;
- (id)predictions;
- (id)predictionsAfterFilteringInactiveAnchors:(id)anchors;
- (id)predictionsValidNow;
- (id)predictionsWithTimeIntervalOverlappingWithCurrentTime;
- (void)clearPredictionsForAnchor:(id)anchor;
- (void)forwardPredictionUpdates;
- (void)forwardPredictionUpdatesOnDate:(id)date;
- (void)initializeLock;
- (void)logPredictionsGeneratedMetricsWithAnchorModelPredictions:(id)predictions;
- (void)persistPredictions:(id)predictions anchor:(id)anchor;
- (void)registerXPCActivityForPredictionUpdateWithCriteria:(id)criteria;
- (void)scheduleNextPredictionUpdate;
- (void)schedulePredictions:(id)predictions anchor:(id)anchor;
@end

@implementation ATXAnchorModelPredictionScheduler

- (ATXAnchorModelPredictionScheduler)init
{
  v3 = objc_opt_new();
  v4 = +[ATXAnchorModelHyperParameters sharedInstance];
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPredictionScheduler *)self initWithPredictionForwarder:v3 hyperParameters:v4 tracker:v5 now:0 maxPredictions:45];

  return v6;
}

- (ATXAnchorModelPredictionScheduler)initWithPredictionForwarder:(id)forwarder hyperParameters:(id)parameters tracker:(id)tracker now:(id)now maxPredictions:(unint64_t)predictions
{
  forwarderCopy = forwarder;
  parametersCopy = parameters;
  trackerCopy = tracker;
  nowCopy = now;
  v23.receiver = self;
  v23.super_class = ATXAnchorModelPredictionScheduler;
  v17 = [(ATXAnchorModelPredictionScheduler *)&v23 init];
  v18 = v17;
  if (v17)
  {
    [(ATXAnchorModelPredictionScheduler *)v17 initializeLock];
    objc_storeStrong(&v18->_predictionForwarder, forwarder);
    objc_storeStrong(&v18->_hyperParameters, parameters);
    objc_storeStrong(&v18->_tracker, tracker);
    objc_storeStrong(&v18->_now, now);
    v18->_maxPredictions = predictions;
    v19 = objc_alloc(MEMORY[0x277CBEBD0]);
    v20 = [v19 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v18->_defaults;
    v18->_defaults = v20;
  }

  return v18;
}

- (void)initializeLock
{
  v5 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v5];
  schedulerLock = self->_schedulerLock;
  self->_schedulerLock = v3;
}

- (id)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)clearPredictionsForAnchor:(id)anchor
{
  v8 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v5 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Scheduler clearing predictions for anchor %@.", &v6, 0xCu);
  }

  [(ATXAnchorModelPredictionScheduler *)self schedulePredictions:MEMORY[0x277CBEBF8] anchor:anchorCopy];
}

- (void)schedulePredictions:(id)predictions anchor:(id)anchor
{
  v45 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  anchorCopy = anchor;
  v8 = __atxlog_handle_anchor(anchorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", buf, 2u);
  }

  v10 = __atxlog_handle_anchor(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [predictionsCopy count];
    *buf = 134218242;
    v42 = v11;
    v43 = 2112;
    v44 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Scheduler received %lu predictions for anchor %@. Predictions:", buf, 0x16u);
  }

  v12 = [predictionsCopy mutableCopy];
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v40 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  [v12 sortUsingDescriptors:v14];

  v15 = v12;
  v16 = v15;
  if ([v15 count] > self->_maxPredictions)
  {
    v16 = [v15 subarrayWithRange:0];

    v18 = __atxlog_handle_anchor(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 count];
      *buf = 134217984;
      v42 = v19;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Scheduler clipping anchor model predictions to the top scoring %lu predictions.", buf, 0xCu);
    }
  }

  v32 = v15;
  v33 = anchorCopy;
  selfCopy = self;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * i);
        v26 = objc_autoreleasePoolPush();
        v27 = __atxlog_handle_anchor(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v25;
          _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }

  v29 = __atxlog_handle_anchor(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Scheduling...", buf, 2u);
  }

  v31 = __atxlog_handle_anchor(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", buf, 2u);
  }

  [(ATXAnchorModelPredictionScheduler *)selfCopy persistPredictions:v20 anchor:v33];
  [(ATXAnchorModelPredictionScheduler *)selfCopy forwardPredictionUpdates];
  [(ATXAnchorModelPredictionScheduler *)selfCopy logPredictionsGeneratedMetricsWithAnchorModelPredictions:v20];
}

- (void)persistPredictions:(id)predictions anchor:(id)anchor
{
  predictionsCopy = predictions;
  anchorCopy = anchor;
  v8 = objc_autoreleasePoolPush();
  schedulerLock = self->_schedulerLock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ATXAnchorModelPredictionScheduler_persistPredictions_anchor___block_invoke;
  v12[3] = &unk_2785984B0;
  v12[4] = self;
  v10 = predictionsCopy;
  v13 = v10;
  v11 = anchorCopy;
  v14 = v11;
  [(_PASLock *)schedulerLock runWithLockAcquired:v12];

  objc_autoreleasePoolPop(v8);
}

void __63__ATXAnchorModelPredictionScheduler_persistPredictions_anchor___block_invoke(id *a1)
{
  v6 = [a1[4] _readPredictionsFromCache];
  v2 = [a1[5] copy];
  v3 = [a1[6] anchorTypeString];
  [v6 setObject:v2 forKey:v3];

  v4 = [a1[4] _cache];
  v5 = [v6 copy];
  [v4 storeSecureCodedObject:v5 error:0];
}

- (id)_cache
{
  appPredictionCacheDirectory = [MEMORY[0x277CEBCB0] appPredictionCacheDirectory];
  v3 = [appPredictionCacheDirectory stringByAppendingPathComponent:@"anchorModelSchedulerCurrentPredictions"];

  v4 = objc_alloc(MEMORY[0x277CEBC68]);
  v5 = __atxlog_handle_anchor(v4);
  v6 = [v4 initWithCacheFilePath:v3 loggingHandle:v5 debugName:@"cached anchor model predictions"];

  return v6;
}

- (void)scheduleNextPredictionUpdate
{
  dateOfSoonestUpcomingPredictionChange = [(ATXAnchorModelPredictionScheduler *)self dateOfSoonestUpcomingPredictionChange];
  [(ATXAnchorModelPredictionScheduler *)self forwardPredictionUpdatesOnDate:dateOfSoonestUpcomingPredictionChange];
}

- (id)dateOfSoonestUpcomingPredictionChange
{
  v24 = *MEMORY[0x277D85DE8];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(ATXAnchorModelPredictionScheduler *)self predictions];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        dateIntervalForPrediction = [v7 dateIntervalForPrediction];
        startDate = [dateIntervalForPrediction startDate];
        v11 = [(ATXAnchorModelPredictionScheduler *)self now];
        v12 = [(ATXAnchorModelPredictionScheduler *)self earlierDateInFuture:startDate earliestDateSoFar:distantFuture now:v11];

        dateIntervalForPrediction2 = [v7 dateIntervalForPrediction];
        endDate = [dateIntervalForPrediction2 endDate];
        v15 = [(ATXAnchorModelPredictionScheduler *)self now];
        distantFuture = [(ATXAnchorModelPredictionScheduler *)self earlierDateInFuture:endDate earliestDateSoFar:v12 now:v15];

        objc_autoreleasePoolPop(v8);
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return distantFuture;
}

- (id)earlierDateInFuture:(id)future earliestDateSoFar:(id)far now:(id)now
{
  futureCopy = future;
  farCopy = far;
  v10 = [(ATXAnchorModelPredictionScheduler *)self dateIsInFuture:futureCopy now:now];
  v11 = farCopy;
  if (v10)
  {
    v12 = [farCopy earlierDate:futureCopy];

    if (v12 == farCopy)
    {
      v11 = farCopy;
    }

    else
    {
      v11 = futureCopy;
    }
  }

  v13 = v11;

  return v11;
}

- (BOOL)dateIsInFuture:(id)future now:(id)now
{
  nowCopy = now;
  v6 = [nowCopy earlierDate:future];

  return v6 == nowCopy;
}

- (id)predictions
{
  v3 = objc_opt_new();
  schedulerLock = self->_schedulerLock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ATXAnchorModelPredictionScheduler_predictions__block_invoke;
  v9[3] = &unk_2785984D8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(_PASLock *)schedulerLock runWithLockAcquired:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __48__ATXAnchorModelPredictionScheduler_predictions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _readPredictionsFromCache];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) addObjectsFromArray:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_readPredictionsFromCache
{
  _cache = [(ATXAnchorModelPredictionScheduler *)self _cache];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 initWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  v9 = [_cache readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:-1.0];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  return v13;
}

- (void)forwardPredictionUpdatesOnDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = [(ATXAnchorModelPredictionScheduler *)self now];
  v6 = [(ATXAnchorModelPredictionScheduler *)self dateIsInFuture:dateCopy now:v5];

  if (v6)
  {
    v8 = __atxlog_handle_anchor(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = dateCopy;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Scheduler scheduling next update on %@", &v10, 0xCu);
    }

    v9 = [(ATXAnchorModelPredictionScheduler *)self criteriaForJobOnDate:dateCopy];
    [(ATXAnchorModelPredictionScheduler *)self registerXPCActivityForPredictionUpdateWithCriteria:v9];
  }

  else
  {
    [(ATXAnchorModelPredictionScheduler *)self forwardPredictionUpdates];
  }
}

- (void)registerXPCActivityForPredictionUpdateWithCriteria:(id)criteria
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __88__ATXAnchorModelPredictionScheduler_registerXPCActivityForPredictionUpdateWithCriteria___block_invoke;
  handler[3] = &unk_278598500;
  handler[4] = self;
  xpc_activity_register("com.apple.duetexpertd.anchor-model-prediction-scheduler", criteria, handler);
}

void __88__ATXAnchorModelPredictionScheduler_registerXPCActivityForPredictionUpdateWithCriteria___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = [MEMORY[0x277D42598] isClassCLocked];
    if ((v4 & 1) == 0)
    {
      v5 = __atxlog_handle_anchor(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Forwarding Anchor Model prediction updates due to scheduled update.", v7, 2u);
      }

      v6 = objc_autoreleasePoolPush();
      [*(a1 + 32) forwardPredictionUpdates];
      objc_autoreleasePoolPop(v6);
    }
  }
}

- (id)criteriaForJobOnDate:(id)date
{
  dateCopy = date;
  v5 = [(ATXAnchorModelPredictionScheduler *)self now];
  [dateCopy timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], v7);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], 60);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v8, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86360], 0);

  return v8;
}

- (void)forwardPredictionUpdates
{
  predictionsValidNow = [(ATXAnchorModelPredictionScheduler *)self predictionsValidNow];
  v4 = __atxlog_handle_anchor([(ATXAnchorModelPredictionForwarderProtocol *)self->_predictionForwarder forwardPredictions:predictionsValidNow]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Scheduler forwarded predictions.", v5, 2u);
  }

  [(ATXAnchorModelPredictionScheduler *)self scheduleNextPredictionUpdate];
}

- (id)predictionsValidNow
{
  v11[1] = *MEMORY[0x277D85DE8];
  predictionsWithTimeIntervalOverlappingWithCurrentTime = [(ATXAnchorModelPredictionScheduler *)self predictionsWithTimeIntervalOverlappingWithCurrentTime];
  v4 = [predictionsWithTimeIntervalOverlappingWithCurrentTime mutableCopy];

  v5 = [(ATXAnchorModelPredictionScheduler *)self predictionsAfterFilteringInactiveAnchors:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v6 sortUsingDescriptors:v8];

  v9 = [(ATXAnchorModelPredictionScheduler *)self deduplicatedPredictions:v6];

  return v9;
}

- (id)predictionsWithTimeIntervalOverlappingWithCurrentTime
{
  predictions = [(ATXAnchorModelPredictionScheduler *)self predictions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__ATXAnchorModelPredictionScheduler_predictionsWithTimeIntervalOverlappingWithCurrentTime__block_invoke;
  v6[3] = &unk_278598528;
  v6[4] = self;
  v4 = [predictions _pas_filteredArrayWithTest:v6];

  return v4;
}

uint64_t __90__ATXAnchorModelPredictionScheduler_predictionsWithTimeIntervalOverlappingWithCurrentTime__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 dateIntervalForPrediction];
  v6 = [*(a1 + 32) now];
  v7 = [v5 containsDate:v6];

  objc_autoreleasePoolPop(v4);
  return v7;
}

- (id)predictionsAfterFilteringInactiveAnchors:(id)anchors
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__ATXAnchorModelPredictionScheduler_predictionsAfterFilteringInactiveAnchors___block_invoke;
  v5[3] = &unk_278598528;
  v5[4] = self;
  v3 = [anchors _pas_filteredArrayWithTest:v5];

  return v3;
}

uint64_t __78__ATXAnchorModelPredictionScheduler_predictionsAfterFilteringInactiveAnchors___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 anchorType];
  [ATXAnchor anchorClassFromAnchorTypeString:v4];
  v5 = objc_opt_new();

  v6 = [objc_opt_class() isActive];
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    v8 = __atxlog_handle_anchor(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Filtering out Anchor Model prediction because the anchor is no longer active. Prediction %@", &v10, 0xCu);
    }

    [*(a1 + 32) clearPredictionsForAnchor:v5];
  }

  return v7;
}

- (id)deduplicatedPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __61__ATXAnchorModelPredictionScheduler_deduplicatedPredictions___block_invoke;
  v13 = &unk_278598550;
  v14 = v4;
  v15 = v5;
  v6 = v5;
  v7 = v4;
  [predictionsCopy enumerateObjectsUsingBlock:&v10];
  v8 = [predictionsCopy objectsAtIndexes:{v6, v10, v11, v12, v13}];

  return v8;
}

void __61__ATXAnchorModelPredictionScheduler_deduplicatedPredictions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  v7 = [v5 candidateId];
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    [*(a1 + 40) addIndex:a3];
    v8 = *(a1 + 32);
    v9 = [v10 candidateId];
    [v8 addObject:v9];
  }
}

- (void)logPredictionsGeneratedMetricsWithAnchorModelPredictions:(id)predictions
{
  v48 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [predictionsCopy countByEnumeratingWithState:&v29 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v25 = predictionsCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(predictionsCopy);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = objc_opt_new();
        anchorType = [v9 anchorType];
        [v10 setAnchorType:anchorType];

        [v9 score];
        [v10 setScore:?];
        candidateType = [v9 candidateType];
        [v10 setCandidateType:candidateType];

        offsetFromAnchorToShowPrediction = [v9 offsetFromAnchorToShowPrediction];
        [offsetFromAnchorToShowPrediction startSecondsAfterAnchor];
        [v10 setSecondsAfterAnchorStart:v14];

        offsetFromAnchorToShowPrediction2 = [v9 offsetFromAnchorToShowPrediction];
        [offsetFromAnchorToShowPrediction2 endSecondsAfterAnchor];
        [v10 setSecondsAfterAnchorEnd:v16];

        abGroup = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
        [v10 setAbGroup:abGroup];

        v18 = __atxlog_handle_metrics([(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v10]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = objc_opt_class();
          v28 = NSStringFromClass(v19);
          anchorType2 = [v10 anchorType];
          candidateType2 = [v10 candidateType];
          [v10 score];
          v23 = v22;
          secondsAfterAnchorStart = [v10 secondsAfterAnchorStart];
          secondsAfterAnchorEnd = [v10 secondsAfterAnchorEnd];
          abGroup2 = [v10 abGroup];
          *buf = 138413826;
          v34 = v28;
          v35 = 2112;
          v36 = anchorType2;
          v37 = 2112;
          v38 = candidateType2;
          v39 = 2048;
          v40 = v23;
          v41 = 1024;
          v42 = secondsAfterAnchorStart;
          v43 = 1024;
          v44 = secondsAfterAnchorEnd;
          v45 = 2112;
          v46 = abGroup2;
          _os_log_debug_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAnchorModelPredictionsGeneratedTracker with anchorType: %@ candidateType: %@ score: %f secondsAfterAnchorStart: %u secondsAfterAnchorEnd: %u abGroup: %@", buf, 0x40u);

          predictionsCopy = v25;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [predictionsCopy countByEnumeratingWithState:&v29 objects:v47 count:16];
    }

    while (v6);
  }
}

@end