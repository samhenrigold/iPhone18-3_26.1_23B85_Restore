@interface ATXActionTimeEstimateAWDTracker
- (ATXActionTimeEstimateAWDTracker)init;
- (ATXActionTimeEstimateAWDTracker)initWithAppInFocusStream:(id)stream intentStream:(id)intentStream userActivityStream:(id)activityStream;
- (id)_createTimeEstimateContainers:(id)containers withSessionLengths:(id)lengths withSessionIndices:(id)indices withParameterSet:(id)set withLaunchReasons:(id)reasons withNoMatchCount:(id)count forActionType:(unint64_t)type;
- (id)_effectiveEndDateFor:(id)for;
- (id)_effectiveStartDateFor:(id)for;
- (id)_getActionKeyFor:(id)for;
- (id)_queryStartTime;
- (id)_readTimestamp;
- (id)getTimeEstimatesFor:(id)for forAppLaunches:(id)launches withActionType:(unint64_t)type;
- (void)_writeTimestamp:(id)timestamp;
- (void)logActionTimeEstimatesWithActivity:(id)activity;
- (void)logActionTimeEstimatesWithStartDate:(id)date endDate:(id)endDate withActivity:(id)activity;
- (void)postTimeEstimates:(id)estimates;
@end

@implementation ATXActionTimeEstimateAWDTracker

- (ATXActionTimeEstimateAWDTracker)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(ATXActionTimeEstimateAWDTracker *)self initWithAppInFocusStream:v3 intentStream:v4 userActivityStream:v5];

  return v6;
}

- (ATXActionTimeEstimateAWDTracker)initWithAppInFocusStream:(id)stream intentStream:(id)intentStream userActivityStream:(id)activityStream
{
  streamCopy = stream;
  intentStreamCopy = intentStream;
  activityStreamCopy = activityStream;
  v15.receiver = self;
  v15.super_class = ATXActionTimeEstimateAWDTracker;
  v12 = [(ATXActionTimeEstimateAWDTracker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appInFocusStream, stream);
    objc_storeStrong(&v13->_intentStream, intentStream);
    objc_storeStrong(&v13->_activityStream, activityStream);
  }

  return v13;
}

- (void)logActionTimeEstimatesWithActivity:(id)activity
{
  activityCopy = activity;
  _queryStartTime = [(ATXActionTimeEstimateAWDTracker *)self _queryStartTime];
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
  if ([v6 compare:_queryStartTime] == -1)
  {
    v7 = __atxlog_handle_default(-1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXActionTimeEstimateAWDTracker logActionTimeEstimatesWithActivity:];
    }

    v8 = _queryStartTime;
    v6 = v8;
  }

  v9 = objc_opt_new();
  [(ATXActionTimeEstimateAWDTracker *)self logActionTimeEstimatesWithStartDate:v6 endDate:v9 withActivity:activityCopy];
}

- (void)logActionTimeEstimatesWithStartDate:(id)date endDate:(id)endDate withActivity:(id)activity
{
  dateCopy = date;
  endDateCopy = endDate;
  activityCopy = activity;
  v11 = objc_opt_new();
  appInFocusStream = self->_appInFocusStream;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__ATXActionTimeEstimateAWDTracker_logActionTimeEstimatesWithStartDate_endDate_withActivity___block_invoke;
  v19[3] = &unk_278596DC8;
  v13 = v11;
  v20 = v13;
  [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:endDateCopy shouldReverse:0 bundleIDFilter:0 block:v19];
  if (!activityCopy || ([activityCopy didDefer] & 1) == 0)
  {
    v14 = [(ATXIntentStream *)self->_intentStream getIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:4];
    v15 = [(ATXUserActivityStream *)self->_activityStream getActivityIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy];
    if ([v13 count])
    {
      if ([v14 count] || objc_msgSend(v15, "count"))
      {
        if (activityCopy && ([activityCopy didDefer] & 1) != 0)
        {
          goto LABEL_12;
        }

        v16 = [(ATXActionTimeEstimateAWDTracker *)self getTimeEstimatesFor:v14 forAppLaunches:v13 withActionType:0];
        v17 = [v16 mutableCopy];

        v18 = [(ATXActionTimeEstimateAWDTracker *)self getTimeEstimatesFor:v15 forAppLaunches:v13 withActionType:1];
        [v17 addObjectsFromArray:v18];
        [(ATXActionTimeEstimateAWDTracker *)self postTimeEstimates:v17];
        [(ATXActionTimeEstimateAWDTracker *)self _writeTimestamp:endDateCopy];
      }

      else
      {
        v17 = __atxlog_handle_default(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [ATXActionTimeEstimateAWDTracker logActionTimeEstimatesWithStartDate:endDate:withActivity:];
        }
      }
    }

    else
    {
      v17 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ATXActionTimeEstimateAWDTracker logActionTimeEstimatesWithStartDate:endDate:withActivity:];
      }
    }

