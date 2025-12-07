@interface CPAnalyticsAppStateDestination
+ (BOOL)isValidSessionEndEvent:(id)event;
- (CPAnalyticsAppStateDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)_computeSessionData:(id)data;
- (id)_createCountersFromAppEvents:(id)events;
- (id)_createCountersFromConfig:(id)config withKey:(id)key;
- (id)_createCountersFromScreenNames:(id)names;
- (id)_validateAndParseAppEvents:(id)events;
- (id)allStandardProperties;
- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction;
- (void)_resetCounters;
- (void)_sendAppSessionEventFromSourceEvent:(id)event payload:(id)payload;
- (void)_sendDashboardErrorEventIfNeededForEvent:(id)event;
- (void)_sendDashboardMediaEventIfNeededForEvent:(id)event;
- (void)_sendFeatureCounts;
- (void)_updateDependenciesBeforeProcessingEvent:(id)event;
- (void)processEvent:(id)event;
- (void)sendDashboardAppEventForEvent:(id)event;
- (void)sendDashboardErrorEventForEvent:(id)event;
- (void)sendDashboardMediaEventForEvent:(id)event;
- (void)sendDashboardScreenViewEventForEvent:(id)event;
- (void)updateWithConfig:(id)config;
@end

@implementation CPAnalyticsAppStateDestination

- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction
{
  nameCopy = name;
  if ([property isEqualToString:@"cpa_isAppEvent"])
  {
    v8 = MEMORY[0x277CCABB0];
    appEventNames = [(CPAnalyticsAppStateDestination *)self appEventNames];
    v10 = [v8 numberWithBool:{objc_msgSend(appEventNames, "containsObject:", nameCopy)}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allStandardProperties
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = CPAnalyticsAppStateDestination;
  allStandardProperties = [(CPAnalyticsDashboardDestination *)&v6 allStandardProperties];
  v7[0] = @"cpa_common_appSection";
  v7[1] = @"cpa_common_currentScreen";
  v7[2] = @"cpa_common_priorScreen";
  v7[3] = @"cpa_common_numScreensViewed";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [allStandardProperties arrayByAddingObjectsFromArray:v3];

  return v4;
}

- (void)sendDashboardErrorEventForEvent:(id)event
{
  v12[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v11 = @"cpa_event_name";
  name = [eventCopy name];
  v12[0] = name;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  allErrorProperties = [(CPAnalyticsDashboardDestination *)self allErrorProperties];
  if ([(CPAnalyticsDashboardDestination *)self isMediaEvent:eventCopy])
  {
    allMediaProperties = [(CPAnalyticsDashboardDestination *)self allMediaProperties];
    v9 = [allErrorProperties arrayByAddingObjectsFromArray:allMediaProperties];

    allErrorProperties = v9;
  }

  v10 = [(CPAnalyticsDashboardDestination *)self buildCoreAnalyticsEventPayloadWithProperties:allErrorProperties fromSourceEvent:eventCopy intoTargetEventPayload:v6];
  [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.errorEvent" fromSourceEvent:eventCopy payload:v10];
}

- (void)_sendDashboardErrorEventIfNeededForEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy propertyForKey:@"cpa_error"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CPAnalyticsAppStateDestination *)self sendDashboardErrorEventForEvent:eventCopy];
    }

    else
    {
      [(CPAnalyticsDashboardDestination *)self reportMalformedEvent:eventCopy malformationDescriptionWithFormat:@"unexpected class for payload property %@", @"cpa_error"];
    }
  }
}

