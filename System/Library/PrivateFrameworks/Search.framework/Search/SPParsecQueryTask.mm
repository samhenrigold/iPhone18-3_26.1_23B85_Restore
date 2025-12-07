@interface SPParsecQueryTask
- (SDSearchQuery)resultPipe;
- (SPParsecQueryTask)initWithStore:(id)store resultPipe:(id)pipe queue:(id)queue visibleApps:(id)apps hiddenApps:(id)hiddenApps;
- (id)findLocalCopies:(id)copies alternativeResults:(id)results withQueryString:(id)string;
- (id)rerankMapsResultsWithLocalSignals:(id)signals forQueryId:(int64_t)id;
- (id)unarchiveWithQuery:(id)query;
- (void)archiveWithQuery:(id)query didFinishWithResults:(id)results withSuggestions:(id)suggestions withCorrections:(id)corrections suggestionsAreBlended:(BOOL)blended;
- (void)cancel;
- (void)dealloc;
- (void)finished;
- (void)geoUserSessionEntityString:(id)string;
- (void)query:(id)query didFinishWithResults:(id)results withSuggestions:(id)suggestions withCorrections:(id)corrections withAlternativeResults:(id)alternativeResults suggestionsAreBlended:(BOOL)blended;
- (void)queryDidFinishLoading:(id)loading;
- (void)resumeWithArchive:(id)archive;
- (void)resumeWithTimeout:(double)timeout;
@end

@implementation SPParsecQueryTask

- (void)resumeWithTimeout:(double)timeout
{
  self->_timeOut = timeout;
  self->_queryStartTime = CFAbsoluteTimeGetCurrent();
  parsecQuery = [(SPParsecQueryTask *)self parsecQuery];
  [parsecQuery resume];
}

- (id)unarchiveWithQuery:(id)query
{
  v3 = [SPParsecArchive archivePathForQuery:query];
  v4 = [NSData dataWithContentsOfFile:v3];
  v11 = 0;
  v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v11];
  v6 = v11;
  v10 = v6;
  v7 = [v5 decodeTopLevelObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey error:&v10];
  v8 = v10;

  return v7;
}

- (void)resumeWithArchive:(id)archive
{
  archiveCopy = archive;
  query = [archiveCopy query];
  resultsSections = [archiveCopy resultsSections];
  suggestions = [archiveCopy suggestions];
  corrections = [archiveCopy corrections];
  suggestionsAreBlended = [archiveCopy suggestionsAreBlended];

  [(SPParsecQueryTask *)self query:query didFinishWithResults:resultsSections withSuggestions:suggestions withCorrections:corrections withAlternativeResults:0 suggestionsAreBlended:suggestionsAreBlended];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  v3.receiver = self;
  v3.super_class = SPParsecQueryTask;
  [(SPParsecQueryTask *)&v3 dealloc];
}

- (SPParsecQueryTask)initWithStore:(id)store resultPipe:(id)pipe queue:(id)queue visibleApps:(id)apps hiddenApps:(id)hiddenApps
{
  storeCopy = store;
  pipeCopy = pipe;
  queueCopy = queue;
  appsCopy = apps;
  hiddenAppsCopy = hiddenApps;
  v27.receiver = self;
  v27.super_class = SPParsecQueryTask;
  v18 = [(SPParsecQueryTask *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_store, store);
    objc_storeWeak(&v19->_resultPipe, pipeCopy);
    objc_storeStrong(&v19->_queue, queue);
    pthread_mutex_init(&v19->_mutex, 0);
    v19->_type = 1;
    v20 = objc_opt_new();
    rankingInfo = v19->_rankingInfo;
    v19->_rankingInfo = v20;

    if (appsCopy)
    {
      v22 = appsCopy;
    }

    else
    {
      v22 = SPCopyVisibleApps();
    }

    setOfVisibleApps = v19->_setOfVisibleApps;
    v19->_setOfVisibleApps = v22;

    if (hiddenAppsCopy)
    {
      v24 = hiddenAppsCopy;
    }

    else
    {
      v24 = SPFastHiddenAppsGetNoBuild();
    }

    setOfHiddenApps = v19->_setOfHiddenApps;
    v19->_setOfHiddenApps = v24;
  }

  return v19;
}

