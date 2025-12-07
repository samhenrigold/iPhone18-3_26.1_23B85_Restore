@interface ANAnnounceReachabilityManager
- (ANAnnounceReachabilityManager)init;
- (ANAnnounceReachabilityManagerDelegate)delegate;
- (NSArray)monitoredHomes;
- (id)monitoredRoomsForHome:(id)home;
- (unint64_t)_filteredReachabilityLevelFromReachabilityLevel:(unint64_t)level forHome:(id)home;
- (unint64_t)_reachabilityForHome:(id)home;
- (unint64_t)_reachabilityForRoom:(id)room inHome:(id)home;
- (unint64_t)reachabilityForHome:(id)home;
- (unint64_t)reachabilityForRoom:(id)room inHome:(id)home;
- (void)_initializeReachabilityStatus;
- (void)_notifyClientsReachabilityChangeForHome:(id)home toLevel:(unint64_t)level;
- (void)_notifyClientsReachabilityChangeForRoom:(id)room inHome:(id)home toLevel:(unint64_t)level;
- (void)_rapportActivationHandler:(id)handler;
- (void)_reevaluateHomeKitReachabilityForHome:(id)home;
- (void)_updateReachabilityLevelWithReachabilityLevel:(unint64_t)level forAccessory:(id)accessory operation:(unint64_t)operation;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)connection:(id)connection didFindDevice:(id)device;
- (void)connection:(id)connection didLoseDevice:(id)device;
- (void)didAddHome:(id)home;
- (void)didRemoveHome:(id)home;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation ANAnnounceReachabilityManager

- (ANAnnounceReachabilityManager)init
{
  v13.receiver = self;
  v13.super_class = ANAnnounceReachabilityManager;
  v2 = [(ANAnnounceReachabilityManager *)&v13 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.announce", "ReachabilityMgr");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_create("com.apple.announce.reachability-queue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = objc_opt_new();
    homeReachability = v2->_homeReachability;
    v2->_homeReachability = v7;

    v9 = +[ANRapportConnection sharedConnection];
    rapportConnection = v2->_rapportConnection;
    v2->_rapportConnection = v9;

    v2->_started = 0;
    v11 = +[ANHomeManager shared];
    [v11 registerDelegate:v2 queue:v2->_serialQueue];

    [(ANAnnounceReachabilityManager *)v2 _initializeReachabilityStatus];
  }

  return v2;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serialQueue, v7);
}

void __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_2;
    block[3] = &unk_278C86898;
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 32) setStarted:1];
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) rapportConnection];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_3;
    v3[3] = &unk_278C868E8;
    v3[4] = *(a1 + 32);
    objc_copyWeak(&v5, &location);
    v4 = *(a1 + 40);
    [v2 activateLinkWithOptions:7 completion:v3];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

uint64_t __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_4;
  block[3] = &unk_278C868C0;
  objc_copyWeak(&v10, a1 + 6);
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_5;
  v6[3] = &unk_278C86898;
  v7 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v10);
}

void __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _rapportActivationHandler:*(a1 + 32)];
}

uint64_t __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stop
{
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ANAnnounceReachabilityManager_stop__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __37__ANAnnounceReachabilityManager_stop__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEABF0] sharedManager];
  [v2 transaction:*MEMORY[0x277CEAB10] setActive:0];

  if ([*(a1 + 32) started])
  {
    [*(a1 + 32) setStarted:0];
    v3 = [*(a1 + 32) rapportConnection];
    [v3 deactivateLinkWithOptions:2];
  }
}