LABEL_12:
  }
}

- (id)_getActionKeyFor:(id)for
{
  forCopy = for;
  action = [forCopy action];
  actionKey = [action actionKey];
  v6 = actionKey;
  v7 = @"Unknown";
  if (actionKey)
  {
    v7 = actionKey;
  }

  v8 = v7;

  intent = [forCopy intent];

  parametersByName = [intent parametersByName];
  v11 = [parametersByName count];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", v8, v11];

  return v12;
}

- (id)_effectiveStartDateFor:(id)for
{
  appSessionStartTime = [for appSessionStartTime];
  v4 = [appSessionStartTime dateByAddingTimeInterval:-5.0];

  return v4;
}

- (id)_effectiveEndDateFor:(id)for
{
  appSessionEndTime = [for appSessionEndTime];
  v4 = [appSessionEndTime dateByAddingTimeInterval:5.0];

  return v4;
}

- (id)getTimeEstimatesFor:(id)for forAppLaunches:(id)launches withActionType:(unint64_t)type
{
  v94 = *MEMORY[0x277D85DE8];
  forCopy = for;
  launchesCopy = launches;
  v46 = forCopy;
  v56 = launchesCopy;
  if ([forCopy count])
  {
    v54 = objc_opt_new();
    v50 = objc_opt_new();
    v53 = objc_opt_new();
    v52 = objc_opt_new();
    v51 = objc_opt_new();
    v57 = objc_opt_new();
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x3032000000;
    v91[3] = __Block_byref_object_copy__20;
    v91[4] = __Block_byref_object_dispose__20;
    firstObject = [launchesCopy firstObject];
    appSessionStartTime = [firstObject appSessionStartTime];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = forCopy;
    v9 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v9)
    {
      v10 = 0;
      v48 = *v88;
      do
      {
        v11 = 0;
        v49 = v9;
        do
        {
          if (*v88 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v87 + 1) + 8 * v11);
          context = objc_autoreleasePoolPush();
          v13 = [(ATXActionTimeEstimateAWDTracker *)self _getActionKeyFor:v12];
          v14 = [v54 objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v60 = v14;
          }

          else
          {
            v60 = objc_opt_new();
          }

          v16 = [v53 objectForKeyedSubscript:v13];
          v17 = v16;
          if (v16)
          {
            v59 = v16;
          }

          else
          {
            v59 = objc_opt_new();
          }

          v18 = [v52 objectForKeyedSubscript:v13];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = objc_opt_new();
          }

          v21 = v20;

          v22 = [v51 objectForKeyedSubscript:v13];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = objc_opt_new();
          }

          v25 = v24;

          v26 = [v57 objectForKeyedSubscript:v13];
          v27 = v26 == 0;

          if (v27)
          {
            [v57 setObject:&unk_283A556E8 forKeyedSubscript:v13];
          }

          intent = [v12 intent];
          parametersByName = [intent parametersByName];
          allKeys = [parametersByName allKeys];
          v31 = [allKeys sortedArrayUsingSelector:sel_compare_];

          if ([v31 count])
          {
            v32 = [v50 objectForKeyedSubscript:v13];
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = objc_opt_new();
            }

            v35 = v34;

            v36 = [v31 componentsJoinedByString:@":"];
            [v35 addObject:v36];

            [v50 setObject:v35 forKeyedSubscript:v13];
          }

          v37 = [v56 subarrayWithRange:{v10, objc_msgSend(v56, "count") - v10}];
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke;
          v86[3] = &unk_278598E48;
          v86[4] = self;
          v86[5] = v12;
          v38 = [v37 indexOfObjectPassingTest:v86];
          v80 = 0;
          v81 = &v80;
          v82 = 0x3032000000;
          v83 = __Block_byref_object_copy__20;
          v84 = __Block_byref_object_dispose__20;
          v85 = &unk_283A55700;
          v74 = 0;
          v75 = &v74;
          v76 = 0x3032000000;
          v77 = __Block_byref_object_copy__20;
          v78 = __Block_byref_object_dispose__20;
          v79 = &unk_283A55700;
          v68 = 0;
          v69 = &v68;
          v70 = 0x3032000000;
          v71 = __Block_byref_object_copy__20;
          v72 = __Block_byref_object_dispose__20;
          v73 = &unk_283A55700;
          v62 = 0;
          v63 = &v62;
          v64 = 0x3032000000;
          v65 = __Block_byref_object_copy__20;
          v66 = __Block_byref_object_dispose__20;
          v67 = &stru_2839A6058;
          if (v38 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 += v38;
            v39 = [v56 subarrayWithRange:{v10, objc_msgSend(v56, "count") - v10}];
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke_53;
            v61[3] = &unk_278598E70;
            v61[4] = v12;
            v61[5] = self;
            v61[6] = v91;
            v61[7] = &v74;
            v61[8] = &v80;
            v61[9] = &v68;
            v61[10] = &v62;
            v61[11] = v10;
            [v39 enumerateObjectsUsingBlock:v61];
          }

          if ([v81[5] isEqualToNumber:&unk_283A55700])
          {
            v40 = MEMORY[0x277CCABB0];
            v41 = [v57 objectForKeyedSubscript:v13];
            v42 = [v40 numberWithInt:{objc_msgSend(v41, "intValue") + 1}];
            [v57 setObject:v42 forKeyedSubscript:v13];
          }

          else
          {
            [v60 addObject:v81[5]];
            [v54 setObject:v60 forKeyedSubscript:v13];
            [v59 addObject:v69[5]];
            [v53 setObject:v59 forKeyedSubscript:v13];
            [v21 addObject:v75[5]];
            [v52 setObject:v21 forKeyedSubscript:v13];
            [v25 addObject:v63[5]];
            [v51 setObject:v25 forKeyedSubscript:v13];
          }

          _Block_object_dispose(&v62, 8);

          _Block_object_dispose(&v68, 8);
          _Block_object_dispose(&v74, 8);

          _Block_object_dispose(&v80, 8);
          objc_autoreleasePoolPop(context);
          ++v11;
        }

        while (v49 != v11);
        v9 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v9);
    }

    v43 = [(ATXActionTimeEstimateAWDTracker *)self _createTimeEstimateContainers:v54 withSessionLengths:v52 withSessionIndices:v53 withParameterSet:v50 withLaunchReasons:v51 withNoMatchCount:v57 forActionType:type];
    _Block_object_dispose(v91, 8);
  }

  else
  {
    v43 = objc_opt_new();
  }

  return v43;
}

