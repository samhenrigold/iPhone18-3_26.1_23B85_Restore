@interface HFRedesignMigrationController
- (BOOL)_accessoryLikeItemIsHighValue:(id)value;
- (BOOL)_accessoryLikeObjectMustUseLargerSize:(id)size;
- (HFRedesignMigrationController)initWithHome:(id)home;
- (double)_computeUsageThreshold:(id)threshold;
- (id)_clearHomeDashboardSectionOrder;
- (id)_migrateFavorites;
- (id)_migrateRoomOrder;
- (id)_migrateServiceItemsOrderInRooms;
- (id)_migrateTileSize;
- (id)_sortAccessoriesInRoom:(id)room fromScoreMap:(id)map;
- (void)_reduceScoreForRepeatingPattern:(id)pattern accessoryScores:(id)scores;
- (void)_updateScoreForAccessoriesInGroup:(id)group accessoryScores:(id)scores incrementBy:(int64_t)by singleAccessoryIncrement:(int64_t)increment;
- (void)performMigrationIfNeeded;
- (void)performMigrationSuccessTasks;
@end

@implementation HFRedesignMigrationController

- (HFRedesignMigrationController)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFRedesignMigrationController;
  v6 = [(HFRedesignMigrationController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [HFItemProviderUtilities _legacyFavoriteServicesForHome:homeCopy withLimit:-1];
    legacyFavoriteTiles = v7->_legacyFavoriteTiles;
    v7->_legacyFavoriteTiles = v8;
  }

  return v7;
}

- (void)performMigrationIfNeeded
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = objc_msgSend_home(self);
  LOBYTE(v3) = [v3 homeNeedsMigration:v4];

  if ((v3 & 1) == 0)
  {
    _migrateFavorites = HFLogForCategory(9uLL);
    if (!os_log_type_enabled(_migrateFavorites, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v24 = objc_msgSend_home(self);
    *buf = 138412290;
    v29 = v24;
    v25 = "HFRedesignMigrationController: Migration not needed for home: %@";
LABEL_12:
    _os_log_impl(&dword_20D9BF000, _migrateFavorites, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);

    goto LABEL_13;
  }

  v5 = objc_msgSend_home(self);
  v6 = objc_msgSend_home(self);
  currentUser = [v6 currentUser];
  v8 = [v5 homeAccessControlForUser:currentUser];
  isAdministrator = [v8 isAdministrator];

  _migrateFavorites = HFLogForCategory(9uLL);
  v11 = os_log_type_enabled(_migrateFavorites, OS_LOG_TYPE_DEFAULT);
  if ((isAdministrator & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v24 = objc_msgSend_home(self);
    *buf = 138412290;
    v29 = v24;
    v25 = "HFRedesignMigrationController: User is not admin; skipping migration for home %@";
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = objc_msgSend_home(self);
    *buf = 138412290;
    v29 = v12;
    _os_log_impl(&dword_20D9BF000, _migrateFavorites, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Performing migration for home %@", buf, 0xCu);
  }

  v13 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Legacy favorites:", buf, 2u);
  }

  legacyFavoriteTiles = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
  [legacyFavoriteTiles na_each:&__block_literal_global_238];

  v15 = MEMORY[0x277D2C900];
  _migrateFavorites = [(HFRedesignMigrationController *)self _migrateFavorites];
  v27[0] = _migrateFavorites;
  _migrateRoomOrder = [(HFRedesignMigrationController *)self _migrateRoomOrder];
  v27[1] = _migrateRoomOrder;
  _migrateServiceItemsOrderInRooms = [(HFRedesignMigrationController *)self _migrateServiceItemsOrderInRooms];
  v27[2] = _migrateServiceItemsOrderInRooms;
  _clearHomeDashboardSectionOrder = [(HFRedesignMigrationController *)self _clearHomeDashboardSectionOrder];
  v27[3] = _clearHomeDashboardSectionOrder;
  _migrateShowOnHomeDashboard = [(HFRedesignMigrationController *)self _migrateShowOnHomeDashboard];
  v27[4] = _migrateShowOnHomeDashboard;
  _migrateTileSize = [(HFRedesignMigrationController *)self _migrateTileSize];
  v27[5] = _migrateTileSize;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];
  v22 = [v15 chainFutures:v21];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__HFRedesignMigrationController_performMigrationIfNeeded__block_invoke_4;
  v26[3] = &unk_277DF5938;
  v26[4] = self;
  v23 = [v22 flatMap:v26];
  [(HFRedesignMigrationController *)self setMigrationFuture:v23];

LABEL_13:
}

void __57__HFRedesignMigrationController_performMigrationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

id __57__HFRedesignMigrationController_performMigrationIfNeeded__block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Completed migration for home %@", &v8, 0xCu);
  }

  v4 = objc_msgSend_home(*(a1 + 32));
  v5 = [v4 hf_setHomeHasMigratedForRedesign:1];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

