@interface FBApplicationDataStoreInProcessRepositoryClient
- (BOOL)prefetchedObjectIfAvailableForKey:(id)key application:(id)application outObject:(id *)object;
- (FBApplicationDataStoreInProcessRepositoryClient)init;
- (FBApplicationDataStoreInProcessRepositoryClient)initWithDataStore:(id)store;
- (id)_observers;
- (id)_prefetchQueue_prefetchedKeysForApplication:(id)application;
- (id)availableDataStores;
- (id)migrateIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (id)objectForKey:(id)key forApplication:(id)application;
- (void)_invalidateCacheIfObjectIsNotEqual:(id)equal forKey:(id)key forApplication:(id)application;
- (void)_prefetchQueue_updateNotificationListeners;
- (void)_repositoryInvalidated:(id)invalidated;
- (void)_updateCacheIfNecessaryWithObject:(id)object forKey:(id)key forApplication:(id)application;
- (void)_updateNotificationListeners;
- (void)_valueChanged:(id)changed;
- (void)addObserver:(id)observer;
- (void)addPrefetchedKeys:(id)keys;
- (void)objectForKey:(id)key forApplication:(id)application withResult:(id)result;
- (void)removeAllObjectsForApplication:(id)application withCompletion:(id)completion;
- (void)removeObjectForKey:(id)key forApplication:(id)application withCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)removePrefetchedKeys:(id)keys withCompletion:(id)completion;
- (void)setObject:(id)object forKey:(id)key forApplication:(id)application withCompletion:(id)completion;
- (void)synchronizeWithCompletion:(id)completion;
@end

@implementation FBApplicationDataStoreInProcessRepositoryClient

- (id)_observers
{
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observersLock_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);

  return allObjects;
}

- (FBApplicationDataStoreInProcessRepositoryClient)init
{
  v3 = +[FBApplicationDataStoreRepositoryManager sharedInstance];
  dataStore = [v3 dataStore];
  v5 = [(FBApplicationDataStoreInProcessRepositoryClient *)self initWithDataStore:dataStore];

  return v5;
}

- (FBApplicationDataStoreInProcessRepositoryClient)initWithDataStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = FBApplicationDataStoreInProcessRepositoryClient;
  v6 = [(FBApplicationDataStoreInProcessRepositoryClient *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    Serial = BSDispatchQueueCreateSerial();
    clientCalloutQueue = v7->_clientCalloutQueue;
    v7->_clientCalloutQueue = Serial;

    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    prefetchedKeys = v7->_prefetchedKeys;
    v7->_prefetchedKeys = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prefetchedKeyValues = v7->_prefetchedKeyValues;
    v7->_prefetchedKeyValues = v12;

    v14 = BSDispatchQueueCreateSerial();
    prefetchQueue = v7->_prefetchQueue;
    v7->_prefetchQueue = v14;

    v7->_observersLock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observersLock_observers = v7->_observersLock_observers;
    v7->_observersLock_observers = weakObjectsHashTable;
  }

  return v7;
}

- (void)addPrefetchedKeys:(id)keys
{
  keysCopy = keys;
  prefetchQueue = self->_prefetchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke;
  v7[3] = &unk_1E783B240;
  v8 = keysCopy;
  selfCopy = self;
  v6 = keysCopy;
  dispatch_sync(prefetchQueue, v7);
}

void __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [*(*(a1 + 40) + 16) addObject:v8];
        if ([*(*(a1 + 40) + 16) countForObject:v8] == 1)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = [*(*(a1 + 40) + 8) allObjectsForKeys:v2];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke_2;
    v10[3] = &unk_1E783D668;
    v10[4] = *(a1 + 40);
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
    [*(a1 + 40) _prefetchQueue_updateNotificationListeners];
  }
}

void __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = [v5 objectForKey:v11];
  v8 = v7;
  if (v7)
  {
    [v7 addEntriesFromDictionary:v6];
  }

  else
  {
    v9 = *(*(a1 + 32) + 24);
    v10 = [v6 mutableCopy];

    [v9 setObject:v10 forKey:v11];
    v6 = v10;
  }
}

- (void)removePrefetchedKeys:(id)keys withCompletion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke;
  block[3] = &unk_1E783B240;
  v9 = keysCopy;
  v14 = v9;
  selfCopy = self;
  dispatch_sync(prefetchQueue, block);
  if (completionCopy)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke_3;
    v11[3] = &unk_1E783B9B8;
    v12 = completionCopy;
    dispatch_async(clientCalloutQueue, v11);
  }
}

