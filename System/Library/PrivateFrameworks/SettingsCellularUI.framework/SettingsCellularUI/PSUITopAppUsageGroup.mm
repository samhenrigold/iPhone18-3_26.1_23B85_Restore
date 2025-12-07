@interface PSUITopAppUsageGroup
- (PSUITopAppUsageGroup)initWithHostController:(id)controller cellularManagementCache:(id)cache dataUsageStatisticsCache:(id)statisticsCache carrierSpaceManager:(id)manager appsAndCategoriesSubgroup:(id)subgroup;
- (id)specifiers;
- (void)createSpecifiers;
@end

@implementation PSUITopAppUsageGroup

- (PSUITopAppUsageGroup)initWithHostController:(id)controller cellularManagementCache:(id)cache dataUsageStatisticsCache:(id)statisticsCache carrierSpaceManager:(id)manager appsAndCategoriesSubgroup:(id)subgroup
{
  controllerCopy = controller;
  cacheCopy = cache;
  statisticsCacheCopy = statisticsCache;
  managerCopy = manager;
  subgroupCopy = subgroup;
  v28.receiver = self;
  v28.super_class = PSUITopAppUsageGroup;
  v17 = [(PSUITopAppUsageGroup *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_hostController, controller);
    objc_storeStrong(&v18->_managementCache, cache);
    objc_storeStrong(&v18->_statisticsCache, statisticsCache);
    objc_storeStrong(&v18->_carrierSpaceManager, manager);
    objc_storeStrong(&v18->_appsAndCategoriesSubgroup, subgroup);
    v19 = MEMORY[0x277D3FAD8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"APP_DATA_USAGE" value:&stru_287733598 table:@"Cellular"];
    v22 = [v19 groupSpecifierWithID:@"APP_DATA_USAGE" name:v21];
    loadingGroupSpecifier = v18->_loadingGroupSpecifier;
    v18->_loadingGroupSpecifier = v22;

    v24 = [objc_alloc(MEMORY[0x277D3FAD8]) initWithName:&stru_287733598 target:0 set:0 get:0 detail:0 cell:15 edit:{0, managerCopy}];
    spinnerSpecifier = v18->_spinnerSpecifier;
    v18->_spinnerSpecifier = v24;

    v18->_specifierCreationInProgress = 0;
  }

  return v18;
}

- (id)specifiers
{
  v7[2] = *MEMORY[0x277D85DE8];
  createdSpecifiers = self->_createdSpecifiers;
  if (createdSpecifiers && [(NSArray *)createdSpecifiers count])
  {
    v4 = self->_createdSpecifiers;
  }

  else
  {
    [(PSUITopAppUsageGroup *)self createSpecifiers];
    spinnerSpecifier = self->_spinnerSpecifier;
    v7[0] = self->_loadingGroupSpecifier;
    v7[1] = spinnerSpecifier;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  }

  return v4;
}