- (void)performMigrationSuccessTasks
{
  objc_initWeak(&location, self);
  migrationFuture = [(HFRedesignMigrationController *)self migrationFuture];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __61__HFRedesignMigrationController_performMigrationSuccessTasks__block_invoke;
  v8 = &unk_277DFF118;
  objc_copyWeak(&v9, &location);
  v4 = [migrationFuture addSuccessBlock:&v5];

  [(HFRedesignMigrationController *)self setMigrationFuture:0, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__HFRedesignMigrationController_performMigrationSuccessTasks__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"HFRedesignMigrationTileSizeHasUpdatedNotification" object:WeakRetained];
}

- (id)_migrateFavorites
{
  v33 = *MEMORY[0x277D85DE8];
  legacyFavoriteTiles = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
  v4 = [legacyFavoriteTiles count];

  v5 = objc_msgSend_home(self);
  hf_accessoryLikeObjects = [v5 hf_accessoryLikeObjects];
  v7 = [hf_accessoryLikeObjects count];

  if (v7)
  {
    v8 = v4 / v7;
    if (v8 >= 0.33 || fabsf(v8 + -0.33) < 0.00000011921)
    {
      v10 = 6;
      if (v4 < 6)
      {
        v10 = v4;
      }

      if (v7 <= 0x11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }

    else if (v4 >= 0xC)
    {
      v9 = 12;
    }

    else
    {
      v9 = v4;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v28 = v9;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Migrating %lu favorites (%lu previous favorites, %lu accessories total)", buf, 0x20u);
  }

  array = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    v14 = 0;
    *&v13 = 138412290;
    v26 = v13;
    do
    {
      legacyFavoriteTiles2 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
      v16 = [legacyFavoriteTiles2 count];

      if (v14 >= v16)
      {
        break;
      }

      legacyFavoriteTiles3 = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
      v18 = [legacyFavoriteTiles3 objectAtIndexedSubscript:v14];
      v19 = &unk_28252A588;
      if ([v18 conformsToProtocol:v19])
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v22 = HFLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v26;
        v28 = v21;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Migrating favorite: %@", buf, 0xCu);
      }

      v23 = [v21 hf_updateIsFavorite:1];
      [array addObject:v23];

      ++v14;
    }

    while (v9 != v14);
  }

  if ([array count])
  {
    [MEMORY[0x277D2C900] combineAllFutures:array];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v24 = ;

  return v24;
}

- (id)_migrateRoomOrder
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_home(self, a2);
  hf_reorderableRoomsList = [v3 hf_reorderableRoomsList];
  v5 = [hf_reorderableRoomsList mutableCopy];

  v6 = [HFReorderableHomeKitItemList alloc];
  v7 = objc_msgSend_home(self);
  v8 = [(HFReorderableHomeKitItemList *)v6 initWithApplicationDataContainer:v7 category:@"homeRooms_legacy"];
  v9 = [(HFReorderableHomeKitItemList *)v8 mutableCopy];

  v10 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sortedHomeKitObjectIdentifiers = [v9 sortedHomeKitObjectIdentifiers];
    *buf = 138412290;
    v39 = sortedHomeKitObjectIdentifiers;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Legacy room order: %@", buf, 0xCu);
  }

  if ([v9 isEmpty])
  {
    sortedHomeKitObjectIdentifiers2 = [v5 sortedHomeKitObjectIdentifiers];
    [v9 setSortedHomeKitIdentifiers:sortedHomeKitObjectIdentifiers2];

    v13 = [v9 saveWithSender:self];
  }

  v31 = v5;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  legacyFavoriteTiles = [(HFRedesignMigrationController *)self legacyFavoriteTiles];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke;
  v36[3] = &unk_277E02F00;
  v16 = dictionary;
  v37 = v16;
  [legacyFavoriteTiles enumerateObjectsUsingBlock:v36];

  v17 = objc_msgSend_home(self);
  hf_allRooms = [v17 hf_allRooms];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke_2;
  v32[3] = &unk_277E02F28;
  v30 = v16;
  v33 = v30;
  selfCopy = self;
  v29 = v9;
  v35 = v29;
  v19 = [hf_allRooms sortedArrayUsingComparator:v32];

  v20 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Migrating to room order:", buf, 2u);
  }

  if ([v19 count])
  {
    v21 = 0;
    do
    {
      v22 = HFLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v19 objectAtIndexedSubscript:v21];
        name = [v23 name];
        v25 = [v19 objectAtIndexedSubscript:v21];
        uniqueIdentifier = [v25 uniqueIdentifier];
        *buf = 134218498;
        v39 = v21;
        v40 = 2112;
        v41 = name;
        v42 = 2112;
        v43 = uniqueIdentifier;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: %lu: %@ (%@)", buf, 0x20u);
      }

      ++v21;
    }

    while (v21 < [v19 count]);
  }

  [v31 setSortedHomeKitObjects:v19];
  v27 = [v31 saveWithSender:self];

  return v27;
}

