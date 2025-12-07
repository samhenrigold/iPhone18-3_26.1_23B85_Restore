@interface SPCSSearchQuery
+ (void)activate;
+ (void)deactivate;
+ (void)initialize;
- (BOOL)skipResult:(id)result installedApps:(id)apps;
- (SPCSSearchQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context;
- (id).cxx_construct;
- (id)_makeUniqueFetchAttributesWithAttributes:(id)attributes extraAttributes:(id)extraAttributes slowFetchAttributeSet:(id)set;
- (id)disabledBundlesWithParseDisabledBundles:(id)bundles filterEventBundle:(BOOL)bundle;
- (id)filterQueriesWithParseFilterQueries:(id)queries onlyApps:(BOOL)apps filterOrphanedFiles:(BOOL)files;
- (id)prepareRankingItems:(id)items withResultSets:(id)sets totalFeatureComputationTime:(double *)time;
- (void)_sendResponse:(id)response;
- (void)addSearchResult:(const SPResultValueItem *)result withFoundBundleID:(double)d;
- (void)buildFullSearchResults:(id)results withResultSets:(id)sets;
- (void)buildPeopleResults:(id)results withContacts:(id)contacts;
- (void)cancel;
- (void)collectSearchResults:(id)results;
- (void)completed:(id)completed;
- (void)constructResultsForResponse:(BOOL)response;
- (void)dealloc;
- (void)executeQuery;
- (void)foundCompletion:(id)completion scores:(id)scores bundleIDs:(id)ds;
- (void)foundCompletions:(id)completions;
- (void)priorityGatherEnded;
- (void)processSection:(id)section;
- (void)processUserActivitiesForSection:(id)section;
- (void)rankAndSendResultsWithResponseKind:(int)kind withResultSections:(id)sections withResultSets:(id)sets withiCloudDriveResultSet:(id)set withMailResultSet:(id)resultSet withCalendarResultSet:(id)calendarResultSet;
- (void)removeDuplicatesInSection:(id)section;
- (void)sendResponseWithKind:(int)kind;
- (void)slowFetchAttributes:(id)attributes;
- (void)start;
- (void)updateCoreSuggestionsSection:(id)section;
- (void)updateMailAttachmentResults:(id)results;
@end

@implementation SPCSSearchQuery

+ (void)initialize
{
  v56 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = *MEMORY[0x277D65CA0];
    v49[0] = *MEMORY[0x277D65C98];
    v49[1] = v3;
    v5 = *MEMORY[0x277D65CC0];
    v50 = *MEMORY[0x277D65CB8];
    v4 = v50;
    v51 = v5;
    v7 = *MEMORY[0x277D65CB0];
    v52 = *MEMORY[0x277D65CA8];
    v6 = v52;
    v53 = v7;
    v8 = *MEMORY[0x277D65C18];
    v54 = *MEMORY[0x277D65BE0];
    v55 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:8];
    v10 = [v2 setWithArray:v9];

    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];

    v14 = MEMORY[0x277CBEB98];
    v48[0] = v3;
    v48[1] = v4;
    v48[2] = v5;
    v48[3] = v6;
    v48[4] = v7;
    v48[5] = v8;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:6];
    v16 = [v14 setWithArray:v15];

    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v47 = v3;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    v20 = [v18 initWithArray:v19];

    v22 = objc_alloc(MEMORY[0x277CBEB98]);
    v46[0] = v4;
    v46[1] = v5;
    v46[2] = v6;
    v46[3] = v7;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    v24 = [v22 initWithArray:v23];

    v26 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Search.framework"];

    v28 = objc_alloc(MEMORY[0x277CBEBD0]);
    v29 = *MEMORY[0x277D65B88];
    v30 = [v28 initWithSuiteName:*MEMORY[0x277D65B88]];

    uTF8String = [v29 UTF8String];
    v34 = ;

    v36 = dispatch_group_create();

    {
      v38 = NSHomeDirectory();
      v39 = [v38 stringByAppendingString:@"/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking"];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:0 error:0];
    }

    mEMORY[0x277D657E8] = [MEMORY[0x277D657E8] sharedResourcesManager];
    [mEMORY[0x277D657E8] loadAllParameters];

    v43 = dispatch_get_global_queue(17, 0);
    dispatch_group_async(v42, v43, &__block_literal_global_1);

    v44 = rankingAttributeNameArray();
  }
}

void __29__SPCSSearchQuery_initialize__block_invoke()
{
  v28[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBDAB8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithConfiguration:v1];

  v3 = *MEMORY[0x277CBD000];
  v28[0] = *MEMORY[0x277CBD018];
  v28[1] = v3;
  v4 = *MEMORY[0x277CBCFF8];
  v28[2] = *MEMORY[0x277CBD058];
  v28[3] = v4;
  v5 = *MEMORY[0x277CBD098];
  v28[4] = *MEMORY[0x277CBCFC0];
  v28[5] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
  v26 = 0;
  v7 = [v2 _ios_meContactWithKeysToFetch:v6 error:&v26];
  v8 = v26;
  if (v8)
  {
    v9 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __29__SPCSSearchQuery_initialize__block_invoke_cold_1(buf, [v8 code], v9);
    }
  }

  else
  {
    v10 = objc_opt_new();
    v11 = [v7 emailAddresses];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __29__SPCSSearchQuery_initialize__block_invoke_2;
    v24 = &unk_279CFE350;
    v9 = v10;
    v25 = v9;
    [v11 enumerateObjectsUsingBlock:&v21];

    v12 = [v7 identifier];

    if ((v13 & 1) == 0)
    {
      v14 = [v7 identifier];

      v16 = [v9 copy];
    }
  }

  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

    v19 = {;
  }

  if (_ZZZ29__SPCSSearchQuery_initialize_EUb_E34displayNameExactMatchMaskOnceToken[0] != -1)
  {
    __29__SPCSSearchQuery_initialize__block_invoke_cold_2();
  }
}

void __29__SPCSSearchQuery_initialize__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  [v2 addObject:?];
}

void __29__SPCSSearchQuery_initialize__block_invoke_171()
{
  v4 = PRSRankingQueryIndexDictionary();
  v0 = [v4 objectForKeyedSubscript:*MEMORY[0x277D65A70]];
  v1 = [v0 integerValue];
  v2 = 1 << v1;
  if ((v1 & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v1;
  }

  if ((v1 & 0x40) == 0)
  {
    v2 = 0;
  }
}

+ (void)activate
{
  v19 = *MEMORY[0x277D85DE8];
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25F80]];

    v6 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25F90]];

    v8 = SPFastHiddenAppsGetNoBuild();
    v9 = [v8 mutableCopy];

    applicationsExcludedFromUninstall = [MEMORY[0x277D4BE70] applicationsExcludedFromUninstall];
    [v9 minusSet:applicationsExcludedFromUninstall];

    v11 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = [v9 count];
      _os_log_impl(&dword_26B71B000, v11, OS_LOG_TYPE_DEFAULT, "%lu hiddenApps set during activate", &v17, 0xCu);
    }

    allObjects = [v9 allObjects];

    if (+[SPCSSearchQuery activate]::onceToken[0] != -1)
    {
      +[SPCSSearchQuery activate];
    }

    if (v14 <= 0)
    {
      [self preheat];
    }

    else
    {
    }

    copyRenderEngagementCounts = [MEMORY[0x277D65970] copyRenderEngagementCounts];

    if (+[SPCSSearchQuery activate]::mailVipOnceToken[0] != -1)
    {
      +[SPCSSearchQuery activate];
    }
  }
}

void __27__SPCSSearchQuery_activate__block_invoke()
{
  v0 = objc_opt_new();
  v4 = 0;
  v1 = [v0 loadDockAppListWithError:&v4];
  v2 = v4;
  if (v1)
  {
    [MEMORY[0x277D65838] setDockApps:v1];
  }

  if (v2)
  {
    v3 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __27__SPCSSearchQuery_activate__block_invoke_cold_1();
    }
  }

  if (_os_feature_enabled_impl())
  {
  }
}

+ (void)deactivate
{
  {
    [MEMORY[0x277D65978] reloadRankingParametersFromTrial];
    [MEMORY[0x277D65978] getSuggestionsRankingThresholds];
    v2 = SISetCompletionRankingWeights();
    [MEMORY[0x277D65838] clearState];
  }
}

- (SPCSSearchQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context
{
  v21.receiver = self;
  v21.super_class = SPCSSearchQuery;
  v6 = [(SPKQuery *)&v21 initWithUserQuery:query queryGroupId:id options:options queryContext:context];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("SPCSSearchQuery", v8);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_overcommit();
    v13 = dispatch_queue_create("SPCSSearchQuery rankq", v12);
    rankQueue = v6->_rankQueue;
    v6->_rankQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("Feedback Queue", v15);
    feedbackQueue = v6->_feedbackQueue;
    v6->_feedbackQueue = v16;

    v6->_csQueryLock._os_unfair_lock_opaque = 0;
    v6->_suggestionsLock._os_unfair_lock_opaque = 0;
    v6->_timeoutTimerLock._os_unfair_lock_opaque = 0;
    v18 = objc_opt_new();
    rankingInfo = v6->_rankingInfo;
    v6->_rankingInfo = v18;
  }

  return v6;
}

- (void)start
{
  if (![(SPKQuery *)self isStarted]&& ![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:1])
  {
    v6.receiver = self;
    v6.super_class = SPCSSearchQuery;
    [(SPKQuery *)&v6 start];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SPCSSearchQuery_start__block_invoke;
    block[3] = &unk_279CFE378;
    block[4] = self;
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(dispatchQueue, v4);
  }
}

void *__24__SPCSSearchQuery_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 executeQuery];
  }

  return result;
}

- (void)cancel
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_timeoutTimerLock);
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      v4 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    os_unfair_lock_unlock(&self->_timeoutTimerLock);
  }

  delegate = [(SPKQuery *)self delegate];
  queryIdent = [delegate queryIdent];
  clientBundleID = [delegate clientBundleID];
  v21 = @"queryID";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:queryIdent];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  MEMORY[0x26D67EFE0]();

  queryContext = [(SPKQuery *)self queryContext];
  LOBYTE(v9) = [queryContext isSearchToolClient];

  if ((v9 & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:self->_feedback];
    feedbackQueue = self->_feedbackQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __25__SPCSSearchQuery_cancel__block_invoke;
    v17[3] = &unk_279CFE3A0;
    v18 = v11;
    v20 = queryIdent;
    v19 = clientBundleID;
    v13 = v11;
    md_dispatch_async_propagating(feedbackQueue, v17);
  }

  os_unfair_lock_lock(&self->_csQueryLock);
  atomic_store(1u, &self->_queryCanceled);
  v14 = self->_csQuery;
  csQuery = self->_csQuery;
  self->_csQuery = 0;

  os_unfair_lock_unlock(&self->_csQueryLock);
  [(CSSearchQuery *)v14 cancel];
  v16.receiver = self;
  v16.super_class = SPCSSearchQuery;
  [(SPKQuery *)&v16 cancel];
}

void __25__SPCSSearchQuery_cancel__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D4BEC0] sharedProxy];
  [v2 sendFeedbackType:6 feedback:a1[4] queryId:a1[6] clientID:a1[5]];
}

- (void)_sendResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    responseHandler = [(SPKQuery *)self responseHandler];

    if (responseHandler)
    {
      sections = [responseCopy sections];
      v7 = [sections count];

      if (v7)
      {
        [responseCopy setTopHitIsIn:1];
      }

      delegate = [(SPKQuery *)self delegate];
      queryIdent = [delegate queryIdent];
      clientBundleID = [delegate clientBundleID];
      v11 = MEMORY[0x277D65968];
      queryContext = [(SPKQuery *)self queryContext];
      queryUnderstandingOutput = [queryContext queryUnderstandingOutput];
      v14 = [v11 queryUnderstandingParseWithQueryUnderstanding:queryUnderstandingOutput];

      queryContext2 = [(SPKQuery *)self queryContext];
      LOBYTE(queryUnderstandingOutput) = [queryContext2 isSearchToolClient];

      if ((queryUnderstandingOutput & 1) == 0)
      {
        v16 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:self->_feedback queryUnderstandingParse:v14];
        objc_initWeak(&location, self);
        objc_copyWeak(v20, &location);
        v20[1] = queryIdent;
        v19 = clientBundleID;
        v17 = v16;
        md_tracing_dispatch_async_propagating();

        objc_destroyWeak(v20);
        objc_destroyWeak(&location);
      }

      responseHandler2 = [(SPKQuery *)self responseHandler];
      (responseHandler2)[2](responseHandler2, responseCopy);
    }
  }
}

void __33__SPCSSearchQuery__sendResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v3 sendFeedbackType:6 feedback:*(a1 + 32) queryId:*(a1 + 56) clientID:*(a1 + 40)];

    v4 = v5[60];
    v5[60] = 0;

    WeakRetained = v5;
  }
}

- (void)dealloc
{
  csQuery = self->_csQuery;
  if (csQuery)
  {
    [(CSSearchQuery *)csQuery cancel];
  }

  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_timeoutTimerLock);
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      v5 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    os_unfair_lock_unlock(&self->_timeoutTimerLock);
  }

  v6.receiver = self;
  v6.super_class = SPCSSearchQuery;
  [(SPCSSearchQuery *)&v6 dealloc];
}

- (BOOL)skipResult:(id)result installedApps:(id)apps
{
  v41 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  appsCopy = apps;
  attributeSet = [resultCopy attributeSet];
  bundleID = [attributeSet bundleID];
  uniqueIdentifier = [attributeSet uniqueIdentifier];
  attributeDictionary = [attributeSet attributeDictionary];
  fpBundleIDs = [MEMORY[0x277CC33F0] fpBundleIDs];
  if (!bundleID)
  {
    v14 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPCSSearchQuery skipResult:installedApps:];
    }

    goto LABEL_10;
  }

  if (![bundleID isEqualToString:*MEMORY[0x277D4BEF0]])
  {
    if ([bundleID isEqualToString:*MEMORY[0x277D65CE8]])
    {
      relatedAppBundleIdentifier = [attributeSet relatedAppBundleIdentifier];
      if (relatedAppBundleIdentifier)
      {
        if ([(NSSet *)self->_disabledAppSet containsObject:relatedAppBundleIdentifier])
        {
          v18 = SPLogForSPLogCategoryDefault();
          v19 = v18;
          if (*MEMORY[0x277D4BF48])
          {
            v20 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v20 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v18, v20))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v38 = uniqueIdentifier;
          v39 = 2112;
          v40 = relatedAppBundleIdentifier;
          v21 = "Skipping shortcut %@ for disabled app %@";
          goto LABEL_44;
        }

        {
          v28 = SPLogForSPLogCategoryDefault();
          v19 = v28;
          if (*MEMORY[0x277D4BF48])
          {
            v20 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v20 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v28, v20))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v38 = uniqueIdentifier;
          v39 = 2112;
          v40 = relatedAppBundleIdentifier;
          v21 = "Skipping shortcut %@ for restricted app %@";
LABEL_44:
          _os_log_impl(&dword_26B71B000, v19, v20, v21, buf, 0x16u);
          goto LABEL_70;
        }
      }
    }

    else if ([bundleID isEqualToString:*MEMORY[0x277D65B98]])
    {
      relatedAppBundleIdentifier = [attributeSet relatedAppBundleIdentifier];
      if (relatedAppBundleIdentifier)
      {
        if ([(NSSet *)self->_disabledAppSet containsObject:relatedAppBundleIdentifier])
        {
          v22 = SPLogForSPLogCategoryDefault();
          v19 = v22;
          if (*MEMORY[0x277D4BF48])
          {
            v23 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v23 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v22, v23))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v38 = uniqueIdentifier;
          v39 = 2112;
          v40 = relatedAppBundleIdentifier;
          v24 = "Skipping settings %@ for disabled app %@";
        }

        {
          v29 = SPLogForSPLogCategoryDefault();
          v19 = v29;
          if (*MEMORY[0x277D4BF48])
          {
            v23 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v23 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v29, v23))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v38 = uniqueIdentifier;
          v39 = 2112;
          v40 = relatedAppBundleIdentifier;
          v24 = "Skipping settings %@ for restricted app %@";
        }

        else
        {
          if ([appsCopy containsObject:relatedAppBundleIdentifier])
          {
            goto LABEL_53;
          }

          v34 = SPLogForSPLogCategoryDefault();
          v19 = v34;
          if (*MEMORY[0x277D4BF48])
          {
            v23 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v23 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v34, v23))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v38 = uniqueIdentifier;
          v39 = 2112;
          v40 = relatedAppBundleIdentifier;
          v24 = "Skipping settings %@ for non-installed app %@";
        }

        _os_log_impl(&dword_26B71B000, v19, v23, v24, buf, 0x16u);
