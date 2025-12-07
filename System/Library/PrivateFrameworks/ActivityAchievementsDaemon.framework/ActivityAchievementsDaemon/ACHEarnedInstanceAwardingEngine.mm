@interface ACHEarnedInstanceAwardingEngine
- (ACHEarnedInstanceAwardingEngine)initWithClient:(id)client assertionClient:(id)assertionClient dataStore:(id)store earnedInstanceStore:(id)instanceStore historicalEvaluationPolicy:(id *)policy;
- (id)currentDate;
- (id)sourceRecordForSource:(id)source;
- (unint64_t)sourceCount;
- (void)_queue_evaluateHistoryForSource:(id)source completion:(id)completion;
- (void)_queue_performQueuedEvaluations;
- (void)_queue_protectedDataBecameAvailable;
- (void)_requestHistoricalEvaluationForAllSourcesWithCompletion:(id)completion;
- (void)activate;
- (void)dealloc;
- (void)deregisterSource:(id)source;
- (void)registerSource:(id)source;
- (void)requestHistoricalEvaluationForAllSourcesWithCompletion:(id)completion;
- (void)requestIncrementalEvaluationForSource:(id)source evaluationBlock:(id)block;
@end

@implementation ACHEarnedInstanceAwardingEngine

- (ACHEarnedInstanceAwardingEngine)initWithClient:(id)client assertionClient:(id)assertionClient dataStore:(id)store earnedInstanceStore:(id)instanceStore historicalEvaluationPolicy:(id *)policy
{
  clientCopy = client;
  assertionClientCopy = assertionClient;
  storeCopy = store;
  instanceStoreCopy = instanceStore;
  v34.receiver = self;
  v34.super_class = ACHEarnedInstanceAwardingEngine;
  v16 = [(ACHEarnedInstanceAwardingEngine *)&v34 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_client, clientCopy);
    objc_storeWeak(&v17->_assertionClient, assertionClientCopy);
    objc_storeWeak(&v17->_dataStore, storeCopy);
    objc_storeWeak(&v17->_earnedInstanceStore, instanceStoreCopy);
    v18 = *&policy->var2;
    *&v17->_historicalEvaluationPolicy.startDate = *&policy->var0;
    *&v17->_historicalEvaluationPolicy.clearDataStoreBeforeHistoricalRun = v18;
    v17->_isActivated = 0;
    v19 = HKCreateSerialDispatchQueue();
    internalQueue = v17->_internalQueue;
    v17->_internalQueue = v19;

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v17->_calendar;
    v17->_calendar = autoupdatingCurrentCalendar;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceRegistry = v17->_sourceRegistry;
    v17->_sourceRegistry = v23;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    queuedIncrementalEvaluations = v17->_queuedIncrementalEvaluations;
    v17->_queuedIncrementalEvaluations = dictionary;

    objc_initWeak(&location, v17);
    uTF8String = [*MEMORY[0x277CE8C10] UTF8String];
    v28 = v17->_internalQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __123__ACHEarnedInstanceAwardingEngine_initWithClient_assertionClient_dataStore_earnedInstanceStore_historicalEvaluationPolicy___block_invoke;
    handler[3] = &unk_278492B90;
    v31 = clientCopy;
    objc_copyWeak(&v32, &location);
    notify_register_dispatch(uTF8String, &v17->_protectedDataToken, v28, handler);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  return v17;
}

void __123__ACHEarnedInstanceAwardingEngine_initWithClient_assertionClient_dataStore_earnedInstanceStore_historicalEvaluationPolicy___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isProtectedDataAvailable])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _queue_protectedDataBecameAvailable];
  }
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v3.receiver = self;
  v3.super_class = ACHEarnedInstanceAwardingEngine;
  [(ACHEarnedInstanceAwardingEngine *)&v3 dealloc];
}

- (void)activate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ACHEarnedInstanceAwardingEngine_activate__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __43__ACHEarnedInstanceAwardingEngine_activate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 97);
  v4 = ACHLogAwardEngine();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__ACHEarnedInstanceAwardingEngine_activate__block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Activating Awarding Engine", v13, 2u);
    }

    *(*(a1 + 32) + 97) = 1;
  }
}

