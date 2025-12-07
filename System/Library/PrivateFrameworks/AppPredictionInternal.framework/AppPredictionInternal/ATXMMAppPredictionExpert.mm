@interface ATXMMAppPredictionExpert
+ (BOOL)isExpertEnabledForPredictions;
+ (BOOL)shouldHandleTriggerEventWithRateLimiter:(id)limiter;
+ (BOOL)shouldPredicateOnStartDateForTrigger;
+ (Class)supportedAnchorClass;
+ (NSString)notificationIdentifier;
+ (NSString)pathToPredictionTable;
+ (id)anchorTypeForExpert;
+ (id)correlateTriggerEvents:(id)events withAppLaunches:(id)launches;
+ (id)createTrainingDataForSubExpertsWithCorrelatedEvents:(id)events;
+ (id)fetchAnchorOccurrences;
+ (id)fetchPredictionsForTriggerEvent:(id)event;
+ (id)predictionTable;
+ (id)predictionTableFromCache;
+ (id)sampleEventForExpert;
+ (id)trainSubExpertWithCorrelatedEvents:(id)events appLaunchCountedSet:(id)set;
+ (int)mmAnchorTypeToMMProtobufAnchor:(int64_t)anchor;
+ (unsigned)predictionReasonForExpert;
+ (void)broadcastMMPredictionsForEvent:(id)event predictions:(id)predictions;
+ (void)fetchAnchorOccurrences;
+ (void)fetchAndHandleTriggerEvent;
+ (void)logPredictedCountMMMetricsEntryForAnchorType:(int64_t)type numPredictions:(int)predictions;
+ (void)logPredictedScoreMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type score:(double)score;
+ (void)logTriggeredMMMetricsEntryForAnchorType:(int64_t)type;
+ (void)predictionTableFromCache;
+ (void)serializeAndWritePredictionTable:(id)table;
+ (void)setupEventListenerForInferenceWithContext:(id)context rateLimiter:(id)limiter;
+ (void)tagEventWithLOIForEvent:(id)event;
+ (void)trainExpertWithAppLaunchEvents:(id)events appLaunchCountedSet:(id)set;
+ (void)trainSubExpertWithCorrelatedEvents:(id)events indices:(id)indices predicates:(id)predicates appLaunchCountedSet:(id)set predictionTable:(id)table;
+ (void)trainSubExpertsWithTrainingData:(id)data correlatedEvents:(id)events appLaunchCountedSet:(id)set;
- (ATXMMAppPredictionExpert)init;
@end

@implementation ATXMMAppPredictionExpert

- (ATXMMAppPredictionExpert)init
{
  v6.receiver = self;
  v6.super_class = ATXMMAppPredictionExpert;
  v2 = [(ATXMMAppPredictionExpert *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = _contextHelper;
    _contextHelper = v3;
  }

  return v2;
}

+ (Class)supportedAnchorClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMMAppPredictionExpert.m" lineNumber:74 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)sampleEventForExpert
{
  [objc_opt_class() supportedAnchorClass];
  v2 = objc_opt_new();
  sampleEvent = [objc_opt_class() sampleEvent];

  return sampleEvent;
}

+ (id)anchorTypeForExpert
{
  v2 = [objc_msgSend(objc_opt_class() "supportedAnchorClass")];

  return [ATXAnchor anchorTypeToString:v2];
}

+ (unsigned)predictionReasonForExpert
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMMAppPredictionExpert.m" lineNumber:91 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (NSString)pathToPredictionTable
{
  magicalMomentsPredictionTablesRootDirectory = [MEMORY[0x277CEBCB0] magicalMomentsPredictionTablesRootDirectory];
  anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ATXMMPredictionTable-%@", anchorTypeForExpert];
  v5 = [magicalMomentsPredictionTablesRootDirectory stringByAppendingPathComponent:v4];

  return v5;
}

+ (NSString)notificationIdentifier
{
  anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.duetexpertd.ATXMMAppPredictor.%@", anchorTypeForExpert];

  return v3;
}

+ (BOOL)isExpertEnabledForPredictions
{
  v2 = +[_ATXGlobals sharedInstance];
  magicalMomentsEnabledPredictionExperts = [v2 magicalMomentsEnabledPredictionExperts];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [magicalMomentsEnabledPredictionExperts objectForKey:v5];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

+ (id)fetchAnchorOccurrences
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  date = [MEMORY[0x277CBEAA8] date];
  [objc_opt_class() supportedAnchorClass];
  v5 = objc_opt_new();
  v19 = date;
  v20 = v3;
  v6 = [objc_opt_class() fetchAnchorOccurrencesBetweenStartDate:v3 endDate:date];
  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
    *buf = 138412546;
    v27 = anchorTypeForExpert;
    v28 = 2048;
    v29 = [v6 count];
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "ATXMM: (%@) num anchor events: %lu.", buf, 0x16u);
  }

  v10 = __atxlog_handle_default(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[(ATXMMAppPredictionExpert *)self];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = __atxlog_handle_default(v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v16;
          _os_log_debug_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEBUG, "ATXMM: %@", buf, 0xCu);
        }

        ++v15;
      }

      while (v13 != v15);
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v13 = v12;
    }

    while (v12);
  }

  return v11;
}

