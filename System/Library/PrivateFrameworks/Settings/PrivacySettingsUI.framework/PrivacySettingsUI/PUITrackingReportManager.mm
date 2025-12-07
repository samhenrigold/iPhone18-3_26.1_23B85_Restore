@interface PUITrackingReportManager
+ (BOOL)queryWithOptions:(id)options reply:(id)reply;
- (BOOL)hadDataInLastQuery;
- (BOOL)shouldIncludeBundleID:(id)d;
- (BOOL)trackingReportEnabled;
- (PUITrackingReportManager)init;
- (id)allEntriesFromAppsToTrackers:(id)trackers;
- (id)appsIDsContactingTrackersInAppOnly:(BOOL)only;
- (id)appsToTrackersInAppOnlyFromAppsToTrackers:(id)trackers;
- (id)appsToTrackersWithoutHiddenApps:(id)apps;
- (id)appsToWebsitesDictFromAppsToTrackersDict:(id)dict;
- (id)entries:(id)entries filtered:(id)filtered;
- (id)entriesFiltered:(id)filtered;
- (id)trackerDataForAppID:(id)d inAppOnly:(BOOL)only;
- (id)trackerDataForAppID:(id)d websiteDomain:(id)domain;
- (id)trackerDataForTrackerDomain:(id)domain inAppOnly:(BOOL)only;
- (id)trackerDataForTrackerDomain:(id)domain websiteDomain:(id)websiteDomain;
- (id)trackerDomainsInAppOnly:(BOOL)only;
- (id)trackersToAppsDictFromAppsToTrackersDict:(id)dict;
- (id)trackersToWebsitesDictFromAppsToTrackersDict:(id)dict;
- (id)valuesAndCountsForKey:(id)key entries:(id)entries;
- (id)valuesForKey:(id)key withLargestValueForKey:(id)forKey entries:(id)entries;
- (id)websiteDomainsForAppID:(id)d;
- (id)websiteDomainsForTrackerDomain:(id)domain;
- (int64_t)highestNumberOfTrackerDataPerAppInAppOnly:(BOOL)only;
- (int64_t)highestNumberOfTrackerDataPerTrackerInAppOnly:(BOOL)only;
- (void)dataDidChange;
- (void)exportToStream:(id)stream error:(id *)error;
- (void)reloadDataWithCompletion:(id)completion;
- (void)reloadEnabledWithCompletion:(id)completion;
- (void)reloadWithCompletion:(id)completion;
- (void)setTrackingReportEnabled:(BOOL)enabled;
@end

@implementation PUITrackingReportManager

+ (BOOL)queryWithOptions:(id)options reply:(id)reply
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v7 = objc_alloc(MEMORY[0x277D6B500]);
  v8 = [v7 initWorkspaceWithService:*MEMORY[0x277D6B6A0]];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = [objc_alloc(MEMORY[0x277D6B700]) initWithWorkspace:v8];
  v9 = *MEMORY[0x277D6B668];
  integerValue = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D6B668]];

  if (integerValue)
  {
    v12 = [optionsCopy objectForKeyedSubscript:v9];
    integerValue = [v12 integerValue];
  }

  v13 = _PUILoggingFacility(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "+[PUITrackingReportManager queryWithOptions:reply:]";
    v40 = 2048;
    v41 = integerValue;
    _os_log_impl(&dword_2657FE000, v13, OS_LOG_TYPE_DEFAULT, "%s: Starting query for NetworkDomainQueryType %ld data", buf, 0x16u);
  }

  v14 = PUILogForCategory(1uLL);
  v15 = os_signpost_id_make_with_pointer(v14, "PUIReportAppListController.queryWithOptions");

  v16 = PUILogForCategory(1uLL);
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PUIReportAppListController.queryWithOptions", "", buf, 2u);
  }

  v18 = v33[5];
  v19 = *MEMORY[0x277D6B758];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__PUITrackingReportManager_queryWithOptions_reply___block_invoke;
  v27[3] = &unk_279BA23B8;
  v30 = integerValue;
  v31 = v15;
  v20 = replyCopy;
  v28 = v20;
  v29 = &v32;
  v21 = [v18 networkDomainsToDateWithOptionsFor:0 nameKind:v19 domainType:1 startTime:0 options:optionsCopy reply:v27];
  v22 = v21;
  if ((v21 & 1) == 0)
  {
    if (v20)
    {
      v21 = (*(v20 + 2))(v20, 0, 0);
    }

    v23 = _PUILoggingFacility(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "+[PUITrackingReportManager queryWithOptions:reply:]";
      _os_log_impl(&dword_2657FE000, v23, OS_LOG_TYPE_DEFAULT, "%s: failed to get analytics data", buf, 0xCu);
    }

    v24 = PUILogForCategory(1uLL);
    v25 = v24;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2657FE000, v25, OS_SIGNPOST_INTERVAL_END, v15, "PUIReportAppListController.queryWithOptions", "", buf, 2u);
    }
  }

  _Block_object_dispose(&v32, 8);
  return v22;
}

