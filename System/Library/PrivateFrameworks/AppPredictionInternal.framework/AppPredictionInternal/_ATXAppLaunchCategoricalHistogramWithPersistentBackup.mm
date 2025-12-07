@interface _ATXAppLaunchCategoricalHistogramWithPersistentBackup
- (BOOL)removeHistoryForBundleId:(id)id;
- (BOOL)removeHistoryForCategory:(id)category;
- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)store histogramType:(int64_t)type;
- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)store histogramType:(int64_t)type saveOnBackgroundQueue:(id)queue maxCategoryCount:(unsigned __int16)count pruningMethod:(int64_t)method;
- (int)removeHistoryForBundleIds:(id)ids;
- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category;
- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category weight:(float)weight;
- (void)flush;
- (void)resetData;
- (void)resetHistogram:(id)histogram;
@end

@implementation _ATXAppLaunchCategoricalHistogramWithPersistentBackup

- (void)flush
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v5 = objc_autoreleasePoolPush();
  [(_ATXAppLaunchCategoricalHistogram *)self encodeWithCoder:v4];
  objc_autoreleasePoolPop(v5);
  datastore = self->_datastore;
  encodedData = [v4 encodedData];
  [(_ATXDataStore *)datastore addCategoricalHistogramData:encodedData forHistogramOfType:self->_histogramType];

  objc_autoreleasePoolPop(v3);
}

- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)store histogramType:(int64_t)type
{
  storeCopy = store;
  v7 = dispatch_queue_create("com.apple.duetexpertd.histogramSaver", 0);
  v8 = [(_ATXAppLaunchCategoricalHistogramWithPersistentBackup *)self initWithDataStore:storeCopy histogramType:type saveOnBackgroundQueue:v7 maxCategoryCount:30 pruningMethod:1];

  return v8;
}

- (_ATXAppLaunchCategoricalHistogramWithPersistentBackup)initWithDataStore:(id)store histogramType:(int64_t)type saveOnBackgroundQueue:(id)queue maxCategoryCount:(unsigned __int16)count pruningMethod:(int64_t)method
{
  countCopy = count;
  storeCopy = store;
  queueCopy = queue;
  v15 = objc_autoreleasePoolPush();
  v16 = [storeCopy categoricalHistogramDataForHistogramType:type];
  if (v16)
  {
    v28 = queueCopy;
    context = objc_autoreleasePoolPush();
    v35 = 0;
    v17 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v16 error:&v35];
    v18 = v35;
    v19 = v18;
    if (v17)
    {
      v34.receiver = self;
      v34.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
      v20 = [(_ATXAppLaunchCategoricalHistogram *)&v34 initWithCoder:v17];
    }

    else
    {
      v26 = storeCopy;
      v21 = __atxlog_handle_default(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchCategoricalHistogramWithPersistentBackup initWithDataStore:histogramType:saveOnBackgroundQueue:maxCategoryCount:pruningMethod:];
      }

      v33.receiver = self;
      v33.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
      v20 = [(_ATXAppLaunchCategoricalHistogram *)&v33 initWithType:type maxCategoryCount:countCopy pruningMethod:method];
      storeCopy = v26;
    }

    objc_autoreleasePoolPop(context);
    if (v20)
    {
      [(_ATXAppLaunchCategoricalHistogram *)v20 _setMaxCategoryCount:countCopy pruningMethod:method];
      [(_ATXAppLaunchCategoricalHistogram *)v20 _reduceCategoryCountTo:[(_ATXAppLaunchCategoricalHistogram *)v20 maxCategoryCount]];
    }

    queueCopy = v28;
  }

  else
  {
    v32.receiver = self;
    v32.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
    v20 = [(_ATXAppLaunchCategoricalHistogram *)&v32 initWithType:type maxCategoryCount:countCopy pruningMethod:method];
  }

  objc_autoreleasePoolPop(v15);
  if (v20)
  {
    objc_storeStrong(&v20->_datastore, store);
    v20->_histogramType = type;
    if (queueCopy)
    {
      objc_initWeak(&location, v20);
      v22 = [ATXBackgroundSaver alloc];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __142___ATXAppLaunchCategoricalHistogramWithPersistentBackup_initWithDataStore_histogramType_saveOnBackgroundQueue_maxCategoryCount_pruningMethod___block_invoke;
      v29[3] = &unk_2785977B0;
      objc_copyWeak(&v30, &location);
      v23 = [(ATXBackgroundSaver *)v22 initWithQueue:queueCopy block:v29];
      saver = v20->_saver;
      v20->_saver = v23;

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    [(_ATXAppLaunchCategoricalHistogram *)v20 purgeUnusedCategories];
  }

  return v20;
}

- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v6 addLaunchWithBundleId:id date:date category:category];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category weight:(float)weight
{
  v7.receiver = self;
  v7.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v7 addLaunchWithBundleId:id date:date category:category weight:?];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (BOOL)removeHistoryForBundleId:(id)id
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForBundleId:id];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (int)removeHistoryForBundleIds:(id)ids
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForBundleIds:ids];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (BOOL)removeHistoryForCategory:(id)category
{
  v6.receiver = self;
  v6.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  v4 = [(_ATXAppLaunchCategoricalHistogram *)&v6 removeHistoryForCategory:category];
  if (v4)
  {
    [(ATXBackgroundSaver *)self->_saver scheduleSaveImmediately];
  }

  return v4;
}

- (void)resetData
{
  v3.receiver = self;
  v3.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v3 resetData];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

- (void)resetHistogram:(id)histogram
{
  v4.receiver = self;
  v4.super_class = _ATXAppLaunchCategoricalHistogramWithPersistentBackup;
  [(_ATXAppLaunchCategoricalHistogram *)&v4 resetHistogram:histogram];
  [(ATXBackgroundSaver *)self->_saver scheduleSave];
}

@end