- (void)sendDashboardMediaEventForEvent:(id)event
{
  v10[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v9 = @"cpa_event_name";
  name = [eventCopy name];
  v10[0] = name;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  allMediaProperties = [(CPAnalyticsDashboardDestination *)self allMediaProperties];
  v8 = [(CPAnalyticsDashboardDestination *)self buildCoreAnalyticsEventPayloadWithProperties:allMediaProperties fromSourceEvent:eventCopy intoTargetEventPayload:v6];

  [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.mediaEvent" fromSourceEvent:eventCopy payload:v8];
  if ([(CPAnalyticsAppStateDestination *)self shouldSendSampleWithRate:30])
  {
    [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.mediaEvent.v2" fromSourceEvent:eventCopy payload:v8];
  }
}

- (void)_sendDashboardMediaEventIfNeededForEvent:(id)event
{
  eventCopy = event;
  if ([(CPAnalyticsDashboardDestination *)self isMediaEvent:?])
  {
    [(CPAnalyticsAppStateDestination *)self sendDashboardMediaEventForEvent:eventCopy];
  }
}

- (void)sendDashboardAppEventForEvent:(id)event
{
  v8[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = @"cpa_event_name";
  name = [eventCopy name];
  v8[0] = name;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.event" fromSourceEvent:eventCopy payload:v6];
  if ([(CPAnalyticsAppStateDestination *)self shouldSendSampleWithRate:30])
  {
    [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.event.v2" fromSourceEvent:eventCopy payload:v6];
  }
}

- (void)sendDashboardScreenViewEventForEvent:(id)event
{
  eventCopy = event;
  copyRawPayload = [eventCopy copyRawPayload];
  [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.screenView" fromSourceEvent:eventCopy payload:copyRawPayload];
  if ([(CPAnalyticsAppStateDestination *)self shouldSendSampleWithRate:30])
  {
    [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.screenView.v2" fromSourceEvent:eventCopy payload:copyRawPayload];
  }
}

- (void)_sendFeatureCounts
{
  v20 = *MEMORY[0x277D85DE8];
  featureCounters = [(CPAnalyticsAppStateDestination *)self featureCounters];
  v4 = [featureCounters count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    featureCounters2 = [(CPAnalyticsAppStateDestination *)self featureCounters];
    v7 = [featureCounters2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(featureCounters2);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          name = [v11 name];
          [v5 setObject:v12 forKey:name];
        }

        v8 = [featureCounters2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    cpAnalyticsInstance = [(CPAnalyticsDashboardDestination *)self cpAnalyticsInstance];
    [cpAnalyticsInstance sendEvent:@"com.apple.photos.CPAnalytics.featureUsageCounts" withPayload:v5];
  }
}

- (void)_sendAppSessionEventFromSourceEvent:(id)event payload:(id)payload
{
  payloadCopy = payload;
  [(CPAnalyticsDashboardDestination *)self sendCoreAnalyticsEventWithStandardPropertiesForEventWithName:@"com.apple.photos.cpa.session" fromSourceEvent:event payload:payloadCopy];
  cpAnalyticsInstance = [(CPAnalyticsDashboardDestination *)self cpAnalyticsInstance];
  [cpAnalyticsInstance sendEvent:@"com.apple.photos.CPAnalytics.appSession" withPayload:payloadCopy];
}

- (id)_computeSessionData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  screenManager = [(CPAnalyticsAppStateDestination *)self screenManager];
  currentScreenViewName = [screenManager currentScreenViewName];
  [v5 setObject:currentScreenViewName forKey:@"cpa_session_exitScreen"];

  v8 = MEMORY[0x277CCABB0];
  screenManager2 = [(CPAnalyticsAppStateDestination *)self screenManager];
  v10 = [v8 numberWithInteger:{objc_msgSend(screenManager2, "screensViewCount")}];
  [v5 setObject:v10 forKey:@"cpa_session_screenViewCount"];

  v11 = MEMORY[0x277CCABB0];
  [dataCopy doubleValue];
  v13 = [v11 numberWithDouble:round(v12 * 100.0) / 100.0];
  [v5 setObject:v13 forKey:@"cpa_session_timeInApp"];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  [v5 setObject:uUIDString forKey:@"cpa_session_id"];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  sessionCounters = [(CPAnalyticsAppStateDestination *)self sessionCounters];
  v17 = [sessionCounters countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(sessionCounters);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
        name = [v21 name];
        [v5 setObject:v22 forKey:name];
      }

      v18 = [sessionCounters countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }

  return v5;
}

- (void)_updateDependenciesBeforeProcessingEvent:(id)event
{
  eventCopy = event;
  screenManager = [(CPAnalyticsAppStateDestination *)self screenManager];
  [screenManager processEvent:eventCopy];
}

- (id)_validateAndParseAppEvents:(id)events
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [events objectForKey:@"appEvents"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 hasPrefix:{@"com.apple.", v12}])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetCounters
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCounters = [(CPAnalyticsAppStateDestination *)self sessionCounters];
  v4 = [sessionCounters copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9++) resetCount];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  featureCounters = [(CPAnalyticsAppStateDestination *)self featureCounters];
  v11 = [featureCounters copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) resetCount];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (id)_createCountersFromScreenNames:(id)names
{
  v31 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = namesCopy;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = @"<!--";
    do
    {
      v9 = 0;
      v20 = v6;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        if (([v10 hasPrefix:v8] & 1) == 0)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"screen_", v10];
          v28 = @"cpa_common_currentScreen";
          v29 = v10;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v13 = [CPAnalyticsEventMatcher eventMatcherWithEventName:@"com.apple.photos.CPAnalytics.screenView" properties:v12];
          v14 = [[CPAnalyticsEventCounter alloc] initWithName:v11 matcher:v13];
          if (v14)
          {
            [v21 addObject:v14];
          }

          else
          {
            v15 = v7;
            v16 = v8;
            v17 = v4;
            v18 = CPAnalyticsLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v27 = v10;
              _os_log_error_impl(&dword_24260A000, v18, OS_LOG_TYPE_ERROR, "Could not create screen counter from screen name: %@", buf, 0xCu);
            }

            v4 = v17;
            v8 = v16;
            v7 = v15;
            v6 = v20;
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  return v21;
}

- (id)_createCountersFromAppEvents:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [[CPAnalyticsEventCounter alloc] initWithEventName:v10];
        if (v11)
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = CPAnalyticsLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v10;
            _os_log_error_impl(&dword_24260A000, v12, OS_LOG_TYPE_ERROR, "Could not create AppEvent counter from event name: %@", buf, 0xCu);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_createCountersFromConfig:(id)config withKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [config objectForKeyedSubscript:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [CPAnalyticsEventCounter alloc];
        v13 = [(CPAnalyticsEventCounter *)v12 initWithConfig:v11, v15];
        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)processEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  [(CPAnalyticsAppStateDestination *)self _updateDependenciesBeforeProcessingEvent:eventCopy];
  name = [eventCopy name];
  v6 = [@"com.apple.photos.CPAnalytics.screenView" isEqualToString:name];

  if (v6)
  {
    [(CPAnalyticsAppStateDestination *)self sendDashboardScreenViewEventForEvent:eventCopy];
  }

  appEventNames = [(CPAnalyticsAppStateDestination *)self appEventNames];
  name2 = [eventCopy name];
  v9 = [appEventNames containsObject:name2];

  if (v9)
  {
    [(CPAnalyticsAppStateDestination *)self sendDashboardAppEventForEvent:eventCopy];
    [(CPAnalyticsAppStateDestination *)self _sendDashboardMediaEventIfNeededForEvent:eventCopy];
    [(CPAnalyticsAppStateDestination *)self _sendDashboardErrorEventIfNeededForEvent:eventCopy];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sessionCounters = [(CPAnalyticsAppStateDestination *)self sessionCounters];
  v11 = [sessionCounters countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(sessionCounters);
        }

        [*(*(&v26 + 1) + 8 * v14++) countEvent:eventCopy];
      }

      while (v12 != v14);
      v12 = [sessionCounters countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  featureCounters = [(CPAnalyticsAppStateDestination *)self featureCounters];
  v16 = [featureCounters countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(featureCounters);
        }

        [*(*(&v22 + 1) + 8 * v19++) countEvent:eventCopy];
      }

      while (v17 != v19);
      v17 = [featureCounters countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  if ([CPAnalyticsAppStateDestination isValidSessionEndEvent:eventCopy])
  {
    v20 = [eventCopy propertyForKey:@"signpostDuration"];
    v21 = [(CPAnalyticsAppStateDestination *)self _computeSessionData:v20];
    [(CPAnalyticsAppStateDestination *)self _sendAppSessionEventFromSourceEvent:eventCopy payload:v21];
    [(CPAnalyticsAppStateDestination *)self _sendFeatureCounts];
    [(CPAnalyticsAppStateDestination *)self _resetCounters];
  }
}

- (void)updateWithConfig:(id)config
{
  v93 = *MEMORY[0x277D85DE8];
  configCopy = config;
  screenManager = [(CPAnalyticsAppStateDestination *)self screenManager];
  [screenManager updateWithConfig:configCopy];

  v6 = [(CPAnalyticsAppStateDestination *)self _validateAndParseAppEvents:configCopy];
  v58 = configCopy;
  v59 = v6;
  selfCopy = self;
  if ([v6 count])
  {
    appEventNames = [(CPAnalyticsAppStateDestination *)self appEventNames];
    selfCopy = [appEventNames copy];

    sessionCounters = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    featureCounters = [(CPAnalyticsAppStateDestination *)self featureCounters];
    v9 = [featureCounters copy];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v84;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v84 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v83 + 1) + 8 * i);
          if ([selfCopy containsObject:{v15, selfCopy}])
          {
            featureCounters3 = CPAnalyticsLog();
            if (os_log_type_enabled(featureCounters3, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v89 = v15;
              _os_log_error_impl(&dword_24260A000, featureCounters3, OS_LOG_TYPE_ERROR, "AppEvent, %@, already exists in AppState whitelist", buf, 0xCu);
            }

            goto LABEL_62;
          }

          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke;
          v82[3] = &unk_278D61908;
          v82[4] = v15;
          v16 = v9;
          if ([v9 indexOfObjectPassingTest:v82] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [[CPAnalyticsEventCounter alloc] initWithEventName:v15];
            if (v17)
            {
              p_super = &v17->super;
              [sessionCounters addObject:v17];
            }

            else
            {
              v19 = CPAnalyticsLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v89 = v15;
                _os_log_error_impl(&dword_24260A000, v19, OS_LOG_TYPE_ERROR, "Could not create AppEvent counter from event name: %@", buf, 0xCu);
              }

              p_super = 0;
            }
          }

          else
          {
            p_super = CPAnalyticsLog();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v89 = v15;
              _os_log_error_impl(&dword_24260A000, p_super, OS_LOG_TYPE_ERROR, "AppEvent Counter, %@, already exists in AppState counters config", buf, 0xCu);
            }
          }

          v9 = v16;
        }

        v12 = [v10 countByEnumeratingWithState:&v83 objects:v92 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v20 = [selfCopy setByAddingObjectsFromSet:v10];
    self = selfCopy;
    appEventNames = selfCopy->_appEventNames;
    selfCopy->_appEventNames = v20;

    v22 = [(NSArray *)selfCopy->_featureCounters arrayByAddingObjectsFromArray:sessionCounters];
    featureCounters = selfCopy->_featureCounters;
    selfCopy->_featureCounters = v22;
  }

  selfCopy = [(CPAnalyticsAppStateDestination *)self _createCountersFromConfig:configCopy withKey:@"counters", selfCopy];
  if ([selfCopy count])
  {
    v24 = configCopy;
    sessionCounters = [(CPAnalyticsAppStateDestination *)self sessionCounters];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v9 = selfCopy;
    v25 = [v9 countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v79;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v79 != v27)
          {
            objc_enumerationMutation(v9);
          }

          name = [*(*(&v78 + 1) + 8 * j) name];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke_49;
          v76[3] = &unk_278D61908;
          v10 = name;
          v77 = v10;
          if ([sessionCounters indexOfObjectPassingTest:v76] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v53 = CPAnalyticsLog();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v89 = v10;
              _os_log_error_impl(&dword_24260A000, v53, OS_LOG_TYPE_ERROR, "Counter, %@, already exists in AppState config", buf, 0xCu);
            }

            featureCounters3 = v77;
            selfCopy = v9;
            v6 = v59;
            configCopy = v24;
            goto LABEL_62;
          }
        }

        v26 = [v9 countByEnumeratingWithState:&v78 objects:v91 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v30 = [sessionCounters arrayByAddingObjectsFromArray:v9];
    self = v57;
    sessionCounters = v57->_sessionCounters;
    v57->_sessionCounters = v30;

    v6 = v59;
    configCopy = v24;
  }

  sessionCounters = [(CPAnalyticsAppStateDestination *)self _createCountersFromConfig:configCopy withKey:@"activeUserFeatures"];
  if ([sessionCounters count])
  {
    featureCounters2 = [(CPAnalyticsAppStateDestination *)self featureCounters];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v33 = sessionCounters;
    v34 = [v33 countByEnumeratingWithState:&v72 objects:v90 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v73;
      while (2)
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v73 != v36)
          {
            objc_enumerationMutation(v33);
          }

          name2 = [*(*(&v72 + 1) + 8 * k) name];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke_50;
          v70[3] = &unk_278D61908;
          featureCounters3 = name2;
          v71 = featureCounters3;
          if ([featureCounters2 indexOfObjectPassingTest:v70] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v54 = CPAnalyticsLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v89 = featureCounters3;
              _os_log_error_impl(&dword_24260A000, v54, OS_LOG_TYPE_ERROR, "Feature, %@, already exists in AppState config", buf, 0xCu);
            }

            v52 = v71;
            configCopy = v58;
            v6 = v59;
            v9 = featureCounters2;
            v10 = v33;
            goto LABEL_61;
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v72 objects:v90 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v40 = CPAnalyticsLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v55 = [v33 count];
      *buf = 67109378;
      *v89 = v55;
      *&v89[4] = 2112;
      *&v89[6] = v33;
      _os_log_debug_impl(&dword_24260A000, v40, OS_LOG_TYPE_DEBUG, "[AppStateDestination] Updated %d featureCounters %@", buf, 0x12u);
    }

    v41 = [featureCounters2 arrayByAddingObjectsFromArray:v33];
    self = v57;
    v42 = v57->_featureCounters;
    v57->_featureCounters = v41;

    configCopy = v58;
    v6 = v59;
  }

  namesOfViewsToTrack = [(CPAnalyticsScreenManager *)self->_screenManager namesOfViewsToTrack];
  v9 = [(CPAnalyticsAppStateDestination *)self _createCountersFromScreenNames:namesOfViewsToTrack];

  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v9 count])
  {
    featureCounters3 = [(CPAnalyticsAppStateDestination *)self featureCounters];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v9;
    v44 = [obj countByEnumeratingWithState:&v66 objects:v87 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v67;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v67 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v66 + 1) + 8 * m);
          name3 = [v48 name];
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke_51;
          v64[3] = &unk_278D61908;
          v50 = name3;
          v65 = v50;
          if ([featureCounters3 indexOfObjectPassingTest:v64]== 0x7FFFFFFFFFFFFFFFLL)
          {
            [v62 addObject:v48];
          }
        }

        v45 = [obj countByEnumeratingWithState:&v66 objects:v87 count:16];
      }

      while (v45);
    }

    v9 = obj;

    v10 = v62;
    v51 = [featureCounters3 arrayByAddingObjectsFromArray:v62];
    configCopy = v58;
    v52 = v57->_featureCounters;
    v57->_featureCounters = v51;
    v6 = v59;
