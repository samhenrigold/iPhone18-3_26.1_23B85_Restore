@interface ATStatusMonitor
+ (id)sharedMonitor;
- (ATStatusMonitor)init;
- (id)allStatus;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setDataClasses:(id)classes forObserver:(id)observer;
- (void)updateAssets:(id)assets;
- (void)updateStatus:(id)status;
- (void)updateStatusValuesWithDictionary:(id)dictionary;
- (void)updateStatusWithValue:(id)value forKey:(id)key;
@end

@implementation ATStatusMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global);
  }

  v3 = sharedMonitor___sharedMonitor;

  return v3;
}

- (void)updateStatusValuesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  statusQueue = self->_statusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ATStatusMonitor_updateStatusValuesWithDictionary___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_async(statusQueue, v7);
}

void __52__ATStatusMonitor_updateStatusValuesWithDictionary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 40) addEntriesFromDictionary:*(a1 + 40)];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
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

        [*(*(&v7 + 1) + 8 * v6++) connection:0 updatedProgress:{*(*(a1 + 32) + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateStatusWithValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  statusQueue = self->_statusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ATStatusMonitor_updateStatusWithValue_forKey___block_invoke;
  block[3] = &unk_2784E9568;
  block[4] = self;
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_async(statusQueue, block);
}

void __48__ATStatusMonitor_updateStatusWithValue_forKey___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1[4] + 40) setObject:a1[5] forKey:a1[6]];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 16);
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

        [*(*(&v7 + 1) + 8 * v6++) connection:0 updatedProgress:{*(a1[4] + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateAssets:(id)assets
{
  assetsCopy = assets;
  statusQueue = self->_statusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ATStatusMonitor_updateAssets___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = assetsCopy;
  v6 = assetsCopy;
  dispatch_async(statusQueue, v7);
}

void __32__ATStatusMonitor_updateAssets___block_invoke(uint64_t a1)
{
  v1 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(*(a1 + 32) + 16);
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v15 = v1;
    v16 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v23 + 1) + 8 * i);
        v4 = [*(*(v1 + 32) + 24) objectForKey:v3];
        if (v4)
        {
          v17 = v3;
          v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v1 + 40), "count")}];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v6 = *(v1 + 40);
          v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v20;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v20 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v19 + 1) + 8 * j);
                v12 = [v11 dataclass];
                v13 = [v4 containsObject:v12];

                if (v13)
                {
                  [v5 addObject:v11];
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v8);
          }

          if ([v5 count])
          {
            [v17 connection:0 updatedAssets:v5];
          }

          v1 = v15;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (void)updateStatus:(id)status
{
  statusCopy = status;
  statusQueue = self->_statusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ATStatusMonitor_updateStatus___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(statusQueue, v7);
}

void __32__ATStatusMonitor_updateStatus___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  if ([*(a1 + 40) syncStage])
  {
    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
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
          [v7 monitor:*(a1 + 32) didUpdateWithStatus:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)allStatus
{
  v2 = [(NSMutableSet *)self->_statuses copy];

  return v2;
}

- (void)setDataClasses:(id)classes forObserver:(id)observer
{
  classesCopy = classes;
  observerCopy = observer;
  statusQueue = self->_statusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ATStatusMonitor_setDataClasses_forObserver___block_invoke;
  block[3] = &unk_2784E9568;
  v12 = classesCopy;
  selfCopy = self;
  v14 = observerCopy;
  v9 = observerCopy;
  v10 = classesCopy;
  dispatch_async(statusQueue, block);
}

void __46__ATStatusMonitor_setDataClasses_forObserver___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(a1[5] + 24);
  if (v2)
  {
    [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    [v3 removeObjectForKey:a1[6]];
  }

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = +[ATAssetLinkController sharedInstance];
  v6 = [v5 allAssets];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = a1[4];
        v13 = [v11 dataclass];
        LODWORD(v12) = [v12 containsObject:v13];

        if (v12)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = a1[6];
  v15 = [v4 allObjects];
  [v14 connection:0 updatedAssets:v15];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  statusQueue = self->_statusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ATStatusMonitor_removeObserver___block_invoke;
  v7[3] = &unk_2784E9608;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(statusQueue, v7);
}

uint64_t __34__ATStatusMonitor_removeObserver___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "Removed observer %{public}@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 16) removeObject:*(a1 + 32)];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  statusQueue = self->_statusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ATStatusMonitor_addObserver___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(statusQueue, v7);
}

void *__31__ATStatusMonitor_addObserver___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  result = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "Added observer %{public}@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    if (objc_opt_respondsToSelector())
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = *(*(a1 + 32) + 32);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(a1 + 40) monitor:*(a1 + 32) didUpdateWithStatus:{*(*(&v10 + 1) + 8 * v9++), v10}];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }

    return [*(a1 + 40) connection:0 updatedProgress:{*(*(a1 + 32) + 40), v10}];
  }

  return result;
}

- (ATStatusMonitor)init
{
  v15.receiver = self;
  v15.super_class = ATStatusMonitor;
  v2 = [(ATStatusMonitor *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.airtraffic.statusmonitor", 0);
    statusQueue = v2->_statusQueue;
    v2->_statusQueue = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    statusObservers = v2->_statusObservers;
    v2->_statusObservers = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observerDataClasses = v2->_observerDataClasses;
    v2->_observerDataClasses = weakToStrongObjectsMapTable;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    statuses = v2->_statuses;
    v2->_statuses = v9;

    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v12 = [v11 initWithObjectsAndKeys:{MEMORY[0x277CBEBF8], @"ConnectedLibraries", MEMORY[0x277CBEC28], @"Enabled", MEMORY[0x277CBEC28], @"Wireless", MEMORY[0x277CBEC28], @"AutoSync", &unk_2836FA058, @"SyncStage", 0}];
    statusDictionary = v2->_statusDictionary;
    v2->_statusDictionary = v12;
  }

  return v2;
}

uint64_t __32__ATStatusMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor___sharedMonitor = objc_alloc_init(ATStatusMonitor);

  return MEMORY[0x2821F96F8]();
}

@end