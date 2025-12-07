@interface ATXActionPredictionBlacklist
+ (id)sharedInstanceWithAppPredictionBlacklist;
+ (id)sharedInstanceWithoutAppPredictionBlacklist;
- (ATXActionPredictionBlacklist)initWithAppPredictionBlacklist:(id)blacklist;
- (BOOL)isBundleIdBlacklisted:(id)blacklisted;
- (BOOL)shouldPredictBundleId:(id)id action:(id)action;
- (BOOL)shouldPredictBundleIdForShortcuts:(id)shortcuts action:(id)action forPrimaryShortcuts:(BOOL)primaryShortcuts;
- (id)_prefsDisabledApps;
- (id)disabledBundlesInSettings;
- (id)homeScreenDisabledShortcutsInSettings;
- (id)shouldPredictBundleIdHelper:(id)helper action:(id)action;
- (void)_handlePrefsChange;
- (void)addToBlacklists:(id)blacklists blacklistAppList:(id)list blacklistActionList:(id)actionList blacklistAppAndActionList:(id)andActionList;
- (void)dealloc;
- (void)setBlacklistFromAssetData:(id)data predictionBlacklist:(id)blacklist shortcutBlacklist:(id)shortcutBlacklist primaryShortcutBlacklist:(id)primaryShortcutBlacklist;
@end

@implementation ATXActionPredictionBlacklist

- (ATXActionPredictionBlacklist)initWithAppPredictionBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  v19.receiver = self;
  v19.super_class = ATXActionPredictionBlacklist;
  v5 = [(ATXActionPredictionBlacklist *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D425F8]);
    v7 = objc_opt_new();
    v8 = [v6 initWithGuardedData:v7];
    lock = v5->_lock;
    v5->_lock = v8;

    objc_storeWeak(&v5->_appPredictionBlacklist, blacklistCopy);
    v10 = +[_ATXGlobals sharedInstance];
    blacklistedAppActions = [v10 blacklistedAppActions];
    blacklistedAppActionsForPredictions = [v10 blacklistedAppActionsForPredictions];
    blacklistedAppActionsForShortcuts = [v10 blacklistedAppActionsForShortcuts];
    blacklistedAppActionsForPrimaryShortcuts = [v10 blacklistedAppActionsForPrimaryShortcuts];
    [(ATXActionPredictionBlacklist *)v5 setBlacklistFromAssetData:blacklistedAppActions predictionBlacklist:blacklistedAppActionsForPredictions shortcutBlacklist:blacklistedAppActionsForShortcuts primaryShortcutBlacklist:blacklistedAppActionsForPrimaryShortcuts];

    [(ATXActionPredictionBlacklist *)v5 _handlePrefsChange];
    objc_initWeak(&location, v5);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__ATXActionPredictionBlacklist_initWithAppPredictionBlacklist___block_invoke;
    v16[3] = &unk_2785977B0;
    objc_copyWeak(&v17, &location);
    v5->_prefsChangeNotificationToken = [blacklistCopy registerPrefsChangeHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __63__ATXActionPredictionBlacklist_initWithAppPredictionBlacklist___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePrefsChange];
}

+ (id)sharedInstanceWithoutAppPredictionBlacklist
{
  if (sharedInstanceWithoutAppPredictionBlacklist_onceToken != -1)
  {
    +[ATXActionPredictionBlacklist sharedInstanceWithoutAppPredictionBlacklist];
  }

  v3 = sharedInstanceWithoutAppPredictionBlacklist_instance;

  return v3;
}

uint64_t __75__ATXActionPredictionBlacklist_sharedInstanceWithoutAppPredictionBlacklist__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedInstanceWithoutAppPredictionBlacklist_instance;
  sharedInstanceWithoutAppPredictionBlacklist_instance = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (id)sharedInstanceWithAppPredictionBlacklist
{
  if (sharedInstanceWithAppPredictionBlacklist_onceToken != -1)
  {
    +[ATXActionPredictionBlacklist sharedInstanceWithAppPredictionBlacklist];
  }

  v3 = sharedInstanceWithAppPredictionBlacklist_instance;

  return v3;
}