LABEL_70:

        goto LABEL_10;
      }
    }

    else
    {
      if (![bundleID isEqualToString:*MEMORY[0x277D65A90]])
      {
        goto LABEL_54;
      }

      queryContext = [(SPKQuery *)self queryContext];
      isSearchToolClient = [queryContext isSearchToolClient];

      if (!isSearchToolClient)
      {
        goto LABEL_54;
      }

      relatedAppBundleIdentifier = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x277CC2A00]];
      if (!relatedAppBundleIdentifier)
      {
        v19 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SPCSSearchQuery skipResult:v19 installedApps:?];
        }

        goto LABEL_70;
      }

      queryContext2 = [(CSSearchQuery *)self->_csQuery queryContext];
      disableBundles = [queryContext2 disableBundles];
      v35 = [disableBundles containsObject:relatedAppBundleIdentifier];

      if (v35)
      {
        v19 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = relatedAppBundleIdentifier;
          _os_log_impl(&dword_26B71B000, v19, OS_LOG_TYPE_DEFAULT, "[ProtectedApps][personal answers] event extracted from disabled source bundle %@ was filtered out", buf, 0xCu);
        }

        goto LABEL_70;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  if (![(NSSet *)self->_disabledAppSet containsObject:uniqueIdentifier])
  {
    {
      v13 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = uniqueIdentifier;
        _os_log_impl(&dword_26B71B000, v13, OS_LOG_TYPE_DEFAULT, "Skipping restricted app %@", buf, 0xCu);
      }

      goto LABEL_58;
    }

LABEL_54:
    queryContext3 = [(CSSearchQuery *)self->_csQuery queryContext];
    disableBundles2 = [queryContext3 disableBundles];
    if ([disableBundles2 containsObject:bundleID])
    {
      v32 = [fpBundleIDs containsObject:bundleID];

      if ((v32 & 1) == 0)
      {
        v13 = SPLogForSPLogCategoryDefault();
        v33 = *MEMORY[0x277D4BF50];
        if (os_log_type_enabled(v13, ((*MEMORY[0x277D4BF50] & 1) == 0)))
        {
          *buf = 138412290;
          v38 = bundleID;
          _os_log_impl(&dword_26B71B000, v13, ((v33 & 1) == 0), "[ProtectedApps] item from disabled bundle %@ was found", buf, 0xCu);
        }

        goto LABEL_58;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_11;
  }

  v13 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = uniqueIdentifier;
    _os_log_impl(&dword_26B71B000, v13, OS_LOG_TYPE_DEFAULT, "Skipping disabled app %@", buf, 0xCu);
  }

LABEL_58:

LABEL_10:
  v15 = 1;
LABEL_11:

  return v15;
}

- (void)collectSearchResults:(id)results
{
  v20 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = SPCopyVisibleApps();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = resultsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![(SPCSSearchQuery *)self skipResult:v11 installedApps:v5, v15])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  queryContext = [(SPKQuery *)self queryContext];
  isPeopleSearch = [(SPCSSearchQuery *)self isPeopleSearch];
  queryContext2 = [(CSSearchQuery *)self->_csQuery queryContext];
  collectIndexResults(v6, queryContext, isPeopleSearch, 300, [queryContext2 maxCount], &self->_indexResultsRegistry);
}

- (void)addSearchResult:(const SPResultValueItem *)result withFoundBundleID:(double)d
{
  v113 = *MEMORY[0x277D85DE8];
  v100 = *&a5;
  v93 = *result;
  attributeSet = [*(result + 8) attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  uniqueIdentifier = [attributeSet uniqueIdentifier];
  if ([v100 isEqualToString:@"com.apple.spotlight.category"])
  {
    v15 = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x277CC3000]];
    v16 = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x277CC2FF8]];
    v17 = objc_opt_new();
    if (v15)
    {
      if ([v15 count])
      {
        if (v16)
        {
          v18 = [v16 count];
          if (v18 == [v15 count])
          {
            for (i = 0; [v15 count] > i; ++i)
            {
              v20 = [v15 objectAtIndex:i];
              userQueryString = [(SPKQuery *)self userQueryString];
              v22 = [v20 isEqualToString:userQueryString];

              if (v22)
              {
                v23 = [v16 objectAtIndex:i];
                [v17 addObject:v23];
              }
            }

            if ([v17 count])
            {
              categoryEngagements = [(PRSRankingConfiguration *)self->_rankingInfo categoryEngagements];
              [categoryEngagements setValue:v17 forKey:uniqueIdentifier];
            }
          }
        }
      }
    }
  }

  v99 = [attributeDictionary objectForKey:*MEMORY[0x277CC2678]];
  queryContext = [(SPKQuery *)self queryContext];
  v26 = +[SPSearchTopHitResult attrHasPhotosAlbumMemoryResult:isSearchToolClient:](SPSearchTopHitResult, "attrHasPhotosAlbumMemoryResult:isSearchToolClient:", attributeDictionary, [queryContext isSearchToolClient]);

  if (v99)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  if (v27)
  {
    v98 = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x277CC2B38]];
    v28 = [v100 copy];
    v29 = [v98 length];
    v30 = *MEMORY[0x277CC3238];
    if (v29)
    {
      v31 = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x277CC3238]];
      if (v31)
      {
      }

      else if (([v100 isEqualToString:*MEMORY[0x277D65C00]] & 1) == 0)
      {
        v37 = *MEMORY[0x277D65A80];

        v28 = v37;
        goto LABEL_28;
      }
    }

    v34 = [attributeDictionary objectForKeyedSubscript:v30];
    if (v34)
    {
      v35 = [attributeDictionary objectForKeyedSubscript:*MEMORY[0x277CC25D0]];
      v36 = [v35 isEqualToString:@"com.apple.DocumentManager"];

      if (v36)
      {
LABEL_70:

        goto LABEL_71;
      }
    }

LABEL_28:
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v89 = v28;
    v38 = [(NSArray *)self->_resultAttrs objectsAtIndexes:self->_resultAttrIndexSet];
    v39 = 0;
    v40 = [v38 countByEnumeratingWithState:&v105 objects:v111 count:16];
    if (v40)
    {
      v41 = *v106;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v106 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [attributeDictionary objectForKey:*(*(&v105 + 1) + 8 * j)];
          v44 = v43 != 0;

          v39 += v44;
        }

        v40 = [v38 countByEnumeratingWithState:&v105 objects:v111 count:16];
      }

      while (v40);
    }

    v45 = SSCompactRankingAttrsAlloc();
    resultAttrIndexSet = self->_resultAttrIndexSet;
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __53__SPCSSearchQuery_addSearchResult_withFoundBundleID___block_invoke;
    v101[3] = &unk_279CFE3F0;
    v47 = attributeDictionary;
    v102 = v47;
    selfCopy = self;
    v104 = v45;
    [(NSIndexSet *)resultAttrIndexSet enumerateIndexesUsingBlock:v101];
    v48 = [objc_alloc(MEMORY[0x277D65830]) initWithAttrs:v45];
    v91 = v48;
    v49 = [v47 objectForKeyedSubscript:*MEMORY[0x277CC3068]];
    v92 = [v47 objectForKeyedSubscript:*MEMORY[0x277CC2500]];
    v87 = [v47 objectForKeyedSubscript:*MEMORY[0x277CC2ED8]];
    if (v87 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v87 integerValue] >= 1 && (objc_msgSend(v92, "isEqualToString:", *MEMORY[0x277D65B58]) & 1) == 0)
    {
      if ([v92 isEqualToString:*MEMORY[0x277D65AD0]])
      {
        v85 = 100663296;
      }

      else if ([v92 isEqualToString:*MEMORY[0x277D65AE0]])
      {
        v85 = 167772160;
      }

      else if (([v92 isEqualToString:*MEMORY[0x277D65A80]] & 1) != 0 || (objc_msgSend(v92, "isEqualToString:", *MEMORY[0x277D65AB0]) & 1) != 0 || objc_msgSend(v92, "isEqualToString:", *MEMORY[0x277D65AA0]))
      {
        v85 = 301989888;
      }

      else
      {
        v85 = 0x2000000;
      }

      [v48 setBundleIDType:v85];
      v86 = [objc_alloc(MEMORY[0x277D65830]) initWithAttrs:SSCompactRankingAttrsCopy()];
      [v86 setBundleIDType:{objc_msgSend(v48, "bundleIDType")}];
      [v86 setSectionBundleIdentifier:*MEMORY[0x277D65C18]];
      v95 = v86;
      v50 = 1;
      if (v49)
      {
LABEL_40:
        if ([v49 count] == 6)
        {
          if ([v98 length])
          {
            [v48 setSectionBundleIdentifier:v92];
          }

          itemRanker = [(SPCSSearchQuery *)self itemRanker];
          [itemRanker setRenderEngagementFeaturesForItem:v48 counts:v49 isRender:1 bundleDict:self->_renderEngagementCounts];

          itemRanker2 = [(SPCSSearchQuery *)self itemRanker];
          [itemRanker2 setRenderEngagementFeaturesForItem:v95 counts:v49 isRender:1 bundleDict:self->_renderEngagementCounts];
        }
      }
    }

    else
    {
      v50 = 0;
      v95 = 0;
      if (v49)
      {
        goto LABEL_40;
      }
    }

    v53 = [v47 objectForKeyedSubscript:*MEMORY[0x277CC27B0]];

    v90 = v53;
    if (v53)
    {
      v54 = v53;
      if ([v53 count] == 6)
      {
        if ([v98 length])
        {
          [v48 setSectionBundleIdentifier:v92];
        }

        itemRanker3 = [(SPCSSearchQuery *)self itemRanker];
        [itemRanker3 setRenderEngagementFeaturesForItem:v48 counts:v54 isRender:0 bundleDict:self->_renderEngagementCounts];

        itemRanker4 = [(SPCSSearchQuery *)self itemRanker];
        [itemRanker4 setRenderEngagementFeaturesForItem:v95 counts:v90 isRender:0 bundleDict:self->_renderEngagementCounts];
      }
    }

    v57 = [SPSearchTopHitResult alloc];
    attributeSet2 = [*(result + 8) attributeSet];
    v60 = *result;
    v59 = *(result + 1);
    v61 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(result + 2)];
    protection = [*(result + 8) protection];
    v88 = [(SPSearchTopHitResult *)v57 initWithRankingItem:v91 attributeSet:attributeSet2 score:v60 interestingDate:v59 dataclass:v61 bundleID:protection, v89];

    v63 = v91;
    v64 = SPL1Threshold();
    if (v93 < __PAIR128__(v65, v64))
    {
      [v91 setEligibleForDemotion:1];
    }

    if ([v99 hasPrefix:@"com.apple.siri."])
    {
      l2FeatureVector = [v91 L2FeatureVector];
      [l2FeatureVector setIsSiriAction:1];
    }

    v67 = v89;
    memset(buf, 0, sizeof(buf));
    v94 = v67;
    v68 = v67;
    std::string::basic_string[abi:nn200100]<0>(buf, [v94 UTF8String]);
    if (std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::find<std::string>(&self->_bundleIdToResultsMap.map.__table_.__bucket_list_.__ptr_, buf))
    {
      v110 = buf;
      v69 = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_bundleIdToResultsMap.map.__table_.__bucket_list_.__ptr_, buf, &std::piecewise_construct, &v110, &v109);
    }

    else
    {
      v70 = objc_opt_new();
      [v70 setDomain:1];
      [v70 setBundleIdentifier:v94];
      v71 = objc_opt_new();
      v72 = v70;
      v110 = buf;
      v73 = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_bundleIdToResultsMap.map.__table_.__bucket_list_.__ptr_, buf, &std::piecewise_construct, &v110, &v109);
      v74 = v73[5];
      v73[5] = v72;

      v75 = v73[6];
      v73[6] = v71;

      v110 = buf;
      v69 = std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_bundleIdToResultsMap.map.__table_.__bucket_list_.__ptr_, buf, &std::piecewise_construct, &v110, &v109);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    [v69[6] addObject:v88];
    if (v50)
    {
      v76 = [SPSearchTopHitResult alloc];
      attributeSet3 = [*(result + 8) attributeSet];
      v79 = *result;
      v78 = *(result + 1);
      v80 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(result + 2)];
      protection2 = [*(result + 8) protection];
      v82 = *MEMORY[0x277D65C18];
      v83 = [(SPSearchTopHitResult *)v76 initWithRankingItem:v95 attributeSet:attributeSet3 score:v79 interestingDate:v78 dataclass:v80 bundleID:protection2, *MEMORY[0x277D65C18]];

      v63 = v91;
      [v95 setEligibleForDemotion:{objc_msgSend(v91, "eligibleForDemotion")}];
      if ([v92 isEqualToString:*MEMORY[0x277D65AD0]])
        v84 = {;
        [v84 addObject:v83];
      }

      else if ([v92 isEqualToString:*MEMORY[0x277D65AE0]])
        v84 = {;
        [v84 addObject:v83];
      }

      else if (([v92 isEqualToString:*MEMORY[0x277D65A80]] & 1) != 0 || (objc_msgSend(v92, "isEqualToString:", *MEMORY[0x277D65AB0]) & 1) != 0 || (objc_msgSend(v92, "isEqualToString:", *MEMORY[0x277D65AA0]) & 1) != 0 || objc_msgSend(v92, "isEqualToString:", *MEMORY[0x277D65A98]))
        v84 = {;
        [v84 addObject:v83];
      }

      else
        v84 = {;
        [v84 addObject:v83];
      }
    }

    v28 = v94;
    goto LABEL_70;
  }

  v32 = SPLogForSPLogCategoryDefault();
  v33 = *MEMORY[0x277D4BF50];
  v98 = v32;
  if (os_log_type_enabled(v32, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 138412546;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = v100;
    _os_log_impl(&dword_26B71B000, v32, ((v33 & 1) == 0), "No UTI type for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
  }

LABEL_71:
}

void __53__SPCSSearchQuery_addSearchResult_withFoundBundleID___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = [*(a1[5] + 400) objectAtIndexedSubscript:a2];
  v10 = [v4 objectForKey:v5];

  if (v10)
  {
    v6 = [*(a1[5] + 400) objectAtIndexedSubscript:a2];
    v7 = rankingAttributeIndexForName();

    v8 = v7 == 101 || v7 == 13;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v10 absoluteString];
      SSCompactRankingAttrsInsertValue();
    }

    else
    {
      SSCompactRankingAttrsInsertValue();
    }
  }
}

- (void)constructResultsForResponse:(BOOL)response
{
  queryContext = [(SPKQuery *)self queryContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SPCSSearchQuery_constructResultsForResponse___block_invoke;
  v5[3] = &unk_279CFE418;
  v5[4] = self;
  IndexResultsRegistry::processResults(&self->_indexResultsRegistry, queryContext, v5);
}

void __47__SPCSSearchQuery_constructResultsForResponse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addSearchResult:a3 withFoundBundleID:*(a2 + 8)];

  v4 = *(a3 + 32);
}

