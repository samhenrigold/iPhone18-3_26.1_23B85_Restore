@interface SBProactiveLibraryCategoryMapProviderSource
- (BOOL)_shouldRemoveRecentsPodWithLastKnownRecentApps:(id)apps;
- (SBHLibraryCategoryMapProviderSourceDelegate)delegate;
- (SBProactiveLibraryCategoryMapProviderSource)init;
- (id)_nonHiddenBundleIdentifiersForBundleIdentifiers:(id)identifiers;
- (void)handleUpdateCategoriesNotification:(id)notification;
- (void)requestLibraryCategoryMapWithOptions:(unint64_t)options existingLibraryCategoryMap:(id)map forbiddenApplicationIdentifiers:(id)identifiers sessionId:(unint64_t)id queue:(id)queue completion:(id)completion;
@end

@implementation SBProactiveLibraryCategoryMapProviderSource

- (SBProactiveLibraryCategoryMapProviderSource)init
{
  v7.receiver = self;
  v7.super_class = SBProactiveLibraryCategoryMapProviderSource;
  v2 = [(SBProactiveLibraryCategoryMapProviderSource *)&v7 init];
  if (v2)
  {
    mEMORY[0x277CEB358] = [MEMORY[0x277CEB358] sharedInstance];
    appDirectoryClient = v2->_appDirectoryClient;
    v2->_appDirectoryClient = mEMORY[0x277CEB358];

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_handleUpdateCategoriesNotification_ name:*MEMORY[0x277CEB9E0] object:0 suspensionBehavior:4];
  }

  return v2;
}

