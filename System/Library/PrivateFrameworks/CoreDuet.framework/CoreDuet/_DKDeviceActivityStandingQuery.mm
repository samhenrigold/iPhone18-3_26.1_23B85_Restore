@interface _DKDeviceActivityStandingQuery
- (_DKDeviceActivityStandingQuery)init;
- (_DKHistogram)histogramForDate:(void *)date withReference:(void *)reference andUpdate:;
- (double)_deviceActivityEphemerality;
- (id)_customIdentifierForDayOfWeek:(void *)week;
- (id)_predicateForDeletedEventsWithReferenceDate:(uint64_t)date;
- (id)fetchResult;
- (id)fetchResultForDayOfWeek:(int64_t)week;
- (id)fetchResultForDayOfWeek:(int64_t)week withStorage:(id)storage;
- (id)fetchResultFromStorage:(id)storage;
- (uint64_t)_shouldDefer;
- (void)executeWithStorage:(id)storage;
- (void)executeWithStorage:(id)storage referenceDate:(id)date;
@end

@implementation _DKDeviceActivityStandingQuery

- (_DKDeviceActivityStandingQuery)init
{
  v6.receiver = self;
  v6.super_class = _DKDeviceActivityStandingQuery;
  v2 = [(_DKDeviceActivityStandingQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(_DKDeviceActivityStandingQuery *)v2 setQueryIdentifier:v4];
  }

  return v2;
}

- (void)executeWithStorage:(id)storage
{
  v4 = MEMORY[0x1E695DF00];
  storageCopy = storage;
  date = [v4 date];
  [(_DKDeviceActivityStandingQuery *)self executeWithStorage:storageCopy referenceDate:date];
}

- (id)fetchResult
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [currentCalendar component:512 fromDate:date];

  return [(_DKDeviceActivityStandingQuery *)self fetchResultForDayOfWeek:v5];
}

- (id)fetchResultForDayOfWeek:(int64_t)week
{
  v5 = +[_DKKnowledgeStore knowledgeStore];
  v6 = [(_DKDeviceActivityStandingQuery *)self fetchResultForDayOfWeek:week withStorage:v5];

  return v6;
}

