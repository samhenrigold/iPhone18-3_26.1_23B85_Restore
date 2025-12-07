@interface PPSpotlightWritebackDissector
+ (BOOL)bundleIdIsAllowed:(id)allowed;
+ (id)sharedCache;
- (BOOL)consumeContentFromBundleId:(id)id extractions:(id)extractions spotlightIdentifier:(id)identifier fileProtectionType:(id)type shouldContinueBlock:(id)block;
- (PPSpotlightWritebackDissector)init;
- (PPSpotlightWritebackDissector)initWithNamedEntityStore:(id)store topicStore:(id)topicStore spotlightIndex:(id)index significanceCheckEnabled:(BOOL)enabled;
- (id)spotlightAttributesForBundleId:(id)id spotlightIdentifier:(id)identifier extractions:(id)extractions shouldContinueBlock:(id)block;
- (void)_getNamedEntityPortraitScores:(id)scores priorityQueue:(id)queue;
@end

@implementation PPSpotlightWritebackDissector

- (id)spotlightAttributesForBundleId:(id)id spotlightIdentifier:(id)identifier extractions:(id)extractions shouldContinueBlock:(id)block
{
  v100 = *MEMORY[0x277D85DE8];
  idCopy = id;
  identifierCopy = identifier;
  extractionsCopy = extractions;
  blockCopy = block;
  v10 = +[PPConfiguration sharedInstance];
  useRawNEExtractionScores = [v10 useRawNEExtractionScores];

  v11 = +[PPConfiguration sharedInstance];
  maxNEExtractions = [v11 maxNEExtractions];

  v13 = objc_opt_new();
  v64 = objc_opt_new();
  v14 = [[PPEvictingMinPriorityQueue alloc] initWithCapacity:maxNEExtractions];
  v15 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = extractionsCopy;
  v68 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (!v68)
  {
    goto LABEL_33;
  }

  v66 = *v87;
  while (2)
  {
    v16 = 0;
    do
    {
      if (*v87 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v86 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      if ((blockCopy[2]() & 1) == 0)
      {
        v57 = pp_default_log_handle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v57, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: deferring while processing Portrait containers.", buf, 2u);
        }

        objc_autoreleasePoolPop(v18);
        v44 = obj;
        goto LABEL_47;
      }

      v70 = v16;
      v71 = v18;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      topics = [v17 topics];
      v20 = [topics countByEnumeratingWithState:&v82 objects:v98 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v83;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v83 != v22)
            {
              objc_enumerationMutation(topics);
            }

            item = [*(*(&v82 + 1) + 8 * i) item];
            topicIdentifier = [item topicIdentifier];
            [v13 addQidString:topicIdentifier];
          }

          v21 = [topics countByEnumeratingWithState:&v82 objects:v98 count:16];
        }

        while (v21);
      }

      if (!useRawNEExtractionScores)
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        entities = [v17 entities];
        v34 = [entities countByEnumeratingWithState:&v74 objects:v96 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v75;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v75 != v36)
              {
                objc_enumerationMutation(entities);
              }

              v38 = *(*(&v74 + 1) + 8 * j);
              v39 = objc_autoreleasePoolPush();
              item2 = [v38 item];
              name = [item2 name];
              [v15 addObject:name];

              objc_autoreleasePoolPop(v39);
            }

            v35 = [entities countByEnumeratingWithState:&v74 objects:v96 count:16];
          }

          while (v35);
        }

LABEL_30:
        v30 = v71;
        goto LABEL_31;
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      entities = [v17 entities];
      v27 = [entities countByEnumeratingWithState:&v78 objects:v97 count:16];
      if (!v27)
      {
        goto LABEL_30;
      }

      v28 = v27;
      v29 = *v79;
      v30 = v71;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v79 != v29)
          {
            objc_enumerationMutation(entities);
          }

          v32 = *(*(&v78 + 1) + 8 * k);
          v33 = objc_autoreleasePoolPush();
          [(PPEvictingMinPriorityQueue *)v14 addObject:v32];
          objc_autoreleasePoolPop(v33);
        }

        v28 = [entities countByEnumeratingWithState:&v78 objects:v97 count:16];
      }

      while (v28);
