@interface SPCoreSpotlightTask
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)queryID;
- (BOOL)addJob:(id)job;
- (SPCoreSpotlightTask)initWithQueryString:(id)string queryContext:(id)context;
- (__CFArray)copyMatchInfo;
- (__SIQuery)_makeSIQueryWithQueryString:(id)string queryContext:(id)context;
- (id)_makeAdditionalQueryStringForQueryContext:(id)context;
- (id)_makeBundleQueryStringForField:(id)field withBundleIDs:(id)ds;
- (id)_makeBundleQueryStringForQueryContext:(id)context;
- (id)_makeDisabledBundlesQueryStringForQueryContext:(id)context;
- (id)_makeFilterQueryStringForQueryContext:(id)context;
- (id)_makeInstantAnswersQueryStringForQueryContext:(id)context;
- (id)_makePrefsQueryStringWithBundleIDs:(id)ds prefsDisabledBundles:(id)bundles;
- (id)_pommesBundlesWithQueryContext:(id)context queryID:(unint64_t)d;
- (void)addMatchInfo:(_MDPlistContainer *)info;
- (void)cancel;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)pauseResults;
- (void)removeJob:(id)job;
- (void)resumeResults;
- (void)schedule;
- (void)start;
@end

@implementation SPCoreSpotlightTask

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  clientBundleID = [a2 clientBundleID];
  v6 = 138412546;
  selfCopy = self;
  v8 = 2112;
  v9 = clientBundleID;
  _os_log_error_impl(&dword_231A35000, a3, OS_LOG_TYPE_ERROR, "Failed to create the query for queryString:%@, clientBundleID:%@", &v6, 0x16u);
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)queryID
{
  internalQueryId = self->_queryID.internalQueryId;
  queryId = self->_queryID.queryId;
  result.var1 = internalQueryId;
  result.var0 = queryId;
  return result;
}

- (void)schedule
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_231A35000, v0, v1, "schedule query %@", v2, v3, v4, v5);
}

- (void)dealloc
{
  if (!self->_finished)
  {
    [SPCoreSpotlightTask dealloc];
  }

  if (!self->_canceled)
  {
    [(SPCoreSpotlightTask *)self cancel];
  }

  if (self->_siQuery)
  {
    SIQueryRelease();
  }

  v3.receiver = self;
  v3.super_class = SPCoreSpotlightTask;
  [(SPCoreSpotlightTask *)&v3 dealloc];
}

- (void)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SPCoreSpotlightTask *)selfCopy setCanceled:1];
  jobs = selfCopy->_jobs;
  if (jobs)
  {
    v4 = jobs;
    v5 = selfCopy->_jobs;
  }

  else
  {
    v5 = 0;
  }

  selfCopy->_jobs = 0;

  objc_sync_exit(selfCopy);
  v6 = [(NSMutableArray *)jobs count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = jobs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  [(SPQueryResultsQueue *)selfCopy->_resultsQueue cancel];
  v11 = logForCSLogCategoryQuery([(SPCoreSpotlightTask *)selfCopy resumeResults]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v17 = selfCopy;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Canceled task:%p (%lu jobs)", buf, 0x16u);
  }
}

- (void)resumeResults
{
  obj = self;
  objc_sync_enter(obj);
  if ([(SPCoreSpotlightTask *)obj hasPausedResults])
  {
    [(SPCoreSpotlightTask *)obj setHasPausedResults:0];
    [(SPQueryResultsQueue *)obj->_resultsQueue resumeResults];
  }

  objc_sync_exit(obj);
}