- (void)finished
{
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v79 = *v3;
  v80 = v4;
  v81 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPParsecQueryTask finished]";
  si_tracing_log_span_begin();
  v8 = SPLogForSPLogCategoryDefault();
  v9 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v8, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, ((v9 & 1) == 0), "#query parsec finished", buf, 2u);
  }

  if (pthread_mutex_trylock(&self->_mutex))
  {
    v56 = "pthread_mutex_trylock(&_mutex)==0";
    v57 = 278;
    goto LABEL_65;
  }

  if (pthread_mutex_unlock(&self->_mutex))
  {
    v56 = "pthread_mutex_unlock(&_mutex)==0";
    v57 = 279;
LABEL_65:
    __assert_rtn("[SPParsecQueryTask finished]", "SPParsecDatastore.m", v57, v56);
  }

  Current = CFAbsoluteTimeGetCurrent();
  self->_queryEndTime = Current;
  v11 = Current - self->_queryStartTime;
  timeOut = self->_timeOut;
  v67 = v3;
  if (v11 > timeOut)
  {
    [(SPParsecDatastore *)self->_store updateParsecBeyondTimeoutCount:v11 - timeOut <= 0.05];
  }

  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
  self->_done = 1;
  category_stats = [(PRSQueryTask *)self->_parsecQuery category_stats];
  [(PRSRankingConfiguration *)self->_rankingInfo setSqfData:category_stats];

  server_features = [(PRSQueryTask *)self->_parsecQuery server_features];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerFeatures:server_features];

  [(PRSRankingConfiguration *)self->_rankingInfo setParsecCategoryOrder:self->_parsecResultsCategoryOrder];
  serverRelevanceScores = [(PRSQueryTask *)self->_parsecQuery serverRelevanceScores];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerRelevanceScores:serverRelevanceScores];

  [(PRSQueryTask *)self->_parsecQuery serverRelevanceScoreThreshold];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerRelevanceScoreThreshold:?];
  v16 = objc_opt_new();
  engagementSignal = [(PRSQueryTask *)self->_parsecQuery engagementSignal];
  v18 = [v16 initWithSFEngagementSignal:engagementSignal];
  [(PRSRankingConfiguration *)self->_rankingInfo setIFunScores:v18];

  cepDictionary = [(SPParsecDatastore *)self->_store cepDictionary];
  cannedCEPValues = cepDictionary;
  if (!cepDictionary)
  {
    cannedCEPValues = [(SPParsecDatastore *)self->_store cannedCEPValues];
  }

  [(PRSRankingConfiguration *)self->_rankingInfo setQueryIndependentCategoryProbabilities:cannedCEPValues];
  if (!cepDictionary)
  {
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = self->_parsecResults;
  v64 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (!v64)
  {
    v21 = -1.0;
    goto LABEL_42;
  }

  v63 = *v76;
  v21 = -1.0;
  do
  {
    for (i = 0; i != v64; i = i + 1)
    {
      if (*v76 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v66 = *(*(&v75 + 1) + 8 * i);
      bundleIdentifier = [v66 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
      }

      else
      {
        bundleIdentifier2 = [v66 bundleIdentifier];
        v24 = [bundleIdentifier2 hasPrefix:@"com.apple.parsec.app_distr"];

        if (!v24)
        {
          goto LABEL_36;
        }
      }

      v25 = objc_opt_new();
      results = [v66 results];
      v27 = [results count] == 0;

      if (!v27)
      {
        v21 = 0.0;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      results2 = [v66 results];
      v29 = [results2 countByEnumeratingWithState:&v71 objects:v86 count:16];
      if (v29)
      {
        v30 = *v72;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v72 != v30)
            {
              objc_enumerationMutation(results2);
            }

            v32 = *(*(&v71 + 1) + 8 * j);
            applicationBundleIdentifier = [v32 applicationBundleIdentifier];
            if ([(NSSet *)self->_setOfVisibleApps containsObject:applicationBundleIdentifier])
            {
              v34 = SPLogForSPLogCategoryDefault();
              v35 = v34;
              if (gSPLogDebugAsDefault)
              {
                v36 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                v36 = OS_LOG_TYPE_DEBUG;
              }

              if (os_log_type_enabled(v34, v36))
              {
                *buf = 138412290;
                v83 = applicationBundleIdentifier;
                _os_log_impl(&_mh_execute_header, v35, v36, "De-dupped app with bundle id: %@", buf, 0xCu);
              }

              v3 = v67;
              [v25 addObject:v32];
              v21 = v21 + 1.0;
            }
          }

          v29 = [results2 countByEnumeratingWithState:&v71 objects:v86 count:16];
        }

        while (v29);
      }

      [v66 removeResultsInArray:v25];
      [v66 setHiddenExtResults:v25];

LABEL_36:
      if ([v66 domain] != 1)
      {
        [v66 setDomain:2];
      }
    }

    v64 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  }

  while (v64);
