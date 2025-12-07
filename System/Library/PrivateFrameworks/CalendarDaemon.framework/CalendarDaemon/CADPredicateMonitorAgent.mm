@interface CADPredicateMonitorAgent
- (CADPredicateMonitorAgent)initWithPredicate:(id)predicate filter:(unint64_t)filter options:(unint64_t)options token:(int)token connection:(id)connection;
- (id)filterWithPredicate:(id)predicate;
- (void)handleChangeReport:(id)report;
- (void)processChangeReport:(id)report forDatabaseID:(int)d;
- (void)reportResultsReset:(BOOL)reset newAndUpdated:(id)updated removed:(id)removed databaseIDForRemovals:(int)removals reportPredicateGeneration:(BOOL)generation generation:(int)a8;
- (void)reportResultsReset:(BOOL)reset newAndUpdated:(id)updated removed:(id)removed reportPredicateGeneration:(BOOL)generation generation:(int)a7;
- (void)reset;
- (void)start;
- (void)stop;
- (void)updatePredicate:(id)predicate propertyFilter:(unint64_t)filter options:(unint64_t)options generation:(int)generation;
@end

@implementation CADPredicateMonitorAgent

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleChangeReport_ name:*MEMORY[0x277CF7558] object:0];

  [(CADPredicateMonitorAgent *)self reset];
}

- (void)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_conn);
  if (WeakRetained)
  {
    os_unfair_lock_lock(&self->_lock);
    predicateGeneration = self->_predicateGeneration;
    resetGeneration = self->_resetGeneration;
    self->_resetGeneration = resetGeneration + 1;
    v6 = self->_predicate;
    options = self->_options;
    os_unfair_lock_unlock(&self->_lock);
    if (resetGeneration && (options & 1) != 0)
    {
      v8 = objc_loadWeakRetained(&self->_conn);
      v9 = [v8 removeAgentWithToken:self->_token];

      [(CADPredicateMonitorAgent *)self reportResultsReset:1 newAndUpdated:0 removed:0 reportPredicateGeneration:0 generation:0];
      [(CADPredicateMonitorAgent *)self stop];
    }

    else
    {
      v10 = [CADFetchCalendarItemsWithPredicateOperation alloc];
      token = self->_token;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __33__CADPredicateMonitorAgent_reset__block_invoke;
      v21[3] = &unk_27851A2D8;
      v21[4] = self;
      v22 = predicateGeneration;
      v12 = [(CADFetchCalendarItemsWithPredicateOperation *)v10 initWithPredicate:v6 entityType:2 connection:WeakRetained fetchIdentifier:token completionHandler:v21];
      objc_initWeak(&location, v12);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __33__CADPredicateMonitorAgent_reset__block_invoke_2;
      v16 = &unk_27851A238;
      selfCopy = self;
      v19 = resetGeneration + 1;
      objc_copyWeak(&v18, &location);
      [(CADFetchCalendarItemsWithPredicateOperation *)v12 setStartCallback:&v13];
      [WeakRetained addOperation:{v12, v13, v14, v15, v16, selfCopy}];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __33__CADPredicateMonitorAgent_reset__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  v3 = *(v2 + 60);
  if (v3 == *(a1 + 48))
  {
    *(v2 + 60) = v3 + 1;
    v4 = *(*(a1 + 32) + 8);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setPredicate:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained cancel];
  }

  v6 = (*(a1 + 32) + 64);

  os_unfair_lock_unlock(v6);
}

- (CADPredicateMonitorAgent)initWithPredicate:(id)predicate filter:(unint64_t)filter options:(unint64_t)options token:(int)token connection:(id)connection
{
  predicateCopy = predicate;
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = CADPredicateMonitorAgent;
  v15 = [(CADPredicateMonitorAgent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_predicate, predicate);
    v16->_filter = filter;
    v16->_options = options;
    v16->_token = token;
    objc_storeWeak(&v16->_conn, connectionCopy);
    v17 = objc_alloc_init(CADEventOccurrenceSet);
    occurrences = v16->_occurrences;
    v16->_occurrences = v17;

    v16->_lock._os_unfair_lock_opaque = 0;
  }

  return v16;
}