+ (BOOL)shouldPredicateOnStartDateForTrigger
{
  supportedAnchorClass = [objc_opt_class() supportedAnchorClass];

  return [supportedAnchorClass shouldPredicateOnStartDate];
}

+ (id)correlateTriggerEvents:(id)events withAppLaunches:(id)launches
{
  eventsCopy = events;
  launchesCopy = launches;
  if ([eventsCopy count] && objc_msgSend(launchesCopy, "count"))
  {
    v7 = -[ATXCorrelatedEventsDateBuffer initWithBufferSeconds:andBufferType:]([ATXCorrelatedEventsDateBuffer alloc], "initWithBufferSeconds:andBufferType:", [objc_opt_class() dateBufferForTriggerEvent], 120.0);
    v8 = [[ATXCorrelatedEventsDateBuffer alloc] initWithBufferSeconds:0 andBufferType:0.0];
    v9 = [ATXCorrelatedEventsManager alloc];
    v10 = objc_opt_class();
    v11 = [(ATXCorrelatedEventsManager *)v9 initWithFirstEventType:v10 firstEventTypeDateBuffer:v7 secondEventType:objc_opt_class() secondEventTypeDateBuffer:v8];
    [(ATXCorrelatedEventsManager *)v11 insertEvents:eventsCopy forEventType:0];
    [(ATXCorrelatedEventsManager *)v11 insertEvents:launchesCopy forEventType:1];
    correlatedEvents = [(ATXCorrelatedEventsManager *)v11 correlatedEvents];
  }

  else
  {
    correlatedEvents = MEMORY[0x277CBEBF8];
  }

  return correlatedEvents;
}

+ (void)tagEventWithLOIForEvent:(id)event
{
  eventCopy = event;
  if ([objc_opt_class() shouldPredicateOnStartDateForTrigger])
  {
    [eventCopy startDate];
  }

  else
  {
    [eventCopy endDate];
  }
  v4 = ;
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v4 sinceDate:-43200.0];
  v7 = [v5 initWithStartDate:v6 duration:86400.0];

  v8 = [ATXMagicalMomentsContexts locationOfInterestForDate:v4 dateIntervalForSearch:v7];
  v9 = v8;
  if (v8)
  {
    v10 = __atxlog_handle_default(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[ATXMMAppPredictionExpert tagEventWithLOIForEvent:];
    }

    uuid = [v9 uuid];
    [eventCopy tagWithLocationOfInterestIdentifier:uuid];
  }
}