- (unint64_t)sourceCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ACHEarnedInstanceAwardingEngine_sourceCount__block_invoke;
  v5[3] = &unk_278490FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__46__ACHEarnedInstanceAwardingEngine_sourceCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)sourceRecordForSource:(id)source
{
  sourceCopy = source;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__29;
  v16 = __Block_byref_object_dispose__29;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACHEarnedInstanceAwardingEngine_sourceRecordForSource___block_invoke;
  block[3] = &unk_278491010;
  v10 = sourceCopy;
  v11 = &v12;
  block[4] = self;
  v6 = sourceCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__ACHEarnedInstanceAwardingEngine_sourceRecordForSource___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)registerSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy conformsToProtocol:&unk_283556FF8])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke;
    v7[3] = &unk_278490898;
    v7[4] = self;
    v8 = sourceCopy;
    dispatch_async(internalQueue, v7);
  }

  else
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceAwardingEngine registerSource:];
    }
  }
}

void __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = [*(a1 + 40) uniqueName];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke_cold_1(v2);
    }
  }

  else
  {
    v7 = [ACHEarnedInstanceAwardingSourceRecord alloc];
    v8 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v10 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v11 = [*(a1 + 32) currentDate];
    v6 = [(ACHEarnedInstanceAwardingSourceRecord *)v7 initWithSource:v8 earnedInstanceStore:WeakRetained dataStore:v10 registrationDate:v11];

    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 64);
    v14 = [v12 uniqueName];
    [v13 setObject:v6 forKeyedSubscript:v14];

    v15 = ACHLogAwardEngine();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*v2 uniqueName];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Awarding engine registered source with name [%{public}@]", &v17, 0xCu);
    }
  }
}

- (void)deregisterSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy conformsToProtocol:&unk_283556FF8])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke;
    v7[3] = &unk_278490898;
    v7[4] = self;
    v8 = sourceCopy;
    dispatch_async(internalQueue, v7);
  }

  else
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceAwardingEngine deregisterSource:];
    }
  }
}

void __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = [*(a1 + 40) uniqueName];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 64);
    v8 = [v6 uniqueName];
    [v7 removeObjectForKey:v8];

    v9 = ACHLogAwardEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 uniqueName];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Awarding engine deregistered source with name [%{public}@]", &v11, 0xCu);
    }
  }

  else
  {
    v9 = ACHLogAwardEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke_cold_1(v2);
    }
  }
}

