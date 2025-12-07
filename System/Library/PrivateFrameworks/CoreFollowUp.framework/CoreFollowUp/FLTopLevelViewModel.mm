@interface FLTopLevelViewModel
+ (id)_prefixFromBundleIdentifier:(id)identifier;
+ (id)redirectURLForItem:(id)item withAction:(id)action;
- (FLTopLevelViewModel)initWithBundleIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier;
- (FLTopLevelViewModel)initWithBundleIdentifier:(id)identifier controller:(id)controller;
- (id)_groupsForPrimaryAccount:(id)account secondaryAccounts:(id)accounts simpleAccountGrouping:(BOOL)grouping;
- (id)allPendingItems;
- (id)extensionToItemMapFromItems:(id)items;
- (void)_configureTimerForItem:(id)item;
- (void)_refreshItemsWithExtensionToItemMap:(id)map completion:(id)completion;
- (void)_removeTimerForItem:(id)item;
- (void)_updateTimerItems:(id)items;
- (void)allPendingItems;
- (void)dealloc;
- (void)mapItems:(id)items toGroups:(id)groups unknownGroup:(id)group deviceGroup:(id)deviceGroup simpleAccountGrouping:(BOOL)grouping;
- (void)refreshItems:(id)items withCompletionHandler:(id)handler;
- (void)refreshItemsForItem:(id)item withCompletionHandler:(id)handler;
@end

@implementation FLTopLevelViewModel

- (id)allPendingItems
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E696000, v3, OS_LOG_TYPE_DEFAULT, "allPendingItems", buf, 2u);
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 0;
  controller = self->_controller;
  v33 = 0;
  v25 = [(FLFollowUpController *)controller pendingFollowUpItems:&v33];
  v26 = v33;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __38__FLTopLevelViewModel_allPendingItems__block_invoke;
  v32[3] = &unk_278852D28;
  v32[4] = self;
  v32[5] = buf;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v32];
  v6 = [v25 filteredArrayUsingPredicate:v5];

  if (v26)
  {
    v8 = _FLLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FLTopLevelViewModel *)v26 allPendingItems];
    }
  }

  if (v35[24] == 1)
  {
    [(FLFollowUpController *)self->_controller updateBadgesForTimer];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        expirationDate = [v12 expirationDate];
        v14 = expirationDate == 0;

        if (v14)
        {
          [(FLTopLevelViewModel *)self _removeTimerForItem:v12];
        }

        else
        {
          timersByID = self->_timersByID;
          uniqueIdentifier = [v12 uniqueIdentifier];
          v17 = [(NSMutableDictionary *)timersByID objectForKeyedSubscript:uniqueIdentifier];

          if (v17)
          {
            v18 = self->_timersByID;
            uniqueIdentifier2 = [v12 uniqueIdentifier];
            v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:uniqueIdentifier2];
            fireDate = [v20 fireDate];
            _midnightAdjustedDate = [v12 _midnightAdjustedDate];
            v23 = [fireDate isEqualToDate:_midnightAdjustedDate];

            if (v23)
            {
              continue;
            }

            [(FLTopLevelViewModel *)self _removeTimerForItem:v12];
          }

          [(FLTopLevelViewModel *)self _configureTimerForItem:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(buf, 8);

  return obj;
}

- (FLTopLevelViewModel)initWithBundleIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier
{
  clientIdentifierCopy = clientIdentifier;
  identifierCopy = identifier;
  v8 = [[FLFollowUpController alloc] initWithClientIdentifier:clientIdentifierCopy];

  v9 = [(FLTopLevelViewModel *)self initWithBundleIdentifier:identifierCopy controller:v8];
  return v9;
}

- (FLTopLevelViewModel)initWithBundleIdentifier:(id)identifier controller:(id)controller
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = FLTopLevelViewModel;
  v9 = [(FLTopLevelViewModel *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controller, controller);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    v11 = objc_alloc_init(FLItemChangeObserver);
    observer = v10->_observer;
    v10->_observer = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    timersByID = v10->_timersByID;
    v10->_timersByID = dictionary;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__updateTimerItems_ name:@"com.apple.PreferencesApp.willBecomeActive" object:0];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.PreferencesApp.willBecomeActive" object:0];

  v4.receiver = self;
  v4.super_class = FLTopLevelViewModel;
  [(FLTopLevelViewModel *)&v4 dealloc];
}