- (void)updatePredicate:(id)predicate propertyFilter:(unint64_t)filter options:(unint64_t)options generation:(int)generation
{
  v53 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_lock);
  predicate = self->_predicate;
  generationCopy = generation;
  self->_predicateGeneration = generation;
  predicateCopy2 = predicate;
  objc_storeStrong(&self->_predicate, predicate);
  self->_filter = filter;
  self->_options = options;
  resetGeneration = self->_resetGeneration;
  os_unfair_lock_unlock(&self->_lock);
  v51 = 0;
  v12 = [predicateCopy incrementalPredicatesToExpandResultsFromPredicate:predicateCopy2 filteringRequiredToRemoveEventsNoLongerMatched:&v51];
  v28 = v12;
  if (v12)
  {
    v30 = [v12 count];
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = __Block_byref_object_copy__1;
    v49[4] = __Block_byref_object_dispose__1;
    v50 = 0;
    if (v51 == 1)
    {
      v13 = [[CADClientBlockOperation alloc] initWithToken:self->_token];
      objc_initWeak(&location, v13);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __78__CADPredicateMonitorAgent_updatePredicate_propertyFilter_options_generation___block_invoke;
      v42[3] = &unk_27851A1E8;
      v42[4] = self;
      v46 = resetGeneration;
      objc_copyWeak(v45, &location);
      v44 = v49;
      v43 = predicateCopy;
      v45[1] = v30;
      generationCopy2 = generation;
      [(NSBlockOperation *)v13 addExecutionBlock:v42];
      WeakRetained = objc_loadWeakRetained(&self->_conn);
      [WeakRetained addOperation:v13];

      objc_destroyWeak(v45);
      objc_destroyWeak(&location);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v28;
    v15 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v39;
      v18 = MEMORY[0x277D85DD0];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v21 = [CADFetchCalendarItemsWithPredicateOperation alloc];
          v22 = objc_loadWeakRetained(&self->_conn);
          token = self->_token;
          v36[0] = v18;
          v36[1] = 3221225472;
          v36[2] = __78__CADPredicateMonitorAgent_updatePredicate_propertyFilter_options_generation___block_invoke_2;
          v36[3] = &unk_27851A210;
          v36[4] = self;
          v36[5] = v49;
          v36[6] = v16;
          v36[7] = v30;
          v37 = generationCopy;
          v24 = [(CADFetchCalendarItemsWithPredicateOperation *)v21 initWithPredicate:v20 entityType:2 connection:v22 fetchIdentifier:token completionHandler:v36];

          objc_initWeak(&location, v24);
          v33[0] = v18;
          v33[1] = 3221225472;
          v33[2] = __78__CADPredicateMonitorAgent_updatePredicate_propertyFilter_options_generation___block_invoke_3;
          v33[3] = &unk_27851A238;
          v33[4] = self;
          v35 = resetGeneration;
          objc_copyWeak(&v34, &location);
          [(CADFetchCalendarItemsWithPredicateOperation *)v24 setStartCallback:v33];
          v25 = objc_loadWeakRetained(&self->_conn);
          [v25 addOperation:v24];

          objc_destroyWeak(&v34);
          objc_destroyWeak(&location);

          ++v16;
        }

        v15 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v15);
    }

    if ((v51 & 1) == 0 && ![obj count])
    {
      [(CADPredicateMonitorAgent *)self reportResultsReset:0 newAndUpdated:0 removed:0 reportPredicateGeneration:1 generation:generationCopy];
    }

    _Block_object_dispose(v49, 8);
  }

  else
  {
    [(CADPredicateMonitorAgent *)self reset];
  }
}

void __78__CADPredicateMonitorAgent_updatePredicate_propertyFilter_options_generation___block_invoke(uint64_t a1)
{
  v12 = *(*(a1 + 32) + 40);
  v2 = [v12 hasInvalidDates];
  v3 = *(a1 + 32);
  if (v2)
  {
    [(os_unfair_lock_s *)v3 reset];
  }

  else
  {
    os_unfair_lock_lock(v3 + 16);
    v4 = *(a1 + 72);
    v5 = *(a1 + 32);
    os_unfair_lock_opaque = v5[15]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v5 + 16);
    if (v4 == os_unfair_lock_opaque)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v8 = [WeakRetained isCancelled];

      if ((v8 & 1) == 0)
      {
        v9 = [*(a1 + 32) filterWithPredicate:*(a1 + 40)];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        if (!*(a1 + 64))
        {
          [*(a1 + 32) reportResultsReset:0 newAndUpdated:0 removed:*(*(*(a1 + 48) + 8) + 40) reportPredicateGeneration:1 generation:*(a1 + 76)];
        }
      }
    }
  }
}

