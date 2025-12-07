@interface ATXMLActionProducer
+ (id)consumerSubTypesToUpdate;
+ (id)predictionChunksForActionResults:(id)results;
- (ATXMLActionProducer)init;
- (BOOL)_writeIntermediateCacheForConsumerSubType:(unsigned __int8)type actionPredictionCandidates:(id)candidates remainingPredictionItems:(void *)items;
- (BOOL)writeCacheIfNotExistsForConsumerSubType:(unsigned __int8)type;
- (id)_cachePathForConsumerSubtype:(unsigned __int8)subtype;
- (id)_getActionsFromCacheForConsumerSubType:(unsigned __int8)type cacheFileData:(id)data;
- (id)consumerSubTypesToInvalidateForTTL:(double)l disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes;
- (id)lockscreenActionsFromPredictions:(id)predictions;
- (id)produceActions;
- (void)invalidateCacheForConsumerSubType:(unsigned __int8)type actionPredictionCandidates:(id)candidates remainingPredictionItems:()vector<ATXPredictionItem;
- (void)invalidateCacheForConsumerSubTypes:(id)types featureCache:(id)cache;
- (void)readCacheAndSendFilteredResultsToBlendingForConsumerSubType:(unsigned __int8)type;
- (void)updateBlendingLayerForAllConsumerSubTypes;
- (void)updateBlendingLayerForConsumerSubType:(unsigned __int8)type;
- (void)updateBlendingLayerForHomeScreen;
@end

@implementation ATXMLActionProducer

- (void)updateBlendingLayerForAllConsumerSubTypes
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [&unk_283A57D40 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(&unk_283A57D40);
        }

        -[ATXMLActionProducer updateBlendingLayerForConsumerSubType:](self, "updateBlendingLayerForConsumerSubType:", [*(*(&v6 + 1) + 8 * v5++) intValue]);
      }

      while (v3 != v5);
      v3 = [&unk_283A57D40 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (ATXMLActionProducer)init
{
  v7.receiver = self;
  v7.super_class = ATXMLActionProducer;
  v2 = [(ATXMLActionProducer *)&v7 init];
  if (v2)
  {
    appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v4 = [appPredictionDirectory stringByAppendingPathComponent:@"caches/ATXCacheFile"];
    cacheBasePath = v2->_cacheBasePath;
    v2->_cacheBasePath = v4;
  }

  return v2;
}

- (id)produceActions
{
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CEB3F8]) initWithCacheBasePath:self->_cacheBasePath];
  v5 = [(ATXMLActionProducer *)self writeCacheIfNotExistsForConsumerSubType:21];
  v6 = [(ATXMLActionProducer *)self _cachePathForConsumerSubtype:21];
  v7 = [v4 readCacheFileForCachePath:v6];

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {
    v10 = __atxlog_handle_default(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXMLActionProducer *)v10 produceActions];
    }
  }

  if (v5)
  {
    v11 = [(ATXMLActionProducer *)self _getActionsFromCacheForConsumerSubType:21 cacheFileData:v7];

    v3 = v11;
  }

  return v3;
}

- (BOOL)writeCacheIfNotExistsForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ATXMLActionProducer *)self _cachePathForConsumerSubtype:typeCopy];
  v7 = [defaultManager fileExistsAtPath:v6];

  if (v7)
  {
    return 1;
  }

  memset(v11, 0, sizeof(v11));
  v9 = [ATXActionPredictions _actionPredictionCandidatesForCandidateBundleIdentifiers:0 candidateActiontypes:0 firstStageScoreLogger:0 secondStageScoreLogger:0 multiStageScoreLogger:0 featureCache:0 remainingPredictionItems:v11];
  v8 = [(ATXMLActionProducer *)self _writeIntermediateCacheForConsumerSubType:typeCopy actionPredictionCandidates:v9 remainingPredictionItems:v11];

  v12 = v11;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v8;
}