LABEL_42:

  *&v37 = v21;
  [(PRSRankingConfiguration *)self->_rankingInfo setNumAppsDeduped:v37];
  if (self->_canceled)
  {
    v38 = "finish_canceled";
  }

  else
  {
    v38 = "finished";
  }

  sub_100017E38(WeakRetained, v38, "parsec", self->_startTime);
  if (!self->_canceled)
  {
    v39 = SPLogForSPLogCategoryDefault();
    v40 = v39;
    if (gSPLogDebugAsDefault)
    {
      v41 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v41 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v39, v41))
    {
      v42 = objc_opt_class();
      v43 = qos_class_self();
      *buf = 138412546;
      v83 = v42;
      v84 = 1024;
      LODWORD(v85) = v43;
      _os_log_impl(&_mh_execute_header, v40, v41, "QOS %@ finished: %d", buf, 0x12u);
    }

    v44 = +[SDController workQueue];
    v45 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AB34;
    block[3] = &unk_100091EA8;
    v69 = WeakRetained;
    selfCopy = self;
    v46 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v45, 0, block);
    tracing_dispatch_async();
  }

  v47 = SPLogForSPLogCategoryDefault();
  v48 = v47;
  if (gSPLogDebugAsDefault)
  {
    v49 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v49 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v47, v49))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "#query parsec done", buf, 2u);
  }

  v50 = SPLogForSPLogCategoryDefault();
  v51 = v50;
  if (gSPLogDebugAsDefault)
  {
    v52 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v52 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v50, v52))
  {
    queryContext = [WeakRetained queryContext];
    searchString = [queryContext searchString];
    v55 = [(NSArray *)self->_parsecResults valueForKey:@"title"];
    *buf = 138412546;
    v83 = searchString;
    v84 = 2112;
    v85 = v55;
    _os_log_impl(&_mh_execute_header, v51, v52, "Parsec query: %@ returned results: %@", buf, 0x16u);
  }

  parsecQuery = self->_parsecQuery;
  if (parsecQuery)
  {
    [(PRSQueryTask *)parsecQuery invalidateHandler];
    v59 = self->_parsecQuery;
  }

  else
  {
    v59 = 0;
  }

  self->_parsecQuery = 0;

  objc_storeWeak(&self->_resultPipe, 0);
  atomic_fetch_add(dword_1000A8900, 0xFFFFFFFF);
  si_tracing_log_span_end();
  v60 = v80;
  *v3 = v79;
  *(v3 + 16) = v60;
  *(v3 + 32) = v81;
}

- (void)cancel
{
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v14 = *v3;
  v15 = v4;
  v16 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPParsecQueryTask cancel]";
  si_tracing_log_span_begin();
  self->_canceled = 1;
  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "#query parsec cancel", buf, 2u);
  }

  v12 = objc_loadWeakRetained(&self->_resultPipe);
  tracing_dispatch_async();

  si_tracing_log_span_end();
  v11 = v15;
  *v3 = v14;
  *(v3 + 16) = v11;
  *(v3 + 32) = v16;
}

- (void)queryDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  v4 = si_tracing_current_span();
  v9 = *v4;
  v10 = *(v4 + 16);
  v11 = *(v4 + 32);
  v5 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v4 + 8);
  *v4 = v5;
  *(v4 + 8) = spanid;
  *(v4 + 16) = v7;
  *(v4 + 28) = 102;
  *(v4 + 32) = "[SPParsecQueryTask queryDidFinishLoading:]";
  si_tracing_log_span_begin();
  v8 = loadingCopy;
  tracing_dispatch_async();

  si_tracing_log_span_end();
  *v4 = v9;
  *(v4 + 16) = v10;
  *(v4 + 32) = v11;
}

- (void)geoUserSessionEntityString:(id)string
{
  stringCopy = string;
  resultPipe = [(SPParsecQueryTask *)self resultPipe];
  [resultPipe setGeoUserSessionEntityString:stringCopy];
}

- (void)archiveWithQuery:(id)query didFinishWithResults:(id)results withSuggestions:(id)suggestions withCorrections:(id)corrections suggestionsAreBlended:(BOOL)blended
{
  blendedCopy = blended;
  queryCopy = query;
  resultsCopy = results;
  suggestionsCopy = suggestions;
  correctionsCopy = corrections;
  v15 = si_tracing_current_span();
  v25 = *v15;
  v26 = *(v15 + 16);
  v27 = *(v15 + 32);
  v16 = *v15;
  spanid = si_tracing_calc_next_spanid();
  v18 = *(v15 + 8);
  *v15 = v16;
  *(v15 + 8) = spanid;
  *(v15 + 16) = v18;
  *(v15 + 28) = 102;
  *(v15 + 32) = "[SPParsecQueryTask archiveWithQuery:didFinishWithResults:withSuggestions:withCorrections:suggestionsAreBlended:]";
  si_tracing_log_span_begin();
  v19 = [[SPParsecArchive alloc] initWithQuery:queryCopy withResults:resultsCopy withSuggestions:suggestionsCopy withCorrections:correctionsCopy suggestionsAreBlended:blendedCopy withStore:self->_store];
  queryString = [queryCopy queryString];
  v21 = [SPParsecArchive archivePathForQuery:queryString];

  v22 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v22 encodeObject:v19 forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v22 encodedData];
  [encodedData writeToFile:v21 atomically:1];

  si_tracing_log_span_end();
  *v15 = v25;
  *(v15 + 16) = v26;
  *(v15 + 32) = v27;
}