- (void)requestLibraryCategoryMapWithOptions:(unint64_t)options existingLibraryCategoryMap:(id)map forbiddenApplicationIdentifiers:(id)identifiers sessionId:(unint64_t)id queue:(id)queue completion:(id)completion
{
  v90 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  identifiersCopy = identifiers;
  queueCopy = queue;
  completionCopy = completion;
  BSDispatchQueueAssert();
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v81[3] = 0;
  v15 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  if ([identifiersCopy count])
  {
    v16 = MEMORY[0x277CCAC30];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke;
    v79[3] = &unk_2783BF2E8;
    v80 = identifiersCopy;
    v17 = [v16 predicateWithBlock:v79];

    v15 = v17;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!mapCopy || (options & 1) != 0)
  {
    v19 = objc_opt_new();
  }

  else
  {
    v19 = [mapCopy mutableCopy];
  }

  v20 = v19;
  v21 = SBLogProactiveAppLibrary(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = id;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshing proactive library category source", &buf, 0xCu);
  }

  v22 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__104;
  v88 = __Block_byref_object_dispose__104;
  v89 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__104;
  v77[4] = __Block_byref_object_dispose__104;
  v78 = 0;
  v23 = MEMORY[0x277CBEB38];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:id];
  v25 = [v23 dictionaryWithObject:v24 forKey:*MEMORY[0x277D665B8]];

  sb_hasAppsPopulatedForCategoriesOtherThanProactive = [v20 sb_hasAppsPopulatedForCategoriesOtherThanProactive];
  v27 = sb_hasAppsPopulatedForCategoriesOtherThanProactive;
  if ((options & 0x10) != 0)
  {
    v28 = SBLogProactiveAppLibrary(sb_hasAppsPopulatedForCategoriesOtherThanProactive);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v83 = 134217984;
      idCopy4 = id;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "(%ld) We are requesting the defaults because the passed options indicated there is no cache, so we need data fast. ", v83, 0xCu);
    }
  }

  if (!((options >> 2) & 1 | v27 & 1))
  {
    v29 = SBLogProactiveAppLibrary(sb_hasAppsPopulatedForCategoriesOtherThanProactive);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(SBProactiveLibraryCategoryMapProviderSource *)id requestLibraryCategoryMapWithOptions:v29 existingLibraryCategoryMap:v30 forbiddenApplicationIdentifiers:v31 sessionId:v32 queue:v33 completion:v34, v35];
    }
  }

  if ((options >> 2) & 1 | (v27 ^ 1) & 1)
  {
    v36 = SBLogProactiveAppLibrary(sb_hasAppsPopulatedForCategoriesOtherThanProactive);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v83 = 134217984;
      idCopy4 = id;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshing proactive library category source 'Categories'", v83, 0xCu);
    }

    v37 = CFAbsoluteTimeGetCurrent();
    dispatch_group_enter(v22);
    appDirectoryClient = self->_appDirectoryClient;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_31;
    v68[3] = &unk_2783BF360;
    v73 = v81;
    v75 = v37;
    v69 = queueCopy;
    p_buf = &buf;
    idCopy3 = id;
    v70 = v20;
    v71 = v15;
    v72 = v22;
    [(ATXAppDirectoryClient *)appDirectoryClient categoriesWithShouldUseDefault:(options >> 4) & 1 reply:v68];
  }

  if ((options & 2) != 0)
  {
    v39 = SBLogProactiveAppLibrary(sb_hasAppsPopulatedForCategoriesOtherThanProactive);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *v83 = 134217984;
      idCopy4 = id;
      _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshing proactive library category source 'Suggestions/Recents/Hidden'", v83, 0xCu);
    }

    v40 = CFAbsoluteTimeGetCurrent();
    dispatch_group_enter(v22);
    v41 = self->_appDirectoryClient;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_37;
    v58[3] = &unk_2783BF388;
    v64 = v82;
    v66 = v40;
    v59 = queueCopy;
    v65 = v77;
    idCopy5 = id;
    v60 = v15;
    v61 = v20;
    v62 = v25;
    v63 = v22;
    [(ATXAppDirectoryClient *)v41 predictedAppsAndRecentAppsWithShouldUseDefaultCategories:(options >> 4) & 1 reply:v58];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_42;
  block[3] = &unk_2783BF3B0;
  v49 = v20;
  v50 = v25;
  v56 = Current;
  v51 = completionCopy;
  v52 = &buf;
  optionsCopy = options;
  v53 = v81;
  v54 = v82;
  idCopy6 = id;
  v42 = completionCopy;
  v43 = v25;
  v44 = v20;
  dispatch_group_notify(v22, queueCopy, block);

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v82, 8);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 64) + 8) + 24) = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2;
  block[3] = &unk_2783BF338;
  v7 = *(a1 + 72);
  v13 = v6;
  v8 = *(a1 + 88);
  v18 = v7;
  v19 = v8;
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, block);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v2);
    v4 = SBLogProactiveAppLibrary(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) sb_stripCategoriesThatArentFromProactive];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_32;
    v8[3] = &unk_2783BF310;
    v5 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v6 = SBLogProactiveAppLibrary([v5 enumerateObjectsUsingBlock:v8]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 80);
      *buf = 134217984;
      v12 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshed proactive library category source 'Categories'", buf, 0xCu);
    }

    v4 = v9;
  }

  dispatch_group_leave(*(a1 + 64));
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_32(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CBEB40];
  v18 = v5;
  v7 = [v5 appBundleIDs];
  v8 = [v7 filteredArrayUsingPredicate:*(a1 + 32)];
  v9 = [v6 orderedSetWithArray:v8];

  if ([v9 count])
  {
    v10 = objc_alloc(MEMORY[0x277D66220]);
    v11 = [v18 categoryID];
    v12 = [v18 localizedStringForCategoryID:{objc_msgSend(v18, "categoryID")}];
    v13 = [v10 initWithPredictionCategoryID:v11 categoryIndex:a3 localizedDisplayName:v12 localizedDisplayNameKey:0];

    [*(a1 + 40) addCategoryIdentifier:v13];
    v14 = *(a1 + 40);
    v15 = [v9 array];
    [v14 setSortedApplicationIdentifiers:v15 forCategoryIdentifier:v13];

    v16 = *(a1 + 40);
    v17 = [v13 localizedDisplayName];
    [v16 setLocalizedCategoryName:v17 forCategoryIdentifier:v13];
  }
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) = CFAbsoluteTimeGetCurrent() - *(a1 + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38;
  block[3] = &unk_2783BF338;
  v4 = *(a1 + 80);
  v15 = v3;
  v5 = *(a1 + 96);
  v18 = v4;
  v19 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = v3;
  dispatch_async(v6, block);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v2);
    v5 = SBLogProactiveAppLibrary(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_1();
    }
  }

  v62 = v3;
  v6 = SBLogProactiveAppLibrary(v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    *buf = 134217984;
    v64 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(%ld) Finished refreshing proactive library category source 'Suggestions/Recents/Hidden'", buf, 0xCu);
  }

  v8 = [*(a1 + 32) recentApps];
  v9 = MEMORY[0x277CBEB70];
  v61 = v8;
  v10 = [v8 filteredArrayUsingPredicate:*(a1 + 40)];
  v11 = [v9 orderedSetWithArray:v10];

  v12 = [*(a1 + 48) categoryIdentifiers];
  v13 = getRecentsCategoryIdentifier(v12);
  v14 = [v11 count];
  v59 = v13;
  if (v14)
  {
    v15 = SBLogProactiveAppLibrary(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 80);
      *buf = 134218242;
      v64 = v16;
      v65 = 2112;
      v66 = v11;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "(%ld) Received recent apps: %@", buf, 0x16u);
    }

    [*(a1 + 48) sb_removeCategoryWithIdentifier:4];
    [*(a1 + 48) addCategoryIdentifier:v13];
    v17 = *(a1 + 48);
    v18 = [v11 array];
    [v17 setSortedApplicationIdentifiers:v18 forCategoryIdentifier:v13];
  }

  else
  {
    v19 = [*(a1 + 32) recentApps];
    v20 = [v19 count];

    if (!v20)
    {
      v22 = SBLogProactiveAppLibrary([*(a1 + 48) sb_removeCategoryWithIdentifier:4]);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 80);
        *buf = 134217984;
        v64 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "(%ld) Removing Recents Pod as we have no recent apps!", buf, 0xCu);
      }
    }

    v18 = SBLogProactiveAppLibrary(v21);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_2();
    }
  }

  v24 = getSuggestedCategoryIdentifier(v12);
  v25 = [*(a1 + 32) predictedApps];
  v26 = MEMORY[0x277CBEB70];
  v58 = v25;
  v27 = [v25 filteredArrayUsingPredicate:*(a1 + 40)];
  v28 = [v26 orderedSetWithArray:v27];

  v29 = [v28 count];
  v30 = SBLogProactiveAppLibrary(v29);
  v31 = v30;
  if (v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 80);
      *buf = 134218242;
      v64 = v32;
      v65 = 2112;
      v66 = v28;
      _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "(%ld) Received predicted apps: %@", buf, 0x16u);
    }

    [*(a1 + 48) sb_removeCategoryWithIdentifier:3];
    [*(a1 + 48) addCategoryIdentifier:v24];
    v33 = *(a1 + 48);
    v34 = [v28 array];
    [v33 setSortedApplicationIdentifiers:v34 forCategoryIdentifier:v24];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_3();
  }

  v51 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  if (v51)
  {
    v52 = v51;
    v53 = [v51 BOOLValue];

    if ((v53 & 1) == 0)
    {
      v34 = [*(a1 + 48) categoryIdentifiers];
      v54 = getSuggestedCategoryIdentifier(v34);
      [*(a1 + 48) removeCategoryIdentifier:v54];
      [*(a1 + 48) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v54];

LABEL_21:
    }
  }

  v60 = v11;
  v35 = getHiddenAppsCategoryIdentifier(v12);
  v36 = [*(a1 + 32) hiddenAppsCategory];
  v37 = [v36 appBundleIDs];
  v38 = MEMORY[0x277CBEB70];
  v39 = [v37 filteredArrayUsingPredicate:*(a1 + 40)];
  v40 = [v38 orderedSetWithArray:v39];

  v41 = [MEMORY[0x277CEBEA8] sharedManager];
  LOBYTE(v39) = [v41 isAppHidingAvailable];

  if (v39)
  {
    v43 = [v40 count];
    v44 = SBLogProactiveAppLibrary(v43);
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (v43)
    {
      if (v45)
      {
        v46 = *(a1 + 80);
        *buf = 134218242;
        v64 = v46;
        v65 = 2112;
        v66 = v40;
        _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "(%ld) Received hidden apps: %@", buf, 0x16u);
      }

      [*(a1 + 48) sb_removeCategoryWithIdentifier:7];
      [*(a1 + 48) addCategoryIdentifier:v35];
      v47 = *(a1 + 48);
      v48 = [v40 array];
      [v47 setSortedApplicationIdentifiers:v48 forCategoryIdentifier:v35];
    }

    else
    {
      if (v45)
      {
        v55 = *(a1 + 80);
        *buf = 134217984;
        v64 = v55;
        _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "(%ld) No hidden apps received!", buf, 0xCu);
      }

      v56 = [*(a1 + 48) categoryIdentifiers];
      v57 = getHiddenAppsCategoryIdentifier(v56);
      [*(a1 + 48) removeCategoryIdentifier:v57];
      [*(a1 + 48) addCategoryIdentifier:v57];
      [*(a1 + 48) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v57];
    }
  }

  else
  {
    v49 = SBLogProactiveAppLibrary(v42);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 80);
      *buf = 134217984;
      v64 = v50;
      _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEFAULT, "(%ld) Removing hidden pod because app protection says hiding isn't available", buf, 0xCu);
    }

    [*(a1 + 48) sb_removeCategoryWithIdentifier:7];
  }

  [*(a1 + 56) setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277D665B0]];
  dispatch_group_leave(*(a1 + 64));
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_42(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = [*(a1 + 32) categoryIdentifiers];
  v4 = getRecentsCategoryIdentifier(v3);
  v5 = getSuggestedCategoryIdentifier(v3);
  v6 = getHiddenAppsCategoryIdentifier(v3);
  v7 = [*(a1 + 32) categoryIdentifiers];
  if (objc_msgSend_containsObject_(v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v5];
    v8 = [v9 count] != 0;
  }

  v10 = [*(a1 + 32) categoryIdentifiers];
  if (objc_msgSend_containsObject_(v10))
  {
    v11 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v4];
    v11 = [v12 count] != 0;
  }

  v13 = [*(a1 + 32) categoryIdentifiers];
  v60 = v6;
  if (objc_msgSend_containsObject_(v13))
  {
    v14 = 1;
  }

  else
  {
    v15 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v6];
    v14 = [v15 count] != 0;
  }

  v17 = SBLogProactiveAppLibrary(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 80);
    *buf = 134218752;
    v63 = v18;
    v64 = 1024;
    *v65 = v8;
    *&v65[4] = 1024;
    *&v65[6] = v11;
    v66 = 1024;
    v67 = v14;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "(%ld) Finished refreshing proactive library category source; hasPredictedApps: %{BOOL}d; hasRecentApps: %{BOOL}d hasHiddenApps: %{BOOL}d", buf, 0x1Eu);
  }

  if (v8 || v11 || v14)
  {
    v19 = [*(a1 + 32) categoryIdentifiers];
    v20 = [v19 mutableCopy];

    v61[0] = v4;
    v61[1] = v5;
    v61[2] = v60;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
    [v20 removeObjectsInArray:v21];

    if (v11)
    {
      v23 = SBLogProactiveAppLibrary([v20 insertObject:v4 atIndex:0]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v20;
        v24 = v3;
        v25 = v5;
        v26 = v2;
        v27 = *(a1 + 80);
        v28 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v4];
        *buf = 134218242;
        v63 = v27;
        v2 = v26;
        v5 = v25;
        v3 = v24;
        v20 = v59;
        v64 = 2112;
        *v65 = v28;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "(%ld) Fetched Recent apps: %@", buf, 0x16u);
      }

      if (!v8)
      {
LABEL_17:
        v30 = SBLogProactiveAppLibrary(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 80);
          *buf = 134217984;
          v63 = v31;
          _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "(%ld) No predicted apps...", buf, 0xCu);
        }

        [*(a1 + 32) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v5];