- (id)_makeBundleQueryStringForField:(id)field withBundleIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithFormat:", @"FieldMatch(%@, "), fieldCopy;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      v12 = @"%@";
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendFormat:v12, *(*(&v15 + 1) + 8 * i)];
          v12 = @", %@";
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = @", %@";
      }

      while (v10);
    }

    if ([v8 containsObject:@"com.apple.MobileAddressBook"] && (objc_msgSend(v8, "containsObject:", @"com.apple.CoreSuggestions") & 1) == 0)
    {
      [v7 appendString:{@", com.apple.CoreSuggestions"}];
    }

    [v7 appendString:@""]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_makePrefsQueryStringWithBundleIDs:(id)ds prefsDisabledBundles:(id)bundles
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  bundlesCopy = bundles;
  if ([dsCopy count] || objc_msgSend(bundlesCopy, "count"))
  {
    v7 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", CFSTR("(_kMDItemBundleID=com.apple.Preferences && FieldMatch(kMDItemRelatedAppBundleIdentifier"));
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
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

          [v7 appendFormat:@", %@", *(*(&v23 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = bundlesCopy;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v7 appendFormat:@", %@", *(*(&v19 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    [v7 appendString:@"]"));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_makeDisabledBundlesQueryStringForQueryContext:(id)context
{
  v51 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  disableBundles = [contextCopy disableBundles];
  if ([contextCopy filterOutHiddenApps])
  {
    prefsDisabledBundles = [contextCopy prefsDisabledBundles];
  }

  else
  {
    prefsDisabledBundles = 0;
  }

  if ([disableBundles count] || objc_msgSend(prefsDisabledBundles, "count"))
  {
    v40 = prefsDisabledBundles;
    v42 = contextCopy;
    fpBundleIDs = [MEMORY[0x277CC33F0] fpBundleIDs];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = disableBundles;
    v9 = disableBundles;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      v13 = @"com.apple.MobileAddressBook";
      v14 = @"com.apple.spotlight.events";
      do
      {
        v15 = 0;
        v43 = v11;
        do
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v44 + 1) + 8 * v15);
          if (([fpBundleIDs containsObject:v16] & 1) == 0)
          {
            v17 = [(NSSet *)self->_knownBundleIds containsObject:v16];
            if (v17)
            {
              [v8 addObject:v16];
            }

            else
            {
              v18 = v12;
              v19 = v8;
              v20 = fpBundleIDs;
              v21 = v14;
              v22 = v13;
              v23 = v9;
              selfCopy = self;
              v25 = logForCSLogCategoryDefault(v17);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = v16;
                _os_log_debug_impl(&dword_231A35000, v25, OS_LOG_TYPE_DEBUG, "Skipping unknown disabled bundle %@", buf, 0xCu);
              }

              self = selfCopy;
              v9 = v23;
              v13 = v22;
              v14 = v21;
              fpBundleIDs = v20;
              v8 = v19;
              v12 = v18;
              v11 = v43;
            }

            if ([v16 isEqualToString:v13])
            {
              [v8 addObject:@"com.apple.spotlight.contacts"];
            }

            if ([v16 isEqualToString:v14])
            {
              [v8 addObject:v14];
            }

            if ([v16 isEqualToString:@"com.apple.usernotificationsd"])
            {
              [v8 addObject:@"com.apple.usernotificationsd"];
            }
          }

          ++v15;
        }

        while (v11 != v15);
        v11 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v11);
    }

    contextCopy = v42;
    if (v8)
    {
      v26 = [(SPCoreSpotlightTask *)self _makeBundleQueryStringForField:@"_kMDItemBundleID" withBundleIDs:v8];
    }

    else
    {
      v26 = 0;
    }

    prefsDisabledBundles = v40;
    filterOutHiddenApps = [v42 filterOutHiddenApps];
    if (filterOutHiddenApps)
    {
      v28 = logForCSLogCategoryDefault(filterOutHiddenApps);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightTask _makeDisabledBundlesQueryStringForQueryContext:v42];
      }
    }

    if ([v42 filterOutHiddenApps])
    {
      v29 = v9;
    }

    else
    {
      v29 = v8;
    }

    v30 = [(SPCoreSpotlightTask *)self _makeBundleQueryStringForField:@"kMDItemRelatedAppBundleIdentifier" withBundleIDs:v29];
    v31 = [(SPCoreSpotlightTask *)self _makePrefsQueryStringWithBundleIDs:v9 prefsDisabledBundles:v40];
    mEMORY[0x277CC33F0] = [MEMORY[0x277CC33F0] sharedInstance];
    v33 = [mEMORY[0x277CC33F0] filterForDisabledBundles:v9];

    v34 = @"false";
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = @"false";
    }

    if (v26)
    {
      v36 = v26;
    }

    else
    {
      v36 = @"false";
    }

    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = @"false";
    }

    if (v30)
    {
      v34 = v30;
    }

    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"(!((%@) || (%@) || (%@) || ((%@) && _kMDItemBundleID!=com.apple.people.screenTimeRequest", v35, v36, v37, v34];

    disableBundles = v41;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)_makeFilterQueryStringForQueryContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  filterQueries = [context filterQueries];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(filterQueries, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = filterQueries;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 length])
        {
          v11 = [v10 length];
          v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v11 + 2];
          objc_msgSend(v12, "appendString:", @"(");
          [v12 appendString:v10];
          [v12 appendString:@""]);
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [v4 componentsJoinedByString:@" && "];
    v14 = logForCSLogCategoryDefault(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "With filters: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_makeAdditionalQueryStringForQueryContext:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  bundleIDs = [contextCopy bundleIDs];
  additionalBundleIDs = [contextCopy additionalBundleIDs];
  additionalQueries = [contextCopy additionalQueries];
  if ([additionalBundleIDs count] || objc_msgSend(additionalQueries, "count"))
  {
    v27 = contextCopy;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = bundleIDs;
    obj = bundleIDs;
    v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      v30 = *MEMORY[0x277CC2500];
      v28 = *v39;
      do
      {
        v10 = 0;
        v29 = v8;
        do
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * v10);
          if ([additionalBundleIDs containsObject:v11])
          {
            v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ == %@)", v30, v11];
            [v32 addObject:v12];
          }

          else
          {
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v12 = additionalQueries;
            v13 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v35;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v35 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v34 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"<:b:>" withString:v11];
                  [v6 addObject:v17];
                }

                v14 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v14);
              v9 = v28;
              v8 = v29;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
    }

    allObjects = [v32 allObjects];
    v19 = [allObjects componentsJoinedByString:@" || "];

    allObjects2 = [v6 allObjects];
    v21 = [allObjects2 componentsJoinedByString:@" || "];

    if ([v19 length] && objc_msgSend(v21, "length"))
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@) && (%@))", v19, v21];
    }

    else
    {
      if (v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      v22 = v23;
    }

    v24 = v22;

    bundleIDs = v26;
    contextCopy = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_makeInstantAnswersQueryStringForQueryContext:(id)context
{
  v68 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  bundleIDs = [contextCopy bundleIDs];
  instantAnswersBundleIDs = [contextCopy instantAnswersBundleIDs];
  instantAnswersQueries = [contextCopy instantAnswersQueries];
  if ([instantAnswersBundleIDs count] || objc_msgSend(instantAnswersQueries, "count"))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = instantAnswersBundleIDs;
    if (!_os_feature_enabled_impl() || bundleIDs && [bundleIDs count])
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v7 = bundleIDs;
      v8 = [v7 countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v8)
      {
        v9 = v8;
        v40 = bundleIDs;
        v10 = *v53;
        v45 = *MEMORY[0x277CC2500];
        v42 = *v53;
        do
        {
          v11 = 0;
          v44 = v9;
          do
          {
            if (*v53 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v52 + 1) + 8 * v11);
            if ([instantAnswersBundleIDs containsObject:v12])
            {
              v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ == %@)", v45, v12];
              [v47 addObject:v13];
            }

            else
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v13 = instantAnswersQueries;
              v14 = [v13 countByEnumeratingWithState:&v48 objects:v64 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = v7;
                v17 = *v49;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v49 != v17)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v19 = [*(*(&v48 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"<:b:>" withString:v12];
                    [v6 addObject:v19];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v48 objects:v64 count:16];
                }

                while (v15);
                v10 = v42;
                instantAnswersBundleIDs = v43;
                v7 = v16;
                v9 = v44;
              }
            }

            ++v11;
          }

          while (v11 != v9);
          v9 = [v7 countByEnumeratingWithState:&v52 objects:v65 count:16];
        }

        while (v9);
        bundleIDs = v40;
      }
    }

    else
    {
      v41 = bundleIDs;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v20 = instantAnswersBundleIDs;
      v21 = [v20 countByEnumeratingWithState:&v60 objects:v67 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v61;
        v24 = *MEMORY[0x277CC2500];
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v61 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ == %@)", v24, *(*(&v60 + 1) + 8 * j)];
            [v47 addObject:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v60 objects:v67 count:16];
        }

        while (v22);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v7 = instantAnswersQueries;
      v27 = [v7 countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v57;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v57 != v29)
            {
              objc_enumerationMutation(v7);
            }

            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", *(*(&v56 + 1) + 8 * k)];
            [v6 addObject:v31];
          }

          v28 = [v7 countByEnumeratingWithState:&v56 objects:v66 count:16];
        }

        while (v28);
      }

      bundleIDs = v41;
      instantAnswersBundleIDs = v43;
    }

    allObjects = [v47 allObjects];
    v33 = [allObjects componentsJoinedByString:@" || "];

    allObjects2 = [v6 allObjects];
    v35 = [allObjects2 componentsJoinedByString:@" || "];

    if ([v33 length] && objc_msgSend(v35, "length"))
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@) && (%@))", v33, v35];
    }

    else
    {
      if (v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v35;
      }

      v36 = v37;
    }

    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)_makeBundleQueryStringForQueryContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  bundleIDs = [contextCopy bundleIDs];
  additionalBundleIDs = [contextCopy additionalBundleIDs];
  instantAnswersBundleIDs = [contextCopy instantAnswersBundleIDs];
  v7 = [bundleIDs mutableCopy];
  v18 = additionalBundleIDs;
  [v7 removeObjectsInArray:additionalBundleIDs];
  [v7 removeObjectsInArray:instantAnswersBundleIDs];
  v19 = bundleIDs;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(bundleIDs, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = *MEMORY[0x277CC2500];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ == %@)", v13, *(*(&v20 + 1) + 8 * i)];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v16 = [v8 componentsJoinedByString:@" || "];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_pommesBundlesWithQueryContext:(id)context queryID:(unint64_t)d
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  pommes = [contextCopy pommes];
  if (pommes)
  {
    v8 = logForCSLogCategoryDefault(pommes);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      dCopy3 = d;
      _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_INFO, "[qid=%llu] _pBWQC: uP: YES", buf, 0xCu);
    }

    clientBundleID = [contextCopy clientBundleID];

    if (clientBundleID)
    {
      clientBundleID2 = [contextCopy clientBundleID];
      v11 = [SDPommesFeature usingPommesRankingForClientBundle:clientBundleID2];

      if (v11)
      {
        clientBundleID3 = [contextCopy clientBundleID];
        [v6 addObject:clientBundleID3];
      }
    }

    bundleIDs = [contextCopy bundleIDs];
    v14 = [bundleIDs count];

    if (v14)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      bundleIDs2 = [contextCopy bundleIDs];
      v16 = [bundleIDs2 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v16;
      dCopy2 = d;
      v18 = *v35;
      while (1)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(bundleIDs2);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          clientBundleID4 = [contextCopy clientBundleID];
          v22 = [SDPommesFeature isSearchToolClientBundle:clientBundleID4];

          if (!v22)
          {
            if (![SDPommesFeature usingPommesRankingForClientBundle:v20])
            {
              continue;
            }

LABEL_17:
            [v6 addObject:v20];
            continue;
          }

          v23 = +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
          v24 = [v23 containsObject:v20];

          if (v24)
          {
            goto LABEL_17;
          }
        }

        v17 = [bundleIDs2 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (!v17)
        {
          d = dCopy2;
          goto LABEL_25;
        }
      }
    }

    clientBundleID5 = [contextCopy clientBundleID];
    v26 = [SDPommesFeature isSearchToolClientBundle:clientBundleID5];

    if (v26)
    {
      +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
    }

    else
    {
      +[SDPommesFeature allBundleIDsUsingPommesRanking];
    }
    bundleIDs2 = ;
    [v6 addObjectsFromArray:bundleIDs2];