void __78__CADPredicateMonitorAgent_updatePredicate_propertyFilter_options_generation___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = a1;
  v4 = *(*(a1 + 32) + 40);
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 objectID];
        v12 = [v11 databaseID];
        v13 = [v11 entityID];
        v14 = [v10 occurrenceDate];
        v15 = [v4 addOccurrenceWithDB:v12 rowID:v13 date:v14];

        if (v15)
        {
          if (v15 == 2)
          {
            [*(v19 + 32) reset];

            v17 = v5;
            v18 = v20;
            goto LABEL_16;
          }
        }

        else
        {
          [v20 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = *(v19 + 48);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(*(*(v19 + 40) + 8) + 40);
    v16 = *(v19 + 48);
  }

  v18 = v20;
  [*(v19 + 32) reportResultsReset:0 newAndUpdated:v20 removed:v17 reportPredicateGeneration:v16 + 1 == *(v19 + 56) generation:*(v19 + 64)];
LABEL_16:
}

void __78__CADPredicateMonitorAgent_updatePredicate_propertyFilter_options_generation___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  if (v2[15]._os_unfair_lock_opaque != *(a1 + 48))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained cancel];

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock(v2 + 16);
}

- (id)filterWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = self->_occurrences;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__CADPredicateMonitorAgent_filterWithPredicate___block_invoke;
  v15[3] = &unk_27851A2B0;
  v15[4] = self;
  v16 = v5;
  v17 = predicateCopy;
  v18 = v6;
  v8 = v7;
  v19 = v8;
  v9 = v6;
  v10 = predicateCopy;
  v11 = v5;
  [(CADEventOccurrenceSet *)v11 enumerateDatabases:v15];
  v12 = v19;
  v13 = v8;

  return v8;
}

void __48__CADPredicateMonitorAgent_filterWithPredicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CADPredicateMonitorAgent_filterWithPredicate___block_invoke_2;
  v9[3] = &unk_27851A288;
  v10 = *(a1 + 40);
  v14 = a2;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = v4;
  v6 = v4;
  [WeakRetained withDatabaseID:a2 perform:v9];

  v7 = *(a1 + 64);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

void __48__CADPredicateMonitorAgent_filterWithPredicate___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__CADPredicateMonitorAgent_filterWithPredicate___block_invoke_3;
  v11[3] = &unk_27851A260;
  v14 = a3;
  v5 = *(a1 + 32);
  v15 = *(a1 + 64);
  v6 = *(a1 + 40);
  v16 = a2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [v5 enumerateOccurrenceRowIDsInDatabase:a2 block:v11];
}

void __48__CADPredicateMonitorAgent_filterWithPredicate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x22AA4B950](*(a1 + 64));
  if (v4)
  {
    v5 = v4;
    v6 = [*(a1 + 32) datesForDatabase:*(a1 + 72) rowID:a2];
    v12 = 0;
    v7 = [*(a1 + 40) matchingDatesForEvent:v5 modifiedProperties:0 dates:v6 inRange:0 database:*(a1 + 64) outReset:&v12];
    if (v12 == 1)
    {
      v8 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 76);
        v10 = *(a1 + 40);
        *buf = 67109634;
        v14 = v9;
        v15 = 1024;
        v16 = a2;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "Told to reset while filtering old results: %i %i; predicate=%@", buf, 0x18u);
      }
    }

    buf[0] = 0;
    [*(a1 + 32) setOccurrenceDatesWithDB:*(a1 + 72) rowID:a2 dates:v7 outRemovedDates:*(a1 + 48) outAddedAnyDates:buf];
    if ([*(a1 + 48) count])
    {
      v11 = [[CADRemovedEventWrapper alloc] initWithRowID:a2 removedDates:*(a1 + 48)];
      [*(a1 + 56) addObject:v11];
      [*(a1 + 48) removeAllObjects];
    }

    CFRelease(v5);
  }
}

- (void)stop
{
  self->_shutdown = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

void __33__CADPredicateMonitorAgent_reset__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  [v4 clear];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectID];
        v12 = [v11 databaseID];
        v13 = [v11 entityID];
        v14 = [v10 occurrenceDate];
        [v4 addOccurrenceWithDB:v12 rowID:v13 date:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) reportResultsReset:1 newAndUpdated:v5 removed:0 reportPredicateGeneration:1 generation:*(a1 + 40)];
}

