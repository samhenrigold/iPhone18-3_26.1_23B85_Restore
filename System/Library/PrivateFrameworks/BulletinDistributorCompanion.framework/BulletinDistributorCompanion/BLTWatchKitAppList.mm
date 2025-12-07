@interface BLTWatchKitAppList
- (BLTWatchKitAppList)init;
- (BLTWatchKitAppListDelegate)delegate;
- (id)watchKitAppDefinitionWithBundleID:(id)d;
- (void)_fetchWatchKitInfoWithForce:(BOOL)force completion:(id)completion;
- (void)dealloc;
@end

@implementation BLTWatchKitAppList

- (BLTWatchKitAppList)init
{
  v7.receiver = self;
  v7.super_class = BLTWatchKitAppList;
  v2 = [(BLTWatchKitAppList *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    loadingCompletionHandlers = v2->_loadingCompletionHandlers;
    v2->_loadingCompletionHandlers = array;

    pthread_mutex_init(&v2->_lock, 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, ApplicationsChanged, *MEMORY[0x277CE3130], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CE3130], 0);
  pthread_mutex_destroy(&self->_lock);
  v4.receiver = self;
  v4.super_class = BLTWatchKitAppList;
  [(BLTWatchKitAppList *)&v4 dealloc];
}

- (id)watchKitAppDefinitionWithBundleID:(id)d
{
  if (d)
  {
    dCopy = d;
    pthread_mutex_lock(&self->_lock);
    v5 = [(NSDictionary *)self->_appsByAppBundleID objectForKeyedSubscript:dCopy];

    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchWatchKitInfoWithForce:(BOOL)force completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [BLTTransaction transactionWithDescription:@"BLTWatchKitAppList _fetchWatchKitInfoWithForce:completion:"];
  if (!force)
  {
    pthread_mutex_lock(&self->_lock);
    if (completionCopy)
    {
      loadingCompletionHandlers = self->_loadingCompletionHandlers;
      v9 = [completionCopy copy];
      [(NSMutableArray *)loadingCompletionHandlers addObject:v9];
    }

    if (self->_loading)
    {
      pthread_mutex_unlock(&self->_lock);
      goto LABEL_10;
    }

    self->_loading = 1;
    pthread_mutex_unlock(&self->_lock);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v13 = blt_general_log(blt_boundedWaitForActivePairedDevice);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [blt_boundedWaitForActivePairedDevice valueForProperty:*MEMORY[0x277D2BBB8]];
    *buf = 134218242;
    v41 = blt_boundedWaitForActivePairedDevice;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_DEFAULT, "Fetching apps for paired device %p id: %@", buf, 0x16u);
  }

  v15 = [MEMORY[0x277CBEB58] set];
  pthread_mutex_lock(&self->_lock);
  appsByAppBundleID = self->_appsByAppBundleID;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke;
  v38[3] = &unk_278D31888;
  v17 = v15;
  v39 = v17;
  [(NSDictionary *)appsByAppBundleID enumerateKeysAndObjectsUsingBlock:v38];
  pthread_mutex_unlock(&self->_lock);
  v18 = [MEMORY[0x277CBEB58] set];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2;
  v30[3] = &unk_278D318D8;
  v19 = dictionary;
  v31 = v19;
  selfCopy = self;
  forceCopy = force;
  v36 = completionCopy;
  v20 = v18;
  v33 = v20;
  v34 = v17;
  v35 = v7;
  v21 = v17;
  v22 = MEMORY[0x245D067A0](v30);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36;
  v26[3] = &unk_278D31900;
  v28 = v20;
  v29 = v22;
  v27 = v19;
  v23 = v20;
  v24 = v19;
  v25 = v22;
  [mEMORY[0x277CEAF80] enumerateLocallyAvailableApplicationsForPairedDevice:blt_boundedWaitForActivePairedDevice options:0 withBlock:v26];

LABEL_10:
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isInstalled])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allKeys];
    *buf = 134217984;
    v28 = [v3 count];
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Fetched watchkit apps count: %lu", buf, 0xCu);
  }

  pthread_mutex_lock((*(a1 + 40) + 16));
  objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
  pthread_mutex_unlock((*(a1 + 40) + 16));
  [*(a1 + 40) setLoaded:1];
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  else
  {
    pthread_mutex_lock((*(a1 + 40) + 16));
    v5 = [*(*(a1 + 40) + 80) copy];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1 + 40);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;

    *(*(a1 + 40) + 88) = 0;
    pthread_mutex_unlock((*(a1 + 40) + 16));
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v22 + 1) + 8 * v13++) + 16))();
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  v14 = [*(a1 + 48) mutableCopy];
  [v14 minusSet:*(a1 + 56)];
  v15 = [*(a1 + 56) mutableCopy];
  [v15 minusSet:*(a1 + 48)];
  v16 = [v15 count];
  if (v16 || (v16 = [v14 count]) != 0)
  {
    v17 = BLTWorkQueue(v16);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_34;
    v18[3] = &unk_278D318B0;
    v18[4] = *(a1 + 40);
    v19 = v14;
    v20 = v15;
    v21 = *(a1 + 64);
    dispatch_async(v17, v18);
  }
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v4 = [*(a1 + 48) allObjects];
  [WeakRetained watchKitAppList:v2 added:v3 removed:v4];
}

uint64_t __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = blt_general_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36_cold_1(v7, v8);
    }
  }

  if (v5)
  {
    if ([v5 applicationType] == 2)
    {
      v9 = [v5 bundleIdentifier];
      v10 = [v5 counterpartIdentifiers];
      v11 = [v10 firstObject];

      v12 = [v5 deviceStatus];
      v13 = [v12 installStatus];

      v14 = -[BLTWatchKitAppDefinition initWithContainerBundleID:watchKitAppBundleID:isInstalled:runsIndependently:]([BLTWatchKitAppDefinition alloc], "initWithContainerBundleID:watchKitAppBundleID:isInstalled:runsIndependently:", v11, v9, v13 == 2, [v5 applicationMode] == 2);
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v11];
      if ([(BLTWatchKitAppDefinition *)v14 isInstalled])
      {
        [*(a1 + 40) addObject:v11];
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  return 1;
}

- (BLTWatchKitAppListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error enumerating WatchKit apps: %@", &v2, 0xCu);
}

@end