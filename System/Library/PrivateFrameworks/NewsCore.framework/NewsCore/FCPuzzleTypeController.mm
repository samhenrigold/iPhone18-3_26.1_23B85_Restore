@interface FCPuzzleTypeController
- (FCPuzzleTypeController)init;
- (FCPuzzleTypeController)initWithContentDatabase:(id)database context:(id)context assetManager:(id)manager puzzleTypeRecordSource:(id)source configurationManager:(id)configurationManager;
- (id)_cachedPuzzleTypeForPuzzleTypeID:(id)d fastCacheOnly:(BOOL)only;
- (id)_cachedPuzzleTypesForPuzzleTypeIDs:(id)ds fastCacheOnly:(BOOL)only;
- (id)_fetchOperationForPuzzleTypeWithIDs:(id)ds;
- (id)jsonEncodableObject;
- (id)thumbnailSmallURLWithJSON:(id)n publishDate:(id)date difficulty:(int64_t)difficulty;
- (void)_fetchPuzzleTypeForPuzzleTypeID:(id)d cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)_fetchPuzzleTypesForPuzzleTypeIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)_refreshPuzzleTypesBasedOnAgeForPuzzleTypes:(id)types;
- (void)_savePuzzleTypesToCache:(id)cache;
- (void)fetchThumbnailJSONForPuzzleType:(id)type completionHandler:(id)handler;
- (void)fetchThumbnailUrlForPuzzle:(id)puzzle completionHandler:(id)handler;
@end

@implementation FCPuzzleTypeController

