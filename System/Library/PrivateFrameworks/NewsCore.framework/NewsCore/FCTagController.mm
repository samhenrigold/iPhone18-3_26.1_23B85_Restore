@interface FCTagController
- (BOOL)shouldPrefetchGlobalTags;
- (FCTagController)init;
- (FCTagController)initWithContentDatabase:(id)database assetManager:(id)manager tagRecordSource:(id)source configurationManager:(id)configurationManager;
- (id)_cachedTagForTagID:(uint64_t)d fastCacheOnly:;
- (id)_cachedTagsForTagIDs:(char)ds fastCacheOnly:;
- (id)expectedFastCachedTagForID:(id)d;
- (id)fetchOperationForTagsIncludingChildrenWithIDs:(id)ds softMaxAge:(double)age;
- (id)fetchOperationForTagsWithIDs:(id)ds;
- (id)fetchOperationForTagsWithIDs:(id)ds includeChildren:(BOOL)children;
- (id)fetchOperationForTagsWithIDs:(id)ds includeParents:(BOOL)parents;
- (id)jsonEncodableObject;
- (id)slowCachedTagsForIDs:(id)ds;
- (id)tagsForTagIDs:(id)ds predicate:(id)predicate;
- (id)tagsForTagRecords:(id)records;
- (void)_fetchTagsForTagIDs:(uint64_t)ds includeParents:(uint64_t)parents includeChildren:(uint64_t)children qualityOfService:(void *)service callbackQueue:(void *)queue completionHandler:;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)dealloc;
- (void)fetchTagForTagID:(id)d qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)fetchTagsForTagIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)fetchTagsForTagIDs:(id)ds maximumCachedAge:(double)age qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)fetchTagsForTagIDs:(id)ds qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)saveTagsToCache:(id)cache;
- (void)setShouldPrefetchGlobalTags:(BOOL)tags;
@end

@implementation FCTagController

