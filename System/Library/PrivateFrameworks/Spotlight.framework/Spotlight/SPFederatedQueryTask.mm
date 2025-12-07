@interface SPFederatedQueryTask
+ (BOOL)isCJK;
+ (BOOL)sectionSupportsShowMoreInApp:(id)app;
+ (id)appGenreMap;
+ (id)contactEntityFromQueryContext:(id)context;
+ (id)queryClasses;
+ (id)searchContinuationCompatibilitySet;
+ (void)activate;
+ (void)activate:(BOOL)activate;
+ (void)deactivate;
+ (void)initialize;
- (BOOL)forceAboveFoldResultsWithQuery:(id)query topHitSection:(id)section sections:(id)sections;
- (BOOL)isBullseyeCommittedSearch;
- (BOOL)isBullseyeNonCommittedSearch;
- (BOOL)parsecAvailable;
- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections;
- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections suggestionResults:(id)results;
- (BOOL)storeSearchProgress:(id)progress withSections:(id)sections suggestionResults:(id)results;
- (SPClientSession)session;
- (__CFArray)copyMatchInfo;
- (id)_queriesForSearchTool;
- (id)_queriesForUserQuery:(BOOL)query;
- (id)contactSuggestionsWithSearchString:(id)string;
- (id)correctedQueryWithCorrection:(id)correction;
- (id)dedupeLocalSectionsByBundleId:(id)id;
- (id)detailTextFromBundleIDs:(id)ds;
- (id)displayedText;
- (id)initForSession:(id)session withQuery:(id)query;
- (id)orderedCategories:(id)categories;
- (id)retainAndMergeSections:(id)sections forState:(unint64_t)state;
- (id)searchString;
- (id)suggestionsWithSearchString:(id)string sections:(id)sections topHitSection:(id)section highestLocalScore:(double)score;
- (id)unsafeSections;
- (id)unsafeSessionEntityString;
- (id)waitForQueryCorrections;
- (unint64_t)queryIdent;
- (void)_processResponse:(id)response toQuery:(id)query;
- (void)_updateQueryContext:(id)context;
- (void)activate;
- (void)addAndStartQuery;
- (void)addDictionarySections:(id)sections;
- (void)addMatchInfo:(_MDPlistContainer *)info;
- (void)addQueryCorrections:(id)corrections;
- (void)addSections:(id)sections delayedTopHit:(BOOL)hit;
- (void)addSuggestionsToSectionsForSending:(id)sending searchString:(id)string updatedSections:(BOOL)sections queryKind:(unint64_t)kind;
- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)sending updatedSections:(BOOL)sections isScopedSearch:(BOOL)search;
- (void)cancel;
- (void)cancelQuery;
- (void)clear;
- (void)deDuplicateMailResults:(id)results;
- (void)deDuplicateSection:(id)section againstSection:(id)againstSection;
- (void)dealloc;
- (void)handleOptionsForNewSections:(id)sections;
- (void)logPerfToAnalytics:(int)analytics;
- (void)mergeRelatedContentFromSections:(id)sections bundlesToMerge:(id)merge mergedSectionId:(id)id;
- (void)mergeSections;
- (void)prepareAndSend:(id)send force:(BOOL)force moreComing:(BOOL)coming reason:(int)reason;
- (void)processAppResults:(id)results maxAppResults:(unint64_t)appResults section:(id)section topHitsIndex:(unint64_t *)index;
- (void)queryTask:(id)task gotResponse:(id)response;
- (void)relatedContentSectionMerging:(id)merging;
- (void)searchQuery:(id)query gotResultSet:(id)set replace:(BOOL)replace partiallyComplete:(BOOL)complete priorityFastPath:(BOOL)path update:(BOOL)update complete:(BOOL)a9 delayedTopHit:(BOOL)self0 unchanged:(BOOL)self1 forceStable:(BOOL)self2 blendingDuration:(double)self3 geoEntityString:(id)self4 supportedAppScopes:(id)self5 showMoreInAppInfo:(id)self6;
- (void)searchQueryEncounteredError:(id)error;
- (void)sendError:(id)error;
- (void)sendFinishedDomains:(BOOL)domains reason:(int)reason;
- (void)sendFinishedDomainsZKW:(BOOL)w;
- (void)sendQueryCompleted;
- (void)sendQueryReset;
- (void)sendResults:(id)results reset:(BOOL)reset partiallyComplete:(BOOL)complete update:(BOOL)update complete:(BOOL)a7 delayedTopHit:(BOOL)hit reason:(int)reason;
- (void)sendResults:(id)results reset:(BOOL)reset partiallyComplete:(BOOL)complete update:(BOOL)update complete:(BOOL)a7 unchanged:(BOOL)unchanged delayedTopHit:(BOOL)hit reason:(int)self0;
- (void)sendResultsForKeys:(id)keys toSendSections:(id)sections;
- (void)sendTTRLogsWithSections:(id)sections;
- (void)serverSideDedupe:(id)dedupe;
- (void)setBundlesSupportingAppScoping:(id)scoping;
- (void)start;
- (void)startSetup;
- (void)storeWillComplete:(id)complete;
- (void)truncateSuggestionsSectionToFit:(id)fit;
- (void)updateResultsWithContactHeader;
@end

@implementation SPFederatedQueryTask

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];
    v3 = sEligibleBundleSet;
    sEligibleBundleSet = v2;

    v4 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.mobilecal", @"com.apple.Health", @"com.apple.Music", @"com.apple.podcasts", @"com.apple.reminders", @"com.apple.MobileAddressBook", @"com.apple.mobilenotes", @"com.apple.mobilemail", @"com.apple.MobileSMS", @"com.apple.Maps", @"com.apple.DocumentsApp", 0}];
    v5 = sSearchContinuationCompatibilityCache;
    sSearchContinuationCompatibilityCache = v4;

    v6 = sAppGenreCache;
    sAppGenreCache = &unk_287C3B830;

    sDeviceClass = MGGetSInt32Answer();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_overcommit();
    v9 = dispatch_queue_create("com.apple.SpotlightFramework.workq", v8);
    v10 = __workQueue;
    __workQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("com.apple.search.daemonQueue", v12);
    v14 = __lifeCycleQueue;
    __lifeCycleQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create("com.apple.SpotlightFramework.bgworkq", v16);
    v18 = __backgroundWorkQueue;
    __backgroundWorkQueue = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
    [v19 BOOLForKey:@"enableDebug"];
    SPSetAppsChangedBlockClient();
    v20 = dispatch_get_global_queue(17, 0);
    tracing_dispatch_async();
  }
}

void __34__SPFederatedQueryTask_initialize__block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v2, OS_LOG_TYPE_DEFAULT, "Apps changed", buf, 2u);
  }

  v3 = __workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SPFederatedQueryTask_initialize__block_invoke_245;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v3, v4);
}

uint64_t __34__SPFederatedQueryTask_initialize__block_invoke_245(uint64_t a1)
{
  v1 = objc_opt_class();

  return [v1 invalidateCacheForSearchContinuation];
}

void __34__SPFederatedQueryTask_initialize__block_invoke_2()
{
  v1 = [MEMORY[0x277D65808] sharedManager];
  v0 = [MEMORY[0x277D4BEC0] sharedProxy];
  [v1 setFeedbackDelegate:v0];
}

+ (id)appGenreMap
{
  os_unfair_lock_lock(&sCacheLock);
  v2 = [sAppGenreCache copy];
  os_unfair_lock_unlock(&sCacheLock);

  return v2;
}

+ (id)searchContinuationCompatibilitySet
{
  os_unfair_lock_lock(&sCacheLock);
  v2 = [sSearchContinuationCompatibilityCache copy];
  os_unfair_lock_unlock(&sCacheLock);

  return v2;
}

+ (id)queryClasses
{
  if (queryClasses_onceToken != -1)
  {
    +[SPFederatedQueryTask queryClasses];
  }

  v3 = queryClasses_queryClasses;

  return v3;
}

void __36__SPFederatedQueryTask_queryClasses__block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:5];
  v1 = queryClasses_queryClasses;
  queryClasses_queryClasses = v0;

  if (_os_feature_enabled_impl())
  {
    v2 = [queryClasses_queryClasses arrayByAddingObject:{objc_opt_class(), v8, v9, v10, v11}];
    v3 = queryClasses_queryClasses;
    queryClasses_queryClasses = v2;
  }

  if (_os_feature_enabled_impl())
  {
    v4 = [queryClasses_queryClasses arrayByAddingObject:objc_opt_class()];
    v5 = queryClasses_queryClasses;
    queryClasses_queryClasses = v4;
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [queryClasses_queryClasses arrayByAddingObject:objc_opt_class()];
    v7 = queryClasses_queryClasses;
    queryClasses_queryClasses = v6;
  }
}

- (id)_queriesForUserQuery:(BOOL)query
{
  queryCopy = query;
  v37 = *MEMORY[0x277D85DE8];
  v30 = objc_opt_new();
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  [SPCalculatorQuery enableConversion:1];
  [SPCalculatorQuery enableCalculator:1];
  [SPDictionaryQuery enableDictionary:1];
  v31 = queryContext;
  disabledBundles = [queryContext disabledBundles];
  v8 = [disabledBundles containsObject:@"com.apple.conversion"];

  if (v8)
  {
    [SPCalculatorQuery enableConversion:0];
  }

  disabledBundles2 = [queryContext disabledBundles];
  v10 = [disabledBundles2 containsObject:@"com.apple.calculator"];

  if (v10)
  {
    [SPCalculatorQuery enableConversion:0];
    [SPCalculatorQuery enableCalculator:0];
  }

  if ([(SPFederatedQueryTask *)self isPeopleSearch]|| [(SPFederatedQueryTask *)self isScopedAppSearch])
  {
    [SPDictionaryQuery enableDictionary:0];
    [SPCalculatorQuery enableConversion:0];
    [SPCalculatorQuery enableCalculator:0];
  }

  query2 = [(SPQueryTask *)self query];
  queryContext2 = [query2 queryContext];
  options = [queryContext2 options];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  queryClasses = [objc_opt_class() queryClasses];
  v15 = [queryClasses countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    v18 = &unk_287C3B740;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(queryClasses);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        if (!queryCopy || v20 != objc_opt_class())
        {
          v21 = SPGetDisabledDomains();
          if ([v21 containsObject:v18])
          {
            v22 = queryCopy;
            v23 = v18;
            v24 = objc_opt_class();

            v25 = v20 == v24;
            v18 = v23;
            queryCopy = v22;
            if (v25)
            {
              continue;
            }
          }

          else
          {
          }

          if ([(objc_class *)v20 isQuerySupported:options])
          {
            v26 = [v20 alloc];
            searchString = [v31 searchString];
            v28 = [v26 initWithUserQuery:searchString queryGroupId:objc_msgSend(v31 options:"queryIdent") queryContext:{options, v31}];

            if (v28)
            {
              [v30 addObject:v28];
            }
          }
        }
      }

      v16 = [queryClasses countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }

  return v30;
}

- (id)_queriesForSearchTool
{
  v3 = objc_opt_new();
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  v6 = MEMORY[0x277D65898];
  searchString = [queryContext searchString];
  v8 = [v6 normalizeSearchString:searchString queryContext:queryContext];
  [queryContext setSearchString:v8];

  v9 = [SPCSSearchQuery alloc];
  searchString2 = [queryContext searchString];
  v11 = -[SPCSSearchQuery initWithUserQuery:queryGroupId:options:queryContext:](v9, "initWithUserQuery:queryGroupId:options:queryContext:", searchString2, [queryContext queryIdent], objc_msgSend(queryContext, "options"), queryContext);

  if (v11)
  {
    [v3 addObject:v11];
  }

  return v3;
}

- (void)startSetup
{
  v3 = SPLogForSPLogCategoryTelemetry();
  v4 = v3;
  externalID = self->_externalID;
  if (externalID && os_signpost_enabled(v3))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "spotlightLatency", " enableTelemetry=YES ", v10, 2u);
  }

  self->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_startTimeIntervalSinceReferenceDate = v6;
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchString = [queryContext searchString];
  SDTraceAdd();

  self->_genreGroupingEnabled = SPGenreGroupingEnabled();
  self->_shouldRecomputeSuggestions = 1;
}

- (void)cancelQuery
{
  v30 = *MEMORY[0x277D85DE8];
  SDTraceAdd();
  query = [(SPQueryTask *)self query];
  [query cancel];

  itemRanker = [(SPFederatedQueryTask *)self itemRanker];
  [itemRanker cancel];

  [(SSRankingManager *)self->_rankingManager cancel];
  v5 = [(NSMutableArray *)self->_slowTokens copy];
  v6 = [(NSMutableArray *)self->_tokens copy];
  slowTokens = self->_slowTokens;
  self->_slowTokens = 0;

  tokens = self->_tokens;
  self->_tokens = 0;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v24 + 1) + 8 * v13++) cancel];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) cancel];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  categoryToResultMapping = self->_categoryToResultMapping;
  self->_categoryToResultMapping = 0;

  self->_sentTaggedTopHits = 0;
  [(SPFederatedQueryTask *)self setMessage:0];
}

void __57__SPFederatedQueryTask_prepareCacheForSearchContinuation__block_invoke()
{
  v42 = *MEMORY[0x277D85DE8];
  if (sCacheUpToDate)
  {
    return;
  }

  if (!sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache)
  {
    v0 = objc_opt_new();
    v1 = sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache;
    sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache = v0;
  }

  v2 = SPCopyVisibleApps();
  os_unfair_lock_lock(&sCacheLock);
  v3 = [sAppGenreCache mutableCopy];
  v4 = [sSearchContinuationCompatibilityCache mutableCopy];
  os_unfair_lock_unlock(&sCacheLock);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v2 copy];
  v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v5)
  {
    v28 = obj;
    goto LABEL_48;
  }

  v6 = v5;
  v30 = v2;
  v31 = 0;
  v7 = *v36;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v36 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v35 + 1) + 8 * i);
      if (([v4 containsObject:v9] & 1) == 0 && (objc_msgSend(sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache, "containsObject:", v9) & 1) == 0)
      {
        v10 = objc_alloc(MEMORY[0x277CC1E70]);
        v34 = 0;
        v11 = [v10 initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v34];
        v12 = v34;
        if (v12)
        {
          v13 = v12;
          v14 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v13;
            _os_log_error_impl(&dword_26B71B000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        if (v11)
        {
          v15 = [v11 supportsSpotlightQueryContinuation];
          v16 = [v11 iTunesMetadata];
          v17 = [v16 genre];

          if (v15)
          {
            LODWORD(v31) = 1;
            v18 = v4;
            goto LABEL_20;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache;
LABEL_20:
        [v18 addObject:v9];
        v19 = [v3 objectForKey:v9];

        if (!v19 && v17 && ([v17 isEqual:&stru_287C35638] & 1) == 0)
        {
          [v3 setObject:v17 forKey:v9];
          HIDWORD(v31) = 1;
        }
      }

      v20 = [v3 objectForKey:v9];

      if (!v20)
      {
        v21 = objc_alloc(MEMORY[0x277CC1E70]);
        v33 = 0;
        v22 = [v21 initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v33];
        v23 = v33;
        if (v23)
        {
          v24 = v23;
          v25 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v24;
            _os_log_error_impl(&dword_26B71B000, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v26 = [v22 iTunesMetadata];
        v27 = [v26 genre];

        if (v27 && ([v27 isEqual:&stru_287C35638] & 1) == 0)
        {
          [v3 setObject:v27 forKey:v9];
          HIDWORD(v31) = 1;
        }
      }
    }

    v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v6);

  v2 = v30;
  if ((v31 | HIDWORD(v31)))
  {
    if ((v31 & 0x100000000) != 0)
    {
      v28 = [v3 copy];
      if ((v31 & 1) == 0)
      {
        v29 = 0;
        goto LABEL_43;
      }

LABEL_42:
      v29 = [v4 copy];
    }

    else
    {
      v28 = 0;
      v29 = 0;
      if (v31)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    os_unfair_lock_lock(&sCacheLock);
    if (v28)
    {
      objc_storeStrong(&sAppGenreCache, v28);
    }

    if (v29)
    {
      objc_storeStrong(&sSearchContinuationCompatibilityCache, v29);
    }

    os_unfair_lock_unlock(&sCacheLock);

LABEL_48:
  }

  sCacheUpToDate = 1;
}

void __60__SPFederatedQueryTask_invalidateCacheForSearchContinuation__block_invoke()
{
  v40 = *MEMORY[0x277D85DE8];
  v0 = SPCopyVisibleApps();
  os_unfair_lock_lock(&sCacheLock);
  v1 = [sAppGenreCache mutableCopy];
  os_unfair_lock_unlock(&sCacheLock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = 0;
    v5 = *v28;
    v6 = 0x277CC1000uLL;
    v24 = v2;
    v25 = *v28;
    do
    {
      v7 = 0;
      v26 = v4;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = [v1 objectForKey:v8];

        if (!v9)
        {
          v10 = [*(v6 + 3680) applicationProxyForIdentifier:v8];
          v11 = SPLogForSPLogCategoryDefault();
          v12 = v11;
          if (*MEMORY[0x277D4BF48])
          {
            v13 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v13 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v11, v13))
          {
            v14 = [v10 genre];
            [v10 subgenres];
            v16 = v15 = v1;
            [v10 genreID];
            v18 = v17 = v6;
            *buf = 138413058;
            v32 = v8;
            v33 = 2112;
            v34 = v14;
            v35 = 2112;
            v36 = v16;
            v37 = 2112;
            v38 = v18;
            _os_log_impl(&dword_26B71B000, v12, v13, "%@ genre %@, subgenre %@, id %@", buf, 0x2Au);

            v6 = v17;
            v1 = v15;
            v2 = v24;
            v5 = v25;

            v4 = v26;
          }

          v19 = [v10 genre];
          v20 = v19;
          if (v19 && ([v19 isEqual:&stru_287C35638] & 1) == 0)
          {
            [v1 setObject:v20 forKey:v8];
            v23 = 1;
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v4);

    if (v23)
    {
      v21 = [v1 copy];
      os_unfair_lock_lock(&sCacheLock);
      v22 = sAppGenreCache;
      sAppGenreCache = v21;

      os_unfair_lock_unlock(&sCacheLock);
    }
  }

  else
  {
  }

  sCacheUpToDate = 0;
}

+ (BOOL)sectionSupportsShowMoreInApp:(id)app
{
  appCopy = app;
  v4 = +[SPFederatedQueryTask searchContinuationCompatibilitySet];
  bundleIdentifier = [appCopy bundleIdentifier];

  LOBYTE(appCopy) = [v4 containsObject:bundleIdentifier];
  return appCopy;
}

- (void)setBundlesSupportingAppScoping:(id)scoping
{
  self->_bundlesSupportingAppScoping = [scoping allObjects];

  MEMORY[0x2821F96F8]();
}

- (BOOL)isBullseyeNonCommittedSearch
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  queryKind = [queryContext queryKind];

  return queryKind == 2 || queryKind == 10 && self->_previousQueryKind == 2;
}

- (BOOL)isBullseyeCommittedSearch
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  queryKind = [queryContext queryKind];

  if ((queryKind - 5) < 4)
  {
    return 1;
  }

  if (queryKind == 10)
  {
    return self->_previousQueryKind - 5 < 4;
  }

  return 0;
}

- (void)sendTTRLogsWithSections:(id)sections
{
  rankingManager = self->_rankingManager;
  sectionsCopy = sections;
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  [(SSRankingManager *)rankingManager sendTTRLogsWithSections:sectionsCopy queryContext:queryContext isCommittedSearch:[(SPFederatedQueryTask *)self isBullseyeCommittedSearch] parsecCameLaterThanSRT:self->_parsecCameLaterThanSRT];

  logValues = [(SSRankingManager *)self->_rankingManager logValues];
  v9 = [logValues length];

  if (v9)
  {
    logValues2 = [(SSRankingManager *)self->_rankingManager logValues];
    [(SPFederatedQueryTask *)self sendLogValuesForDebuggingRanking:logValues2];
  }
}

- (void)deDuplicateMailResults:(id)results
{
  resultsCopy = results;
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  resultSet = [resultsCopy resultSet];
  v5 = [v3 initWithCapacity:{objc_msgSend(resultSet, "count")}];

  v6 = objc_opt_new();
  resultSet2 = [resultsCopy resultSet];
  v8 = [resultSet2 count];

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      resultSet3 = [resultsCopy resultSet];
      v11 = [resultSet3 objectAtIndexedSubscript:i];

      rankingItem = [v11 rankingItem];
      v13 = rankingItem;
      if (rankingItem)
      {
        [rankingItem attributes];
        v14 = SSCompactRankingAttrsGetValue();
        if (v14)
        {
          v15 = v14;
          if ([v5 containsObject:v14])
          {
            [v6 addIndex:i];
          }

          else
          {
            [v5 addObject:v15];
          }
        }
      }
    }
  }

  resultSet4 = [resultsCopy resultSet];
  [resultSet4 removeObjectsAtIndexes:v6];
}

- (void)deDuplicateSection:(id)section againstSection:(id)againstSection
{
  v51 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  againstSectionCopy = againstSection;
  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  resultSet = [againstSectionCopy resultSet];
  v9 = [v7 initWithCapacity:{objc_msgSend(resultSet, "count")}];

  bundleIdentifier = [sectionCopy bundleIdentifier];
  if (([bundleIdentifier isEqual:*MEMORY[0x277D65A00]] & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  bundleIdentifier3 = [againstSectionCopy bundleIdentifier];
  v13 = [bundleIdentifier2 isEqual:bundleIdentifier3];

  if (v13)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    bundleIdentifier = [againstSectionCopy results];
    v14 = [bundleIdentifier countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(bundleIdentifier);
          }

          rankingItem = [*(*(&v44 + 1) + 8 * v17) rankingItem];
          isServerAlternativeResult = [rankingItem isServerAlternativeResult];

          if (isServerAlternativeResult)
          {

            v20 = sectionCopy;
            sectionCopy = againstSectionCopy;
            goto LABEL_13;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [bundleIdentifier countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  v20 = againstSectionCopy;
LABEL_13:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  resultSet2 = [v20 resultSet];
  v22 = [resultSet2 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      v25 = 0;
      do
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(resultSet2);
        }

        identifier = [*(*(&v40 + 1) + 8 * v25) identifier];
        if (identifier)
        {
          [v9 addObject:identifier];
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [resultSet2 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v23);
  }

  v27 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  resultSet3 = [sectionCopy resultSet];
  v29 = [resultSet3 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(resultSet3);
        }

        identifier2 = [*(*(&v36 + 1) + 8 * v33) identifier];
        if (identifier2 && [v9 containsObject:identifier2])
        {
          [v27 addIndex:v31];
        }

        ++v31;

        ++v33;
      }

      while (v30 != v33);
      v30 = [resultSet3 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v30);
  }

  resultSet4 = [sectionCopy resultSet];
  [resultSet4 removeObjectsAtIndexes:v27];
}

- (id)dedupeLocalSectionsByBundleId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = idCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        bundleIdentifier = [*(*(&v16 + 1) + 8 * i) bundleIdentifier];
        v13 = bundleIdentifier;
        if (bundleIdentifier && ([bundleIdentifier hasPrefix:@"com.apple.parsec"] & 1) == 0)
        {
          if ([v4 containsObject:v13])
          {
            [v5 addIndex:v9];
          }

          else
          {
            [v4 addObject:v13];
          }

          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = [v6 mutableCopy];
    [v14 removeObjectsAtIndexes:v5];

    v6 = v14;
  }

  return v6;
}

- (void)serverSideDedupe:(id)dedupe
{
  v257 = *MEMORY[0x277D85DE8];
  dedupeCopy = dedupe;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v192 = objc_opt_new();
  v197 = objc_opt_new();
  v202 = objc_opt_new();
  v209 = objc_opt_new();
  v196 = objc_opt_new();
  selfCopy = self;
  v8 = objc_opt_new();
  v200 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v221 = SSEnableSpotlightTopHitPersonalizedRanking();
  v9 = [(SPFederatedQueryTask *)self dedupeLocalSectionsByBundleId:dedupeCopy];

  v219 = v5;
  v211 = v6;
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
    bundleIdentifier = [v10 bundleIdentifier];
    if ([bundleIdentifier isEqual:@"com.apple.spotlight.tophits"])
    {
      resultSet = [v10 resultSet];
      firstObject = [resultSet firstObject];
      sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
      v15 = priorityIndexEligibleBundleIdentifer(sectionBundleIdentifier);

      if (v15)
      {
        v189 = v10;
      }

      else
      {
        v189 = 0;
      }

      v5 = v219;
    }

    else
    {

      v189 = 0;
    }

    v6 = v211;
  }

  else
  {
    v189 = 0;
  }

  v187 = [MEMORY[0x277CBEAA8] now];
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  obj = v9;
  v194 = [obj countByEnumeratingWithState:&v237 objects:v256 count:16];
  if (v194)
  {
    v193 = *v238;
    v190 = *MEMORY[0x277D65AB8];
    v220 = *MEMORY[0x277D65BC0];
    v214 = *MEMORY[0x277D65B80];
    v204 = *MEMORY[0x277D65B30];
    v213 = *MEMORY[0x277D65A18];
    v203 = *MEMORY[0x277CC2BD8];
    v186 = *MEMORY[0x277CC3128];
    v208 = *MEMORY[0x277D65B38];
    v201 = *MEMORY[0x277CC25F0];
    v207 = *MEMORY[0x277D65A00];
    v184 = *MEMORY[0x277D65CC8];
    v206 = *MEMORY[0x277D65C98];
    v212 = *MEMORY[0x277D65BA0];
    v199 = *MEMORY[0x277CC3088];
    v210 = *MEMORY[0x277D65B98];
    v205 = *MEMORY[0x277D65B40];
    v185 = selfCopy;
    v215 = v8;
    do
    {
      v16 = 0;
      do
      {
        if (*v238 != v193)
        {
          objc_enumerationMutation(obj);
        }

        v198 = v16;
        v17 = *(*(&v237 + 1) + 8 * v16);
        if (!-[SPFederatedQueryTask isBullseyeCommittedSearch](selfCopy, "isBullseyeCommittedSearch") || ([v17 bundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"com.apple.spotlight.tophits"), v18, (v19 & 1) == 0))
        {
          v222 = objc_alloc_init(MEMORY[0x277CCAB58]);
          results = [v17 results];
          firstObject2 = [results firstObject];
          sectionBundleIdentifier2 = [firstObject2 sectionBundleIdentifier];
          v23 = [sectionBundleIdentifier2 isEqualToString:v190];

          if (v23)
          {
            [(SPFederatedQueryTask *)selfCopy deDuplicateMailResults:v17];
            v24 = v222;
LABEL_205:

            v6 = v211;
            goto LABEL_206;
          }

          v25 = v17;
          v226 = v17;
          if (v17 != v189)
          {
            resultSet2 = [v17 resultSet];
            firstObject3 = [resultSet2 firstObject];
            sectionBundleIdentifier3 = [firstObject3 sectionBundleIdentifier];
            resultSet3 = [v189 resultSet];
            firstObject4 = [resultSet3 firstObject];
            sectionBundleIdentifier4 = [firstObject4 sectionBundleIdentifier];
            if ([sectionBundleIdentifier3 isEqualToString:sectionBundleIdentifier4])
            {
              isBullseyeCommittedSearch = [(SPFederatedQueryTask *)selfCopy isBullseyeCommittedSearch];

              v25 = v226;
              if (!isBullseyeCommittedSearch)
              {
                [(SPFederatedQueryTask *)selfCopy deDuplicateSection:v226 againstSection:v189];
              }
            }

            else
            {

              v25 = v226;
            }
          }

          resultSet4 = [v25 resultSet];
          v34 = [resultSet4 count];

          if (!v34)
          {
            v181 = 0;
            v8 = v215;
LABEL_204:
            v182 = v181;
            resultSet5 = [v25 resultSet];
            v24 = v222;
            [resultSet5 removeObjectsAtIndexes:v222];

            selfCopy = v185;
            goto LABEL_205;
          }

          v35 = 0;
          v36 = 0;
          v216 = 0;
          punchout2 = 0;
          v8 = v215;
          while (2)
          {
            resultSet6 = [v25 resultSet];
            v39 = [resultSet6 objectAtIndexedSubscript:v35];

            v218 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:punchout2];

            resultBundleId = [v39 resultBundleId];
            LODWORD(resultSet6) = [resultBundleId isEqualToString:v220];

            if (resultSet6)
            {
              v41 = punchout2;
            }

            else
            {
              v41 = v216;
            }

            v216 = v41;
            sectionBundleIdentifier5 = [v39 sectionBundleIdentifier];
            v228 = v39;
            v217 = punchout2;
            if ([sectionBundleIdentifier5 isEqualToString:v214])
            {

              goto LABEL_32;
            }

            sectionBundleIdentifier6 = [v39 sectionBundleIdentifier];
            v44 = [sectionBundleIdentifier6 isEqualToString:v204];

            if (!v44)
            {
              v223 = 0;
              v227 = 0;
              goto LABEL_90;
            }

LABEL_32:
            v235 = 0u;
            v236 = 0u;
            v233 = 0u;
            v234 = 0u;
            alternativeURLs = [v39 alternativeURLs];
            v46 = [alternativeURLs countByEnumeratingWithState:&v233 objects:v255 count:16];
            if (!v46)
            {

              v223 = 0;
              v39 = v228;
              goto LABEL_62;
            }

            v47 = v46;
            v223 = 0;
            v227 = 0;
            v48 = *v234;
            while (2)
            {
              v49 = 0;
              v224 = v47;
              while (2)
              {
                if (*v234 != v48)
                {
                  objc_enumerationMutation(alternativeURLs);
                }

                absoluteString = [*(*(&v233 + 1) + 8 * v49) absoluteString];
                v51 = strippedURL();

                v52 = [v5 objectForKey:v51];
                v53 = [v52 objectAtIndex:0];
                v54 = v53;
                if (!v53)
                {
                  v254[0] = v228;
                  v254[1] = v25;
                  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v254 count:2];
                  [v5 setObject:v57 forKey:v51];
                  goto LABEL_56;
                }

                if (v53 != v228)
                {
                  v55 = v48;
                  v56 = alternativeURLs;
                  v57 = [v52 objectAtIndex:1];
                  v58 = v227;
                  if (v227)
                  {
                    if (v227 != v54)
                    {
                      if ([v227 topHit] >= 1)
                      {
                        goto LABEL_42;
                      }

                      if ([v54 topHit] >= 1)
                      {
                        v59 = v227;
                        goto LABEL_53;
                      }

                      v58 = v227;
                      [v227 l2score];
                      v67 = v66;
                      [v54 l2score];
                      if (v67 >= v68)
                      {
LABEL_42:
                        v59 = v54;
                        v60 = v57;
                        v61 = v222;
                        v62 = v58;
                      }

                      else
                      {
                        v59 = v227;
LABEL_53:
                        v61 = v222;
                        v60 = v223;
                        v62 = v54;
                      }

                      hideResultFromSection(v59, v60, v61, v62, v25);
                    }
                  }

                  else
                  {
                    v63 = v54;
                    v57 = v57;

                    v227 = v63;
                    if (v221)
                    {
                      resultBundleId2 = [v63 resultBundleId];
                      v65 = [resultBundleId2 isEqualToString:v220];

                      if (v65)
                      {
                        [MEMORY[0x277D659C8] setTopHitCandidate:v63];
                      }

                      v223 = v57;
                      v5 = v219;
                      v25 = v226;
                    }

                    else
                    {
                      v223 = v57;
                    }
                  }

                  alternativeURLs = v56;
                  v48 = v55;
                  v47 = v224;
LABEL_56:
                }

                if (v47 != ++v49)
                {
                  continue;
                }

                break;
              }

              v47 = [alternativeURLs countByEnumeratingWithState:&v233 objects:v255 count:16];
              if (v47)
              {
                continue;
              }

              break;
            }

            v8 = v215;
            v39 = v228;
            if (!v227)
            {
LABEL_62:
              v231 = 0u;
              v232 = 0u;
              v229 = 0u;
              v230 = 0u;
              punchout = [v39 punchout];
              urls = [punchout urls];

              v71 = [urls countByEnumeratingWithState:&v229 objects:v253 count:16];
              if (!v71)
              {
                v227 = 0;
                goto LABEL_77;
              }

              v72 = v71;
              v227 = 0;
              v73 = *v230;
              while (1)
              {
                for (i = 0; i != v72; ++i)
                {
                  if (*v230 != v73)
                  {
                    objc_enumerationMutation(urls);
                  }

                  absoluteString2 = [*(*(&v229 + 1) + 8 * i) absoluteString];
                  v76 = strippedURL();

                  v77 = [v5 objectForKey:v76];
                  v78 = [v77 objectAtIndex:0];
                  v79 = v78;
                  if (v78)
                  {
                    v25 = v226;
                    if (v78 == v39)
                    {
                      goto LABEL_72;
                    }

                    v80 = v227;
                    v227 = v78;
                  }

                  else
                  {
                    v252[0] = v39;
                    v25 = v226;
                    v252[1] = v226;
                    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:2];
                    [v5 setObject:v80 forKey:v76];
                  }

                  v39 = v228;
LABEL_72:
                }

                v72 = [urls countByEnumeratingWithState:&v229 objects:v253 count:16];
                if (!v72)
                {
LABEL_77:

                  v8 = v215;
                  break;
                }
              }
            }

            contentURL = [v39 contentURL];

            if (!contentURL || v227)
            {
              LODWORD(punchout2) = v217;
              goto LABEL_90;
            }

            contentURL2 = [v39 contentURL];
            strippedURL();
            identifier = v83 = v39;

            punchout2 = [v5 objectForKey:identifier];
            v85 = [punchout2 objectAtIndex:0];
            completedQuery = v85;
            if (v85)
            {
              if (v85 != v83)
              {
                if (v221)
                {
                  resultBundleId3 = [v85 resultBundleId];
                  v88 = [resultBundleId3 isEqualToString:v220];

                  if (v88)
                  {
                    v250[0] = v228;
                    v250[1] = v25;
                    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:2];
                    [v5 setObject:v89 forKey:identifier];

                    v227 = 0;
                    unsignedIntValue = v216;
                    goto LABEL_196;
                  }
                }

                v227 = completedQuery;
LABEL_89:

                LODWORD(punchout2) = v217;
                v39 = v228;
LABEL_90:
                storeIdentifier = [v39 storeIdentifier];

                if (storeIdentifier)
                {
                  storeIdentifier2 = [v39 storeIdentifier];
                  v94 = [v211 objectForKeyedSubscript:storeIdentifier2];

                  v95 = [v94 objectAtIndex:0];
                  v96 = [v94 objectAtIndex:1];
                  if (!v95)
                  {
                    v97 = punchout2;
                    v249[0] = v39;
                    v249[1] = v25;
                    punchout2 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:2];
                    storeIdentifier3 = [v39 storeIdentifier];
                    [v211 setObject:punchout2 forKeyedSubscript:storeIdentifier3];

                    v25 = v226;
                    goto LABEL_98;
                  }

                  if (v95 != v227)
                  {
                    if ([v95 type] == 26)
                    {
                      v97 = punchout2;
                      punchout2 = v227;
                      v227 = v95;
                      goto LABEL_98;
                    }

                    if ([v39 type] == 26)
                    {
                      v97 = punchout2;
                      handleHiddenResult();
                      [v96 removeResults:v95];
                      punchout2 = v227;
                      v227 = 0;
LABEL_98:

                      LODWORD(punchout2) = v97;
                    }
                  }
                }

                sectionBundleIdentifier7 = [v39 sectionBundleIdentifier];
                v100 = [sectionBundleIdentifier7 isEqualToString:v213];

                if (!v100)
                {
                  goto LABEL_125;
                }

                v101 = [v39 valueForAttribute:v203 withType:objc_opt_class()];
                identifier = v101;
                if (v101)
                {
                  if ([v101 length] >= 0x24)
                  {
                    v102 = [identifier substringToIndex:36];
                    if (v102)
                    {
                      v103 = v102;
                      v104 = [v192 objectForKeyedSubscript:v102];
                      v105 = v104;
                      if (v104)
                      {
                        v225 = v103;
                        v106 = [v104 objectAtIndexedSubscript:0];
                        v191 = v105;
                        v195 = [v105 objectAtIndexedSubscript:1];
                        v107 = v106;
                        v108 = [v106 valueForAttribute:v186 withType:objc_opt_class()];
                        v109 = [v228 valueForAttribute:v186 withType:objc_opt_class()];
                        v110 = [v108 earlierDate:v187];

                        v111 = [v109 earlierDate:v187];

                        v112 = [v108 earlierDate:v109];

                        v113 = v110 != v108;
                        if (v110 != v108 || v111 != v109)
                        {
                          if (v111 == v109)
                          {
                            v113 = 1;
                          }

                          if (v113)
                          {
                            v118 = v110 == v108;
                            if (v110 != v108 && v111 == v109)
                            {
                              goto LABEL_118;
                            }

                            v117 = v106;
                            if (v118 || v111 == v109)
                            {
                              LODWORD(punchout2) = v217;
                              goto LABEL_123;
                            }

                            if (v112 == v108)
                            {
                              v120 = v106;
                              goto LABEL_119;
                            }

                            v114 = v228;
                            v119 = v228;

                            v246 = v119;
                            v116 = &v246;
                          }

                          else
                          {
                            v114 = v228;
                            v122 = v228;

                            v247 = v122;
                            v116 = &v247;
                          }

LABEL_121:
                          LODWORD(punchout2) = v217;
                          v116[1] = v218;
                          v123 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
                          [v192 setObject:v123 forKeyedSubscript:v225];

                          v124 = v195;
                          v121 = v114;
                          v120 = v114;
                          v117 = v107;
                          v228 = v107;
                          v218 = v124;
                          goto LABEL_122;
                        }

                        if (v112 == v108)
                        {
                          v114 = v228;
                          v115 = v228;

                          v248 = v115;
                          v116 = &v248;
                          goto LABEL_121;
                        }

LABEL_118:
                        v117 = v106;
                        v120 = v106;
LABEL_119:
                        LODWORD(punchout2) = v217;
                        v121 = v227;
LABEL_122:
                        v125 = v117;

                        v227 = v120;
LABEL_123:
                        v103 = v225;
                        v105 = v191;

                        v8 = v215;
                      }

                      else
                      {
                        v245[0] = v228;
                        v245[1] = v218;
                        v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:2];
                        [v192 setObject:v117 forKeyedSubscript:v103];
                      }

                      v39 = v228;
LABEL_125:
                      sectionBundleIdentifier8 = [v39 sectionBundleIdentifier];
                      v127 = [sectionBundleIdentifier8 isEqualToString:v208];

                      if (v127)
                      {
                        v128 = [v39 valueForAttribute:v201 withType:objc_opt_class()];
                        if (v128)
                        {
                          v129 = [v197 objectForKeyedSubscript:v128];

                          v227 = v129;
                          if (!v129)
                          {
                            [v197 setObject:v39 forKeyedSubscript:v128];
                            v227 = 0;
                          }
                        }
                      }

                      sectionBundleIdentifier9 = [v39 sectionBundleIdentifier];
                      v131 = [sectionBundleIdentifier9 isEqualToString:v207];

                      v228 = v39;
                      if (!v131)
                      {
                        v136 = v209;
                        goto LABEL_144;
                      }

                      identifier = [v39 identifier];
                      if (identifier)
                      {
                        v132 = [v202 objectForKeyedSubscript:identifier];

                        if (v132)
                        {
                          rankingItem = [v132 rankingItem];
                          rankingItem2 = [v228 rankingItem];
                          v135 = rankingItem2;
                          if (!rankingItem || !rankingItem2 || ![rankingItem isTopHit] || rankingItem != v135 || objc_msgSend(v135, "isServerAlternativeResult"))
                          {

                            goto LABEL_142;
                          }

                          bundleIdentifier2 = [v25 bundleIdentifier];
                          v173 = [bundleIdentifier2 isEqualToString:v184];

                          v25 = v226;
                          v136 = v209;
                          if (!v173)
                          {
                            v227 = v132;
                            v5 = v219;
                            goto LABEL_197;
                          }

LABEL_143:

                          v227 = v132;
                          v39 = v228;
LABEL_144:
                          sectionBundleIdentifier10 = [v39 sectionBundleIdentifier];
                          v138 = [sectionBundleIdentifier10 isEqualToString:v206];

                          if (v138)
                          {
                            v139 = [v39 url];
                            if (v139)
                            {
                              v140 = [v196 objectForKeyedSubscript:v139];

                              v227 = v140;
                              v5 = v219;
                              if (!v140)
                              {
                                [v196 setObject:v39 forKeyedSubscript:v139];
                                v227 = 0;
                              }
                            }

                            else
                            {
                              v5 = v219;
                            }
                          }

                          else
                          {
                            v5 = v219;
                          }

                          sectionBundleIdentifier11 = [v39 sectionBundleIdentifier];
                          v142 = [sectionBundleIdentifier11 isEqualToString:v212];

                          if (v142)
                          {
                            v143 = [v39 valueForAttribute:v199 withType:objc_opt_class()];
                            if (v143)
                            {
                              v144 = [v136 objectForKeyedSubscript:v143];
                              v145 = v144;
                              if (v144)
                              {
                                v146 = [v144 objectAtIndexedSubscript:0];
                                sectionBundleIdentifier12 = [v146 sectionBundleIdentifier];
                                v148 = [sectionBundleIdentifier12 isEqualToString:v210];

                                if (v148)
                                {
                                  v149 = [v145 objectAtIndexedSubscript:1];
                                  handleHiddenResult();
                                  [v149 removeResults:v146];

                                  v227 = 0;
                                }

                                v5 = v219;
                                v25 = v226;
                              }

                              else
                              {
                                v244[0] = v39;
                                v244[1] = v25;
                                v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:2];
                                [v136 setObject:v146 forKeyedSubscript:v143];
                              }
                            }
                          }

                          sectionBundleIdentifier13 = [v39 sectionBundleIdentifier];
                          v151 = [sectionBundleIdentifier13 isEqualToString:v210];

                          if (v151)
                          {
                            identifier2 = [v39 identifier];
                            v153 = [v136 objectForKeyedSubscript:identifier2];
                            v154 = v153;
                            if (v153)
                            {
                              v155 = [v153 objectAtIndexedSubscript:0];
                              sectionBundleIdentifier14 = [v155 sectionBundleIdentifier];
                              v157 = [sectionBundleIdentifier14 isEqualToString:v212];

                              if (v157)
                              {
                                v155 = v155;

                                v227 = v155;
                              }

                              v5 = v219;
                              v25 = v226;
                            }

                            else
                            {
                              v243[0] = v39;
                              v243[1] = v25;
                              v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v243 count:2];
                              [v136 setObject:v155 forKeyedSubscript:identifier2];
                            }
                          }

                          sectionBundleIdentifier15 = [v39 sectionBundleIdentifier];
                          v159 = [sectionBundleIdentifier15 isEqualToString:v205];

                          if (v159)
                          {
                            identifier3 = [v39 identifier];
                            v161 = [identifier3 rangeOfCharacterFromSet:v200];
                            if (v161 != 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v162 = v161;
                              if (v161 < [identifier3 length])
                              {
                                v163 = [identifier3 substringToIndex:v162];
                                v164 = [identifier3 substringWithRange:{v162 + 1, objc_msgSend(identifier3, "length") + ~v162}];
                                if ([v163 length] && objc_msgSend(v164, "length"))
                                {
                                  punchout2 = [v8 objectForKeyedSubscript:v164];
                                  [punchout2 objectAtIndexedSubscript:1];
                                  v166 = v165 = v8;
                                  v167 = [punchout2 objectAtIndexedSubscript:0];
                                  if (punchout2)
                                  {
                                    if ([v163 compare:v166] == 1)
                                    {
                                      v241 = v39;
                                      v242 = v163;
                                      v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v241 count:2];
                                      [v215 setObject:v168 forKeyedSubscript:v164];

                                      v169 = v39;
                                      v170 = v169;
                                      v25 = v226;
                                      v171 = v170;
                                    }

                                    else
                                    {
                                      v170 = v167;
                                      v171 = v227;
                                    }

                                    v227 = v170;
                                  }

                                  else
                                  {
                                    v241 = v39;
                                    v242 = v163;
                                    v171 = [MEMORY[0x277CBEA60] arrayWithObjects:&v241 count:2];
                                    [v165 setObject:v171 forKeyedSubscript:v164];
                                  }

                                  v8 = v215;
                                  LODWORD(punchout2) = v217;
                                  v39 = v228;
                                }
                              }
                            }
                          }

                          if (v227)
                          {
                            inlineCard = [v39 inlineCard];
                            if (inlineCard)
                            {
                              [v227 setInlineCard:inlineCard];
                            }

                            identifier = [v39 compactCard];

                            if (identifier)
                            {
                              [v227 setCompactCard:identifier];
                            }

                            punchout2 = [v228 punchout];
                            if (punchout2)
                            {
                              punchout3 = [v227 punchout];

                              if (!punchout3)
                              {
                                [v227 setPunchout:punchout2];
                              }
                            }

                            completedQuery = [v228 completedQuery];
                            completedQuery2 = [v228 completedQuery];

                            if (completedQuery2)
                            {
                              [v227 setCompletedQuery:completedQuery];
                            }

                            completion = [v228 completion];

                            if (completion)
                            {
                              completion2 = [v228 completion];
                              [v227 setCompletion:completion2];
                            }

                            handleHiddenResult();
                            unsignedIntValue = [v218 unsignedIntValue];
LABEL_196:
                            [v222 addIndex:unsignedIntValue];

                            LODWORD(punchout2) = v217;
                            goto LABEL_197;
                          }

                          v227 = 0;
LABEL_199:

                          v35 = (punchout2 + 1);
                          resultSet7 = [v25 resultSet];
                          v180 = [resultSet7 count];

                          v181 = v218;
                          v36 = v218;
                          punchout2 = v35;
                          if (v180 <= v35)
                          {
                            goto LABEL_204;
                          }

                          continue;
                        }

                        [v202 setObject:v228 forKeyedSubscript:identifier];
                      }

                      else
                      {
                        v132 = v227;
                      }

LABEL_142:
                      v136 = v209;
                      goto LABEL_143;
                    }
                  }
                }