+ (id)createTrainingDataForSubExpertsWithCorrelatedEvents:(id)events
{
  v58[4] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v52 = objc_opt_new();
  v56 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v54 = objc_opt_new();
  v6 = +[ATXMagicalMomentsContexts timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:](ATXMagicalMomentsContexts, "timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:", 6, [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  v7 = +[ATXMagicalMomentsContexts partOfWeekPredicatesUsingStartDate:](ATXMagicalMomentsContexts, "partOfWeekPredicatesUsingStartDate:", [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  if ([eventsCopy count])
  {
    v8 = 0;
    v50 = eventsCopy;
    v51 = v6;
    v53 = v4;
    v49 = v5;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v55 = [eventsCopy objectAtIndexedSubscript:v8];
      firstEvent = [v55 firstEvent];
      identifier = [firstEvent identifier];
      if (([v52 containsObject:firstEvent] & 1) == 0)
      {
        [v52 addObject:firstEvent];
        [objc_opt_class() tagEventWithLOIForEvent:firstEvent];
      }

      v11 = [v56 objectForKeyedSubscript:identifier];

      if (!v11)
      {
        v12 = objc_opt_new();
        [v56 setObject:v12 forKeyedSubscript:identifier];

        v13 = objc_opt_new();
        [v53 setObject:v13 forKeyedSubscript:identifier];

        if ([v51 count])
        {
          v14 = 0;
          do
          {
            v15 = objc_opt_new();
            v16 = [v53 objectForKeyedSubscript:identifier];
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
            [v16 setObject:v15 forKeyedSubscript:v17];

            ++v14;
          }

          while (v14 < [v51 count]);
        }

        v18 = objc_opt_new();
        [v49 setObject:v18 forKeyedSubscript:identifier];

        if ([v7 count])
        {
          v19 = 0;
          do
          {
            v20 = objc_opt_new();
            v21 = [v49 objectForKeyedSubscript:identifier];
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
            [v21 setObject:v20 forKeyedSubscript:v22];

            ++v19;
          }

          while (v19 < [v7 count]);
        }

        v23 = objc_opt_new();
        [v54 setObject:v23 forKeyedSubscript:identifier];

        v5 = v49;
      }

      locationIdentifierUUIDString = [firstEvent locationIdentifierUUIDString];
      if (locationIdentifierUUIDString)
      {
        v25 = locationIdentifierUUIDString;
        v26 = [v54 objectForKeyedSubscript:identifier];
        locationIdentifierUUIDString2 = [firstEvent locationIdentifierUUIDString];
        v28 = [v26 objectForKeyedSubscript:locationIdentifierUUIDString2];

        if (!v28)
        {
          v29 = objc_opt_new();
          v30 = [v54 objectForKeyedSubscript:identifier];
          locationIdentifierUUIDString3 = [firstEvent locationIdentifierUUIDString];
          [v30 setObject:v29 forKeyedSubscript:locationIdentifierUUIDString3];
        }
      }

      v32 = [v56 objectForKeyedSubscript:identifier];
      [v32 addIndex:v8];

      v6 = v51;
      if ([v51 count])
      {
        v33 = 0;
        while (1)
        {
          v34 = [v51 objectAtIndexedSubscript:v33];
          if ([v34 evaluateWithObject:firstEvent])
          {
            break;
          }

          if (++v33 >= [v51 count])
          {
            goto LABEL_22;
          }
        }

        v35 = [v53 objectForKeyedSubscript:identifier];
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
        v37 = [v35 objectForKeyedSubscript:v36];
        [v37 addIndex:v8];
      }

LABEL_22:
      if ([v7 count])
      {
        v38 = 0;
        while (1)
        {
          v39 = [v7 objectAtIndexedSubscript:v38];
          if ([v39 evaluateWithObject:firstEvent])
          {
            break;
          }

          if (++v38 >= [v7 count])
          {
            goto LABEL_28;
          }
        }

        v40 = [v5 objectForKeyedSubscript:identifier];
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38];
        v42 = [v40 objectForKeyedSubscript:v41];
        [v42 addIndex:v8];
      }

LABEL_28:
      locationIdentifierUUIDString4 = [firstEvent locationIdentifierUUIDString];

      if (locationIdentifierUUIDString4)
      {
        v44 = [v54 objectForKeyedSubscript:identifier];
        locationIdentifierUUIDString5 = [firstEvent locationIdentifierUUIDString];
        v46 = [v44 objectForKeyedSubscript:locationIdentifierUUIDString5];
        [v46 addIndex:v8];
      }

      objc_autoreleasePoolPop(v9);
      ++v8;
      eventsCopy = v50;
      v4 = v53;
    }

    while (v8 < [v50 count]);
  }

  v58[0] = v56;
  v58[1] = v4;
  v58[2] = v5;
  v58[3] = v54;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];

  return v47;
}

+ (void)trainSubExpertWithCorrelatedEvents:(id)events indices:(id)indices predicates:(id)predicates appLaunchCountedSet:(id)set predictionTable:(id)table
{
  v24 = *MEMORY[0x277D85DE8];
  predicatesCopy = predicates;
  setCopy = set;
  tableCopy = table;
  v15 = [events objectsAtIndexes:indices];
  if (v15)
  {
    v16 = [self trainSubExpertWithCorrelatedEvents:v15 appLaunchCountedSet:setCopy];
    v17 = __atxlog_handle_default(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 count];
      firstObject = [v16 firstObject];
      v20 = 134218242;
      v21 = v18;
      v22 = 2112;
      v23 = firstObject;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXMM: Got back %lu predictions for subexpert. Sample prediction: %@", &v20, 0x16u);
    }

    if (predicatesCopy && v16)
    {
      [tableCopy addPredictions:v16 withApplicablePredicates:predicatesCopy];
    }
  }
}