void __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  if ([v17 conformsToProtocol:&unk_28252A588])
  {
    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 hf_safeRoom];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v7 uniqueIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB18] array];
    }

    v13 = v12;

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v13 addObject:v14];

    v15 = *(a1 + 32);
    v16 = [v7 uniqueIdentifier];
    [v15 setObject:v13 forKeyedSubscript:v16];
  }
}

uint64_t __50__HFRedesignMigrationController__migrateRoomOrder__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 uniqueIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 valueForKeyPath:@"@avg.self"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = [*(a1 + 40) legacyFavoriteTiles];
    v12 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  }

  v15 = *(a1 + 32);
  v16 = [v6 uniqueIdentifier];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = [v17 valueForKeyPath:@"@avg.self"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [*(a1 + 40) legacyFavoriteTiles];
    v20 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
  }

  v23 = [v12 compare:v20];
  if (!v23)
  {
    v24 = *(a1 + 32);
    v25 = [v5 uniqueIdentifier];
    v26 = [v24 objectForKeyedSubscript:v25];
    v27 = [v26 objectAtIndex:0];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [*(a1 + 40) legacyFavoriteTiles];
      v29 = [v30 numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
    }

    v32 = *(a1 + 32);
    v33 = [v6 uniqueIdentifier];
    v34 = [v32 objectForKeyedSubscript:v33];
    v35 = [v34 objectAtIndex:0];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v38 = MEMORY[0x277CCABB0];
      v39 = [*(a1 + 40) legacyFavoriteTiles];
      v37 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "count")}];
    }

    v23 = [v29 compare:v37];
    if (!v23)
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = [v5 hf_accessoryLikeObjects];
      v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(v41, "count")}];

      v43 = MEMORY[0x277CCABB0];
      v44 = [v6 hf_accessoryLikeObjects];
      v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(v44, "count")}];

      v23 = [v45 compare:v42];
      if (!v23)
      {
        v46 = [*(a1 + 48) sortedHomeKitObjectComparator];
        v23 = (v46)[2](v46, v5, v6);
      }
    }
  }

  return v23;
}

- (id)_clearHomeDashboardSectionOrder
{
  v3 = objc_msgSend_home(self, a2);
  hf_reorderableDashboardSectionList = [v3 hf_reorderableDashboardSectionList];

  [hf_reorderableDashboardSectionList setSortedItems:MEMORY[0x277CBEBF8]];
  v5 = [hf_reorderableDashboardSectionList saveWithSender:self];

  return v5;
}