- (id)findLocalCopies:(id)copies alternativeResults:(id)results withQueryString:(id)string
{
  copiesCopy = copies;
  resultsCopy = results;
  stringCopy = string;
  v7 = si_tracing_current_span();
  v8 = *(v7 + 16);
  v163 = *v7;
  v164 = v8;
  v165 = *(v7 + 32);
  v116 = v7;
  v9 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v11 = *(v116 + 8);
  *v116 = v9;
  *(v116 + 8) = spanid;
  *(v116 + 16) = v11;
  *(v116 + 28) = 102;
  *(v116 + 32) = "[SPParsecQueryTask findLocalCopies:alternativeResults:withQueryString:]";
  si_tracing_log_span_begin();
  if (![copiesCopy count])
  {
    allValues = 0;
    goto LABEL_79;
  }

  v132 = objc_opt_new();
  v134 = objc_opt_new();
  v133 = objc_opt_new();
  v112 = objc_opt_new();
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = copiesCopy;
  v126 = [obj countByEnumeratingWithState:&v159 objects:v172 count:16];
  if (!v126)
  {
    goto LABEL_22;
  }

  v124 = *v160;
  v12 = PRSRankingParsecAppBundleString;
  do
  {
    for (i = 0; i != v126; i = i + 1)
    {
      if (*v160 != v124)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v159 + 1) + 8 * i);
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      results = [v13 results];
      v15 = [results countByEnumeratingWithState:&v155 objects:v171 count:16];
      if (v15)
      {
        v16 = *v156;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v156 != v16)
            {
              objc_enumerationMutation(results);
            }

            v18 = *(*(&v155 + 1) + 8 * j);
            sectionBundleIdentifier = [v18 sectionBundleIdentifier];
            v20 = [sectionBundleIdentifier isEqualToString:v12];

            if (v20)
            {
              title = [v18 title];
              text = [title text];
              [v134 addObject:text];

              applicationBundleIdentifier = [v18 applicationBundleIdentifier];
              [v133 addObject:applicationBundleIdentifier];
LABEL_17:

              continue;
            }

            if (objc_opt_respondsToSelector())
            {
              storeIdentifier = [v18 storeIdentifier];
              v25 = storeIdentifier == 0;

              if (!v25)
              {
                applicationBundleIdentifier = [v18 storeIdentifier];
                [v132 addObject:applicationBundleIdentifier];
                goto LABEL_17;
              }
            }
          }

          v15 = [results countByEnumeratingWithState:&v155 objects:v171 count:16];
        }

        while (v15);
      }
    }

    v126 = [obj countByEnumeratingWithState:&v159 objects:v172 count:16];
  }

  while (v126);