- (unint64_t)reachabilityForHome:(id)home
{
  homeCopy = home;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ANAnnounceReachabilityManager_reachabilityForHome___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = homeCopy;
  v11 = &v12;
  v6 = homeCopy;
  dispatch_sync(serialQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__53__ANAnnounceReachabilityManager_reachabilityForHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reevaluateHomeKitReachabilityForHome:*(a1 + 40)];
  result = [*(a1 + 32) _reachabilityForHome:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)reachabilityForRoom:(id)room inHome:(id)home
{
  roomCopy = room;
  homeCopy = home;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__ANAnnounceReachabilityManager_reachabilityForRoom_inHome___block_invoke;
  v13[3] = &unk_278C86938;
  v13[4] = self;
  v14 = homeCopy;
  v15 = roomCopy;
  v16 = &v17;
  v9 = roomCopy;
  v10 = homeCopy;
  dispatch_sync(serialQueue, v13);

  v11 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v11;
}

void *__60__ANAnnounceReachabilityManager_reachabilityForRoom_inHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reevaluateHomeKitReachabilityForHome:*(a1 + 40)];
  result = [*(a1 + 32) _reachabilityForRoom:*(a1 + 48) inHome:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)monitoredRoomsForHome:(id)home
{
  homeCopy = home;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = objc_opt_new();
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ANAnnounceReachabilityManager_monitoredRoomsForHome___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v6 = homeCopy;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(serialQueue, block);

  allObjects = [v13[5] allObjects];

  _Block_object_dispose(&v12, 8);

  return allObjects;
}

void __55__ANAnnounceReachabilityManager_monitoredRoomsForHome___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeReachability];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 allKeys];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 40) accessoryWithUniqueIdentifier:*(*(&v12 + 1) + 8 * v9)];
          v11 = [v10 room];

          if (v11)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (NSArray)monitoredHomes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_opt_new();
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ANAnnounceReachabilityManager_monitoredHomes__block_invoke;
  v6[3] = &unk_278C86618;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  allObjects = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return allObjects;
}

void __47__ANAnnounceReachabilityManager_monitoredHomes__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeReachability];
  v3 = [v2 allKeys];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = +[ANHomeManager shared];
        v11 = [v10 homeForID:v9];

        if (v11)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (unint64_t)_filteredReachabilityLevelFromReachabilityLevel:(unint64_t)level forHome:(id)home
{
  homeCopy = home;
  v6 = +[ANHomeManager shared];
  currentAccessory = [v6 currentAccessory];
  if (currentAccessory)
  {
  }

  else
  {
    hmu_isRemoteAccessAllowedForCurrentUser = [homeCopy hmu_isRemoteAccessAllowedForCurrentUser];

    if (!hmu_isRemoteAccessAllowedForCurrentUser)
    {
      level &= ~2uLL;
    }
  }

  return level;
}

- (void)_initializeReachabilityStatus
{
  mEMORY[0x277CEABF0] = [MEMORY[0x277CEABF0] sharedManager];
  [mEMORY[0x277CEABF0] transaction:*MEMORY[0x277CEAB10] setActive:1];

  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ANAnnounceReachabilityManager__initializeReachabilityStatus__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __62__ANAnnounceReachabilityManager__initializeReachabilityStatus__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Initializing Reachability Status", buf, 2u);
  }

  v3 = +[ANHomeManager shared];
  v4 = [v3 allHomes];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v4;
  v40 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v40)
  {
    v39 = *v53;
    *&v5 = 138412546;
    v37 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v6;
        v7 = *(*(&v52 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v9 = [*(a1 + 32) homeReachability];
        v10 = [v7 uniqueIdentifier];
        v43 = v8;
        [v9 setObject:v8 forKeyedSubscript:v10];

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v11 = MEMORY[0x277CD1650];
        v12 = [v7 accessories];
        v13 = [v11 announceAccessoriesWithAnnounceEnabledFromAccessories:v12];

        v14 = [v13 countByEnumeratingWithState:&v48 objects:v63 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v49;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v49 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v48 + 1) + 8 * i);
              v19 = [v18 settings];
              if ([v19 isControllable])
              {
                v20 = 2;
              }

              else
              {
                v20 = 0;
              }

              v21 = [*(a1 + 32) _filteredReachabilityLevelFromReachabilityLevel:v20 forHome:v7];
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
              v23 = [v18 uniqueIdentifier];
              [v43 setObject:v22 forKeyedSubscript:v23];
            }

            v15 = [v13 countByEnumeratingWithState:&v48 objects:v63 count:16];
          }

          while (v15);
        }

        v24 = [*(a1 + 32) log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v7 name];
          v26 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:{objc_msgSend(*(a1 + 32), "_reachabilityForHome:", v7)}];
          *buf = v37;
          v57 = v25;
          v58 = 2112;
          v59 = v26;
          _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "Initial Reachability [Home = %@]: %@", buf, 0x16u);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = [v7 rooms];
        v27 = [v42 countByEnumeratingWithState:&v44 objects:v62 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v45;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v45 != v29)
              {
                objc_enumerationMutation(v42);
              }

              v31 = *(*(&v44 + 1) + 8 * j);
              v32 = [*(a1 + 32) log];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [v7 name];
                v34 = [v31 name];
                v35 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:{objc_msgSend(*(a1 + 32), "_reachabilityForRoom:inHome:", v31, v7)}];
                *buf = 138412802;
                v57 = v33;
                v58 = 2112;
                v59 = v34;
                v60 = 2112;
                v61 = v35;
                _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "Initial Reachability [Home = %@, Room = %@]: %@", buf, 0x20u);
              }
            }

            v28 = [v42 countByEnumeratingWithState:&v44 objects:v62 count:16];
          }

          while (v28);
        }

        v6 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v40);
  }

  v36 = [*(a1 + 32) log];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v36, OS_LOG_TYPE_DEFAULT, "Finished Setting Reachability Status", buf, 2u);
  }
}