LABEL_197:

                v39 = v228;
                goto LABEL_199;
              }
            }

            else
            {
              v251[0] = v83;
              v251[1] = v25;
              v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
              [v5 setObject:v91 forKey:identifier];
            }

            break;
          }

          v227 = 0;
          goto LABEL_89;
        }

LABEL_206:
        v16 = v198 + 1;
      }

      while (v198 + 1 != v194);
      v194 = [obj countByEnumeratingWithState:&v237 objects:v256 count:16];
    }

    while (v194);
  }
}

- (void)addDictionarySections:(id)sections
{
  v74 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  selfCopy = self;
  v5 = self->_actualSentSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v66;
    v9 = *MEMORY[0x277D65CC8];
    v10 = *MEMORY[0x277D65B08];
    v46 = sectionsCopy;
    v47 = v5;
    v45 = *MEMORY[0x277D65CC8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        if ([v12 resultsCount])
        {
          bundleIdentifier = [v12 bundleIdentifier];
          v14 = [bundleIdentifier isEqualToString:v9];

          if (v14)
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            resultSet = [v12 resultSet];
            v16 = [resultSet countByEnumeratingWithState:&v61 objects:v72 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v62;
              while (2)
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v62 != v18)
                  {
                    objc_enumerationMutation(resultSet);
                  }

                  sectionBundleIdentifier = [*(*(&v61 + 1) + 8 * j) sectionBundleIdentifier];
                  v21 = [sectionBundleIdentifier isEqualToString:v10];

                  if (v21)
                  {
                    v24 = 0;
                    sectionsCopy = v46;
                    v5 = v47;
                    goto LABEL_22;
                  }
                }

                v17 = [resultSet countByEnumeratingWithState:&v61 objects:v72 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            v5 = v47;
            v9 = v45;
          }

          else
          {
            bundleIdentifier2 = [v12 bundleIdentifier];
            v23 = [bundleIdentifier2 isEqualToString:v10];

            if (v23)
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              resultSet = [v12 resultSet];
              v41 = [resultSet countByEnumeratingWithState:&v57 objects:v71 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v58;
                sectionsCopy = v46;
                v24 = 1;
                while (2)
                {
                  for (k = 0; k != v42; ++k)
                  {
                    if (*v58 != v43)
                    {
                      objc_enumerationMutation(resultSet);
                    }

                    if ([*(*(&v57 + 1) + 8 * k) topHit] > 0)
                    {
                      v24 = 0;
                      goto LABEL_22;
                    }
                  }

                  v42 = [resultSet countByEnumeratingWithState:&v57 objects:v71 count:16];
                  if (v42)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                v24 = 1;
                sectionsCopy = v46;
              }

LABEL_22:

              goto LABEL_24;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v65 objects:v73 count:16];
      v24 = 1;
      sectionsCopy = v46;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_24:

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = sectionsCopy;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v54;
    v29 = *MEMORY[0x277D65A60];
LABEL_26:
    v30 = 0;
    while (1)
    {
      if (*v54 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v53 + 1) + 8 * v30);
      bundleIdentifier3 = [v31 bundleIdentifier];
      v33 = [bundleIdentifier3 isEqualToString:v29];

      if (v33)
      {
        break;
      }

      if (v27 == ++v30)
      {
        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
        if (v27)
        {
          goto LABEL_26;
        }

        goto LABEL_43;
      }
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    resultSet2 = [v31 resultSet];
    v35 = [resultSet2 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (!v35)
    {
LABEL_41:

      goto LABEL_43;
    }

    v36 = v35;
    v37 = *v50;
LABEL_35:
    v38 = 0;
    while (1)
    {
      if (*v50 != v37)
      {
        objc_enumerationMutation(resultSet2);
      }

      if ([*(*(&v49 + 1) + 8 * v38) topHit] >= 1)
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = [resultSet2 countByEnumeratingWithState:&v49 objects:v69 count:16];
        if (v36)
        {
          goto LABEL_35;
        }

        goto LABEL_41;
      }
    }

    if (v24)
    {
      goto LABEL_43;
    }

    [v31 clearResults];
    actualSentSections = v25;
  }

  else
  {
LABEL_43:

    v39 = [(NSArray *)selfCopy->_actualSentSections arrayByAddingObjectsFromArray:v25];
    actualSentSections = selfCopy->_actualSentSections;
    selfCopy->_actualSentSections = v39;
  }
}

- (void)sendResults:(id)results reset:(BOOL)reset partiallyComplete:(BOOL)complete update:(BOOL)update complete:(BOOL)a7 unchanged:(BOOL)unchanged delayedTopHit:(BOOL)hit reason:(int)self0
{
  resetCopy = reset;
  v358 = a7;
  updateCopy = update;
  completeCopy = complete;
  v486 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  isSearchToolClient = [queryContext isSearchToolClient];

  v373 = isSearchToolClient;
  if ((isSearchToolClient & 1) == 0)
  {
    [(SPFederatedQueryTask *)self serverSideDedupe:resultsCopy];
  }

  v16 = resultsCopy;
  v353 = [(NSArray *)resultsCopy count];
  if (v353)
  {
    if ([(NSArray *)self->_sentSections count])
    {
      didReceiveCoreSpotlightProgress = [(SPFederatedQueryTask *)self didReceiveCoreSpotlightProgress];
      if (reason <= 1 && didReceiveCoreSpotlightProgress)
      {
        [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
        v18 = copyForResending(self->_actualSentSections);
        actualSentSections = self->_actualSentSections;
        self->_actualSentSections = v18;
      }

      else if (reason == 3)
      {
        firstObject = [(NSArray *)resultsCopy firstObject];
        [firstObject bundleIdentifier];
        v23 = v361 = resultsCopy;
        firstObject2 = [(NSArray *)self->_sentSections firstObject];
        bundleIdentifier = [firstObject2 bundleIdentifier];
        v26 = [v23 isEqual:bundleIdentifier];

        if (v26)
        {
          [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
          array = [(NSArray *)v361 copy];
        }

        else
        {
          array = 0;
        }

        v28 = copyForResending(self->_actualSentSections);
        v29 = self->_actualSentSections;
        self->_actualSentSections = v28;

        resultsCopy = v16;
        if (array)
        {
          goto LABEL_23;
        }
      }

      if ((v373 & 1) != 0 || [(SPFederatedQueryTask *)self isBullseyeCommittedSearch])
      {
        v30 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{-[NSArray count](self->_sentSections, "count")}];
        v31 = v30;
        if (hit)
        {
          [v30 addObjectsFromArray:v16];
          sentSections = self->_sentSections;
        }

        else
        {
          [v30 addObjectsFromArray:self->_sentSections];
          sentSections = v16;
        }

        [v31 addObjectsFromArray:sentSections];
        array = [v31 array];

        goto LABEL_23;
      }

      v21 = [(NSArray *)self->_sentSections arrayByAddingObjectsFromArray:resultsCopy];
    }

    else
    {
      v21 = [(NSArray *)resultsCopy copy];
    }

    array = v21;
LABEL_23:
    objc_storeStrong(&self->_sentSections, array);

    v20 = 1;
    goto LABEL_24;
  }

  v20 = updateCopy || v358 || resetCopy || completeCopy;
LABEL_24:
  v354 = v20;
  query2 = [(SPQueryTask *)self query];
  queryContext2 = [query2 queryContext];
  isSearchToolClient2 = [queryContext2 isSearchToolClient];

  selfCopy = self;
  v352 = completeCopy;
  if (isSearchToolClient2)
  {
    obj = 0;
    v379 = 0;
    v412 = 0;
    v36 = 0;
    v419 = 0;
    v37 = -1.79769313e308;
    v38 = v16;
    goto LABEL_138;
  }

  v369 = SSMaxSectionsBelowSuggestions();
  v466 = 0u;
  v467 = 0u;
  v468 = 0u;
  v469 = 0u;
  v39 = v16;
  v413 = [(NSArray *)v39 countByEnumeratingWithState:&v466 objects:v485 count:16];
  if (!v413)
  {
    v379 = 0;
    v412 = 0;
    v36 = 0;
    v419 = 0;
    v37 = -1.79769313e308;
    goto LABEL_63;
  }

  v379 = 0;
  v36 = 0;
  v419 = 0;
  v404 = *v467;
  v412 = 0;
  v390 = *MEMORY[0x277D65BE0];
  v397 = *MEMORY[0x277D65C10];
  v386 = *MEMORY[0x277D65C88];
  v381 = *MEMORY[0x277D65CC8];
  v37 = -1.79769313e308;
  obja = v39;
  do
  {
    for (i = 0; i != v413; ++i)
    {
      v420 = v36;
      if (*v467 != v404)
      {
        objc_enumerationMutation(obja);
      }

      v41 = *(*(&v466 + 1) + 8 * i);
      bundleIdentifier2 = [v41 bundleIdentifier];
      v43 = [bundleIdentifier2 isEqual:v397];

      if (v43)
      {
        v44 = v41;

        v420 = v44;
      }

      bundleIdentifier3 = [v41 bundleIdentifier];
      v46 = [bundleIdentifier3 isEqual:v390];

      if (v46)
      {
        v47 = v41;

        v419 = v47;
      }

      bundleIdentifier4 = [v41 bundleIdentifier];
      v49 = [bundleIdentifier4 isEqual:v386];

      if (v49)
      {
        v50 = v41;

        v412 = v50;
      }

      bundleIdentifier5 = [v41 bundleIdentifier];
      if ([bundleIdentifier5 isEqualToString:v381])
      {
        results = [v41 results];
        v53 = [results count];

        if (v53 != 1)
        {
          goto LABEL_41;
        }

        bundleIdentifier5 = v379;
        v379 = v41;
      }

LABEL_41:
      v464 = 0u;
      v465 = 0u;
      v462 = 0u;
      v463 = 0u;
      results2 = [v41 results];
      v55 = [results2 countByEnumeratingWithState:&v462 objects:v484 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = 0;
        v58 = *v463;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v463 != v58)
            {
              objc_enumerationMutation(results2);
            }

            v60 = *(*(&v462 + 1) + 8 * j);
            type = [v60 type];
            type2 = [v60 type];
            if (type != 36)
            {
              v67 = type2;
              if ([v60 type] != 2 && v67 != 37)
              {
                continue;
              }
            }

            rankingItem = [v60 rankingItem];
            l2FeatureVector = [rankingItem L2FeatureVector];
            [l2FeatureVector originalL2Score];
            v66 = v65;

            if (v37 < v66)
            {
              v37 = v66;
            }

            v57 = 1;
          }

          v56 = [results2 countByEnumeratingWithState:&v462 objects:v484 count:16];
        }

        while (v56);

        if ((v57 & 1) != 0 && ([(SPFederatedQueryTask *)selfCopy isNLPSearch]|| [(SPFederatedQueryTask *)selfCopy isPeopleSearch]))
        {
          [v41 setMaxInitiallyVisibleResults:{objc_msgSend(v41, "resultsCount")}];
        }
      }

      else
      {
      }

      v36 = v420;
    }

    v39 = obja;
    v413 = [(NSArray *)obja countByEnumeratingWithState:&v466 objects:v485 count:16];
  }

  while (v413);
LABEL_63:

  if (reason != 4)
  {
    v68 = MEMORY[0x277D659B0];
    query3 = [(SPQueryTask *)selfCopy query];
    queryContext3 = [query3 queryContext];
    v71 = [v68 moveShortcutsToRelatedAppSectionsForAllSections:v39 isAsYouTypeTopHitSearch:objc_msgSend(queryContext3 sectionBuilderBlock:{"queryKind") == 2, &__block_literal_global_308}];

    v39 = v71;
  }

  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  v38 = v39;
  v72 = [(NSArray *)v38 countByEnumeratingWithState:&v458 objects:v483 count:16];
  if (!v72)
  {
    obj = 0;
    goto LABEL_137;
  }

  v73 = v72;
  obj = 0;
  v74 = *v459;
  v75 = *MEMORY[0x277D65BE0];
  v76 = *MEMORY[0x277D65C10];
  v359 = *MEMORY[0x277CC2388];
  v364 = *MEMORY[0x277CC2370];
  v421 = v36;
  v367 = *v459;
  v391 = *MEMORY[0x277D65BE0];
  v405 = *MEMORY[0x277D65C10];
  v362 = v38;
  while (2)
  {
    v77 = 0;
    while (2)
    {
      if (*v459 != v74)
      {
        objc_enumerationMutation(v38);
      }

      v78 = *(*(&v458 + 1) + 8 * v77);
      bundleIdentifier6 = [v78 bundleIdentifier];
      v80 = [bundleIdentifier6 isEqual:v75];

      if (v80)
      {
        v81 = v36 == 0;
      }

      else
      {
        v81 = 1;
      }

      if (!v81)
      {
        goto LABEL_133;
      }

      bundleIdentifier7 = [v78 bundleIdentifier];
      v83 = [bundleIdentifier7 isEqual:v76];

      if (v83 && v419 != 0)
      {
        goto LABEL_133;
      }

      resultsCount = [v78 resultsCount];
      if (!resultsCount)
      {
        goto LABEL_133;
      }

      v414 = resultsCount;
      if ([(SPFederatedQueryTask *)selfCopy isScopedAppSearch])
      {
        [v78 setMaxInitiallyVisibleResults:50];
        maxCount = 50;
        goto LABEL_122;
      }

      if (![SPFederatedQueryTask sectionSupportsShowMoreInApp:v78])
      {
        bundleIdentifier8 = [v78 bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

        if (IsSyndicatedPhotos)
        {
          maxCount = 14;
        }

        else
        {
          query4 = [(SPQueryTask *)selfCopy query];
          maxCount = [query4 maxCount];
        }

        goto LABEL_122;
      }

      maxCount = [v78 maxInitiallyVisibleResults];
      if (v373 & 1) != 0 || (SPHideSearchThroughSuggestions())
      {
        goto LABEL_109;
      }

      v456 = 0u;
      v457 = 0u;
      v454 = 0u;
      v455 = 0u;
      resultSet = [v78 resultSet];
      v88 = [resultSet countByEnumeratingWithState:&v454 objects:v482 count:16];
      if (!v88)
      {
LABEL_107:

        goto LABEL_109;
      }

      v89 = v88;
      v90 = maxCount;
      v91 = *v455;
      while (2)
      {
        v92 = 0;
LABEL_89:
        if (*v455 != v91)
        {
          objc_enumerationMutation(resultSet);
        }

        v93 = *(*(&v454 + 1) + 8 * v92);
        if ([v93 isFuzzyMatch])
        {
LABEL_95:
          if (v89 == ++v92)
          {
            v89 = [resultSet countByEnumeratingWithState:&v454 objects:v482 count:16];
            if (v89)
            {
              continue;
            }

            v74 = v367;
            v76 = v405;
            maxCount = v90;
            goto LABEL_106;
          }

          goto LABEL_89;
        }

        break;
      }

      userActivityType = [v93 userActivityType];
      v95 = userActivityType;
      if (userActivityType && ![userActivityType isEqualToString:v359])
      {

        goto LABEL_95;
      }

      v99 = obj;
      if (!obj)
      {
        v99 = objc_opt_new();
      }

      obj = v99;
      title = [v78 title];
      v74 = v367;
      v76 = v405;
      maxCount = v90;
      if (title)
      {
        v101 = title;
        bundleIdentifier9 = [v78 bundleIdentifier];

        if (bundleIdentifier9)
        {
          bundleIdentifier10 = [v78 bundleIdentifier];
          [(NSArray *)obj addObject:bundleIdentifier10];

          resultSet = [v78 title];
          maxCount = v90;
          [(NSArray *)obj addObject:resultSet];
LABEL_106:
          v38 = v362;
          goto LABEL_107;
        }
      }

      v38 = v362;
LABEL_109:
      if (v369)
      {
        v398 = maxCount;
        v104 = objc_opt_new();
        v105 = objc_opt_new();
        [v105 setActivityType:v364];
        v382 = v105;
        [v104 setUserActivityData:v105];
        v452 = 0u;
        v453 = 0u;
        v450 = 0u;
        v451 = 0u;
        results3 = [v78 results];
        v107 = [results3 countByEnumeratingWithState:&v450 objects:v481 count:16];
        if (v107)
        {
          v108 = v107;
          v109 = *v451;
          do
          {
            for (k = 0; k != v108; ++k)
            {
              if (*v451 != v109)
              {
                objc_enumerationMutation(results3);
              }

              v111 = *(*(&v450 + 1) + 8 * k);
              moreResultsPunchout = [v111 moreResultsPunchout];
              v113 = moreResultsPunchout;
              if (moreResultsPunchout)
              {
                v114 = moreResultsPunchout;
              }

              else
              {
                v114 = v104;
              }

              [v111 setMoreResultsPunchout:v114];
            }

            v108 = [results3 countByEnumeratingWithState:&v450 objects:v481 count:16];
          }

          while (v108);
        }

        v36 = v421;
        v38 = v362;
        v74 = v367;
        maxCount = v398;
        v76 = v405;
      }

      else
      {
        v36 = v421;
      }

LABEL_122:
      v115 = SPLogForSPLogCategoryQuery();
      v116 = v115;
      if (*MEMORY[0x277D4BF48])
      {
        v117 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v117 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v115, v117))
      {
        title2 = [v78 title];
        domain = [v78 domain];
        *buf = 138413058;
        *&buf[4] = title2;
        v477 = 2048;
        *v478 = domain;
        *&v478[8] = 2048;
        v479 = maxCount;
        LOWORD(v480[0]) = 2048;
        *(v480 + 2) = v414;
        _os_log_impl(&dword_26B71B000, v116, v117, "Sending section title:%@, domain:%ld, maxCount:%ld, resultCount:%ld", buf, 0x2Au);

        v76 = v405;
      }

      resultSet2 = [v78 resultSet];
      if ([resultSet2 count] <= maxCount)
      {
        v75 = v391;
      }

      else
      {
        v399 = maxCount;
        query5 = [(SPQueryTask *)selfCopy query];
        queryContext4 = [query5 queryContext];
        isSearchToolClient3 = [queryContext4 isSearchToolClient];

        if (isSearchToolClient3)
        {
          v75 = v391;
          v76 = v405;
          goto LABEL_133;
        }

        resultSet2 = [v78 resultSet];
        v124 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:resultSet2 range:0 copyItems:{v399, 1}];
        [v78 setResultSet:v124];

        v75 = v391;
        v76 = v405;
      }

LABEL_133:
      if (++v77 != v73)
      {
        continue;
      }

      break;
    }

    v73 = [(NSArray *)v38 countByEnumeratingWithState:&v458 objects:v483 count:16];
    if (v73)
    {
      continue;
    }

    break;
  }

LABEL_137:

  self = selfCopy;
