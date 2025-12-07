@interface ATXDailyRoutinesTriggerManager
+ (id)_wakeupDateForExitDate:(id)date fromDate:(id)fromDate;
+ (id)convenienceDateFormatter;
+ (id)sharedInstance;
- (ATXDailyRoutinesTriggerManager)initWithCacheBasedPredictor:(id)predictor transitionPredictor:(id)transitionPredictor contextStoreWriter:(id)writer;
- (NSDate)now;
- (id)currentTransition;
- (void)_scheduleOneShotJobAfterInterval:(double)interval;
- (void)updateWithActivity:(id)activity;
@end

@implementation ATXDailyRoutinesTriggerManager

+ (id)convenienceDateFormatter
{
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v3 = objc_opt_new();
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  [v3 setTimeZone:systemTimeZone];

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_0 != -1)
  {
    +[ATXDailyRoutinesTriggerManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __48__ATXDailyRoutinesTriggerManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D41BF8] sharedInstance];
  v2 = [[ATXPredictedTransitionsCache alloc] initWithLocationManager:v1];
  v3 = [[ATXCommutePredictor alloc] initWithTransitionsCache:v2 locationManager:v1];
  v4 = [[ATXTransitionPredictorCR alloc] initWithLocationManager:v1 locationPredictionsManager:v1];
  v5 = [MEMORY[0x277CFE318] userContext];
  v6 = [MEMORY[0x277CFE338] keyPathForPredictedLocationOfInterestTransitions];
  v7 = [[ATXContextStoreWriter alloc] initWithContext:v5 keyPath:v6];
  v8 = [[ATXDailyRoutinesTriggerManager alloc] initWithCacheBasedPredictor:v3 transitionPredictor:v4 contextStoreWriter:v7];

  v9 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v8;

  objc_autoreleasePoolPop(v0);
}

- (ATXDailyRoutinesTriggerManager)initWithCacheBasedPredictor:(id)predictor transitionPredictor:(id)transitionPredictor contextStoreWriter:(id)writer
{
  predictorCopy = predictor;
  transitionPredictorCopy = transitionPredictor;
  writerCopy = writer;
  v19.receiver = self;
  v19.super_class = ATXDailyRoutinesTriggerManager;
  v12 = [(ATXDailyRoutinesTriggerManager *)&v19 init];
  if (v12)
  {
    convenienceDateFormatter = [objc_opt_class() convenienceDateFormatter];
    dateFormatter = v12->_dateFormatter;
    v12->_dateFormatter = convenienceDateFormatter;

    objc_storeStrong(&v12->_cachedPredictor, predictor);
    objc_storeStrong(&v12->_transitionPredictor, transitionPredictor);
    objc_storeStrong(&v12->_contextStoreWriter, writer);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.duetexpertd.ATXDailyRoutinesTriggerManager", v15);
    queue = v12->_queue;
    v12->_queue = v16;
  }

  return v12;
}

- (NSDate)now
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

- (void)updateWithActivity:(id)activity
{
  activityCopy = activity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ATXDailyRoutinesTriggerManager_updateWithActivity___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_sync(queue, v7);
}