- (id)_getActionsFromCacheForConsumerSubType:(unsigned __int8)type cacheFileData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v6 = objc_opt_new();
  if (dataCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [[ATXActionCacheReader alloc] initWithData:dataCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__ATXMLActionProducer__getActionsFromCacheForConsumerSubType_cacheFileData___block_invoke;
    v13[3] = &unk_278598BA8;
    v9 = v6;
    v14 = v9;
    [(ATXActionCacheReader *)v8 enumerateActionsAndPredictionItemsForConsumerSubtype:typeCopy limit:0x7FFFFFFFLL block:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__ATXMLActionProducer__getActionsFromCacheForConsumerSubType_cacheFileData___block_invoke_2;
    v11[3] = &unk_278598BD0;
    v12 = v9;
    [(ATXActionCacheReader *)v8 enumerateExtraPredictionItemsWithBlock:v11];

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

void __76__ATXMLActionProducer__getActionsFromCacheForConsumerSubType_cacheFileData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [ATXActionResult alloc];
  v6 = [v9 predictedItem];
  v7 = [v6 actionKey];
  v8 = [(ATXActionResult *)v5 initWithScoredAction:v9 predictionItem:a3 actionKey:v7];

  [*(a1 + 32) addObject:v8];
}

void __76__ATXMLActionProducer__getActionsFromCacheForConsumerSubType_cacheFileData___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[ATXActionResult alloc] initWithScoredAction:0 predictionItem:a2 actionKey:@"predictionItem"];
  [*(a1 + 32) addObject:?];
}

- (id)consumerSubTypesToInvalidateForTTL:(double)l disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes
{
  typesCopy = types;
  consumerSubTypesToUpdate = [objc_opt_class() consumerSubTypesToUpdate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __136__ATXMLActionProducer_consumerSubTypesToInvalidateForTTL_disabledConsumerSubTypes_shouldOverrideRefreshRateForDisabledConsumerSubTypes___block_invoke;
  v13[3] = &unk_278598BF8;
  lCopy = l;
  subTypesCopy = subTypes;
  v10 = typesCopy;
  v14 = v10;
  selfCopy = self;
  v11 = [consumerSubTypesToUpdate _pas_filteredArrayWithTest:v13];

  return v11;
}

BOOL __136__ATXMLActionProducer_consumerSubTypesToInvalidateForTTL_disabledConsumerSubTypes_shouldOverrideRefreshRateForDisabledConsumerSubTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v7 = +[_ATXGlobals sharedInstance];
      [v7 cacheRefreshIntervalForDisabledActionConsumerSubType];
      v4 = v8;
    }
  }

  v9 = [*(a1 + 40) _cachePathForConsumerSubtype:v3];
  v10 = [ATXFileUtil shouldUpdateCache:v9 withRefreshRate:v4];

  return v10;
}

+ (id)consumerSubTypesToUpdate
{
  if (+[ATXMLActionProducer consumerSubTypesToUpdate]::onceToken != -1)
  {
    +[ATXMLActionProducer consumerSubTypesToUpdate];
  }

  v3 = +[ATXMLActionProducer consumerSubTypesToUpdate]::consumerSubTypesToUpdate;

  return v3;
}

void __47__ATXMLActionProducer_consumerSubTypesToUpdate__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [&unk_283A57D28 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      v4 = 0;
      do
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(&unk_283A57D28);
        }

        v5 = *(*(&v11 + 1) + 8 * v4);
        v6 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
        v7 = [v6 getAssetFileAndSubscoreForConsumerSubType:{objc_msgSend(v5, "intValue")}];

        if (([v0 containsObject:v7] & 1) == 0)
        {
          [v1 addObject:v5];
          [v0 addObject:v7];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [&unk_283A57D28 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }

  v8 = [v1 copy];
  v9 = +[ATXMLActionProducer consumerSubTypesToUpdate]::consumerSubTypesToUpdate;
  +[ATXMLActionProducer consumerSubTypesToUpdate]::consumerSubTypesToUpdate = v8;

  objc_autoreleasePoolPop(context);
}