void __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [*(*(a1 + 40) + 16) removeObject:v8];
        if (![*(*(a1 + 40) + 16) countForObject:v8])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = *(*(a1 + 40) + 24);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke_2;
  v11[3] = &unk_1E783D690;
  v12 = v2;
  v10 = v2;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
  [*(a1 + 40) _prefetchQueue_updateNotificationListeners];
}

- (void)_updateNotificationListeners
{
  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FBApplicationDataStoreInProcessRepositoryClient__updateNotificationListeners__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(prefetchQueue, block);
}

- (void)_prefetchQueue_updateNotificationListeners
{
  BSDispatchQueueAssert();
  v3 = [(NSCountedSet *)self->_prefetchedKeys count];
  _observers = [(FBApplicationDataStoreInProcessRepositoryClient *)self _observers];
  v5 = v3 | [_observers count];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (v5)
  {
    [defaultCenter addObserver:self selector:sel__valueChanged_ name:@"FBApplicationStoreRepositoryChangeNotification" object:0];
    [defaultCenter addObserver:self selector:sel__repositoryInvalidated_ name:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0];
  }

  else
  {
    [defaultCenter removeObserver:self name:@"FBApplicationStoreRepositoryChangeNotification" object:0];
    [defaultCenter removeObserver:self name:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0];
  }
}

- (id)_prefetchQueue_prefetchedKeysForApplication:(id)application
{
  applicationCopy = application;
  dispatch_assert_queue_V2(self->_prefetchQueue);
  dictionary = [(NSMutableDictionary *)self->_prefetchedKeyValues objectForKeyedSubscript:applicationCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_prefetchedKeyValues setObject:dictionary forKey:applicationCopy];
  }

  return dictionary;
}

- (void)_updateCacheIfNecessaryWithObject:(id)object forKey:(id)key forApplication:(id)application
{
  objectCopy = object;
  keyCopy = key;
  applicationCopy = application;
  prefetchQueue = self->_prefetchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke;
  v15[3] = &unk_1E783B2D8;
  v15[4] = self;
  v16 = keyCopy;
  v17 = applicationCopy;
  v18 = objectCopy;
  v12 = objectCopy;
  v13 = applicationCopy;
  v14 = keyCopy;
  dispatch_sync(prefetchQueue, v15);
}

void __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v3 = FBLogAppDataStore();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke_cold_1(v2, a1);
    }

    v4 = [*(a1 + 32) _prefetchQueue_prefetchedKeysForApplication:*(a1 + 48)];
    v5 = v4;
    v6 = *(a1 + 56);
    if (v6)
    {
      [v4 setObject:v6 forKey:*(a1 + 40)];
    }

    else
    {
      [v4 removeObjectForKey:*(a1 + 40)];
    }
  }
}

- (void)_invalidateCacheIfObjectIsNotEqual:(id)equal forKey:(id)key forApplication:(id)application
{
  equalCopy = equal;
  keyCopy = key;
  applicationCopy = application;
  prefetchQueue = self->_prefetchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke;
  v15[3] = &unk_1E783B2D8;
  v15[4] = self;
  v16 = keyCopy;
  v17 = applicationCopy;
  v18 = equalCopy;
  v12 = equalCopy;
  v13 = applicationCopy;
  v14 = keyCopy;
  dispatch_async(prefetchQueue, v15);
}

void __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v3 = FBLogAppDataStore();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_1(v2, a1);
    }

    v4 = [*(a1 + 32) _prefetchQueue_prefetchedKeysForApplication:*(a1 + 48)];
    v5 = [v4 objectForKey:*(a1 + 40)];
    v6 = BSEqualObjects();
    v7 = FBLogAppDataStore();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_3(v7, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      if (v8)
      {
        __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_2(v7, v9, v10, v11, v12, v13, v14, v15);
      }

      v7 = +[FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel sentinel];
      [v4 setObject:v7 forKey:*v2];
    }
  }
}

- (void)_valueChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:@"FBApplicationStoreRepositoryChangeApp"];

  userInfo2 = [changedCopy userInfo];
  v8 = [userInfo2 objectForKey:@"FBApplicationStoreRepositoryChangeKey"];

  userInfo3 = [changedCopy userInfo];

  v10 = [userInfo3 objectForKey:@"FBApplicationStoreRepositoryChangeValue"];

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _invalidateCacheIfObjectIsNotEqual:v10 forKey:v8 forApplication:v6];
  clientCalloutQueue = self->_clientCalloutQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FBApplicationDataStoreInProcessRepositoryClient__valueChanged___block_invoke;
  v15[3] = &unk_1E783B2D8;
  v15[4] = self;
  v16 = v6;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v6;
  dispatch_async(clientCalloutQueue, v15);
}

