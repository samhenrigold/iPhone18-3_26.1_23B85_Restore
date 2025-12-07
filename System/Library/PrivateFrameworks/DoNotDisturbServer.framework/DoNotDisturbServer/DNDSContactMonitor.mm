@interface DNDSContactMonitor
- (BOOL)_fetchContactHistoryWithToken:(id)token monitoredContacts:(id)contacts handler:(id)handler;
- (DNDSContactMonitor)initWithContactStore:(id)store contactProvider:(id)provider;
- (id)_contactsWithCNContacts:(id)contacts;
- (id)_lock_listenersByContactHistoryToken;
- (id)_lock_monitoredContactsByContactHistoryToken;
- (void)_contactStoreChanged:(id)changed;
- (void)_fetchContactsForMonitoredContacts:(id)contacts handler:(id)handler;
- (void)_fetchUpdatesWithContactHistoryToken:(id)token monitoredContacts:(id)contacts handler:(id)handler;
- (void)_queue_fetchUpdatesWithContactHistoryToken:(id)token monitoredContacts:(id)contacts handler:(id)handler;
- (void)_updateContactsWithIdentifiers;
- (void)_updateContactsWithoutIdentifiers;
- (void)addListener:(id)listener;
- (void)removeListener:(id)listener;
@end

@implementation DNDSContactMonitor

- (DNDSContactMonitor)initWithContactStore:(id)store contactProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = DNDSContactMonitor;
  v9 = [(DNDSContactMonitor *)&v17 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.donotdisturb.server.ContactMonitor", v10);
    fetchQueue = v9->_fetchQueue;
    v9->_fetchQueue = v11;

    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v9->_contactProvider, provider);
    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v9->_listeners;
    v9->_listeners = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__contactStoreChanged_ name:*MEMORY[0x277CBD140] object:0];
  }

  return v9;
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_listeners addObject:listenerCopy];
  monitoredContacts = [listenerCopy monitoredContacts];
  os_unfair_lock_unlock(&self->_lock);
  contactHistoryToken = [listenerCopy contactHistoryToken];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__DNDSContactMonitor_addListener___block_invoke;
  v8[3] = &unk_278F8A370;
  v8[4] = self;
  v9 = listenerCopy;
  v7 = listenerCopy;
  [(DNDSContactMonitor *)self _fetchUpdatesWithContactHistoryToken:contactHistoryToken monitoredContacts:monitoredContacts handler:v8];
}

void __34__DNDSContactMonitor_addListener___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = [v7 _contactsWithCNContacts:a2];
  [*(a1 + 40) contactMonitor:*(a1 + 32) didReceiveUpdatedContacts:v10 deletedContactIdentifiers:v9 withContactHistoryToken:v8];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_listeners removeObject:listenerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_contactsWithCNContacts:(id)contacts
{
  v17 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = contactsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D058F0] contactWithCNContact:{*(*(&v12 + 1) + 8 * i), v12}];
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)_contactStoreChanged:(id)changed
{
  fetchQueue = self->_fetchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DNDSContactMonitor__contactStoreChanged___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(fetchQueue, block);
}

uint64_t __43__DNDSContactMonitor__contactStoreChanged___block_invoke(uint64_t a1)
{
  v2 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Contacts store changed", v4, 2u);
  }

  [*(a1 + 32) _updateContactsWithIdentifiers];
  return [*(a1 + 32) _updateContactsWithoutIdentifiers];
}

- (void)_updateContactsWithIdentifiers
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fetchQueue);
  os_unfair_lock_lock(&self->_lock);
  _lock_listenersByContactHistoryToken = [(DNDSContactMonitor *)self _lock_listenersByContactHistoryToken];
  _lock_monitoredContactsByContactHistoryToken = [(DNDSContactMonitor *)self _lock_monitoredContactsByContactHistoryToken];
  os_unfair_lock_unlock(&self->_lock);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v29 = 0u;
  obj = _lock_listenersByContactHistoryToken;
  v19 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v19)
  {
    v16 = v22;
    v17 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * i);
        v6 = [_lock_monitoredContactsByContactHistoryToken objectForKeyedSubscript:{v5, v16}];
        v7 = [MEMORY[0x277CBEB58] set];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              contactIdentifier = [v13 contactIdentifier];

              if (contactIdentifier)
              {
                [v7 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v22[0] = __52__DNDSContactMonitor__updateContactsWithIdentifiers__block_invoke;
        v22[1] = &unk_278F8A398;
        v22[2] = self;
        v15 = obj;
        v23 = v15;
        v24 = v5;
        [(DNDSContactMonitor *)self _queue_fetchUpdatesWithContactHistoryToken:v5 monitoredContacts:v7 handler:v21];
      }

      v19 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v19);
  }
}