- (void)requestIncrementalEvaluationForSource:(id)source evaluationBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  blockCopy = block;
  v8 = ACHLogAwardEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = sourceCopy;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Incremental evaluation requested for source with name: %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke;
  block[3] = &unk_278491428;
  block[4] = self;
  v13 = sourceCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = sourceCopy;
  dispatch_async(internalQueue, block);
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke(id *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  if (*(v3 + 97))
  {
    v4 = a1 + 5;
    v5 = [v3[8] objectForKeyedSubscript:a1[5]];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 lastCompletedEvaluationInterval];

      if (v7)
      {
        if (*(a1[4] + 96) == 1)
        {
          v8 = ACHLogAwardEngine();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *v4;
            *buf = 138543362;
            v37 = v9;
            _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Queuing incremental request for %{public}@ because historical run in progress", buf, 0xCu);
          }

          v10 = [a1[6] copy];
          v11 = _Block_copy(v10);
          [*(a1[4] + 13) setObject:v11 forKeyedSubscript:a1[5]];
        }

        else
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Achievements Incremental Evaluation - %@", a1[5]];
          WeakRetained = objc_loadWeakRetained(a1[4] + 2);
          v35 = 0;
          v13 = [WeakRetained acquireDatabaseAssertionWithIdentifier:v10 error:&v35];
          v14 = v35;

          v15 = ACHLogAwardEngine();
          v16 = v15;
          if (v13)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *v4;
              *buf = 138543362;
              v37 = v17;
              _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Acquired assertion, proceeding with evaluation and removing queued evaluation if necessary for %{public}@", buf, 0xCu);
            }

            [*(a1[4] + 13) removeObjectForKey:a1[5]];
            v18 = [v6 lastScheduledEvaluationInterval];
            v19 = [v18 endDate];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
            }

            else
            {
              v25 = [v6 lastCompletedEvaluationInterval];
              v21 = [v25 endDate];
            }

            v24 = [a1[4] currentDate];
            if ([v21 compare:v24] == 1)
            {
              v26 = ACHLogAwardEngine();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_2();
              }
            }

            else
            {
              v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v24];
              v28 = ACHLogAwardEngine();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v37 = v27;
                _os_log_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEFAULT, "Incremental evaluation date interval is %{public}@", buf, 0xCu);
              }

              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_359;
              v32[3] = &unk_278492BB8;
              v29 = a1[6];
              v33 = v27;
              v34 = v29;
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2;
              v30[3] = &unk_278492BE0;
              v30[4] = a1[4];
              v31 = v13;
              v26 = v27;
              [v6 addEvaluationOperationWithDateInterval:v26 evaluationBlock:v32 completion:v30];
            }
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_3();
            }

            v22 = ACHLogAwardEngine();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *v4;
              *buf = 138543362;
              v37 = v23;
              _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Queuing incremental request for %{public}@ until protected data becomes available", buf, 0xCu);
            }

            v21 = [a1[6] copy];
            v24 = _Block_copy(v21);
            [*(a1[4] + 13) setObject:v24 forKeyedSubscript:a1[5]];
          }
        }
      }

      else
      {
        v10 = ACHLogAwardEngine();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_4();
        }
      }
    }

    else
    {
      v10 = ACHLogAwardEngine();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_5();
      }
    }
  }

  else
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_1();
    }
  }
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(a1 + 40);
  v6 = 0;
  [WeakRetained invalidateAssertionWithToken:v3 error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = ACHLogAwardEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2_cold_1();
    }
  }
}

- (void)requestHistoricalEvaluationForAllSourcesWithCompletion:(id)completion
{
  v36[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke;
  block[3] = &unk_278490FE8;
  block[4] = self;
  block[5] = &v31;
  dispatch_sync(internalQueue, block);
  if (v32[3])
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Requesting historical evaluation for all sources", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_assertionClient);
    v29 = 0;
    v8 = [WeakRetained acquireDatabaseAssertionWithIdentifier:@"Achievements Historical Evaluation" duration:&v29 error:600.0];
    v9 = v29;

    if (v8)
    {
      objc_initWeak(buf, self);
      date = [MEMORY[0x277CBEAA8] date];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374;
      v23[3] = &unk_278492C08;
      v11 = date;
      v24 = v11;
      objc_copyWeak(&v27, buf);
      v25 = v8;
      v26 = completionCopy;
      [(ACHEarnedInstanceAwardingEngine *)self _requestHistoricalEvaluationForAllSourcesWithCompletion:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = ACHLogAwardEngine();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACHEarnedInstanceAwardingEngine requestHistoricalEvaluationForAllSourcesWithCompletion:];
      }

      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }

  else
  {
    v12 = ACHLogAwardEngine();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceAwardingEngine *)v12 requestHistoricalEvaluationForAllSourcesWithCompletion:v13, v14, v15, v16, v17, v18, v19];
    }

    v20 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Awarding Engine not activated";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v9 = [v20 errorWithDomain:@"com.apple.ActivityAchievements" code:11 userInfo:v21];

    (*(completionCopy + 2))(completionCopy, 0, v9);
  }

  _Block_object_dispose(&v31, 8);
}