uint64_t __38__FLTopLevelViewModel_allPendingItems__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isExpired];
  if (v4)
  {
    v5 = _FLLogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_22E696000, v5, OS_LOG_TYPE_DEFAULT, "Item expired, not returning to UI %@", &v12, 0xCu);
    }

    v6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_13;
  }

  if (!*(*(a1 + 32) + 24))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_13;
  }

  v7 = [v3 targetBundleIdentifier];
  if ([v7 isEqualToString:*(*(a1 + 32) + 24)])
  {
    v8 = [v3 displayStyle];

    if ((v8 & 8) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = _FLLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Item %@ did not match, discarding...", &v12, 0xCu);
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)_updateTimerItems:(id)items
{
  v4 = [(NSMutableDictionary *)self->_timersByID count];
  if (v4)
  {
    v5 = _FLLogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E696000, v5, OS_LOG_TYPE_DEFAULT, "_updateItemTimers called", v6, 2u);
    }

    [(FLItemChangeObserver *)self->_observer timerUpdated];
  }
}

- (void)_configureTimerForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CBEBB8]);
  _midnightAdjustedDate = [itemCopy _midnightAdjustedDate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__FLTopLevelViewModel__configureTimerForItem___block_invoke;
  v12[3] = &unk_278852D50;
  v7 = itemCopy;
  v13 = v7;
  objc_copyWeak(&v14, &location);
  v8 = [v5 initWithFireDate:_midnightAdjustedDate interval:0 repeats:v12 block:0.0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v8 forMode:*MEMORY[0x277CBE640]];

  timersByID = self->_timersByID;
  uniqueIdentifier = [v7 uniqueIdentifier];
  [(NSMutableDictionary *)timersByID setObject:v8 forKeyedSubscript:uniqueIdentifier];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__FLTopLevelViewModel__configureTimerForItem___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _FLLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_22E696000, v2, OS_LOG_TYPE_DEFAULT, "Timer fired for removing item %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] timerUpdated];
    [v5[1] updateBadgesForTimer];
    v6 = v5[4];
    v7 = [*(a1 + 32) uniqueIdentifier];
    [v6 setObject:0 forKeyedSubscript:v7];
  }
}

- (void)_removeTimerForItem:(id)item
{
  timersByID = self->_timersByID;
  itemCopy = item;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v9 = [(NSMutableDictionary *)timersByID objectForKeyedSubscript:uniqueIdentifier];

  [v9 invalidate];
  v7 = self->_timersByID;
  uniqueIdentifier2 = [itemCopy uniqueIdentifier];

  [(NSMutableDictionary *)v7 setObject:0 forKeyedSubscript:uniqueIdentifier2];
}

- (void)refreshItemsForItem:(id)item withCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v13[0] = item;
  v7 = MEMORY[0x277CBEA60];
  itemCopy = item;
  v9 = [v7 arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__FLTopLevelViewModel_refreshItemsForItem_withCompletionHandler___block_invoke;
  v11[3] = &unk_278852D78;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(FLTopLevelViewModel *)self refreshItems:v9 withCompletionHandler:v11];
}

void __65__FLTopLevelViewModel_refreshItemsForItem_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = FLItemRefreshResultSuccess;
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  (*(v4 + 16))(v4, [v7 count] == 1, v6);
}

- (void)refreshItems:(id)items withCompletionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v8 = [(FLTopLevelViewModel *)self extensionToItemMapFromItems:itemsCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__FLTopLevelViewModel_refreshItems_withCompletionHandler___block_invoke;
  v11[3] = &unk_278852DA0;
  v12 = itemsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = itemsCopy;
  [(FLTopLevelViewModel *)self _refreshItemsWithExtensionToItemMap:v8 completion:v11];
}

void __58__FLTopLevelViewModel_refreshItems_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCAC30];
  v7 = a3;
  v8 = a2;
  v9 = [v6 predicateWithBlock:&__block_literal_global_11];
  v11 = [v5 filteredArrayUsingPredicate:v9];

  v10 = [v8 objectForKeyedSubscript:FLItemRefreshResultSuccess];
  [v10 addObjectsFromArray:v11];

  (*(*(a1 + 40) + 16))();
}

