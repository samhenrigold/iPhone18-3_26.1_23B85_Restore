@interface ATXSuggestedPagesGenerator
- (ATXSuggestedPagesGenerator)init;
- (ATXSuggestedPagesGenerator)initWithWidgetAggregator:(id)aggregator appAggregator:(id)appAggregator descriptorCache:(id)cache;
- (id)_validatedWidgets:(id)widgets bundleIdsToLaunches:(id)launches;
- (id)generateSuggestedPagesForPageType:(int64_t)type layoutOptions:(id)options;
- (unint64_t)_suggestAppsFromPool:(id)pool forPage:(id)page type:(int64_t)type numberOfAppsNecessary:(unint64_t)necessary;
- (unint64_t)_suggestShortcutsFromPool:(id)pool forPage:(id)page type:(int64_t)type numberOfShortcutsNecessary:(unint64_t)necessary;
- (unint64_t)_suggestStacksFromPool:(id)pool forPage:(id)page type:(int64_t)type layout:(id)layout numberOfColumns:(unint64_t)columns;
@end

@implementation ATXSuggestedPagesGenerator

- (ATXSuggestedPagesGenerator)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v6 = [(ATXSuggestedPagesGenerator *)self initWithWidgetAggregator:v3 appAggregator:v4 descriptorCache:mEMORY[0x277CEB998]];

  return v6;
}

- (ATXSuggestedPagesGenerator)initWithWidgetAggregator:(id)aggregator appAggregator:(id)appAggregator descriptorCache:(id)cache
{
  aggregatorCopy = aggregator;
  appAggregatorCopy = appAggregator;
  cacheCopy = cache;
  v31.receiver = self;
  v31.super_class = ATXSuggestedPagesGenerator;
  v12 = [(ATXSuggestedPagesGenerator *)&v31 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widgetAggregator, aggregator);
    objc_storeStrong(&v13->_appAggregator, appAggregator);
    objc_storeStrong(&v13->_descriptorCache, cache);
    v14 = objc_opt_new();
    tunableConstants = v13->_tunableConstants;
    v13->_tunableConstants = v14;

    v16 = objc_alloc_init(MEMORY[0x277CEB388]);
    rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v16 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    appLaunchCounts = v13->_appLaunchCounts;
    v13->_appLaunchCounts = rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps;

    v19 = objc_alloc_init(MEMORY[0x277CEB568]);
    v30 = 0;
    v20 = [v19 loadHomeScreenPageConfigurationsIncludingHidden:0 error:&v30];
    v21 = v30;
    firstObject = [v20 firstObject];

    if (!firstObject)
    {
      v24 = __atxlog_handle_modes(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ATXSuggestedPagesGenerator initWithWidgetAggregator:v21 appAggregator:v24 descriptorCache:?];
      }
    }

    maxPortraitRows = [firstObject maxPortraitRows];
    v26 = 6;
    if (maxPortraitRows)
    {
      v26 = maxPortraitRows;
    }

    v13->_cachedHomeScreenRows = v26;
    maxPortraitColumns = [firstObject maxPortraitColumns];
    v28 = 4;
    if (maxPortraitColumns)
    {
      v28 = maxPortraitColumns;
    }

    v13->_cachedHomeScreenColumns = v28;
  }

  return v13;
}