BOOL __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _effectiveEndDateFor:a2];
  v4 = [*(a1 + 40) dateInterval];
  v5 = [v4 startDate];
  v6 = [v3 compare:v5] != -1;

  return v6;
}

void __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke_53(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v40 = a2;
  v7 = [*(a1 + 32) dateInterval];
  v8 = [v7 startDate];
  v9 = [*(a1 + 40) _effectiveStartDateFor:v40];
  v10 = [v8 compare:v9];

  if (v10 == -1)
  {
    *a4 = 1;
  }

  else
  {
    v11 = [v40 bundleID];
    v12 = [*(a1 + 32) bundleId];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [v40 appSessionStartTime];
      if ([v14 compare:v15] == 1)
      {
        v16 = *(*(*(a1 + 48) + 8) + 40);
      }

      else
      {
        v16 = [v40 appSessionStartTime];
      }

      v17 = v16;

      v18 = MEMORY[0x277CCABB0];
      [v40 appSessionDuration];
      v19 = [v18 numberWithDouble:?];
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = MEMORY[0x277CCABB0];
      v23 = [*(a1 + 32) startDate];
      [v23 timeIntervalSinceDate:v17];
      v25 = v24;

      v26 = fmax(v25, 0.0);
      [*(*(*(a1 + 56) + 8) + 40) doubleValue];
      if (v26 < v27)
      {
        v27 = v26;
      }

      v28 = [v22 numberWithDouble:v27];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88) + a3];
      v32 = *(*(a1 + 72) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      v34 = [v40 launchReason];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &stru_2839A6058;
      }

      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v36);

      v37 = [*(a1 + 32) startDate];
      v38 = *(*(a1 + 48) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      *a4 = 1;
    }
  }
}