- (id)fetchResultFromStorage:(id)storage
{
  v4 = MEMORY[0x1E695DEE8];
  storageCopy = storage;
  currentCalendar = [v4 currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [currentCalendar component:512 fromDate:date];

  v9 = [(_DKDeviceActivityStandingQuery *)self fetchResultForDayOfWeek:v8 withStorage:storageCopy];

  return v9;
}

- (uint64_t)_shouldDefer
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = [result activity];
    if (result)
    {
      v2 = result;
      activity = [v1 activity];
      should_defer = xpc_activity_should_defer(activity);

      if (should_defer)
      {
        v5 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          queryIdentifier = [v1 queryIdentifier];
          v7 = 138412290;
          v8 = queryIdentifier;
          _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Activity deferral requested for %@", &v7, 0xCu);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (double)_deviceActivityEphemerality
{
  if (!self)
  {
    return 0.0;
  }

  v1 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v2 = [_CDEventStreams eventStreamPropertiesForEventStream:v1];
  [v2 timeToLive];
  v4 = v3;

  return v4;
}

- (id)_customIdentifierForDayOfWeek:(void *)week
{
  if (week)
  {
    v3 = MEMORY[0x1E696AEC0];
    queryIdentifier = [week queryIdentifier];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v6 = [v3 stringWithFormat:@"%@-%@-%@", queryIdentifier, v5, &unk_1F05EEE68];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_predicateForDeletedEventsWithReferenceDate:(uint64_t)date
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (date)
  {
    v3 = a2;
    v4 = [v3 dateByAddingTimeInterval:--[_DKDeviceActivityStandingQuery _deviceActivityEphemerality](date)];

    v5 = [_DKQuery predicateForEventsWithStartDateOrCreationDateBefore:v4];
    v6 = +[_DKPredictor deviceActivityLikelihoodQueryPredicate];
    v7 = MEMORY[0x1E696AB28];
    v11[0] = v6;
    v11[1] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = [v7 andPredicateWithSubpredicates:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_DKHistogram)histogramForDate:(void *)date withReference:(void *)reference andUpdate:
{
  v7 = a2;
  dateCopy = date;
  referenceCopy = reference;
  if (self)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [currentCalendar component:512 fromDate:v7];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v13 = [referenceCopy objectForKeyedSubscript:v12];

    if (!v13)
    {
      v13 = objc_alloc_init(_DKHistogram);
      v15 = +[_DKSystemEventStreams deviceActivityLevelStream];
      [(_DKHistogram *)v13 setStream:v15];

      v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:dateCopy];
      [(_DKHistogram *)v13 setInterval:v16];

      v17 = [(_DKDeviceActivityStandingQuery *)self _customIdentifierForDayOfWeek:v11];
      [(_DKHistogram *)v13 setCustomIdentifier:v17];

      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      [referenceCopy setObject:v13 forKeyedSubscript:v18];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)executeWithStorage:(id)storage referenceDate:(id)date
{
  v139[1] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  dateCopy = date;
  if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
  {
    goto LABEL_2;
  }

  v8 = [(_DKDeviceActivityStandingQuery *)self _predicateForDeletedEventsWithReferenceDate:dateCopy];
  v9 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v139[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:1];
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v138 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
  v13 = [_DKEventQuery eventQueryWithPredicate:v8 eventStreams:v10 offset:0 limit:0 sortDescriptors:v12];

  queryIdentifier = [(_DKDeviceActivityStandingQuery *)self queryIdentifier];
  if (queryIdentifier)
  {
    [v13 setClientName:queryIdentifier];
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKStandingQuery.m"];
    v16 = [v15 stringByAppendingFormat:@":%d", 118];
    [v13 setClientName:v16];
  }

  v131 = 0;
  v17 = [storageCopy executeQuery:v13 error:&v131];
  v18 = v131;
  if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
  {
    goto LABEL_76;
  }

  if (v18)
  {
    v19 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_26();
      *(v79 + 4) = v18;
      _os_log_error_impl(&dword_191750000, v19, OS_LOG_TYPE_ERROR, "Encountered error while fetching device activity events to be deleted: %@.", buf, 0xCu);
    }
  }

  if (![v17 count])
  {
    log = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "No device activity events to process.", buf, 2u);
    }

    goto LABEL_75;
  }

  log = [MEMORY[0x1E695DF90] dictionaryWithCapacity:7];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v20 = v17;
  v112 = v13;
  v113 = v8;
  v116 = v18;
  v117 = v17;
  v114 = [v20 countByEnumeratingWithState:&v127 objects:v137 count:16];
  if (v114)
  {
    v21 = *v128;
    v107 = *v128;
    v108 = v20;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v128 != v21)
        {
          objc_enumerationMutation(v20);
        }

        v118 = v22;
        v23 = *(*(&v127 + 1) + 8 * v22);
        if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
        {
          goto LABEL_74;
        }

        v24 = objc_autoreleasePoolPush();
        startDate = [v23 startDate];
        v26 = startDate;
        context = v24;
        if (self)
        {
          v27 = [startDate slotFromMidnightWithTotalSlotsInDay:96];
        }

        else
        {
          v27 = 0;
        }

        startDate2 = [v23 startDate];
        v29 = [(_DKDeviceActivityStandingQuery *)self histogramForDate:startDate2 withReference:dateCopy andUpdate:log];

        startDate3 = [v23 startDate];
        [dateCopy timeIntervalSinceDate:startDate3];
        v32 = v31;
        _deviceActivityEphemerality = [(_DKDeviceActivityStandingQuery *)self _deviceActivityEphemerality];
        if (v32 <= _deviceActivityEphemerality)
        {
          v80 = +[_CDLogging knowledgeChannel];
          v17 = v117;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_191750000, v80, OS_LOG_TYPE_DEBUG, "Encountered event still has time to live, skip soon-to-to-deleted historgram construction as this point.", buf, 2u);
          }

          objc_autoreleasePoolPop(context);
          v8 = v113;
          v18 = v116;
          goto LABEL_56;
        }

        v34 = _deviceActivityEphemerality;
        v35 = (v32 - _deviceActivityEphemerality) / -604800.0;
        v36 = exp2f(v35);
        v37 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
        [v29 addValue:v37 withCount:v36];

        endDate = [v23 endDate];
        [endDate timeIntervalSinceDate:startDate3];
        v40 = v39;

        v41 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          endDate2 = [v23 endDate];
          OUTLINED_FUNCTION_1_26();
          *(v43 + 4) = startDate3;
          v134 = 2112;
          *(v43 + 14) = v44;
          v135 = 1024;
          v136 = v40;
          _os_log_impl(&dword_191750000, v41, OS_LOG_TYPE_INFO, "Binning event with startDate: %@, endDate: %@ (excessTime = %d)", buf, 0x1Cu);
        }

        if (v40 < 1)
        {
          v46 = startDate3;
          v52 = v29;
        }

        else
        {
          while (1)
          {
            v45 = objc_autoreleasePoolPush();
            if (v40 <= 0x384)
            {
              break;
            }

            v46 = [startDate3 dateByAddingTimeInterval:900.0];

            if (self)
            {
              v47 = [v46 slotFromMidnightWithTotalSlotsInDay:96];
            }

            else
            {
              v47 = 0;
            }

            v48 = OUTLINED_FUNCTION_0_32();
            v52 = [(_DKDeviceActivityStandingQuery *)v48 histogramForDate:v49 withReference:v50 andUpdate:v51];

            [dateCopy timeIntervalSinceDate:v46];
            if (v53 <= v34)
            {
              v64 = +[_CDLogging knowledgeChannel];
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_191750000, v64, OS_LOG_TYPE_DEBUG, "Encountered event still has time to live, skip soon-to-to-deleted histogram construction as this point.", buf, 2u);
              }

              startDate3 = v46;
              goto LABEL_46;
            }

            v54 = (v53 - v34) / -604800.0;
            v55 = exp2f(v54);
            v56 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
            [v52 addValue:v56 withCount:v55];

            endDate3 = [v23 endDate];
            [endDate3 timeIntervalSinceDate:v46];
            v40 = v58;

            objc_autoreleasePoolPop(v45);
            v29 = v52;
            startDate3 = v46;
            if (v40 <= 0)
            {
              goto LABEL_35;
            }
          }

          [startDate3 timeIntervalSince1970];
          v60 = fmod(v59, 900.0);
          endDate4 = [v23 endDate];
          [endDate4 timeIntervalSinceDate:startDate3];
          v63 = v62;

          if (v60 + v63 <= 900.0)
          {
            v52 = v29;
            goto LABEL_33;
          }

          endDate5 = [v23 endDate];
          v66 = endDate5;
          if (self)
          {
            v67 = [endDate5 slotFromMidnightWithTotalSlotsInDay:96];
          }

          else
          {
            v67 = 0;
          }

          endDate6 = [v23 endDate];
          v69 = OUTLINED_FUNCTION_0_32();
          v52 = [(_DKDeviceActivityStandingQuery *)v69 histogramForDate:v70 withReference:v71 andUpdate:v72];

          endDate7 = [v23 endDate];
          [dateCopy timeIntervalSinceDate:endDate7];
          v75 = v74;

          if (v75 <= v34)
          {
            v64 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_191750000, v64, OS_LOG_TYPE_DEBUG, "Encountered event still has time to live, skip soon-to-to-deleted histogram construction as this point.", buf, 2u);
            }
          }

          else
          {
            v76 = (v75 - v34) / -604800.0;
            v77 = exp2f(v76);
            v64 = [MEMORY[0x1E696AD98] numberWithInteger:v67];
            [v52 addValue:v64 withCount:v77];
          }

