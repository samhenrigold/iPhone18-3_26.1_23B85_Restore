@interface FCSportsEventController
- (FCSportsEventController)initWithContentDatabase:(id)database context:(id)context sportsEventRecordSource:(id)source tagController:(id)controller;
- (id)_cachedSportsEventForSportsEventID:(id)d fastCacheOnly:(BOOL)only;
- (id)_cachedSportsEventsForSportsEventID:(id)d fastCacheOnly:(BOOL)only;
- (id)_fetchOperationForSportsEventsWithIDs:(id)ds;
- (id)jsonEncodableObject;
- (void)_fetchSportsEventForSportsEventID:(id)d cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)_fetchSportsEventsForSportsEventIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)_refreshSportsEventsBasedOnAgeForSportsEventIDs:(id)ds;
- (void)_saveSportsEventsToCache:(id)cache;
@end

@implementation FCSportsEventController

- (FCSportsEventController)initWithContentDatabase:(id)database context:(id)context sportsEventRecordSource:(id)source tagController:(id)controller
{
  contextCopy = context;
  sourceCopy = source;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = FCSportsEventController;
  v13 = [(FCSportsEventController *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v14->_sportsEventRecordSource, source);
    objc_storeStrong(&v14->_tagController, controller);
    news_core_ConfigurationManager = [contextCopy news_core_ConfigurationManager];
    appConfigurationManager = v14->_appConfigurationManager;
    v14->_appConfigurationManager = news_core_ConfigurationManager;

    v17 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fastCache = v14->_fastCache;
    v14->_fastCache = v17;
  }

  return v14;
}

- (void)_refreshSportsEventsBasedOnAgeForSportsEventIDs:(id)ds
{
  selfCopy = self;
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = dsCopy;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        loadDate = [v9 loadDate];
        v11 = [loadDate dateByAddingTimeInterval:3600.0];
        date = [MEMORY[0x1E695DF00] date];
        v13 = [v11 fc_isEarlierThan:date];

        if (v13)
        {
          identifier = [v9 identifier];
          [v4 addObject:identifier];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v15 = [(FCSportsEventController *)selfCopy _fetchOperationForSportsEventsWithIDs:v4];
    [v15 setQualityOfService:17];
    [v15 setRelativePriority:-1];
    v16 = +[FCCachePolicy ignoreCacheCachePolicy];
    [v15 setCachePolicy:v16];

    [v15 start];
  }
}

- (void)_fetchSportsEventForSportsEventID:(id)d cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  policyCopy = policy;
  handlerCopy = handler;
  if (!dCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventID != nil"];
      *buf = 136315906;
      v19 = "[FCSportsEventController _fetchSportsEventForSportsEventID:cachePolicy:qualityOfService:completionHandler:]";
      v20 = 2080;
      v21 = "FCSportsEventController.m";
      v22 = 1024;
      v23 = 114;
      v24 = 2114;
      v25 = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!handlerCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_6;
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_6;
  }

  v17 = dCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__FCSportsEventController__fetchSportsEventForSportsEventID_cachePolicy_qualityOfService_completionHandler___block_invoke;
  v15[3] = &unk_1E7C379A0;
  v16 = handlerCopy;
  [(FCSportsEventController *)self _fetchSportsEventsForSportsEventIDs:v13 cachePolicy:policyCopy qualityOfService:service completionHandler:v15];

LABEL_6:
}