BOOL __58__FLTopLevelViewModel_refreshItems_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 extensionIdentifier];
  v3 = v2 == 0;

  return v3;
}

- (id)extensionToItemMapFromItems:(id)items
{
  v3 = MEMORY[0x277CBEB38];
  itemsCopy = items;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__FLTopLevelViewModel_extensionToItemMapFromItems___block_invoke;
  v8[3] = &unk_278852DC8;
  v6 = dictionary;
  v9 = v6;
  [itemsCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __51__FLTopLevelViewModel_extensionToItemMapFromItems___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 extensionIdentifier];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
    }

    [v4 addObject:v5];
  }
}

- (void)_refreshItemsWithExtensionToItemMap:(id)map completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v8 = dispatch_group_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke;
  aBlock[3] = &unk_278852E18;
  v29 = array4;
  v53 = v29;
  v9 = mapCopy;
  v54 = v9;
  v30 = array2;
  v55 = v30;
  v10 = v8;
  v56 = v10;
  v11 = _Block_copy(aBlock);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v35 = v9;
  obj = [v9 allKeys];
  v12 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        dispatch_group_enter(v10);
        Current = CFAbsoluteTimeGetCurrent();
        v19 = _FLLogSystem(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = v16;
          _os_log_impl(&dword_22E696000, v19, OS_LOG_TYPE_DEFAULT, "Starting to refresh items for: %@", buf, 0xCu);
        }

        v20 = [[FLHeadlessExtensionLoader alloc] initWithIdentifier:v16];
        v21 = +[FLHeadlessExtensionLoader sharedExtensionQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_29;
        block[3] = &unk_278852E68;
        v44 = v20;
        v45 = v16;
        v47 = Current;
        v46 = v11;
        v22 = v20;
        dispatch_async(v21, block);
      }

      v13 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v13);
  }

  v23 = dispatch_get_global_queue(25, 0);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_33;
  v37[3] = &unk_278852EB8;
  v37[4] = self;
  v38 = v30;
  v39 = array;
  v40 = array3;
  v41 = v29;
  v42 = completionCopy;
  v24 = completionCopy;
  v25 = v29;
  v26 = array3;
  v27 = array;
  v28 = v30;
  dispatch_group_notify(v10, v23, v37);
}

void __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[FLHeadlessExtensionLoader sharedExtensionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_2;
  v8[3] = &unk_278852DF0;
  v14 = a3;
  v9 = a1[4];
  v10 = a1[5];
  v11 = v5;
  v12 = a1[6];
  v13 = a1[7];
  v7 = v5;
  dispatch_async(v6, v8);
}

void __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_2(void *a1)
{
  v2 = a1[9];
  v3 = a1[5];
  v4 = v2 == 1;
  v5 = 7;
  if (v4)
  {
    v5 = 4;
  }

  v6 = a1[v5];
  v7 = [v3 objectForKeyedSubscript:a1[6]];
  [v6 addObjectsFromArray:v7];

  v8 = a1[8];

  dispatch_group_leave(v8);
}

void __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteInterface];

  if (v2)
  {
    v3 = [*(a1 + 32) remoteInterface];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_2_30;
    v6[3] = &unk_278852E40;
    v4 = *(a1 + 48);
    v6[4] = *(a1 + 40);
    v9 = *(a1 + 56);
    v8 = v4;
    v7 = *(a1 + 32);
    [v3 followUpPerformUpdateWithCompletionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

uint64_t __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_2_30(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _FLLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 56)];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_22E696000, v2, OS_LOG_TYPE_DEFAULT, "Refreshed items for %@ took %@", &v6, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

void __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_33(uint64_t a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allPendingItems];
  v3 = MEMORY[0x277CBEB98];
  v4 = [v2 fl_map:&__block_literal_global_38];
  v5 = [v3 setWithArray:v4];

  v6 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_3;
  v12[3] = &unk_278852E90;
  v7 = v5;
  v13 = v7;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  [v6 enumerateObjectsUsingBlock:v12];
  v18[0] = FLItemRefreshResultSuccess;
  v18[1] = FLItemRefreshResultFailure;
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v19[0] = *(a1 + 48);
  v19[1] = v8;
  v18[2] = FLItemRefreshResultRemoved;
  v19[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v11 = _FLLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&dword_22E696000, v11, OS_LOG_TYPE_DEFAULT, "Refresh completed with result: %@", buf, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
}

void __70__FLTopLevelViewModel__refreshItemsWithExtensionToItemMap_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v6 uniqueIdentifier];
  LODWORD(v3) = [v3 containsObject:v4];

  v5 = 48;
  if (v3)
  {
    v5 = 40;
  }

  [*(a1 + v5) addObject:v6];
}

