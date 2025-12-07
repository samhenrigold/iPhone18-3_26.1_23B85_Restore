@interface ATXAppLaunchMicroLocation
- (ATXAppLaunchMicroLocation)init;
- (ATXAppLaunchMicroLocation)initWithMicroLocationStream:(id)stream appInFocusStream:(id)focusStream combinedIntentStream:(id)intentStream directory:(id)directory forTesting:(BOOL)testing;
- (BOOL)_loadCorrelationMatrices;
- (double)popularityAtCurrentMicroLocationForActionKey:(id)key;
- (double)popularityAtCurrentMicroLocationForApp:(id)app;
- (id)_getActionKeyCorrelationMatrix;
- (id)_getAppLaunchCorrelationMatrix;
- (id)_getHistoricalData;
- (void)_loadCorrelationMatrices;
- (void)_receivedNotificationOfNewMicroLocation:(id)location;
- (void)_subscribeToMicroLocationEvents;
- (void)_writeAppLaunchCorrelationMatrix:(id)matrix actionKeyCorrelationMatrix:(id)correlationMatrix;
- (void)dealloc;
- (void)train;
- (void)tryLoadCorrelationMatricesImmediately;
@end

@implementation ATXAppLaunchMicroLocation

- (ATXAppLaunchMicroLocation)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v7 = [(ATXAppLaunchMicroLocation *)self initWithMicroLocationStream:v3 appInFocusStream:v4 combinedIntentStream:v5 directory:appPredictionDirectory forTesting:0];

  return v7;
}

- (ATXAppLaunchMicroLocation)initWithMicroLocationStream:(id)stream appInFocusStream:(id)focusStream combinedIntentStream:(id)intentStream directory:(id)directory forTesting:(BOOL)testing
{
  streamCopy = stream;
  focusStreamCopy = focusStream;
  intentStreamCopy = intentStream;
  directoryCopy = directory;
  v27.receiver = self;
  v27.super_class = ATXAppLaunchMicroLocation;
  v17 = [(ATXAppLaunchMicroLocation *)&v27 init];
  if (v17)
  {
    v18 = [directoryCopy stringByAppendingPathComponent:@"ATXAppPredictionMicroLocation"];
    path = v17->_path;
    v17->_path = v18;

    objc_storeStrong(&v17->_microLocationStream, stream);
    objc_storeStrong(&v17->_combinedIntentStream, intentStream);
    objc_storeStrong(&v17->_appInFocusStream, focusStream);
    v20 = [ATXAppLaunchMicroLocationGuardedData alloc];
    v21 = [(ATXMicroLocationVisitStream *)v17->_microLocationStream mostRecentMicroLocationWithinSeconds:600];
    v22 = microLocationEventFromATXMicroLocationVisitEvent(v21);
    v23 = [(ATXAppLaunchMicroLocationGuardedData *)v20 initWithCurrentMicroLocation:v22];

    v24 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v23];
    lock = v17->_lock;
    v17->_lock = v24;

    if (!testing)
    {
      [(ATXAppLaunchMicroLocation *)v17 _subscribeToMicroLocationEvents];
    }

    [(ATXAppLaunchMicroLocation *)v17 tryLoadCorrelationMatricesImmediately];
  }

  return v17;
}

- (void)_subscribeToMicroLocationEvents
{
  objc_initWeak(&location, self);
  mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ATXAppLaunchMicroLocation__subscribeToMicroLocationEvents__block_invoke;
  v6[3] = &unk_278596D20;
  objc_copyWeak(&v7, &location);
  v4 = [mEMORY[0x277CEBC98] subscribeWithCallback:v6];
  microLocationSchedulerToken = self->_microLocationSchedulerToken;
  self->_microLocationSchedulerToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __60__ATXAppLaunchMicroLocation__subscribeToMicroLocationEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _receivedNotificationOfNewMicroLocation:v5];
  }
}

- (void)_receivedNotificationOfNewMicroLocation:(id)location
{
  locationCopy = location;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ATXAppLaunchMicroLocation__receivedNotificationOfNewMicroLocation___block_invoke;
  v7[3] = &unk_2785A18A0;
  v8 = locationCopy;
  v6 = locationCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __69__ATXAppLaunchMicroLocation__receivedNotificationOfNewMicroLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = microLocationEventFromATXMicroLocationVisitEvent(v2);
  [v3 setCurrentMicroLocation:v4];
}

- (double)popularityAtCurrentMicroLocationForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (appCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForApp___block_invoke;
    v9[3] = &unk_2785A18C8;
    v11 = &v12;
    v10 = appCopy;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void __68__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForApp___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 getCurrentMicroLocation];
  if (v3)
  {
    [v5[4] launchProbabilityForEvent:*(a1 + 32) atLocationsWithProbabilities:v3];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (double)popularityAtCurrentMicroLocationForActionKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForActionKey___block_invoke;
    v9[3] = &unk_2785A18C8;
    v11 = &v12;
    v10 = keyCopy;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void __74__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForActionKey___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 getCurrentMicroLocation];
  if (v3)
  {
    [v5[5] launchProbabilityForEvent:*(a1 + 32) atLocationsWithProbabilities:v3];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)train
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v48 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@ - starting training of micro locations", buf, 0xCu);
  }

  v7 = __atxlog_handle_default(v6);
  v8 = os_signpost_id_generate(v7);

  v10 = __atxlog_handle_default(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 136446210;
    v48 = "ATXAppLaunchMicroLocation";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  _getHistoricalData = [(ATXAppLaunchMicroLocation *)self _getHistoricalData];
  v13 = _getHistoricalData;
  v14 = MEMORY[0x277CBEBF8];
  if (_getHistoricalData)
  {
    v14 = _getHistoricalData;
  }

  v15 = v14;

  v16 = objc_opt_new();
  v17 = objc_autoreleasePoolPush();
  date = [MEMORY[0x277CBEAA8] date];
  v19 = [date dateByAddingTimeInterval:-2419200.0];
  v20 = objc_opt_new();
  appInFocusStream = self->_appInFocusStream;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke;
  v45[3] = &unk_278596DC8;
  v46 = v20;
  v22 = v20;
  [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:v19 endDate:date shouldReverse:0 bundleIDFilter:0 block:v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke_2;
  v43[3] = &unk_2785A18F0;
  v23 = v16;
  v44 = v23;
  [ATXEvent joinLaunchEvents:v22 withVisits:v15 block:v43];

  objc_autoreleasePoolPop(v17);
  v24 = objc_opt_new();
  v25 = objc_autoreleasePoolPush();
  getCombinedIntentEventsFromLastMonth = [(ATXCombinedIntentStream *)self->_combinedIntentStream getCombinedIntentEventsFromLastMonth];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke_3;
  v40[3] = &unk_2785A1918;
  v42 = a2;
  v40[4] = self;
  v27 = v24;
  v41 = v27;
  [ATXEvent joinLaunchEvents:getCombinedIntentEventsFromLastMonth withVisits:v15 block:v40];

  objc_autoreleasePoolPop(v25);
  lock = self->_lock;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke_4;
  v36[3] = &unk_2785A1940;
  v37 = v23;
  v38 = v27;
  selfCopy = self;
  v29 = v27;
  v30 = v23;
  [(_PASLock *)lock runWithLockAcquired:v36];

  objc_autoreleasePoolPop(context);
  v32 = __atxlog_handle_default(v31);
  v33 = v32;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 136446210;
    v48 = "ATXAppLaunchMicroLocation";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v33, OS_SIGNPOST_INTERVAL_END, v8, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }
}

void __34__ATXAppLaunchMicroLocation_train__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 bundleId];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 event];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [v5 event];
        v14 = [v13 objectForKeyedSubscript:v12];
        [v14 doubleValue];
        v16 = v15;

        [*(a1 + 32) addVisitForLocation:v12 event:v6 value:v16];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

void __34__ATXAppLaunchMicroLocation_train__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __34__ATXAppLaunchMicroLocation_train__block_invoke_3_cold_1(a1);
  }

  v7 = [v5 action];
  v8 = [v7 actionKey];

  if (v8)
  {
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v6 event];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = [v6 event];
          v16 = [v15 objectForKeyedSubscript:v14];
          [v16 doubleValue];
          v18 = v17;

          [*(a1 + 40) addVisitForLocation:v14 event:v8 value:v18];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v5 = v19;
  }
}

