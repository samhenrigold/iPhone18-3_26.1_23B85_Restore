@interface PPLocalTopicStore
+ (id)calibrateScoredTopic:(id)topic calibrationTrie:(id)trie;
+ (id)defaultStore;
+ (id)recordsForTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm;
+ (void)sortAndTruncate:(id)truncate queryLimit:(unint64_t)limit;
- (BOOL)clearTopicScoresCache:(id *)cache;
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)cloudSyncWithError:(id *)error;
- (BOOL)computeAndCacheTopicScoresWithShouldContinueBlock:(id)block error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId algorithm:(unint64_t)algorithm olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error;
- (BOOL)flushDonationsWithError:(id *)error;
- (BOOL)iterScoredTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name block:(id)block;
- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block;
- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (PPLocalTopicStore)init;
- (PPLocalTopicStore)initWithStorage:(id)storage trialWrapper:(id)wrapper;
- (PPTopicTransform)_topicTransformForId:(uint64_t)id;
- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model;
- (id)_coalesceScoredTopics:(void *)topics exactMatchesInSourceText:;
- (id)_feedbackItemsByItemString:(void *)string;
- (id)rankedTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name;
- (id)scoreTopics:(id)topics scoringDate:(id)date decayRate:(double)rate strictFiltering:(BOOL)filtering sourceStats:(id)stats decayedFeedbackCounts:(id)counts streamingScorer:(id *)scorer mlModel:(id)self0;
- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error clientProcessName:(id)name;
- (id)topicCacheSandboxExtensionToken:(id *)token;
- (id)topicExtractionsFromText:(id)text clientProcessName:(id)name error:(id *)error;
- (id)topicRecordsWithQuery:(id)query error:(id *)error;
- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error;
- (uint64_t)_defaultIterScoresForTopicMapping:(void *)mapping query:(void *)query error:(void *)error clientProcessName:(void *)name block:;
- (uint64_t)_logFeedbackSessionsWithFeedback:(void *)feedback error:;
- (void)_dpLoggingForMappingId:(void *)id mappedTopics:;
- (void)_logParametersForQuery:(void *)query client:(void *)client method:;
- (void)_petLoggingForMappedTopicQuery:(void *)query mappingId:(uint64_t)id count:(void *)count clientProcessName:(char)name hasError:;
- (void)logDonationErrorForReason:(int64_t)reason errorCode:(unint64_t)code source:(id)source;
- (void)processFeedback:(id)feedback;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion;
- (void)topicInvalidationCallback;
@end

@implementation PPLocalTopicStore

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_20685);
  if (!defaultStore_instance_20686)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_20686;
    defaultStore_instance_20686 = v2;

    if (!defaultStore_instance_20686)
    {
      v4 = pp_topics_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalTopicStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v7, 2u);
      }
    }
  }

  v5 = defaultStore_instance_20686;
  pthread_mutex_unlock(&defaultStore_lock_20685);

  return v5;
}

- (id)topicCacheSandboxExtensionToken:(id *)token
{
  v10 = 0u;
  v11 = 0u;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v5 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  [(NSString *)self->_cachePath cStringUsingEncoding:4];
  v6 = sandbox_extension_issue_file_to_process();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{v6, v10, v11}];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)clearTopicScoresCache:(id *)cache
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(cache) = [defaultManager removeItemAtPath:self->_cachePath error:cache];

  return cache;
}

- (BOOL)computeAndCacheTopicScoresWithShouldContinueBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if ((atomic_exchange(&self->_cacheUpdateEnqueued._Value, 1u) & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    cacheUpdateQueue = self->_cacheUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PPLocalTopicStore_computeAndCacheTopicScoresWithShouldContinueBlock_error___block_invoke;
    block[3] = &unk_278977560;
    block[4] = self;
    v20 = blockCopy;
    dispatch_sync(cacheUpdateQueue, block);

    objc_autoreleasePoolPop(v7);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20434;
  v17 = __Block_byref_object_dispose__20435;
  v18 = 0;
  v9 = self->_cacheUpdateQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__PPLocalTopicStore_computeAndCacheTopicScoresWithShouldContinueBlock_error___block_invoke_414;
  v12[3] = &unk_278977588;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(v9, v12);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __77__PPLocalTopicStore_computeAndCacheTopicScoresWithShouldContinueBlock_error___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  atomic_store(0, (*(a1 + 32) + 64));
  if ((*(*(a1 + 40) + 16))())
  {
    v2 = objc_opt_new();
    [v2 setRemoveNearDuplicates:1];
    v3 = *(a1 + 32);
    v36 = 0;
    v4 = [v3 rankedTopicsWithQuery:v2 error:&v36];
    v5 = v36;
    v6 = v36;
    if (!(*(*(a1 + 40) + 16))())
    {
LABEL_26:

      return;
    }

    if (v4)
    {
      obj = v5;
      v29 = v6;
      v30 = v2;
      v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v32 + 1) + 8 * i);
            v14 = [v13 item];
            v15 = [v14 topicIdentifier];

            v16 = MEMORY[0x277CCABB0];
            [v13 score];
            v17 = [v16 numberWithDouble:?];
            [v7 setObject:v17 forKeyedSubscript:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v10);
      }

      v6 = v29;
      v2 = v30;
      v5 = obj;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 72), v5);
    if (v6)
    {
      v18 = pp_topics_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v6;
        _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "Iterating over PPTopicStore failed: %@", buf, 0xCu);
      }
    }

    else
    {
      if (!(*(*(a1 + 40) + 16))())
      {
        v6 = 0;
LABEL_25:

        v4 = 0;
        goto LABEL_26;
      }

      v19 = *(*(a1 + 32) + 40);
      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v20 UUIDString];
      v18 = [v19 stringByAppendingFormat:@".new-%@", v21];

      v31 = 0;
      v22 = [MEMORY[0x277D425D8] fileBackedDataWithPropertyList:v7 writtenToPath:v18 format:1 error:&v31];
      v23 = v31;
      v6 = v31;
      objc_storeStrong((*(a1 + 32) + 72), v23);
      if (v22)
      {
        v24 = [v18 fileSystemRepresentation];
        v25 = [*(*(a1 + 32) + 40) fileSystemRepresentation];
        rename(v24, v25, v26);
      }

      else
      {
        v27 = pp_topics_log_handle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v6;
          _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "Could not serialize and write plist: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_25;
  }
}