- (FCTagController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCTagController init]";
    v10 = 2080;
    v11 = "FCTagController.m";
    v12 = 1024;
    v13 = 63;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCTagController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTagController)initWithContentDatabase:(id)database assetManager:(id)manager tagRecordSource:(id)source configurationManager:(id)configurationManager
{
  v40 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  managerCopy = manager;
  sourceCopy = source;
  configurationManagerCopy = configurationManager;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase != nil"];
    *buf = 136315906;
    v33 = "[FCTagController initWithContentDatabase:assetManager:tagRecordSource:configurationManager:]";
    v34 = 2080;
    v35 = "FCTagController.m";
    v36 = 1024;
    v37 = 71;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager != nil"];
    *buf = 136315906;
    v33 = "[FCTagController initWithContentDatabase:assetManager:tagRecordSource:configurationManager:]";
    v34 = 2080;
    v35 = "FCTagController.m";
    v36 = 1024;
    v37 = 72;
    v38 = 2114;
    v39 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!sourceCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagRecordSource != nil"];
    *buf = 136315906;
    v33 = "[FCTagController initWithContentDatabase:assetManager:tagRecordSource:configurationManager:]";
    v34 = 2080;
    v35 = "FCTagController.m";
    v36 = 1024;
    v37 = 73;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v31.receiver = self;
  v31.super_class = FCTagController;
  v15 = [(FCTagController *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contentDatabase, database);
    objc_storeStrong(&v16->_assetManager, manager);
    objc_storeStrong(&v16->_configurationManager, configurationManager);
    objc_storeStrong(&v16->_tagRecordSource, source);
    v17 = +[FCThreadSafeMapTable strongToWeakObjectsMapTable];
    fastCache = v16->_fastCache;
    v16->_fastCache = v17;

    v19 = [[FCOperationThrottler alloc] initWithDelegate:v16];
    tagPrefetchThrottler = v16->_tagPrefetchThrottler;
    v16->_tagPrefetchThrottler = v19;

    [(FCOperationThrottler *)v16->_tagPrefetchThrottler setSuspended:1];
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prefetchedTags = v16->_prefetchedTags;
    v16->_prefetchedTags = v21;

    v23 = [[FCOperationThrottler alloc] initWithDelegate:v16];
    tagRefreshThrottler = v16->_tagRefreshThrottler;
    v16->_tagRefreshThrottler = v23;

    v25 = objc_alloc_init(FCThreadSafeMutableSet);
    tagIDsNeedingRefresh = v16->_tagIDsNeedingRefresh;
    v16->_tagIDsNeedingRefresh = v25;

    objc_storeStrong(&v16->_configurationManager, configurationManager);
    [(FCCoreConfigurationManager *)v16->_configurationManager addObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  [(FCCoreConfigurationManager *)self->_configurationManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = FCTagController;
  [(FCTagController *)&v3 dealloc];
}

- (id)_cachedTagForTagID:(uint64_t)d fastCacheOnly:
{
  dCopy = d;
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      v13 = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      v8 = [(FCTagController *)self _cachedTagsForTagIDs:v7 fastCacheOnly:dCopy];
      allValues = [v8 allValues];
      firstObject = [allValues firstObject];

      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
      *buf = 136315906;
      v15 = "[FCTagController _cachedTagForTagID:fastCacheOnly:]";
      v16 = 2080;
      v17 = "FCTagController.m";
      v18 = 1024;
      v19 = 375;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  firstObject = 0;
LABEL_7:

  return firstObject;
}

- (id)_cachedTagsForTagIDs:(char)ds fastCacheOnly:
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
      *buf = 136315906;
      v44 = "[FCTagController _cachedTagsForTagIDs:fastCacheOnly:]";
      v45 = 2080;
      v46 = "FCTagController.m";
      v47 = 1024;
      v48 = 382;
      v49 = 2114;
      v50 = v28;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v9 = self[5];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke;
    v35[3] = &unk_1E7C37B20;
    v31 = v6;
    v36 = v6;
    v10 = dictionary;
    v37 = v10;
    v11 = array;
    v38 = v11;
    [v9 readWithAccessor:v35];
    if ([v11 count] && (ds & 1) == 0)
    {
      v12 = [self[3] cachedRecordsWithIDs:v11];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke_2;
      v33[3] = &unk_1E7C37B48;
      v33[4] = self;
      v13 = v10;
      v34 = v13;
      [v12 enumerateRecordsAndInterestTokensWithBlock:v33];
      [self[5] addEntriesFromDictionary:v13];
    }

    v30 = v11;
    selfCopy = self;
    allValues = [v10 allValues];
    v32 = [MEMORY[0x1E695E0F0] mutableCopy];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = allValues;
    v16 = [v15 countByEnumeratingWithState:&v39 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          loadDate = [v20 loadDate];
          v22 = [loadDate dateByAddingTimeInterval:3600.0];
          date = [MEMORY[0x1E695DF00] date];
          v24 = [v22 fc_isEarlierThan:date];

          if (v24)
          {
            identifier = [v20 identifier];
            [v32 addObject:identifier];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:buf count:16];
      }

      while (v17);
    }

    if ([v32 count])
    {
      [selfCopy[9] addObjectsFromArray:v32];
      [selfCopy[8] tickle];
    }

    v26 = v38;
    self = v10;

    v6 = v31;
  }

  return self;
}

- (id)slowCachedTagsForIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    v8 = 136315906;
    v9 = "[FCTagController slowCachedTagsForIDs:]";
    v10 = 2080;
    v11 = "FCTagController.m";
    v12 = 1024;
    v13 = 119;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
  }

  v5 = [(FCTagController *)&self->super.isa _cachedTagsForTagIDs:dsCopy fastCacheOnly:0];

  return v5;
}

- (id)expectedFastCachedTagForID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(FCTagController *)&self->super.isa _cachedTagForTagID:dCopy fastCacheOnly:1];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "result"];
      *buf = 136315906;
      v9 = "[FCTagController expectedFastCachedTagForID:]";
      v10 = 2080;
      v11 = "FCTagController.m";
      v12 = 1024;
      v13 = 127;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = [(FCTagController *)&self->super.isa _cachedTagForTagID:dCopy fastCacheOnly:0];
  }

  return v5;
}

- (id)fetchOperationForTagsWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = [FCTagsFetchOperation alloc];
  if (self)
  {
    v6 = self->_tagRecordSource;
    v7 = self->_assetManager;
    configurationManager = self->_configurationManager;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    configurationManager = 0;
  }

  v9 = configurationManager;
  configuration = [(FCCoreConfigurationManager *)v9 configuration];
  v11 = [(FCTagsFetchOperation *)v5 initWithTagIDs:dsCopy tagRecordSource:v6 assetManager:v7 configuration:configuration delegate:self];

  return v11;
}

