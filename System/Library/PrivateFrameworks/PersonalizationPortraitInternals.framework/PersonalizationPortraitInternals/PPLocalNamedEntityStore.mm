@interface PPLocalNamedEntityStore
+ (float)resolvedPerRecordDecayRateForFeatureProvider:(id)provider perRecordDecayRate:(float)rate;
+ (id)defaultStore;
+ (id)recordsForNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm;
+ (void)sortAndTruncate:(id)truncate queryLimit:(unint64_t)limit;
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)cloudSyncWithError:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllNamedEntitiesOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error;
- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error;
- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score error:(id *)error;
- (BOOL)filterExistingNamedEntitiesWithShouldContinueBlock:(id)block;
- (BOOL)flushDonationsWithError:(id *)error;
- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterRankedNamedEntitiesWithQuery:(id)query error:(id *)error block:(id)block;
- (PPLocalNamedEntityStore)init;
- (PPLocalNamedEntityStore)initWithStorage:(id)storage topicStoreForNamedEntityMapping:(id)mapping lazyContactStoreForMapsFeedback:(id)feedback trialWrapper:(id)wrapper;
- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model;
- (id)namedEntityRecordsWithQuery:(id)query error:(id *)error;
- (id)namedEntityToMatchedStringMappingForNamedEntities:(id)entities timestamp:(double)timestamp error:(id *)error;
- (id)rankedNamedEntitiesWithQuery:(id)query error:(id *)error clientProcessName:(id)name;
- (id)scoredEntityFromRecords:(id)records scoringDate:(id)date perRecordDecayRate:(float)rate decayRate:(float)decayRate sourceStats:(id)stats decayedFeedbackCounts:(id)counts streamingScorer:(id *)scorer mlModel:(id)self0;
- (void)_generateMapsSearchQueryResult;
- (void)_logDifferentiallyPrivateExtractionsWithDpCategory:(void *)category extractions:(void *)extractions;
- (void)processFeedback:(id)feedback;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)runWithLockAcquired:(id)acquired;
@end

@implementation PPLocalNamedEntityStore

uint64_t __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke_402(uint64_t a1)
{
  v2 = pp_entities_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "Maps launch event handler invoked", v4, 2u);
  }

  return [MEMORY[0x277D425A0] runAsyncOnQueue:*(*(a1 + 32) + 32) afterDelaySeconds:*(a1 + 40) block:3.0];
}

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_6129);
  if (!defaultStore_instance_6130)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_6130;
    defaultStore_instance_6130 = v2;

    v4 = defaultStore_instance_6130;
    if (defaultStore_instance_6130)
    {
      [(PPLocalNamedEntityStore *)defaultStore_instance_6130 _generateMapsSearchQueryResult];
      objc_initWeak(&location, v4);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke;
      aBlock[3] = &unk_2789797B8;
      objc_copyWeak(&v16, &location);
      v5 = _Block_copy(aBlock);
      v6 = +[PPAppLaunchMonitor sharedInstance];
      v7 = *MEMORY[0x277D3A650];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke_402;
      v13[3] = &unk_2789737B8;
      v13[4] = v4;
      v8 = v5;
      v14 = v8;
      v9 = [v6 registerForAppLaunchWithBundleId:v7 queue:0 handler:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = pp_entities_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13[0]) = 0;
        _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v13, 2u);
      }
    }
  }

  v11 = defaultStore_instance_6130;
  pthread_mutex_unlock(&defaultStore_lock_6129);

  return v11;
}

- (void)runWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PPLocalNamedEntityStore_runWithLockAcquired___block_invoke;
  v7[3] = &unk_2789737E0;
  v8 = acquiredCopy;
  v6 = acquiredCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (BOOL)filterExistingNamedEntitiesWithShouldContinueBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = objc_opt_new();
  if (blockCopy[2](blockCopy))
  {
    v6 = [(PPTrialWrapper *)self->_trialWrapper lastTreatmentUpdateForNamespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
    storage = self->_storage;
    v48 = 0;
    v8 = [(PPNamedEntityStorage *)storage namedEntityFilterLastRunDateWithError:&v48];
    v9 = v48;
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10)
    {
      if (!v8 || ([v6 earlierDate:v8], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToDate:", v6), v11, !v12))
      {
        if (blockCopy[2](blockCopy))
        {
          *buf = 0;
          v43 = buf;
          v44 = 0x3032000000;
          v45 = __Block_byref_object_copy__6005;
          v46 = __Block_byref_object_dispose__6006;
          v47 = objc_opt_new();
          v16 = objc_opt_new();
          if (blockCopy[2](blockCopy))
          {
            v17 = self->_storage;
            v18 = objc_opt_new();
            v41 = v9;
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __78__PPLocalNamedEntityStore_filterExistingNamedEntitiesWithShouldContinueBlock___block_invoke;
            v37[3] = &unk_278973768;
            v39 = blockCopy;
            v38 = v16;
            v40 = buf;
            [(PPNamedEntityStorage *)v17 iterNamedEntityRecordsAndIdsWithQuery:v18 error:&v41 block:v37];
            v19 = v41;

            if ([*(v43 + 5) count])
            {
              v20 = pp_entities_log_handle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [*(v43 + 5) count];
                *v49 = 134217984;
                v50 = v21;
                _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: dropping %tu named entities", v49, 0xCu);
              }

              v35 = v19;
              v36 = 0;
              v22 = [(PPNamedEntityStorage *)self->_storage deleteNamedEntitiesMatchingRowIds:*(v43 + 5) atLeastOneNamedEntityRemoved:0 deletedCount:&v36 error:&v35];
              v23 = v35;

              if (!v22)
              {
                v24 = pp_entities_log_handle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *v49 = 138412290;
                  v50 = v23;
                  _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: error in dropping the named entities: %@", v49, 0xCu);
                }
              }

              v25 = v36;
              if (v25 != [*(v43 + 5) count])
              {
                v26 = pp_entities_log_handle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = [*(v43 + 5) count];
                  *v49 = 134218240;
                  v50 = v27;
                  v51 = 2048;
                  v52 = v36;
                  _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: dropped a different number of named entities than was expected. Expected %tu, found %tu", v49, 0x16u);
                }
              }
            }

            else
            {
              v30 = pp_entities_log_handle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *v49 = 0;
                _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore: no named entities to drop.", v49, 2u);
              }

              v23 = v19;
            }

            v31 = self->_storage;
            v34 = v23;
            v13 = [(PPNamedEntityStorage *)v31 setNamedEntityFilterLastRunDate:v5 error:&v34];
            v9 = v34;

            if (v13)
            {
              v32 = pp_entities_log_handle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: completed pruning of database for new filter.", v49, 2u);
              }
            }

            else
            {
              v32 = pp_entities_log_handle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *v49 = 138412290;
                v50 = v9;
                _os_log_error_impl(&dword_23224A000, v32, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: unable to update the last runtime of the named entity filter. %@", v49, 0xCu);
              }
            }

            v29 = v39;
          }

          else
          {
            v29 = pp_entities_log_handle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v49 = 0;
              _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering of named entities after constructing filter.", v49, 2u);
            }

            v13 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v28 = pp_entities_log_handle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering of named entiies before filtering operation.", buf, 2u);
          }

          v13 = 0;
        }

        goto LABEL_47;
      }

      v14 = pp_entities_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: not running filter as there is no need.", buf, 2u);
      }
    }

    else
    {
      v14 = pp_entities_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: has previously run filter on default assets in the build.", buf, 2u);
      }
    }

    v13 = 1;
LABEL_47:

    goto LABEL_48;
  }

  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering of named entities before processing.", buf, 2u);
  }

  v13 = 0;
LABEL_48:

  return v13;
}

void __78__PPLocalNamedEntityStore_filterExistingNamedEntitiesWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    if (([*(a1 + 32) isAcceptableRecord:v7] & 1) == 0)
    {
      v8 = pp_entities_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134217984;
        v11 = a3;
        _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: filtering named entity with row id %lli", &v10, 0xCu);
      }

      [*(*(*(a1 + 48) + 8) + 40) addIndex:a3];
    }
  }

  else
  {
    v9 = pp_entities_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: deferring filtering in progress.", &v10, 2u);
    }

    *a4 = 1;
  }
}

- (id)namedEntityToMatchedStringMappingForNamedEntities:(id)entities timestamp:(double)timestamp error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:timestamp];
  [v9 setScoringDate:v10];
  [v9 setToDate:v10];
  [v9 setOrderByName:1];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__6005;
  v33[4] = __Block_byref_object_dispose__6006;
  v34 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:entitiesCopy];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6005;
  v31 = __Block_byref_object_dispose__6006;
  v32 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke;
  aBlock[3] = &unk_278979A20;
  aBlock[4] = v33;
  aBlock[5] = &v27;
  v11 = _Block_copy(aBlock);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__6005;
  v24[4] = __Block_byref_object_dispose__6006;
  v25 = 0;
  v22 = v24;
  v23 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke_2;
  v20[3] = &unk_278973740;
  v12 = v11;
  v21 = v12;
  v13 = [(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v9 error:&v23 block:v20];
  v14 = v23;
  v15 = v14;
  if (v13)
  {
    v16 = v28[5];
  }

  else
  {
    if (error && v14)
    {
      v17 = v14;
      *error = v15;
    }

    v18 = pp_entities_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "namedEntityToMatchedStringMappingForNamedEntities: error from iterNamedEntityRecordsWithQuery: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(v33, 8);

  return v16;
}

void __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) count])
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          [v5 rangeOfString:v12 options:{1, v15}];
          if (v14)
          {
            [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:v12];
            [v6 addObject:v12];
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [*(*(*(a1 + 32) + 8) + 40) minusSet:v6];
  }

  else
  {
    *a3 = 1;
  }
}

void __93__PPLocalNamedEntityStore_namedEntityToMatchedStringMappingForNamedEntities_timestamp_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [v17 entity];
  v6 = [v5 clusterIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v17 entity];
    v10 = [v9 clusterIdentifier];
    LOBYTE(v8) = [v8 isEqualToString:v10];

    if (v8)
    {
      goto LABEL_5;
    }

    v11 = [v17 entity];
    v12 = [v11 clusterIdentifier];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(a1 + 32);
    v5 = [v17 entity];
    v16 = [v5 name];
    (*(v15 + 16))(v15, v16, a3);
  }

LABEL_5:
}