- (void)processFeedback:(id)feedback
{
  v218 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  mappingId = [feedbackCopy mappingId];

  if (mappingId)
  {
    v4 = feedbackCopy;
    if (!self)
    {
      goto LABEL_99;
    }

    v143 = v4;
    feedbackItems = [v4 feedbackItems];
    v6 = [PPLocalTopicStore _feedbackItemsByItemString:feedbackItems];

    v7 = objc_alloc(MEMORY[0x277CBEB58]);
    allKeys = [v6 allKeys];
    v9 = [v7 initWithArray:allKeys];

    v10 = objc_opt_new();
    mappingId2 = [v143 mappingId];
    if (!mappingId2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__processMappedTopicPendingFeedback_ object:self file:@"PPLocalTopicStore.m" lineNumber:1790 description:@"Mapping ID was previously checked to be nonnull. Check for memory corruption"];
    }

    v141 = objc_opt_new();
    timestamp = [v143 timestamp];
    [v141 setScoringDate:timestamp];

    timestamp2 = [v143 timestamp];
    [v141 setToDate:timestamp2];

    [v141 setMinimumComponentCount:1];
    clientBundleId = [v143 clientBundleId];
    v14 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:clientBundleId domain:0];
    [v141 setExcludingSourceBundleIds:v14];

    v185 = 0;
    v181[0] = MEMORY[0x277D85DD0];
    v181[1] = 3221225472;
    v181[2] = __56__PPLocalTopicStore__processMappedTopicPendingFeedback___block_invoke;
    v181[3] = &unk_278977510;
    v138 = v9;
    v182 = v138;
    v139 = v10;
    v183 = v139;
    v165 = v6;
    v184 = v165;
    v15 = [(PPLocalTopicStore *)self iterScoresForTopicMapping:mappingId2 query:v141 error:&v185 block:v181];
    v137 = v185;
    if (!v15)
    {
      oslog = pp_default_log_handle();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v212) = 138412290;
        *(&v212 + 4) = v137;
        _os_log_error_impl(&dword_23224A000, oslog, OS_LOG_TYPE_ERROR, "_processMappedTopicPendingFeedback: error from iterScoresForTopicMapping: %@", &v212, 0xCu);
      }

      goto LABEL_98;
    }

    oslog = objc_opt_new();
    v16 = objc_opt_new();
    v160 = [(PPLocalTopicStore *)self _topicTransformForId:mappingId2];
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    obj = v138;
    v167 = [obj countByEnumeratingWithState:&v177 objects:v195 count:16];
    if (v167)
    {
      v162 = *v178;
      do
      {
        for (i = 0; i != v167; ++i)
        {
          if (*v178 != v162)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v177 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          if ([v18 length] && (objc_msgSend(v160, "containsMappedTopic:", v18) & 1) != 0)
          {
            v19 = [v165 objectForKeyedSubscript:v18];
            [oslog addObjectsFromArray:v19];
          }

          else
          {
            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            v19 = [v165 objectForKeyedSubscript:v18];
            v20 = [v19 countByEnumeratingWithState:&v173 objects:&v191 count:16];
            if (v20)
            {
              v21 = *v174;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v174 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:&stru_284759D38 itemFeedbackType:{objc_msgSend(*(*(&v173 + 1) + 8 * j), "itemFeedbackType")}];
                  [v16 addObject:v23];
                }

                v20 = [v19 countByEnumeratingWithState:&v173 objects:&v191 count:16];
              }

              while (v20);
            }
          }

          objc_autoreleasePoolPop(context);
        }

        v167 = [obj countByEnumeratingWithState:&v177 objects:v195 count:16];
      }

      while (v167);
    }

    if ([oslog count])
    {
      v24 = objc_alloc(MEMORY[0x277D3A328]);
      timestamp3 = [v143 timestamp];
      clientIdentifier = [v143 clientIdentifier];
      clientBundleId2 = [v143 clientBundleId];
      v28 = [v24 initWithFeedbackItems:oslog timestamp:timestamp3 clientIdentifier:clientIdentifier clientBundleId:clientBundleId2 mappingId:mappingId2];

      [PPFeedbackStorage logFeedback:v28 domain:0 domainStatus:4 inBackground:1];
    }

    if ([v16 count])
    {
      v29 = objc_alloc(MEMORY[0x277D3A328]);
      timestamp4 = [v143 timestamp];
      clientIdentifier2 = [v143 clientIdentifier];
      clientBundleId3 = [v143 clientBundleId];
      v33 = [v29 initWithFeedbackItems:v16 timestamp:timestamp4 clientIdentifier:clientIdentifier2 clientBundleId:clientBundleId3 mappingId:mappingId2];

      [PPFeedbackStorage logFeedback:v33 domain:0 domainStatus:3 inBackground:1];
    }

    if (![v139 count])
    {
LABEL_97:

LABEL_98:
      v4 = v143;
      goto LABEL_99;
    }

    v34 = objc_alloc(MEMORY[0x277D3A328]);
    timestamp5 = [v143 timestamp];
    clientIdentifier3 = [v143 clientIdentifier];
    clientBundleId4 = [v143 clientBundleId];
    v136 = [v34 initWithFeedbackItems:v139 timestamp:timestamp5 clientIdentifier:clientIdentifier3 clientBundleId:clientBundleId4 mappingId:mappingId2];

    [PPFeedbackStorage logFeedback:v136 domain:0 domainStatus:5 inBackground:1];
    feedbackItems2 = [v136 feedbackItems];
    clientBundleId5 = [v143 clientBundleId];
    clientIdentifier4 = [v143 clientIdentifier];
    [PPFeedbackUtils recordUserEventsFromFeedback:v143 matchingFeedbackItems:feedbackItems2 clientBundleId:clientBundleId5 clientIdentifier:clientIdentifier4 domain:0];

    timestamp6 = [v143 timestamp];
    clientIdentifier5 = [v143 clientIdentifier];
    clientBundleId6 = [v143 clientBundleId];
    v44 = v139;
    v135 = timestamp6;
    v134 = clientIdentifier5;
    v133 = clientBundleId6;
    v45 = mappingId2;
    v46 = v44;
    v146 = v45;
    v47 = objc_opt_new();
    v210 = 0u;
    v211 = 0u;
    *v208 = 0u;
    v209 = 0u;
    v144 = v46;
    v148 = [v144 countByEnumeratingWithState:v208 objects:&v212 count:16];
    if (v148)
    {
      v145 = *v209;
      do
      {
        v48 = 0;
        do
        {
          if (*v209 != v145)
          {
            v49 = v48;
            objc_enumerationMutation(v144);
            v48 = v49;
          }

          v153 = v48;
          v50 = *(*&v208[8] + 8 * v48);
          v155 = objc_autoreleasePoolPush();
          itemString = [v50 itemString];
          v190 = 0;
          v163 = [(PPLocalTopicStore *)self unmapMappedTopicIdentifier:itemString mappingIdentifier:v146 error:&v190];
          obja = v190;
          if (v163)
          {
            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            contexta = v163;
            v51 = [contexta countByEnumeratingWithState:&v186 objects:v206 count:16];
            if (v51)
            {
              v52 = *v187;
              do
              {
                for (k = 0; k != v51; ++k)
                {
                  if (*v187 != v52)
                  {
                    objc_enumerationMutation(contexta);
                  }

                  v54 = *(*(&v186 + 1) + 8 * k);
                  v55 = objc_autoreleasePoolPush();
                  v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Q%@", v54];
                  v57 = [v47 objectForKeyedSubscript:v56];
                  v58 = v57 == 0;

                  if (v58)
                  {
                    v59 = objc_opt_new();
                    [v47 setObject:v59 forKeyedSubscript:v56];
                  }

                  v60 = [v47 objectForKeyedSubscript:v56];
                  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v50, "itemFeedbackType")}];
                  [v60 addObject:v61];

                  objc_autoreleasePoolPop(v55);
                }

                v51 = [contexta countByEnumeratingWithState:&v186 objects:v206 count:16];
              }

              while (v51);
            }
          }

          else
          {
            contexta = pp_default_log_handle();
            if (os_log_type_enabled(contexta, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v201 = itemString;
              v202 = 2112;
              v203 = v146;
              v204 = 2112;
              v205 = obja;
              _os_log_error_impl(&dword_23224A000, contexta, OS_LOG_TYPE_ERROR, "Error while getting unmapped topics for mapped topic %@ under mapping %@: %@", buf, 0x20u);
            }
          }

          objc_autoreleasePoolPop(v155);
          v48 = v153 + 1;
        }

        while (v153 + 1 != v148);
        v148 = [v144 countByEnumeratingWithState:v208 objects:&v212 count:16];
      }

      while (v148);
    }

    v62 = objc_opt_new();
    [v62 setScoringDate:v135];
    [v62 setToDate:v135];
    [v62 setOrderByIdentifier:1];
    v63 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys2 = [v47 allKeys];
    v65 = [v63 initWithArray:allKeys2];
    [v62 setMatchingTopicIds:v65];

    v66 = objc_opt_new();
    v206[0] = 0;
    v206[1] = v206;
    v206[2] = 0x3032000000;
    v206[3] = __Block_byref_object_copy__20434;
    v206[4] = __Block_byref_object_dispose__20435;
    v207 = &stru_284759D38;
    *&v186 = 0;
    *&v212 = MEMORY[0x277D85DD0];
    *(&v212 + 1) = 3221225472;
    v213 = __115__PPLocalTopicStore__mappedTopicsFilterPendingFeedbackItems_scoringDate_clientIdentifier_clientBundleId_mappingId___block_invoke;
    v214 = &unk_278977538;
    v217 = v206;
    v67 = v47;
    v215 = v67;
    v68 = v66;
    v216 = v68;
    v69 = [(PPLocalTopicStore *)self iterTopicRecordsWithQuery:v62 error:&v186 block:&v212];
    v70 = v186;
    if (v69)
    {
      if (![v68 count])
      {
LABEL_92:

        _Block_object_dispose(v206, 8);
        v206[0] = 0;
        v129 = [(PPLocalTopicStore *)self _logFeedbackSessionsWithFeedback:v136 error:v206];
        v130 = v206[0];
        if ((v129 & 1) == 0)
        {
          v131 = pp_topics_log_handle();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v212) = 138412290;
            *(&v212 + 4) = v130;
            _os_log_error_impl(&dword_23224A000, v131, OS_LOG_TYPE_ERROR, "PPLocalTopicStore: error generating sessions %@", &v212, 0xCu);
          }
        }

        goto LABEL_97;
      }

      v71 = [objc_alloc(MEMORY[0x277D3A328]) initWithFeedbackItems:v68 timestamp:v135 clientIdentifier:v134 clientBundleId:v133 mappingId:v146];
      [(PPTopicStorage *)self->_storage donateTopicFeedback:v71];
      v72 = objc_opt_new();
      [v72 setClientId:v134];
      [v72 setMappingId:v146];
      concatenatedTreatmentNames = [(PPTrialWrapper *)self->_trialWrapper concatenatedTreatmentNames];
      [v72 setActiveTreatments:concatenatedTreatmentNames];

      mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
      [mEMORY[0x277D41DA8] trackScalarForMessage:v72 count:{objc_msgSend(v68, "count")}];
    }

    else
    {
      v71 = pp_default_log_handle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *v208 = 138412290;
        *&v208[4] = v70;
        _os_log_error_impl(&dword_23224A000, v71, OS_LOG_TYPE_ERROR, "_processTopicPendingFeedback: error from iterTopicRecordsWithQuery: %@", v208, 0xCu);
      }
    }

    goto LABEL_92;
  }

  v4 = feedbackCopy;
  if (self)
  {
    v156 = v4;
    feedbackItems3 = [v4 feedbackItems];
    v76 = [PPLocalTopicStore _feedbackItemsByItemString:feedbackItems3];

    v77 = objc_alloc(MEMORY[0x277CBEB58]);
    allKeys3 = [v76 allKeys];
    v79 = [v77 initWithArray:allKeys3];

    v80 = objc_opt_new();
    v154 = objc_opt_new();
    timestamp7 = [v156 timestamp];
    [v154 setScoringDate:timestamp7];

    timestamp8 = [v156 timestamp];
    [v154 setToDate:timestamp8];

    [v154 setOrderByIdentifier:1];
    clientBundleId7 = [v156 clientBundleId];
    v84 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:clientBundleId7 domain:0];
    [v154 setExcludingSourceBundleIds:v84];

    v85 = objc_alloc(MEMORY[0x277CBEB98]);
    feedbackItems4 = [v156 feedbackItems];
    v87 = [feedbackItems4 _pas_proxyArrayWithMapping:&__block_literal_global_390_20443];
    v88 = [v85 initWithArray:v87];
    [v154 setMatchingTopicIds:v88];

    *&v186 = 0;
    *(&v186 + 1) = &v186;
    *&v187 = 0x3032000000;
    *(&v187 + 1) = __Block_byref_object_copy__20434;
    *&v188 = __Block_byref_object_dispose__20435;
    *(&v188 + 1) = &stru_284759D38;
    *&v177 = 0;
    v195[0] = MEMORY[0x277D85DD0];
    v195[1] = 3221225472;
    v195[2] = __58__PPLocalTopicStore__processPortraitTopicPendingFeedback___block_invoke_2;
    v195[3] = &unk_2789774E8;
    v199 = &v186;
    osloga = v80;
    v196 = osloga;
    v166 = v76;
    v197 = v166;
    v149 = v79;
    v198 = v149;
    LOBYTE(v76) = [(PPLocalTopicStore *)self iterTopicRecordsWithQuery:v154 error:&v177 block:v195];
    v147 = v177;
    if (v76)
    {
      if ([osloga count])
      {
        v89 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp9 = [v156 timestamp];
        clientIdentifier6 = [v156 clientIdentifier];
        clientBundleId8 = [v156 clientBundleId];
        mappingId3 = [v156 mappingId];
        v94 = [v89 initWithFeedbackItems:osloga timestamp:timestamp9 clientIdentifier:clientIdentifier6 clientBundleId:clientBundleId8 mappingId:mappingId3];

        [PPFeedbackStorage logFeedback:v94 domain:0 domainStatus:2 inBackground:1];
        feedbackItems5 = [v94 feedbackItems];
        clientBundleId9 = [v156 clientBundleId];
        clientIdentifier7 = [v156 clientIdentifier];
        [PPFeedbackUtils recordUserEventsFromFeedback:v156 matchingFeedbackItems:feedbackItems5 clientBundleId:clientBundleId9 clientIdentifier:clientIdentifier7 domain:0];

        *&v173 = 0;
        LOBYTE(clientBundleId9) = [(PPLocalTopicStore *)self _logFeedbackSessionsWithFeedback:v94 error:&v173];
        v98 = v173;
        if ((clientBundleId9 & 1) == 0)
        {
          v99 = pp_topics_log_handle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v212) = 138412290;
            *(&v212 + 4) = v98;
            _os_log_error_impl(&dword_23224A000, v99, OS_LOG_TYPE_ERROR, "PPLocalTopicStore: failed in session logging: %@", &v212, 0xCu);
          }
        }

        [(PPTopicStorage *)self->_storage donateTopicFeedback:v94];
      }

      objb = objc_opt_new();
      v100 = objc_opt_new();
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v161 = v149;
      v101 = [v161 countByEnumeratingWithState:&v191 objects:&v212 count:16];
      if (v101)
      {
        v164 = *v192;
        do
        {
          v169 = v101;
          for (m = 0; m != v169; ++m)
          {
            if (*v192 != v164)
            {
              objc_enumerationMutation(v161);
            }

            v103 = *(*(&v191 + 1) + 8 * m);
            contextb = objc_autoreleasePoolPush();
            v104 = MEMORY[0x277CCAC68];
            v105 = v103;
            v106 = [[v104 alloc] initWithPattern:@"Q[0-9]{1 options:10}" error:{0, 0}];
            v107 = [v106 rangeOfFirstMatchInString:v105 options:0 range:{0, objc_msgSend(v105, "length")}];
            v109 = v108;

            if (v107 == 0x7FFFFFFFFFFFFFFFLL && v109 == 0)
            {
              v210 = 0u;
              v211 = 0u;
              *v208 = 0u;
              v209 = 0u;
              v111 = [v166 objectForKeyedSubscript:v105];
              v112 = [v111 countByEnumeratingWithState:v208 objects:v206 count:16];
              if (v112)
              {
                v113 = *v209;
                do
                {
                  for (n = 0; n != v112; ++n)
                  {
                    if (*v209 != v113)
                    {
                      objc_enumerationMutation(v111);
                    }

                    v115 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:&stru_284759D38 itemFeedbackType:{objc_msgSend(*(*&v208[8] + 8 * n), "itemFeedbackType")}];
                    [v100 addObject:v115];
                  }

                  v112 = [v111 countByEnumeratingWithState:v208 objects:v206 count:16];
                }

                while (v112);
              }
            }

            else
            {
              v111 = [v166 objectForKeyedSubscript:v105];
              [objb addObjectsFromArray:v111];
            }

            objc_autoreleasePoolPop(contextb);
          }

          v101 = [v161 countByEnumeratingWithState:&v191 objects:&v212 count:16];
        }

        while (v101);
      }

      if ([objb count])
      {
        v116 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp10 = [v156 timestamp];
        clientIdentifier8 = [v156 clientIdentifier];
        clientBundleId10 = [v156 clientBundleId];
        mappingId4 = [v156 mappingId];
        v121 = [v116 initWithFeedbackItems:objb timestamp:timestamp10 clientIdentifier:clientIdentifier8 clientBundleId:clientBundleId10 mappingId:mappingId4];

        [PPFeedbackStorage logFeedback:v121 domain:0 domainStatus:2 inBackground:1];
      }

      if ([v100 count])
      {
        v122 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp11 = [v156 timestamp];
        clientIdentifier9 = [v156 clientIdentifier];
        clientBundleId11 = [v156 clientBundleId];
        mappingId5 = [v156 mappingId];
        v127 = [v122 initWithFeedbackItems:v100 timestamp:timestamp11 clientIdentifier:clientIdentifier9 clientBundleId:clientBundleId11 mappingId:mappingId5];

        [PPFeedbackStorage logFeedback:v127 domain:0 domainStatus:0 inBackground:1];
      }

      v128 = objb;
    }

    else
    {
      v128 = pp_default_log_handle();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v212) = 138412290;
        *(&v212 + 4) = v147;
        _os_log_error_impl(&dword_23224A000, v128, OS_LOG_TYPE_ERROR, "_processTopicPendingFeedback: error from iterTopicRecordsWithQuery: %@", &v212, 0xCu);
      }
    }

    _Block_object_dispose(&v186, 8);
    v4 = v156;
  }

LABEL_99:
}

- (id)_feedbackItemsByItemString:(void *)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = stringCopy;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        itemString = [v8 itemString];
        v11 = [v2 objectForKeyedSubscript:itemString];

        if (!v11)
        {
          v12 = objc_opt_new();
          [v2 setObject:v12 forKeyedSubscript:itemString];
        }

        v13 = [v2 objectForKeyedSubscript:itemString];
        [v13 addObject:v8];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v2;
}

void __58__PPLocalTopicStore__processPortraitTopicPendingFeedback___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  v5 = [v17 topic];
  v6 = [v5 clusterIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v17 topic];
    v9 = [v8 clusterIdentifier];
    v10 = [v9 isEqualToString:*(*(*(a1 + 56) + 8) + 40)];

    if ((v10 & 1) == 0)
    {
      v11 = [v17 topic];
      v12 = [v11 topicIdentifier];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
      [v15 addObjectsFromArray:v16];

      [*(a1 + 48) removeObject:*(*(*(a1 + 56) + 8) + 40)];
      if (![*(a1 + 48) count])
      {
        *a3 = 1;
      }
    }
  }

  else
  {
  }
}