void __51__PUITrackingReportManager_queryWithOptions_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"result_count"];

  v9 = _PUILoggingFacility(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = a1[6];
      v12 = [v5 objectForKeyedSubscript:@"result_count"];
      v20 = 136315650;
      v21 = "+[PUITrackingReportManager queryWithOptions:reply:]_block_invoke";
      v22 = 2048;
      v23 = v11;
      v24 = 2048;
      v25 = [v12 integerValue];
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "%s: Finished query for NetworkDomainQueryType %ld data. result_count = %ld", &v20, 0x20u);
    }
  }

  else if (v10)
  {
    v13 = a1[6];
    v20 = 136315394;
    v21 = "+[PUITrackingReportManager queryWithOptions:reply:]_block_invoke";
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "%s: Finished query for NetworkDomainQueryType %ld data", &v20, 0x16u);
  }

  v14 = PUILogForCategory(1uLL);
  v15 = v14;
  v16 = a1[7];
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PUIReportAppListController.queryWithOptions", "", &v20, 2u);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, v5, v6);
  }

  v18 = *(a1[5] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

- (PUITrackingReportManager)init
{
  v9.receiver = self;
  v9.super_class = PUITrackingReportManager;
  v2 = [(PUITrackingReportManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D6B500]);
    v4 = [v3 initWorkspaceWithService:*MEMORY[0x277D6B6A0]];
    [(PUITrackingReportManager *)v2 setWorkspace:v4];

    v5 = objc_alloc(MEMORY[0x277D6B700]);
    workspace = [(PUITrackingReportManager *)v2 workspace];
    v7 = [v5 initWithWorkspace:workspace];
    [(PUITrackingReportManager *)v2 setFeed:v7];
  }

  return v2;
}

- (void)reloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PUITrackingReportManager_reloadWithCompletion___block_invoke;
  v6[3] = &unk_279BA1E00;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(PUITrackingReportManager *)self reloadEnabledWithCompletion:v6];
}

- (void)reloadEnabledWithCompletion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  feed = [(PUITrackingReportManager *)self feed];
  v21 = *MEMORY[0x277D6B680];
  v22[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __56__PUITrackingReportManager_reloadEnabledWithCompletion___block_invoke;
  v14 = &unk_279BA2408;
  objc_copyWeak(&v17, &location);
  selfCopy = self;
  v7 = completionCopy;
  v16 = v7;
  v8 = [feed getNetworkDomainsOptions:v6 reply:&v11];

  if ((v8 & 1) == 0)
  {
    v10 = _PUILoggingFacility(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[PUITrackingReportManager reloadEnabledWithCompletion:]";
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "%s: failed to refresh analytics value", buf, 0xCu);
    }

    [(PUITrackingReportManager *)self dataDidChange:v11];
    if (v7)
    {
      v7[2](v7);
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __56__PUITrackingReportManager_reloadEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PUITrackingReportManager_reloadEnabledWithCompletion___block_invoke_2;
  v6[3] = &unk_279BA23E0;
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v10, (a1 + 48));
  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v10);
}