- (id)_migrateServiceItemsOrderInRooms
{
  v75 = *MEMORY[0x277D85DE8];
  v50 = +[HFAccessoryListUtilities sortedAccessoryTypeGroups];
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  selfCopy = self;
  v3 = objc_msgSend_home(self);
  hf_allRooms = [v3 hf_allRooms];

  obj = hf_allRooms;
  v45 = [hf_allRooms countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v45)
  {
    v44 = *v65;
    do
    {
      v5 = 0;
      do
      {
        if (*v65 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * v5);
        v7 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:v6 category:@"roomServices_legacy"];
        v8 = [(HFReorderableHomeKitItemList *)v7 mutableCopy];

        v9 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          sortedHomeKitObjectIdentifiers = [v8 sortedHomeKitObjectIdentifiers];
          *buf = 138412546;
          v71 = sortedHomeKitObjectIdentifiers;
          v72 = 2112;
          v73 = v6;
          _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Legacy service item order: %@ for room %@", buf, 0x16u);
        }

        v47 = v5;

        if ([v8 isEmpty])
        {
          hf_reorderableServicesList = [v6 hf_reorderableServicesList];
          sortedHomeKitObjectIdentifiers2 = [hf_reorderableServicesList sortedHomeKitObjectIdentifiers];
          [v8 setSortedHomeKitIdentifiers:sortedHomeKitObjectIdentifiers2];

          v13 = [v8 saveWithSender:selfCopy];
        }

        hf_accessoryLikeObjects = [v6 hf_accessoryLikeObjects];
        allObjects = [hf_accessoryLikeObjects allObjects];
        v16 = [allObjects na_filter:&__block_literal_global_148];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke_2;
        v62[3] = &unk_277E02F50;
        v46 = v8;
        v63 = v46;
        v17 = [v16 sortedArrayUsingComparator:v62];

        v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v48 = v17;
        v19 = [v48 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v59;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v59 != v21)
              {
                objc_enumerationMutation(v48);
              }

              v23 = *(*(&v58 + 1) + 8 * i);
              accessoryType = [v23 accessoryType];
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke_3;
              v56[3] = &unk_277DF4CE8;
              v25 = accessoryType;
              v57 = v25;
              v26 = [v50 na_firstObjectPassingTest:v56];
              if (!v26)
              {
                v26 = +[HFAccessoryTypeGroup otherAccessoryTypeGroup];
              }

              uniqueIdentifier = [v26 uniqueIdentifier];
              uUIDString = [uniqueIdentifier UUIDString];

              if (uUIDString)
              {
                v29 = [v18 objectForKeyedSubscript:uUIDString];
                if (!v29)
                {
                  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v18 setValue:v29 forKey:uUIDString];
                }

                [v29 addObject:v23];
              }

              else
              {
                v29 = HFLogForCategory(9uLL);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v71 = v25;
                  v72 = 2112;
                  v73 = v23;
                  _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "HFRedesignMigrationController: Couldn't find an accessory type group for this accessory, skipping. %@ %@", buf, 0x16u);
                }
              }
            }

            v20 = [v48 countByEnumeratingWithState:&v58 objects:v69 count:16];
          }

          while (v20);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v30 = v18;
        v31 = [v30 countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v53;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v53 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v52 + 1) + 8 * j);
              v36 = [v30 objectForKeyedSubscript:v35];
              v37 = [v36 na_map:&__block_literal_global_171_0];
              v38 = [@"roomServicesGroupedByType-" stringByAppendingString:v35];
              v39 = [(HFReorderableHomeKitItemList *)[HFMutableReorderableHomeKitItemList alloc] initWithApplicationDataContainer:v6 category:v38];
              [(HFMutableReorderableHomeKitItemList *)v39 setSortedHomeKitObjects:v37];
              v40 = [(HFMutableReorderableHomeKitItemList *)v39 saveWithSender:selfCopy];
              [v49 addObject:v40];
            }

            v32 = [v30 countByEnumeratingWithState:&v52 objects:v68 count:16];
          }

          while (v32);
        }

        v5 = v47 + 1;
      }

      while (v47 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v45);
  }

  v41 = [MEMORY[0x277D2C900] combineAllFutures:v49];

  return v41;
}

