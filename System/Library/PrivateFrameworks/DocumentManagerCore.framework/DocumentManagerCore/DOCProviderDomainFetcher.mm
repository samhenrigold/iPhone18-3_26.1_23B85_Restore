@interface DOCProviderDomainFetcher
- (BOOL)fetchProviders:(id)providers queue:(id)queue;
- (DOCProviderDomainFetcher)init;
- (id)providersFromIterator:(id)iterator;
- (void)dealloc;
- (void)openSyncCompleted:(id)completed;
@end

@implementation DOCProviderDomainFetcher

- (DOCProviderDomainFetcher)init
{
  v10.receiver = self;
  v10.super_class = DOCProviderDomainFetcher;
  v2 = [(DOCProviderDomainFetcher *)&v10 init];
  v4 = v2;
  if (v2)
  {
    StartFINode(v2, v3);
    providerDomainsContainer = [MEMORY[0x277D04700] providerDomainsContainer];
    providerDomainsNode = v4->_providerDomainsNode;
    v4->_providerDomainsNode = providerDomainsContainer;

    v7 = [MEMORY[0x277D04708] observerForFINode:v4->_providerDomainsNode withObserver:v4];
    observer = v4->_observer;
    v4->_observer = v7;

    [(FINodeObserver *)v4->_observer startObserving:3];
  }

  return v4;
}

- (void)dealloc
{
  observer = [(DOCProviderDomainFetcher *)self observer];
  [observer stopObserving:3];

  v4.receiver = self;
  v4.super_class = DOCProviderDomainFetcher;
  [(DOCProviderDomainFetcher *)&v4 dealloc];
}

- (BOOL)fetchProviders:(id)providers queue:(id)queue
{
  providersCopy = providers;
  queueCopy = queue;
  providerDomainsNode = [(DOCProviderDomainFetcher *)self providerDomainsNode];
  v9 = [providerDomainsNode iteratorWithOptions:0];

  fullyPopulated = [v9 fullyPopulated];
  if (fullyPopulated)
  {
    selfCopy = [(DOCProviderDomainFetcher *)self providersFromIterator:v9];
    providersCopy[2](providersCopy, selfCopy);
  }

  else
  {
    if (!queueCopy)
    {
      queueCopy = dispatch_get_global_queue(21, 0);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    pendingQueuesAndCallbacks = [(DOCProviderDomainFetcher *)selfCopy pendingQueuesAndCallbacks];
    strongToStrongObjectsMapTable = [pendingQueuesAndCallbacks mutableCopy];

    if (!strongToStrongObjectsMapTable)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }

    v14 = [strongToStrongObjectsMapTable objectForKey:queueCopy];
    array = [v14 mutableCopy];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v16 = _Block_copy(providersCopy);
    [array addObject:v16];

    [strongToStrongObjectsMapTable setObject:array forKey:queueCopy];
    [(DOCProviderDomainFetcher *)selfCopy setPendingQueuesAndCallbacks:strongToStrongObjectsMapTable];

    objc_sync_exit(selfCopy);
  }

  return fullyPopulated;
}

- (id)providersFromIterator:(id)iterator
{
  iteratorCopy = iterator;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  first = [iteratorCopy first];
  if (first)
  {
    v6 = first;
    do
    {
      fpDomain = [v6 fpDomain];
      if (fpDomain)
      {
        [v4 addObject:fpDomain];
      }

      next = [iteratorCopy next];

      v6 = next;
    }

    while (next);
  }

  return v4;
}

- (void)openSyncCompleted:(id)completed
{
  v26 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingQueuesAndCallbacks = [(DOCProviderDomainFetcher *)selfCopy pendingQueuesAndCallbacks];
  [(DOCProviderDomainFetcher *)selfCopy setPendingQueuesAndCallbacks:0];
  objc_sync_exit(selfCopy);

  if ([pendingQueuesAndCallbacks count])
  {
    v15 = pendingQueuesAndCallbacks;
    providerDomainsNode = [(DOCProviderDomainFetcher *)selfCopy providerDomainsNode];
    v16 = [providerDomainsNode iteratorWithOptions:0];

    v7 = [(DOCProviderDomainFetcher *)selfCopy providersFromIterator:v16];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = pendingQueuesAndCallbacks;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [v8 objectForKey:v12];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__DOCProviderDomainFetcher_openSyncCompleted___block_invoke;
          block[3] = &unk_278F9B430;
          v19 = v13;
          v20 = v7;
          v14 = v13;
          dispatch_async(v12, block);

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    pendingQueuesAndCallbacks = v15;
  }
}

void __46__DOCProviderDomainFetcher_openSyncCompleted___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end