LABEL_31:

      objc_autoreleasePoolPop(v30);
      v16 = v70 + 1;
    }

    while (v70 + 1 != v68);
    v68 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_33:

  if ((useRawNEExtractionScores & 1) == 0)
  {
    [(PPSpotlightWritebackDissector *)self _getNamedEntityPortraitScores:v15 priorityQueue:v14];
  }

  v42 = blockCopy[2]();
  v43 = pp_default_log_handle();
  v44 = v43;
  if (v42)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [(PPEvictingMinPriorityQueue *)v14 count];
      *buf = 134217984;
      v91 = v60;
      _os_log_debug_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEBUG, "PPSpotlightWritebackDissector: namedEntityPriorityQueue contains %f items", buf, 0xCu);
    }

    extractSortedMutableArray = [(PPEvictingMinPriorityQueue *)v14 extractSortedMutableArray];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __116__PPSpotlightWritebackDissector_spotlightAttributesForBundleId_spotlightIdentifier_extractions_shouldContinueBlock___block_invoke;
    v72[3] = &unk_278978540;
    v46 = v64;
    v73 = v46;
    [extractSortedMutableArray enumerateObjectsUsingBlock:v72];

    v47 = pp_default_log_handle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *&v48 = COERCE_DOUBLE([v46 count]);
      *buf = 134217984;
      v91 = *&v48;
      _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: namedEntityScores contains %tu items", buf, 0xCu);
    }

    if (blockCopy[2]())
    {
      [(PPUniversalSearchSpotlightIndexScorer *)self->_scorer computeSpotlightIndexScoreFromPortraitExtractions:obj];
      v50 = v49;
      v51 = pp_default_log_handle();
      v53 = identifierCopy;
      v52 = idCopy;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v91 = v50;
        v92 = 2112;
        v93 = identifierCopy;
        v94 = 2112;
        v95 = idCopy;
        _os_log_debug_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEBUG, "PPSpotlightWritebackDissector: spotlightIndexScore of %g for CSSI item %@ from %@", buf, 0x20u);
      }

      v54 = objc_opt_new();
      [v54 setStaticScore:v50];
      encodeAsData = [v13 encodeAsData];
      [v54 setFeatureVector:encodeAsData];

      featureVectorVersion = [MEMORY[0x277D3A4F0] featureVectorVersion];
      [v54 setFeatureVectorVersion:featureVectorVersion];

      [v54 setNamedEntityScores:v46];
    }

    else
    {
      v59 = pp_default_log_handle();
      v53 = identifierCopy;
      v52 = idCopy;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: deferring before writing back.", buf, 2u);
      }

      v54 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v44, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: deferring after fetching scores.", buf, 2u);
    }

LABEL_47:

    v54 = 0;
    v53 = identifierCopy;
    v52 = idCopy;
  }

  return v54;
}

void __116__PPSpotlightWritebackDissector_spotlightAttributesForBundleId_spotlightIdentifier_extractions_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 item];
  v6 = [v5 name];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x277CCABB0];
    [v13 score];
    v9 = [v8 numberWithDouble:?];
    v10 = *(a1 + 32);
    v11 = [v13 item];
    v12 = [v11 name];
    [v10 setObject:v9 forKeyedSubscript:v12];
  }
}

- (void)_getNamedEntityPortraitScores:(id)scores priorityQueue:(id)queue
{
  v34 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  queueCopy = queue;
  if ([scoresCopy count])
  {
    v8 = +[PPConfiguration sharedInstance];
    storeNewExtractions = [v8 storeNewExtractions];

    v10 = +[PPConfiguration sharedInstance];
    [v10 scoreThreshold];
    v12 = v11;

    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v15 = +[PPSpotlightWritebackDissector sharedCache];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_2;
    v23 = &unk_278971780;
    v24 = scoresCopy;
    v25 = v14;
    v16 = v13;
    LOBYTE(v31) = storeNewExtractions;
    v26 = v16;
    v29 = &__block_literal_global_124;
    v30 = v12;
    v27 = queueCopy;
    selfCopy = self;
    v17 = v14;
    [v15 runWithLockAcquired:&v20];

    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 count];
      *buf = 134217984;
      v33 = v19;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: %lu named entities to query", buf, 0xCu);
    }
  }
}