uint64_t __56__PUITrackingReportManager_reloadEnabledWithCompletion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _PUILoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 136315394;
    v14 = "[PUITrackingReportManager reloadEnabledWithCompletion:]_block_invoke_2";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "%s: reply: %@", &v13, 0x16u);
  }

  v4 = *MEMORY[0x277D6B680];
  v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D6B680]];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D6B690]];
  v7 = [v6 BOOLValue];

  v8 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D6B688]];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setDate:v9];

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v11 setBool:v7 forKey:@"PSUITrackerAnalyticsEnabledKey"];

  [*(a1 + 40) dataDidChange];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadDataWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  trackingReportEnabled = [(PUITrackingReportManager *)self trackingReportEnabled];
  if (trackingReportEnabled)
  {
    inited = objc_initWeak(&location, self);
    v7 = _PUILoggingFacility(inited);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[PUITrackingReportManager reloadDataWithCompletion:]";
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s: Starting query for SFNetworkDomainTracker data", buf, 0xCu);
    }

    v8 = PUILogForCategory(1uLL);
    v9 = os_signpost_id_make_with_pointer(v8, "PUITrackingReportManager.reloadDataWithCompletion");

    v10 = PUILogForCategory(1uLL);
    v11 = v10;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2657FE000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PUITrackingReportManager.reloadDataWithCompletion", "", buf, 2u);
    }

    feed = [(PUITrackingReportManager *)self feed];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__PUITrackingReportManager_reloadDataWithCompletion___block_invoke;
    v20[3] = &unk_279BA2458;
    objc_copyWeak(v22, &location);
    v13 = *MEMORY[0x277D6B758];
    v20[4] = self;
    v14 = completionCopy;
    v21 = v14;
    v22[1] = v9;
    LOBYTE(v13) = [feed networkDomainsToDateWithOptionsFor:0 nameKind:v13 domainType:1 startTime:0 options:0 reply:v20];

    if ((v13 & 1) == 0)
    {
      if (v14)
      {
        v15 = (v14[2])(v14);
      }

      v16 = _PUILoggingFacility(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[PUITrackingReportManager reloadDataWithCompletion:]";
        _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "%s: failed to get analytics data", buf, 0xCu);
      }

      v17 = PUILogForCategory(1uLL);
      v18 = v17;
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2657FE000, v18, OS_SIGNPOST_INTERVAL_END, v9, "PUITrackingReportManager.reloadDataWithCompletion", "", buf, 2u);
      }
    }

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = _PUILoggingFacility(trackingReportEnabled);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[PUITrackingReportManager reloadDataWithCompletion:]";
      _os_log_impl(&dword_2657FE000, v19, OS_LOG_TYPE_DEFAULT, "%s: did not query, tracker analytics is off.", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __53__PUITrackingReportManager_reloadDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained appsToTrackersWithoutHiddenApps:v3];

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 appsToTrackersInAppOnlyFromAppsToTrackers:v5];

  v8 = objc_loadWeakRetained((a1 + 48));
  v30 = [v8 trackersToAppsDictFromAppsToTrackersDict:v7];

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 trackersToAppsDictFromAppsToTrackersDict:v5];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 appsToWebsitesDictFromAppsToTrackersDict:v5];

  v13 = objc_loadWeakRetained((a1 + 48));
  v14 = [v13 trackersToWebsitesDictFromAppsToTrackersDict:v5];

  v15 = objc_loadWeakRetained((a1 + 48));
  v16 = [v15 allEntriesFromAppsToTrackers:v5];

  v17 = objc_loadWeakRetained((a1 + 48));
  v18 = [v17 appsToTrackers];
  LOBYTE(v6) = [v5 isEqualToDictionary:v18] ^ 1;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PUITrackingReportManager_reloadDataWithCompletion___block_invoke_2;
  block[3] = &unk_279BA2430;
  objc_copyWeak(v41, (a1 + 48));
  v32 = v5;
  v33 = v7;
  v34 = v10;
  v35 = v30;
  v36 = v12;
  v37 = v14;
  v42 = v6;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v38 = v16;
  v39 = v19;
  v21 = v20;
  v22 = *(a1 + 56);
  v40 = v21;
  v41[1] = v22;
  v23 = v16;
  v24 = v14;
  v25 = v12;
  v26 = v30;
  v27 = v10;
  v28 = v7;
  v29 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v41);
}

