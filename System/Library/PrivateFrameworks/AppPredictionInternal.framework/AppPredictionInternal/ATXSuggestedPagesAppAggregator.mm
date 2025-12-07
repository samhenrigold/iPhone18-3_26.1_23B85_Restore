@interface ATXSuggestedPagesAppAggregator
- (ATXSuggestedPagesAppAggregator)init;
- (ATXSuggestedPagesAppAggregator)initWithSources:(id)sources;
- (id)_dockedApps;
- (id)_sortedApps:(id)apps sortedFirstPageApps:(id)pageApps appLaunchCounts:(id)counts;
- (id)_sortedAppsOnFirstHomeScreenPage;
- (id)provideAppsForSuggestedPageType:(int64_t)type candidateApps:(id)apps environment:(id)environment;
- (int64_t)_sortApp1:(id)app1 app2:(id)app2 appLaunchCounts:(id)counts;
- (void)_dockedApps;
- (void)_sortedAppsOnFirstHomeScreenPage;
- (void)_validateApps:(id)apps pageType:(int64_t)type;
- (void)_validateApps:(id)apps withAppLaunchCounts:(id)counts;
@end

@implementation ATXSuggestedPagesAppAggregator

- (ATXSuggestedPagesAppAggregator)init
{
  v13[7] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v13[0] = v3;
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:7];
  v11 = [(ATXSuggestedPagesAppAggregator *)self initWithSources:v10];

  return v11;
}

- (ATXSuggestedPagesAppAggregator)initWithSources:(id)sources
{
  sourcesCopy = sources;
  v12.receiver = self;
  v12.super_class = ATXSuggestedPagesAppAggregator;
  v5 = [(ATXSuggestedPagesAppAggregator *)&v12 init];
  if (v5)
  {
    v6 = [sourcesCopy copy];
    sources = v5->_sources;
    v5->_sources = v6;

    v8 = objc_opt_new();
    suggestedPagesTunableConstants = v5->_suggestedPagesTunableConstants;
    v5->_suggestedPagesTunableConstants = v8;

    v10 = v5;
  }

  return v5;
}

- (id)provideAppsForSuggestedPageType:(int64_t)type candidateApps:(id)apps environment:(id)environment
{
  v44 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  environmentCopy = environment;
  v9 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  v10 = self->_sources;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    v14 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v38 + 1) + 8 * i) provideAppsForSuggestedPageType:type environment:{environmentCopy, selfCopy}];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18;

        [v9 addObjectsFromArray:v19];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

  if ([appsCopy count])
  {
    [v9 intersectSet:appsCopy];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = appsCopy;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v34 + 1) + 8 * j) setPredictionSource:{@"User", selfCopy}];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v22);
    }

    [v9 unionSet:v20];
  }

  v25 = selfCopy;
  [(ATXSuggestedPagesAppAggregator *)selfCopy _validateApps:v9 pageType:type, selfCopy];
  appLaunchCounts = [environmentCopy appLaunchCounts];
  [(ATXSuggestedPagesAppAggregator *)v25 _validateApps:v9 withAppLaunchCounts:appLaunchCounts];

  array = [v9 array];
  _sortedAppsOnFirstHomeScreenPage = [(ATXSuggestedPagesAppAggregator *)v25 _sortedAppsOnFirstHomeScreenPage];
  appLaunchCounts2 = [environmentCopy appLaunchCounts];
  v30 = [(ATXSuggestedPagesAppAggregator *)v25 _sortedApps:array sortedFirstPageApps:_sortedAppsOnFirstHomeScreenPage appLaunchCounts:appLaunchCounts2];

  return v30;
}

