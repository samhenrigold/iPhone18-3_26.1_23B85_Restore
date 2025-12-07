@interface ASReachabilityManager
+ (id)sharedInstanceForServiceIdentifier:(id)identifier;
- (id)_initWithServiceIdentifier:(id)identifier;
- (void)_addDestinationsToQuery:(id)query updateHandler:(id)handler completionHandler:(id)completionHandler;
- (void)queryDestinations:(id)destinations updateHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation ASReachabilityManager

+ (id)sharedInstanceForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (sharedInstanceForServiceIdentifier__once != -1)
  {
    +[ASReachabilityManager sharedInstanceForServiceIdentifier:];
  }

  v4 = [sharedInstanceForServiceIdentifier__sharedInstanceByServiceIdentifier objectForKey:identifierCopy];
  if (!v4)
  {
    v4 = [[ASReachabilityManager alloc] _initWithServiceIdentifier:identifierCopy];
    [sharedInstanceForServiceIdentifier__sharedInstanceByServiceIdentifier setObject:v4 forKey:identifierCopy];
  }

  return v4;
}

uint64_t __60__ASReachabilityManager_sharedInstanceForServiceIdentifier___block_invoke()
{
  sharedInstanceForServiceIdentifier__sharedInstanceByServiceIdentifier = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = ASReachabilityManager;
  v6 = [(ASReachabilityManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceIdentifier, identifier);
    v8 = objc_alloc_init(ASReachabilityStatusCache);
    statusCache = v7->_statusCache;
    v7->_statusCache = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queryOperationQueue = v7->_queryOperationQueue;
    v7->_queryOperationQueue = v10;

    [(NSOperationQueue *)v7->_queryOperationQueue setMaxConcurrentOperationCount:1];
    v12 = HKCreateSerialDispatchQueue();
    [(NSOperationQueue *)v7->_queryOperationQueue setUnderlyingQueue:v12];
  }

  return v7;
}

- (void)_addDestinationsToQuery:(id)query updateHandler:(id)handler completionHandler:(id)completionHandler
{
  v43 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  ASLoggingInitialize(completionHandlerCopy, v11);
  v12 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 134217984;
    v42 = [queryCopy count];
    _os_log_impl(&dword_23E4FA000, v13, OS_LOG_TYPE_DEFAULT, "Reachability: Request for %lu destinations", buf, 0xCu);
  }

  v14 = [(ASReachabilityStatusCache *)self->_statusCache statusesForDestinations:queryCopy];
  v15 = [v14 count];
  if (v15)
  {
    ASLoggingInitialize(v15, v16);
    v17 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v14 count];
      *buf = 134217984;
      v42 = v19;
      _os_log_impl(&dword_23E4FA000, v18, OS_LOG_TYPE_DEFAULT, "Reachability: Hit %lu destinations in cache first pass", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, v14);
  }

  v20 = MEMORY[0x277CCAC30];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke;
  v38[3] = &unk_278C462A0;
  v21 = v14;
  v39 = v21;
  v22 = [v20 predicateWithBlock:v38];
  v23 = [queryCopy filteredSetUsingPredicate:v22];

  if ([v23 count])
  {
    v24 = objc_alloc_init(ASReachabilityQueryOperation);
    [(ASReachabilityQueryOperation *)v24 setUpdateHandler:handlerCopy];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke_2;
    v35[3] = &unk_278C462C8;
    v36 = v21;
    v30 = completionHandlerCopy;
    v37 = completionHandlerCopy;
    [(ASReachabilityQueryOperation *)v24 setCompletionHandler:v35];
    [(ASReachabilityQueryOperation *)v24 setDestinations:v23];
    [(ASReachabilityQueryOperation *)v24 setStatusCache:self->_statusCache];
    [(ASReachabilityQueryOperation *)v24 setServiceIdentifier:self->_serviceIdentifier];
    [(ASReachabilityQueryOperation *)v24 setQueuePriority:8];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    operations = [(NSOperationQueue *)self->_queryOperationQueue operations];
    v26 = [operations countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        v29 = 0;
        do
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(operations);
          }

          [*(*(&v31 + 1) + 8 * v29++) setQueuePriority:-4];
        }

        while (v27 != v29);
        v27 = [operations countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v27);
    }

    [(NSOperationQueue *)self->_queryOperationQueue addOperation:v24];
    completionHandlerCopy = v30;
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, v21);
  }
}

BOOL __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __81__ASReachabilityManager__addDestinationsToQuery_updateHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  (*(*(a1 + 40) + 16))();
}

- (void)queryDestinations:(id)destinations updateHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke;
  v13[3] = &unk_278C46318;
  v14 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_3;
  v11[3] = &unk_278C46318;
  v9 = completionHandlerCopy;
  v10 = handlerCopy;
  [(ASReachabilityManager *)self _addDestinationsToQuery:destinations updateHandler:v13 completionHandler:v11];
}

void __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_2;
    v4[3] = &unk_278C462F0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__ASReachabilityManager_queryDestinations_updateHandler_completionHandler___block_invoke_4;
    v4[3] = &unk_278C462F0;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

@end