void __53__PUITrackingReportManager_reloadDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  [WeakRetained setAppsToTrackers:v2];

  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((a1 + 104));
  [v5 setAppsToTrackersInAppOnly:v4];

  v6 = *(a1 + 48);
  v7 = objc_loadWeakRetained((a1 + 104));
  [v7 setTrackersToApps:v6];

  v8 = *(a1 + 56);
  v9 = objc_loadWeakRetained((a1 + 104));
  [v9 setTrackersToAppsInAppOnly:v8];

  v10 = *(a1 + 64);
  v11 = objc_loadWeakRetained((a1 + 104));
  [v11 setAppsToWebsitesToTrackers:v10];

  v12 = *(a1 + 72);
  v13 = objc_loadWeakRetained((a1 + 104));
  [v13 setTrackersToWebsitesToTrackers:v12];

  v14 = *(a1 + 80);
  v15 = objc_loadWeakRetained((a1 + 104));
  [v15 setAllEntries:v14];

  v16 = objc_loadWeakRetained((a1 + 104));
  v17 = [v16 appsToTrackers];
  v18 = [v17 allKeys];
  v19 = [v18 count] != 0;

  v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v20 setBool:v19 forKey:@"PSUITrackerHasDataKey"];

  if (*(a1 + 120) == 1)
  {
    [*(a1 + 88) dataDidChange];
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    v21 = (*(v21 + 16))();
  }

  v22 = _PUILoggingFacility(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[PUITrackingReportManager reloadDataWithCompletion:]_block_invoke_2";
    _os_log_impl(&dword_2657FE000, v22, OS_LOG_TYPE_DEFAULT, "%s: Finished query for SFNetworkDomainTracker data", &v26, 0xCu);
  }

  v23 = PUILogForCategory(1uLL);
  v24 = v23;
  v25 = *(a1 + 112);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PUITrackingReportManager.reloadDataWithCompletion", "", &v26, 2u);
  }
}

- (void)dataDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSUITrackingReportDataHasChanged" object:0];
}

- (BOOL)shouldIncludeBundleID:(id)d
{
  v3 = MEMORY[0x277CC1E70];
  dCopy = d;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];

  appTags = [v5 appTags];
  v7 = [appTags containsObject:@"hidden"];

  return v7 ^ 1;
}

- (id)appsToTrackersWithoutHiddenApps:(id)apps
{
  v19 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = appsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(PUITrackingReportManager *)self shouldIncludeBundleID:v11, v14])
        {
          v12 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)allEntriesFromAppsToTrackers:(id)trackers
{
  v28 = *MEMORY[0x277D85DE8];
  trackersCopy = trackers;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = trackersCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v5 objectForKeyedSubscript:{v10, 0}];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v4 addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];

  return v16;
}

- (id)entriesFiltered:(id)filtered
{
  filteredCopy = filtered;
  allEntries = [(PUITrackingReportManager *)self allEntries];
  v6 = [(PUITrackingReportManager *)self entries:allEntries filtered:filteredCopy];

  return v6;
}

