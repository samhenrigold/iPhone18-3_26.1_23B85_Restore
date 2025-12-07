@interface ATXDailyPhubbingAccumulator
- (ATXDailyPhubbingAccumulator)init;
- (ATXDailyPhubbingAccumulator)initWithProximityEventPublisher:(id)publisher screenLockedPublisher:(id)lockedPublisher appLaunchPublisher:(id)launchPublisher;
- (BOOL)appInFocusEventOccured:(id)occured whileNearPeople:(id)people;
- (BOOL)screenEventOccured:(id)occured whileNearPeople:(id)people;
- (BOOL)successfullyAccumulatedPhubbingEvents;
- (id)dateIntervalFromAppInFocusEvent:(id)event;
- (id)dateIntervalFromPeopleEvent:(id)event;
- (id)dateIntervalFromScreenLockEvent:(id)event;
- (void)addAppSession:(id)session launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration;
- (void)recordAppLaunchEndEvent:(id)event;
- (void)recordAppLaunchStartEvent:(id)event;
- (void)successfullyAccumulatedPhubbingEvents;
- (void)trackScreenEndingEvent:(id)event;
- (void)trackScreenStartingEvent:(id)event;
@end

@implementation ATXDailyPhubbingAccumulator

- (ATXDailyPhubbingAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 fetchPeopleWithProximityFromStartDate:v3 toEndDate:v5];

  v7 = BiomeLibrary();
  device = [v7 Device];
  screenLocked = [device ScreenLocked];

  v10 = BiomeLibrary();
  v11 = [v10 App];
  inFocus = [v11 InFocus];

  v13 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v14 = *MEMORY[0x277CEBB48];
  v15 = [screenLocked publisherWithUseCase:*MEMORY[0x277CEBB48] options:v13];
  v16 = [inFocus publisherWithUseCase:v14 options:v13];
  v17 = [(ATXDailyPhubbingAccumulator *)self initWithProximityEventPublisher:v6 screenLockedPublisher:v15 appLaunchPublisher:v16];

  return v17;
}

- (ATXDailyPhubbingAccumulator)initWithProximityEventPublisher:(id)publisher screenLockedPublisher:(id)lockedPublisher appLaunchPublisher:(id)launchPublisher
{
  publisherCopy = publisher;
  lockedPublisherCopy = lockedPublisher;
  launchPublisherCopy = launchPublisher;
  v21.receiver = self;
  v21.super_class = ATXDailyPhubbingAccumulator;
  v12 = [(ATXDailyPhubbingAccumulator *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_proximityPublisher, publisher);
    objc_storeStrong(&v13->_deviceScreenLockedPublisher, lockedPublisher);
    objc_storeStrong(&v13->_appLaunchPublisher, launchPublisher);
    v14 = objc_opt_new();
    phubbingSessionEvents = v13->_phubbingSessionEvents;
    v13->_phubbingSessionEvents = v14;

    v16 = objc_opt_new();
    appInFocusStartingEvents = v13->_appInFocusStartingEvents;
    v13->_appInFocusStartingEvents = v16;

    v18 = objc_opt_new();
    appSessionsWithinPhubbingEvent = v13->_appSessionsWithinPhubbingEvent;
    v13->_appSessionsWithinPhubbingEvent = v18;
  }

  return v13;
}

- (BOOL)successfullyAccumulatedPhubbingEvents
{
  v27[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];

  proximityPublisher = self->_proximityPublisher;
  appLaunchPublisher = self->_appLaunchPublisher;
  v27[0] = self->_deviceScreenLockedPublisher;
  v27[1] = appLaunchPublisher;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke;
  v24[3] = &unk_278597CB8;
  v24[4] = self;
  v10 = [(BPSPublisher *)proximityPublisher orderedMergeWithOthers:v9 comparator:v24];

  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = __Block_byref_object_copy__69;
  v22[3] = __Block_byref_object_dispose__69;
  v23 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_18;
  v20[3] = &unk_278597540;
  v20[4] = &v21;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_2;
  v18[3] = &unk_278598CE8;
  v18[4] = self;
  v11 = v6;
  v19 = v11;
  v12 = [v10 sinkWithCompletion:v20 receiveInput:v18];
  v13 = *(v22[0] + 40);
  if (v13)
  {
    p_super = __atxlog_handle_usage_insights(v12);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(ATXDailyPhubbingAccumulator *)v22 successfullyAccumulatedPhubbingEvents];
    }
  }

  else
  {
    v15 = __atxlog_handle_usage_insights(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ATXDailyPhubbingAccumulator successfullyAccumulatedPhubbingEvents]";
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "%s: Successfully accumulated phubbing session events", buf, 0xCu);
    }

    v16 = self->_phubbingSessionEvents;
    p_super = &self->_phubbingSessions->super;
    self->_phubbingSessions = &v16->super;
  }

  _Block_object_dispose(&v21, 8);
  return v13 == 0;
}

