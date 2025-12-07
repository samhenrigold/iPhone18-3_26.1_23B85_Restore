@interface PLKCachedLegibilityContentDataSource
+ (id)_sharedImageCaches;
+ (id)attributedStringContentDataSourceForMaxSize:(CGSize)size scale:(double)scale cacheProvider:(id)provider metricsProvider:(id)metricsProvider;
- (BOOL)isEmpty;
- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)generator;
- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)generator legibilityGenerator:(id)legibilityGenerator;
- (void)prewarmContentForObjects:(id)objects legibilityDescriptors:(id)descriptors;
- (void)removeAllObjectsWithCompletion:(id)completion;
- (void)removeContentForObjects:(id)objects legibilityDescriptors:(id)descriptors;
- (void)synchonrouslyRemoveAllObjects;
@end

@implementation PLKCachedLegibilityContentDataSource

+ (id)_sharedImageCaches
{
  objc_opt_self();
  if (_sharedImageCaches_onceToken != -1)
  {
    +[PLKCachedLegibilityContentDataSource _sharedImageCaches];
  }

  v0 = _sharedImageCaches_sharedImageCaches;

  return v0;
}

uint64_t __58__PLKCachedLegibilityContentDataSource__sharedImageCaches__block_invoke()
{
  _sharedImageCaches_sharedImageCaches = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

+ (id)attributedStringContentDataSourceForMaxSize:(CGSize)size scale:(double)scale cacheProvider:(id)provider metricsProvider:(id)metricsProvider
{
  providerCopy = provider;
  metricsProviderCopy = metricsProvider;
  v40 = [MEMORY[0x277CEC5B0] plk_sharedMemoryPoolForMaxSize:? scale:? contextType:?];
  v10 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:memoryPool:" scale:? memoryPool:?];
  if (!metricsProviderCopy)
  {
    metricsProviderCopy = objc_opt_new();
  }

  if (objc_opt_respondsToSelector())
  {
    plk_contentCache = [providerCopy plk_contentCache];
  }

  else
  {
    plk_contentCache = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    plk_legibilityCache = [providerCopy plk_legibilityCache];
    v13 = plk_legibilityCache;
    if (plk_contentCache && plk_legibilityCache)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = +[PLKCachedLegibilityContentDataSource _sharedImageCaches];
  objc_sync_enter(v14);
  v15 = [MEMORY[0x277CF0D70] optionsWithContainerPathProvider:?];
  plk_contentCacheIdentifier = [providerCopy plk_contentCacheIdentifier];
  v17 = [v14 objectForKey:?];

  plk_contentCache = v17;
  if (!v17)
  {
    v18 = objc_alloc(MEMORY[0x277CF0D68]);
    plk_contentCacheIdentifier2 = [providerCopy plk_contentCacheIdentifier];
    plk_contentCache = [v18 initWithUniqueIdentifier:? options:?];

    plk_contentCacheIdentifier3 = [providerCopy plk_contentCacheIdentifier];
    [v14 setObject:? forKey:?];
  }

  plk_legibilityCacheIdentifier = [providerCopy plk_legibilityCacheIdentifier];
  v22 = [v14 objectForKey:?];

  if (!v22)
  {
    v23 = objc_alloc(MEMORY[0x277CF0D68]);
    plk_legibilityCacheIdentifier2 = [providerCopy plk_legibilityCacheIdentifier];
    v22 = [v23 initWithUniqueIdentifier:? options:?];

    plk_legibilityCacheIdentifier3 = [providerCopy plk_legibilityCacheIdentifier];
    [v14 setObject:? forKey:?];
  }

  objc_sync_exit(v14);
  v13 = v22;
LABEL_16:
  if (plk_contentCache && v13)
  {
    v26 = [PLKCachedImageGenerator alloc];
    v42 = metricsProviderCopy;
    v43 = v10;
    v27 = v10;
    v28 = metricsProviderCopy;
    v29 = [PLKCachedImageGenerator initWithCache:v26 keyGenerator:"initWithCache:keyGenerator:imageGenerator:" imageGenerator:?];
    v30 = [PLKCachedImageGenerator alloc];
    v41 = v29;
    v31 = v29;
    v32 = [PLKCachedImageGenerator initWithCache:v30 keyGenerator:"initWithCache:keyGenerator:imageGenerator:" imageGenerator:?];
    v33 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:? qualityOfService:? name:?];
    v34 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:? qualityOfService:? name:?];
    [(PLKImageGenerator *)v31 setWorkScheduler:?];

    [(PLKCachedImageGenerator *)v31 setKeyScheduler:?];
    v35 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:? qualityOfService:? name:?];
    [(PLKImageGenerator *)v32 setWorkScheduler:?];

    [(PLKCachedImageGenerator *)v32 setKeyScheduler:?];
    v36 = [PLKCachedLegibilityContentDataSource initWithContentGenerator:"initWithContentGenerator:legibilityGenerator:" legibilityGenerator:?];

    return v36;
  }

  else
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [PLKCachedLegibilityContentDataSource attributedStringContentDataSourceForMaxSize:a2 scale:self cacheProvider:v38 metricsProvider:?];
    }

    [v38 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  return result;
}