LABEL_25:
  }

  v27 = logForCSLogCategoryDefault(pommes);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    if ([contextCopy pommes])
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v29 = [v6 count];
    *buf = 134218498;
    if (v29)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    dCopy3 = d;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v30;
    _os_log_impl(&dword_231A35000, v27, OS_LOG_TYPE_INFO, "[qid=%llu] _pBWQC: uP: %@, iPB: %@", buf, 0x20u);
  }

  allObjects = [v6 allObjects];

  return allObjects;
}

- (__SIQuery)_makeSIQueryWithQueryString:(id)string queryContext:(id)context
{
  v135[4] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  filterQuery = [contextCopy filterQuery];
  v98 = filterQuery;
  if ([filterQuery length])
  {
    v7 = filterQuery;
  }

  else
  {
    v7 = 0;
  }

  *(&v94 + 1) = v7;
  cf = [contextCopy fetchAttributes];

  nonTopHitFetchAttributeIndexesBits = [contextCopy nonTopHitFetchAttributeIndexesBits];
  *&v94 = [contextCopy rankingQueries];

  maxCount = [contextCopy maxCount];
  queryID = [contextCopy queryID];
  lowPriority = [contextCopy lowPriority];
  if (lowPriority)
  {
    v10 = 270336;
  }

  else
  {
    v10 = 270339;
  }

  v11 = logForCSLogCategoryDefault(lowPriority);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = qos_class_self();
    lowPriority2 = [contextCopy lowPriority];
    *buf = 134218496;
    v14 = 3;
    if (lowPriority2)
    {
      v14 = 0;
    }

    *&buf[4] = queryID;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 2048;
    *&buf[20] = v14;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "[qid=%llu] QoS _mSIQWQS: %d prio: %lld", buf, 0x1Cu);
  }

  if ([contextCopy grouped])
  {
    v15 = v10 | 0x800;
  }

  else
  {
    v15 = v10;
  }

  if ([contextCopy live])
  {
    v15 |= 0x400uLL;
  }

  if ([contextCopy disableBlockingOnIndex])
  {
    v15 |= 0x10000000uLL;
  }

  if ([contextCopy disableResultStreaming] && objc_msgSend(contextCopy, "attribute"))
  {
    v15 |= 0x20000000uLL;
  }

  v86 = v15;
  preferredLanguages = [contextCopy preferredLanguages];
  if (![preferredLanguages count])
  {
    preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];

    preferredLanguages = preferredLanguages2;
  }

  v102 = preferredLanguages;
  if ([stringCopy length])
  {
    if ([contextCopy attribute])
    {
      if ([stringCopy characterAtIndex:0] == 64)
      {
        goto LABEL_31;
      }

      v18 = @"@(%@)";
      goto LABEL_30;
    }

    if ([contextCopy counting] && objc_msgSend(stringCopy, "characterAtIndex:", 0) != 35)
    {
      v18 = @"#(%@)";
LABEL_30:
      stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:v18, stringCopy];

      stringCopy = stringCopy;
    }
  }