- (void)processFeedback:(id)feedback
{
  v238 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  feedbackItems = [feedbackCopy feedbackItems];
  if (self)
  {
    v4 = objc_opt_new();
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v5 = feedbackItems;
    v6 = [v5 countByEnumeratingWithState:&v226 objects:v234 count:16];
    if (v6)
    {
      v7 = *v227;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v227 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v226 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          itemString = [v9 itemString];
          v12 = [v4 objectForKeyedSubscript:itemString];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = objc_opt_new();
            [v4 setObject:v14 forKeyedSubscript:itemString];
          }

          v15 = [v4 objectForKeyedSubscript:itemString];
          [v15 addObject:v9];

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v5 countByEnumeratingWithState:&v226 objects:v234 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  clientIdentifier = [feedbackCopy clientIdentifier];
  v17 = [clientIdentifier isEqualToString:@"mapssearch"];

  if (v17)
  {
    v18 = v4;
    v195 = v18;
    if (self)
    {
      allKeys = [v18 allKeys];
      v19 = objc_opt_new();
      v178 = objc_opt_new();
      if ([allKeys count])
      {
        v20 = 0;
        v21 = 0;
        v171 = 0;
        while (1)
        {
          v173 = objc_autoreleasePoolPush();
          v22 = [allKeys count] > 7 ? 8 : objc_msgSend(allKeys, "count");
          v23 = objc_autoreleasePoolPush();
          v175 = [allKeys subarrayWithRange:{v20, v22}];
          objc_autoreleasePoolPop(v23);
          [v178 setMatchingIdentifiers:v175];
          result = [(_PASLazyResult *)self->_lazyContactStoreForMapsFeedback result];
          *&v211 = v21;
          v25 = [result contactsWithQuery:v178 error:&v211];
          v26 = v211;

          if (!v25)
          {
            break;
          }

          v224 = 0u;
          v225 = 0u;
          v222 = 0u;
          v223 = 0u;
          obj = v25;
          v186 = [obj countByEnumeratingWithState:&v222 objects:v234 count:16];
          if (v186)
          {
            v184 = *v223;
            v27 = v26;
            do
            {
              v28 = 0;
              do
              {
                if (*v223 != v184)
                {
                  v29 = v28;
                  objc_enumerationMutation(obj);
                  v28 = v29;
                }

                v189 = v28;
                v30 = *(*(&v222 + 1) + 8 * v28);
                context = objc_autoreleasePoolPush();
                v209[0] = v27;
                v197 = [v30 contactsContactIdentifierWithError:v209];
                v193 = v209[0];

                if (v197)
                {
                  localizedFullName = [v30 localizedFullName];

                  if (localizedFullName)
                  {
                    localizedFullName2 = [v30 localizedFullName];
                    v33 = [v19 objectForKeyedSubscript:localizedFullName2];
                    v34 = v33 == 0;

                    if (v34)
                    {
                      v35 = objc_opt_new();
                      localizedFullName3 = [v30 localizedFullName];
                      [v19 setObject:v35 forKeyedSubscript:localizedFullName3];
                    }

                    localizedFullName4 = [v30 localizedFullName];
                    v38 = [v19 objectForKeyedSubscript:localizedFullName4];
                    v39 = [v195 objectForKeyedSubscript:v197];
                    v40 = v39;
                    if (!v39)
                    {
                      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                      v40 = MEMORY[0x277CBEBF8];
                    }

                    [v38 addObjectsFromArray:v40];
                  }

                  v218 = 0u;
                  v219 = 0u;
                  v216 = 0u;
                  v217 = 0u;
                  postalAddresses = [v30 postalAddresses];
                  v42 = [postalAddresses countByEnumeratingWithState:&v216 objects:&v226 count:16];
                  if (v42)
                  {
                    v43 = *v217;
                    do
                    {
                      for (j = 0; j != v42; ++j)
                      {
                        if (*v217 != v43)
                        {
                          objc_enumerationMutation(postalAddresses);
                        }

                        v45 = *(*(&v216 + 1) + 8 * j);
                        v46 = objc_autoreleasePoolPush();
                        value = [v45 value];
                        singleLineNormalizedAddressString = [value singleLineNormalizedAddressString];
                        if (singleLineNormalizedAddressString)
                        {
                          v49 = [v19 objectForKeyedSubscript:singleLineNormalizedAddressString];
                          v50 = v49 == 0;

                          if (v50)
                          {
                            v51 = objc_opt_new();
                            [v19 setObject:v51 forKeyedSubscript:singleLineNormalizedAddressString];
                          }

                          v52 = [v19 objectForKeyedSubscript:singleLineNormalizedAddressString];
                          v53 = [v195 objectForKeyedSubscript:v197];
                          v54 = v53;
                          if (!v53)
                          {
                            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
                            v54 = MEMORY[0x277CBEBF8];
                          }

                          [v52 addObjectsFromArray:v54];
                        }

                        objc_autoreleasePoolPop(v46);
                      }

                      v42 = [postalAddresses countByEnumeratingWithState:&v216 objects:&v226 count:16];
                    }

                    while (v42);
                  }
                }

                else
                {
                  postalAddresses = pp_entities_log_handle();
                  if (os_log_type_enabled(postalAddresses, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v193;
                    _os_log_error_impl(&dword_23224A000, postalAddresses, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: error fetching contact identifier for contact. %@", buf, 0xCu);
                  }
                }

                objc_autoreleasePoolPop(context);
                v28 = v189 + 1;
                v27 = v193;
              }

              while (v189 + 1 != v186);
              v186 = [obj countByEnumeratingWithState:&v222 objects:v234 count:16];
              v27 = v193;
            }

            while (v186);
          }

          else
          {
            v27 = v26;
          }

          v21 = v27;

          objc_autoreleasePoolPop(v173);
          v171 += 8;
          v20 = v171;
          if ([allKeys count] <= v171)
          {
            goto LABEL_57;
          }
        }

        v55 = pp_entities_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_error_impl(&dword_23224A000, v55, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: error fetching maps related contacts: %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v173);
        v21 = v26;
LABEL_57:
      }

      v4 = v19;
      [v19 addEntriesFromDictionary:v195];
    }

    else
    {
      v4 = 0;
    }
  }

  v56 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys2 = [v4 allKeys];
  v58 = [v56 initWithArray:allKeys2];

  v59 = objc_opt_new();
  v163 = objc_opt_new();
  timestamp = [feedbackCopy timestamp];
  [v163 setScoringDate:timestamp];

  timestamp2 = [feedbackCopy timestamp];
  [v163 setToDate:timestamp2];

  clientBundleId = [feedbackCopy clientBundleId];
  v63 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:clientBundleId domain:1];
  [v163 setExcludingSourceBundleIds:v63];

  [v163 setOrderByName:1];
  v209[0] = 0;
  v209[1] = v209;
  v209[2] = 0x3032000000;
  v209[3] = __Block_byref_object_copy__6005;
  v209[4] = __Block_byref_object_dispose__6006;
  v210 = &stru_284759D38;
  v207 = v209;
  v208 = 0;
  v203[0] = MEMORY[0x277D85DD0];
  v203[1] = 3221225472;
  v203[2] = __43__PPLocalNamedEntityStore_processFeedback___block_invoke;
  v203[3] = &unk_278973718;
  v161 = v58;
  v204 = v161;
  v162 = v59;
  v205 = v162;
  v198 = v4;
  v206 = v198;
  LOBYTE(v58) = [(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v163 error:&v208 block:v203];
  v160 = v208;
  if (v58)
  {
    if (![v162 count])
    {
LABEL_129:
      v139 = objc_opt_new();
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v144 = v161;
      v145 = [v144 countByEnumeratingWithState:&v199 objects:v221 count:16];
      if (v145)
      {
        v146 = *v200;
        do
        {
          for (k = 0; k != v145; ++k)
          {
            if (*v200 != v146)
            {
              objc_enumerationMutation(v144);
            }

            v148 = *(*(&v199 + 1) + 8 * k);
            v149 = objc_autoreleasePoolPush();
            v150 = [v198 objectForKeyedSubscript:v148];
            [v139 addObjectsFromArray:v150];

            objc_autoreleasePoolPop(v149);
          }

          v145 = [v144 countByEnumeratingWithState:&v199 objects:v221 count:16];
        }

        while (v145);
      }

      if ([v139 count])
      {
        v151 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp3 = [feedbackCopy timestamp];
        clientIdentifier2 = [feedbackCopy clientIdentifier];
        clientBundleId2 = [feedbackCopy clientBundleId];
        mappingId = [feedbackCopy mappingId];
        v156 = [v151 initWithFeedbackItems:v139 timestamp:timestamp3 clientIdentifier:clientIdentifier2 clientBundleId:clientBundleId2 mappingId:mappingId];

        [PPFeedbackStorage logFeedback:v156 domain:1 domainStatus:1 inBackground:1];
      }

      goto LABEL_138;
    }

    v64 = objc_alloc(MEMORY[0x277D3A328]);
    timestamp4 = [feedbackCopy timestamp];
    clientIdentifier3 = [feedbackCopy clientIdentifier];
    clientBundleId3 = [feedbackCopy clientBundleId];
    mappingId2 = [feedbackCopy mappingId];
    v69 = [v64 initWithFeedbackItems:v162 timestamp:timestamp4 clientIdentifier:clientIdentifier3 clientBundleId:clientBundleId3 mappingId:mappingId2];

    [PPFeedbackStorage logFeedback:v69 domain:1 domainStatus:2 inBackground:1];
    clientBundleId4 = [feedbackCopy clientBundleId];
    clientIdentifier4 = [feedbackCopy clientIdentifier];
    [PPFeedbackUtils recordUserEventsFromFeedback:feedbackCopy matchingFeedbackItems:v162 clientBundleId:clientBundleId4 clientIdentifier:clientIdentifier4 domain:1];

    v72 = v69;
    v159 = v72;
    if (self)
    {
      clientBundleId5 = [v72 clientBundleId];
      v74 = [PPFeedbackUtils shouldSample:clientBundleId5];

      if (v74)
      {
        oslog = objc_opt_new();
        [oslog setPredictionType:2];
        v75 = [PPFeedbackUtils feedbackMetadataForBaseFeedback:v159];
        [oslog setFeedbackMetadata:v75];

        v215 = 0;
        v168 = v159;
        v76 = objc_opt_new();
        v77 = objc_opt_new();
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        feedbackItems2 = [v168 feedbackItems];
        v79 = [feedbackItems2 countByEnumeratingWithState:&v216 objects:v234 count:16];
        if (v79)
        {
          v80 = *v217;
          do
          {
            for (m = 0; m != v79; ++m)
            {
              if (*v217 != v80)
              {
                objc_enumerationMutation(feedbackItems2);
              }

              v82 = *(*(&v216 + 1) + 8 * m);
              itemString2 = [v82 itemString];
              [v76 addObject:itemString2];

              itemString3 = [v82 itemString];
              [v77 setObject:v82 forKeyedSubscript:itemString3];
            }

            v79 = [feedbackItems2 countByEnumeratingWithState:&v216 objects:v234 count:16];
          }

          while (v79);
        }

        timestamp5 = [v168 timestamp];
        [timestamp5 timeIntervalSince1970];
        v86 = [(PPLocalNamedEntityStore *)self namedEntityToMatchedStringMappingForNamedEntities:v76 timestamp:&v215 error:?];

        v181 = objc_opt_new();
        v233 = 0u;
        v232 = 0u;
        v231 = 0u;
        *buf = 0u;
        v87 = v86;
        v88 = [v87 countByEnumeratingWithState:buf objects:&v226 count:16];
        if (v88)
        {
          v89 = *v231;
          do
          {
            for (n = 0; n != v88; ++n)
            {
              if (*v231 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*&buf[8] + 8 * n);
              v92 = [v87 objectForKeyedSubscript:v91];
              v93 = [v77 objectForKeyedSubscript:v91];
              [v181 setObject:v92 forKeyedSubscript:v93];
            }

            v88 = [v87 countByEnumeratingWithState:buf objects:&v226 count:16];
          }

          while (v88);
        }

        v94 = v215;
        v158 = v181 != 0;
        v157 = v94;
        if (v181)
        {
          log = [[PPFeatureRedactor alloc] initWithTrialWrapper:self->_trialWrapper namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
          v213 = 0u;
          v214 = 0u;
          v211 = 0u;
          v212 = 0u;
          v172 = v181;
          v170 = [v172 countByEnumeratingWithState:&v211 objects:&v222 count:16];
          if (!v170)
          {
            v165 = 0;
            goto LABEL_119;
          }

          v165 = 0;
          v166 = *v212;
          v95 = *MEMORY[0x277D3A6D8];
          v96 = v95;
          while (1)
          {
            for (ii = 0; ii != v170; ++ii)
            {
              if (*v212 != v166)
              {
                objc_enumerationMutation(v172);
              }

              v97 = *(*(&v211 + 1) + 8 * ii);
              obja = [PPFeedbackUtils feedbackItemForPPFeedbackItem:v97];
              v98 = [v172 objectForKeyedSubscript:v97];
              clientBundleId6 = [v168 clientBundleId];
              v174 = log;
              v100 = v98;
              v185 = clientBundleId6;
              v194 = v100;
              v177 = [(PPNamedEntityStorage *)self->_storage decayedFeedbackCountsForClusterIdentifier:v100];
              v196 = +[PPStreamingNamedEntityScorer scoreInterpreterAggregationBytecode];
              contexta = +[PPStreamingNamedEntityScorer scoreInterpreterFinalBytecode];
              v101 = 0;
              if (v196 && contexta)
              {
                v102 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v196];
                v101 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:contexta]| v102;
              }

              v179 = [(PPNamedEntityStorage *)self->_storage sourceStats:v101 withExcludedAlgorithms:0];
              v190 = objc_opt_new();
              v103 = objc_opt_new();
              v104 = objc_autoreleasePoolPush();
              v105 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v194, 0}];
              objc_autoreleasePoolPop(v104);
              [v103 setMatchingNames:v105];

              [v103 setScoringDate:v190];
              *&v216 = 0;
              v106 = [(PPLocalNamedEntityStore *)self namedEntityRecordsWithQuery:v103 error:&v216];
              v107 = v216;
              v176 = v107;
              if (v106)
              {
                v108 = objc_alloc(MEMORY[0x277D3A420]);
                firstObject = [v106 firstObject];
                entity = [firstObject entity];
                name = [entity name];
                lowercaseString = [name lowercaseString];
                firstObject2 = [v106 firstObject];
                entity2 = [firstObject2 entity];
                bestLanguage = [entity2 bestLanguage];
                v116 = [v108 initWithName:lowercaseString category:0 dynamicCategory:0 language:bestLanguage mostRelevantRecord:0];

                v117 = [[PPStreamingNamedEntityScorer alloc] initWithScoringDate:v190 perRecordDecayRate:v179 sourceStats:v96];
                v118 = objc_opt_self();
                v119 = objc_opt_self();
                firstObject3 = [v106 firstObject];
                name2 = [v116 name];
                [(PPStreamingNamedEntityScorer *)v117 startNewClusterWithDecayedFeedbackCounts:v177 mostRelevantRecord:firstObject3 dominantEntityName:name2];

                v228 = 0u;
                v229 = 0u;
                v226 = 0u;
                v227 = 0u;
                v122 = v106;
                v123 = [v122 countByEnumeratingWithState:&v226 objects:v234 count:16];
                if (v123)
                {
                  v124 = *v227;
                  do
                  {
                    for (jj = 0; jj != v123; ++jj)
                    {
                      if (*v227 != v124)
                      {
                        objc_enumerationMutation(v122);
                      }

                      [(PPStreamingNamedEntityScorer *)v117 addRecord:*(*(&v226 + 1) + 8 * jj)];
                    }

                    v123 = [v122 countByEnumeratingWithState:&v226 objects:v234 count:16];
                  }

                  while (v123);
                }

                *buf = 0;
                v220 = 0;
                [(PPStreamingNamedEntityScorer *)v117 getFinalScoreWithAggregationResultOut:buf finalResultOut:&v220];
                v127 = v126;
                v128 = objc_alloc(MEMORY[0x277D42648]);
                v129 = [MEMORY[0x277CCABB0] numberWithDouble:v127];
                v130 = [v128 initWithFirst:v129 second:*buf];
              }

              else
              {
                v131 = v107;
                v116 = pp_entities_log_handle();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
                  v138 = NSStringFromSelector(sel_getScoredNamedEntityFeaturesWithNamedEntity_excludingSourceBundleId_decayRate_error_);
                  *v234 = 138412546;
                  v235 = v138;
                  v236 = 2112;
                  v237 = v176;
                  _os_log_error_impl(&dword_23224A000, v116, OS_LOG_TYPE_ERROR, "error %@: %@", v234, 0x16u);
                }

                v130 = 0;
                v165 = v176;
              }

              if (v130)
              {
                second = [v130 second];
                v133 = [PPFeedbackUtils featuresForScoreDict:second];
                v134 = [v133 mutableCopy];

                if (v134)
                {
                  [(PPFeatureRedactor *)v174 transformFeaturesInPlace:v134];
                  first = [v130 first];
                  [first floatValue];
                  v136 = [PPFeedbackUtils scoredItemWithFeaturesForFeatureDictionary:v134 score:?];

                  goto LABEL_108;
                }

                v137 = pp_entities_log_handle();
                if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                {
                  *v234 = 0;
                  _os_log_error_impl(&dword_23224A000, v137, OS_LOG_TYPE_ERROR, "nil result from +[PPRecordFeaturizer featuresForScoreDict]", v234, 2u);
                }

                v134 = 0;
              }

              else
              {
                v134 = pp_entities_log_handle();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  *v234 = 138412290;
                  v235 = v165;
                  _os_log_error_impl(&dword_23224A000, v134, OS_LOG_TYPE_ERROR, "nil result from getScoredNamedEntityFeaturesWithNamedEntity: %@", v234, 0xCu);
                }
              }

              v136 = 0;
LABEL_108:

              [v136 addFeedbackItems:obja];
              [oslog addScoredItems:v136];
            }

            v170 = [v172 countByEnumeratingWithState:&v211 objects:&v222 count:16];
            if (!v170)
            {
LABEL_119:

              [PPFeedbackUtils addBoilerplateToFeedbackLog:oslog];
              mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
              [mEMORY[0x277D41DA8] logMessage:oslog];

              goto LABEL_123;
            }
          }
        }

        if (v94)
        {
          v140 = v94;
          v165 = v157;
        }

        else
        {
          v165 = 0;
        }

        log = pp_entities_log_handle();
        if (os_log_type_enabled(&log->super, OS_LOG_TYPE_ERROR))
        {
          *v234 = 138412290;
          v235 = v157;
          _os_log_error_impl(&dword_23224A000, &log->super, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from getMatchedNamedEntityForFeedback: %@", v234, 0xCu);
        }

LABEL_123:
      }

      else
      {
        oslog = pp_default_log_handle();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          *v234 = 0;
          _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: No feedback session logs collection performed due to sampling.", v234, 2u);
        }

        v165 = 0;
        v158 = 1;
      }

      v142 = v165;
      if (v158)
      {
        goto LABEL_128;
      }
    }

    else
    {

      v142 = 0;
    }

    v143 = pp_entities_log_handle();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      *v234 = 138412290;
      v235 = v160;
      _os_log_error_impl(&dword_23224A000, v143, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: feedback logging failed: %@", v234, 0xCu);
    }