+ (id)trainSubExpertWithCorrelatedEvents:(id)events appLaunchCountedSet:(id)set
{
  setCopy = set;
  eventsCopy = events;
  v7 = [[ATXMagicalMomentsPredictionScorer alloc] initWithCorrelatedEvents:eventsCopy andGlobalAppLaunchCountedSet:setCopy];

  generatePredictions = [(ATXMagicalMomentsPredictionScorer *)v7 generatePredictions];

  return generatePredictions;
}

+ (void)serializeAndWritePredictionTable:(id)table
{
  tableCopy = table;
  v4 = objc_autoreleasePoolPush();
  v14 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tableCopy requiringSecureCoding:1 error:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    pathToPredictionTable = [objc_opt_class() pathToPredictionTable];
    v13 = 0;
    v9 = [v5 writeToFile:pathToPredictionTable options:1073741825 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v12 = __atxlog_handle_default(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[ATXMMAppPredictionExpert serializeAndWritePredictionTable:];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[ATXMMAppPredictionExpert serializeAndWritePredictionTable:];
    }
  }

  objc_autoreleasePoolPop(v4);
}

+ (void)trainSubExpertsWithTrainingData:(id)data correlatedEvents:(id)events appLaunchCountedSet:(id)set
{
  v127 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eventsCopy = events;
  setCopy = set;
  v9 = [dataCopy objectAtIndexedSubscript:0];
  v88 = [dataCopy objectAtIndexedSubscript:1];
  v87 = [dataCopy objectAtIndexedSubscript:2];
  v80 = dataCopy;
  v86 = [dataCopy objectAtIndexedSubscript:3];
  v91 = objc_opt_new();
  v90 = +[ATXMagicalMomentsContexts timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:](ATXMagicalMomentsContexts, "timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:", 6, [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  selfCopy = self;
  v89 = +[ATXMagicalMomentsContexts partOfWeekPredicatesUsingStartDate:](ATXMagicalMomentsContexts, "partOfWeekPredicatesUsingStartDate:", [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v9;
  v82 = [obj countByEnumeratingWithState:&v107 objects:v126 count:16];
  if (v82)
  {
    v81 = *v108;
    do
    {
      v10 = 0;
      do
      {
        if (*v108 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v85 = v10;
        v11 = *(*(&v107 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = __atxlog_handle_default(context);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          supportedAnchorClass = [objc_opt_class() supportedAnchorClass];
          *buf = 138412546;
          v123 = supportedAnchorClass;
          v124 = 2112;
          v125 = v11;
          v14 = supportedAnchorClass;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training subexperts for event identifier %@", buf, 0x16u);
        }

        v15 = [ATXMagicalMomentsContexts eventIdentifierPredicateForValue:v11];
        v16 = __atxlog_handle_default(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          supportedAnchorClass2 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v123 = supportedAnchorClass2;
          v18 = supportedAnchorClass2;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training Anchor ID expert", buf, 0xCu);
        }

        v20 = __atxlog_handle_default(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v121 = v15;
          v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
          *buf = 138412290;
          v123 = v75;
          _os_log_debug_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
        }

        v21 = [obj objectForKeyedSubscript:v11];
        v120 = v15;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
        [selfCopy trainSubExpertWithCorrelatedEvents:eventsCopy indices:v21 predicates:v22 appLaunchCountedSet:setCopy predictionTable:v91];

        v24 = __atxlog_handle_default(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          supportedAnchorClass3 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v123 = supportedAnchorClass3;
          v26 = supportedAnchorClass3;
          _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training Time of Day experts", buf, 0xCu);
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v27 = [v88 objectForKeyedSubscript:v11];
        v28 = [v27 countByEnumeratingWithState:&v103 objects:v119 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v104;
          do
          {
            v31 = 0;
            do
            {
              if (*v104 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v103 + 1) + 8 * v31);
              v33 = __atxlog_handle_default(v28);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v118[0] = v15;
                v38 = [v90 objectAtIndexedSubscript:{objc_msgSend(v32, "integerValue")}];
                v118[1] = v38;
                v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
                *buf = 138412290;
                v123 = v39;
                _os_log_debug_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
              }

              v34 = [v88 objectForKeyedSubscript:v11];
              v35 = [v34 objectForKeyedSubscript:v32];
              v117[0] = v15;
              v36 = [v90 objectAtIndexedSubscript:{objc_msgSend(v32, "integerValue")}];
              v117[1] = v36;
              v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
              [selfCopy trainSubExpertWithCorrelatedEvents:eventsCopy indices:v35 predicates:v37 appLaunchCountedSet:setCopy predictionTable:v91];

              ++v31;
            }

            while (v29 != v31);
            v28 = [v27 countByEnumeratingWithState:&v103 objects:v119 count:16];
            v29 = v28;
          }

          while (v28);
        }

        v41 = __atxlog_handle_default(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          supportedAnchorClass4 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v123 = supportedAnchorClass4;
          v43 = supportedAnchorClass4;
          _os_log_impl(&dword_2263AA000, v41, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training Part of Week experts", buf, 0xCu);
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v44 = [v87 objectForKeyedSubscript:v11];
        v45 = [v44 countByEnumeratingWithState:&v99 objects:v116 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v100;
          do
          {
            v48 = 0;
            do
            {
              if (*v100 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = *(*(&v99 + 1) + 8 * v48);
              v50 = __atxlog_handle_default(v45);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v115[0] = v15;
                v55 = [v89 objectAtIndexedSubscript:{objc_msgSend(v49, "integerValue")}];
                v115[1] = v55;
                v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
                *buf = 138412290;
                v123 = v56;
                _os_log_debug_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
              }

              v51 = [v87 objectForKeyedSubscript:v11];
              v52 = [v51 objectForKeyedSubscript:v49];
              v114[0] = v15;
              v53 = [v89 objectAtIndexedSubscript:{objc_msgSend(v49, "integerValue")}];
              v114[1] = v53;
              v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
              [selfCopy trainSubExpertWithCorrelatedEvents:eventsCopy indices:v52 predicates:v54 appLaunchCountedSet:setCopy predictionTable:v91];

              ++v48;
            }

            while (v46 != v48);
            v45 = [v44 countByEnumeratingWithState:&v99 objects:v116 count:16];
            v46 = v45;
          }

          while (v45);
        }

        v58 = __atxlog_handle_default(v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          supportedAnchorClass5 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v123 = supportedAnchorClass5;
          v60 = supportedAnchorClass5;
          _os_log_impl(&dword_2263AA000, v58, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training LOI experts", buf, 0xCu);
        }

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v61 = [v86 objectForKeyedSubscript:v11];
        v62 = [v61 countByEnumeratingWithState:&v95 objects:v113 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v96;
          do
          {
            v65 = 0;
            do
            {
              if (*v96 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v66 = *(*(&v95 + 1) + 8 * v65);
              v67 = [ATXMagicalMomentsContexts loiPredicateForUUIDString:v66];
              v68 = __atxlog_handle_default(v67);
              v69 = v68;
              if (v67)
              {
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  v112[0] = v15;
                  v112[1] = v67;
                  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
                  *buf = 138412290;
                  v123 = v72;
                  _os_log_debug_impl(&dword_2263AA000, v69, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
                }

                v69 = [v86 objectForKeyedSubscript:v11];
                v70 = [v69 objectForKeyedSubscript:v66];
                v111[0] = v15;
                v111[1] = v67;
                v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
                [selfCopy trainSubExpertWithCorrelatedEvents:eventsCopy indices:v70 predicates:v71 appLaunchCountedSet:setCopy predictionTable:v91];

                goto LABEL_45;
              }

              if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
              {
                supportedAnchorClass6 = [objc_opt_class() supportedAnchorClass];
                *buf = 138412546;
                v123 = supportedAnchorClass6;
                v124 = 2112;
                v125 = v66;
                v70 = supportedAnchorClass6;
                _os_log_fault_impl(&dword_2263AA000, v69, OS_LOG_TYPE_FAULT, "ATXMM: (%@) Couldn't produce a predicate for the provided LOI UUID string: %@", buf, 0x16u);
LABEL_45:
              }

              ++v65;
            }

            while (v63 != v65);
            v74 = [v61 countByEnumeratingWithState:&v95 objects:v113 count:16];
            v63 = v74;
          }

          while (v74);
        }

        objc_autoreleasePoolPop(context);
        v10 = v85 + 1;
      }

      while (v85 + 1 != v82);
      v82 = [obj countByEnumeratingWithState:&v107 objects:v126 count:16];
    }

    while (v82);
  }

  v77 = __atxlog_handle_default(v76);
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    supportedAnchorClass7 = [objc_opt_class() supportedAnchorClass];
    *buf = 138412290;
    v123 = supportedAnchorClass7;
    v79 = supportedAnchorClass7;
    _os_log_impl(&dword_2263AA000, v77, OS_LOG_TYPE_INFO, "ATXMM: (%@) Writing out prediction table.", buf, 0xCu);
  }

  [objc_opt_class() serializeAndWritePredictionTable:v91];
}

+ (void)trainExpertWithAppLaunchEvents:(id)events appLaunchCountedSet:(id)set
{
  v41 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  setCopy = set;
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  if (eventsCopy)
  {
    v8 = [eventsCopy count];
    if (setCopy)
    {
      if (v8)
      {
        v8 = [setCopy count];
        if (v8)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          pathToPredictionTable = [self pathToPredictionTable];
          v34 = 0;
          v12 = [defaultManager attributesOfItemAtPath:pathToPredictionTable error:&v34];
          v13 = v34;

          if (v12 && !v13)
          {
            fetchAnchorOccurrences = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA150]];
            if (fetchAnchorOccurrences)
            {
              v15 = objc_opt_new();
              [v15 timeIntervalSinceDate:fetchAnchorOccurrences];
              v17 = v16;

              if (v17 < 43200.0)
              {
                v19 = __atxlog_handle_default(v18);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
                  *buf = 138412802;
                  v36 = anchorTypeForExpert;
                  v37 = 2112;
                  v38 = fetchAnchorOccurrences;
                  v39 = 2048;
                  v40 = 0x40E5180000000000;
                  _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) prediction table was last written to on %@, which is less than %f seconds ago. Skipping training", buf, 0x20u);
                }

LABEL_21:

                goto LABEL_22;
              }
            }
          }

          fetchAnchorOccurrences = [objc_opt_class() fetchAnchorOccurrences];
          v19 = [objc_opt_class() correlateTriggerEvents:fetchAnchorOccurrences withAppLaunches:eventsCopy];
          v21 = __atxlog_handle_default(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            anchorTypeForExpert2 = [objc_opt_class() anchorTypeForExpert];
            v23 = [v19 count];
            *buf = 138412546;
            v36 = anchorTypeForExpert2;
            v37 = 2048;
            v38 = v23;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "ATXMM: (%@) num correlated events: %lu.", buf, 0x16u);
          }

          v24 = [objc_opt_class() createTrainingDataForSubExpertsWithCorrelatedEvents:v19];
          v25 = __atxlog_handle_default(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            [objc_opt_class() anchorTypeForExpert];
            v33 = v19;
            v26 = fetchAnchorOccurrences;
            v28 = v27 = v12;
            *buf = 138412290;
            v36 = v28;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_INFO, "ATXMM: (%@) Finished generating data for training sub-experts.", buf, 0xCu);

            v12 = v27;
            fetchAnchorOccurrences = v26;
            v19 = v33;
          }

          v29 = [objc_opt_class() trainSubExpertsWithTrainingData:v24 correlatedEvents:v19 appLaunchCountedSet:setCopy];
          v30 = __atxlog_handle_default(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            [objc_opt_class() anchorTypeForExpert];
            v32 = v31 = v12;
            *buf = 138412290;
            v36 = v32;
            _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_INFO, "ATXMM: (%@) Completed training of all sub-experts, and, thus, of the expert.", buf, 0xCu);

            v12 = v31;
          }

          goto LABEL_21;
        }
      }
    }
  }

  v13 = __atxlog_handle_default(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [ATXMMAppPredictionExpert trainExpertWithAppLaunchEvents:self appLaunchCountedSet:?];
  }

LABEL_22:

  objc_autoreleasePoolPop(v9);
}

