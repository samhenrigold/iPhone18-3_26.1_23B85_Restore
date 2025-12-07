@interface SPZKWQueryTask
+ (int)maxSuggestedApps;
+ (void)initialize;
- (BOOL)_isInBiometryLockout;
- (BOOL)_isLocked;
- (id)startFeedbackWithQueryId:(unint64_t)id;
- (id)unsafeSections;
- (void)_sendRankingFeedback;
- (void)addApplicationResultsFromPredictionResponse:(id)response toSection:(id)section queryIdent:(unint64_t)ident;
- (void)endFeedbackWithStartSearchFeedback:(id)feedback;
- (void)start;
@end

@implementation SPZKWQueryTask

+ (void)initialize
{
  v2 = [MEMORY[0x277CEB400] clientForConsumerType:1];
  v3 = atxClient;
  atxClient = v2;

  v4 = MEMORY[0x277D65988];

  [v4 preheat];
}

- (void)start
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__SPZKWQueryTask_start__block_invoke;
  v8[3] = &unk_279CFEA70;
  v8[4] = self;
  v3 = MEMORY[0x26D67F7A0](v8, a2);
  kdebug_trace();
  v4 = SPLogForSPLogCategoryTelemetry();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "zkwLatency", " enableTelemetry=YES ", buf, 2u);
  }

  [(SPQueryTask *)self queryIdForFeedback];
  v5 = v3[2];
  v6 = v3;
  v5();
}

- (BOOL)_isInBiometryLockout
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v4 = [queryContext deviceAuthenticationState] == 2;

  return v4;
}

+ (int)maxSuggestedApps
{
  if (maxSuggestedApps_onceToken != -1)
  {
    +[SPZKWQueryTask maxSuggestedApps];
  }

  return maxSuggestedApps_maxSuggestedApps;
}

void __34__SPZKWQueryTask_maxSuggestedApps__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1 == 3)
  {
    v2 = 12;
  }

  else
  {
    v2 = 8;
  }

  maxSuggestedApps_maxSuggestedApps = v2;
}

void __23__SPZKWQueryTask_start__block_invoke(uint64_t a1, dispatch_qos_class_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  queue = [v4 queryProcessor];
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, 0, v5);

  dispatch_async(queue, v6);
}

- (BOOL)_isLocked
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v4 = [queryContext deviceAuthenticationState] != 0;

  return v4;
}

void __23__SPZKWQueryTask_start__block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEB868] suggestedResultResponseWithLimit:5];
  v3 = [v2 topics];
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = [v3 count];
    _os_log_impl(&dword_26B71B000, v4, OS_LOG_TYPE_DEFAULT, "zkw proactive response: %lu topics", buf, 0xCu);
  }

  v36 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v5 = [v2 sections];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v33 + 1) + 8 * i) results];
        v8 += [v11 count];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);

    if (v8 && [v3 count] >= v8)
    {
      v12 = [MEMORY[0x277D007D0] requestWithTopics:v3 triggerEvent:21 queryId:*(a1 + 56)];
      v13 = +[SPPARSession spotlightPARSession];
      v14 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 topics];
        v16 = [v15 count];
        *buf = 134217984;
        v39 = v16;
        _os_log_impl(&dword_26B71B000, v14, OS_LOG_TYPE_DEFAULT, "zkw parsec response: %lu topics", buf, 0xCu);
      }

      if (v12 && v13)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __23__SPZKWQueryTask_start__block_invoke_118;
        v25[3] = &unk_279CFEA98;
        v26 = v3;
        v17 = v12;
        v18 = *(a1 + 32);
        v27 = v17;
        v28 = v18;
        v19 = v2;
        v20 = *(a1 + 56);
        v29 = v19;
        v32 = v20;
        v30 = *(a1 + 40);
        v31 = *(a1 + 48);
        v21 = [v13 taskWithRequest:v17 completion:v25];
        [v21 resume];
      }

      else
      {
        if (!v13)
        {
          v23 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __23__SPZKWQueryTask_start__block_invoke_2_cold_1();
          }
        }

        if (!v12)
        {
          v24 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __23__SPZKWQueryTask_start__block_invoke_2_cold_2();
          }
        }

        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_21;
    }
  }

  else
  {

    v8 = 0;
  }

  v22 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    __23__SPZKWQueryTask_start__block_invoke_2_cold_3(v3, v8, v22);
  }

  (*(*(a1 + 40) + 16))();