- (uint64_t)_logFeedbackSessionsWithFeedback:(void *)feedback error:
{
  v157 = *MEMORY[0x277D85DE8];
  v4 = a2;
  clientBundleId = [v4 clientBundleId];
  v6 = [PPFeedbackUtils shouldSample:clientBundleId];

  if (!v6)
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "PPLocalTopicStore: No feedback session logs collection performed due to sampling.", buf, 2u);
    }

    v16 = 1;
    goto LABEL_91;
  }

  v7 = objc_opt_new();
  [v7 setPredictionType:1];
  v8 = [PPFeedbackUtils feedbackMetadataForBaseFeedback:v4];
  [v7 setFeedbackMetadata:v8];

  feedbackItems = [v4 feedbackItems];
  v124 = objc_opt_new();
  v120 = objc_opt_new();
  v9 = objc_opt_new();
  [v9 setLimit:1000];
  clientBundleId2 = [v4 clientBundleId];
  if (clientBundleId2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x277CBEB98]);
    clientBundleId3 = [v4 clientBundleId];
    v14 = [v12 initWithObjects:{clientBundleId3, 0}];

    objc_autoreleasePoolPop(v11);
    [v9 setExcludingSourceBundleIds:v14];
  }

  else
  {
    [v9 setExcludingSourceBundleIds:0];
  }

  v146 = 0;
  v17 = [self rankedTopicsWithQuery:v9 error:&v146];
  v18 = v146;
  v19 = v18;
  if (!v17)
  {
    if (feedback)
    {
      v64 = v18;
      *feedback = v19;
    }

    v65 = pp_topics_log_handle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v156 = v19;
      _os_log_error_impl(&dword_23224A000, v65, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from rankedTopicsWithQuery: %@", buf, 0xCu);
    }

    v147 = 0;
    goto LABEL_90;
  }

  feedbackCopy = feedback;
  v115 = v18;
  v108 = v9;
  v118 = v7;
  v113 = v4;
  v119 = objc_opt_new();
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v107 = v17;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v142 objects:v154 count:16];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = *v143;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v143 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v142 + 1) + 8 * i);
      v25 = objc_autoreleasePoolPush();
      item = [v24 item];
      topicIdentifier = [item topicIdentifier];
      if ([topicIdentifier length])
      {
        item2 = [v24 item];
        topicIdentifier2 = [item2 topicIdentifier];
        v30 = [topicIdentifier2 characterAtIndex:0];

        if (v30 != 81)
        {
          goto LABEL_19;
        }

        item3 = [v24 item];
        topicIdentifier3 = [item3 topicIdentifier];
        item = [topicIdentifier3 substringFromIndex:1];

        topicIdentifier = [v120 numberFromString:item];
        if (topicIdentifier)
        {
          [v119 addObject:topicIdentifier];
        }
      }

LABEL_19:
      objc_autoreleasePoolPop(v25);
    }

    v21 = [obj countByEnumeratingWithState:&v142 objects:v154 count:16];
  }

  while (v21);
LABEL_21:

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v33 = feedbackItems;
  v116 = [v33 countByEnumeratingWithState:&v138 objects:v153 count:16];
  if (v116)
  {
    v114 = *v139;
    v4 = v113;
    v7 = v118;
    v34 = 0x27896F000;
    v111 = v33;
LABEL_23:
    v35 = 0;
    while (1)
    {
      if (*v139 != v114)
      {
        objc_enumerationMutation(v33);
      }

      v36 = *(*(&v138 + 1) + 8 * v35);
      v37 = objc_autoreleasePoolPush();
      isMapped = [v4 isMapped];
      itemString = [v36 itemString];
      v40 = itemString;
      if (isMapped)
      {
        break;
      }

      v43 = [itemString length];

      if (v43 >= 2)
      {
        itemString2 = [v36 itemString];
        v45 = [itemString2 characterAtIndex:0];
        itemString3 = [v36 itemString];
        v42 = itemString3;
        if (v45 == 81)
        {
          v47 = [itemString3 substringFromIndex:1];

          v42 = v47;
        }

        v48 = [v120 numberFromString:v42];
        if (v48)
        {
          v49 = v48;
          obja = v35;
          v117 = v37;
          v151 = v48;
          v152 = &unk_284786120;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];

          v42 = v50;
          goto LABEL_34;
        }

LABEL_46:

        v7 = v118;
      }

      objc_autoreleasePoolPop(v37);
      v35 = v35 + 1;
      if (v35 == v116)
      {
        v116 = [v33 countByEnumeratingWithState:&v138 objects:v153 count:16];
        if (v116)
        {
          goto LABEL_23;
        }

        goto LABEL_59;
      }
    }

    obja = v35;
    mappingId = [v4 mappingId];
    v137 = v115;
    v42 = [self unmapMappedTopicIdentifier:v40 mappingIdentifier:mappingId error:&v137];
    v19 = v137;

    if (!v42)
    {
      v66 = pp_topics_log_handle();
      v17 = v107;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v156 = v19;
        _os_log_error_impl(&dword_23224A000, v66, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from unmapMappedTopicIdentifier: %@", buf, 0xCu);
      }

      v147 = 0;
      objc_autoreleasePoolPop(v37);
      v7 = v118;
      goto LABEL_89;
    }

    v117 = v37;
    v115 = v19;
LABEL_34:
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v51 = v119;
    v52 = [v51 countByEnumeratingWithState:&v133 objects:v150 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = *v134;
LABEL_36:
      v56 = 0;
      while (1)
      {
        if (*v134 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v133 + 1) + 8 * v56);
        v58 = [v42 objectForKeyedSubscript:v57];

        if (v58)
        {
          v59 = objc_alloc(MEMORY[0x277CCACA8]);
          stringValue = [v57 stringValue];
          v61 = [v59 initWithFormat:@"Q%@", stringValue];

          v62 = [PPFeedbackUtils feedbackItemForPPFeedbackItem:v36];
          v63 = [v124 objectForKeyedSubscript:v61];
          if (!v63)
          {
            v63 = objc_opt_new();
            [v124 setObject:v63 forKeyedSubscript:v61];
          }

          [v63 addObject:v62];
          ++v54;

          if (v54 > 4)
          {
            break;
          }
        }

        if (v53 == ++v56)
        {
          v53 = [v51 countByEnumeratingWithState:&v133 objects:v150 count:16];
          if (v53)
          {
            goto LABEL_36;
          }

          break;
        }
      }
    }

    v33 = v111;
    v4 = v113;
    v34 = 0x27896F000;
    v37 = v117;
    v35 = obja;
    goto LABEL_46;
  }

  v7 = v118;
  v34 = 0x27896F000uLL;
LABEL_59:

  v67 = objc_opt_new();
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v68 = v124;
  v69 = [v68 countByEnumeratingWithState:&v129 objects:v149 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v130;
    do
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v130 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v129 + 1) + 8 * j);
        [v67 addObject:v73];
        v74 = objc_opt_new();
        LODWORD(v75) = -1.0;
        v76 = [*(v34 + 2296) scoredItemWithFeaturesForFeatureDictionary:v74 score:v75];
        v77 = [v68 objectForKeyedSubscript:v73];
        [v76 setFeedbackItems:v77];

        [v7 addScoredItems:v76];
      }

      v70 = [v68 countByEnumeratingWithState:&v129 objects:v149 count:16];
    }

    while (v70);
  }

  v78 = pp_topics_log_handle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    v79 = [v68 count];
    *buf = 134283521;
    v156 = v79;
    _os_log_impl(&dword_23224A000, v78, OS_LOG_TYPE_INFO, "Feedback logging: retrieved features for %{private}lu topics: ", buf, 0xCu);
  }

  v80 = objc_opt_new();
  [v80 setLimit:1000];
  clientBundleId4 = [v113 clientBundleId];
  if (clientBundleId4)
  {
    v82 = objc_autoreleasePoolPush();
    v83 = objc_alloc(MEMORY[0x277CBEB98]);
    clientBundleId5 = [v113 clientBundleId];
    v85 = [v83 initWithObjects:{clientBundleId5, 0}];

    objc_autoreleasePoolPop(v82);
    [v80 setExcludingSourceBundleIds:v85];
  }

  else
  {
    [v80 setExcludingSourceBundleIds:0];
  }

  v112 = v67;
  [v80 setMatchingTopicIds:v67];
  objb = v80;
  [self topicRecordsWithQuery:v80 error:feedbackCopy];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v86 = v128 = 0u;
  v87 = [v86 countByEnumeratingWithState:&v125 objects:v148 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = 0;
    v90 = *v126;
    while (2)
    {
      for (k = 0; k != v88; ++k)
      {
        if (*v126 != v90)
        {
          objc_enumerationMutation(v86);
        }

        v92 = *(*(&v125 + 1) + 8 * k);
        v93 = *(v34 + 2296);
        source = [v92 source];
        bundleId = [source bundleId];
        LODWORD(v93) = [v93 shouldSampleExtraction:bundleId];

        if (v93 && ([v92 topic], v96 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v96, "topicIdentifier"), v97 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v68, "objectForKey:", v97), v98 = objc_claimAutoreleasedReturnValue(), v98, v97, v96, v98))
        {
          if (v89 > 0x63)
          {
            v7 = v118;
            v34 = 0x27896F000;
            goto LABEL_86;
          }

          v99 = objc_opt_new();
          v100 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v92, "algorithm")}];
          [v99 setAlgorithm:v100];

          source2 = [v92 source];
          bundleId2 = [source2 bundleId];
          [v99 setSourceBundleId:bundleId2];

          [v92 initialScore];
          [v99 setScore:?];
          v7 = v118;
          [v118 addExtractedDonations:v99];
          ++v89;
        }

        else
        {
          v7 = v118;
        }

        v34 = 0x27896F000;
      }

      v88 = [v86 countByEnumeratingWithState:&v125 objects:v148 count:16];
      if (v88)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v89 = 0;
  }

LABEL_86:

  v103 = pp_topics_log_handle();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
  {
    *buf = 134283521;
    v156 = v89;
    _os_log_impl(&dword_23224A000, v103, OS_LOG_TYPE_INFO, "Feedback logging: logged %{private}lu topic records: ", buf, 0xCu);
  }

  [*(v34 + 2296) addBoilerplateToFeedbackLog:v7];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] logMessage:v7];

  v147 = 1;
  v33 = v112;
  v4 = v113;
  v17 = v107;
  v19 = v115;
LABEL_89:

  v9 = v108;
LABEL_90:

  v16 = v147;
LABEL_91:

  return v16;
}

void __56__PPLocalTopicStore__processMappedTopicPendingFeedback___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) objectForKeyedSubscript:v8];
    [v6 addObjectsFromArray:v7];

    [*(a1 + 32) removeObject:v8];
    if (![*(a1 + 32) count])
    {
      *a4 = 1;
    }
  }
}

- (PPTopicTransform)_topicTransformForId:(uint64_t)id
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (id)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_284759D38];
    objc_autoreleasePoolPop(v4);
    v6 = *(id + 24);
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.dat", v5];
    v8 = [v6 filepathForFactor:v7 namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

    v9 = pp_topics_log_handle();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "Loading topic transform file from: %@", buf, 0xCu);
      }

      v11 = [[PPTopicTransform alloc] initWithPath:v8 mappingId:v3];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "Cannot locate asset path for transform resource: %@", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __115__PPLocalTopicStore__mappedTopicsFilterPendingFeedbackItems_scoringDate_clientIdentifier_clientBundleId_mappingId___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 topic];
  v5 = [v4 clusterIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 topic];
    v8 = [v7 clusterIdentifier];
    v9 = [v8 isEqualToString:*(*(*(a1 + 48) + 8) + 40)];

    if ((v9 & 1) == 0)
    {
      v23 = v3;
      v10 = [v3 topic];
      v11 = [v10 topicIdentifier];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
      v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v25 = *v27;
        do
        {
          v16 = 0;
          do
          {
            if (*v27 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v26 + 1) + 8 * v16);
            v18 = objc_autoreleasePoolPush();
            v19 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
            v20 = [v19 countForObject:v17];

            for (; v20; --v20)
            {
              v21 = objc_autoreleasePoolPush();
              v22 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:*(*(*(a1 + 48) + 8) + 40) itemFeedbackType:{objc_msgSend(v17, "intValue")}];
              [*(a1 + 40) addObject:v22];

              objc_autoreleasePoolPop(v21);
            }

            objc_autoreleasePoolPop(v18);
            ++v16;
          }

          while (v16 != v15);
          v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v15);
      }

      v3 = v23;
    }
  }

  else
  {
  }
}

- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_topics_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138739971;
    v13 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPTopic universal search spotlight feedback received: %{sensitive}@", buf, 0xCu);
  }

  v8 = +[PPMetricsUtils loggingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PPLocalTopicStore_registerUniversalSearchSpotlightFeedback_completion___block_invoke;
  block[3] = &unk_2789790A8;
  v9 = feedbackCopy;
  v11 = v9;
  dispatch_async(v8, block);

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

void __73__PPLocalTopicStore_registerUniversalSearchSpotlightFeedback_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 clientBundleId];
  v3 = [*(a1 + 32) clientIdentifier];
  [PPFeedbackUtils recordUniversalSearchSpotlightStatsFromFeedback:v2 clientBundleId:v4 clientIdentifier:v3];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  isMapped = [feedbackCopy isMapped];
  v8 = pp_topics_log_handle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (isMapped)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v13 = 138739971;
    v14 = feedbackCopy;
    v10 = "Mapped Topic feedback received: %{sensitive}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v13 = 138739971;
    v14 = feedbackCopy;
    v10 = "Topic feedback received: %{sensitive}@";
  }

  _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, v10, &v13, 0xCu);
LABEL_5:

  v11 = objc_opt_new();
  v12 = [PPInternalFeedback fromBaseFeedback:feedbackCopy storeType:2];
  [v11 storePendingFeedback:v12 storeType:2 error:0];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)logDonationErrorForReason:(int64_t)reason errorCode:(unint64_t)code source:(id)source
{
  sourceCopy = source;
  v9 = +[PPMetricsUtils loggingQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__PPLocalTopicStore_logDonationErrorForReason_errorCode_source___block_invoke;
  v11[3] = &unk_278977478;
  v11[4] = self;
  v12 = sourceCopy;
  reasonCopy = reason;
  codeCopy = code;
  v10 = sourceCopy;
  dispatch_async(v9, v11);
}

void __64__PPLocalTopicStore_logDonationErrorForReason_errorCode_source___block_invoke(void *a1)
{
  v4 = objc_opt_new();
  [v4 setReason:{+[PPMetricsUtils mapTopicDonationErrorForPET2:](PPMetricsUtils, "mapTopicDonationErrorForPET2:", a1[6])}];
  v2 = [*(a1[4] + 24) concatenatedTreatmentNames];
  [v4 setActiveTreatments:v2];

  [v4 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", a1[5])}];
  [v4 setCode:a1[7]];
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  [v3 trackScalarForMessage:v4];
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [(PPTopicStorage *)self->_storage clearWithError:error deletedCount:count];
  v7 = v6;
  if (error && !v6)
  {
    v8 = pp_topics_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *error;
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "clearWithError error: %@", &v11, 0xCu);
    }
  }

  [(PPLocalTopicStore *)self topicInvalidationCallback];
  return v7;
}

