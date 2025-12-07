@interface PowerUILocationSignalMonitor
+ (PowerUILocationSignalMonitor)monitorWithDelegate:(id)delegate;
+ (PowerUILocationSignalMonitor)monitorWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context;
+ (id)stringFromRTType:(int64_t)type;
- (BOOL)inTypicalChargingLocationWithError:(id *)error;
- (BOOL)isInSameTimeZone;
- (BOOL)locationIsUncertain:(id)uncertain;
- (BOOL)longChargesOccurredInLocationsNear:(id)near withError:(id *)error;
- (BOOL)notAuthorizedForLocation;
- (PowerUILocationSignalMonitor)initWithDelegate:(id)delegate trialManager:(id)manager withContextStore:(id)store;
- (double)empiricalDurationAtRemoteLocation:(int64_t)location withPotentialLOIs:(id)is;
- (double)empiricalDurationAwayFromLocations:(id)locations;
- (id)LOIsWithinMeters:(int)meters;
- (id)coreRoutinePredictedEntryDateFromNearbyLOIs:(id)is;
- (id)empiricalPredictedDateAwayFromNearbyLocations:(id)locations;
- (id)empiricalPredictedDateStayingAtNearbyLOIs:(id)is withRemoteLocation:(int64_t)location;
- (id)likelyToBeInKnownArea;
- (id)longChargesAroundDate:(id)date withinSeconds:(double)seconds withinDays:(int)days withMinimumDuration:(double)duration checkWhetherNearDate:(BOOL)nearDate;
- (id)requiredFullChargeDate;
- (int64_t)inKnownMicrolocation;
- (void)isInSameTimeZone;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)logPredictionsWithDuration:(id)duration withConfidence:(id)confidence withLOIString:(id)string withPredictionMethod:(id)method withSkipString:(id)skipString;
@end

@implementation PowerUILocationSignalMonitor

- (PowerUILocationSignalMonitor)initWithDelegate:(id)delegate trialManager:(id)manager withContextStore:(id)store
{
  delegateCopy = delegate;
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = PowerUILocationSignalMonitor;
  v10 = [(PowerUILocationSignalMonitor *)&v29 init];
  if (v10)
  {
    v11 = os_log_create("com.apple.powerui.smartcharging", "signals");
    log = v10->_log;
    v10->_log = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.powerui.locsignalmonitor.queue", v13);
    queue = v10->_queue;
    v10->_queue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.powerui.locsignalmonitor.callbackqueue", v16);
    callbackQueue = v10->_callbackQueue;
    v10->_callbackQueue = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.powerui.locsignalmonitor.fullchargedatequeue", v19);
    fullChargeDateQueue = v10->_fullChargeDateQueue;
    v10->_fullChargeDateQueue = v20;

    objc_storeStrong(&v10->_delegate, delegate);
    objc_storeStrong(&v10->_context, store);
    defaultManager = [MEMORY[0x277D01280] defaultManager];
    routine = v10->_routine;
    v10->_routine = defaultManager;

    v24 = dispatch_semaphore_create(0);
    authorizationSemaphore = v10->_authorizationSemaphore;
    v10->_authorizationSemaphore = v24;

    v26 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath:@"/System/Library/LocationBundles/SystemCustomization.bundle" delegate:v10 onQueue:v10->_callbackQueue];
    locationManager = v10->_locationManager;
    v10->_locationManager = v26;

    [(CLLocationManager *)v10->_locationManager setDesiredAccuracy:100.0];
  }

  return v10;
}

+ (PowerUILocationSignalMonitor)monitorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_opt_class();
  userContext = [MEMORY[0x277CFE318] userContext];
  v6 = [v4 monitorWithDelegate:delegateCopy trialManager:0 withContext:userContext];

  return v6;
}

+ (PowerUILocationSignalMonitor)monitorWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context
{
  contextCopy = context;
  managerCopy = manager;
  delegateCopy = delegate;
  v10 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy trialManager:managerCopy withContextStore:contextCopy];

  return v10;
}

- (id)longChargesAroundDate:(id)date withinSeconds:(double)seconds withinDays:(int)days withMinimumDuration:(double)duration checkWhetherNearDate:(BOOL)nearDate
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v11 = [PowerUISmartChargeUtilities pluginEventsBefore:dateCopy withMinimumDuration:duration ignoringDisconnectsShorterThan:300.0];
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    daysCopy = days;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        startDate = [v19 startDate];
        [startDate timeIntervalSinceReferenceDate];
        v22 = v21;
        [dateCopy timeIntervalSinceReferenceDate];
        v24 = v23 + daysCopy * -86400.0;

        if (v22 > v24)
        {
          [array addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v25 = [PowerUISmartChargeUtilities filterChargeSessions:array startsBefore:dateCopy dynamicallyAroundDate:dateCopy withinSeconds:seconds];

  v26 = [PowerUISmartChargeUtilities concatenateChargeSessions:v25 withMaxDeltaSecondsBetweenEvents:10];

  return v26;
}

- (BOOL)locationIsUncertain:(id)uncertain
{
  v16 = *MEMORY[0x277D85DE8];
  uncertainCopy = uncertain;
  v5 = uncertainCopy;
  if (uncertainCopy)
  {
    [uncertainCopy horizontalAccuracy];
    if (v6 <= 200.0)
    {
      v12 = 0;
      goto LABEL_9;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = log;
      [v5 horizontalAccuracy];
      v10 = [v8 numberWithDouble:?];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Horizontal accuracy: %@. Returning uncertain", &v14, 0xCu);
    }
  }

  else
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "No location: Returning uncertain", &v14, 2u);
    }
  }

  v12 = 1;
LABEL_9:

  return v12;
}

- (void)logPredictionsWithDuration:(id)duration withConfidence:(id)confidence withLOIString:(id)string withPredictionMethod:(id)method withSkipString:(id)skipString
{
  durationCopy = duration;
  confidenceCopy = confidence;
  stringCopy = string;
  methodCopy = method;
  skipStringCopy = skipString;
  v11 = skipStringCopy;
  v12 = methodCopy;
  v13 = stringCopy;
  v14 = confidenceCopy;
  v15 = durationCopy;
  AnalyticsSendEventLazy();
}