- (void)updateMailAttachmentResults:(id)results
{
  v85 = *MEMORY[0x277D85DE8];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  resultsCopy = results;
  v4 = [resultsCopy countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v4)
  {
    dictionary = 0;
    v53 = 0;
    v54 = *v76;
    v6 = *MEMORY[0x277CC3048];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v76 != v54)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v8 = *(*(&v75 + 1) + 8 * i);
        attributeSet = [v8 attributeSet];
        attributeDictionary = [attributeSet attributeDictionary];
        v11 = [attributeDictionary objectForKeyedSubscript:v6];

        if (v11)
        {
          if (!dictionary)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];

            v53 = dictionary2;
          }

          dataclass = [v8 dataclass];
          array = [dictionary objectForKeyedSubscript:dataclass];

          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            dataclass2 = [v8 dataclass];
            [dictionary setObject:array forKeyedSubscript:dataclass2];
          }

          v16 = [v53 objectForKeyedSubscript:v11];
          if (!v16)
          {
            array2 = [MEMORY[0x277CBEB18] array];
            [v53 setObject:array2 forKeyedSubscript:v11];
            v16 = array2;
            [array addObject:v11];
          }

          [v16 addObject:v8];
        }
      }

      v4 = [resultsCopy countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v4);

    if (!dictionary)
    {
      v37 = 0;
      goto LABEL_50;
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v18 = dictionary;
    v19 = [v18 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v19)
    {
      v38 = v19;
      v40 = *v72;
      obj = v18;
      v39 = *MEMORY[0x277D65BF8];
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v72 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v71 + 1) + 8 * j);
          v42 = [obj objectForKeyedSubscript:v20];
          v43 = rankingAttributeNameArray();
          v21 = dispatch_group_create();
          dispatch_group_enter(v21);
          array3 = [MEMORY[0x277CBEB18] array];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke;
          v66[3] = &unk_279CFE440;
          v49 = v42;
          v67 = v49;
          v46 = v43;
          v68 = v46;
          v44 = array3;
          v69 = v44;
          group = v21;
          v70 = group;
          v48 = MEMORY[0x26D67F7A0](v66);
          defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
          [defaultSearchableIndex slowFetchAttributes:v46 protectionClass:v20 bundleID:v39 identifiers:v49 completionHandler:v48];

          v24 = dispatch_time(0, 300000000);
          if (dispatch_group_wait(group, v24))
          {
            v25 = SPLogForSPLogCategoryQuery();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v82 = v20;
              _os_log_error_impl(&dword_26B71B000, v25, OS_LOG_TYPE_ERROR, "[Mail Attachment] timed out fetching attributes for pc:%@.", buf, 0xCu);
            }

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v26 = v49;
            v52 = [v26 countByEnumeratingWithState:&v59 objects:v80 count:16];
            if (v52)
            {
              v50 = v26;
              v51 = *v60;
              do
              {
                for (k = 0; k != v52; ++k)
                {
                  if (*v60 != v51)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v28 = [v53 objectForKeyedSubscript:*(*(&v59 + 1) + 8 * k)];
                  v57 = 0u;
                  v58 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v29 = v28;
                  v30 = [v29 countByEnumeratingWithState:&v55 objects:v79 count:16];
                  if (v30)
                  {
                    v31 = *v56;
                    do
                    {
                      for (m = 0; m != v30; ++m)
                      {
                        if (*v56 != v31)
                        {
                          objc_enumerationMutation(v29);
                        }

                        v33 = *(*(&v55 + 1) + 8 * m);
                        [resultsCopy removeObject:v33];
                        v34 = SPLogForSPLogCategoryQuery();
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                        {
                          attributeSet2 = [v33 attributeSet];
                          uniqueIdentifier = [attributeSet2 uniqueIdentifier];
                          *buf = 138412290;
                          v82 = uniqueIdentifier;
                          _os_log_error_impl(&dword_26B71B000, v34, OS_LOG_TYPE_ERROR, "[Mail Attachment] removed result:%@", buf, 0xCu);
                        }
                      }

                      v30 = [v29 countByEnumeratingWithState:&v55 objects:v79 count:16];
                    }

                    while (v30);
                  }
                }

                v52 = [v50 countByEnumeratingWithState:&v59 objects:v80 count:16];
              }

              while (v52);
              v26 = v50;
            }
          }

          else
          {
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_226;
            v63[3] = &unk_279CFE468;
            v64 = v44;
            v65 = v53;
            [v49 enumerateObjectsUsingBlock:v63];

            v26 = v64;
          }
        }

        v38 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v38);
      v18 = obj;
    }

    v37 = v18;
  }

  else
  {
    v37 = 0;
    v53 = 0;
    v18 = resultsCopy;
  }

LABEL_50:
}

void __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v3 = [v17 count];
  v16 = a1;
  if (v3 == [*(a1 + 32) count])
  {
    v18 = 0;
    v4 = *MEMORY[0x277CBEEE8];
    while (v18 < [v17 count])
    {
      v5 = [v17 objectAtIndexedSubscript:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = objc_opt_new();
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = *(v16 + 40);
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          v9 = 0;
          v10 = *v20;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * i);
              v13 = [v5 objectAtIndexedSubscript:v9];
              if (v13 != v4)
              {
                [v6 setObject:v13 forKey:v12];
              }

              ++v9;
            }

            v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v8);
        }

        v14 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v6];
        [*(v16 + 48) addObject:v14];
      }

      ++v18;
    }

    dispatch_group_leave(*(v16 + 56));
  }

  else
  {
    v15 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_cold_1(buf, [*(a1 + 32) count], objc_msgSend(v17, "count"), v15);
    }
  }
}

void __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_226(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [*(a1 + 40) objectForKeyedSubscript:v5];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v7 = v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 attributeSet];
        v13 = [v12 attributeDictionary];
        [v6 addAttributesFromDictionaryWithOutOverWriting:v13];

        [v11 setAttributeSet:v6];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)prepareRankingItems:(id)items withResultSets:(id)sets totalFeatureComputationTime:(double *)time
{
  v152 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  setsCopy = sets;
  itemRanker = [(SPCSSearchQuery *)self itemRanker];
  queryContext = [(SPKQuery *)self queryContext];
  [itemRanker parseQUQuery:queryContext];

  v116 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v9 = 0;
  v126 = *MEMORY[0x277CBEEE8];
  while (v9 < [itemsCopy count])
  {
    [v116 addObject:v126];
    ++v9;
  }

  v113 = 0;
  v105 = *MEMORY[0x277D65AB8];
  v103 = v132;
  v104 = *MEMORY[0x277D65AD0];
  *&v10 = 67109378;
  v102 = v10;
  selfCopy = self;
  while (v113 < [itemsCopy count])
  {
    v117 = [itemsCopy objectAtIndexedSubscript:v113];
    v106 = [setsCopy objectAtIndexedSubscript:v113];
    bundleIdentifier = [v117 bundleIdentifier];
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
    v13 = objc_opt_new();
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v14 = v106;
    v15 = [v14 countByEnumeratingWithState:&v137 objects:v151 count:16];
    if (v15)
    {
      v16 = *v138;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v138 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v137 + 1) + 8 * i);
          rankingItem = [v18 rankingItem];
          v20 = rankingItem == 0;

          if (!v20)
          {
            rankingItem2 = [v18 rankingItem];
            [rankingItem2 setSectionBundleIdentifier:bundleIdentifier];

            rankingItem3 = [v18 rankingItem];
            [v13 addObject:rankingItem3];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v137 objects:v151 count:16];
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    itemRanker2 = [(SPCSSearchQuery *)selfCopy itemRanker];
    bundleIdentifier2 = [v117 bundleIdentifier];
    [itemRanker2 prepareItems:v13 inBundle:bundleIdentifier2];

    *time = CFAbsoluteTimeGetCurrent() - Current + *time;
    if (IsSyndicatedPhotos)
    {
      v109 = objc_opt_new();
      v110 = objc_opt_new();
      v122 = [v14 count];
      itemRanker3 = [(SPCSSearchQuery *)selfCopy itemRanker];
      isNLSearch = [itemRanker3 isNLSearch];

      itemRanker4 = [(SPCSSearchQuery *)selfCopy itemRanker];
      v28 = [itemRanker4 queryTermCount] == 0;

      if (v28)
      {
        v114 = 0;
      }

      else
      {
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v29 = v14;
        v30 = [v29 countByEnumeratingWithState:&v133 objects:v150 count:16];
        if (v30)
        {
          v31 = *v134;
          while (2)
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v134 != v31)
              {
                objc_enumerationMutation(v29);
              }

              rankingItem4 = [*(*(&v133 + 1) + 8 * j) rankingItem];
              v34 = rankingItem4;
              if (rankingItem4)
              {
                l2FeatureVector = [rankingItem4 L2FeatureVector];
                [l2FeatureVector scoreForFeature:1929];
                v37 = v36;

                if (v37 == 1.0)
                {

                  v114 = 1;
                  goto LABEL_29;
                }
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v133 objects:v150 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        v114 = 0;
LABEL_29:
      }

      if (v122)
      {
        v111 = 0;
        v124 = 0;
        for (k = 0; k != v122; ++k)
        {
          v39 = [v14 objectAtIndex:k];
          rankingItem5 = [v39 rankingItem];
          v41 = rankingItem5;
          if (rankingItem5)
          {
            l2FeatureVector2 = [rankingItem5 L2FeatureVector];
            [l2FeatureVector2 scoreForFeature:2392];
            v44 = v43;

            l2FeatureVector3 = [v41 L2FeatureVector];
            [l2FeatureVector3 scoreForFeature:1929];
            v47 = v46;

            l2FeatureVector4 = [v41 L2FeatureVector];
            [l2FeatureVector4 scoreForFeature:2380];
            v50 = v49;

            if (v44 == 1.0)
            {
              v51 = isNLSearch;
            }

            else
            {
              v51 = 0;
            }

            if (!((v114 ^ 1) & 1 | (v47 == 1.0)) && (v51 & 1) == 0 || (v47 == 1.0 ? (v57 = 1) : (v57 = v114), (v57 & 1) == 0 && v50 != 1.0 && ([v41 photosExactMatch] & 1) == 0 && ((objc_msgSend(v41, "photosMatch") | v51) & 1) == 0))
            {
              if ((*(selfCopy + 448) & 2) != 0)
              {
                v52 = SPLogForSPLogCategoryDefault();
                v58 = *MEMORY[0x277D4BF50];
                if (os_log_type_enabled(v52, ((*MEMORY[0x277D4BF50] & 1) == 0)))
                {
                  identifier = [v41 identifier];
                  photosExactMatch = [v41 photosExactMatch];
                  photosMatch = [v41 photosMatch];
                  *buf = 138413314;
                  *v143 = identifier;
                  *&v143[8] = 1024;
                  *&v143[10] = photosExactMatch;
                  v144 = 1024;
                  v145 = photosMatch;
                  v146 = 2048;
                  v147 = v44;
                  v148 = 1024;
                  v149 = isNLSearch;
                  _os_log_impl(&dword_26B71B000, v52, ((v58 & 1) == 0), "#####=== [Pommes Ranking] photo filtering ignored id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);
                }
              }

              else
              {
                [v109 addIndex:k];
                [v110 addIndex:v124];
                v52 = SPLogForSPLogCategoryDefault();
                v53 = *MEMORY[0x277D4BF50];
                v111 = 1;
                if (os_log_type_enabled(v52, ((*MEMORY[0x277D4BF50] & 1) == 0)))
                {
                  identifier2 = [v41 identifier];
                  photosExactMatch2 = [v41 photosExactMatch];
                  photosMatch2 = [v41 photosMatch];
                  *buf = 138413314;
                  *v143 = identifier2;
                  *&v143[8] = 1024;
                  *&v143[10] = photosExactMatch2;
                  v144 = 1024;
                  v145 = photosMatch2;
                  v146 = 2048;
                  v147 = v44;
                  v148 = 1024;
                  v149 = isNLSearch;
                  _os_log_impl(&dword_26B71B000, v52, ((v53 & 1) == 0), "#####=== photo filtered id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);

                  v111 = 1;
                }
              }
            }

            ++v124;
          }
        }

        if (v111)
        {
          [v13 removeObjectsAtIndexes:v110];
          [v14 removeObjectsAtIndexes:v109];
        }
      }
    }

    resultsCount = [v117 resultsCount];
    if (!selfCopy->_isPeopleSearch)
    {
      goto LABEL_89;
    }

    v63 = resultsCount;
    if ([bundleIdentifier isEqualToString:v105])
    {
      if (v63 < 0xC9)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v64 = [bundleIdentifier isEqualToString:v104];
      if (v63 > 0xC8)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    v121 = objc_opt_new();
    v123 = objc_opt_new();
    resultSet = [v117 resultSet];
    v66 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v63];
    v67 = 0;
    v68 = v66;
    do
    {
      v69 = [resultSet objectAtIndex:v67];
      rankingItem6 = [v69 rankingItem];
      if (rankingItem6)
      {
        [v66 addObject:rankingItem6];
      }

      ++v67;
      v66 = v68;
    }

    while (v63 != v67);
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v132[0] = __82__SPCSSearchQuery_prepareRankingItems_withResultSets_totalFeatureComputationTime___block_invoke;
    v132[1] = &unk_279CFE490;
    v132[2] = selfCopy;
    [v68 sortWithOptions:16 usingComparator:v131];
    v71 = [v68 count];
    if (v71 >= 0xC9)
    {
      for (m = 200; m != v71; ++m)
      {
        v73 = [v66 objectAtIndexedSubscript:m];
        l2FeatureVector5 = [v73 L2FeatureVector];
        LODWORD(v75) = -8388608;
        [l2FeatureVector5 setOriginalL2Score:v75];

        v66 = v68;
      }
    }

    v76 = 0;
    v115 = 0;
    v118 = 0;
    do
    {
      while (1)
      {
        v77 = [resultSet objectAtIndex:v76];
        rankingItem7 = [v77 rankingItem];
        v79 = rankingItem7;
        if (!rankingItem7)
        {
          goto LABEL_79;
        }

        l2FeatureVector6 = [rankingItem7 L2FeatureVector];
        [l2FeatureVector6 originalL2Score];
        v82 = v81 == -INFINITY;

        if (!v82)
        {
          goto LABEL_79;
        }

        v83 = [v13 indexOfObject:v79];
        if (v83 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        [v121 addIndex:v76];
        [v123 addIndex:v83];

        ++v115;
        v118 = 1;
        if (v63 - 1 == v76++)
        {
          goto LABEL_85;
        }
      }

      v84 = SPLogForSPLogCategoryDefault();
      v85 = *MEMORY[0x277D4BF50];
      if (os_log_type_enabled(v84, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v84, ((v85 & 1) == 0), "Item to remove not found in array of ranking items", buf, 2u);
      }

LABEL_79:
      ++v76;
      v86 = v68;
    }

    while (v63 != v76);
    if ((v118 & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_85:
    v88 = SPLogForSPLogCategoryDefault();
    v89 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v88, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      *buf = v102;
      *v143 = v115;
      *&v143[4] = 2112;
      *&v143[6] = bundleIdentifier;
      _os_log_impl(&dword_26B71B000, v88, ((v89 & 1) == 0), "Removing %d items from %@", buf, 0x12u);
    }

    v86 = v68;
    [v13 removeObjectsAtIndexes:v123];
    [resultSet removeObjectsAtIndexes:v121];
LABEL_88:

LABEL_89:
    if ([v13 count])
    {
      v90 = [v13 copy];
      [v116 setObject:v90 atIndexedSubscript:v113];
    }

    [v13 removeAllObjects];

    ++v113;
  }

  v91 = objc_opt_new();
  for (n = 0; n < [v116 count]; ++n)
  {
    v93 = [v116 objectAtIndexedSubscript:n];
    if (v93 != v126)
    {
      v94 = [v116 objectAtIndexedSubscript:n];
      [v91 addObjectsFromArray:v94];
    }
  }

  v95 = objc_opt_new();
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v96 = v91;
  v97 = [v96 countByEnumeratingWithState:&v127 objects:v141 count:16];
  if (v97)
  {
    v98 = 0;
    v99 = *v128;
    do
    {
      for (ii = 0; ii != v97; ++ii)
      {
        if (*v128 != v99)
        {
          objc_enumerationMutation(v96);
        }

        if (*(*(&v127 + 1) + 8 * ii) == v126)
        {
          [v95 addIndex:v98];
        }

        ++v98;
      }

      v97 = [v96 countByEnumeratingWithState:&v127 objects:v141 count:16];
    }

    while (v97);
  }

  [v96 removeObjectsAtIndexes:v95];

  return v96;
}

uint64_t __82__SPCSSearchQuery_prepareRankingItems_withResultSets_totalFeatureComputationTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 interestingDate];
  v7 = [v5 interestingDate];
  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;
  [*(a1 + 32) currentTime];
  v11 = v10;
  [v7 timeIntervalSinceReferenceDate];
  v13 = v12;
  [*(a1 + 32) currentTime];
  v15 = v13 - v14;
  if (v9 - v11 <= v15)
  {
    v16 = v9 - v11 < v15;
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

- (void)slowFetchAttributes:(id)attributes
{
  v90 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  selfCopy = self;
  if ([(NSArray *)self->_slowFetchAttrs count])
  {
    v4 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = attributesCopy;
    v55 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v55)
    {
      v51 = *v78;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v78 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v77 + 1) + 8 * i);
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v6 = v5;
          v7 = [v6 countByEnumeratingWithState:&v73 objects:v88 count:16];
          if (v7)
          {
            v8 = *v74;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v74 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v73 + 1) + 8 * j);
                dataclass = [v10 dataclass];
                if (dataclass)
                {
                  attributeSet = [v10 attributeSet];
                  bundleIdentifier = [attributeSet bundleIdentifier];
                  v14 = bundleIdentifier == 0;

                  if (!v14)
                  {
                    dataclass2 = [v10 dataclass];
                    v87[0] = dataclass2;
                    attributeSet2 = [v10 attributeSet];
                    bundleIdentifier2 = [attributeSet2 bundleIdentifier];
                    v87[1] = bundleIdentifier2;
                    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];

                    v19 = [v4 objectForKeyedSubscript:v18];
                    LODWORD(dataclass2) = v19 == 0;

                    if (dataclass2)
                    {
                      v20 = objc_opt_new();
                      [v4 setObject:v20 forKeyedSubscript:v18];
                    }

                    v21 = [v4 objectForKeyedSubscript:v18];
                    [v21 addObject:v10];
                  }
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v73 objects:v88 count:16];
            }

            while (v7);
          }
        }

        v55 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v55);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obja = v4;
    v22 = [obja countByEnumeratingWithState:&v69 objects:v86 count:16];
    if (v22)
    {
      v49 = *v70;
      *&v23 = 138412546;
      v47 = v23;
      do
      {
        v52 = v22;
        for (k = 0; k != v52; ++k)
        {
          if (*v70 != v49)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v69 + 1) + 8 * k);
          v56 = [v25 objectAtIndexedSubscript:{0, v47}];
          v58 = [v25 objectAtIndexedSubscript:1];
          v26 = objc_opt_new();
          v27 = [obja objectForKeyedSubscript:v25];
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v65 objects:v85 count:16];
          if (v29)
          {
            v30 = *v66;
            do
            {
              for (m = 0; m != v29; ++m)
              {
                if (*v66 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v65 + 1) + 8 * m);
                attributeSet3 = [v32 attributeSet];
                uniqueIdentifier = [attributeSet3 uniqueIdentifier];
                v35 = uniqueIdentifier == 0;

                if (!v35)
                {
                  attributeSet4 = [v32 attributeSet];
                  uniqueIdentifier2 = [attributeSet4 uniqueIdentifier];
                  [v26 addObject:uniqueIdentifier2];
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v65 objects:v85 count:16];
            }

            while (v29);
          }

          array = [MEMORY[0x277CBEB18] array];
          v39 = selfCopy->_slowFetchAttrs;
          v40 = dispatch_group_create();
          dispatch_group_enter(v40);
          defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __39__SPCSSearchQuery_slowFetchAttributes___block_invoke;
          v61[3] = &unk_279CFE4B8;
          v42 = v39;
          v62 = v42;
          v43 = array;
          v63 = v43;
          v44 = v40;
          v64 = v44;
          [defaultSearchableIndex slowFetchAttributes:v42 protectionClass:v56 bundleID:v58 identifiers:v26 completionHandler:v61];

          v45 = dispatch_time(0, 1000000000);
          if (dispatch_group_wait(v44, v45))
          {
            v46 = SPLogForSPLogCategoryQuery();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = v47;
              v82 = v58;
              v83 = 2112;
              v84 = v56;
              _os_log_error_impl(&dword_26B71B000, v46, OS_LOG_TYPE_ERROR, "Timeout fetching additional attributes for %@ in %@.", buf, 0x16u);
            }
          }

          else
          {
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __39__SPCSSearchQuery_slowFetchAttributes___block_invoke_2;
            v59[3] = &unk_279CFE4E0;
            v60 = v43;
            [v28 enumerateObjectsUsingBlock:v59];
            v46 = v60;
          }
        }

        v22 = [obja countByEnumeratingWithState:&v69 objects:v86 count:16];
      }

      while (v22);
    }
  }
}