uint64_t __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dateIntervalFromPeopleEvent:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [*(a1 + 32) dateIntervalFromScreenLockEvent:v5];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [*(a1 + 32) dateIntervalFromAppInFocusEvent:v5];
    }

    v9 = v12;
  }

  v13 = [*(a1 + 32) dateIntervalFromPeopleEvent:v6];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [*(a1 + 32) dateIntervalFromScreenLockEvent:v6];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [*(a1 + 32) dateIntervalFromAppInFocusEvent:v6];
    }

    v15 = v18;
  }

  if (v9)
  {
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v20 = __atxlog_handle_usage_insights(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_cold_1(v5, v20);
  }

  if (!v15)
  {
LABEL_19:
    v21 = __atxlog_handle_usage_insights(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_cold_1(v6, v21);
    }
  }

LABEL_22:
  v22 = [v9 startDate];
  [v22 timeIntervalSinceReferenceDate];
  v24 = v23;

  v25 = [v15 startDate];
  [v25 timeIntervalSinceReferenceDate];
  v27 = v26;

  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v30 = [v28 compare:v29];

  return v30;
}

uint64_t __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) trackMostRecentDiscoveredPeopleEvent:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v13;
    v4 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v3 eventBody];
      if ([v6 starting])
      {
        if ([v6 starting])
        {
          objc_storeStrong((*(a1 + 32) + 48), v6);
          [*(a1 + 32) trackScreenEndingEvent:v3];
        }
      }

      else
      {
        if ([*(*(a1 + 32) + 48) starting])
        {
          [*(a1 + 32) trackScreenStartingEvent:v3];
        }

        objc_storeStrong((*(a1 + 32) + 48), v6);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = [v7 eventBody];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      v10 = [v7 eventBody];
      v11 = *(a1 + 40);
      v12 = [v10 bundleID];
      LODWORD(v11) = [v11 containsObject:v12];

      if (v11)
      {
        if ([v10 starting])
        {
          [*(a1 + 32) recordAppLaunchStartEvent:v10];
        }

        else if (([v10 starting] & 1) == 0)
        {
          [*(a1 + 32) recordAppLaunchEndEvent:v10];
        }
      }
    }
  }
}

- (id)dateIntervalFromPeopleEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    endDate = [v4 endDate];

    v6 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [v4 startDate];
    if (endDate)
    {
      [v4 endDate];
    }

    else
    {
      [v4 startDate];
    }
    v9 = ;
    v8 = [v6 initWithStartDate:startDate endDate:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dateIntervalFromScreenLockEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    eventBody = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v4 timestamp];
      v8 = [v7 initWithTimeIntervalSinceReferenceDate:?];
      v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dateIntervalFromAppInFocusEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    eventBody = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      eventBody2 = [v4 eventBody];
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      absoluteTimestamp = [eventBody2 absoluteTimestamp];
      absoluteTimestamp2 = [eventBody2 absoluteTimestamp];
      v11 = [v8 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)trackScreenStartingEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  if (([eventBody starting] & 1) == 0 && -[ATXDailyPhubbingAccumulator screenEventOccured:whileNearPeople:](self, "screenEventOccured:whileNearPeople:", eventCopy, self->_mostRecentProximityPeopleEvent))
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    [eventCopy timestamp];
    v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
    phubbingStartTime = self->_phubbingStartTime;
    self->_phubbingStartTime = v6;
  }
}

- (void)trackScreenEndingEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  if ([eventBody starting] && self->_phubbingStartTime && -[ATXDailyPhubbingAccumulator screenEventOccured:whileNearPeople:](self, "screenEventOccured:whileNearPeople:", eventCopy, self->_mostRecentProximityPeopleEvent))
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    [eventCopy timestamp];
    v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
    objc_storeStrong(&self->_phubbingEndTime, v6);
    v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:self->_phubbingStartTime endDate:self->_phubbingEndTime];
    if ([(RTProximityEvent *)self->_mostRecentProximityPeopleEvent relationship]== 1)
    {
      v8 = @"Family";
    }

    else if ([(RTProximityEvent *)self->_mostRecentProximityPeopleEvent relationship]== 2)
    {
      v8 = @"Friend";
    }

    else
    {
      v8 = @"Unknown";
    }

    v9 = objc_alloc(MEMORY[0x277CEB910]);
    phubbingStartTime = self->_phubbingStartTime;
    phubbingEndTime = self->_phubbingEndTime;
    [v7 duration];
    v12 = [v9 initWithRelationshipType:v8 startTime:phubbingStartTime endTime:phubbingEndTime duration:self->_appSessionsWithinPhubbingEvent appSessions:?];
    [(NSMutableArray *)self->_phubbingSessionEvents addObject:v12];
    v13 = objc_opt_new();
    appSessionsWithinPhubbingEvent = self->_appSessionsWithinPhubbingEvent;
    self->_appSessionsWithinPhubbingEvent = v13;

    v15 = self->_phubbingStartTime;
    self->_phubbingStartTime = 0;
  }
}