void __108__FCSportsEventController__fetchSportsEventForSportsEventID_cachePolicy_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_fetchSportsEventsForSportsEventIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  policyCopy = policy;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventIDs != nil"];
    *buf = 136315906;
    v45 = "[FCSportsEventController _fetchSportsEventsForSportsEventIDs:cachePolicy:qualityOfService:completionHandler:]";
    v46 = 2080;
    v47 = "FCSportsEventController.m";
    v48 = 1024;
    v49 = 136;
    v50 = 2114;
    v51 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (handlerCopy)
    {
LABEL_4:
      if (policyCopy)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2;
        v38[3] = &unk_1E7C44FB0;
        v38[4] = self;
        v39 = dsCopy;
        serviceCopy = service;
        v40 = policyCopy;
        v41 = handlerCopy;
        __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2(v38);
      }

      else
      {
        serviceCopy2 = service;
        v29 = handlerCopy;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        array = [MEMORY[0x1E695DF70] array];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v30 = dsCopy;
        v15 = dsCopy;
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v35;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v35 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v34 + 1) + 8 * i);
              fastCache = [(FCSportsEventController *)self fastCache];
              v22 = [fastCache objectForKey:v20];

              if (v22)
              {
                [dictionary setObject:v22 forKey:v20];
              }

              else
              {
                [array addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v17);
        }

        if ([array count])
        {
          v23 = [(FCSportsEventController *)self _fetchOperationForSportsEventsWithIDs:array];
          [v23 setQualityOfService:serviceCopy2];
          handlerCopy = v29;
          if (serviceCopy2 == 9)
          {
            v24 = -1;
          }

          else
          {
            v24 = serviceCopy2 == 33 || serviceCopy2 == 25;
          }

          dsCopy = v30;
          [v23 setRelativePriority:v24];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_5;
          v31[3] = &unk_1E7C3C498;
          v33 = v29;
          v32 = dictionary;
          [v23 setFetchCompletionHandler:v31];
          fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [fc_sharedConcurrentQueue addOperation:v23];
        }

        else
        {
          handlerCopy = v29;
          (v29)[2](v29, dictionary, 0);
          dsCopy = v30;
        }

        policyCopy = 0;
      }

      goto LABEL_29;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v45 = "[FCSportsEventController _fetchSportsEventsForSportsEventIDs:cachePolicy:qualityOfService:completionHandler:]";
    v46 = 2080;
    v47 = "FCSportsEventController.m";
    v48 = 1024;
    v49 = 137;
    v50 = 2114;
    v51 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_29:
}

void __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOperationForSportsEventsWithIDs:*(a1 + 40)];
  [v2 setQualityOfService:*(a1 + 64)];
  v3 = *(a1 + 64);
  v4 = v3 == 33 || v3 == 25;
  if (v3 == 9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  [v2 setRelativePriority:v5];
  [v2 setCachePolicy:*(a1 + 48)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3;
  v7[3] = &unk_1E7C40AE8;
  v8 = *(a1 + 56);
  [v2 setFetchCompletionHandler:v7];
  v6 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v6 addOperation:v2];
}

void __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = v5;
    v8[2](v8, 0, v7);
  }

  else
  {
    v6 = [a2 fc_dictionaryWithKeySelector:sel_identifier];
    (*(*(a1 + 32) + 16))();
  }
}