- (id)_createTimeEstimateContainers:(id)containers withSessionLengths:(id)lengths withSessionIndices:(id)indices withParameterSet:(id)set withLaunchReasons:(id)reasons withNoMatchCount:(id)count forActionType:(unint64_t)type
{
  containersCopy = containers;
  lengthsCopy = lengths;
  indicesCopy = indices;
  setCopy = set;
  reasonsCopy = reasons;
  countCopy = count;
  v20 = objc_opt_new();
  v21 = MEMORY[0x277CBEB58];
  allKeys = [containersCopy allKeys];
  v23 = [v21 setWithArray:allKeys];

  allKeys2 = [countCopy allKeys];
  [v23 addObjectsFromArray:allKeys2];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __169__ATXActionTimeEstimateAWDTracker__createTimeEstimateContainers_withSessionLengths_withSessionIndices_withParameterSet_withLaunchReasons_withNoMatchCount_forActionType___block_invoke;
  v35[3] = &unk_278598E98;
  typeCopy = type;
  v36 = containersCopy;
  v37 = lengthsCopy;
  v38 = indicesCopy;
  v39 = reasonsCopy;
  v40 = countCopy;
  v41 = setCopy;
  v25 = v20;
  v42 = v25;
  v26 = setCopy;
  v27 = countCopy;
  v28 = reasonsCopy;
  v29 = indicesCopy;
  v30 = lengthsCopy;
  v31 = containersCopy;
  [v23 enumerateObjectsUsingBlock:v35];
  v32 = v42;
  v33 = v25;

  return v25;
}

