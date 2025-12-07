@interface FCPuzzleController
- (FCPuzzleController)init;
- (FCPuzzleController)initWithContentDatabase:(id)database assetManager:(id)manager puzzleTypeController:(id)controller puzzleRecordSource:(id)source configurationManager:(id)configurationManager;
- (id)_cachedPuzzleForPuzzleID:(id)d fastCacheOnly:(BOOL)only;
- (id)_cachedPuzzlesForPuzzleIDs:(id)ds fastCacheOnly:(BOOL)only;
- (id)_fetchOperationForPuzzleWithIDs:(id)ds;
- (id)createPuzzleForPuzzleType:(id)type identifier:(id)identifier title:(id)title subtitle:(id)subtitle puzzleDescription:(id)description dataResourceID:(id)d authors:(id)authors behaviorFlags:(int64_t)self0 publishDate:(id)self1 isPaid:(BOOL)self2 difficulty:(int64_t)self3 difficultyDescription:(id)self4 relatedPuzzleIDs:(id)self5 thumbnailLargeURL:(id)self6 loadDate:(id)self7 teaserClue:(id)self8 teaserAnswer:(id)self9 teaserInfo:(id)info teaserDirection:(id)direction teaserNumber:(id)number language:(id)language blockedStorefrontIDs:(id)iDs allowedStorefrontIDs:(id)storefrontIDs minimumNewsVersion:(id)version isDeprecated:(BOOL)deprecated isDraft:(BOOL)draft lastModifiedDate:(id)modifiedDate;
- (id)jsonEncodableObject;
- (void)_fetchPuzzleForPuzzleID:(id)d cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)_fetchPuzzlesForPuzzleIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler;
- (void)_refreshPuzzlesBasedOnAgeForPuzzles:(id)puzzles;
- (void)_savePuzzlesToCache:(id)cache;
- (void)savePuzzleToCache:(id)cache;
@end

@implementation FCPuzzleController

- (FCPuzzleController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPuzzleController init]";
    v10 = 2080;
    v11 = "FCPuzzleController.m";
    v12 = 1024;
    v13 = 46;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPuzzleController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleController)initWithContentDatabase:(id)database assetManager:(id)manager puzzleTypeController:(id)controller puzzleRecordSource:(id)source configurationManager:(id)configurationManager
{
  v33 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  managerCopy = manager;
  controllerCopy = controller;
  sourceCopy = source;
  configurationManagerCopy = configurationManager;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager != nil"];
    *buf = 136315906;
    v26 = "[FCPuzzleController initWithContentDatabase:assetManager:puzzleTypeController:puzzleRecordSource:configurationManager:]";
    v27 = 2080;
    v28 = "FCPuzzleController.m";
    v29 = 1024;
    v30 = 55;
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
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleRecordSource != nil"];
    *buf = 136315906;
    v26 = "[FCPuzzleController initWithContentDatabase:assetManager:puzzleTypeController:puzzleRecordSource:configurationManager:]";
    v27 = 2080;
    v28 = "FCPuzzleController.m";
    v29 = 1024;
    v30 = 56;
    v31 = 2114;
    v32 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v24.receiver = self;
  v24.super_class = FCPuzzleController;
  v17 = [(FCPuzzleController *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, manager);
    objc_storeStrong(&v18->_puzzleRecordSource, source);
    objc_storeStrong(&v18->_puzzleTypeController, controller);
    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    fastCache = v18->_fastCache;
    v18->_fastCache = v19;

    objc_storeStrong(&v18->_configurationManager, configurationManager);
    [(NSCache *)v18->_fastCache setEvictsObjectsWhenApplicationEntersBackground:0];
  }

  return v18;
}