- (id)entries:(id)entries filtered:(id)filtered
{
  v21 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  filteredCopy = filtered;
  if (filteredCopy)
  {
    v7 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = entriesCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (filteredCopy[2](filteredCopy, v13))
          {
            [v7 addObject:{v13, v16}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
  }

  else
  {
    v14 = entriesCopy;
  }

  return v14;
}

- (id)valuesAndCountsForKey:(id)key entries:(id)entries
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  entriesCopy = entries;
  v7 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = entriesCopy;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v25 = *v27;
    v24 = *MEMORY[0x277D6B630];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:keyCopy];
        v13 = [v7 objectForKeyedSubscript:v12];

        if (v13)
        {
          v14 = MEMORY[0x277CCABB0];
          v15 = [v11 objectForKeyedSubscript:keyCopy];
          v16 = [v7 objectForKeyedSubscript:v15];
          integerValue = [v16 integerValue];
          v18 = [v11 objectForKeyedSubscript:v24];
          v19 = [v14 numberWithInteger:{objc_msgSend(v18, "integerValue") + integerValue}];
          v20 = [v11 objectForKeyedSubscript:keyCopy];
          [v7 setObject:v19 forKeyedSubscript:v20];
        }

        else
        {
          v15 = [v11 objectForKeyedSubscript:v24];
          v16 = [v11 objectForKeyedSubscript:keyCopy];
          [v7 setObject:v15 forKeyedSubscript:v16];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v21 = [v7 copy];

  return v21;
}

- (id)valuesForKey:(id)key withLargestValueForKey:(id)forKey entries:(id)entries
{
  v39 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  forKeyCopy = forKey;
  entriesCopy = entries;
  v10 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = entriesCopy;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:forKeyCopy];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = [v15 objectForKeyedSubscript:keyCopy];
          v19 = [v10 objectForKeyedSubscript:v18];

          if (!v19 || ([v15 objectForKeyedSubscript:keyCopy], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", forKeyCopy), v22 = forKeyCopy, v23 = v12, v24 = v13, v25 = v10, v26 = keyCopy, v27 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v21, "compare:", v27), v27, keyCopy = v26, v10 = v25, v13 = v24, v12 = v23, forKeyCopy = v22, v21, v20, v33 == 1))
          {
            v28 = [v15 objectForKeyedSubscript:forKeyCopy];
            v29 = [v15 objectForKeyedSubscript:keyCopy];
            [v10 setObject:v28 forKeyedSubscript:v29];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  v30 = [v10 copy];

  return v30;
}

- (id)appsToTrackersInAppOnlyFromAppsToTrackers:(id)trackers
{
  v34 = *MEMORY[0x277D85DE8];
  trackersCopy = trackers;
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = trackersCopy;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v20 = *v29;
    v5 = *MEMORY[0x277D6B638];
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [obj objectForKeyedSubscript:{v7, v20}];
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * i);
              v14 = [v13 objectForKeyedSubscript:v5];
              v15 = [v14 isEqualToString:@"AppInitiated"];

              if (v15)
              {
                v16 = [v4 objectForKeyedSubscript:v7];

                if (!v16)
                {
                  v17 = objc_opt_new();
                  [v4 setObject:v17 forKeyedSubscript:v7];
                }

                v18 = [v4 objectForKeyedSubscript:v7];
                [v18 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v10);
        }

        v6 = v23 + 1;
      }

      while (v23 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  return v4;
}

- (id)trackersToAppsDictFromAppsToTrackersDict:(id)dict
{
  v33 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = dictCopy;
  v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v19 = *v28;
    v5 = *MEMORY[0x277D6B628];
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v6;
        v7 = *(*(&v27 + 1) + 8 * v6);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = [obj objectForKeyedSubscript:{v7, v19}];
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v23 + 1) + 8 * i);
              v14 = [v13 objectForKeyedSubscript:v5];
              v15 = [v4 objectForKeyedSubscript:v14];

              if (!v15)
              {
                v16 = objc_opt_new();
                [v4 setObject:v16 forKeyedSubscript:v14];
              }

              v17 = [v4 objectForKeyedSubscript:v14];
              [v17 addObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v10);
        }

        v6 = v22 + 1;
      }

      while (v22 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  return v4;
}

- (id)appsToWebsitesDictFromAppsToTrackersDict:(id)dict
{
  v41 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = dictCopy;
  v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v25 = *v36;
    v5 = *MEMORY[0x277D6B620];
    v30 = *MEMORY[0x277D6B638];
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v29 = [obj objectForKeyedSubscript:{v7, v25}];
        v8 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(v29);
              }

              v12 = *(*(&v31 + 1) + 8 * i);
              v13 = [v12 objectForKeyedSubscript:v5];
              if ([v13 length])
              {
                v14 = [v12 objectForKeyedSubscript:v30];
                v15 = [v14 isEqualToString:@"NonAppInitiated"];

                if (v15)
                {
                  v16 = [v4 objectForKeyedSubscript:v7];

                  if (!v16)
                  {
                    v17 = objc_opt_new();
                    [v4 setObject:v17 forKeyedSubscript:v7];
                  }

                  v18 = [v4 objectForKeyedSubscript:v7];
                  v19 = [v18 objectForKeyedSubscript:v13];

                  if (!v19)
                  {
                    v20 = objc_opt_new();
                    v21 = [v4 objectForKeyedSubscript:v7];
                    [v21 setObject:v20 forKeyedSubscript:v13];
                  }

                  v22 = [v4 objectForKeyedSubscript:v7];
                  v23 = [v22 objectForKeyedSubscript:v13];
                  [v23 addObject:v12];
                }
              }
            }

            v9 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v9);
        }

        v6 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }

  return v4;
}