void __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v8 = v7;

  v9 = ACHLogAwardEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    *buf = 134218242;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Completed historical evaluation in %lf seconds with success: %@", buf, 0x16u);
  }

  if (v5)
  {
    v11 = ACHLogAwardEngine();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(WeakRetained + 2);
    v15 = *(a1 + 40);
    v19 = 0;
    v16 = [v14 invalidateAssertionWithToken:v15 error:&v19];
    v17 = v19;

    if ((v16 & 1) == 0)
    {
      v18 = ACHLogAwardEngine();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374_cold_2();
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_requestHistoricalEvaluationForAllSourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = ACHLogAwardEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Assertion acquired! Let's go!", buf, 2u);
  }

  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke;
  v8[3] = &unk_278491948;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(internalQueue, v8);
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 96) = 1;
  v2 = *(a1 + 32);
  if (*(v2 + 56) != 1)
  {
LABEL_6:
    v5 = dispatch_group_create();
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 1;
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__29;
    v35 = __Block_byref_object_dispose__29;
    v36 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [*(*(a1 + 32) + 64) allValues];
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (v9)
    {
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v27 + 1) + 8 * v11);
          dispatch_group_enter(v5);
          v13 = *(a1 + 32);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_382;
          v23[3] = &unk_278492C58;
          v25 = v37;
          v26 = buf;
          v23[4] = v13;
          v23[5] = v12;
          v24 = v5;
          [v13 _queue_evaluateHistoryForSource:v12 completion:v23];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v43 count:16];
      }

      while (v9);
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(v15 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_402;
    block[3] = &unk_278492CA8;
    v21 = v37;
    v22 = buf;
    block[4] = v15;
    v20 = v14;
    dispatch_group_notify(v5, v16, block);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v37, 8);
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 24));
  v42 = 0;
  v4 = [WeakRetained clearAllInMemoryPropertiesWithError:&v42];
  v5 = v42;

  v6 = ACHLogAwardEngine();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "DataStore cleared for historical evaluation", buf, 2u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_cold_1();
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = dispatch_get_global_queue(21, 0);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_381;
    v39[3] = &unk_278491258;
    v41 = v17;
    v5 = v5;
    v40 = v5;
    dispatch_async(v18, v39);
  }

LABEL_14:
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_382(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v9 = *(a1 + 48);
  v12 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  block[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2;
  block[3] = &unk_278492C30;
  v15 = a2;
  v14 = *(a1 + 64);
  v11 = v5;
  v7 = v9;
  v13 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 64) + 8) + 24) &= *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (!v5)
  {
    v4 = *(a1 + 32);
  }

  objc_storeStrong(v3, v4);
  if (*(a1 + 80) != 1 || *(a1 + 32))
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_1(a1);
    }

    goto LABEL_7;
  }

  v7 = *(*(a1 + 48) + 57);
  v6 = ACHLogAwardEngine();
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v8)
    {
      v9 = [*(a1 + 40) uniqueName];
      *buf = 138543362;
      v36 = v9;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] succeeded historical evaluation, committing data to dataStore", buf, 0xCu);
    }

    v10 = (a1 + 40);
    v11 = [*(a1 + 40) source];
    v12 = [v11 conformsToProtocol:&unk_2835607F0];

    if (v12)
    {
      v6 = [*v10 source];
      if (v6)
      {
        v13 = ACHLogAwardEngine();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*v10 uniqueName];
          v15 = [*v10 source];
          v16 = [v15 uniqueName];
          *buf = 138543618;
          v36 = v14;
          v37 = 2114;
          v38 = v16;
          _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Committing data store properties for sourceRecord.source %{public}@ to dataStore", buf, 0x16u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 24));
        v34 = 0;
        v18 = [WeakRetained commitPropertiesForProvider:v6 withError:&v34];
        v19 = v34;

        if ((v18 & 1) == 0)
        {
          v27 = ACHLogAwardEngine();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_2((a1 + 40));
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v21 = ACHLogAwardEngine();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*v10 uniqueName];
      v23 = [*v10 uniqueName];
      *buf = 138543618;
      v36 = v22;
      v37 = 2114;
      v38 = v23;
      _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Now committing source record %{public}@ to data store", buf, 0x16u);
    }

    v24 = objc_loadWeakRetained((*(a1 + 48) + 24));
    v25 = *(a1 + 40);
    v33 = 0;
    v26 = [v24 commitPropertiesForProvider:v25 withError:&v33];
    v19 = v33;

    if (v26)
    {
      goto LABEL_31;
    }

    v27 = ACHLogAwardEngine();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_3((a1 + 40));
    }