LABEL_61:

LABEL_62:
  }

  else
  {
    v10 = v62;
  }
}

uint64_t __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __51__CPAnalyticsAppStateDestination_updateWithConfig___block_invoke_51(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (CPAnalyticsAppStateDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  configCopy = config;
  instanceCopy = instance;
  v27.receiver = self;
  v27.super_class = CPAnalyticsAppStateDestination;
  v8 = [(CPAnalyticsDashboardDestination *)&v27 initWithConfig:configCopy cpAnalyticsInstance:instanceCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [(CPAnalyticsAppStateDestination *)v8 _createCountersFromConfig:configCopy withKey:@"counters"];
    sessionCounters = v9->_sessionCounters;
    v9->_sessionCounters = v10;

    v12 = [(CPAnalyticsAppStateDestination *)v9 _createCountersFromConfig:configCopy withKey:@"activeUserFeatures"];
    featureCounters = v9->_featureCounters;
    v9->_featureCounters = v12;

    v14 = [(CPAnalyticsAppStateDestination *)v9 _validateAndParseAppEvents:configCopy];
    appEventNames = v9->_appEventNames;
    v9->_appEventNames = v14;

    if ([(NSSet *)v9->_appEventNames count])
    {
      v16 = [(CPAnalyticsAppStateDestination *)v9 _createCountersFromAppEvents:v9->_appEventNames];
      v17 = [(NSArray *)v9->_featureCounters arrayByAddingObjectsFromArray:v16];
      v18 = v9->_featureCounters;
      v9->_featureCounters = v17;
    }

    else
    {
      v16 = v9->_featureCounters;
      v9->_featureCounters = MEMORY[0x277CBEBF8];
    }

    v19 = [[CPAnalyticsScreenManager alloc] initWithConfig:configCopy cpAnalyticsInstance:instanceCopy];
    screenManager = v9->_screenManager;
    v9->_screenManager = v19;

    namesOfViewsToTrack = [(CPAnalyticsScreenManager *)v9->_screenManager namesOfViewsToTrack];
    v22 = [(CPAnalyticsAppStateDestination *)v9 _createCountersFromScreenNames:namesOfViewsToTrack];

    v23 = [(NSArray *)v9->_featureCounters arrayByAddingObjectsFromArray:v22];
    v24 = v9->_featureCounters;
    v9->_featureCounters = v23;

    systemProperties = [instanceCopy systemProperties];
    [(CPAnalyticsAppStateDestination *)v9 registerSystemProperties:systemProperties];
  }

  return v9;
}

+ (BOOL)isValidSessionEndEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  name = [eventCopy name];
  v5 = [@"com.apple.photos.CPAnalytics.signpost.appVisiblePeriod" isEqualToString:name];

  if (v5)
  {
    v6 = [eventCopy propertyForKey:@"className"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [eventCopy propertyForKey:@"signpostDuration"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 1;
LABEL_12:

        goto LABEL_13;
      }

      name3 = CPAnalyticsLog();
      if (os_log_type_enabled(name3, OS_LOG_TYPE_DEBUG))
      {
        name2 = [eventCopy name];
        v12 = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = name2;
        _os_log_debug_impl(&dword_24260A000, name3, OS_LOG_TYPE_DEBUG, "Signpost duration '%@' is not a number for event %@.", &v12, 0x16u);
      }
    }

    else
    {
      v7 = CPAnalyticsLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:
        v8 = 0;
        goto LABEL_12;
      }

      name3 = [eventCopy name];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = name3;
      _os_log_debug_impl(&dword_24260A000, v7, OS_LOG_TYPE_DEBUG, "Class name '%@' is not a string for event %@.", &v12, 0x16u);
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

@end