- (void)_validateApps:(id)apps pageType:(int64_t)type
{
  v53 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v7 = objc_opt_new();
  _dockedApps = [(ATXSuggestedPagesAppAggregator *)self _dockedApps];
  v8 = [ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:type];
  v41 = v8;
  if (v8)
  {
    v9 = v8;
    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    v11 = [mEMORY[0x277CEB440] iOSAppDenyListForMode:{objc_msgSend(v9, "integerValue")}];

    if ([v11 count])
    {
      v44 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = appsCopy;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    v43 = *MEMORY[0x277CBF040];
    v42 = *MEMORY[0x277CBF010];
    do
    {
      v16 = 0;
      do
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v46 + 1) + 8 * v16);
        v18 = MEMORY[0x277CEB3B8];
        bundleId = [v17 bundleId];
        LOBYTE(v18) = [v18 isInstalledAndNotRestrictedForBundle:bundleId];

        if ((v18 & 1) == 0)
        {
          v24 = __atxlog_handle_modes(v20);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v25 = v24;
            v26 = "ATXSuggestedPagesAppAggregator: app (%@) is not installed or restricted";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v21 = MEMORY[0x277CEB3B8];
        bundleId2 = [v17 bundleId];
        LODWORD(v21) = [v21 isHiddenFromSpringBoardWithBundleId:bundleId2];

        if (v21)
        {
          v24 = __atxlog_handle_modes(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v25 = v24;
            v26 = "ATXSuggestedPagesAppAggregator: app (%@) is hidden from SpringBoard";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        bundleId3 = [v17 bundleId];
        v28 = [_dockedApps containsObject:bundleId3];

        if (v28)
        {
          v24 = __atxlog_handle_modes(v29);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v25 = v24;
            v26 = "ATXSuggestedPagesAppAggregator: app (%@) is already in the Dock";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        bundleId4 = [v17 bundleId];
        v31 = [v44 containsObject:bundleId4];

        if (v31)
        {
          v24 = __atxlog_handle_modes(v32);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v25 = v24;
            v26 = "ATXSuggestedPagesAppAggregator: app (%@) is on silence list in Focus settings";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        bundleId5 = [v17 bundleId];
        v34 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", v43, v42);
        v35 = [v34 containsObject:bundleId5];

        if (v35)
        {
          v24 = __atxlog_handle_modes(v36);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v25 = v24;
            v26 = "ATXSuggestedPagesAppAggregator: app (%@) is turned off in Siri settings";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v37 = MEMORY[0x277CEB3B8];
        bundleId6 = [v17 bundleId];
        LODWORD(v37) = [v37 isInternalAppForBundleId:bundleId6];

        if (v37)
        {
          v24 = __atxlog_handle_modes(v39);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v25 = v24;
            v26 = "ATXSuggestedPagesAppAggregator: app (%@) is an internal app";
LABEL_18:
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
          }

LABEL_19:

          [v7 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v40 = [v12 countByEnumeratingWithState:&v46 objects:v52 count:16];
      v14 = v40;
    }

    while (v40);
  }

  if ([v7 count])
  {
    [v12 minusSet:v7];
  }
}

- (void)_validateApps:(id)apps withAppLaunchCounts:(id)counts
{
  v38[1] = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  countsCopy = counts;
  v28 = objc_opt_new();
  v37 = @"com.apple.Preferences";
  v7 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:15 uniqueDaysLaunched:10];
  v38[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = appsCopy;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v31;
    *&v11 = 138412290;
    v27 = v11;
    obj = v9;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        bundleId = [v15 bundleId];
        v17 = [v8 objectForKeyedSubscript:bundleId];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:0 uniqueDaysLaunched:0];
        }

        v20 = v19;

        v21 = [countsCopy objectForKeyedSubscript:bundleId];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:0 uniqueDaysLaunched:0];
        }

        v24 = v23;

        v25 = [v24 isGreaterThanOrEqualToData:v20];
        if ((v25 & 1) == 0)
        {
          v26 = __atxlog_handle_modes(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v35 = v15;
            _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesAppAggregator: app (%@) does not meet launch count threshold", buf, 0xCu);
          }

          [v28 addObject:v15];
        }
      }

      v9 = obj;
      v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v12);
  }

  if ([v28 count])
  {
    [v9 minusSet:v28];
  }
}