LABEL_26:
        v37 = [MEMORY[0x277CEBEA8] sharedManager];
        v38 = [v37 isAppHidingAvailable];

        if (v38)
        {
          v39 = SBLogProactiveAppLibrary([v20 addObject:v60]);
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v40)
            {
              v41 = *(a1 + 80);
              v42 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v60];
              *buf = 134218242;
              v63 = v41;
              v64 = 2112;
              *v65 = v42;
              _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "(%ld) Fetched Hidden apps: %@", buf, 0x16u);
            }
          }

          else
          {
            if (v40)
            {
              v43 = *(a1 + 80);
              *buf = 134217984;
              v63 = v43;
              _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "(%ld) No Hidden apps...", buf, 0xCu);
            }

            [*(a1 + 32) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v60];
          }
        }

        [*(a1 + 32) setCategoryIdentifiers:v20];

        goto LABEL_35;
      }
    }

    else
    {
      v32 = SBLogProactiveAppLibrary(v22);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 80);
        *buf = 134217984;
        v63 = v33;
        _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "(%ld) No recent apps...", buf, 0xCu);
      }

      v29 = [*(a1 + 32) setSortedApplicationIdentifiers:MEMORY[0x277CBEBF8] forCategoryIdentifier:v4];
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v34 = SBLogProactiveAppLibrary([v20 insertObject:v5 atIndex:0]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 80);
      v36 = [*(a1 + 32) sortedApplicationIdentifiersForCategoryIdentifier:v5];
      *buf = 134218242;
      v63 = v35;
      v64 = 2112;
      *v65 = v36;
      _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "(%ld) Fetched Predicted apps: %@", buf, 0x16u);
    }

    goto LABEL_26;
  }