LABEL_138:
  if (!v354)
  {
LABEL_215:
    v200 = 0;
    goto LABEL_291;
  }

  v363 = v38;
  v125 = SPLogForSPLogCategoryQuery();
  v126 = v125;
  if (*MEMORY[0x277D4BF48])
  {
    v127 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v127 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v125, v127))
  {
    v128 = [(NSArray *)v363 count];
    *buf = 134219008;
    *&buf[4] = v128;
    v477 = 1024;
    *v478 = v358;
    *&v478[4] = 1024;
    *&v478[6] = resetCopy;
    LOWORD(v479) = 1024;
    *(&v479 + 2) = v352;
    HIWORD(v479) = 1024;
    v480[0] = updateCopy;
    _os_log_impl(&dword_26B71B000, v126, v127, "Sending results, sectionCount:%ld, complete:%d, reset:%d, partiallyComplete:%d, update:%d", buf, 0x24u);
  }

  if (sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__onceToken != -1)
  {
    [SPFederatedQueryTask sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:];
  }

  v129 = v363;
  v130 = SPMaxCountTopHits();
  SPMinTopHitThresholdForBigResult();
  v132 = v131;
  if ([(SPFederatedQueryTask *)self isBullseyeCommittedSearch])
  {
    if (self->_isPeopleSearch)
    {
      v133 = SPMaxSectionsBeforeShowMoreWithScopedSearch();
    }

    else
    {
      v133 = SPMaxSectionsBeforeShowMore();
    }
  }

  else
  {
    v133 = SSMaxSectionsBelowSuggestions();
  }

  if (v353 >= v133)
  {
    v134 = v133;
  }

  else
  {
    v134 = v353;
  }

  if (!self->_topHitsManager)
  {
    v422 = objc_alloc(MEMORY[0x277D658D8]);
    query6 = [(SPQueryTask *)self query];
    queryID = [query6 queryID];
    categoryToResultMapping = self->_categoryToResultMapping;
    topHitSection = selfCopy->_topHitSection;
    [(SPQueryTask *)selfCopy query];
    v139 = v406 = v130;
    [v139 queryContext];
    v141 = v140 = v134;
    v142 = topHitSection;
    self = selfCopy;
    v143 = [v422 initWithQueryId:queryID categoryToResultMapping:categoryToResultMapping currentTopHitSection:v142 queryContext:v141 ranker:selfCopy->_itemRanker];
    topHitsManager = selfCopy->_topHitsManager;
    selfCopy->_topHitsManager = v143;

    v134 = v140;
    v129 = v363;

    v130 = v406;
  }

  v423 = v36;
  if (v373)
  {
LABEL_157:
    v145 = v129;
  }

  else if (v353)
  {
    query7 = [(SPQueryTask *)self query];
    queryContext5 = [query7 queryContext];
    searchEntities = [queryContext5 searchEntities];
    if (searchEntities)
    {
      v400 = v134;
      v407 = v130;
      query8 = [(SPQueryTask *)self query];
      queryContext6 = [query8 queryContext];
      searchEntities2 = [queryContext6 searchEntities];
      if ([searchEntities2 count])
      {
        query9 = [(SPQueryTask *)self query];
        queryContext7 = [query9 queryContext];
        searchEntities3 = [queryContext7 searchEntities];
        lastObject = [searchEntities3 lastObject];
        isScopedSearch = [lastObject isScopedSearch];

        self = selfCopy;
        v129 = v363;

        v36 = v423;
      }

      else
      {
        isScopedSearch = 0;
      }

      v134 = v400;
      v130 = v407;
    }

    else
    {
      isScopedSearch = 0;
    }

    if (updateCopy || (isScopedSearch & 1) != 0)
    {
      goto LABEL_157;
    }

    firstObject3 = [(NSArray *)self->_actualSentSections firstObject];
    v157 = firstObject3;
    if (firstObject3)
    {
      bundleIdentifier11 = [firstObject3 bundleIdentifier];
      v159 = [bundleIdentifier11 isEqual:@"com.apple.spotlight.tophits"];

      if ((v159 & 1) == 0)
      {

        v157 = 0;
      }

      v129 = v363;
    }

    v160 = self->_topHitsManager;
    isEntitySearch = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch]|| [(SPFederatedQueryTask *)self isEntitySearch];
    v449 = v157;
    v145 = [(SSBullseyeTopHitsManager *)v160 tagOrFilterHiddenSectionsForClient:v129 isCommittedSearch:isEntitySearch maxVisibleSections:v134 maxTopHitsCount:v130 minThresholdForBigResult:&v449 topHitSection:v132];
    v162 = v449;

    if (v162 && [v162 resultsCount])
    {
      self->_sentTaggedTopHits = 1;
    }
  }

  else
  {
    v145 = 0;
  }

  query10 = [(SPQueryTask *)self query];
  [query10 queryIdent];
  v164 = v145;
  v165 = v164;
  if (v164)
  {
    v166 = v164;
  }

  else
  {
    v166 = MEMORY[0x277CBEBF8];
  }

  if (reason != 4)
  {
    v176 = v166;
    goto LABEL_203;
  }

  if (![(NSArray *)v166 count])
  {
    v176 = 0;
    goto LABEL_203;
  }

  v167 = [(NSArray *)v166 objectAtIndex:0];
  bundleIdentifier12 = [v167 bundleIdentifier];
  v169 = [bundleIdentifier12 isEqualToString:@"com.apple.spotlight.tophits"];

  if (!v169)
  {
LABEL_201:

    v176 = 0;
    goto LABEL_202;
  }

  resultSet3 = [v167 resultSet];
  v171 = [resultSet3 objectAtIndexedSubscript:0];
  sectionBundleIdentifier = [v171 sectionBundleIdentifier];

  if (!sectionBundleIdentifier || !priorityIndexEligibleBundleIdentifer(sectionBundleIdentifier))
  {
LABEL_200:

    goto LABEL_201;
  }

  if (!SSIsCounterFactual())
  {
    v177 = SSPriorityIndexFastPathEnabled();
    v178 = objc_alloc(MEMORY[0x277CCAD78]);
    if (v177)
    {
      v179 = [v178 initWithUUIDString:*MEMORY[0x277D65D18]];
      SSDefaultsLogForTrigger();

      goto LABEL_195;
    }

    v180 = [v178 initWithUUIDString:*MEMORY[0x277D65D10]];
    SSDefaultsLogForTrigger();

    v175 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_198:
      _os_log_impl(&dword_26B71B000, v175, OS_LOG_TYPE_DEFAULT, "Withholding priority index fast path because it's disabled", buf, 2u);
    }

LABEL_199:

    goto LABEL_200;
  }

  v173 = objc_alloc(MEMORY[0x277CCAD78]);
  v174 = [v173 initWithUUIDString:*MEMORY[0x277D65D18]];
  SSDefaultsLogForTrigger();

  if (!SSPriorityIndexFastPathEnabled())
  {
    v175 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_198;
    }

    goto LABEL_199;
  }

LABEL_195:
  *buf = v167;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];

LABEL_202:
  self = selfCopy;
LABEL_203:

  v408 = v176;
  if (!v176)
  {
    v199 = SPLogForSPLogCategoryDefault();
    v38 = v363;
    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v199, OS_LOG_TYPE_DEFAULT, "Withholding early priority index results", buf, 2u);
    }

    [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
    goto LABEL_215;
  }

  v181 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (reason == 4 || (-[SPQueryTask query](selfCopy, "query"), v182 = objc_claimAutoreleasedReturnValue(), [v182 queryContext], v183 = objc_claimAutoreleasedReturnValue(), v184 = objc_msgSend(v183, "isSearchToolClient"), v183, v182, (v184 & 1) != 0))
  {
    personIdentifier = 0;
    v368 = 0;
    v186 = v408;
    goto LABEL_207;
  }

  isEnabled = [MEMORY[0x277D65960] isEnabled];
  if (reason != 2 && isEnabled && [(SPFederatedQueryTask *)selfCopy isBullseyeNonCommittedSearch])
  {
    v202 = MEMORY[0x277D65960];
    query11 = [(SPQueryTask *)selfCopy query];
    queryContext8 = [query11 queryContext];
    rankingConfiguration = [(SSRankingManager *)selfCopy->_rankingManager rankingConfiguration];
    [v202 setQueryIntentForQueryContext:queryContext8 sections:v408 rankingInfo:rankingConfiguration];

    v206 = MEMORY[0x277D65960];
    query12 = [(SPQueryTask *)selfCopy query];
    queryContext9 = [query12 queryContext];
    v209 = [v206 applySectionPolicyForQueryContext:queryContext9 sections:v408];

    v408 = v209;
  }

  if (!v412)
  {
    personIdentifier = 0;
    v368 = 0;
    goto LABEL_303;
  }

  v447 = 0u;
  v448 = 0u;
  v445 = 0u;
  v446 = 0u;
  v393 = v408;
  v210 = [v393 countByEnumeratingWithState:&v445 objects:v475 count:16];
  if (!v210)
  {
    personIdentifier = 0;
    v368 = 0;
    goto LABEL_302;
  }

  v211 = v210;
  personIdentifier = 0;
  v368 = 0;
  v212 = *v446;
  v213 = *MEMORY[0x277D65CC8];
  v387 = *MEMORY[0x277D65CE8];
  v370 = *MEMORY[0x277D65CC8];
  v374 = *v446;
  while (2)
  {
    v214 = 0;
    v383 = v211;
    while (2)
    {
      if (*v446 != v212)
      {
        objc_enumerationMutation(v393);
      }

      v415 = v214;
      v215 = *(*(&v445 + 1) + 8 * v214);
      bundleIdentifier13 = [v215 bundleIdentifier];
      v217 = [bundleIdentifier13 isEqual:v213];

      if (v217)
      {
        v218 = v215;

        v443 = 0u;
        v444 = 0u;
        v441 = 0u;
        v442 = 0u;
        results4 = [v218 results];
        v220 = [results4 countByEnumeratingWithState:&v441 objects:v474 count:16];
        if (v220)
        {
          v221 = v220;
          v401 = v218;
          v222 = *v442;
          while (1)
          {
            for (m = 0; m != v221; ++m)
            {
              if (*v442 != v222)
              {
                objc_enumerationMutation(results4);
              }

              v224 = *(*(&v441 + 1) + 8 * m);
              if (!personIdentifier)
              {
                contactIdentifier = [*(*(&v441 + 1) + 8 * m) contactIdentifier];
                if (contactIdentifier)
                {

LABEL_239:
                  contactIdentifier2 = [v224 contactIdentifier];
                  resultBundleId = contactIdentifier2;
                  if (contactIdentifier2)
                  {
                    resultBundleId = contactIdentifier2;
                    personIdentifier = resultBundleId;
                  }

                  else
                  {
                    personIdentifier = [v224 personIdentifier];
                  }

LABEL_242:

                  continue;
                }

                personIdentifier2 = [v224 personIdentifier];

                if (personIdentifier2)
                {
                  goto LABEL_239;
                }
              }

              sectionBundleIdentifier2 = [v224 sectionBundleIdentifier];
              v226 = [sectionBundleIdentifier2 isEqualToString:@"com.apple.application"];

              if (v226 && ![v181 count])
              {
                resultBundleId = [v224 resultBundleId];
                [v181 addObject:resultBundleId];
                goto LABEL_242;
              }
            }

            v221 = [results4 countByEnumeratingWithState:&v441 objects:v474 count:16];
            if (!v221)
            {
              v379 = v401;
              v213 = v370;
              v212 = v374;
              v211 = v383;
              goto LABEL_249;
            }
          }
        }

        v379 = v218;
LABEL_249:

        v36 = v423;
      }

      else
      {
        bundleIdentifier14 = [v215 bundleIdentifier];
        v232 = [bundleIdentifier14 isEqual:v387];

        if (v232)
        {
          results4 = v368;
          v368 = v215;
          goto LABEL_249;
        }
      }

      v214 = v415 + 1;
      if (v415 + 1 != v211)
      {
        continue;
      }

      break;
    }

    v211 = [v393 countByEnumeratingWithState:&v445 objects:v475 count:16];
    if (v211)
    {
      continue;
    }

    break;
  }

LABEL_302:

LABEL_303:
  resultSet4 = [v36 resultSet];
  v280 = [resultSet4 count];

  if (!v280)
  {
    v186 = v408;
    goto LABEL_371;
  }

  v389 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v403 = objc_opt_new();
  v360 = objc_opt_new();
  results5 = [v36 results];
  v282 = [results5 copy];

  results6 = [v419 results];
  v284 = [results6 copy];

  v439 = 0u;
  v440 = 0u;
  v437 = 0u;
  v438 = 0u;
  v376 = v284;
  v285 = [v376 countByEnumeratingWithState:&v437 objects:v473 count:16];
  if (v285)
  {
    v286 = v285;
    v395 = 0;
    v287 = *v438;
    do
    {
      for (n = 0; n != v286; ++n)
      {
        if (*v438 != v287)
        {
          objc_enumerationMutation(v376);
        }

        v289 = *(*(&v437 + 1) + 8 * n);
        contactIdentifier3 = [v289 contactIdentifier];

        if (contactIdentifier3)
        {
          contactIdentifier4 = [v289 contactIdentifier];
          [v403 setObject:v289 forKey:contactIdentifier4];

          if ((v395 & 1) != 0 || ([v289 contactIdentifier], v292 = objc_claimAutoreleasedReturnValue(), v293 = objc_msgSend(v292, "isEqualToString:", personIdentifier), v292, (v293 & 1) == 0))
          {
            [v389 addObject:v289];
          }

          else
          {
            v395 = 1;
          }
        }
      }

      v286 = [v376 countByEnumeratingWithState:&v437 objects:v473 count:16];
    }

    while (v286);
  }

  else
  {
    v395 = 0;
  }

  if (sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__onceTokenContact != -1)
  {
    [SPFederatedQueryTask sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:];
  }

  v435 = 0u;
  v436 = 0u;
  v433 = 0u;
  v434 = 0u;
  v372 = v282;
  v294 = [v372 countByEnumeratingWithState:&v433 objects:v472 count:16];
  if (!v294)
  {
    v417 = 0;
    goto LABEL_345;
  }

  v295 = v294;
  v417 = 0;
  v296 = *v434;
  while (2)
  {
    v297 = 0;
    while (2)
    {
      if (*v434 != v296)
      {
        objc_enumerationMutation(v372);
      }

      v298 = *(*(&v433 + 1) + 8 * v297);
      personIdentifier3 = [v298 personIdentifier];

      if (personIdentifier3)
      {
        v300 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store;
        personIdentifier4 = [v298 personIdentifier];
        v432 = v417;
        v302 = [v300 unifiedContactWithIdentifier:personIdentifier4 keysToFetch:sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch error:&v432];
        v303 = v432;

        if (v303)
        {
          if ([v303 code] != 200)
          {
            v304 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
            {
              localizedDescription = [v303 localizedDescription];
              *buf = 138412290;
              *&buf[4] = localizedDescription;
              _os_log_impl(&dword_26B71B000, v304, OS_LOG_TYPE_DEFAULT, "*warn* CNContactStore fetch error: %@", buf, 0xCu);
            }

            goto LABEL_339;
          }

          goto LABEL_340;
        }

        personIdentifier5 = [v298 personIdentifier];
        v307 = [v403 objectForKey:personIdentifier5];

        if (v307)
        {
          v417 = 0;
        }

        else
        {
          personIdentifier6 = [v298 personIdentifier];
          [v403 setObject:v298 forKey:personIdentifier6];

          title3 = [v298 title];
          text = [title3 text];
          v304 = SSNormalizedQueryString();

          if (([v360 containsObject:v304] & 1) == 0)
          {
            [v360 addObject:v304];
            if ((v395 & 1) == 0)
            {
              personIdentifier7 = [v298 personIdentifier];
              v312 = [personIdentifier7 isEqualToString:personIdentifier];

              if (v312)
              {
                v303 = 0;
                v395 = 1;
                goto LABEL_339;
              }
            }

            [v389 addObject:v298];
          }

          v303 = 0;
LABEL_339:

LABEL_340:
          v417 = v303;
        }
      }

      if (v295 != ++v297)
      {
        continue;
      }

      break;
    }

    v295 = [v372 countByEnumeratingWithState:&v433 objects:v472 count:16];
    if (v295)
    {
      continue;
    }

    break;
  }

LABEL_345:

  v313 = v389;
  v314 = [v389 count];
  if (v314 >= SPMaxVisibleResultsCountPerSection())
  {
    v315 = SPMaxVisibleResultsCountPerSection();
  }

  else
  {
    v315 = [v389 count];
  }

  v385 = v315;
  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v186 = v408;
  v316 = [v186 countByEnumeratingWithState:&v428 objects:v471 count:16];
  if (v316)
  {
    v317 = v316;
    v410 = v186;
    v318 = 0;
    v319 = *v429;
    v320 = *MEMORY[0x277D65BE0];
    v366 = *MEMORY[0x277D65C10];
    v396 = -1;
    do
    {
      v321 = 0;
      v355 = v318;
      do
      {
        if (*v429 != v319)
        {
          objc_enumerationMutation(v410);
        }

        v322 = *(*(&v428 + 1) + 8 * v321);
        bundleIdentifier15 = [v322 bundleIdentifier];
        v324 = [bundleIdentifier15 isEqual:v320];

        if (v324)
        {
          [v322 setMaxInitiallyVisibleResults:v385];
          [v322 setResults:v389];
        }

        else
        {
          bundleIdentifier16 = [v322 bundleIdentifier];
          v326 = [bundleIdentifier16 isEqual:v366];

          v327 = v396;
          if (v326)
          {
            v327 = v318;
            v328 = v419 == 0;
          }

          else
          {
            v328 = 0;
          }

          if (v328)
          {
            [v322 setBundleIdentifier:v320];
            [v322 setMaxInitiallyVisibleResults:v385];
            [v322 setResults:v389];
            v329 = obj;
            if (!obj)
            {
              v329 = objc_opt_new();
            }

            bundleIdentifier17 = [v322 bundleIdentifier];
            [(NSArray *)v329 addObject:bundleIdentifier17];

            title4 = [v322 title];
            obj = v329;
            [(NSArray *)v329 addObject:title4];
          }

          else
          {
            v396 = v327;
          }
        }

        ++v318;
        ++v321;
      }

      while (v317 != v321);
      v318 = v355 + v317;
      v317 = [v410 countByEnumeratingWithState:&v428 objects:v471 count:16];
    }

    while (v317);
    v186 = v410;

    if (v396 < 0)
    {
      v313 = v389;
      v332 = v403;
      v333 = v360;
    }

    else
    {
      v313 = v389;
      v332 = v403;
      v333 = v360;
      if (v419)
      {
        v334 = [v410 mutableCopy];
        [v334 removeObjectAtIndex:v396];
        v335 = v334;

        v186 = v335;
        goto LABEL_369;
      }
    }
  }

  else
  {
    v333 = v360;
    v332 = v403;
LABEL_369:
  }

LABEL_371:
  if (v412)
  {
    v426 = 0u;
    v427 = 0u;
    v424 = 0u;
    v425 = 0u;
    v186 = v186;
    v336 = [v186 countByEnumeratingWithState:&v424 objects:v470 count:16];
    if (v336)
    {
      v337 = v336;
      v338 = *v425;
      v339 = *MEMORY[0x277D65C88];
      v411 = v186;
      do
      {
        v340 = 0;
        v418 = v337;
        do
        {
          if (*v425 != v338)
          {
            objc_enumerationMutation(v411);
          }

          v341 = *(*(&v424 + 1) + 8 * v340);
          bundleIdentifier18 = [v341 bundleIdentifier];
          v343 = [bundleIdentifier18 isEqual:v339];

          if (v343)
          {
            query13 = [(SPQueryTask *)selfCopy query];
            queryContext10 = [query13 queryContext];
            [queryContext10 searchString];
            v346 = v339;
            v348 = v347 = v338;
            v349 = [(SPFederatedQueryTask *)selfCopy suggestionsWithSearchString:v348 sections:v411 topHitSection:v379 highestLocalScore:v37];
            [v341 setResults:v349];

            v338 = v347;
            v339 = v346;
            v337 = v418;
          }

          ++v340;
        }

        while (v337 != v340);
        v186 = v411;
        v337 = [v411 countByEnumeratingWithState:&v424 objects:v470 count:16];
      }

      while (v337);
    }
  }

LABEL_207:
  query14 = [(SPQueryTask *)selfCopy query];
  queryContext11 = [query14 queryContext];
  isSearchToolClient4 = [queryContext11 isSearchToolClient];

  if (isSearchToolClient4)
  {
    v190 = MEMORY[0x277D65978];
    query15 = [(SPQueryTask *)selfCopy query];
    queryContext12 = [query15 queryContext];
    v193 = [v190 processSearchToolFinalResults:v186 queryContext:queryContext12];

    v186 = v193;
  }

  v194 = [MEMORY[0x277D659C8] postProcessSectionsBasedOnTopHitSection:v186 withTopHitSection:v379];

  [MEMORY[0x277D659C8] finalizeTopHitsInSections:v194 withTopHitSection:v379];
  [MEMORY[0x277D65978] fillRankingPosition:v194];
  if (reason == 2 && (-[SPQueryTask query](selfCopy, "query"), v195 = objc_claimAutoreleasedReturnValue(), [v195 queryContext], v196 = objc_claimAutoreleasedReturnValue(), v197 = objc_msgSend(v196, "isSearchToolClient"), v196, v195, (v197 & 1) == 0))
  {
    v198 = selfCopy;
    [(SPFederatedQueryTask *)selfCopy addDictionarySections:v194];
  }

  else
  {
    v198 = selfCopy;
    objc_storeStrong(&selfCopy->_actualSentSections, v194);
  }

  query16 = [(SPQueryTask *)v198 query];
  queryContext13 = [query16 queryContext];
  isSearchToolClient5 = [queryContext13 isSearchToolClient];

  if ((isSearchToolClient5 & 1) == 0)
  {
    mEMORY[0x277D4BE78] = [MEMORY[0x277D4BE78] sharedInstance];
    v388 = v198->_actualSentSections;
    query17 = [(SPQueryTask *)v198 query];
    queryContext14 = [query17 queryContext];
    searchString = [queryContext14 searchString];
    query18 = [(SPQueryTask *)v198 query];
    queryIdent = [query18 queryIdent];
    allowAnonymousDataCollection = v198->_allowAnonymousDataCollection;
    itemRanker = v198->_itemRanker;
    rankingConfiguration2 = [(SSRankingManager *)v198->_rankingManager rankingConfiguration];
    query19 = [(SPQueryTask *)v198 query];
    internalDebug = [query19 internalDebug];
    [(SPQueryTask *)v198 query];
    v240 = v402 = v194;
    queryContext15 = [v240 queryContext];
    keyboardPrimaryLanguage = [queryContext15 keyboardPrimaryLanguage];
    LOBYTE(v350) = internalDebug;
    [mEMORY[0x277D4BE78] willSendSections:v388 forQuery:searchString queryIdentifier:queryIdent allowAnonymousDataCollection:allowAnonymousDataCollection withRankerUsed:itemRanker withRankingConfiguration:rankingConfiguration2 internalDebug:v350 keyboardPrimaryLanguage:keyboardPrimaryLanguage clientID:v198->_clientBundleID];

    v194 = v402;
  }

  if ([(SPFederatedQueryTask *)v198 isInternalDevice]&& v358)
  {
    [(SPFederatedQueryTask *)selfCopy sendTTRLogsWithSections:selfCopy->_actualSentSections];
  }

  if ([v194 count])
  {
    v243 = 0;
    goto LABEL_263;
  }

  v244 = selfCopy;
  if (selfCopy->_sendStableSections)
  {
    v243 = [(NSArray *)selfCopy->_stableSections count]!= 0;
LABEL_263:
    v244 = selfCopy;
    query20 = [(SPQueryTask *)selfCopy query];
    cancelled = [query20 cancelled];

    if ((cancelled & 1) == 0)
    {
      v247 = v194;
      v248 = [objc_alloc(MEMORY[0x277D4BEB8]) initWithSections:v194 stableSections:selfCopy->_stableSections];
      query21 = [(SPQueryTask *)selfCopy query];
      blendingTime = selfCopy->_blendingTime;
      geoUserSessionEntityString = [(SPFederatedQueryTask *)selfCopy geoUserSessionEntityString];
      v252 = geoUserSessionEntityString;
      v253 = &stru_287C35638;
      if (geoUserSessionEntityString)
      {
        v253 = geoUserSessionEntityString;
      }

      bundlesSupportingAppScoping = selfCopy->_bundlesSupportingAppScoping;
      if (!bundlesSupportingAppScoping)
      {
        bundlesSupportingAppScoping = MEMORY[0x277CBEBF8];
      }

      v255 = obj;
      if (!obj)
      {
        v255 = MEMORY[0x277CBEBF8];
      }

      BYTE3(v350) = v243;
      BYTE2(v350) = unchanged;
      BYTE1(v350) = hit;
      LOBYTE(v350) = v358;
      [SPFederatedQueryTask searchQuery:selfCopy gotResultSet:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" replace:query21 partiallyComplete:v248 priorityFastPath:resetCopy update:v352 complete:reason == 4 delayedTopHit:updateCopy unchanged:blendingTime forceStable:v350 blendingDuration:v253 geoEntityString:bundlesSupportingAppScoping supportedAppScopes:v255 showMoreInAppInfo:?];
      goto LABEL_271;
    }
  }

  else
  {
    query22 = [(SPQueryTask *)selfCopy query];
    cancelled2 = [query22 cancelled];

    if ((cancelled2 & 1) == 0)
    {
      v247 = v194;
      v272 = objc_alloc(MEMORY[0x277D4BEB8]);
      v273 = MEMORY[0x277CBEBF8];
      v248 = [v272 initWithSections:MEMORY[0x277CBEBF8]];
      query21 = [(SPQueryTask *)selfCopy query];
      v274 = selfCopy->_blendingTime;
      geoUserSessionEntityString2 = [(SPFederatedQueryTask *)selfCopy geoUserSessionEntityString];
      v252 = geoUserSessionEntityString2;
      v276 = &stru_287C35638;
      if (geoUserSessionEntityString2)
      {
        v276 = geoUserSessionEntityString2;
      }

      v277 = selfCopy->_bundlesSupportingAppScoping;
      if (!v277)
      {
        v277 = v273;
      }

      v278 = obj;
      if (!obj)
      {
        v278 = v273;
      }

      BYTE3(v350) = 0;
      BYTE2(v350) = unchanged;
      LOWORD(v350) = v358;
      [SPFederatedQueryTask searchQuery:selfCopy gotResultSet:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" replace:query21 partiallyComplete:v248 priorityFastPath:resetCopy update:v352 complete:reason == 4 delayedTopHit:updateCopy unchanged:v274 forceStable:v350 blendingDuration:v276 geoEntityString:v277 supportedAppScopes:v278 showMoreInAppInfo:?];
LABEL_271:

      v244 = selfCopy;
      v194 = v247;
    }
  }

  stableSections = v244->_stableSections;
  v244->_stableSections = 0;

  query23 = [(SPQueryTask *)v244 query];
  queryContext16 = [query23 queryContext];
  isSearchToolClient6 = [queryContext16 isSearchToolClient];

  if ((isSearchToolClient6 & 1) == 0)
  {
    v260 = objc_alloc(MEMORY[0x277D4C270]);
    query24 = [(SPQueryTask *)v244 query];
    v262 = [v260 initWithEvent:@"com.apple.spotlight.backend.query.end" timeInterval:0 queryId:{objc_msgSend(query24, "queryIdent")}];

    if (!updateCopy)
    {
      mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
      query25 = [(SPQueryTask *)selfCopy query];
      queryIdent2 = [query25 queryIdent];
      bundleID = [(SPXPCConnection *)selfCopy->_connection bundleID];
      [mEMORY[0x277D4BEC0] sendFeedbackType:21 feedback:v262 queryId:queryIdent2 clientID:bundleID];
    }

    v244 = selfCopy;
  }

  if ([(NSMutableArray *)v244->_slowTokens count]|| [(NSMutableArray *)v244->_tokens count]|| [(NSMutableArray *)v244->_delayedStartTokens count])
  {
    v267 = 0;
  }

  else if ([(NSMutableArray *)v244->_delayedStartQueries count])
  {
    v267 = 0;
  }

  else
  {
    v267 = v358;
  }

  v36 = v423;
  if (resetCopy)
  {
    [(SPFederatedQueryTask *)selfCopy externalID];
    kdebug_trace();
  }

  if (v358)
  {
    [(SPFederatedQueryTask *)selfCopy externalID];
    kdebug_trace();
  }

  if (v267)
  {
    v268 = selfCopy->_categoryToResultMapping;
    selfCopy->_categoryToResultMapping = 0;

    [(SPFederatedQueryTask *)selfCopy setServer_features:0];
    [(SPFederatedQueryTask *)selfCopy setTokens:0];
    [(SPFederatedQueryTask *)selfCopy setSlowTokens:0];
  }

  v38 = v363;
  if (reason == 4)
  {
    v269 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v269, OS_LOG_TYPE_DEFAULT, "Sending early priority index results", buf, 2u);
    }

    selfCopy->_sentPriority = 1;
  }

  v200 = v368;
LABEL_291:
}

id __107__SPFederatedQueryTask_sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 setDomain:1];
  [v3 setBundleIdentifier:v2];
  [v3 setMaxInitiallyVisibleResults:SPMaxVisibleResultsCountPerSection()];
  v4 = [MEMORY[0x277D4BE80] displayNameForBundleIdentifer:v2];

  [v3 setTitle:v4];

  return v3;
}

void __107__SPFederatedQueryTask_sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason___block_invoke_2()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v1 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store;
  sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store = v0;

  v4[0] = *MEMORY[0x277CBD018];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v3 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch;
  sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch = v2;
}

- (void)sendResults:(id)results reset:(BOOL)reset partiallyComplete:(BOOL)complete update:(BOOL)update complete:(BOOL)a7 delayedTopHit:(BOOL)hit reason:(int)reason
{
  HIDWORD(v9) = reason;
  LOBYTE(v9) = hit;
  [(SPFederatedQueryTask *)self sendResults:results reset:reset partiallyComplete:complete update:update complete:a7 unchanged:0 delayedTopHit:v9 reason:?];
}

- (void)sendError:(id)error
{
  errorCopy = error;
  query = [(SPQueryTask *)self query];
  cancelled = [query cancelled];

  if ((cancelled & 1) == 0)
  {
    [(SPFederatedQueryTask *)self searchQueryEncounteredError:errorCopy];
  }
}

- (void)sendQueryCompleted
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  v5 = MEMORY[0x277D4BF48];
  if (*MEMORY[0x277D4BF48])
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v6))
  {
    v19 = 67109120;
    v20 = qos_class_self();
    _os_log_impl(&dword_26B71B000, v4, v6, "QOS sendQueryCompleted 1: %d", &v19, 8u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  SDTraceAdd();
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (*v5)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = qos_class_self();
    v19 = 67109120;
    v20 = v10;
    _os_log_impl(&dword_26B71B000, v8, v9, "QOS sendQueryCompleted 2: %d", &v19, 8u);
  }

  v11 = SPLogForSPLogCategoryQuery();
  v12 = v11;
  if (*v5)
  {
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v13))
  {
    externalID = self->_externalID;
    v19 = 67109120;
    v20 = externalID;
    _os_log_impl(&dword_26B71B000, v12, v13, "Completed query %d", &v19, 8u);
  }

  v15 = SPLogForSPLogCategoryTelemetry();
  v16 = v15;
  v17 = self->_externalID;
  if (v17 && os_signpost_enabled(v15))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v16, OS_SIGNPOST_INTERVAL_END, v17, "spotlightLatency", " enableTelemetry=YES ", &v19, 2u);
  }

  categoryToResultMapping = self->_categoryToResultMapping;
  self->_categoryToResultMapping = 0;

  [(SPFederatedQueryTask *)self setTokens:0];
  [(SPFederatedQueryTask *)self setSlowTokens:0];
  [(SPFederatedQueryTask *)self setDelayedStartTokens:0];
  [(SPFederatedQueryTask *)self setDelayedStartQueries:0];
  self->_parsecCameLaterThanSRT = 0;
  self->_parsecEntityCameEarly = 0;
  self->_receivedLateParsecResults = 0;
  self->_shouldRecomputeSuggestions = 1;
  self->_sentTaggedTopHits = 0;
}

- (void)sendQueryReset
{
  v11 = *MEMORY[0x277D85DE8];
  [(SPFederatedQueryTask *)self externalID];
  kdebug_trace();
  v3 = SPLogForSPLogCategoryQuery();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    externalID = self->_externalID;
    *buf = 67109120;
    v10 = externalID;
    _os_log_impl(&dword_26B71B000, v4, v5, "Reset query %d", buf, 8u);
  }

  query = [(SPQueryTask *)self query];
  LODWORD(v8) = 0;
  [SPFederatedQueryTask searchQuery:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:query replace:0 partiallyComplete:1 priorityFastPath:0 update:0 complete:0 delayedTopHit:0.0 unchanged:v8 forceStable:&stru_287C35638 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];
}

- (id)orderedCategories:(id)categories
{
  v25 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(categoriesCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = categoriesCopy;
  v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v19)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:v6];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "domain")}];
        query = [(SPQueryTask *)self query];
        queryContext = [query queryContext];
        searchDomains = [queryContext searchDomains];
        v12 = [searchDomains indexOfObject:v8];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
        [v18 setObject:v13 forKey:v6];
      }

      v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v19);
  }

  v14 = [v18 keysSortedByValueWithOptions:1 usingComparator:&__block_literal_global_333];

  return v14;
}