- (void)topicInvalidationCallback
{
  if (self)
  {
    v1 = *(self + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PPLocalTopicStore_topicInvalidationCallback__block_invoke;
    block[3] = &unk_2789790A8;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

void __46__PPLocalTopicStore_topicInvalidationCallback__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPLocalTopicStore invalidating topics", buf, 2u);
  }

  PPPostNotification("com.apple.proactive.PersonalizationPortrait.topicsInvalidated");
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [v3 computeAndCacheTopicScores:&v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPLocalTopicStore had an error while trying to refresh the cache after topic invalidation: %@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v9 = v5;
    [v7 clearTopicScoresCache:&v9];
    v8 = v9;

    v5 = v8;
  }
}

- (BOOL)cloudSyncWithError:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  if (userKnowledgeStore)
  {
    v6 = pp_topics_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: exporting locally-generated topic records", buf, 2u);
    }

    v7 = objc_opt_new();
    storage = self->_storage;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __40__PPLocalTopicStore_cloudSyncWithError___block_invoke;
    v28[3] = &unk_278977450;
    v9 = v7;
    v29 = v9;
    [(PPTopicStorage *)storage exportRecordsToDKWithShouldContinueBlock:v28];
    v10 = pp_topics_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: synchronizing _DKKnowledgeStore", buf, 2u);
    }

    v27 = 0;
    v11 = [userKnowledgeStore synchronizeWithError:&v27];
    v12 = v27;
    if (v11)
    {
      v13 = pp_topics_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: importing remotely-generated topic records", buf, 2u);
      }

        ;
      }

      v14 = pp_topics_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: processing _DKKnowledgeStore remote topic deletions", buf, 2u);
      }

      [(PPTopicStorage *)self->_storage processNewDKEventDeletions];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      localizedDescription = [v12 localizedDescription];
      v20 = [v18 initWithFormat:@"Unable to synchronize _DKKnowledgeStore: %@", localizedDescription];

      if (error)
      {
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v22 = *MEMORY[0x277D3A580];
        v30 = *MEMORY[0x277CCA450];
        v31 = v20;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *error = [v21 initWithDomain:v22 code:1 userInfo:v23];
      }

      v24 = pp_topics_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v20;
        _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (error)
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = *MEMORY[0x277D3A580];
      v34 = *MEMORY[0x277CCA450];
      v35[0] = @"Unable to connect to _DKKnowledgeStore";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      *error = [v15 initWithDomain:v16 code:1 userInfo:v17];
    }

    v9 = pp_topics_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = @"Unable to connect to _DKKnowledgeStore";
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)deleteAllTopicsOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error
{
  v10 = 0;
  v9 = 0;
  v7 = [(PPTopicStorage *)self->_storage deleteAllTopicsOlderThanDate:date atLeastOneTopicRemoved:&v10 deletedCount:&v9 error:error];
  if (v10 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v9;
  }

  return v7;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId algorithm:(unint64_t)algorithm olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  v13 = 0;
  v12 = 0;
  v10 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupId:groupId olderThanDate:than algorithm:algorithm atLeastOneTopicRemoved:&v13 deletedCount:&v12 error:error];
  if (v13 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v12;
  }

  return v10;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupId:groupId olderThanDate:than atLeastOneTopicRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id algorithm:algorithm atLeastOneTopicRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  v10 = 0;
  v9 = 0;
  v7 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id atLeastOneTopicRemoved:&v10 deletedCount:&v9 error:error];
  if (v10 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v9;
  }

  return v7;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupIds:ids algorithm:algorithm atLeastOneTopicRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id groupIds:ids atLeastOneTopicRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id documentIds:ids algorithm:algorithm atLeastOneTopicRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllTopicsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPTopicStorage *)self->_storage deleteAllTopicsFromSourcesWithBundleId:id documentIds:ids atLeastOneTopicRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id algorithm:(unint64_t)algorithm deletedCount:(unint64_t *)count error:(id *)error
{
  v9 = 0;
  v7 = [(PPTopicStorage *)self->_storage deleteAllTopicsWithTopicId:id algorithm:algorithm atLeastOneTopicRemoved:&v9 deletedCount:count error:error];
  if (v9 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  return v7;
}

- (BOOL)deleteAllTopicsWithTopicId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  v8 = 0;
  v6 = [(PPTopicStorage *)self->_storage deleteAllTopicsWithTopicId:id atLeastOneTopicRemoved:&v8 deletedCount:count error:error];
  if (v8 == 1)
  {
    [(PPLocalTopicStore *)self topicInvalidationCallback];
  }

  return v6;
}

- (BOOL)flushDonationsWithError:(id *)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PPLocalTopicStore_flushDonationsWithError___block_invoke;
  v5[3] = &unk_278977428;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  if (*(v7 + 24) == 1)
  {
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.topicsDidChangeMeaningfully");
  }

  _Block_object_dispose(&v6, 8);
  return 1;
}

void __45__PPLocalTopicStore_flushDonationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pp_topics_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "Flushing donations", v5, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3[8];
  v3[8] = 0;
}

- (BOOL)donateTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score exactMatchesInSourceText:(id)text error:(id *)error
{
  syncCopy = sync;
  v146 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  sourceCopy = source;
  textCopy = text;
  if (topicsCopy)
  {
    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalTopicStore.m" lineNumber:1185 description:{@"Invalid parameter not satisfying: %@", @"topics"}];

    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocalTopicStore.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"source"}];

LABEL_3:
  v18 = pp_topics_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [topicsCopy count];
    v20 = [MEMORY[0x277D3A548] describeAlgorithm:algorithm];
    *buf = 134218498;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = sourceCopy;
    *&buf[22] = 2112;
    v140 = v20;
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore received a donation of %tu topics from source: %@, algorithm: %@", buf, 0x20u);
  }

  v21 = +[PPSettings sharedInstance];
  bundleId = [sourceCopy bundleId];
  v23 = [v21 bundleIdentifierIsEnabledForDonation:bundleId];

  if ((v23 & 1) == 0)
  {
    v28 = pp_topics_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      bundleId2 = [sourceCopy bundleId];
      *buf = 138412290;
      *&buf[4] = bundleId2;
      _os_log_debug_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEBUG, "Suppressed topic donation from disabled bundleId: %@", buf, 0xCu);
    }

    LOBYTE(v29) = 1;
    goto LABEL_71;
  }

  if (!syncCopy)
  {
    goto LABEL_15;
  }

  v24 = +[PPSettings sharedInstance];
  bundleId3 = [sourceCopy bundleId];
  v26 = [v24 bundleIdentifierIsEnabledForCloudKit:bundleId3];

  if ((v26 & 1) == 0)
  {
    v30 = pp_topics_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      bundleId4 = [sourceCopy bundleId];
      *buf = 138412290;
      *&buf[4] = bundleId4;
      _os_log_debug_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEBUG, "Suppressed topic cloudSync on donation from disabled bundleId: %@", buf, 0xCu);
    }

LABEL_15:
    v27 = 0;
    goto LABEL_16;
  }

  v27 = 1;
LABEL_16:
  v115 = topicsCopy;
  v116 = textCopy;
  v114 = sourceCopy;
  if (algorithm == 5 && ([sourceCopy documentId], v31 = objc_claimAutoreleasedReturnValue(), v32 = *MEMORY[0x277D3A6E0], v33 = objc_msgSend(v31, "hasPrefix:", *MEMORY[0x277D3A6E0]), v31, v33))
  {
    v113 = v27;
    v34 = topicsCopy;
    v35 = sourceCopy;
    v36 = v35;
    v112 = v34;
    if (self)
    {
      v120 = v35;
      v122 = objc_opt_new();
      v37 = [(PPTrialWrapper *)self->_trialWrapper plistForFactorName:@"PhotosTopicMap.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v38 = v34;
      v39 = [v38 countByEnumeratingWithState:&v128 objects:buf count:16];
      v111 = v32;
      if (!v39)
      {
        v42 = 1;
        goto LABEL_69;
      }

      v40 = v39;
      v41 = *v129;
      v119 = *MEMORY[0x277D3A580];
      v118 = *MEMORY[0x277D3A588];
      v42 = 1;
      while (1)
      {
        v43 = 0;
        do
        {
          if (*v129 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v44 = *(*(&v128 + 1) + 8 * v43);
          item = [v44 item];
          topicIdentifier = [item topicIdentifier];
          v47 = [v37 objectForKeyedSubscript:topicIdentifier];

          if (v47)
          {
            item2 = [v44 item];
            topicIdentifier2 = [item2 topicIdentifier];
            v50 = [v37 objectForKeyedSubscript:topicIdentifier2];

            v51 = objc_alloc(MEMORY[0x277D3A498]);
            v52 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v50];
            [v44 score];
            v53 = [v51 initWithItem:v52 score:?];

            [v122 addObject:v53];
LABEL_32:

            goto LABEL_33;
          }

          v54 = pp_topics_log_handle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            item3 = [v44 item];
            topicIdentifier3 = [item3 topicIdentifier];
            *v135 = 138739971;
            v136 = topicIdentifier3;
            _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_INFO, "PPLocalTopicStore: got unmatched photos topic: %{sensitive}@", v135, 0xCu);
          }

          if (error)
          {
            v57 = objc_alloc(MEMORY[0x277CCACA8]);
            item4 = [v44 item];
            topicIdentifier4 = [item4 topicIdentifier];
            v60 = [topicIdentifier4 length];
            bundleId5 = [v120 bundleId];
            v50 = [v57 initWithFormat:@"No unmapping found for Photos topic to QID: topic.length:%tu donated from %@", v60, bundleId5];

            v62 = pp_topics_log_handle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *v135 = 138412290;
              v136 = v50;
              _os_log_error_impl(&dword_23224A000, v62, OS_LOG_TYPE_ERROR, "%@", v135, 0xCu);
            }

            v63 = objc_alloc(MEMORY[0x277CCA9B8]);
            v133 = v118;
            v134 = v50;
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
            v42 = 0;
            *error = [v63 initWithDomain:v119 code:3 userInfo:v53];
            goto LABEL_32;
          }

          v42 = 0;
LABEL_33:
          ++v43;
        }

        while (v40 != v43);
        v64 = [v38 countByEnumeratingWithState:&v128 objects:buf count:16];
        v40 = v64;
        if (!v64)
        {
LABEL_69:

          v99 = objc_alloc(MEMORY[0x277D3A4D8]);
          v36 = v120;
          bundleId6 = [v120 bundleId];
          groupId = [v120 groupId];
          documentId = [v120 documentId];
          v103 = [documentId stringByReplacingOccurrencesOfString:v111 withString:&stru_284759D38];
          date = [v120 date];
          v105 = [v99 initWithBundleId:bundleId6 groupId:groupId documentId:v103 date:date];

          v29 = [(PPLocalTopicStore *)self donateTopics:v122 source:v105 algorithm:5 cloudSync:v113 sentimentScore:0 exactMatchesInSourceText:error error:score]& v42;
          goto LABEL_70;
        }
      }
    }

    LOBYTE(v29) = 0;
LABEL_70:

    sourceCopy = v114;
    topicsCopy = v115;
    textCopy = v116;
  }

  else
  {
    algorithmCopy = algorithm;
    selfCopy = self;
    v66 = [(PPLocalTopicStore *)self _coalesceScoredTopics:topicsCopy exactMatchesInSourceText:textCopy];
    if (self)
    {
      v67 = objc_opt_new();
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v68 = v66;
      v69 = [v68 countByEnumeratingWithState:&v128 objects:buf count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v129;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v129 != v71)
            {
              objc_enumerationMutation(v68);
            }

            first = [*(*(&v128 + 1) + 8 * i) first];
            [v67 addObject:first];
          }

          v70 = [v68 countByEnumeratingWithState:&v128 objects:buf count:16];
        }

        while (v70);
      }

      if ([v67 count])
      {
        v74 = [(PPTopicBlocklist *)self->_blocklist indicesOfBlockedTopicsInScoredTopicArray:v67];
        if ([v74 count])
        {
          v75 = [v67 count];
          v76 = [v74 count];
          v77 = pp_topics_log_handle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = [v67 count];
            *v135 = 134218240;
            v136 = v78;
            v137 = 2048;
            v138 = v75 - v76;
            _os_log_impl(&dword_23224A000, v77, OS_LOG_TYPE_INFO, "PPLocalTopicStore filtering scored topic list from %tu to %tu", v135, 0x16u);
          }

          v79 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v67, "count")}];
          [v79 removeIndexes:v74];
          selfCopy = [v68 objectsAtIndexes:v79];

          textCopy = v116;
        }

        else
        {
          selfCopy = v68;
        }
      }

      else
      {
        selfCopy = v68;
      }
    }

    if ([selfCopy count])
    {
      v80 = objc_opt_new();
      v81 = objc_opt_new();
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v82 = selfCopy;
      v83 = [v82 countByEnumeratingWithState:&v124 objects:v132 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *v125;
        do
        {
          for (j = 0; j != v84; ++j)
          {
            if (*v125 != v85)
            {
              objc_enumerationMutation(v82);
            }

            v87 = *(*(&v124 + 1) + 8 * j);
            first2 = [v87 first];
            [v80 addObject:first2];

            second = [v87 second];
            [v81 addObject:second];
          }

          v84 = [v82 countByEnumeratingWithState:&v124 objects:v132 count:16];
        }

        while (v84);
      }

      sourceCopy = v114;
      v29 = [(PPTopicStorage *)self->_storage donateTopics:v80 source:v114 algorithm:algorithmCopy cloudSync:v27 decayRate:v81 sentimentScore:error exactMatchesInSourceText:0.0 error:score];
      if (v29)
      {
        bundleId7 = [v114 bundleId];
        groupId2 = [v114 groupId];
        v92 = v80;
        v93 = bundleId7;
        v94 = groupId2;
        v95 = +[PPMetricsUtils loggingQueue];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __70__PPLocalTopicStore__logDonationForTopics_bundleId_algorithm_groupId___block_invoke;
        v140 = &unk_2789774A0;
        v96 = v93;
        v141 = v96;
        selfCopy2 = self;
        v97 = v92;
        v143 = v97;
        v145 = algorithmCopy;
        v98 = v94;
        v144 = v98;
        dispatch_async(v95, buf);

        [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_361];
      }

      textCopy = v116;
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    topicsCopy = v115;
  }

