@interface ATXMindlessCyclingUsageAccumulator
- (ATXMindlessCyclingUsageAccumulator)init;
- (ATXMindlessCyclingUsageAccumulator)initWithAppLaunchPublisher:(id)publisher;
- (BOOL)accumulateMindlessCyclingEvents;
- (id)eventWithBundleID:(id)d launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration;
- (void)accumulateMindlessCyclingEvents;
- (void)recordAppLaunchEndEvent:(id)event;
@end

@implementation ATXMindlessCyclingUsageAccumulator

- (ATXMindlessCyclingUsageAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];
  v7 = [inFocus atx_publisherFromStartDate:v3];

  v8 = [(ATXMindlessCyclingUsageAccumulator *)self initWithAppLaunchPublisher:v7];
  return v8;
}

- (ATXMindlessCyclingUsageAccumulator)initWithAppLaunchPublisher:(id)publisher
{
  publisherCopy = publisher;
  v12.receiver = self;
  v12.super_class = ATXMindlessCyclingUsageAccumulator;
  v6 = [(ATXMindlessCyclingUsageAccumulator *)&v12 init];
  if (v6)
  {
    v7 = objc_opt_new();
    appInFocusStartingEvents = v6->_appInFocusStartingEvents;
    v6->_appInFocusStartingEvents = v7;

    v9 = objc_opt_new();
    mindlessCyclingEventsAccumulator = v6->_mindlessCyclingEventsAccumulator;
    v6->_mindlessCyclingEventsAccumulator = v9;

    objc_storeStrong(&v6->_appLaunchPublisher, publisher);
  }

  return v6;
}

- (BOOL)accumulateMindlessCyclingEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];

  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__12;
  v19[3] = __Block_byref_object_dispose__12;
  v20 = 0;
  appLaunchPublisher = self->_appLaunchPublisher;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke;
  v17[3] = &unk_278597540;
  v17[4] = &v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke_2;
  v14[3] = &unk_2785988C8;
  v8 = v6;
  v15 = v8;
  selfCopy = self;
  v9 = [(BPSPublisher *)appLaunchPublisher sinkWithCompletion:v17 receiveInput:v14];
  v10 = *(v19[0] + 40);
  if (v10)
  {
    p_super = __atxlog_handle_usage_insights(v9);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(ATXMindlessCyclingUsageAccumulator *)v19 accumulateMindlessCyclingEvents];
    }
  }

  else
  {
    v12 = self->_mindlessCyclingEventsAccumulator;
    p_super = &self->_mindlessCyclingEvents->super;
    self->_mindlessCyclingEvents = &v12->super;
  }

  _Block_object_dispose(&v18, 8);
  return v10 == 0;
}

uint64_t __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 bundleID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v8 starting];
    v7 = *(a1 + 40);
    if (v6)
    {
      [v7 recordAppLaunchStartEvent:v8];
    }

    else
    {
      [v7 recordAppLaunchEndEvent:v8];
    }
  }
}

- (void)recordAppLaunchEndEvent:(id)event
{
  v42 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [(NSMutableArray *)self->_appInFocusStartingEvents copy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v34 = v6;
    v35 = *v38;
    selfCopy = self;
    v33 = eventCopy;
    do
    {
      v10 = 0;
      v36 = v8;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        bundleID = [eventCopy bundleID];
        bundleID2 = [v11 bundleID];
        v14 = [bundleID isEqualToString:bundleID2];

        if (v14)
        {
          stagedEventToAdd = self->_stagedEventToAdd;
          if (stagedEventToAdd)
          {
            lastObject = stagedEventToAdd;
          }

          else
          {
            lastObject = [(NSMutableArray *)self->_mindlessCyclingEventsAccumulator lastObject];
          }

          v17 = lastObject;
          endTime = [(ATXUsageInsightsAppSessionEvent *)lastObject endTime];
          absoluteTimestamp = [v11 absoluteTimestamp];
          absoluteTimestamp2 = [eventCopy absoluteTimestamp];
          [absoluteTimestamp timeIntervalSinceReferenceDate];
          v22 = v21;
          [absoluteTimestamp2 timeIntervalSinceReferenceDate];
          if (v22 <= v23)
          {
            v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];
            [v24 duration];
            if (v25 <= 30.0)
            {
              bundleID3 = [eventCopy bundleID];
              [v11 launchReason];
              v28 = v27 = self;
              [v24 duration];
              v29 = [(ATXMindlessCyclingUsageAccumulator *)v27 eventWithBundleID:bundleID3 launchReason:v28 startTime:absoluteTimestamp endTime:absoluteTimestamp2 duration:?];

              if (endTime && ([absoluteTimestamp timeIntervalSinceDate:endTime], v30 <= 10.0))
              {
                self = selfCopy;
                if (selfCopy->_stagedEventToAdd)
                {
                  [(NSMutableArray *)selfCopy->_mindlessCyclingEventsAccumulator addObject:?];
                  v31 = selfCopy->_stagedEventToAdd;
                  selfCopy->_stagedEventToAdd = 0;
                }

                [(NSMutableArray *)selfCopy->_mindlessCyclingEventsAccumulator addObject:v29];
              }

              else
              {
                self = selfCopy;
                objc_storeStrong(&selfCopy->_stagedEventToAdd, v29);
              }

              eventCopy = v33;
            }

            [(NSMutableArray *)self->_appInFocusStartingEvents removeObject:v11];

            v6 = v34;
          }

          v9 = v35;
          v8 = v36;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }
}

- (id)eventWithBundleID:(id)d launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration
{
  endTimeCopy = endTime;
  timeCopy = time;
  reasonCopy = reason;
  dCopy = d;
  v15 = [ATXSessionTaggingAppEntity genreIdForBundleId:dCopy];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = objc_alloc(MEMORY[0x277CEB8F8]);
  v18 = [MEMORY[0x277CEB8F8] usageInsightsAppLaunchReasonFromBMAppInFocus:reasonCopy];

  v19 = [v17 initWithBundleID:dCopy category:unsignedIntegerValue launchReason:v18 startTime:timeCopy endTime:endTimeCopy duration:duration];

  return v19;
}

- (void)accumulateMindlessCyclingEvents
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v3 = 136315394;
  v4 = "[ATXMindlessCyclingUsageAccumulator accumulateMindlessCyclingEvents]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error with reading app launch stream: %@", &v3, 0x16u);
}

@end