uint64_t __34__ATXAppLaunchMicroLocation_train__block_invoke_4(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 4, *(a1 + 32));
  v4 = a2;
  objc_storeStrong(v4 + 5, *(a1 + 40));

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v5 _writeAppLaunchCorrelationMatrix:v7 actionKeyCorrelationMatrix:v6];
}

- (void)_writeAppLaunchCorrelationMatrix:(id)matrix actionKeyCorrelationMatrix:(id)correlationMatrix
{
  v21[3] = *MEMORY[0x277D85DE8];
  matrixCopy = matrix;
  correlationMatrixCopy = correlationMatrix;
  v8 = objc_autoreleasePoolPush();
  v20[0] = @"appLaunchMatrix";
  v20[1] = @"actionKeyMatrix";
  v21[0] = matrixCopy;
  v21[1] = correlationMatrixCopy;
  v20[2] = @"modelVersion";
  v21[2] = &unk_283A57C20;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v19 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v19];
  v11 = v19;
  v12 = v11;
  if (v10)
  {
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_path];
    v18 = v12;
    v14 = [v10 writeToURL:v13 options:805306369 error:&v18];
    v15 = v18;

    if ((v14 & 1) == 0)
    {
      v17 = __atxlog_handle_default(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXAppLaunchMicroLocation _writeAppLaunchCorrelationMatrix:? actionKeyCorrelationMatrix:?];
      }
    }
  }

  else
  {
    v13 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchMicroLocation _writeAppLaunchCorrelationMatrix:? actionKeyCorrelationMatrix:?];
    }

    v15 = v12;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)tryLoadCorrelationMatricesImmediately
{
  v16 = *MEMORY[0x277D85DE8];
  lockState = [MEMORY[0x277D42598] lockState];
  v4 = lockState - 3;
  v5 = __atxlog_handle_default(lockState);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 > 0xFFFFFFFD)
  {
    if (v6)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - loading correlation matrices, detected that device is Class B Locked", buf, 0xCu);
    }

    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke;
    v13[3] = &unk_2785A18A0;
    v13[4] = self;
    [(_PASLock *)lock runWithLockAcquired:v13];
  }

  else
  {
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - loading correlation matrices, device is NOT Class B Locked", buf, 0xCu);
    }

    v9 = objc_autoreleasePoolPush();
    [(ATXAppLaunchMicroLocation *)self _loadCorrelationMatrices];
    objc_autoreleasePoolPop(v9);
  }
}

void __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3[1])
  {
    v5 = __atxlog_handle_default(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - skipping second registration for unlock notification token", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = MEMORY[0x277D42598];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_77;
    v15[3] = &unk_27859BA88;
    objc_copyWeak(&v16, &location);
    v15[4] = *(a1 + 32);
    v9 = [v8 registerForLockStateChangeNotifications:v15];
    v10 = v4[1];
    v4[1] = v9;

    v12 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412290;
      v19 = v14;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - started listening for lock state changed notifications", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_77(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_2;
    v6[3] = &unk_2785A18A0;
    v6[4] = *(a1 + 32);
    [v4 runWithLockAcquired:v6];
    v5 = objc_autoreleasePoolPush();
    [v3 _loadCorrelationMatrices];
    objc_autoreleasePoolPop(v5);
  }
}

void __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D42598];
  v4 = a2[1];
  v5 = a2;
  [v3 unregisterForLockStateChangeNotifications:v4];
  v6 = a2[1];
  a2[1] = 0;

  v8 = __atxlog_handle_default(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%@ - stopped listening for lock state changed notifications", &v11, 0xCu);
  }
}

