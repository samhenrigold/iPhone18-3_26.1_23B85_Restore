@interface SBApplicationShortcutPolluterRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBApplicationShortcutPolluterRecipe

- (void)handleVolumeIncrease
{
  v37 = *MEMORY[0x277D85DE8];
  v28 = +[SBApplicationController sharedInstance];
  v2 = +[SBApplicationShortcutStoreManager sharedManager];
  v3 = SBLogAppShortcuts();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Populating mock shortcuts...", buf, 2u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [MEMORY[0x277D0AC98] applicationsWithAvailableStores];
  v29 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v29)
  {
    v27 = *v31;
    v5 = 0x277CBE000uLL;
    *&v4 = 138412290;
    v25 = v4;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = [v28 applicationWithBundleIdentifier:{v7, v25}];
        info = [v8 info];

        dynamicApplicationShortcutItemsVersion = [info dynamicApplicationShortcutItemsVersion];
        v11 = v2;
        v12 = [v2 applicationShortcutItemsForBundleIdentifier:v7 withVersion:dynamicApplicationShortcutItemsVersion];
        v13 = [v12 mutableCopy];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = objc_opt_new();
        }

        v16 = v15;

        v17 = v5;
        v18 = objc_opt_new();
        v19 = v18;
        v20 = 20;
        do
        {
          v21 = __mockShortcutPlist(v18);
          [v19 addObject:v21];

          --v20;
        }

        while (v20);
        v22 = SBLogAppShortcuts();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = v25;
          v35 = v7;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "Populated mock shortcuts for %@", buf, 0xCu);
        }

        v23 = [MEMORY[0x277D669C8] _staticApplicationShortcutItemsFromInfoPlistEntry:v19];
        [v16 addObjectsFromArray:v23];

        v2 = v11;
        [v11 setApplicationShortcutItems:v16 forBundleIdentifier:v7 withVersion:dynamicApplicationShortcutItemsVersion];

        v5 = v17;
      }

      v29 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v29);
  }

  [v2 saveSynchronously];
  v24 = SBLogAppShortcuts();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_INFO, "Populated mock shortcuts", buf, 2u);
  }
}

- (void)handleVolumeDecrease
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = +[SBDefaults localDefaults];
  iconDefaults = [v2 iconDefaults];
  [iconDefaults setSuppressAppShortcutTruncation:0];

  v5 = __mockShortcutPlist(v4);
  v6 = [v5 objectForKey:@"UIApplicationShortcutItemType"];

  v8 = __mockShortcutPlist(v7);
  v39 = [v8 objectForKey:@"UIApplicationShortcutItemTitle"];

  v33 = +[SBApplicationController sharedInstance];
  v9 = +[SBApplicationShortcutStoreManager sharedManager];
  v10 = SBLogAppShortcuts();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Removing mock shortcuts...", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [MEMORY[0x277D0AC98] applicationsWithAvailableStores];
  v34 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v34)
  {
    v31 = *v45;
    v32 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v11;
        v12 = *(*(&v44 + 1) + 8 * v11);
        v13 = [v33 applicationWithBundleIdentifier:v12];
        info = [v13 info];

        v36 = info;
        v38 = v12;
        dynamicApplicationShortcutItemsVersion = [info dynamicApplicationShortcutItemsVersion];
        v15 = [v9 applicationShortcutItemsForBundleIdentifier:v12 withVersion:?];
        v16 = [v15 mutableCopy];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = objc_opt_new();
        }

        v19 = v18;

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v20 = [v19 copy];
        v21 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v41;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v40 + 1) + 8 * i);
              type = [v25 type];
              if ([type isEqualToString:v6])
              {
                localizedTitle = [v25 localizedTitle];
                v28 = [localizedTitle isEqualToString:v39];

                if (!v28)
                {
                  continue;
                }

                [v19 removeObject:v25];
                type = SBLogAppShortcuts();
                if (os_log_type_enabled(type, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v49 = v38;
                  _os_log_impl(&dword_21ED4E000, type, OS_LOG_TYPE_INFO, "Removing mock shortcut from %@", buf, 0xCu);
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v22);
        }

        v9 = v32;
        [v32 setApplicationShortcutItems:v19 forBundleIdentifier:v38 withVersion:dynamicApplicationShortcutItemsVersion];

        v11 = v37 + 1;
      }

      while (v37 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v34);
  }

  [v9 saveSynchronously];
  v29 = SBLogAppShortcuts();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Removed all mock shortcuts.", buf, 2u);
  }
}

@end