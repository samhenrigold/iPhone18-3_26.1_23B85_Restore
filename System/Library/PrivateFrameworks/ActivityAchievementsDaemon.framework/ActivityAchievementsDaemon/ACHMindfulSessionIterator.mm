@interface ACHMindfulSessionIterator
- (ACHMindfulSessionIterator)initWithHealthStore:(id)store;
- (ACHMindfulSessionIterator)initWithHealthStore:(id)store batchSize:(unint64_t)size;
- (void)_runQueryForDateInterval:(id)interval lastCursor:(id)cursor completion:(id)completion;
- (void)enumerateMindfulSessionsForDateInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ACHMindfulSessionIterator

- (ACHMindfulSessionIterator)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ACHMindfulSessionIterator;
  v6 = [(ACHMindfulSessionIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v7->_batchSize = 128;
  }

  return v7;
}

- (ACHMindfulSessionIterator)initWithHealthStore:(id)store batchSize:(unint64_t)size
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ACHMindfulSessionIterator;
  v8 = [(ACHMindfulSessionIterator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
    v9->_batchSize = size;
  }

  return v9;
}

- (void)enumerateMindfulSessionsForDateInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler
{
  v52 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  query = [(ACHMindfulSessionIterator *)self query];

  if (query)
  {
    healthStore = [(ACHMindfulSessionIterator *)self healthStore];
    query2 = [(ACHMindfulSessionIterator *)self query];
    [healthStore stopQuery:query2];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__21;
  v49 = __Block_byref_object_dispose__21;
  v50 = MEMORY[0x277CBEBF8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__21;
  v43 = __Block_byref_object_dispose__21;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__21;
  v37 = __Block_byref_object_dispose__21;
  v38 = 0;
  while (1)
  {
    v12 = dispatch_semaphore_create(0);
    v13 = v34[5];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __90__ACHMindfulSessionIterator_enumerateMindfulSessionsForDateInterval_handler_errorHandler___block_invoke;
    v28[3] = &unk_278491B20;
    v30 = &v45;
    v31 = &v39;
    v32 = &v33;
    v14 = v12;
    v29 = v14;
    [(ACHMindfulSessionIterator *)self _runQueryForDateInterval:intervalCopy lastCursor:v13 completion:v28];
    v15 = dispatch_time(0, 10000000000);
    v16 = dispatch_semaphore_wait(v14, v15);
    if (v40[5] || v16 != 0)
    {
      break;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v46[5];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v51 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          handlerCopy[2](handlerCopy, *(*(&v24 + 1) + 8 * v21++));
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v51 count:16];
      }

      while (v19);
    }

    if (!v34[5])
    {
      goto LABEL_17;
    }
  }

  errorHandlerCopy[2]();

LABEL_17:
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
}

void __90__ACHMindfulSessionIterator_enumerateMindfulSessionsForDateInterval_handler_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  v16 = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;
  v12 = v8;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v7;
  v15 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_runQueryForDateInterval:(id)interval lastCursor:(id)cursor completion:(id)completion
{
  v31[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  cursorCopy = cursor;
  completionCopy = completion;
  v11 = MEMORY[0x277CCD838];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v25 = [v11 predicateForSamplesWithStartDate:startDate endDate:endDate options:1];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__ACHMindfulSessionIterator__runQueryForDateInterval_lastCursor_completion___block_invoke;
  aBlock[3] = &unk_278491B48;
  objc_copyWeak(&v28, &location);
  v14 = completionCopy;
  v27 = v14;
  v15 = _Block_copy(aBlock);
  if (cursorCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CCD8B8]) initWithQueryCursor:cursorCopy limit:-[ACHMindfulSessionIterator batchSize](self resultsHandler:{"batchSize"), v15}];
    [(ACHMindfulSessionIterator *)self setQuery:v16];
  }

  else
  {
    v16 = [MEMORY[0x277CCD8D8] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
    v24 = [objc_alloc(MEMORY[0x277CCD848]) initWithSampleType:v16 predicate:v25];
    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v18 = objc_alloc(MEMORY[0x277CCD8B8]);
    v31[0] = v24;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v30 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v21 = [v18 initWithQueryDescriptors:v19 sortDescriptors:v20 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:-[ACHMindfulSessionIterator batchSize](self resultsHandler:{"batchSize"), v15}];
    [(ACHMindfulSessionIterator *)self setQuery:v21];
  }

  healthStore = [(ACHMindfulSessionIterator *)self healthStore];
  query = [(ACHMindfulSessionIterator *)self query];
  [healthStore executeQuery:query];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __76__ACHMindfulSessionIterator__runQueryForDateInterval_lastCursor_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v14 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained healthStore];
  [v13 stopQuery:v11];

  (*(*(a1 + 32) + 16))();
}

@end