uint64_t __42__SPFederatedQueryTask_orderedCategories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    if (v8 >= [v5 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)sendResultsForKeys:(id)keys toSendSections:(id)sections
{
  v18 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v7 = [(SPFederatedQueryTask *)self orderedCategories:keys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:*(*(&v13 + 1) + 8 * v11)];
        [sectionsCopy addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)prepareAndSend:(id)send force:(BOOL)force moreComing:(BOOL)coming reason:(int)reason
{
  forceCopy = force;
  v58 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  if (forceCopy)
  {
    self->_didForceSend = 1;
  }

  if (!coming)
  {
    v22 = [(NSMutableArray *)self->_slowTokens count];
    v23 = [(NSMutableArray *)self->_delayedStartTokens count];
    v24 = [(NSMutableArray *)self->_delayedStartQueries count];
    v25 = [(NSMutableArray *)self->_tokens count];
    if (v23 + v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v22 | v25) == 0;
    }

    v27 = v26;
    if (v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27 ^ 1;
    }

    v29 = SPLogForSPLogCategoryQuery();
    v30 = v29;
    v31 = MEMORY[0x277D4BF48];
    if (*MEMORY[0x277D4BF48])
    {
      v32 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v32 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v29, v32))
    {
      v33 = sendCopy;
      v34 = v28;
      v35 = v27;
      bottomPlacedSections = self->_bottomPlacedSections;
      allKeys = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
      *buf = 138412546;
      v55 = bottomPlacedSections;
      v27 = v35;
      v28 = v34;
      sendCopy = v33;
      v31 = MEMORY[0x277D4BF48];
      v56 = 2112;
      v57 = allKeys;
      _os_log_impl(&dword_26B71B000, v30, v32, "#query send bottomRankedCategories %@ from %@", buf, 0x16u);
    }

    v38 = SPLogForSPLogCategoryQuery();
    v39 = v38;
    if (*v31)
    {
      v40 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v40 = OS_LOG_TYPE_DEBUG;
    }

    v41 = os_log_type_enabled(v38, v40);
    if (v22)
    {
      if (v41)
      {
        slowTokens = self->_slowTokens;
        tokens = self->_tokens;
        *buf = 138412546;
        v55 = slowTokens;
        v56 = 2112;
        v57 = tokens;
        _os_log_impl(&dword_26B71B000, v39, v40, "#query still waiting for %@ and %@", buf, 0x16u);
      }

      v44 = SPLogForSPLogCategoryQuery();
      v39 = v44;
      if (*v31)
      {
        v45 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v45 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_46;
      }

      v46 = self->_bottomPlacedSections;
      *buf = 138412290;
      v55 = v46;
      v47 = "#query _bottomRankedCategories %@";
      v48 = v39;
      v49 = v45;
      v50 = 12;
    }

    else
    {
      if (!v41)
      {
LABEL_46:

        didForceSend = self->_didForceSend;
        LODWORD(v53) = reason;
        selfCopy3 = self;
        v20 = sendCopy;
        v17 = v28;
        v21 = v27;
        goto LABEL_47;
      }

      *buf = 0;
      v47 = "#query No waiting stores";
      v48 = v39;
      v49 = v40;
      v50 = 2;
    }

    _os_log_impl(&dword_26B71B000, v48, v49, v47, buf, v50);
    goto LABEL_46;
  }

  if (reason == 5)
  {
    v11 = [(NSMutableArray *)self->_slowTokens count];
    v12 = [(NSMutableArray *)self->_delayedStartTokens count];
    v13 = [(NSMutableArray *)self->_delayedStartQueries count];
    v14 = [(NSMutableArray *)self->_tokens count];
    if (v12 + v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v14 | v11) == 0;
    }

    v17 = !v15 && v14 == 0;
    didForceSend = self->_didForceSend;
    LODWORD(v53) = 5;
    selfCopy3 = self;
    v20 = sendCopy;
    v21 = 1;
    goto LABEL_47;
  }

  query = [(SPQueryTask *)self query];
  infinitePatience = [query infinitePatience];

  if ((infinitePatience & 1) == 0 && [sendCopy count])
  {
    v17 = reason == 4;
    didForceSend = self->_didForceSend;
    LODWORD(v53) = reason;
    selfCopy3 = self;
    v20 = sendCopy;
    v21 = 0;
LABEL_47:
    [(SPFederatedQueryTask *)selfCopy3 sendResults:v20 reset:didForceSend partiallyComplete:v17 update:0 complete:v21 delayedTopHit:0 reason:v53];
  }
}

- (void)sendFinishedDomainsZKW:(BOOL)w
{
  wCopy = w;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_tokens count];
  v6 = v5 != 0;
  if (!v5 && !wCopy)
  {
    v6 = [(NSMutableArray *)self->_slowTokens count]!= 0;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_sectionOrderByInsertion;
  v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 resultsCount])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSMutableOrderedSet *)self->_sectionOrderByInsertion removeAllObjects];
  [(SPFederatedQueryTask *)self prepareAndSend:v7 force:wCopy moreComing:v6 reason:0];
}

- (void)logPerfToAnalytics:(int)analytics
{
  if (analytics > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_279CFE320[analytics];
  }

  query_analytics_log_complete(self, v3, self->_startTime);
}

- (void)addMatchInfo:(_MDPlistContainer *)info
{
  obj = self;
  objc_sync_enter(obj);
  matchInfo = obj->_matchInfo;
  if (!matchInfo)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = obj->_matchInfo;
    obj->_matchInfo = v5;

    matchInfo = obj->_matchInfo;
  }

  [(NSMutableArray *)matchInfo addObject:info];
  objc_sync_exit(obj);
}

- (__CFArray)copyMatchInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_matchInfo copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)sendFinishedDomains:(BOOL)domains reason:(int)reason
{
  domainsCopy = domains;
  v251 = *MEMORY[0x277D85DE8];
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (*MEMORY[0x277D4BF48])
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v8, v9, "sendFinishedDomains", buf, 2u);
  }

  v10 = [(NSMutableArray *)self->_slowTokens count];
  v11 = [(NSMutableArray *)self->_tokens count];
  v185 = domainsCopy;
  v12 = (v10 > 0) & ~domainsCopy;
  if (v11 > 0)
  {
    v12 = 1;
  }

  if (reason == 4)
  {
    v12 = 1;
  }

  v188 = v12;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  allValues = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
  v15 = [allValues countByEnumeratingWithState:&v238 objects:v250 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v239;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v239 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v238 + 1) + 8 * i) resultsCount])
        {
          v19 = 1;
          goto LABEL_20;
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v238 objects:v250 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_20:

  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchEntities = [queryContext searchEntities];
  selfCopy = self;
  v189 = v13;
  if (searchEntities)
  {
    v203 = v19;
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    searchEntities2 = [queryContext2 searchEntities];
    if ([searchEntities2 count])
    {
      query3 = [(SPQueryTask *)self query];
      queryContext3 = [query3 queryContext];
      [queryContext3 searchEntities];
      v27 = v186 = reason;
      [v27 lastObject];
      v29 = v28 = query2;
      isScopedSearch = [v29 isScopedSearch];

      query2 = v28;
      reason = v186;

      self = selfCopy;
      v30 = isScopedSearch;
    }

    else
    {
      v30 = 0;
    }

    v13 = v189;
    v19 = v203;
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_new();
  [(SSRankingManager *)self->_rankingManager setLogValues:v31];

  query4 = [(SPQueryTask *)self query];
  cancelled = [query4 cancelled];

  if (cancelled)
  {
    goto LABEL_226;
  }

  query5 = [(SPQueryTask *)self query];
  queryContext4 = [query5 queryContext];
  queryKind = [queryContext4 queryKind];

  v184 = v30;
  if (reason != 4 && -[NSArray count](self->_actualSentSections, "count") && ![v13 count])
  {
    v37 = [(NSArray *)self->_actualSentSections objectAtIndex:0];
    bundleIdentifier = [v37 bundleIdentifier];
    v39 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

    if (v39)
    {
      [v13 addObject:v37];

      goto LABEL_34;
    }
  }

  [(SPFederatedQueryTask *)self addTopHitSectionIfNecessaryToSectionsForSending:v13 updatedSections:v19 isScopedSearch:v30];
LABEL_34:
  query6 = [(SPQueryTask *)self query];
  queryContext5 = [query6 queryContext];
  searchString = [queryContext5 searchString];
  [(SPFederatedQueryTask *)self addSuggestionsToSectionsForSending:v13 searchString:searchString updatedSections:v19 | v188 ^ 1 queryKind:queryKind];

  reasonCopy = reason;
  if (((v188 ^ 1) & 1) == 0 && reason >= 2 && reason != 3 && (reason != 4 || !self->_didReceiveCoreSpotlightProgress) && self->_didSendResults || !self->_categoryToResultMapping)
  {
    v52 = SPLogForSPLogCategoryDefault();
    v43 = v52;
    if (*MEMORY[0x277D4BF48])
    {
      v53 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v53 = OS_LOG_TYPE_DEBUG;
    }

    v54 = v185;
    if (os_log_type_enabled(v52, v53))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, &v43->super.super, v53, "Skipped ranking; already sent", buf, 2u);
    }

    goto LABEL_178;
  }

  self->_didSendResults = 1;
  v182 = queryKind;
  v181 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (reason == 4)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    allKeys = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
    v45 = [allKeys countByEnumeratingWithState:&v234 objects:v249 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v235;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v235 != v47)
          {
            objc_enumerationMutation(allKeys);
          }

          v49 = *(*(&v234 + 1) + 8 * j);
          v50 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:v49];
          bundleIdentifier2 = [v50 bundleIdentifier];
          if (priorityIndexEligibleBundleIdentifer(bundleIdentifier2))
          {
            [(NSMutableDictionary *)v43 setObject:v50 forKey:v49];
          }
        }

        v46 = [allKeys countByEnumeratingWithState:&v234 objects:v249 count:16];
      }

      while (v46);
    }

    queryKind = v182;
  }

  else
  {
    v43 = self->_categoryToResultMapping;
  }

  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  allKeys2 = [(NSMutableDictionary *)v43 allKeys];
  v56 = [allKeys2 countByEnumeratingWithState:&v230 objects:v248 count:16];
  v204 = v43;
  if (!v56)
  {

    goto LABEL_93;
  }

  v57 = v56;
  v58 = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  v197 = *MEMORY[0x277D65B70];
  v200 = *v231;
  v194 = *MEMORY[0x277D65B18];
  v192 = *MEMORY[0x277D65AF0];
  v193 = *MEMORY[0x277D65B68];
  obj = allKeys2;
  do
  {
    for (k = 0; k != v57; ++k)
    {
      if (*v231 != v200)
      {
        objc_enumerationMutation(obj);
      }

      v62 = *(*(&v230 + 1) + 8 * k);
      v63 = [(NSMutableDictionary *)v204 objectForKey:v62];
      bundleIdentifier3 = [v63 bundleIdentifier];
      v65 = [bundleIdentifier3 isEqualToString:v197];

      if (v59)
      {
        v59 = 1;
        if (v58)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (!v63)
        {
          v59 = 0;
          if (v60)
          {
            goto LABEL_73;
          }

          goto LABEL_75;
        }

        bundleIdentifier4 = [v63 bundleIdentifier];
        v59 = [bundleIdentifier4 isEqualToString:v194];

        if (v58)
        {
LABEL_65:
          v58 = 1;
          if (v60)
          {
            goto LABEL_73;
          }

          goto LABEL_75;
        }
      }

      if (v63)
      {
        bundleIdentifier5 = [v63 bundleIdentifier];
        v58 = [bundleIdentifier5 isEqualToString:v192];

        if (v60)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v58 = 0;
        if (v60)
        {
LABEL_73:
          v60 = 1;
          goto LABEL_78;
        }
      }

LABEL_75:
      if (v63)
      {
        bundleIdentifier6 = [v63 bundleIdentifier];
        v60 = [bundleIdentifier6 isEqualToString:v193];
      }

      else
      {
        v60 = 0;
      }

LABEL_78:
      results = [v63 results];
      v70 = ([results count] == 0) | v65;

      if (v70)
      {
        if (v65)
        {
          bottomPlacedSections = selfCopy->_bottomPlacedSections;
          if (!bottomPlacedSections)
          {
            v72 = objc_opt_new();
            v73 = selfCopy->_bottomPlacedSections;
            selfCopy->_bottomPlacedSections = v72;

            bottomPlacedSections = selfCopy->_bottomPlacedSections;
          }

          if (([(NSMutableArray *)bottomPlacedSections containsObject:v63]& 1) == 0)
          {
            [(NSMutableArray *)selfCopy->_bottomPlacedSections addObject:v63];
          }
        }

        [(NSMutableDictionary *)v204 setObject:0 forKeyedSubscript:v62];
      }
    }

    v57 = [obj countByEnumeratingWithState:&v230 objects:v248 count:16];
  }

  while (v57);

  v74 = (v59 | v58) & v60;
  self = selfCopy;
  queryKind = v182;
  v43 = v204;
  if (v74)
  {
    if (v59)
    {
      [(NSMutableDictionary *)v204 setObject:0 forKeyedSubscript:v194];
    }

    if (v58)
    {
      [(NSMutableDictionary *)v204 setObject:0 forKeyedSubscript:v192];
    }
  }

LABEL_93:
  query7 = [(SPQueryTask *)self query];
  cancelled2 = [query7 cancelled];

  if (cancelled2)
  {

    v13 = v189;
    goto LABEL_226;
  }

  [(SPFederatedQueryTask *)self externalID];
  kdebug_trace();
  query8 = [(SPQueryTask *)self query];
  queryContext6 = [query8 queryContext];
  isSearchToolClient = [queryContext6 isSearchToolClient];

  if (isSearchToolClient)
  {
    v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](v43, "count")}];
    v228[0] = MEMORY[0x277D85DD0];
    v228[1] = 3221225472;
    v228[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke;
    v228[3] = &unk_279CFE0C0;
    selfCopy3 = self;
    v82 = v80;
    v229 = v82;
    [(NSMutableDictionary *)v43 enumerateKeysAndObjectsUsingBlock:v228];
    itemRanker = v229;
  }

  else
  {
    rankingManager = self->_rankingManager;
    itemRanker = [(SPFederatedQueryTask *)self itemRanker];
    preferredBundleIDs = [(SPFederatedQueryTask *)self preferredBundleIDs];
    query9 = [(SPQueryTask *)self query];
    queryIdent = [query9 queryIdent];
    isCJK = [(SPFederatedQueryTask *)self isCJK];
    isBullseyeNonCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
    isBullseyeCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
    selfCopy3 = self;
    isPeopleSearch = self->_isPeopleSearch;
    query10 = [(SPQueryTask *)selfCopy3 query];
    queryContext7 = [query10 queryContext];
    BYTE2(v180) = isPeopleSearch;
    BYTE1(v180) = isBullseyeCommittedSearch;
    v43 = v204;
    LOBYTE(v180) = isBullseyeNonCommittedSearch;
    queryKind = v182;
    v82 = [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:"rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:" withRanker:v204 preferredBundleIds:itemRanker isScopedSearch:preferredBundleIDs queryId:v184 isCJK:queryIdent isBullseyeNonCommittedSearch:isCJK isBullseyeCommittedSearch:v180 isPeopleSearch:queryContext7 queryContext:?];
  }

  v13 = v189;
  if ((selfCopy3->_parsecCameLaterThanSRT || selfCopy->_parsecEntityCameEarly) && ((queryKind - 5) < 4 || queryKind == 1 || queryKind == 4 || selfCopy->_parsecEntityCameEarly))
  {
    v92 = [(NSArray *)selfCopy->_sentSections copy];
    v93 = [v92 count];
    v224[0] = MEMORY[0x277D85DD0];
    v224[1] = 3221225472;
    v224[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_342;
    v224[3] = &unk_279CFE0E8;
    v94 = v92;
    v225 = v94;
    v82 = v82;
    v226 = v82;
    v227 = selfCopy;
    v95 = MEMORY[0x26D67F7A0](v224);
    v96 = v95;
    if (v93)
    {
      if ((sDeviceClass - 1) <= 1)
      {
        v97 = *(v95 + 16);
        goto LABEL_109;
      }

      if (sDeviceClass == 3)
      {
        v97 = *(v95 + 16);
LABEL_109:
        v98 = v97();

        v82 = v98;
      }

      else
      {
        selfCopy->_sendStableSections = 1;
      }
    }
  }

  if (!selfCopy->_sendStableSections || !selfCopy->_sentTaggedTopHits || selfCopy->_sentPriority || selfCopy->_receivedLateParsecResults || selfCopy->_shouldRecomputeSuggestions)
  {
    if (selfCopy->_sentPriority)
    {
      v101 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v101, OS_LOG_TYPE_DEFAULT, "Sending additional results after priority index results", buf, 2u);
      }
    }

    selfCopy->_sentPriority = 0;
    if ([v82 count])
    {
      v102 = SPLogForSPLogCategoryQuery();
      v103 = v102;
      if (*MEMORY[0x277D4BF48])
      {
        v104 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v104 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v102, v104))
      {
        *buf = 138412290;
        v247 = v82;
        _os_log_impl(&dword_26B71B000, v103, v104, "rankedSections: %@", buf, 0xCu);
      }

      if (selfCopy->_genreGroupingEnabled)
      {
        v105 = selfCopy->_rankingManager;
        v106 = +[SPFederatedQueryTask appGenreMap];
        v110 = [(SSRankingManager *)v105 groupSectionsByCategory:v82 genreMap:v106 topSections:v189];

        v107 = SPLogForSPLogCategoryQuery();
        v108 = v107;
        if (*MEMORY[0x277D4BF48])
        {
          v109 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v109 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v107, v109))
        {
          *buf = 138412290;
          v247 = v110;
          _os_log_impl(&dword_26B71B000, v108, v109, "rankedSections: %@", buf, 0xCu);
        }
      }

      else
      {
        v110 = v82;
      }

      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v82 = v110;
      v111 = [v82 countByEnumeratingWithState:&v220 objects:v245 count:16];
      if (v111)
      {
        v112 = v111;
        v113 = *v221;
        v114 = *MEMORY[0x277D65B70];
        do
        {
          for (m = 0; m != v112; ++m)
          {
            if (*v221 != v113)
            {
              objc_enumerationMutation(v82);
            }

            v116 = *(*(&v220 + 1) + 8 * m);
            results2 = [v116 results];
            v118 = [results2 count];

            if (v118)
            {
              results3 = [v116 results];
              v120 = [results3 objectAtIndex:0];

              if ([v120 placement] == 2 || (objc_msgSend(v116, "bundleIdentifier"), v121 = objc_claimAutoreleasedReturnValue(), v122 = objc_msgSend(v121, "isEqualToString:", v114), v121, v122))
              {
                [(NSMutableArray *)selfCopy->_bottomPlacedSections addObject:v116];
              }
            }
          }

          v112 = [v82 countByEnumeratingWithState:&v220 objects:v245 count:16];
        }

        while (v112);
      }

      if ([(NSMutableArray *)selfCopy->_bottomPlacedSections count])
      {
        v123 = [v82 mutableCopy];
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v124 = selfCopy->_bottomPlacedSections;
        v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v216 objects:v244 count:16];
        queryKind = v182;
        v43 = v204;
        if (v125)
        {
          v126 = v125;
          v127 = *v217;
          do
          {
            for (n = 0; n != v126; ++n)
            {
              if (*v217 != v127)
              {
                objc_enumerationMutation(v124);
              }

              [v123 removeObject:*(*(&v216 + 1) + 8 * n)];
            }

            v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v216 objects:v244 count:16];
          }

          while (v126);
        }

        v129 = [v123 copy];
        v82 = v129;
        v13 = v189;
      }

      else
      {
        v13 = v189;
        queryKind = v182;
        v43 = v204;
      }
    }

    [v13 addObjectsFromArray:v82];
    [(SPFederatedQueryTask *)selfCopy externalID];
    kdebug_trace();
    v130 = [(NSMutableDictionary *)v43 objectForKey:*MEMORY[0x277D65A60]];
    v100 = v130;
    if (v130)
    {
      resultSet = [v130 resultSet];
      firstObject = [resultSet firstObject];
      topHit = [firstObject topHit];

      if (!topHit)
      {
        [v13 removeObject:v100];
        [v13 addObject:v100];
      }
    }

    if ([v13 count])
    {
      if ([(NSArray *)selfCopy->_corrections count])
      {
        if (selfCopy->_previousQueryKind == 10)
        {
          suggestion = 0;
        }

        else
        {
          firstObject2 = [(NSArray *)selfCopy->_corrections firstObject];
          suggestion = [firstObject2 suggestion];
        }
      }

      else
      {
        suggestion = 0;
      }

      v136 = selfCopy->_rankingManager;
      topHitSection = selfCopy->_topHitSection;
      v138 = selfCopy->_isPeopleSearch;
      itemRanker2 = [(SPFederatedQueryTask *)selfCopy itemRanker];
      queryTermLength = [itemRanker2 queryTermLength];
      itemRanker3 = [(SPFederatedQueryTask *)selfCopy itemRanker];
      v99 = [(SSRankingManager *)v136 applyTopSectionPolicy:v189 withTopHitSection:topHitSection isPeopleSearch:v138 queryKind:v182 correction:suggestion queryLength:queryTermLength ranker:itemRanker3];

      v142 = SPLogForSPLogCategoryQuery();
      v143 = v142;
      if (*MEMORY[0x277D4BF48])
      {
        v144 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v144 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v142, v144))
      {
        *buf = 138412290;
        v247 = v99;
        _os_log_impl(&dword_26B71B000, v143, v144, "[query] toSendSections: %@", buf, 0xCu);
      }

      queryKind = v182;
      v43 = v204;
    }

    else
    {
      v99 = v13;
    }

LABEL_176:
    v145 = v181;

    v13 = v99;
    v54 = v185;
  }

  else
  {
    if (reasonCopy == 3)
    {
      v99 = [(NSArray *)selfCopy->_sentSections mutableCopy];
      v100 = v189;
      goto LABEL_176;
    }

    v54 = v185;
    v145 = v181;
  }

  query_analytics_log_timing(selfCopy, "finished", "ranking", v145);
  [(SPFederatedQueryTask *)selfCopy logPerfToAnalytics:reasonCopy];

  self = selfCopy;
LABEL_178:

  query11 = [(SPQueryTask *)self query];
  cancelled3 = [query11 cancelled];

  if ((cancelled3 & 1) == 0)
  {
    v148 = v188 ^ 1;
    if ((queryKind - 4) > 4)
    {
      v148 = 1;
    }

    if ((v148 & 1) == 0 && [v13 count] == 1 && objc_msgSend(v13, "containsObject:", self->_topHitSection))
    {
      self->_didSendTopHits = 0;
    }

    else
    {
      v149 = reasonCopy;
      if (self->_enforcePreferredBundleIDs || (v150 = SSPreferLocalResultsOnLocalEngagment(), (queryKind - 5) <= 3) && v150)
      {
        preferredBundleIDs2 = [(SPFederatedQueryTask *)self preferredBundleIDs];
        v152 = [preferredBundleIDs2 count];

        if (v152)
        {
          array = [MEMORY[0x277CBEB18] array];
          array2 = [MEMORY[0x277CBEB18] array];
          v212 = 0u;
          v213 = 0u;
          v214 = 0u;
          v215 = 0u;
          v190 = v13;
          v153 = v13;
          v154 = [v153 countByEnumeratingWithState:&v212 objects:v243 count:16];
          if (v154)
          {
            v155 = v154;
            v156 = 0;
            v157 = *v213;
            do
            {
              for (ii = 0; ii != v155; ++ii)
              {
                if (*v213 != v157)
                {
                  objc_enumerationMutation(v153);
                }

                v159 = *(*(&v212 + 1) + 8 * ii);
                if ([v159 isEqual:self->_topHitSection])
                {
                  v160 = v159;

                  v156 = v160;
                }

                else
                {
                  preferredBundleIDs3 = [(SPFederatedQueryTask *)self preferredBundleIDs];
                  bundleIdentifier7 = [v159 bundleIdentifier];
                  v163 = [preferredBundleIDs3 containsObject:bundleIdentifier7];

                  if (v163)
                  {
                    v164 = array;
                  }

                  else
                  {
                    v164 = array2;
                  }

                  [v164 addObject:v159];
                  self = selfCopy;
                }
              }

              v155 = [v153 countByEnumeratingWithState:&v212 objects:v243 count:16];
            }

            while (v155);
          }

          else
          {
            v156 = 0;
          }

          [v153 removeAllObjects];
          v149 = reasonCopy;
          if (v156)
          {
            [v153 addObject:v156];
          }

          v211[0] = MEMORY[0x277D85DD0];
          v211[1] = 3221225472;
          v211[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_346;
          v211[3] = &unk_279CFE110;
          v211[4] = self;
          [array sortUsingComparator:v211];
          [v153 addObjectsFromArray:array];
          [v153 addObjectsFromArray:array2];

          v54 = v185;
          v13 = v190;
        }
      }

      if (!self->_isEntitySearch)
      {
        goto LABEL_225;
      }

      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v165 = v13;
      v166 = [v165 countByEnumeratingWithState:&v207 objects:v242 count:16];
      if (v166)
      {
        v167 = v166;
        v191 = v13;
        v168 = 0;
        v169 = *v208;
LABEL_210:
        v170 = 0;
        v206 = v168 + v167;
        while (1)
        {
          if (*v208 != v169)
          {
            objc_enumerationMutation(v165);
          }

          v171 = *(*(&v207 + 1) + 8 * v170);
          bundleIdentifier8 = [v171 bundleIdentifier];
          if ([bundleIdentifier8 hasPrefix:@"com.apple.parsec"])
          {
            [v171 resultSet];
            v174 = v173 = v165;
            [v174 firstObject];
            v176 = v175 = v169;
            placement = [v176 placement];

            v169 = v175;
            v165 = v173;

            v178 = placement == 1;
            self = selfCopy;
            if (v178)
            {
              v179 = v171;

              v54 = v185;
              v149 = reasonCopy;
              v13 = v191;
              if (v179)
              {
                [v165 removeObjectAtIndex:v168];
                [v165 insertObject:v179 atIndex:0];
                v165 = v179;
                goto LABEL_224;
              }

              goto LABEL_225;
            }
          }

          else
          {
          }

          ++v168;
          if (v167 == ++v170)
          {
            v167 = [v165 countByEnumeratingWithState:&v207 objects:v242 count:16];
            v168 = v206;
            if (v167)
            {
              goto LABEL_210;
            }

            v54 = v185;
            v149 = reasonCopy;
            v13 = v191;
            goto LABEL_224;
          }
        }
      }

      v54 = v185;
LABEL_224:

LABEL_225:
      [(SPFederatedQueryTask *)self prepareAndSend:v13 force:v54 moreComing:v188 reason:v149];
    }
  }

LABEL_226:
}

void __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObject:?];
  v1 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26B71B000, v1, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] by-pass L3", v2, 2u);
  }
}

id __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_342(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:*(a1 + 32)];
  [v4 addObjectsFromArray:*(a1 + 40)];
  v5 = [v4 count];
  if (*(a1 + 32))
  {
    v6 = v5 > a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [v4 removeObjectsInRange:{a2, v5 - a2}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v4 containsObject:{v12, v16}] & 1) == 0)
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    *(*(a1 + 48) + 274) = 0;
  }

  v13 = [v4 array];
  v14 = [v13 mutableCopy];

  return v14;
}

uint64_t __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_346(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 preferredBundleIDs];
  v9 = [v7 bundleIdentifier];

  v10 = [v8 indexOfObject:v9];
  v11 = [*(a1 + 32) preferredBundleIDs];
  v12 = [v6 bundleIdentifier];

  v13 = [v11 indexOfObject:v12];
  if (v10 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v10 > v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

- (id)detailTextFromBundleIDs:(id)ds
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (SSEnableLocalDetailText())
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = dsCopy;
    v5 = dsCopy;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v8 = *v32;
    v9 = *MEMORY[0x277D4BEF0];
    v10 = *MEMORY[0x277D4BEE8];
    v11 = 0x277D4B000uLL;
    v12 = @"DOMAIN_APPLICATION";
    while (1)
    {
      v13 = 0;
      v30 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        if ([v14 isEqualToString:{v9, v29}])
        {
          v15 = *(v11 + 3712);
          v16 = v12;
          goto LABEL_11;
        }

        if ([v14 isEqualToString:v10])
        {
          v15 = *(v11 + 3712);
          v16 = @"DOMAIN_APP_CLIPS";
LABEL_11:
          localizedName = [v15 localizedSearchStringWithIdentifier:v16];
          if (!localizedName)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v4 addObject:localizedName];
          goto LABEL_13;
        }

        v18 = v9;
        v19 = v8;
        v20 = v10;
        v21 = v4;
        v22 = v5;
        v23 = v11;
        v24 = v12;
        v25 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v14 allowPlaceholder:1 error:0];
        localizedName = [v25 localizedName];

        v12 = v24;
        v11 = v23;
        v5 = v22;
        v4 = v21;
        v10 = v20;
        v8 = v19;
        v9 = v18;
        v7 = v30;
        if (localizedName)
        {
          goto LABEL_12;
        }

LABEL_13:

        ++v13;
      }

      while (v7 != v13);
      v26 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v7 = v26;
      if (!v26)
      {
LABEL_18:

        v27 = [v4 componentsJoinedByString:{@", "}];

        dsCopy = v29;
        goto LABEL_20;
      }
    }
  }

  v27 = 0;
LABEL_20:

  return v27;
}

- (id)contactSuggestionsWithSearchString:(id)string
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = *MEMORY[0x277D65BE0];
  v3 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:?];
  if (v3)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v3;
    results = [v3 results];
    v5 = [results countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    v7 = *v32;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(results);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = SPLogForSPLogCategoryDefault();
        v11 = v10;
        if (*MEMORY[0x277D4BF48])
        {
          v12 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v12 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v10, v12))
        {
          title = [v9 title];
          text = [title text];
          *buf = 138412290;
          v36 = text;
          _os_log_impl(&dword_26B71B000, v11, v12, "Check result %@", buf, 0xCu);
        }

        contactIdentifier = [v9 contactIdentifier];
        if (contactIdentifier)
        {
          lastUsedDate = contactIdentifier;
          personIdentifier = [v9 personIdentifier];
          if (personIdentifier)
          {

LABEL_15:
            goto LABEL_16;
          }

          resultBundleId = [v9 resultBundleId];
          v19 = [resultBundleId isEqual:v30];

          if (v19)
          {
            lastUsedDate = [v9 lastUsedDate];
            [lastUsedDate timeIntervalSinceNow];
            if (v20 <= -40996800.0)
            {
              goto LABEL_15;
            }

            hasTextContentMatch = [v9 hasTextContentMatch];

            if (hasTextContentMatch)
            {
              v22 = MEMORY[0x277D659B8];
              query = [(SPQueryTask *)self query];
              queryContext = [query queryContext];
              lastUsedDate = [v22 buildResultWithResult:v9 queryContext:queryContext];

              [v29 addObject:lastUsedDate];
              goto LABEL_15;
            }
          }
        }

LABEL_16:
        ++v8;
      }

      while (v6 != v8);
      v25 = [results countByEnumeratingWithState:&v31 objects:v37 count:16];
      v6 = v25;
      if (!v25)
      {
LABEL_23:

        v3 = v27;
        break;
      }
    }
  }

  return v29;
}

- (BOOL)forceAboveFoldResultsWithQuery:(id)query topHitSection:(id)section sections:(id)sections
{
  v30 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  if (_os_feature_enabled_impl() && [sectionsCopy count] >= 2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = sectionsCopy;
    v6 = sectionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      v10 = *MEMORY[0x277D65A00];
      v11 = *MEMORY[0x277D659F0];
      v23 = *MEMORY[0x277D65B90];
      v12 = 1;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ((v12 & 1) == 0)
          {
            v14 = *(*(&v25 + 1) + 8 * i);
            bundleIdentifier = [v14 bundleIdentifier];
            if ([bundleIdentifier isEqualToString:v10])
            {

LABEL_19:
              v20 = 1;
              goto LABEL_20;
            }

            bundleIdentifier2 = [v14 bundleIdentifier];
            v17 = [bundleIdentifier2 isEqualToString:v11];

            if (v17)
            {
              goto LABEL_19;
            }

            if (section)
            {
              bundleIdentifier3 = [v14 bundleIdentifier];
              v19 = [bundleIdentifier3 isEqualToString:v23];

              if (!v19)
              {
                goto LABEL_19;
              }
            }
          }

          v12 = 0;
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v12 = 0;
        v20 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_20:

    sectionsCopy = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)suggestionsWithSearchString:(id)string sections:(id)sections topHitSection:(id)section highestLocalScore:(double)score
{
  v120 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  sectionsCopy = sections;
  sectionCopy = section;
  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v92 = sectionCopy;
  results = [sectionCopy results];
  v12 = [results countByEnumeratingWithState:&v110 objects:v119 count:16];
  if (!v12)
  {
    v97 = 0;
    goto LABEL_18;
  }

  v13 = v12;
  v97 = 0;
  v14 = *v111;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v111 != v14)
      {
        objc_enumerationMutation(results);
      }

      v16 = *(*(&v110 + 1) + 8 * i);
      entityIdentifier = [v16 entityIdentifier];

      if (entityIdentifier)
      {
        entityIdentifier2 = [v16 entityIdentifier];
        [v10 addObject:entityIdentifier2];
      }

      contactIdentifier = [v16 contactIdentifier];
      if (contactIdentifier)
      {
      }

      else
      {
        personIdentifier = [v16 personIdentifier];

        if (!personIdentifier)
        {
          goto LABEL_12;
        }
      }

      title = [v16 title];
      text = [title text];
      v23 = SSNormalizedQueryString();

      [v96 addObject:v23];
LABEL_12:
      rankingItem = [v16 rankingItem];
      if (rankingItem)
      {
        rankingItem2 = [v16 rankingItem];
        v26 = ([rankingItem2 bundleIDType] >> 8) & 1;

        v97 |= v26;
      }
    }

    v13 = [results countByEnumeratingWithState:&v110 objects:v119 count:16];
  }

  while (v13);