- (id)fetchOperationForTagsWithIDs:(id)ds includeParents:(BOOL)parents
{
  parentsCopy = parents;
  dsCopy = ds;
  v7 = [FCTagsFetchOperation alloc];
  if (self)
  {
    v8 = self->_tagRecordSource;
    v9 = self->_assetManager;
    configurationManager = self->_configurationManager;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    configurationManager = 0;
  }

  v11 = configurationManager;
  configuration = [(FCCoreConfigurationManager *)v11 configuration];
  v13 = [(FCTagsFetchOperation *)v7 initWithTagIDs:dsCopy tagRecordSource:v8 assetManager:v9 configuration:configuration delegate:self];

  [(FCTagsFetchOperation *)v13 setIncludeParents:parentsCopy];

  return v13;
}

- (id)fetchOperationForTagsWithIDs:(id)ds includeChildren:(BOOL)children
{
  childrenCopy = children;
  dsCopy = ds;
  v7 = [FCTagsFetchOperation alloc];
  if (self)
  {
    v8 = self->_tagRecordSource;
    v9 = self->_assetManager;
    configurationManager = self->_configurationManager;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    configurationManager = 0;
  }

  v11 = configurationManager;
  configuration = [(FCCoreConfigurationManager *)v11 configuration];
  v13 = [(FCTagsFetchOperation *)v7 initWithTagIDs:dsCopy tagRecordSource:v8 assetManager:v9 configuration:configuration delegate:self];

  [(FCTagsFetchOperation *)v13 setIncludeChildren:childrenCopy];

  return v13;
}

- (id)fetchOperationForTagsIncludingChildrenWithIDs:(id)ds softMaxAge:(double)age
{
  dsCopy = ds;
  v7 = [FCTagsFetchOperation alloc];
  if (self)
  {
    v8 = self->_tagRecordSource;
    v9 = self->_assetManager;
    configurationManager = self->_configurationManager;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    configurationManager = 0;
  }

  v11 = configurationManager;
  configuration = [(FCCoreConfigurationManager *)v11 configuration];
  v13 = [(FCTagsFetchOperation *)v7 initWithTagIDs:dsCopy tagRecordSource:v8 assetManager:v9 configuration:configuration delegate:self];

  [(FCFetchOperation *)v13 setCachePolicy:4];
  [(FCFetchOperation *)v13 setMaximumCachedAge:age];
  [(FCTagsFetchOperation *)v13 setIncludeChildren:1];
  [(FCTagsFetchOperation *)v13 setOverrideChildrenCachePolicy:1];
  [(FCTagsFetchOperation *)v13 setChildrenCachePolicy:4];
  [(FCTagsFetchOperation *)v13 setChildrenMaximumCachedAge:age];

  return v13;
}

- (void)fetchTagsForTagIDs:(id)ds maximumCachedAge:(double)age qualityOfService:(int64_t)service completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  v12 = [FCCachePolicy cachePolicyWithSoftMaxAge:age];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__FCTagController_fetchTagsForTagIDs_maximumCachedAge_qualityOfService_completionHandler___block_invoke;
  v14[3] = &unk_1E7C379A0;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(FCTagController *)self fetchTagsForTagIDs:dsCopy cachePolicy:v12 qualityOfService:service completionHandler:v14];
}