LABEL_35:
  [*(a1 + 32) setMetadata:*(a1 + 40)];
  Current = CFAbsoluteTimeGetCurrent();
  v45 = *(a1 + 88);
  v46 = *(a1 + 48);
  if (v2)
  {
    v47 = (*(v46 + 16))(*(a1 + 48), 0, v2);
    v48 = v60;
  }

  else
  {
    v49 = [*(a1 + 32) copy];
    (*(v46 + 16))(v46, v49, 0);

    v50 = *(a1 + 96);
    v48 = v60;
    if ((v50 & 4) != 0)
    {
      v51 = SBLogProactiveAppLibrary(v47);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *(a1 + 80);
        v53 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 134218240;
        v63 = v52;
        v64 = 2048;
        *v65 = v53;
        _os_log_impl(&dword_21ED4E000, v51, OS_LOG_TYPE_DEFAULT, "(%ld) Query response time for proactive library category source 'Categories' time: %f seconds ", buf, 0x16u);
      }

      v50 = *(a1 + 96);
    }

    if ((v50 & 2) != 0)
    {
      v54 = SBLogProactiveAppLibrary(v47);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(a1 + 80);
        v56 = *(*(*(a1 + 72) + 8) + 24);
        *buf = 134218240;
        v63 = v55;
        v64 = 2048;
        *v65 = v56;
        _os_log_impl(&dword_21ED4E000, v54, OS_LOG_TYPE_DEFAULT, "(%ld) Query response time for proactive library category source 'Suggestions/Recents' time: %f seconds", buf, 0x16u);
      }
    }
  }

  v57 = SBLogProactiveAppLibrary(v47);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = *(a1 + 80);
    *buf = 134218240;
    v63 = v58;
    v64 = 2048;
    *v65 = Current - v45;
    _os_log_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEFAULT, "(%ld) Total query response time for proactive library queries time: %f seconds", buf, 0x16u);
  }
}