void __110__FCSportsEventController__fetchSportsEventsForSportsEventIDs_cachePolicy_qualityOfService_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v8 = *(a1 + 40);
    v7 = v5;
    v8[2](v8, 0, v7);
  }

  else
  {
    v6 = [a2 fc_dictionaryWithKeySelector:sel_identifier];
    if (v6)
    {
      [*(a1 + 32) addEntriesFromDictionary:v6];
    }

    [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_19_1];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_cachedSportsEventForSportsEventID:(id)d fastCacheOnly:(BOOL)only
{
  onlyCopy = only;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v14 = dCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v9 = [(FCSportsEventController *)self _cachedSportsEventsForSportsEventID:v8 fastCacheOnly:onlyCopy];
    allValues = [v9 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventID != nil"];
      *buf = 136315906;
      v16 = "[FCSportsEventController _cachedSportsEventForSportsEventID:fastCacheOnly:]";
      v17 = 2080;
      v18 = "FCSportsEventController.m";
      v19 = 1024;
      v20 = 211;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)_cachedSportsEventsForSportsEventID:(id)d fastCacheOnly:(BOOL)only
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sportsEventIDs != nil"];
    *buf = 136315906;
    v30 = "[FCSportsEventController _cachedSportsEventsForSportsEventID:fastCacheOnly:]";
    v31 = 2080;
    v32 = "FCSportsEventController.m";
    v33 = 1024;
    v34 = 218;
    v35 = 2114;
    v36 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = dCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        fastCache = [(FCSportsEventController *)self fastCache];
        v15 = [fastCache objectForKey:v13];

        if (v15)
        {
          [dictionary setObject:v15 forKey:v13];
        }

        else
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if ([array count] && !only)
  {
    sportsEventRecordSource = [(FCSportsEventController *)self sportsEventRecordSource];
    v17 = [sportsEventRecordSource cachedRecordsWithIDs:array];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke;
    v22[3] = &unk_1E7C44FF8;
    v22[4] = self;
    v23 = dictionary;
    [v17 enumerateRecordsAndInterestTokensWithBlock:v22];
  }

  allValues = [dictionary allValues];
  [(FCSportsEventController *)self _refreshSportsEventsBasedOnAgeForSportsEventIDs:allValues];

  return dictionary;
}

void __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) tagController];
  v8 = [v5 eventCompetitorTagIDs];
  v9 = [v7 slowCachedTagsForIDs:v8];

  v10 = [v5 eventCompetitorTagIDs];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_2;
  v40[3] = &unk_1E7C3A4A0;
  v11 = v9;
  v12 = *(a1 + 32);
  v41 = v11;
  v42 = v12;
  v13 = v5;
  v43 = v13;
  v14 = [v10 fc_arrayByTransformingWithBlock:v40];

  v15 = [v14 count];
  v16 = [v13 eventCompetitorTagIDs];
  v17 = [v16 count];

  if (v15 != v17)
  {
    v18 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v13 base];
      v33 = [v32 identifier];
      v34 = [v13 eventCompetitorTagIDs];
      v35 = [v34 count];
      v36 = [v14 count];
      *buf = 138544130;
      v45 = v31;
      v46 = 2114;
      v47 = v33;
      v48 = 2050;
      v49 = v35;
      v50 = 2050;
      v51 = v36;
      _os_log_error_impl(&dword_1B63EF000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch all competitor tags for sports event with id=%{public}@. Expected %{public}lu tags, but got %{public}lu", buf, 0x2Au);
    }
  }

  v19 = [*(a1 + 32) tagController];
  v20 = [v13 eventLeagueTagID];
  v21 = [v19 slowCachedTagForID:v20];
  v22 = [v21 asSports];

  if (v22)
  {
    v23 = v22;
    v24 = [FCSportsEvent alloc];
    v25 = [*(a1 + 32) context];
    v26 = [v25 assetManager];
    v27 = [(FCSportsEvent *)v24 initWithSportsEventRecord:v13 eventCompetitorTags:v14 eventLeagueTag:v23 assetManager:v26 interestToken:v6];

    v28 = *(a1 + 40);
    v29 = [(FCSportsEvent *)v27 identifier];
    [v28 setObject:v27 forKey:v29];
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_23;
    v38[3] = &unk_1E7C36C58;
    v38[4] = *(a1 + 32);
    v39 = v13;
    __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_23(v38);
  }
}

id __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 isSports];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_3;
    v8[3] = &unk_1E7C3A478;
    v8[4] = *(a1 + 40);
    v9 = v3;
    v10 = *(a1 + 48);
    v6 = __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_3(v8);
  }

  return v6;
}

uint64_t __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) base];
    v9 = [v8 identifier];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "%{public}@ encountered non-sports tag with id %{public}@ as a competitor tag for sports event with id %{public}@. Ignoring invalid competitor tag.", &v10, 0x20u);
  }

  return 0;
}

void __77__FCSportsEventController__cachedSportsEventsForSportsEventID_fastCacheOnly___block_invoke_23(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [*(a1 + 40) base];
    v7 = [v6 identifier];
    v8 = [*(a1 + 40) eventLeagueTagID];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_ERROR, "%{public}@ failed to get league tag for sports event record, sports event discarded; sportsEventRecord identifier=%{public}@, leagueTag identifier=%{public}@", &v9, 0x20u);
  }
}

- (void)_saveSportsEventsToCache:(id)cache
{
  cacheCopy = cache;
  fastCache = [(FCSportsEventController *)self fastCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FCSportsEventController__saveSportsEventsToCache___block_invoke;
  v7[3] = &unk_1E7C45020;
  v8 = fastCache;
  v6 = fastCache;
  [cacheCopy enumerateObjectsUsingBlock:v7];
}

void __52__FCSportsEventController__saveSportsEventsToCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];
}

- (id)jsonEncodableObject
{
  sportsEventRecordSource = [(FCSportsEventController *)self sportsEventRecordSource];
  jsonEncodableObject = [sportsEventRecordSource jsonEncodableObject];

  return jsonEncodableObject;
}

- (id)_fetchOperationForSportsEventsWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = [FCSportsEventsFetchOperation alloc];
  context = [(FCSportsEventController *)self context];
  tagController = [(FCSportsEventController *)self tagController];
  v8 = [(FCSportsEventsFetchOperation *)v5 initWithContext:context tagController:tagController sportsEventIDs:dsCopy delegate:self];

  return v8;
}

@end