LABEL_27:

    v28 = *(*(a1 + 72) + 8);
    v31 = *(v28 + 40);
    v29 = (v28 + 40);
    v30 = v31;
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = v19;
    }

    objc_storeStrong(v29, v32);
    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_31:

    goto LABEL_7;
  }

  if (v8)
  {
    v20 = [*(a1 + 40) uniqueName];
    *buf = 138543362;
    v36 = v20;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] succeeded historical evaluation", buf, 0xCu);
  }

LABEL_7:

  dispatch_group_leave(*(a1 + 56));
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_402(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  *(*(a1 + 32) + 96) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_403;
    block[3] = &unk_278492C80;
    v8 = v4;
    v9 = v2;
    v7 = v3;
    dispatch_async(v5, block);
  }

  [*(a1 + 32) _queue_performQueuedEvaluations];
}

- (void)_queue_protectedDataBecameAvailable
{
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Protected data became available; attempting queued evaluation", v4, 2u);
  }

  [(ACHEarnedInstanceAwardingEngine *)self _queue_performQueuedEvaluations];
}

- (void)_queue_performQueuedEvaluations
{
  queuedIncrementalEvaluations = self->_queuedIncrementalEvaluations;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ACHEarnedInstanceAwardingEngine__queue_performQueuedEvaluations__block_invoke;
  v3[3] = &unk_278492CD0;
  v3[4] = self;
  [(NSMutableDictionary *)queuedIncrementalEvaluations enumerateKeysAndObjectsUsingBlock:v3];
}

void __66__ACHEarnedInstanceAwardingEngine__queue_performQueuedEvaluations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ACHLogAwardEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Attempting queued evaluation for %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) requestIncrementalEvaluationForSource:v5 evaluationBlock:v6];
}

- (void)_queue_evaluateHistoryForSource:(id)source completion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  source = [sourceCopy source];
  uniqueName = [source uniqueName];

  v8 = ACHLogAwardEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueName;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Getting ready to evaluate history for source: %{public}@", &buf, 0xCu);
  }

  p_historicalEvaluationPolicy = &self->_historicalEvaluationPolicy;
  v39 = self->_historicalEvaluationPolicy.startDate == 2;
  if (self->_historicalEvaluationPolicy.startDate != 2 || ([sourceCopy source], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", &unk_2835607F0), v10, !v11))
  {
    v14 = 0;
    source2 = 0;
    v38 = 0;
    goto LABEL_14;
  }

  v12 = ACHLogAwardEngine();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = uniqueName;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Looking up snapshot for source: %@", &buf, 0xCu);
  }

  source2 = [sourceCopy source];
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);
  v62 = 0;
  v14 = [WeakRetained snapshotForProvider:source2 withError:&v62];
  v15 = v62;

  if (v14 || !v15)
  {

    v38 = 1;
LABEL_14:
    lastCompletedEvaluationInterval = [sourceCopy lastCompletedEvaluationInterval];
    endDate = [lastCompletedEvaluationInterval endDate];
    buf = *&p_historicalEvaluationPolicy->startDate;
    v64 = *&self->_historicalEvaluationPolicy.clearDataStoreBeforeHistoricalRun;
    v18 = ACHHistoricalEvaluationStartDateForPolicy(&buf, endDate, v14);

    if (v18)
    {
      calendar = self->_calendar;
      currentDate = [(ACHEarnedInstanceAwardingEngine *)self currentDate];
      buf = *&p_historicalEvaluationPolicy->startDate;
      v64 = *&self->_historicalEvaluationPolicy.clearDataStoreBeforeHistoricalRun;
      v23 = ACHHistoricalEvaluationEndDateForPolicy(&buf, calendar, currentDate);

      [v23 timeIntervalSinceReferenceDate];
      v25 = v24;
      [v18 timeIntervalSinceReferenceDate];
      if (v25 <= v26)
      {
        v37 = ACHLogAwardEngine();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [ACHEarnedInstanceAwardingEngine _queue_evaluateHistoryForSource:completion:];
        }

        if (!completionCopy)
        {
          goto LABEL_28;
        }

        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Achievements.AwardingEngine" code:101 userInfo:0];
        completionCopy[2](completionCopy, 0, v34);
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v23];
        v28 = ACHLogAwardEngine();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v27;
          _os_log_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEFAULT, "Historical evaluation interval is %{public}@", &buf, 0xCu);
        }

        [sourceCopy cancelAllEvaluationOperations];
        source3 = [sourceCopy source];
        objc_initWeak(&buf, self);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_406;
        v51[3] = &unk_278492D20;
        v57 = v39;
        v30 = v14;
        v52 = v30;
        v31 = uniqueName;
        v53 = v31;
        v32 = source2;
        v54 = v32;
        v33 = source3;
        v55 = v33;
        v34 = v27;
        v56 = v34;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407;
        v43[3] = &unk_278492D48;
        objc_copyWeak(&v48, &buf);
        v49 = v39;
        v44 = v30;
        v50 = v38;
        v45 = v31;
        v46 = v32;
        v47 = completionCopy;
        [sourceCopy addEvaluationOperationWithDateInterval:v34 evaluationBlock:v51 completion:v43];

        objc_destroyWeak(&v48);
        objc_destroyWeak(&buf);
      }
    }

    else
    {
      v35 = ACHLogAwardEngine();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_221DDC000, v35, OS_LOG_TYPE_DEFAULT, "No valid start date, not evaluating history", &buf, 2u);
      }

      if (!completionCopy)
      {
        goto LABEL_29;
      }

      v36 = dispatch_get_global_queue(21, 0);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_405;
      v58[3] = &unk_278492CF8;
      v59 = completionCopy;
      dispatch_async(v36, v58);

      v23 = v59;
    }