- (void)invalidateCacheForConsumerSubTypes:(id)types featureCache:(id)cache
{
  v23 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = [ATXActionPredictions _actionPredictionCandidatesForCandidateBundleIdentifiers:0 candidateActiontypes:0 firstStageScoreLogger:0 secondStageScoreLogger:0 multiStageScoreLogger:0 featureCache:cache remainingPredictionItems:&v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        unsignedIntegerValue = [*(*(&v14 + 1) + 8 * v11) unsignedIntegerValue];
        memset(v13, 0, sizeof(v13));
        std::vector<ATXPredictionItem>::__init_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(v13, v18, v19, 0x13A524387AC82261 * (v19 - v18));
        [(ATXMLActionProducer *)self invalidateCacheForConsumerSubType:unsignedIntegerValue actionPredictionCandidates:v7 remainingPredictionItems:v13];
        v21 = v13;
        std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v21);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }

  v21 = &v18;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v21);
}

- (void)invalidateCacheForConsumerSubType:(unsigned __int8)type actionPredictionCandidates:(id)candidates remainingPredictionItems:()vector<ATXPredictionItem
{
  typeCopy = type;
  v18 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v9 = __atxlog_handle_default(candidatesCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating intermediate ML cache for %@ and attempting to replace it with new one", &v16, 0xCu);
  }

  v11 = [(ATXMLActionProducer *)self _writeIntermediateCacheForConsumerSubType:typeCopy actionPredictionCandidates:candidatesCopy remainingPredictionItems:a5];
  mEMORY[0x277CEB7E0] = [MEMORY[0x277CEB7E0] sharedInstance];
  [mEMORY[0x277CEB7E0] clearRecentMLEngagementsExceptForActions:0];

  if (v11)
  {
    v14 = __atxlog_handle_default(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Intermediate ML cache for %@ successfully replaced", &v16, 0xCu);
    }
  }
}

- (BOOL)_writeIntermediateCacheForConsumerSubType:(unsigned __int8)type actionPredictionCandidates:(id)candidates remainingPredictionItems:(void *)items
{
  typeCopy = type;
  v21 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v9 = MEMORY[0x277CCABB0];
  v10 = +[_ATXGlobals sharedInstance];
  [v10 predictionsPerAppActionLimit];
  v11 = [v9 numberWithDouble:?];

  v12 = [ATXActionPredictions _predictionsForConsumerSubType:typeCopy thirdStageScoreLogger:0 multiStageScoreLogger:0 actionPredictionCandidates:candidatesCopy remainingPredictionItems:items predictionsPerAppActionLimit:v11];
  v13 = [objc_opt_class() predictionChunksForActionResults:v12];
  v14 = [(ATXMLActionProducer *)self _cachePathForConsumerSubtype:typeCopy];
  v15 = ATXWriteActionPredictionChunks(v14, v13);

  if ((v15 & 1) == 0)
  {
    v17 = __atxlog_handle_default(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
      [ATXMLActionProducer _writeIntermediateCacheForConsumerSubType:v18 actionPredictionCandidates:v20 remainingPredictionItems:v17];
    }
  }

  return v15;
}

+ (id)predictionChunksForActionResults:(id)results
{
  v21 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        scoredAction = [v9 scoredAction];
        v11 = scoredAction == 0;

        if (!v11)
        {
          scoredAction2 = [v9 scoredAction];
          [v4 addObject:scoredAction2];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:v4];
  v14 = [ATXActionCacheBuilder serializedChunksFromActionPredictionResults:v5 lockscreenPredictionIndices:v13];

  return v14;
}