uint64_t __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 homeKitObject];
  v3 = [v2 conformsToProtocol:&unk_282562908];

  return v3;
}

uint64_t __65__HFRedesignMigrationController__migrateServiceItemsOrderInRooms__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 sortedHomeKitObjectComparator];
  v8 = [v6 homeKitObject];

  v9 = [v5 homeKitObject];

  v10 = (v7)[2](v7, v8, v9);
  return v10;
}

- (void)_updateScoreForAccessoriesInGroup:(id)group accessoryScores:(id)scores incrementBy:(int64_t)by singleAccessoryIncrement:(int64_t)increment
{
  v25 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  scoresCopy = scores;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [groupCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(groupCopy);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [scoresCopy objectForKey:v15];
        integerValue = [v16 integerValue];
        if ([groupCopy count] == 1)
        {
          incrementCopy = increment;
        }

        else
        {
          incrementCopy = 0;
        }

        incrementCopy = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + by + incrementCopy];

        [scoresCopy setObject:incrementCopy forKey:v15];
      }

      v12 = [groupCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (BOOL)_accessoryLikeItemIsHighValue:(id)value
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD0E58];
  valueCopy = value;
  v5 = [HFAccessoryType serviceType:v3];
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EB0], v5];
  v13[1] = v6;
  v7 = [HFAccessoryType serviceType:*MEMORY[0x277CD0E60]];
  v13[2] = v7;
  v8 = [HFAccessoryType serviceType:*MEMORY[0x277CD0ED8]];
  v13[3] = v8;
  v9 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F30]];
  v13[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  accessoryType = [valueCopy accessoryType];

  LOBYTE(valueCopy) = [v10 containsObject:accessoryType];
  return valueCopy;
}

- (BOOL)_accessoryLikeObjectMustUseLargerSize:(id)size
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD0E60];
  sizeCopy = size;
  v5 = [HFAccessoryType serviceType:v3];
  v10[0] = v5;
  v6 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F30]];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  accessoryType = [sizeCopy accessoryType];

  LOBYTE(v5) = [v7 containsObject:accessoryType];
  return v5;
}

- (id)_sortAccessoriesInRoom:(id)room fromScoreMap:(id)map
{
  mapCopy = map;
  hf_reorderableServicesList = [room hf_reorderableServicesList];
  sortedHomeKitObjectComparator = [hf_reorderableServicesList sortedHomeKitObjectComparator];

  keyEnumerator = [mapCopy keyEnumerator];

  allObjects = [keyEnumerator allObjects];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HFRedesignMigrationController__sortAccessoriesInRoom_fromScoreMap___block_invoke;
  v13[3] = &unk_277E02F98;
  v14 = sortedHomeKitObjectComparator;
  v10 = sortedHomeKitObjectComparator;
  v11 = [allObjects sortedArrayUsingComparator:v13];

  return v11;
}

uint64_t __69__HFRedesignMigrationController__sortAccessoriesInRoom_fromScoreMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 homeKitObject];
  v7 = [v5 homeKitObject];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