LABEL_31:
  options = [contextCopy options];
  v21 = [options objectForKeyedSubscript:@"SPQueryOptionDateQueryContext"];
  bOOLValue = [v21 BOOLValue];

  options2 = [contextCopy options];
  v23 = [options2 objectForKeyedSubscript:@"SPQueryOptionDisableMetadataSearch"];
  bOOLValue2 = [v23 BOOLValue];

  options3 = [contextCopy options];
  v26 = [options3 objectForKeyedSubscript:@"SPQueryOptionDisableSemanticSearch"];
  bOOLValue3 = [v26 BOOLValue];

  options4 = [contextCopy options];
  v29 = [options4 objectForKeyedSubscript:@"SPQueryOptionDisableU2"];
  bOOLValue4 = [v29 BOOLValue];

  v134[0] = @"disableMetadataSearch";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue2];
  v135[0] = v31;
  v134[1] = @"disableSemanticSearch";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue3];
  v135[1] = v32;
  v134[2] = @"disableU2";
  v33 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue4];
  v135[2] = v33;
  v134[3] = @"maxANNResultCount";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:1000];
  v135[3] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];
  v103 = [v35 mutableCopy];

  if (_makeSIQueryWithQueryString_queryContext__onceToken != -1)
  {
    [SPCoreSpotlightTask _makeSIQueryWithQueryString:queryContext:];
  }

  v36 = objc_alloc(MEMORY[0x277CC3520]);
  queryEmbedding = [contextCopy queryEmbedding];
  v38 = [v36 initWithEncodedData:queryEmbedding];

  if (v38)
  {
    dispatch_async(_makeSIQueryWithQueryString_queryContext__dasCheckpointQueue, &__block_literal_global_263);
    vectors = [v38 vectors];
    [v103 setObject:vectors forKey:@"vectors"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v38, "dimension")}];
    [v103 setObject:v40 forKey:@"vec_dimensions"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v38, "format")}];
    [v103 setObject:v41 forKey:@"vec_data_format"];

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v38, "version")}];
    [v103 setObject:v42 forKey:@"vec_version"];
  }

  v43 = queryID;
  v44 = [(SPCoreSpotlightTask *)self _pommesBundlesWithQueryContext:contextCopy queryID:queryID];
  v89 = v38;
  if ([contextCopy pommes])
  {
    clientBundleID = [contextCopy clientBundleID];
    if ([SDPommesFeature isSearchToolClientBundle:clientBundleID])
    {
      v46 = objc_opt_new();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = [v44 count];
  LODWORD(v48) = (v47 | v46) != 0;
  if (v47 | v46)
  {
    clientBundleID2 = [contextCopy clientBundleID];
    v50 = ![SDPommesFeature isSpotlightUIClientBundle:clientBundleID2];
  }

  else
  {
    v50 = 0;
  }

  v51 = logForCSLogCategoryDefault(v47);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [v44 count];
    v53 = @"NO";
    *buf = 134218754;
    *&buf[12] = 2048;
    if (v48)
    {
      v54 = @"YES";
    }

    else
    {
      v54 = @"NO";
    }

    *&buf[4] = v43;
    *&buf[14] = v52;
    *&buf[22] = 2112;
    if (v50)
    {
      v53 = @"YES";
    }

    *&buf[24] = v54;
    LOWORD(v109) = 2112;
    *(&v109 + 2) = v53;
    _os_log_impl(&dword_231A35000, v51, OS_LOG_TYPE_INFO, "[qid=%llu] _mSIQWQS: pRB#: %lu, pR: %@, wQO: %@", buf, 0x2Au);
  }

  filterQueries = [contextCopy filterQueries];
  v56 = [(SPCoreSpotlightTask *)self _makeBundleQueryStringForQueryContext:contextCopy];
  v101 = [(SPCoreSpotlightTask *)self _makeAdditionalQueryStringForQueryContext:contextCopy];
  v100 = [(SPCoreSpotlightTask *)self _makeInstantAnswersQueryStringForQueryContext:contextCopy];
  v57 = [(SPCoreSpotlightTask *)self _makeDisabledBundlesQueryStringForQueryContext:contextCopy];
  v58 = v57;
  v99 = v44;
  v87 = v57;
  v88 = v56;
  if (!filterQueries)
  {
    if (v56)
    {
      if (v57)
      {
        v132[0] = v56;
        v132[1] = v57;
        v61 = MEMORY[0x277CBEA60];
        v62 = v132;
        v63 = 2;
LABEL_66:
        filterQueries = [v61 arrayWithObjects:v62 count:v63];
        goto LABEL_67;
      }

      v131 = v56;
      v61 = MEMORY[0x277CBEA60];
      v62 = &v131;
    }

    else
    {
      if (!v57)
      {
        filterQueries = 0;
        goto LABEL_67;
      }

      v130 = v57;
      v61 = MEMORY[0x277CBEA60];
      v62 = &v130;
    }

    v63 = 1;
    goto LABEL_66;
  }

  if (!v56)
  {
    if (!v57)
    {
      goto LABEL_67;
    }

    v64 = filterQueries;
    v65 = v58;
LABEL_61:
    v66 = [v64 arrayByAddingObject:v65];

    filterQueries = v66;
    goto LABEL_67;
  }

  if (!v57)
  {
    v64 = filterQueries;
    v65 = v56;
    goto LABEL_61;
  }

  v133[0] = v56;
  v133[1] = v57;
  v59 = v48;
  v48 = filterQueries;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:2];
  filterQueries = [filterQueries arrayByAddingObjectsFromArray:v60];

  LOBYTE(v48) = v59;