void __65__FBApplicationDataStoreInProcessRepositoryClient__valueChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 applicationDataStoreRepositoryClient:*(a1 + 32) application:*(a1 + 40) changedObject:*(a1 + 48) forKey:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_repositoryInvalidated:(id)invalidated
{
  userInfo = [invalidated userInfo];
  v5 = [userInfo objectForKey:@"FBApplicationStoreRepositoryChangeApp"];

  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__FBApplicationDataStoreInProcessRepositoryClient__repositoryInvalidated___block_invoke;
  block[3] = &unk_1E783B240;
  block[4] = self;
  v7 = v5;
  v13 = v7;
  dispatch_async(prefetchQueue, block);
  clientCalloutQueue = self->_clientCalloutQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FBApplicationDataStoreInProcessRepositoryClient__repositoryInvalidated___block_invoke_2;
  v10[3] = &unk_1E783B240;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(clientCalloutQueue, v10);
}

void __74__FBApplicationDataStoreInProcessRepositoryClient__repositoryInvalidated___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 applicationDataStoreRepositoryClient:*(a1 + 32) storeInvalidatedForApplication:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)synchronizeWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FBApplicationDataStoreRepository *)self->_dataStore flushSynchronously];
  if (completionCopy)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__FBApplicationDataStoreInProcessRepositoryClient_synchronizeWithCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v7 = completionCopy;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (id)availableDataStores
{
  applicationIdentifiersWithState = [(FBApplicationDataStoreRepository *)self->_dataStore applicationIdentifiersWithState];
  if (!applicationIdentifiersWithState)
  {
    applicationIdentifiersWithState = [MEMORY[0x1E695DEC8] array];
  }

  return applicationIdentifiersWithState;
}

- (id)migrateIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  v9 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  v10 = toIdentifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v10)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  v11 = [(FBApplicationDataStoreRepository *)self->_dataStore migrateIdentifier:v9 toIdentifier:v10];

  return v11;
}

- (void)setObject:(id)object forKey:(id)key forApplication:(id)application withCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  applicationCopy = application;
  completionCopy = completion;
  v14 = FBLogAppDataStore();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = _descriptionForObject(objectCopy);
    *buf = 138543874;
    v20 = keyCopy;
    v21 = 2112;
    v22 = applicationCopy;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_INFO, "setting object for key=%{public}@ appID=%@ object=%@", buf, 0x20u);
  }

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _updateCacheIfNecessaryWithObject:objectCopy forKey:keyCopy forApplication:applicationCopy];
  [(FBApplicationDataStoreRepository *)self->_dataStore setObject:objectCopy forKey:keyCopy forApplication:applicationCopy];
  if (completionCopy)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__FBApplicationDataStoreInProcessRepositoryClient_setObject_forKey_forApplication_withCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v18 = completionCopy;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (void)removeObjectForKey:(id)key forApplication:(id)application withCompletion:(id)completion
{
  completionCopy = completion;
  [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:key forApplication:application];
  if (completionCopy)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__FBApplicationDataStoreInProcessRepositoryClient_removeObjectForKey_forApplication_withCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v11 = completionCopy;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (void)removeAllObjectsForApplication:(id)application withCompletion:(id)completion
{
  completionCopy = completion;
  [(FBApplicationDataStoreRepository *)self->_dataStore removeAllObjectsForApplication:application];
  if (completionCopy)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__FBApplicationDataStoreInProcessRepositoryClient_removeAllObjectsForApplication_withCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v9 = completionCopy;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (id)objectForKey:(id)key forApplication:(id)application
{
  keyCopy = key;
  applicationCopy = application;
  v8 = FBLogAppDataStore();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FBApplicationDataStoreInProcessRepositoryClient objectForKey:forApplication:];
  }

  v14 = 0;
  v9 = [(FBApplicationDataStoreInProcessRepositoryClient *)self prefetchedObjectIfAvailableForKey:keyCopy application:applicationCopy outObject:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = FBLogAppDataStore();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FBApplicationDataStoreInProcessRepositoryClient objectForKey:v10 forApplication:?];
    }

    v12 = v10;
  }

  else
  {
    v12 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:keyCopy forApplication:applicationCopy];

    if (!v12)
    {
      goto LABEL_11;
    }

    v11 = FBLogAppDataStore();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FBApplicationDataStoreInProcessRepositoryClient objectForKey:v12 forApplication:?];
    }
  }

