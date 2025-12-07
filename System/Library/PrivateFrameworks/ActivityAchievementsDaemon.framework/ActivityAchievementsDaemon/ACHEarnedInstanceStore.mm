@interface ACHEarnedInstanceStore
- (ACHEarnedInstanceStore)initWithClient:(id)client assertionClient:(id)assertionClient earnedInstanceDuplicateUtility:(id)utility device:(unsigned __int8)device;
- (BOOL)_queue_addEarnedInstances:(id)instances triggerSync:(BOOL)sync error:(id *)error;
- (BOOL)_queue_removeEarnedInstances:(id)instances error:(id *)error;
- (BOOL)addEarnedInstances:(id)instances error:(id *)error;
- (BOOL)removeAllEarnedInstancesWithError:(id *)error;
- (BOOL)removeEarnedInstances:(id)instances error:(id *)error;
- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)name error:(id *)error;
- (NSArray)earnedInstances;
- (id)_queue_addEarnedInstancesWithSingleTemplate:(id)template error:(id *)error;
- (id)countOfEarnedInstancesForTemplateUniqueNames:(id)names error:(id *)error;
- (id)earnedInstancesForAnniversaryWithDateComponents:(id)components templateUnqiueNames:(id)names error:(id *)error;
- (id)earnedInstancesForDateInterval:(id)interval error:(id *)error;
- (id)earnedInstancesForEarnedDateComponents:(id)components error:(id *)error;
- (id)earnedInstancesForTemplateUniqueName:(id)name error:(id *)error;
- (id)mostRecentEarnedInstanceForTemplateUniqueName:(id)name error:(id *)error;
- (id)mostRecentEarnedInstancesForTemplateUniqueNames:(id)names error:(id *)error;
- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)name error:(id *)error;
- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)name inDateComponentInterval:(id)interval withCalendar:(id)calendar error:(id *)error;
- (void)_notifyObserversOfAddedEarnedInstances:(id)instances;
- (void)_notifyObserversOfRemovedEarnedInstances:(id)instances;
- (void)_notifyObserversOfSync;
- (void)_queue_purgeCaches;
- (void)addObserver:(id)observer;
- (void)earnedInstances;
- (void)removeObserver:(id)observer;
@end

@implementation ACHEarnedInstanceStore

- (ACHEarnedInstanceStore)initWithClient:(id)client assertionClient:(id)assertionClient earnedInstanceDuplicateUtility:(id)utility device:(unsigned __int8)device
{
  clientCopy = client;
  assertionClientCopy = assertionClient;
  utilityCopy = utility;
  v32.receiver = self;
  v32.super_class = ACHEarnedInstanceStore;
  v14 = [(ACHEarnedInstanceStore *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_client, client);
    objc_storeStrong(&v15->_assertionClient, assertionClient);
    objc_storeStrong(&v15->_duplicateUtility, utility);
    v16 = HKCreateSerialDispatchQueue();
    earnedInstanceQueue = v15->_earnedInstanceQueue;
    v15->_earnedInstanceQueue = v16;

    v18 = HKCreateSerialDispatchQueue();
    observerQueue = v15->_observerQueue;
    v15->_observerQueue = v18;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v15->_observers;
    v15->_observers = weakObjectsHashTable;

    v22 = objc_alloc_init(MEMORY[0x277CBEA78]);
    earnedInstancesForTemplateUniqueNameCache = v15->_earnedInstancesForTemplateUniqueNameCache;
    v15->_earnedInstancesForTemplateUniqueNameCache = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEA78]);
    earnedInstancesForEarnedDateComponentsCache = v15->_earnedInstancesForEarnedDateComponentsCache;
    v15->_earnedInstancesForEarnedDateComponentsCache = v24;

    v15->_device = device;
    objc_initWeak(&location, v15);
    uTF8String = [*MEMORY[0x277CE8AF0] UTF8String];
    v27 = v15->_earnedInstanceQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __95__ACHEarnedInstanceStore_initWithClient_assertionClient_earnedInstanceDuplicateUtility_device___block_invoke;
    v29[3] = &unk_2784907F8;
    objc_copyWeak(&v30, &location);
    notify_register_dispatch(uTF8String, &v15->_syncedEarnedInstancesToken, v27, v29);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __95__ACHEarnedInstanceStore_initWithClient_assertionClient_earnedInstanceDuplicateUtility_device___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversOfSync];
}

