@interface SPPersonalMetricManager
+ (id)sharedInstance;
- (SPPersonalMetricManager)init;
- (void)_clearState;
- (void)_populateMetricWithFirstResult:(id)result;
- (void)_sendCAMetrics;
- (void)_updateTrialInfo;
- (void)didEngageResult:(id)result;
- (void)didRankSections:(id)sections;
- (void)resultsDidBecomeVisible:(id)visible;
- (void)searchViewDidDisappear:(id)disappear;
@end

@implementation SPPersonalMetricManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SPPersonalMetricManager sharedInstance];
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __41__SPPersonalMetricManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SPPersonalMetricManager)init
{
  v9.receiver = self;
  v9.super_class = SPPersonalMetricManager;
  v2 = [(SPPersonalMetricManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.searchd.personalMetricManagerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    parsecRanker = v2->_parsecRanker;
    v2->_parsecRanker = v6;

    [(SPPersonalMetricManager *)v2 _clearState];
  }

  return v2;
}

- (void)_clearState
{
  metric = self->_metric;
  self->_metric = 0;

  v4 = objc_opt_new();
  topHitIdentifiers = self->_topHitIdentifiers;
  self->_topHitIdentifiers = v4;

  v6 = objc_opt_new();
  rankedPosition = self->_rankedPosition;
  self->_rankedPosition = v6;

  self->_lastQueryId = -1;
}

- (void)_updateTrialInfo
{
  v5 = SSDefaultsGetResources();
  getTrialTreatmentId = [v5 getTrialTreatmentId];
  [(SPGeoPersonalizationEngagementMetric *)self->_metric setTrialTreatmentId:getTrialTreatmentId];

  getTrialExperimentId = [v5 getTrialExperimentId];
  [(SPGeoPersonalizationEngagementMetric *)self->_metric setTrialExperimentId:getTrialExperimentId];
}

- (void)_populateMetricWithFirstResult:(id)result
{
  resultCopy = result;
  if ([resultCopy containsPersonalResult] && (objc_msgSend(resultCopy, "mapsPersonalizationResult"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(resultCopy, "didRerankPersonalResult")}];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultWasReranked:v5];

    v6 = MEMORY[0x1E696AD98];
    mapsPersonalizationResult = [resultCopy mapsPersonalizationResult];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(mapsPersonalizationResult, "resultType")}];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultPersonalizationType:v8];

    mapsPersonalizationResult2 = [resultCopy mapsPersonalizationResult];
    entityRelevanceScore = [mapsPersonalizationResult2 entityRelevanceScore];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultEntityRelevanceScore:entityRelevanceScore];

    parsecRanker = self->_parsecRanker;
    if (parsecRanker)
    {
      v12 = MEMORY[0x1E696AD98];
      mapsPersonalizationResult3 = [resultCopy mapsPersonalizationResult];
      v14 = [v12 numberWithBool:{-[PRSMapsParsecRanker isResultCandidateForPromotion:](parsecRanker, "isResultCandidateForPromotion:", mapsPersonalizationResult3)}];
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultIsCandidateForPromotion:v14];
    }

    mapsPersonalizationResult4 = [resultCopy mapsPersonalizationResult];
    numberOfVisits = [mapsPersonalizationResult4 numberOfVisits];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultNumberOfVisits:numberOfVisits];

    mapsPersonalizationResult5 = [resultCopy mapsPersonalizationResult];
    numberOfVisitsGivenLocation = [mapsPersonalizationResult5 numberOfVisitsGivenLocation];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultNumberOfVisitsGivenLocation:numberOfVisitsGivenLocation];

    mapsPersonalizationResult6 = [resultCopy mapsPersonalizationResult];
    dateOfLastVisit = [mapsPersonalizationResult6 dateOfLastVisit];
    if (dateOfLastVisit)
    {
      v21 = MEMORY[0x1E696AD98];
      mapsPersonalizationResult7 = [resultCopy mapsPersonalizationResult];
      dateOfLastVisit2 = [mapsPersonalizationResult7 dateOfLastVisit];
      [dateOfLastVisit2 timeIntervalSinceNow];
      v25 = [v21 numberWithDouble:v24 / -3600.0];
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeSinceLastVisit:v25];
    }

    else
    {
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeSinceLastVisit:0];
    }

    mapsPersonalizationResult8 = [resultCopy mapsPersonalizationResult];
    startEventDate = [mapsPersonalizationResult8 startEventDate];
    if (startEventDate)
    {
      v29 = MEMORY[0x1E696AD98];
      mapsPersonalizationResult9 = [resultCopy mapsPersonalizationResult];
      startEventDate2 = [mapsPersonalizationResult9 startEventDate];
      [startEventDate2 timeIntervalSinceNow];
      v33 = [v29 numberWithDouble:v32 / 3600.0];
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeUntilUpcomingEvent:v33];
    }

    else
    {
      [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultTimeUntilUpcomingEvent:0];
    }
  }

  else
  {
    v26 = MEMORY[0x1E695E110];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultWasReranked:MEMORY[0x1E695E110]];
    [(SPGeoPersonalizationEngagementMetric *)self->_metric setFirstGeoResultIsCandidateForPromotion:v26];
  }
}