- (id)_groupsForPrimaryAccount:(id)account secondaryAccounts:(id)accounts simpleAccountGrouping:(BOOL)grouping
{
  groupingCopy = grouping;
  v73 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  accountsCopy = accounts;
  v9 = _FLSignpostCreate();
  v59 = v10;
  v11 = _FLSignpostLogSystem(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FLTopLevelViewModel _groupsForPrimaryAccount:v9 secondaryAccounts:v11 simpleAccountGrouping:?];
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v13 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.account"];
  v14 = FLLoc(@"ACCOUNT_MULTI_FOLLOW_LIST_TITLE");
  [(FLGroupViewModelImpl *)v13 setRowTitle:v14];

  [(FLGroupViewModelImpl *)v13 setAccountID:accountCopy];
  [(FLGroupViewModelImpl *)v13 setNeedsAccountID:0];
  v60 = v13;
  [v12 addObject:v13];
  v15 = [[FLGroupViewModelImpl alloc] initWithIdentifier:?];
  [(FLGroupViewModelImpl *)v15 setAccountID:accountCopy];
  [(FLGroupViewModelImpl *)v15 setNeedsAccountID:0];
  v16 = FLLoc(@"SERVICES_MULTI_FOLLOW_LIST_TITLE");
  [(FLGroupViewModelImpl *)v15 setRowTitle:v16];

  v57 = v15;
  [v12 addObject:v15];
  if (accountCopy)
  {
    v17 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.none"];
    [(FLGroupViewModelImpl *)v17 setAccountID:accountCopy];
    [(FLGroupViewModelImpl *)v17 setNeedsAccountID:1];
    [v12 addObject:v17];
  }

  if (accountsCopy && [accountsCopy count])
  {
    v18 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.account"];
    v19 = FLLoc(@"ACCOUNT_MULTI_FOLLOW_LIST_TITLE");
    [(FLGroupViewModelImpl *)v18 setRowTitle:v19];

    firstObject = [accountsCopy firstObject];
    [(FLGroupViewModelImpl *)v18 setAccountID:firstObject];

    [(FLGroupViewModelImpl *)v18 setNeedsAccountID:1];
    [v12 addObject:v18];
  }

  v21 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.none"];
  firstObject2 = [accountsCopy firstObject];
  [(FLGroupViewModelImpl *)v21 setAccountID:firstObject2];

  [(FLGroupViewModelImpl *)v21 setNeedsAccountID:0];
  v56 = v21;
  [v12 addObject:v21];
  v23 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.device"];
  localizedDeviceRowTitle = [(FLTopLevelViewModel *)self localizedDeviceRowTitle];
  selfCopy = self;
  v61 = v9;
  if (localizedDeviceRowTitle)
  {
    [(FLGroupViewModelImpl *)v23 setRowTitle:localizedDeviceRowTitle];
  }

  else
  {
    v25 = FLLoc(@"MULTI_FOLLOW_LIST_TITLE");
    [(FLGroupViewModelImpl *)v23 setRowTitle:v25];
  }

  v64 = v23;
  [v12 addObject:v23];
  v26 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.ndo"];
  v27 = FLLoc(@"NDO_MULTI_FOLLOW_LIST_TITLE");
  [(FLGroupViewModelImpl *)v26 setRowTitle:v27];

  v55 = v26;
  [v12 addObject:v26];
  v28 = +[FLEnvironment currentEnvironment];
  LOBYTE(v26) = [v28 isInternal];

  v62 = accountsCopy;
  v63 = accountCopy;
  if (v26)
  {
    v29 = [[FLGroupViewModelImpl alloc] initWithIdentifier:@"com.apple.followup.group.unknown"];
    [(FLGroupViewModelImpl *)v29 setGroupTitle:@"Internal Only - APPROVAL REQUIRED:"];
    groupTitle = [(FLGroupViewModelImpl *)v29 groupTitle];
    [(FLGroupViewModelImpl *)v29 setRowTitle:groupTitle];

    v31 = v12;
    v54 = v29;
    [v12 addObject:v29];
  }

  else
  {
    v31 = v12;
    v54 = 0;
  }

  allPendingItems = [(FLTopLevelViewModel *)selfCopy allPendingItems];
  v33 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.followup.group.account", @"com.apple.followup.group.device", @"com.apple.followup.group.unknown", @"com.apple.followup.group.services", @"com.apple.followup.group.ndo", @"com.apple.followup.secure.mic", @"com.apple.followup.group.none", 0}];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v34 = allPendingItems;
  v35 = [v34 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v67;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v67 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v66 + 1) + 8 * i);
        groupIdentifier = [v39 groupIdentifier];
        v41 = [v33 containsObject:groupIdentifier];

        if ((v41 & 1) == 0)
        {
          v42 = [FLGroupViewModelImpl alloc];
          groupIdentifier2 = [v39 groupIdentifier];
          v44 = [(FLGroupViewModelImpl *)v42 initWithIdentifier:groupIdentifier2];
          [v31 addObject:v44];

          groupIdentifier3 = [v39 groupIdentifier];
          [v33 addObject:groupIdentifier3];

          v47 = _FLLogSystem(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            groupIdentifier4 = [v39 groupIdentifier];
            *buf = 138412290;
            v71 = groupIdentifier4;
            _os_log_impl(&dword_22E696000, v47, OS_LOG_TYPE_DEFAULT, "Adding dynamic group: %@", buf, 0xCu);
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v36);
  }

  v49 = _FLLogSystem([(FLTopLevelViewModel *)selfCopy mapItems:v34 toGroups:v31 unknownGroup:v54 deviceGroup:v64 simpleAccountGrouping:groupingCopy]);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v31;
    _os_log_impl(&dword_22E696000, v49, OS_LOG_TYPE_DEFAULT, "Groups created: %@", buf, 0xCu);
  }

  Nanoseconds = _FLSignpostGetNanoseconds(v61, v59);
  v51 = _FLSignpostLogSystem(Nanoseconds);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    [FLTopLevelViewModel _groupsForPrimaryAccount:v61 secondaryAccounts:v51 simpleAccountGrouping:?];
  }

  v52 = [v31 copy];

  return v52;
}