LABEL_67:
  v67 = SIUserCtxCreateWithLanguages();
  [contextCopy entitledAttributes];
  SIUserCtxSetEntitlements();
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  *buf = 1;
  *&buf[8] = stringCopy;
  *&buf[16] = v101;
  *&buf[24] = v100;
  completionString = [contextCopy completionString];
  *(&v109 + 1) = completionString;
  *&v110 = [contextCopy completionResultCount];
  DWORD2(v110) = [contextCopy completionOptions];
  completionAttributes = [contextCopy completionAttributes];
  *&v111 = completionAttributes;
  completionWeights = [contextCopy completionWeights];
  *(&v111 + 1) = completionWeights;
  scopes = [contextCopy scopes];
  v112 = scopes;
  *&v113 = cf;
  *(&v113 + 1) = v67;
  cfa = v67;
  add = atomic_fetch_add(&gQueryID, 1u);
  v114.queryId = v43;
  v114.internalQueryId = add;
  *&v115 = v86;
  *(&v115 + 1) = [contextCopy maxRankedResultCount];
  *&v116 = maxCount;
  groupingRules = [contextCopy groupingRules];
  *(&v116 + 1) = groupingRules;
  v117 = v94;
  *&v118 = 0;
  [contextCopy currentTime];
  *(&v118 + 1) = v71;
  userQuery = [contextCopy userQuery];
  *&v119 = userQuery;
  *(&v119 + 1) = filterQueries;
  v95 = filterQueries;
  LOWORD(v120) = [contextCopy strongRankingQueryCount];
  WORD1(v120) = [contextCopy dominantRankingQueryCount];
  WORD2(v120) = [contextCopy dominatedRankingQueryCount];
  WORD3(v120) = [contextCopy shortcutBit];
  WORD4(v120) = [contextCopy highMatchBit];
  WORD5(v120) = [contextCopy lowMatchBit];
  WORD6(v120) = [contextCopy highRecencyBit];
  HIWORD(v120) = [contextCopy lowRecencyBit];
  *&v121 = nonTopHitFetchAttributeIndexesBits;
  *&v122 = [contextCopy fuzzyMask];
  *(&v122 + 1) = v73;
  *&v123 = [contextCopy fuzzyMatch];
  *(&v123 + 1) = v74;
  LOBYTE(v124) = 0;
  BYTE1(v124) = v48;
  *(&v124 + 1) = v44;
  *&v125 = v46;
  v97 = v46;
  BYTE8(v125) = v50;
  rewriteContext = [contextCopy rewriteContext];
  tokenRewrites = [rewriteContext tokenRewrites];
  *&v126 = tokenRewrites;
  queryUnderstandingOutput = [contextCopy queryUnderstandingOutput];
  *(&v126 + 1) = queryUnderstandingOutput;
  *&v127 = v103;
  attributedUserQuery = [contextCopy attributedUserQuery];
  *(&v127 + 1) = attributedUserQuery;
  clientBundleID3 = [contextCopy clientBundleID];
  *&v128 = clientBundleID3;
  resultMatchingAttributes = [contextCopy resultMatchingAttributes];
  *(&v128 + 1) = resultMatchingAttributes;
  LOBYTE(v129) = bOOLValue;
  BYTE1(v129) = [contextCopy computePhotosDerivedAttributes];
  BYTE2(v129) = [contextCopy dateSortedL1];

  v81 = SIQueryCreateWithParameters();
  self->_queryID = v114;
  if ([contextCopy maximumBatchSize] && v81)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v106 = 134217984;
      maximumBatchSize = [contextCopy maximumBatchSize];
      _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting batching parameters corresponding to requested maximum batch size %zd", v106, 0xCu);
    }

    [contextCopy maximumBatchSize];
    [contextCopy maximumBatchSize];
    [contextCopy maximumBatchSize];
    SIQuerySetBatchingParameters();
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v81;
}

