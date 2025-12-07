@interface MSPStorageTipsManager
- (MSPStorageTipsManager)init;
- (void)dealloc;
- (void)fetchProposedTipWithCompletionHandler:(id)handler;
@end

@implementation MSPStorageTipsManager

- (MSPStorageTipsManager)init
{
  v10.receiver = self;
  v10.super_class = MSPStorageTipsManager;
  v2 = [(MSPStorageTipsManager *)&v10 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v8, &location);
    v4 = _GEOConfigAddBlockListenerForKey();
    offlineOptimizeStorageEnabledListener = v2->_offlineOptimizeStorageEnabledListener;
    v2->_offlineOptimizeStorageEnabledListener = v4;

    v6 = v2;
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = MSPStorageTipsManager;
  [(MSPStorageTipsManager *)&v3 dealloc];
}

- (void)fetchProposedTipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (GEOConfigGetBOOL())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke;
    block[3] = &unk_2798676D0;
    v13 = handlerCopy;
    v4 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v5 = v13;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D0EB98]);
    global_queue = geo_get_global_queue();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_279867FE8;
    v10 = v6;
    v11 = handlerCopy;
    v5 = v6;
    v8 = handlerCopy;
    [v5 fetchAllSubscriptionsWithCallbackQueue:global_queue completionHandler:v9];
  }
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v19 = v4;
  v20 = a3;
  if (!v4)
  {
    v18 = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_3(a1, v49, v20, v43);
    goto LABEL_15;
  }

  if (![v4 count])
  {
    v18 = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_2(a1, v48, v43);
LABEL_15:
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_12;
  }

  v5 = [v4 _geo_filtered:&__block_literal_global_15];
  if (![v5 count])
  {
    __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_1(a1, v47, v5, v43);
    goto LABEL_18;
  }

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2810000000;
  v45[3] = "";
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__5;
  v43[4] = __Block_byref_object_dispose__5;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v6 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v7)
  {
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v11 = *(a1 + 32);
        v12 = [v10 identifier];
        global_queue = geo_get_global_queue();
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_7;
        v32[3] = &unk_279867F28;
        v34 = v43;
        v35 = v45;
        v36 = v41;
        v33 = v6;
        [v11 fetchStateForSubscriptionWithIdentifier:v12 callbackQueue:global_queue completionHandler:v32];
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v7);
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  dispatch_group_enter(v6);
  v14 = *(a1 + 32);
  v15 = geo_get_global_queue();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_9;
  v28[3] = &unk_279867F50;
  v30 = v31;
  v16 = v6;
  v29 = v16;
  [v14 _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:v15 completionHandler:v28];

  v17 = geo_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_3_11;
  block[3] = &unk_279867FC0;
  v25 = v41;
  v26 = v31;
  v24 = *(a1 + 40);
  v27 = v43;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  _Block_object_dispose(v45, 8);
LABEL_12:
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    if (([v7 loadState] - 1) > 2)
    {
      goto LABEL_7;
    }

    v6 = a1 + 48;
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_7;
    }

    v6 = a1 + 48;
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  os_unfair_lock_unlock((*(*v6 + 8) + 32));
LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_9(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a2;
  }

  if (a3)
  {
    v3 = -1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  dispatch_group_leave(*(a1 + 32));
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_3_11(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MapsSupport"];
    v3 = [v2 localizedStringForKey:@"OFFLINE_OPTIMIZE_STORAGE_TIP_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v4 = [MSPStorageTip alloc];
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MapsSupport"];
    v6 = [v5 localizedStringForKey:@"OFFLINE_OPTIMIZE_STORAGE_TIP_TITLE" value:@"localized string not found" table:@"Offline"];
    v7 = [(MSPStorageTip *)v4 initWithTitle:v6 message:v3 expectedSize:*(*(*(a1 + 48) + 8) + 24) enablementAction:&__block_literal_global_32];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_5_33;
    block[3] = &unk_2798674D8;
    v8 = *(a1 + 32);
    v16 = v7;
    v17 = v8;
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_6_34;
    v12[3] = &unk_279867F98;
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v13 = v10;
    v14 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v12);
    v3 = v13;
  }
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_4_29(uint64_t a1, void *a2)
{
  v2 = a2;
  GEOConfigSetBOOL();
  v2[2](v2, 0);
}

void __29__MSPStorageTipsManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [MEMORY[0x277CCAB98] defaultCenter];
    [v1 postNotificationName:@"MSPStorageTipsManagerTipDidChangeNotification" object:WeakRetained];
  }
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 40))
  {
    OUTLINED_FUNCTION_0(a1, a2);
    v7[1] = 3221225472;
    v7[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_6;
    v7[3] = &unk_2798676D0;
    *(a2 + 32) = *(v8 + 40);
    dispatch_async(MEMORY[0x277D85CD0], a2);
  }

  *a4 = a3;
}

uint64_t __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0(a1, a2);
  v5[1] = 3221225472;
  v5[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_2798676D0;
  a2[4] = *(v6 + 40);
  dispatch_async(MEMORY[0x277D85CD0], a2);
  result = 0;
  *a3 = a2[4];
  return result;
}

uint64_t __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0(a1, a2);
  v7[1] = 3221225472;
  v7[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_2798674D8;
  *(a2 + 40) = *(v8 + 40);
  *(a2 + 32) = a3;
  dispatch_async(MEMORY[0x277D85CD0], a2);

  result = 0;
  *a4 = *(a2 + 40);
  return result;
}

@end