void __39__SPCSSearchQuery_slowFetchAttributes___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = 0;
  v2 = *MEMORY[0x277CBEEE8];
  while (v15 < [v14 count])
  {
    v3 = [v14 objectAtIndexedSubscript:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_opt_new();
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = 0;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * v9);
            v11 = [v3 objectAtIndexedSubscript:v7];
            if (v11 != v2)
            {
              [v4 setObject:v11 forKey:v10];
            }

            ++v9;
            ++v7;
          }

          while (v6 != v9);
          v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v6);
      }

      v12 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v4];
      [*(a1 + 40) addObject:v12];
    }

    ++v15;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __39__SPCSSearchQuery_slowFetchAttributes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v8 attributeSet];
  v7 = [v6 attributeDictionary];
  [v5 addAttributesFromDictionaryWithOutOverWriting:v7];

  [v8 setAttributeSet:v5];
}

- (void)buildFullSearchResults:(id)results withResultSets:(id)sets
{
  v106 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  setsCopy = sets;
  v76 = objc_opt_new();
  v73 = objc_opt_new();
  v94 = 0;
  v97 = *MEMORY[0x277D65C98];
  v87 = *MEMORY[0x277D65CA0];
  v81 = *MEMORY[0x277D65CB8];
  v85 = *MEMORY[0x277D65C90];
  v74 = *MEMORY[0x277D65CC0];
  v69 = *MEMORY[0x277D65CA8];
  v66 = *MEMORY[0x277D65CB0];
  v91 = *MEMORY[0x277D65CD0];
  v83 = *MEMORY[0x277D65C10];
  v80 = *MEMORY[0x277D65C50];
  v75 = *MEMORY[0x277D65A00];
  v70 = *MEMORY[0x277D65AA8];
  v71 = *MEMORY[0x277D65BE0];
  v67 = *MEMORY[0x277D65B38];
  v84 = *MEMORY[0x277D65C00];
  v78 = *MEMORY[0x277D65AA0];
  v79 = *MEMORY[0x277D65AB0];
  v77 = *MEMORY[0x277D65A98];
  v86 = *MEMORY[0x277D65C18];
  v82 = *MEMORY[0x277D65AE0];
  while (v94 < [resultsCopy count])
  {
    v89 = [resultsCopy objectAtIndexedSubscript:?];
    bundleIdentifier = [v89 bundleIdentifier];
    if (([bundleIdentifier isEqualToString:v97] & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v87) & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v81) & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v85) & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v74) & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v69) & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", v66) & 1) == 0)
    {
      v65 = [setsCopy objectAtIndexedSubscript:v94];
      if (SSSectionIsSyndicatedPhotos())
      {
        mEMORY[0x277D65958] = [MEMORY[0x277D65958] sharedInstance];
        resultSet = [v89 resultSet];
        userQueryString = [(SPKQuery *)self userQueryString];
        [(SPCSSearchQuery *)self currentTime];
        [mEMORY[0x277D65958] sortAndFilterRankedPhotosItemsFilterFromSet:resultSet maxCount:20 userQuery:userQueryString currentTime:?];
      }

      v68 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v65, "count")}];
      v9 = objc_opt_new();
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      obj = v65;
      v88 = v9;
      v10 = [obj countByEnumeratingWithState:&v98 objects:v105 count:16];
      if (v10)
      {
        v95 = *v99;
        do
        {
          v96 = v10;
          for (i = 0; i != v96; ++i)
          {
            if (*v99 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v98 + 1) + 8 * i);
            currentTime = self->_currentTime;
            userQueryString2 = [(SPKQuery *)self userQueryString];
            queryContext = [(SPKQuery *)self queryContext];
            v16 = [v12 resultWithTime:userQueryString2 searchString:0 isCorrectedQuery:queryContext withQueryContext:currentTime];

            rankingItem = [v12 rankingItem];
            l2FeatureVector = [rankingItem L2FeatureVector];
            if (l2FeatureVector)
            {
              v19 = v12 == 0;
            }

            else
            {
              v19 = 1;
            }

            v20 = !v19;

            if (v20)
            {
              v103[0] = @"score";
              v21 = MEMORY[0x277CCABB0];
              [rankingItem score];
              v22 = [v21 numberWithFloat:?];
              v104[0] = v22;
              v103[1] = @"raw score";
              v23 = MEMORY[0x277CCABB0];
              [rankingItem rawScore];
              v24 = [v23 numberWithFloat:?];
              v104[1] = v24;
              v103[2] = @"original score";
              v25 = MEMORY[0x277CCABB0];
              l2FeatureVector2 = [rankingItem L2FeatureVector];
              [l2FeatureVector2 originalL2Score];
              v27 = [v25 numberWithFloat:?];
              v104[2] = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
              [v16 setLocalFeatures:v28];
            }

            rankingItem2 = [v12 rankingItem];
            [rankingItem2 score];
            [v16 setL2score:?];

            sectionBundleIdentifier = [v16 sectionBundleIdentifier];
            resultBundleId = [v16 resultBundleId];
            v32 = [sectionBundleIdentifier isEqual:v97];
            p_feedbackListener = &self->super._feedbackListener;
            if (v32)
            {
LABEL_26:
              [p_feedbackListener[31] addResults:v16];
              goto LABEL_49;
            }

            if ([sectionBundleIdentifier isEqual:v91])
            {
              goto LABEL_28;
            }

            if ([sectionBundleIdentifier isEqual:v87])
            {
              if ([resultBundleId isEqual:v84])
              {
                sectionBundleIdentifier2 = [rankingItem sectionBundleIdentifier];
                v40 = [sectionBundleIdentifier2 isEqualToString:v86];

                p_queryGroupId = &self->super._queryGroupId;
                if ((v40 & 1) == 0)
                {
                  goto LABEL_57;
                }

LABEL_56:
                [p_queryGroupId[31] addResults:v16];
                goto LABEL_57;
              }

              if ([resultBundleId isEqual:v82])
              {
                sectionBundleIdentifier3 = [rankingItem sectionBundleIdentifier];
                v48 = [sectionBundleIdentifier3 isEqualToString:v86];

                p_queryGroupId = &self->super._trimmedUserQueryString;
                if (v48)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v102[0] = v79;
                v102[1] = v78;
                v102[2] = v77;
                v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:3];
                v50 = [v49 containsObject:resultBundleId];

                p_queryGroupId = &self->super._ranker;
                if (!v50)
                {
                  goto LABEL_56;
                }

                sectionBundleIdentifier4 = [rankingItem sectionBundleIdentifier];
                v52 = [sectionBundleIdentifier4 isEqualToString:v86];

                p_queryGroupId = &self->super._delegate;
                if (v52)
                {
                  goto LABEL_56;
                }
              }

LABEL_57:
              sectionBundleIdentifier5 = [rankingItem sectionBundleIdentifier];
              v54 = [sectionBundleIdentifier5 isEqualToString:v86];

              p_feedbackListener = &self->super._queryId;
              if (v54)
              {
                goto LABEL_26;
              }

              goto LABEL_49;
            }

            v42 = [sectionBundleIdentifier isEqualToString:v85];
            p_feedbackListener = &self->super._userQueryString;
            if (v42)
            {
              goto LABEL_26;
            }

            if (([sectionBundleIdentifier isEqual:v83] & 1) != 0 || objc_msgSend(sectionBundleIdentifier, "isEqual:", v80))
            {
              personIdentifier = [v16 personIdentifier];
              if (personIdentifier)
              {
                personIdentifier2 = [v16 personIdentifier];
                v45 = [personIdentifier2 hasPrefix:@"com.apple.spotlight"];

                if (v45)
                {
                  queryContext2 = [(SPKQuery *)self queryContext];
                  if ([queryContext2 isSearchToolClient])
                  {

                    goto LABEL_45;
                  }

                  personType = [v16 personType];
                  if ([personType isEqual:@"ml"])
                  {

                    goto LABEL_28;
                  }

                  hasTextContentMatch = [v16 hasTextContentMatch];

                  if (hasTextContentMatch)
                  {
LABEL_45:
                    personIdentifier3 = [v16 personIdentifier];
                    [v76 setObject:v16 forKey:personIdentifier3];
                  }

                  else
                  {
LABEL_28:
                    v34 = sectionBundleIdentifier;
                    if (v34)
                    {
                      personIdentifier3 = v34;
                    }

                    else
                    {
                      personIdentifier3 = @"empty_bundle";
                    }

                    v36 = [v88 objectForKeyedSubscript:personIdentifier3];
                    bundleIdentifier2 = v36;
                    if (v36)
                    {
                      bundleIdentifier3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v36, "unsignedIntValue") + 1}];
                      [v88 setObject:bundleIdentifier3 forKeyedSubscript:personIdentifier3];
LABEL_33:
                    }

                    else
                    {
                      [v88 setObject:&unk_287C3B7A0 forKeyedSubscript:personIdentifier3];
                    }

LABEL_47:
                  }
                }
              }
            }

            else
            {
              if (([sectionBundleIdentifier isEqual:v75] & 1) == 0 && objc_msgSend(resultBundleId, "isEqual:", v71))
              {
                queryContext3 = [(SPKQuery *)self queryContext];
                if ([queryContext3 isSearchToolClient])
                {
                }

                else
                {
                  hasTextContentMatch2 = [v16 hasTextContentMatch];

                  if ((hasTextContentMatch2 & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                contactIdentifier = [v16 contactIdentifier];
                v63 = contactIdentifier == 0;

                if (!v63)
                {
                  contactIdentifier2 = [v16 contactIdentifier];
                  [v73 setObject:v16 forKey:contactIdentifier2];
LABEL_81:
                }

                goto LABEL_82;
              }

              personIdentifier3 = [v16 userActivityRequiredString];
              if (![(__CFString *)personIdentifier3 length])
              {

LABEL_71:
                if (([sectionBundleIdentifier hasPrefix:@"com.apple"] & 1) == 0 && objc_msgSend(MEMORY[0x277D65938], "isLowEngagementBundle:", sectionBundleIdentifier))
                {
                  contactIdentifier2 = [(SPKQuery *)self queryContext];
                  if ([contactIdentifier2 isSearchToolClient])
                  {
                    goto LABEL_81;
                  }

                  hasTextContentMatch3 = [v16 hasTextContentMatch];

                  if ((hasTextContentMatch3 & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

LABEL_82:
                [v68 addObject:v16];
                goto LABEL_49;
              }

              bundleIdentifier2 = [v89 bundleIdentifier];
              if ([bundleIdentifier2 isEqual:v70])
              {
                goto LABEL_47;
              }

              bundleIdentifier3 = [v89 bundleIdentifier];
              if ([bundleIdentifier3 isEqual:v67])
              {
                goto LABEL_33;
              }

              bundleIdentifier4 = [v89 bundleIdentifier];
              IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

              if ((IsSyndicatedPhotos & 1) == 0)
              {
                goto LABEL_71;
              }
            }

LABEL_49:
          }

          v10 = [obj countByEnumeratingWithState:&v98 objects:v105 count:16];
        }

        while (v10);
      }

      [v89 setResults:v68];
      [v88 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_257];
    }

    ++v94;
  }

  [(SPCSSearchQuery *)self buildPeopleResults:v76 withContacts:v73];
}

void __57__SPCSSearchQuery_buildFullSearchResults_withResultSets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = SPLogForSPLogCategoryRanking();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = [v5 unsignedIntValue];
    _os_log_impl(&dword_26B71B000, v6, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Filtering section=%@: removed items count=%u", &v7, 0x12u);
  }
}