uint64_t __90__FCTagController_fetchTagsForTagIDs_maximumCachedAge_qualityOfService_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchTagsForTagIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  policyCopy = policy;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
    *buf = 136315906;
    v40 = "[FCTagController fetchTagsForTagIDs:cachePolicy:qualityOfService:completionHandler:]";
    v41 = 2080;
    v42 = "FCTagController.m";
    v43 = 1024;
    v44 = 224;
    v45 = 2114;
    v46 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (handlerCopy)
    {
LABEL_4:
      if ([dsCopy count])
      {
        cachePolicy = [policyCopy cachePolicy];
        if (cachePolicy > 5)
        {
          v15 = 0;
        }

        else if (((1 << cachePolicy) & 0xD) != 0)
        {
          if (self)
          {
            fastCache = self->_fastCache;
          }

          else
          {
            fastCache = 0;
          }

          v15 = [(FCThreadSafeMapTable *)fastCache subdictionaryForKeys:dsCopy];
        }

        else if (((1 << cachePolicy) & 0x30) != 0)
        {
          oldestAllowedDate = [policyCopy oldestAllowedDate];
          v17 = oldestAllowedDate;
          if (oldestAllowedDate)
          {
            distantPast = oldestAllowedDate;
          }

          else
          {
            distantPast = [MEMORY[0x1E695DF00] distantPast];
          }

          v19 = distantPast;

          distantPast2 = [MEMORY[0x1E695DF00] distantPast];
          v21 = [v19 isEqualToDate:distantPast2];

          if (v21)
          {
            if (self)
            {
              v22 = self->_fastCache;
            }

            else
            {
              v22 = 0;
            }

            v15 = [(FCThreadSafeMapTable *)v22 subdictionaryForKeys:dsCopy];
          }

          else
          {
            if (self)
            {
              v23 = self->_fastCache;
            }

            else
            {
              v23 = 0;
            }

            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3;
            v32[3] = &unk_1E7C379F0;
            v33 = v19;
            v15 = [(FCThreadSafeMapTable *)v23 subdictionaryForKeys:dsCopy passingTest:v32];
          }
        }

        else
        {
          v15 = MEMORY[0x1E695E0F8];
        }

        v24 = [v15 count];
        if (v24 == [dsCopy count])
        {
          handlerCopy[2](handlerCopy, v15, 0);
        }

        else
        {
          v25 = [(FCTagController *)self fetchOperationForTagsWithIDs:dsCopy];
          [v25 setQualityOfService:service];
          if (service == 9)
          {
            v26 = -1;
          }

          else
          {
            v26 = service == 33 || service == 25;
          }

          [v25 setRelativePriority:v26];
          [v25 setCachePolicy:{objc_msgSend(policyCopy, "cachePolicy")}];
          [policyCopy maximumCachedAge];
          [v25 setMaximumCachedAge:?];
          [v25 setCanSendFetchCompletionSynchronously:1];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_4;
          v30[3] = &unk_1E7C37A38;
          v31 = handlerCopy;
          [v25 setFetchCompletionBlock:v30];
          if ([MEMORY[0x1E696AF00] isMainThread])
          {
            fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
            [fc_sharedConcurrentQueue addOperation:v25];
          }

          else
          {
            [v25 start];
          }
        }
      }

      else
      {
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2;
        v37 = &unk_1E7C379C8;
        v38 = handlerCopy;
        v38[2](v38, MEMORY[0x1E695E0F8], 0);
      }

      goto LABEL_41;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v40 = "[FCTagController fetchTagsForTagIDs:cachePolicy:qualityOfService:completionHandler:]";
    v41 = 2080;
    v42 = "FCTagController.m";
    v43 = 1024;
    v44 = 225;
    v45 = 2114;
    v46 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_41:
}

BOOL __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 fetchDate];
  if ([v5 fc_isLaterThanOrEqualTo:*(a1 + 32)])
  {
    v6 = [FCTagController isTagAllowedForNewsVersion:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __85__FCTagController_fetchTagsForTagIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v4 fetchedObject];
  v8 = [v3 dictionaryWithDictionary:v5];

  [v8 fc_removeObjectsForKeysPassingTest:&__block_literal_global_38];
  v6 = *(a1 + 32);
  v7 = [v4 error];

  (*(v6 + 16))(v6, v8, v7);
}

- (void)fetchTagsForTagIDs:(id)ds qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  if (self)
  {
    [(FCTagController *)self _fetchTagsForTagIDs:ds includeParents:0 includeChildren:0 qualityOfService:service callbackQueue:queue completionHandler:handler];
  }
}