- (id)trackersToWebsitesDictFromAppsToTrackersDict:(id)dict
{
  v43 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = dictCopy;
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v26 = *v38;
    v32 = *MEMORY[0x277D6B620];
    v5 = *MEMORY[0x277D6B628];
    v31 = *MEMORY[0x277D6B638];
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = *(*(&v37 + 1) + 8 * v6);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v30 = [obj objectForKeyedSubscript:v7];
        v8 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v34;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v34 != v10)
              {
                objc_enumerationMutation(v30);
              }

              v12 = *(*(&v33 + 1) + 8 * i);
              v13 = [v12 objectForKeyedSubscript:v32];
              v14 = [v12 objectForKeyedSubscript:v5];
              if ([v13 length])
              {
                v15 = [v12 objectForKeyedSubscript:v31];
                v16 = [v15 isEqualToString:@"NonAppInitiated"];

                if (v16)
                {
                  v17 = [v4 objectForKeyedSubscript:v14];

                  if (!v17)
                  {
                    v18 = objc_opt_new();
                    [v4 setObject:v18 forKeyedSubscript:v14];
                  }

                  v19 = [v4 objectForKeyedSubscript:v14];
                  v20 = [v19 objectForKeyedSubscript:v13];

                  if (!v20)
                  {
                    v21 = objc_opt_new();
                    v22 = [v4 objectForKeyedSubscript:v14];
                    [v22 setObject:v21 forKeyedSubscript:v13];
                  }

                  v23 = [v4 objectForKeyedSubscript:v14];
                  v24 = [v23 objectForKeyedSubscript:v13];
                  [v24 addObject:v12];
                }
              }
            }

            v9 = [v30 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v9);
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  return v4;
}

- (BOOL)hadDataInLastQuery
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PSUITrackerHasDataKey"];

  return v3;
}

- (BOOL)trackingReportEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PSUITrackerAnalyticsEnabledKey"];

  return v3;
}

- (void)setTrackingReportEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19[1] = *MEMORY[0x277D85DE8];
  if (!enabled)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:0 forKey:@"PSUITrackerHasDataKey"];
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setBool:enabledCopy forKey:@"PSUITrackerAnalyticsEnabledKey"];

  objc_initWeak(&location, self);
  feed = [(PUITrackingReportManager *)self feed];
  v18 = *MEMORY[0x277D6B678];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__PUITrackingReportManager_setTrackingReportEnabled___block_invoke;
  v13[3] = &unk_279BA24A8;
  objc_copyWeak(&v14, &location);
  v10 = [feed setNetworkDomainsOptions:v9 reply:v13];

  if ((v10 & 1) == 0)
  {
    v12 = _PUILoggingFacility(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PUITrackingReportManager setTrackingReportEnabled:]";
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "%s: failed to set analytics value", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __53__PUITrackingReportManager_setTrackingReportEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PUITrackingReportManager_setTrackingReportEnabled___block_invoke_2;
  v5[3] = &unk_279BA2480;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __53__PUITrackingReportManager_setTrackingReportEnabled___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PUILoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[PUITrackingReportManager setTrackingReportEnabled:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "%s: reply: %@", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dataDidChange];
}

- (void)exportToStream:(id)stream error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  [(PUITrackingReportManager *)self allData];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v30 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
  v5 = 0;
  if (v30)
  {
    v29 = *v44;
    do
    {
      v6 = 0;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v6;
        v7 = *(*(&v43 + 1) + 8 * v6);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v34 = [obj objectForKeyedSubscript:{v7, v29}];
        v8 = [v34 countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v8)
        {
          v9 = v8;
          v37 = *v40;
          do
          {
            v10 = 0;
            v11 = v5;
            do
            {
              if (*v40 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v12 = *(*(&v39 + 1) + 8 * v10);
              v13 = objc_autoreleasePoolPush();
              v14 = [v12 mutableCopy];
              [v14 setObject:@"networkActivity" forKeyedSubscript:@"type"];
              v38 = v11;
              v15 = streamCopy;
              v16 = [PUIJSONSerialization dataWithJSONObject:v14 options:0 error:&v38];
              v17 = v16;
              if (v16 && (v18 = v16, v19 = v15, v20 = PUIWriteBytesToStream(v19, [v17 bytes], objc_msgSend(v17, "length"), &v38), v19, v20))
              {
                v21 = v19;
                v35 = v12;
                uTF8String = [@"\n" UTF8String];
                v23 = [@"\n" lengthOfBytesUsingEncoding:4];
                v24 = uTF8String;
                v12 = v35;
                v25 = PUIWriteBytesToStream(v21, v24, v23, &v38);
              }

              else
              {
                v25 = 0;
              }

              v5 = v38;
              if (!v25)
              {
                v27 = _PUILoggingFacility(v26);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v48 = "[PUITrackingReportManager exportToStream:error:]";
                  v49 = 2112;
                  v50 = v5;
                  v51 = 2112;
                  v52 = v12;
                  _os_log_error_impl(&dword_2657FE000, v27, OS_LOG_TYPE_ERROR, "%s: Error writing to stream: %@, for object %@", buf, 0x20u);
                }

                v28 = v5;
                *error = v5;
              }

              objc_autoreleasePoolPop(v13);
              ++v10;
              v11 = v5;
            }

            while (v9 != v10);
            v9 = [v34 countByEnumeratingWithState:&v39 objects:v53 count:16];
          }

          while (v9);
        }

        v6 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v30);
  }
}