id __124__PowerUILocationSignalMonitor_logPredictionsWithDuration_withConfidence_withLOIString_withPredictionMethod_withSkipString___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"homeEntryDurationPrediction"];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"confidence"];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"loi"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"predictionMethod"];
  if (*(a1 + 64))
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = @"No Skip";
  }

  [v2 setObject:v3 forKeyedSubscript:@"skip"];
  v4 = [*(a1 + 72) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Logging to CA: %@", &v6, 0xCu);
  }

  return v2;
}

- (id)coreRoutinePredictedEntryDateFromNearbyLOIs:(id)is
{
  v91 = *MEMORY[0x277D85DE8];
  isCopy = is;
  v53 = os_transaction_create();
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__10;
  v83 = __Block_byref_object_dispose__10;
  v84 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__10;
  v77[4] = __Block_byref_object_dispose__10;
  v78 = 0;
  v4 = dispatch_semaphore_create(0);
  v57 = [MEMORY[0x277CBEAA8] now];
  routine = self->_routine;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:36000.0];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __76__PowerUILocationSignalMonitor_coreRoutinePredictedEntryDateFromNearbyLOIs___block_invoke;
  v73[3] = &unk_2782D5110;
  v75 = v77;
  v73[4] = self;
  dsema = v4;
  v74 = dsema;
  v76 = &v79;
  [(RTRoutineManager *)routine fetchPredictedLocationsOfInterestBetweenStartDate:v57 endDate:v6 withHandler:v73];
  selfCopy = self;

  v7 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(dsema, v7))
  {
    array = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      [PowerUILocationSignalMonitor coreRoutinePredictedEntryDateFromNearbyLOIs:];
    }

    v63 = 0;
    goto LABEL_62;
  }

  array = [MEMORY[0x277CBEB18] array];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = isCopy;
  v9 = [v8 countByEnumeratingWithState:&v69 objects:v90 count:16];
  if (v9)
  {
    v10 = *v70;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(v8);
        }

        identifier = [*(*(&v69 + 1) + 8 * i) identifier];
        [array addObject:identifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v69 objects:v90 count:16];
    }

    while (v9);
  }

  v60 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:28800.0];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v80[5];
  v13 = [obj countByEnumeratingWithState:&v65 objects:v89 count:16];
  if (!v13)
  {
    v63 = 0;
    goto LABEL_59;
  }

  v63 = 0;
  v58 = *v66;
  do
  {
    v59 = v13;
    for (j = 0; j != v59; ++j)
    {
      if (*v66 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v65 + 1) + 8 * j);
      nextEntryTime = [v15 nextEntryTime];
      locationOfInterest = [v15 locationOfInterest];
      identifier2 = [locationOfInterest identifier];
      if (!identifier2)
      {

LABEL_24:
        v22 = [(PowerUILocationSignalMonitor *)selfCopy log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v86 = v15;
          _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_INFO, "CR Skipping loi %@ because it's not nearby", buf, 0xCu);
        }

        v25 = @"Far Location";
LABEL_27:

        v26 = 0;
        if (v63)
        {
          goto LABEL_28;
        }

        v27 = 0.0;
        v28 = 1;
        goto LABEL_30;
      }

      locationOfInterest2 = [v15 locationOfInterest];
      identifier3 = [locationOfInterest2 identifier];
      v20 = [array containsObject:identifier3];

      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }

      [v15 confidence];
      if (v21 < 0.9)
      {
        v22 = [(PowerUILocationSignalMonitor *)selfCopy log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = MEMORY[0x277CCABB0];
          [v15 confidence];
          v24 = [v23 numberWithDouble:?];
          *buf = 138412290;
          v86 = v24;
          _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_INFO, "CR LOI prediction is not confident %@", buf, 0xCu);
        }

        v25 = @"Low Confidence";
        goto LABEL_27;
      }

      if (!nextEntryTime || ([nextEntryTime timeIntervalSinceNow], v43 <= 0.0))
      {
        v22 = [(PowerUILocationSignalMonitor *)selfCopy log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v46 = MEMORY[0x277CCABB0];
          locationOfInterest3 = [v15 locationOfInterest];
          v48 = [v46 numberWithInteger:{objc_msgSend(locationOfInterest3, "type")}];
          *buf = 138412546;
          v86 = v48;
          v87 = 2112;
          v88 = nextEntryTime;
          _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_INFO, "CR nextEntryTime to loi %@ is now, NULL, or in the past %@", buf, 0x16u);
        }

        v25 = @"No Duration";
        goto LABEL_27;
      }

      if (v63)
      {
        v44 = [v63 earlierDate:nextEntryTime];
        v45 = v44 == v63;

        if (v45)
        {
          v49 = [(PowerUILocationSignalMonitor *)selfCopy log];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v86 = nextEntryTime;
            v87 = 2112;
            v88 = v63;
            _os_log_impl(&dword_21B766000, v49, OS_LOG_TYPE_INFO, "CR prediction %@ is later than current prediction %@", buf, 0x16u);
          }

          v26 = 0;
          v25 = @"Later Prediction";
        }

        else
        {
          v25 = 0;
          v26 = 1;
        }

LABEL_28:
        [v63 timeIntervalSinceDate:v57];
        v28 = 0;
        goto LABEL_30;
      }

      v25 = 0;
      v27 = 0.0;
      v28 = 1;
      v26 = 1;