+ (id)predictionTable
{
  v2 = objc_opt_class();

  return [v2 predictionTableFromCache];
}

+ (id)predictionTableFromCache
{
  v2 = MEMORY[0x277CBEA90];
  pathToPredictionTable = [objc_opt_class() pathToPredictionTable];
  v17 = 0;
  v4 = [v2 dataWithContentsOfFile:pathToPredictionTable options:0 error:&v17];
  v5 = v17;

  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v16 = v5;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v16];
    v8 = v16;

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v14 = __atxlog_handle_default(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[ATXMMAppPredictionExpert predictionTableFromCache];
      }

      v10 = objc_opt_new();
    }

    v13 = v10;

    v5 = v8;
  }

  else
  {
    code = [v5 code];
    if (code != 260)
    {
      v12 = __atxlog_handle_default(code);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXMMAppPredictionExpert predictionTableFromCache];
      }
    }

    v13 = objc_opt_new();
  }

  return v13;
}

+ (BOOL)shouldHandleTriggerEventWithRateLimiter:(id)limiter
{
  v27 = *MEMORY[0x277D85DE8];
  limiterCopy = limiter;
  [objc_opt_class() supportedAnchorClass];
  v5 = objc_opt_new();
  tryToIncrementCountAndReturnSuccess = [limiterCopy tryToIncrementCountAndReturnSuccess];

  shouldProcessContextStoreNotification = [objc_opt_class() shouldProcessContextStoreNotification];
  isExpertEnabledForPredictions = [objc_opt_class() isExpertEnabledForPredictions];
  v9 = isExpertEnabledForPredictions;
  if (tryToIncrementCountAndReturnSuccess)
  {
    if (shouldProcessContextStoreNotification & isExpertEnabledForPredictions)
    {
      v10 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = __atxlog_handle_default(isExpertEnabledForPredictions);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXMMAppPredictionExpert shouldHandleTriggerEventWithRateLimiter:self];
    }
  }

  v12 = __atxlog_handle_default(isExpertEnabledForPredictions);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
    v14 = anchorTypeForExpert;
    v15 = @"NO";
    if (shouldProcessContextStoreNotification)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v19 = 138413058;
    v20 = anchorTypeForExpert;
    if (v9)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v22 = v16;
    v21 = 2112;
    v23 = 2112;
    if (tryToIncrementCountAndReturnSuccess)
    {
      v15 = @"YES";
    }

    v24 = v17;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) shouldHandleTriggerEvent returned NO for reasons: shouldProcessContextStoreNotification - %@ predictionExpertIsEnabled - %@ notRateLimited - %@", &v19, 0x2Au);
  }

  v10 = 0;