LABEL_21:
}

- (void)_sendRankingFeedback
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mutableSections = [(SPQueryTask *)selfCopy mutableSections];
  v4 = [mutableSections copy];

  objc_sync_exit(selfCopy);
  v19 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v18 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        results = [v7 results];
        v10 = [results countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(results);
              }

              v13 = [objc_alloc(MEMORY[0x277D4C580]) initWithResult:*(*(&v20 + 1) + 8 * v12) hiddenResults:0 duplicateResults:0 localResultPosition:0];
              [v8 addObject:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [results countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        v14 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v8 section:v7 localSectionPosition:0 personalizationScore:0.0];
        [v19 addObject:v14];

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v15 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v19 blendingDuration:0.0];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didRankSections:v15];
}

- (void)addApplicationResultsFromPredictionResponse:(id)response toSection:(id)section queryIdent:(unint64_t)ident
{
  responseCopy = response;
  sectionCopy = section;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SPZKWQueryTask_addApplicationResultsFromPredictionResponse_toSection_queryIdent___block_invoke;
  v11[3] = &unk_279CFEA48;
  identCopy = ident;
  v10 = sectionCopy;
  selfCopy = self;
  v14 = v16;
  v12 = v10;
  [responseCopy enumerateAtxSearchResults:v11];

  _Block_object_dispose(v16, 8);
}

void *__83__SPZKWQueryTask_addApplicationResultsFromPredictionResponse_toSection_queryIdent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setQueryId:v6];
  [v7 setSectionBundleIdentifier:*MEMORY[0x277D65CE0]];
  [*(a1 + 32) addResults:v7];

  v8 = *(*(a1 + 48) + 8);
  LODWORD(v6) = *(v8 + 24) + 1;
  *(v8 + 24) = v6;
  result = [objc_opt_class() maxSuggestedApps];
  if (v6 >= result)
  {
    *a4 = 1;
  }

  return result;
}

- (id)startFeedbackWithQueryId:(unint64_t)id
{
  v3 = [objc_alloc(MEMORY[0x277D4C658]) initWithInput:&stru_287C35638 triggerEvent:9 searchType:1 indexType:3 queryId:id];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didStartSearch:v3];

  return v3;
}

- (void)endFeedbackWithStartSearchFeedback:(id)feedback
{
  v3 = MEMORY[0x277D4C348];
  feedbackCopy = feedback;
  v6 = [[v3 alloc] initWithStartSearch:feedbackCopy];

  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didEndSearch:v6];
}

