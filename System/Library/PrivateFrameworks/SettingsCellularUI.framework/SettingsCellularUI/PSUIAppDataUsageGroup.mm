@interface PSUIAppDataUsageGroup
- (PSListController)hostController;
- (PSSpecifier)groupSpecifier;
- (PSUIAppDataUsageGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)specifiers;
- (void)calculateUsage;
- (void)didFailToSetPolicyForSpecifier:(id)specifier;
@end

@implementation PSUIAppDataUsageGroup

- (PSUIAppDataUsageGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = PSUIAppDataUsageGroup;
  v8 = [(PSUIAppDataUsageGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_hostController, controllerCopy);
    objc_storeWeak(&v9->_groupSpecifier, specifierCopy);
    v10 = [[CTUIListLoadingGroup alloc] initWithHostController:controllerCopy groupSpecifier:specifierCopy];
    loadingGroup = v9->_loadingGroup;
    v9->_loadingGroup = v10;
  }

  return v9;
}

- (id)specifiers
{
  loadingGroup = [(PSUIAppDataUsageGroup *)self loadingGroup];
  specifiers = [loadingGroup specifiers];

  return specifiers;
}

- (void)didFailToSetPolicyForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PSUIAppDataUsageGroup_didFailToSetPolicyForSpecifier___block_invoke;
  v6[3] = &unk_279BA9D30;
  v6[4] = self;
  v7 = specifierCopy;
  v5 = specifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__PSUIAppDataUsageGroup_didFailToSetPolicyForSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostController];
  [v2 reloadSpecifier:*(a1 + 40)];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (void)calculateUsage
{
  objc_initWeak(&location, self);
  mEMORY[0x277D4D860] = [MEMORY[0x277D4D860] sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke;
  v4[3] = &unk_279BA9DA8;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [mEMORY[0x277D4D860] fetchDeviceDataUsageWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s creating specifiers", &buf, 0xCu);
  }

  v3 = [PSUIAppsAndCategoriesDataUsageSubgroup alloc];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277D4D860] sharedInstance];
  v6 = [MEMORY[0x277D4D840] sharedInstance];
  v7 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v3 initWithPolicySpecifierDelegate:v4 statisticsCache:v5 policyCache:v6 usageType:0];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v8 = +[CTUIDataUsageSorting userSelectedComparator];
  v43 = [(PSUIAppsAndCategoriesDataUsageSubgroup *)v7 specifiersWithSortComparator:v8];

  v9 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 136315138;
    v38 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s prefetching policies", v37, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = *(*(&buf + 1) + 40);
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained prefetchResourcesFor:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  if ([*(*(&buf + 1) + 40) count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = *(*(&buf + 1) + 40);
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v17)
    {
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v26 + 1) + 8 * v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [*(a1 + 32) hostController];
            [v20 setHostController:v21];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v17);
    }

    v22 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136315138;
      v38 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke_2";
      _os_log_impl(&dword_2658DE000, v22, OS_LOG_TYPE_DEFAULT, "%s dispatching app specifiers update to main thread", v37, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_16;
    block[3] = &unk_279BA9D80;
    block[4] = *(a1 + 32);
    block[5] = &buf;
    objc_copyWeak(&v25, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v25);
  }

  else
  {
    v23 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136315138;
      v38 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
      _os_log_impl(&dword_2658DE000, v23, OS_LOG_TYPE_DEFAULT, "%s no apps to show", v37, 0xCu);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_5;
    v30[3] = &unk_279BA9D58;
    v30[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v30);
  }

  _Block_object_dispose(&buf, 8);
}

void __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) groupSpecifier];
  [v2 setName:&stru_287733598];

  v5 = [*(a1 + 32) groupSpecifier];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APPS_APPEAR_AFTER_WIRELESS_DATA_USAGE" value:&stru_287733598 table:@"Cellular"];
  [v5 setProperty:v4 forKey:*MEMORY[0x277D3FF88]];
}

void __39__PSUIAppDataUsageGroup_calculateUsage__block_invoke_16(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Sort options" target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v2 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v15[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v4 = [v3 arrayByAddingObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"USE_WIRELESS_DATA" value:&stru_287733598 table:@"Cellular"];
  v9 = [*(a1 + 32) groupSpecifier];
  [v9 setName:v8];

  v10 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PSUIAppDataUsageGroup calculateUsage]_block_invoke";
    _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s updating app specifiers on main thread", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = [WeakRetained loadingGroup];
  [v12 setSpecifiers:*(*(*(a1 + 40) + 8) + 40)];
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

@end