- (void)handleChangeReport:(id)report
{
  reportCopy = report;
  if (!self->_shutdown)
  {
    WeakRetained = objc_loadWeakRetained(&self->_conn);
    if (WeakRetained)
    {
      userInfo = [reportCopy userInfo];
      v7 = [userInfo objectForKeyedSubscript:@"path"];
      v8 = [userInfo objectForKeyedSubscript:@"auxDBID"];
      intValue = [v8 intValue];
      if ([WeakRetained hasDatabaseAtPath:v7 withDatabaseID:intValue])
      {
        v10 = [userInfo objectForKeyedSubscript:@"report"];
        os_unfair_lock_lock(&self->_lock);
        resetGeneration = self->_resetGeneration;
        os_unfair_lock_unlock(&self->_lock);
        token = self->_token;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __47__CADPredicateMonitorAgent_handleChangeReport___block_invoke;
        v15[3] = &unk_27851A300;
        v15[4] = self;
        v16 = v10;
        v17 = resetGeneration;
        v18 = intValue;
        v13 = v10;
        v14 = [CADClientBlockOperation blockOperationWithToken:token block:v15];
        [WeakRetained addOperation:v14];
      }
    }
  }
}

void __47__CADPredicateMonitorAgent_handleChangeReport___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  os_unfair_lock_opaque = v2[15]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 16);
  if (os_unfair_lock_opaque == *(a1 + 48))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 52);

    [v4 processChangeReport:v5 forDatabaseID:v6];
  }
}

- (void)processChangeReport:(id)report forDatabaseID:(int)d
{
  v4 = *&d;
  reportCopy = report;
  if ([reportCopy reset])
  {
    [(CADPredicateMonitorAgent *)self reset];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = self->_predicate;
    filter = self->_filter;
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_conn);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__CADPredicateMonitorAgent_processChangeReport_forDatabaseID___block_invoke;
    v11[3] = &unk_27851A350;
    v11[4] = self;
    v12 = v7;
    v13 = reportCopy;
    v14 = filter;
    v10 = v7;
    [WeakRetained withDatabaseID:v4 perform:v11];
  }
}

void __62__CADPredicateMonitorAgent_processChangeReport_forDatabaseID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [CADFetchedObjectSerializer alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v9 = [*(a1 + 40) defaultPropertiesToLoad];
  v10 = [*(a1 + 40) relatedObjectPropertiesToLoad];
  v11 = [(CADFetchedObjectSerializer *)v7 initWithConnection:WeakRetained defaultPropertiesToLoad:v9 relatedObjectPropertiesToLoad:v10];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [*(a1 + 48) range];
  v14 = [CADBlockList alloc];
  v15 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v16 = [v15 blockList];
  v17 = [(CADBlockList *)v14 initWithBlockList:v16];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__CADPredicateMonitorAgent_processChangeReport_forDatabaseID___block_invoke_2;
  v27[3] = &unk_27851A328;
  v37 = a3;
  v18 = *(a1 + 48);
  v28 = *(a1 + 40);
  v19 = v13;
  v29 = v19;
  v35 = &v40;
  v20 = v6;
  v21 = *(a1 + 32);
  v30 = v20;
  v31 = v21;
  v39 = a2;
  v38 = *(a1 + 56);
  v22 = v17;
  v32 = v22;
  v23 = v11;
  v33 = v23;
  v36 = &v44;
  v24 = v12;
  v34 = v24;
  [v18 enumerateImpactedEvents:v27];
  if (*(v41 + 24) == 1)
  {
    [*(a1 + 32) reset];
  }

  else if (*(v45 + 24) == 1)
  {
    v25 = *(a1 + 32);
    v26 = [(CADFetchedObjectSerializer *)v23 fetchedObjectWrappers];
    [v25 reportResultsReset:0 newAndUpdated:v26 removed:v24 databaseIDForRemovals:a2 reportPredicateGeneration:0 generation:0];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

uint64_t __62__CADPredicateMonitorAgent_processChangeReport_forDatabaseID___block_invoke_2(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v11 = v9;
  }

  else
  {
    v12 = MEMORY[0x22AA4B950](*(a1 + 104), a2);
    if (v12)
    {
      v13 = v12;
      v11 = [*(a1 + 32) matchingDatesForEvent:v12 modifiedProperties:a4 dates:v10 inRange:*(a1 + 40) database:*(a1 + 104) outReset:*(*(a1 + 88) + 8) + 24];
      CFRelease(v13);
      if (*(*(*(a1 + 88) + 8) + 24))
      {
        v14 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v15 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v36 = a2;
        _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_ERROR, "Couldn't find event with id %i", buf, 8u);
      }

      v11 = 0;
    }
  }

  buf[0] = 0;
  [*(a1 + 48) removeAllObjects];
  if (![*(*(a1 + 56) + 40) setOccurrenceDatesWithDB:*(a1 + 120) rowID:a2 dates:v11 outRemovedDates:*(a1 + 48) outAddedAnyDates:buf] || objc_msgSend(*(a1 + 48), "count") && objc_msgSend(*(a1 + 32), "resetRequiredForRemovalOfMatchingOccurrence"))
  {
    v14 = 0;
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  else
  {
    v16 = *(a1 + 112);
    if ([v11 count] && ((buf[0] & 1) != 0 || (v16 & a4) != 0))
    {
      v17 = MEMORY[0x22AA4B950](*(a1 + 104), a2);
      if (v17)
      {
        v18 = v17;
        if (([*(a1 + 64) isEventBlocked:v17] & 1) == 0)
        {
          v29 = v10;
          started = CalEventCopyStartTimeZone();
          if (!started)
          {
            started = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v20 = v11;
          v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v31;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v31 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                [*(*(&v30 + 1) + 8 * i) timeIntervalSinceReferenceDate];
                v25 = CalEventOccurrenceCreate();
                v26 = [*(a1 + 72) addEntity:v25];
                CFRelease(v25);
              }

              v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
            }

            while (v22);
          }

          if (started)
          {
            CFRelease(started);
          }

          *(*(*(a1 + 96) + 8) + 24) = 1;
          v10 = v29;
        }

        CFRelease(v18);
      }
    }

    v14 = 1;
    if ([*(a1 + 48) count])
    {
      v27 = [[CADRemovedEventWrapper alloc] initWithRowID:a2 removedDates:*(a1 + 48)];
      [*(a1 + 80) addObject:v27];
      *(*(*(a1 + 96) + 8) + 24) = 1;
    }
  }