- (void)_fetchTagsForTagIDs:(uint64_t)ds includeParents:(uint64_t)parents includeChildren:(uint64_t)children qualityOfService:(void *)service callbackQueue:(void *)queue completionHandler:
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = a2;
  serviceCopy = service;
  queueCopy = queue;
  if (!self)
  {
    goto LABEL_27;
  }

  if (v13 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (serviceCopy)
    {
      goto LABEL_5;
    }

LABEL_23:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
      *buf = 136315906;
      v42 = "[FCTagController _fetchTagsForTagIDs:includeParents:includeChildren:qualityOfService:callbackQueue:completionHandler:]";
      v43 = 2080;
      v44 = "FCTagController.m";
      v45 = 1024;
      v46 = 468;
      v47 = 2114;
      v48 = v25;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (queueCopy)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v42 = "[FCTagController _fetchTagsForTagIDs:includeParents:includeChildren:qualityOfService:callbackQueue:completionHandler:]";
    v43 = 2080;
    v44 = "FCTagController.m";
    v45 = 1024;
    v46 = 469;
    v47 = 2114;
    v48 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    goto LABEL_21;
  }

  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagIDs != nil"];
  *buf = 136315906;
  v42 = "[FCTagController _fetchTagsForTagIDs:includeParents:includeChildren:qualityOfService:callbackQueue:completionHandler:]";
  v43 = 2080;
  v44 = "FCTagController.m";
  v45 = 1024;
  v46 = 467;
  v47 = 2114;
  v48 = v24;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  if (!serviceCopy)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (!queueCopy)
  {
    goto LABEL_26;
  }

  if ([v13 count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v18 = self[5];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
    v32[3] = &unk_1E7C37B70;
    v33 = v13;
    v19 = dictionary;
    v34 = v19;
    dsCopy = ds;
    v20 = array;
    v35 = v20;
    parentsCopy = parents;
    [v18 readWithAccessor:v32];
    if ([v20 count])
    {
      v21 = [self fetchOperationForTagsWithIDs:v20];
      [v21 setIncludeParents:ds];
      [v21 setIncludeChildren:parents];
      [v21 setQualityOfService:children];
      if (children == 9)
      {
        v22 = -1;
      }

      else
      {
        v22 = children == 33 || children == 25;
      }

      [v21 setRelativePriority:v22];
      [v21 setFetchCompletionQueue:serviceCopy];
      [v21 setCanSendFetchCompletionSynchronously:0];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_5;
      v29[3] = &unk_1E7C37B98;
      v30 = v19;
      v31 = queueCopy;
      [v21 setFetchCompletionBlock:v29];
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
        [fc_sharedConcurrentQueue addOperation:v21];
      }

      else
      {
        [v21 start];
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_7;
      block[3] = &unk_1E7C37BC0;
      v27 = v19;
      v28 = queueCopy;
      dispatch_async(serviceCopy, block);

      v21 = v27;
    }

LABEL_21:
    goto LABEL_27;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
  v38[3] = &unk_1E7C37778;
  v40 = queueCopy;
  v39 = serviceCopy;
  __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2(v38);

LABEL_27:
}

- (void)fetchTagForTagID:(id)d qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    if (dCopy)
    {
      v17[0] = dCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke;
      *&v16 = &unk_1E7C379A0;
      *(&v16 + 1) = handlerCopy;
      [(FCTagController *)self _fetchTagsForTagIDs:v13 includeParents:0 includeChildren:0 qualityOfService:service callbackQueue:queueCopy completionHandler:block];

LABEL_7:
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
      *block = 136315906;
      *&block[4] = "[FCTagController _fetchTagForTagID:qualityOfService:callbackQueue:completionHandler:]";
      *&block[12] = 2080;
      *&block[14] = "FCTagController.m";
      *&block[22] = 1024;
      LODWORD(v16) = 441;
      WORD2(v16) = 2114;
      *(&v16 + 6) = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", block, 0x26u);

      if (!handlerCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (handlerCopy)
    {
LABEL_6:
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
      *&v16 = &unk_1E7C379C8;
      *(&v16 + 1) = handlerCopy;
      dispatch_async(queueCopy, block);
      goto LABEL_7;
    }
  }

LABEL_8:
}

void __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_2;
  v13[3] = &unk_1E7C37AB0;
  v10 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v8;
  v14 = v7;
  v11 = v7;
  v12 = v8;
  [v10 fetchTagsForTagIDs:v11 maximumCachedAge:a3 qualityOfService:v13 completionHandler:v9];
}

void __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_3;
  v9[3] = &unk_1E7C37A88;
  v10 = v6;
  v11 = v5;
  v13 = a1[5];
  v14 = a1[6];
  v12 = a1[4];
  v7 = v5;
  v8 = v6;
  FCPerformBlockOnMainThread(v9);
}

void __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v10 = v3;
      v11 = [v2 localizedDescription];
      *buf = 138543362;
      v15 = v11;
      _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_43;
    v12[3] = &unk_1E7C37A60;
    v13 = v5;
    v7 = [v6 fc_dictionaryByTransformingValuesWithBlock:v12];

    v4 = v7;
  }

  v8 = *(a1 + 64);
  v9 = [v4 nf_objectsForKeysWithoutMarker:*(a1 + 48)];
  (*(v8 + 16))(v8, v9);
}