- (void)didRankSections:(id)sections
{
  sectionsCopy = sections;
  v5 = SPPersonalMetricManagerTransactionCreate(@"didRank");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SPPersonalMetricManager_didRankSections___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = sectionsCopy;
  v11 = v5;
  v7 = v5;
  v8 = sectionsCopy;
  dispatch_async(queue, block);
}

id __43__SPPersonalMetricManager_didRankSections___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = SPLogForSPLogCategoryDefault(a1);
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: didRankSections", buf, 2u);
  }

  [*(a1 + 32) _clearState];
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  [*(a1 + 32) _updateTrialInfo];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [*(a1 + 40) sections];
  v7 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_37;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v52;
  v12 = *MEMORY[0x1E69D3F68];
  v43 = *MEMORY[0x1E69D3F08];
  v38 = *MEMORY[0x1E69D3F68];
  v39 = *v52;
  do
  {
    v13 = 0;
    v40 = v8;
    do
    {
      v14 = v11;
      if (*v52 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v44 = v13;
      v15 = [*(*(&v51 + 1) + 8 * v13) section];
      v16 = [v15 bundleIdentifier];
      v17 = v12;
      v18 = [v16 isEqualToString:v12];

      v19 = v15;
      v20 = [v15 bundleIdentifier];
      v21 = [v20 isEqualToString:v43];

      v45 = v21;
      if ((v21 & 1) == 0 && !v18)
      {
        v11 = v14;
        v12 = v17;
        goto LABEL_33;
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v42 = v19;
      v46 = [v19 results];
      v22 = [v46 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (!v22)
      {
        goto LABEL_32;
      }

      v23 = v22;
      v24 = *v48;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v46);
          }

          v26 = *(*(&v47 + 1) + 8 * i);
          v27 = [v26 identifier];
          if ([v27 length])
          {
            if (v18)
            {
              [*(*(a1 + 32) + 24) addObject:v27];
              v28 = *(*(a1 + 32) + 48);
              if ((v45 & 1) == 0)
              {
                [v28 setGeoResultWasTopHit:0];
                goto LABEL_30;
              }

              [v28 setGeoResultWasTopHit:1];
            }

            v29 = [v26 containsPersonalResult];
            if (!v10)
            {
              [*(a1 + 32) _populateMetricWithFirstResult:v26];
            }

            v9 += v29;
            v30 = *(*(a1 + 32) + 8);
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
            [v30 setObject:v31 forKey:v27];

            ++v10;
          }

          else
          {
            v32 = SPLogForSPLogCategoryDefault(0);
            v33 = v32;
            if (gSPLogDebugAsDefault)
            {
              v34 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v34 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v32, v34))
            {
              *buf = 0;
              _os_log_impl(&dword_1C81BF000, v33, v34, "SPPersonalMetricManager: Ignoring ranked result with empty identifier.", buf, 2u);
            }
          }

LABEL_30:
        }

        v23 = [v46 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v23);
LABEL_32:

      v12 = v38;
      v11 = v39;
      v8 = v40;
      v19 = v42;
LABEL_33:

      v13 = v44 + 1;
    }

    while (v44 + 1 != v8);
    v8 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  }

  while (v8);