void __23__SPZKWQueryTask_start__block_invoke_105(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = [*(a1 + 32) startFeedbackWithQueryId:*(a1 + 48)];
  v4 = [*(a1 + 32) _isInBiometryLockout];
  v5 = v4;
  if (v4)
  {
    v6 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v6, OS_LOG_TYPE_DEFAULT, "Skipping app predictions because in biometry lockout", buf, 2u);
    }

    v7 = 0;
    goto LABEL_6;
  }

  v7 = [atxClient appPredictionsForConsumerSubType:9 limit:{objc_msgSend(objc_opt_class(), "maxSuggestedApps")}];
  v8 = [v7 error];

  if (v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = [v7 predictedApps];
LABEL_7:
  [*(a1 + 32) endFeedbackWithStartSearchFeedback:v3];
  sp_analytics_log_timing("com.apple.searchd.query.ZKW", "finish", v2);
  v10 = [*(a1 + 32) delegate];
  v11 = objc_alloc_init(MEMORY[0x277D65848]);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Siri Suggestions" value:&stru_287C35638 table:0];
  [v11 setTitle:v13];

  [v11 setBundleIdentifier:*MEMORY[0x277D65CE0]];
  if ((v5 & 1) != 0 || ([v7 error], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v15 = [v7 uuid];
    v16 = [v15 UUIDString];
    [v11 setResultSetIdentifier:v16];

    [*(a1 + 32) addApplicationResultsFromPredictionResponse:v7 toSection:v11 queryIdent:*(a1 + 48)];
    v17 = [v9 count];
    ++_MergedGlobals_0;
    if (!v17)
    {
      ++dword_281229E6C;
      v18 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __23__SPZKWQueryTask_start__block_invoke_105_cold_1();
      }
    }
  }

  v19 = objc_opt_new();
  [*(a1 + 32) setMutableSections:v19];

  v20 = [v11 results];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [*(a1 + 32) mutableSections];
    [v22 addObject:v11];

    v23 = *(a1 + 32);
    v24 = [v23 mutableSections];
    [v23 _updateResultWithState:2 sections:v24];
  }

  v25 = [*(a1 + 32) _isLocked];
  v26 = [v11 results];
  v27 = [v26 count];

  v28 = SPLogForSPLogCategoryDefault();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v30 = "zkw has apps";
  }

  else
  {
    if (!v29)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v30 = "zkw has no apps";
  }

  _os_log_impl(&dword_26B71B000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
LABEL_21:

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __23__SPZKWQueryTask_start__block_invoke_113;
  v46[3] = &unk_279CFE2D8;
  v46[4] = *(a1 + 32);
  v31 = MEMORY[0x26D67F7A0](v46);
  if (v25)
  {
    v32 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [*(a1 + 32) mutableSections];
      v34 = [v33 count];
      *buf = 134217984;
      v48 = v34;
      _os_log_impl(&dword_26B71B000, v32, OS_LOG_TYPE_DEFAULT, "zkw sending %ld sections", buf, 0xCu);
    }

    v35 = *(a1 + 32);
    v36 = [v35 mutableSections];
    [v35 _updateResultWithState:4 sections:v36];

    kdebug_trace();
    v37 = SPLogForSPLogCategoryTelemetry();
    if (os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B71B000, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "zkwLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v38 = [*(a1 + 32) queryProcessor];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __23__SPZKWQueryTask_start__block_invoke_128;
    v41[3] = &unk_279CFE2D8;
    v41[4] = *(a1 + 32);
    dispatch_async(v38, v41);
  }

  else
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __23__SPZKWQueryTask_start__block_invoke_2;
    v42[3] = &unk_279CFEAC0;
    v39 = *(a1 + 40);
    v40 = *(a1 + 32);
    v45 = *(a1 + 48);
    v42[4] = v40;
    v43 = v39;
    v44 = v31;
    (v39)[2](v43, 25, v42);

    v38 = v43;
  }
}

void __23__SPZKWQueryTask_start__block_invoke_113(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) mutableSections];
  v4 = [v3 copy];

  objc_sync_exit(v2);
  v5 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [v4 count];
    _os_log_impl(&dword_26B71B000, v5, OS_LOG_TYPE_DEFAULT, "zkw sending %ld sections", buf, 0xCu);
  }

  [*(a1 + 32) _updateResultWithState:4 sections:v4];
  kdebug_trace();
  v6 = SPLogForSPLogCategoryTelemetry();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "zkwLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = [*(a1 + 32) queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SPZKWQueryTask_start__block_invoke_114;
  block[3] = &unk_279CFE2D8;
  block[4] = *(a1 + 32);
  dispatch_async(v7, block);
}