LABEL_18:

  return v10;
}

+ (void)setupEventListenerForInferenceWithContext:(id)context rateLimiter:(id)limiter
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  limiterCopy = limiter;
  v8 = __atxlog_handle_default(limiterCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXMMAppPredictionExpert setupEventListenerForInferenceWithContext:self rateLimiter:?];
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, limiterCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__ATXMMAppPredictionExpert_setupEventListenerForInferenceWithContext_rateLimiter___block_invoke;
  aBlock[3] = &unk_278597D30;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(v21, &from);
  v21[1] = self;
  v9 = _Block_copy(aBlock);
  v10 = __atxlog_handle_default(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
    *buf = 138412290;
    v25 = anchorTypeForExpert;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "ATXMM: (%@) Registering for trigger callbacks", buf, 0xCu);
  }

  [objc_opt_class() supportedAnchorClass];
  v12 = objc_opt_new();
  predicateForContextStoreRegistration = [objc_opt_class() predicateForContextStoreRegistration];
  v14 = MEMORY[0x277CFE350];
  notificationIdentifier = [objc_opt_class() notificationIdentifier];
  v16 = [v14 localWakingRegistrationWithIdentifier:notificationIdentifier contextualPredicate:predicateForContextStoreRegistration clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v9];

  v17 = __atxlog_handle_default([contextCopy registerCallback:v16]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    anchorTypeForExpert2 = [objc_opt_class() anchorTypeForExpert];
    *buf = 138412290;
    v25 = anchorTypeForExpert2;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) Done registering with the ContextStore.", buf, 0xCu);
  }

  objc_destroyWeak(v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __82__ATXMMAppPredictionExpert_setupEventListenerForInferenceWithContext_rateLimiter___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = __atxlog_handle_default(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() anchorTypeForExpert];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) Trigger listener called, %@", &v9, 0x16u);
  }

  +[ATXMMAppPredictionExpert logTriggeredMMMetricsEntryForAnchorType:](ATXMMAppPredictionExpert, "logTriggeredMMMetricsEntryForAnchorType:", [objc_msgSend(objc_opt_class() "supportedAnchorClass")]);
  if (WeakRetained && v6 && [objc_opt_class() shouldHandleTriggerEventWithRateLimiter:v6])
  {
    [objc_opt_class() fetchAndHandleTriggerEvent];
  }
}