- (FCPuzzleTypeController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPuzzleTypeController init]";
    v10 = 2080;
    v11 = "FCPuzzleTypeController.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPuzzleTypeController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleTypeController)initWithContentDatabase:(id)database context:(id)context assetManager:(id)manager puzzleTypeRecordSource:(id)source configurationManager:(id)configurationManager
{
  v33 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  contextCopy = context;
  managerCopy = manager;
  sourceCopy = source;
  configurationManagerCopy = configurationManager;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager != nil"];
    *buf = 136315906;
    v26 = "[FCPuzzleTypeController initWithContentDatabase:context:assetManager:puzzleTypeRecordSource:configurationManager:]";
    v27 = 2080;
    v28 = "FCPuzzleTypeController.m";
    v29 = 1024;
    v30 = 54;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (sourceCopy)
    {
      goto LABEL_6;
    }
  }

  else if (sourceCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeRecordSource != nil"];
    *buf = 136315906;
    v26 = "[FCPuzzleTypeController initWithContentDatabase:context:assetManager:puzzleTypeRecordSource:configurationManager:]";
    v27 = 2080;
    v28 = "FCPuzzleTypeController.m";
    v29 = 1024;
    v30 = 55;
    v31 = 2114;
    v32 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v24.receiver = self;
  v24.super_class = FCPuzzleTypeController;
  v17 = [(FCPuzzleTypeController *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, manager);
    objc_storeStrong(&v18->_context, context);
    objc_storeStrong(&v18->_puzzleTypeRecordSource, source);
    objc_storeStrong(&v18->_configurationManager, configurationManager);
    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fastCache = v18->_fastCache;
    v18->_fastCache = v19;

    [(NSCache *)v18->_fastCache setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  return v18;
}

- (void)_fetchPuzzleTypeForPuzzleTypeID:(id)d cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  policyCopy = policy;
  queueCopy = queue;
  handlerCopy = handler;
  if (dCopy)
  {
    v23 = dCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __119__FCPuzzleTypeController__fetchPuzzleTypeForPuzzleTypeID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke;
    v21[3] = &unk_1E7C379A0;
    v17 = &v22;
    v22 = handlerCopy;
    [(FCPuzzleTypeController *)self _fetchPuzzleTypesForPuzzleTypeIDs:v16 cachePolicy:policyCopy qualityOfService:service callbackQueue:queueCopy completionHandler:v21];

LABEL_6:
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeID != nil"];
    *buf = 136315906;
    v25 = "[FCPuzzleTypeController _fetchPuzzleTypeForPuzzleTypeID:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v26 = 2080;
    v27 = "FCPuzzleTypeController.m";
    v28 = 1024;
    v29 = 111;
    v30 = 2114;
    v31 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (handlerCopy)
  {
LABEL_5:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__FCPuzzleTypeController__fetchPuzzleTypeForPuzzleTypeID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
    block[3] = &unk_1E7C379C8;
    v17 = &v20;
    v20 = handlerCopy;
    dispatch_async(queueCopy, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __119__FCPuzzleTypeController__fetchPuzzleTypeForPuzzleTypeID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_fetchPuzzleTypesForPuzzleTypeIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  v71 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  policyCopy = policy;
  queueCopy3 = queue;
  handlerCopy = handler;
  if (dsCopy || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (queueCopy3)
    {
      goto LABEL_4;
    }

LABEL_26:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
      *buf = 136315906;
      v64 = "[FCPuzzleTypeController _fetchPuzzleTypesForPuzzleTypeIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
      v65 = 2080;
      v66 = "FCPuzzleTypeController.m";
      v67 = 1024;
      v68 = 136;
      v69 = 2114;
      v70 = v31;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (handlerCopy)
      {
        goto LABEL_28;
      }
    }

    else if (handlerCopy)
    {
LABEL_28:
      v57 = MEMORY[0x1E69E9820];
      v58 = 3221225472;
      v59 = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
      v60 = &unk_1E7C379C8;
      v61 = handlerCopy;
      (*(v61 + 2))(v61, 0, 0);
      v16 = v61;
      goto LABEL_29;
    }

LABEL_31:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
      *buf = 136315906;
      v64 = "[FCPuzzleTypeController _fetchPuzzleTypesForPuzzleTypeIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
      v65 = 2080;
      v66 = "FCPuzzleTypeController.m";
      v67 = 1024;
      v68 = 137;
      v69 = 2114;
      v70 = v32;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_37;
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeIDs != nil"];
  *buf = 136315906;
  v64 = "[FCPuzzleTypeController _fetchPuzzleTypesForPuzzleTypeIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
  v65 = 2080;
  v66 = "FCPuzzleTypeController.m";
  v67 = 1024;
  v68 = 135;
  v69 = 2114;
  v70 = v30;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  if (!queueCopy3)
  {
    goto LABEL_26;
  }

LABEL_4:
  if (!handlerCopy)
  {
    goto LABEL_31;
  }

  if (![dsCopy count])
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    v54[3] = &unk_1E7C37778;
    v56 = handlerCopy;
    v55 = queueCopy3;
    __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3(v54);

    v16 = v56;
    goto LABEL_29;
  }

  if (policyCopy)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5;
    v48[3] = &unk_1E7C448D8;
    v48[4] = self;
    v49 = dsCopy;
    serviceCopy = service;
    v50 = policyCopy;
    v51 = queueCopy3;
    v52 = handlerCopy;
    __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5(v48);

    v16 = v49;
LABEL_29:

    goto LABEL_37;
  }

  serviceCopy2 = service;
  v35 = handlerCopy;
  queue = queueCopy3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = dsCopy;
  v19 = dsCopy;
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        fastCache = [(FCPuzzleTypeController *)self fastCache];
        v26 = [fastCache objectForKey:v24];

        if (v26)
        {
          [dictionary setObject:v26 forKey:v24];
        }

        else
        {
          [array addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v21);
  }

  if ([array count])
  {
    v27 = [(FCPuzzleTypeController *)self _fetchOperationForPuzzleTypeWithIDs:array];
    [v27 setQualityOfService:serviceCopy2];
    handlerCopy = v35;
    queueCopy3 = queue;
    if (serviceCopy2 == 9)
    {
      v28 = -1;
    }

    else
    {
      v28 = serviceCopy2 == 33 || serviceCopy2 == 25;
    }

    policyCopy = 0;
    dsCopy = v37;
    [v27 setRelativePriority:v28];
    [v27 setFetchCompletionQueue:queue];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_8;
    v41[3] = &unk_1E7C37B98;
    v42 = dictionary;
    v43 = v35;
    v29 = dictionary;
    [v27 setFetchCompletionBlock:v41];
    fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [fc_sharedConcurrentQueue addOperation:v27];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_10;
    block[3] = &unk_1E7C37BC0;
    v39 = dictionary;
    handlerCopy = v35;
    v40 = v35;
    v27 = dictionary;
    queueCopy3 = queue;
    dispatch_async(queue, block);

    v29 = v39;
    policyCopy = 0;
    dsCopy = v37;
  }

LABEL_37:
}

uint64_t __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchOperationForPuzzleTypeWithIDs:*(a1 + 40)];
  [v2 setQualityOfService:*(a1 + 72)];
  v3 = *(a1 + 72);
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
  [v2 setCachePolicy:{objc_msgSend(*(a1 + 48), "cachePolicy")}];
  [*(a1 + 48) maximumCachedAge];
  [v2 setMaximumCachedAge:?];
  [v2 setFetchCompletionQueue:*(a1 + 56)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_6;
  v7[3] = &unk_1E7C37A38;
  v8 = *(a1 + 64);
  [v2 setFetchCompletionBlock:v7];
  v6 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v6 addOperation:v2];
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v4 fetchedObject];
  v8 = [v3 dictionaryWithDictionary:v5];

  [v8 fc_removeObjectsForKeysPassingTest:&__block_literal_global_22_0];
  v6 = *(a1 + 32);
  v7 = [v4 error];

  (*(v6 + 16))(v6, v8, v7);
}