LABEL_22:

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v26 = resultsCopy;
  v27 = [v26 countByEnumeratingWithState:&v151 objects:v170 count:16];
  if (v27)
  {
    v28 = *v152;
    v29 = PRSRankingParsecAppBundleString;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v152 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v151 + 1) + 8 * k);
        sectionBundleIdentifier2 = [v31 sectionBundleIdentifier];
        v33 = [sectionBundleIdentifier2 isEqualToString:v29];

        if (v33)
        {
          title2 = [v31 title];
          text2 = [title2 text];
          [v134 addObject:text2];

          applicationBundleIdentifier2 = [v31 applicationBundleIdentifier];
          [v133 addObject:applicationBundleIdentifier2];
LABEL_32:

          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          storeIdentifier2 = [v31 storeIdentifier];
          v38 = storeIdentifier2 == 0;

          if (!v38)
          {
            applicationBundleIdentifier2 = [v31 storeIdentifier];
            [v132 addObject:applicationBundleIdentifier2];
            goto LABEL_32;
          }
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v151 objects:v170 count:16];
    }

    while (v27);
  }

  if ([v132 count] || objc_msgSend(v134, "count"))
  {
    v111 = sub_10005C424(@"kMDItemAdamID", v132);
    v109 = sub_10005C424(@"kMDItemDisplayName", v134);
    v108 = sub_10005C424(@"kMDItemAlternateNames", v134);
    if (v109 && v108)
    {
      v108 = [&stru_100094040 stringByAppendingFormat:@"(_kMDItemBundleID = com.apple.application && ((%@) || (%@)))", v109, v108];
      if (!v111)
      {
        v42 = v108;
        goto LABEL_45;
      }

      v40 = v108;
      v41 = [(__CFString *)v108 stringByAppendingString:@" || "];

      v42 = v41;
    }

    else
    {
      v42 = &stru_100094040;
      if (!v111)
      {
LABEL_45:
        v113 = v42;
        if (![(__CFString *)v42 length])
        {

          v113 = @"false";
        }

        WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
        v45 = [WeakRetained hash];

        v46 = [PRSRankingItemRanker alloc];
        v47 = objc_loadWeakRetained(&self->_resultPipe);
        queryContext = [v47 queryContext];
        keyboardLanguage = [queryContext keyboardLanguage];
        v50 = objc_loadWeakRetained(&self->_resultPipe);
        queryContext2 = [v50 queryContext];
        [queryContext2 currentTime];
        v52 = -v45;
        v107 = [v46 initWithSearchString:stringCopy queryID:v52 language:keyboardLanguage currentTime:?];

        v53 = objc_loadWeakRetained(&self->_resultPipe);
        queryContext3 = [v53 queryContext];
        queryKind = [queryContext3 queryKind];
        v56 = objc_loadWeakRetained(&self->_resultPipe);
        queryContext4 = [v56 queryContext];
        keyboardLanguage2 = [queryContext4 keyboardLanguage];
        v119 = [v107 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:PRSRankingSearchBundleString spotlightQuery:v113 userQuery:stringCopy tokenString:0 queryKind:queryKind flags:0 keyboardLanguage:keyboardLanguage2];

        v115 = objc_alloc_init(CSSearchQueryContext);
        [v115 setQueryID:v52];
        v169 = NSFileProtectionCompleteUntilFirstUserAuthentication;
        v59 = [NSArray arrayWithObjects:&v169 count:1];
        [v115 setProtectionClasses:v59];

        [v115 setEntitledAttributes:1];
        v60 = rankingPrefetchedAttributesArray();
        [v115 setFetchAttributes:v60];

        rankingQueries = [v119 rankingQueries];
        [v115 setRankingQueries:rankingQueries];

        v62 = objc_loadWeakRetained(&self->_resultPipe);
        queryContext5 = [v62 queryContext];
        [queryContext5 currentTime];
        v65 = v64;

        if (qword_1000A8910 != -1)
        {
          sub_1000639D0();
        }

        v66 = [[NSMapTable alloc] initWithKeyOptions:66307 valueOptions:0 capacity:256];
        fetchAttributes = [v115 fetchAttributes];
        v67 = [fetchAttributes count];
        v148[0] = _NSConcreteStackBlock;
        v148[1] = 3221225472;
        v148[2] = sub_10005C658;
        v148[3] = &unk_100093C18;
        v150 = v65;
        v68 = v66;
        v149 = v68;
        v106 = objc_retainBlock(v148);
        v69 = dispatch_group_create();
        dispatch_group_enter(v69);
        v70 = objc_alloc_init(NSMutableIndexSet);
        v71 = objc_opt_new();
        Current = CFAbsoluteTimeGetCurrent();
        if (v67)
        {
          for (m = 0; m != v67; ++m)
          {
            requiredAttributes = [v119 requiredAttributes];
            v75 = [fetchAttributes objectAtIndexedSubscript:m];
            v76 = [requiredAttributes containsObject:v75];

            if (v76)
            {
              [v70 addIndex:m];
            }
          }
        }

        v139[0] = _NSConcreteStackBlock;
        v139[1] = 3221225472;
        v139[2] = sub_10005D244;
        v139[3] = &unk_100093C80;
        v101 = v68;
        v140 = v101;
        v146 = v67;
        v102 = v70;
        v141 = v102;
        v142 = v133;
        v143 = v112;
        v104 = v71;
        v144 = v104;
        group = v69;
        v145 = group;
        v147 = Current;
        v105 = objc_retainBlock(v139);
        v77 = +[SPCoreSpotlightIndexer sharedInstance];
        v110 = [v77 taskForTopHitQueryWithQueryString:v113 queryContext:v115 eventHandler:v106 resultsHandler:&stru_100093C58 completionHandler:v105];

        if (v110)
        {
          v78 = +[SPCoreSpotlightIndexer sharedInstance];
          [v78 startQueryTask:v110];

          v79 = group;
        }

        else
        {
          v79 = group;
          dispatch_group_leave(group);
        }

        v80 = dispatch_time(0, 500000000);
        dispatch_group_wait(v79, v80);
        allValues = [v104 allValues];
        for (obja = 0; [allValues count] > obja; ++obja)
        {
          v121 = [allValues objectAtIndexedSubscript:?];
          results2 = [v121 results];
          v82 = [results2 copy];

          v127 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v82, "count")}];
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v125 = v82;
          v83 = [v125 countByEnumeratingWithState:&v135 objects:v168 count:16];
          if (v83)
          {
            v131 = *v136;
            do
            {
              for (n = 0; n != v83; n = n + 1)
              {
                if (*v136 != v131)
                {
                  objc_enumerationMutation(v125);
                }

                v85 = *(*(&v135 + 1) + 8 * n);
                v86 = objc_loadWeakRetained(&self->_resultPipe);
                queryContext6 = [v86 queryContext];
                v88 = [v85 resultWithTime:stringCopy searchString:0 isCorrectedQuery:queryContext6 withQueryContext:v65];

                if (v88)
                {
                  [v88 setType:26];
                  rankingItem = [v85 rankingItem];
                  l2FeatureVector = [rankingItem L2FeatureVector];
                  if (l2FeatureVector)
                  {
                    v91 = v85 == 0;
                  }

                  else
                  {
                    v91 = 1;
                  }

                  v92 = !v91;

                  if (v92)
                  {
                    v166[0] = @"score";
                    [rankingItem score];
                    v93 = [NSNumber numberWithFloat:?];
                    v167[0] = v93;
                    v166[1] = @"raw score";
                    [rankingItem rawScore];
                    v94 = [NSNumber numberWithFloat:?];
                    v167[1] = v94;
                    v166[2] = @"original score";
                    l2FeatureVector2 = [rankingItem L2FeatureVector];
                    [l2FeatureVector2 originalL2Score];
                    v96 = [NSNumber numberWithFloat:?];
                    v167[2] = v96;
                    v97 = [NSDictionary dictionaryWithObjects:v167 forKeys:v166 count:3];
                    [v88 setLocalFeatures:v97];
                  }

                  [v127 addObject:v88];
                  rankingItem2 = [v85 rankingItem];
                  [rankingItem2 score];
                  [v88 setL2score:?];
                }

                [v85 clearClientData];
              }

              v83 = [v125 countByEnumeratingWithState:&v135 objects:v168 count:16];
            }

            while (v83);
          }

          [v121 setResults:v127];
        }

        goto LABEL_78;
      }
    }

    v111 = [(__CFString *)v42 stringByAppendingFormat:@"(%@)", v111];

    v42 = v111;
    goto LABEL_45;
  }

  allValues = 0;