void __23__SPZKWQueryTask_start__block_invoke_118(uint64_t a1, void *a2, void *a3, void *a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v53 = a2;
  v7 = a3;
  v54 = a4;
  v55 = v7;
  v8 = [v7 sections];
  v9 = [v8 count];
  v10 = [*(a1 + 32) count];

  if (v9 == v10)
  {
    if (v54)
    {
      v11 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __23__SPZKWQueryTask_start__block_invoke_118_cold_2();
      }
    }

    v12 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) topics];
      v14 = [v13 count];
      v15 = [v55 results];
      v16 = [v15 count];
      v17 = [v55 sections];
      *buf = 134218496;
      v79 = v14;
      v80 = 2048;
      v81 = v16;
      v82 = 2048;
      v83 = [v17 count];
      _os_log_impl(&dword_26B71B000, v12, OS_LOG_TYPE_DEFAULT, "zkw parsec response complete: sent %lu topics; got %lu results, %lu sections", buf, 0x20u);
    }

    v58 = [v55 sections];
    v56 = [v58 count];
    v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v56)
    {
      for (i = 0; i != v56; ++i)
      {
        v18 = [*(a1 + 40) topics];
        v19 = [v18 objectAtIndex:i];

        v60 = [v58 objectAtIndexedSubscript:i];
        v59 = [objc_alloc(MEMORY[0x277D65848]) initWithSection:v60];
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v21 = [v60 results];
        v22 = [v21 countByEnumeratingWithState:&v71 objects:v77 count:16];
        if (v22)
        {
          v23 = *v72;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v72 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v71 + 1) + 8 * j);
              v26 = SPLogForSPLogCategoryDefault();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = objc_opt_class();
                *buf = 138412290;
                v79 = v27;
                _os_log_impl(&dword_26B71B000, v26, OS_LOG_TYPE_DEFAULT, "zkw parsec response: result for %@", buf, 0xCu);
              }

              v28 = [*(a1 + 48) query];
              v29 = [v28 queryContext];

              v30 = [MEMORY[0x277D65988] updateResult:v25 topic:v19 queryContext:v29];
              if (v30)
              {
                [v20 addObject:v30];
              }

              else
              {
                v31 = SPLogForSPLogCategoryDefault();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_26B71B000, v31, OS_LOG_TYPE_DEFAULT, "zkw result builder: unable to resolve local result", buf, 2u);
                }
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v71 objects:v77 count:16];
          }

          while (v22);
        }

        [v59 setResults:v20];
        [v57 addObject:v59];
      }
    }

    [*(a1 + 56) createSectionsFromServerResults:v57];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    obj = v68 = 0u;
    v32 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v32)
    {
      v33 = *v68;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v68 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v67 + 1) + 8 * k);
          v36 = MEMORY[0x277D659A8];
          v37 = [v35 bundleIdentifier];
          LODWORD(v36) = [v36 isZKWRecentBundle:v37];

          if (v36)
          {
            v38 = [MEMORY[0x277D659A8] makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:1 result:0];
            [v35 setButton:v38];

            v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v40 = [v39 localizedStringForKey:@"CLEAR" value:&stru_287C35638 table:@"SpotlightServices"];
            v41 = [v35 button];
            [v41 setTitle:v40];

            v42 = [v35 button];
            [v42 setImage:0];
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v43 = [v35 results];
          v44 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (v44)
          {
            v45 = *v64;
            do
            {
              for (m = 0; m != v44; ++m)
              {
                if (*v64 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v47 = *(*(&v63 + 1) + 8 * m);
                [v47 setQueryId:*(a1 + 80)];
                [MEMORY[0x277D659A8] injectRecentsOptionsIntoResult:v47];
              }

              v44 = [v43 countByEnumeratingWithState:&v63 objects:v75 count:16];
            }

            while (v44);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v32);
    }

    if (objc_opt_respondsToSelector())
    {
      v48 = [*(a1 + 56) performSelector:sel_codePathIdTrigger];
      if (v48)
      {
        SSDefaultsLogForTrigger();
      }
    }

    else
    {
      v48 = 0;
    }

    if ([obj count])
    {
      v51 = *(a1 + 48);
      objc_sync_enter(v51);
      v52 = [*(a1 + 48) mutableSections];
      [v52 addObjectsFromArray:obj];

      objc_sync_exit(v51);
    }

    v50 = v58;
  }

  else
  {
    v49 = SPLogForSPLogCategoryDefault();
    v50 = v49;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      __23__SPZKWQueryTask_start__block_invoke_118_cold_1();
      v50 = v49;
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (id)unsafeSections
{
  mutableSections = [(SPQueryTask *)self mutableSections];
  v3 = [mutableSections copy];

  return v3;
}

void __23__SPZKWQueryTask_start__block_invoke_2_cold_3(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_26B71B000, a3, OS_LOG_TYPE_ERROR, "zkw proactive response mismatch: %lu topics, %lu section results", &v5, 0x16u);
}

@end