void __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_8(uint64_t a1, void *a2)
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

  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_28_1];
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

uint64_t __121__FCPuzzleTypeController__fetchPuzzleTypesForPuzzleTypeIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_30_3];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fetchThumbnailUrlForPuzzle:(id)puzzle completionHandler:(id)handler
{
  puzzleCopy = puzzle;
  handlerCopy = handler;
  v8 = MEMORY[0x1E696AEC0];
  puzzleType = [puzzleCopy puzzleType];
  identifier = [puzzleType identifier];
  v11 = [v8 stringWithFormat:@"thumbnail-images-mapping-json-%@", identifier];

  fastCache = [(FCPuzzleTypeController *)self fastCache];
  v13 = [fastCache objectForKey:v11];

  if (v13)
  {
    publishDate = [puzzleCopy publishDate];
    v15 = -[FCPuzzleTypeController thumbnailSmallURLWithJSON:publishDate:difficulty:](self, "thumbnailSmallURLWithJSON:publishDate:difficulty:", v13, publishDate, [puzzleCopy difficulty]);

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v15, 0);
    }
  }

  else
  {
    puzzleType2 = [puzzleCopy puzzleType];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__FCPuzzleTypeController_fetchThumbnailUrlForPuzzle_completionHandler___block_invoke;
    v17[3] = &unk_1E7C378E8;
    v17[4] = self;
    v18 = puzzleCopy;
    v19 = handlerCopy;
    [(FCPuzzleTypeController *)self fetchThumbnailJSONForPuzzleType:puzzleType2 completionHandler:v17];
  }
}