LABEL_18:

  if (_os_feature_enabled_impl())
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = sectionsCopy;
    v27 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v107;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v107 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v106 + 1) + 8 * j);
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          results2 = [v31 results];
          v33 = [results2 countByEnumeratingWithState:&v102 objects:v117 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v103;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v103 != v35)
                {
                  objc_enumerationMutation(results2);
                }

                v37 = *(*(&v102 + 1) + 8 * k);
                entityIdentifier3 = [v37 entityIdentifier];

                if (entityIdentifier3)
                {
                  entityIdentifier4 = [v37 entityIdentifier];
                  [v10 addObject:entityIdentifier4];
                }
              }

              v34 = [results2 countByEnumeratingWithState:&v102 objects:v117 count:16];
            }

            while (v34);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
      }

      while (v28);
    }
  }

  obja = [(SPFederatedQueryTask *)self contactSuggestionsWithSearchString:stringCopy];
  rankingConfiguration = [(SSRankingManager *)self->_rankingManager rankingConfiguration];
  localResultQualityThreshold = [rankingConfiguration localResultQualityThreshold];
  v42 = localResultQualityThreshold;
  v43 = &unk_287C3B880;
  if (localResultQualityThreshold)
  {
    v43 = localResultQualityThreshold;
  }

  v44 = v43;

  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if (SSCreateAsTypedSuggestion())
  {
    v46 = objc_alloc(MEMORY[0x277D4C5D8]);
    v47 = [v46 initWithIdentifier:*MEMORY[0x277D65CF8] suggestion:stringCopy query:stringCopy score:6 type:1.0];
    v48 = MEMORY[0x277D659B8];
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    v83 = [v48 buildResultWithSuggestion:v47 queryContext:queryContext2];
  }

  else
  {
    v83 = 0;
  }

  v51 = objc_alloc(MEMORY[0x277D4C5D8]);
  v52 = [v51 initWithIdentifier:*MEMORY[0x277D65D00] suggestion:stringCopy query:stringCopy score:14 type:1.0];
  v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54 = [v53 localizedStringForKey:@"SUGGESTION_DETAIL_WEB" value:&stru_287C35638 table:@"SpotlightServices"];

  v85 = v54;
  [v52 setDetailText:v54];
  v55 = MEMORY[0x277D659B8];
  query3 = [(SPQueryTask *)self query];
  queryContext3 = [query3 queryContext];
  v89 = [v55 buildResultWithSuggestion:v52 queryContext:queryContext3];

  serverSuggestionResults = self->_serverSuggestionResults;
  if (!serverSuggestionResults)
  {
    serverSuggestionResults = MEMORY[0x277CBEBF8];
  }

  v59 = MEMORY[0x277CBEBF8];
  v60 = serverSuggestionResults;
  localSuggestionResults = self->_localSuggestionResults;
  if (!localSuggestionResults)
  {
    localSuggestionResults = v59;
  }

  v62 = localSuggestionResults;
  mEMORY[0x277D658D0] = [MEMORY[0x277D658D0] sharedSuggestionsManager];
  v116[0] = v44;
  v115[0] = @"qualityThreshold";
  v115[1] = @"prefersLocalUserTypedSuggestion";
  v63 = [MEMORY[0x277CCABB0] numberWithBool:{-[SPFederatedQueryTask prefersLocalUserTypedSuggestion](self, "prefersLocalUserTypedSuggestion")}];
  v116[1] = v63;
  v115[2] = @"suggestionsAreBlended";
  v64 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsAreBlended];
  v116[2] = v64;
  v115[3] = @"localFilteringScore";
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  v116[3] = v65;
  v115[4] = @"ForceAboveFoldResults";
  v82 = v44;
  v66 = [MEMORY[0x277CCABB0] numberWithBool:{-[SPFederatedQueryTask forceAboveFoldResultsWithQuery:topHitSection:sections:](self, "forceAboveFoldResultsWithQuery:topHitSection:sections:", stringCopy, v92, sectionsCopy)}];
  v116[4] = v66;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:5];
  v84 = v62;
  v87 = v60;
  v68 = [mEMORY[0x277D658D0] orderedSuggestionsWithQueryContext:queryContext filters:v91 entityFilters:v10 contactFilters:v96 userSuggestion:v83 userWebSuggestion:v89 shortcutSuggestionResults:MEMORY[0x277CBEBF8] actionSuggestionResults:MEMORY[0x277CBEBF8] contactSuggestionResults:obja serverSuggestionResults:v60 localSuggestionResults:v62 options:v67];

  v69 = sectionsCopy;
  if ((v97 & 1) != 0 && [v68 count] >= 3 && objc_msgSend(sectionsCopy, "count") >= 3)
  {
    v70 = [sectionsCopy objectAtIndexedSubscript:2];
    bundleIdentifier = [v70 bundleIdentifier];
    v72 = [bundleIdentifier isEqualToString:*MEMORY[0x277D65A00]];

    if (v72)
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v73 = [sectionsCopy objectAtIndexedSubscript:2];
      results3 = [v73 results];

      v75 = [results3 countByEnumeratingWithState:&v98 objects:v114 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v99;
        while (2)
        {
          for (m = 0; m != v76; ++m)
          {
            if (*v99 != v77)
            {
              objc_enumerationMutation(results3);
            }

            if ([MEMORY[0x277D659C8] passLikelihoodForTopHitCandidate:*(*(&v98 + 1) + 8 * m)])
            {
              v79 = [v68 subarrayWithRange:{0, 2}];

              v69 = sectionsCopy;
              goto LABEL_59;
            }
          }

          v76 = [results3 countByEnumeratingWithState:&v98 objects:v114 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }
      }

      v69 = sectionsCopy;
    }
  }

  v79 = v68;
LABEL_59:

  return v79;
}

- (void)addSuggestionsToSectionsForSending:(id)sending searchString:(id)string updatedSections:(BOOL)sections queryKind:(unint64_t)kind
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (kind - 1 <= 1)
  {
    v8 = MEMORY[0x277D4C5D8];
    stringCopy = string;
    sendingCopy = sending;
    v11 = [v8 alloc];
    v12 = [v11 initWithIdentifier:*MEMORY[0x277D65CF8] suggestion:stringCopy query:stringCopy score:6 type:1.0];

    v13 = MEMORY[0x277D659B8];
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    v16 = [v13 buildResultWithSuggestion:v12 queryContext:queryContext];

    v17 = objc_opt_new();
    suggestionsSection = self->_suggestionsSection;
    self->_suggestionsSection = v17;

    [(SFMutableResultSection *)self->_suggestionsSection setBundleIdentifier:*MEMORY[0x277D65C88]];
    v20[0] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(SFMutableResultSection *)self->_suggestionsSection setResults:v19];

    [sendingCopy addObject:self->_suggestionsSection];
  }
}

- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)sending updatedSections:(BOOL)sections isScopedSearch:(BOOL)search
{
  sectionsCopy = sections;
  v91 = *MEMORY[0x277D85DE8];
  sendingCopy = sending;
  if (!search)
  {
    v9 = SSEnableSpotlightTopHitPersonalizedRanking();
    selfCopy = self;
    if (!sectionsCopy || self->_didSendTopHits || [(SFMutableResultSection *)self->_topHitSection resultsCount])
    {
      if (self->_didSendResults)
      {
        v10 = SPLogForSPLogCategoryDefault();
        v11 = *MEMORY[0x277D4BF50];
        if (os_log_type_enabled(v10, ((*MEMORY[0x277D4BF50] & 1) == 0)))
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v10, ((v11 & 1) == 0), "Skipping current top hits nomination due to previous dispatch.", buf, 2u);
        }

        if (v9)
        {
          v75 = sendingCopy;
          v12 = objc_alloc(MEMORY[0x277D65840]);
          query = [(SPQueryTask *)self query];
          queryContext = [query queryContext];
          v76 = [v12 initWithQueryContext:queryContext];

          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          allValues = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
          v82 = [allValues countByEnumeratingWithState:&v84 objects:v88 count:16];
          if (!v82)
          {
            goto LABEL_21;
          }

          v80 = *v85;
          while (1)
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v85 != v80)
              {
                objc_enumerationMutation(allValues);
              }

              v17 = *(*(&v84 + 1) + 8 * i);
              if ([v17 resultsCount])
              {
                resultSet = [v17 resultSet];
                queryContext2 = [resultSet objectAtIndexedSubscript:0];
                rankingItem = [queryContext2 rankingItem];
                if (rankingItem)
                {
                  v21 = rankingItem;
                  resultSet2 = [v17 resultSet];
                  v23 = [resultSet2 objectAtIndexedSubscript:0];
                  rankingItem2 = [v23 rankingItem];
                  [rankingItem2 likelihood];
                  v26 = v25;

                  if (v26 >= 2.22044605e-16)
                  {
                    continue;
                  }

                  rankingManager = self->_rankingManager;
                  resultSet = [(SPQueryTask *)self query];
                  queryContext2 = [resultSet queryContext];
                  [queryContext2 currentTime];
                  v28 = v27;
                  query2 = [(SPQueryTask *)self query];
                  queryIdent = [query2 queryIdent];
                  itemRanker = [(SPFederatedQueryTask *)self itemRanker];
                  query3 = [(SPQueryTask *)self query];
                  [query3 queryContext];
                  v34 = v33 = allValues;
                  LOBYTE(v68) = [v34 isSearchToolClient];
                  [(SSRankingManager *)rankingManager calculateLikelihoodAndPriorForSection:v17 currentTime:0 shortcutResult:queryIdent queryId:itemRanker ranker:0 nominateLocalTopHit:v76 qu:v28 isSearchToolClient:v68];

                  allValues = v33;
                  self = selfCopy;
                }
              }
            }

            v82 = [allValues countByEnumeratingWithState:&v84 objects:v88 count:16];
            if (!v82)
            {
LABEL_21:

              goto LABEL_22;
            }
          }
        }
      }
    }

    else
    {
      v76 = [MEMORY[0x277D4BE80] localizedSearchStringWithIdentifier:@"DOMAIN_TOPHIT"];
      if (sDeviceClass == 3)
      {
        v41 = 6;
      }

      else
      {
        v41 = 4;
      }

      if (v9)
      {
        v42 = objc_alloc(MEMORY[0x277D65840]);
        query4 = [(SPQueryTask *)self query];
        queryContext3 = [query4 queryContext];
        v81 = [v42 initWithQueryContext:queryContext3];

        v73 = self->_rankingManager;
        allValues2 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
        itemRanker2 = [(SPFederatedQueryTask *)self itemRanker];
        isBullseyeNonCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
        isBullseyeCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
        v75 = sendingCopy;
        v83 = v41;
        v45 = self->_parsecEnabled || self->_parsecSettingEnabled;
        v70 = v45;
        query5 = [(SPQueryTask *)self query];
        queryIdent2 = [query5 queryIdent];
        query6 = [(SPQueryTask *)self query];
        queryContext4 = [query6 queryContext];
        isSearchToolClient = [queryContext4 isSearchToolClient];
        query7 = [(SPQueryTask *)self query];
        queryContext5 = [query7 queryContext];
        [queryContext5 currentTime];
        LOBYTE(v69) = isSearchToolClient;
        BYTE1(v68) = v70;
        LOBYTE(v68) = isBullseyeCommittedSearch;
        v60 = [SSRankingManager nominateLocalTopHitsFromSections:v73 withItemRanker:"nominateLocalTopHitsFromSections:withItemRanker:sectionHeader:maxInitiallyVisibleResults:shortcutResult:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:parsecEnabled:maxNumAppsInTopHitSection:queryId:isSearchToolClient:qu:currentTime:" sectionHeader:allValues2 maxInitiallyVisibleResults:itemRanker2 shortcutResult:v76 isBullseyeNonCommittedSearch:1 isBullseyeCommittedSearch:0 parsecEnabled:isBullseyeNonCommittedSearch maxNumAppsInTopHitSection:v68 queryId:v83 isSearchToolClient:queryIdent2 qu:v69 currentTime:v81];
        topHitSection = self->_topHitSection;
        self->_topHitSection = v60;

LABEL_22:
        sendingCopy = v75;
      }

      else
      {
        v46 = sendingCopy;
        v47 = self->_rankingManager;
        allValues3 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
        itemRanker3 = [(SPFederatedQueryTask *)self itemRanker];
        isBullseyeNonCommittedSearch2 = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
        isBullseyeCommittedSearch2 = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
        v52 = self->_parsecEnabled || self->_parsecSettingEnabled;
        LOBYTE(v68) = v52;
        v62 = [(SSRankingManager *)v47 makeTopHitSectionUsingSections:allValues3 withItemRanker:itemRanker3 sectionHeader:v76 shortcutResult:0 isBullseyeNonCommittedSearch:isBullseyeNonCommittedSearch2 isBullseyeCommittedSearch:isBullseyeCommittedSearch2 parsecEnabled:v68 maxNumAppsInTopHitSection:v41];
        v63 = self->_topHitSection;
        self->_topHitSection = v62;

        v64 = SPLogForSPLogCategoryDefault();
        v65 = v64;
        if (*MEMORY[0x277D4BF48])
        {
          v66 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v66 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v64, v66))
        {
          resultsCount = [(SFMutableResultSection *)self->_topHitSection resultsCount];
          *buf = 134217984;
          v90 = resultsCount;
          _os_log_impl(&dword_26B71B000, v65, v66, "Top hit section count: %lu  Allow multiple apps: YES", buf, 0xCu);
        }

        sendingCopy = v46;
      }
    }

    results = [(SFMutableResultSection *)self->_topHitSection results];
    if ([results count])
    {
      v36 = 0;
      do
      {
        v37 = [results objectAtIndex:v36];
        rankingItem3 = [v37 rankingItem];
        [rankingItem3 setBundleIDType:{objc_msgSend(rankingItem3, "bundleIDType") | 0x8000}];

        ++v36;
      }

      while (v36 < [results count]);
    }

    v39 = [(SPFederatedQueryTask *)selfCopy topHitsReadyToSend:selfCopy->_topHitSection];
    query8 = [(SPQueryTask *)selfCopy query];
    [query8 internalDebug];

    if (v39)
    {
      [sendingCopy insertObject:selfCopy->_topHitSection atIndex:0];
      selfCopy->_didSendTopHits = 1;
    }
  }
}

- (void)storeWillComplete:(id)complete
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v5 = SPLogForSPLogCategoryQuery();
  v6 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v5, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v11 = 138412290;
    v12 = completeCopy;
    _os_log_impl(&dword_26B71B000, v5, ((v6 & 1) == 0), "storeWillComplete %@", &v11, 0xCu);
  }

  self->_timeOut = self->_timeOut * 1.5;
  if (self->_timer)
  {
    if (![(NSMutableArray *)self->_tokens count])
    {
      v7 = CFAbsoluteTimeGetCurrent() - self->_storeStartTime;
      timeOut = self->_timeOut;
      if (v7 < timeOut * 1.5)
      {
        timer = self->_timer;
        v10 = dispatch_time(0, ((timeOut - v7) * 1000000000.0));
        dispatch_source_set_timer(timer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }
  }
}

- (BOOL)storeSearchProgress:(id)progress withSections:(id)sections suggestionResults:(id)results
{
  v64 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  sectionsCopy = sections;
  resultsCopy = results;
  v46 = progressCopy;
  if (progressCopy)
  {
    v9 = SPLogForSPLogCategoryQuery();
    v10 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v9, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      query = [(SPQueryTask *)self query];
      queryContext = [query queryContext];
      searchString = [queryContext searchString];
      *buf = 138412802;
      v59 = searchString;
      v60 = 2112;
      v61 = v46;
      v62 = 2048;
      v63 = [sectionsCopy count];
      _os_log_impl(&dword_26B71B000, v9, ((v10 & 1) == 0), "storeSearchProgress, query:%@, token:%@, sectionCount:%ld", buf, 0x20u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_didReceiveCoreSpotlightProgress = 1;
      objc_storeStrong(&self->_localSuggestionResults, results);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rankingManager = self->_rankingManager;
      v15 = v46;
      rankingInfo = [v15 rankingInfo];
      [(SSRankingManager *)rankingManager updateWithNewRankingInfo:rankingInfo];
    }

    v43 = self->_categoryToResultMapping;
    objc_sync_enter(v43);
    v17 = MEMORY[0x277D65980];
    queryIdent = [(SPFederatedQueryTask *)self queryIdent];
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    searchString2 = [queryContext2 searchString];
    query3 = [(SPQueryTask *)self query];
    queryContext3 = [query3 queryContext];
    [v17 logSections:sectionsCopy message:@"L1 progress" queryId:queryIdent query:searchString2 isSearchToolClient:{objc_msgSend(queryContext3, "isSearchToolClient")}];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = sectionsCopy;
    v24 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v24)
    {
      v25 = *v53;
      v49 = *MEMORY[0x277D65C10];
      v47 = *MEMORY[0x277D65C50];
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v52 + 1) + 8 * i);
          if ([v27 resultsCount])
          {
            memset(v51, 0, sizeof(v51));
            results = [v27 results];
            if ([results countByEnumeratingWithState:v51 objects:v56 count:16])
            {
              v29 = **(&v51[0] + 1);
              personIdentifier = [**(&v51[0] + 1) personIdentifier];
              if (personIdentifier)
              {
                resultBundleId = [v29 resultBundleId];
                if ([resultBundleId isEqual:v49])
                {

                  goto LABEL_19;
                }

                resultBundleId2 = [v29 resultBundleId];
                v33 = [resultBundleId2 isEqual:v47];

                if (v33)
                {
LABEL_19:
                  [v27 setBundleIdentifier:v49];
                }
              }
            }

            categoryToResultMapping = self->_categoryToResultMapping;
            bundleIdentifier = [v27 bundleIdentifier];
            v36 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:bundleIdentifier];

            if (v36)
            {
              [(SPFederatedQueryTask *)self deDuplicateSection:v27 againstSection:v36];
              results2 = [v27 results];
              [v36 addResultsFromArray:results2];

              bundleIdentifier2 = [v27 bundleIdentifier];
              LODWORD(results2) = [bundleIdentifier2 isEqualToString:@"com.apple.application"];

              if (results2)
              {
                [v36 sortRange:0 options:objc_msgSend(v36 usingComparator:{"resultsCount"), 16, &__block_literal_global_395}];
              }
            }

            else
            {
              v39 = self->_categoryToResultMapping;
              bundleIdentifier3 = [v27 bundleIdentifier];
              v41 = bundleIdentifier3;
              if (!bundleIdentifier3)
              {
                title = [v27 title];
                v41 = title;
              }

              [(NSMutableDictionary *)v39 setObject:v27 forKeyedSubscript:v41];
              if (!bundleIdentifier3)
              {
              }

              [(NSMutableOrderedSet *)self->_sectionOrderByInsertion addObject:v27];
            }

            continue;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v24);
    }

    objc_sync_exit(v43);
    [(SPFederatedQueryTask *)self sendFinishedDomains:4];
  }

  return 0;
}

uint64_t __75__SPFederatedQueryTask_storeSearchProgress_withSections_suggestionResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v4 rankingItem];

  if (!v5 || !v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (([v5 isServerAlternativeResult] & 1) != 0 || (objc_msgSend(v6, "isServerAlternativeResult") & 1) == 0)
  {
    if ([v5 isServerAlternativeResult] && !objc_msgSend(v6, "isServerAlternativeResult"))
    {
      v7 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = -1;
LABEL_9:

  return v7;
}

- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections suggestionResults:(id)results
{
  v236 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  obj = sections;
  resultsCopy = results;
  v176 = searchCopy;
  if (!searchCopy)
  {
    goto LABEL_176;
  }

  v8 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    searchString = [queryContext searchString];
    v12 = CSRedactString();
    *buf = 138412802;
    v221 = v12;
    v222 = 2112;
    v223 = *&v176;
    v224 = 2048;
    v225 = [obj count];
    _os_log_impl(&dword_26B71B000, v8, OS_LOG_TYPE_DEFAULT, "storeCompletedSearch, query:%@, query:%@, sectionCount:%ld", buf, 0x20u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v13 = v176;
    v14 = [v13 fbq];
    fbq = self->_fbq;
    self->_fbq = v14;

    web_fbq = [v13 web_fbq];
    web_fbq = self->_web_fbq;
    self->_web_fbq = web_fbq;

    server_features = [v13 server_features];
    server_features = self->_server_features;
    self->_server_features = server_features;

    self->_suggestionsAreBlended = [v13 suggestionsAreBlended];
    querySuggestionResults = [v13 querySuggestionResults];
    serverSuggestionResults = self->_serverSuggestionResults;
    self->_serverSuggestionResults = querySuggestionResults;

    rankingManager = self->_rankingManager;
    rankingInfo = [v13 rankingInfo];
    [(SSRankingManager *)rankingManager updateWithNewRankingInfo:rankingInfo];
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_localSuggestionResults, results);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v24 = [objc_opt_class() description];
  SDTraceAdd();

  v172 = self->_categoryToResultMapping;
  objc_sync_enter(v172);
  v25 = MEMORY[0x277D65980];
  queryIdent = [(SPFederatedQueryTask *)self queryIdent];
  query2 = [(SPQueryTask *)self query];
  queryContext2 = [query2 queryContext];
  searchString2 = [queryContext2 searchString];
  query3 = [(SPQueryTask *)self query];
  queryContext3 = [query3 queryContext];
  [v25 logSections:obj message:@"L1 complete" queryId:queryIdent query:searchString2 isSearchToolClient:{objc_msgSend(queryContext3, "isSearchToolClient")}];

  v184 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v184)
  {
    v32 = objc_alloc(MEMORY[0x277D65840]);
    query4 = [(SPQueryTask *)self query];
    queryContext4 = [query4 queryContext];
    v177 = [v32 initWithQueryContext:queryContext4];
  }

  else
  {
    v177 = 0;
  }

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  obj = obj;
  v35 = [obj countByEnumeratingWithState:&v216 objects:v235 count:16];
  if (v35)
  {
    v187 = *v217;
    v182 = *MEMORY[0x277D65C10];
    v178 = *MEMORY[0x277D65C50];
    do
    {
      v188 = v35;
      for (i = 0; i != v188; ++i)
      {
        if (*v217 != v187)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v216 + 1) + 8 * i);
        if ([v37 resultsCount])
        {
          if (v184)
          {
            resultSet = [v37 resultSet];
            queryContext5 = [resultSet objectAtIndexedSubscript:0];
            rankingItem = [queryContext5 rankingItem];
            if (!rankingItem)
            {
              goto LABEL_22;
            }

            resultSet2 = [v37 resultSet];
            v42 = [resultSet2 objectAtIndexedSubscript:0];
            rankingItem2 = [v42 rankingItem];
            [rankingItem2 likelihood];
            v45 = v44 < 2.22044605e-16;

            if (v45)
            {
              v46 = self->_rankingManager;
              resultSet = [(SPQueryTask *)self query];
              queryContext5 = [resultSet queryContext];
              [queryContext5 currentTime];
              v48 = v47;
              query5 = [(SPQueryTask *)self query];
              queryIdent2 = [query5 queryIdent];
              itemRanker = [(SPFederatedQueryTask *)self itemRanker];
              query6 = [(SPQueryTask *)self query];
              queryContext6 = [query6 queryContext];
              LOBYTE(v170) = [queryContext6 isSearchToolClient];
              [(SSRankingManager *)v46 calculateLikelihoodAndPriorForSection:v37 currentTime:0 shortcutResult:queryIdent2 queryId:itemRanker ranker:0 nominateLocalTopHit:v177 qu:v48 isSearchToolClient:v170];

LABEL_22:
            }
          }

          memset(v215, 0, sizeof(v215));
          results = [v37 results];
          if ([results countByEnumeratingWithState:v215 objects:v234 count:16])
          {
            v55 = **(&v215[0] + 1);
            personIdentifier = [**(&v215[0] + 1) personIdentifier];
            if (personIdentifier)
            {
              resultBundleId = [v55 resultBundleId];
              if ([resultBundleId isEqual:v182])
              {

                goto LABEL_28;
              }

              resultBundleId2 = [v55 resultBundleId];
              v59 = [resultBundleId2 isEqual:v178];

              if (v59)
              {
LABEL_28:
                [v37 setBundleIdentifier:v182];
              }
            }
          }

          categoryToResultMapping = self->_categoryToResultMapping;
          bundleIdentifier = [v37 bundleIdentifier];
          v62 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:bundleIdentifier];

          if (v62)
          {
            [(SPFederatedQueryTask *)self deDuplicateSection:v37 againstSection:v62];
            results2 = [v37 results];
            [v62 addResultsFromArray:results2];

            bundleIdentifier2 = [v37 bundleIdentifier];
            v65 = [bundleIdentifier2 isEqualToString:@"com.apple.application"];

            if ((v65 & (isKindOfClass ^ 1)) != 0)
            {
              [v62 sortRange:0 options:objc_msgSend(v62 usingComparator:{"resultsCount"), 16, &__block_literal_global_403}];
            }
          }

          else
          {
            v66 = self->_categoryToResultMapping;
            bundleIdentifier3 = [v37 bundleIdentifier];
            v68 = bundleIdentifier3;
            if (!bundleIdentifier3)
            {
              title = [v37 title];
              v68 = title;
            }

            [(NSMutableDictionary *)v66 setObject:v37 forKeyedSubscript:v68];
            if (!bundleIdentifier3)
            {
            }

            [(NSMutableOrderedSet *)self->_sectionOrderByInsertion addObject:v37];
          }

          continue;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v216 objects:v235 count:16];
    }

    while (v35);
  }

  objc_sync_exit(v172);
  v185 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "searchDomain")}];
  v181 = [(NSMutableArray *)self->_delayedStartTokens containsObject:v185];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_shouldRecomputeSuggestions = 1;
  v70 = SPLogForSPLogCategoryQuery();
  v71 = v70;
  if (*MEMORY[0x277D4BF48])
  {
    v72 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v72 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v70, v72))
  {
    *buf = 138412290;
    v221 = v185;
    _os_log_impl(&dword_26B71B000, v71, v72, "Completed search for query %@", buf, 0xCu);
  }

  [(NSMutableArray *)selfCopy->_tokens removeObject:v185];
  [(NSMutableArray *)selfCopy->_slowTokens removeObject:v185];
  [(NSMutableArray *)self->_delayedStartTokens removeObject:v185];
  [(NSMutableArray *)selfCopy->_finishedTokens addObject:v185];
  v73 = SPLogForSPLogCategoryQuery();
  v74 = v73;
  if (*MEMORY[0x277D4BF48])
  {
    v75 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v75 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v73, v75))
  {
    tokens = selfCopy->_tokens;
    slowTokens = selfCopy->_slowTokens;
    *buf = 138412546;
    v221 = tokens;
    v222 = 2112;
    v223 = *&slowTokens;
    _os_log_impl(&dword_26B71B000, v74, v75, "Remaining stores %@ %@", buf, 0x16u);
  }

  *(&v179 + 1) = [(NSMutableArray *)selfCopy->_slowTokens count];
  v173 = [(NSMutableArray *)self->_delayedStartTokens count];
  v171 = [(NSMutableArray *)selfCopy->_delayedStartQueries count];
  v78 = [(NSMutableArray *)selfCopy->_tokens count];
  *&v179 = v78;
  if (__PAIR128__(*(&v179 + 1), v78) == 0 && [(NSMutableArray *)selfCopy->_delayedStartQueries count])
  {
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v79 = selfCopy->_delayedStartQueries;
    v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v211 objects:v233 count:16];
    if (v80)
    {
      v81 = *v212;
      do
      {
        for (j = 0; j != v80; ++j)
        {
          if (*v212 != v81)
          {
            objc_enumerationMutation(v79);
          }

          v83 = *(*(&v211 + 1) + 8 * j);
          [v83 setDelegate:selfCopy];
          [v83 start];
          searchDomain = [objc_opt_class() searchDomain];
          if ([v83 isStarted])
          {
            delayedStartTokens = self->_delayedStartTokens;
            v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:searchDomain];
            [(NSMutableArray *)delayedStartTokens addObject:v86];
          }
        }

        v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v211 objects:v233 count:16];
      }

      while (v80);
    }

    [(NSMutableArray *)selfCopy->_delayedStartQueries removeAllObjects];
  }

  if ([(NSMutableArray *)selfCopy->_slowTokens count])
  {
    v183 = 0;
  }

  else
  {
    v183 = [(NSMutableArray *)selfCopy->_tokens count]== 0;
  }

  if (v181)
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    obj = obj;
    v87 = 0;
    v88 = [obj countByEnumeratingWithState:&v207 objects:v232 count:16];
    if (v88)
    {
      v89 = *v208;
      do
      {
        for (k = 0; k != v88; ++k)
        {
          if (*v208 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v91 = *(*(&v207 + 1) + 8 * k);
          v203 = 0u;
          v204 = 0u;
          v205 = 0u;
          v206 = 0u;
          results3 = [v91 results];
          v93 = [results3 countByEnumeratingWithState:&v203 objects:v231 count:16];
          if (v93)
          {
            v94 = *v204;
            while (2)
            {
              for (m = 0; m != v93; ++m)
              {
                if (*v204 != v94)
                {
                  objc_enumerationMutation(results3);
                }

                if ([*(*(&v203 + 1) + 8 * m) topHit] == 2)
                {
                  v87 = 1;
                  goto LABEL_81;
                }
              }

              v93 = [results3 countByEnumeratingWithState:&v203 objects:v231 count:16];
              if (v93)
              {
                continue;
              }

              break;
            }
          }

LABEL_81:
        }

        v88 = [obj countByEnumeratingWithState:&v207 objects:v232 count:16];
      }

      while (v88);
    }

    selfCopy->_shouldRecomputeSuggestions = 0;
    query7 = [(SPQueryTask *)selfCopy query];
    cancelled = [query7 cancelled];

    if ((cancelled & 1) == 0)
    {
      if ([(NSMutableArray *)selfCopy->_bottomPlacedSections count])
      {
        v98 = [obj arrayByAddingObjectsFromArray:selfCopy->_bottomPlacedSections];

        obj = v98;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [obj count];
      }

      if (&v173[v171])
      {
        v118 = 0;
      }

      else
      {
        v118 = v179 == 0;
      }

      v119 = v118;
      HIDWORD(v170) = 2;
      LOBYTE(v170) = v87 & 1;
      [SPFederatedQueryTask sendResults:selfCopy reset:"sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:" partiallyComplete:obj update:0 complete:0 unchanged:v119 ^ 1u delayedTopHit:v170 reason:?];
    }

    goto LABEL_125;
  }

  v99 = selfCopy->_didForceSend || !v183;
  if (!v99)
  {
    if (selfCopy->_parsecEntityCameEarly)
    {
      timer = selfCopy->_timer;
      if (timer)
      {
        dispatch_source_cancel(timer);
        dispatch_source_set_event_handler(selfCopy->_timer, 0);
        v102 = selfCopy->_timer;
        selfCopy->_timer = 0;
      }

      v100 = 0;
      goto LABEL_98;
    }

    if (!selfCopy->_parsecCameLaterThanSRT)
    {
      v120 = selfCopy->_timer;
      if (v120)
      {
        dispatch_source_cancel(v120);
        dispatch_source_set_event_handler(selfCopy->_timer, 0);
        v121 = selfCopy->_timer;
        selfCopy->_timer = 0;
      }

      [(SPFederatedQueryTask *)selfCopy sendFinishedDomains:0];
      goto LABEL_125;
    }

LABEL_100:
    v103 = objc_autoreleasePoolPush();
    selfCopy->_didSendResults = 0;
    selfCopy->_sendStableSections = 1;
    v104 = [(NSArray *)selfCopy->_actualSentSections arrayByAddingObjectsFromArray:obj];
    stableSections = selfCopy->_stableSections;
    selfCopy->_stableSections = v104;

    v106 = objc_opt_new();
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    obj = obj;
    v107 = [obj countByEnumeratingWithState:&v199 objects:v230 count:16];
    if (v107)
    {
      v108 = *v200;
      do
      {
        for (n = 0; n != v107; ++n)
        {
          if (*v200 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v110 = *(*(&v199 + 1) + 8 * n);
          if (v110)
          {
            results4 = [v110 results];
            [v106 addObjectsFromArray:results4];
          }
        }

        v107 = [obj countByEnumeratingWithState:&v199 objects:v230 count:16];
      }

      while (v107);
    }

    if ([v106 count])
    {
      selfCopy->_receivedLateParsecResults = 1;
      v112 = [objc_alloc(MEMORY[0x277D4C590]) initWithResults:v106];
      mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
      query8 = [(SPQueryTask *)selfCopy query];
      queryIdent3 = [query8 queryIdent];
      bundleID = [(SPXPCConnection *)selfCopy->_connection bundleID];
      [mEMORY[0x277D4BEC0] sendFeedbackType:14 feedback:v112 queryId:queryIdent3 clientID:bundleID];
    }

    if (SSDisplayLateServerSuggestions())
    {
      v117 = [(NSArray *)selfCopy->_serverSuggestionResults count]!= 0;
    }

    else
    {
      v117 = 0;
    }

    selfCopy->_shouldRecomputeSuggestions = v117;
    [(SPFederatedQueryTask *)selfCopy sendFinishedDomains:3];

    objc_autoreleasePoolPop(v103);
    goto LABEL_125;
  }

  if (selfCopy->_parsecCameLaterThanSRT)
  {
    goto LABEL_100;
  }

  if ((isKindOfClass & selfCopy->_isEntitySearch & 1) == 0 || ![(NSMutableArray *)selfCopy->_tokens count]|| [(NSMutableArray *)selfCopy->_slowTokens count])
  {
    goto LABEL_125;
  }

  selfCopy->_parsecEntityCameEarly = 1;
  v100 = 5;
LABEL_98:
  [(SPFederatedQueryTask *)selfCopy sendFinishedDomains:!v99 reason:v100];
LABEL_125:
  if (v183)
  {
    v122 = [(NSMutableArray *)self->_delayedStartTokens count];
    if (!(v122 + [(NSMutableArray *)selfCopy->_delayedStartQueries count]) && !selfCopy->_sentCompleted)
    {
      [(SPFederatedQueryTask *)selfCopy sendQueryCompleted];
      bottomPlacedSections = selfCopy->_bottomPlacedSections;
      selfCopy->_bottomPlacedSections = 0;

      selfCopy->_sentCompleted = 1;
    }
  }

  objc_sync_exit(selfCopy);

  if (![(NSMutableArray *)selfCopy->_slowTokens count]&& ![(NSMutableArray *)selfCopy->_tokens count])
  {
    v124 = objc_alloc(MEMORY[0x277D4C270]);
    query9 = [(SPQueryTask *)selfCopy query];
    v126 = [v124 initWithEvent:@"com.apple.spotlight.backend.stores.end" timeInterval:0 queryId:{objc_msgSend(query9, "queryIdent")}];

    mEMORY[0x277D4BEC0]2 = [MEMORY[0x277D4BEC0] sharedProxy];
    query10 = [(SPQueryTask *)selfCopy query];
    queryIdent4 = [query10 queryIdent];
    bundleID2 = [(SPXPCConnection *)selfCopy->_connection bundleID];
    [mEMORY[0x277D4BEC0]2 sendFeedbackType:21 feedback:v126 queryId:queryIdent4 clientID:bundleID2];
  }

  if (![(NSMutableArray *)selfCopy->_slowTokens count]|| [(NSMutableArray *)selfCopy->_tokens count]|| (selfCopy->_timer != 0) | v181 & 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    storeStartTime = selfCopy->_storeStartTime;
    v133 = [(NSMutableArray *)selfCopy->_tokens count]== 0;
    v134 = SPLogForSPLogCategoryDefault();
    v135 = v134;
    v136 = Current - storeStartTime;
    if (*MEMORY[0x277D4BF48])
    {
      v137 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v137 = OS_LOG_TYPE_DEBUG;
    }

    v138 = os_log_type_enabled(v134, v137);
    if (v133)
    {
      if (v138)
      {
        v140 = [(NSMutableArray *)selfCopy->_slowTokens count];
        v141 = [(NSMutableArray *)selfCopy->_tokens count];
        v142 = selfCopy->_timer;
        *buf = 134219008;
        v221 = v140;
        v222 = 2048;
        v223 = *&v141;
        v224 = 2048;
        v225 = v142;
        v226 = 1024;
        v227 = v181;
        v228 = 2048;
        v229 = v136;
        _os_log_impl(&dword_26B71B000, v135, v137, "Not waiting on parsec st:%ld t:%ld ti:%p d:%d (%f)", buf, 0x30u);
      }
    }

    else if (v138)
    {
      v139 = selfCopy->_tokens;
      *buf = 138412546;
      v221 = v139;
      v222 = 2048;
      v223 = v136;
      _os_log_impl(&dword_26B71B000, v135, v137, "Not waiting on parsec t:%@ (%f)", buf, 0x16u);
    }
  }

  else
  {
    v143 = CFAbsoluteTimeGetCurrent();
    v144 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v144, OS_LOG_TYPE_DEFAULT, "No more fast data stores, waiting for parsec", buf, 2u);
    }

    objc_initWeak(buf, selfCopy);
    v145 = (*MEMORY[0x277D286C8])();
    v146 = *(v145 + 16);
    v196 = *v145;
    v197 = v146;
    v198 = *(v145 + 32);
    v194[0] = MEMORY[0x277D85DD0];
    v194[1] = 3221225472;
    v194[2] = __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_408;
    v194[3] = &unk_279CFE158;
    objc_copyWeak(&v195, buf);
    v147 = MEMORY[0x26D67F7A0](v194);
    v148 = v143 - selfCopy->_storeStartTime;
    if (v148 >= selfCopy->_timeOut)
    {
      v164 = SPLogForSPLogCategoryDefault();
      v165 = v164;
      if (*MEMORY[0x277D4BF48])
      {
        v166 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v166 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v164, v166))
      {
        *v193 = 0;
        _os_log_impl(&dword_26B71B000, v165, v166, "No more fast data stores, send", v193, 2u);
      }

      v167 = selfCopy->_timer;
      if (v167)
      {
        dispatch_source_cancel(v167);
        dispatch_source_set_event_handler(selfCopy->_timer, 0);
        v168 = selfCopy->_timer;
        selfCopy->_timer = 0;
      }

      v147[2](v147, 0);
      selfCopy->_parsecCameLaterThanSRT = 1;
      selfCopy->_shouldRecomputeSuggestions = 1;
    }

    else
    {
      v149 = SPLogForSPLogCategoryDefault();
      v150 = v149;
      if (*MEMORY[0x277D4BF48])
      {
        v151 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v151 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v149, v151))
      {
        *v193 = 0;
        _os_log_impl(&dword_26B71B000, v150, v151, "No more fast data stores, within parsec timeout", v193, 2u);
      }

      timeOut = SSPriorityIndexDelayMilliseconds() / 1000.0;
      v153 = v148 >= timeOut || selfCopy->_sentPriority;
      if (v153)
      {
        if (!selfCopy->_sentPriority)
        {
          v154 = SPLogForSPLogCategoryDefault();
          v155 = v154;
          if (*MEMORY[0x277D4BF48])
          {
            v156 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v156 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v154, v156))
          {
            *v193 = 0;
            _os_log_impl(&dword_26B71B000, v155, v156, "Send for CoreSpotlight priority path", v193, 2u);
          }

          v147[2](v147, 1);
        }

        timeOut = selfCopy->_timeOut;
      }

      queryProcessor = [(SPQueryTask *)selfCopy queryProcessor];
      v158 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queryProcessor);
      v159 = selfCopy->_timer;
      selfCopy->_timer = v158;

      v160 = selfCopy->_timer;
      v161 = dispatch_time(0, ((timeOut - v148) * 1000000000.0));
      dispatch_source_set_timer(v160, v161, 0xFFFFFFFFFFFFFFFFLL, 0);
      v162 = [v147 copy];

      v163 = selfCopy->_timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_427;
      handler[3] = &unk_279CFE180;
      v147 = v162;
      v191 = v147;
      v192 = v153;
      dispatch_source_set_event_handler(v163, handler);
      dispatch_resume(selfCopy->_timer);
    }

    objc_destroyWeak(&v195);
    objc_destroyWeak(buf);
  }