LABEL_30:
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      v30 = MEMORY[0x277CCABB0];
      locationOfInterest4 = [v15 locationOfInterest];
      [locationOfInterest4 confidence];
      v32 = [v30 numberWithDouble:?];
      locationOfInterest5 = [v15 locationOfInterest];
      v34 = +[PowerUILocationSignalMonitor stringFromRTType:](PowerUILocationSignalMonitor, "stringFromRTType:", [locationOfInterest5 type]);
      [(PowerUILocationSignalMonitor *)selfCopy logPredictionsWithDuration:v29 withConfidence:v32 withLOIString:v34 withPredictionMethod:@"CoreRoutine" withSkipString:v25];

      if (v26)
      {
        if (v28)
        {
          v35 = nextEntryTime;
        }

        else
        {
          v35 = [v63 earlierDate:nextEntryTime];
        }

        v36 = v35;

        v37 = [v36 earlierDate:v60];
        v38 = v60 == v37;

        if (v38)
        {
          v63 = v60;

          v39 = [(PowerUILocationSignalMonitor *)selfCopy log];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v39, OS_LOG_TYPE_DEFAULT, "CR predicted longer than 8 hours. Using 8 hour default", buf, 2u);
          }
        }

        else
        {
          v63 = v36;
        }

        v40 = [(PowerUILocationSignalMonitor *)selfCopy log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          locationOfInterest6 = [v15 locationOfInterest];
          v42 = +[PowerUILocationSignalMonitor stringFromRTType:](PowerUILocationSignalMonitor, "stringFromRTType:", [locationOfInterest6 type]);
          *buf = 138412546;
          v86 = nextEntryTime;
          v87 = 2112;
          v88 = v42;
          _os_log_impl(&dword_21B766000, v40, OS_LOG_TYPE_DEFAULT, "CR predicts %@ for %@", buf, 0x16u);
        }
      }
    }

    v13 = [obj countByEnumeratingWithState:&v65 objects:v89 count:16];
  }

  while (v13);
LABEL_59:

  v50 = [(PowerUILocationSignalMonitor *)selfCopy log];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = v80[5];
    *buf = 138412290;
    v86 = v51;
    _os_log_impl(&dword_21B766000, v50, OS_LOG_TYPE_DEFAULT, "CR Prediction with predicted next LOIs %@", buf, 0xCu);
  }

LABEL_62:
  _Block_object_dispose(v77, 8);

  _Block_object_dispose(&v79, 8);

  return v63;
}

void __76__PowerUILocationSignalMonitor_coreRoutinePredictedEntryDateFromNearbyLOIs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!v6 || v7)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"No predicted LOI";
      if (v7)
      {
        v9 = v7;
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "CR: No predicted location: %@", &v10, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (double)empiricalDurationAwayFromLocations:(id)locations
{
  v51 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [currentCalendar components:32 fromDate:v6];

  v36 = v7;
  hour = [v7 hour];
  [MEMORY[0x277CBEB18] array];
  v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = locationsCopy;
  v40 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v40)
  {
    v38 = *v43;
    selfCopy = self;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        visits = [v10 visits];
        v12 = [visits mutableCopy];

        v13 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"exitDate" ascending:1];
        v14 = [MEMORY[0x277CBEA60] arrayWithObject:v13];
        [v12 sortUsingDescriptors:v14];

        v15 = [(PowerUILocationSignalMonitor *)self log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          [v10 location];
          v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v47 = v16;
          v48 = 2112;
          v49 = v12;
          _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_INFO, "Sorted by exit date visits to %@: %@", buf, 0x16u);
        }

        if ([v12 count] >= 2)
        {
          v17 = 0;
          do
          {
            v18 = [v12 objectAtIndexedSubscript:v17];
            exitDate = [v18 exitDate];

            v20 = [currentCalendar components:32 fromDate:exitDate];
            hour2 = [v20 hour];
            v22 = hour - hour2;
            if (hour - hour2 < 0)
            {
              v22 = hour2 - hour;
            }

            ++v17;
            if (v22 <= 1)
            {
              v23 = [v12 objectAtIndexedSubscript:v17];
              entryDate = [v23 entryDate];

              [entryDate timeIntervalSinceDate:exitDate];
              if (v25 > 0.0)
              {
                v26 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                [*&v41 addObject:v26];
              }
            }
          }

          while ([v12 count] - 1 > v17);
        }

        self = selfCopy;
        v27 = [(PowerUILocationSignalMonitor *)selfCopy log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v41;
          _os_log_impl(&dword_21B766000, v27, OS_LOG_TYPE_INFO, "Empirical Away durations: %@", buf, 0xCu);
        }
      }

      v40 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v40);
  }

  if ([*&v41 count])
  {
    v28 = 0;
  }

  else
  {
    v29 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "Empirical Away cannot predict because there's not enough visits", buf, 2u);
    }

    v28 = @"No Duration";
  }

  [*&v41 percentile:0.5];
  v31 = v30;
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v33 = [PowerUILocationSignalMonitor stringFromRTType:0];
  [(PowerUILocationSignalMonitor *)self logPredictionsWithDuration:v32 withConfidence:&unk_282D4E9F8 withLOIString:v33 withPredictionMethod:@"EmpiricalAway" withSkipString:v28];

  if (v31 > 28800.0)
  {
    v31 = 28800.0;
  }

  if (v31 == 28800.0)
  {
    v34 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v47 = 28800.0 / 60.0 / 60.0;
      _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "Empirical Away predicts %f hours > 8 hours. Using 8 hour default", buf, 0xCu);
    }
  }

  return v31;
}

- (id)empiricalPredictedDateAwayFromNearbyLocations:(id)locations
{
  v14 = *MEMORY[0x277D85DE8];
  [(PowerUILocationSignalMonitor *)self empiricalDurationAwayFromLocations:locations];
  if (v4 <= 0.0)
  {
    v7 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Empirical Away cannot predict because duration = 0", &v10, 2u);
    }

    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
    v7 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Empirical Away Prediction %@ from empirical duration %@", &v10, 0x16u);
    }
  }

  return v6;
}