- (void)updateCoreSuggestionsSection:(id)section
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  sectionCopy = section;
  results = [sectionCopy results];
  v4 = [results countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    relatedBundleID2 = 0;
    v6 = *v31;
    while (2)
    {
      v7 = 0;
      v8 = relatedBundleID2;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(results);
        }

        v9 = *(*(&v30 + 1) + 8 * v7);
        if (v8)
        {
          relatedBundleID = [*(*(&v30 + 1) + 8 * v7) relatedBundleID];
          v11 = [v8 isEqualToString:relatedBundleID];

          if ((v11 & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        relatedBundleID2 = [v9 relatedBundleID];

        ++v7;
        v8 = relatedBundleID2;
      }

      while (v4 != v7);
      v4 = [results countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (relatedBundleID2)
    {
      v24 = [MEMORY[0x277D4BE80] displayNameForBundleIdentifer:relatedBundleID2];
      if (v24)
      {
          [SPCSSearchQuery updateCoreSuggestionsSection:]::nameFormat = {;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:-[SPCSSearchQuery updateCoreSuggestionsSection:]::nameFormat, v24];
        v13 = v12 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_15:

    relatedBundleID2 = 0;
  }

    [SPCSSearchQuery updateCoreSuggestionsSection:]::name = {;
  }

  v13 = [SPCSSearchQuery updateCoreSuggestionsSection:]::name;
  v24 = 0;
  v12 = 1;
LABEL_18:
  [sectionCopy setTitle:v13];
  if (v12)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    results2 = [sectionCopy results];
    v15 = [results2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(results2);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          relatedBundleID3 = [v18 relatedBundleID];
          v20 = relatedBundleID3 == 0;

          if (!v20)
          {
            v21 = MEMORY[0x277D4BE80];
            relatedBundleID4 = [v18 relatedBundleID];
            v23 = [v21 displayNameForBundleIdentifer:relatedBundleID4];
            [v18 setFootnote:v23];
          }
        }

        v15 = [results2 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v15);
    }
  }
}

- (void)buildPeopleResults:(id)results withContacts:(id)contacts
{
  v75 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  contactsCopy = contacts;
  v56 = resultsCopy;
  selfCopy = self;
  if ([resultsCopy count])
  {
    v7 = [resultsCopy keysSortedByValueUsingComparator:&__block_literal_global_273];
    v50 = [v7 mutableCopy];

    v8 = [contactsCopy keysSortedByValueUsingComparator:&__block_literal_global_275];
    v9 = [v8 mutableCopy];

    v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(contactsCopy, "count", v9)}];
    v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v56, "count")}];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v9;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v11)
    {
      v12 = *v69;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v69 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [contactsCopy objectForKeyedSubscript:*(*(&v68 + 1) + 8 * i)];
          [v57 addObject:v14];
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          title = [v14 title];
          text = [title text];
          v17 = text == 0;

          if (!v17)
          {
            title2 = [v14 title];
            text2 = [title2 text];
            lowercaseString = [text2 lowercaseString];
            [v10 addObject:lowercaseString];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v11);
    }

    [(SFMutableResultSection *)selfCopy->_bundleIdToResultsMap.contactResultsSection setResults:v57];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v55 = v50;
    v21 = [v55 countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v21)
    {
      v22 = *v65;
      v54 = *MEMORY[0x277D65C50];
      v52 = *v65;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v65 != v22)
          {
            objc_enumerationMutation(v55);
          }

          v24 = [v56 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * j)];
          title3 = [v24 title];
          text3 = [title3 text];
          lowercaseString2 = [text3 lowercaseString];

          sectionBundleIdentifier = [v24 sectionBundleIdentifier];
          v29 = sectionBundleIdentifier;
          if (sectionBundleIdentifier)
          {
            v30 = [sectionBundleIdentifier isEqual:v54];
          }

          else
          {
            v30 = 0;
          }

          contactIdentifier = [v24 contactIdentifier];
          v32 = contactIdentifier == 0;

          if (v32)
          {
            if ([v10 containsObject:lowercaseString2])
            {
              goto LABEL_35;
            }
          }

          else if ([obj count])
          {
            contactIdentifier2 = [v24 contactIdentifier];
            v34 = [contactsCopy objectForKeyedSubscript:contactIdentifier2];

            if (v34)
            {
              personIdentifier = [v24 personIdentifier];
              [v34 setPersonIdentifier:personIdentifier];

              personQueryIdentifier = [v24 personQueryIdentifier];
              [v34 setPersonQueryIdentifier:personQueryIdentifier];

              if (v30)
              {
                hasTextContentMatch = 1;
              }

              else
              {
                hasTextContentMatch = [v34 hasTextContentMatch];
              }

              [v34 setHasTextContentMatch:hasTextContentMatch];
              [v24 rankingScore];
              [v34 setRankingScore:?];
              [v34 setType:37];
              if ([v34 hasTextContentMatch])
              {
                v42 = MEMORY[0x277D659B8];
                queryContext = [(SPKQuery *)selfCopy queryContext];
                v44 = [v42 buildResultWithResult:v34 queryContext:queryContext];

                os_unfair_lock_lock(&selfCopy->_suggestionsLock);
                [(NSMutableArray *)selfCopy->_suggestionResults addObject:v44];
                os_unfair_lock_unlock(&selfCopy->_suggestionsLock);

                v22 = v52;
              }
            }

            goto LABEL_35;
          }

          [v24 rankingScore];
          if (v38 > 0.0)
          {
            if (v30)
            {
              v39 = MEMORY[0x277D659B8];
              queryContext2 = [(SPKQuery *)selfCopy queryContext];
              v41 = [v39 buildResultWithResult:v24 queryContext:queryContext2];

              os_unfair_lock_lock(&selfCopy->_suggestionsLock);
              [(NSMutableArray *)selfCopy->_suggestionResults addObject:v41];
              os_unfair_lock_unlock(&selfCopy->_suggestionsLock);

              v22 = v52;
            }

            [v51 addObject:v24];
          }

LABEL_35:
        }

        v21 = [v55 countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v21);
    }

    [(SFMutableResultSection *)selfCopy->_bundleIdToResultsMap.peopleResultsSection setResults:v51];
    goto LABEL_47;
  }

  if ([contactsCopy count])
  {
    v55 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(contactsCopy, "count")}];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v45 = contactsCopy;
    v46 = [v45 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v46)
    {
      v47 = *v61;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v61 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = [v45 objectForKeyedSubscript:*(*(&v60 + 1) + 8 * k)];
          [v55 addObject:v49];
        }

        v46 = [v45 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v46);
    }

    [(SFMutableResultSection *)selfCopy->_bundleIdToResultsMap.contactResultsSection setResults:v55];
LABEL_47:
  }
}

uint64_t __51__SPCSSearchQuery_buildPeopleResults_withContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 rankingScore];
  v9 = v8;
  [v7 rankingScore];
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

uint64_t __51__SPCSSearchQuery_buildPeopleResults_withContacts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 rankingScore];
  v9 = v8;
  [v7 rankingScore];
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (void)processUserActivitiesForSection:(id)section
{
  v121 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v89 = objc_alloc_init(MEMORY[0x277CBEB58]);
  results = [sectionCopy results];
  v4 = [results copy];

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v110 objects:v120 count:16];
  if (v5)
  {
    v6 = *v111;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v111 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v110 + 1) + 8 * i);
        externalIdentifier = [v8 externalIdentifier];
        if (!externalIdentifier)
        {
          v10 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v119 = v8;
            _os_log_error_impl(&dword_26B71B000, v10, OS_LOG_TYPE_ERROR, "result missing identifier %@", buf, 0xCu);
          }
        }

        userActivityRequiredString = [v8 userActivityRequiredString];
        if (externalIdentifier)
        {
          v12 = userActivityRequiredString == 0;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          [v91 setObject:v8 forKey:externalIdentifier];
          compatibilityTitle = [v8 compatibilityTitle];
          if (compatibilityTitle)
          {
            [v89 addObject:compatibilityTitle];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v110 objects:v120 count:16];
    }

    while (v5);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v15 = obj;
  v16 = [v15 countByEnumeratingWithState:&v106 objects:v117 count:16];
  if (v16)
  {
    v17 = *v107;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v107 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v106 + 1) + 8 * j);
        relatedUniqueIdentifier = [v19 relatedUniqueIdentifier];
        if (relatedUniqueIdentifier)
        {
          userActivityRequiredString2 = [v19 userActivityRequiredString];
          v22 = userActivityRequiredString2 == 0;

          if (v22)
          {
            v23 = [v91 objectForKey:relatedUniqueIdentifier];
            v24 = v23 == 0;

            if (v24)
            {
              [v91 setObject:v19 forKey:relatedUniqueIdentifier];
              compatibilityTitle2 = [v19 compatibilityTitle];
              if (compatibilityTitle2)
              {
                [v89 addObject:compatibilityTitle2];
              }
            }
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v16);
  }

  v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v87 = v15;
  v26 = [v87 countByEnumeratingWithState:&v102 objects:v116 count:16];
  if (v26)
  {
    v92 = *v103;
    do
    {
      v93 = v26;
      for (k = 0; k != v93; ++k)
      {
        if (*v103 != v92)
        {
          objc_enumerationMutation(v87);
        }

        v28 = *(*(&v102 + 1) + 8 * k);
        compatibilityTitle3 = [v28 compatibilityTitle];
        if (!compatibilityTitle3 && ([v28 hasDetail] & 1) == 0)
        {
          sectionBundleIdentifier = [v28 sectionBundleIdentifier];
          IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
          if (IsSyndicatedPhotos && ([v28 contentType], v86 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v86, "isEqualToString:", @"public.item")))
          {
          }

          else
          {
            identifier = [v28 identifier];
            v33 = [identifier hasPrefix:@"synthetic-bookmark-"];

            if (IsSyndicatedPhotos)
            {
            }

            if ((v33 & 1) == 0)
            {
              [sectionCopy removeResults:v28];
              goto LABEL_68;
            }
          }
        }

        userActivityRequiredString3 = [v28 userActivityRequiredString];
        v35 = userActivityRequiredString3 == 0;

        if (!v35)
        {
          relatedUniqueIdentifier2 = [v28 relatedUniqueIdentifier];
          if (relatedUniqueIdentifier2)
          {
            fileProviderIdentifier = [v28 fileProviderIdentifier];
            v38 = fileProviderIdentifier == 0;

            if (v38)
            {
              v39 = [v91 objectForKey:relatedUniqueIdentifier2];
              v40 = v39;
              if (v39)
              {
                score = [v39 score];
                v43 = v42;
                score2 = [v28 score];
                [v40 setScore:{__PAIR128__(v45, score2) + __PAIR128__(v43, score)}];
                [sectionCopy removeResults:v28];
                if (([v40 hasAssociatedUserActivity] & 1) == 0)
                {
                  [v40 setPubliclyIndexable:{objc_msgSend(v28, "publiclyIndexable")}];
                  [v40 setHasAssociatedUserActivity:1];
                  launchDates = [v28 launchDates];
                  [v40 setLaunchDates:launchDates];
                  goto LABEL_65;
                }
              }

              else
              {
                v47 = [v85 objectForKey:relatedUniqueIdentifier2];
                launchDates = v47;
                if (v47)
                {
                  score3 = [v47 score];
                  v50 = v49;
                  score4 = [v28 score];
                  v52 = score4;
                  v54 = v53;
                  if (__PAIR128__(v53, score4) >= __PAIR128__(v50, score3))
                  {
                    buddyScore = [v28 buddyScore];
                    [v28 setBuddyScore:{__PAIR128__(v58, buddyScore) + __PAIR128__(v50, score3)}];
                    [sectionCopy removeResults:launchDates];
                    [v85 setObject:v28 forKey:relatedUniqueIdentifier2];
                  }

                  else
                  {
                    buddyScore2 = [launchDates buddyScore];
                    [launchDates setBuddyScore:{__PAIR128__(v56, buddyScore2) + __PAIR128__(v54, v52)}];
                    [sectionCopy removeResults:v28];
                  }
                }

                else
                {
                  [v85 setObject:v28 forKey:relatedUniqueIdentifier2];
                }

LABEL_65:
              }
            }
          }

          else if (compatibilityTitle3)
          {
            if ([v89 containsObject:compatibilityTitle3] && (objc_msgSend(v28, "hasDetail") & 1) == 0)
            {
              [sectionCopy removeResults:v28];
            }

            else
            {
              [v89 addObject:compatibilityTitle3];
            }
          }
        }

LABEL_68:
      }

      v26 = [v87 countByEnumeratingWithState:&v102 objects:v116 count:16];
    }

    while (v26);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  resultSet = [sectionCopy resultSet];
  v60 = [resultSet countByEnumeratingWithState:&v98 objects:v115 count:16];
  if (v60)
  {
    v61 = *v99;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v99 != v61)
        {
          objc_enumerationMutation(resultSet);
        }

        v63 = *(*(&v98 + 1) + 8 * m);
        score5 = [v63 score];
        v66 = v65;
        buddyScore3 = [v63 buddyScore];
        [v63 setScore:{__PAIR128__(v68, buddyScore3) + __PAIR128__(v66, score5)}];
      }

      v60 = [resultSet countByEnumeratingWithState:&v98 objects:v115 count:16];
    }

    while (v60);
  }

  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v70 = v87;
  v71 = [v70 countByEnumeratingWithState:&v94 objects:v114 count:16];
  if (v71)
  {
    v72 = *v95;
    do
    {
      for (n = 0; n != v71; ++n)
      {
        if (*v95 != v72)
        {
          objc_enumerationMutation(v70);
        }

        v74 = *(*(&v94 + 1) + 8 * n);
        itemIdentifier = [v74 itemIdentifier];
        v76 = itemIdentifier == 0;

        if (!v76)
        {
          itemIdentifier2 = [v74 itemIdentifier];
          v78 = [v69 objectForKey:itemIdentifier2];

          if (v78)
          {
            score6 = [v78 score];
            v81 = v80;
            score7 = [v74 score];
            if (__PAIR128__(v83, score7) < __PAIR128__(v81, score6))
            {
              [sectionCopy removeResults:v74];
LABEL_88:

              continue;
            }

            [sectionCopy removeResults:v78];
          }

          itemIdentifier3 = [v74 itemIdentifier];
          [v69 setObject:v74 forKey:itemIdentifier3];

          goto LABEL_88;
        }
      }

      v71 = [v70 countByEnumeratingWithState:&v94 objects:v114 count:16];
    }

    while (v71);
  }
}