LABEL_71:

  return v29;
}

- (id)_coalesceScoredTopics:(void *)topics exactMatchesInSourceText:
{
  v5 = a2;
  topicsCopy = topics;
  if (self)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__PPLocalTopicStore__coalesceScoredTopics_exactMatchesInSourceText___block_invoke;
    v14 = &unk_278977968;
    v8 = v7;
    v15 = v8;
    v16 = topicsCopy;
    [v5 enumerateObjectsUsingBlock:&v11];
    v9 = objc_autoreleasePoolPush();
    self = [v8 allValues];
    objc_autoreleasePoolPop(v9);
  }

  return self;
}

void __70__PPLocalTopicStore__logDonationForTopics_bundleId_algorithm_groupId___block_invoke(uint64_t a1)
{
  v8 = objc_opt_new();
  [v8 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  v2 = [*(*(a1 + 40) + 24) concatenatedTreatmentNames];
  [v8 setActiveTreatments:v2];

  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  [v3 trackScalarForMessage:v8 count:{objc_msgSend(*(a1 + 48), "count")}];

  v4 = objc_opt_new();
  [v4 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v4 setAlgorithm:{+[PPMetricsUtils mapTopicAlgorithmForPET2:](PPMetricsUtils, "mapTopicAlgorithmForPET2:", *(a1 + 64))}];
  v5 = [PPMetricsUtils filterGroupIdAllowance:*(a1 + 56)];
  [v4 setGroupId:v5];

  v6 = [*(*(a1 + 40) + 24) concatenatedTreatmentNames];
  [v4 setActiveTreatments:v6];

  v7 = [MEMORY[0x277D41DA8] sharedInstance];
  [v7 trackDistributionForMessage:v4 value:{objc_msgSend(*(a1 + 48), "count")}];
}

void __68__PPLocalTopicStore__coalesceScoredTopics_exactMatchesInSourceText___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v29 = v5;
  v7 = [v5 item];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 first];

  v10 = MEMORY[0x277CCABB0];
  v11 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  if ([v11 BOOLValue])
  {
    v12 = [v10 numberWithInt:1];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v29 item];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = [v15 second];
    v12 = [v10 numberWithInt:{objc_msgSend(v16, "BOOLValue")}];
  }

  if (v9)
  {
    v17 = [v9 scoredTopic];
    [v17 score];
    v19 = v18;
    [v29 score];
    v21 = v19 + v20 * exp2(-[v9 occurrencesInSource]);

    v22 = objc_alloc(MEMORY[0x277D3A498]);
    v23 = [v29 item];
    v24 = [v22 initWithItem:v23 score:objc_msgSend(v29 resultPosition:"resultPosition") resultCount:{objc_msgSend(v29, "resultCount"), v21}];

    v25 = -[PPCoalescedScoredTopic initWithScoredTopic:occurrencesInSource:]([PPCoalescedScoredTopic alloc], "initWithScoredTopic:occurrencesInSource:", v24, ([v9 occurrencesInSource] + 1));
  }

  else
  {
    v25 = [[PPCoalescedScoredTopic alloc] initWithScoredTopic:v29 occurrencesInSource:1];
  }

  v26 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v25 second:v12];
  v27 = *(a1 + 32);
  v28 = [v29 item];
  [v27 setObject:v26 forKeyedSubscript:v28];
}

- (id)topicExtractionsFromText:(id)text clientProcessName:(id)name error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  textCopy = text;
  nameCopy = name;
  v9 = pp_topics_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v72 = [textCopy length];
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore: topicExtractionsFromText called with text length %tu", buf, 0xCu);
  }

  v10 = +[PPTopicExtractionPlugin sharedInstance];
  v11 = [v10 extractionsFromText:textCopy bundleId:nameCopy];

  v12 = pp_topics_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    topicRecords = [v11 topicRecords];
    v53 = [topicRecords count];
    *buf = 134217984;
    v72 = v53;
    _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "PPLocalTopicStore: topicExtractionsFromText found %tu topics", buf, 0xCu);
  }

  topicRecords2 = [v11 topicRecords];

  if (topicRecords2)
  {
    v55 = nameCopy;
    v56 = textCopy;
    v14 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v54 = v11;
    topicRecords3 = [v11 topicRecords];
    v16 = [topicRecords3 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v62;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v62 != v18)
          {
            objc_enumerationMutation(topicRecords3);
          }

          v20 = *(*(&v61 + 1) + 8 * i);
          v21 = objc_alloc(MEMORY[0x277D3A498]);
          topic = [v20 topic];
          [v20 initialScore];
          v23 = [v21 initWithItem:topic score:?];
          [v14 addObject:v23];
        }

        v17 = [topicRecords3 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v17);
    }

    if (self)
    {
      v24 = [(PPLocalTopicStore *)self _coalesceScoredTopics:v14 exactMatchesInSourceText:0];
      v25 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v65 objects:buf count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v66;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v66 != v29)
            {
              objc_enumerationMutation(v26);
            }

            first = [*(*(&v65 + 1) + 8 * j) first];
            [v25 addObject:first];
          }

          v28 = [v26 countByEnumeratingWithState:&v65 objects:buf count:16];
        }

        while (v28);
      }

      v32 = v25;
      if ([v32 count])
      {
        v33 = [(PPTopicBlocklist *)self->_blocklist indicesOfBlockedTopicsInScoredTopicArray:v32];
        if ([v33 count])
        {
          v34 = [v32 count];
          v35 = [v33 count];
          v36 = pp_topics_log_handle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = [v32 count];
            *buf = 134218240;
            v72 = v37;
            v73 = 2048;
            v74 = v34 - v35;
            _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_INFO, "PPLocalTopicStore filtering scored topic list from %tu to %tu", buf, 0x16u);
          }

          v38 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v32, "count")}];
          [v38 removeIndexes:v33];
          v39 = [v32 objectsAtIndexes:v38];
        }

        else
        {
          v39 = v32;
        }

        v11 = v54;
      }

      else
      {
        v32 = v32;
        v39 = v32;
        v11 = v54;
      }
    }

    else
    {
      v32 = 0;
      v39 = 0;
      v11 = v54;
    }

    v41 = pp_topics_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v39 count];
      *buf = 134217984;
      v72 = v42;
      _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore: topicExtractionsFromText finished coalescing and filtering with blocklist, %tu topics remain", buf, 0xCu);
    }

    v43 = [v39 sortedArrayUsingComparator:&__block_literal_global_339];

    v40 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v58;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v58 != v47)
          {
            objc_enumerationMutation(v44);
          }

          scoredTopic = [*(*(&v57 + 1) + 8 * k) scoredTopic];
          item = [scoredTopic item];
          [v40 addObject:item];
        }

        v46 = [v44 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v46);
    }

    nameCopy = v55;
    textCopy = v56;
  }

  else
  {
    v40 = MEMORY[0x277CBEBF8];
  }

  return v40;
}

uint64_t __70__PPLocalTopicStore_topicExtractionsFromText_clientProcessName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  v6 = [a2 scoredTopic];
  [v6 score];
  v8 = v7;
  v9 = [v5 scoredTopic];

  [v9 score];
  v11 = [v4 reverseCompareDouble:v8 withDouble:v10];

  return v11;
}

- (id)topicRecordsWithQuery:(id)query error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = pp_topics_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v10 = [fromDate description];
    toDate = [queryCopy toDate];
    v12 = [toDate description];
    *buf = 134218498;
    v21 = limit;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "topicRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v13 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__PPLocalTopicStore_topicRecordsWithQuery_error___block_invoke;
  v18[3] = &unk_278979120;
  v19 = v13;
  v14 = v13;
  if ([(PPLocalTopicStore *)self iterTopicRecordsWithQuery:queryCopy error:error block:v18])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (BOOL)iterTopicRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  [(PPLocalTopicStore *)self _logParametersForQuery:queryCopy client:0 method:@"iterTopicRecordsWithQuery"];
  v10 = pp_topics_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v13 = [fromDate description];
    toDate = [queryCopy toDate];
    v15 = [toDate description];
    *buf = 134218498;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v41 = v15;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "iterTopicRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  if ([queryCopy limit])
  {
    v16 = [queryCopy copy];
    [v16 setLimit:-1];
    v17 = objc_alloc(MEMORY[0x277CBEB18]);
    limit2 = [queryCopy limit];
    if (limit2 >= 0x40)
    {
      v19 = 64;
    }

    else
    {
      v19 = limit2;
    }

    v20 = [v17 initWithCapacity:v19];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke;
    aBlock[3] = &unk_278977398;
    v36 = v38;
    aBlock[4] = self;
    v21 = v20;
    v33 = v21;
    v35 = blockCopy;
    v37 = buf;
    v34 = queryCopy;
    v22 = _Block_copy(aBlock);
    storage = self->_storage;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke_2;
    v28[3] = &unk_2789773C0;
    v24 = v21;
    v29 = v24;
    v25 = v22;
    v30 = v25;
    v31 = v38;
    v26 = [(PPTopicStorage *)storage iterTopicRecordsWithQuery:v16 error:error block:v28];
    if (v26)
    {
      v25[2](v25);
    }

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    LOBYTE(v26) = 1;
  }

  return v26;
}

- (void)_logParametersForQuery:(void *)query client:(void *)client method:
{
  v26[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  queryCopy = query;
  clientCopy = client;
  if (self)
  {
    v24 = clientCopy;
    context = objc_autoreleasePoolPush();
    v25[0] = @"client";
    null = queryCopy;
    if (!queryCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v26[0] = null;
    v25[1] = @"excludedBundleIds";
    excludingSourceBundleIds = [v7 excludingSourceBundleIds];
    allObjects = [excludingSourceBundleIds allObjects];
    v13 = [allObjects _pas_componentsJoinedByString:@""];;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_284759D38;
    }

    v26[1] = v15;
    v25[2] = @"includedBundleIds";
    matchingSourceBundleIds = [v7 matchingSourceBundleIds];
    allObjects2 = [matchingSourceBundleIds allObjects];
    v18 = [allObjects2 _pas_componentsJoinedByString:@""];;
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_284759D38;
    }

    v26[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v22 logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.TopicQueryReceived" payload:v21 inBackground:0];

    if (!queryCopy)
    {
    }

    objc_autoreleasePoolPop(context);
    clientCopy = v24;
  }
}

void __59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v4;
    if (v3 && [v4 count])
    {
      v6 = [*(v3 + 32) indicesOfBlockedTopicsInRecordArray:v5];
      if ([v6 count])
      {
        v7 = [v5 count];
        v8 = [v6 count];
        v9 = pp_topics_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v24 = [v5 count];
          v25 = 2048;
          v26 = v7 - v8;
          _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPLocalTopicStore filtering topic record list from %tu to %tu", buf, 0x16u);
        }

        [v5 removeObjectsAtIndexes:v6];
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
LABEL_11:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(a1 + 56) + 16))(*(a1 + 56));
        ++*(*(*(a1 + 72) + 8) + 24);
        v15 = *(*(a1 + 64) + 8);
        if (*(v15 + 24))
        {
          v16 = 1;
        }

        else
        {
          v17 = *(*(*(a1 + 72) + 8) + 24);
          v16 = v17 == [*(a1 + 48) limit];
          v15 = *(*(a1 + 64) + 8);
        }

        *(v15 + 24) = v16;
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }
  }

  [*(a1 + 40) removeAllObjects];
  objc_autoreleasePoolPop(v2);
}

void *__59__PPLocalTopicStore_iterTopicRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result == 64)
  {
    result = (*(*(a1 + 40) + 16))();
  }

  *a3 = *(*(*(a1 + 48) + 8) + 24);
  return result;
}

- (id)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mappingIdentifierCopy = mappingIdentifier;
  v10 = [(PPLocalTopicStore *)self _topicTransformForId:mappingIdentifierCopy];
  v11 = [v10 QIDWeightsWithMappedTopicIdentifier:identifierCopy];
  v12 = v11;
  if (error && !v11)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D3A580];
    v18 = *MEMORY[0x277CCA470];
    mappingIdentifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Mapped topic ID (%@) not found in this mapping (%@).", identifierCopy, mappingIdentifierCopy];
    v19[0] = mappingIdentifierCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v13 errorWithDomain:v14 code:3 userInfo:v16];
  }

  return v12;
}

