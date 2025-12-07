@interface ATXMagicalMomentsAppPredictor
+ (id)sharedInstance;
- (ATXMagicalMomentsAppPredictor)init;
- (id)addNowPlayingEventsToAppLaunches:(id)launches;
- (id)fetchAppLaunchEventsForTraining;
- (id)generateAppLaunchCountedSetFromAppLaunches:(id)launches;
- (void)fetchAppLaunchEventsForTraining;
- (void)trainWithTask:(id)task;
@end

@implementation ATXMagicalMomentsAppPredictor

+ (id)sharedInstance
{
  v2 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[(ATXMagicalMomentsAppPredictor *)v2];
  }

  if (sharedInstance__pasOnceToken8_2 != -1)
  {
    +[ATXMagicalMomentsAppPredictor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_53;

  return v3;
}

void __47__ATXMagicalMomentsAppPredictor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_53;
  sharedInstance__pasExprOnceResult_53 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXMagicalMomentsAppPredictor)init
{
  v18.receiver = self;
  v18.super_class = ATXMagicalMomentsAppPredictor;
  v2 = [(ATXMagicalMomentsAppPredictor *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_default(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "ATXMM: Initializing experts.", v17, 2u);
    }

    v5 = objc_opt_new();
    contextHelper = v3->_contextHelper;
    v3->_contextHelper = v5;

    v7 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:5 perPeriod:600.0];
    rateLimiter = v3->_rateLimiter;
    v3->_rateLimiter = v7;

    context = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXBTConnectedMMExpert setupEventListenerForInferenceWithContext:context rateLimiter:v3->_rateLimiter];

    context2 = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXBTDisconnectedMMExpert setupEventListenerForInferenceWithContext:context2 rateLimiter:v3->_rateLimiter];

    context3 = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXCarPlayConnectedMMExpert setupEventListenerForInferenceWithContext:context3 rateLimiter:v3->_rateLimiter];

    context4 = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXCarPlayDisconnectedMMExpert setupEventListenerForInferenceWithContext:context4 rateLimiter:v3->_rateLimiter];

    context5 = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXAudioConnectedMMExpert setupEventListenerForInferenceWithContext:context5 rateLimiter:v3->_rateLimiter];

    context6 = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXAudioDisconnectedMMExpert setupEventListenerForInferenceWithContext:context6 rateLimiter:v3->_rateLimiter];

    context7 = [(ATXCoreDuetContextHelper *)v3->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXIdleTimeEndMMExpert setupEventListenerForInferenceWithContext:context7 rateLimiter:v3->_rateLimiter];
  }

  return v3;
}

- (id)addNowPlayingEventsToAppLaunches:(id)launches
{
  v17 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  v6 = objc_opt_new();
  v7 = [v4 playbackEventsAfterSecondsOfInactivity:v5 betweenStartDate:v6 endDate:300.0];

  v8 = [v4 convertNowPlayingEventsToAppLaunchEvents:v7];
  v9 = __atxlog_handle_default([launchesCopy addObjectsFromArray:v8]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = [v8 count];
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXMM: Added %lu Now Playing Events as App Launch Events.", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v14 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v12 = [launchesCopy sortedArrayUsingDescriptors:v11];

  return v12;
}

- (id)fetchAppLaunchEventsForTraining
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
  date = [MEMORY[0x277CBEAA8] date];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__ATXMagicalMomentsAppPredictor_fetchAppLaunchEventsForTraining__block_invoke;
  v15[3] = &unk_278596DC8;
  v7 = v4;
  v16 = v7;
  [v3 enumerateAppLaunchSessionsBetweenStartDate:v5 endDate:date limit:1000000 shouldReverse:0 bundleIDFilter:0 block:v15];

  v9 = __atxlog_handle_default(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 count];
    *buf = 134217984;
    v18 = v10;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXMM: Retrieved %lu App Launch Events.", buf, 0xCu);
  }

  v12 = __atxlog_handle_default(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ATXMagicalMomentsAppPredictor *)v7 fetchAppLaunchEventsForTraining];
  }

  v13 = [(ATXMagicalMomentsAppPredictor *)self addNowPlayingEventsToAppLaunches:v7];

  return v13;
}

uint64_t __64__ATXMagicalMomentsAppPredictor_fetchAppLaunchEventsForTraining__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXAppLaunchDuetEvent alloc] initWithATXEvent:v3];

  if (v4)
  {
    v5 = [(ATXAppLaunchDuetEvent *)v4 bundleId];
    v6 = [v5 isEqualToString:@"com.apple.Preferences"];

    if ((v6 & 1) == 0)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return 1;
}