LABEL_33:

  return v14;
}

- (void)reportResultsReset:(BOOL)reset newAndUpdated:(id)updated removed:(id)removed databaseIDForRemovals:(int)removals reportPredicateGeneration:(BOOL)generation generation:(int)a8
{
  v8 = *&a8;
  generationCopy = generation;
  v10 = *&removals;
  resetCopy = reset;
  v20[1] = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  if (removed)
  {
    v15 = MEMORY[0x277CCABB0];
    removedCopy = removed;
    v17 = [v15 numberWithInt:v10];
    v19 = v17;
    v20[0] = removedCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  else
  {
    v18 = 0;
  }

  [(CADPredicateMonitorAgent *)self reportResultsReset:resetCopy newAndUpdated:updatedCopy removed:v18 reportPredicateGeneration:generationCopy generation:v8];
}

- (void)reportResultsReset:(BOOL)reset newAndUpdated:(id)updated removed:(id)removed reportPredicateGeneration:(BOOL)generation generation:(int)a7
{
  v7 = *&a7;
  generationCopy = generation;
  resetCopy = reset;
  updatedCopy = updated;
  removedCopy = removed;
  if (!self->_shutdown)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = v13;
    if (resetCopy)
    {
      [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"reset"];
    }

    if (updatedCopy)
    {
      [v14 setObject:updatedCopy forKeyedSubscript:@"new"];
    }

    if (removedCopy)
    {
      [v14 setObject:removedCopy forKeyedSubscript:@"removalsByDB"];
    }

    if (generationCopy)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:v7];
      [v14 setObject:v15 forKeyedSubscript:@"generation"];
    }

    WeakRetained = objc_loadWeakRetained(&self->_conn);
    v17 = [WeakRetained remoteObjectProxyWithErrorHandler:&__block_literal_global_6];
    [v17 CADClientReceivePredicateResults:v14 forToken:self->_token];

    v18 = objc_loadWeakRetained(&self->_conn);
    v19 = [updatedCopy CalMap:&__block_literal_global_40];
    [v18 logAccessToObjects:v19];
  }
}

void __106__CADPredicateMonitorAgent_reportResultsReset_newAndUpdated_removed_reportPredicateGeneration_generation___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_ERROR, "Error sending predicate results: %@", &v4, 0xCu);
  }
}

@end