void __64__SPCoreSpotlightTask__makeSIQueryWithQueryString_queryContext___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.corespotlight.das.checkpoints", v2);
  v1 = _makeSIQueryWithQueryString_queryContext__dasCheckpointQueue;
  _makeSIQueryWithQueryString_queryContext__dasCheckpointQueue = v0;
}

void __64__SPCoreSpotlightTask__makeSIQueryWithQueryString_queryContext___block_invoke_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v3 = 0;
  v1 = [MEMORY[0x277CF07F0] reportFeatureCheckpoint:70 forFeature:900 error:&v3];
  v2 = v3;
  if ((v1 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v5 = v2;
    _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to report DAS checkpoint BGSystemTaskFeatureCheckpointAvailable: %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v0);
}

- (SPCoreSpotlightTask)initWithQueryString:(id)string queryContext:(id)context
{
  stringCopy = string;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = SPCoreSpotlightTask;
  v9 = [(SPCoreSpotlightTask *)&v21 init];
  if (v9)
  {
    v9->_queryID.queryId = [contextCopy queryID];
    objc_storeStrong(&v9->_queryString, string);
    objc_storeStrong(&v9->_queryContext, context);
    clientBundleID = [contextCopy clientBundleID];
    if (clientBundleID || [contextCopy disableResultStreaming])
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%ld.%p", clientBundleID, objc_msgSend(contextCopy, "queryID"), v9];
      v12 = [SPQueryResultsQueue alloc];
      v13 = [SPQueryResultsQueue sharedInstanceDispatchQueue:0];
      dispatchQueue = [v13 dispatchQueue];
      v15 = [(SPQueryResultsQueue *)v12 initWithIdentifier:v11 dispatchQueue:dispatchQueue];
      resultsQueue = v9->_resultsQueue;
      v9->_resultsQueue = v15;
    }

    else
    {
      v20 = [SPQueryResultsQueue sharedInstanceDispatchQueue:0];
      v11 = v9->_resultsQueue;
      v9->_resultsQueue = v20;
    }

    -[SPQueryResultsQueue setLive:](v9->_resultsQueue, "setLive:", [contextCopy live]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    jobs = v9->_jobs;
    v9->_jobs = v17;

    v9->_critical = 0;
  }

  return v9;
}

