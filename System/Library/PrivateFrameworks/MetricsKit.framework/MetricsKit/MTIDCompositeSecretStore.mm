@interface MTIDCompositeSecretStore
- (MTIDCompositeSecretStore)init;
- (id)debugInfo;
- (id)maintainSchemes:(id)schemes options:(id)options;
- (id)resetSchemes:(id)schemes options:(id)options;
- (id)schemesGroupedByStore:(id)store;
- (id)secretForScheme:(id)scheme options:(id)options;
- (id)secretStoreForScheme:(id)scheme;
- (id)storeKeyForScheme:(id)scheme;
- (id)syncForSchemes:(id)schemes options:(id)options;
- (void)clearLocalData;
@end

@implementation MTIDCompositeSecretStore

- (MTIDCompositeSecretStore)init
{
  v5.receiver = self;
  v5.super_class = MTIDCompositeSecretStore;
  v2 = [(MTIDCompositeSecretStore *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    [(MTIDCompositeSecretStore *)v2 setStores:v3];
  }

  return v2;
}

- (id)storeKeyForScheme:(id)scheme
{
  schemeCopy = scheme;
  idType = [schemeCopy idType];
  v5 = @"Local";
  if (idType == 2)
  {
    v5 = @"Cloud";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = v5;
  containerIdentifier = [schemeCopy containerIdentifier];

  v9 = [v6 stringWithFormat:@"%@-%@", v7, containerIdentifier];

  return v9;
}

- (id)secretStoreForScheme:(id)scheme
{
  schemeCopy = scheme;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTIDCompositeSecretStore *)selfCopy storeKeyForScheme:schemeCopy];
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v8 = [stores objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [MTIDCloudKitStore alloc];
    containerIdentifier = [schemeCopy containerIdentifier];
    v9 = -[MTIDCloudKitStore initWithContainerIdentifer:enableSync:](v10, "initWithContainerIdentifer:enableSync:", containerIdentifier, [schemeCopy idType] == 2);

    stores2 = [(MTIDCompositeSecretStore *)selfCopy stores];
    [stores2 setObject:v9 forKeyedSubscript:v6];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)schemesGroupedByStore:(id)store
{
  v23 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = storeCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(MTIDCompositeSecretStore *)self storeKeyForScheme:v11, v18];
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        }

        v16 = v15;

        [v16 addObject:v11];
        [v5 setObject:v16 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)secretForScheme:(id)scheme options:(id)options
{
  optionsCopy = options;
  schemeCopy = scheme;
  v8 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:schemeCopy];
  v9 = [v8 secretForScheme:schemeCopy options:optionsCopy];

  return v9;
}

- (id)resetSchemes:(id)schemes options:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  v21 = schemesCopy;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        firstObject = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        v17 = [v16 resetSchemes:v14 options:optionsCopy];
        [array addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v18 = [MTPromise promiseWithAll:array];
    v19 = [v18 thenWithBlock:&__block_literal_global_17];
  }

  else
  {
    v19 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  }

  return v19;
}

- (id)maintainSchemes:(id)schemes options:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  v20 = schemesCopy;
  v8 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v8 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        firstObject = [v13 firstObject];
        v15 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 maintainSchemes:v13 options:optionsCopy];
          [array addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    v17 = [MTPromise promiseWithAll:array];
    v18 = [v17 thenWithBlock:&__block_literal_global_15];
  }

  else
  {
    v18 = [MTPromise promiseWithResult:MEMORY[0x277CBEC38]];
  }

  return v18;
}

- (void)clearLocalData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v4 = [stores copy];

  objc_sync_exit(selfCopy);
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_18];
}

- (id)debugInfo
{
  v15[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  stores = [(MTIDCompositeSecretStore *)selfCopy stores];
  v4 = [stores copy];

  objc_sync_exit(selfCopy);
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __37__MTIDCompositeSecretStore_debugInfo__block_invoke;
  v12 = &unk_2798CE8D0;
  v13 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  v14 = @"subStores";
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, v9, v10, v11, v12}];

  return v7;
}

void __37__MTIDCompositeSecretStore_debugInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5 = [v6 debugInfo];
    [v4 addObject:v5];
  }
}

- (id)syncForSchemes:(id)schemes options:(id)options
{
  v27 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  v21 = schemesCopy;
  v9 = [(MTIDCompositeSecretStore *)self schemesGroupedByStore:schemesCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
        firstObject = [v14 firstObject];
        v16 = [(MTIDCompositeSecretStore *)self secretStoreForScheme:firstObject];

        v17 = [v16 syncForSchemes:v14 options:optionsCopy];
        if (v17)
        {
          [array addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    v18 = [MTPromise promiseWithAll:array];
    v19 = [v18 thenWithBlock:&__block_literal_global_27];
  }

  else
  {
    v19 = [MTPromise promiseWithResult:MEMORY[0x277CBEC28]];
  }

  return v19;
}

@end