void __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3 objectForKeyedSubscript:v8];
        if (v10)
        {
          v11 = v10;
          v12 = *(a1 + 40);
          v13 = [v10 cachingDate];
          [v12 timeIntervalSinceDate:v13];
          v15 = v14;

          if (v15 > 3600.0)
          {
            [v3 setObject:0 forKeyedSubscript:v8];
          }
        }

        [*(a1 + 48) addObject:v8];
        if (*(a1 + 88) == 1)
        {
          v16 = pp_default_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: Storing uncached extraction with score of 0", buf, 2u);
          }

          v17 = (*(*(a1 + 72) + 16))(0.0);
          [*(a1 + 56) addObject:v17];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v5);
  }

  v18 = pp_default_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 48) count];
    *buf = 134217984;
    v40 = v19;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: Querying Portrait for %lu extracted named entities", buf, 0xCu);
  }

  if ([*(a1 + 48) count])
  {
    v20 = objc_opt_new();
    [v20 setMatchingNames:*(a1 + 48)];
    v21 = [*(a1 + 56) getMinItemWithoutPopping];
    [v21 score];
    v23 = v22;

    v24 = *(*(a1 + 64) + 16);
    v34 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_133;
    v28[3] = &unk_278971758;
    v29 = v3;
    v30 = *(a1 + 40);
    v32 = *(a1 + 80);
    v31 = *(a1 + 56);
    v33 = v23;
    LOBYTE(v24) = [v24 iterRankedNamedEntitiesWithQuery:v20 error:&v34 block:v28];
    v25 = v34;
    if ((v24 & 1) == 0)
    {
      v26 = pp_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v25;
        _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPSpotlightWritebackDissector: Error querying portrait for NEs: %@", buf, 0xCu);
      }
    }
  }
}

void __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke_133(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) count] >= 0x200)
  {
    [*(a1 + 32) removeAllObjects];
  }

  v6 = [PPSpotlightWritebackDissectorCacheEntry alloc];
  v7 = *(a1 + 40);
  [v5 score];
  v8 = [(PPSpotlightWritebackDissectorCacheEntry *)v6 initWithCachingDate:v7 score:?];
  v9 = *(a1 + 32);
  v10 = [v5 item];
  v11 = [v10 name];
  [v9 setObject:v8 forKeyedSubscript:v11];

  [v5 score];
  if (v12 >= *(a1 + 56))
  {
    [*(a1 + 48) addObject:v5];
    [*(a1 + 48) count];
    if (v13 >= [*(a1 + 48) capacity])
    {
      [v5 score];
      if (v14 < *(a1 + 64))
      {
        v15 = pp_default_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 64);
          v17 = 134217984;
          v18 = v16;
          _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSpotlightWritebackDissector: Terminating processing of scored portrait NEs scoring lower than %f", &v17, 0xCu);
        }

        *a3 = 1;
      }
    }
  }
}

id __77__PPSpotlightWritebackDissector__getNamedEntityPortraitScores_priorityQueue___block_invoke(double a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D3A420];
  v5 = a3;
  v6 = [[v4 alloc] initWithName:v5 category:0 language:@"unknown"];

  v7 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v6 score:a1];

  return v7;
}