void __72__ATXActionPredictionBlacklist_sharedInstanceWithAppPredictionBlacklist__block_invoke()
{
  v0 = [ATXActionPredictionBlacklist alloc];
  v3 = +[ATXAppPredictionBlacklist sharedInstance];
  v1 = [(ATXActionPredictionBlacklist *)v0 initWithAppPredictionBlacklist:v3];
  v2 = sharedInstanceWithAppPredictionBlacklist_instance;
  sharedInstanceWithAppPredictionBlacklist_instance = v1;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_appPredictionBlacklist);
  [WeakRetained deregisterPrefsChangeHandlerWithToken:self->_prefsChangeNotificationToken];

  v4.receiver = self;
  v4.super_class = ATXActionPredictionBlacklist;
  [(ATXActionPredictionBlacklist *)&v4 dealloc];
}

- (void)setBlacklistFromAssetData:(id)data predictionBlacklist:(id)blacklist shortcutBlacklist:(id)shortcutBlacklist primaryShortcutBlacklist:(id)primaryShortcutBlacklist
{
  v67[2] = *MEMORY[0x277D85DE8];
  primaryShortcutBlacklistCopy = primaryShortcutBlacklist;
  shortcutBlacklistCopy = shortcutBlacklist;
  blacklistCopy = blacklist;
  dataCopy = data;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v37 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v40 = objc_opt_new();
  v41 = objc_opt_new();
  v42 = objc_opt_new();
  v67[0] = v10;
  v67[1] = v37;
  v39 = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v66[0] = v11;
  v66[1] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v65[0] = v12;
  v65[1] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  [(ATXActionPredictionBlacklist *)self addToBlacklists:dataCopy blacklistAppList:v15 blacklistActionList:v16 blacklistAppAndActionList:v17];

  v64 = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v63 = v11;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v62 = v12;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  [(ATXActionPredictionBlacklist *)self addToBlacklists:blacklistCopy blacklistAppList:v18 blacklistActionList:v19 blacklistAppAndActionList:v20];

  v61 = v37;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v60 = v13;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  v59 = v14;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  [(ATXActionPredictionBlacklist *)self addToBlacklists:shortcutBlacklistCopy blacklistAppList:v21 blacklistActionList:v22 blacklistAppAndActionList:v23];

  v58 = v40;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v57 = v41;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  v56 = v42;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  [(ATXActionPredictionBlacklist *)self addToBlacklists:primaryShortcutBlacklistCopy blacklistAppList:v24 blacklistActionList:v25 blacklistAppAndActionList:v26];

  lock = self->_lock;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __121__ATXActionPredictionBlacklist_setBlacklistFromAssetData_predictionBlacklist_shortcutBlacklist_primaryShortcutBlacklist___block_invoke;
  v46[3] = &unk_27859E400;
  v47 = v39;
  v48 = v11;
  v49 = v12;
  v50 = v37;
  v51 = v13;
  v52 = v14;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v45 = v42;
  v28 = v41;
  v29 = v40;
  v30 = v14;
  v31 = v13;
  v32 = v37;
  v33 = v49;
  v34 = v48;
  v35 = v39;
  [(_PASLock *)lock runWithLockAcquired:v46];
}

