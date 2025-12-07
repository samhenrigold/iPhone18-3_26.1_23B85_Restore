@interface ASReachabilityQueryOperation
- (ASReachabilityQueryOperation)init;
- (ASReachabilityStatusCache)statusCache;
- (void)_queryTimedOut;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)finish;
- (void)start;
@end

@implementation ASReachabilityQueryOperation

- (ASReachabilityQueryOperation)init
{
  v3.receiver = self;
  v3.super_class = ASReachabilityQueryOperation;
  result = [(ASReachabilityQueryOperation *)&v3 init];
  if (result)
  {
    result->_finished = 0;
    result->_executing = 0;
  }

  return result;
}

- (void)start
{
  v62 = *MEMORY[0x277D85DE8];
  if ([(ASReachabilityQueryOperation *)self isCancelled])
  {
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;

    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isFinished"];
  }

  else
  {
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    v3 = [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isExecuting"];
    ASLoggingInitialize(v3, v4);
    v5 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      destinations = self->_destinations;
      v7 = v5;
      *buf = 134217984;
      v61 = [(NSSet *)destinations count];
      _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Reachability: Starting for %lu destinations", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_statusCache);
    v9 = [WeakRetained statusesForDestinations:self->_destinations];

    v10 = [v9 mutableCopy];
    results = self->_results;
    self->_results = v10;

    v12 = [v9 count];
    if (v12)
    {
      ASLoggingInitialize(v12, v13);
      v14 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v9 count];
        *buf = 134217984;
        v61 = v16;
        _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, "Reachability: Hit %lu destinations in cache second pass", buf, 0xCu);
      }

      (*(self->_updateHandler + 2))();
    }

    v17 = self->_destinations;
    v18 = MEMORY[0x277CCAC30];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __37__ASReachabilityQueryOperation_start__block_invoke;
    v57[3] = &unk_278C462A0;
    v50 = v9;
    v58 = v50;
    v19 = [v18 predicateWithBlock:v57];
    v20 = [(NSSet *)v17 filteredSetUsingPredicate:v19];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    rawIDSDestinationToOriginalDestination = self->_rawIDSDestinationToOriginalDestination;
    self->_rawIDSDestinationToOriginalDestination = dictionary;

    v23 = [MEMORY[0x277CBEB58] set];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v24 = v20;
    v25 = [v24 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v53 + 1) + 8 * i);
          v30 = IDSDestinationForString(v29);
          if (v30)
          {
            [v23 addObject:v30];
            v31 = IDSCopyRawAddressForDestination();
            [(NSMutableDictionary *)self->_rawIDSDestinationToOriginalDestination setObject:v29 forKeyedSubscript:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v26);
    }

    v32 = [v24 count];
    if (v32)
    {
      ASLoggingInitialize(v32, v33);
      v34 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = [v24 count];
        *buf = 134217984;
        v61 = v36;
        _os_log_impl(&dword_23E4FA000, v35, OS_LOG_TYPE_DEFAULT, "Reachability: Querying %lu destinations", buf, 0xCu);
      }

      currentQueue = [MEMORY[0x277CCABD8] currentQueue];
      underlyingQueue = [currentQueue underlyingQueue];

      v39 = [objc_alloc(MEMORY[0x277D186D8]) initWithService:self->_serviceIdentifier delegate:self queue:underlyingQueue];
      batchQueryController = self->_batchQueryController;
      self->_batchQueryController = v39;

      v41 = [v24 mutableCopy];
      remainingDestinations = self->_remainingDestinations;
      self->_remainingDestinations = v41;

      v43 = self->_batchQueryController;
      allObjects = [v23 allObjects];
      [(IDSBatchIDQueryController *)v43 setDestinations:allObjects];

      v45 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, underlyingQueue);
      timer = self->timer;
      self->timer = v45;

      v47 = self->timer;
      v48 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v47, v48, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      objc_initWeak(buf, self);
      v49 = self->timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __37__ASReachabilityQueryOperation_start__block_invoke_18;
      handler[3] = &unk_278C46550;
      objc_copyWeak(&v52, buf);
      dispatch_source_set_event_handler(v49, handler);
      dispatch_resume(self->timer);
      objc_destroyWeak(&v52);
      objc_destroyWeak(buf);
    }

    else
    {
      [(ASReachabilityQueryOperation *)self finish];
    }
  }
}

BOOL __37__ASReachabilityQueryOperation_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __37__ASReachabilityQueryOperation_start__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryTimedOut];
}

- (void)finish
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_finished)
  {
    ASLoggingInitialize(self, a2);
    v3 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      destinations = self->_destinations;
      v5 = v3;
      v8 = 134217984;
      v9 = [(NSSet *)destinations count];
      _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Reachability: Finished %lu destinations", &v8, 0xCu);
    }

    timer = self->timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
    }

    [(IDSBatchIDQueryController *)self->_batchQueryController invalidate];
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isExecuting"];
    [(ASReachabilityQueryOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = 1;
    self->_executing = 0;
    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isExecuting"];
    [(ASReachabilityQueryOperation *)self didChangeValueForKey:@"isFinished"];
    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)_queryTimedOut
{
  ASLoggingInitialize(self, a2);
  v3 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
  {
    [(ASReachabilityQueryOperation *)v3 _queryTimedOut];
  }

  [(ASReachabilityQueryOperation *)self finish];
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  statusCopy = status;
  serviceCopy = service;
  serviceIdentifier = [(ASReachabilityQueryOperation *)self serviceIdentifier];
  v11 = [serviceCopy isEqualToString:serviceIdentifier];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(statusCopy, "count")}];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __95__ASReachabilityQueryOperation_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke;
    v22 = &unk_278C46578;
    selfCopy = self;
    v13 = v12;
    v24 = v13;
    [statusCopy enumerateKeysAndObjectsUsingBlock:&v19];
    [(NSMutableDictionary *)self->_results addEntriesFromDictionary:v13, v19, v20, v21, v22, selfCopy];
    WeakRetained = objc_loadWeakRetained(&self->_statusCache);
    [WeakRetained addStatusesByDestination:v13];

    (*(self->_updateHandler + 2))();
    remainingDestinations = self->_remainingDestinations;
    v16 = MEMORY[0x277CBEB98];
    allKeys = [v13 allKeys];
    v18 = [v16 setWithArray:allKeys];
    [(NSMutableSet *)remainingDestinations minusSet:v18];

    if (![(NSMutableSet *)self->_remainingDestinations count])
    {
      [(ASReachabilityQueryOperation *)self finish];
    }
  }
}

void __95__ASReachabilityQueryOperation_batchQueryController_updatedDestinationsStatus_onService_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = IDSCopyRawAddressForDestination();
  v5 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v4];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

- (ASReachabilityStatusCache)statusCache
{
  WeakRetained = objc_loadWeakRetained(&self->_statusCache);

  return WeakRetained;
}

@end