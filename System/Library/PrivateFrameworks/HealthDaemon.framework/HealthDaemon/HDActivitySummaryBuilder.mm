@interface HDActivitySummaryBuilder
- (BOOL)enumerateActivitySummariesWithPredicate:(id)predicate error:(id *)error handler:(id)handler;
- (HDActivitySummaryBuilder)init;
- (HDActivitySummaryBuilder)initWithProfile:(id)profile filter:(id)filter;
- (uint64_t)_enumerateActivitySummariesAndCachesWithPredicate:(void *)predicate largestAnchor:(uint64_t)anchor error:(void *)error handler:;
- (void)activitySummariesWithPredicate:(id)predicate handler:(id)handler;
- (void)batchedActivitySummariesWithPredicate:(id)predicate maxBatchSize:(unint64_t)size handler:(id)handler;
@end

@implementation HDActivitySummaryBuilder

- (HDActivitySummaryBuilder)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDActivitySummaryBuilder)initWithProfile:(id)profile filter:(id)filter
{
  profileCopy = profile;
  filterCopy = filter;
  v11.receiver = self;
  v11.super_class = HDActivitySummaryBuilder;
  v8 = [(HDActivitySummaryBuilder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_filter, filter);
    *&v9->_shouldIncludePrivateProperties = 1;
    v9->_orderByDateAscending = 1;
    v9->_limit = 0;
  }

  return v9;
}

- (BOOL)enumerateActivitySummariesWithPredicate:(id)predicate error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HDActivitySummaryBuilder_enumerateActivitySummariesWithPredicate_error_handler___block_invoke;
  v11[3] = &unk_27861E9D0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LOBYTE(error) = [(HDActivitySummaryBuilder *)self _enumerateActivitySummariesAndCachesWithPredicate:predicate largestAnchor:0 error:error handler:v11];

  return error;
}

- (uint64_t)_enumerateActivitySummariesAndCachesWithPredicate:(void *)predicate largestAnchor:(uint64_t)anchor error:(void *)error handler:
{
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  errorCopy = error;
  if (self)
  {
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = 0;
    filterIgnoringActivityCacheIndexFilter = [*(self + 16) filterIgnoringActivityCacheIndexFilter];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__HDActivitySummaryBuilder__enumerateActivitySummariesAndCachesWithPredicate_largestAnchor_error_handler___block_invoke;
    aBlock[3] = &unk_27861EA48;
    aBlock[4] = self;
    v50 = v51;
    v26 = filterIgnoringActivityCacheIndexFilter;
    v48 = v26;
    v49 = errorCopy;
    v11 = _Block_copy(aBlock);
    activityCacheType = [MEMORY[0x277CCD720] activityCacheType];
    WeakRetained = objc_loadWeakRetained((self + 8));
    v14 = [HDSampleEntity entityEnumeratorWithType:activityCacheType profile:WeakRetained];

    [v14 setPredicate:v8];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 24)];
    [v14 setEncodingOption:v15 forKey:@"IncludePrivateActivityCacheProperties"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 25)];
    [v14 setEncodingOption:v16 forKey:@"IncludeActivityCacheStatistics"];

    v17 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"cache_index" entityClass:objc_opt_class() ascending:*(self + 26)];
    v52[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [v14 setOrderingTerms:v18];

    [v14 setDatabaseTransactionContext:*(self + 40)];
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 1;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0x8000000000000000;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __106__HDActivitySummaryBuilder__enumerateActivitySummariesAndCachesWithPredicate_largestAnchor_error_handler___block_invoke_307;
    v27[3] = &unk_27861EA70;
    v30 = v38;
    v31 = &v43;
    v20 = v11;
    v29 = v20;
    v21 = v19;
    v28 = v21;
    v32 = &v34;
    v33 = &v39;
    if ([v14 enumerateWithError:anchor handler:v27])
    {
      v22 = objc_msgSend_copy(v21);
      (*(v20 + 2))(v20, v22);

      *(self + 48) = v35[3];
      v21 = 0;
      if (predicate)
      {
        *predicate = v40[3];
      }

      v23 = 1;
    }

    else
    {
      v23 = *(v44 + 24) ^ 1;
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(v51, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (void)activitySummariesWithPredicate:(id)predicate handler:(id)handler
{
  v6 = MEMORY[0x277CBEB38];
  handlerCopy = handler;
  predicateCopy = predicate;
  v9 = objc_alloc_init(v6);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HDActivitySummaryBuilder_activitySummariesWithPredicate_handler___block_invoke;
  v15[3] = &unk_27861E9F8;
  v11 = v10;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = [(HDActivitySummaryBuilder *)self _enumerateActivitySummariesAndCachesWithPredicate:predicateCopy largestAnchor:&v19 error:&v18 handler:v15];

  v14 = v18;
  if (v13)
  {
    handlerCopy[2](handlerCopy, v11, v12, v19, 0);
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, 0, 0, v14);
  }
}

void __67__HDActivitySummaryBuilder_activitySummariesWithPredicate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 addObject:v7];
  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCABB0];
  v10 = [v7 _activitySummaryIndex];

  v11 = [v9 numberWithLongLong:v10];
  [v8 setObject:v6 forKeyedSubscript:v11];
}