- (void)mapItems:(id)items toGroups:(id)groups unknownGroup:(id)group deviceGroup:(id)deviceGroup simpleAccountGrouping:(BOOL)grouping
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  groupsCopy = groups;
  groupCopy = group;
  deviceGroupCopy = deviceGroup;
  v15 = _FLLogSystem(deviceGroupCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = itemsCopy;
    _os_log_impl(&dword_22E696000, v15, OS_LOG_TYPE_DEFAULT, "Starting to build groups from %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__FLTopLevelViewModel_mapItems_toGroups_unknownGroup_deviceGroup_simpleAccountGrouping___block_invoke;
  v19[3] = &unk_278852EE0;
  groupingCopy = grouping;
  v20 = groupsCopy;
  v21 = deviceGroupCopy;
  v22 = groupCopy;
  v16 = groupCopy;
  v17 = deviceGroupCopy;
  v18 = groupsCopy;
  [itemsCopy enumerateObjectsUsingBlock:v19];
}

void __88__FLTopLevelViewModel_mapItems_toGroups_unknownGroup_deviceGroup_simpleAccountGrouping___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 groupIdentifier];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {

    if (v4)
    {
      goto LABEL_20;
    }

    v8 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v21 = v3;
  v8 = 0;
  v9 = *v24;
  do
  {
    v10 = 0;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        if (*(v22 + 56))
        {
          goto LABEL_10;
        }

        v14 = [v21 accountIdentifier];

        if (v14)
        {
          v15 = [v11 accountID];
          v16 = [v21 accountIdentifier];
          v17 = [v15 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_11;
          }

LABEL_10:
          v18 = v11;

          v8 = v18;
          goto LABEL_11;
        }

        if (([v11 needsAccountID] & 1) == 0)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      ++v10;
    }

    while (v7 != v10);
    v19 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v7 = v19;
  }

  while (v19);

  if (!v4)
  {
    v3 = v21;
LABEL_23:
    v20 = *(v22 + 48);
LABEL_24:
    [v20 addItem:v3];

    goto LABEL_25;
  }

  v3 = v21;
  if (v8)
  {
    v20 = v8;
    goto LABEL_24;
  }