- (void)_reevaluateHomeKitReachabilityForHome:(id)home
{
  v35 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = MEMORY[0x277CD1650];
  v22 = homeCopy;
  accessories = [homeCopy accessories];
  v8 = [v6 announceAccessoriesWithAnnounceEnabledFromAccessories:accessories];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [(ANAnnounceReachabilityManager *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          home = [v13 home];
          name = [home name];
          name2 = [v13 name];
          settings = [v13 settings];
          isControllable = [settings isControllable];
          *buf = 138412802;
          v29 = name;
          v30 = 2112;
          v31 = name2;
          v32 = 1024;
          v33 = isControllable;
          _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "Re-evaluating Reachability for Accessory [Home = %@]: %@, Controllable = %d", buf, 0x1Cu);
        }

        settings2 = [v13 settings];
        v21 = [settings2 isControllable] ^ 1;

        [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:2 forAccessory:v13 operation:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v10);
  }
}

- (void)_rapportActivationHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if (handlerCopy)
  {
    [(ANAnnounceReachabilityManager *)self setStarted:0];
    v6 = [(ANAnnounceReachabilityManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ANAnnounceReachabilityManager *)handlerCopy _rapportActivationHandler:v6];
    }
  }

  else
  {
    rapportConnection = [(ANAnnounceReachabilityManager *)self rapportConnection];
    serialQueue2 = [(ANAnnounceReachabilityManager *)self serialQueue];
    [rapportConnection addDeviceDelegate:self queue:serialQueue2];
  }
}