LABEL_78:

LABEL_79:
  si_tracing_log_span_end();
  v99 = v164;
  *v116 = v163;
  *(v116 + 16) = v99;
  *(v116 + 32) = v165;

  return allValues;
}

- (void)query:(id)query didFinishWithResults:(id)results withSuggestions:(id)suggestions withCorrections:(id)corrections withAlternativeResults:(id)alternativeResults suggestionsAreBlended:(BOOL)blended
{
  blendedCopy = blended;
  queryCopy = query;
  resultsCopy = results;
  suggestionsCopy = suggestions;
  correctionsCopy = corrections;
  alternativeResultsCopy = alternativeResults;
  if (byte_1000A8928 == 1)
  {
    [(SPParsecQueryTask *)self archiveWithQuery:queryCopy didFinishWithResults:resultsCopy withSuggestions:suggestionsCopy withCorrections:correctionsCopy suggestionsAreBlended:blendedCopy];
  }

  v105 = blendedCopy;
  selfCopy = self;
  v106 = correctionsCopy;
  v121 = objc_opt_new();
  v133 = objc_opt_new();
  v117 = SSEnableSpotlightTopHitPersonalizedRanking();
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = resultsCopy;
  v17 = &MDItemContentModificationDate_ptr;
  v129 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
  if (v129)
  {
    v127 = *v148;
    v125 = SSSectionIdentifierSuggestions;
    v131 = SSSectionIdentifierServerRelatedSuggestions;
    v116 = SSSectionIdentifierWebIndex;
    v113 = SSSectionIdentifierKG;
    v114 = SSSectionIdentifierMaps;
    v112 = SSSectionIdentifierStocks;
    v111 = SSSectionIdentifierSports;
    v110 = SSSectionIdentifierMovies;
    v104 = SSSectionIdentifierParsecDictionary;
    v103 = SSSectionIdentifierParsecWeather;
    do
    {
      v18 = 0;
      do
      {
        if (*v148 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v147 + 1) + 8 * v18);
        bundleIdentifier = [v19 bundleIdentifier];
        v21 = [bundleIdentifier isEqualToString:v125];

        if (v21)
        {
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          results = [v19 results];
          v23 = [results countByEnumeratingWithState:&v143 objects:v155 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v144;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v144 != v25)
                {
                  objc_enumerationMutation(results);
                }

                v27 = *(*(&v143 + 1) + 8 * i);
                queryContext = [queryCopy queryContext];
                v29 = [SSSuggestionResultBuilder buildResultWithResult:v27 queryContext:queryContext];

                [v133 addObject:v29];
              }

              v24 = [results countByEnumeratingWithState:&v143 objects:v155 count:16];
            }

            while (v24);
          }

          v17 = &MDItemContentModificationDate_ptr;
          goto LABEL_54;
        }

        bundleIdentifier2 = [v19 bundleIdentifier];
        v31 = [bundleIdentifier2 isEqualToString:v131];

        if (v31)
        {
          v122 = v18;
          v118 = [objc_alloc(v17[317]) initWithResultSection:v19];
          v32 = objc_opt_new();
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          results2 = [v19 results];
          v34 = [results2 countByEnumeratingWithState:&v139 objects:v154 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v140;
            do
            {
              for (j = 0; j != v35; j = j + 1)
              {
                if (*v140 != v36)
                {
                  objc_enumerationMutation(results2);
                }

                v38 = *(*(&v139 + 1) + 8 * j);
                queryContext2 = [queryCopy queryContext];
                v40 = [SSSuggestionResultBuilder buildResultWithResult:v38 queryContext:queryContext2];

                [v40 setSectionBundleIdentifier:v131];
                [v32 addObject:v40];
              }

              v35 = [results2 countByEnumeratingWithState:&v139 objects:v154 count:16];
            }

            while (v35);
          }

          [v118 setResults:v32];
          [v121 addObject:v118];

          v17 = &MDItemContentModificationDate_ptr;
          v18 = v122;
          goto LABEL_54;
        }

        bundleIdentifier3 = [v19 bundleIdentifier];
        if (([bundleIdentifier3 isEqualToString:v116] & 1) == 0)
        {
          bundleIdentifier4 = [v19 bundleIdentifier];
          if (([bundleIdentifier4 isEqualToString:v113] & 1) == 0)
          {
            bundleIdentifier5 = [v19 bundleIdentifier];
            if (([bundleIdentifier5 isEqualToString:v114] & 1) == 0)
            {
              v123 = v18;
              bundleIdentifier6 = [v19 bundleIdentifier];
              if (([bundleIdentifier6 isEqualToString:v112] & 1) == 0)
              {
                bundleIdentifier7 = [v19 bundleIdentifier];
                if (([bundleIdentifier7 isEqualToString:v111] & 1) == 0)
                {
                  bundleIdentifier8 = [v19 bundleIdentifier];
                  if (([bundleIdentifier8 isEqualToString:v110] & 1) == 0)
                  {
                    v119 = bundleIdentifier8;
                    bundleIdentifier9 = [v19 bundleIdentifier];
                    if (([bundleIdentifier9 hasPrefix:@"com.apple.parsec.itunes."] & 1) == 0)
                    {
                      v108 = bundleIdentifier9;
                      bundleIdentifier10 = [v19 bundleIdentifier];
                      if (([bundleIdentifier10 isEqualToString:v104] & 1) == 0)
                      {
                        [v19 bundleIdentifier];
                        v63 = v101 = bundleIdentifier7;
                        v102 = [v63 isEqualToString:v103];

                        v18 = v123;
                        if ((v102 & 1) == 0)
                        {
                          [v121 addObject:v19];
                          goto LABEL_54;
                        }

                        goto LABEL_42;
                      }

                      bundleIdentifier9 = v108;
                    }

                    bundleIdentifier8 = v119;
                  }
                }
              }

              v18 = v123;
            }
          }
        }