- (double)_computeUsageThreshold:(id)threshold
{
  v20 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  if ([thresholdCopy count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = thresholdCopy;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [v4 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
          [v10 doubleValue];
          v12 = v11;

          v8 = v8 + v12;
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v13 = v8 / [v4 count] * 1.2;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)_reduceScoreForRepeatingPattern:(id)pattern accessoryScores:(id)scores
{
  patternCopy = pattern;
  scoresCopy = scores;
  v6 = [scoresCopy objectForKey:patternCopy];
  integerValue = [v6 integerValue];

  if (integerValue >= 1)
  {
    v8 = 5;
    if (integerValue > 5)
    {
      v8 = integerValue;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 5];
    [scoresCopy setObject:v9 forKey:patternCopy];
  }
}

- (id)_migrateTileSize
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__HFRedesignMigrationController__migrateTileSize__block_invoke;
  aBlock[3] = &unk_277E02FC0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_msgSend_home(self);
  v5 = [v4 hf_accessoryRepresentableUsageCountsByRoomWithFilter:&__block_literal_global_180_1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HFRedesignMigrationController__migrateTileSize__block_invoke_3;
  v9[3] = &unk_277E03030;
  v9[4] = self;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

BOOL __49__HFRedesignMigrationController__migrateTileSize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _accessoryLikeObjectMustUseLargerSize:v5])
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) legacyFavoriteTiles];
    v9 = [v5 homeKitObject];
    if ([v8 containsObject:v9])
    {
    }

    else
    {
      v10 = [*(a1 + 32) _accessoryLikeItemIsHighValue:v5];

      if ((v10 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_8;
      }
    }

    v11 = [v6 objectForKey:v5];
    v12 = [v11 integerValue];

    v7 = v12 > 1;
  }

LABEL_8:

  return v7;
}

id __49__HFRedesignMigrationController__migrateTileSize__block_invoke_3(uint64_t a1, void *a2)
{
  v134 = *MEMORY[0x277D85DE8];
  v92 = a2;
  v3 = 0x277CCA000uLL;
  v95 = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
  v4 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Starting Tile Size Migration", buf, 2u);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v5 = objc_msgSend_home(*(a1 + 32));
  v6 = [v5 hf_allRooms];

  obj = v6;
  v93 = [v6 countByEnumeratingWithState:&v122 objects:v133 count:16];
  if (v93)
  {
    v91 = *v123;
    *&v7 = 138412546;
    v88 = v7;
    do
    {
      v8 = 0;
      do
      {
        if (*v123 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v94 = v8;
        v9 = *(*(&v122 + 1) + 8 * v8);
        v103 = [v92 objectForKey:{v9, v88}];
        [*(a1 + 32) _computeUsageThreshold:?];
        v11 = v10;
        v12 = [*(v3 + 2816) mapTableWithStrongToStrongObjects];
        v97 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v101 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v99 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v96 = v9;
        v13 = [v9 hf_accessoryLikeObjects];
        v14 = [v13 na_filter:&__block_literal_global_185_0];

        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v118 objects:v132 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v119;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v119 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v118 + 1) + 8 * i);
              if ([v20 hf_effectiveShowInHomeDashboard])
              {
                v21 = [*(a1 + 32) legacyFavoriteTiles];
                v22 = [v20 homeKitObject];
                v23 = [v21 containsObject:v22];

                if (v23)
                {
                  [v97 addObject:v20];
                }

                if ([*(a1 + 32) _accessoryLikeItemIsHighValue:v20])
                {
                  [v101 addObject:v20];
                }

                v24 = [v103 objectForKey:v20];
                [v24 doubleValue];
                v26 = v25;

                if (v26 > v11)
                {
                  [v99 addObject:v20];
                }

                v27 = [v20 accessoryType];
                v28 = [v12 objectForKey:v27];
                v29 = v28;
                if (v28)
                {
                  v30 = v28;
                }

                else
                {
                  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
                }

                v31 = v30;

                [v31 addObject:v20];
                v32 = [v20 accessoryType];
                [v12 setObject:v31 forKey:v32];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v118 objects:v132 count:16];
          }

          while (v17);
        }

        v3 = 0x277CCA000uLL;
        v33 = [MEMORY[0x277CCAB00] mapTableWithStrongToStrongObjects];
        if ([v15 count] >= 2)
        {
          [*(a1 + 32) _updateScoreForAccessoriesInGroup:v97 accessoryScores:v33 incrementBy:1 singleAccessoryIncrement:3];
        }

        [*(a1 + 32) _updateScoreForAccessoriesInGroup:v101 accessoryScores:v33 incrementBy:2 singleAccessoryIncrement:2];
        [*(a1 + 32) _updateScoreForAccessoriesInGroup:v99 accessoryScores:v33 incrementBy:1 singleAccessoryIncrement:1];
        v34 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v96 name];
          *buf = v88;
          v129 = v96;
          v130 = 2112;
          v131 = v35;
          _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: Room: %@ %@", buf, 0x16u);
        }

        v36 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v97;
          _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: favoriteAccessories: %@", buf, 0xCu);
        }

        v37 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v101;
          _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: highValueAccessories: %@", buf, 0xCu);
        }

        v38 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v99;
          _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: mostUsedAccessories: %@", buf, 0xCu);
        }

        v39 = HFLogForCategory(9uLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v12;
          _os_log_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: accessoriesByType: %@", buf, 0xCu);
        }

        if ([v12 count] >= 2)
        {
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v40 = v12;
          v41 = [v40 countByEnumeratingWithState:&v114 objects:v127 count:16];
          if (v41)
          {
            v42 = v41;
            v90 = v33;
            v43 = 0;
            v44 = 0;
            v45 = *v115;
            while (2)
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v115 != v45)
                {
                  objc_enumerationMutation(v40);
                }

                v47 = [v40 objectForKey:*(*(&v114 + 1) + 8 * j)];
                if ([v47 count] == 1)
                {
                  if (v44)
                  {

                    v44 = 0;
                    v33 = v90;
                    v3 = 0x277CCA000;
                    goto LABEL_56;
                  }

                  v44 = [v47 anyObject];
                }

                else if ([v47 count] > 1)
                {
                  ++v43;
                }
              }

              v42 = [v40 countByEnumeratingWithState:&v114 objects:v127 count:16];
              if (v42)
              {
                continue;
              }

              break;
            }

            v48 = v44;
            if (v44)
            {
              v33 = v90;
              v3 = 0x277CCA000;
              if (v43 < 1)
              {
                goto LABEL_57;
              }

              v49 = [v90 objectForKey:v44];
              v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v49, "integerValue") + 1}];

              [v90 setObject:v40 forKey:v44];