LABEL_176:
  return 0;
}

uint64_t __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v4 rankingItem];

  if (!v5 || !v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (([v5 isServerAlternativeResult] & 1) != 0 || (objc_msgSend(v6, "isServerAlternativeResult") & 1) == 0)
  {
    if ([v5 isServerAlternativeResult] && !objc_msgSend(v6, "isServerAlternativeResult"))
    {
      v7 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = -1;
LABEL_9:

  return v7;
}

void __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_408(uint64_t a1, char a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = (*MEMORY[0x277D286C8])();
  v4 = *(v3 + 16);
  v47 = *v3;
  v48 = v4;
  v49 = *(v3 + 32);
  v6 = *(v5 + 56);
  *v3 = *(v5 + 40);
  *(v3 + 16) = v6;
  v37 = v3;
  *(v3 + 32) = *(v5 + 72);
  WeakRetained = objc_loadWeakRetained((v5 + 32));
  if (WeakRetained)
  {
    v36 = WeakRetained;
    v8 = [WeakRetained query];
    v9 = [v8 cancelled];

    WeakRetained = v36;
    if ((v9 & 1) == 0)
    {
      v10 = *(v37 + 16);
      v44 = *v37;
      v45 = v10;
      v46 = *(v37 + 32);
      v11 = *v37;
      spanid = si_tracing_calc_next_spanid();
      v13 = *(v37 + 8);
      *v37 = v11;
      *(v37 + 8) = spanid;
      *(v37 + 16) = v13;
      *(v37 + 28) = 102;
      *(v37 + 32) = "sendResultsBlock";
      si_tracing_log_span_begin();
      v14 = SPLogForSPLogCategoryQuery();
      v15 = *MEMORY[0x277D4BF50];
      if (os_log_type_enabled(v14, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v14, ((v15 & 1) == 0), "Show local results while waiting for slow queries", buf, 2u);
      }

      if ((a2 & 1) == 0)
      {
        AnalyticsSendEventLazy();
        v16 = (v36 + 232);
        if (!*(v36 + 29))
        {
          v21 = 0;
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v16 = (v36 + 232);
      if (!*(v36 + 29))
      {
        v21 = 1;
        goto LABEL_22;
      }

      v17 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v17, OS_LOG_TYPE_DEFAULT, "Timer fired for CoreSpotlight priority path", buf, 2u);
      }

      v18 = CFAbsoluteTimeGetCurrent() - *(v36 + 27);
      if (v18 >= *(v36 + 28))
      {
        v19 = SPLogForSPLogCategoryDefault();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

LABEL_20:
          dispatch_source_cancel(*v16);
          dispatch_source_set_event_handler(*v16, 0);
          v21 = 0;
          v22 = *v16;
          *v16 = 0;
LABEL_21:

LABEL_22:
          v23 = [v36 query];
          v24 = [v23 cancelled];

          if ((v24 & 1) == 0)
          {
            if ((v21 & 1) == 0 && ![*(v36 + 60) count])
            {
              [v36 sendFinishedDomains:1 reason:1];
              v36[278] = 1;
              v36[283] = 1;
              goto LABEL_27;
            }

            [v36 sendFinishedDomains:4];
          }

          if (v21)
          {
LABEL_37:
            si_tracing_log_span_end();
            v32 = v45;
            *v37 = v44;
            *(v37 + 16) = v32;
            *(v37 + 32) = v46;
            WeakRetained = v36;
            goto LABEL_38;
          }

LABEL_27:
          v25 = v36;
          objc_sync_enter(v25);
          if ([v25[63] count])
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            obj = v25[63];
            v26 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
            if (v26)
            {
              v27 = *v40;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v40 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v39 + 1) + 8 * i);
                  [v29 start];
                  v30 = v25[62];
                  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "searchDomain")}];
                  [v30 addObject:v31];

                  [v25[63] removeObject:v29];
                }

                v26 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
              }

              while (v26);
            }
          }

          objc_sync_exit(v25);

          goto LABEL_37;
        }

        *buf = 0;
        v20 = "Don't reset timer for CoreParsec; past deadline";
      }

      else
      {
        if (![*(v36 + 60) count])
        {
          v34 = *v16;
          v35 = dispatch_time(0, ((*(v36 + 28) - v18) * 1000000000.0));
          dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, 0);
          v22 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26B71B000, v22, OS_LOG_TYPE_DEFAULT, "Reset timer for CoreParsec", buf, 2u);
          }

          v21 = 1;
          goto LABEL_21;
        }

        v19 = SPLogForSPLogCategoryDefault();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 0;
        v20 = "Don't reset timer for CoreParsec; other waiting stores exist";
      }

      _os_log_impl(&dword_26B71B000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
      goto LABEL_19;
    }
  }

LABEL_38:

  v33 = v48;
  *v37 = v47;
  *(v37 + 16) = v33;
  *(v37 + 32) = v49;
}

- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections
{
  searchCopy = search;
  sectionsCopy = sections;
  query = [(SPQueryTask *)self query];
  cancelled = [query cancelled];

  v10 = (cancelled & 1) == 0 && [(SPFederatedQueryTask *)self storeCompletedSearch:searchCopy withSections:sectionsCopy suggestionResults:0];
  return v10;
}

+ (BOOL)isCJK
{
  if (isCJK_onceToken != -1)
  {
    +[SPFederatedQueryTask isCJK];
  }

  return isCJK_sIsCJK;
}

void __29__SPFederatedQueryTask_isCJK__block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 firstObject];
  v2 = [v1 lowercaseString];

  if (([v2 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"zh") & 1) != 0 || objc_msgSend(v2, "hasPrefix:", @"ko"))
  {
    isCJK_sIsCJK = 1;
  }
}

- (id)correctedQueryWithCorrection:(id)correction
{
  v4 = MEMORY[0x277D65898];
  correctionCopy = correction;
  v6 = [[v4 alloc] initWithSearchString:correctionCopy];

  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  [v6 setWhyQuery:18];
  [v6 setQueryKind:10];
  query2 = [(SPQueryTask *)self query];
  [v6 setQueryIdent:{objc_msgSend(query2, "queryIdent")}];

  keyboardLanguage = [queryContext keyboardLanguage];
  [v6 setKeyboardLanguage:keyboardLanguage];

  keyboardPrimaryLanguage = [queryContext keyboardPrimaryLanguage];
  [v6 setKeyboardPrimaryLanguage:keyboardPrimaryLanguage];

  [queryContext scaleFactor];
  [v6 setScaleFactor:?];
  searchDomains = [queryContext searchDomains];
  [v6 setSearchDomains:searchDomains];

  disabledDomains = [queryContext disabledDomains];
  [v6 setDisabledDomains:disabledDomains];

  query3 = [(SPQueryTask *)self query];
  disabledApps = [query3 disabledApps];
  [v6 setDisabledApps:disabledApps];

  query4 = [(SPQueryTask *)self query];
  disabledBundles = [query4 disabledBundles];
  [v6 setDisabledBundles:disabledBundles];

  markedTextArray = [queryContext markedTextArray];
  [v6 setMarkedTextArray:markedTextArray];

  query5 = [(SPQueryTask *)self query];
  [v6 setPromoteLocalResults:{objc_msgSend(query5, "promoteLocalResults")}];

  query6 = [(SPQueryTask *)self query];
  [v6 setPromoteParsecResults:{objc_msgSend(query6, "promoteParsecResults")}];

  query7 = [(SPQueryTask *)self query];
  [v6 setNoTokenize:{objc_msgSend(query7, "noTokenize")}];

  [v6 setDeviceAuthenticationState:{objc_msgSend(queryContext, "deviceAuthenticationState")}];
  queryUnderstandingOutput = [queryContext queryUnderstandingOutput];
  [v6 setQueryUnderstandingOutput:queryUnderstandingOutput];

  clientBundleID = [(SPFederatedQueryTask *)self clientBundleID];
  [v6 setClientBundleID:clientBundleID];

  v24 = [[SPFederatedQueryTask alloc] initWithQueryContext:v6 externalID:[(SPFederatedQueryTask *)self externalID]];
  query8 = [(SPQueryTask *)self query];
  queryContext2 = [query8 queryContext];
  -[SPFederatedQueryTask setPreviousQueryKind:](v24, "setPreviousQueryKind:", [queryContext2 queryKind]);

  query9 = [(SPQueryTask *)self query];
  infinitePatience = [query9 infinitePatience];
  query10 = [(SPQueryTask *)v24 query];
  [query10 setInfinitePatience:infinitePatience];

  query11 = [(SPQueryTask *)self query];
  noTokenize = [query11 noTokenize];
  query12 = [(SPQueryTask *)v24 query];
  [query12 setNoTokenize:noTokenize];

  query13 = [(SPQueryTask *)self query];
  promoteParsecResults = [query13 promoteParsecResults];
  query14 = [(SPQueryTask *)v24 query];
  [query14 setPromoteParsecResults:promoteParsecResults];

  query15 = [(SPQueryTask *)self query];
  promoteLocalResults = [query15 promoteLocalResults];
  query16 = [(SPQueryTask *)v24 query];
  [query16 setPromoteLocalResults:promoteLocalResults];

  query17 = [(SPQueryTask *)self query];
  contentFilters = [query17 contentFilters];
  query18 = [(SPQueryTask *)v24 query];
  [query18 setContentFilters:contentFilters];

  query19 = [(SPQueryTask *)self query];
  maxCount = [query19 maxCount];
  query20 = [(SPQueryTask *)v24 query];
  [query20 setMaxCount:maxCount];

  message = [(SPFederatedQueryTask *)self message];
  [(SPFederatedQueryTask *)v24 setMessage:message];

  query21 = [(SPQueryTask *)self query];
  isWideScreen = [query21 isWideScreen];
  query22 = [(SPQueryTask *)v24 query];
  [query22 setIsWideScreen:isWideScreen];

  query23 = [(SPQueryTask *)self query];
  internalDebug = [query23 internalDebug];
  query24 = [(SPQueryTask *)v24 query];
  [query24 setInternalDebug:internalDebug];

  [(SPFederatedQueryTask *)v24 setIsRewrite:1];

  return v24;
}

- (void)dealloc
{
  message = [(SPFederatedQueryTask *)self message];
  needsReply = [message needsReply];

  if (needsReply)
  {
    message2 = [(SPFederatedQueryTask *)self message];
    [message2 sendReply:MEMORY[0x277CBEC10]];
  }

  query = [(SPQueryTask *)self query];
  cancelled = [query cancelled];

  if (cancelled)
  {
    query_analytics_log_complete(self, "cancel", self->_startTime);
  }

  v8.receiver = self;
  v8.super_class = SPFederatedQueryTask;
  [(SPFederatedQueryTask *)&v8 dealloc];
}

- (id)waitForQueryCorrections
{
  correctionsSem = self->_correctionsSem;
  v4 = dispatch_time(0, 500000000);
  dispatch_semaphore_wait(correctionsSem, v4);
  corrections = self->_corrections;

  return corrections;
}

- (void)addQueryCorrections:(id)corrections
{
  objc_storeStrong(&self->_corrections, corrections);
  correctionsCopy = corrections;
  dispatch_semaphore_signal(self->_correctionsSem);
}

- (BOOL)parsecAvailable
{
  if (!self->_parsecEnabled)
  {
    return 0;
  }

  result = [(SPParsecQuery *)self->_parsecQuery available];
  self->_parsecEnabled = result;
  return result;
}

- (void)_processResponse:(id)response toQuery:(id)query
{
  responseCopy = response;
  queryCopy = query;
  if ([responseCopy kind] == 2 || objc_msgSend(responseCopy, "kind") == 3)
  {
    sections = [responseCopy sections];
    localSuggestionResults = [responseCopy localSuggestionResults];
    [(SPFederatedQueryTask *)self storeSearchProgress:queryCopy withSections:sections suggestionResults:localSuggestionResults];
  }

  else
  {
    sections = [responseCopy sections];
    localSuggestionResults = [responseCopy localSuggestionResults];
    [(SPFederatedQueryTask *)self storeCompletedSearch:queryCopy withSections:sections suggestionResults:localSuggestionResults];
  }
}

- (void)queryTask:(id)task gotResponse:(id)response
{
  taskCopy = task;
  responseCopy = response;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SPFederatedQueryTask_queryTask_gotResponse___block_invoke;
  block[3] = &unk_279CFE1A8;
  block[4] = self;
  v13 = responseCopy;
  v14 = taskCopy;
  v9 = taskCopy;
  v10 = responseCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(queryProcessor, v11);
}

- (void)addAndStartQuery
{
  v111 = *MEMORY[0x277D85DE8];
  v3 = (*MEMORY[0x277D286C8])(MEMORY[0x277D286C8], a2);
  v4 = *(v3 + 16);
  *(v5 + 160) = *v3;
  *(v5 + 176) = v4;
  v104 = *(v3 + 32);
  v6 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v3 + 8);
  *v3 = v6;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v8;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPFederatedQueryTask addAndStartQuery]";
  si_tracing_log_span_begin();
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if (([queryContext isSearchToolClient] & 1) == 0 && (sPrepareCacheForSearchContinuationStarted & 1) == 0)
  {
    sPrepareCacheForSearchContinuationStarted = 1;
    [objc_opt_class() prepareCacheForSearchContinuation];
  }

  [(SPFederatedQueryTask *)self startSetup];
  searchEntities = [queryContext searchEntities];
  if ([searchEntities count])
  {
    searchEntities2 = [queryContext searchEntities];
    lastObject = [searchEntities2 lastObject];
    currentSearchString = [lastObject currentSearchString];
  }

  else
  {
    currentSearchString = [queryContext searchString];
  }

  v13 = SPLogForSPLogCategoryDefault();
  v14 = v13;
  if (*MEMORY[0x277D4BF48])
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    searchDomains = [queryContext searchDomains];
    *buf = 138412546;
    v108 = currentSearchString;
    v109 = 2112;
    v110 = searchDomains;
    _os_log_impl(&dword_26B71B000, v14, v15, "#query Starting query for %@ on domains %@", buf, 0x16u);
  }

  v17 = SPLogForSPLogCategoryDefault();
  v18 = v17;
  if (*MEMORY[0x277D4BF48])
  {
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v19 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v17, v19))
  {
    searchDomains2 = [queryContext searchDomains];
    *buf = 138412546;
    v108 = currentSearchString;
    v109 = 2112;
    v110 = searchDomains2;
    _os_log_impl(&dword_26B71B000, v18, v19, "#query Starting query '%@' on domains:%@", buf, 0x16u);
  }

  if ([(NSString *)self->_clientBundleID isEqual:*MEMORY[0x277D4BF20]])
  {
    if ([currentSearchString length])
    {
      if (-[NSString length](self->_lastQuery, "length") && (([currentSearchString hasPrefix:self->_lastQuery] & 1) != 0 || -[NSString hasPrefix:](self->_lastQuery, "hasPrefix:", currentSearchString)))
      {
        v21 = [currentSearchString length];
        v22 = [(NSString *)self->_lastQuery length];
        v23 = v21 - v22;
        if ((v21 - v22) < 0)
        {
          v23 = v22 - v21;
        }

        v91 = MEMORY[0x277D85DD0];
        v92 = 3221225472;
        v93 = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_2;
        v94 = &__block_descriptor_40_e19___NSDictionary_8__0l;
        v95 = v23;
        AnalyticsSendEventLazy();
      }

      else
      {
        lastQuery = self->_lastQuery;
        if (lastQuery)
        {
          v25 = [(NSString *)lastQuery commonPrefixWithString:currentSearchString options:2];
        }

        else
        {
          v25 = &stru_287C35638;
        }

        v96 = MEMORY[0x277D85DD0];
        v97 = 3221225472;
        v98 = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke;
        v99 = &unk_279CFE1D0;
        v100 = currentSearchString;
        v101 = v25;
        AnalyticsSendEventLazy();
      }
    }

    v26 = [currentSearchString copy];
    v27 = self->_lastQuery;
    self->_lastQuery = v26;
  }

  v76 = objc_alloc_init(MEMORY[0x277CBEB40]);
  searchDomains3 = [queryContext searchDomains];
  v29 = [searchDomains3 arrayByAddingObject:&unk_287C3B770];

  v75 = [v29 arrayByAddingObject:&unk_287C3B788];

  deviceAuthenticationState = [queryContext deviceAuthenticationState];
  if ([currentSearchString length] || (objc_msgSend(queryContext, "searchEntities"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "count") == 0, v31, !v32))
  {
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    isSearchToolClient = [queryContext2 isSearchToolClient];

    if (isSearchToolClient)
    {
      [(SPFederatedQueryTask *)self _queriesForSearchTool];
    }

    else
    {
      [(SPFederatedQueryTask *)self _queriesForUserQuery:deviceAuthenticationState != 0];
    }
    v36 = ;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v87 objects:v106 count:16];
    if (v38)
    {
      v39 = *v88;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v88 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v87 + 1) + 8 * i);
          [v41 setDelegate:self];
          searchDomain = [objc_opt_class() searchDomain];
          if (!deviceAuthenticationState && searchDomain == 6)
          {
            [(SPFederatedQueryTask *)self addDelayedStartQuery:v41];
            continue;
          }

          if (searchDomain == 1)
          {
            v43 = &OBJC_IVAR___SPFederatedQueryTask__csQuery;
          }

          else
          {
            if (searchDomain != 2)
            {
              continue;
            }

            v43 = &OBJC_IVAR___SPFederatedQueryTask__parsecQuery;
          }

          objc_storeStrong((&self->super.super.isa + *v43), v41);
        }

        v38 = [v37 countByEnumeratingWithState:&v87 objects:v106 count:16];
      }

      while (v38);
    }

    [v37 removeObjectsInArray:self->_delayedStartQueries];
    [(SPFederatedQueryTask *)self setQueries:v37];
  }

  if ([(NSArray *)self->_queries count])
  {
    v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
    query3 = [(SPQueryTask *)self query];
    infinitePatience = [query3 infinitePatience];

    if (infinitePatience)
    {
      v47 = SPLogForSPLogCategoryDefault();
      v48 = v47;
      if (*MEMORY[0x277D4BF48])
      {
        v49 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v49 = OS_LOG_TYPE_DEBUG;
      }

      v50 = 0.0;
      if (!os_log_type_enabled(v47, v49))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v51 = "Query with infinite patience";
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v54 = self->_queries;
      v55 = [(NSArray *)v54 countByEnumeratingWithState:&v83 objects:v105 count:16];
      if (v55)
      {
        v56 = *v84;
        v50 = 0.0;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v84 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v83 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v58 timeOut:{objc_msgSend(objc_opt_class(), "searchDomain") == 7}];
              v60 = v59;
              if (v59 > 0.0)
              {
                [v44 addObject:v58];
                if (v60 >= v50)
                {
                  v61 = v50;
                }

                else
                {
                  v61 = v60;
                }

                if (v50 <= 0.0)
                {
                  v50 = v60;
                }

                else
                {
                  v50 = v61;
                }
              }
            }
          }

          v55 = [(NSArray *)v54 countByEnumeratingWithState:&v83 objects:v105 count:16];
        }

        while (v55);
      }

      else
      {
        v50 = 0.0;
      }

      v62 = SPLogForSPLogCategoryDefault();
      v48 = v62;
      if (*MEMORY[0x277D4BF48])
      {
        v49 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v49 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v62, v49))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v51 = "Query with timeout";
    }

    _os_log_impl(&dword_26B71B000, v48, v49, v51, buf, 2u);
LABEL_84:

    self->_parsecEnabled = +[SPParsecQuery isParsecEnabled];
    query4 = [(SPQueryTask *)self query];
    -[SPCSSearchQuery setMaxCount:](self->_csQuery, "setMaxCount:", [query4 maxCount]);

    query5 = [(SPQueryTask *)self query];
    -[SPCSSearchQuery setContentFilters:](self->_csQuery, "setContentFilters:", [query5 contentFilters]);

    itemRanker = [(SPFederatedQueryTask *)self itemRanker];
    [(SPCSSearchQuery *)self->_csQuery setItemRanker:itemRanker];

    [(SPCSSearchQuery *)self->_csQuery setPreviousQueryKind:self->_previousQueryKind];
    [(SPCSSearchQuery *)self->_csQuery setIsCJK:self->_isCJK];
    [(SPCSSearchQuery *)self->_csQuery setIsPeopleSearch:self->_isPeopleSearch];
    [(SPCSSearchQuery *)self->_csQuery setIsPhotosSearch:self->_isPhotosSearch];
    [(SPCSSearchQuery *)self->_csQuery setParsecAvailable:[(SPFederatedQueryTask *)self parsecAvailable]];
    query6 = [(SPQueryTask *)self query];
    [query6 currentTime];
    [(SPCSSearchQuery *)self->_csQuery setCurrentTime:?];

    v67 = SPLogForSPLogCategoryDefault();
    v68 = v67;
    if (*MEMORY[0x277D4BF48])
    {
      v69 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v69 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v67, v69))
    {
      v70 = qos_class_self();
      *buf = 67109120;
      LODWORD(v108) = v70;
      _os_log_impl(&dword_26B71B000, v68, v69, "QOS addAndStartQuery: %d", buf, 8u);
    }

    objc_initWeak(buf, self);
    queryProcessor = [(SPQueryTask *)self queryProcessor];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_454;
    block[3] = &unk_279CFE240;
    objc_copyWeak(v82, buf);
    block[4] = self;
    v82[1] = *&v50;
    v72 = v44;
    v80 = v72;
    v81 = currentSearchString;
    v73 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    tracing_dispatch_async();

    objc_destroyWeak(v82);
    objc_destroyWeak(buf);

    goto LABEL_90;
  }

  v52 = SPLogForSPLogCategoryQuery();
  v53 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v52, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v52, ((v53 & 1) == 0), "#query No stores for query!", buf, 2u);
  }

  [(SPFederatedQueryTask *)self sendQueryCompleted];
LABEL_90:

  si_tracing_log_span_end();
  v74 = v103;
  *v3 = v102;
  *(v3 + 16) = v74;
  *(v3 + 32) = v104;
}

id __40__SPFederatedQueryTask_addAndStartQuery__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"keystrokes";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "length") - objc_msgSend(*(a1 + 40), "length")}];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"keystrokes";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

void __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_454(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = (*MEMORY[0x277D286C8])();
  v15 = *v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "SDClient:  Starting query";
  si_tracing_log_span_begin();
  v7 = objc_alloc(MEMORY[0x277D4C270]);
  v8 = [*(a1 + 32) query];
  v9 = [v7 initWithEvent:@"com.apple.spotlight.backend.stores.start" timeInterval:0 queryId:{objc_msgSend(v8, "queryIdent")}];

  v10 = [MEMORY[0x277D4BEC0] sharedProxy];
  v11 = [*(a1 + 32) query];
  [v10 sendFeedbackType:21 feedback:v9 queryId:objc_msgSend(v11 clientID:{"queryIdent"), *(*(a1 + 32) + 448)}];

  if (*(a1 + 64) > 0.0)
  {
    [*(a1 + 32) setTimeout:?];
  }

  if (WeakRetained)
  {
    [WeakRetained[80] count];
    v12 = WeakRetained;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    tracing_dispatch_apply();
  }

  si_tracing_log_span_end();
  *v3 = v15;
  *(v3 + 16) = v16;
  *(v3 + 32) = v17;
}

__n128 __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_2_459(uint64_t a1, uint64_t a2)
{
  v4 = (*MEMORY[0x277D286C8])();
  v16 = *v4;
  v17 = *(v4 + 16);
  v18 = *(v4 + 32);
  v5 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v4 + 8);
  *v4 = v5;
  *(v4 + 8) = spanid;
  *(v4 + 16) = v7;
  *(v4 + 28) = 102;
  *(v4 + 32) = "SDClient:  Issuing query for store";
  si_tracing_log_span_begin();
  v8 = [*(*(a1 + 32) + 640) objectAtIndex:a2];
  v9 = [*(a1 + 40) query];
  v10 = [v9 cancelled];

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    [v8 activate];
    [v8 start];
    if ([v8 isStarted])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "searchDomain")}];
      pthread_mutex_lock(*(a1 + 64));
      v13 = [*(a1 + 48) containsObject:v8];
      v14 = *(a1 + 40);
      if (v13)
      {
        [v14 addSlowQueryToken:v12];
      }

      else
      {
        [v14 addQueryToken:v12];
      }

      pthread_mutex_unlock(*(a1 + 64));
    }

    objc_autoreleasePoolPop(v11);
  }

  si_tracing_log_span_end();
  result = v16;
  *v4 = v16;
  *(v4 + 16) = v17;
  *(v4 + 32) = v18;
  return result;
}