+ (id)fetchPredictionsForTriggerEvent:(id)event
{
  eventCopy = event;
  predictionTable = [objc_opt_class() predictionTable];
  v5 = [predictionTable predictionsForTriggerEvent:eventCopy];

  return v5;
}

+ (void)broadcastMMPredictionsForEvent:(id)event predictions:(id)predictions
{
  v14 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  eventCopy = event;
  predictionReasonForExpert = [objc_opt_class() predictionReasonForExpert];
  v8 = +[ATXMagicalMomentsPrediction convertPredictionsToPMMPredictionItems:reason:anchor:triggerEvent:](ATXMagicalMomentsPrediction, "convertPredictionsToPMMPredictionItems:reason:anchor:triggerEvent:", predictionsCopy, predictionReasonForExpert, [objc_msgSend(objc_opt_class() "supportedAnchorClass")], eventCopy);

  mEMORY[0x277D41FB0] = [MEMORY[0x277D41FB0] sharedInstance];
  v10 = __atxlog_handle_default([mEMORY[0x277D41FB0] handlePredictedApplications:v8]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
    v12 = 138412290;
    v13 = anchorTypeForExpert;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) Broadcast MM predictions to all listeners.", &v12, 0xCu);
  }
}

+ (void)fetchAndHandleTriggerEvent
{
  OUTLINED_FUNCTION_2_1();
  anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
  uuid = [v0 uuid];
  [v0 type];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);
}