void *__60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke_43(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  if (v3(v2, v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)tagsForTagIDs:(id)ds predicate:(id)predicate
{
  dsCopy = ds;
  predicateCopy = predicate;
  if (self)
  {
    if ([dsCopy count])
    {
      v8 = [[FCArrayStream alloc] initWithArray:dsCopy];
      v9 = [FCTransformedResultsStream alloc];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__FCTagController_tagsForTagIDs_maximumCachedAge_predicate___block_invoke;
      v12[3] = &unk_1E7C37AD8;
      v12[4] = self;
      v14 = 0x7FEFFFFFFFFFFFFFLL;
      v13 = predicateCopy;
      v10 = [(FCTransformedResultsStream *)v9 initWithStream:v8 asyncTransformBlock:v12];
      self = [[FCStreamingResults alloc] initWithStream:v10];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

void __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke(id *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 objectForKey:{v9, v11}];
        if (v10)
        {
          [a1[5] setObject:v10 forKey:v9];
        }

        else
        {
          [a1[6] addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __54__FCTagController__cachedTagsForTagIDs_fastCacheOnly___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [FCTag alloc];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[2];
  }

  v8 = v7;
  v9 = [v17 base];
  v10 = [v9 identifier];
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[4];
  }

  v12 = v11;
  v13 = [v12 configuration];
  v14 = [(FCTag *)v6 initWithTagRecord:v17 assetManager:v8 interestToken:v5 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v10, v13)];

  v15 = *(a1 + 40);
  v16 = [(FCTag *)v14 identifier];
  [v15 setObject:v14 forKey:v16];
}

void __86__FCTagController__fetchTagForTagID_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v7 = [a2 allValues];
    v6 = [v7 firstObject];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v23 = *v33;
    v24 = v4;
    do
    {
      v8 = 0;
      v25 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = [v3 objectForKey:v9];
        if (v10)
        {
          [*(a1 + 40) setObject:v10 forKey:v9];
          v11 = [v10 asSection];
          v12 = [v11 parentID];

          if (*(a1 + 56) == 1 && v12)
          {
            v13 = [v3 objectForKey:v12];
            if (v13)
            {
              [*(a1 + 40) setObject:v13 forKey:v12];
            }

            else
            {
              [*(a1 + 48) addObject:v12];
            }
          }

          v14 = [v10 asChannel];
          v15 = [v14 sectionIDs];

          if (*(a1 + 57) == 1 && [v15 count])
          {
            v26 = v15;
            v27 = v12;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v29;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v29 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v28 + 1) + 8 * i);
                  v22 = [v3 objectForKey:v21];
                  if (v22)
                  {
                    [*(a1 + 40) setObject:v22 forKey:v21];
                  }

                  else
                  {
                    [*(a1 + 48) addObject:v21];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v18);
            }

            v7 = v23;
            v4 = v24;
            v6 = v25;
            v15 = v26;
            v12 = v27;
          }
        }

        else
        {
          [*(a1 + 48) addObject:v9];
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }
}

void __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 status])
  {
    v3 = [v8 fetchedObject];
    if (v3)
    {
      [*(a1 + 32) addEntriesFromDictionary:v3];
    }
  }

  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_60];
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if ([v4 count])
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  else
  {
    v7 = [v8 error];
    (*(v5 + 16))(v5, v4, v7);
  }
}

uint64_t __119__FCTagController__fetchTagsForTagIDs_includeParents_includeChildren_qualityOfService_callbackQueue_completionHandler___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_62_0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)saveTagsToCache:(id)cache
{
  cacheCopy = cache;
  if (self)
  {
    self = self->_fastCache;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__FCTagController_saveTagsToCache___block_invoke;
  v6[3] = &unk_1E7C37C10;
  v7 = cacheCopy;
  v5 = cacheCopy;
  [(FCTagController *)self readWriteWithAccessor:v6];
}

void __35__FCTagController_saveTagsToCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__FCTagController_saveTagsToCache___block_invoke_2;
  v6[3] = &unk_1E7C37BE8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __35__FCTagController_saveTagsToCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (!v6 || ([v14 tagRecord], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "base"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "tagRecord"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "base"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "fc_isNewerThan:", v10), v10, v9, v8, v7, v11))
  {
    v12 = *(a1 + 32);
    v13 = [v14 identifier];
    [v12 setObject:v14 forKey:v13];
  }
}