- (id)generateSuggestedPagesForPageType:(int64_t)type layoutOptions:(id)options
{
  v74 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = __atxlog_handle_modes(optionsCopy);
  v7 = os_signpost_id_generate(v6);

  v9 = __atxlog_handle_modes(v8);
  v10 = v9;
  spid = v7;
  v58 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = NSStringFromATXSuggestedPageType();
    *buf = 136446210;
    uTF8String = [v11 UTF8String];
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "generateSuggestedHomeScreenPage", "Type=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v64 = objc_opt_new();
  v71[0] = v64;
  obja = objc_opt_new();
  v71[1] = obja;
  v60 = objc_opt_new();
  v71[2] = v60;
  v12 = objc_opt_new();
  v71[3] = v12;
  v13 = objc_opt_new();
  v71[4] = v13;
  v14 = objc_opt_new();
  v71[5] = v14;
  v15 = objc_opt_new();
  v71[6] = v15;
  v16 = objc_opt_new();
  v71[7] = v16;
  v17 = objc_opt_new();
  v71[8] = v17;
  v18 = objc_opt_new();
  v71[9] = v18;
  v19 = objc_opt_new();
  v71[10] = v19;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:11];

  v20 = objc_opt_new();
  appAggregator = self->_appAggregator;
  candidateApps = [optionsCopy candidateApps];
  v23 = [(ATXSuggestedPagesAppAggregator *)appAggregator provideAppsForSuggestedPageType:type candidateApps:candidateApps environment:self];

  v24 = objc_alloc(MEMORY[0x277CBEB98]);
  v61 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = [v24 initWithArray:v25];
  suggestedApps = self->_suggestedApps;
  self->_suggestedApps = v26;

  v28 = [(ATXSuggestedPagesWidgetAggregator *)self->_widgetAggregator provideWidgetsForPageType:type environment:self];
  v65 = [(ATXSuggestedPagesGenerator *)self _validatedWidgets:v28 bundleIdsToLaunches:self->_appLaunchCounts];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v57;
  v29 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v67;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v67 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v66 + 1) + 8 * i);
        v34 = objc_alloc_init(MEMORY[0x277CEB588]);
        [v34 setSuggestedPageType:type];
        [v34 setPageIndex:{objc_msgSend(v20, "count")}];
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        [v34 setUniqueIdentifier:uUIDString];

        cachedHomeScreenRows = self->_cachedHomeScreenRows;
        cachedHomeScreenColumns = self->_cachedHomeScreenColumns;
        v39 = [(ATXSuggestedPagesGenerator *)self _suggestStacksFromPool:v65 forPage:v34 type:type layout:v33 numberOfColumns:cachedHomeScreenColumns];
        if (v39 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = cachedHomeScreenColumns * cachedHomeScreenRows - v39;
          v41 = [v33 maxAppRowsForPageType:type];
          if (v41)
          {
            v42 = self->_cachedHomeScreenColumns * v41 >= v40 ? v40 : self->_cachedHomeScreenColumns * v41;
          }

          else
          {
            v42 = v40;
          }

          v43 = [(ATXSuggestedPagesGenerator *)self _suggestAppsFromPool:v61 forPage:v34 type:type numberOfAppsNecessary:v42];
          v44 = [(ATXSuggestedPagesGenerator *)self _suggestShortcutsFromPool:MEMORY[0x277CBEBF8] forPage:v34 type:type numberOfShortcutsNecessary:v40 - v43]+ v43;
          if (v44 >= [v33 minNecessaryLeafIconsForPageType:type])
          {
            leafIcons = [v34 leafIcons];
            if ([leafIcons count])
            {
            }

            else
            {
              stacks = [v34 stacks];
              v47 = [stacks count];

              if (!v47)
              {
                goto LABEL_23;
              }
            }

            [v20 addObject:v34];
          }
        }