void __121__ATXActionPredictionBlacklist_setBlacklistFromAssetData_predictionBlacklist_shortcutBlacklist_primaryShortcutBlacklist___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [*(a1 + 40) copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [*(a1 + 48) copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [*(a1 + 56) copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [*(a1 + 64) copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [*(a1 + 72) copy];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [*(a1 + 80) copy];
  v18 = v4[7];
  v4[7] = v17;

  v19 = [*(a1 + 88) copy];
  v20 = v4[8];
  v4[8] = v19;

  v21 = [*(a1 + 96) copy];
  v22 = v4[9];
  v4[9] = v21;
}

- (void)addToBlacklists:(id)blacklists blacklistAppList:(id)list blacklistActionList:(id)actionList blacklistAppAndActionList:(id)andActionList
{
  v64 = *MEMORY[0x277D85DE8];
  blacklistsCopy = blacklists;
  listCopy = list;
  actionListCopy = actionList;
  andActionListCopy = andActionList;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = blacklistsCopy;
  v10 = [blacklistsCopy countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v57;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * i);
        second = [v14 second];
        v16 = [second isEqualToString:@"_"];

        if (v16)
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v17 = listCopy;
          v18 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v53;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v53 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v52 + 1) + 8 * j);
                first = [v14 first];
                [v22 addObject:first];
              }

              v19 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
            }

            while (v19);
          }
        }

        else
        {
          first2 = [v14 first];
          v25 = [first2 isEqualToString:@"_"];

          if (v25)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v17 = actionListCopy;
            v26 = [v17 countByEnumeratingWithState:&v48 objects:v61 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v49;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v49 != v28)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v30 = *(*(&v48 + 1) + 8 * k);
                  second2 = [v14 second];
                  [v30 addObject:second2];
                }

                v27 = [v17 countByEnumeratingWithState:&v48 objects:v61 count:16];
              }

              while (v27);
            }
          }

          else
          {
            v32 = objc_alloc(MEMORY[0x277D42648]);
            first3 = [v14 first];
            second3 = [v14 second];
            v17 = [v32 initWithFirst:first3 second:second3];

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v35 = andActionListCopy;
            v36 = [v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v45;
              do
              {
                for (m = 0; m != v37; ++m)
                {
                  if (*v45 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  [*(*(&v44 + 1) + 8 * m) addObject:v17];
                }

                v37 = [v35 countByEnumeratingWithState:&v44 objects:v60 count:16];
              }

              while (v37);
            }
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v11);
  }
}

- (id)disabledBundlesInSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_appPredictionBlacklist);
  disabledBundleIds = [WeakRetained disabledBundleIds];

  return disabledBundleIds;
}

- (id)_prefsDisabledApps
{
  disabledBundlesInSettings = [(ATXActionPredictionBlacklist *)self disabledBundlesInSettings];
  homeScreenDisabledShortcutsInSettings = [(ATXActionPredictionBlacklist *)self homeScreenDisabledShortcutsInSettings];
  if (homeScreenDisabledShortcutsInSettings)
  {
    v5 = [disabledBundlesInSettings setByAddingObjectsFromArray:homeScreenDisabledShortcutsInSettings];
  }

  else
  {
    v5 = disabledBundlesInSettings;
  }

  v6 = v5;

  return v6;
}

- (id)homeScreenDisabledShortcutsInSettings
{
  v2 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (void)_handlePrefsChange
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__ATXActionPredictionBlacklist__handlePrefsChange__block_invoke;
  v3[3] = &unk_27859E428;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __50__ATXActionPredictionBlacklist__handlePrefsChange__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _prefsDisabledApps];
  v5 = v3[10];
  v3[10] = v4;

  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v3[10];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - new action blacklist: %@", &v11, 0x16u);
  }
}