- (unint64_t)_reachabilityForHome:(id)home
{
  v22 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  v8 = [homeReachability objectForKeyedSubscript:uniqueIdentifier];

  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [v9 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
          v12 |= [v15 unsignedIntegerValue];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)_reachabilityForRoom:(id)room inHome:(id)home
{
  v35 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  homeCopy = home;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
  v29 = homeCopy;
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  v10 = [homeReachability objectForKeyedSubscript:uniqueIdentifier];

  if (v10)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v10;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v27 = 0;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v29 accessoryWithUniqueIdentifier:{v16, v26}];
          v18 = v17;
          if (v17)
          {
            room = [v17 room];
            uniqueIdentifier2 = [room uniqueIdentifier];
            uniqueIdentifier3 = [roomCopy uniqueIdentifier];
            v22 = [uniqueIdentifier2 isEqual:uniqueIdentifier3];

            if (v22)
            {
              v23 = [v11 objectForKeyedSubscript:v16];
              v27 |= [v23 unsignedIntegerValue];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    else
    {
      v27 = 0;
    }

    v10 = v26;
    v24 = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_updateReachabilityLevelWithReachabilityLevel:(unint64_t)level forAccessory:(id)accessory operation:(unint64_t)operation
{
  v46 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  serialQueue = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
  home = [accessoryCopy home];
  uniqueIdentifier = [home uniqueIdentifier];
  v13 = [homeReachability objectForKeyedSubscript:uniqueIdentifier];

  if (v13)
  {
    uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
    v15 = [v13 objectForKeyedSubscript:uniqueIdentifier2];

    if (v15)
    {
      home2 = [accessoryCopy home];
      room = [accessoryCopy room];
      v18 = [(ANAnnounceReachabilityManager *)self _reachabilityForRoom:room inHome:home2];
      v36 = [(ANAnnounceReachabilityManager *)self _reachabilityForHome:home2];
      unsignedIntegerValue = [v15 unsignedIntegerValue];
      v20 = unsignedIntegerValue;
      v21 = unsignedIntegerValue | level;
      if (operation)
      {
        v21 = unsignedIntegerValue;
      }

      if (operation == 1)
      {
        v22 = unsignedIntegerValue & ~level;
      }

      else
      {
        v22 = v21;
      }

      v23 = [(ANAnnounceReachabilityManager *)self _filteredReachabilityLevelFromReachabilityLevel:v22 forHome:home2];
      if (v23 != v20)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
        uniqueIdentifier3 = [accessoryCopy uniqueIdentifier];
        [v13 setObject:v24 forKeyedSubscript:uniqueIdentifier3];
      }

      v26 = [(ANAnnounceReachabilityManager *)self _reachabilityForRoom:room inHome:home2];
      v27 = [(ANAnnounceReachabilityManager *)self _reachabilityForHome:home2];
      if (v26 != v18)
      {
        v35 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v18];
        v34 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v26];
        v28 = [(ANAnnounceReachabilityManager *)self log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          name = [home2 name];
          [room name];
          *buf = 138413058;
          v39 = name;
          v41 = v40 = 2112;
          v29 = v41;
          v42 = 2112;
          v43 = v35;
          v44 = 2112;
          v45 = v34;
          _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "Reachability Changed [Home = %@, Room = %@]: %@ -> %@", buf, 0x2Au);
        }

        [(ANAnnounceReachabilityManager *)self _notifyClientsReachabilityChangeForRoom:room inHome:home2 toLevel:v26];
      }

      if (v27 != v36)
      {
        v37 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:?];
        v30 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v27];
        v31 = [(ANAnnounceReachabilityManager *)self log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [home2 name];
          *buf = 138412802;
          v39 = name2;
          v40 = 2112;
          v41 = v37;
          v42 = 2112;
          v43 = v30;
          _os_log_impl(&dword_23F525000, v31, OS_LOG_TYPE_DEFAULT, "Reachability Changed [Home = %@]: %@ -> %@", buf, 0x20u);
        }

        [(ANAnnounceReachabilityManager *)self _notifyClientsReachabilityChangeForHome:home2 toLevel:v27];
      }
    }
  }
}

- (void)_notifyClientsReachabilityChangeForRoom:(id)room inHome:(id)home toLevel:(unint64_t)level
{
  roomCopy = room;
  homeCopy = home;
  delegate = [(ANAnnounceReachabilityManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(ANAnnounceReachabilityManager *)self delegate];
    [delegate2 reachabilityLevel:level didChangeForRoom:roomCopy inHome:homeCopy];
  }
}

- (void)_notifyClientsReachabilityChangeForHome:(id)home toLevel:(unint64_t)level
{
  homeCopy = home;
  delegate = [(ANAnnounceReachabilityManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(ANAnnounceReachabilityManager *)self delegate];
    [delegate2 reachabilityLevel:level didChangeForHome:homeCopy];
  }
}