LABEL_42:
        v49 = [objc_alloc(v17[317]) initWithResultSection:v19];
        if (_os_feature_enabled_impl())
        {
          bundleIdentifier11 = [v19 bundleIdentifier];
          if (![bundleIdentifier11 isEqualToString:v114])
          {
            goto LABEL_48;
          }

          mapsParsecRanker = [(SPParsecDatastore *)selfCopy->_store mapsParsecRanker];

          if (mapsParsecRanker)
          {
            v52 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Geo personalization enabled, reranking geo results with local signals", buf, 2u);
            }

            bundleIdentifier11 = [v19 results];
            v53 = -[SPParsecQueryTask rerankMapsResultsWithLocalSignals:forQueryId:](selfCopy, "rerankMapsResultsWithLocalSignals:forQueryId:", bundleIdentifier11, [queryCopy queryIdent]);
            [v49 setResults:v53];

LABEL_48:
          }
        }

        v54 = v121;
        if (v117)
        {
          v124 = v18;
          v55 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier12 = [v49 bundleIdentifier];
            *buf = 138412290;
            v153 = bundleIdentifier12;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "TopHit nomination for server results based on local engagement and personalization signals. Server section: %@", buf, 0xCu);
          }

          queryString = [queryCopy queryString];
          resultPipe = [(SPParsecQueryTask *)selfCopy resultPipe];
          queryContext3 = [resultPipe queryContext];
          keyboardLanguage = [queryContext3 keyboardLanguage];
          queryContext4 = [queryCopy queryContext];
          [queryContext4 currentTime];
          v62 = [SSRankingManager nominateServerTopHitForSection:v49 queryString:queryString language:keyboardLanguage currentTime:?];
          [v49 setResults:v62];

          v54 = v121;
          v18 = v124;
        }

        [v54 addObject:v49];