- (void)updateBlendingLayerForConsumerSubType:(unsigned __int8)type
{
  if (type <= 37)
  {
    if (type == 21)
    {
      [(ATXMLActionProducer *)self updateBlendingLayerForSpotlight];
    }

    else if (type == 22)
    {
      [(ATXMLActionProducer *)self updateBlendingLayerForLockscreen];
    }
  }

  else
  {
    switch(type)
    {
      case '1':
        [(ATXMLActionProducer *)self updateBlendingLayerForWatchAppSettings];
        break;
      case '.':
        [(ATXMLActionProducer *)self updateBlendingLayerForSettings];
        break;
      case '&':
        [(ATXMLActionProducer *)self updateBlendingLayerForHomeScreen];
        break;
    }
  }
}

- (void)updateBlendingLayerForHomeScreen
{
  if ([MEMORY[0x277CEB2F8] shouldDisplayRecentActionsOnHomeScreen])
  {
    v5 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:11];
    v3 = [MEMORY[0x277CEB2F8] actionResponseForDeveloperModeWithClientId:? shouldShowRecentDonations:?];
    proactiveSuggestions = [v3 proactiveSuggestions];
    [ATXActionBlendingUpdater updateBlendingLayerWithRecentShortcuts:proactiveSuggestions];
  }

  else
  {
    v6 = objc_opt_new();
    [ATXActionBlendingUpdater updateBlendingLayerWithRecentShortcuts:?];

    +[ATXActionBlendingUpdater updateBlendingLayerWithFallbackActions];

    [(ATXMLActionProducer *)self readCacheAndSendFilteredResultsToBlendingForConsumerSubType:38];
  }
}

- (void)readCacheAndSendFilteredResultsToBlendingForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v38 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CEB3F8]) initWithCacheBasePath:self->_cacheBasePath];
  v6 = [(ATXMLActionProducer *)self writeCacheIfNotExistsForConsumerSubType:typeCopy];
  v7 = [(ATXMLActionProducer *)self _cachePathForConsumerSubtype:typeCopy];
  v8 = [v5 readCacheFileForCachePath:v7];

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = __atxlog_handle_blending(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
      [(ATXMLActionProducer *)v12 readCacheAndSendFilteredResultsToBlendingForConsumerSubType:buf, v11];
    }
  }

  v13 = objc_opt_new();
  v14 = v13;
  if (v6)
  {
    v15 = [(ATXMLActionProducer *)self _getActionsFromCacheForConsumerSubType:typeCopy cacheFileData:v8];

    v14 = v15;
  }

  v16 = __atxlog_handle_action_prediction(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 count];
    v20 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    v31 = 138412802;
    v32 = v18;
    v33 = 2048;
    v34 = v19;
    v35 = 2112;
    v36 = v20;
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%@ - readCacheAndSendFilteredResultsToBlendingForConsumerSubType read %lu predictions for consumerSubType: %@", &v31, 0x20u);
  }

  v21 = [ATXActionPredictions filterHighQualityActionResults:v14 consumerSubType:typeCopy];

  v23 = __atxlog_handle_action_prediction(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 count];
    v27 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    v31 = 138412802;
    v32 = v25;
    v33 = 2048;
    v34 = v26;
    v35 = 2112;
    v36 = v27;
    _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "%@ - readCacheAndSendFilteredResultsToBlendingForConsumerSubType has %lu predictions after filtering for consumerSubType: %@", &v31, 0x20u);
  }

  v28 = [objc_opt_class() predictionChunksForActionResults:v21];
  v29 = ATXCacheFileJoinChunks();

  if (typeCopy == 22)
  {
    v30 = [(ATXMLActionProducer *)self lockscreenActionsFromPredictions:v21];
    [ATXActionBlendingUpdater updateBlendingLayerWithLockscreenActions:v30 feedbackMetadata:v29];
  }

  else
  {
    [ATXActionBlendingUpdater updateBlendingLayerWithBehavioralPredictions:v21 feedbackMetadata:v29 consumerSubType:typeCopy];
  }
}