LABEL_128:
    [(PPNamedEntityStorage *)self->_storage donateNamedEntityFeedback:v159];

    goto LABEL_129;
  }

  v139 = pp_default_log_handle();
  if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
  {
    *v234 = 138412290;
    v235 = v160;
    _os_log_error_impl(&dword_23224A000, v139, OS_LOG_TYPE_ERROR, "processFeedbackItems: error from iterNamedEntityRecordsWithQuery: %@", v234, 0xCu);
  }

LABEL_138:

  _Block_object_dispose(v209, 8);
}

void __43__PPLocalNamedEntityStore_processFeedback___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 entity];
  v7 = [v6 clusterIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 entity];
    v10 = [v9 clusterIdentifier];
    v11 = [v10 isEqual:*(*(*(a1 + 56) + 8) + 40)];

    if ((v11 & 1) == 0)
    {
      v29 = a3;
      v12 = [v5 entity];
      v13 = [v12 clusterIdentifier];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v31 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = *(a1 + 32);
      v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v33;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            v22 = v5;
            v23 = [v5 entity];
            v24 = [v23 name];
            [v24 rangeOfString:v20 options:1];
            v26 = v25;

            if (v26)
            {
              v27 = *(a1 + 40);
              v28 = [*(a1 + 48) objectForKeyedSubscript:v20];
              [v27 addObjectsFromArray:v28];

              [v31 addObject:v20];
            }

            objc_autoreleasePoolPop(v21);
            v5 = v22;
          }

          v17 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v17);
      }

      [*(a1 + 32) minusSet:v31];
      if (![*(a1 + 32) count])
      {
        *v29 = 1;
      }
    }
  }

  else
  {
  }
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_entities_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138739971;
    v11 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "Named entity feedback received: %{sensitive}@", &v10, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [PPInternalFeedback fromBaseFeedback:feedbackCopy storeType:1];
  [v8 storePendingFeedback:v9 storeType:1 error:0];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (BOOL)donateLocationNamedEntities:(id)entities bundleId:(id)id groupId:(id)groupId error:(id *)error
{
  v139 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  idCopy = id;
  groupIdCopy = groupId;
  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = idCopy;
    v134 = 2048;
    v135 = [entitiesCopy count];
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating %tu locations", buf, 0x16u);
  }

  currentLocaleLanguageCode = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
  v103 = objc_opt_new();
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = entitiesCopy;
  v105 = [obj countByEnumeratingWithState:&v129 objects:v138 count:16];
  if (!v105)
  {
    v106 = 0;
    v107 = 1;
    goto LABEL_75;
  }

  v106 = 0;
  v102 = *v130;
  v107 = 1;
  do
  {
    for (i = 0; i != v105; ++i)
    {
      if (*v130 != v102)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v129 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v12 = objc_opt_new();
      [v11 score];
      v14 = v13;
      v15 = 0.5;
      if (v14 > 0.0)
      {
        [v11 score];
      }

      v16 = fmin(v15, 1.0);
      locationName = [v11 locationName];

      if (locationName)
      {
        v18 = pp_entities_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = idCopy;
          _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a name", buf, 0xCu);
        }

        v19 = objc_alloc(MEMORY[0x277D3A420]);
        locationName2 = [v11 locationName];
        v21 = [v19 initWithName:locationName2 category:3 language:currentLocaleLanguageCode];

        v22 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v21 score:v16];
        [v12 addObject:v22];
        mapItem = [v11 mapItem];
        locationName3 = [v11 locationName];
        v128 = 0;
        [(PPLocalNamedEntityStore *)self donateMapItem:mapItem forPlaceName:locationName3 error:&v128];
        v25 = v128;

        if (v25)
        {
          v26 = pp_entities_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v25;
            _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate map item for location name: %@", buf, 0xCu);
          }

          v27 = +[PPMetricsUtils loggingQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke;
          block[3] = &unk_2789797E0;
          v126 = idCopy;
          v127 = v25;
          dispatch_async(v27, block);
        }
      }

      else
      {
        v25 = 0;
      }

      streetAddress = [v11 streetAddress];

      if (streetAddress)
      {
        v29 = pp_entities_log_handle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = idCopy;
          _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a street address", buf, 0xCu);
        }

        v30 = objc_alloc(MEMORY[0x277D3A420]);
        streetAddress2 = [v11 streetAddress];
        v32 = [v30 initWithName:streetAddress2 category:8 language:currentLocaleLanguageCode];

        v33 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v32 score:v16];
        [v12 addObject:v33];
      }

      city = [v11 city];

      if (city)
      {
        v35 = pp_entities_log_handle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = idCopy;
          _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a city", buf, 0xCu);
        }

        v36 = objc_alloc(MEMORY[0x277D3A420]);
        city2 = [v11 city];
        v38 = [v36 initWithName:city2 category:9 language:currentLocaleLanguageCode];

        v39 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v38 score:v16];
        [v12 addObject:v39];
      }

      stateOrProvince = [v11 stateOrProvince];

      if (stateOrProvince)
      {
        v41 = pp_entities_log_handle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = idCopy;
          _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a state", buf, 0xCu);
        }

        v42 = objc_alloc(MEMORY[0x277D3A420]);
        stateOrProvince2 = [v11 stateOrProvince];
        v44 = [v42 initWithName:stateOrProvince2 category:10 language:currentLocaleLanguageCode];

        v45 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v44 score:v16];
        [v12 addObject:v45];
      }

      country = [v11 country];

      if (country)
      {
        v47 = pp_entities_log_handle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = idCopy;
          _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating a country", buf, 0xCu);
        }

        v48 = objc_alloc(MEMORY[0x277D3A420]);
        country2 = [v11 country];
        v50 = [v48 initWithName:country2 category:11 language:currentLocaleLanguageCode];

        v51 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v50 score:v16];
        [v12 addObject:v51];
      }

      streetAddress3 = [v11 streetAddress];

      if (streetAddress3)
      {
        streetAddress4 = [v11 streetAddress];
        city3 = [v11 city];
        stateOrProvince3 = [v11 stateOrProvince];
        postalCode = [v11 postalCode];
        country3 = [v11 country];
        v58 = [PPNamedEntitySupport fullAddressForStreetAddress:streetAddress4 city:city3 state:stateOrProvince3 postalCode:postalCode country:country3];

        if (v58)
        {
          v59 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v58 category:12 language:currentLocaleLanguageCode];
          v60 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v59 score:v16];
          [v12 addObject:v60];
          mapItem2 = [v11 mapItem];
          v124 = v25;
          [(PPLocalNamedEntityStore *)self donateMapItem:mapItem2 forPlaceName:v58 error:&v124];
          v62 = v124;

          if (v62)
          {
            v63 = pp_entities_log_handle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v62;
              _os_log_error_impl(&dword_23224A000, v63, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate map item for full address: %@", buf, 0xCu);
            }
          }

          v25 = v62;
        }
      }

      unstructuredLocationString = [v11 unstructuredLocationString];

      if (unstructuredLocationString)
      {
        v65 = pp_entities_log_handle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = idCopy;
          _os_log_impl(&dword_23224A000, v65, OS_LOG_TYPE_DEFAULT, "PPLocationNamedEntities: %@ is donating an unstructured location string", buf, 0xCu);
        }

        v66 = objc_alloc(MEMORY[0x277D3A420]);
        unstructuredLocationString2 = [v11 unstructuredLocationString];
        v68 = [v66 initWithName:unstructuredLocationString2 category:3 language:currentLocaleLanguageCode];

        v69 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v68 score:v16];
        [v12 addObject:v69];
        mapItem3 = [v11 mapItem];
        unstructuredLocationString3 = [v11 unstructuredLocationString];
        v123 = v25;
        [(PPLocalNamedEntityStore *)self donateMapItem:mapItem3 forPlaceName:unstructuredLocationString3 error:&v123];
        v72 = v123;

        if (v72)
        {
          v73 = pp_entities_log_handle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v72;
            _os_log_error_impl(&dword_23224A000, v73, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate map item for unstructured location: %@", buf, 0xCu);
          }

          v74 = +[PPMetricsUtils loggingQueue];
          v120[0] = MEMORY[0x277D85DD0];
          v120[1] = 3221225472;
          v120[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_357;
          v120[3] = &unk_2789797E0;
          v121 = idCopy;
          v122 = v72;
          dispatch_async(v74, v120);
        }
      }

      else
      {
        v72 = v25;
      }

      v75 = objc_alloc(MEMORY[0x277D3A4D8]);
      documentId = [v11 documentId];
      if (documentId)
      {
        v77 = [v75 initWithBundleId:idCopy groupId:groupIdCopy documentId:documentId date:v103];
      }

      else
      {
        v78 = objc_opt_new();
        uUIDString = [v78 UUIDString];
        v77 = [v75 initWithBundleId:idCopy groupId:groupIdCopy documentId:uUIDString date:v103];
      }

      v80 = pp_entities_log_handle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v94 = [v12 count];
        documentId2 = [v77 documentId];
        *buf = 138412802;
        *&buf[4] = idCopy;
        v134 = 2048;
        v135 = v94;
        v136 = 2112;
        v137 = documentId2;
        _os_log_debug_impl(&dword_23224A000, v80, OS_LOG_TYPE_DEBUG, "PPLocationNamedEntities: %@ donated %tu entities under document ID %@", buf, 0x20u);
      }

      v119 = v72;
      v81 = [(PPLocalNamedEntityStore *)self donateNamedEntities:v12 source:v77 algorithm:6 cloudSync:0 sentimentScore:&v119 error:0.0];
      v82 = v119;

      if (v81)
      {
        if (!v107)
        {
          v107 = 0;
          goto LABEL_71;
        }

        v115 = v82;
        if (self)
        {
          v83 = v77;
          v84 = [PPLocalLocationStore locationNamedEntityToPPScoredLocation:v11];
          v85 = +[PPLocalLocationStore defaultStore];
          *buf = v84;
          v107 = 1;
          v86 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v87 = [v85 donateLocations:v86 source:v83 contextualNamedEntities:0 algorithm:6 cloudSync:0 error:&v115];

          v88 = v115;
          if (v87)
          {
            v82 = v88;
            goto LABEL_71;
          }
        }

        else
        {
          v88 = v82;
        }

        v96 = v88;

        v97 = pp_entities_log_handle();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v96;
          _os_log_error_impl(&dword_23224A000, v97, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate locations: %@", buf, 0xCu);
        }

        v91 = +[PPMetricsUtils loggingQueue];
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_366;
        v112[3] = &unk_2789797E0;
        v113 = idCopy;
        v82 = v96;
        v114 = v82;
        dispatch_async(v91, v112);
        v93 = &v114;
        v92 = &v113;
      }

      else
      {
        v89 = v82;

        v90 = pp_entities_log_handle();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v89;
          _os_log_error_impl(&dword_23224A000, v90, OS_LOG_TYPE_ERROR, "PPLocationNamedEntities: failed to donate entities: %@", buf, 0xCu);
        }

        v91 = +[PPMetricsUtils loggingQueue];
        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_362;
        v116[3] = &unk_2789797E0;
        v117 = idCopy;
        v82 = v89;
        v118 = v82;
        dispatch_async(v91, v116);
        v93 = &v118;
        v92 = &v117;
      }

      v106 = v82;
      v107 = 0;