- (double)empiricalDurationAtRemoteLocation:(int64_t)location withPotentialLOIs:(id)is
{
  locationCopy = location;
  v72 = *MEMORY[0x277D85DE8];
  isCopy = is;
  array = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v6 = isCopy;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
  v8 = 0x277CCA000uLL;
  if (v7)
  {
    v9 = v7;
    v10 = *v59;
    v47 = *v59;
    v48 = v6;
    do
    {
      v11 = 0;
      v49 = v9;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v58 + 1) + 8 * v11);
        visits = [v12 visits];
        v14 = visits;
        if (visits && [visits count] >= 5.0)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v50 = v14;
          v15 = v14;
          v22 = [v15 countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v22)
          {
            v23 = v22;
            v52 = v11;
            v24 = *v55;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v55 != v24)
                {
                  objc_enumerationMutation(v15);
                }

                v26 = *(*(&v54 + 1) + 8 * i);
                [v26 locationOfInterestConfidence];
                if (v27 >= 0.9)
                {
                  exitDate = [v26 exitDate];
                  entryDate = [v26 entryDate];
                  [exitDate timeIntervalSinceDate:entryDate];
                  v31 = v30;

                  v32 = [(PowerUILocationSignalMonitor *)self log];
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    +[PowerUILocationSignalMonitor stringFromRTType:](PowerUILocationSignalMonitor, "stringFromRTType:", [v12 type]);
                    v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    [*(v8 + 2992) numberWithDouble:v31];
                    v35 = v34 = v8;
                    *buf = 138412546;
                    v66 = v33;
                    v67 = 2112;
                    v68 = v35;
                    _os_log_impl(&dword_21B766000, v32, OS_LOG_TYPE_INFO, "Empirical Prediction: %@ Visit Duration : %@", buf, 0x16u);

                    v8 = v34;
                  }

                  if (v31 >= 0.0)
                  {
                    v36 = [*(v8 + 2992) numberWithDouble:v31];
                    [array addObject:v36];
                  }

                  else
                  {
                    v36 = [(PowerUILocationSignalMonitor *)self log];
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                    {
                      [(PowerUILocationSignalMonitor *)v62 empiricalDurationAtRemoteLocation:v36 withPotentialLOIs:?];
                    }
                  }
                }
              }

              v23 = [v15 countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v23);
            v10 = v47;
            v6 = v48;
            v9 = v49;
            v11 = v52;
          }

          v14 = v50;
        }

        else
        {
          v15 = [(PowerUILocationSignalMonitor *)self log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v51 = v11;
            +[PowerUILocationSignalMonitor stringFromRTType:](PowerUILocationSignalMonitor, "stringFromRTType:", [v12 type]);
            v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v17 = [*(v8 + 2992) numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
            [*(v8 + 2992) numberWithDouble:5.0];
            v18 = v10;
            v19 = v6;
            v21 = v20 = v14;
            *buf = 138412802;
            v66 = v16;
            v67 = 2112;
            v68 = v17;
            v69 = 2112;
            v70 = v21;
            _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_INFO, "Empirical Prediction: %@ has not enough visits %@ < %@", buf, 0x20u);

            v14 = v20;
            v6 = v19;
            v10 = v18;

            v11 = v51;
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v37 = 0;
  }

  else
  {
    v38 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "Empirical Stay cannot predict because there's not enough visits", buf, 2u);
    }

    v37 = @"No Duration";
  }

  [array percentile:{0.5, locationCopy}];
  v40 = v39;
  v41 = [*(v8 + 2992) numberWithDouble:?];
  v42 = [PowerUILocationSignalMonitor stringFromRTType:v46];
  [(PowerUILocationSignalMonitor *)self logPredictionsWithDuration:v41 withConfidence:&unk_282D4E9F8 withLOIString:v42 withPredictionMethod:@"Empirical" withSkipString:v37];

  if (v40 > 28800.0)
  {
    v40 = 28800.0;
  }

  if (v40 == 28800.0)
  {
    v43 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v66 = 28800.0 / 60.0 / 60.0;
      _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_INFO, "Empirical Stay predicts %f hours > 8 hours. Using 8 hour default", buf, 0xCu);
    }
  }

  return v40;
}

- (id)empiricalPredictedDateStayingAtNearbyLOIs:(id)is withRemoteLocation:(int64_t)location
{
  v53 = *MEMORY[0x277D85DE8];
  isCopy = is;
  v38 = os_transaction_create();
  v37 = [MEMORY[0x277CBEAA8] now];
  v7 = [(PowerUILocationSignalMonitor *)self LOIsWithinMeters:100000];
  v8 = [v7 mutableCopy];

  v9 = [v8 mutableCopy];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [(PowerUILocationSignalMonitor *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v8;
    _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Empirical Stay Prediction: All LOIs within 100000 meters %@", buf, 0xCu);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = isCopy;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v10 addObject:*(*(&v43 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v14);
  }

  v36 = v12;

  selfCopy = self;
  v17 = [(PowerUILocationSignalMonitor *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v10;
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Empirical Prediction: Removing nearby LOIs with identifiers %@", buf, 0xCu);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * j);
        identifier = [v23 identifier];
        v25 = [v10 containsObject:identifier];

        if (v25)
        {
          [v9 removeObject:v23];
        }

        if ([v23 type] != location)
        {
          [v9 removeObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v20);
  }

  [(PowerUILocationSignalMonitor *)selfCopy empiricalDurationAtRemoteLocation:location withPotentialLOIs:v9];
  if (v26 <= 0.0)
  {
    v30 = [(PowerUILocationSignalMonitor *)selfCopy log];
    v28 = v37;
    v31 = v38;
    v32 = v36;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "Empirical Stay cannot predict because duration = 0", buf, 2u);
    }

    v29 = 0;
  }

  else
  {
    v27 = v26;
    v28 = v37;
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v37 sinceDate:?];
    v30 = [(PowerUILocationSignalMonitor *)selfCopy log];
    v31 = v38;
    v32 = v36;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      *buf = 138412546;
      v48 = v29;
      v49 = 2112;
      v50 = v33;
      _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "Empirical Stay Prediction %@ from empirical duration %@", buf, 0x16u);
    }
  }

  return v29;
}