- (NSArray)earnedInstances
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__13;
  v16[3] = __Block_byref_object_dispose__13;
  v17 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACHEarnedInstanceStore_earnedInstances__block_invoke;
  block[3] = &unk_278491530;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v15;
  dispatch_sync(earnedInstanceQueue2, block);

  if (*(v16[0] + 40))
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceStore *)v16 earnedInstances:v5];
    }
  }

  v12 = v19[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __41__ACHEarnedInstanceStore_earnedInstances__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 fetchAllEarnedInstancesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)earnedInstancesForTemplateUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__ACHEarnedInstanceStore_earnedInstancesForTemplateUniqueName_error___block_invoke;
  v13[3] = &unk_278491580;
  v13[4] = self;
  v9 = nameCopy;
  v14 = v9;
  v15 = &v23;
  v16 = &v17;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v18[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore earnedInstancesForTemplateUniqueName:error:];
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __69__ACHEarnedInstanceStore_earnedInstancesForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) earnedInstancesForTemplateUniqueNameCache];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }

  else
  {
    v4 = [*(a1 + 32) client];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = [v4 fetchEarnedInstancesForTemplateUniqueName:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [*(a1 + 32) earnedInstancesForTemplateUniqueNameCache];
      [v10 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
    }
  }
}

- (id)earnedInstancesForEarnedDateComponents:(id)components error:(id *)error
{
  componentsCopy = components;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13;
  v28 = __Block_byref_object_dispose__13;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__ACHEarnedInstanceStore_earnedInstancesForEarnedDateComponents_error___block_invoke;
  v13[3] = &unk_278491580;
  v9 = componentsCopy;
  v14 = v9;
  selfCopy = self;
  v16 = &v24;
  v17 = &v18;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v19[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore earnedInstancesForEarnedDateComponents:error:];
    }

    if (error)
    {
      *error = v19[5];
    }
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __71__ACHEarnedInstanceStore_earnedInstancesForEarnedDateComponents_error___block_invoke(uint64_t a1)
{
  v2 = ACHYearMonthDayStringFromDateComponents();
  v3 = [*(a1 + 40) earnedInstancesForEarnedDateComponentsCache];
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  else
  {
    v5 = [*(a1 + 40) client];
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = [v5 fetchEarnedInstancesForEarnedDateComponents:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v11 = [*(a1 + 40) earnedInstancesForEarnedDateComponentsCache];
      [v11 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v2];
    }
  }
}