LABEL_37:

  [*(*(a1 + 32) + 48) setNumberOfPersonalGeoResults:v9];
  if (![*(*(a1 + 32) + 8) count])
  {
    v35 = SPLogForSPLogCategoryDefault(0);
    v36 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v35, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81BF000, v35, ((v36 & 1) == 0), "SPPersonalMetricManager: didRankSections: No geo results were found!", buf, 2u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)resultsDidBecomeVisible:(id)visible
{
  v4 = SPPersonalMetricManagerTransactionCreate(@"didBecomeVisible");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SPPersonalMetricManager_resultsDidBecomeVisible___block_invoke;
  block[3] = &unk_1E82F8F28;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

id __51__SPPersonalMetricManager_resultsDidBecomeVisible___block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault(a1);
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: resultsDidBecomeVisible", v5, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)didEngageResult:(id)result
{
  resultCopy = result;
  v5 = SPPersonalMetricManagerTransactionCreate(@"didEngageResult");
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SPPersonalMetricManager_didEngageResult___block_invoke;
  block[3] = &unk_1E82F9018;
  block[4] = self;
  v10 = v5;
  v11 = resultCopy;
  v7 = resultCopy;
  v8 = v5;
  dispatch_async(queue, block);
}

void __43__SPPersonalMetricManager_didEngageResult___block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault(a1);
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: didEngageResult", buf, 2u);
  }

  v5 = *(a1 + 32);
  if (*(v5 + 48))
  {
    v4 = [*(v5 + 8) count];
    if (v4)
    {
      v6 = [*(a1 + 48) result];
      v7 = [v6 sectionBundleIdentifier];
      v8 = [v7 isEqualToString:*MEMORY[0x1E69D3F08]];

      v9 = [v6 identifier];
      if ([v9 length])
      {
        v10 = [*(*(a1 + 32) + 8) objectForKey:v9];
        v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(a1 + 32) + 24), "containsObject:", v9)}];
        [*(*(a1 + 32) + 48) setEngagedResultWasTopHit:v11];

        if (v10)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0;
        }

        if (v12 == 1)
        {
          [*(*(a1 + 32) + 48) setEngagedGeoResultPosition:v10];
          if ([v6 containsPersonalResult] && (objc_msgSend(v6, "mapsPersonalizationResult"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
          {
            v14 = [v6 mapsPersonalizationResult];
            v15 = [v14 entityRelevanceScore];
            [*(*(a1 + 32) + 48) setEngagedGeoResultEntityRelevanceScore:v15];

            v16 = [v6 mapsPersonalizationResult];
            v17 = [v16 numberOfVisits];
            [*(*(a1 + 32) + 48) setEngagedGeoResultNumberOfVisits:v17];

            v18 = [v6 mapsPersonalizationResult];
            v19 = [v18 numberOfVisitsGivenLocation];
            [*(*(a1 + 32) + 48) setEngagedGeoResultNumberOfVisitsGivenLocation:v19];

            v20 = MEMORY[0x1E696AD98];
            v21 = [v6 mapsPersonalizationResult];
            v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "resultType")}];
            [*(*(a1 + 32) + 48) setEngagedGeoResultPersonalizationType:v22];

            v23 = [v6 mapsPersonalizationResult];
            v24 = [v23 dateOfLastVisit];
            if (v24)
            {
              v25 = MEMORY[0x1E696AD98];
              v26 = [v6 mapsPersonalizationResult];
              v27 = [v26 dateOfLastVisit];
              [v27 timeIntervalSinceNow];
              v29 = [v25 numberWithDouble:v28 / -3600.0];
              [*(*(a1 + 32) + 48) setEngagedGeoResultTimeSinceLastVisit:v29];
            }

            else
            {
              [*(*(a1 + 32) + 48) setEngagedGeoResultTimeSinceLastVisit:0];
            }

            v37 = [v6 mapsPersonalizationResult];
            v38 = [v37 startEventDate];
            if (v38)
            {
              v39 = MEMORY[0x1E696AD98];
              v40 = [v6 mapsPersonalizationResult];
              v41 = [v40 startEventDate];
              [v41 timeIntervalSinceNow];
              v43 = [v39 numberWithDouble:v42 / 3600.0];
              [*(*(a1 + 32) + 48) setEngagedGeoResultTimeUntilUpcomingEvent:v43];
            }

            else
            {
              [*(*(a1 + 32) + 48) setEngagedGeoResultTimeUntilUpcomingEvent:0];
            }

            v44 = [v6 didRerankPersonalResult];
            v34 = *(*(a1 + 32) + 48);
            if (v44)
            {
              v35 = 1;
            }

            else
            {
              v35 = 2;
            }
          }

          else
          {
            v34 = *(*(a1 + 32) + 48);
            v35 = 3;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v10 = 0;
      }

      v34 = *(*(a1 + 32) + 48);
      v35 = 4;
LABEL_24:
      [v34 setInteraction:v35];
      [*(a1 + 32) _sendCAMetrics];
      [*(a1 + 32) _clearState];
      if (*(a1 + 40))
      {
        v36 = objc_opt_self();
      }

      return;
    }
  }

  v30 = SPLogForSPLogCategoryDefault(v4);
  v31 = v30;
  if (gSPLogDebugAsDefault)
  {
    v32 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v32 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v30, v32))
  {
    *v45 = 0;
    _os_log_impl(&dword_1C81BF000, v31, v32, "SPPersonalMetricManager: Missing ranked feedback. Exiting early.", v45, 2u);
  }

  if (*(a1 + 40))
  {
    v33 = objc_opt_self();
  }
}