void __71__FCPuzzleTypeController_fetchThumbnailUrlForPuzzle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 publishDate];
  v8 = [v3 thumbnailSmallURLWithJSON:v5 publishDate:v6 difficulty:{objc_msgSend(*(a1 + 40), "difficulty")}];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)fetchThumbnailJSONForPuzzleType:(id)type completionHandler:(id)handler
{
  v32[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  imageResourceID = [typeCopy imageResourceID];
  if (imageResourceID)
  {
    configurationManager = [(FCPuzzleTypeController *)self configurationManager];
    configuration = [configurationManager configuration];

    puzzlesConfig = [configuration puzzlesConfig];
    v12 = MEMORY[0x1E696AEC0];
    identifier = [typeCopy identifier];
    v14 = [v12 stringWithFormat:@"thumbnail-images-mapping-json-%@", identifier];

    fastCache = [(FCPuzzleTypeController *)self fastCache];
    v16 = [fastCache objectForKey:v14];

    if (v16)
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v16, 0);
      }
    }

    else
    {
      v17 = [FCResourcesFetchOperation alloc];
      context = [(FCPuzzleTypeController *)self context];
      v32[0] = imageResourceID;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      v19 = typeCopy;
      v20 = handlerCopy;
      v21 = imageResourceID;
      v22 = configuration;
      v23 = v14;
      v25 = v24 = puzzlesConfig;
      v26 = [(FCResourcesFetchOperation *)v17 initWithContext:context resourceIDs:v25 downloadAssets:1];

      puzzlesConfig = v24;
      v14 = v23;
      configuration = v22;
      imageResourceID = v21;
      handlerCopy = v20;
      typeCopy = v19;
      v16 = 0;

      [(FCFetchOperation *)v26 setCachePolicy:4];
      [puzzlesConfig puzzleTypeThumbnailsCacheLifetime];
      [(FCFetchOperation *)v26 setMaximumCachedAge:?];
      [(FCOperation *)v26 setQualityOfService:25];
      [(FCOperation *)v26 setRelativePriority:0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_2;
      v27[3] = &unk_1E7C44900;
      v29 = handlerCopy;
      v27[4] = self;
      v28 = v14;
      [(FCFetchOperation *)v26 setFetchCompletionBlock:v27];
      [(FCOperation *)v26 start];
    }
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke;
    v30[3] = &unk_1E7C379C8;
    v31 = handlerCopy;
    __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke(v30);
    configuration = v31;
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Image resourceID not available for the puzzle type.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_3;
    v28[3] = &unk_1E7C37778;
    v30 = *(a1 + 48);
    v29 = v3;
    __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_3(v28);

    v5 = v30;
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    v6 = [v3 fetchedObject];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 firstObject];
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v5 = v10;

    if (v5)
    {
      v11 = [v5 fileURL];
      if (v11)
      {
        v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
        if (v12)
        {
          v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:0];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 objectForKeyedSubscript:@"smallImages"];
            if (v15)
            {
              v16 = [*(a1 + 32) fastCache];
              [v16 setObject:v15 forKey:*(a1 + 40)];

              v17 = *(a1 + 48);
              if (v17)
              {
                (*(v17 + 16))(v17, v15, 0);
              }
            }

            else
            {
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_8;
              v18[3] = &unk_1E7C379C8;
              v19 = *(a1 + 48);
              __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_8(v18);
            }
          }

          else
          {
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_7;
            v20[3] = &unk_1E7C379C8;
            v21 = *(a1 + 48);
            __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_7(v20);
            v15 = v21;
          }
        }

        else
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_6;
          v22[3] = &unk_1E7C379C8;
          v23 = *(a1 + 48);
          __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_6(v22);
          v14 = v23;
        }
      }

      else
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_5;
        v24[3] = &unk_1E7C379C8;
        v25 = *(a1 + 48);
        __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_5(v24);
        v12 = v25;
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_4;
      v26[3] = &unk_1E7C379C8;
      v27 = *(a1 + 48);
      __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_4(v26);
      v11 = v27;
    }
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Resource object not found in fetched object.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_5(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"File URL not available in fetched resource.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_6(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Data not be created with contents of fetched resource's file path.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_7(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Images mapping json dictionary not available from contents of fetched resource's file path.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }
}

void __76__FCPuzzleTypeController_fetchThumbnailJSONForPuzzleType_completionHandler___block_invoke_8(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Small Images mapping json dictionary not available from the contents of fetched resource's file path.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:8 userInfo:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }
}