- (id)createPuzzleForPuzzleType:(id)type identifier:(id)identifier title:(id)title subtitle:(id)subtitle puzzleDescription:(id)description dataResourceID:(id)d authors:(id)authors behaviorFlags:(int64_t)self0 publishDate:(id)self1 isPaid:(BOOL)self2 difficulty:(int64_t)self3 difficultyDescription:(id)self4 relatedPuzzleIDs:(id)self5 thumbnailLargeURL:(id)self6 loadDate:(id)self7 teaserClue:(id)self8 teaserAnswer:(id)self9 teaserInfo:(id)info teaserDirection:(id)direction teaserNumber:(id)number language:(id)language blockedStorefrontIDs:(id)iDs allowedStorefrontIDs:(id)storefrontIDs minimumNewsVersion:(id)version isDeprecated:(BOOL)deprecated isDraft:(BOOL)draft lastModifiedDate:(id)modifiedDate
{
  typeCopy = type;
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  descriptionCopy = description;
  dCopy = d;
  authorsCopy = authors;
  selfCopy = self;
  dateCopy = date;
  difficultyDescriptionCopy = difficultyDescription;
  dsCopy = ds;
  lCopy = l;
  loadDateCopy = loadDate;
  clueCopy = clue;
  answerCopy = answer;
  infoCopy = info;
  directionCopy = direction;
  numberCopy = number;
  languageCopy = language;
  iDsCopy = iDs;
  storefrontIDsCopy = storefrontIDs;
  versionCopy = version;
  modifiedDateCopy = modifiedDate;
  v74 = identifierCopy;
  v39 = [(FCPuzzleController *)selfCopy fastCachedPuzzleForID:identifierCopy];
  v40 = v39;
  if (v39 && ([v39 lastModifiedDate], v41 = objc_claimAutoreleasedReturnValue(), v41, modifiedDateCopy) && v41 && (objc_msgSend(v40, "lastModifiedDate"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(modifiedDateCopy, "fc_isLaterThan:withPrecision:", v42, 2), v42, (v43 & 1) == 0))
  {
    v51 = v40;

    v50 = titleCopy;
    v44 = typeCopy;
  }

  else
  {
    v44 = typeCopy;
    thumbnailDirectory = [typeCopy thumbnailDirectory];
    v46 = resolvedPuzzleTypeDifficultyWithPuzzleType(typeCopy, difficulty);
    v47 = [thumbnailDirectory smallThumbnailForDate:dateCopy difficulty:v46];

    assetManager = [(FCPuzzleController *)selfCopy assetManager];
    v49 = [assetManager assetHandleForCKAssetURLString:lCopy lifetimeHint:0];

    BYTE3(v54) = draft;
    BYTE2(v54) = deprecated;
    BYTE1(v54) = (flags & 2) != 0;
    LOBYTE(v54) = flags & 1;
    LOBYTE(v53) = paid;
    v50 = titleCopy;
    v51 = [[FCPuzzle alloc] initWithIdentifier:v74 title:titleCopy subtitle:subtitleCopy puzzleDescription:descriptionCopy puzzleType:typeCopy dataResourceID:dCopy authors:authorsCopy publishDate:dateCopy isPaid:v53 difficulty:difficulty difficultyDescription:difficultyDescriptionCopy relatedPuzzleIDs:dsCopy thumbnailSmallImageAssetHandle:v47 thumbnailLargeImageAssetHandle:v49 loadDate:loadDateCopy teaserClue:clueCopy teaserAnswer:answerCopy teaserInfo:infoCopy teaserDirection:directionCopy teaserNumber:numberCopy language:languageCopy blockedStorefrontIDs:iDsCopy allowedStorefrontIDs:storefrontIDsCopy minimumNewsVersion:[FCRestrictions integerRepresentationOfShortVersionString:?]isDeprecated:v54 isDraft:modifiedDateCopy lastModifiedDate:?];
    if (v51)
    {
      [(FCPuzzleController *)selfCopy savePuzzleToCache:v51];
    }
  }

  return v51;
}

- (void)savePuzzleToCache:(id)cache
{
  cacheCopy = cache;
  fastCache = [(FCPuzzleController *)self fastCache];
  identifier = [cacheCopy identifier];
  [fastCache setObject:cacheCopy forKey:identifier];
}

- (void)_fetchPuzzleForPuzzleID:(id)d cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
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
    v21[2] = __107__FCPuzzleController__fetchPuzzleForPuzzleID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke;
    v21[3] = &unk_1E7C379A0;
    v17 = &v22;
    v22 = handlerCopy;
    [(FCPuzzleController *)self _fetchPuzzlesForPuzzleIDs:v16 cachePolicy:policyCopy qualityOfService:service callbackQueue:queueCopy completionHandler:v21];

LABEL_6:
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
    *buf = 136315906;
    v25 = "[FCPuzzleController _fetchPuzzleForPuzzleID:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v26 = 2080;
    v27 = "FCPuzzleController.m";
    v28 = 1024;
    v29 = 206;
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
    block[2] = __107__FCPuzzleController__fetchPuzzleForPuzzleID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
    block[3] = &unk_1E7C379C8;
    v17 = &v20;
    v20 = handlerCopy;
    dispatch_async(queueCopy, block);
    goto LABEL_6;
  }

LABEL_7:
}