- (BOOL)isBundleIdBlacklisted:(id)blacklisted
{
  blacklistedCopy = blacklisted;
  v5 = blacklistedCopy;
  if (blacklistedCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__ATXActionPredictionBlacklist_isBundleIdBlacklisted___block_invoke;
    v9[3] = &unk_27859E450;
    v11 = &v12;
    v10 = blacklistedCopy;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __54__ATXActionPredictionBlacklist_isBundleIdBlacklisted___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4[10] containsObject:*(a1 + 32)])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v4[1] containsObject:*(a1 + 32)];
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (BOOL)shouldPredictBundleId:(id)id action:(id)action
{
  idCopy = id;
  actionCopy = action;
  v8 = actionCopy;
  v9 = 0;
  if (idCopy && actionCopy)
  {
    v10 = [(ATXActionPredictionBlacklist *)self shouldPredictBundleIdHelper:idCopy action:actionCopy];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    lock = self->_lock;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__ATXActionPredictionBlacklist_shouldPredictBundleId_action___block_invoke;
    v14[3] = &unk_27859E450;
    v16 = &v17;
    v12 = v10;
    v15 = v12;
    [(_PASLock *)lock runWithLockAcquired:v14];
    v9 = *(v18 + 24) ^ 1;

    _Block_object_dispose(&v17, 8);
  }

  return v9 & 1;
}

void __61__ATXActionPredictionBlacklist_shouldPredictBundleId_action___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(v9 + 3) containsObject:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v9 + 1);
    v4 = [*(a1 + 32) first];
    if ([v3 containsObject:v4])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v5 = *(v9 + 10);
      v6 = [*(a1 + 32) first];
      if ([v5 containsObject:v6])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        v7 = *(v9 + 2);
        v8 = [*(a1 + 32) second];
        *(*(*(a1 + 40) + 8) + 24) = [v7 containsObject:v8];
      }
    }
  }
}

- (BOOL)shouldPredictBundleIdForShortcuts:(id)shortcuts action:(id)action forPrimaryShortcuts:(BOOL)primaryShortcuts
{
  shortcutsCopy = shortcuts;
  actionCopy = action;
  v10 = actionCopy;
  v11 = 0;
  if (shortcutsCopy && actionCopy)
  {
    v12 = [(ATXActionPredictionBlacklist *)self shouldPredictBundleIdHelper:shortcutsCopy action:actionCopy];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    lock = self->_lock;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__ATXActionPredictionBlacklist_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke;
    v16[3] = &unk_27859E478;
    v18 = &v25;
    v14 = v12;
    primaryShortcutsCopy = primaryShortcuts;
    v17 = v14;
    v19 = &v21;
    [(_PASLock *)lock runWithLockAcquired:v16];
    if (v26[3])
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v22 + 24) ^ 1;
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  return v11 & 1;
}

void __93__ATXActionPredictionBlacklist_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([*(v16 + 6) containsObject:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v16 + 4);
    v4 = [*(a1 + 32) first];
    if ([v3 containsObject:v4])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v5 = *(v16 + 10);
      v6 = [*(a1 + 32) first];
      if ([v5 containsObject:v6])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        v7 = *(v16 + 5);
        v8 = [*(a1 + 32) second];
        *(*(*(a1 + 40) + 8) + 24) = [v7 containsObject:v8];
      }
    }
  }

  v9 = v16;
  if (*(a1 + 56) == 1)
  {
    if ([*(v16 + 9) containsObject:*(a1 + 32)])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v10 = *(v16 + 7);
      v11 = [*(a1 + 32) first];
      if ([v10 containsObject:v11])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        v12 = *(v16 + 10);
        v13 = [*(a1 + 32) first];
        if ([v12 containsObject:v13])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        else
        {
          v14 = *(v16 + 8);
          v15 = [*(a1 + 32) second];
          *(*(*(a1 + 48) + 8) + 24) = [v14 containsObject:v15];
        }
      }
    }

    v9 = v16;
  }
}

- (id)shouldPredictBundleIdHelper:(id)helper action:(id)action
{
  actionCopy = action;
  helperCopy = helper;
  lowercaseString = [actionCopy lowercaseString];
  v8 = [lowercaseString containsString:@"nsua"];

  if (v8)
  {
    v9 = [actionCopy substringFromIndex:5];

    actionCopy = v9;
  }

  v10 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:helperCopy second:actionCopy];

  return v10;
}

@end