- (BOOL)consumeContentFromBundleId:(id)id extractions:(id)extractions spotlightIdentifier:(id)identifier fileProtectionType:(id)type shouldContinueBlock:(id)block
{
  v38[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  extractionsCopy = extractions;
  identifierCopy = identifier;
  typeCopy = type;
  blockCopy = block;
  if (+[PPSpotlightWritebackDissector bundleIdIsAllowed:](PPSpotlightWritebackDissector, "bundleIdIsAllowed:", idCopy) && (![idCopy isEqualToString:*MEMORY[0x277D3A648]] || objc_msgSend(MEMORY[0x277D42598], "lockState") != 1))
  {
    v32 = a2;
    v33 = extractionsCopy;
    v34 = typeCopy;
    v18 = [(PPSpotlightWritebackDissector *)self spotlightAttributesForBundleId:idCopy spotlightIdentifier:identifierCopy extractions:extractionsCopy shouldContinueBlock:blockCopy];
    v19 = objc_opt_new();
    v20 = MEMORY[0x277CCABB0];
    [v18 staticScore];
    v21 = [v20 numberWithDouble:?];
    [v19 setPortraitStaticScore:v21];

    featureVector = [v18 featureVector];
    [v19 setPortraitFeatureVector:featureVector];

    featureVectorVersion = [v18 featureVectorVersion];
    [v19 setPortraitFeatureVectorVersion:featureVectorVersion];

    namedEntityScores = [v18 namedEntityScores];
    [v19 setPortraitNamedEntities:namedEntityScores];

    v25 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:identifierCopy domainIdentifier:0 attributeSet:v19];
    [v25 setIsUpdate:1];
    v26 = self->_spotlightIndex;
    if (!v26)
    {
      idCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PersonalizationPortrait-harvestQueueWriteback-%@", idCopy];
      v26 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:idCopy protectionClass:v34 bundleIdentifier:idCopy];
    }

    v38[0] = v25;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __131__PPSpotlightWritebackDissector_consumeContentFromBundleId_extractions_spotlightIdentifier_fileProtectionType_shouldContinueBlock___block_invoke;
    aBlock[3] = &unk_278971710;
    aBlock[5] = v36;
    aBlock[6] = v32;
    aBlock[4] = self;
    v29 = _Block_copy(aBlock);
    v30 = _Block_copy(v29);

    _Block_object_dispose(v36, 8);
    [(PPSearchableIndex *)v26 indexSearchableItems:v28 completionHandler:v30];

    extractionsCopy = v33;
    typeCopy = v34;
  }

  return 1;
}

void __131__PPSpotlightWritebackDissector_consumeContentFromBundleId_extractions_spotlightIdentifier_fileProtectionType_shouldContinueBlock___block_invoke(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (atomic_fetch_add((*(a1[5] + 8) + 24), 1u))
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"PPSpotlightWritebackDissector.m" lineNumber:150 description:@"This block should not be run more than once"];

    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPSpotlightWritebackDissector: Error indexing updated CSSI: %@", &v7, 0xCu);
  }

LABEL_6:
}

- (PPSpotlightWritebackDissector)initWithNamedEntityStore:(id)store topicStore:(id)topicStore spotlightIndex:(id)index significanceCheckEnabled:(BOOL)enabled
{
  storeCopy = store;
  topicStoreCopy = topicStore;
  indexCopy = index;
  v18.receiver = self;
  v18.super_class = PPSpotlightWritebackDissector;
  v14 = [(PPSpotlightWritebackDissector *)&v18 init];
  if (v14)
  {
    v15 = [[PPUniversalSearchSpotlightIndexScorer alloc] initWithLocalTopicStore:topicStoreCopy];
    scorer = v14->_scorer;
    v14->_scorer = v15;

    objc_storeStrong(&v14->_namedEntityStore, store);
    objc_storeStrong(&v14->_spotlightIndex, index);
    v14->_significanceCheckEnabled = enabled;
  }

  return v14;
}

- (PPSpotlightWritebackDissector)init
{
  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = +[PPLocalTopicStore defaultStore];
  v5 = [(PPSpotlightWritebackDissector *)self initWithNamedEntityStore:v3 topicStore:v4 spotlightIndex:0 significanceCheckEnabled:1];

  return v5;
}

+ (BOOL)bundleIdIsAllowed:(id)allowed
{
  allowedCopy = allowed;
  v4 = allowedCopy;
  if (allowedCopy)
  {
    if ([allowedCopy isEqualToString:*MEMORY[0x277D3A658]])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isEqualToString:*MEMORY[0x277D3A648]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)sharedCache
{
  if (sharedCache__pasOnceToken6 != -1)
  {
    dispatch_once(&sharedCache__pasOnceToken6, &__block_literal_global_423);
  }

  v3 = sharedCache__pasExprOnceResult;

  return [v3 result];
}

void __44__PPSpotlightWritebackDissector_sharedCache__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_99 idleTimeout:10.0];
  v2 = sharedCache__pasExprOnceResult;
  sharedCache__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __44__PPSpotlightWritebackDissector_sharedCache__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:512];
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

@end