LABEL_54:
        v18 = v18 + 1;
      }

      while (v18 != v129);
      v64 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
      v129 = v64;
    }

    while (v64);
  }

  queryString2 = [queryCopy queryString];
  v66 = [(SPParsecQueryTask *)selfCopy findLocalCopies:v121 alternativeResults:alternativeResultsCopy withQueryString:queryString2];

  v126 = v66;
  if ([v66 count])
  {
    v67 = [v121 arrayByAddingObjectsFromArray:v66];
  }

  else
  {
    v67 = v121;
  }

  v68 = v67;

  v132 = +[NSMutableArray array];
  v69 = objc_opt_new();
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v130 = v68;
  v70 = [v130 countByEnumeratingWithState:&v135 objects:v151 count:16];
  v128 = v69;
  if (v70)
  {
    v71 = v70;
    v72 = *v136;
    do
    {
      for (k = 0; k != v71; k = k + 1)
      {
        if (*v136 != v72)
        {
          objc_enumerationMutation(v130);
        }

        v74 = *(*(&v135 + 1) + 8 * k);
        v75 = [objc_alloc(v17[317]) initWithResultSection:v74];
        [v75 setSource:2];
        [v132 addObject:v75];
        bundleIdentifier13 = [v74 bundleIdentifier];

        if (bundleIdentifier13)
        {
          bundleIdentifier14 = [v74 bundleIdentifier];
          if (!bundleIdentifier14)
          {
            goto LABEL_73;
          }

LABEL_69:
          [v74 setBundleIdentifier:bundleIdentifier14];
          [v69 addObject:bundleIdentifier14];

          goto LABEL_73;
        }

        results3 = [v74 results];
        if (results3)
        {
          v79 = results3;
          results4 = [v74 results];
          v81 = [results4 count];

          v69 = v128;
          if (v81)
          {
            results5 = [v74 results];
            v83 = [results5 objectAtIndex:0];
            bundleIdentifier14 = [v83 sectionBundleIdentifier];

            v69 = v128;
            if (bundleIdentifier14)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_73:
      }

      v71 = [v130 countByEnumeratingWithState:&v135 objects:v151 count:16];
    }

    while (v71);
  }

  v84 = selfCopy;
  if (![v132 count] && !objc_msgSend(suggestionsCopy, "count"))
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_resultPipe);
    sub_100017E38(WeakRetained, "finish_zero", "parsec", selfCopy->_startTime);

    v69 = v128;
  }

  if (suggestionsCopy)
  {
    v86 = SPLogForSPLogCategoryDefault();
    v87 = v86;
    if (gSPLogDebugAsDefault)
    {
      v88 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v88 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v86, v88))
    {
      *buf = 138412290;
      v153 = suggestionsCopy;
      _os_log_impl(&_mh_execute_header, v87, v88, "Received suggestions: %@", buf, 0xCu);
    }

    v84 = selfCopy;
  }

  resultPipe2 = [(SPParsecQueryTask *)v84 resultPipe];
  disabledBundles = [resultPipe2 disabledBundles];
  if ([disabledBundles count])
  {
    disabledBundles2 = [resultPipe2 disabledBundles];
    v69 = v128;
    v92 = [NSSet setWithArray:disabledBundles2];
  }

  else
  {
    v92 = 0;
  }

  if (!selfCopy->_canceled)
  {
    v93 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      sub_100063C40(queryCopy);
    }

    category_stats = [queryCopy category_stats];
    [(SPParsecQueryTask *)selfCopy setCategory_stats:category_stats];

    server_features = [queryCopy server_features];
    [(SPParsecQueryTask *)selfCopy setServer_features:server_features];

    v69 = v128;
  }

  v96 = v69;
  if ([v69 count])
  {
    v97 = [v69 copy];
    [(SPParsecQueryTask *)selfCopy setParsecResultsCategoryOrder:v97];
  }

  [(SPParsecQueryTask *)selfCopy setQuerySuggestionResults:v133];
  selfCopy->_suggestionsAreBlended = v105;
  v134 = v92;
  v98 = queryCopy;
  v99 = v92;
  v100 = v132;
  tracing_dispatch_async();
  [resultPipe2 addQueryCorrections:v106];
}

- (id)rerankMapsResultsWithLocalSignals:(id)signals forQueryId:(int64_t)id
{
  signalsCopy = signals;
  v7 = logForCSLogCategoryPersonalization();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "rerankMapsResultsWithLocalSignals", " enableTelemetry=YES ", buf, 2u);
  }

  mapsParsecRanker = [(SPParsecDatastore *)self->_store mapsParsecRanker];
  v12 = [mapsParsecRanker rerankMapsResultsWithLocalSignals:signalsCopy forQueryId:id];

  v13 = v10;
  v14 = v13;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v8, "rerankMapsResultsWithLocalSignals", &unk_100079B12, v16, 2u);
  }

  return v12;
}

- (SDSearchQuery)resultPipe
{
  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);

  return WeakRetained;
}

@end