id __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_sync_enter(v6);
  v7 = objc_getAssociatedObject(v6, "SHA256");
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    v7 = [v9 plk_sha256Hash];

    objc_setAssociatedObject(v6, "SHA256", v7, 1);
    objc_autoreleasePoolPop(v8);
  }

  objc_sync_exit(v6);

  return v7;
}

id __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke_111(double *a1, void *a2)
{
  v2 = *(a1 + 4);
  v3 = a2;
  [v2 plk_boundingRectForObject:? maxSize:?];
  v4 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
  v5 = [(PLKImageRenderer *)v4 imageWithRenderable:?];

  return v5;
}

id __120__PLKCachedLegibilityContentDataSource_attributedStringContentDataSourceForMaxSize_scale_cacheProvider_metricsProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 imageForObject:?];
  [v5 size];
  v6 = [v4 background];
  [v6 sizeForContentSize:?];

  v7 = [PLKImageRendererFormat sharedFormatForLegibilityWithMaximumSize:"sharedFormatForLegibilityWithMaximumSize:scale:contentType:legibilityDescriptor:" scale:? contentType:? legibilityDescriptor:?];
  v8 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
  v9 = [PLKLegibilityImageRenderer renderLegibilityImageForImage:v8 legibilityDescriptor:"renderLegibilityImageForImage:legibilityDescriptor:"];

  return v9;
}

- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)generator
{
  [(PLKCachedLegibilityContentDataSource *)self doesNotRecognizeSelector:?];

  return 0;
}

- (PLKCachedLegibilityContentDataSource)initWithContentGenerator:(id)generator legibilityGenerator:(id)legibilityGenerator
{
  v5.receiver = self;
  v5.super_class = PLKCachedLegibilityContentDataSource;
  return [(PLKLegibilityContentDataSource *)&v5 initWithContentGenerator:generator legibilityGenerator:legibilityGenerator];
}

- (BOOL)isEmpty
{
  contentGenerator = [(PLKLegibilityContentDataSource *)self contentGenerator];
  cache = [contentGenerator cache];
  allKeys = [cache allKeys];
  v6 = [allKeys count];

  legibilityGenerator = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
  cache2 = [legibilityGenerator cache];
  allKeys2 = [cache2 allKeys];
  v10 = v6 | [allKeys2 count];

  return v10 == 0;
}

- (void)prewarmContentForObjects:(id)objects legibilityDescriptors:(id)descriptors
{
  v45 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  descriptorsCopy = descriptors;
  if ([objectsCopy count] && objc_msgSend(descriptorsCopy, "count"))
  {
    contentGenerator = [(PLKLegibilityContentDataSource *)self contentGenerator];
    legibilityGenerator = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
    v8 = _os_activity_create(&dword_21E5D5000, "<PLKCachedLegibilityContentDataSource prewarmContentForObjects:legibilityDescriptor:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = [MEMORY[0x277D3EC38] activityWrapping:?];

    track = [v9 track];

    v11 = PLKLogRendering(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544130;
      v38 = v13;
      v39 = 2048;
      selfCopy = self;
      v41 = 2112;
      v42 = objectsCopy;
      v43 = 2114;
      v44 = descriptorsCopy;
      _os_log_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_INFO, "<%{public}@:%p prewarmContentForObjects:%@ legibilityDescriptors:%{public}@>", buf, 0x2Au);
    }

    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = descriptorsCopy;
    obj = descriptorsCopy;
    v16 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        v19 = 0;
        do
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [MEMORY[0x277CBEB98] setWithArray:?];
          v21 = [contentGenerator prewarmObjects:? context:?];

          [v14 bs_safeAddObject:?];
          v22 = [MEMORY[0x277CBEB98] setWithArray:?];
          v23 = [legibilityGenerator prewarmObjects:? context:?];

          [v15 bs_safeAddObject:?];
          v19 = (v19 + 1);
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    v24 = MEMORY[0x277D3EC50];
    v25 = [v14 arrayByAddingObjectsFromArray:?];
    v26 = [v24 join:?];
    v27 = [v26 trackWithActivity:?];

    descriptorsCopy = v29;
  }
}