- (id)tagsForTagRecords:(id)records
{
  recordsCopy = records;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  if (self)
  {
    fastCache = self->_fastCache;
  }

  else
  {
    fastCache = 0;
  }

  v6 = fastCache;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__FCTagController_tagsForTagRecords___block_invoke;
  v10[3] = &unk_1E7C37C60;
  v13 = &v14;
  v7 = recordsCopy;
  v11 = v7;
  selfCopy = self;
  [(FCThreadSafeMapTable *)v6 readWriteWithAccessor:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __37__FCTagController_tagsForTagRecords___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__FCTagController_tagsForTagRecords___block_invoke_2;
  v10[3] = &unk_1E7C37C38;
  v5 = a1[4];
  v4 = a1[5];
  v11 = v3;
  v12 = v4;
  v6 = v3;
  v7 = [v5 transformRecordsByIDWithBlock:v10];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

FCTag *__37__FCTagController_tagsForTagRecords___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 base];
  v9 = [v8 identifier];
  v10 = [v7 objectForKey:v9];

  if (v10 && ([v5 base], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "tagRecord"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "base"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "fc_isNewerThan:", v13), v13, v12, v11, (v14 & 1) == 0))
  {
    v23 = v10;
  }

  else
  {
    v15 = [FCTag alloc];
    v16 = *(a1 + 40);
    if (v16)
    {
      v16 = v16[2];
    }

    v17 = v16;
    v18 = [v5 base];
    v19 = [v18 identifier];
    v20 = *(a1 + 40);
    if (v20)
    {
      v20 = v20[4];
    }

    v21 = v20;
    v22 = [v21 configuration];
    v23 = [(FCTag *)v15 initWithTagRecord:v5 assetManager:v17 interestToken:v6 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v19, v22)];

    v24 = *(a1 + 32);
    v25 = [(FCTag *)v23 identifier];
    [v24 setObject:v23 forKey:v25];
  }

  return v23;
}

- (BOOL)shouldPrefetchGlobalTags
{
  if (self)
  {
    self = self->_tagPrefetchThrottler;
  }

  return [(FCTagController *)self suspended]^ 1;
}

- (void)setShouldPrefetchGlobalTags:(BOOL)tags
{
  tagsCopy = tags;
  selfCopy = self;
  if (self)
  {
    self = self->_tagPrefetchThrottler;
  }

  if ([(FCTagController *)self suspended]== tags)
  {
    if (selfCopy)
    {
      tagPrefetchThrottler = selfCopy->_tagPrefetchThrottler;
    }

    else
    {
      tagPrefetchThrottler = 0;
    }

    [(FCOperationThrottler *)tagPrefetchThrottler setSuspended:!tagsCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__FCTagController_setShouldPrefetchGlobalTags___block_invoke;
    v6[3] = &unk_1E7C36EA0;
    v6[4] = selfCopy;
    [FCTaskScheduler scheduleLowPriorityBlock:v6];
  }
}

uint64_t __47__FCTagController_setShouldPrefetchGlobalTags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return [v2 tickle];
}

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__FCTagController_configurationManager_configurationDidChange___block_invoke;
  v4[3] = &unk_1E7C36EA0;
  v4[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlock:v4, change];
}

uint64_t __63__FCTagController_configurationManager_configurationDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return [v2 tickle];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  throttlerCopy = throttler;
  completionCopy = completion;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    v48 = "[FCTagController operationThrottler:performAsyncOperationWithCompletion:]";
    v49 = 2080;
    v50 = "FCTagController.m";
    v51 = 1024;
    v52 = 665;
    v53 = 2114;
    v54 = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_17:
    if (throttlerCopy)
    {
      goto LABEL_15;
    }

    configurationManager = 0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (self->_tagPrefetchThrottler != throttlerCopy)
  {
    goto LABEL_12;
  }

  configurationManager = self->_configurationManager;