void __52__DNDSContactMonitor__updateContactsWithIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _contactsWithCNContacts:a2];
  v10 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) contactMonitor:*(a1 + 32) didReceiveUpdatedContacts:v9 deletedContactIdentifiers:v7 withContactHistoryToken:v8];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_updateContactsWithoutIdentifiers
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_fetchQueue);
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_listeners allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = allObjects;
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        monitoredContacts = [v5 monitoredContacts];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [monitoredContacts countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(monitoredContacts);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              contactIdentifier = [v12 contactIdentifier];

              if (!contactIdentifier)
              {
                v14 = [(DNDSContactProviding *)self->_contactProvider contactForContact:v12];
                if (v14)
                {
                  [dictionary setObject:v14 forKeyedSubscript:v12];
                }
              }
            }

            v9 = [monitoredContacts countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }

        if ([monitoredContacts count])
        {
          [v5 contactMonitor:self didReceiveUpdatedContactsForContactsWithoutIdentifiers:dictionary];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)_fetchContactsForMonitoredContacts:(id)contacts handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = contactsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        contactIdentifier = [*(*(&v19 + 1) + 8 * v13) contactIdentifier];
        if (contactIdentifier)
        {
          [v8 addObject:contactIdentifier];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  allObjects = [v8 allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke;
  v17[3] = &unk_278F8A3E8;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [allObjects enumerateBatchesOfSize:10 handler:v17];
}

void __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc(MEMORY[0x277CBDA70]);
  v9 = [MEMORY[0x277D058F0] keysToFetch];
  v10 = [v8 initWithKeysToFetch:v9];

  v11 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v4];
  [v10 setPredicate:v11];

  [v10 setUnifyResults:1];
  v12 = *(*(a1 + 32) + 8);
  v35 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_2;
  v32[3] = &unk_278F8A3C0;
  v13 = v7;
  v33 = v13;
  v14 = v6;
  v34 = v14;
  v15 = [v12 enumerateContactsWithFetchRequest:v10 error:&v35 usingBlock:v32];
  v16 = v35;
  v17 = [v5 mutableCopy];
  [v17 minusSet:v14];
  v18 = DNDSLogSettings;
  if (v15)
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v13 count];
      *buf = 134349056;
      v37 = v20;
      _os_log_impl(&dword_24912E000, v19, OS_LOG_TYPE_DEFAULT, "Fetched %{public}lld contacts", buf, 0xCu);
    }

    v21 = *(a1 + 40);
    v22 = [v17 allObjects];
    v23 = [*(*(a1 + 32) + 8) currentHistoryToken];
    (*(v21 + 16))(v21, v13, v22, v23);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_cold_1(v16, v18, v24, v25, v26, v27, v28, v29);
    }

    *a3 = 1;
  }

  objc_autoreleasePoolPop(context);
}

void __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5 = *(a1 + 40);
  v6 = [v4 identifier];

  [v5 addObject:v6];
}

- (BOOL)_fetchContactHistoryWithToken:(id)token monitoredContacts:(id)contacts handler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  contactsCopy = contacts;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x277CBDA50]);
  [v11 setStartingToken:tokenCopy];
  keysToFetch = [MEMORY[0x277D058F0] keysToFetch];
  [v11 setAdditionalContactKeyDescriptors:keysToFetch];

  contactStore = self->_contactStore;
  v59 = 0;
  v14 = [(CNContactStore *)contactStore enumeratorForChangeHistoryFetchRequest:v11 error:&v59];
  v15 = v59;
  if (v15)
  {
    v16 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
    {
      __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    v48 = handlerCopy;
    v50 = tokenCopy;
    v23 = [MEMORY[0x277CBEB58] set];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v49 = contactsCopy;
    v24 = contactsCopy;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v56;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v56 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v55 + 1) + 8 * i);
          contactIdentifier = [v29 contactIdentifier];

          if (contactIdentifier)
          {
            contactIdentifier2 = [v29 contactIdentifier];
            [v23 addObject:contactIdentifier2];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v26);
    }

    v32 = [[DNDSContactMonitorChangeCollector alloc] initWithMonitoredContactIdentifiers:v23];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    value = [v14 value];
    v34 = [value countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v52;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v52 != v36)
          {
            objc_enumerationMutation(value);
          }

          [*(*(&v51 + 1) + 8 * j) acceptEventVisitor:v32];
        }

        v35 = [value countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v35);
    }

    v38 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      updatedContacts = [(DNDSContactMonitorChangeCollector *)v32 updatedContacts];
      v41 = [updatedContacts count];
      deletedContactIdentifiers = [(DNDSContactMonitorChangeCollector *)v32 deletedContactIdentifiers];
      v43 = [deletedContactIdentifiers count];
      *buf = 134349312;
      v61 = v41;
      v62 = 2050;
      v63 = v43;
      _os_log_impl(&dword_24912E000, v39, OS_LOG_TYPE_DEFAULT, "Collected %{public}lld changed contacts and %{public}lld", buf, 0x16u);
    }

    updatedContacts2 = [(DNDSContactMonitorChangeCollector *)v32 updatedContacts];
    deletedContactIdentifiers2 = [(DNDSContactMonitorChangeCollector *)v32 deletedContactIdentifiers];
    currentHistoryToken = [v14 currentHistoryToken];
    handlerCopy = v48;
    v48[2](v48, updatedContacts2, deletedContactIdentifiers2, currentHistoryToken);

    contactsCopy = v49;
    tokenCopy = v50;
  }

  return v15 == 0;
}