- (id)earnedInstancesForAnniversaryWithDateComponents:(id)components templateUnqiueNames:(id)names error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  namesCopy = names;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__13;
  v33 = __Block_byref_object_dispose__13;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__ACHEarnedInstanceStore_earnedInstancesForAnniversaryWithDateComponents_templateUnqiueNames_error___block_invoke;
  block[3] = &unk_278491A60;
  v21 = &v29;
  block[4] = self;
  v12 = componentsCopy;
  v19 = v12;
  v13 = namesCopy;
  v20 = v13;
  v22 = &v23;
  dispatch_sync(earnedInstanceQueue2, block);

  if (v24[5])
  {
    v14 = ACHLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = v24[5];
      *buf = 138543874;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v17;
      _os_log_error_impl(&dword_221DDC000, v14, OS_LOG_TYPE_ERROR, "Error fetching anniversary earned instances for date components %{public}@ and templateNames %{public}@: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      *error = v24[5];
    }
  }

  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __100__ACHEarnedInstanceStore_earnedInstancesForAnniversaryWithDateComponents_templateUnqiueNames_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 fetchEarnedInstancesForAnniversaryOfDateComponents:v3 templateUniqueNames:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)earnedInstancesForDateInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__ACHEarnedInstanceStore_earnedInstancesForDateInterval_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v23;
  v13[4] = self;
  v9 = intervalCopy;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v18[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore earnedInstancesForDateInterval:error:];
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __63__ACHEarnedInstanceStore_earnedInstancesForDateInterval_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchEarnedInstancesForDateInterval:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)mostRecentEarnedInstanceForTemplateUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ACHEarnedInstanceStore_mostRecentEarnedInstanceForTemplateUniqueName_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v23;
  v13[4] = self;
  v9 = nameCopy;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v18[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore mostRecentEarnedInstanceForTemplateUniqueName:error:];
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __78__ACHEarnedInstanceStore_mostRecentEarnedInstanceForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchMostRecentEarnedInstanceForTemplateUniqueName:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)mostRecentEarnedInstancesForTemplateUniqueNames:(id)names error:(id *)error
{
  namesCopy = names;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__ACHEarnedInstanceStore_mostRecentEarnedInstancesForTemplateUniqueNames_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v23;
  v13[4] = self;
  v9 = namesCopy;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v18[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore mostRecentEarnedInstancesForTemplateUniqueNames:error:];
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __80__ACHEarnedInstanceStore_mostRecentEarnedInstancesForTemplateUniqueNames_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchMostRecentEarnedInstancesForTemplateUniqueNames:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueName_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v23;
  v13[4] = self;
  v9 = nameCopy;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v18[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore countOfEarnedInstancesForTemplateUniqueName:error:];
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __76__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 countOfEarnedInstancesForTemplateUniqueName:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = [v5 unsignedIntegerValue];
}

- (id)countOfEarnedInstancesForTemplateUniqueNames:(id)names error:(id *)error
{
  namesCopy = names;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13;
  v27 = __Block_byref_object_dispose__13;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueNames_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v23;
  v13[4] = self;
  v9 = namesCopy;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(earnedInstanceQueue2, v13);

  if (v18[5])
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore countOfEarnedInstancesForTemplateUniqueNames:error:];
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __77__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueNames_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 countOfEarnedInstancesForTemplateUniqueNames:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)name inDateComponentInterval:(id)interval withCalendar:(id)calendar error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  calendarCopy = calendar;
  v12 = [(ACHEarnedInstanceStore *)self earnedInstancesForTemplateUniqueName:name error:error];
  startDateComponents = [intervalCopy startDateComponents];
  v14 = [calendarCopy dateFromComponents:startDateComponents];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  endDateComponents = [intervalCopy endDateComponents];
  v18 = [calendarCopy dateFromComponents:endDateComponents];
  [v18 timeIntervalSinceReferenceDate];
  v20 = v19;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v21);
        }

        earnedDateComponents = [*(*(&v33 + 1) + 8 * i) earnedDateComponents];
        v28 = [calendarCopy dateFromComponents:earnedDateComponents];
        [v28 timeIntervalSinceReferenceDate];
        v30 = v29;

        v31 = v30 <= v20 && v30 >= v16;
        v24 += v31;
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)addEarnedInstances:(id)instances error:(id *)error
{
  instancesCopy = instances;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ACHEarnedInstanceStore_addEarnedInstances_error___block_invoke;
  v11[3] = &unk_278491A88;
  v11[4] = self;
  v12 = instancesCopy;
  v13 = &v15;
  errorCopy = error;
  v9 = instancesCopy;
  dispatch_sync(earnedInstanceQueue2, v11);

  LOBYTE(instancesCopy) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return instancesCopy;
}