LABEL_71:

      objc_autoreleasePoolPop(context);
    }

    v105 = [obj countByEnumeratingWithState:&v129 objects:v138 count:16];
  }

  while (v105);
LABEL_75:

  if (error)
  {
    v98 = v106;
    *error = v106;
  }

  [(PPLocalNamedEntityStore *)self flushDonationsWithError:error];

  return v107;
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to donate map item for location name."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_357(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPLocationNamedEntities: failed to donate map item for unstructured location."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_362(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPLocationNamedEntities: failed to donate entities."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __78__PPLocalNamedEntityStore_donateLocationNamedEntities_bundleId_groupId_error___block_invoke_366(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  [v3 setErrorMessage:@"PPLocationNamedEntities: failed to donate locations."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = pp_entities_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "Invalidating named entity query cache due to clear operation.", &v15, 2u);
  }

  v8 = [(PPNamedEntityStorage *)self->_storage clearWithError:error deletedCount:count];
  v9 = v8;
  if (error && !v8)
  {
    v10 = pp_entities_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *error;
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "clearWithError error: %@", &v15, 0xCu);
    }
  }

  invalidationNotificationOverride = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
  uTF8String = [invalidationNotificationOverride UTF8String];
  if (!uTF8String)
  {
    uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
  }

  PPPostNotification(uTF8String);

  return v9;
}

- (BOOL)cloudSyncWithError:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  if (userKnowledgeStore)
  {
    v6 = pp_entities_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: exporting locally-generated named entity records", buf, 2u);
    }

    v7 = objc_opt_new();
    storage = self->_storage;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __46__PPLocalNamedEntityStore_cloudSyncWithError___block_invoke;
    v28[3] = &unk_278977450;
    v9 = v7;
    v29 = v9;
    [(PPNamedEntityStorage *)storage exportRecordsToDKWithShouldContinueBlock:v28];
    v10 = pp_entities_log_handle();
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
      v13 = pp_entities_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: importing remotely-generated named entity records", buf, 2u);
      }

        ;
      }

      v14 = pp_entities_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "cloudSyncWithError: processing _DKKnowledgeStore remote named entity deletions", buf, 2u);
      }

      [(PPNamedEntityStorage *)self->_storage processNewDKEventDeletions];
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

      v24 = pp_entities_log_handle();
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

    v9 = pp_entities_log_handle();
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

- (BOOL)donateMapItem:(id)item forPlaceName:(id)name error:(id *)error
{
  v10 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = pp_entities_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [itemCopy length];
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "map item being donated of length %tu", &v8, 0xCu);
  }

  return 0;
}

- (BOOL)deleteAllNamedEntitiesOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v7 = [(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesOlderThanDate:date atLeastOneNamedEntityRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    invalidationNotificationOverride = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    uTF8String = [invalidationNotificationOverride UTF8String];
    if (!uTF8String)
    {
      uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(uTF8String);
  }

  if (count)
  {
    *count = v11;
  }

  return v7;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  groupIdCopy = groupId;
  thanCopy = than;
  v21 = 0;
  v20 = 0;
  v15 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy groupId:groupIdCopy olderThanDate:thanCopy atLeastOneNamedEntityRemoved:&v21 deletedCount:&v20 error:error])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v15 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:idCopy groupId:groupIdCopy algorithm:4 olderThan:thanCopy deletedCount:0 error:error];
    }

    else
    {
      v15 = 1;
    }
  }

  if (v21 == 1)
  {
    invalidationNotificationOverride = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    uTF8String = [invalidationNotificationOverride UTF8String];
    if (!uTF8String)
    {
      uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(uTF8String);
  }

  if (count)
  {
    *count = v20;
  }

  return v15;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  v15 = 0;
  v14 = 0;
  v9 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy atLeastOneNamedEntityRemoved:&v15 deletedCount:&v14 error:error])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v9 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:idCopy algorithm:4 deletedCount:0 error:error];
    }

    else
    {
      v9 = 1;
    }
  }

  if (v15 == 1)
  {
    invalidationNotificationOverride = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    uTF8String = [invalidationNotificationOverride UTF8String];
    if (!uTF8String)
    {
      uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(uTF8String);
  }

  if (count)
  {
    *count = v14;
  }

  return v9;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v18 = 0;
  v17 = 0;
  v12 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy groupIds:idsCopy atLeastOneNamedEntityRemoved:&v18 deletedCount:&v17 error:error])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v12 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:idCopy groupIds:idsCopy algorithm:4 deletedCount:0 error:error];
    }

    else
    {
      v12 = 1;
    }
  }

  if (v18 == 1)
  {
    invalidationNotificationOverride = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    uTF8String = [invalidationNotificationOverride UTF8String];
    if (!uTF8String)
    {
      uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(uTF8String);
  }

  if (count)
  {
    *count = v17;
  }

  return v12;
}

- (BOOL)deleteAllNamedEntitiesFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  idCopy = id;
  idsCopy = ids;
  v18 = 0;
  v17 = 0;
  v12 = 0;
  if ([(PPNamedEntityStorage *)self->_storage deleteAllNamedEntitiesFromSourcesWithBundleId:idCopy documentIds:idsCopy atLeastOneNamedEntityRemoved:&v18 deletedCount:&v17 error:error])
  {
    topicStoreForNamedEntityMapping = self->_topicStoreForNamedEntityMapping;
    if (topicStoreForNamedEntityMapping)
    {
      v12 = [(PPLocalTopicStore *)topicStoreForNamedEntityMapping deleteAllTopicsFromSourcesWithBundleId:idCopy documentIds:idsCopy algorithm:4 deletedCount:0 error:error];
    }

    else
    {
      v12 = 1;
    }
  }

  if (v18 == 1)
  {
    invalidationNotificationOverride = [(PPLocalNamedEntityStore *)self invalidationNotificationOverride];
    uTF8String = [invalidationNotificationOverride UTF8String];
    if (!uTF8String)
    {
      uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesInvalidated";
    }

    PPPostNotification(uTF8String);
  }

  if (count)
  {
    *count = v17;
  }

  return v12;
}