LABEL_46:

LABEL_33:
          objc_autoreleasePoolPop(v45);
          v46 = startDate3;
        }

LABEL_35:

        objc_autoreleasePoolPop(context);
        v17 = v117;
        v22 = v118 + 1;
        v8 = v113;
        v13 = v112;
        v18 = v116;
        v21 = v107;
        v20 = v108;
      }

      while (v118 + 1 != v114);
      v78 = [v108 countByEnumeratingWithState:&v127 objects:v137 count:16];
      v114 = v78;
      if (v78)
      {
        continue;
      }

      break;
    }
  }

LABEL_56:

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v20 = log;
  v119 = [v20 countByEnumeratingWithState:&v123 objects:v132 count:16];
  if (!v119)
  {
    goto LABEL_74;
  }

  v81 = *v124;
  v109 = *v124;
  while (2)
  {
    v82 = 0;
    do
    {
      if (*v124 != v81)
      {
        objc_enumerationMutation(v20);
      }

      v83 = v20;
      v84 = *(*(&v123 + 1) + 8 * v82);
      if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
      {
        v13 = v112;
        goto LABEL_73;
      }

      v85 = -[_DKDeviceActivityStandingQuery _customIdentifierForDayOfWeek:](self, [v84 integerValue]);
      v86 = +[_DKSystemEventStreams deviceActivityLevelStream];
      contexta = v85;
      v87 = [_DKHistogramQuery histogramQueryForPersistedHistogramsForStream:v86 withCustomIdentifier:v85];

      v122 = 0;
      v88 = [storageCopy executeQuery:v87 error:&v122];
      v115 = v122;
      if (v115)
      {
        v89 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_1_26();
          *(v100 + 4) = v115;
          _os_log_debug_impl(&dword_191750000, v89, OS_LOG_TYPE_DEBUG, "Encountered error while fetching existing device activity histogram: %@", buf, 0xCu);
        }
      }

      v90 = [v83 objectForKeyedSubscript:v84];
      if (v88)
      {
        v91 = [storageCopy deleteHistogram:v88];
        if (v91 == 1)
        {
          interval = [v88 interval];
          [interval endDate];
          v93 = v106 = v87;
          [dateCopy timeIntervalSinceDate:v93];
          v95 = v94;

          v96 = v95 / -604800.0;
          v97 = exp2f(v96);
          v98 = [v83 objectForKeyedSubscript:v84];
          [v88 addHistogram:v98 decayingExistingCounts:v97];

          v99 = v88;
          v90 = v99;
          v87 = v106;
          v8 = v113;
          goto LABEL_69;
        }

        v101 = v91;
        v102 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v101];
          OUTLINED_FUNCTION_1_26();
          *(v105 + 4) = v104;
          _os_log_error_impl(&dword_191750000, v102, OS_LOG_TYPE_ERROR, "Did not delete expected number of histograms (%@).", buf, 0xCu);
        }

        v13 = v112;
        v8 = v113;
        v18 = v116;
        v17 = v117;
LABEL_73:
        v20 = v83;
        goto LABEL_74;
      }

LABEL_69:
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke;
      v121[3] = &unk_1E736A4B0;
      v121[4] = v84;
      [storageCopy saveHistogram:v90 responseQueue:0 withCompletion:v121];

      ++v82;
      v17 = v117;
      v18 = v116;
      v20 = v83;
      v81 = v109;
    }

    while (v119 != v82);
    v119 = [v83 countByEnumeratingWithState:&v123 objects:v132 count:16];
    if (v119)
    {
      continue;
    }

    break;
  }

  v13 = v112;
LABEL_74:

LABEL_75:
LABEL_76:

LABEL_2:
}

- (id)fetchResultForDayOfWeek:(int64_t)week withStorage:(id)storage
{
  storageCopy = storage;
  v7 = [(_DKDeviceActivityStandingQuery *)self _customIdentifierForDayOfWeek:week];
  v8 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v9 = [_DKHistogramQuery histogramQueryForPersistedHistogramsForStream:v8 withCustomIdentifier:v7];

  v10 = [storageCopy executeQuery:v9 error:0];

  return v10;
}

@end