- (int64_t)highestNumberOfTrackerDataPerAppInAppOnly:(BOOL)only
{
  v17 = *MEMORY[0x277D85DE8];
  if (only)
  {
    [(PUITrackingReportManager *)self appsToTrackersInAppOnly];
  }

  else
  {
    [(PUITrackingReportManager *)self appsToTrackers];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = [v9 count];

        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)highestNumberOfTrackerDataPerTrackerInAppOnly:(BOOL)only
{
  v17 = *MEMORY[0x277D85DE8];
  if (only)
  {
    [(PUITrackingReportManager *)self trackersToAppsInAppOnly];
  }

  else
  {
    [(PUITrackingReportManager *)self trackersToApps];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = [v9 count];

        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appsIDsContactingTrackersInAppOnly:(BOOL)only
{
  if (only)
  {
    [(PUITrackingReportManager *)self appsToTrackersInAppOnly];
  }

  else
  {
    [(PUITrackingReportManager *)self appsToTrackers];
  }
  v3 = ;
  allKeys = [v3 allKeys];

  return allKeys;
}

- (id)trackerDataForAppID:(id)d inAppOnly:(BOOL)only
{
  dCopy = d;
  if (only)
  {
    [(PUITrackingReportManager *)self appsToTrackersInAppOnly];
  }

  else
  {
    [(PUITrackingReportManager *)self appsToTrackers];
  }
  v7 = ;
  v8 = [v7 objectForKeyedSubscript:dCopy];

  return v8;
}

- (id)trackerDomainsInAppOnly:(BOOL)only
{
  if (only)
  {
    [(PUITrackingReportManager *)self trackersToAppsInAppOnly];
  }

  else
  {
    [(PUITrackingReportManager *)self trackersToApps];
  }
  v3 = ;
  allKeys = [v3 allKeys];

  return allKeys;
}

- (id)trackerDataForTrackerDomain:(id)domain inAppOnly:(BOOL)only
{
  domainCopy = domain;
  if (only)
  {
    [(PUITrackingReportManager *)self trackersToAppsInAppOnly];
  }

  else
  {
    [(PUITrackingReportManager *)self trackersToApps];
  }
  v7 = ;
  v8 = [v7 objectForKeyedSubscript:domainCopy];

  return v8;
}

- (id)websiteDomainsForAppID:(id)d
{
  dCopy = d;
  appsToWebsitesToTrackers = [(PUITrackingReportManager *)self appsToWebsitesToTrackers];
  v6 = [appsToWebsitesToTrackers objectForKeyedSubscript:dCopy];

  allKeys = [v6 allKeys];

  return allKeys;
}

- (id)trackerDataForAppID:(id)d websiteDomain:(id)domain
{
  domainCopy = domain;
  dCopy = d;
  appsToWebsitesToTrackers = [(PUITrackingReportManager *)self appsToWebsitesToTrackers];
  v9 = [appsToWebsitesToTrackers objectForKeyedSubscript:dCopy];

  v10 = [v9 objectForKeyedSubscript:domainCopy];

  return v10;
}

- (id)websiteDomainsForTrackerDomain:(id)domain
{
  domainCopy = domain;
  trackersToWebsitesToTrackers = [(PUITrackingReportManager *)self trackersToWebsitesToTrackers];
  v6 = [trackersToWebsitesToTrackers objectForKeyedSubscript:domainCopy];

  allKeys = [v6 allKeys];

  return allKeys;
}

- (id)trackerDataForTrackerDomain:(id)domain websiteDomain:(id)websiteDomain
{
  websiteDomainCopy = websiteDomain;
  domainCopy = domain;
  trackersToWebsitesToTrackers = [(PUITrackingReportManager *)self trackersToWebsitesToTrackers];
  v9 = [trackersToWebsitesToTrackers objectForKeyedSubscript:domainCopy];

  v10 = [v9 objectForKeyedSubscript:websiteDomainCopy];

  return v10;
}

@end