+ (id)contactEntityFromQueryContext:(id)context
{
  if (context)
  {
    searchEntities = [context searchEntities];
    firstObject = [searchEntities firstObject];

    if (objc_msgSend_isContactEntitySearch(firstObject))
    {
      v5 = firstObject;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForSession:(id)session withQuery:(id)query
{
  v106 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  queryCopy = query;
  v8 = [(SPQueryTask *)self init];
  v9 = v8;
  if (v8)
  {
    [(SPQueryTask *)v8 setQuery:queryCopy];
    [(SPFederatedQueryTask *)v9 setSession:sessionCopy];
    query = [(SPQueryTask *)v9 query];
    [(SPFederatedQueryTask *)v9 _updateQueryContext:query];

    queryContext = [queryCopy queryContext];
    v12 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.backend.query.start" timeInterval:0 queryId:{objc_msgSend(queryContext, "queryIdent")}];
    v13 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.backend.suggestions.start" timeInterval:0 queryId:{objc_msgSend(queryContext, "queryIdent")}];
    queryIdent = [queryContext queryIdent];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    clientBundleID = v9->_clientBundleID;
    v9->_clientBundleID = bundleIdentifier;

    [queryContext setClientBundleID:v9->_clientBundleID];
    mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
    v97 = v12;
    [mEMORY[0x277D4BEC0] sendFeedbackType:21 feedback:v12 queryId:queryIdent clientID:v9->_clientBundleID];
    v95 = mEMORY[0x277D4BEC0];
    v96 = v13;
    [mEMORY[0x277D4BEC0] sendFeedbackType:21 feedback:v13 queryId:queryIdent clientID:v9->_clientBundleID];
    v9->_externalID = atomic_fetch_add(&__queryTokenGen, 1u);
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    tokens = v9->_tokens;
    v9->_tokens = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    slowTokens = v9->_slowTokens;
    v9->_slowTokens = v21;

    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    delayedStartQueries = v9->_delayedStartQueries;
    v9->_delayedStartQueries = v23;

    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    delayedStartTokens = v9->_delayedStartTokens;
    v9->_delayedStartTokens = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    finishedTokens = v9->_finishedTokens;
    v9->_finishedTokens = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoryToResultMapping = v9->_categoryToResultMapping;
    v9->_categoryToResultMapping = v29;

    v31 = objc_opt_new();
    sectionOrderByInsertion = v9->_sectionOrderByInsertion;
    v9->_sectionOrderByInsertion = v31;

    v98 = queryCopy;
    queryContext2 = [queryCopy queryContext];
    disabledDomains = [queryContext2 disabledDomains];
    v9->_parsecSettingEnabled = [disabledDomains containsObject:&unk_287C3B740] ^ 1;

    [SPParsecQuery parsecEnabled:v9->_parsecSettingEnabled];
    v35 = objc_opt_new();
    [(SPFederatedQueryTask *)v9 setCategoryEngagements:v35];

    v9->_isRewrite = 0;
    v9->_isNLPSearch = 0;
    v36 = dispatch_semaphore_create(0);
    correctionsSem = v9->_correctionsSem;
    v9->_correctionsSem = v36;

    searchString = [queryContext searchString];
    searchEntities = [queryContext searchEntities];
    v40 = [searchEntities count];

    v100 = queryContext;
    if (v40)
    {
      v93 = sessionCopy;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      searchEntities2 = [queryContext searchEntities];
      v42 = [searchEntities2 countByEnumeratingWithState:&v101 objects:v105 count:16];
      if (!v42)
      {
        goto LABEL_20;
      }

      v43 = v42;
      v44 = *v102;
      while (1)
      {
        v45 = 0;
        v46 = searchString;
        do
        {
          if (*v102 != v44)
          {
            objc_enumerationMutation(searchEntities2);
          }

          v47 = *(*(&v101 + 1) + 8 * v45);
          isAppEntitySearch = [v47 isAppEntitySearch];
          v49 = &OBJC_IVAR___SPFederatedQueryTask__isScopedAppSearch;
          if (isAppEntitySearch & 1) != 0 || (isContactEntitySearch = objc_msgSend_isContactEntitySearch(v47), v49 = &OBJC_IVAR___SPFederatedQueryTask__isPeopleSearch, (isContactEntitySearch) || (isPhotosEntitySearch = objc_msgSend_isPhotosEntitySearch(v47), v49 = &OBJC_IVAR___SPFederatedQueryTask__isPhotosSearch, (isPhotosEntitySearch))
          {
            p_isNLPSearch = v9 + *v49;
LABEL_12:
            *p_isNLPSearch = 1;
            goto LABEL_13;
          }

          isNLPEntitySearch = objc_msgSend_isNLPEntitySearch(v47);
          p_isNLPSearch = &v9->_isNLPSearch;
          if (isNLPEntitySearch)
          {
            goto LABEL_12;
          }

LABEL_13:
          if ([v47 isCommandEntitySearch])
          {
            v9->_isEntitySearch = 1;
            query2 = [(SPQueryTask *)v9 query];
            [query2 setInfinitePatience:1];
          }

          searchString2 = [v100 searchString];
          [v47 updateSearchString:searchString2];

          searchString = [v47 currentSearchString];

          ++v45;
          v46 = searchString;
        }

        while (v43 != v45);
        v56 = [searchEntities2 countByEnumeratingWithState:&v101 objects:v105 count:16];
        v43 = v56;
        if (!v56)
        {
LABEL_20:

          sessionCopy = v93;
          queryContext = v100;
          break;
        }
      }
    }

    keyboardPrimaryLanguage = [queryContext keyboardPrimaryLanguage];
    lowercaseString = [keyboardPrimaryLanguage lowercaseString];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v60 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

    if (![lowercaseString hasPrefix:@"en"] || (v61 = objc_msgSend(v60, "hasPrefix:", @"en"), v62 = v60, v61))
    {
      v62 = lowercaseString;
    }

    v94 = v60;
    v63 = v62;
    v99 = lowercaseString;
    if (+[SPFederatedQueryTask isCJK](SPFederatedQueryTask, "isCJK") || ([lowercaseString hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"zh") & 1) != 0)
    {
      v64 = 1;
    }

    else
    {
      v64 = [lowercaseString hasPrefix:@"ko"];
    }

    v9->_isCJK = v64;
    [MEMORY[0x277D65978] prepareTopHitsParametersForLanguage:v63];
    v65 = [objc_alloc(MEMORY[0x277D65978]) initWithQuery:searchString];
    rankingManager = v9->_rankingManager;
    v9->_rankingManager = v65;

    v67 = CFPreferencesCopyAppValue(@"SearchRankingUseCreationDateL2", @"com.apple.searchd");
    v68 = CFPreferencesCopyAppValue(@"SearchRankingL2YWeight", @"com.apple.searchd");
    if (v9->_isPeopleSearch)
    {
      itemRanker = [(SPFederatedQueryTask *)v9 itemRanker];
      [itemRanker setIsPeopleSearch:1];
    }

    v70 = objc_alloc(MEMORY[0x277D65838]);
    isCJK = v9->_isCJK;
    [v67 doubleValue];
    v73 = v72;
    [v68 doubleValue];
    v75 = v74;
    query3 = [(SPQueryTask *)v9 query];
    [query3 currentTime];
    v78 = [v70 initWithSearchString:searchString queryID:queryIdent language:v63 isCJK:isCJK experimentalWeight1:v73 experimentalWeight2:v75 currentTime:v77];
    [(SPFederatedQueryTask *)v9 setItemRanker:v78];

    query4 = [(SPQueryTask *)v9 query];
    queryContext3 = [query4 queryContext];
    isSearchToolClient = [queryContext3 isSearchToolClient];
    itemRanker2 = [(SPFederatedQueryTask *)v9 itemRanker];
    [itemRanker2 setIsSearchToolClient:isSearchToolClient];

    [(SPFederatedQueryTask *)v9 setIsInternalDevice:os_variant_has_internal_diagnostics()];
    v9->_parsecCameLaterThanSRT = 0;
    v9->_parsecEntityCameEarly = 0;
    v9->_shouldRecomputeSuggestions = 1;
    searchEntities3 = [v100 searchEntities];
    v84 = [searchEntities3 count];

    if (v84)
    {
      searchEntities4 = [v100 searchEntities];
      firstObject = [searchEntities4 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        searchEntities5 = [v100 searchEntities];
        firstObject2 = [searchEntities5 firstObject];
        preferredBundleIDs = [firstObject2 preferredBundleIDs];
        preferredBundleIDs = v9->_preferredBundleIDs;
        v9->_preferredBundleIDs = preferredBundleIDs;

        v9->_enforcePreferredBundleIDs = 1;
      }
    }

    queryCopy = v98;
  }

  return v9;
}

- (void)updateResultsWithContactHeader
{
  previousQueryContext = [(SPQueryTask *)self previousQueryContext];
  v3 = [objc_opt_class() contactEntityFromQueryContext:previousQueryContext];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  v6 = [objc_opt_class() contactEntityFromQueryContext:queryContext];
  if (updateResultsWithContactHeader_onceToken != -1)
  {
    [SPFederatedQueryTask updateResultsWithContactHeader];
  }

  if ((updateResultsWithContactHeader_isPeopleViewService & 1) != 0 || v6 && (!v3 || ([v6 hasSameContactAsContactEntity:v3] & 1) == 0))
  {
    v7 = objc_alloc(MEMORY[0x277D4BEB8]);
    v8 = [v7 initWithSections:MEMORY[0x277CBEBF8]];
    query2 = [(SPQueryTask *)self query];
    LODWORD(v10) = 0;
    [SPFederatedQueryTask searchQuery:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:query2 replace:v8 partiallyComplete:1 priorityFastPath:1 update:0 complete:0 delayedTopHit:0.0 unchanged:v10 forceStable:0 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];
  }
}

void __54__SPFederatedQueryTask_updateResultsWithContactHeader__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  updateResultsWithContactHeader_isPeopleViewService = [v0 isEqualToString:@"PeopleViewService"];
}

- (void)_updateQueryContext:(id)context
{
  contextCopy = context;
  queryIdent = [contextCopy queryIdent];
  queryContext = [contextCopy queryContext];
  [queryContext setQueryIdent:queryIdent];

  promoteLocalResults = [contextCopy promoteLocalResults];
  queryContext2 = [contextCopy queryContext];
  [queryContext2 setPromoteLocalResults:promoteLocalResults];

  promoteParsecResults = [contextCopy promoteParsecResults];
  queryContext3 = [contextCopy queryContext];
  [queryContext3 setPromoteParsecResults:promoteParsecResults];

  disabledBundles = [contextCopy disabledBundles];
  queryContext4 = [contextCopy queryContext];
  [queryContext4 setDisabledBundles:disabledBundles];

  disabledApps = [contextCopy disabledApps];
  queryContext5 = [contextCopy queryContext];
  [queryContext5 setDisabledApps:disabledApps];

  internalValidation = [contextCopy internalValidation];
  queryContext6 = [contextCopy queryContext];
  [queryContext6 setInternalValidation:internalValidation];

  [contextCopy currentTime];
  v17 = v16;
  queryContext7 = [contextCopy queryContext];

  [queryContext7 setCurrentTime:v17];
}

- (void)start
{
  if ([(SPFederatedQueryTask *)self started])
  {
    [SPFederatedQueryTask start];
  }

  [(SPFederatedQueryTask *)self setNewQuery:1];
  objc_initWeak(&location, self);
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPFederatedQueryTask_start__block_invoke;
  block[3] = &unk_279CFE268;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(queryProcessor, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __29__SPFederatedQueryTask_start__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) started])
  {
    __29__SPFederatedQueryTask_start__block_invoke_cold_1();
  }

  v3 = SPLogForSPLogCategoryQuery();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    v6 = [*(a1 + 32) query];
    v7 = [v6 queryContext];
    v8 = [v7 searchString];
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_26B71B000, v4, v5, "Started search on %@", &v16, 0xCu);
  }

  [*(a1 + 32) setStarted:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setMutableSections:v9];

  v10 = objc_alloc(MEMORY[0x277D4C270]);
  v11 = [*(a1 + 32) query];
  v12 = [v10 initWithEvent:@"com.apple.searchd.frontend.query.start" timeInterval:0 queryId:{objc_msgSend(v11, "queryIdent")}];

  [*(a1 + 32) activate];
  [*(a1 + 32) addAndStartQuery];
  [*(a1 + 32) updateResultsWithContactHeader];
  if (WeakRetained)
  {
    v13 = SPLogForSPLogCategoryTelemetry();
    v14 = v13;
    v15 = WeakRetained[48];
    if (v15 && os_signpost_enabled(v13))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_26B71B000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "queryUI", " enableTelemetry=YES ", &v16, 2u);
    }

    kdebug_trace();
  }
}

- (void)activate
{
  if (self->_active)
  {
    v8 = v2;
    v9 = v3;
    v4 = SPLogForSPLogCategoryDefault();
    v5 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v4, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      *v7 = 0;
      _os_log_impl(&dword_26B71B000, v4, ((v5 & 1) == 0), "already active, ignoring", v7, 2u);
    }
  }

  else
  {
    self->_active = 1;
    v6 = MEMORY[0x277D65838];

    [v6 preheat];
  }
}

- (void)clear
{
  objc_initWeak(&location, self);
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SPFederatedQueryTask_clear__block_invoke;
  v5[3] = &unk_279CFE290;
  objc_copyWeak(&v6, &location);
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v5);
  dispatch_async(queryProcessor, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __29__SPFederatedQueryTask_clear__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = WeakRetained[80];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) activate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [MEMORY[0x277D65838] preheat];
  }
}

- (void)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
  [mEMORY[0x277CC3468] logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];

  query = [(SPQueryTask *)self query];
  [query cancel];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  queries = [(SPFederatedQueryTask *)self queries];
  v6 = [queries countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(queries);
        }

        [*(*(&v10 + 1) + 8 * v9++) cancel];
      }

      while (v7 != v9);
      v7 = [queries countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SPFederatedQueryTask *)self activate];
}

+ (void)activate
{
  v2 = objc_opt_class();

  [v2 activate:0];
}

+ (void)activate:(BOOL)activate
{
  if (!activate)
  {
    sPrepareCacheForSearchContinuationStarted = 1;
  }

  v5 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SPFederatedQueryTask_activate___block_invoke;
  v6[3] = &__block_descriptor_41_e5_v8__0l;
  activateCopy = activate;
  v6[4] = self;
  dispatch_async(v5, v6);

  SSQueryParserPreheat();
  SPBuildApplicationNames();
  +[SPCSSearchQuery activate];
  +[SPDictionaryQuery activate];
}

void __33__SPFederatedQueryTask_activate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v2 loadAllParametersForClient:@"Spotlight"];

  [MEMORY[0x277D65978] reloadRankingParametersFromTrial];
  [MEMORY[0x277D65838] preheat];
  v3 = [MEMORY[0x277D65818] sharedModelManager];
  [v3 activate];

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = objc_opt_class();

    [v4 prepareCacheForSearchContinuation];
  }
}

+ (void)deactivate
{
  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, &__block_literal_global_505);

  MEMORY[0x26D67EFF0]();
  +[SPCSSearchQuery deactivate];

  +[SPDictionaryQuery deactivate];
}

uint64_t __34__SPFederatedQueryTask_deactivate__block_invoke()
{
  v0 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v0 loadAllParametersForClient:@"Spotlight"];

  [MEMORY[0x277D65978] reloadRankingParametersFromTrial];
  [MEMORY[0x277D65978] deactivate];
  v1 = [MEMORY[0x277D65818] sharedModelManager];
  [v1 deactivate];

  v2 = [MEMORY[0x277D65818] sharedModelManager];
  [v2 triggerUpdate];

  return MEMORY[0x282186078](0);
}

- (id)searchString
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchString = [queryContext searchString];

  return searchString;
}

- (void)mergeSections
{
  selfCopy = self;
  v207 = *MEMORY[0x277D85DE8];
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v161 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v151 = selfCopy;
  mutableSections = [(SPQueryTask *)selfCopy mutableSections];
  firstObject = [mutableSections firstObject];

  bundleIdentifier = [firstObject bundleIdentifier];
  LOBYTE(selfCopy) = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  if ((selfCopy & 1) == 0)
  {

    firstObject = 0;
  }

  v152 = firstObject;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  mutableSections2 = [v151 mutableSections];
  v11 = [mutableSections2 copy];

  obj = v11;
  v163 = [v11 countByEnumeratingWithState:&v193 objects:v206 count:16];
  if (v163)
  {
    v162 = *v194;
    v171 = *MEMORY[0x277D65B98];
    v170 = *MEMORY[0x277D65A00];
    v153 = v6;
    v154 = *MEMORY[0x277D65B80];
    do
    {
      for (i = 0; i != v163; ++i)
      {
        if (*v194 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v193 + 1) + 8 * i);
        if (![v13 resultsCount])
        {
          continue;
        }

        title = [v13 title];
        v164 = i;
        if (title)
        {
          v15 = v13;
          title2 = [v13 title];
          uppercaseString = [title2 uppercaseString];
        }

        else
        {
          title2 = [v13 bundleIdentifier];
          if (!title2)
          {
            v19 = 0;
            goto LABEL_14;
          }

          v15 = v13;
          uppercaseString = [v13 bundleIdentifier];
        }

        v18 = uppercaseString;
        v19 = [v161 objectForKey:uppercaseString];

        v13 = v15;
LABEL_14:

        if (([v19 doNotFold] & 1) != 0 || objc_msgSend(v13, "doNotFold"))
        {

LABEL_17:
          [v6 addObject:v13];
          title3 = [v13 title];

          if (title3)
          {
            [v13 title];
            v22 = v21 = v13;
            uppercaseString2 = [v22 uppercaseString];
            [v161 setObject:v21 forKey:uppercaseString2];

            i = v164;
            goto LABEL_142;
          }

          bundleIdentifier2 = [v13 bundleIdentifier];

          i = v164;
          if (bundleIdentifier2)
          {
            bundleIdentifier3 = [v13 bundleIdentifier];
            v26 = v13;
            v22 = bundleIdentifier3;
            [v161 setObject:v26 forKey:bundleIdentifier3];
            goto LABEL_142;
          }

          continue;
        }

        if (!v19)
        {
          goto LABEL_17;
        }

        v27 = v19;
        v28 = [v6 indexOfObject:v27];
        v169 = v27;
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        v29 = v28;
        maxInitiallyVisibleResults = [v13 maxInitiallyVisibleResults];
        if (maxInitiallyVisibleResults <= [v27 maxInitiallyVisibleResults])
        {
          v31 = v27;
        }

        else
        {
          v31 = v13;
        }

        [v27 setMaxInitiallyVisibleResults:{objc_msgSend(v31, "maxInitiallyVisibleResults")}];
        v157 = v13;
        [v13 setMaxInitiallyVisibleResults:{objc_msgSend(v27, "maxInitiallyVisibleResults")}];
        [v6 replaceObjectAtIndex:v29 withObject:v27];
        v172 = objc_alloc_init(MEMORY[0x277CBEB58]);
        resultSet = [v27 resultSet];
        [resultSet objectAtIndexedSubscript:0];
        v34 = v33 = v27;
        sectionBundleIdentifier = [v34 sectionBundleIdentifier];
        v36 = sectionBundleIdentifier;
        v37 = v154;
        if (sectionBundleIdentifier)
        {
          applicationBundleIdentifier = sectionBundleIdentifier;
        }

        else
        {
          resultSet2 = [v33 resultSet];
          v39 = [resultSet2 objectAtIndexedSubscript:0];
          applicationBundleIdentifier = [v39 applicationBundleIdentifier];
        }

        resultSet3 = [v157 resultSet];
        v41 = [resultSet3 objectAtIndexedSubscript:0];
        sectionBundleIdentifier2 = [v41 sectionBundleIdentifier];
        v43 = sectionBundleIdentifier2;
        if (sectionBundleIdentifier2)
        {
          applicationBundleIdentifier2 = sectionBundleIdentifier2;
        }

        else
        {
          resultSet4 = [v157 resultSet];
          v45 = [resultSet4 objectAtIndexedSubscript:0];
          applicationBundleIdentifier2 = [v45 applicationBundleIdentifier];
        }

        if (([applicationBundleIdentifier isEqualToString:@"com.apple.Maps"] & 1) != 0 || objc_msgSend(applicationBundleIdentifier2, "isEqualToString:", @"com.apple.Maps"))
        {
          v46 = v157;
          if ([applicationBundleIdentifier isEqualToString:@"com.apple.Maps"])
          {
            results = [v169 results];
            sectionBundleIdentifier3 = [results copy];

            [v169 clearResults];
            results2 = [v157 results];

            if (results2)
            {
              results3 = [v157 results];
              [v169 addResultsFromArray:results3];
            }

            [v157 clearResults];
            if (sectionBundleIdentifier3)
            {
              [v157 addResultsFromArray:sectionBundleIdentifier3];
            }

            domain = [v157 domain];
            [v157 setDomain:{objc_msgSend(v169, "domain")}];
            [v169 setDomain:domain];
            title4 = [v157 title];
            title5 = [v169 title];
            [v157 setTitle:title5];

            v54 = title4;
            [v169 setTitle:title4];
LABEL_77:
          }

          goto LABEL_78;
        }

        if ([v169 domain] != 2)
        {
          resultSet5 = [v169 resultSet];
          v56 = [resultSet5 objectAtIndexedSubscript:0];
          applicationBundleIdentifier3 = [v56 applicationBundleIdentifier];
          v58 = applicationBundleIdentifier3;
          if (applicationBundleIdentifier3)
          {
            sectionBundleIdentifier3 = applicationBundleIdentifier3;
          }

          else
          {
            resultSet6 = [v169 resultSet];
            v60 = [resultSet6 objectAtIndexedSubscript:0];
            sectionBundleIdentifier3 = [v60 sectionBundleIdentifier];
          }

          resultSet7 = [v157 resultSet];
          v62 = [resultSet7 objectAtIndexedSubscript:0];
          applicationBundleIdentifier4 = [v62 applicationBundleIdentifier];
          v64 = applicationBundleIdentifier4;
          if (applicationBundleIdentifier4)
          {
            sectionBundleIdentifier4 = applicationBundleIdentifier4;
          }

          else
          {
            resultSet8 = [v157 resultSet];
            v66 = [resultSet8 objectAtIndexedSubscript:0];
            sectionBundleIdentifier4 = [v66 sectionBundleIdentifier];
          }

          title6 = [v157 title];
          uppercaseString3 = [title6 uppercaseString];

          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          resultSet9 = [v152 resultSet];
          v68 = [resultSet9 countByEnumeratingWithState:&v189 objects:v205 count:16];
          if (!v68)
          {
            v54 = sectionBundleIdentifier4;
            goto LABEL_76;
          }

          v69 = v68;
          v70 = *v190;
          v159 = sectionBundleIdentifier3;
          v54 = sectionBundleIdentifier4;
          while (1)
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v190 != v70)
              {
                objc_enumerationMutation(resultSet9);
              }

              v72 = *(*(&v189 + 1) + 8 * j);
              title7 = [v72 title];
              if (!title7)
              {
                goto LABEL_72;
              }

              if (sectionBundleIdentifier3)
              {
                resultBundleId = [v72 resultBundleId];
                if ([resultBundleId isEqualToString:sectionBundleIdentifier3])
                {
                  goto LABEL_60;
                }
              }

              if (v54)
              {
                resultBundleId2 = [v72 resultBundleId];
                if ([resultBundleId2 isEqualToString:v54])
                {

                  if (sectionBundleIdentifier3)
                  {
LABEL_60:
                  }

LABEL_71:
                  [v172 addObject:title7];
                  goto LABEL_72;
                }

                if (!uppercaseString3)
                {
                  v74 = 0;
LABEL_67:

                  goto LABEL_68;
                }
              }

              else if (!uppercaseString3)
              {
                v74 = 0;
                goto LABEL_68;
              }

              v75 = resultBundleId2;
              v76 = resultBundleId;
              sectionHeader = [v72 sectionHeader];
              uppercaseString4 = [sectionHeader uppercaseString];
              v74 = [uppercaseString4 isEqual:uppercaseString3];

              resultBundleId = v76;
              resultBundleId2 = v75;
              sectionBundleIdentifier3 = v159;
              v54 = sectionBundleIdentifier4;
              if (sectionBundleIdentifier4)
              {
                goto LABEL_67;
              }

LABEL_68:
              if (sectionBundleIdentifier3)
              {
              }

              if (v74)
              {
                goto LABEL_71;
              }

LABEL_72:
            }

            v69 = [resultSet9 countByEnumeratingWithState:&v189 objects:v205 count:16];
            if (!v69)
            {
LABEL_76:

              v46 = v157;
              goto LABEL_77;
            }
          }
        }

        v46 = v157;
LABEL_78:
        v168 = resultBundleId;
        bundleIdentifier4 = [v46 bundleIdentifier];
        v80 = [bundleIdentifier4 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v80)
        {
          v166 = resultBundleId2;
          v81 = objc_opt_new();
          v185 = 0u;
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          resultSet10 = [v169 resultSet];
          v83 = [resultSet10 countByEnumeratingWithState:&v185 objects:v204 count:16];
          if (v83)
          {
            v84 = v83;
            v85 = *v186;
            do
            {
              for (k = 0; k != v84; ++k)
              {
                if (*v186 != v85)
                {
                  objc_enumerationMutation(resultSet10);
                }

                v87 = *(*(&v185 + 1) + 8 * k);
                resultBundleId3 = [v87 resultBundleId];
                if (resultBundleId3)
                {
                  v89 = resultBundleId3;
                  completion = [v87 completion];

                  if (completion)
                  {
                    resultBundleId4 = [v87 resultBundleId];
                    v203[0] = resultBundleId4;
                    completion2 = [v87 completion];
                    v203[1] = completion2;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v203 count:2];

                    [v81 setObject:v87 forKeyedSubscript:v93];
                  }
                }
              }

              v84 = [resultSet10 countByEnumeratingWithState:&v185 objects:v204 count:16];
            }

            while (v84);
          }

          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          resultSet11 = [v157 resultSet];
          v95 = [resultSet11 countByEnumeratingWithState:&v181 objects:v202 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v182;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v182 != v97)
                {
                  objc_enumerationMutation(resultSet11);
                }

                v99 = *(*(&v181 + 1) + 8 * m);
                resultBundleId5 = [v99 resultBundleId];
                if (resultBundleId5)
                {
                  v101 = resultBundleId5;
                  completion3 = [v99 completion];

                  if (completion3)
                  {
                    resultBundleId6 = [v99 resultBundleId];
                    v201[0] = resultBundleId6;
                    completion4 = [v99 completion];
                    v201[1] = completion4;
                    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v201 count:2];
                    v106 = [v81 objectForKeyedSubscript:v105];

                    if (!v106)
                    {
                      [v169 addResults:v99];
                    }
                  }
                }
              }

              v96 = [resultSet11 countByEnumeratingWithState:&v181 objects:v202 count:16];
            }

            while (v96);
          }

          v37 = v154;
          resultBundleId2 = v166;
        }

        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        resultSet12 = [v169 resultSet];
        v108 = [resultSet12 countByEnumeratingWithState:&v177 objects:v200 count:16];
        if (v108)
        {
          v109 = v108;
          v110 = *v178;
          do
          {
            v111 = 0;
            do
            {
              if (*v178 != v110)
              {
                objc_enumerationMutation(resultSet12);
              }

              v112 = *(*(&v177 + 1) + 8 * v111);
              resultBundleId7 = [v112 resultBundleId];
              v114 = [resultBundleId7 isEqualToString:v37];

              if (v114)
              {
                contentURL = [v112 contentURL];
              }

              else
              {
                resultBundleId8 = [v112 resultBundleId];
                v117 = [resultBundleId8 isEqualToString:v171];

                if (v117 || ([v112 contentType], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToString:", v170), v118, v119))
                {
                  contentURL = [v112 identifier];
                }

                else
                {
                  title8 = [v112 title];
                  if (!title8)
                  {
                    goto LABEL_114;
                  }

                  v122 = title8;
                  title9 = [v112 title];
                  text = [title9 text];

                  if (!text)
                  {
                    goto LABEL_114;
                  }

                  contentURL = [v112 title];
                }
              }

              v120 = contentURL;
              if (contentURL)
              {
                [v172 addObject:contentURL];
              }

LABEL_114:
              ++v111;
            }

            while (v109 != v111);
            v125 = [resultSet12 countByEnumeratingWithState:&v177 objects:v200 count:16];
            v109 = v125;
          }

          while (v125);
        }

        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        resultSet13 = [v157 resultSet];
        v127 = [resultSet13 countByEnumeratingWithState:&v173 objects:v199 count:16];
        if (!v127)
        {
          goto LABEL_140;
        }

        v128 = v127;
        v129 = *v174;
        do
        {
          v130 = 0;
          do
          {
            if (*v174 != v129)
            {
              objc_enumerationMutation(resultSet13);
            }

            v131 = *(*(&v173 + 1) + 8 * v130);
            resultBundleId9 = [v131 resultBundleId];
            v133 = [resultBundleId9 isEqualToString:v37];

            if (v133)
            {
              contentURL2 = [v131 contentURL];
            }

            else
            {
              resultBundleId10 = [v131 resultBundleId];
              v136 = [resultBundleId10 isEqualToString:v171];

              if (v136 || ([v131 contentType], v137 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend(v137, "isEqualToString:", v170), v137, v138))
              {
                contentURL2 = [v131 identifier];
              }

              else
              {
                title10 = [v131 title];
                if (!title10)
                {
                  goto LABEL_133;
                }

                title11 = [v131 title];
                text2 = [title11 text];

                if (!text2)
                {
                  title10 = 0;
                  goto LABEL_133;
                }

                contentURL2 = [v131 title];
              }
            }

            title10 = contentURL2;
            if (contentURL2 && ([v172 containsObject:contentURL2] & 1) == 0)
            {
              [v169 addResults:v131];
            }

LABEL_133:

            ++v130;
          }

          while (v128 != v130);
          v142 = [resultSet13 countByEnumeratingWithState:&v173 objects:v199 count:16];
          v128 = v142;
        }

        while (v142);
LABEL_140:

        v6 = v153;
        resultBundleId = v168;
LABEL_141:
        i = v164;
        v22 = v169;

LABEL_142:
      }

      v163 = [obj countByEnumeratingWithState:&v193 objects:v206 count:16];
    }

    while (v163);
  }

  if (_os_feature_enabled_impl() && [v6 count])
  {
    [v151 relatedContentSectionMerging:v6];
  }

  v143 = [v6 count];
  [v151 setMutableSections:v6];
  v144 = SPLogForSPLogCategoryDefault();
  v145 = *MEMORY[0x277D4BF50];
  v146 = os_log_type_enabled(v144, ((*MEMORY[0x277D4BF50] & 1) == 0));
  if (v143)
  {
    if (v146)
    {
      *buf = 138412290;
      v198 = v6;
      v147 = "Merge sections %@";
      v148 = (v145 & 1) == 0;
      v149 = v144;
      v150 = 12;
LABEL_153:
      _os_log_impl(&dword_26B71B000, v149, v148, v147, buf, v150);
    }
  }

  else if (v146)
  {
    *buf = 0;
    v147 = "Empty after updates";
    v148 = (v145 & 1) == 0;
    v149 = v144;
    v150 = 2;
    goto LABEL_153;
  }
}

- (void)relatedContentSectionMerging:(id)merging
{
  v4 = relatedContentSectionMerging__onceToken;
  mergingCopy = merging;
  v7 = mergingCopy;
  if (v4 == -1)
  {
    v6 = mergingCopy;
  }

  else
  {
    [SPFederatedQueryTask relatedContentSectionMerging:];
    v6 = v7;
  }

  [(SPFederatedQueryTask *)self mergeRelatedContentFromSections:v6 bundlesToMerge:relatedContentSectionMerging__webBundles mergedSectionId:sSectionMergingBlendedWeb];
  [(SPFederatedQueryTask *)self mergeRelatedContentFromSections:v7 bundlesToMerge:relatedContentSectionMerging__musicBundles mergedSectionId:sSectionMergingBlendedMusic];
}

void __53__SPFederatedQueryTask_relatedContentSectionMerging___block_invoke()
{
  v12[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D65B30];
  v12[0] = *MEMORY[0x277D65B80];
  v12[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = relatedContentSectionMerging__webBundles;
  relatedContentSectionMerging__webBundles = v3;

  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277D65B68];
  v11[0] = *MEMORY[0x277D65AD8];
  v11[1] = v6;
  v7 = *MEMORY[0x277D65AF0];
  v11[2] = *MEMORY[0x277D65B18];
  v11[3] = v7;
  v11[4] = *MEMORY[0x277D65B00];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  v9 = [v5 setWithArray:v8];
  v10 = relatedContentSectionMerging__musicBundles;
  relatedContentSectionMerging__musicBundles = v9;
}