LABEL_11:

  return v12;
}

- (void)objectForKey:(id)key forApplication:(id)application withResult:(id)result
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  applicationCopy = application;
  resultCopy = result;
  v11 = FBLogAppDataStore();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FBApplicationDataStoreInProcessRepositoryClient objectForKey:forApplication:withResult:];
  }

  if (resultCopy)
  {
    v22 = 0;
    v12 = [(FBApplicationDataStoreInProcessRepositoryClient *)self prefetchedObjectIfAvailableForKey:keyCopy application:applicationCopy outObject:&v22];
    v13 = v22;
    if (v12)
    {
      v14 = FBLogAppDataStore();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [FBApplicationDataStoreInProcessRepositoryClient objectForKey:v13 forApplication:?];
      }

      v15 = v13;
    }

    else
    {
      v15 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:keyCopy forApplication:applicationCopy];

      v14 = FBLogAppDataStore();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = _descriptionForObject(v15);
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_INFO, "retrieved object from store: %@", buf, 0xCu);
      }
    }

    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__FBApplicationDataStoreInProcessRepositoryClient_objectForKey_forApplication_withResult___block_invoke;
    block[3] = &unk_1E783C368;
    v20 = v15;
    v21 = resultCopy;
    v18 = v15;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (BOOL)prefetchedObjectIfAvailableForKey:(id)key application:(id)application outObject:(id *)object
{
  v43 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  applicationCopy = application;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5;
  v40 = __Block_byref_object_dispose__5;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v10 = FBLogAppDataStore();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FBApplicationDataStoreInProcessRepositoryClient prefetchedObjectIfAvailableForKey:application:outObject:];
  }

  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke;
  block[3] = &unk_1E783D6B8;
  block[4] = self;
  v12 = applicationCopy;
  v28 = v12;
  v30 = &v36;
  v13 = keyCopy;
  v29 = v13;
  v31 = &v32;
  dispatch_sync(prefetchQueue, block);
  if (*(v33 + 24) == 1)
  {
    v14 = FBLogAppDataStore();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = _descriptionForObject(v37[5]);
      [FBApplicationDataStoreInProcessRepositoryClient prefetchedObjectIfAvailableForKey:v15 application:buf outObject:v14];
    }

    if (object)
    {
      v16 = v37[5];
LABEL_12:
      *object = v16;
    }
  }

  else
  {
    v17 = FBLogAppDataStore();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(FBApplicationDataStoreInProcessRepositoryClient *)v17 prefetchedObjectIfAvailableForKey:v18 application:v19 outObject:v20, v21, v22, v23, v24];
    }

    if (object)
    {
      v16 = 0;
      goto LABEL_12;
    }
  }

  v25 = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v25 & 1;
}

void __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 24) objectForKey:a1[5]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:a1[6]];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(a1[7] + 8) + 40) || [*(a1[4] + 16) containsObject:a1[6]])
    {
      *(*(a1[8] + 8) + 24) = 1;
    }
  }

  v8 = *(*(a1[7] + 8) + 40);
  v9 = +[FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel sentinel];

  if (v8 == v9)
  {
    v10 = FBLogAppDataStore();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke_cold_1(a1, v2, v10);
    }

    v11 = [*(a1[4] + 8) objectForKey:a1[6] forApplication:a1[5]];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(a1[7] + 8) + 40);
    if (v14)
    {
      [v4 setObject:v14 forKey:a1[6]];
    }

    else
    {
      [v4 removeObjectForKey:a1[6]];
    }
  }

  v15 = *(*(a1[7] + 8) + 40);
  v16 = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:v16];
  v18 = *(a1[7] + 8);
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 40);
  }

  objc_storeStrong((v18 + 40), v19);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observersLock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _updateNotificationListeners];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observersLock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _updateNotificationListeners];
}

void __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = _descriptionForObject(*(a2 + 56));
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = _descriptionForObject(*(a2 + 56));
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)objectForKey:(void *)a1 forApplication:.cold.2(void *a1)
{
  v6 = _descriptionForObject(a1);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)objectForKey:(void *)a1 forApplication:.cold.3(void *a1)
{
  v6 = _descriptionForObject(a1);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)prefetchedObjectIfAvailableForKey:(void *)a1 application:(uint8_t *)buf outObject:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1A89DD000, log, OS_LOG_TYPE_DEBUG, "found object %@", buf, 0xCu);
}

void __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_3_3(&dword_1A89DD000, a2, a3, "found invalidation sentinel for key=%{public}@ appID=%@, refreshing cache", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end