- (void)removeDuplicatesInSection:(id)section
{
  v64 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  queryContext = [(SPKQuery *)self queryContext];
  isSearchToolClient = [queryContext isSearchToolClient];

  if (isSearchToolClient)
  {
    goto LABEL_52;
  }

  results = [sectionCopy results];
  v41 = [results copy];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v41;
  v8 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v8)
  {
    v9 = *v54;
    v10 = MEMORY[0x277D4BF48];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        sectionBundleIdentifier = [v12 sectionBundleIdentifier];
        externalIdentifier = [v12 externalIdentifier];
        if (externalIdentifier)
        {
          if ([v7 containsObject:externalIdentifier])
          {
            [sectionCopy removeResults:v12];
            v15 = SPLogForSPLogCategoryQuery();
            v16 = v15;
            if (*v10)
            {
              v17 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v17 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v15, v17))
            {
              *buf = 138412546;
              v60 = sectionBundleIdentifier;
              v61 = 2112;
              v62 = externalIdentifier;
              _os_log_impl(&dword_26B71B000, v16, v17, "Remove duplicate for %@ / %@", buf, 0x16u);
            }
          }

          else
          {
            [v7 addObject:externalIdentifier];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v8);
  }

  bundleIdentifier = [sectionCopy bundleIdentifier];
  v19 = [bundleIdentifier isEqualToString:*MEMORY[0x277D65AD0]];

  if (!v19)
  {
    goto LABEL_35;
  }

  [v7 removeAllObjects];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v42 = obj;
  v20 = [v42 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (!v20)
  {
    goto LABEL_34;
  }

  accountIdentifier = 0;
  v22 = *v50;
  do
  {
    for (j = 0; j != v20; ++j)
    {
      if (*v50 != v22)
      {
        objc_enumerationMutation(v42);
      }

      v24 = *(*(&v49 + 1) + 8 * j);
      domainIdentifier = [v24 domainIdentifier];

      v26 = [domainIdentifier isEqualToString:@"attachmentDomain"];
      if ((v26 | [domainIdentifier isEqualToString:@"chatDomain"]))
      {
        accountIdentifier = [v24 accountIdentifier];

        if (!accountIdentifier)
        {
          continue;
        }
      }

      else
      {
        accountIdentifier = domainIdentifier;
        if (!domainIdentifier)
        {
          continue;
        }
      }

      if ([v7 containsObject:accountIdentifier])
      {
        [sectionCopy removeResults:v24];
      }

      else
      {
        [v7 addObject:accountIdentifier];
      }
    }

    v20 = [v42 countByEnumeratingWithState:&v49 objects:v58 count:16];
  }

  while (v20);

LABEL_34:
LABEL_35:
  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v28 = [bundleIdentifier2 isEqualToString:*MEMORY[0x277D65B60]];

  if (!v28)
  {
    goto LABEL_51;
  }

  [v7 removeAllObjects];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = obj;
  v30 = [v29 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (!v30)
  {
    goto LABEL_50;
  }

  v31 = *v46;
  while (2)
  {
    v32 = 0;
    while (2)
    {
      if (*v46 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v33 = *(*(&v45 + 1) + 8 * v32);
      stringForDedupe = [v33 stringForDedupe];
      if (stringForDedupe)
      {
        domainIdentifier2 = [v33 domainIdentifier];
        if ([domainIdentifier2 isEqualToString:@"com.apple.siri.interactions"])
        {

LABEL_45:
          stringForDedupe2 = [v33 stringForDedupe];
          v39 = [v7 containsObject:stringForDedupe2];

          if (v39)
          {
            [sectionCopy removeResults:v33];
          }

          else
          {
            stringForDedupe3 = [v33 stringForDedupe];
            [v7 addObject:stringForDedupe3];
          }
        }

        else
        {
          domainIdentifier3 = [v33 domainIdentifier];
          v37 = [domainIdentifier3 isEqualToString:@"com.apple.siri.upcomingmedia"];

          if (v37)
          {
            goto LABEL_45;
          }
        }
      }

      if (v30 != ++v32)
      {
        continue;
      }

      break;
    }

    v30 = [v29 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_50:

LABEL_51:
LABEL_52:
}

- (void)processSection:(id)section
{
  v159[19] = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  userQueryString = [(SPKQuery *)self userQueryString];
  selfCopy = self;
  v8 = *self->_topHitThreshold;
  v7 = *&self->_topHitThreshold[8];
  v134 = selfCopy;
  isPeopleSearch = selfCopy->_isPeopleSearch;
  v10 = SPMaxVisibleResultsCountPerSection();
  bundleIdentifier = [sectionCopy bundleIdentifier];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  v13 = 50;
  if (IsSyndicatedPhotos)
  {
    if (!isPeopleSearch)
    {
      v13 = 20;
      if (v134->_isPhotosSearch)
      {
        v13 = 50;
      }
    }
  }

  else
  {
    v13 = v10;
  }

  if (isPeopleSearch)
  {
    v13 = 50;
  }

  if (v13 <= 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  [sectionCopy setMaxInitiallyVisibleResults:v14];
  v15 = MEMORY[0x277D4BE80];
  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v17 = [v15 displayNameForBundleIdentifer:bundleIdentifier2];

  if (v17)
  {
    bundleIdentifier3 = v17;
    [sectionCopy setTitle:v17];
  }

  else
  {
    queryContext = [(SPKQuery *)v134 queryContext];
    isSearchToolClient = [queryContext isSearchToolClient];

    if (isSearchToolClient)
    {
      bundleIdentifier3 = [sectionCopy bundleIdentifier];
      [sectionCopy setTitle:bundleIdentifier3];
    }

    else
    {
      bundleIdentifier3 = 0;
    }
  }

  bundleIdentifier4 = [sectionCopy bundleIdentifier];
  v21 = [bundleIdentifier4 isEqualToString:@"com.apple.CoreSuggestions"];

  if (v21)
  {
    [(SPCSSearchQuery *)v134 updateCoreSuggestionsSection:sectionCopy];
  }

  title = [sectionCopy title];

  if (!title)
  {
    [sectionCopy setTitle:@"?"];
    [sectionCopy setResults:MEMORY[0x277CBEBF8]];
  }

  bundleIdentifier5 = [sectionCopy bundleIdentifier];
  v24 = [bundleIdentifier5 isEqual:@"com.apple.mobilesafari"];

  v125 = v24;
  if (v24)
  {
    EvaluatorWithBlock = _MDCreateSimpleQueryEvaluatorWithBlock();
    if (EvaluatorWithBlock)
    {
      _MDSimpleQuerySetWidcardAttributes();
    }

    v133 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v131 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v130 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v137 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v135 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    resultSet = [sectionCopy resultSet];
    v129 = EvaluatorWithBlock;
    obj = resultSet;
    v27 = [resultSet countByEnumeratingWithState:&v150 objects:v158 count:16];
    if (v27)
    {
      v143 = *v151;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v151 != v143)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v150 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            contentURL = [v28 contentURL];
            if (contentURL)
            {
              title2 = [v28 title];
              text = [title2 text];
              v32 = text == 0;

              if (!v32)
              {
                v33 = MEMORY[0x277CBEBC0];
                contentURL2 = [v28 contentURL];
                v35 = [v33 URLWithString:contentURL2];

                if (!v35)
                {
                  goto LABEL_65;
                }

                v36 = [MEMORY[0x277CCACE0] componentsWithURL:v35 resolvingAgainstBaseURL:1];
                v37 = v36;
                if (!v36)
                {
                  goto LABEL_64;
                }

                [v36 setQuery:0];
                [v37 setFragment:0];
                string = [v37 string];
                v141 = [v137 objectForKey:?];
                title3 = [v28 title];
                text2 = [title3 text];
                v140 = [v141 objectForKey:text2];

                if (v140)
                {
                  contentURL3 = [v140 contentURL];
                  v41 = [contentURL3 length];
                  contentURL4 = [v28 contentURL];
                  text3 = v41 > [contentURL4 length];

                  if (text3)
                  {
                    [v135 addObject:v140];
                    title4 = [v28 title];
                    text3 = [title4 text];
                    [v141 setObject:v28 forKey:text3];
                    goto LABEL_62;
                  }

                  [v135 addObject:v28];
LABEL_63:

LABEL_64:
LABEL_65:

                  continue;
                }

                if (!v141)
                {
                  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v137 setObject:v141 forKey:string];
                }

                title5 = [v28 title];
                text4 = [title5 text];
                [v141 setObject:v28 forKey:text4];

                [v37 setPath:@"/"];
                title4 = [v37 URL];
                text3 = [title4 host];
                v136 = text3;
                scheme = [title4 scheme];
                if (scheme)
                {
                  v46 = text3 == 0;
                }

                else
                {
                  v46 = 1;
                }

                v47 = v46;

                if (v47)
                {
LABEL_45:
                  text3 = v136;
                }

                else
                {
                  scheme2 = [title4 scheme];
                  v132 = [scheme2 caseInsensitiveCompare:@"https"];

                  if ([title4 isEqual:v35])
                  {
                    [v133 addObject:text3];
                    [v131 removeObjectForKey:text3];
                    [v130 removeObject:text3];
                  }

                  else if (([v133 containsObject:text3] & 1) == 0)
                  {
                    v49 = [v131 objectForKeyedSubscript:text3];
                    if (v49)
                    {
                      v50 = [v130 containsObject:text3];
                      if (v132)
                      {
                        v51 = 1;
                      }

                      else
                      {
                        v51 = v50;
                      }

                      if ((v129 == 0) | v51 & 1)
                      {
                        goto LABEL_62;
                      }
                    }

                    else if (!v129)
                    {
                      goto LABEL_62;
                    }

                    if (_MDSimpleQueryObjectMatches())
                    {
                      title6 = [v28 title];
                      text5 = [title6 text];
                      v54 = _MDStringPrefixOfString() == -1;

                      if (v54)
                      {
                        v128 = objc_opt_new();
                        v124 = objc_opt_new();
                        v122 = objc_opt_new();
                        [v122 setBundleIdentifier:@"com.apple.mobilesafari"];
                        [v124 setThumbnail:v122];
                        v55 = [MEMORY[0x277D4C598] textWithString:v136];
                        [v124 setTitle:v55];

                        v56 = [MEMORY[0x277D4C550] punchoutWithURL:title4];
                        v157 = v56;
                        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v157 count:1];
                        [v124 setPunchoutOptions:v57];

                        v58 = [MEMORY[0x277D4C598] textWithString:v136];
                        v156 = v58;
                        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
                        [v124 setDescriptions:v59];

                        v60 = objc_opt_new();
                        [v128 setInlineCard:v60];

                        v155 = v124;
                        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v155 count:1];
                        inlineCard = [v128 inlineCard];
                        [inlineCard setCardSections:v61];

                        absoluteString = [title4 absoluteString];
                        [v128 setContentURL:?];
                        [v128 setTopHit:{objc_msgSend(v28, "topHit")}];
                        [v128 setForceNoTopHit:{objc_msgSend(v28, "forceNoTopHit")}];
                        score = [v28 score];
                        [v128 setScore:{score, v64}];
                        protectionClass = [v28 protectionClass];
                        [v128 setProtectionClass:protectionClass];

                        [v28 rankingScore];
                        [v128 setRankingScore:?];
                        applicationBundleIdentifier = [v28 applicationBundleIdentifier];
                        [v128 setApplicationBundleIdentifier:applicationBundleIdentifier];

                        sectionBundleIdentifier = [v28 sectionBundleIdentifier];
                        [v128 setSectionBundleIdentifier:sectionBundleIdentifier];

                        resultBundleId = [v28 resultBundleId];
                        [v128 setResultBundleId:resultBundleId];

                        [v128 setType:{objc_msgSend(v28, "type")}];
                        [v128 setQueryId:{objc_msgSend(v28, "queryId")}];
                        [v128 setCompletedQuery:v136];
                        [v128 setCompletion:v136];
                        identifier = [v28 identifier];
                        v70 = [@"synthetic-bookmark-" stringByAppendingString:identifier];
                        [v128 setIdentifier:v70];

                        rankingItem = [v28 rankingItem];
                        [rankingItem attributes];
                        v72 = SSCompactRankingAttrsCopy();

                        SSCompactRankingAttrsUpdateValue();
                        SSCompactRankingAttrsUpdateValue();
                        SSCompactRankingAttrsUpdateValue();
                        v73 = [objc_alloc(MEMORY[0x277D65830]) initWithAttrs:v72];
                        [v128 setRankingItem:v73];

                        rankingItem2 = [v28 rankingItem];
                        l2FeatureVector = [rankingItem2 L2FeatureVector];
                        [l2FeatureVector originalL2Score];
                        v77 = v76;
                        rankingItem3 = [v128 rankingItem];
                        l2FeatureVector2 = [rankingItem3 L2FeatureVector];
                        LODWORD(v80) = v77;
                        [l2FeatureVector2 setOriginalL2Score:v80];

                        [v131 setObject:v128 forKey:v136];
                        if (!v132)
                        {
                          [v130 addObject:v136];
                        }
                      }

                      goto LABEL_45;
                    }
                  }
                }

LABEL_62:

                goto LABEL_63;
              }
            }
          }
        }

        resultSet = obj;
        v27 = [obj countByEnumeratingWithState:&v150 objects:v158 count:16];
      }

      while (v27);
    }

    if (v129)
    {
      _MDSimpleQueryDeallocate();
    }

    if ([v131 count])
    {
      allValues = [v131 allValues];
      resultSet2 = [sectionCopy resultSet];
      [resultSet2 addObjectsFromArray:allValues];
    }

    resultSet3 = [sectionCopy resultSet];
    [resultSet3 minusSet:v135];
  }

  v84 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v84)
  {
    bundleIdentifier6 = [sectionCopy bundleIdentifier];
    text3 = 0x281229000uLL;
    {
      v111 = MEMORY[0x277CBEB98];
      v112 = *MEMORY[0x277D65A00];
      v159[0] = *MEMORY[0x277D65B80];
      v159[1] = v112;
      v113 = *MEMORY[0x277D65B98];
      v159[2] = *MEMORY[0x277D65A20];
      v159[3] = v113;
      v114 = *MEMORY[0x277D65AA0];
      v159[4] = *MEMORY[0x277D65AE0];
      v159[5] = v114;
      v115 = *MEMORY[0x277D65A80];
      v159[6] = *MEMORY[0x277D65AB0];
      v159[7] = v115;
      v116 = *MEMORY[0x277D65A18];
      v159[8] = *MEMORY[0x277D65AB8];
      v159[9] = v116;
      v117 = *MEMORY[0x277D65BA0];
      v159[10] = *MEMORY[0x277D65B78];
      v159[11] = v117;
      v118 = *MEMORY[0x277D65BB8];
      v159[12] = *MEMORY[0x277D65A60];
      v159[13] = v118;
      v119 = *MEMORY[0x277D65AD8];
      v159[14] = *MEMORY[0x277D65A08];
      v159[15] = v119;
      v120 = *MEMORY[0x277D65B40];
      v159[16] = *MEMORY[0x277D65B60];
      v159[17] = v120;
      v159[18] = *MEMORY[0x277D65B48];
      v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:19];
      [v111 setWithArray:v121];
    }
  }

  else
  {
    v86 = 0;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  resultSet4 = [sectionCopy resultSet];
  v88 = [resultSet4 countByEnumeratingWithState:&v146 objects:v154 count:16];
  if (v88)
  {
    v89 = *v147;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v147 != v89)
        {
          objc_enumerationMutation(resultSet4);
        }

        text3 = *(*(&v146 + 1) + 8 * j);
        score2 = [text3 score];
        if (score2 & v8 | v92 & v7)
        {
          v93 = v86;
        }

        else
        {
          v93 = 1;
        }

        if ((v93 & 1) == 0 && [text3 topHit] != 2)
        {
          [text3 setTopHit:SSSetTopHitWithReasonType()];
        }

        i = [sectionCopy bundleIdentifier];
        [text3 setSectionBundleIdentifier:i];
      }

      v88 = [resultSet4 countByEnumeratingWithState:&v146 objects:v154 count:16];
    }

    while (v88);
  }

  if (!(v84 & 1 | ((v125 & 1) == 0)))
  {
    v94 = MEMORY[0x277D65978];
    userQueryString2 = [(SPKQuery *)v134 userQueryString];
    [v94 determineTopHitsForSafariSection:sectionCopy forQuery:userQueryString2];

    [MEMORY[0x277D65978] moveSafariTopHitsToTopOfSection:sectionCopy];
  }

  [MEMORY[0x277D65838] sortResultsInSection:sectionCopy currentTime:v134->_currentTime];
  [(SPCSSearchQuery *)v134 processUserActivitiesForSection:sectionCopy];
  [(SPCSSearchQuery *)v134 removeDuplicatesInSection:sectionCopy];
  if (SSEnableSpotlightTopHitPersonalizedRanking())
  {
    queryContext2 = [(SPKQuery *)v134 queryContext];
    searchEntities = [queryContext2 searchEntities];
    v98 = [searchEntities count];
    if (v98 && (-[SPKQuery queryContext](v134, "queryContext"), v86 = objc_claimAutoreleasedReturnValue(), [v86 searchEntities], text3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(text3, "lastObject"), i = objc_claimAutoreleasedReturnValue(), (objc_msgSend(i, "isScopedSearch") & 1) != 0))
    {
      isAdvancedSyntax = 1;
    }

    else
    {
      queryContext3 = [(SPKQuery *)v134 queryContext];
      isAdvancedSyntax = [queryContext3 isAdvancedSyntax];

      if (!v98)
      {
LABEL_98:

        v100 = MEMORY[0x277D65838];
        userQueryString3 = [(SPKQuery *)v134 userQueryString];
        queryContext4 = [(SPKQuery *)v134 queryContext];
        queryIdent = [queryContext4 queryIdent];
        queryContext5 = [(SPKQuery *)v134 queryContext];
        searchEntities2 = [queryContext5 searchEntities];
        v106 = [searchEntities2 count];
        queryContext6 = [(SPKQuery *)v134 queryContext];
        [queryContext6 currentTime];
        v109 = v108;
        queryContext7 = [(SPKQuery *)v134 queryContext];
        [v100 thresholdResultsInSection:sectionCopy userQuery:userQueryString3 queryID:queryIdent isEntitiesSearch:v106 != 0 currentTime:isAdvancedSyntax isScopedSearch:objc_msgSend(queryContext7 isSearchToolClient:{"isSearchToolClient"), v109}];

        goto LABEL_99;
      }
    }

    goto LABEL_98;
  }

LABEL_99:
}