void __107__FCPuzzleController__fetchPuzzleForPuzzleID_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_fetchPuzzlesForPuzzleIDs:(id)ds cachePolicy:(id)policy qualityOfService:(int64_t)service callbackQueue:(id)queue completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  policyCopy = policy;
  queueCopy3 = queue;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleIDs != nil"];
    *buf = 136315906;
    v52 = "[FCPuzzleController _fetchPuzzlesForPuzzleIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v53 = 2080;
    v54 = "FCPuzzleController.m";
    v55 = 1024;
    v56 = 230;
    v57 = 2114;
    v58 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (queueCopy3)
    {
LABEL_4:
      if (handlerCopy)
      {
        if ([dsCopy count])
        {
          v35 = handlerCopy;
          queue = queueCopy3;
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          array = [MEMORY[0x1E695DF70] array];
          if (policyCopy)
          {
            [MEMORY[0x1E695DF70] arrayWithArray:dsCopy];
            array = v18 = array;
          }

          else
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v34 = dsCopy;
            v18 = dsCopy;
            v19 = [v18 countByEnumeratingWithState:&v43 objects:v50 count:16];
            if (v19)
            {
              v20 = v19;
              serviceCopy = service;
              v21 = *v44;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v44 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v43 + 1) + 8 * i);
                  fastCache = [(FCPuzzleController *)self fastCache];
                  v25 = [fastCache objectForKey:v23];

                  if (v25)
                  {
                    [dictionary setObject:v25 forKey:v23];
                  }

                  else
                  {
                    [array addObject:v23];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v43 objects:v50 count:16];
              }

              while (v20);
              policyCopy = 0;
              dsCopy = v34;
              service = serviceCopy;
            }
          }

          if ([array count])
          {
            v26 = [(FCPuzzleController *)self _fetchOperationForPuzzleWithIDs:array];
            [v26 setQualityOfService:service];
            handlerCopy = v35;
            queueCopy3 = queue;
            if (service == 9)
            {
              v27 = -1;
            }

            else
            {
              v27 = service == 33 || service == 25;
            }

            [v26 setRelativePriority:v27];
            [v26 setCachePolicy:{objc_msgSend(policyCopy, "cachePolicy")}];
            [policyCopy maximumCachedAge];
            [v26 setMaximumCachedAge:?];
            [v26 setFetchCompletionQueue:queue];
            v40[0] = MEMORY[0x1E69E9820];
            v40[1] = 3221225472;
            v40[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_4;
            v40[3] = &unk_1E7C37B98;
            v41 = dictionary;
            v42 = v35;
            v28 = dictionary;
            [v26 setFetchCompletionBlock:v40];
            fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
            [fc_sharedConcurrentQueue addOperation:v26];
          }

          else
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_6;
            block[3] = &unk_1E7C37778;
            handlerCopy = v35;
            v38 = dictionary;
            v39 = v35;
            v26 = dictionary;
            queueCopy3 = queue;
            dispatch_async(queue, block);

            v28 = v39;
          }
        }

        else
        {
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
          v47[3] = &unk_1E7C37778;
          v49 = handlerCopy;
          v48 = queueCopy3;
          __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2(v47);
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }
  }

  else if (queueCopy3)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
    *buf = 136315906;
    v52 = "[FCPuzzleController _fetchPuzzlesForPuzzleIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
    v53 = 2080;
    v54 = "FCPuzzleController.m";
    v55 = 1024;
    v56 = 231;
    v57 = 2114;
    v58 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!handlerCopy)
  {
LABEL_34:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
      *buf = 136315906;
      v52 = "[FCPuzzleController _fetchPuzzlesForPuzzleIDs:cachePolicy:qualityOfService:callbackQueue:completionHandler:]";
      v53 = 2080;
      v54 = "FCPuzzleController.m";
      v55 = 1024;
      v56 = 232;
      v57 = 2114;
      v58 = v32;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

LABEL_36:
}

void __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
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

  [*(a1 + 32) fc_removeObjectsForKeysPassingTest:&__block_literal_global_26_0];
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

BOOL __109__FCPuzzleController__fetchPuzzlesForPuzzleIDs_cachePolicy_qualityOfService_callbackQueue_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 puzzleType];
  v4 = [FCTagController isTagAllowedForNewsVersion:v3];

  return !v4;
}

- (id)_cachedPuzzleForPuzzleID:(id)d fastCacheOnly:(BOOL)only
{
  onlyCopy = only;
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v14 = dCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v9 = [(FCPuzzleController *)self _cachedPuzzlesForPuzzleIDs:v8 fastCacheOnly:onlyCopy];
    allValues = [v9 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleID != nil"];
      *buf = 136315906;
      v16 = "[FCPuzzleController _cachedPuzzleForPuzzleID:fastCacheOnly:]";
      v17 = 2080;
      v18 = "FCPuzzleController.m";
      v19 = 1024;
      v20 = 303;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    firstObject = 0;
  }

  return firstObject;
}