- (BOOL)longChargesOccurredInLocationsNear:(id)near withError:(id *)error
{
  v86 = *MEMORY[0x277D85DE8];
  nearCopy = near;
  v48 = nearCopy;
  if ([(PowerUILocationSignalMonitor *)self locationIsUncertain:nearCopy])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Location is uncertain; assuming conservatively we are not in typical location.", buf, 2u);
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PowerUIAgent" code:1 userInfo:&unk_282D4EFE8];
    *error = v8 = 0;
  }

  else
  {
    *buf = 0;
    v77 = buf;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__10;
    v80 = __Block_byref_object_dispose__10;
    v81 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__10;
    v74 = __Block_byref_object_dispose__10;
    v75 = 0;
    v9 = dispatch_semaphore_create(0);
    routine = self->_routine;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __77__PowerUILocationSignalMonitor_longChargesOccurredInLocationsNear_withError___block_invoke;
    v66[3] = &unk_2782D5110;
    v68 = &v70;
    v66[4] = self;
    dsema = v9;
    v67 = dsema;
    v69 = buf;
    [(RTRoutineManager *)routine fetchLocationsOfInterestWithinDistance:nearCopy ofLocation:v66 withHandler:200.0];
    v11 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(dsema, v11))
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUILocationSignalMonitor longChargesOccurredInLocationsNear:withError:];
      }

      ADClientAddValueForScalarKey();
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PowerUIAgent" code:2 userInfo:&unk_282D4F010];
      *error = v8 = 0;
    }

    else
    {
      selfCopy = self;
      if ([*(v77 + 5) count])
      {
        *error = v71[5];
        array = [MEMORY[0x277CBEB18] array];
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v13 = *(v77 + 5);
        v14 = [v13 countByEnumeratingWithState:&v59 objects:v83 count:16];
        if (v14)
        {
          v15 = *v60;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v60 != v15)
              {
                objc_enumerationMutation(v13);
              }

              visits = [*(*(&v59 + 1) + 8 * i) visits];
              [array addObjectsFromArray:visits];
            }

            v14 = [v13 countByEnumeratingWithState:&v59 objects:v83 count:16];
          }

          while (v14);
        }

        [array sortUsingComparator:&__block_literal_global_20];
        v18 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v18 setDateFormat:@"yyyy-MM-dd HH:mm"];
        v51 = v18;
        v19 = +[PowerUISmartChargeUtilities lastPluggedInDate];
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = array;
        v20 = [obj countByEnumeratingWithState:&v55 objects:v82 count:16];
        if (v20)
        {
          v52 = 0;
          v21 = 0;
          v22 = *v56;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v56 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v55 + 1) + 8 * j);
              entryDate = [v24 entryDate];
              [v19 timeIntervalSinceDate:entryDate];
              v27 = v26 > 2592000.0;

              if (!v27)
              {
                entryDate2 = [v24 entryDate];
                exitDate = [v24 exitDate];
                v30 = [PowerUISmartChargeUtilities doesTimeOfDayForDate:v19 fallBetweenDate:entryDate2 andDate:exitDate];

                ++v21;
                v31 = selfCopy->_log;
                v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
                if (v30)
                {
                  if (v32)
                  {
                    entryDate3 = [v24 entryDate];
                    v33 = [v51 stringFromDate:entryDate3];
                    exitDate2 = [v24 exitDate];
                    v35 = [v51 stringFromDate:exitDate2];
                    v36 = [v51 stringFromDate:v19];
                    *v84 = 138412802;
                    *&v84[4] = v33;
                    *&v84[12] = 2112;
                    *&v84[14] = v35;
                    *&v84[22] = 2112;
                    v85 = v36;
                    _os_log_debug_impl(&dword_21B766000, v31, OS_LOG_TYPE_DEBUG, "Match! visit start: %@  ---  visit end: %@  ---  plugin date: %@", v84, 0x20u);
                  }

                  ++v52;
                }

                else
                {
                  if (v32)
                  {
                    entryDate4 = [v24 entryDate];
                    v37 = [v51 stringFromDate:entryDate4];
                    exitDate3 = [v24 exitDate];
                    v39 = [v51 stringFromDate:exitDate3];
                    v40 = [v51 stringFromDate:v19];
                    *v84 = 138412802;
                    *&v84[4] = v37;
                    *&v84[12] = 2112;
                    *&v84[14] = v39;
                    *&v84[22] = 2112;
                    v85 = v40;
                    _os_log_debug_impl(&dword_21B766000, v31, OS_LOG_TYPE_DEBUG, "NO Match! visit start: %@  ---  visit end: %@  ---  plugin date: %@", v84, 0x20u);
                  }
                }
              }
            }

            v20 = [obj countByEnumeratingWithState:&v55 objects:v82 count:16];
          }

          while (v20);
        }

        else
        {
          v52 = 0;
          v21 = 0;
        }

        v45 = selfCopy->_log;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *v84 = 67109376;
          *&v84[4] = v52;
          *&v84[8] = 1024;
          *&v84[10] = v21;
          _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_DEFAULT, "%u out of %u LoI visits match current time", v84, 0xEu);
        }

        v8 = v52 > 4;
      }

      else
      {
        *v84 = 0;
        *&v84[8] = v84;
        *&v84[16] = 0x2020000000;
        LOBYTE(v85) = 0;
        v41 = dispatch_semaphore_create(0);

        v42 = self->_routine;
        v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __77__PowerUILocationSignalMonitor_longChargesOccurredInLocationsNear_withError___block_invoke_155;
        v63[3] = &unk_2782D5138;
        v63[4] = selfCopy;
        v65 = v84;
        dsema = v41;
        v64 = dsema;
        [(RTRoutineManager *)v42 fetchLocationsOfInterestVisitedSinceDate:v43 withHandler:v63];

        v44 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(dsema, v44))
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            [PowerUILocationSignalMonitor longChargesOccurredInLocationsNear:withError:];
          }

          ADClientAddValueForScalarKey();
          [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PowerUIAgent" code:2 userInfo:&unk_282D4F038];
          *error = v8 = 0;
        }

        else
        {
          v8 = *(*&v84[8] + 24) ^ 1;
        }

        _Block_object_dispose(v84, 8);
      }
    }

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(buf, 8);
  }

  return v8 & 1;
}