LABEL_23:
      }

      v30 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v30);
  }

  v48 = [v20 count];
  if (v48 > [(ATXSuggestedPagesTunableConstants *)self->_tunableConstants maxSuggestedPages])
  {
    [v20 removeObjectsInRange:{-[ATXSuggestedPagesTunableConstants maxSuggestedPages](self->_tunableConstants, "maxSuggestedPages") - 1, objc_msgSend(v20, "count") - -[ATXSuggestedPagesTunableConstants maxSuggestedPages](self->_tunableConstants, "maxSuggestedPages")}];
  }

  v49 = self->_suggestedApps;
  self->_suggestedApps = 0;

  v51 = __atxlog_handle_modes(v50);
  v52 = v51;
  if (v58 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    v53 = NSStringFromATXSuggestedPageType();
    uTF8String2 = [v53 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v52, OS_SIGNPOST_INTERVAL_END, spid, "generateSuggestedHomeScreenPage", "Type=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  return v20;
}

- (unint64_t)_suggestStacksFromPool:(id)pool forPage:(id)page type:(int64_t)type layout:(id)layout numberOfColumns:(unint64_t)columns
{
  v27 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  layoutCopy = layout;
  v14 = [layoutCopy makeStacksFromWidgets:pool pageType:type environment:self];
  if (v14)
  {
    [layoutCopy layOutStacks:v14 numberOfColumns:columns forPageType:type];
    [pageCopy setStacks:v14];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v18 += [*(*(&v22 + 1) + 8 * i) numberOfLeafIconSpots];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v18;
}

- (unint64_t)_suggestShortcutsFromPool:(id)pool forPage:(id)page type:(int64_t)type numberOfShortcutsNecessary:(unint64_t)necessary
{
  v32[1] = *MEMORY[0x277D85DE8];
  poolCopy = pool;
  pageCopy = page;
  if (necessary)
  {
    v12 = [poolCopy count];
    if (v12 >= necessary)
    {
      necessaryCopy = necessary;
    }

    else
    {
      necessaryCopy = v12;
    }

    v14 = [poolCopy subarrayWithRange:{0, necessaryCopy}];
    leafIcons = [pageCopy leafIcons];
    v16 = [leafIcons mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v20 = v18;

    v21 = [v14 count];
    if (v21 == [poolCopy count])
    {
      [v20 addObjectsFromArray:v14];
    }

    else
    {
      v22 = [v14 count];
      if (v22 >= [poolCopy count])
      {
        [ATXSuggestedPagesGenerator _suggestShortcutsFromPool:a2 forPage:self type:? numberOfShortcutsNecessary:?];
      }

      v23 = [v14 subarrayWithRange:{0, objc_msgSend(v14, "count") - 1}];
      [v20 addObjectsFromArray:v23];
      v24 = [poolCopy subarrayWithRange:{objc_msgSend(v23, "count"), objc_msgSend(poolCopy, "count") - objc_msgSend(v23, "count")}];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"SHORTCUTS_FOLDER_TITLE" value:&stru_2839A6058 table:0];

      v27 = [objc_alloc(MEMORY[0x277CEB580]) initWithContents:v24];
      v28 = objc_alloc(MEMORY[0x277CEB578]);
      v32[0] = v27;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v30 = [v28 initWithFolderPages:v29 name:v26];

      [v20 addObject:v30];
    }

    [pageCopy setLeafIcons:v20];
    v19 = [v14 count];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)_suggestAppsFromPool:(id)pool forPage:(id)page type:(int64_t)type numberOfAppsNecessary:(unint64_t)necessary
{
  pageCopy = page;
  poolCopy = pool;
  leafIcons = [pageCopy leafIcons];

  if (leafIcons)
  {
    [ATXSuggestedPagesGenerator _suggestAppsFromPool:a2 forPage:self type:? numberOfAppsNecessary:?];
  }

  [pageCopy setCandidateApps:poolCopy];
  v13 = [poolCopy count];
  if (v13 >= necessary)
  {
    necessaryCopy = necessary;
  }

  else
  {
    necessaryCopy = v13;
  }

  v15 = [poolCopy subarrayWithRange:{0, necessaryCopy}];

  [pageCopy setLeafIcons:v15];
  leafIcons2 = [pageCopy leafIcons];

  v17 = [leafIcons2 count];
  return v17;
}

- (id)_validatedWidgets:(id)widgets bundleIdsToLaunches:(id)launches
{
  v23[1] = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v22 = @"com.apple.Fitness";
  v7 = MEMORY[0x277CEB340];
  widgetsCopy = widgets;
  v9 = [[v7 alloc] initWithRawLaunchCount:0 uniqueDaysLaunched:0];
  v23[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v11 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__ATXSuggestedPagesGenerator__validatedWidgets_bundleIdsToLaunches___block_invoke;
  v17[3] = &unk_27859B578;
  v18 = v11;
  selfCopy = self;
  v20 = v10;
  v21 = launchesCopy;
  v12 = launchesCopy;
  v13 = v10;
  v14 = v11;
  v15 = [widgetsCopy _pas_filteredArrayWithTest:v17];

  return v15;
}

uint64_t __68__ATXSuggestedPagesGenerator__validatedWidgets_bundleIdsToLaunches___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appBundleId];
  if (![v4 length])
  {
    goto LABEL_6;
  }

  if ((ATXBundleIdIsFakeContainerBundleId() & 1) == 0)
  {
    if (![MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v4] || (objc_msgSend(*(a1 + 32), "bundleIdIsLockedOrHiddenByUserPreference:", v4) & 1) != 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    v7 = [*(*(a1 + 40) + 24) homeScreenDescriptorForWidget:v3];
    v8 = v7;
    if (v7 && ([v7 disfavoredFamiliesForLocation:0], objc_msgSend(v3, "size"), CHSWidgetFamilyFromATXStackLayoutSize(), v9 = CHSWidgetFamilyMaskContainsFamily(), v9))
    {
      v10 = __atxlog_handle_modes(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesGenerator: not allowing widget for %@ because it is disfavored for home screen", &v20, 0xCu);
      }

      v5 = 0;
    }

    else
    {
      if (![v3 requiresAppLaunch])
      {
        v5 = 1;
LABEL_27:

        goto LABEL_7;
      }

      v11 = [*(a1 + 48) objectForKeyedSubscript:v4];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:1 uniqueDaysLaunched:0];
      }

      v10 = v13;

      v14 = [*(a1 + 56) objectForKeyedSubscript:v4];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:0 uniqueDaysLaunched:0];
      }

      v17 = v16;

      v18 = [v17 isGreaterThanOrEqualToData:v10];
      v5 = v18;
      if ((v18 & 1) == 0)
      {
        v19 = __atxlog_handle_modes(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412802;
          v21 = v4;
          v22 = 2114;
          v23 = v17;
          v24 = 2114;
          v25 = v10;
          _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesGenerator: not allowing widget for %@ because %{public}@ is not greater than or equal to: %{public}@", &v20, 0x20u);
        }
      }
    }

    goto LABEL_27;
  }

  v5 = 1;
LABEL_7:

  return v5;
}

- (void)initWithWidgetAggregator:(uint64_t)a1 appAggregator:(NSObject *)a2 descriptorCache:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not load Home Screen config to find layout info: %@", &v2, 0xCu);
}

- (void)_suggestShortcutsFromPool:(uint64_t)a1 forPage:(uint64_t)a2 type:numberOfShortcutsNecessary:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesGenerator.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"shortcutsThatFit.count < shortcuts.count"}];
}

- (void)_suggestAppsFromPool:(uint64_t)a1 forPage:(uint64_t)a2 type:numberOfAppsNecessary:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesGenerator.m" lineNumber:223 description:@"Leaf icons should be nil by now"];
}

@end