void __169__ATXActionTimeEstimateAWDTracker__createTimeEstimateContainers_withSessionLengths_withSessionIndices_withParameterSet_withLaunchReasons_withNoMatchCount_forActionType___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(AWDProactiveAppPredictionActionTimeEstimateContainer);
  [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 setActionKey:v3];
  [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 setActionType:[ATXAWDUtils awdActionTypeWithActionType:*(a1 + 88)]];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[AWDProactiveAppPredictionActionTimeEstimateContainer addTimeEstimate:](v4, "addTimeEstimate:", [*(*(&v47 + 1) + 8 * v9++) intValue]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionLength:](v4, "addSessionLength:", [*(*(&v43 + 1) + 8 * v14++) intValue]);
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v12);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [*(a1 + 48) objectForKeyedSubscript:v3];
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      v19 = 0;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionIndex:](v4, "addSessionIndex:", [*(*(&v39 + 1) + 8 * v19++) intValue]);
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v17);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = [*(a1 + 56) objectForKeyedSubscript:v3];
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      v24 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 addLaunchReason:[ATXAWDUtils awdAppLaunchReasonWithString:*(*(&v35 + 1) + 8 * v24++)]];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v35 objects:v52 count:16];
    }

    while (v22);
  }

  v25 = [*(a1 + 64) objectForKeyedSubscript:v3];
  -[AWDProactiveAppPredictionActionTimeEstimateContainer setNoMatchCount:](v4, "setNoMatchCount:", [v25 intValue]);

  v26 = [*(a1 + 72) objectForKeyedSubscript:v3];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v31 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      v30 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 addParameter:*(*(&v31 + 1) + 8 * v30++)];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v31 objects:v51 count:16];
    }

    while (v28);
  }

  [*(a1 + 80) addObject:v4];
}

- (void)postTimeEstimates:(id)estimates
{
  estimatesCopy = estimates;
  v5 = objc_opt_new();
  v4 = [estimatesCopy mutableCopy];

  [v5 setActions:v4];
  AWDPostMetric();
}

- (id)_queryStartTime
{
  _readTimestamp = [(ATXActionTimeEstimateAWDTracker *)self _readTimestamp];
  if (_readTimestamp && (v3 = objc_opt_new(), v4 = [_readTimestamp compare:v3], v3, v4 != 1))
  {
    v5 = _readTimestamp;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  }

  v6 = v5;

  return v6;
}

- (id)_readTimestamp
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  _defaultActionTimeEstimateTimestampPath = [(ATXActionTimeEstimateAWDTracker *)self _defaultActionTimeEstimateTimestampPath];
  v21 = 0;
  v6 = [v4 initWithContentsOfFile:_defaultActionTimeEstimateTimestampPath options:0 error:&v21];
  v7 = v21;

  objc_autoreleasePoolPop(v3);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = objc_autoreleasePoolPush();
    v20 = v7;
    v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v6 error:&v20];
    v14 = v20;

    objc_autoreleasePoolPop(v12);
    if (v13)
    {
      v16 = [v13 objectForKeyedSubscript:@"lastQueryEndTime"];
    }

    else
    {
      v18 = __atxlog_handle_default(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXActionTimeEstimateAWDTracker _readTimestamp];
      }

      v16 = 0;
    }
  }

  else
  {
    code = [v7 code];
    if (code == 260)
    {
      v16 = 0;
      goto LABEL_14;
    }

    v11 = __atxlog_handle_default(code);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXActionTimeEstimateAWDTracker _readTimestamp];
    }

    v16 = 0;
    v14 = v7;
  }

  v7 = v14;
LABEL_14:

  return v16;
}

- (void)_writeTimestamp:(id)timestamp
{
  v19[1] = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  v6 = objc_autoreleasePoolPush();
  v18 = @"lastQueryEndTime";
  v19[0] = timestampCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v17 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v17];
  v9 = v17;
  if (!v8)
  {
    [(ATXActionTimeEstimateAWDTracker *)a2 _writeTimestamp:v9];
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
  v12 = dispatch_queue_create("action-time-estimate-timestamp-write", v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke;
  v14[3] = &unk_278596C10;
  v15 = v8;
  selfCopy = self;
  v13 = v8;
  dispatch_async(v12, v14);

  objc_autoreleasePoolPop(v6);
}

void __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _defaultActionTimeEstimateTimestampPath];
  v7 = 0;
  v3 = [v1 writeToFile:v2 options:1073741825 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v6 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke_cold_1();
    }
  }
}

- (void)logActionTimeEstimatesWithActivity:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Collecting time estimates since the last query date:%@", v1, 0xCu);
}

- (void)_writeTimestamp:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXActionTimeEstimateAWDTracker.m" lineNumber:359 description:{@"Archiver error: %@", a3}];
}

@end