- (BOOL)flushDonationsWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PPLocalNamedEntityStore_flushDonationsWithError___block_invoke;
  v8[3] = &unk_278973630;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  if (*(v10 + 24) == 1)
  {
    meaningfulChangeNotificationOverride = [(PPLocalNamedEntityStore *)self meaningfulChangeNotificationOverride];
    uTF8String = [meaningfulChangeNotificationOverride UTF8String];
    if (!uTF8String)
    {
      uTF8String = "com.apple.proactive.PersonalizationPortrait.namedEntitiesDidChangeMeaningfully";
    }

    PPPostNotification(uTF8String);
  }

  _Block_object_dispose(&v9, 8);
  return 1;
}

void __51__PPLocalNamedEntityStore_flushDonationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pp_entities_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "Flushing donations", v5, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3[8];
  v3[8] = 0;
}

- (BOOL)donateNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm cloudSync:(BOOL)sync sentimentScore:(double)score error:(id *)error
{
  syncCopy = sync;
  v100 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  sourceCopy = source;
  v71 = entitiesCopy;
  if (!entitiesCopy)
  {
    v62 = sourceCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalNamedEntityStore.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"entities"}];

    sourceCopy = v62;
  }

  v70 = sourceCopy;
  if (!sourceCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocalNamedEntityStore.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"source"}];
  }

  v14 = pp_entities_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v71 count];
    v16 = [MEMORY[0x277D3A438] describeAlgorithm:algorithm];
    *buf = 134218498;
    v95 = v15;
    v96 = 2112;
    v97 = v70;
    v98 = 2112;
    v99 = v16;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore received a donation of %tu named entities from source: %@, algorithm: %@", buf, 0x20u);
  }

  if ([v71 count])
  {
    v17 = +[PPSettings sharedInstance];
    bundleId = [v70 bundleId];
    v19 = [v17 bundleIdentifierIsEnabledForDonation:bundleId];

    if (v19)
    {
      if (syncCopy)
      {
        v20 = +[PPSettings sharedInstance];
        bundleId2 = [v70 bundleId];
        v22 = [v20 bundleIdentifierIsEnabledForCloudKit:bundleId2];

        if (v22)
        {
          v65 = 1;
          goto LABEL_22;
        }

        v26 = pp_entities_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          bundleId3 = [v70 bundleId];
          *buf = 138412290;
          v95 = bundleId3;
          _os_log_debug_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore suppressed named entity cloudSync on donation from disabled bundleId: %@", buf, 0xCu);
        }
      }

      v65 = 0;
LABEL_22:
      v27 = [v71 count];
      v84 = 0;
      v85 = &v84;
      v86 = 0x3032000000;
      v87 = __Block_byref_object_copy__6005;
      v88 = __Block_byref_object_dispose__6006;
      v89 = 0;
      lock = self->_lock;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke;
      v81[3] = &unk_2789736A8;
      v83 = &v84;
      v29 = v71;
      v82 = v29;
      [(_PASLock *)lock runWithLockAcquired:v81];
      v30 = +[PPMetricsUtils loggingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke_2;
      block[3] = &unk_2789736D0;
      v66 = v70;
      v75 = v66;
      selfCopy = self;
      v78 = &v84;
      algorithmCopy = algorithm;
      v80 = v27;
      v77 = v29;
      dispatch_async(v30, block);

      if ([v85[5] count])
      {
        v31 = pp_entities_log_handle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v85[5] count];
          v33 = [v85[5] count];
          *buf = 134218496;
          v95 = v27 - v32;
          v96 = 2048;
          v97 = v27;
          v98 = 2048;
          v99 = v33;
          _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: PPNamedEntityFilter filtered %tu entities. Prev count %tu, new count %tu.", buf, 0x20u);
        }

        v34 = v85[5];
        v35 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v34, "count")}];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        obj = v34;
        v36 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
        if (v36)
        {
          v73 = *v91;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v91 != v73)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v90 + 1) + 8 * i);
              v39 = objc_autoreleasePoolPush();
              item = [v38 item];
              v41 = [v35 objectForKeyedSubscript:item];

              if (v41)
              {
                scoredNamedEntity = [v41 scoredNamedEntity];
                [scoredNamedEntity score];
                v44 = v43;
                occurrencesInSource = [v41 occurrencesInSource];
                [v38 score];
                v47 = v46;
                occurrencesInSource2 = [v41 occurrencesInSource];

                v49 = objc_alloc(MEMORY[0x277D3A498]);
                item2 = [v38 item];
                v51 = [v49 initWithItem:item2 score:(v47 + v44 * occurrencesInSource) / (occurrencesInSource2 + 1)];

                v52 = -[PPCoalescedScoredNamedEntity initWithScoredNamedEntity:occurrencesInSource:]([PPCoalescedScoredNamedEntity alloc], "initWithScoredNamedEntity:occurrencesInSource:", v51, ([v41 occurrencesInSource] + 1));
              }

              else
              {
                v52 = [[PPCoalescedScoredNamedEntity alloc] initWithScoredNamedEntity:v38 occurrencesInSource:1];
              }

              item3 = [v38 item];
              [v35 setObject:v52 forKeyedSubscript:item3];

              objc_autoreleasePoolPop(v39);
            }

            v36 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
          }

          while (v36);
        }

        v54 = objc_autoreleasePoolPush();
        allValues = [v35 allValues];
        objc_autoreleasePoolPop(v54);

        if ([allValues count])
        {
          v56 = pp_entities_log_handle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = [allValues count];
            *buf = 134217984;
            v95 = v57;
            _os_log_impl(&dword_23224A000, v56, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore: writing %tu coalesced scored entities to the database.", buf, 0xCu);
          }

          if (![(PPNamedEntityStorage *)self->_storage donateNamedEntities:allValues source:v66 algorithm:algorithm cloudSync:v65 decayRate:error sentimentScore:0.0 error:score])
          {
            v25 = 0;
            goto LABEL_43;
          }

          [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_334];
        }
      }

      else
      {
        allValues = pp_default_log_handle();
        if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
        {
          bundleId4 = [v66 bundleId];
          *buf = 138412546;
          v95 = bundleId4;
          v96 = 2048;
          v97 = v27;
          _os_log_impl(&dword_23224A000, allValues, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: Received a donation that filtered to zero from bundle %@. Prev count %tu", buf, 0x16u);
        }
      }

      v25 = 1;
LABEL_43:

      _Block_object_dispose(&v84, 8);
      goto LABEL_44;
    }

    v23 = pp_entities_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      bundleId5 = [v70 bundleId];
      *buf = 138412290;
      v95 = bundleId5;
      _os_log_debug_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore suppressed named entity donation from disabled bundleId: %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = pp_entities_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      bundleId6 = [v70 bundleId];
      *buf = 138412290;
      v95 = bundleId6;
      _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore received empty donation from %@", buf, 0xCu);
    }
  }

  v25 = 1;
LABEL_44:

  return v25;
}

void __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10[2] result];
  v4 = [v3 filterScoredNamedEntities:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v4;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v9 = *(*(a1 + 40) + 8);
    v8 = *(v9 + 40);
    *(v9 + 40) = MEMORY[0x277CBEBF8];
  }
}

void __95__PPLocalNamedEntityStore_donateNamedEntities_source_algorithm_cloudSync_sentimentScore_error___block_invoke_2(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) bundleId];
  [v2 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", v3)}];

  [v2 setAlgorithm:{+[PPMetricsUtils mapNamedEntityAlgorithmForPET2:](PPMetricsUtils, "mapNamedEntityAlgorithmForPET2:", *(a1 + 64))}];
  v4 = [*(a1 + 32) groupId];
  v5 = [PPMetricsUtils filterGroupIdAllowance:v4];
  [v2 setGroupId:v5];

  v6 = [*(*(a1 + 40) + 48) concatenatedTreatmentNames];
  [v2 setActiveTreatments:v6];

  v7 = [MEMORY[0x277D41DA8] sharedInstance];
  [v7 trackDistributionForMessage:v2 value:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];

  v8 = objc_opt_new();
  v9 = [*(a1 + 32) language];
  [v8 setDetectedLanguage:v9];

  v10 = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
  [v8 setSystemLanguage:v10];

  v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v8 setLanguageCount:{objc_msgSend(v11, "count")}];

  v12 = [*(*(a1 + 40) + 48) concatenatedTreatmentNames];
  [v8 setActiveTreatments:v12];

  v13 = [MEMORY[0x277D41DA8] sharedInstance];
  [v13 trackScalarForMessage:v8];

  v14 = objc_opt_new();
  v15 = [*(*(a1 + 40) + 48) concatenatedTreatmentNames];
  [v14 setActiveTreatments:v15];

  v16 = *(a1 + 72);
  v17 = v16 - [*(*(*(a1 + 56) + 8) + 40) count];
  v18 = [MEMORY[0x277D41DA8] sharedInstance];
  [v18 trackDistributionForMessage:v14 value:v17];

  if (*(a1 + 64) != 16)
  {
    return;
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  if (!v19)
  {
    goto LABEL_24;
  }

  v21 = objc_alloc(MEMORY[0x277CBEB98]);
  v22 = +[PPConfiguration sharedInstance];
  v23 = [v22 differentiallyPrivateEntityLogLevels];
  v24 = [v23 objectForKeyedSubscript:@"Extraction.low"];
  v25 = [v21 initWithArray:v24];

  v26 = objc_alloc(MEMORY[0x277CBEB98]);
  v27 = +[PPConfiguration sharedInstance];
  v28 = [v27 differentiallyPrivateEntityLogLevels];
  v29 = [v28 objectForKeyedSubscript:@"Extraction.medium"];
  v52 = [v26 initWithArray:v29];

  v30 = objc_alloc(MEMORY[0x277CBEB98]);
  v31 = +[PPConfiguration sharedInstance];
  v32 = [v31 differentiallyPrivateEntityLogLevels];
  v33 = [v32 objectForKeyedSubscript:@"Extraction.high"];
  v50 = [v30 initWithArray:v33];

  v34 = objc_opt_new();
  v53 = objc_opt_new();
  v51 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v49 = v20;
  obj = v20;
  v35 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v35)
  {
    goto LABEL_21;
  }

  v36 = v35;
  v37 = *v57;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v57 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v56 + 1) + 8 * i);
      v40 = MEMORY[0x277D3A420];
      v41 = [v39 item];
      v42 = [v40 describeCategory:{objc_msgSend(v41, "category")}];

      v43 = [v39 item];
      v44 = [v43 dynamicCategory];

      v45 = v34;
      if ([v25 containsObject:v42])
      {
LABEL_18:
        v46 = [v39 item];
        v47 = [v46 name];
        [v45 addObject:v47];

        goto LABEL_19;
      }

      if (v44)
      {
        v45 = v34;
        if ([v25 containsObject:v44])
        {
          goto LABEL_18;
        }

        v45 = v53;
        if ([v52 containsObject:v42])
        {
          goto LABEL_18;
        }

        v45 = v53;
        if ([v52 containsObject:v44])
        {
          goto LABEL_18;
        }

        v45 = v51;
        if ([v50 containsObject:v42])
        {
          goto LABEL_18;
        }

        v45 = v51;
        if ([v50 containsObject:v44])
        {
          goto LABEL_18;
        }
      }

      else
      {
        v45 = v53;
        if ([v52 containsObject:v42])
        {
          goto LABEL_18;
        }

        v45 = v51;
        if ([v50 containsObject:v42])
        {
          goto LABEL_18;
        }
      }

LABEL_19:
    }

    v36 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  }

  while (v36);
LABEL_21:

  [PPLocalNamedEntityStore _logDifferentiallyPrivateExtractionsWithDpCategory:v34 extractions:?];
  [PPLocalNamedEntityStore _logDifferentiallyPrivateExtractionsWithDpCategory:v53 extractions:?];
  [PPLocalNamedEntityStore _logDifferentiallyPrivateExtractionsWithDpCategory:v51 extractions:?];
  v48 = pp_entities_log_handle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v48, OS_LOG_TYPE_INFO, "PPLocalNamedEntityStore: completed logging of entities to differential privacy.", buf, 2u);
  }

  v20 = v49;
LABEL_24:
}