- (ANAnnounceReachabilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didAddHome:(id)home
{
  homeCopy = home;
  homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  v6 = [homeReachability objectForKeyedSubscript:uniqueIdentifier];

  if (!v6)
  {
    v7 = objc_opt_new();
    homeReachability2 = [(ANAnnounceReachabilityManager *)self homeReachability];
    uniqueIdentifier2 = [homeCopy uniqueIdentifier];
    [homeReachability2 setObject:v7 forKeyedSubscript:uniqueIdentifier2];
  }
}

- (void)didRemoveHome:(id)home
{
  homeCopy = home;
  homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  [homeReachability setObject:0 forKeyedSubscript:uniqueIdentifier];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  if ([accessoryCopy hmu_isHomePod] && objc_msgSend(accessoryCopy, "an_supportsAnnounce"))
  {
    homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v9 = [homeReachability objectForKeyedSubscript:uniqueIdentifier];

    if (v9)
    {
      settings = [accessoryCopy settings];
      if ([settings isControllable])
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
      [v9 setObject:v12 forKeyedSubscript:uniqueIdentifier2];

      [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:v11 forAccessory:accessoryCopy operation:0];
    }
  }
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  if ([accessoryCopy hmu_isHomePod])
  {
    homeReachability = [(ANAnnounceReachabilityManager *)self homeReachability];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v9 = [homeReachability objectForKeyedSubscript:uniqueIdentifier];

    if (v9)
    {
      [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:3 forAccessory:accessoryCopy operation:1];
      uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
      [v9 setObject:0 forKeyedSubscript:uniqueIdentifier2];
    }
  }
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  if ([controllableCopy hmu_isHomePod])
  {
    settings = [controllableCopy settings];
    v5 = [settings isControllable] ^ 1;

    [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:2 forAccessory:controllableCopy operation:v5];
  }
}

- (void)connection:(id)connection didFindDevice:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy isAccessory])
  {
    v6 = [(ANAnnounceReachabilityManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = deviceCopy;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Rapport Did Find Accessory Device: %@", buf, 0xCu);
    }

    v7 = +[ANHomeManager shared];
    allHomes = [v7 allHomes];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = allHomes;
    v24 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v10 = *v31;
      v22 = *v31;
      selfCopy = self;
      v25 = v9;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          accessories = [v12 accessories];
          v14 = [accessories countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(accessories);
                }

                v18 = *(*(&v26 + 1) + 8 * j);
                uniqueIdentifier = [v18 uniqueIdentifier];
                homeKitIdentifier = [deviceCopy homeKitIdentifier];
                v21 = [uniqueIdentifier isEqual:homeKitIdentifier];

                if (v21)
                {
                  [(ANAnnounceReachabilityManager *)selfCopy _updateReachabilityLevelWithReachabilityLevel:1 forAccessory:v18 operation:0];

                  v9 = v25;
                  goto LABEL_21;
                }
              }

              v15 = [accessories countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v25;
          v10 = v22;
        }

        v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

LABEL_21:
  }
}

- (void)connection:(id)connection didLoseDevice:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy isAccessory])
  {
    v6 = [(ANAnnounceReachabilityManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = deviceCopy;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Rapport Did Lose Accessory Device: %@", buf, 0xCu);
    }

    v7 = +[ANHomeManager shared];
    allHomes = [v7 allHomes];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = allHomes;
    v24 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v10 = *v31;
      v22 = *v31;
      selfCopy = self;
      v25 = v9;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          accessories = [v12 accessories];
          v14 = [accessories countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(accessories);
                }

                v18 = *(*(&v26 + 1) + 8 * j);
                uniqueIdentifier = [v18 uniqueIdentifier];
                homeKitIdentifier = [deviceCopy homeKitIdentifier];
                v21 = [uniqueIdentifier isEqual:homeKitIdentifier];

                if (v21)
                {
                  [(ANAnnounceReachabilityManager *)selfCopy _updateReachabilityLevelWithReachabilityLevel:1 forAccessory:v18 operation:1];

                  v9 = v25;
                  goto LABEL_21;
                }
              }

              v15 = [accessories countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v25;
          v10 = v22;
        }

        v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

LABEL_21:
  }
}

- (void)_rapportActivationHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Rapport activation failed %@", &v2, 0xCu);
}

@end