void *__51__ACHEarnedInstanceStore_addEarnedInstances_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_addEarnedInstances:*(a1 + 40) triggerSync:1 error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_queue_purgeCaches
{
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(earnedInstanceQueue);

  earnedInstancesForTemplateUniqueNameCache = [(ACHEarnedInstanceStore *)self earnedInstancesForTemplateUniqueNameCache];
  [earnedInstancesForTemplateUniqueNameCache removeAllObjects];

  earnedInstancesForEarnedDateComponentsCache = [(ACHEarnedInstanceStore *)self earnedInstancesForEarnedDateComponentsCache];
  [earnedInstancesForEarnedDateComponentsCache removeAllObjects];
}

- (BOOL)_queue_addEarnedInstances:(id)instances triggerSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  v66 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(earnedInstanceQueue);

  [(ACHEarnedInstanceStore *)self _queue_purgeCaches];
  date = [MEMORY[0x277CBEAA8] date];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = instancesCopy;
  v9 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        [v13 setCreatedDate:date];
        [v13 setCreatorDevice:self->_device];
      }

      v10 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v10);
  }

  v14 = [obj hk_map:&__block_literal_global_15];
  assertionClient = [(ACHEarnedInstanceStore *)self assertionClient];
  v57 = 0;
  v43 = [assertionClient acquireDatabaseAssertionWithIdentifier:@"AddEarnedInstances" error:&v57];
  v16 = v57;

  if (v16)
  {
    v17 = ACHLogDatabase();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore _queue_addEarnedInstances:triggerSync:error:];
    }
  }

  v42 = v16;
  v44 = date;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v46 = v14;
  v48 = [v46 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v48)
  {
    v18 = *v54;
    v19 = 1;
    v47 = MEMORY[0x277CBEBF8];
    errorCopy2 = error;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v46);
        }

        v22 = *(*(&v53 + 1) + 8 * j);
        v23 = objc_autoreleasePoolPush();
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_306;
        v52[3] = &unk_278491AD0;
        v52[4] = v22;
        v24 = [obj hk_filter:v52];
        v51 = 0;
        v25 = [(ACHEarnedInstanceStore *)self _queue_addEarnedInstancesWithSingleTemplate:v24 error:&v51];
        v26 = v51;
        if (v26)
        {
          v19 = 0;
        }

        else
        {
          [v47 arrayByAddingObjectsFromArray:v25];
          v27 = v19;
          v29 = v28 = self;

          v47 = v29;
          self = v28;
          v19 = v27;
          errorCopy2 = error;
        }

        objc_autoreleasePoolPop(v23);
        if ((v19 & 1) == 0)
        {
          v30 = v26;
          if (v26)
          {
            if (errorCopy2)
            {
              v31 = v30;
              *errorCopy2 = v30;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v48);
  }

  else
  {
    LOBYTE(v19) = 1;
    v47 = MEMORY[0x277CBEBF8];
  }

  if (!v43)
  {
    v33 = v42;
    v34 = v47;
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  assertionClient2 = [(ACHEarnedInstanceStore *)self assertionClient];
  v50 = 0;
  [assertionClient2 invalidateAssertionWithToken:v43 error:&v50];
  v33 = v50;

  v34 = v47;
  if (v33)
  {
    v35 = ACHLogDatabase();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore _queue_addEarnedInstances:triggerSync:error:];
    }
  }

  if (v19)
  {
LABEL_38:
    v36 = ACHLogDatabase();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
      *buf = 138543362;
      v63 = v37;
      _os_log_impl(&dword_221DDC000, v36, OS_LOG_TYPE_DEFAULT, "Successfully added %{public}@ earned instances to database, adding them to in-memory store.", buf, 0xCu);
    }

    v38 = ACHLogDatabase();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v38, OS_LOG_TYPE_DEFAULT, "Notifying observers of added earned instances.", buf, 2u);
    }

    [(ACHEarnedInstanceStore *)self _notifyObserversOfAddedEarnedInstances:v34];
    if (syncCopy && [v34 count])
    {
      client = [(ACHEarnedInstanceStore *)self client];
      [client triggerSyncWithCompletion:&__block_literal_global_312_0];
    }
  }

LABEL_45:

  return v19 & 1;
}