- (BOOL)addJob:(id)job
{
  jobCopy = job;
  if (jobCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    canceled = [(SPCoreSpotlightTask *)selfCopy canceled];
    if (!canceled)
    {
      [(NSMutableArray *)selfCopy->_jobs addObject:jobCopy];
    }

    objc_sync_exit(selfCopy);

    v7 = !canceled;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeJob:(id)job
{
  jobCopy = job;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableArray *)selfCopy->_jobs count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)selfCopy->_jobs objectAtIndex:v6];
      if (v7 == jobCopy)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)selfCopy->_jobs removeObjectAtIndex:v6];
  }

LABEL_7:
  objc_sync_exit(selfCopy);
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v5 = logForCSLogCategoryDefault(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightTask finishWithError:];
  }

  self->_finished = 1;
  scheduleBlock = self->_scheduleBlock;
  self->_scheduleBlock = 0;

  v7 = MEMORY[0x2383760E0](self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  if (v7)
  {
    (v7)[2](v7, errorCopy);
  }

  siQuery = self->_siQuery;
  if (siQuery)
  {
    siQuery = SIQueryRelease();
    self->_siQuery = 0;
  }

  v10 = logForCSLogCategoryQuery(siQuery);
  queryID = [(SPCoreSpotlightTask *)self queryID];
  if ((queryID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = queryID;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v10, OS_SIGNPOST_INTERVAL_END, v12, "SPCoreSpotlightLatency", &unk_231AF625D, v13, 2u);
    }
  }
}

- (void)pauseResults
{
  *a5 = 134218240;
  *(a5 + 4) = self;
  *(a5 + 12) = 2048;
  *(a5 + 14) = a4;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Pause query (%lld,%lld)", a5, 0x16u);
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

- (void)_makeDisabledBundlesQueryStringForQueryContext:(void *)a1 .cold.1(void *a1)
{
  [a1 queryID];
  v2 = [a1 clientBundleID];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)finishWithError:.cold.1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_231A35000, v0, v1, "Finish query %@", v2, v3, v4, v5);
}

@end