- (void)createSpecifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_specifierCreationInProgress)
  {
    getLogger = [(PSUITopAppUsageGroup *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Refresh already in progress", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_specifierCreationInProgress = 1;
    objc_sync_exit(selfCopy);

    objc_initWeak(buf, selfCopy);
    v4 = dispatch_get_global_queue(25, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke;
    v5[3] = &unk_279BAA050;
    objc_copyWeak(&v6, buf);
    v5[4] = selfCopy;
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 getLogger];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "Starting specifier creation", buf, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [WeakRetained managementCache];
    v7 = [v6 hasManagedCellularData];

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 getLogger];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEBUG, "Cellular Data is Managed, showing MDM Management Explanation group.", buf, 2u);
      }

      v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DATA_USAGE_MANAGED_GROUP"];
      v11 = [WeakRetained managementCache];
      v12 = [v11 mdmName];

      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"APP_DATA_USAGE_MANAGED" value:&stru_287733598 table:@"Cellular"];
      v16 = [v13 stringWithFormat:v15, v12];
      [v10 setProperty:v16 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v10];
    }

    v17 = [WeakRetained groupSpecifierTitle];

    if (!v17)
    {
      v18 = [MEMORY[0x277D75418] currentDevice];
      v19 = [v18 sf_isChinaRegionCellularDevice];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      if (v19)
      {
        v22 = @"APP_WIRELESS_DATA_USAGE";
      }

      else
      {
        v22 = @"APP_DATA_USAGE";
      }

      v23 = [v20 localizedStringForKey:v22 value:&stru_287733598 table:@"Cellular"];
      [WeakRetained setGroupSpecifierTitle:v23];
    }

    v24 = MEMORY[0x277D3FAD8];
    v25 = [WeakRetained groupSpecifierTitle];
    v26 = [v24 groupSpecifierWithID:@"APP_DATA_USAGE" name:v25];

    [v5 addObject:v26];
    v27 = [WeakRetained statisticsCache];
    if ([v27 useCalendarMonthBillingCycle])
    {
    }

    else
    {
      v34 = [WeakRetained statisticsCache];
      if ([v34 billingCycleSupported])
      {
LABEL_21:

        goto LABEL_22;
      }

      v57 = [WeakRetained carrierSpaceManager];
      v58 = [v57 capabilities];
      v59 = [v58 supportsUsage];

      if (v59)
      {
LABEL_22:
        v35 = [WeakRetained appsAndCategoriesSubgroup];
        v36 = +[CTUIDataUsageSorting usageComparator];
        v37 = [v35 specifiersWithSortComparator:v36];

        v38 = [v37 count];
        if (v38 < 5)
        {
          v43 = v38;
          if (!v38)
          {
            v60 = [WeakRetained statisticsCache];
            v56 = [v60 bundleIDsForAppType:0];

            v61 = [v56 count];
            v62 = objc_loadWeakRetained((a1 + 40));
            v63 = [v62 getLogger];

            v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
            if (v61)
            {
              if (v64)
              {
                v65 = [v56 count];
                *buf = 134217984;
                v89 = v65;
                _os_log_impl(&dword_2658DE000, v63, OS_LOG_TYPE_DEFAULT, "No app usage specifiers, but statistics cache reports %lu installed apps. Will attempt to re-create app specifiers.", buf, 0xCu);
              }

              v66 = dispatch_get_global_queue(25, 0);
              v85[0] = MEMORY[0x277D85DD0];
              v85[1] = 3221225472;
              v85[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_23;
              v85[3] = &unk_279BA9D58;
              v86 = WeakRetained;
              dispatch_async(v66, v85);

              v67 = v86;
            }

            else
            {
              if (v64)
              {
                *buf = 0;
                _os_log_impl(&dword_2658DE000, v63, OS_LOG_TYPE_DEFAULT, "No app usage specifiers, adding No Usage specifier", buf, 2u);
              }

              v68 = [MEMORY[0x277D75418] currentDevice];
              v69 = [v68 sf_isChinaRegionCellularDevice];
              v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v71 = v70;
              if (v69)
              {
                v72 = @"APPS_APPEAR_AFTER_WIRELESS_DATA_USAGE";
              }

              else
              {
                v72 = @"APPS_APPEAR_AFTER_CELLULAR_USAGE";
              }

              v67 = [v70 localizedStringForKey:v72 value:&stru_287733598 table:@"Cellular"];

              v73 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v67 target:0 set:0 get:0 detail:0 cell:3 edit:0];
              [v73 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
              [v5 addObject:v73];
              [WeakRetained setCreatedSpecifiers:v5];
              [WeakRetained setSpecifierCreationInProgress:0];
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_31;
              v82[3] = &unk_279BAA050;
              objc_copyWeak(&v84, (a1 + 40));
              v83 = WeakRetained;
              dispatch_async(MEMORY[0x277D85CD0], v82);

              objc_destroyWeak(&v84);
            }

            goto LABEL_42;
          }

          v44 = objc_loadWeakRetained((a1 + 40));
          v45 = [v44 getLogger];

          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v89 = v43;
            _os_log_debug_impl(&dword_2658DE000, v45, OS_LOG_TYPE_DEBUG, "Adding %lu app specifiers", buf, 0xCu);
          }

          v74 = a1;

          [v5 addObjectsFromArray:v37];
        }

        else
        {
          v39 = objc_loadWeakRetained((a1 + 40));
          v40 = [v39 getLogger];

          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v89 = 5;
            _os_log_debug_impl(&dword_2658DE000, v40, OS_LOG_TYPE_DEBUG, "Adding %lu app specifiers", buf, 0xCu);
          }

          v74 = a1;

          for (i = 0; i != 5; ++i)
          {
            v42 = [v37 objectAtIndexedSubscript:i];
            [v5 addObject:v42];
          }
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v46 = v5;
        v47 = [v46 countByEnumeratingWithState:&v78 objects:v87 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v79;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v79 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v78 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v52 = [WeakRetained hostController];
                [v51 setHostController:v52];
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v78 objects:v87 count:16];
          }

          while (v48);
        }

        v53 = MEMORY[0x277D3FAD8];
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v55 = [v54 localizedStringForKey:@"SHOW_ALL" value:&stru_287733598 table:@"Cellular"];
        v56 = [v53 preferenceSpecifierNamed:v55 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        [v56 setProperty:&unk_287749008 forKey:*MEMORY[0x277D4D898]];
        [v56 setIdentifier:@"SHOW_ALL"];
        [v46 addObject:v56];
        [WeakRetained setCreatedSpecifiers:v46];
        [WeakRetained setSpecifierCreationInProgress:0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_38;
        block[3] = &unk_279BAA050;
        objc_copyWeak(&v77, (v74 + 40));
        v76 = WeakRetained;
        dispatch_async(MEMORY[0x277D85CD0], block);

        objc_destroyWeak(&v77);
LABEL_42:

        goto LABEL_43;
      }
    }

    v28 = objc_loadWeakRetained((a1 + 40));
    v29 = [v28 getLogger];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2658DE000, v29, OS_LOG_TYPE_DEBUG, "Adding Total Usage specifiers", buf, 2u);
    }

    v30 = [WeakRetained totalUsageSubgroup];

    if (!v30)
    {
      v31 = [PSUITotalCellularUsageSubgroup alloc];
      v32 = [WeakRetained statisticsCache];
      v33 = [(PSUITotalCellularUsageSubgroup *)v31 initWithStatisticsCache:v32 andBillingPeriodSource:0 usageType:0];
      [WeakRetained setTotalUsageSubgroup:v33];
    }

    v27 = [WeakRetained totalUsageSubgroup];
    v34 = [v27 specifiers];
    [v5 addObjectsFromArray:v34];
    goto LABEL_21;
  }

LABEL_43:
}

uint64_t __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) setSpecifierCreationInProgress:0];
  v2 = *(a1 + 32);

  return [v2 createSpecifiers];
}

void __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained getLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Top App Usage Group specifier creation complete, asking host to reload.", v5, 2u);
  }

  v4 = [*(a1 + 32) hostController];
  [v4 reloadSpecifiers];
}

void __40__PSUITopAppUsageGroup_createSpecifiers__block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained getLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Top App Usage Group specifier creation complete, asking host to reload.", v5, 2u);
  }

  v4 = [*(a1 + 32) hostController];
  [v4 reloadSpecifiers];
}

@end