- (id)_cachedPuzzlesForPuzzleIDs:(id)ds fastCacheOnly:(BOOL)only
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleIDs != nil"];
    *buf = 136315906;
    v36 = "[FCPuzzleController _cachedPuzzlesForPuzzleIDs:fastCacheOnly:]";
    v37 = 2080;
    v38 = "FCPuzzleController.m";
    v39 = 1024;
    v40 = 310;
    v41 = 2114;
    v42 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        fastCache = [(FCPuzzleController *)self fastCache];
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

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  if ([array count] && !only)
  {
    configurationManager = [(FCPuzzleController *)self configurationManager];
    configuration = [configurationManager configuration];

    puzzlesConfig = [configuration puzzlesConfig];
    difficultyDescriptions = [puzzlesConfig difficultyDescriptions];
    puzzleRecordSource = [(FCPuzzleController *)self puzzleRecordSource];
    v21 = [puzzleRecordSource cachedRecordsWithIDs:array];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __63__FCPuzzleController__cachedPuzzlesForPuzzleIDs_fastCacheOnly___block_invoke;
    v27[3] = &unk_1E7C3BAC0;
    v27[4] = self;
    v28 = difficultyDescriptions;
    v29 = dictionary;
    v22 = difficultyDescriptions;
    [v21 enumerateRecordsAndInterestTokensWithBlock:v27];
  }

  [dictionary fc_removeObjectsForKeysPassingTest:&__block_literal_global_32];
  allValues = [dictionary allValues];
  [(FCPuzzleController *)self _refreshPuzzlesBasedOnAgeForPuzzles:allValues];

  return dictionary;
}

void __63__FCPuzzleController__cachedPuzzlesForPuzzleIDs_fastCacheOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v7 = [v14 puzzleTypeID];
  v8 = [v6 cachedPuzzleTypeForID:v7];

  if (v8)
  {
    v9 = [FCPuzzle alloc];
    v10 = [*(a1 + 32) assetManager];
    v11 = [(FCPuzzle *)v9 initWithPuzzleRecord:v14 puzzleType:v8 assetManager:v10 interestToken:v5 difficultyDescriptions:*(a1 + 40)];

    v12 = *(a1 + 48);
    v13 = [(FCPuzzle *)v11 identifier];
    [v12 setObject:v11 forKey:v13];
  }
}

BOOL __63__FCPuzzleController__cachedPuzzlesForPuzzleIDs_fastCacheOnly___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 puzzleType];
  v4 = [FCTagController isTagAllowedForNewsVersion:v3];

  return !v4;
}

- (void)_refreshPuzzlesBasedOnAgeForPuzzles:(id)puzzles
{
  selfCopy = self;
  v23 = *MEMORY[0x1E69E9840];
  puzzlesCopy = puzzles;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = puzzlesCopy;
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
    v15 = [(FCPuzzleController *)selfCopy _fetchOperationForPuzzleWithIDs:v4];
    [v15 setQualityOfService:17];
    [v15 setRelativePriority:-1];
    [v15 setCachePolicy:1];
    [v15 start];
  }
}

- (void)_savePuzzlesToCache:(id)cache
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__FCPuzzleController__savePuzzlesToCache___block_invoke;
  v3[3] = &unk_1E7C3BAE8;
  v3[4] = self;
  [cache enumerateObjectsUsingBlock:v3];
}

- (id)jsonEncodableObject
{
  puzzleRecordSource = [(FCPuzzleController *)self puzzleRecordSource];
  jsonEncodableObject = [puzzleRecordSource jsonEncodableObject];

  return jsonEncodableObject;
}

- (id)_fetchOperationForPuzzleWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = [FCPuzzleFetchOperation alloc];
  puzzleTypeController = [(FCPuzzleController *)self puzzleTypeController];
  puzzleRecordSource = [(FCPuzzleController *)self puzzleRecordSource];
  assetManager = [(FCPuzzleController *)self assetManager];
  configurationManager = [(FCPuzzleController *)self configurationManager];
  v10 = [(FCPuzzleFetchOperation *)v5 initWithPuzzleIDs:dsCopy puzzleTypeController:puzzleTypeController puzzleRecordSource:puzzleRecordSource assetManager:assetManager configurationManager:configurationManager delegate:self];

  return v10;
}

@end