- (void)removeContentForObjects:(id)objects legibilityDescriptors:(id)descriptors
{
  v48 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  descriptorsCopy = descriptors;
  v35 = objectsCopy;
  if ([objectsCopy count])
  {
    contentGenerator = [(PLKLegibilityContentDataSource *)self contentGenerator];
    legibilityGenerator = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
    v8 = _os_activity_create(&dword_21E5D5000, "<PLKCachedLegibilityContentDataSource removeContentForObjects:legibilityDescriptors:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = [MEMORY[0x277D3EC38] activityWrapping:?];

    track = [v9 track];

    v11 = PLKLogRendering(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544130;
      v41 = v13;
      v42 = 2048;
      selfCopy = self;
      v44 = 2048;
      v45 = [objectsCopy count];
      v46 = 2114;
      v47 = descriptorsCopy;
      _os_log_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_INFO, "<%{public}@:%p removeContentForObjects:%lu legibilityDescriptors:%{public}@>", buf, 0x2Au);
    }

    v32 = objc_opt_new();
    v31 = objc_opt_new();
    v28 = descriptorsCopy;
    obj = descriptorsCopy;
    v14 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v30 = MEMORY[0];
      do
      {
        for (i = 0; i != v15; i = (i + 1))
        {
          if (MEMORY[0] != v30)
          {
            objc_enumerationMutation(obj);
          }

          v39 = contentGenerator;
          v17 = [v35 bs_mapNoNulls:?];
          v38 = legibilityGenerator;
          v18 = [v35 bs_mapNoNulls:?];
          v19 = [MEMORY[0x277D3EC50] join:?];
          v37 = v39;
          v20 = [v19 flatMap:?];

          v21 = [MEMORY[0x277D3EC50] join:?];
          v36 = v38;
          v22 = [v21 flatMap:?];

          [v32 addObject:?];
          [v31 addObject:?];
        }

        v15 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }

    v23 = MEMORY[0x277D3EC50];
    v24 = [v32 arrayByAddingObjectsFromArray:?];
    v25 = [v23 join:?];
    v26 = [v25 trackWithActivity:?];

    descriptorsCopy = v28;
  }
}

id __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:?];
  v4 = [v2 removeImagesForCacheKeys:?];

  return v4;
}

id __86__PLKCachedLegibilityContentDataSource_removeContentForObjects_legibilityDescriptors___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:?];
  v4 = [v2 removeImagesForCacheKeys:?];

  return v4;
}

- (void)removeAllObjectsWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_21E5D5000, "<PLKCachedLegibilityContentDataSource removeContentForObjects:legibilityDescriptors:>", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v6 = [MEMORY[0x277D3EC38] activityWrapping:?];

  track = [v6 track];

  v9 = PLKLogRendering(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v31 = v11;
    v32 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21E5D5000, v9, OS_LOG_TYPE_INFO, "<%{public}@:%p removeAllObjects>", buf, 0x16u);
  }

  contentGenerator = [(PLKLegibilityContentDataSource *)self contentGenerator];
  v13 = [MEMORY[0x277CCAC30] predicateWithValue:?];
  v14 = [contentGenerator removeImagesForPredicate:?];

  legibilityGenerator = [(PLKLegibilityContentDataSource *)self legibilityGenerator];
  v16 = [MEMORY[0x277CCAC30] predicateWithValue:?];
  v17 = [legibilityGenerator removeImagesForPredicate:?];

  v18 = MEMORY[0x277D3EC50];
  v28 = v14;
  v29 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v20 = [v18 join:?];
  v21 = [v20 trackWithActivity:?];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __71__PLKCachedLegibilityContentDataSource_removeAllObjectsWithCompletion___block_invoke;
  v26 = &unk_27835B448;
  v27 = completionCopy;
  v22 = completionCopy;
  [v21 addCompletionBlock:?];
}

uint64_t __71__PLKCachedLegibilityContentDataSource_removeAllObjectsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)synchonrouslyRemoveAllObjects
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __69__PLKCachedLegibilityContentDataSource_synchonrouslyRemoveAllObjects__block_invoke;
  v10 = &unk_27835B470;
  v4 = v3;
  v11 = v4;
  [(PLKCachedLegibilityContentDataSource *)self removeAllObjectsWithCompletion:?];
  if (([v4 hasBeenSignalled] & 1) == 0)
  {
    do
    {
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
      [currentRunLoop runUntilDate:?];
    }

    while (![v4 hasBeenSignalled]);
  }
}

+ (void)attributedStringContentDataSourceForMaxSize:(uint64_t)a3 scale:cacheProvider:metricsProvider:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PLKLegibilityContentDataSource.m";
  v16 = 1024;
  v17 = 228;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end