- (void)recordAppLaunchStartEvent:(id)event
{
  eventCopy = event;
  if ([ATXDailyPhubbingAccumulator appInFocusEventOccured:"appInFocusEventOccured:whileNearPeople:" whileNearPeople:?]&& self->_phubbingStartTime)
  {
    [(NSMutableArray *)self->_appInFocusStartingEvents addObject:eventCopy];
  }
}

- (void)recordAppLaunchEndEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [(NSMutableArray *)self->_appInFocusStartingEvents copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        bundleID = [eventCopy bundleID];
        bundleID2 = [v11 bundleID];
        v14 = [bundleID isEqualToString:bundleID2];

        if (v14)
        {
          if ([(ATXDailyPhubbingAccumulator *)self appInFocusEventOccured:eventCopy whileNearPeople:self->_mostRecentProximityPeopleEvent])
          {
            v15 = objc_alloc(MEMORY[0x277CCA970]);
            absoluteTimestamp = [v11 absoluteTimestamp];
            absoluteTimestamp2 = [eventCopy absoluteTimestamp];
            v18 = [v15 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];

            bundleID3 = [eventCopy bundleID];
            launchReason = [v11 launchReason];
            absoluteTimestamp3 = [v11 absoluteTimestamp];
            absoluteTimestamp4 = [eventCopy absoluteTimestamp];
            [v18 duration];
            [(ATXDailyPhubbingAccumulator *)self addAppSession:bundleID3 launchReason:launchReason startTime:absoluteTimestamp3 endTime:absoluteTimestamp4 duration:?];
          }

          [(NSMutableArray *)self->_appInFocusStartingEvents removeObject:v11];
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)addAppSession:(id)session launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration
{
  endTimeCopy = endTime;
  timeCopy = time;
  reasonCopy = reason;
  sessionCopy = session;
  v16 = [ATXSessionTaggingAppEntity genreIdForBundleId:sessionCopy];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v18 = objc_alloc(MEMORY[0x277CEB8F8]);
  v19 = [MEMORY[0x277CEB8F8] usageInsightsAppLaunchReasonFromBMAppInFocus:reasonCopy];

  v20 = [v18 initWithBundleID:sessionCopy category:unsignedIntegerValue launchReason:v19 startTime:timeCopy endTime:endTimeCopy duration:duration];
  [(NSMutableArray *)self->_appSessionsWithinPhubbingEvent addObject:v20];
}

- (BOOL)screenEventOccured:(id)occured whileNearPeople:(id)people
{
  peopleCopy = people;
  v6 = MEMORY[0x277CBEAA8];
  occuredCopy = occured;
  v8 = [v6 alloc];
  [occuredCopy timestamp];
  v10 = v9;

  v11 = [v8 initWithTimeIntervalSinceReferenceDate:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;
  startDate = [peopleCopy startDate];
  [startDate timeIntervalSince1970];
  if (v13 <= v15)
  {
    v20 = 0;
  }

  else
  {
    [v11 timeIntervalSince1970];
    v17 = v16;
    endDate = [peopleCopy endDate];
    [endDate timeIntervalSince1970];
    v20 = v17 < v19;
  }

  return v20;
}

- (BOOL)appInFocusEventOccured:(id)occured whileNearPeople:(id)people
{
  occuredCopy = occured;
  peopleCopy = people;
  absoluteTimestamp = [occuredCopy absoluteTimestamp];
  [absoluteTimestamp timeIntervalSince1970];
  v9 = v8;
  startDate = [peopleCopy startDate];
  [startDate timeIntervalSince1970];
  if (v9 <= v11)
  {
    v17 = 0;
  }

  else
  {
    absoluteTimestamp2 = [occuredCopy absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v14 = v13;
    endDate = [peopleCopy endDate];
    [endDate timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (void)successfullyAccumulatedPhubbingEvents
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v3 = 136315394;
  v4 = "[ATXDailyPhubbingAccumulator successfullyAccumulatedPhubbingEvents]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error from merged publishers: %@", &v3, 0x16u);
}

void __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXDailyPhubbingAccumulator: During ordered merge, encountered unknown event: %@", &v2, 0xCu);
}

@end