- (void)_logDifferentiallyPrivateExtractionsWithDpCategory:(void *)category extractions:(void *)extractions
{
  v15 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  extractionsCopy = extractions;
  if ([extractionsCopy count])
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v8 = [v5 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait.NamedEntity", categoryCopy, localeIdentifier];

    v9 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v8];
    [v9 record:extractionsCopy];
    v10 = pp_entities_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v12 = [extractionsCopy count];
      v13 = 2112;
      v14 = categoryCopy;
      _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: logged %tu items of type %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = pp_entities_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = categoryCopy;
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: not logging any extractions matching %@", buf, 0xCu);
    }
  }
}

- (id)rankedNamedEntitiesWithQuery:(id)query error:(id *)error clientProcessName:(id)name
{
  v120 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  nameCopy = name;
  if ([queryCopy isForRecordMonitoring])
  {
    v7 = +[PPConfiguration sharedInstance];
    [queryCopy setLimit:{objc_msgSend(v7, "namedEntityLoadAndMonitorInitialLoadLimit")}];

    v8 = pp_entities_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = nameCopy;
      *&buf[12] = 2048;
      *&buf[14] = [queryCopy limit];
      _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPLocalNamedEntityStore: overwrote query from %@ with limit %tu", buf, 0x16u);
    }
  }

  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v12 = [fromDate description];
    toDate = [queryCopy toDate];
    v14 = [toDate description];
    *buf = 134218498;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v114 = v14;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "rankedNamedEntitiesWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  limit2 = [queryCopy limit];
  v15 = +[PPConfiguration sharedInstance];
  v16 = limit2 > [v15 maxNumberNamedEntities];

  if (v16)
  {
    v17 = +[PPConfiguration sharedInstance];
    maxNumberNamedEntities = [v17 maxNumberNamedEntities];

    limit2 = maxNumberNamedEntities;
  }

  if ([queryCopy locationConsumer] == 3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v114 = __Block_byref_object_copy__6005;
    v115 = __Block_byref_object_dispose__6006;
    v116 = 0;
    lock = self->_lock;
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke;
    v109[3] = &unk_278973630;
    v109[4] = buf;
    [(_PASLock *)lock runWithLockAcquired:v109];
    if ([*(*&buf[8] + 40) count] > limit2)
    {
      v20 = [*(*&buf[8] + 40) subarrayWithRange:0];
      v21 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v20;
    }

    extractSortedMutableArray = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 0;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v104 = 0;
    v23 = -[PPEvictingMinPriorityQueue initWithCapacity:]([PPEvictingMinPriorityQueue alloc], "initWithCapacity:", [queryCopy limit]);
    scoringDate = [queryCopy scoringDate];
    v25 = scoringDate;
    if (scoringDate)
    {
      v26 = scoringDate;
    }

    else
    {
      v26 = objc_opt_new();
    }

    v27 = v26;

    v72 = +[PPStreamingNamedEntityScorer scoreInterpreterAggregationBytecode];
    v70 = +[PPStreamingNamedEntityScorer scoreInterpreterFinalBytecode];
    v28 = 0;
    selfCopy2 = self;
    if (v72 && v70)
    {
      v30 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v72];
      v28 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v70]| v30;
      selfCopy2 = self;
    }

    v31 = [(PPNamedEntityStorage *)selfCopy2->_storage sourceStats:v28 withExcludedAlgorithms:0];
    v99[0] = 0;
    v99[1] = v99;
    v99[2] = 0x3032000000;
    v99[3] = __Block_byref_object_copy__6005;
    v99[4] = __Block_byref_object_dispose__6006;
    v100 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2;
    aBlock[3] = &unk_278973658;
    aBlock[4] = selfCopy2;
    v66 = v27;
    v93 = v66;
    v67 = v31;
    v94 = v67;
    v96 = v99;
    v68 = v23;
    v95 = v68;
    v97 = &v101;
    v98 = &v105;
    v32 = _Block_copy(aBlock);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v114 = __Block_byref_object_copy__6005;
    v115 = __Block_byref_object_dispose__6006;
    v116 = 0;
    v90[0] = 0;
    v90[1] = v90;
    v90[2] = 0x3032000000;
    v90[3] = __Block_byref_object_copy__6005;
    v90[4] = __Block_byref_object_dispose__6006;
    v91 = 0;
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x3032000000;
    v88[3] = __Block_byref_object_copy__6005;
    v88[4] = __Block_byref_object_dispose__6006;
    v89 = 0;
    v33 = pp_entities_signpost_handle();
    spid = os_signpost_id_generate(v33);

    v34 = pp_entities_signpost_handle();
    v35 = v34;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *v111 = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v35, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalNamedEntityStore.rankedNamedEntitiesWithQuery.aggregation", "", v111, 2u);
    }

    v36 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalNamedEntityStore-scoring" qosClass:qos_class_self()];
    v37 = dispatch_semaphore_create(64);
    v38 = [queryCopy copy];
    [v38 setOrderByName:1];
    [v38 setRemoveNearDuplicates:1];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_309;
    v80[3] = &unk_278973680;
    v85 = buf;
    v86 = v90;
    v87 = v88;
    v39 = v37;
    v81 = v39;
    v40 = v36;
    v82 = v40;
    v41 = v32;
    selfCopy3 = self;
    v84 = v41;
    v42 = v80;
    v43 = [v38 copy];
    [v43 setLimit:-1];
    v110 = 0;
    v44 = [(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:v43 error:&v110 block:v42];

    v45 = v110;
    if (!v44)
    {
      v46 = pp_entities_log_handle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v111 = 138412290;
        v112 = v45;
        _os_log_error_impl(&dword_23224A000, v46, OS_LOG_TYPE_ERROR, "_unlimitedNamedEntityRecordsWithQuery: nil result from iterNamedEntityRecordsWithQuery: %@", v111, 0xCu);
      }

      if (error)
      {
        v47 = v45;
        *error = v45;
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_312;
    block[3] = &unk_2789772E0;
    v78 = v90;
    v48 = v41;
    v77 = v48;
    v79 = v88;
    dispatch_sync(v40, block);
    v49 = pp_entities_signpost_handle();
    v50 = v49;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *v111 = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v50, OS_SIGNPOST_INTERVAL_END, spid, "PPLocalNamedEntityStore.rankedNamedEntitiesWithQuery.aggregation", "", v111, 2u);
    }

    _Block_object_dispose(v88, 8);
    _Block_object_dispose(v90, 8);

    _Block_object_dispose(buf, 8);
    v51 = v106[3];
    v52 = queryCopy;
    v53 = nameCopy;
    v54 = +[PPMetricsUtils loggingQueue];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __86__PPLocalNamedEntityStore__petLoggingForQuery_resultCount_clientProcessName_hasError___block_invoke;
    v114 = &unk_278979850;
    v55 = v53;
    v115 = v55;
    v118 = v51;
    v56 = v52;
    v119 = !v44;
    v116 = v56;
    selfCopy4 = self;
    dispatch_async(v54, buf);

    if (v44)
    {
      v57 = v102[3];
      v58 = v106[3];
      v59 = pp_entities_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v102[3];
        v61 = +[PPConfiguration sharedInstance];
        [v61 scoreThresholdForNamedEntity];
        *buf = 134218496;
        *&buf[4] = v60;
        *&buf[12] = 2048;
        *&buf[14] = v62;
        *&buf[22] = 2048;
        v114 = (v58 + v57);
        _os_log_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEFAULT, "PPLocalNamedEntityStore: filtered %tu items below threshold of %f out of %tu total.", buf, 0x20u);
      }

      extractSortedMutableArray = [(PPEvictingMinPriorityQueue *)v68 extractSortedMutableArray];
      if ([extractSortedMutableArray count] > limit2)
      {
        v63 = [extractSortedMutableArray subarrayWithRange:0];

        extractSortedMutableArray = v63;
      }
    }

    else
    {
      v64 = pp_default_log_handle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = 0;
        _os_log_error_impl(&dword_23224A000, v64, OS_LOG_TYPE_ERROR, "Error encountered while scoring named entities: %@", buf, 0xCu);
      }

      extractSortedMutableArray = 0;
      if (error)
      {
        *error = 0;
      }
    }

    _Block_object_dispose(v99, 8);
    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(&v105, 8);
  }

  return extractSortedMutableArray;
}

uint64_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 24) result];

  return MEMORY[0x2821F96F8]();
}

void __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 count])
  {
    v6 = *MEMORY[0x277D3A6D8];
    *&v6 = *MEMORY[0x277D3A6D8];
    v7 = [*(a1 + 32) scoredEntityFromRecords:v10 scoringDate:*(a1 + 40) perRecordDecayRate:*(a1 + 48) decayRate:v5 sourceStats:*(*(a1 + 64) + 8) + 40 decayedFeedbackCounts:0 streamingScorer:v6 mlModel:0.0];
    v8 = *(a1 + 56);
    objc_sync_enter(v8);
    if (v7)
    {
      [*(a1 + 56) addObject:v7];
      v9 = 80;
    }

    else
    {
      v9 = 72;
    }

    ++*(*(*(a1 + v9) + 8) + 24);
    objc_sync_exit(v8);
  }
}

void __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_309(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = [v3 entity];
  v6 = [v5 clusterIdentifier];
  LOBYTE(v4) = [v4 isEqualToString:v6];

  v7 = *(*(*(a1 + 72) + 8) + 40);
  if ((v4 & 1) == 0)
  {
    v8 = v7;
    v9 = *(*(*(a1 + 80) + 8) + 40);
    if (![v8 count])
    {
      goto LABEL_9;
    }

    v10 = +[PPConfiguration sharedInstance];
    if ([v10 use2StageScoreInterpreterForNEScoring])
    {
    }

    else
    {
      v11 = +[PPConfiguration sharedInstance];
      v12 = [v11 namedEntityScoringUsesHybrid];

      if (!v12)
      {
        if ([MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 32) timeoutSeconds:0.0])
        {
          (*(*(a1 + 56) + 16))();
LABEL_9:
          v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
          v16 = *(*(a1 + 72) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v18 = [v3 entity];
          v19 = [v18 clusterIdentifier];
          v20 = *(*(a1 + 64) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          v22 = [v3 entity];
          v23 = [v22 clusterIdentifier];

          if (v23)
          {
            if (!*(*(*(a1 + 64) + 8) + 40))
            {
LABEL_16:

              goto LABEL_17;
            }

            v24 = [*(*(a1 + 48) + 56) decayedFeedbackCountsForClusterIdentifier:?];
            v25 = *(*(a1 + 80) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;
          }

          else
          {
            v27 = pp_default_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_23224A000, v27, OS_LOG_TYPE_FAULT, "Named entity record unexpectedly had nil cluster identifier while aggregating for scoring.", buf, 2u);
            }

            v28 = *(*(a1 + 80) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = 0;

            v26 = objc_opt_new();
            v30 = [v26 UUIDString];
            v31 = [v30 lowercaseString];
            v32 = *(*(a1 + 64) + 8);
            v33 = *(v32 + 40);
            *(v32 + 40) = v31;
          }

          goto LABEL_16;
        }

        v34 = *(a1 + 40);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_3;
        v36[3] = &unk_278977290;
        v40 = *(a1 + 56);
        v37 = v8;
        v38 = v9;
        v39 = *(a1 + 32);
        dispatch_async(v34, v36);

        v14 = v40;
LABEL_8:

        goto LABEL_9;
      }
    }

    [MEMORY[0x277D425A0] waitForSemaphore:*(a1 + 32)];
    v13 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2_310;
    block[3] = &unk_278977290;
    v45 = *(a1 + 56);
    v42 = v8;
    v43 = v9;
    v44 = *(a1 + 32);
    dispatch_async(v13, block);

    v14 = v45;
    goto LABEL_8;
  }

  [v7 addObject:v3];
LABEL_17:
}

void *__80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_312(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) count];
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