void __77__PowerUILocationSignalMonitor_longChargesOccurredInLocationsNear_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (v7 || ![v6 count])
  {
    v8 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"No nearby LOI";
      if (v7)
      {
        v9 = v7;
      }

      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "No LOIs nearby: %@", &v14, 0xCu);
    }

    ADClientSetValueForScalarKey();
  }

  else
  {
    v10 = *(*(a1 + 32) + 96);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v10;
      v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "%@ nearby LOIs", &v14, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __77__PowerUILocationSignalMonitor_longChargesOccurredInLocationsNear_withError___block_invoke_155(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    ADClientSetValueForScalarKey();
  }

  else
  {
    v7 = [v5 count];
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    if (v7)
    {
      if (os_log_type_enabled(*(v8 + 96), OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = 134217984;
        v12 = [v6 count];
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "No LoIs, but did see visits in the past. (%lu)", &v11, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(*(v8 + 96), OS_LOG_TYPE_FAULT))
      {
        __77__PowerUILocationSignalMonitor_longChargesOccurredInLocationsNear_withError___block_invoke_155_cold_1();
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __77__PowerUILocationSignalMonitor_longChargesOccurredInLocationsNear_withError___block_invoke_160(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 entryDate];
  v6 = [v4 entryDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)inTypicalChargingLocationWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PowerUILocationSignalMonitor_inTypicalChargingLocationWithError___block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_sync(queue, block);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(PowerUILocationSignalMonitor *)self inTypicalChargingLocationWithError:?];
  }

  currentLocation = [(PowerUILocationSignalMonitor *)self currentLocation];
  v8 = [(PowerUILocationSignalMonitor *)self locationIsUncertain:currentLocation];

  if (v8)
  {
    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
  }

  currentLocation2 = [(PowerUILocationSignalMonitor *)self currentLocation];
  v10 = [(PowerUILocationSignalMonitor *)self locationIsUncertain:currentLocation2];

  if (v10)
  {
    requestLocationSemaphore = [(PowerUILocationSignalMonitor *)self requestLocationSemaphore];
    if (requestLocationSemaphore)
    {
      v12 = dispatch_time(0, 30000000000);
      dispatch_semaphore_wait(requestLocationSemaphore, v12);
    }

    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    currentLocation3 = [(PowerUILocationSignalMonitor *)self currentLocation];
    if (currentLocation3)
    {
      v16 = @"Have Location";
    }

    else
    {
      v16 = 0;
    }

    location = [(CLLocationManager *)self->_locationManager location];
    if (location)
    {
      v18 = @"Have Location";
    }

    else
    {
      v18 = 0;
    }

    *buf = 138412546;
    v29 = v16;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Current location %@, Location manager location: %@", buf, 0x16u);
  }

  currentLocation4 = [(PowerUILocationSignalMonitor *)self currentLocation];
  v20 = currentLocation4;
  if (currentLocation4)
  {
    location2 = currentLocation4;
  }

  else
  {
    location2 = [(CLLocationManager *)self->_locationManager location];
  }

  v22 = location2;

  v23 = [(PowerUILocationSignalMonitor *)self longChargesOccurredInLocationsNear:v22 withError:error];
  v24 = self->_queue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__PowerUILocationSignalMonitor_inTypicalChargingLocationWithError___block_invoke_170;
  v26[3] = &unk_2782D3EA8;
  v26[4] = self;
  dispatch_sync(v24, v26);

  return v23;
}

void __67__PowerUILocationSignalMonitor_inTypicalChargingLocationWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) location];
  [*(a1 + 32) setCurrentLocation:v2];

  v3 = dispatch_semaphore_create(0);
  [*(a1 + 32) setRequestLocationSemaphore:v3];
}

uint64_t __67__PowerUILocationSignalMonitor_inTypicalChargingLocationWithError___block_invoke_170(uint64_t a1)
{
  [*(a1 + 32) setCurrentLocation:0];
  v2 = *(a1 + 32);

  return [v2 setRequestLocationSemaphore:0];
}

- (BOOL)isInSameTimeZone
{
  v48 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__10;
  v45 = __Block_byref_object_dispose__10;
  v46 = 0;
  v3 = BiomeLibrary();
  device = [v3 Device];
  timeZone = [device TimeZone];

  publisher = [timeZone publisher];
  last = [publisher last];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke;
  v40[3] = &unk_2782D3E10;
  v40[4] = self;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_172;
  v39[3] = &unk_2782D5180;
  v39[4] = &v41;
  v8 = [last sinkWithCompletion:v40 receiveInput:v39];

  if (v42[5])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [v42[5] secondsFromGMT];
      [(PowerUILocationSignalMonitor *)buf isInSameTimeZone];
    }

    v36 = 0;
    v37[0] = &v36;
    v37[1] = 0x2020000000;
    v38 = 0;
    v33 = 0;
    v34[0] = &v33;
    v34[1] = 0x2020000000;
    v35 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__10;
    v31[4] = __Block_byref_object_dispose__10;
    v32 = 0;
    v11 = BiomeLibrary();
    device2 = [v11 Device];
    power = [device2 Power];
    pluggedIn = [power PluggedIn];

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = -1;
    publisher2 = [timeZone publisher];
    publisher3 = [pluggedIn publisher];
    v17 = [publisher2 orderedMergeWithOther:publisher3 comparator:&__block_literal_global_177];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_2;
    v28[3] = &unk_2782D51A8;
    v28[4] = v31;
    v28[5] = v29;
    v18 = [v17 filterWithIsIncluded:v28];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_3;
    v27[3] = &unk_2782D3E10;
    v27[4] = self;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_181;
    v26[3] = &unk_2782D51D0;
    v26[4] = self;
    v26[5] = v31;
    v26[6] = &v41;
    v26[7] = &v36;
    v26[8] = &v33;
    v19 = [v18 sinkWithCompletion:v27 receiveInput:v26];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUILocationSignalMonitor *)v34 isInSameTimeZone];
    }

    v21 = *(v34[0] + 24);
    if (v21)
    {
      v22 = *(v37[0] + 24);
      v23 = v22 >= 11 && v22 / v21 > 3;
    }

    else
    {
      v23 = 1;
    }

    _Block_object_dispose(v29, 8);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v24 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PowerUILocationSignalMonitor isInSameTimeZone];
    }

    v23 = 0;
  }

  _Block_object_dispose(&v41, 8);
  return v23;
}

void __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_cold_1(v3);
    }
  }
}

uint64_t __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_172(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 eventBody];

  return MEMORY[0x2821F96F8]();
}