+ (void)logTriggeredMMMetricsEntryForAnchorType:(int64_t)type
{
  v8 = objc_opt_new();
  [v8 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
  v4 = +[_ATXAppPredictor sharedInstance];
  abGroupIdentifiers = [v4 abGroupIdentifiers];
  v6 = [abGroupIdentifiers objectAtIndexedSubscript:16];

  [v8 setAbGroup:v6];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] trackScalarForMessage:v8];
}

+ (void)logPredictedScoreMMMetricsEntryForBundle:(id)bundle anchorType:(int64_t)type score:(double)score
{
  bundleCopy = bundle;
  v12 = objc_opt_new();
  [v12 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
  [v12 setTopBundleId:bundleCopy];

  v8 = +[_ATXAppPredictor sharedInstance];
  abGroupIdentifiers = [v8 abGroupIdentifiers];
  v10 = [abGroupIdentifiers objectAtIndexedSubscript:16];

  [v12 setAbGroup:v10];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] trackDistributionForMessage:v12 value:score];
}

+ (void)logPredictedCountMMMetricsEntryForAnchorType:(int64_t)type numPredictions:(int)predictions
{
  v10 = objc_opt_new();
  [v10 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", type)}];
  v6 = +[_ATXAppPredictor sharedInstance];
  abGroupIdentifiers = [v6 abGroupIdentifiers];
  v8 = [abGroupIdentifiers objectAtIndexedSubscript:16];

  [v10 setAbGroup:v8];
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] trackDistributionForMessage:v10 value:predictions];
}

+ (int)mmAnchorTypeToMMProtobufAnchor:(int64_t)anchor
{
  if ((anchor - 1) < 0x11)
  {
    return anchor;
  }

  else
  {
    return 0;
  }
}

+ (void)fetchAnchorOccurrences
{
  anchorTypeForExpert = [objc_opt_class() anchorTypeForExpert];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

+ (void)tagEventWithLOIForEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [objc_opt_class() anchorTypeForExpert];
  v2 = [v0 uuid];
  [v0 type];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x2Au);
}

+ (void)serializeAndWritePredictionTable:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  [objc_opt_class() supportedAnchorClass];
  OUTLINED_FUNCTION_0_14();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

+ (void)serializeAndWritePredictionTable:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  [objc_opt_class() supportedAnchorClass];
  OUTLINED_FUNCTION_0_14();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

+ (void)trainExpertWithAppLaunchEvents:(uint64_t)a1 appLaunchCountedSet:.cold.1(uint64_t a1)
{
  [objc_opt_class() supportedAnchorClass];
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0xCu);
}

+ (void)predictionTableFromCache
{
  OUTLINED_FUNCTION_2_1();
  pathToPredictionTable = [objc_opt_class() pathToPredictionTable];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
}

+ (void)shouldHandleTriggerEventWithRateLimiter:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [objc_opt_class() anchorTypeForExpert];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

+ (void)setupEventListenerForInferenceWithContext:(uint64_t)a1 rateLimiter:.cold.1(uint64_t a1)
{
  v1 = [objc_opt_class() anchorTypeForExpert];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

@end