CFTypeRef __34__SPCSSearchQuery_processSection___block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v4 = a3;
  if (([v4 isEqualToString:@"_ModifiedHostName_"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"kMDItemDisplayName"))
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)rankAndSendResultsWithResponseKind:(int)kind withResultSections:(id)sections withResultSets:(id)sets withiCloudDriveResultSet:(id)set withMailResultSet:(id)resultSet withCalendarResultSet:(id)calendarResultSet
{
  v165 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  setsCopy = sets;
  setCopy = set;
  resultSetCopy = resultSet;
  calendarResultSetCopy = calendarResultSet;
  v14 = atomic_load(&self->_queryCanceled);
  if (v14)
  {
    goto LABEL_111;
  }

  v116 = calendarResultSetCopy;
  v15 = SPLogForSPLogCategoryRanking();
  queryContext = [(SPKQuery *)self queryContext];
  queryIdent = [queryContext queryIdent];
  selfCopy = self;

  if (queryIdent - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v15, OS_SIGNPOST_INTERVAL_BEGIN, queryIdent, "SPCSSearchQuery.rankAndSend", &unk_26B77CA4F, buf, 2u);
  }

  v18 = [sectionsCopy count];
  if (v18 != [setsCopy count])
  {
    __assert_rtn("[SPCSSearchQuery rankAndSendResultsWithResponseKind:withResultSections:withResultSets:withiCloudDriveResultSet:withMailResultSet:withCalendarResultSet:]", "SPCSSearchQuery.mm", 2576, "resultSections.count == resultSets.count");
  }

  v148 = 0.0;
  v113 = [(SPCSSearchQuery *)self prepareRankingItems:sectionsCopy withResultSets:setsCopy totalFeatureComputationTime:&v148];
  v19 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if ([(NSArray *)self->_resultAttrs containsObject:*MEMORY[0x277CC2EF8]])
  {
    fetchl2Signals = 1;
  }

  else
  {
    queryContext2 = [(CSSearchQuery *)self->_csQuery queryContext];
    fetchl2Signals = [queryContext2 fetchl2Signals];
  }

  itemRanker = [(SPCSSearchQuery *)selfCopy itemRanker];
  v23 = *(selfCopy + 448);
  delegate = [(SPKQuery *)selfCopy delegate];
  clientBundleID = [delegate clientBundleID];
  SPL2Threshold();
  v27 = v26;
  queryContext3 = [(SPKQuery *)selfCopy queryContext];
  isCardEventSearch = [queryContext3 isCardEventSearch];
  queryContext4 = [(SPKQuery *)selfCopy queryContext];
  inferredLlmQUIntentType = [queryContext4 inferredLlmQUIntentType];
  LOBYTE(v107) = (*MEMORY[0x277D657F8] & inferredLlmQUIntentType) != 0;
  [itemRanker updateScoresForPreparedItems:v113 isCJK:v23 & 1 clientBundleID:clientBundleID thresholdValue:0 queryNodeMatchInfo:fetchl2Signals collectL2Signals:isCardEventSearch isCardSearch:v27 isDocumentSearch:v107];

  delegate2 = [(SPKQuery *)selfCopy delegate];
  queryIdent2 = [delegate2 queryIdent];
  clientBundleID2 = [delegate2 clientBundleID];
  v114 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.feature.extraction" timeInterval:0 queryId:queryIdent2];
  v115 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.indomain.score.computation" timeInterval:0 queryId:queryIdent2];
  [v115 setNanosecondInterval:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v19];
  [v114 setNanosecondInterval:(v148 * 1000000000.0)];
  objc_initWeak(&location, selfCopy);
  feedbackQueue = selfCopy->_feedbackQueue;
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __153__SPCSSearchQuery_rankAndSendResultsWithResponseKind_withResultSections_withResultSets_withiCloudDriveResultSet_withMailResultSet_withCalendarResultSet___block_invoke;
  v142[3] = &unk_279CFE548;
  objc_copyWeak(v146, &location);
  v109 = v114;
  v143 = v109;
  v146[1] = queryIdent2;
  v108 = clientBundleID2;
  v144 = v108;
  v110 = v115;
  v145 = v110;
  md_dispatch_async_propagating(feedbackQueue, v142);
  v34 = selfCopy;
  if (resultSetCopy)
  {
    [(SPCSSearchQuery *)selfCopy updateMailAttachmentResults:resultSetCopy];
  }

  if (setCopy)
  {
    v35 = setCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v37 = v35;
    v38 = [v37 countByEnumeratingWithState:&v160 objects:buf count:16];
    if (v38)
    {
      v39 = *v161;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v161 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v160 + 1) + 8 * i);
          attributeSet = [v41 attributeSet];
          documentIdentifier = [attributeSet documentIdentifier];

          if (documentIdentifier)
          {
            [dictionary setObject:v41 forKeyedSubscript:documentIdentifier];
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v160 objects:buf count:16];
      }

      while (v38);
    }

    v127 = [dictionary copy];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = setsCopy;
    v44 = [obj countByEnumeratingWithState:&v138 objects:v159 count:16];
    if (v44)
    {
      v129 = *v139;
      do
      {
        v131 = v44;
        for (j = 0; j != v131; ++j)
        {
          if (*v139 != v129)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v138 + 1) + 8 * j);
          if (v46 != v37)
          {
            v47 = v46;
            v48 = v127;
            if (v127 && v47)
            {
              v162 = 0u;
              v163 = 0u;
              v160 = 0u;
              v161 = 0u;
              v49 = v47;
              v50 = [v49 countByEnumeratingWithState:&v160 objects:buf count:16];
              if (v50)
              {
                v51 = *v161;
                do
                {
                  for (k = 0; k != v50; ++k)
                  {
                    if (*v161 != v51)
                    {
                      objc_enumerationMutation(v49);
                    }

                    attributeSet2 = [*(*(&v160 + 1) + 8 * k) attributeSet];
                    documentIdentifier2 = [attributeSet2 documentIdentifier];

                    v55 = [v48 objectForKeyedSubscript:documentIdentifier2];
                    if (v55)
                    {
                      [v49 removeObject:v55];
                    }
                  }

                  v50 = [v49 countByEnumeratingWithState:&v160 objects:buf count:16];
                }

                while (v50);
              }
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v138 objects:v159 count:16];
      }

      while (v44);
    }

    v34 = selfCopy;
  }

  if (v116)
  {
    v132 = v116;
    v56 = [v132 count];
    if (v56 - 1 >= 0)
    {
      v57 = 0;
      v58 = 0;
      obja = 0;
      v128 = 0;
      v121 = 0;
      v122 = 0;
      v130 = *MEMORY[0x277CC2C58];
      v120 = *MEMORY[0x277CC2768];
      do
      {
        v59 = [v132 objectAtIndexedSubscript:--v56];
        *buf = -1;
        *&v160 = -1;
        *&v154 = -1;
        v149 = -1;
        *&v150 = -1;
        attributeSet3 = [v59 attributeSet];
        attributeDictionary = [attributeSet3 attributeDictionary];

        v62 = [attributeDictionary objectForKeyedSubscript:v130];
        v63 = [objc_opt_class() titleStringFromAttrs:attributeDictionary];
        if (v62)
        {
          calendar = [MEMORY[0x277D658E8] calendar];
          [calendar getEra:0 year:buf month:&v160 day:&v154 fromDate:v62];

          calendar2 = [MEMORY[0x277D658E8] calendar];
          [calendar2 getEra:0 yearForWeekOfYear:0 weekOfYear:&v149 weekday:&v150 fromDate:v62];

          v66 = [attributeDictionary objectForKeyedSubscript:v120];
          v67 = v66;
          v68 = 0;
          if (v63 && v66)
          {
            if ([v58 isEqualToString:v66] && objc_msgSend(v57, "isEqualToString:", v63))
            {
              v68 = v150 == obja || v154 == v128;
              if (*buf == v122 && v160 == v121)
              {
                v71 = v154 == v128 + 1 || v154 == v128 - 1;
                v68 |= v71;
              }
            }

            else
            {
              v68 = 0;
            }
          }

          v72 = v63;

          obja = v150;
          v128 = v154;
          v121 = v160;
          v122 = *buf;
          if (v68)
          {
            [v132 removeObjectAtIndex:v56];
          }
        }

        else
        {
          v72 = v57;
          v67 = v58;
        }

        v57 = v72;
        v58 = v67;
      }

      while (v56 > 0);
    }

    v34 = selfCopy;
  }

  [(SPCSSearchQuery *)v34 slowFetchAttributes:setsCopy];
  [(SPCSSearchQuery *)v34 buildFullSearchResults:sectionsCopy withResultSets:setsCopy];
  if ((kind & 0xFFFFFFFE) != 2)
  {
    isPhotosSearch = v34->_isPhotosSearch;
    v75 = sectionsCopy;
    v76 = v75;
    if (!isPhotosSearch)
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v77 = v75;
      v78 = [v77 countByEnumeratingWithState:&v154 objects:buf count:16];
      if (v78)
      {
        v79 = 0;
        v80 = *v155;
        do
        {
          for (m = 0; m != v78; ++m)
          {
            if (*v155 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v82 = *(*(&v154 + 1) + 8 * m);
            bundleIdentifier = [v82 bundleIdentifier];
            if ([v83 containsObject:bundleIdentifier])
            {
              results = [v82 results];
              v86 = [results count] != 0;

              v79 += v86;
            }

            else
            {
            }
          }

          v78 = [v77 countByEnumeratingWithState:&v154 objects:buf count:16];
        }

        while (v78);

        if (v79 == 1)
        {
          goto LABEL_87;
        }
      }

      else
      {
      }

      goto LABEL_90;
    }

LABEL_87:
LABEL_90:
    v88 = *v87;
    v89 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v76, "count")}];
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v90 = v76;
    v91 = [v90 countByEnumeratingWithState:&v150 objects:&v160 count:16];
    if (v91)
    {
      v92 = *v151;
      do
      {
        for (n = 0; n != v91; ++n)
        {
          if (*v151 != v92)
          {
            objc_enumerationMutation(v90);
          }

          v94 = *(*(&v150 + 1) + 8 * n);
          bundleIdentifier2 = [v94 bundleIdentifier];
          v96 = [v88 containsObject:bundleIdentifier2];

          if ((v96 & 1) == 0)
          {
            [v89 addObject:v94];
          }
        }

        v91 = [v90 countByEnumeratingWithState:&v150 objects:&v160 count:16];
      }

      while (v91);
    }

    v73 = [v89 copy];
    goto LABEL_100;
  }

  v73 = sectionsCopy;
LABEL_100:
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v97 = v73;
  v98 = [v97 countByEnumeratingWithState:&v134 objects:v158 count:16];
  if (v98)
  {
    v99 = *v135;
    do
    {
      for (ii = 0; ii != v98; ++ii)
      {
        if (*v135 != v99)
        {
          objc_enumerationMutation(v97);
        }

        [(SPCSSearchQuery *)selfCopy processSection:*(*(&v134 + 1) + 8 * ii)];
      }

      v98 = [v97 countByEnumeratingWithState:&v134 objects:v158 count:16];
    }

    while (v98);
  }

  v101 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:-[SPKQuery queryGroupId](selfCopy kind:"queryGroupId") sourceKind:kind sections:{1, v97}];
  userQueryString = [(SPKQuery *)selfCopy userQueryString];
  [v101 setUserQueryString:userQueryString];

  os_unfair_lock_lock(&selfCopy->_suggestionsLock);
  v103 = [(NSMutableArray *)selfCopy->_suggestionResults copy];
  [v101 setLocalSuggestionResults:v103];

  os_unfair_lock_unlock(&selfCopy->_suggestionsLock);
  [(SPCSSearchQuery *)selfCopy _sendResponse:v101];
  v104 = SPLogForSPLogCategoryRanking();
  queryContext5 = [(SPKQuery *)selfCopy queryContext];
  queryIdent3 = [queryContext5 queryIdent];

  if (queryIdent3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v104, OS_SIGNPOST_INTERVAL_END, queryIdent3, "SPCSSearchQuery.rankAndSend", &unk_26B77CA4F, buf, 2u);
  }

  objc_destroyWeak(v146);
  objc_destroyWeak(&location);

  calendarResultSetCopy = v116;
LABEL_111:
}

void __153__SPCSSearchQuery_rankAndSendResultsWithResponseKind_withResultSections_withResultSets_withiCloudDriveResultSet_withMailResultSet_withCalendarResultSet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v3 sendFeedbackType:21 feedback:*(a1 + 32) queryId:*(a1 + 64) clientID:*(a1 + 40)];

    v4 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v4 sendFeedbackType:21 feedback:*(a1 + 48) queryId:*(a1 + 64) clientID:*(a1 + 40)];

    WeakRetained = v5;
  }
}

- (void)sendResponseWithKind:(int)kind
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(&self->_queryCanceled);
  if (v3)
  {
    return;
  }

  begin = self->_indexResultsRegistry.results.__begin_;
  end = self->_indexResultsRegistry.results.__end_;
  v6 = kind & 0xFFFFFFFE;
  if (begin == end)
  {
LABEL_14:
    [(SPCSSearchQuery *)self constructResultsForResponse:v6 == 2];
    v11 = atomic_load(&self->_queryCanceled);
    if (v11)
    {
      return;
    }

    if (v6 != 2)
    {
      v68 = v12 = *MEMORY[0x277D65C18];
      v14 = v13 = *MEMORY[0x277D65CB8];
      [v68 unionOrderedSet:v14];
      v69 = ;
      v16 = v15 = *MEMORY[0x277D65CC0];
      [v69 unionOrderedSet:v16];
      v70 = ;
      v18 = v17 = *MEMORY[0x277D65CA8];
      [v70 unionOrderedSet:v18];
      v19 = ;
      [v19 removeAllObjects];
      v20 = ;
      [v20 removeAllObjects];
      v21 = ;
      [v21 removeAllObjects];
    }

    p_bundleIdToResultsMap = &self->_bundleIdToResultsMap;
    v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_bundleIdToResultsMap.map.__table_.__size_];
    v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_bundleIdToResultsMap.map.__table_.__size_];
    v62 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_bundleIdToResultsMap.map.__table_.__size_];
    next = self->_bundleIdToResultsMap.map.__table_.__first_node_.__next_;
    if (!next)
    {
      v24 = 0;
      v63 = 0;
      v65 = 0;
      v66 = 0;
LABEL_45:
      if ([v71 count])
      {
        if (v6 == 2)
        {
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v38 = v62;
          v39 = [v38 countByEnumeratingWithState:&v86 objects:v90 count:16];
          if (v39)
          {
            v40 = *v87;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v87 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v86 + 1) + 8 * i);
                  v43 = {;
                  [v43 removeAllObjects];
                }

                else
                {
                  v44 = v42;
                  std::string::basic_string[abi:nn200100]<0>(buf, -[NSString UTF8String](v42, "UTF8String"));
                  std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__erase_unique<std::string>(p_bundleIdToResultsMap, buf);
                  if (v85 < 0)
                  {
                    operator delete(*buf);
                  }
                }
              }

              v39 = [v38 countByEnumeratingWithState:&v86 objects:v90 count:16];
            }

            while (v39);
          }
        }

        if (v24)
        {
          v45 = [v71 copy];
          v46 = [v72 copy];
          objc_initWeak(buf, self);
          rankQueue = self->_rankQueue;
          v48 = qos_class_self();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __40__SPCSSearchQuery_sendResponseWithKind___block_invoke_2;
          block[3] = &unk_279CFE598;
          objc_copyWeak(&v79, buf);
          kindCopy = kind;
          v74 = v45;
          v75 = v46;
          v76 = v66;
          v77 = v65;
          v78 = v63;
          v49 = v46;
          v50 = v45;
          v51 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v48, 0, block);
          dispatch_async(rankQueue, v51);

          objc_destroyWeak(&v79);
          objc_destroyWeak(buf);
        }

        else
        {
          v52 = objc_alloc(MEMORY[0x277D65860]);
          queryGroupId = [(SPKQuery *)self queryGroupId];
          v54 = [v52 initWithQueryID:queryGroupId kind:kind sourceKind:1 sections:MEMORY[0x277CBEBF8]];
          userQueryString = [(SPKQuery *)self userQueryString];
          [v54 setUserQueryString:userQueryString];

          os_unfair_lock_lock(&self->_suggestionsLock);
          v56 = [(NSMutableArray *)self->_suggestionResults copy];
          [v54 setLocalSuggestionResults:v56];

          os_unfair_lock_unlock(&self->_suggestionsLock);
          objc_initWeak(buf, self);
          v57 = self->_rankQueue;
          LODWORD(v56) = qos_class_self();
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __40__SPCSSearchQuery_sendResponseWithKind___block_invoke;
          v81[3] = &unk_279CFE570;
          objc_copyWeak(&v83, buf);
          v82 = v54;
          v58 = v54;
          v59 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v56, 0, v81);
          dispatch_async(v57, v59);

          objc_destroyWeak(&v83);
          objc_destroyWeak(buf);
        }
      }

      v37 = v71;
      goto LABEL_63;
    }

    v65 = 0;
    v66 = 0;
    v63 = 0;
    v24 = 0;
    v25 = *MEMORY[0x277D65A80];
    v64 = *MEMORY[0x277D65BF8];
    v60 = *MEMORY[0x277D65BD8];
    while (1)
    {
      v26 = next[5];
      v27 = next[6];
      bundleIdentifier = [v26 bundleIdentifier];
      v29 = bundleIdentifier;
      if (v6 == 2)
      {
        lastObject4 = bundleIdentifier;
        {
          goto LABEL_39;
        }

        {

          if (!v31)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }

        [v71 addObject:v26];
        v32 = [MEMORY[0x277CBEB40] orderedSetWithOrderedSet:v27];
        [v72 addObject:v32];

        [v62 addObject:lastObject4];
      }

      else
      {
        [v71 addObject:v26];
        [v72 addObject:v27];
      }

      if ([v29 isEqualToString:v25])
      {
        lastObject = [v72 lastObject];
        v34 = v66;
        v66 = lastObject;
      }

      else if ([v29 isEqualToString:v64])
      {
        lastObject2 = [v72 lastObject];
        v34 = v65;
        v65 = lastObject2;
      }

      else
      {
        if (![v29 isEqualToString:v60])
        {
          goto LABEL_36;
        }

        lastObject3 = [v72 lastObject];
        v34 = v63;
        v63 = lastObject3;
      }

LABEL_36:
      if (!v24)
      {
        lastObject4 = [v72 lastObject];
        v24 = [lastObject4 count] != 0;
LABEL_39:

        goto LABEL_40;
      }

      v24 = 1;
LABEL_40:

      next = *next;
      if (!next)
      {
        goto LABEL_45;
      }
    }
  }

  while (v6 != 2 || ![*(begin + 1) isEqualToString:@"com.apple.searchd.engagement"])
  {
LABEL_13:
    begin = (begin + 152);
    if (begin == end)
    {
      goto LABEL_14;
    }
  }

  v7 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v7, OS_LOG_TYPE_DEFAULT, "Found com.apple.searchd.engagement", buf, 2u);
  }

  v8 = *(begin + 8);
  v9 = *(begin + 9);
  if (v8 == v9)
  {
LABEL_10:
    v10 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v10, OS_LOG_TYPE_DEFAULT, "Found no exact-match on previous engagement", buf, 2u);
    }

    goto LABEL_13;
  }

  {
    v8 += 5;
    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }

  v37 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v37, OS_LOG_TYPE_DEFAULT, "Delay returning results; previous engagement of non-priority result found", buf, 2u);
  }