LABEL_28:

LABEL_29:
    v15 = v14;
    goto LABEL_30;
  }

  v16 = ACHLogAwardEngine();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ACHEarnedInstanceAwardingEngine _queue_evaluateHistoryForSource:completion:];
  }

  if (completionCopy)
  {
    v17 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke;
    block[3] = &unk_278492CF8;
    v61 = completionCopy;
    dispatch_async(v17, block);

    v18 = v61;
LABEL_30:
  }
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Achievements.AwardingEngine" code:103 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_405(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Achievements.AwardingEngine" code:102 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

id __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_406(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) == 1 && *(a1 + 32))
  {
    v4 = ACHLogAwardEngine();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Applying snapshot to source: %@", &v10, 0xCu);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) properties];
    [v6 setDataStoreProperties:v7];
  }

  v8 = [*(a1 + 56) earnedInstancesForHistoricalInterval:*(a1 + 64) error:a2];

  return v8;
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && *(a1 + 72) == 1 && !*(a1 + 32) && *(a1 + 73) == 1)
  {
    v7 = ACHLogAwardEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) validThroughDate];
      *buf = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Saving new snapshot for source: %{public}@ with value through date: %{public}@", buf, 0x16u);
    }

    v10 = objc_loadWeakRetained(WeakRetained + 3);
    v11 = *(a1 + 48);
    v16 = 0;
    v12 = [v10 commitSnapshotForProvider:v11 withError:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      v14 = ACHLogAwardEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407_cold_1();
      }
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }
}

- (id)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

void __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error requesting incremental evaluation for source with name [%{public}@]: the evaluation start date is greater than the end date. - sourceRecord: %{public}@");
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Failed to get accessibility assertion for %{public}@ with error %{public}@");
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error requesting incremental evaluation for source with name [%{public}@]: this source has never completed a historical run", v2, v3, v4, v5);
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error requesting incremental evaluation for source with name [%{public}@]: no such source exists", v2, v3, v4, v5);
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error invalidating assertion with token %@: %@");
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_2(id *a1)
{
  v2 = [*a1 uniqueName];
  v3 = [*a1 source];
  v4 = [v3 uniqueName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_3(id *a1)
{
  v2 = [*a1 uniqueName];
  v3 = [*a1 uniqueName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_queue_evaluateHistoryForSource:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Snapshot lookup error for source %@, not evaluating history: %@");
}

- (void)_queue_evaluateHistoryForSource:completion:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Historical evaluation not possible, interval start date comes after end date: %{public}@ -> %{public}@");
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error committing snapshot for source %@: %@");
}

@end