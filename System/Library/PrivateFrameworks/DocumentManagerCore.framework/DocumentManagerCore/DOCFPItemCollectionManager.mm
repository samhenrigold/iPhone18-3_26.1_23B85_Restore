@interface DOCFPItemCollectionManager
+ (id)sharedManager;
- (DOCFPItemCollectionManager)init;
- (NSArray)observingCollections;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForegroundNotification;
- (void)collectionDidStartObserving:(id)observing;
- (void)collectionDidStopObserving:(id)observing;
- (void)dealloc;
@end

@implementation DOCFPItemCollectionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__DOCFPItemCollectionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_1 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1, block);
  }

  v2 = sharedManager_sharedMyManager;

  return v2;
}

uint64_t __43__DOCFPItemCollectionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedMyManager;
  sharedManager_sharedMyManager = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (DOCFPItemCollectionManager)init
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = DOCFPItemCollectionManager;
  v2 = [(DOCFPItemCollectionManager *)&v20 init];
  v3 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:100];
  activeCollections = v2->_activeCollections;
  v2->_activeCollections = v3;

  objc_initWeak(&location, v2);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__DOCFPItemCollectionManager_init__block_invoke;
  v17[3] = &unk_278F9C218;
  objc_copyWeak(&v18, &location);
  v6 = [defaultCenter addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v17];
  v21[0] = v6;
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __34__DOCFPItemCollectionManager_init__block_invoke_2;
  v15 = &unk_278F9C218;
  objc_copyWeak(&v16, &location);
  v8 = [defaultCenter2 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:&v12];
  v21[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:{2, v12, v13, v14, v15}];
  notificationObservances = v2->_notificationObservances;
  v2->_notificationObservances = v9;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  return v2;
}

void __34__DOCFPItemCollectionManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationWillEnterForegroundNotification];
}

- (void)applicationWillEnterForegroundNotification
{
  v19 = *MEMORY[0x277D85DE8];
  observingCollections = [(DOCFPItemCollectionManager *)self observingCollections];
  v3 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v3 = docLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = observingCollections;
    _os_log_impl(&dword_249340000, v3, OS_LOG_TYPE_DEFAULT, "App will become foreground. Starting collections %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = observingCollections;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        workingQueue = [v9 workingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__DOCFPItemCollectionManager_applicationWillEnterForegroundNotification__block_invoke;
        block[3] = &unk_278F9B408;
        block[4] = v9;
        dispatch_async(workingQueue, block);
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSArray)observingCollections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSCountedSet *)selfCopy->_activeCollections allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

void __34__DOCFPItemCollectionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained applicationDidEnterBackground];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  notificationObservances = self->_notificationObservances;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DOCFPItemCollectionManager_dealloc__block_invoke;
  v7[3] = &unk_278F9C240;
  v8 = defaultCenter;
  v5 = defaultCenter;
  [(NSArray *)notificationObservances enumerateObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = DOCFPItemCollectionManager;
  [(DOCFPItemCollectionManager *)&v6 dealloc];
}

- (void)applicationDidEnterBackground
{
  v3 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v3 = docLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249340000, v3, OS_LOG_TYPE_DEFAULT, "App did enter background. Calling process activity to suspend FPItemCollection enumeration", buf, 2u);
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke;
  v5[3] = &unk_278F9C268;
  v5[4] = self;
  [processInfo performExpiringActivityWithReason:@"suspend FPItemCollection enumeration" usingBlock:v5];
}

void __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v4 = docLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = *(a1 + 32);
    v7 = v4;
    v8 = [v6 observingCollections];
    *buf = 138412546;
    v34 = v5;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_DEFAULT, "App did enter background. Now performing expiring activity [expired: %@] for collections %@", buf, 0x16u);
  }

  if ((a2 & 1) == 0)
  {
    v9 = [*(a1 + 32) observingCollections];
    if ([v9 count])
    {
      v10 = dispatch_group_create();
      [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v22 = v21 = v9;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        v15 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            v18 = [v17 workingQueue];

            if (v18 == v15)
            {
              [v22 addObject:v17];
            }

            else
            {
              dispatch_group_enter(v10);
              v19 = [v17 workingQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_22;
              block[3] = &unk_278F9B430;
              block[4] = v17;
              v27 = v10;
              dispatch_async(v19, block);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v13);
      }

      if ([v22 count])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_23;
        v23[3] = &unk_278F9B430;
        v24 = v10;
        v25 = v22;
        dispatch_async(MEMORY[0x277D85CD0], v23);
      }

      v20 = dispatch_time(0, 3000000000);
      dispatch_group_wait(v10, v20);

      v9 = v21;
    }
  }
}

void __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_22(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_249340000, v2, OS_LOG_TYPE_DEFAULT, "App did enter background. Call stopObserving on working queue for collection %@", &v4, 0xCu);
  }

  [*(a1 + 32) stopObserving];
  dispatch_group_leave(*(a1 + 40));
}

void __59__DOCFPItemCollectionManager_applicationDidEnterBackground__block_invoke_23(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_group_enter(*(a1 + 32));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    *&v4 = 138412290;
    v10 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v9 = docLogHandle;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v10;
          v16 = v8;
          _os_log_impl(&dword_249340000, v9, OS_LOG_TYPE_DEFAULT, "App did enter background. Call stopObserving on main queue for collection %@", buf, 0xCu);
        }

        [v8 stopObserving];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)collectionDidStartObserving:(id)observing
{
  observingCopy = observing;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSCountedSet *)selfCopy->_activeCollections addObject:observingCopy];
  objc_sync_exit(selfCopy);
}

- (void)collectionDidStopObserving:(id)observing
{
  observingCopy = observing;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSCountedSet *)selfCopy->_activeCollections removeObject:observingCopy];
  objc_sync_exit(selfCopy);
}

@end