uint64_t __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = *(*(a1 + 32) + 8);
  if (isKindOfClass)
  {
    objc_storeStrong((v7 + 40), a2);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 40))
  {
    goto LABEL_11;
  }

  v8 = [v4 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v9 = [v4 eventBody];
  v10 = [v9 hasStarting];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [v4 eventBody];
  v12 = [v11 starting];

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 24);
  if (v14 != -1 && v14 == v12)
  {
    goto LABEL_11;
  }

  *(v13 + 24) = v12;
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = 1;
LABEL_12:

  return v15;
}

void __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_3_cold_1(v3);
    }
  }
}

void __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_181(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1[5] + 8) + 40) eventBody];
  v5 = [v4 timeZone];

  v6 = *(a1[4] + 96);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_181_cold_1((a1 + 5), v6, v3);
    }

    v7 = [*(*(a1[6] + 8) + 40) timeZone];
    v8 = [*(*(a1[5] + 8) + 40) eventBody];
    v9 = [v8 timeZone];

    if (v7 == v9)
    {
      v10 = a1[7];
    }

    else
    {
      v10 = a1[8];
    }

    ++*(*(v10 + 8) + 24);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_181_cold_2();
  }
}

- (int64_t)inKnownMicrolocation
{
  v3 = +[PowerUISmartChargeUtilities lastPluggedInDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v6 = BiomeLibrary();
  location = [v6 Location];
  microLocationVisit = [location MicroLocationVisit];

  publisher = [microLocationVisit publisher];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__PowerUILocationSignalMonitor_inKnownMicrolocation__block_invoke;
  v19[3] = &unk_2782D3E10;
  v19[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__PowerUILocationSignalMonitor_inKnownMicrolocation__block_invoke_182;
  v18[3] = &unk_2782D51F8;
  v18[7] = v5;
  v18[4] = self;
  v18[5] = &v24;
  v18[6] = &v20;
  v10 = [publisher sinkWithCompletion:v19 receiveInput:v18];

  if (v25[3])
  {
    v11 = *(v21 + 24);
    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v11 == 1)
    {
      if (v13)
      {
        *v17 = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Microlocation event near pluggedIn time", v17, 2u);
      }

      v14 = 1;
    }

    else
    {
      if (v13)
      {
        *v17 = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No matching microlocation found", v17, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "No microlocations found. Falling back to TimeZone check", v17, 2u);
    }

    v14 = -1;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v14;
}

void __52__PowerUILocationSignalMonitor_inKnownMicrolocation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__PowerUILocationSignalMonitor_inKnownMicrolocation__block_invoke_cold_1(v3);
    }
  }
}

void __52__PowerUILocationSignalMonitor_inKnownMicrolocation__block_invoke_182(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = *(a1 + 56);
  [v3 timestamp];
  v6 = v4 - v5;
  v7 = *(*(a1 + 32) + 96);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x277CBEAA8];
    v10 = *(a1 + 56);
    v11 = v7;
    v12 = [v9 dateWithTimeIntervalSinceReferenceDate:v10];
    v13 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    v20 = v6;
    _os_log_debug_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEBUG, "working on event - plugin: %@ - event timestamp: %@ - diff: %f", &v15, 0x20u);
  }

  if (fabs(v6) < 60.0)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Microlocation event near pluggedIn time %@", &v15, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)notAuthorizedForLocation
{
  authorizationStatus = self->_authorizationStatus;
  if (authorizationStatus)
  {
    v3 = authorizationStatus == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)likelyToBeInKnownArea
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  inKnownMicrolocation = [(PowerUILocationSignalMonitor *)self inKnownMicrolocation];
  if (inKnownMicrolocation == -1)
  {
    [dictionary setObject:@"TimeZone" forKeyedSubscript:@"reason"];
    isInSameTimeZone = [(PowerUILocationSignalMonitor *)self isInSameTimeZone];
    log = self->_log;
    v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (isInSameTimeZone)
    {
      if (v11)
      {
        *buf = 0;
        v8 = "Device has has been in consistent timezones; Not opting out of feature";
        v9 = buf;
        goto LABEL_8;
      }

LABEL_9:
      v12 = MEMORY[0x277CBEC38];
      goto LABEL_16;
    }

    if (v11)
    {
      *v18 = 0;
      v13 = "Device has been through multiple timezones; Opting out of feature";
      v14 = v18;
      goto LABEL_14;
    }
  }

  else
  {
    v5 = inKnownMicrolocation;
    [dictionary setObject:@"Microlocation" forKeyedSubscript:@"reason"];
    log = self->_log;
    v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v17 = 0;
        v8 = "In a known micro-location; Not opting out of the feature";
        v9 = &v17;
LABEL_8:
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v7)
    {
      LOWORD(v16) = 0;
      v13 = "Not In a known micro-location; Opting out of the feature";
      v14 = &v16;
LABEL_14:
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    }
  }

  v12 = MEMORY[0x277CBEC28];
LABEL_16:
  [dictionary setObject:v12 forKeyedSubscript:{@"value", v16}];

  return dictionary;
}

- (id)requiredFullChargeDate
{
  v3 = os_transaction_create();
  v4 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"locIgnored" inDomain:@"com.apple.smartcharging.topoffprotection"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Location Ignored; Returning distant future", buf, 2u);
    }

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    *buf = 0;
    v12 = buf;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__10;
    v15 = __Block_byref_object_dispose__10;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    fullChargeDateQueue = self->_fullChargeDateQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PowerUILocationSignalMonitor_requiredFullChargeDate__block_invoke;
    v10[3] = &unk_2782D4A90;
    v10[4] = self;
    v10[5] = buf;
    dispatch_sync(fullChargeDateQueue, v10);
    distantFuture = *(v12 + 5);
    _Block_object_dispose(buf, 8);
  }

  return distantFuture;
}