- (id)_dockedApps
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CEB568]);
  v9 = 0;
  v4 = [v3 loadDockAppListWithError:&v9];
  v5 = v9;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_modes(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXSuggestedPagesAppAggregator *)v6 _dockedApps];
    }
  }

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (id)_sortedAppsOnFirstHomeScreenPage
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CEB568]);
  v14 = 0;
  v4 = [v3 loadHomeScreenPageConfigurationsWithError:&v14];
  v5 = v14;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_modes(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXSuggestedPagesAppAggregator *)v6 _sortedAppsOnFirstHomeScreenPage];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = objc_opt_new();
    firstObject = [v4 firstObject];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__ATXSuggestedPagesAppAggregator__sortedAppsOnFirstHomeScreenPage__block_invoke;
    v12[3] = &unk_278597D68;
    v8 = v9;
    v13 = v8;
    [firstObject enumerateAppsConsideringFolders:0 block:v12];

    v7 = v13;
  }

  objc_autoreleasePoolPop(v2);

  return v8;
}

void __66__ATXSuggestedPagesAppAggregator__sortedAppsOnFirstHomeScreenPage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleId];
  [v2 addObject:v3];
}

- (id)_sortedApps:(id)apps sortedFirstPageApps:(id)pageApps appLaunchCounts:(id)counts
{
  appsCopy = apps;
  pageAppsCopy = pageApps;
  countsCopy = counts;
  v11 = [pageAppsCopy _pas_filteredArrayWithTest:&__block_literal_global_19];
  v12 = [v11 count];

  if ([pageAppsCopy count] && (v13 = v12 / objc_msgSend(pageAppsCopy, "count"), -[ATXSuggestedPagesTunableConstants maxRatioOfAppleAppsForFirstPageSorting](self->_suggestedPagesTunableConstants, "maxRatioOfAppleAppsForFirstPageSorting"), v13 <= v14))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__ATXSuggestedPagesAppAggregator__sortedApps_sortedFirstPageApps_appLaunchCounts___block_invoke_3;
    v20[3] = &unk_278597DD8;
    v21 = pageAppsCopy;
    selfCopy = self;
    v23 = countsCopy;
    v18 = countsCopy;
    v16 = [appsCopy sortedArrayUsingComparator:v20];

    v17 = v21;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __82__ATXSuggestedPagesAppAggregator__sortedApps_sortedFirstPageApps_appLaunchCounts___block_invoke_2;
    v24[3] = &unk_278597DB0;
    v24[4] = self;
    v25 = countsCopy;
    v15 = countsCopy;
    v16 = [appsCopy sortedArrayUsingComparator:v24];
    v17 = v25;
  }

  return v16;
}

uint64_t __82__ATXSuggestedPagesAppAggregator__sortedApps_sortedFirstPageApps_appLaunchCounts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 bundleId];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 bundleId];
  v12 = [v10 indexOfObject:v11];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v9 == 0x7FFFFFFFFFFFFFFFLL;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    if (v14 && v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [*(a1 + 40) _sortApp1:v5 app2:v6 appLaunchCounts:*(a1 + 48)];
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v17 = [v15 compare:v16];
  }

  return v17;
}

- (int64_t)_sortApp1:(id)app1 app2:(id)app2 appLaunchCounts:(id)counts
{
  countsCopy = counts;
  app2Copy = app2;
  app1Copy = app1;
  bundleId = [app1Copy bundleId];
  v11 = [countsCopy objectForKeyedSubscript:bundleId];
  rawLaunchCount = [v11 rawLaunchCount];

  bundleId2 = [app2Copy bundleId];
  v14 = [countsCopy objectForKeyedSubscript:bundleId2];

  rawLaunchCount2 = [v14 rawLaunchCount];
  predictionSource = [app1Copy predictionSource];

  LODWORD(bundleId2) = [predictionSource isEqualToString:@"Mode Entity"];
  if (bundleId2)
  {
    rawLaunchCount = rawLaunchCount / 10.0;
  }

  predictionSource2 = [app2Copy predictionSource];

  v18 = [predictionSource2 isEqualToString:@"Mode Entity"];
  v19 = rawLaunchCount2 / 10.0;
  if (!v18)
  {
    v19 = rawLaunchCount2;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:rawLaunchCount];
  v22 = [v20 compare:v21];

  return v22;
}

- (void)_dockedApps
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesAppAggregator: could not fetch Dock apps: %@", &v2, 0xCu);
}

- (void)_sortedAppsOnFirstHomeScreenPage
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesAppAggregator: could not load home screen configuration: %@", &v2, 0xCu);
}

@end