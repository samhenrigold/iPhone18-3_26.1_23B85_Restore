@interface STConcretePersistentStoreChangeHandler
- (STConcretePersistentStoreChangeHandler)initWithPersistentContainer:(id)container;
- (id)persistentHistoryTokenForStore:(id)store;
- (void)handlePersistentStoreCoordinatorStoresDidChange:(id)change;
- (void)handleRemotePersistentStoreDidChange:(id)change inContext:(id)context;
- (void)savePersistentHistoryToken:(id)token forStore:(id)store;
@end

@implementation STConcretePersistentStoreChangeHandler

- (STConcretePersistentStoreChangeHandler)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = STConcretePersistentStoreChangeHandler;
  v5 = [(STConcretePersistentStoreChangeHandler *)&v13 init];
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = containerCopy;
  v7 = containerCopy;

  v8 = objc_opt_new();
  lastPersistentHistoryTokenByStoreIdentifier = v5->_lastPersistentHistoryTokenByStoreIdentifier;
  v5->_lastPersistentHistoryTokenByStoreIdentifier = v8;

  v10 = objc_opt_new();
  lastPersistentHistoryTokenByStoreIdentifierLock = v5->_lastPersistentHistoryTokenByStoreIdentifierLock;
  v5->_lastPersistentHistoryTokenByStoreIdentifierLock = v10;

  return v5;
}

- (void)handleRemotePersistentStoreDidChange:(id)change inContext:(id)context
{
  contextCopy = context;
  userInfo = [change userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__STConcretePersistentStoreChangeHandler_handleRemotePersistentStoreDidChange_inContext___block_invoke;
  v11[3] = &unk_1E7CE7230;
  v11[4] = self;
  v12 = v8;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = v8;
  [v9 performBlockAndWait:v11];
}

void __89__STConcretePersistentStoreChangeHandler_handleRemotePersistentStoreDidChange_inContext___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistentContainer];
  v3 = [v2 persistentStoreCoordinator];
  v4 = [v3 persistentStoreForIdentifier:*(a1 + 40)];

  if (v4)
  {
    v5 = [*(a1 + 32) persistentHistoryTokenForStore:v4];
    v6 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:v5];
    v36[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v6 setAffectedStores:v7];

    [v6 setResultType:5];
    v8 = *(a1 + 48);
    v33 = 0;
    v9 = [v8 executeRequest:v6 error:&v33];
    v10 = v33;
    v11 = v10;
    if (v9)
    {
      v22 = v10;
      v23 = v9;
      v24 = v6;
      v25 = v4;
      [v9 result];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v32 = 0u;
      v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v28)
      {
        v27 = *v30;
        do
        {
          v12 = 0;
          v13 = v5;
          do
          {
            if (*v30 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v29 + 1) + 8 * v12);
            v15 = objc_autoreleasePoolPush();
            v5 = [v14 token];

            v16 = MEMORY[0x1E695D628];
            v17 = [v14 objectIDNotification];
            v18 = [v17 userInfo];
            v19 = [*(a1 + 32) persistentContainer];
            v20 = [v19 viewContext];
            v34 = v20;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
            [v16 mergeChangesFromRemoteContextSave:v18 intoContexts:v21];

            objc_autoreleasePoolPop(v15);
            ++v12;
            v13 = v5;
          }

          while (v28 != v12);
          v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v28);
      }

      v6 = v24;
      v4 = v25;
      v11 = v22;
      v9 = v23;
    }

    [*(a1 + 32) savePersistentHistoryToken:v5 forStore:v4];
  }
}

- (void)handlePersistentStoreCoordinatorStoresDidChange:(id)change
{
  v41 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  persistentContainer = [(STConcretePersistentStoreChangeHandler *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  obj = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(obj);
  lastPersistentHistoryTokenByStoreIdentifier = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  userInfo = [changeCopy userInfo];
  [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D2C8]];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v6 = v35 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v39 = *(*(&v34 + 1) + 8 * v9);
        v10 = v39;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:{1, obj}];
        v12 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:v11];

        identifier = [v10 identifier];
        [lastPersistentHistoryTokenByStoreIdentifier setObject:v12 forKeyedSubscript:identifier];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D478]];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v14 = v31 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v15)
  {
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v14);
        }

        identifier2 = [*(*(&v30 + 1) + 8 * v17) identifier];
        [lastPersistentHistoryTokenByStoreIdentifier removeObjectForKey:identifier2];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v15);
  }

  v19 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D4C0]];
  if ([v19 count] >= 2)
  {
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [v19 objectAtIndexedSubscript:1];
    identifier3 = [v20 identifier];
    v23 = [lastPersistentHistoryTokenByStoreIdentifier objectForKeyedSubscript:identifier3];
    identifier4 = [v21 identifier];
    [lastPersistentHistoryTokenByStoreIdentifier setObject:v23 forKeyedSubscript:identifier4];

    identifier5 = [v20 identifier];
    [lastPersistentHistoryTokenByStoreIdentifier removeObjectForKey:identifier5];
  }

  objc_sync_exit(obj);
}

- (id)persistentHistoryTokenForStore:(id)store
{
  storeCopy = store;
  v5 = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(v5);
  lastPersistentHistoryTokenByStoreIdentifier = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  identifier = [storeCopy identifier];
  v8 = [lastPersistentHistoryTokenByStoreIdentifier objectForKeyedSubscript:identifier];

  objc_sync_exit(v5);

  return v8;
}

- (void)savePersistentHistoryToken:(id)token forStore:(id)store
{
  tokenCopy = token;
  storeCopy = store;
  v7 = self->_lastPersistentHistoryTokenByStoreIdentifierLock;
  objc_sync_enter(v7);
  lastPersistentHistoryTokenByStoreIdentifier = [(STConcretePersistentStoreChangeHandler *)self lastPersistentHistoryTokenByStoreIdentifier];
  identifier = [storeCopy identifier];
  [lastPersistentHistoryTokenByStoreIdentifier setObject:tokenCopy forKeyedSubscript:identifier];

  objc_sync_exit(v7);
}

@end