- (id)scoresForTopicMapping:(id)mapping query:(id)query error:(id *)error clientProcessName:(id)name
{
  v61 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  queryCopy = query;
  nameCopy = name;
  [(PPLocalTopicStore *)self _logParametersForQuery:queryCopy client:nameCopy method:@"scoresForTopicMapping"];
  v57 = 0;
  v12 = mappingCopy;
  v13 = queryCopy;
  v14 = nameCopy;
  v15 = v14;
  selfCopy = self;
  if (self)
  {
    v16 = -[PPEvictingMinPriorityQueue initWithCapacity:]([PPEvictingMinPriorityQueue alloc], "initWithCapacity:", [v13 limit]);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __81__PPLocalTopicStore__defaultScoresForTopicMapping_query_clientProcessName_error___block_invoke;
    v58[3] = &unk_2789795B0;
    v17 = v16;
    v59 = v17;
    selfCopy2 = self;
    v19 = v13;
    v20 = v13;
    v21 = v15;
    [(PPLocalTopicStore *)selfCopy2 _defaultIterScoresForTopicMapping:v12 query:v20 error:&v57 clientProcessName:v15 block:v58];
    v22 = objc_alloc(MEMORY[0x277CBEB38]);
    [(PPEvictingMinPriorityQueue *)v17 count];
    v24 = [v22 initWithCapacity:v23];
    [(PPEvictingMinPriorityQueue *)v17 count];
    if (v25 > 0.0)
    {
      do
      {
        v26 = objc_autoreleasePoolPush();
        popItem = [(PPEvictingMinPriorityQueue *)v17 popItem];
        v28 = MEMORY[0x277CCABB0];
        [popItem score];
        v29 = [v28 numberWithDouble:?];
        item = [popItem item];
        [v24 setValue:v29 forKey:item];

        objc_autoreleasePoolPop(v26);
        [(PPEvictingMinPriorityQueue *)v17 count];
      }

      while (v31 > 0.0);
    }
  }

  else
  {
    v19 = v13;
    v21 = v14;
    v24 = 0;
  }

  v32 = v21;

  v33 = v57;
  -[PPLocalTopicStore _petLoggingForMappedTopicQuery:mappingId:count:clientProcessName:hasError:](selfCopy, v19, v12, [v24 count], v21, v24 == 0);
  v34 = [v24 count];
  v35 = +[PPConfiguration sharedInstance];
  maxNumberMappedTopics = [v35 maxNumberMappedTopics];

  if (v34 <= maxNumberMappedTopics)
  {
    [(PPLocalTopicStore *)selfCopy _dpLoggingForMappingId:v12 mappedTopics:v24];
    v38 = v24;
  }

  else
  {
    v50 = v33;
    v51 = v12;
    context = objc_autoreleasePoolPush();
    v37 = [v24 keysSortedByValueUsingComparator:&__block_literal_global_317];
    v38 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = +[PPConfiguration sharedInstance];
    v48 = v37;
    v40 = [v37 subarrayWithRange:{0, objc_msgSend(v39, "maxNumberMappedTopics")}];

    v41 = [v40 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v54;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v53 + 1) + 8 * i);
          v46 = [v24 objectForKeyedSubscript:v45];
          [v38 setObject:v46 forKeyedSubscript:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v42);
    }

    v12 = v51;
    [(PPLocalTopicStore *)selfCopy _dpLoggingForMappingId:v51 mappedTopics:v38];

    objc_autoreleasePoolPop(context);
    v33 = v50;
    v32 = v21;
  }

  return v38;
}

- (void)_petLoggingForMappedTopicQuery:(void *)query mappingId:(uint64_t)id count:(void *)count clientProcessName:(char)name hasError:
{
  v11 = a2;
  queryCopy = query;
  countCopy = count;
  if (self)
  {
    v14 = +[PPMetricsUtils loggingQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__PPLocalTopicStore__petLoggingForMappedTopicQuery_mappingId_count_clientProcessName_hasError___block_invoke;
    v15[3] = &unk_278977370;
    v16 = countCopy;
    v17 = queryCopy;
    idCopy = id;
    nameCopy = name;
    v18 = v11;
    selfCopy = self;
    dispatch_async(v14, v15);
  }
}

- (void)_dpLoggingForMappingId:(void *)id mappedTopics:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  idCopy = id;
  if (self)
  {
    v7 = v5;
    if ([v7 isEqualToString:@"news-topics"])
    {
      v8 = @"NewsTopic";
    }

    else
    {
      if (![v7 isEqualToString:@"podcasts-topics"])
      {
        v33 = [v7 isEqualToString:@"high-level-topics"];
        if (v33)
        {
          v34 = @"HighLevelTopic";
        }

        else
        {
          v34 = 0;
        }

        v9 = v34;
        if (!v33)
        {
LABEL_18:

          goto LABEL_19;
        }

LABEL_7:
        v35 = v5;
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        localeIdentifier = [currentLocale localeIdentifier];
        v13 = [v10 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", v9, localeIdentifier];

        allValues = [idCopy allValues];
        v15 = [allValues _pas_leftFoldWithInitialObject:&unk_284786110 accumulate:&__block_literal_global_324];
        [v15 doubleValue];
        v17 = v16;

        v18 = objc_opt_new();
        [v18 nextDouble];
        v20 = v19;

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        allKeys = [idCopy allKeys];
        v22 = [allKeys countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          v25 = 0.0;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(allKeys);
              }

              v27 = *(*(&v36 + 1) + 8 * i);
              v28 = objc_autoreleasePoolPush();
              v29 = [idCopy objectForKeyedSubscript:v27];
              [v29 doubleValue];
              v25 = v25 + v30;

              if (v25 / v17 >= v20)
              {
                v31 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v13];
                v40 = v27;
                v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
                [v31 record:v32];

                objc_autoreleasePoolPop(v28);
                goto LABEL_17;
              }

              objc_autoreleasePoolPop(v28);
            }

            v23 = [allKeys countByEnumeratingWithState:&v36 objects:v41 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        v5 = v35;
        goto LABEL_18;
      }

      v8 = @"PodcastTopic";
    }

    v9 = v8;
    goto LABEL_7;
  }

LABEL_19:
}

id __57__PPLocalTopicStore__dpLoggingForMappingId_mappedTopics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277CCABB0];
  [v4 doubleValue];
  v9 = v8;
  [v5 doubleValue];
  v11 = [v7 numberWithDouble:v9 + v10];
  objc_autoreleasePoolPop(v6);

  return v11;
}

void __95__PPLocalTopicStore__petLoggingForMappedTopicQuery_mappingId_count_clientProcessName_hasError___block_invoke(uint64_t a1)
{
  v9 = objc_opt_new();
  [v9 setBundleId:*(a1 + 32)];
  [v9 setMappingId:*(a1 + 40)];
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = log10(v2);
  }

  else
  {
    v3 = 0;
  }

  [v9 setResultSizeLog10:v3];
  v4 = [*(a1 + 48) fromDate];
  [v9 setTimeLimited:v4 != 0];

  [v9 setLimitHit:{*(a1 + 64) > objc_msgSend(*(a1 + 48), "limit")}];
  v5 = [*(a1 + 48) scoringDate];
  [v9 setTimeSpec:v5 != 0];

  v6 = [*(a1 + 48) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 72)];
  v7 = [*(*(a1 + 56) + 24) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

void __81__PPLocalTopicStore__defaultScoresForTopicMapping_query_clientProcessName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3A498];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  [v6 doubleValue];
  v10 = v9;

  v11 = [v8 initWithItem:v7 score:v10];
  [*(a1 + 32) addObject:v11];
}

- (uint64_t)_defaultIterScoresForTopicMapping:(void *)mapping query:(void *)query error:(void *)error clientProcessName:(void *)name block:
{
  v74 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mappingCopy = mapping;
  errorCopy = error;
  nameCopy = name;
  selfCopy = self;
  v62 = [(PPLocalTopicStore *)self _topicTransformForId:v11];
  outputTopicCount = [v62 outputTopicCount];
  if (outputTopicCount && [mappingCopy limit])
  {
    v54 = [mappingCopy copy];
    [v54 setLimit:-1];
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v67 = 0;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __91__PPLocalTopicStore__defaultIterScoresForTopicMapping_query_error_clientProcessName_block___block_invoke;
    v63[3] = &unk_278977308;
    v53 = v13;
    v64 = v53;
    v56 = v14;
    v65 = v56;
    v66 = &v68;
    v58 = [selfCopy iterScoredTopicsWithQuery:v54 error:&v67 clientProcessName:0 block:v63];
    v52 = v67;
    if (v58)
    {
      v15 = v56;
      mutableBytes = [v56 mutableBytes];
      [v62 applyFeatureSmoothing:mutableBytes vectorLength:v69[6]];
      v17 = v56;
      mutableBytes2 = [v56 mutableBytes];
      [v62 applyFeatureScaling:mutableBytes2 vectorLength:v69[6]];
      v19 = v56;
      mutableBytes3 = [v56 mutableBytes];
      [v62 applyFeatureNormalization:mutableBytes3 vectorLength:v69[6]];
      v21 = v53;
      mutableBytes4 = [v53 mutableBytes];
      v23 = v56;
      mutableBytes5 = [v56 mutableBytes];
      v51 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * outputTopicCount];
      v50 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * outputTopicCount];
      v25 = v51;
      mutableBytes6 = [v51 mutableBytes];
      v27 = v50;
      v28 = mappingCopy;
      mutableBytes7 = [v50 mutableBytes];
      if (v69[6] >= 1)
      {
        v31 = 0;
        do
        {
          LODWORD(v30) = *(mutableBytes5 + 4 * v31);
          [v62 addWeightedTopicScoreToBuffer:mutableBytes6 countNonZeroComponentsInBuffer:mutableBytes7 qid:*(mutableBytes4 + 4 * v31++) score:v30];
        }

        while (v31 < v69[6]);
      }

      [v62 applyOutputScaling:mutableBytes6 vectorLength:outputTopicCount];
      if ([mappingCopy scoreWithBiases])
      {
        [v62 addBias:mutableBytes6];
      }

      [v62 applyOutputActivation:mutableBytes6];
      v32 = 0;
      v60 = 0;
      buf[0] = 0;
      v33 = outputTopicCount;
      while (1)
      {
        v34 = *(mutableBytes6 + 4 * v32);
        [v62 threshold];
        if (v34 <= v35)
        {
          goto LABEL_22;
        }

        v36 = *(mutableBytes7 + 2 * v32);
        if ([v28 minimumComponentCount] > v36)
        {
          goto LABEL_22;
        }

        v37 = objc_autoreleasePoolPush();
        if ((buf[0] & 1) == 0)
        {
          break;
        }

LABEL_21:
        objc_autoreleasePoolPop(v37);
        v28 = mappingCopy;
        ++v60;
LABEL_22:
        if (v33 == ++v32)
        {
          [(PPLocalTopicStore *)selfCopy _petLoggingForMappedTopicQuery:v28 mappingId:v11 count:v60 clientProcessName:errorCopy hasError:0];

          goto LABEL_30;
        }
      }

      [v62 payloadForTopic:v32];
      v39 = v38 = mappingCopy;
      if (!v39)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__defaultIterScoresForTopicMapping_query_error_clientProcessName_block_ object:selfCopy file:@"PPLocalTopicStore.m" lineNumber:732 description:{@"Invalid parameter not satisfying: %@", @"topicName"}];

        v38 = mappingCopy;
      }

      matchingMappedTopicIds = [v38 matchingMappedTopicIds];
      if (matchingMappedTopicIds)
      {
        matchingMappedTopicIds2 = [v38 matchingMappedTopicIds];
        v43 = [matchingMappedTopicIds2 containsObject:v39];

        if (((v39 != 0) & v43) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (!v39)
      {
LABEL_20:

        goto LABEL_21;
      }

      LODWORD(v41) = *(mutableBytes6 + 4 * v32);
      v44 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
      nameCopy[2](nameCopy, v39, v44, buf);

      goto LABEL_20;
    }

    v46 = pp_topics_log_handle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v52;
      _os_log_impl(&dword_23224A000, v46, OS_LOG_TYPE_DEFAULT, "Encountered an error iterating scored topics: %@", buf, 0xCu);
    }

    v47 = mappingCopy;
    if (query)
    {
      v48 = v52;
      *query = v52;
      v47 = mappingCopy;
    }

    [(PPLocalTopicStore *)selfCopy _petLoggingForMappedTopicQuery:v47 mappingId:v11 count:0 clientProcessName:errorCopy hasError:1];
LABEL_30:

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v58 = 1;
  }

  return v58;
}

void __91__PPLocalTopicStore__defaultIterScoresForTopicMapping_query_error_clientProcessName_block___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 item];
  v5 = [v4 topicIdentifier];
  v6 = [v5 length];
  if (v6 < 0xC && (v11 = 0, v10 = 0, [v5 getBytes:&v10 maxLength:11 usedLength:0 encoding:1 options:0 range:0 remainingRange:{v6, 0}], v10 == 81))
  {
    v7 = atol(&v10 + 1);

    LODWORD(v10) = v7;
    if (v7 != -1)
    {
      [*(a1 + 32) appendBytes:&v10 length:4];
      [v3 score];
      *&v8 = v8;
      v9 = LODWORD(v8);
      [*(a1 + 40) appendBytes:&v9 length:4];
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
  }
}