- (id)generateAppLaunchCountedSetFromAppLaunches:(id)launches
{
  v19 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = launchesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        identifier = [v10 identifier];
        [v4 addObject:identifier];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)trainWithTask:(id)task
{
  taskCopy = task;
  v5 = os_transaction_create();
  [taskCopy setProgressUnits:5];
  v6 = objc_autoreleasePoolPush();
  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXMM: Starting training of MagicalMoments App Predictor.", v37, 2u);
  }

  fetchAppLaunchEventsForTraining = [(ATXMagicalMomentsAppPredictor *)self fetchAppLaunchEventsForTraining];
  v9 = [(ATXMagicalMomentsAppPredictor *)self generateAppLaunchCountedSetFromAppLaunches:fetchAppLaunchEventsForTraining];
  v10 = v9;
  if (fetchAppLaunchEventsForTraining)
  {
    v9 = [fetchAppLaunchEventsForTraining count];
    if (v9)
    {
      if (v10)
      {
        v9 = [v10 count];
        if (v9)
        {
          didDefer = [taskCopy didDefer];
          if (didDefer)
          {
            v12 = __atxlog_handle_default(didDefer);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
LABEL_50:
              _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v13, v37, 2u);
            }
          }

          else
          {
            v15 = __atxlog_handle_default([taskCopy setProgressUnits:20]);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXMM: Starting training of MagicalMoments experts.", v37, 2u);
            }

            v17 = __atxlog_handle_default(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training BT Connected MagicalMoments Expert. ** \n", v37, 2u);
            }

            v18 = objc_autoreleasePoolPush();
            [(ATXMMAppPredictionExpert *)ATXBTConnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
            objc_autoreleasePoolPop(v18);
            didDefer2 = [taskCopy didDefer];
            if (didDefer2)
            {
              v12 = __atxlog_handle_default(didDefer2);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *v37 = 0;
                v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                goto LABEL_50;
              }
            }

            else
            {
              v20 = __atxlog_handle_default([taskCopy setProgressUnits:30]);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *v37 = 0;
                _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training BT Disconnected MagicalMoments Expert. ** \n", v37, 2u);
              }

              v21 = objc_autoreleasePoolPush();
              [(ATXMMAppPredictionExpert *)ATXBTDisconnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
              objc_autoreleasePoolPop(v21);
              didDefer3 = [taskCopy didDefer];
              if (didDefer3)
              {
                v12 = __atxlog_handle_default(didDefer3);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  *v37 = 0;
                  v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                  goto LABEL_50;
                }
              }

              else
              {
                v23 = __atxlog_handle_default([taskCopy setProgressUnits:40]);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *v37 = 0;
                  _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training CarPlay Connected MagicalMoments Expert. ** \n", v37, 2u);
                }

                v24 = objc_autoreleasePoolPush();
                [(ATXMMAppPredictionExpert *)ATXCarPlayConnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
                objc_autoreleasePoolPop(v24);
                didDefer4 = [taskCopy didDefer];
                if (didDefer4)
                {
                  v12 = __atxlog_handle_default(didDefer4);
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                  {
                    *v37 = 0;
                    v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                    goto LABEL_50;
                  }
                }

                else
                {
                  v26 = __atxlog_handle_default([taskCopy setProgressUnits:50]);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *v37 = 0;
                    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training CarPlay Disconnected MagicalMoments Expert. ** \n", v37, 2u);
                  }

                  v27 = objc_autoreleasePoolPush();
                  [(ATXMMAppPredictionExpert *)ATXCarPlayDisconnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
                  objc_autoreleasePoolPop(v27);
                  didDefer5 = [taskCopy didDefer];
                  if (didDefer5)
                  {
                    v12 = __atxlog_handle_default(didDefer5);
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                    {
                      *v37 = 0;
                      v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    v29 = __atxlog_handle_default([taskCopy setProgressUnits:60]);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      *v37 = 0;
                      _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training Audio Connected MagicalMoments Expert. ** \n", v37, 2u);
                    }

                    v30 = objc_autoreleasePoolPush();
                    [(ATXMMAppPredictionExpert *)ATXAudioConnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
                    objc_autoreleasePoolPop(v30);
                    didDefer6 = [taskCopy didDefer];
                    if (didDefer6)
                    {
                      v12 = __atxlog_handle_default(didDefer6);
                      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                      {
                        *v37 = 0;
                        v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v32 = __atxlog_handle_default([taskCopy setProgressUnits:70]);
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                      {
                        *v37 = 0;
                        _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training Audio Disconnected MagicalMoments Expert. ** \n", v37, 2u);
                      }

                      v33 = objc_autoreleasePoolPush();
                      [(ATXMMAppPredictionExpert *)ATXAudioDisconnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
                      objc_autoreleasePoolPop(v33);
                      didDefer7 = [taskCopy didDefer];
                      if (!didDefer7)
                      {
                        v35 = __atxlog_handle_default([taskCopy setProgressUnits:80]);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                        {
                          *v37 = 0;
                          _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training Idle Time End MagicalMoments Expert. ** \n", v37, 2u);
                        }

                        v36 = objc_autoreleasePoolPush();
                        [(ATXMMAppPredictionExpert *)ATXIdleTimeEndMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v10];
                        objc_autoreleasePoolPop(v36);
                        v12 = __atxlog_handle_default([taskCopy setDone]);
                        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_51;
                        }

                        *v37 = 0;
                        v13 = "ATXMM: Done training MagicalMoments experts.";
                        goto LABEL_50;
                      }

                      v12 = __atxlog_handle_default(didDefer7);
                      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                      {
                        *v37 = 0;
                        v13 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                        goto LABEL_50;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_51:

          goto LABEL_13;
        }
      }
    }
  }

  v14 = __atxlog_handle_default(v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "ATXMM: Didn't retrieve any app launches. Exiting training early.", v37, 2u);
  }

  [taskCopy setDone];
LABEL_13:

  objc_autoreleasePoolPop(v6);
}

- (void)fetchAppLaunchEventsForTraining
{
  v6 = *MEMORY[0x277D85DE8];
  lastObject = [self lastObject];
  v4 = 138412290;
  v5 = lastObject;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXMM: Last App Launch Event: %@", &v4, 0xCu);
}

@end