void __54__PowerUILocationSignalMonitor_requiredFullChargeDate__block_invoke(uint64_t a1)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) notAuthorizedForLocation];
  v3 = *(a1 + 32);
  if (!v2)
  {
    v6 = *(v3 + 64);
    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v6, v7);
    v8 = *(a1 + 32);
    v33 = 0;
    v9 = [v8 inTypicalChargingLocationWithError:&v33];
    v10 = v33;
    v11 = v10;
    if (v9)
    {
      v12 = *(*(a1 + 32) + 96);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "In typical charging location; No need to advance full charge deadline", buf, 2u);
      }

      v13 = [MEMORY[0x277CBEAA8] distantFuture];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      if (v10)
      {
        v17 = *(*(a1 + 32) + 96);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Error while determining LoI; Fallback to Microlocation or TimeZone", buf, 2u);
        }

        v5 = @"LoIError";
        goto LABEL_14;
      }

      v29 = [MEMORY[0x277CBEAA8] distantPast];
      v30 = *(*(a1 + 40) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v32 = *(*(a1 + 32) + 96);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v32, OS_LOG_TYPE_DEFAULT, "Not in typical charging location; Opting out of feature", buf, 2u);
      }
    }

    v16 = @"LocationOfInterest";
    goto LABEL_18;
  }

  v4 = *(v3 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Not authorized for location; Fallback to Microlocation or TimeZone", buf, 2u);
  }

  v5 = @"NotAuthorized";
LABEL_14:
  v11 = [*(a1 + 32) likelyToBeInKnownArea];
  v18 = [v11 objectForKeyedSubscript:@"value"];
  v19 = [v18 BOOLValue];

  v20 = [v11 objectForKeyedSubscript:@"reason"];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v5, v20];

  if (v19)
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v21 = ;
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

LABEL_18:
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceNow];
  v35[0] = @"Reason";
  v35[1] = @"locationMonitorDecision";
  v36[0] = v16;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24 > 0.0];
  v36[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v27 = *(a1 + 32);
  v28 = *(v27 + 16);
  *(v27 + 16) = v26;
}

- (id)LOIsWithinMeters:(int)meters
{
  lastAcquiredLocation = [(PowerUILocationSignalMonitor *)self lastAcquiredLocation];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  array = [MEMORY[0x277CBEB18] array];
  v6 = dispatch_semaphore_create(0);
  routine = self->_routine;
  metersCopy = meters;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__PowerUILocationSignalMonitor_LOIsWithinMeters___block_invoke;
  v14[3] = &unk_2782D5138;
  v14[4] = self;
  v16 = &v17;
  v9 = v6;
  v15 = v9;
  [(RTRoutineManager *)routine fetchLocationsOfInterestWithinDistance:lastAcquiredLocation ofLocation:v14 withHandler:metersCopy];
  v10 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = [(PowerUILocationSignalMonitor *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PowerUILocationSignalMonitor LOIsWithinMeters:];
    }

    v12 = 0;
  }

  else
  {
    v12 = v18[5];
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __49__PowerUILocationSignalMonitor_LOIsWithinMeters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__PowerUILocationSignalMonitor_LOIsWithinMeters___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)stringFromRTType:(int64_t)type
{
  if ((type + 1) > 4)
  {
    return @"Error";
  }

  else
  {
    return off_2782D5218[type + 1];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v12 = *MEMORY[0x277D85DE8];
  authorizationStatus = [authorization authorizationStatus];
  ADClientSetValueForScalarKey();
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (authorizationStatus == 3)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Authorized for Protective Top-Off", &v10, 2u);
    }
  }

  else if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = log;
    v9 = [v7 numberWithInt:authorizationStatus];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Authorization status: %@", &v10, 0xCu);
  }

  self->_authorizationStatus = authorizationStatus;
  dispatch_semaphore_signal(self->_authorizationSemaphore);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  lastObject = [locationsCopy lastObject];
  v7 = [(PowerUILocationSignalMonitor *)self locationIsUncertain:lastObject];

  if (!v7)
  {
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__PowerUILocationSignalMonitor_locationManager_didUpdateLocations___block_invoke;
    v9[3] = &unk_2782D4AC0;
    v9[4] = self;
    v10 = locationsCopy;
    dispatch_sync(queue, v9);
  }
}

void __67__PowerUILocationSignalMonitor_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) lastObject];
  [*(a1 + 32) setCurrentLocation:v2];

  v3 = [*(a1 + 32) requestLocationSemaphore];

  if (v3)
  {
    v4 = [*(a1 + 32) requestLocationSemaphore];
    dispatch_semaphore_signal(v4);
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Location Manager failed with error: %@", &v7, 0xCu);
  }
}

- (void)empiricalDurationAtRemoteLocation:(NSObject *)a3 withPotentialLOIs:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  *a1 = 138412290;
  *a2 = v6;
  _os_log_error_impl(&dword_21B766000, a3, OS_LOG_TYPE_ERROR, "Empirical Prediction: Ignoring negative duration %@", a1, 0xCu);
}

- (void)inTypicalChargingLocationWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = @"Have Location";
  }

  else
  {
    v2 = 0;
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21B766000, a2, OS_LOG_TYPE_DEBUG, "Current location: %@", &v3, 0xCu);
}

- (void)isInSameTimeZone
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*self + 24);
  v4 = *(*a2 + 24);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "differentTimeZone: %d - sameTimeZone: %d", v5, 0xEu);
}

void __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting TimeZone biome events in signal monitor: %s", v5, v6, v7, v8);
}

void __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting TimeZone/Plugin biome events in signal monitor: %s", v5, v6, v7, v8);
}

void __48__PowerUILocationSignalMonitor_isInSameTimeZone__block_invoke_181_cold_1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v5 = *(*(*a1 + 8) + 40);
  v6 = a2;
  [v5 timestamp];
  v7 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = MEMORY[0x277CBEAA8];
  [a3 timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  _os_log_debug_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEBUG, "working on event with TZ timestamp: %@ - plugin timestamp: %@", &v10, 0x16u);
}

void __52__PowerUILocationSignalMonitor_inKnownMicrolocation__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting KML in signalMonitor: %s", v5, v6, v7, v8);
}

void __49__PowerUILocationSignalMonitor_LOIsWithinMeters___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21B766000, v0, OS_LOG_TYPE_ERROR, "Fetch LOIs error: %@", v1, 0xCu);
}

@end