LABEL_20:
  [*(v22 + 40) addItem:v3];
LABEL_25:
}

+ (id)redirectURLForItem:(id)item withAction:(id)action
{
  itemCopy = item;
  actionCopy = action;
  groupIdentifier = [itemCopy groupIdentifier];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v10 = [FLTopLevelViewModel alloc];
  targetBundleIdentifier = [itemCopy targetBundleIdentifier];
  v12 = [(FLTopLevelViewModel *)v10 initWithBundleIdentifier:targetBundleIdentifier clientIdentifier:0];

  groups = [(FLTopLevelViewModel *)v12 groups];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __53__FLTopLevelViewModel_redirectURLForItem_withAction___block_invoke;
  v23 = &unk_278852F08;
  v14 = groupIdentifier;
  v24 = v14;
  selfCopy = self;
  v15 = itemCopy;
  v25 = v15;
  v28 = &v30;
  v16 = uniqueIdentifier;
  v26 = v16;
  v17 = actionCopy;
  v27 = v17;
  [groups enumerateObjectsUsingBlock:&v20];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:{v31[5], v20, v21, v22, v23}];

  _Block_object_dispose(&v30, 8);

  return v18;
}

void __53__FLTopLevelViewModel_redirectURLForItem_withAction___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v10 = _FLLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 identifier];
      v12 = MEMORY[0x277CCABB0];
      v13 = [v6 items];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "shouldCoalesceItems")}];
      *buf = 138412802;
      v34 = v11;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_22E696000, v10, OS_LOG_TYPE_DEFAULT, "Group: %@ - %@ - %@", buf, 0x20u);
    }

    v16 = *(a1 + 72);
    v17 = [*(a1 + 40) targetBundleIdentifier];
    v18 = [v16 _prefixFromBundleIdentifier:v17];

    if (v18)
    {
      v19 = [v6 shouldCoalesceItems];
      v20 = 48;
      if (v19)
      {
        v20 = 32;
      }

      v21 = [v18 stringByAppendingString:*(a1 + v20)];
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = *(a1 + 56);
      v25 = *(*(*(a1 + 64) + 8) + 40);
      v26 = *(a1 + 48);
      if (v24)
      {
        v27 = [v24 identifier];
        v28 = [v25 stringByAppendingFormat:@"&itemId=%@&notificationActionId=%@&animated=true", v26, v27];
        v29 = *(*(a1 + 64) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;
      }

      else
      {
        v31 = [v25 stringByAppendingFormat:@"&itemId=%@&animated=true", *(a1 + 48)];
        v32 = *(*(a1 + 64) + 8);
        v27 = *(v32 + 40);
        *(v32 + 40) = v31;
      }
    }

    *a4 = 1;
  }
}

+ (id)_prefixFromBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Preferences"])
  {
    v4 = FLFollowUpPreferencesUrlPrefix;
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"com.apple.Bridge"])
  {
    v4 = FLFollowUpBridgeUrlPrefix;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)allPendingItems
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22E696000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch pending items, not much we can do here... so lets just log it  %@", &v2, 0xCu);
}

- (void)_groupsForPrimaryAccount:(uint64_t)a1 secondaryAccounts:(NSObject *)a2 simpleAccountGrouping:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_22E696000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%llu]: Building groups", &v2, 0xCu);
}

- (void)_groupsForPrimaryAccount:(unint64_t)a1 secondaryAccounts:(uint64_t)a2 simpleAccountGrouping:(os_log_t)log .cold.2(unint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1 / 1000000000.0;
  _os_log_debug_impl(&dword_22E696000, log, OS_LOG_TYPE_DEBUG, "END [%llu] %fs: Building groups", &v3, 0x16u);
}

@end