void __86__PPLocalNamedEntityStore__petLoggingForQuery_resultCount_clientProcessName_hasError___block_invoke(uint64_t a1)
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
  v4 = [*(a1 + 40) scoringDate];
  [v9 setTimeSpec:v4 != 0];

  [v9 setLimitHit:{*(a1 + 56) > objc_msgSend(*(a1 + 40), "limit")}];
  v5 = [*(a1 + 40) fromDate];
  [v9 setTimeLimited:v5 != 0];

  v6 = [*(a1 + 40) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 64)];
  v7 = [*(*(a1 + 48) + 48) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

intptr_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_2_310(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

intptr_t __80__PPLocalNamedEntityStore_rankedNamedEntitiesWithQuery_error_clientProcessName___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (id)scoredEntityFromRecords:(id)records scoringDate:(id)date perRecordDecayRate:(float)rate decayRate:(float)decayRate sourceStats:(id)stats decayedFeedbackCounts:(id)counts streamingScorer:(id *)scorer mlModel:(id)self0
{
  v122 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dateCopy = date;
  statsCopy = stats;
  countsCopy = counts;
  if (![recordsCopy count])
  {
    v74 = 0;
    goto LABEL_55;
  }

  v20 = recordsCopy;
  v104 = dateCopy;
  v21 = statsCopy;
  v106 = countsCopy;
  v102 = v20;
  if (!self)
  {
    v74 = 0;
    goto LABEL_54;
  }

  v101 = recordsCopy;
  v97 = objc_autoreleasePoolPush();
  if ([v20 count])
  {
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer_ object:self file:@"PPLocalNamedEntityStore.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"records.count > 0"}];

    if (v21)
    {
      goto LABEL_9;
    }
  }

  v22 = +[PPStreamingNamedEntityScorer scoreInterpreterAggregationBytecode];
  v23 = +[PPStreamingNamedEntityScorer scoreInterpreterFinalBytecode];
  v24 = v23;
  v25 = 0;
  if (v22 && v23)
  {
    v26 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v22];
    v25 = [PPStreamingNamedEntityScorer sourceStatsNeededForBytecode:v24]| v26;
  }

  v21 = [(PPNamedEntityStorage *)self->_storage sourceStats:v25 withExcludedAlgorithms:0];

LABEL_9:
  selfCopy = self;
  v103 = v21;
  v98 = countsCopy;
  v99 = statsCopy;
  v100 = dateCopy;
  v27 = [v20 objectAtIndexedSubscript:0];
  entity = [v27 entity];

  v28 = v20;
  v29 = objc_opt_new();
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v113;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v113 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = MEMORY[0x277CCABB0];
        entity2 = [*(*(&v112 + 1) + 8 * i) entity];
        v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(entity2, "category")}];
        [v29 addObject:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v112 objects:v120 count:16];
    }

    while (v32);
  }

  allObjects = [v29 allObjects];
  v107 = MEMORY[0x277D85DD0];
  v108 = 3221225472;
  v109 = __62__PPLocalNamedEntityStore__dominantEntityCategoryFromRecords___block_invoke;
  v110 = &unk_2789735A0;
  v111 = v29;
  v39 = v29;
  v40 = [allObjects sortedArrayUsingComparator:&v107];
  lastObject = [v40 lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  v43 = v30;
  v44 = objc_opt_new();
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v113;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v113 != v48)
        {
          objc_enumerationMutation(v45);
        }

        entity3 = [*(*(&v112 + 1) + 8 * j) entity];
        name = [entity3 name];
        [v44 addObject:name];
      }

      v47 = [v45 countByEnumeratingWithState:&v112 objects:v120 count:16];
    }

    while (v47);
  }

  allObjects2 = [v44 allObjects];
  v107 = MEMORY[0x277D85DD0];
  v108 = 3221225472;
  v109 = __58__PPLocalNamedEntityStore__dominantEntityNameFromRecords___block_invoke;
  v110 = &unk_2789735C8;
  v111 = v44;
  v53 = v44;
  v54 = [allObjects2 sortedArrayUsingComparator:&v107];
  lastObject2 = [v54 lastObject];

  v107 = MEMORY[0x277D85DD0];
  v108 = 3221225472;
  v109 = __150__PPLocalNamedEntityStore__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer___block_invoke;
  v110 = &__block_descriptor_40_e46_B24__0__PPNamedEntityRecord_8__NSDictionary_16l;
  v111 = unsignedIntegerValue;
  v56 = [MEMORY[0x277CCAC30] predicateWithBlock:&v107];
  v57 = [v45 filteredArrayUsingPredicate:v56];

  v96 = v57;
  v58 = [v57 sortedArrayUsingComparator:&__block_literal_global_293];
  lastObject3 = [v58 lastObject];

  v60 = objc_alloc(MEMORY[0x277D3A420]);
  bestLanguage = [entity bestLanguage];
  v62 = [v60 initWithName:lastObject2 category:unsignedIntegerValue dynamicCategory:0 language:bestLanguage mostRelevantRecord:lastObject3];

  v63 = *scorer;
  if (!*scorer)
  {
    v64 = [[PPStreamingNamedEntityScorer alloc] initWithScoringDate:v104 perRecordDecayRate:v103 sourceStats:rate];
    v65 = *scorer;
    *scorer = v64;

    v63 = *scorer;
  }

  v95 = lastObject2;
  [v63 startNewClusterWithDecayedFeedbackCounts:v106 mostRelevantRecord:lastObject3 dominantEntityName:lastObject2];
  v66 = +[PPConfiguration sharedInstance];
  namedEntityScoringUsesHybrid = [v66 namedEntityScoringUsesHybrid];

  if (namedEntityScoringUsesHybrid)
  {
    v68 = [(NSCache *)selfCopy->_modelCache objectForKey:@"scoring_model"];
    countsCopy = v98;
    if (!v68)
    {
      trialWrapper = selfCopy->_trialWrapper;
      *&v112 = 0;
      v68 = [(PPTrialWrapper *)trialWrapper mlModelForModelName:@"PPModel_NE.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" error:&v112];
      v70 = v112;
      if (!v68)
      {
        v90 = v70;
        v91 = pp_default_log_handle();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          *v120 = 138412290;
          v121 = v90;
          _os_log_fault_impl(&dword_23224A000, v91, OS_LOG_TYPE_FAULT, "PPLocalNamedEntityStore: unable to load scoring model with error: %@", v120, 0xCu);
        }

        v92 = pp_entities_log_handle();
        dateCopy = v100;
        recordsCopy = v101;
        statsCopy = v99;
        v73 = v96;
        v87 = v97;
        v21 = v103;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *v120 = 0;
          _os_log_error_impl(&dword_23224A000, v92, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: unable to locate ML model.", v120, 2u);
        }

        v74 = 0;
        goto LABEL_53;
      }

      [(NSCache *)selfCopy->_modelCache setObject:v68 forKey:@"scoring_model"];
    }

    [(PPLocalNamedEntityStore *)selfCopy finalScoreFromRecordsUsingHybrid:v45 streamingScorer:*scorer mlModel:v68];
    v72 = v71;

    v73 = v57;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v75 = v45;
    v76 = [v75 countByEnumeratingWithState:&v112 objects:v120 count:16];
    v73 = v57;
    if (v76)
    {
      v77 = v76;
      v78 = *v113;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v113 != v78)
          {
            objc_enumerationMutation(v75);
          }

          [*scorer addRecord:*(*(&v112 + 1) + 8 * k)];
        }

        v77 = [v75 countByEnumeratingWithState:&v112 objects:v120 count:16];
      }

      while (v77);
    }

    [*scorer getFinalScore];
    v72 = v80;
    countsCopy = v98;
  }

  v81 = +[PPConfiguration sharedInstance];
  [v81 scoreThresholdForNamedEntity];
  v83 = v82;

  if (v72 <= 0.0)
  {
    v84 = 1;
  }

  else
  {
    v84 = namedEntityScoringUsesHybrid;
  }

  v85 = v83;
  v86 = v84 == 1 && v72 < v85;
  statsCopy = v99;
  dateCopy = v100;
  v87 = v97;
  if (v86)
  {
    recordsCopy = v101;
    if (namedEntityScoringUsesHybrid)
    {
      v88 = pp_entities_log_handle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v117 = v72;
        v118 = 2048;
        v119 = v85;
        _os_log_debug_impl(&dword_23224A000, v88, OS_LOG_TYPE_DEBUG, "Portrait Scoring, filtering out score of %f below threshold of %f", buf, 0x16u);
      }
    }

    v74 = 0;
  }

  else
  {
    v74 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v62 score:v72];
    recordsCopy = v101;
  }

  v21 = v103;
LABEL_53:

  objc_autoreleasePoolPop(v87);
LABEL_54:

LABEL_55:

  return v74;
}

BOOL __150__PPLocalNamedEntityStore__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 entity];
  v4 = [v3 category] == *(a1 + 32);

  return v4;
}

uint64_t __150__PPLocalNamedEntityStore__defaultScoredEntityFromRecords_scoringDate_perRecordDecayRate_decayRate_sourceStats_decayedFeedbackCounts_streamingScorer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 source];
  v6 = [v5 date];
  v7 = [v4 source];

  v8 = [v7 date];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __58__PPLocalNamedEntityStore__dominantEntityNameFromRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 localizedCapitalizedString];
  v8 = [v6 isEqualToString:v7];

  v9 = [v5 localizedCapitalizedString];
  v10 = [v5 isEqualToString:v9];

  v11 = [*(a1 + 32) countForObject:v6];
  v12 = [*(a1 + 32) countForObject:v5];

  if (v8 && !v10)
  {
    return 1;
  }

  if (v11 < v12)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (v11 == v12)
  {
    v14 = 0;
  }

  if (v8 & 1 | ((v10 & 1) == 0))
  {
    return v14;
  }

  else
  {
    return -1;
  }
}

uint64_t __62__PPLocalNamedEntityStore__dominantEntityCategoryFromRecords___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  v9 = -1;
  if (v7 >= v8)
  {
    v9 = 1;
  }

  if (v7 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model
{
  v33 = *MEMORY[0x277D85DE8];
  hybridCopy = hybrid;
  scorerCopy = scorer;
  modelCopy = model;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [hybridCopy countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(hybridCopy);
        }

        [scorerCopy addRecord:*(*(&v26 + 1) + 8 * i)];
      }

      v11 = [hybridCopy countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0;
  [scorerCopy getFinalScoreWithAggregationResultOut:0 finalResultOut:&v25];
  if (v25)
  {
    v24 = 0;
    v14 = [modelCopy predictionFromFeatures:v25 error:&v24];
    v15 = v24;
    if (v14)
    {
      v16 = [v14 featureValueForName:@"computed_score"];
      multiArrayValue = [v16 multiArrayValue];

      if (multiArrayValue)
      {
        multiArrayValue2 = [v16 multiArrayValue];
        v19 = [multiArrayValue2 objectAtIndexedSubscript:0];
        [v19 doubleValue];
        v21 = v20;
      }

      else
      {
        [v16 doubleValue];
        v21 = v22;
      }
    }

    else
    {
      v16 = pp_default_log_handle();
      v21 = -1.0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v31 = v15;
        _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "PPLocalNamedEntityStore: unable to retrieve prediction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = pp_default_log_handle();
    v21 = 0.0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v15, OS_LOG_TYPE_FAULT, "PPLocalLocationStore: the score interpreter provided a nil final output.", buf, 2u);
    }
  }

  return v21;
}