- (void)searchViewDidDisappear:(id)disappear
{
  v4 = SPPersonalMetricManagerTransactionCreate(@"didDisappear");
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SPPersonalMetricManager_searchViewDidDisappear___block_invoke;
  v7[3] = &unk_1E82F8E68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

id __50__SPPersonalMetricManager_searchViewDidDisappear___block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault(a1);
  v3 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v2, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v2, ((v3 & 1) == 0), "SPPersonalMetricManager: searchViewDidDisappear", buf, 2u);
  }

  v5 = *(a1 + 32);
  if (*(v5 + 48) && (v4 = [*(v5 + 8) count]) != 0)
  {
    [*(*(a1 + 32) + 48) setInteraction:5];
    [*(a1 + 32) _sendCAMetrics];
    [*(a1 + 32) _clearState];
  }

  else
  {
    v6 = SPLogForSPLogCategoryDefault(v4);
    v7 = v6;
    if (gSPLogDebugAsDefault)
    {
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v6, v8))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C81BF000, v7, v8, "SPPersonalMetricManager: Missing ranked feedback. Exiting early.", v10, 2u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return objc_opt_self();
  }

  return result;
}

- (void)_sendCAMetrics
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SPLogForSPLogCategoryDefault(self);
  v4 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v3, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    serializedMetric = [(SPGeoPersonalizationEngagementMetric *)self->_metric serializedMetric];
    v8 = 138412290;
    v9 = serializedMetric;
    _os_log_impl(&dword_1C81BF000, v3, ((v4 & 1) == 0), "SPPersonalMetricManager: _sendCAMetrics: %@", &v8, 0xCu);
  }

  metric = self->_metric;
  if (metric)
  {
    serializedMetric2 = [(SPGeoPersonalizationEngagementMetric *)metric serializedMetric];
    AnalyticsSendEvent();
  }
}

@end