- (BOOL)iterScoresForTopicMapping:(id)mapping query:(id)query error:(id *)error block:(id)block
{
  if (self)
  {
    LOBYTE(self) = [(PPLocalTopicStore *)self _defaultIterScoresForTopicMapping:mapping query:query error:error clientProcessName:0 block:block];
  }

  return self;
}

- (BOOL)iterScoredTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name block:(id)block
{
  v113 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  nameCopy = name;
  blockCopy = block;
  scoringDate = [queryCopy scoringDate];
  v12 = scoringDate;
  if (scoringDate)
  {
    v13 = scoringDate;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  objc_opt_self();
  v67 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  objc_opt_self();
  v65 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  v15 = 0;
  if (v67 && v65)
  {
    v16 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v67];
    v15 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v65]| v16;
  }

  storage = self->_storage;
  v18 = objc_autoreleasePoolPush();
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784770, 0}];
  objc_autoreleasePoolPop(v18);
  v20 = [(PPTopicStorage *)storage sourceStats:v15 withExcludedAlgorithms:v19];

  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = __Block_byref_object_copy__20434;
  v102[4] = __Block_byref_object_dispose__20435;
  v103 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v21 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-processing" qosClass:qos_class_self()];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke;
  aBlock[3] = &unk_278977268;
  aBlock[4] = self;
  v61 = v14;
  v86 = v61;
  v66 = queryCopy;
  v87 = v66;
  v62 = v20;
  v88 = v62;
  v91 = v102;
  v92 = &v94;
  v93 = &v98;
  v63 = v21;
  v89 = v63;
  v60 = blockCopy;
  v90 = v60;
  v22 = _Block_copy(aBlock);
  *v107 = 0;
  *&v107[8] = v107;
  *&v107[16] = 0x3032000000;
  *&v107[24] = __Block_byref_object_copy__20434;
  v108 = __Block_byref_object_dispose__20435;
  v109 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = __Block_byref_object_copy__20434;
  v83[4] = __Block_byref_object_dispose__20435;
  v84 = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = __Block_byref_object_copy__20434;
  v81[4] = __Block_byref_object_dispose__20435;
  v82 = 0;
  v23 = pp_topics_signpost_handle();
  v24 = os_signpost_id_generate(v23);

  v25 = pp_topics_signpost_handle();
  v26 = v25;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PPLocalTopicStore.iterScoredTopicsWithQuery.aggregation", "", buf, 2u);
  }

  v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-scoring" qosClass:qos_class_self()];
  v28 = dispatch_semaphore_create(64);
  v29 = [v66 copy];
  [v29 setOrderByIdentifier:1];
  [v29 setRemoveNearDuplicates:1];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_286;
  v73[3] = &unk_2789772B8;
  v78 = v107;
  v79 = v83;
  v80 = v81;
  v30 = v28;
  v74 = v30;
  v31 = v27;
  v75 = v31;
  v32 = v22;
  selfCopy = self;
  v77 = v32;
  v33 = v73;
  v34 = [v29 copy];
  [v34 setLimit:-1];
  v104 = 0;
  v68 = [(PPLocalTopicStore *)self iterTopicRecordsWithQuery:v34 error:&v104 block:v33];

  v35 = v104;
  if (v68)
  {
    v36 = 0;
  }

  else
  {
    v37 = pp_topics_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v106 = v35;
      _os_log_error_impl(&dword_23224A000, v37, OS_LOG_TYPE_ERROR, "_unlimitedTopicRecordsWithQuery: nil result from iterTopicRecordsWithQuery: %@", buf, 0xCu);
    }

    v38 = v35;
    v36 = v35;
  }

  v39 = v36;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_291;
  block[3] = &unk_2789772E0;
  v71 = v83;
  v40 = v32;
  v70 = v40;
  v72 = v81;
  dispatch_sync(v31, block);
  v41 = pp_topics_signpost_handle();
  v42 = v41;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v42, OS_SIGNPOST_INTERVAL_END, v24, "PPLocalTopicStore.iterScoredTopicsWithQuery.aggregation", "", buf, 2u);
  }

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v83, 8);

  _Block_object_dispose(v107, 8);
  if (v68)
  {
    v43 = atomic_load(v95 + 6);
    v44 = atomic_load(v99 + 6);
    v45 = pp_topics_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = atomic_load(v95 + 6);
      v47 = +[PPConfiguration sharedInstance];
      [v47 scoreThresholdForTopic];
      *v107 = 67109632;
      *&v107[4] = v46;
      *&v107[8] = 2048;
      *&v107[10] = v48;
      *&v107[18] = 2048;
      *&v107[20] = v44 + v43;
      _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_DEFAULT, "PPLocalTopicStore: filtered %d items below threshold of %f out of %tu total.", v107, 0x1Cu);
    }

    v49 = atomic_load(v99 + 6);
    v50 = v66;
    v51 = nameCopy;
    v52 = +[PPMetricsUtils loggingQueue];
    v53 = v49;
    *v107 = MEMORY[0x277D85DD0];
    *&v107[8] = 3221225472;
    *&v107[16] = __74__PPLocalTopicStore__petLoggingForQuery_count_clientProcessName_hasError___block_invoke;
    *&v107[24] = &unk_278979850;
    v54 = v51;
    v108 = v54;
    v111 = v53;
    v55 = v50;
    v112 = 0;
    v109 = v55;
    selfCopy2 = self;
    dispatch_async(v52, v107);
  }

  else
  {
    v56 = pp_default_log_handle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v107 = 138412290;
      *&v107[4] = v39;
      _os_log_error_impl(&dword_23224A000, v56, OS_LOG_TYPE_ERROR, "Error encountered while scoring named entities: %@", v107, 0xCu);
    }

    if (error)
    {
      v57 = v39;
      *error = v39;
    }
  }

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(v102, 8);

  return v68;
}

void __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [*(a1 + 48) decayRate];
    v10 = [v7 scoreTopics:v5 scoringDate:v8 decayRate:objc_msgSend(*(a1 + 48) strictFiltering:"scoreWithStrictFiltering") sourceStats:*(a1 + 56) decayedFeedbackCounts:v6 streamingScorer:*(*(a1 + 80) + 8) + 40 mlModel:{v9, 0}];
    if (v10)
    {
      atomic_fetch_add((*(*(a1 + 96) + 8) + 24), 1u);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_2;
      block[3] = &unk_278977560;
      v11 = *(a1 + 64);
      v14 = *(a1 + 72);
      v13 = v10;
      dispatch_sync(v11, block);
    }

    else
    {
      atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1u);
    }
  }
}

void __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_286(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = [v3 topic];
  v6 = [v5 clusterIdentifier];
  LOBYTE(v4) = [v4 isEqualToString:v6];

  v7 = *(*(*(a1 + 72) + 8) + 40);
  if ((v4 & 1) == 0)
  {
    v8 = v7;
    v9 = *(*(*(a1 + 80) + 8) + 40);
    if (![v8 count])
    {
      goto LABEL_8;
    }

    v10 = +[PPConfiguration sharedInstance];
    if ([v10 use2StageScoreInterpreterForTPScoring])
    {
    }

    else
    {
      v11 = +[PPConfiguration sharedInstance];
      v12 = [v11 topicScoringUsesHybrid];

      if (!v12)
      {
        goto LABEL_8;
      }
    }

    [MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 32)];
    v13 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_2_287;
    block[3] = &unk_278977290;
    v39 = *(a1 + 56);
    v36 = v8;
    v37 = v9;
    v38 = *(a1 + 32);
    dispatch_async(v13, block);

LABEL_8:
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [v3 topic];
    v18 = [v17 clusterIdentifier];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [v3 topic];
    v22 = [v21 clusterIdentifier];

    if (v22)
    {
      if (!*(*(*(a1 + 64) + 8) + 40))
      {
LABEL_15:

        goto LABEL_16;
      }

      v23 = [*(*(a1 + 48) + 80) decayedFeedbackCountsForClusterIdentifier:?];
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v26 = pp_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v33 = [v3 topic];
        v34 = [v33 topicIdentifier];
        *buf = 138412290;
        v41 = v34;
        _os_log_fault_impl(&dword_23224A000, v26, OS_LOG_TYPE_FAULT, "Topic record unexpectedly had nil cluster identifier while aggregating for scoring. %@", buf, 0xCu);
      }

      v27 = *(*(a1 + 80) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = 0;

      v25 = objc_opt_new();
      v29 = [v25 UUIDString];
      v30 = [v29 lowercaseString];
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    goto LABEL_15;
  }

  [v7 addObject:v3];
LABEL_16:
}

void *__77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_291(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) count];
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void __74__PPLocalTopicStore__petLoggingForQuery_count_clientProcessName_hasError___block_invoke(uint64_t a1)
{
  v9 = objc_opt_new();
  [v9 setBundleId:*(a1 + 32)];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = log10(v2);
  }

  else
  {
    v3 = 0;
  }

  [v9 setResultSizeLog10:v3];
  [v9 setLimitHit:{*(a1 + 56) > objc_msgSend(*(a1 + 40), "limit")}];
  v4 = [*(a1 + 40) scoringDate];
  [v9 setTimeSpec:v4 != 0];

  v5 = [*(a1 + 40) fromDate];
  [v9 setTimeLimited:v5 != 0];

  v6 = [*(a1 + 40) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 64)];
  v7 = [*(*(a1 + 48) + 24) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

intptr_t __77__PPLocalTopicStore_iterScoredTopicsWithQuery_error_clientProcessName_block___block_invoke_2_287(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (id)rankedTopicsWithQuery:(id)query error:(id *)error clientProcessName:(id)name
{
  nameCopy = name;
  queryCopy = query;
  [(PPLocalTopicStore *)self _logParametersForQuery:queryCopy client:nameCopy method:@"rankedTopicsWithQuery"];
  v10 = [queryCopy copy];
  [v10 setLimit:-1];
  scoreWithCalibration = [queryCopy scoreWithCalibration];
  v12 = +[PPConfiguration sharedInstance];
  topicCalibrationTrie = [v12 topicCalibrationTrie];

  v14 = [PPEvictingMinPriorityQueue alloc];
  limit = [queryCopy limit];

  v16 = [(PPEvictingMinPriorityQueue *)v14 initWithCapacity:limit];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__PPLocalTopicStore_rankedTopicsWithQuery_error_clientProcessName___block_invoke;
  v21[3] = &unk_278977240;
  v24 = scoreWithCalibration;
  v22 = topicCalibrationTrie;
  v23 = v16;
  v17 = v16;
  v18 = topicCalibrationTrie;
  [(PPLocalTopicStore *)self iterScoredTopicsWithQuery:v10 error:error clientProcessName:nameCopy block:v21];

  extractSortedMutableArray = [(PPEvictingMinPriorityQueue *)v17 extractSortedMutableArray];

  return extractSortedMutableArray;
}

void __67__PPLocalTopicStore_rankedTopicsWithQuery_error_clientProcessName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (*(a1 + 48) == 1)
    {
      v6 = v3;
      v5 = [PPLocalTopicStore calibrateScoredTopic:v3 calibrationTrie:*(a1 + 32)];

      v4 = v5;
    }

    v7 = v4;
    [*(a1 + 40) addObject:v4];
  }
}

