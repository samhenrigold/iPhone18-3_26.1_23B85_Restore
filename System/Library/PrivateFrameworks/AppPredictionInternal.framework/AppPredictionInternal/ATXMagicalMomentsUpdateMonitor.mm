@interface ATXMagicalMomentsUpdateMonitor
- (ATXMagicalMomentsUpdateMonitor)init;
- (ATXMagicalMomentsUpdateMonitor)initWithLimit:(unint64_t)limit;
- (id)predictionsForBundleId:(id)id;
- (unint64_t)mmPredictionCount;
- (void)_setPredictions:(id)predictions expiration:(id)expiration totalPredictionCount:(unint64_t)count;
- (void)dropCacheIfExpired;
- (void)setupUpdateListener;
- (void)updatePredictionsWith:(id)with consumer:(unint64_t)consumer;
@end

@implementation ATXMagicalMomentsUpdateMonitor

- (ATXMagicalMomentsUpdateMonitor)init
{
  v3 = +[_ATXGlobals sharedInstance];
  maxMagicalMomentsPredictions = [v3 maxMagicalMomentsPredictions];

  return [(ATXMagicalMomentsUpdateMonitor *)self initWithLimit:maxMagicalMomentsPredictions];
}

- (ATXMagicalMomentsUpdateMonitor)initWithLimit:(unint64_t)limit
{
  v28 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = ATXMagicalMomentsUpdateMonitor;
  v4 = [(ATXMagicalMomentsUpdateMonitor *)&v23 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ATXMagicalMomentsUpdateMonitor.queue", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v4->_limit = limit;
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = [v8 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v4->_defaults;
    v4->_defaults = v9;

    v11 = [(NSUserDefaults *)v4->_defaults objectForKey:@"com.apple.duetexpertd.MMUpdateMonitor.ExpirationDate"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1.0];
    }

    expiration = v4->_expiration;
    v4->_expiration = v13;

    v15 = [(NSUserDefaults *)v4->_defaults integerForKey:@"com.apple.duetexpertd.MMUpdateMonitor.PredictionCount"];
    v4->_mmPredictionCount = v15;
    v16 = __atxlog_handle_default(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v4->_expiration;
      mmPredictionCount = v4->_mmPredictionCount;
      *buf = 138412546;
      v25 = v17;
      v26 = 2048;
      v27 = mmPredictionCount;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXMM: Recovered expiration date of predictions: %@. MM prediction count: %ld", buf, 0x16u);
    }

    [(ATXMagicalMomentsUpdateMonitor *)v4 setupUpdateListener];
    v19 = v4->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ATXMagicalMomentsUpdateMonitor_initWithLimit___block_invoke;
    block[3] = &unk_278596BB8;
    v22 = v4;
    dispatch_async(v19, block);
  }

  return v4;
}

- (void)dropCacheIfExpired
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_expiration)
  {
    if (self->_mmPredictionCount)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v4 = [date earlierDate:self->_expiration];
      v5 = [v4 isEqualToDate:self->_expiration];

      if (v5)
      {
        v6 = objc_opt_new();
        [ATXMagicalMomentsBlendingUpdater updateBlendingLayerWithMagicalMomentsMap:v6];

        predictionMap = self->_predictionMap;
        self->_predictionMap = 0;

        self->_mmPredictionCount = 0;
        v8 = objc_opt_new();
        v9 = objc_opt_new();
        [(ATXMagicalMomentsUpdateMonitor *)self _setPredictions:v8 expiration:v9 totalPredictionCount:0];

        v11 = __atxlog_handle_default(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXMM: Dropped the cache because the predictions have expired.", v12, 2u);
        }
      }
    }
  }
}

- (id)predictionsForBundleId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__87;
  v16 = __Block_byref_object_dispose__87;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ATXMagicalMomentsUpdateMonitor_predictionsForBundleId___block_invoke;
  block[3] = &unk_27859B1C0;
  v10 = idCopy;
  v11 = &v12;
  block[4] = self;
  v6 = idCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__ATXMagicalMomentsUpdateMonitor_predictionsForBundleId___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dropCacheIfExpired];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (unint64_t)mmPredictionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ATXMagicalMomentsUpdateMonitor_mmPredictionCount__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__51__ATXMagicalMomentsUpdateMonitor_mmPredictionCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dropCacheIfExpired];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 24);
  return result;
}

- (void)setupUpdateListener
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D41FA8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ATXMagicalMomentsUpdateMonitor_setupUpdateListener__block_invoke;
  v6[3] = &unk_27859FCC0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 initWithPredictionUpdateListener:v6];
  mmUpdateListener = self->_mmUpdateListener;
  self->_mmUpdateListener = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__ATXMagicalMomentsUpdateMonitor_setupUpdateListener__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePredictionsWith:v5 consumer:a3];
}

- (void)updatePredictionsWith:(id)with consumer:(unint64_t)consumer
{
  withCopy = with;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ATXMagicalMomentsUpdateMonitor_updatePredictionsWith_consumer___block_invoke;
  block[3] = &unk_278599E28;
  selfCopy = self;
  consumerCopy = consumer;
  v10 = withCopy;
  v8 = withCopy;
  dispatch_async(queue, block);
}

void __65__ATXMagicalMomentsUpdateMonitor_updatePredictionsWith_consumer___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v20 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [*(a1 + 32) predictedItems];
    v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v22;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        if (v5 >= *(*(a1 + 40) + 56))
        {
          break;
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [ATXMagicalMomentsSignals alloc];
        v10 = [v8 predictionSource];
        v11 = [v8 reason];
        v12 = [v8 reasonMetadata];
        [v8 confidence];
        v14 = -[ATXMagicalMomentsSignals initWithPredictionSource:pmmReason:reasonMetadata:confidence:anchorType:index:](v9, "initWithPredictionSource:pmmReason:reasonMetadata:confidence:anchorType:index:", v10, v11, v12, [v8 anchorType], v5, v13);
        v15 = [v8 bundleId];
        [v20 setObject:v14 forKeyedSubscript:v15];

        ++v5;
        if (v4 == ++v7)
        {
          v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    [ATXMagicalMomentsBlendingUpdater updateBlendingLayerWithMagicalMomentsMap:v20];
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) expirationDate];
    v18 = [*(a1 + 32) predictedItems];
    [v16 _setPredictions:v20 expiration:v17 totalPredictionCount:{objc_msgSend(v18, "count")}];
  }
}

- (void)_setPredictions:(id)predictions expiration:(id)expiration totalPredictionCount:(unint64_t)count
{
  v18 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  expirationCopy = expiration;
  dispatch_assert_queue_V2(self->_queue);
  objc_storeStrong(&self->_predictionMap, predictions);
  objc_storeStrong(&self->_expiration, expiration);
  self->_mmPredictionCount = count;
  [(NSUserDefaults *)self->_defaults setObject:self->_expiration forKey:@"com.apple.duetexpertd.MMUpdateMonitor.ExpirationDate"];
  v11 = __atxlog_handle_default([(NSUserDefaults *)self->_defaults setInteger:self->_mmPredictionCount forKey:@"com.apple.duetexpertd.MMUpdateMonitor.PredictionCount"]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    expiration = self->_expiration;
    mmPredictionCount = self->_mmPredictionCount;
    v14 = 138412546;
    expirationCopy2 = expiration;
    v16 = 2048;
    v17 = mmPredictionCount;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXMM: Persisted expiration date of predictions: %@. MM prediction count: %ld to NSUserDefaults", &v14, 0x16u);
  }
}

@end