uint64_t __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_306(uint64_t a1, void *a2)
{
  v3 = [a2 templateUniqueName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = ACHLogSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_1(v3, v5);
  }

  if (v4)
  {
    v6 = ACHLogSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_2();
    }
  }
}

- (id)_queue_addEarnedInstancesWithSingleTemplate:(id)template error:(id *)error
{
  templateCopy = template;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(earnedInstanceQueue);

  anyObject = [templateCopy anyObject];
  templateUniqueName = [anyObject templateUniqueName];

  client = [(ACHEarnedInstanceStore *)self client];
  v34 = 0;
  v11 = [client fetchEarnedInstancesForTemplateUniqueName:templateUniqueName error:&v34];
  v12 = v34;

  if (v12)
  {
    v13 = ACHLogDatabase();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore _queue_addEarnedInstancesWithSingleTemplate:error:];
    }

    if (error)
    {
      v14 = v12;
      v15 = 0;
      *error = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] setWithArray:v11];
    duplicateUtility = [(ACHEarnedInstanceStore *)self duplicateUtility];
    v32 = v16;
    v18 = [v16 setByAddingObjectsFromSet:templateCopy];
    v33 = [duplicateUtility earnedInstancesWithoutDuplicates:v18];

    duplicateUtility2 = [(ACHEarnedInstanceStore *)self duplicateUtility];
    v20 = [duplicateUtility2 earnedInstancesLimitedByEarnLimit:v33];

    v31 = [templateCopy intersectSet:v20];
    v21 = [v16 hk_minus:v20];
    client2 = [(ACHEarnedInstanceStore *)self client];
    [v31 allObjects];
    v23 = templateCopy;
    v24 = templateUniqueName;
    v26 = v25 = v11;
    allObjects = [v21 allObjects];
    errorCopy = error;
    v29 = allObjects;
    v15 = [client2 addEarnedInstances:v26 removingEarnedInstances:allObjects error:errorCopy];

    v11 = v25;
    templateUniqueName = v24;
    templateCopy = v23;
  }

  return v15;
}

- (BOOL)removeEarnedInstances:(id)instances error:(id *)error
{
  instancesCopy = instances;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13;
  v28 = __Block_byref_object_dispose__13;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ACHEarnedInstanceStore_removeEarnedInstances_error___block_invoke;
  v16[3] = &unk_278491668;
  v16[4] = self;
  v18 = &v20;
  v9 = instancesCopy;
  v17 = v9;
  v19 = &v24;
  dispatch_sync(earnedInstanceQueue2, v16);

  v10 = v25[5];
  if (v10)
  {
    v11 = v10;
    v12 = v11;
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v14 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

void __54__ACHEarnedInstanceStore_removeEarnedInstances_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_purgeCaches];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _queue_removeEarnedInstances:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (BOOL)_queue_removeEarnedInstances:(id)instances error:(id *)error
{
  instancesCopy = instances;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(earnedInstanceQueue);

  client = [(ACHEarnedInstanceStore *)self client];
  v9 = [client removeEarnedInstances:instancesCopy error:error];

  if (v9)
  {
    [(ACHEarnedInstanceStore *)self _notifyObserversOfRemovedEarnedInstances:instancesCopy];
  }

  else
  {
    v10 = ACHLogDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceStore *)error _queue_removeEarnedInstances:instancesCopy error:v10];
    }
  }

  return v9;
}

- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ACHEarnedInstanceStore_removeEarnedInstancesForTemplateUniqueName_error___block_invoke;
  v15[3] = &unk_278491668;
  v15[4] = self;
  v17 = &v25;
  v9 = nameCopy;
  v16 = v9;
  v18 = &v19;
  dispatch_sync(earnedInstanceQueue2, v15);

  v10 = v20[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __75__ACHEarnedInstanceStore_removeEarnedInstancesForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_purgeCaches];
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 removeEarnedInstancesForTemplateUniqueName:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (BOOL)removeAllEarnedInstancesWithError:(id *)error
{
  earnedInstanceQueue = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(earnedInstanceQueue);

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  earnedInstanceQueue2 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ACHEarnedInstanceStore_removeAllEarnedInstancesWithError___block_invoke;
  block[3] = &unk_278491558;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  dispatch_sync(earnedInstanceQueue2, block);

  v7 = v14[5];
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

void __60__ACHEarnedInstanceStore_removeAllEarnedInstancesWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_purgeCaches];
  v2 = [*(a1 + 32) client];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 removeAllEarnedInstancesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)_notifyObserversOfAddedEarnedInstances:(id)instances
{
  instancesCopy = instances;
  observerQueue = [(ACHEarnedInstanceStore *)self observerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ACHEarnedInstanceStore__notifyObserversOfAddedEarnedInstances___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = instancesCopy;
  v6 = instancesCopy;
  dispatch_async(observerQueue, v7);
}

void __65__ACHEarnedInstanceStore__notifyObserversOfAddedEarnedInstances___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) earnedInstanceStore:*(a1 + 32) didAddNewEarnedInstances:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfSync
{
  observerQueue = [(ACHEarnedInstanceStore *)self observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ACHEarnedInstanceStore__notifyObserversOfSync__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(observerQueue, block);
}

void __48__ACHEarnedInstanceStore__notifyObserversOfSync__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) earnedInstanceStoreDidReceiveSyncNotification:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfRemovedEarnedInstances:(id)instances
{
  instancesCopy = instances;
  observerQueue = [(ACHEarnedInstanceStore *)self observerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ACHEarnedInstanceStore__notifyObserversOfRemovedEarnedInstances___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = instancesCopy;
  v6 = instancesCopy;
  dispatch_async(observerQueue, v7);
}

void __67__ACHEarnedInstanceStore__notifyObserversOfRemovedEarnedInstances___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) earnedInstanceStore:*(a1 + 32) didRemoveEarnedInstances:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = [(ACHEarnedInstanceStore *)self observerQueue];
  dispatch_assert_queue_not_V2(observerQueue);

  observerQueue2 = [(ACHEarnedInstanceStore *)self observerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ACHEarnedInstanceStore_addObserver___block_invoke;
  v8[3] = &unk_278490898;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(observerQueue2, v8);
}

void __38__ACHEarnedInstanceStore_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = [(ACHEarnedInstanceStore *)self observerQueue];
  dispatch_assert_queue_not_V2(observerQueue);

  observerQueue2 = [(ACHEarnedInstanceStore *)self observerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ACHEarnedInstanceStore_removeObserver___block_invoke;
  v8[3] = &unk_278490898;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(observerQueue2, v8);
}

void __41__ACHEarnedInstanceStore_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)earnedInstances
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*self + 40);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Error fetching earned instances: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)earnedInstancesForTemplateUniqueName:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching earned instances for unique name %{public}@: %{public}@");
}

- (void)earnedInstancesForEarnedDateComponents:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching earned instances for earned date components %{public}@: %{public}@");
}

- (void)earnedInstancesForDateInterval:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching earned instances for earned dateInterval %{public}@: %{public}@");
}

- (void)mostRecentEarnedInstanceForTemplateUniqueName:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching most recent earned instance for unique name %{public}@: %{public}@");
}

- (void)mostRecentEarnedInstancesForTemplateUniqueNames:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching most recent earned instances for %{public}@: %{public}@");
}

- (void)countOfEarnedInstancesForTemplateUniqueName:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error counting earned instances for unique name %{public}@: %{public}@");
}

- (void)countOfEarnedInstancesForTemplateUniqueNames:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error counting earned instances for unique names %{public}@: %{public}@");
}

void __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Triggered sync for earned instances, success: %@", &v3, 0xCu);
}

- (void)_queue_removeEarnedInstances:(NSObject *)a3 error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, a2, a3, "Failed to remove earned instances with error %{public}@, earned instances: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end