LABEL_63:
}

void __40__SPCSSearchQuery_sendResponseWithKind___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendResponse:*(a1 + 32)];
}

void __40__SPCSSearchQuery_sendResponseWithKind___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained rankAndSendResultsWithResponseKind:*(a1 + 80) withResultSections:*(a1 + 32) withResultSets:*(a1 + 40) withiCloudDriveResultSet:*(a1 + 48) withMailResultSet:*(a1 + 56) withCalendarResultSet:*(a1 + 64)];
}

- (id)_makeUniqueFetchAttributesWithAttributes:(id)attributes extraAttributes:(id)extraAttributes slowFetchAttributeSet:(id)set
{
  v35 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  extraAttributesCopy = extraAttributes;
  setCopy = set;
  v11 = [attributesCopy count];
  v12 = [extraAttributesCopy count];
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12 + v11];
  selfCopy = self;
  v14 = [MEMORY[0x277CBEB58] setWithArray:attributesCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        if (([attributesCopy containsObject:v19] & 1) != 0 || objc_msgSend(extraAttributesCopy, "containsObject:", v19))
        {
          [v13 addObject:v19];
          [v14 removeObject:v19];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    allObjects = [v14 allObjects];
    [v13 addObjectsFromArray:allObjects];
  }

  if (setCopy)
  {
    v21 = objc_opt_new();
    v22 = [v13 count];
    if (v22 - 1 >= 0)
    {
      do
      {
        v23 = [v13 objectAtIndexedSubscript:--v22];
        v24 = [setCopy containsObject:v23];

        if (v24)
        {
          v25 = [v13 objectAtIndexedSubscript:v22];
          [v21 addObject:v25];

          [v13 removeObjectAtIndex:v22];
        }
      }

      while (v22 > 0);
    }

    v26 = [v21 copy];
    slowFetchAttrs = selfCopy->_slowFetchAttrs;
    selfCopy->_slowFetchAttrs = v26;
  }

  return v13;
}

- (id)disabledBundlesWithParseDisabledBundles:(id)bundles filterEventBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  v6 = [MEMORY[0x277CBEB58] setWithArray:bundles];
  queryContext = [(SPKQuery *)self queryContext];
  disabledBundles = [queryContext disabledBundles];
  v9 = [disabledBundles count];

  if (v9)
  {
    queryContext2 = [(SPKQuery *)self queryContext];
    disabledBundles2 = [queryContext2 disabledBundles];
    [v6 addObjectsFromArray:disabledBundles2];
  }

  {
  }

  v12 = *MEMORY[0x277D65B38];
  v13 = [v6 containsObject:*MEMORY[0x277D65B38]];
  v14 = *MEMORY[0x277D65AA8];
  v15 = [v6 containsObject:*MEMORY[0x277D65AA8]];
  if (!(v15 & 1 | ((v13 & 1) == 0)) || (v14 = v12, !(v13 & 1 | ((v15 & 1) == 0))))
  {
    [v6 addObject:v14];
  }

  [v6 addObject:*MEMORY[0x277D65AC0]];
  if ([v6 containsObject:*MEMORY[0x277D65A20]])
  {
    v16 = *MEMORY[0x277D65B50];
    if (([v6 containsObject:*MEMORY[0x277D65B50]] & 1) == 0)
    {
      [v6 addObject:v16];
    }
  }

  queryContext3 = [(SPKQuery *)self queryContext];
  isSearchToolClient = [queryContext3 isSearchToolClient];

  if ((isSearchToolClient & 1) == 0 && self->_parsecAvailable)
  {
    [v6 addObject:*MEMORY[0x277D65AC8]];
  }

  if (bundleCopy)
  {
    [v6 addObject:*MEMORY[0x277D65BF0]];
    v19 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_26B71B000, v19, OS_LOG_TYPE_DEFAULT, "[personal answers][query] filter query added to avoid search over events bundle", v22, 2u);
    }
  }

  allObjects = [v6 allObjects];

  return allObjects;
}

- (id)filterQueriesWithParseFilterQueries:(id)queries onlyApps:(BOOL)apps filterOrphanedFiles:(BOOL)files
{
  filesCopy = files;
  v8 = [MEMORY[0x277CBEB18] arrayWithArray:queries];
  queryContext = [(SPKQuery *)self queryContext];
  filterQueries = [queryContext filterQueries];
  v11 = [filterQueries count];

  if (v11)
  {
    queryContext2 = [(SPKQuery *)self queryContext];
    filterQueries2 = [queryContext2 filterQueries];
    [v8 addObjectsFromArray:filterQueries2];
  }

  queryContext3 = [(SPKQuery *)self queryContext];
  isSearchToolClient = [queryContext3 isSearchToolClient];

  if (isSearchToolClient)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemDisableSearchInSpotlight!=1 || _kMDItemBundleID=%@)", *MEMORY[0x277D65B80]];
    [v8 addObject:v16];

    {
      goto LABEL_32;
    }

    v17 = @"(kMDItemContentRating!=1)";
    goto LABEL_31;
  }

  [v8 addObject:@"kMDItemDisableSearchInSpotlight!=1"];
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"!(kMDItemContentRating=1 && (_kMDItemBundleID=%@ || _kMDItemBundleID=%@))", *MEMORY[0x277D65B58], *MEMORY[0x277D65AD0]];
    [v8 addObject:v18];
  }

  else
  {
    [v8 addObject:@"(kMDItemContentRating!=1)"];
  }

  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ != %@", *MEMORY[0x277CC2D78], *MEMORY[0x277CC2358]];
    [v8 addObject:v19];
  }

  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(!(_kMDItemBundleID=%@ && kMDItemGenre=Erotica))", *MEMORY[0x277D65A08]];
    [v8 addObject:v20];
  }

  if (!apps)
  {
    {
      v21 = MEMORY[0x277CCACA8];
      v23 = [v21 stringWithFormat:@"(%@!=%@ || %@<=%d)", *MEMORY[0x277CC2D78], *MEMORY[0x277CC2350], *MEMORY[0x277CC2A78], v22];
      [v8 addObject:v23];
    }

    {
      v24 = MEMORY[0x277CCACA8];
      v26 = [v24 stringWithFormat:@"(%@!=%@ || %@<=%d)", *MEMORY[0x277CC2D78], *MEMORY[0x277CC2368], *MEMORY[0x277CC2A78], v25];
      [v8 addObject:v26];
    }

    contentFilters = self->_contentFilters;
    if (contentFilters)
    {
      if (contentFilters)
      {
        if ((contentFilters & 2) != 0)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsLocal=1 || _kMDItemBundleID!=%@ || _kMDItemBundleID!=%@)", *MEMORY[0x277D65AD8], @"com.apple.videos"];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsLocal=1 || _kMDItemBundleID!=%@)", *MEMORY[0x277D65AD8]];
        }
        v28 = ;
        [v8 addObject:v28];
        goto LABEL_28;
      }

      if ((contentFilters & 2) != 0)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsLocal=1 || _kMDItemBundleID!=%@)", @"com.apple.videos"];
        [v8 addObject:v28];
LABEL_28:
      }
    }
  }

  [v8 addObject:@"(_kMDItemUserActivityType != com.apple.stocks.v2.ForYouFeed && _kMDItemUserActivityType != com.apple.stocks.v2.SymbolFeed"];
  [v8 addObject:@"(kMDItemIsTrashed!=1)"];
  if (!filesCopy)
  {
    goto LABEL_32;
  }

  v17 = @"(!(_kMDItemBundleID == com.apple.CloudDocs.MobileDocumentsFileProvider ||_kMDItemBundleID == com.apple.FileProvider.LocalStorage ||_kMDItemBundleID == com.apple.CloudDocs.iCloudDriveFileProvider ||_kMDItemBundleID == com.apple.CloudDocs.iCloudDriveFileProviderManaged) || _kMDItemQueryPathOIDFlat != kMDQueryConstantOrphanOID)";
LABEL_31:
  [v8 addObject:v17];
LABEL_32:
  v29 = [v8 copy];

  return v29;
}

- (void)executeQuery
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_26B71B000, v0, OS_LOG_TYPE_DEBUG, "[debug][personal answers][query] personalAnswersQueries = %@", v1, 0xCu);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 60, *(a1 + 32));
    v3 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v3 sendFeedbackType:5 feedback:*(a1 + 32) queryId:*(a1 + 56) clientID:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_3;
  v6[3] = &unk_279CFE570;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained foundItems:*(a1 + 32)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_5;
  v6[3] = &unk_279CFE570;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained completed:*(a1 + 32)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_7;
  v14[3] = &unk_279CFE610;
  objc_copyWeak(&v18, (a1 + 40));
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v18);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained foundCompletion:*(a1 + 32) scores:*(a1 + 40) bundleIDs:*(a1 + 48)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_9;
  v6[3] = &unk_279CFE570;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained foundCompletions:*(a1 + 32)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_11;
  block[3] = &unk_279CFE660;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained priorityGatherEnded];
}

- (void)foundCompletion:(id)completion scores:(id)scores bundleIDs:(id)ds
{
  completionCopy = completion;
  scoresCopy = scores;
  dsCopy = ds;
  v10 = [(NSMutableDictionary *)self->_completionSuggestions objectForKey:completionCopy];

  if (!v10)
  {
    emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
    v12 = MEMORY[0x277CC34D8];
    userQueryString = [(SPKQuery *)self userQueryString];
    v14 = [v12 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:userQueryString tokens:MEMORY[0x277CBEBF8]];

    v15 = MEMORY[0x277CC34D8];
    userQueryString2 = [(SPKQuery *)self userQueryString];
    v17 = [v15 suggestionWithCurrentSuggestion:v14 userQueryString:userQueryString2 completion:completionCopy attributes:dsCopy scores:scoresCopy options:MEMORY[0x277CBEC10]];

    if (v17)
    {
      v18 = MEMORY[0x277D659B8];
      queryContext = [(SPKQuery *)self queryContext];
      v20 = [v18 buildResultWithSpotlightSuggestion:v17 queryContext:queryContext];

      [(NSMutableDictionary *)self->_completionSuggestions setObject:v20 forKey:completionCopy];
    }
  }
}

- (void)foundCompletions:(id)completions
{
  os_unfair_lock_lock(&self->_suggestionsLock);
  v4 = (*(self + 376) & 1) != 0 || [(NSMutableDictionary *)self->_completionSuggestions count]|| [(NSMutableArray *)self->_suggestionResults count]!= 0;
  *(self + 376) = *(self + 376) & 0xFE | v4;
  suggestionResults = self->_suggestionResults;
  allValues = [(NSMutableDictionary *)self->_completionSuggestions allValues];
  [(NSMutableArray *)suggestionResults addObjectsFromArray:allValues];

  os_unfair_lock_unlock(&self->_suggestionsLock);
}

- (void)priorityGatherEnded
{
  if (!self->_isPhotosSearch)
  {
    v3 = SSPriorityIndexDelayMilliseconds() / 1000.0;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    [(SPKQuery *)self queryStartTime];
    v7 = v5 - v6;
    if (v7 >= v3)
    {

      [(SPCSSearchQuery *)self sendResponseWithKind:2];
    }

    else
    {
      v8 = v3 - v7;
      v9 = self->_timeoutTimer;
      if (v9)
      {
        v10 = v9;
        v11 = dispatch_time(0, (v8 * 1000000000.0));
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, (v3 / 5.0 * 1000000000.0));
      }

      else
      {
        dispatchQueue = self->_dispatchQueue;
        if (!dispatchQueue)
        {
          [SPCSSearchQuery priorityGatherEnded];
        }

        v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);
        timeoutTimer = self->_timeoutTimer;
        self->_timeoutTimer = v10;

        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __38__SPCSSearchQuery_priorityGatherEnded__block_invoke;
        handler[3] = &unk_279CFE378;
        handler[4] = self;
        dispatch_source_set_event_handler(v10, handler);
        v14 = dispatch_time(0, (v8 * 1000000000.0));
        dispatch_source_set_timer(v10, v14, 0xFFFFFFFFFFFFFFFFLL, (v3 / 5.0 * 1000000000.0));
        dispatch_activate(v10);
      }
    }
  }
}

- (void)completed:(id)completed
{
  completedCopy = completed;
  {
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v5 = timeoutTimer;
      dispatch_source_cancel(v5);
      v6 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }
  }

  [(SPCSSearchQuery *)self sendResponseWithKind:4];
}

- (id).cxx_construct
{
  *&self->_indexResultsRegistry.queryId = 0u;
  *&self->_indexResultsRegistry.results.__begin_ = 0u;
  *&self->_indexResultsRegistry.results.__cap_ = 0u;
  p_bundleIdToResultsMap = &self->_bundleIdToResultsMap;
  self->_bundleIdToResultsMap.map.__table_.__bucket_list_ = 0u;
  *&self->_bundleIdToResultsMap.map.__table_.__first_node_.__next_ = 0u;
  self->_bundleIdToResultsMap.map.__table_.__max_load_factor_ = 1.0;
  *&self->_bundleIdToResultsMap.peopleResultsSection = 0u;
  *&self->_bundleIdToResultsMap.syndicatedGeneralPhotosSection = 0u;
  *&self->_bundleIdToResultsMap.syndicatedPhotosInNotesSection = 0u;
  *&self->_bundleIdToResultsMap.syndicatedPhotosInMessagesSection = 0u;
  v4 = *&self->_bundleIdToResultsMap.syndicatedLinkSection = 0u;
  syndicatedLinkSection = p_bundleIdToResultsMap->syndicatedLinkSection;
  p_bundleIdToResultsMap->syndicatedLinkSection = v4;
  v6 = ;
  syndicatedPhotosInAppsSection = p_bundleIdToResultsMap->syndicatedPhotosInAppsSection;
  p_bundleIdToResultsMap->syndicatedPhotosInAppsSection = v6;
  v8 = ;
  syndicatedPhotosInMessagesSection = p_bundleIdToResultsMap->syndicatedPhotosInMessagesSection;
  p_bundleIdToResultsMap->syndicatedPhotosInMessagesSection = v8;
  v10 = ;
  syndicatedFilesInMessagesSection = p_bundleIdToResultsMap->syndicatedFilesInMessagesSection;
  p_bundleIdToResultsMap->syndicatedFilesInMessagesSection = v10;
  v12 = ;
  syndicatedPhotosInNotesSection = p_bundleIdToResultsMap->syndicatedPhotosInNotesSection;
  p_bundleIdToResultsMap->syndicatedPhotosInNotesSection = v12;
  v14 = ;
  syndicatedPhotosInFilesSection = p_bundleIdToResultsMap->syndicatedPhotosInFilesSection;
  p_bundleIdToResultsMap->syndicatedPhotosInFilesSection = v14;
  v16 = ;
  syndicatedGeneralPhotosSection = p_bundleIdToResultsMap->syndicatedGeneralPhotosSection;
  p_bundleIdToResultsMap->syndicatedGeneralPhotosSection = v16;
  v18 = ;
  contactResultsSection = p_bundleIdToResultsMap->contactResultsSection;
  p_bundleIdToResultsMap->contactResultsSection = v18;
  v20 = ;
  peopleResultsSection = p_bundleIdToResultsMap->peopleResultsSection;
  p_bundleIdToResultsMap->peopleResultsSection = v20;
  v22 = ;
  photosSection = p_bundleIdToResultsMap->photosSection;
  p_bundleIdToResultsMap->photosSection = v22;

  return self;
}

void __29__SPCSSearchQuery_initialize__block_invoke_cold_1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_26B71B000, log, OS_LOG_TYPE_ERROR, "got error fetching me card info: %ld", buf, 0xCu);
}

void __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_cold_1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_26B71B000, log, OS_LOG_TYPE_ERROR, "[Mail Attachment] could not fetch all attributes. Related items: %lu. Attributes fetched: %lu", buf, 0x16u);
}

@end