- (id)thumbnailSmallURLWithJSON:(id)n publishDate:(id)date difficulty:(int64_t)difficulty
{
  nCopy = n;
  dateCopy = date;
  v9 = objc_alloc(MEMORY[0x1E695DEE8]);
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v11 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"EST"];
  [v10 setTimeZone:v11];

  v12 = [v10 component:512 fromDate:dateCopy];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"s%ld", v12];
  difficulty = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", difficulty];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__68;
  v27 = __Block_byref_object_dispose__68;
  v28 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__FCPuzzleTypeController_thumbnailSmallURLWithJSON_publishDate_difficulty___block_invoke;
  v19[3] = &unk_1E7C3F7C0;
  v15 = v13;
  v20 = v15;
  v22 = &v23;
  v16 = difficulty;
  v21 = v16;
  [nCopy enumerateKeysAndObjectsUsingBlock:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

uint64_t __75__FCPuzzleTypeController_thumbnailSmallURLWithJSON_publishDate_difficulty___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v7 = [a2 isEqualToString:a1[4]];
  v8 = v12;
  if (v7)
  {
    v9 = [v12 objectForKeyedSubscript:a1[5]];
    v10 = v9;
    if (!v9)
    {
      v10 = [v12 objectForKeyedSubscript:@"defaultUrl"];
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v10);
    if (!v9)
    {
    }

    *a4 = 1;
    v8 = v12;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

- (id)_cachedPuzzleTypeForPuzzleTypeID:(id)d fastCacheOnly:(BOOL)only
{
  onlyCopy = only;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v14 = dCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v9 = [(FCPuzzleTypeController *)self _cachedPuzzleTypesForPuzzleTypeIDs:v8 fastCacheOnly:onlyCopy];
    allValues = [v9 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeID != nil"];
      *buf = 136315906;
      v16 = "[FCPuzzleTypeController _cachedPuzzleTypeForPuzzleTypeID:fastCacheOnly:]";
      v17 = 2080;
      v18 = "FCPuzzleTypeController.m";
      v19 = 1024;
      v20 = 391;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)_cachedPuzzleTypesForPuzzleTypeIDs:(id)ds fastCacheOnly:(BOOL)only
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeIDs != nil"];
    *buf = 136315906;
    v30 = "[FCPuzzleTypeController _cachedPuzzleTypesForPuzzleTypeIDs:fastCacheOnly:]";
    v31 = 2080;
    v32 = "FCPuzzleTypeController.m";
    v33 = 1024;
    v34 = 398;
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
  v8 = dsCopy;
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
        fastCache = [(FCPuzzleTypeController *)self fastCache];
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
    puzzleTypeRecordSource = [(FCPuzzleTypeController *)self puzzleTypeRecordSource];
    v17 = [puzzleTypeRecordSource cachedRecordsWithIDs:array];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__FCPuzzleTypeController__cachedPuzzleTypesForPuzzleTypeIDs_fastCacheOnly___block_invoke;
    v22[3] = &unk_1E7C44928;
    v22[4] = self;
    v23 = dictionary;
    [v17 enumerateRecordsAndInterestTokensWithBlock:v22];
  }

  allValues = [dictionary allValues];
  [(FCPuzzleTypeController *)self _refreshPuzzleTypesBasedOnAgeForPuzzleTypes:allValues];

  return dictionary;
}

void __75__FCPuzzleTypeController__cachedPuzzleTypesForPuzzleTypeIDs_fastCacheOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [FCPuzzleType alloc];
  v8 = [*(a1 + 32) assetManager];
  v9 = [*(a1 + 32) context];
  v12 = [(FCPuzzleType *)v7 initWithPuzzleTypeRecord:v6 assetManager:v8 context:v9 interestToken:v5];

  v10 = *(a1 + 40);
  v11 = [(FCPuzzleType *)v12 identifier];
  [v10 setObject:v12 forKey:v11];
}

- (void)_refreshPuzzleTypesBasedOnAgeForPuzzleTypes:(id)types
{
  selfCopy = self;
  v23 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = typesCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
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

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v15 = [(FCPuzzleTypeController *)selfCopy _fetchOperationForPuzzleTypeWithIDs:v4];
    [v15 setQualityOfService:17];
    [v15 setRelativePriority:-1];
    [v15 setCachePolicy:1];
    [v15 start];
  }
}

- (void)_savePuzzleTypesToCache:(id)cache
{
  cacheCopy = cache;
  fastCache = [(FCPuzzleTypeController *)self fastCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__FCPuzzleTypeController__savePuzzleTypesToCache___block_invoke;
  v7[3] = &unk_1E7C44950;
  v8 = fastCache;
  v6 = fastCache;
  [cacheCopy enumerateObjectsUsingBlock:v7];
}

void __50__FCPuzzleTypeController__savePuzzleTypesToCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];
}

- (id)jsonEncodableObject
{
  puzzleTypeRecordSource = [(FCPuzzleTypeController *)self puzzleTypeRecordSource];
  jsonEncodableObject = [puzzleTypeRecordSource jsonEncodableObject];

  return jsonEncodableObject;
}

- (id)_fetchOperationForPuzzleTypeWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = [FCPuzzleTypeFetchOperation alloc];
  puzzleTypeRecordSource = [(FCPuzzleTypeController *)self puzzleTypeRecordSource];
  assetManager = [(FCPuzzleTypeController *)self assetManager];
  context = [(FCPuzzleTypeController *)self context];
  v9 = [(FCPuzzleTypeFetchOperation *)v5 initWithPuzzleTypeIDs:dsCopy puzzleTypeRecordSource:puzzleTypeRecordSource assetManager:assetManager context:context delegate:self];

  return v9;
}

@end