- (void)_fetchUpdatesWithContactHistoryToken:(id)token monitoredContacts:(id)contacts handler:(id)handler
{
  tokenCopy = token;
  contactsCopy = contacts;
  handlerCopy = handler;
  fetchQueue = self->_fetchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__DNDSContactMonitor__fetchUpdatesWithContactHistoryToken_monitoredContacts_handler___block_invoke;
  v15[3] = &unk_278F8A410;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = contactsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = contactsCopy;
  v14 = tokenCopy;
  dispatch_async(fetchQueue, v15);
}

- (void)_queue_fetchUpdatesWithContactHistoryToken:(id)token monitoredContacts:(id)contacts handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  contactsCopy = contacts;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_fetchQueue);
  if ([contactsCopy count])
  {
    data = [MEMORY[0x277CBEA90] data];
    v12 = [tokenCopy isEqualToData:data];

    if (v12)
    {

      tokenCopy = 0;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBDA50]);
    [v13 setStartingToken:tokenCopy];
    keysToFetch = [MEMORY[0x277D058F0] keysToFetch];
    [v13 setAdditionalContactKeyDescriptors:keysToFetch];

    contactStore = self->_contactStore;
    v28 = 0;
    v16 = [(CNContactStore *)contactStore countForFetchRequest:v13 error:&v28];
    v17 = v28;
    if (v17)
    {
      v18 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
      {
        [(DNDSContactMonitor *)v17 _queue_fetchUpdatesWithContactHistoryToken:v18 monitoredContacts:v19 handler:v20, v21, v22, v23, v24];
      }
    }

    else
    {
      value = [v16 value];
      integerValue = [value integerValue];

      v27 = DNDSLogSettings;
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v30 = integerValue;
        _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "History contains %{public}lld events", buf, 0xCu);
      }

      if (integerValue < 1 || integerValue <= 9 && [(DNDSContactMonitor *)self _fetchContactHistoryWithToken:tokenCopy monitoredContacts:contactsCopy handler:handlerCopy])
      {
        goto LABEL_8;
      }
    }

    [(DNDSContactMonitor *)self _fetchContactsForMonitoredContacts:contactsCopy handler:handlerCopy];
LABEL_8:
  }
}

- (id)_lock_listenersByContactHistoryToken
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_listeners;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        contactHistoryToken = [v9 contactHistoryToken];
        v11 = contactHistoryToken;
        if (contactHistoryToken)
        {
          data = contactHistoryToken;
        }

        else
        {
          data = [MEMORY[0x277CBEA90] data];
        }

        v13 = data;

        array = [dictionary objectForKeyedSubscript:v13];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v9];
        [dictionary setObject:array forKeyedSubscript:v13];
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (id)_lock_monitoredContactsByContactHistoryToken
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_listeners;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        contactHistoryToken = [v9 contactHistoryToken];
        v11 = contactHistoryToken;
        if (contactHistoryToken)
        {
          data = contactHistoryToken;
        }

        else
        {
          data = [MEMORY[0x277CBEA90] data];
        }

        v13 = data;

        v14 = [dictionary objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB58] set];
        }

        monitoredContacts = [v9 monitoredContacts];
        [v14 unionSet:monitoredContacts];

        [dictionary setObject:v14 forKeyedSubscript:v13];
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return dictionary;
}

void __65__DNDSContactMonitor__fetchContactsForMonitoredContacts_handler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Unable to fetch contact change history: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_queue_fetchUpdatesWithContactHistoryToken:(uint64_t)a3 monitoredContacts:(uint64_t)a4 handler:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_24912E000, a2, a3, "Unable to fetch contact change history count: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end