- (BOOL)_loadCorrelationMatrices
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  path = self->_path;
  v38 = 0;
  v5 = [v3 initWithContentsOfFile:path options:0 error:&v38];
  v6 = v38;
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    defaultManager2 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = objc_autoreleasePoolPush();
    v37 = v7;
    v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:defaultManager2 fromData:v5 error:&v37];
    v15 = v37;

    objc_autoreleasePoolPop(v13);
    if (v14 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v17 = [v14 objectForKeyedSubscript:@"modelVersion"];
      integerValue = [v17 integerValue];

      if (integerValue == 1)
      {
        lock = self->_lock;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __53__ATXAppLaunchMicroLocation__loadCorrelationMatrices__block_invoke;
        v35[3] = &unk_2785A18A0;
        v36 = v14;
        v21 = __atxlog_handle_default([(_PASLock *)lock runWithLockAcquired:v35]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412290;
          v40 = v23;
          _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%@ - successfully loaded correlation matrices", buf, 0xCu);
        }

        v24 = 1;
        defaultManager = v36;
        goto LABEL_12;
      }

      defaultManager = __atxlog_handle_default(v19);
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        [(ATXAppLaunchMicroLocation *)self _loadCorrelationMatrices];
      }
    }

    else
    {
      v26 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = self->_path;
        *buf = 138412802;
        v40 = v33;
        v41 = 2112;
        v42 = v34;
        v43 = 2112;
        v44 = v15;
        _os_log_error_impl(&dword_2263AA000, v26, OS_LOG_TYPE_ERROR, "%@ - Error unarchiving model at %@: %@", buf, 0x20u);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtPath:self->_path error:0];
    }

    v24 = 0;
LABEL_12:

    goto LABEL_16;
  }

  v27 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = self->_path;
    *buf = 138412802;
    v40 = v29;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "%@ - Could not open model at %@: %@", buf, 0x20u);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager2 removeItemAtPath:self->_path error:0];
  v24 = 0;
  v15 = v7;
LABEL_16:

  return v24;
}

void __53__ATXAppLaunchMicroLocation__loadCorrelationMatrices__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"appLaunchMatrix"];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"actionKeyMatrix"];
  v8 = v4[5];
  v4[5] = v7;
}

- (id)_getHistoricalData
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-2419200.0];
  v5 = objc_opt_new();
  microLocationStream = self->_microLocationStream;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ATXAppLaunchMicroLocation__getHistoricalData__block_invoke;
  v9[3] = &unk_27859E388;
  v7 = v5;
  v10 = v7;
  [(ATXMicroLocationVisitStream *)microLocationStream enumerateMicroLocationVisitEventsFromStartDate:v4 endDate:date filterBlock:0 limit:1000000 ascending:1 block:v9];

  return v7;
}

uint64_t __47__ATXAppLaunchMicroLocation__getHistoricalData__block_invoke(uint64_t a1, void *a2)
{
  v3 = microLocationEventFromATXMicroLocationVisitEvent(a2);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

- (id)_getAppLaunchCorrelationMatrix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__101;
  v10 = __Block_byref_object_dispose__101;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ATXAppLaunchMicroLocation__getAppLaunchCorrelationMatrix__block_invoke;
  v5[3] = &unk_2785A1968;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __59__ATXAppLaunchMicroLocation__getAppLaunchCorrelationMatrix__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)_getActionKeyCorrelationMatrix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__101;
  v10 = __Block_byref_object_dispose__101;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ATXAppLaunchMicroLocation__getActionKeyCorrelationMatrix__block_invoke;
  v5[3] = &unk_2785A1968;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __59__ATXAppLaunchMicroLocation__getActionKeyCorrelationMatrix__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 40) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)dealloc
{
  if (self->_microLocationSchedulerToken)
  {
    mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
    [mEMORY[0x277CEBC98] unSubscribeWithToken:self->_microLocationSchedulerToken];

    microLocationSchedulerToken = self->_microLocationSchedulerToken;
    self->_microLocationSchedulerToken = 0;
  }

  v5.receiver = self;
  v5.super_class = ATXAppLaunchMicroLocation;
  [(ATXAppLaunchMicroLocation *)&v5 dealloc];
}

void __34__ATXAppLaunchMicroLocation_train__block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"ATXAppLaunchMicroLocation.m" lineNumber:186 description:@"Expected ATXIntentEvent class"];
}

- (void)_writeAppLaunchCorrelationMatrix:(uint64_t)a1 actionKeyCorrelationMatrix:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_writeAppLaunchCorrelationMatrix:(uint64_t)a1 actionKeyCorrelationMatrix:.cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_loadCorrelationMatrices
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

@end