- (void)mergeRelatedContentFromSections:(id)sections bundlesToMerge:(id)merge mergedSectionId:(id)id
{
  v48 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  mergeCopy = merge;
  idCopy = id;
  array = [MEMORY[0x277CBEB18] array];
  if ([sectionsCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [sectionsCopy objectAtIndexedSubscript:v11];
      bundleIdentifier = [v12 bundleIdentifier];
      results = [v12 results];
      if ([results count])
      {
        v15 = [mergeCopy containsObject:bundleIdentifier];

        if (v15)
        {
          [array addObject:v12];
        }
      }

      else
      {
      }

      ++v11;
    }

    while (v11 < [sectionsCopy count]);
  }

  if ([array count])
  {
    v16 = [array objectAtIndexedSubscript:0];
    if ([array count] >= 2)
    {
      v42 = v16;
      v43 = idCopy;
      v17 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = array;
        _os_log_impl(&dword_26B71B000, v17, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Merging sections %@", buf, 0xCu);
      }

      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      if ([array count])
      {
        v20 = 0;
        do
        {
          v21 = [array objectAtIndexedSubscript:{v20, v42}];
          maxInitiallyVisibleResults = [v21 maxInitiallyVisibleResults];
          if (!maxInitiallyVisibleResults)
          {
            results2 = [v21 results];
            v24 = [results2 count];

            if (v24 >= 3)
            {
              maxInitiallyVisibleResults = 3;
            }

            else
            {
              maxInitiallyVisibleResults = v24;
            }
          }

          results3 = [v21 results];
          v26 = [results3 count];

          if (maxInitiallyVisibleResults <= v26)
          {
            results4 = [v21 results];
            v28 = [results4 subarrayWithRange:{0, maxInitiallyVisibleResults}];
            [array2 addObjectsFromArray:v28];
          }

          results5 = [v21 results];
          v30 = [results5 count];

          if (v30 > maxInitiallyVisibleResults)
          {
            results6 = [v21 results];
            results7 = [v21 results];
            v33 = [results6 subarrayWithRange:{maxInitiallyVisibleResults, objc_msgSend(results7, "count") - maxInitiallyVisibleResults}];
            [array3 addObjectsFromArray:v33];
          }

          [v21 clearResults];

          ++v20;
        }

        while (v20 < [array count]);
      }

      v16 = v42;
      [v42 addResultsFromArray:{array2, v42}];
      [v16 addResultsFromArray:array3];
      [v16 setMaxInitiallyVisibleResults:{objc_msgSend(array2, "count")}];

      idCopy = v43;
    }

    if ([idCopy isEqualToString:sSectionMergingBlendedWeb])
    {
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_WEB" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v35];

      if ([array count] >= 2)
      {
        v36 = MEMORY[0x277D65B80];
LABEL_31:
        [v16 setPreMergeBundleIdentifier:*v36];
        goto LABEL_32;
      }
    }

    else
    {
      if (![idCopy isEqualToString:sSectionMergingBlendedMusic])
      {
LABEL_33:
        v40 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [v16 bundleIdentifier];
          *buf = 138412546;
          v45 = bundleIdentifier2;
          v46 = 2112;
          v47 = idCopy;
          _os_log_impl(&dword_26B71B000, v40, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Section %@ becomes %@", buf, 0x16u);
        }

        [v16 setBundleIdentifier:idCopy];
        goto LABEL_36;
      }

      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_MUSIC" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v38];

      if ([array count] >= 2)
      {
        v36 = MEMORY[0x277D65AD8];
        goto LABEL_31;
      }
    }

    bundleIdentifier3 = [v16 bundleIdentifier];
    [v16 setPreMergeBundleIdentifier:bundleIdentifier3];

LABEL_32:
    [v16 setMaxInitiallyVisibleResults:3];
    goto LABEL_33;
  }

LABEL_36:
}

- (void)truncateSuggestionsSectionToFit:(id)fit
{
  v26 = *MEMORY[0x277D85DE8];
  fitCopy = fit;
  maxUISuggestions = [(SPQueryTask *)self maxUISuggestions];
  resultSet = [fitCopy resultSet];
  v7 = objc_alloc(MEMORY[0x277CBEB40]);
  resultsCount = [fitCopy resultsCount];
  if (resultsCount >= maxUISuggestions)
  {
    v9 = maxUISuggestions;
  }

  else
  {
    v9 = resultsCount;
  }

  v10 = [v7 initWithCapacity:v9];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = resultSet;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if ([v18 type] == 21)
        {
          if (v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v18;
          }

          v20 = v19;

          v14 = v20;
        }

        else if (v15 < maxUISuggestions)
        {
          [v10 addObject:v18];
          ++v15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);

    if (v14)
    {
      if (v15 && v15 >= maxUISuggestions)
      {
        [v10 replaceObjectAtIndex:v15 - 1 withObject:v14];
      }

      else
      {
        [v10 addObject:v14];
      }
    }
  }

  else
  {

    v14 = 0;
  }

  [fitCopy setResultSet:{v10, v21}];
}

- (void)handleOptionsForNewSections:(id)sections
{
  v230 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (*MEMORY[0x277D4BF48])
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    *buf = 134218240;
    v227 = currentThread;
    v228 = 1024;
    v229 = [sectionsCopy count];
    _os_log_impl(&dword_26B71B000, v5, v6, "[%p] handleOptions for sections (%d)", buf, 0x12u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = MEMORY[0x277D4BF50];
  v10 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v8, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 138412290;
    v227 = sectionsCopy;
    _os_log_impl(&dword_26B71B000, v8, ((v10 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
  }

  if ([sectionsCopy count])
  {
    queryProcessor = [(SPQueryTask *)self queryProcessor];
    dispatch_assert_queue_V2(queryProcessor);

    v12 = SPLogForSPLogCategoryDefault();
    v13 = *v9;
    if (os_log_type_enabled(v12, ((v13 & 1) == 0)))
    {
      *buf = 138412290;
      v227 = sectionsCopy;
      _os_log_impl(&dword_26B71B000, v12, ((v13 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];

    v155 = firstObject;
    isServerEntitySearch = [firstObject isServerEntitySearch];
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    mutableSections = [(SPQueryTask *)self mutableSections];
    v20 = [mutableSections countByEnumeratingWithState:&v213 objects:v225 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v214;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v214 != v22)
          {
            objc_enumerationMutation(mutableSections);
          }

          v24 = *(*(&v213 + 1) + 8 * i);
          bundleIdentifier = [v24 bundleIdentifier];
          v26 = [bundleIdentifier hasPrefix:@"com.apple.parsec."];

          if (v26)
          {
            results = [v24 results];
            firstObject2 = [results firstObject];
            [v24 setDoNotFold:{objc_msgSend(firstObject2, "doNotFold")}];
          }

          createDedupeDicts(v24, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6, isServerEntitySearch);
        }

        v21 = [mutableSections countByEnumeratingWithState:&v213 objects:v225 count:16];
      }

      while (v21);
    }

    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v29 = sectionsCopy;
    v30 = [v29 countByEnumeratingWithState:&v209 objects:v224 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v210;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v210 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v209 + 1) + 8 * j);
          bundleIdentifier2 = [v34 bundleIdentifier];
          v36 = [bundleIdentifier2 hasPrefix:@"com.apple.parsec."];

          if (v36)
          {
            results2 = [v34 results];
            firstObject3 = [results2 firstObject];
            [v34 setDoNotFold:{objc_msgSend(firstObject3, "doNotFold")}];
          }

          createDedupeDicts(v34, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6, isServerEntitySearch);
        }

        v31 = [v29 countByEnumeratingWithState:&v209 objects:v224 count:16];
      }

      while (v31);
    }

    v39 = [v29 count];
    if (v39)
    {
      v40 = v39;
      v169 = *MEMORY[0x277D65BA8];
      v165 = *MEMORY[0x277D65BC8];
      v154 = *MEMORY[0x277D65A00];
      v171 = *MEMORY[0x277D65A30];
      v163 = *MEMORY[0x277D65B28];
      v167 = *MEMORY[0x277D65B20];
      v159 = v29;
      while (1)
      {
        v41 = [v29 objectAtIndex:--v40];
        bundleIdentifier3 = [v41 bundleIdentifier];
        v43 = [bundleIdentifier3 hasPrefix:@"com.apple.parsec."];

        if (v43)
        {
          results3 = [v41 results];
          v45 = [results3 count];

          if (!v45)
          {
            goto LABEL_81;
          }

          results4 = [v41 results];
          v47 = [results4 copy];

          [v41 clearResults];
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
          v48 = v47;
          v49 = [v48 countByEnumeratingWithState:&v205 objects:v223 count:16];
          if (v49)
          {
            v50 = v49;
            v157 = v40;
            v51 = *v206;
            do
            {
              for (k = 0; k != v50; ++k)
              {
                if (*v206 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v205 + 1) + 8 * k);
                bundleIdentifier4 = [v41 bundleIdentifier];
                v55 = [bundleIdentifier4 hasPrefix:@"com.apple.parsec."];

                if (v55 && (([v53 storeIdentifier], (v56 = objc_claimAutoreleasedReturnValue()) != 0) && (v57 = v56, objc_msgSend(v53, "storeIdentifier"), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary, "objectForKey:", v58), v59 = objc_claimAutoreleasedReturnValue(), v58, v57, v59) || (objc_msgSend(v53, "calendarIdentifier"), (v60 = objc_claimAutoreleasedReturnValue()) != 0) && (v61 = v60, objc_msgSend(v53, "calendarIdentifier"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary3, "objectForKey:", v62), v59 = objc_claimAutoreleasedReturnValue(), v62, v61, v59)))
                {
                  handleHiddenResult();
                }

                else
                {
                  [v41 addResults:v53];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v205 objects:v223 count:16];
            }

            while (v50);
            v40 = v157;
          }

          goto LABEL_80;
        }

        bundleIdentifier5 = [v41 bundleIdentifier];
        v64 = [bundleIdentifier5 isEqualToString:@"com.apple.dictionary"];

        if (v64)
        {
          results5 = [v41 results];
          v66 = [results5 count];

          if (!v66)
          {
            goto LABEL_81;
          }

          results6 = [v41 results];
          v68 = [results6 copy];

          [v41 clearResults];
          v203 = 0u;
          v204 = 0u;
          v201 = 0u;
          v202 = 0u;
          v48 = v68;
          v69 = [v48 countByEnumeratingWithState:&v201 objects:v222 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = v40;
            v72 = *v202;
            do
            {
              for (m = 0; m != v70; ++m)
              {
                if (*v202 != v72)
                {
                  objc_enumerationMutation(v48);
                }

                v74 = *(*(&v201 + 1) + 8 * m);
                identifier = [v74 identifier];
                if (!identifier || ([dictionary4 objectForKey:identifier], v76 = objc_claimAutoreleasedReturnValue(), v76, !v76))
                {
                  [v41 addResults:v74];
                }
              }

              v70 = [v48 countByEnumeratingWithState:&v201 objects:v222 count:16];
            }

            while (v70);
            goto LABEL_79;
          }

          goto LABEL_80;
        }

        bundleIdentifier6 = [v41 bundleIdentifier];
        if ([bundleIdentifier6 isEqualToString:v169])
        {
          break;
        }

        bundleIdentifier7 = [v41 bundleIdentifier];
        v79 = [bundleIdentifier7 isEqualToString:v165];

        if (v79)
        {
          goto LABEL_64;
        }

        bundleIdentifier8 = [v41 bundleIdentifier];
        v98 = [bundleIdentifier8 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v98)
        {
          v158 = v40;
          obj = objc_alloc_init(MEMORY[0x277CCAB58]);
          v193 = 0u;
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          results7 = [v41 results];
          v100 = [results7 countByEnumeratingWithState:&v193 objects:v220 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = 0;
            v103 = *v194;
            do
            {
              for (n = 0; n != v101; ++n)
              {
                if (*v194 != v103)
                {
                  objc_enumerationMutation(results7);
                }

                v105 = *(*(&v193 + 1) + 8 * n);
                identifier2 = [v105 identifier];
                v107 = [identifier2 hasPrefix:v171];

                if (v107)
                {
                  sectionBundleIdentifier = [v105 sectionBundleIdentifier];
                  v109 = [sectionBundleIdentifier isEqualToString:v169];

                  v110 = v167;
                  if ((v109 & 1) != 0 || ([v105 sectionBundleIdentifier], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "isEqualToString:", v165), v111, v110 = v163, v112))
                  {
                    v113 = [dictionary5 objectForKey:v110];
                    if (v113)
                    {
                      v114 = v113;
                      handleHiddenResult();
                      [obj addIndex:v102];
                    }
                  }
                }

                ++v102;
              }

              v101 = [results7 countByEnumeratingWithState:&v193 objects:v220 count:16];
            }

            while (v101);
          }

          resultSet = [v41 resultSet];
          [resultSet removeObjectsAtIndexes:obj];

          [(SPFederatedQueryTask *)self truncateSuggestionsSectionToFit:v41];
          v40 = v158;
          v29 = v159;
          goto LABEL_83;
        }

        bundleIdentifier9 = [v41 bundleIdentifier];
        v117 = [bundleIdentifier9 isEqualToString:v154];

        if (v117)
        {
          results8 = [v41 results];
          v119 = [results8 count];

          if (v119)
          {
            results9 = [v41 results];
            v121 = [results9 copy];

            [v41 clearResults];
            v191 = 0u;
            v192 = 0u;
            v189 = 0u;
            v190 = 0u;
            v48 = v121;
            v122 = [v48 countByEnumeratingWithState:&v189 objects:v219 count:16];
            if (v122)
            {
              v123 = v122;
              v71 = v40;
              v124 = *v190;
              do
              {
                for (ii = 0; ii != v123; ++ii)
                {
                  if (*v190 != v124)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v126 = *(*(&v189 + 1) + 8 * ii);
                  applicationBundleIdentifier = [v126 applicationBundleIdentifier];
                  v128 = [dictionary6 objectForKey:applicationBundleIdentifier];
                  v129 = v128;
                  if (applicationBundleIdentifier)
                  {
                    v130 = v128 == 0;
                  }

                  else
                  {
                    v130 = 1;
                  }

                  if (v130)
                  {
                    [v41 addResults:v126];
                  }

                  else
                  {
                    handleHiddenResult();
                  }
                }

                v123 = [v48 countByEnumeratingWithState:&v189 objects:v219 count:16];
              }

              while (v123);
LABEL_79:
              v40 = v71;
            }

LABEL_80:

            v29 = v159;
          }
        }

LABEL_81:
        if (![v41 resultsCount])
        {
          [v29 removeObjectAtIndex:v40];
        }

LABEL_83:

        if (!v40)
        {
          goto LABEL_115;
        }
      }

LABEL_64:
      results10 = [v41 results];
      v81 = [results10 count];

      if (!v81)
      {
        goto LABEL_81;
      }

      results11 = [v41 results];
      v83 = [results11 copy];

      [v41 clearResults];
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v48 = v83;
      v84 = [v48 countByEnumeratingWithState:&v197 objects:v221 count:16];
      if (v84)
      {
        v85 = v84;
        v71 = v40;
        v86 = *v198;
        do
        {
          for (jj = 0; jj != v85; ++jj)
          {
            if (*v198 != v86)
            {
              objc_enumerationMutation(v48);
            }

            v88 = *(*(&v197 + 1) + 8 * jj);
            identifier3 = [v88 identifier];
            v90 = [identifier3 hasPrefix:v171];

            if (v90)
            {
              sectionBundleIdentifier2 = [v88 sectionBundleIdentifier];
              v92 = [sectionBundleIdentifier2 isEqualToString:v169];

              v93 = v167;
              if ((v92 & 1) == 0 && ([v88 sectionBundleIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "isEqualToString:", v165), v94, v93 = v163, !v95) || (objc_msgSend(dictionary5, "objectForKey:", v93), (v96 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                [v41 addResults:v88];
                v96 = 0;
              }
            }

            else
            {
              [v41 addResults:v88];
            }
          }

          v85 = [v48 countByEnumeratingWithState:&v197 objects:v221 count:16];
        }

        while (v85);
        goto LABEL_79;
      }

      goto LABEL_80;
    }

LABEL_115:
    [dictionary removeAllObjects];
    [dictionary2 removeAllObjects];
    [dictionary3 removeAllObjects];
    [dictionary4 removeAllObjects];
    [dictionary5 removeAllObjects];
    [dictionary6 removeAllObjects];
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    obja = v29;
    v166 = [obja countByEnumeratingWithState:&v185 objects:v218 count:16];
    if (!v166)
    {
      goto LABEL_149;
    }

    v164 = *v186;
    v160 = *MEMORY[0x277D4BEF0];
LABEL_117:
    v131 = 0;
    while (1)
    {
      if (*v186 != v164)
      {
        objc_enumerationMutation(obja);
      }

      v132 = *(*(&v185 + 1) + 8 * v131);
      bundleIdentifier10 = [v132 bundleIdentifier];
      if ([bundleIdentifier10 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_123;
      }

      bundleIdentifier11 = [v132 bundleIdentifier];
      if ([bundleIdentifier11 isEqualToString:v160])
      {
        break;
      }

      bundleIdentifier12 = [v132 bundleIdentifier];
      v152 = [bundleIdentifier12 isEqualToString:*MEMORY[0x277D4BF10]];

      if (v152)
      {
        goto LABEL_124;
      }

LABEL_144:
      if (++v131 == v166)
      {
        v153 = [obja countByEnumeratingWithState:&v185 objects:v218 count:16];
        v166 = v153;
        if (!v153)
        {
LABEL_149:

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke;
          block[3] = &unk_279CFE2D8;
          v180 = obja;
          dispatch_sync(MEMORY[0x277D85CD0], block);

          goto LABEL_150;
        }

        goto LABEL_117;
      }
    }

LABEL_123:
LABEL_124:
    v168 = v131;
    v172 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    results12 = [v132 results];
    v135 = [results12 countByEnumeratingWithState:&v181 objects:v217 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = 0;
      v138 = *v182;
      do
      {
        for (kk = 0; kk != v136; ++kk)
        {
          if (*v182 != v138)
          {
            objc_enumerationMutation(results12);
          }

          v140 = *(*(&v181 + 1) + 8 * kk);
          v141 = updateDedupeDictsForResult(v140, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6);
          v142 = v141;
          if (v141)
          {
            inlineCard = [v141 inlineCard];
            inlineCard2 = [v140 inlineCard];
            v145 = inlineCard2;
            if (inlineCard)
            {
              v146 = 1;
            }

            else
            {
              v146 = inlineCard2 == 0;
            }

            if (!v146)
            {
              [v142 setInlineCard:inlineCard2];
            }

            compactCard = [v142 compactCard];

            compactCard2 = [v140 compactCard];

            if (compactCard)
            {
              v149 = 1;
            }

            else
            {
              v149 = compactCard2 == 0;
            }

            if (!v149)
            {
              [v142 setCompactCard:compactCard2];
            }

            handleHiddenResult();
            [v172 addIndex:v137];
          }

          ++v137;
        }

        v136 = [results12 countByEnumeratingWithState:&v181 objects:v217 count:16];
      }

      while (v136);
    }

    resultSet2 = [v132 resultSet];
    [resultSet2 removeObjectsAtIndexes:v172];

    v131 = v168;
    goto LABEL_144;
  }

LABEL_150:
}

void __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) count];
  if (v1)
  {
    v2 = v1;
    v18 = *MEMORY[0x277D4BEF0];
    while (1)
    {
      v3 = [*(a1 + 32) objectAtIndex:--v2];
      v4 = [v3 bundleIdentifier];
      if ([v4 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_6;
      }

      v5 = [v3 bundleIdentifier];
      if ([v5 isEqualToString:v18])
      {
        break;
      }

      v16 = [v3 bundleIdentifier];
      v17 = [v16 isEqualToString:*MEMORY[0x277D4BF10]];

      if (v17)
      {
        goto LABEL_7;
      }

LABEL_21:

      if (!v2)
      {
        return;
      }
    }

LABEL_6:
LABEL_7:
    v20 = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v3 results];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          if ([v11 isLocalApplicationResult])
          {
            if (sSRResources_block_invoke_2_onceToken != -1)
            {
              __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke_cold_1();
            }

            v12 = sSRResources_block_invoke_2_sbsservice;
            v13 = [v11 applicationBundleIdentifier];
            v14 = [v12 folderPathToIconWithBundleIdentifier:v13];

            if ([v14 count] >= 2)
            {
              v15 = [v14 firstObject];
              [v11 setAuxiliaryTopText:v15];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v2 = v20;
    goto LABEL_21;
  }
}

uint64_t __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke_2()
{
  sSRResources_block_invoke_2_sbsservice = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)addSections:(id)sections delayedTopHit:(BOOL)hit
{
  sectionsCopy = sections;
  [(SPFederatedQueryTask *)self handleOptionsForNewSections:?];
  if (hit)
  {
    if (![sectionsCopy count])
    {
      goto LABEL_6;
    }

    mutableSections = [(SPQueryTask *)self mutableSections];
    firstObject = [sectionsCopy firstObject];
    [mutableSections insertObject:firstObject atIndex:0];
  }

  else
  {
    mutableSections = [(SPQueryTask *)self mutableSections];
    [mutableSections addObjectsFromArray:sectionsCopy];
  }

LABEL_6:
  [(SPFederatedQueryTask *)self mergeSections];
}

- (id)unsafeSessionEntityString
{
  mutableSessionEntityString = [(SPFederatedQueryTask *)self mutableSessionEntityString];
  v3 = [mutableSessionEntityString copy];

  return v3;
}

- (id)displayedText
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if ([queryContext hasMarkedText])
  {
    markedTextArray = [queryContext markedTextArray];
    searchString = [markedTextArray componentsJoinedByString:&stru_287C35638];
  }

  else
  {
    searchString = [(SPFederatedQueryTask *)self searchString];
  }

  return searchString;
}

- (void)processAppResults:(id)results maxAppResults:(unint64_t)appResults section:(id)section topHitsIndex:(unint64_t *)index
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  sectionCopy = section;
  bundleIdentifier = [sectionCopy bundleIdentifier];
  v12 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v14 = [bundleIdentifier2 isEqualToString:*MEMORY[0x277D4BEF0]];

  if ((v14 & 1) != 0 || v12)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = sectionCopy;
    results = [sectionCopy results];
    v16 = [results countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
LABEL_5:
      v19 = 0;
      while (1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(results);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        if ([v20 isLocalApplicationResult] && (objc_msgSend(v20, "isAppClip") & 1) == 0)
        {
          title = [v20 title];
          [title setMaxLines:1];

          if (v12)
          {
            ++*index;
            [resultsCopy insertObject:v20 atIndex:?];
          }

          else
          {
            [resultsCopy addObject:v20];
          }

          if ([resultsCopy count] >= appResults)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [results countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v17)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    sectionCopy = v22;
    [v22 setMaxInitiallyVisibleResults:appResults];
  }
}

- (id)unsafeSections
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v4, v5, "unsafeSections", buf, 2u);
  }

  mutableSections = [(SPQueryTask *)self mutableSections];
  v7 = [mutableSections mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  firstObject = [v10 firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];
  v13 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

  if (v13)
  {
    firstObject2 = [v10 firstObject];
    if (firstObject2)
    {
      v15 = firstObject2;
      maxTopHitAppResults = [(SPQueryTask *)self maxTopHitAppResults];
      v27 = 0;
      [(SPFederatedQueryTask *)self processAppResults:0 maxAppResults:maxTopHitAppResults section:v15 topHitsIndex:&v27];
      resultSet = [v15 resultSet];
      v18 = [resultSet count];

      if (v18 > maxTopHitAppResults)
      {
        resultSet2 = [v15 resultSet];
        resultSet3 = [v15 resultSet];
        [resultSet2 removeObjectsInRange:{maxTopHitAppResults, objc_msgSend(resultSet3, "count") - maxTopHitAppResults}];
      }
    }
  }

  v21 = MEMORY[0x277D659A8];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  showMoreInAppInfo = [(SPFederatedQueryTask *)self showMoreInAppInfo];
  v25 = [v21 buildSectionsWithSections:v10 queryContext:queryContext searchInAppInfo:showMoreInAppInfo renderState:{-[SPQueryTask unsafeState](self, "unsafeState")}];

  return v25;
}

- (void)searchQuery:(id)query gotResultSet:(id)set replace:(BOOL)replace partiallyComplete:(BOOL)complete priorityFastPath:(BOOL)path update:(BOOL)update complete:(BOOL)a9 delayedTopHit:(BOOL)self0 unchanged:(BOOL)self1 forceStable:(BOOL)self2 blendingDuration:(double)self3 geoEntityString:(id)self4 supportedAppScopes:(id)self5 showMoreInAppInfo:(id)self6
{
  pathCopy = path;
  completeCopy = complete;
  replaceCopy = replace;
  v85 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  stringCopy = string;
  scopesCopy = scopes;
  infoCopy = info;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v26 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.searchd.frontend.query.end" timeInterval:0 queryId:{objc_msgSend(queryCopy, "queryIdent")}];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  v75 = v26;
  [mEMORY[0x277D4BEB0] reportFeedback:v26 queryId:{objc_msgSend(queryCopy, "queryIdent")}];

  staleResultsTimer = self->_staleResultsTimer;
  if (staleResultsTimer)
  {
    dispatch_source_cancel(staleResultsTimer);
    v29 = self->_staleResultsTimer;
    self->_staleResultsTimer = 0;
  }

  if (completeCopy || update || pathCopy || a9)
  {
    v30 = 2;
    if (!completeCopy)
    {
      v30 = 3;
    }

    if (pathCopy)
    {
      v30 = 1;
    }

    if (a9)
    {
      v31 = 4;
    }

    else
    {
      v31 = v30;
    }

    [(SPQueryTask *)self setUnsafeState:v31];
  }

  v32 = [scopesCopy count];
  v33 = scopesCopy;
  v34 = setCopy;
  v35 = stringCopy;
  if (v32)
  {
    [(SPFederatedQueryTask *)self setSupportedAppScopes:v33];
  }

  v76 = v33;
  if ([infoCopy count])
  {
    [(SPFederatedQueryTask *)self setShowMoreInAppInfo:infoCopy];
  }

  if (!-[SPQueryTask forceStableResults](self, "forceStableResults") && !stable || ([setCopy stableSections], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    resultSections = [setCopy resultSections];
    if (!replaceCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = v36;
  resultSections = [setCopy stableSections];

  if (replaceCopy)
  {
LABEL_25:
    mutableSections = [(SPQueryTask *)self mutableSections];
    [mutableSections removeAllObjects];

    [(SPFederatedQueryTask *)self setMutableSessionEntityString:0];
  }

LABEL_26:
  if (stringCopy)
  {
    [(SPFederatedQueryTask *)self setMutableSessionEntityString:stringCopy];
  }

  if ([resultSections count])
  {
    if (!unchanged)
    {
      v40 = [resultSections mutableCopy];
      [(SPFederatedQueryTask *)self addSections:v40 delayedTopHit:hit];

      kdebug_trace();
      if ([(SPFederatedQueryTask *)self newQuery])
      {
        [(SPFederatedQueryTask *)self setNewQuery:0];
        creationStamp = [queryCopy creationStamp];
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", "ttfr", creationStamp, bundleIdentifier);

        v35 = stringCopy;
      }
    }
  }

  unsafeSections = [(SPFederatedQueryTask *)self unsafeSections];
  v45 = SPLogForSPLogCategoryDefault();
  v46 = v45;
  if (*MEMORY[0x277D4BF48])
  {
    v47 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v47 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v45, v47))
  {
    *buf = 138412290;
    v84 = *&unsafeSections;
    _os_log_impl(&dword_26B71B000, v46, v47, "sections: %@", buf, 0xCu);
  }

  if (!unchanged && [(SPFederatedQueryTask *)self readyToUpdate])
  {
    if (![(SPFederatedQueryTask *)self didReceiveCompleteCallback])
    {
      kdebug_trace();
      v48 = SPLogForSPLogCategoryTelemetry();
      v49 = v48;
      externalID = self->_externalID;
      if (externalID && os_signpost_enabled(v48))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B71B000, v49, OS_SIGNPOST_INTERVAL_END, externalID, "queryUI", " enableTelemetry=YES ", buf, 2u);
      }
    }

    session = [(SPFederatedQueryTask *)self session];
    v52 = MEMORY[0x277D65968];
    queryContext = [queryCopy queryContext];
    queryIntent = [queryContext queryIntent];
    [session finishRanking:unsafeSections blendingDuration:objc_msgSend(v52 spotlightQueryIntent:{"spotlightQueryIntent:", queryIntent), duration}];

    [(SPFederatedQueryTask *)self setDidReceiveCompleteCallback:1];
    if (replaceCopy)
    {
      v55 = "session reset";
    }

    else
    {
      v55 = "session complete";
    }

    creationStamp2 = [queryCopy creationStamp];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v59 = sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", v55, creationStamp2, bundleIdentifier2);

    v60 = SPLogForSPLogCategoryDefault();
    v61 = v60;
    if (*MEMORY[0x277D4BF48])
    {
      v62 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v62 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v60, v62))
    {
      *buf = 134217984;
      v84 = v59 / 1000000000.0;
      _os_log_impl(&dword_26B71B000, v61, v62, "- SearchAgent time %gs", buf, 0xCu);
    }

    v34 = setCopy;
    v35 = stringCopy;
  }

  queryContext2 = [queryCopy queryContext];
  fetchL2Signals = [queryContext2 fetchL2Signals];

  if (fetchL2Signals)
  {
    v65 = MEMORY[0x277CCAAB0];
    mutableSections2 = [(SPQueryTask *)self mutableSections];
    v81 = 0;
    v67 = [v65 archivedDataWithRootObject:mutableSections2 requiringSecureCoding:1 error:&v81];
    v68 = v81;

    if (v68)
    {
      v69 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v68 gotResultSet:v69 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }

      v70 = 0;
    }

    else
    {
      v71 = MEMORY[0x277CCAAC8];
      v72 = MEMORY[0x277CBEB98];
      v82[0] = objc_opt_class();
      v82[1] = objc_opt_class();
      v82[2] = objc_opt_class();
      v82[3] = objc_opt_class();
      v82[4] = objc_opt_class();
      v82[5] = objc_opt_class();
      v82[6] = objc_opt_class();
      v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:7];
      v74 = [v72 setWithArray:v73];
      v80 = 0;
      v70 = [v71 unarchivedObjectOfClasses:v74 fromData:v67 error:&v80];
      v68 = v80;

      if (!v68)
      {
        v34 = setCopy;
        goto LABEL_63;
      }

      v69 = SPLogForSPLogCategoryDefault();
      v34 = setCopy;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v68 gotResultSet:v69 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }
    }

LABEL_63:
    [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:unchanged sections:v70];

    v35 = stringCopy;
    goto LABEL_64;
  }

  [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:unchanged sections:unsafeSections];
LABEL_64:
}

- (void)searchQueryEncounteredError:(id)error
{
  errorCopy = error;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v6 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SPFederatedQueryTask *)errorCopy searchQueryEncounteredError:v6];
  }
}

- (id)retainAndMergeSections:(id)sections forState:(unint64_t)state
{
  sectionsCopy = sections;
  session = [(SPFederatedQueryTask *)self session];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v10 = [queryContext queryKind] - 5;

  if (v10 < 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 1";
    goto LABEL_11;
  }

  if (!session)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 2";
    goto LABEL_11;
  }

  if (state != 1)
  {
    query2 = [(SPQueryTask *)self query];
    [session setLastSections:sectionsCopy forQuery:query2];
LABEL_13:

    goto LABEL_14;
  }

  if (self->_staleResultsFired)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 3";
    goto LABEL_11;
  }

  if ([sectionsCopy count] == 1)
  {
    query2 = [sectionsCopy objectAtIndex:0];
    bundleIdentifier = [query2 bundleIdentifier];
    v16 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

    if (v16)
    {
      query3 = [(SPQueryTask *)self query];
      v18 = [session copyStaleSectionsForQuery:query3];

      if ([v18 count])
      {
        v19 = [v18 mutableCopy];
        v20 = [v18 objectAtIndex:0];
        queryProcessor = [(SPQueryTask *)self queryProcessor];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queryProcessor);
        staleResultsTimer = self->_staleResultsTimer;
        self->_staleResultsTimer = v22;

        v24 = self->_staleResultsTimer;
        v25 = dispatch_time(0, 750000000);
        dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        objc_initWeak(buf, self);
        v26 = self->_staleResultsTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __56__SPFederatedQueryTask_retainAndMergeSections_forState___block_invoke;
        handler[3] = &unk_279CFE300;
        objc_copyWeak(v33, buf);
        v33[1] = 1;
        v27 = sectionsCopy;
        v32 = v27;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_activate(self->_staleResultsTimer);
        bundleIdentifier2 = [v20 bundleIdentifier];
        LODWORD(v26) = [bundleIdentifier2 isEqual:@"com.apple.spotlight.tophits"];

        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 1!", v30, 2u);
          }

          [v19 replaceObjectAtIndex:0 withObject:query2];
        }

        else
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 2!", v30, 2u);
          }

          [v19 insertObject:query2 atIndex:0];
        }

        objc_destroyWeak(v33);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipped 6", buf, 2u);
        }

        v19 = sectionsCopy;
      }

      sectionsCopy = v19;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipped 5", buf, 2u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 4";
LABEL_11:
    _os_log_impl(&dword_26B71B000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
  }

LABEL_14:

  return sectionsCopy;
}

void __56__SPFederatedQueryTask_retainAndMergeSections_forState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Clear stale results -- timeout", v4, 2u);
    }

    *(WeakRetained + 208) = 1;
    dispatch_source_cancel(*(WeakRetained + 25));
    v3 = *(WeakRetained + 25);
    *(WeakRetained + 25) = 0;

    [WeakRetained updateResultsThroughDelegate:0 state:*(a1 + 48) unchanged:0 sections:*(a1 + 32)];
  }
}

- (unint64_t)queryIdent
{
  query = [(SPQueryTask *)self query];
  queryIdent = [query queryIdent];

  return queryIdent;
}

- (SPClientSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)searchQuery:(uint64_t)a1 gotResultSet:(NSObject *)a2 replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B71B000, a2, OS_LOG_TYPE_ERROR, "mutable section archiving error %@", &v2, 0xCu);
}

- (void)searchQuery:(uint64_t)a1 gotResultSet:(NSObject *)a2 replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B71B000, a2, OS_LOG_TYPE_ERROR, "mutable section unarchiving error %@", &v2, 0xCu);
}

- (void)searchQueryEncounteredError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 query];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_26B71B000, a3, OS_LOG_TYPE_ERROR, "Received search error %@ for query %@", &v6, 0x16u);
}

@end