- (void)batchedActivitySummariesWithPredicate:(id)predicate maxBatchSize:(unint64_t)size handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v43 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__75;
  v41 = __Block_byref_object_dispose__75;
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__75;
  v35 = __Block_byref_object_dispose__75;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDActivitySummaryBuilder_batchedActivitySummariesWithPredicate_maxBatchSize_handler___block_invoke;
  v18[3] = &unk_27861EA20;
  sizeCopy = size;
  v21 = &v31;
  v22 = &v27;
  v10 = handlerCopy;
  v23 = &v37;
  v25 = 0;
  v19 = 0;
  v20 = v10;
  LODWORD(handlerCopy) = [(HDActivitySummaryBuilder *)self _enumerateActivitySummariesAndCachesWithPredicate:predicateCopy largestAnchor:&v43 error:&v26 handler:v18];
  v11 = v26;
  v12 = v11;
  if (handlerCopy)
  {
    v13 = 0;
    v14 = v32[5];
    v15 = v38[5];
    v16 = v43;
    v17 = *(v28 + 24);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v13 = v11;
  }

  (*(v10 + 2))(v10, v14, v15, v16, 1, v17 & 1, v13);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
}

void __87__HDActivitySummaryBuilder_batchedActivitySummariesWithPredicate_maxBatchSize_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = *(*(a1[6] + 8) + 40);
  v6 = a3;
  v7 = a2;
  if ([v5 count] >= a1[9])
  {
    *(*(a1[7] + 8) + 24) = 0;
    (*(a1[5] + 16))();
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = *(a1[8] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  [*(*(a1[6] + 8) + 40) addObject:v7];
  v14 = *(*(a1[8] + 8) + 40);
  v15 = MEMORY[0x277CCABB0];
  v16 = [v7 _activitySummaryIndex];

  v17 = [v15 numberWithLongLong:v16];
  [v14 setObject:v6 forKeyedSubscript:v17];
}

BOOL __106__HDActivitySummaryBuilder__enumerateActivitySummariesAndCachesWithPredicate_largestAnchor_error_handler___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1[4] + 32);
    if (v4 && *(*(a1[7] + 8) + 24) == v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCCFB0] _mostSignificantCacheAmongCaches:v3];
      v7 = [objc_alloc(MEMORY[0x277CCCFB0]) _initWithActivityCache:v6 shouldIncludePrivateProperties:*(a1[4] + 24)];
      v8 = v7;
      if (*(a1[4] + 24) == 1)
      {
        v9 = [v7 _startDate];
        if (!v9 || (v10 = v9, [v8 _endDate], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
        {
          _HKInitializeLogging();
          v12 = *MEMORY[0x277CCC270];
          if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_FAULT))
          {
            v16 = v12;
            v17 = 138413058;
            v18 = v8;
            v19 = 2112;
            v20 = v6;
            v21 = 2048;
            v22 = [v3 count];
            v23 = 2112;
            v24 = v3;
            _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "Activity summary without start/end date: %@ from cache: %@ out of %ld caches: %@", &v17, 0x2Au);
          }
        }
      }

      v13 = a1[5];
      if (!v13 || [MEMORY[0x277CCDDB8] filter:v13 acceptsActivitySummary:v8])
      {
        ++*(*(a1[7] + 8) + 24);
        LOBYTE(v17) = 0;
        (*(a1[6] + 16))(a1[6]);
      }

      v14 = *(a1[4] + 32);
      if (v14)
      {
        v5 = *(*(a1[7] + 8) + 24) < v14;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __106__HDActivitySummaryBuilder__enumerateActivitySummariesAndCachesWithPredicate_largestAnchor_error_handler___block_invoke_307(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 cacheIndex];
  if (v6 != *(*(*(a1 + 48) + 8) + 24))
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = objc_msgSend_copy(*(a1 + 32));
    *(*(*(a1 + 56) + 8) + 24) = (*(v8 + 16))(v8, v9);

    [*(a1 + 32) removeAllObjects];
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  [*(a1 + 32) addObject:v5];
  ++*(*(*(a1 + 64) + 8) + 24);
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 24);
  if (v11 <= a3)
  {
    v11 = a3;
  }

  *(v10 + 24) = v11;
  v12 = *(*(*(a1 + 56) + 8) + 24);

  return v12;
}

@end