@interface ATXTimelineRelevanceFilter
+ (id)applyLimitsToTimelineSuggestions:(id)suggestions forWidget:(id)widget withTimelineEntryDelegate:(id)delegate abuseControlConfig:(id)config;
+ (id)filteredAndSortedTimelineEntriesForWidget:(id)widget entries:(id)entries withTimelineEntryDelegate:(id)delegate abuseControlConfig:(id)config;
@end

@implementation ATXTimelineRelevanceFilter

+ (id)filteredAndSortedTimelineEntriesForWidget:(id)widget entries:(id)entries withTimelineEntryDelegate:(id)delegate abuseControlConfig:(id)config
{
  v48 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  entriesCopy = entries;
  delegateCopy = delegate;
  configCopy = config;
  v13 = objc_opt_new();
  atxTimelineIdentifier = [widgetCopy atxTimelineIdentifier];
  extensionIdentity = [widgetCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  v17 = [delegateCopy countOfInfoSuggestionsForBundleId:containerBundleIdentifier];

  timelineUpdateLimitPerAppBundleId = [configCopy timelineUpdateLimitPerAppBundleId];
  if (v17 > timelineUpdateLimitPerAppBundleId)
  {
    v19 = __atxlog_handle_timeline(timelineUpdateLimitPerAppBundleId);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      extensionIdentity2 = [widgetCopy extensionIdentity];
      containerBundleIdentifier2 = [extensionIdentity2 containerBundleIdentifier];
      *buf = 138412802;
      v43 = containerBundleIdentifier2;
      v44 = 2048;
      v45 = v17;
      v46 = 2048;
      timelineUpdateLimitPerAppBundleId2 = [configCopy timelineUpdateLimitPerAppBundleId];
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Filtering out timeline update since the total number of entries for bundleId %@: %llu has exceeded limit (%lu)", buf, 0x20u);
    }

LABEL_7:

    v24 = v13;
    goto LABEL_15;
  }

  v22 = [delegateCopy countOfInfoSuggestionsForSourceId:atxTimelineIdentifier];
  timelineUpdateLimitPerSource = [configCopy timelineUpdateLimitPerSource];
  if (v22 > timelineUpdateLimitPerSource)
  {
    v19 = __atxlog_handle_timeline(timelineUpdateLimitPerSource);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v43 = atxTimelineIdentifier;
      v44 = 2048;
      v45 = v22;
      v46 = 2048;
      timelineUpdateLimitPerAppBundleId2 = [configCopy timelineUpdateLimitPerSource];
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Filtering out timeline update since the total number of entries for sourceId %@: %llu has exceeded limit (%lu)", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v25 = [delegateCopy latestUpdateDateForSourceId:atxTimelineIdentifier];
  if (v25 && ([MEMORY[0x277CBEAA8] now], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "timeIntervalSinceDate:", v25), v28 = v27, v29 = objc_msgSend(configCopy, "minimumSecondsBetweenMetadataUpdatesPerSource"), v26, v28 < v29))
  {
    v31 = __atxlog_handle_timeline(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      minimumSecondsBetweenMetadataUpdatesPerSource = [configCopy minimumSecondsBetweenMetadataUpdatesPerSource];
      v32 = [MEMORY[0x277CBEAA8] now];
      [v32 timeIntervalSinceDate:v25];
      *buf = 134218498;
      v43 = minimumSecondsBetweenMetadataUpdatesPerSource;
      v44 = 2112;
      v45 = atxTimelineIdentifier;
      v46 = 1024;
      LODWORD(timelineUpdateLimitPerAppBundleId2) = v33;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Rate limiting limits reloads to one per %lu seconds. Filtering out timeline update for source %@ since the last update was %d seconds ago", buf, 0x1Cu);
    }

    v24 = v13;
  }

  else
  {
    v34 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    v41 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v36 = [entriesCopy sortedArrayUsingDescriptors:v35];

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke;
    v39[3] = &unk_27859D008;
    v40 = widgetCopy;
    v24 = [v36 _pas_filteredArrayWithTest:v39];
  }

LABEL_15:

  return v24;
}

BOOL __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [v3 relevance];

  [v7 duration];
  v9 = v6 + v8;

  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  [v10 timeIntervalSinceReferenceDate];
  v12 = vabdd_f64(v9, v11);

  if (v12 < 1.0)
  {
    v14 = __atxlog_handle_timeline(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke_cold_1(a1, v14);
    }
  }

  return v12 >= 1.0;
}

+ (id)applyLimitsToTimelineSuggestions:(id)suggestions forWidget:(id)widget withTimelineEntryDelegate:(id)delegate abuseControlConfig:(id)config
{
  suggestionsCopy = suggestions;
  widgetCopy = widget;
  delegateCopy = delegate;
  configCopy = config;
  atxTimelineIdentifier = [widgetCopy atxTimelineIdentifier];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  extensionIdentity = [widgetCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  v16 = [delegateCopy countOfInfoSuggestionsForBundleId:containerBundleIdentifier];

  v32[3] = v16;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = [delegateCopy countOfInfoSuggestionsForSourceId:atxTimelineIdentifier];
  v17 = MEMORY[0x277CCAC30];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __118__ATXTimelineRelevanceFilter_applyLimitsToTimelineSuggestions_forWidget_withTimelineEntryDelegate_abuseControlConfig___block_invoke;
  v26 = &unk_27859D030;
  v29 = v32;
  v30 = v31;
  v18 = configCopy;
  v27 = v18;
  v19 = atxTimelineIdentifier;
  v28 = v19;
  v20 = [v17 predicateWithBlock:&v23];
  v21 = [suggestionsCopy filteredArrayUsingPredicate:{v20, v23, v24, v25, v26}];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);

  return v21;
}

uint64_t __118__ATXTimelineRelevanceFilter_applyLimitsToTimelineSuggestions_forWidget_withTimelineEntryDelegate_abuseControlConfig___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 48) + 8) + 24);
  ++*(*(*(a1 + 56) + 8) + 24);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) timelineUpdateLimitPerAppBundleId];
  if (v2 <= v3)
  {
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v3 = [*(a1 + 32) timelineUpdateLimitPerSource];
    if (v4 <= v3)
    {
      return 1;
    }
  }

  v5 = __atxlog_handle_timeline(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) timelineUpdateLimitPerSource];
    v8 = [*(a1 + 32) timelineUpdateLimitPerAppBundleId];
    v10 = 138412802;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXInfoTimelineEntryFilter: Filtering out timeline update for source %@ since the total number of entries has exceeded limit for source (%lu) or limit for appBundleId (%lu)", &v10, 0x20u);
  }

  return 0;
}

void __125__ATXTimelineRelevanceFilter_filteredAndSortedTimelineEntriesForWidget_entries_withTimelineEntryDelegate_abuseControlConfig___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) extensionIdentity];
  v4 = [v3 extensionBundleIdentifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInfoTimelineEntryFilter: Filtered timeline entry expiring in the distant future from: %@", &v5, 0xCu);
}

@end