LABEL_56:

              v48 = v44;
            }

            else
            {
              v33 = v90;
              v3 = 0x277CCA000;
            }

LABEL_57:

            goto LABEL_58;
          }

          v44 = 0;
          goto LABEL_56;
        }

LABEL_58:
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __49__HFRedesignMigrationController__migrateTileSize__block_invoke_186;
        v110[3] = &unk_277E03008;
        v50 = *(a1 + 32);
        v111 = v33;
        v112 = v50;
        v113 = v12;
        v51 = v12;
        v52 = v33;
        [v15 na_each:v110];
        [v95 setObject:v52 forKey:v96];

        v8 = v94 + 1;
      }

      while (v94 + 1 != v93);
      v53 = [obj countByEnumeratingWithState:&v122 objects:v133 count:16];
      v93 = v53;
    }

    while (v53);
  }

  v54 = objc_msgSend_home(*(a1 + 32));
  v55 = [v54 hf_orderedRooms];

  v56 = 0;
  while (1)
  {
    v57 = [v55 count] ? objc_msgSend(v55, "count") - 1 : 0;
    if (v56 >= v57)
    {
      break;
    }

    v58 = [v55 objectAtIndexedSubscript:v56];
    v59 = [v55 objectAtIndexedSubscript:++v56];
    v60 = [v95 objectForKey:v58];
    v61 = [v95 objectForKey:v59];
    if ([v60 count] && objc_msgSend(v61, "count"))
    {
      v62 = [*(a1 + 32) _sortAccessoriesInRoom:v58 fromScoreMap:v60];
      v63 = [*(a1 + 32) _sortAccessoriesInRoom:v59 fromScoreMap:v61];
      v104 = v62;
      v64 = [v62 firstObject];
      v65 = [v63 firstObject];
      if ((*(*(a1 + 40) + 16))() && (*(*(a1 + 40) + 16))() && ([*(a1 + 32) _accessoryLikeObjectMustUseLargerSize:v65] & 1) == 0)
      {
        [*(a1 + 32) _reduceScoreForRepeatingPattern:v65 accessoryScores:v61];
      }
    }
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v66 = v55;
  v102 = [v66 countByEnumeratingWithState:&v106 objects:v126 count:16];
  if (!v102)
  {

    v67 = 0;
LABEL_105:
    v83 = [v67 firstObject];
    v84 = [v83 hf_setTileSize:@"HFTileResizableSizeMedium"];

    goto LABEL_106;
  }

  v67 = 0;
  v68 = 0;
  v100 = *v107;
  v98 = v66;
  do
  {
    for (k = 0; k != v102; ++k)
    {
      v105 = v67;
      if (*v107 != v100)
      {
        objc_enumerationMutation(v98);
      }

      v70 = *(*(&v106 + 1) + 8 * k);
      v71 = [v95 objectForKey:v70];
      v72 = [*(a1 + 32) _sortAccessoriesInRoom:v70 fromScoreMap:v71];
      if ([v72 count])
      {
        v73 = 0;
        do
        {
          v74 = [v72 objectAtIndexedSubscript:v73];
          if (v73 == [v72 count] - 2 && objc_msgSend(v72, "count") >= 4)
          {
            [*(a1 + 32) _reduceScoreForRepeatingPattern:v74 accessoryScores:v71];
          }

          if (v73 == [v72 count] - 1 && objc_msgSend(v72, "count") >= 2)
          {
            v75 = *(a1 + 40);
            v76 = [v72 objectAtIndexedSubscript:v73 - 1];
            LOBYTE(v75) = (*(v75 + 16))(v75, v76, v71);

            if ((v75 & 1) == 0)
            {
              [v71 setObject:&unk_2825254D0 forKey:v74];
            }
          }

          if ((*(*(a1 + 40) + 16))())
          {
            v77 = [v74 hf_setTileSize:@"HFTileResizableSizeMedium"];
            v78 = v73 + 1;
            if ([v72 count] > v73 + 1)
            {
              v79 = [v72 objectAtIndexedSubscript:v73 + 1];
              [*(a1 + 32) _reduceScoreForRepeatingPattern:v79 accessoryScores:v71];
            }

            if ([v72 count] > v73 + 2)
            {
              v80 = [v72 objectAtIndexedSubscript:?];
              [*(a1 + 32) _reduceScoreForRepeatingPattern:v80 accessoryScores:v71];
            }

            v68 = 1;
          }

          else
          {
            v78 = v73 + 1;
          }

          v73 = v78;
        }

        while (v78 < [v72 count]);
      }

      v67 = v105;
      if (!v105 || (v81 = [v72 count], v81 > objc_msgSend(v105, "count")))
      {
        v82 = v72;

        v67 = v82;
      }
    }

    v66 = v98;
    v102 = [v98 countByEnumeratingWithState:&v106 objects:v126 count:16];
  }

  while (v102);

  if ((v68 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_106:
  v85 = HFLogForCategory(9uLL);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v129 = v95;
    _os_log_impl(&dword_20D9BF000, v85, OS_LOG_TYPE_DEFAULT, "Tile Size Migration: Room Scores: %@", buf, 0xCu);
  }

  v86 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v86;
}

uint64_t __49__HFRedesignMigrationController__migrateTileSize__block_invoke_183(uint64_t a1, void *a2)
{
  v2 = [a2 homeKitObject];
  v3 = [v2 conformsToProtocol:&unk_282562908];

  return v3;
}

void __49__HFRedesignMigrationController__migrateTileSize__block_invoke_186(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 accessoryType];
  v4 = [HFAccessoryType serviceType:*MEMORY[0x277CD0EA0]];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) _accessoryLikeObjectMustUseLargerSize:v12])
  {
    v6 = v12;
    v7 = &unk_2825254E8;
    goto LABEL_5;
  }

  if ([*(a1 + 40) _accessoryLikeItemIsHighValue:v12])
  {
    v8 = *(a1 + 48);
    v9 = [v12 accessoryType];
    v10 = [v8 objectForKey:v9];
    v11 = [v10 count];

    if (v11 >= 2)
    {
LABEL_2:
      v6 = v12;
      v7 = &unk_2825254D0;
LABEL_5:
      [*(a1 + 32) setObject:v7 forKey:v6];
    }
  }
}

@end