- (id)scoreTopics:(id)topics scoringDate:(id)date decayRate:(double)rate strictFiltering:(BOOL)filtering sourceStats:(id)stats decayedFeedbackCounts:(id)counts streamingScorer:(id *)scorer mlModel:(id)self0
{
  filteringCopy = filtering;
  v140 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  dateCopy = date;
  statsCopy = stats;
  countsCopy = counts;
  if (![topicsCopy count])
  {
    v24 = 0;
    goto LABEL_52;
  }

  v122 = topicsCopy;
  v20 = topicsCopy;
  v128 = dateCopy;
  v21 = statsCopy;
  v22 = countsCopy;
  if (!self)
  {
    v127 = v21;
    v24 = 0;
    goto LABEL_51;
  }

  v120 = countsCopy;
  v121 = statsCopy;
  v119 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (v21)
  {
    v126 = 0;
    v127 = v21;
    v23 = 0;
  }

  else
  {
    objc_opt_self();
    v23 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
    objc_opt_self();
    v25 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
    v26 = v25;
    v27 = 0;
    if (v23 && v25)
    {
      v28 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v23];
      v27 = [PPStreamingTopicScorer sourceStatsNeededForBytecode:v26]| v28;
    }

    v126 = v26;
    storage = self->_storage;
    v30 = objc_autoreleasePoolPush();
    v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784770, 0}];
    objc_autoreleasePoolPop(v30);
    v127 = [(PPTopicStorage *)storage sourceStats:v27 withExcludedAlgorithms:v31];
  }

  v32 = [v20 objectAtIndexedSubscript:0];
  topic = [v32 topic];

  v34 = objc_alloc(MEMORY[0x277D3A530]);
  v118 = topic;
  topicIdentifier = [topic topicIdentifier];
  v36 = [v20 objectAtIndexedSubscript:0];
  v124 = [v34 initWithTopicIdentifier:topicIdentifier mostRelevantRecord:v36];

  v37 = *scorer;
  v125 = v23;
  if (!*scorer)
  {
    v38 = [PPStreamingTopicScorer alloc];
    v117 = v128;
    v39 = v127;
    if (v38 && (*v137 = v38, *&v137[8] = PPStreamingTopicScorer, (v40 = objc_msgSendSuper2(v137, sel_init)) != 0))
    {
      v41 = v40;
      v116 = filteringCopy;
      objc_opt_self();
      v42 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
      if (v42)
      {
        v43 = v42;
        v114 = v22;
        v115 = dateCopy;
        objc_opt_self();
        v44 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_TP_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
        if (v44)
        {
          v45 = v44;
          v46 = *MEMORY[0x277D3A6D8];
          v47 = v43;
          v48 = [[PPScoreInterpreter alloc] initWithBytecode:v43];
          v49 = v41[1];
          v41[1] = v48;

          v50 = [[PPScoreInterpreter alloc] initWithBytecode:v45];
          v51 = v41[2];
          v41[2] = v50;

          v52 = [PPScoreDict alloc];
          v113 = v45;
          v53 = objc_opt_new();
          v54 = [(PPScoreDict *)v52 initWithScoreInputSet:v53];

          *&v55 = v46;
          [(PPScoreDict *)v54 setScalarValue:2 forIndex:v55];
          *&v56 = [v39 minRefCount];
          [(PPScoreDict *)v54 setScalarValue:6 forIndex:v56];
          *&v57 = [v39 maxRefCount];
          [(PPScoreDict *)v54 setScalarValue:7 forIndex:v57];
          [v39 avgRefCount];
          *&v58 = v58;
          [(PPScoreDict *)v54 setScalarValue:8 forIndex:v58];
          [v39 medianRefCount];
          *&v59 = v59;
          [(PPScoreDict *)v54 setScalarValue:9 forIndex:v59];
          *&v60 = [v39 uniqueBundleIdCount];
          [(PPScoreDict *)v54 setScalarValue:10 forIndex:v60];
          *&v61 = [v39 uniqueDocIdCount];
          [(PPScoreDict *)v54 setScalarValue:11 forIndex:v61];
          *&v62 = [v39 recordCount];
          [(PPScoreDict *)v54 setScalarValue:23 forIndex:v62];
          *&v63 = v116;
          [(PPScoreDict *)v54 setScalarValue:16 forIndex:v63];
          v64 = MEMORY[0x277CBEAF8];
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          localeIdentifier = [currentLocale localeIdentifier];
          v67 = [v64 componentsFromLocaleIdentifier:localeIdentifier];
          v68 = [v67 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
          [(PPScoreDict *)v54 setObject:v68 forIndex:5];

          v69 = v117;
          [(PPScoreDict *)v54 setObject:v117 forIndex:7];
          earliestDate = [v39 earliestDate];
          [(PPScoreDict *)v54 setObject:earliestDate forIndex:9];

          latestDate = [v39 latestDate];
          [(PPScoreDict *)v54 setObject:latestDate forIndex:10];

          v72 = v113;
          v73 = v41[3];
          v41[3] = v54;
        }

        else
        {
          v72 = v43;
          v47 = v41;
          v41 = 0;
          v69 = v117;
        }

        v74 = v41;

        v41 = v47;
        v22 = v114;
        dateCopy = v115;
      }

      else
      {
        v74 = 0;
        v69 = v117;
      }
    }

    else
    {
      v74 = 0;
      v69 = v117;
    }

    v75 = *scorer;
    *scorer = v74;

    v76 = objc_opt_self();
    v77 = objc_opt_self();
    v37 = *scorer;
  }

  v78 = [v20 objectAtIndexedSubscript:0];
  if (v37)
  {
    v79 = v37[3];
    v80 = v22;
    [v80 engagedExplicitly];
    *&v81 = v81;
    [v79 setScalarValue:12 forIndex:v81];
    [v80 engagedImplicitly];
    *&v82 = v82;
    [v79 setScalarValue:13 forIndex:v82];
    [v80 rejectedExplicitly];
    *&v83 = v83;
    [v79 setScalarValue:14 forIndex:v83];
    [v80 rejectedImplicitly];
    *&v84 = v84;
    [v79 setScalarValue:15 forIndex:v84];
    latestDate2 = [v80 latestDate];

    [v79 setObject:latestDate2 forIndex:11];
  }

  v86 = v22;

  v87 = +[PPConfiguration sharedInstance];
  topicScoringUsesHybrid = [v87 topicScoringUsesHybrid];

  v89 = selfCopy;
  if (topicScoringUsesHybrid)
  {
    v90 = [(NSCache *)selfCopy->_modelCache objectForKey:@"scoring_model"];
    v91 = v124;
    if (!v90)
    {
      trialWrapper = selfCopy->_trialWrapper;
      *&v129 = 0;
      v90 = [(PPTrialWrapper *)trialWrapper mlModelForModelName:@"PPModel_TP.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS" error:&v129];
      v93 = v129;
      if (v93)
      {
        v94 = pp_topics_log_handle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *v137 = 138412802;
          *&v137[4] = v93;
          *&v137[12] = 2112;
          *&v137[14] = @"PPModel_TP.mlmodelc";
          v138 = 2112;
          v139 = @"PERSONALIZATION_PORTRAIT_TOPICS";
          _os_log_error_impl(&dword_23224A000, v94, OS_LOG_TYPE_ERROR, "PPlocalTopciStore: error %@ in retrieving %@ model with namespace %@", v137, 0x20u);
        }

        v91 = v124;
      }

      if (!v90)
      {
        v111 = pp_topics_log_handle();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *v137 = 0;
          _os_log_error_impl(&dword_23224A000, v111, OS_LOG_TYPE_ERROR, "PPLocalTopicStore: unable to locate ML model.", v137, 2u);
        }

        v24 = 0;
        countsCopy = v120;
        statsCopy = v121;
        v97 = v119;
        goto LABEL_49;
      }

      v89 = selfCopy;
      [(NSCache *)selfCopy->_modelCache setObject:v90 forKey:@"scoring_model"];
    }

    [(PPLocalTopicStore *)v89 finalScoreFromRecordsUsingHybrid:v20 streamingScorer:*scorer mlModel:v90];
    v96 = v95;

    v97 = v119;
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v98 = v20;
    v99 = [v98 countByEnumeratingWithState:&v129 objects:v137 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v130;
      do
      {
        for (i = 0; i != v100; ++i)
        {
          if (*v130 != v101)
          {
            objc_enumerationMutation(v98);
          }

          [(PPStreamingTopicScorer *)*scorer addRecord:?];
        }

        v100 = [v98 countByEnumeratingWithState:&v129 objects:v137 count:16];
      }

      while (v100);
    }

    if (*scorer)
    {
      v96 = [PPStreamingTopicScorer getFinalScoreWithAggregationResultOut:0 finalResultOut:?];
    }

    else
    {
      v96 = 0.0;
    }

    v97 = v119;
    v91 = v124;
  }

  v103 = +[PPConfiguration sharedInstance];
  [v103 scoreThresholdForTopic];
  v105 = v104;

  if (v96 <= 0.0)
  {
    v106 = 1;
  }

  else
  {
    v106 = topicScoringUsesHybrid;
  }

  v22 = v86;
  if (v106 == 1)
  {
    v107 = v105;
    if (v96 < v107)
    {
      v108 = pp_topics_log_handle();
      countsCopy = v120;
      v109 = v125;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        v112 = v107;
        if (!topicScoringUsesHybrid)
        {
          v112 = 0.0;
        }

        *buf = 134218240;
        v134 = v96;
        v135 = 2048;
        v136 = v112;
        _os_log_debug_impl(&dword_23224A000, v108, OS_LOG_TYPE_DEBUG, "Portrait Scoring, filtering out score of %f below threshold of %f", buf, 0x16u);
      }

      v24 = 0;
      statsCopy = v121;
      goto LABEL_50;
    }
  }

  v24 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v91 score:v96];
  countsCopy = v120;
  statsCopy = v121;
LABEL_49:
  v109 = v125;
LABEL_50:

  objc_autoreleasePoolPop(v97);
LABEL_51:

  topicsCopy = v122;
LABEL_52:

  return v24;
}

- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model
{
  v34 = *MEMORY[0x277D85DE8];
  hybridCopy = hybrid;
  scorerCopy = scorer;
  modelCopy = model;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [hybridCopy countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(hybridCopy);
        }

        [(PPStreamingTopicScorer *)scorerCopy addRecord:?];
      }

      v11 = [hybridCopy countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0;
  *&v14 = [PPStreamingTopicScorer getFinalScoreWithAggregationResultOut:scorerCopy finalResultOut:&v26];
  if (v26)
  {
    v25 = 0;
    v15 = [modelCopy predictionFromFeatures:v26 error:{&v25, v14}];
    v16 = v25;
    if (v15)
    {
      v17 = [v15 featureValueForName:@"computed_score"];
      multiArrayValue = [v17 multiArrayValue];

      if (multiArrayValue)
      {
        multiArrayValue2 = [v17 multiArrayValue];
        v20 = [multiArrayValue2 objectAtIndexedSubscript:0];
        [v20 doubleValue];
        v22 = v21;
      }

      else
      {
        [v17 doubleValue];
        v22 = v23;
      }
    }

    else
    {
      v17 = pp_default_log_handle();
      v22 = -1.0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v32 = v16;
        _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPTopicStore: unable to retrieve prediction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = pp_default_log_handle();
    v22 = 0.0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "PPLocalLocationStore: the score interpreter provided a nil final output.", buf, 2u);
    }
  }

  return v22;
}

- (PPLocalTopicStore)init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPTopicStorage alloc] initWithDatabase:v3];
    if (v4)
    {
      v5 = +[PPTrialWrapper sharedInstance];
      self = [(PPLocalTopicStore *)self initWithStorage:v4 trialWrapper:v5];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPLocalTopicStore)initWithStorage:(id)storage trialWrapper:(id)wrapper
{
  v44 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  wrapperCopy = wrapper;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalTopicStore.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v41.receiver = self;
  v41.super_class = PPLocalTopicStore;
  _initFromSubclass = [(PPTopicStore *)&v41 _initFromSubclass];
  v11 = _initFromSubclass;
  if (_initFromSubclass)
  {
    objc_storeStrong(_initFromSubclass + 10, storage);
    v12 = objc_opt_new();
    modelCache = v11->_modelCache;
    v11->_modelCache = v12;

    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v14];

    lock = v11->_lock;
    v11->_lock = v15;

    objc_storeStrong(&v11->_trialWrapper, wrapper);
    v17 = [[PPTopicBlocklist alloc] initWithTrialWrapper:v11->_trialWrapper];
    blocklist = v11->_blocklist;
    v11->_blocklist = v17;

    objc_initWeak(&location, v11);
    trialWrapper = v11->_trialWrapper;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __50__PPLocalTopicStore_initWithStorage_trialWrapper___block_invoke;
    v38[3] = &unk_2789797B8;
    objc_copyWeak(&v39, &location);
    v20 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS" block:v38];
    v21 = objc_autoreleasePoolPush();
    parentDirectory = [(PPTopicStorage *)v11->_storage parentDirectory];
    v23 = [parentDirectory stringByAppendingPathComponent:@"Topics"];

    objc_autoreleasePoolPop(v21);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v37 = 0;
    v25 = [defaultManager createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v37];
    v26 = v37;
    if ((v25 & 1) == 0)
    {
      v27 = pp_default_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v26;
        _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPLocalTopicStore had an error while trying to create the cache directory: %@", buf, 0xCu);
      }
    }

    v28 = objc_autoreleasePoolPush();
    v29 = [v23 stringByAppendingPathComponent:@"ScoreCache"];
    objc_autoreleasePoolPop(v28);
    cachePath = v11->_cachePath;
    v11->_cachePath = v29;

    v31 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-cache"];
    cacheUpdateQueue = v11->_cacheUpdateQueue;
    v11->_cacheUpdateQueue = v31;

    v33 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalTopicStore-asyncCache" qosClass:9];
    cacheAsyncUpdateQueue = v11->_cacheAsyncUpdateQueue;
    v11->_cacheAsyncUpdateQueue = v33;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __50__PPLocalTopicStore_initWithStorage_trialWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeAllObjects];
    v3 = pp_topics_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPLocalTopicStore: invaliding model cache due to Trial update.", v4, 2u);
    }
  }
}

+ (id)recordsForTopics:(id)topics source:(id)source algorithm:(unint64_t)algorithm
{
  v26 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  sourceCopy = source;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(topicsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = topicsCopy;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_opt_new();
        item = [v14 item];
        [v15 setTopic:item];

        [v14 score];
        [v15 setInitialScore:?];
        [v15 setSource:sourceCopy];
        [v15 setAlgorithm:algorithm];
        osBuild = [MEMORY[0x277D3A578] osBuild];
        [v15 setExtractionOsBuild:osBuild];

        v18 = +[PPTrialWrapper sharedInstance];
        [v15 setExtractionAssetVersion:{objc_msgSend(v18, "treatmentsHash")}];

        [v9 addObject:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v9;
}

+ (id)calibrateScoredTopic:(id)topic calibrationTrie:(id)trie
{
  topicCopy = topic;
  if (trie)
  {
    trieCopy = trie;
    item = [topicCopy item];
    topicIdentifier = [item topicIdentifier];
    v9 = [topicIdentifier substringFromIndex:1];
    v10 = [trieCopy payloadForString:v9];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D3A498]);
      item2 = [topicCopy item];
      [topicCopy score];
      v14 = [v11 initWithItem:item2 score:{(1.0 - pow(1.0 - v13, v10 / 100.0))}];

      topicCopy = v14;
    }
  }

  v15 = topicCopy;

  return topicCopy;
}

+ (void)sortAndTruncate:(id)truncate queryLimit:(unint64_t)limit
{
  truncateCopy = truncate;
  [truncateCopy sortUsingComparator:&__block_literal_global_20683];
  if ([truncateCopy count] > limit)
  {
    [truncateCopy removeObjectsInRange:{limit, objc_msgSend(truncateCopy, "count") - limit}];
  }
}

uint64_t __48__PPLocalTopicStore_sortAndTruncate_queryLimit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

@end