LABEL_6:
  configuration = [(FCCoreConfigurationManager *)configurationManager configuration];
  v10 = [MEMORY[0x1E695DFA8] set];
  briefingsTagID = [configuration briefingsTagID];
  [v10 fc_safelyAddObject:briefingsTagID];

  trendingTagID = [configuration trendingTagID];
  [v10 fc_safelyAddObject:trendingTagID];

  featuredStoriesTagID = [configuration featuredStoriesTagID];
  [v10 fc_safelyAddObject:featuredStoriesTagID];

  savedStoriesTagID = [configuration savedStoriesTagID];
  [v10 fc_safelyAddObject:savedStoriesTagID];

  spotlightChannelID = [configuration spotlightChannelID];
  [v10 fc_safelyAddObject:spotlightChannelID];

  myMagazinesTagID = [configuration myMagazinesTagID];
  [v10 fc_safelyAddObject:myMagazinesTagID];

  mySportsTagID = [configuration mySportsTagID];
  [v10 fc_safelyAddObject:mySportsTagID];

  sportsTopStoriesTagID = [configuration sportsTopStoriesTagID];
  [v10 fc_safelyAddObject:sportsTopStoriesTagID];

  puzzlesConfig = [configuration puzzlesConfig];
  puzzleHubTagID = [puzzlesConfig puzzleHubTagID];
  [v10 fc_safelyAddObject:puzzleHubTagID];

  puzzlesConfig2 = [configuration puzzlesConfig];
  puzzleFullArchiveTagID = [puzzlesConfig2 puzzleFullArchiveTagID];
  [v10 fc_safelyAddObject:puzzleFullArchiveTagID];

  shortcutsTagID = [configuration shortcutsTagID];
  [v10 fc_safelyAddObject:shortcutsTagID];

  mySportsScoresTagID = [configuration mySportsScoresTagID];
  [v10 fc_safelyAddObject:mySportsScoresTagID];

  mySportsHighlightsTagID = [configuration mySportsHighlightsTagID];
  [v10 fc_safelyAddObject:mySportsHighlightsTagID];

  sportScoresTagID = [configuration sportScoresTagID];
  [v10 fc_safelyAddObject:sportScoresTagID];

  sportTeamScoresTagID = [configuration sportTeamScoresTagID];
  [v10 fc_safelyAddObject:sportTeamScoresTagID];

  sportLeagueScoresTagID = [configuration sportLeagueScoresTagID];
  [v10 fc_safelyAddObject:sportLeagueScoresTagID];

  sportsStandingsTagID = [configuration sportsStandingsTagID];
  [v10 fc_safelyAddObject:sportsStandingsTagID];

  sportsBracketTagID = [configuration sportsBracketTagID];
  [v10 fc_safelyAddObject:sportsBracketTagID];

  sportHighlightsTagID = [configuration sportHighlightsTagID];
  [v10 fc_safelyAddObject:sportHighlightsTagID];

  sportTeamHighlightsTagID = [configuration sportTeamHighlightsTagID];
  [v10 fc_safelyAddObject:sportTeamHighlightsTagID];

  sportLeagueHighlightsTagID = [configuration sportLeagueHighlightsTagID];
  [v10 fc_safelyAddObject:sportLeagueHighlightsTagID];

  sportEventHighlightsTagID = [configuration sportEventHighlightsTagID];
  [v10 fc_safelyAddObject:sportEventHighlightsTagID];

  if ([v10 count])
  {
    allObjects = [v10 allObjects];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
    v45[3] = &unk_1E7C37C88;
    v45[4] = self;
    v46 = completionCopy;
    if (self)
    {
      [(FCTagController *)self _fetchTagsForTagIDs:allObjects includeParents:0 includeChildren:0 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v45];
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }

  if (!self)
  {
    if (throttlerCopy)
    {
      goto LABEL_15;
    }

    tagIDsNeedingRefresh = 0;
    goto LABEL_14;
  }

LABEL_12:
  if (self->_tagRefreshThrottler == throttlerCopy)
  {
    tagIDsNeedingRefresh = self->_tagIDsNeedingRefresh;
LABEL_14:
    v37 = tagIDsNeedingRefresh;
    allObjects2 = [(FCThreadSafeMutableSet *)v37 allObjects];

    v39 = [(FCTagController *)self fetchOperationForTagsWithIDs:allObjects2];
    [v39 setQualityOfService:9];
    [v39 setRelativePriority:-1];
    [v39 setCachePolicy:4];
    [v39 setMaximumCachedAge:3600.0];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2;
    v42[3] = &unk_1E7C37CB0;
    v42[4] = self;
    v43 = allObjects2;
    v44 = completionCopy;
    v40 = allObjects2;
    [v39 setFetchCompletionBlock:v42];
    [v39 start];
  }

LABEL_15:
}

uint64_t __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
    }

    else
    {
      v4 = 0;
    }

    [v4 addEntriesFromDictionary:a2];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t __74__FCTagController_operationThrottler_performAsyncOperationWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeObjectsInArray:a1[5]];
  v4 = *(a1[6] + 16);

  return v4();
}

- (id)jsonEncodableObject
{
  if (self)
  {
    self = self->_tagRecordSource;
  }

  return [(FCTagController *)self jsonEncodableObject];
}

@end