- (id)_nonHiddenBundleIdentifiersForBundleIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:{v10, v13}];
        if (([v11 isHidden] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_shouldRemoveRecentsPodWithLastKnownRecentApps:(id)apps
{
  v3 = [(SBProactiveLibraryCategoryMapProviderSource *)self _nonHiddenBundleIdentifiersForBundleIdentifiers:apps];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)handleUpdateCategoriesNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SBLogProactiveAppLibrary(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Proactive is requesting a refresh all because of notification: %@", &v7, 0xCu);
  }

  delegate = [(SBProactiveLibraryCategoryMapProviderSource *)self delegate];
  [delegate requestLibraryCategoryMapUpdateWithRefreshOptions:6 source:self];
}

- (SBHLibraryCategoryMapProviderSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)requestLibraryCategoryMapWithOptions:(uint64_t)a3 existingLibraryCategoryMap:(uint64_t)a4 forbiddenApplicationIdentifiers:(uint64_t)a5 sessionId:(uint64_t)a6 queue:(uint64_t)a7 completion:(uint64_t)a8 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, a2, a3, "(%ld) existing category map has no apps hydrated; we're going to hydrate them by forcing a categories apps update when one wasn't explicitly requested. ", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v0, v1, "(%ld) Error refreshing proactive library category source 'Categories': %@");
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_1()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v0, v1, "(%ld) Error refreshing proactive library category source 'Suggestions/Recents/Hidden': %@");
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_2()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "(%ld) No recent apps received!", v2, v3, v4, v5);
}

void __170__SBProactiveLibraryCategoryMapProviderSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2_38_cold_3()
{
  OUTLINED_FUNCTION_2_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "(%ld) No predicted apps received!", v2, v3, v4, v5);
}

@end