void __53__ATXDailyRoutinesTriggerManager_updateWithActivity___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) getNextTransitionOnActivity:*(a1 + 40)];
  v3 = [*(a1 + 40) didDefer];
  if ((v3 & 1) == 0)
  {
    if (v2)
    {
      [*(*(a1 + 32) + 16) prewarmOnActivity:*(a1 + 40)];
    }

    else
    {
      v4 = __atxlog_handle_dailyroutines(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "No predicted transition received. Attempting to load from cache", &v33, 2u);
      }

      v2 = [*(*(a1 + 32) + 16) getNextTransitionOnActivity:*(a1 + 40)];
    }

    if (([*(a1 + 40) didDefer] & 1) == 0)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      v6 = v5;
      v7 = *(a1 + 32);
      if (v2)
      {
        v35 = @"transition";
        v36[0] = v2;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        [v6 postNotificationName:@"com.apple.duetexpertd.dailyroutines" object:v7 userInfo:v8];

        v10 = __atxlog_handle_dailyroutines(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 138412290;
          v34 = v2;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Using the following transition: %@", &v33, 0xCu);
        }

        v12 = __atxlog_handle_dailyroutines(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(a1 + 32) + 8);
          v14 = [v2 date];
          v15 = [v13 stringFromDate:v14];
          v33 = 138412290;
          v34 = v15;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Transition time: %@", &v33, 0xCu);
        }

        v16 = *(a1 + 32);
        v17 = v16[4];
        v18 = [v16 now];
        v19 = [v2 transitionArrayForDate:v18];
        v20 = [v17 setWithObject:v19];

        v22 = __atxlog_handle_dailyroutines(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 67109120;
          LODWORD(v34) = v20;
          _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Context store updated: %{BOOL}d", &v33, 8u);
        }

        v23 = objc_opt_class();
        v24 = [v2 date];
        v25 = [*(a1 + 32) now];
        v26 = [v23 _wakeupDateForExitDate:v24 fromDate:v25];

        v28 = __atxlog_handle_dailyroutines(v27);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v29)
          {
            v30 = [*(*(a1 + 32) + 8) stringFromDate:v26];
            v33 = 138412290;
            v34 = v30;
            _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Scheduling one shot job for %@", &v33, 0xCu);
          }

          v31 = *(a1 + 32);
          v28 = [v31 now];
          [v26 timeIntervalSinceDate:v28];
          [v31 _scheduleOneShotJobAfterInterval:?];
        }

        else if (v29)
        {
          LOWORD(v33) = 0;
          _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Declined to schedule an trigger manager update", &v33, 2u);
        }
      }

      else
      {
        [v5 postNotificationName:@"com.apple.duetexpertd.dailyroutines" object:*(a1 + 32)];

        v26 = __atxlog_handle_dailyroutines(v32);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "No transition found", &v33, 2u);
        }

        v2 = 0;
      }
    }
  }
}

- (id)currentTransition
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ATXDailyRoutinesTriggerManager_currentTransition__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__ATXDailyRoutinesTriggerManager_currentTransition__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) getNextTransitionOnActivity:0];
  if (!v2)
  {
    v3 = __atxlog_handle_dailyroutines(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "No predicted transition received. Attempting to load from cache", v6, 2u);
    }

    v2 = [*(*(a1 + 32) + 16) getNextTransitionOnActivity:0];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;
}

+ (id)_wakeupDateForExitDate:(id)date fromDate:(id)fromDate
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  fromDateCopy = fromDate;
  v7 = +[_ATXGlobals sharedInstance];
  triggerPresetMinutes = [v7 triggerPresetMinutes];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__ATXDailyRoutinesTriggerManager__wakeupDateForExitDate_fromDate___block_invoke;
  v23[3] = &unk_278596C60;
  v9 = dateCopy;
  v24 = v9;
  v10 = [triggerPresetMinutes _pas_mappedArrayWithTransform:v23];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v13)
  {
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        [v16 timeIntervalSinceDate:{fromDateCopy, v19}];
        if (v17 > 0.0)
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v13;
}

uint64_t __66__ATXDailyRoutinesTriggerManager__wakeupDateForExitDate_fromDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = -[a2 intValue] * 60.0;

  return [v2 dateByAddingTimeInterval:v3];
}

- (void)_scheduleOneShotJobAfterInterval:(double)interval
{
  v9 = *MEMORY[0x277D85DE8];
  if (interval >= 120.0)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], interval);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
    xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__ATXDailyRoutinesTriggerManager__scheduleOneShotJobAfterInterval___block_invoke;
    v6[3] = &unk_278596790;
    v6[4] = self;
    atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.dailyroutines-trigger", v4, v6);
  }

  else
  {
    v4 = __atxlog_handle_dailyroutines(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      intervalCopy = interval;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Interval %f too soon, not scheduling one shot update", buf, 0xCu);
    }
  }
}

void __67__ATXDailyRoutinesTriggerManager__scheduleOneShotJobAfterInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_dailyroutines(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Running Daily Routines one-shot job...", v5, 2u);
  }

  [*(a1 + 32) updateWithActivity:v3];
}

@end