- (BOOL)iterRankedNamedEntitiesWithQuery:(id)query error:(id *)error block:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  v10 = pp_entities_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v13 = [fromDate description];
    toDate = [queryCopy toDate];
    v15 = [toDate description];
    *buf = 134218498;
    v34 = limit;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "iterRankedNamedEntitiesWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v31 = 0;
  v16 = [(PPLocalNamedEntityStore *)self rankedNamedEntitiesWithQuery:queryCopy error:&v31];
  v17 = v31;
  if (v17)
  {
    v18 = pp_entities_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v17;
      _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "iterRankedNamedEntitiesWithQuery: error from rankedNamedEntitiesWithQuery: %@", buf, 0xCu);
    }

    if (error)
    {
      v19 = v17;
      *error = v17;
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
LABEL_10:
      v24 = 0;
      while (1)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        buf[0] = 0;
        blockCopy[2](blockCopy, v25, buf);
        if (buf[0])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v22)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

  return v17 == 0;
}

- (id)namedEntityRecordsWithQuery:(id)query error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = pp_entities_log_handle();
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
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "namedEntityRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v13 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__PPLocalNamedEntityStore_namedEntityRecordsWithQuery_error___block_invoke;
  v18[3] = &unk_2789790F8;
  v19 = v13;
  v14 = v13;
  if ([(PPLocalNamedEntityStore *)self iterNamedEntityRecordsWithQuery:queryCopy error:error block:v18])
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

- (BOOL)iterNamedEntityRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v12 = [fromDate description];
    toDate = [queryCopy toDate];
    v14 = [toDate description];
    *buf = 134218498;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v69 = v14;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "iterNamedEntityRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  if (![queryCopy limit])
  {
    LOBYTE(v26) = 1;
    goto LABEL_21;
  }

  v15 = [queryCopy copy];
  [v15 setLimit:-1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v69 = __Block_byref_object_copy__6005;
  v70 = __Block_byref_object_dispose__6006;
  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  limit2 = [queryCopy limit];
  if (limit2 >= 0x40)
  {
    v18 = 64;
  }

  else
  {
    v18 = limit2;
  }

  v71 = [v16 initWithCapacity:{v18, blockCopy}];
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v63[3] = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke;
  aBlock[3] = &unk_278973528;
  v58 = v61;
  v59 = buf;
  v57 = blockCopy;
  v60 = v63;
  v19 = queryCopy;
  v56 = v19;
  v20 = _Block_copy(aBlock);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v21 = v19;
  v22 = v21;
  v23 = self != 0;
  if (self)
  {
    v24 = ([v21 locationConsumer] - 1) < 2;

    if (!v24)
    {
      v23 = 0;
      homeOrWorkAddresses = 0;
      goto LABEL_13;
    }

    v22 = +[PPLocalLocationStore defaultStore];
    homeOrWorkAddresses = [v22 homeOrWorkAddresses];
  }

  else
  {
    homeOrWorkAddresses = 0;
  }

  LOBYTE(v24) = self != 0;
LABEL_13:
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_2;
  v45[3] = &unk_278973550;
  v27 = homeOrWorkAddresses;
  v46 = v27;
  v28 = _Block_copy(v45);
  storage = self->_storage;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_3;
  v37[3] = &unk_278973578;
  v40 = &v51;
  v44 = v24;
  v30 = v28;
  v38 = v30;
  v41 = &v47;
  v42 = buf;
  v31 = v20;
  v39 = v31;
  v43 = v61;
  v26 = [(PPNamedEntityStorage *)storage iterNamedEntityRecordsWithQuery:v15 error:error block:v37];
  if (v26)
  {
    v31[2](v31);
  }

  if (v23 && v48[3])
  {
    v32 = pp_entities_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v34 = v48[3];
      v35 = v52[3];
      *v64 = 134218240;
      v65 = v34;
      v66 = 2048;
      v67 = v35;
      _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "iterNamedEntitiesRecordsWithQuery filtered %tu of %tu items due to map UI restriction", v64, 0x16u);
    }
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(buf, 8);

LABEL_21:
  return v26;
}

void __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(*(*(a1 + 56) + 8) + 40);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++*(*(*(a1 + 64) + 8) + 24);
        v8 = *(*(a1 + 48) + 8);
        if (*(v8 + 24))
        {
          v9 = 1;
        }

        else
        {
          v10 = *(*(*(a1 + 64) + 8) + 24);
          v9 = v10 == [*(a1 + 32) limit];
          v8 = *(*(a1 + 48) + 8);
        }

        *(v8 + 24) = v9;
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
  objc_autoreleasePoolPop(v2);
}

uint64_t __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entity];
  v5 = [v4 category];

  if ((v5 | 4) == 0xC)
  {
    v6 = *(a1 + 32);
    v7 = objc_autoreleasePoolPush();
    v8 = [v3 entity];
    v9 = [v8 name];
    v10 = [v9 lowercaseString];

    objc_autoreleasePoolPop(v7);
    v11 = [v6 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __71__PPLocalNamedEntityStore_iterNamedEntityRecordsWithQuery_error_block___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v8 = v5;
  if (*(a1 + 80) == 1 && (v6 = (*(*(a1 + 32) + 16))(), v5 = v8, v6))
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:v5];
    if ([*(*(*(a1 + 64) + 8) + 40) count] == 64)
    {
      (*(*(a1 + 40) + 16))();
    }

    *a3 = *(*(*(a1 + 72) + 8) + 24);
  }

  return MEMORY[0x2821F96F8]();
}

- (PPLocalNamedEntityStore)init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPNamedEntityStorage alloc] initWithDatabase:v3];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277D425F0]) initWithBlock:&__block_literal_global_6111];
      v6 = +[PPLocalTopicStore defaultStore];
      v7 = +[PPTrialWrapper sharedInstance];
      self = [(PPLocalNamedEntityStore *)self initWithStorage:v4 topicStoreForNamedEntityMapping:v6 lazyContactStoreForMapsFeedback:v5 trialWrapper:v7];

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

- (PPLocalNamedEntityStore)initWithStorage:(id)storage topicStoreForNamedEntityMapping:(id)mapping lazyContactStoreForMapsFeedback:(id)feedback trialWrapper:(id)wrapper
{
  storageCopy = storage;
  mappingCopy = mapping;
  feedbackCopy = feedback;
  wrapperCopy = wrapper;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalNamedEntityStore.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v37.receiver = self;
  v37.super_class = PPLocalNamedEntityStore;
  _initFromSubclass = [(PPNamedEntityStore *)&v37 _initFromSubclass];
  if (_initFromSubclass)
  {
    v30 = mappingCopy;
    v17 = objc_opt_new();
    v18 = objc_alloc(MEMORY[0x277D425F0]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke;
    v35[3] = &unk_2789734E0;
    v36 = wrapperCopy;
    v19 = [v18 initWithBlock:v35];
    v20 = *(v17 + 16);
    *(v17 + 16) = v19;

    *(v17 + 8) = 0;
    v21 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v17];

    lock = _initFromSubclass->_lock;
    _initFromSubclass->_lock = v21;

    objc_storeStrong(&_initFromSubclass->_storage, storage);
    objc_storeStrong(&_initFromSubclass->_topicStoreForNamedEntityMapping, mapping);
    objc_storeStrong(&_initFromSubclass->_lazyContactStoreForMapsFeedback, feedback);
    objc_storeStrong(&_initFromSubclass->_trialWrapper, wrapper);
    objc_initWeak(&location, _initFromSubclass);
    trialWrapper = _initFromSubclass->_trialWrapper;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke_263;
    v32[3] = &unk_2789797B8;
    objc_copyWeak(&v33, &location);
    v24 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" block:v32];
    v25 = objc_opt_new();
    modelCache = _initFromSubclass->_modelCache;
    _initFromSubclass->_modelCache = v25;

    v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.mapsPrefetchQueue" qosClass:17];
    mapsPrefetchQueue = _initFromSubclass->_mapsPrefetchQueue;
    _initFromSubclass->_mapsPrefetchQueue = v27;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    mappingCopy = v30;
  }

  return _initFromSubclass;
}

PPNamedEntityFilter *__120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v7 = 0;
  v2 = [v1 mlModelForModelName:@"PPModel_NE_Filtering.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" error:&v7];
  v3 = v7;
  if (!v2)
  {
    v4 = pp_entities_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPLocalNamedEntityStore: unable to fetch filtering model from Trial. %@", buf, 0xCu);
    }
  }

  v5 = [[PPNamedEntityFilter alloc] initWithModel:v2];

  return v5;
}

void __120__PPLocalNamedEntityStore_initWithStorage_topicStoreForNamedEntityMapping_lazyContactStoreForMapsFeedback_trialWrapper___block_invoke_263(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] removeAllObjects];
    v3 = pp_entities_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "Invalidating all caches as a result of named entity namespace update.", v4, 2u);
    }
  }
}

+ (float)resolvedPerRecordDecayRateForFeatureProvider:(id)provider perRecordDecayRate:(float)rate
{
  providerCopy = provider;
  v6 = providerCopy;
  if (rate < 0.0)
  {
    v7 = [providerCopy featureValueForName:@"algorithm"];
    int64Value = [v7 int64Value];

    if ((int64Value & 0xFFFFFFFFFFFFFFFBLL) == 0xA || ((v9 = *MEMORY[0x277D3A658], [v6 featureValueForName:@"source_bundleId"], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stringValue"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:", v11), v11, v10, (int64Value - 5) >= 3) ? (v13 = MEMORY[0x277D3A730]) : (v13 = MEMORY[0x277D3A758]), v12))
    {
      v13 = MEMORY[0x277D3A738];
    }

    rate = *v13;
  }

  if (rate < 0.0)
  {
    rate = 0.0;
  }

  return rate;
}

+ (id)recordsForNamedEntities:(id)entities source:(id)source algorithm:(unint64_t)algorithm
{
  v26 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  sourceCopy = source;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(entitiesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = entitiesCopy;
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
        [v15 setEntity:item];

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

+ (void)sortAndTruncate:(id)truncate queryLimit:(unint64_t)limit
{
  truncateCopy = truncate;
  [truncateCopy sortUsingComparator:&__block_literal_global_299];
  if ([truncateCopy count] > limit)
  {
    [truncateCopy removeObjectsInRange:{limit, objc_msgSend(truncateCopy, "count") - limit}];
  }
}

uint64_t __54__PPLocalNamedEntityStore_sortAndTruncate_queryLimit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

- (void)_generateMapsSearchQueryResult
{
  if (result)
  {
    v1 = result[1];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke;
    v2[3] = &unk_278973790;
    v2[4] = result;
    return [v1 runWithLockAcquired:v2];
  }

  return result;
}

void __56__PPLocalNamedEntityStore__registerMapsQueryPrefetching__block_invoke(uint64_t a1)
{
  v2 = pp_entities_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Running Maps search query prefetch.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PPLocalNamedEntityStore *)WeakRetained _generateMapsSearchQueryResult];
}

void __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D425E8];
  v4 = a2;
  v5 = [v3 alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke_2;
  v8[3] = &unk_278974E50;
  v8[4] = *(a1 + 32);
  v6 = [v5 initWithBlock:v8 idleTimeout:240.0];
  v7 = v4[3];
  v4[3] = v6;
}

id __57__PPLocalNamedEntityStore__generateMapsSearchQueryResult__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = os_transaction_create();
  v3 = pp_entities_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Maps search query: cache miss", buf, 2u);
  }

  v4 = objc_opt_new();
  v5 = +[PPConfiguration sharedInstance];
  [v5 mapsSearchQueryFromDateInterval];
  v6 = [v4 dateByAddingTimeInterval:?];

  v7 = +[PPConfiguration sharedInstance];
  v8 = [v7 mapsSearchQueryLimit];

  v9 = [MEMORY[0x277D3A430] locationQueryWithLimit:v8 fromDate:v6 consumerType:3];
  [v9 setLocationConsumer:0];
  v10 = *(a1 + 32);
  v17 = 0;
  v11 = [v10 rankedNamedEntitiesWithQuery:v9 error:&v17 clientProcessName:@"suggestd"];
  v12 = v17;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = pp_entities_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Failed to prefetch Maps search query: %@", buf, 0xCu);
    }

    v13 = objc_opt_new();
  }

  v15 = v13;

  return v15;
}

@end