- (id)lockscreenActionsFromPredictions:(id)predictions
{
  v33 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__18;
  v28 = __Block_byref_object_dispose__18;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__18;
  v22[4] = __Block_byref_object_dispose__18;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ATXMLActionProducer_lockscreenActionsFromPredictions___block_invoke;
  aBlock[3] = &unk_278598C20;
  aBlock[4] = v22;
  aBlock[5] = &v24;
  v4 = _Block_copy(aBlock);
  atx_actionsFromActionResults = [predictionsCopy atx_actionsFromActionResults];
  v6 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:atx_actionsFromActionResults criteria:v4];
  v7 = [atx_actionsFromActionResults objectsAtIndexes:v6];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    predictedItem = [firstObject predictedItem];
    if ([predictedItem isTVWhiteListedLongFormMedia])
    {
      predictedRouteInfo = [v25[5] predictedRouteInfo];
      v11 = predictedRouteInfo == 0;

      if (v11)
      {
LABEL_6:
        v17 = __atxlog_handle_blending(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          predictedItem2 = [firstObject predictedItem];
          *buf = 138412290;
          v32 = predictedItem2;
          _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "lockscreen: Sending prediction to lockscreen: %@", buf, 0xCu);
        }

        v30 = firstObject;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        goto LABEL_12;
      }

      predictedItem3 = [firstObject predictedItem];
      predictedRouteInfo2 = [v25[5] predictedRouteInfo];
      predictedItem = [predictedItem3 actionWithRouteInfo:predictedRouteInfo2];

      v15 = objc_alloc(MEMORY[0x277CEB7F0]);
      [firstObject score];
      v16 = [v15 initWithPredictedItem:predictedItem score:?];

      firstObject = v16;
    }

    goto LABEL_6;
  }

  firstObject = __atxlog_handle_blending(0);
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, firstObject, OS_LOG_TYPE_DEFAULT, "lockscreen: clearing suggestions because no suggestions received", buf, 2u);
  }

  v19 = MEMORY[0x277CBEBF8];
LABEL_12:

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  return v19;
}

uint64_t __56__ATXMLActionProducer_lockscreenActionsFromPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 predictedItem];
  if (![v3 isTVWhiteListedLongFormMedia])
  {
    v17 = [v3 isTVAction];
    if (!v17)
    {
      v16 = 1;
      goto LABEL_16;
    }

    v18 = __atxlog_handle_default(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __56__ATXMLActionProducer_lockscreenActionsFromPredictions___block_invoke_cold_1(v18);
    }

    goto LABEL_12;
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if ([*(*(*(a1 + 32) + 8) + 40) isTVExperienceAppNowPlaying])
    {
LABEL_12:
      v16 = 0;
      goto LABEL_16;
    }
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CEB2C0]);
    v9 = +[_ATXGlobals sharedInstance];
    [v9 predictedRouteAcceptThreshold];
    *&v10 = v10;
    v11 = [v8 initWithAcceptThreshold:0 avRoutingSessionManager:v10];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = *(*(*(a1 + 40) + 8) + 40);
  }

  v14 = [v7 predictedRouteInfo];
  if (v14)
  {
    v15 = [*(*(*(a1 + 40) + 8) + 40) predictedRouteInfo];
    v16 = [v15 isExternalRoute];
  }

  else
  {
    v16 = 0;
  }

LABEL_16:
  return v16;
}

- (id)_cachePathForConsumerSubtype:(unsigned __int8)subtype
{
  subtypeCopy = subtype;
  mEMORY[0x277CEB3A0] = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v6 = [mEMORY[0x277CEB3A0] getFullCachePathWithBaseCachePath:self->_cacheBasePath consumerSubType:subtypeCopy];

  return v6;
}

- (void)_writeIntermediateCacheForConsumerSubType:(void *)a1 actionPredictionCandidates:(uint8_t *)buf remainingPredictionItems:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Failed to write intermediate cache for consumerSubType: %@", buf, 0xCu);
}

- (void)readCacheAndSendFilteredResultsToBlendingForConsumerSubType:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "While updating predictions for blending, failed to read cache file data for %@, although the cache is supposed to exist.", buf, 0xCu);
}

@end