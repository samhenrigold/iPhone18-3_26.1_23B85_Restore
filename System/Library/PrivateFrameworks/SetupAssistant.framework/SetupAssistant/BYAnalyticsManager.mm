@interface BYAnalyticsManager
- (BOOL)sendStashedEventWithName:(id)name payload:(id)payload;
- (BYAnalyticsManager)init;
- (id)_stashablePayloadForBiomeEvent:(id)event;
- (void)_gatherDataFromProducers;
- (void)_sendAppearanceSetupEventWithData:(id)data dataVersion:(unsigned int)version;
- (void)_sendChildMultitaskingSetupEventWithData:(id)data dataVersion:(unsigned int)version;
- (void)_sendCombinedAnalyticsRepromptCompletedEventIfNecessary;
- (void)_sendCombinedAnalyticsRepromptNecessaryEventWithRTCReporting:(id)reporting;
- (void)addDidProduceLazyEventsBlock:(id)block;
- (void)addEvent:(id)event;
- (void)addEvent:(id)event withPayload:(id)payload persist:(BOOL)persist;
- (void)addEvent:(id)event withPayloadBlock:(id)block persist:(BOOL)persist;
- (void)addPowerLogEvent:(unint64_t)event withPayload:(id)payload;
- (void)commit;
- (void)commitThenUpload;
- (void)prepareForCombinedAnalyticsRepromptWithCompletion:(id)completion;
- (void)removeEventsUsingBlock:(id)block;
- (void)removeNonPersistentEvents;
- (void)reset;
- (void)setCombinedAnalyticsRepromptChoice:(BOOL)choice;
- (void)stash:(id)stash;
@end

@implementation BYAnalyticsManager

- (BYAnalyticsManager)init
{
  v14.receiver = self;
  v14.super_class = BYAnalyticsManager;
  v2 = [(BYAnalyticsManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    events = v2->_events;
    v2->_events = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lazyEvents = v2->_lazyEvents;
    v2->_lazyEvents = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    didProduceLazyEventsBlocks = v2->_didProduceLazyEventsBlocks;
    v2->_didProduceLazyEventsBlocks = v7;

    v9 = [BYPowerLogAnalyticsManager alloc];
    v10 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
    v11 = [(BYPowerLogAnalyticsManager *)v9 initWithPreferences:v10];
    buddyPowerLogManager = v2->_buddyPowerLogManager;
    v2->_buddyPowerLogManager = v11;
  }

  return v2;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  events = [(BYAnalyticsManager *)self events];
  [events addObject:eventCopy];
}

- (void)addPowerLogEvent:(unint64_t)event withPayload:(id)payload
{
  payloadCopy = payload;
  v8 = [[BYPowerLogEvent alloc] initWithType:event andPayload:payloadCopy];

  if (v8)
  {
    buddyPowerLogManager = [(BYAnalyticsManager *)self buddyPowerLogManager];
    [buddyPowerLogManager addEvent:v8];
  }
}

- (void)addEvent:(id)event withPayload:(id)payload persist:(BOOL)persist
{
  v6 = [BYAnalyticsEvent eventWithName:event withPayload:payload persist:persist];
  [(BYAnalyticsManager *)self addEvent:v6];
}

- (void)addEvent:(id)event withPayloadBlock:(id)block persist:(BOOL)persist
{
  persistCopy = persist;
  eventCopy = event;
  v10 = [BYAnalyticsLazyEvent eventWithName:eventCopy withPayloadBlock:block persist:persistCopy];
  lazyEvents = [(BYAnalyticsManager *)self lazyEvents];
  [lazyEvents setObject:v10 forKeyedSubscript:eventCopy];
}

- (void)removeEventsUsingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  events = [(BYAnalyticsManager *)self events];
  v6 = [events countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(events);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        name = [v10 name];
        payload = [v10 payload];
        v13 = blockCopy[2](blockCopy, name, payload);

        if (v13)
        {
          [v15 addObject:v10];
        }
      }

      v7 = [events countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  events2 = [(BYAnalyticsManager *)self events];
  [events2 removeObjectsInArray:v15];
}

- (void)addDidProduceLazyEventsBlock:(id)block
{
  blockCopy = block;
  didProduceLazyEventsBlocks = [(BYAnalyticsManager *)self didProduceLazyEventsBlocks];
  v5 = MEMORY[0x1B8CC28E0](blockCopy);

  [didProduceLazyEventsBlocks addObject:v5];
}

- (void)prepareForCombinedAnalyticsRepromptWithCompletion:(id)completion
{
  v25[6] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rtcReporting = [(BYAnalyticsManager *)selfCopy rtcReporting];

  if (rtcReporting)
  {
    v8 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Analytics reporting configuration already started", buf, 2u);
    }

    completionCopy[2](completionCopy);
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v9 = arc4random();
    v10 = *MEMORY[0x1E69C6AB8];
    v24[0] = *MEMORY[0x1E69C6AB0];
    v24[1] = v10;
    v25[0] = &unk_1F30A7850;
    v25[1] = &unk_1F30A7868;
    v24[2] = *MEMORY[0x1E69C6AD8];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
    v25[2] = v11;
    v12 = *MEMORY[0x1E69C6AC0];
    v24[3] = *MEMORY[0x1E69C6AA0];
    v24[4] = v12;
    v25[3] = MEMORY[0x1E695E110];
    v25[4] = MEMORY[0x1E695E118];
    v24[5] = *MEMORY[0x1E69C6AA8];
    v25[5] = @"com.apple.purplebuddy";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:6];

    v14 = *MEMORY[0x1E69C6AE8];
    v22[0] = *MEMORY[0x1E69C6AE0];
    v22[1] = v14;
    v23[0] = @"Setup";
    v23[1] = @"com.apple.purplebuddy";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v16 = [objc_alloc(MEMORY[0x1E69C6A80]) initWithSessionInfo:v13 userInfo:v15 frameworksToCheck:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__BYAnalyticsManager_prepareForCombinedAnalyticsRepromptWithCompletion___block_invoke;
    v18[3] = &unk_1E7D03D70;
    v18[4] = selfCopy;
    v19 = v16;
    v20 = completionCopy;
    v17 = v16;
    [v17 startConfigurationWithCompletionHandler:v18];

    selfCopy = v13;
  }
}

void __72__BYAnalyticsManager_prepareForCombinedAnalyticsRepromptWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v3 != 0;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Analytics reporting configuration started with success %d", v10, 8u);
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceRTCStartConfigurationSuccess", @"com.apple.purplebuddy", 0);
  if (AppBooleanValue)
  {
    v6 = _BYLoggingFacility(AppBooleanValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Analytics reporting configuration forcing success", v10, 2u);
    }
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = [*(a1 + 32) rtcReporting];
  v9 = v8 == 0;

  if (v9)
  {
    [*(a1 + 32) setRtcReporting:*(a1 + 40)];
    objc_sync_exit(v7);

    [*(a1 + 32) _sendCombinedAnalyticsRepromptNecessaryEventWithRTCReporting:*(a1 + 40)];
  }

  else
  {
    objc_sync_exit(v7);
  }

LABEL_11:
  (*(*(a1 + 48) + 16))();
}

- (void)setCombinedAnalyticsRepromptChoice:(BOOL)choice
{
  choiceCopy = choice;
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:choiceCopy];
  [(BYAnalyticsManager *)obj setCombinedAnalyticsRepromptChoiceNumber:v4];

  objc_sync_exit(obj);
}

- (void)stash:(id)stash
{
  v30 = *MEMORY[0x1E69E9840];
  stashCopy = stash;
  v5 = _BYLoggingFacility([(BYAnalyticsManager *)self _gatherDataFromProducers]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Stashing analytics...", buf, 2u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  events = [(BYAnalyticsManager *)self events];
  v7 = [events countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(events);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        name = [v11 name];
        payload = [v11 payload];
        [stashCopy stashAnalyticEvent:name payload:payload];
      }

      v8 = [events countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  appearanceSetupEvent = [(BYAnalyticsManager *)self appearanceSetupEvent];

  if (appearanceSetupEvent)
  {
    appearanceSetupEvent2 = [(BYAnalyticsManager *)self appearanceSetupEvent];
    v16 = [(BYAnalyticsManager *)self _stashablePayloadForBiomeEvent:appearanceSetupEvent2];

    if (v16)
    {
      [stashCopy stashAnalyticEvent:@"biome.appearanceSetup" payload:v16];
    }

    else
    {
      v18 = _BYLoggingFacility(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [BYAnalyticsManager stash:];
      }
    }
  }

  childMultitaskingSetupEvent = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];

  if (childMultitaskingSetupEvent)
  {
    childMultitaskingSetupEvent2 = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];
    v21 = [(BYAnalyticsManager *)self _stashablePayloadForBiomeEvent:childMultitaskingSetupEvent2];

    if (v21)
    {
      [stashCopy stashAnalyticEvent:@"biome.childMultitaskingSetup" payload:v21];
    }

    else
    {
      v23 = _BYLoggingFacility(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BYAnalyticsManager stash:];
      }
    }
  }
}

- (void)commit
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility([(BYAnalyticsManager *)self _gatherDataFromProducers]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Committing analytics...", buf, 2u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  events = [(BYAnalyticsManager *)self events];
  v5 = [events countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v44;
    *&v6 = 138412546;
    v38 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(events);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = _BYLoggingFacility(v5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          name = [v10 name];
          payload = [v10 payload];
          *buf = v38;
          v49 = name;
          v50 = 2112;
          v51 = payload;
          _os_log_debug_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEBUG, "Sending event %@ with payload: %@", buf, 0x16u);
        }

        name2 = [v10 name];
        payload2 = [v10 payload];
        [(BYAnalyticsManager *)self _sendEvent:name2 payload:payload2];

        ++v9;
      }

      while (v7 != v9);
      v5 = [events countByEnumeratingWithState:&v43 objects:v52 count:16];
      v7 = v5;
    }

    while (v5);
  }

  buddyPowerLogManager = [(BYAnalyticsManager *)self buddyPowerLogManager];
  [buddyPowerLogManager commit];

  appearanceSetupEvent = [(BYAnalyticsManager *)self appearanceSetupEvent];

  if (appearanceSetupEvent)
  {
    v19 = _BYLoggingFacility(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BYAnalyticsManager commit];
    }

    v20 = BiomeLibrary();
    systemSettings = [v20 SystemSettings];
    appearanceSetup = [systemSettings AppearanceSetup];
    source = [appearanceSetup source];
    appearanceSetupEvent2 = [(BYAnalyticsManager *)self appearanceSetupEvent];
    [source sendEvent:appearanceSetupEvent2];
  }

  childMultitaskingSetupEvent = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];

  if (childMultitaskingSetupEvent)
  {
    v27 = _BYLoggingFacility(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [BYAnalyticsManager commit];
    }

    v28 = BiomeLibrary();
    systemSettings2 = [v28 SystemSettings];
    childMultitaskingSetup = [systemSettings2 ChildMultitaskingSetup];
    source2 = [childMultitaskingSetup source];
    childMultitaskingSetupEvent2 = [(BYAnalyticsManager *)self childMultitaskingSetupEvent];
    [source2 sendEvent:childMultitaskingSetupEvent2];
  }

  [(BYAnalyticsManager *)self _sendCombinedAnalyticsRepromptCompletedEventIfNecessary];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  didProduceLazyEventsBlocks = [(BYAnalyticsManager *)self didProduceLazyEventsBlocks];
  v34 = [didProduceLazyEventsBlocks countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v40;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(didProduceLazyEventsBlocks);
        }

        (*(*(*(&v39 + 1) + 8 * i) + 16))();
      }

      v35 = [didProduceLazyEventsBlocks countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v35);
  }
}

- (void)commitThenUpload
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__BYAnalyticsManager_commitThenUpload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _BYLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__BYAnalyticsManager_commitThenUpload__block_invoke_cold_1();
  }
}

- (void)removeNonPersistentEvents
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Removing non-persistent events...", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  events = [(BYAnalyticsManager *)self events];
  v6 = [events countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(events);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if (([v10 persist] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [events countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  events2 = [(BYAnalyticsManager *)self events];
  [events2 removeObjectsInArray:v4];

  lazyEvents = [(BYAnalyticsManager *)self lazyEvents];
  v13 = [lazyEvents copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        lazyEvents2 = [(BYAnalyticsManager *)self lazyEvents];
        v21 = [lazyEvents2 objectForKeyedSubscript:v19];

        if (([v21 persist] & 1) == 0)
        {
          lazyEvents3 = [(BYAnalyticsManager *)self lazyEvents];
          name = [v21 name];
          [lazyEvents3 removeObjectForKey:name];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v16);
  }

  [(BYAnalyticsManager *)self setAppearanceSetupEvent:0];
  [(BYAnalyticsManager *)self setAppearanceSetupEventBlock:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEvent:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEventBlock:0];
}

- (void)reset
{
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting all analytics...", v6, 2u);
  }

  events = [(BYAnalyticsManager *)self events];
  [events removeAllObjects];

  lazyEvents = [(BYAnalyticsManager *)self lazyEvents];
  [lazyEvents removeAllObjects];

  [(BYAnalyticsManager *)self setAppearanceSetupEvent:0];
  [(BYAnalyticsManager *)self setAppearanceSetupEventBlock:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEvent:0];
  [(BYAnalyticsManager *)self setChildMultitaskingSetupEventBlock:0];
}

- (BOOL)sendStashedEventWithName:(id)name payload:(id)payload
{
  nameCopy = name;
  payloadCopy = payload;
  v8 = [nameCopy hasPrefix:@"biome."];
  if (v8)
  {
    v9 = [payloadCopy objectForKeyedSubscript:@"data"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (v9)
      {
        v11 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v12 = _BYLoggingFacility(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsManager sendStashedEventWithName:payload:];
    }

    v11 = 0;
    v9 = 0;
LABEL_9:
    v13 = [payloadCopy objectForKeyedSubscript:@"dataVersion"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();
    if (v14)
    {
      if (v13)
      {
        if (v11)
        {
          if ([nameCopy isEqualToString:@"biome.appearanceSetup"])
          {
            -[BYAnalyticsManager _sendAppearanceSetupEventWithData:dataVersion:](self, "_sendAppearanceSetupEventWithData:dataVersion:", v9, [v13 unsignedIntValue]);
          }

          else
          {
            v17 = [nameCopy isEqualToString:@"biome.childMultitaskingSetup"];
            if (v17)
            {
              -[BYAnalyticsManager _sendChildMultitaskingSetupEventWithData:dataVersion:](self, "_sendChildMultitaskingSetupEventWithData:dataVersion:", v9, [v13 unsignedIntValue]);
            }

            else
            {
              v18 = _BYLoggingFacility(v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                [BYAnalyticsManager sendStashedEventWithName:payload:];
              }
            }
          }
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v15 = _BYLoggingFacility(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsManager sendStashedEventWithName:payload:];
    }

    v13 = 0;
    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

- (void)_gatherDataFromProducers
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Gathering data from event producers...", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  lazyEvents = [(BYAnalyticsManager *)self lazyEvents];
  allKeys = [lazyEvents allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 138412290;
    v24 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        lazyEvents2 = [(BYAnalyticsManager *)self lazyEvents];
        v13 = [lazyEvents2 objectForKeyedSubscript:v11];

        payloadBlock = [v13 payloadBlock];
        v15 = payloadBlock[2]();

        if (v15)
        {
          v17 = [BYAnalyticsEvent eventWithName:v11 withPayload:v15 persist:0];
          [(BYAnalyticsManager *)self addEvent:v17];
        }

        else
        {
          v17 = _BYLoggingFacility(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = v24;
            v30 = v11;
            _os_log_debug_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEBUG, "No payload returned for %@; skipping...", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  appearanceSetupEventBlock = [(BYAnalyticsManager *)self appearanceSetupEventBlock];

  if (appearanceSetupEventBlock)
  {
    appearanceSetupEventBlock2 = [(BYAnalyticsManager *)self appearanceSetupEventBlock];
    v20 = appearanceSetupEventBlock2[2]();
    [(BYAnalyticsManager *)self setAppearanceSetupEvent:v20];
  }

  childMultitaskingSetupEventBlock = [(BYAnalyticsManager *)self childMultitaskingSetupEventBlock];

  if (childMultitaskingSetupEventBlock)
  {
    childMultitaskingSetupEventBlock2 = [(BYAnalyticsManager *)self childMultitaskingSetupEventBlock];
    v23 = childMultitaskingSetupEventBlock2[2]();
    [(BYAnalyticsManager *)self setChildMultitaskingSetupEvent:v23];
  }
}

- (id)_stashablePayloadForBiomeEvent:(id)event
{
  v10[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  serialize = [eventCopy serialize];
  v5 = serialize;
  if (serialize)
  {
    v9[0] = @"data";
    v9[1] = @"dataVersion";
    v10[0] = serialize;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(eventCopy, "dataVersion")}];
    v10[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_sendAppearanceSetupEventWithData:(id)data dataVersion:(unsigned int)version
{
  v4 = [MEMORY[0x1E698EF50] eventWithData:data dataVersion:*&version];
  v5 = v4;
  if (!v4)
  {
    v6 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsManager _sendAppearanceSetupEventWithData:dataVersion:];
    }
  }

  v7 = _BYLoggingFacility(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BYAnalyticsManager commit];
  }

  v8 = BiomeLibrary();
  systemSettings = [v8 SystemSettings];
  appearanceSetup = [systemSettings AppearanceSetup];
  source = [appearanceSetup source];
  [source sendEvent:v5];
}

- (void)_sendChildMultitaskingSetupEventWithData:(id)data dataVersion:(unsigned int)version
{
  v4 = [MEMORY[0x1E698EF58] eventWithData:data dataVersion:*&version];
  v5 = v4;
  if (!v4)
  {
    v6 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsManager _sendChildMultitaskingSetupEventWithData:dataVersion:];
    }
  }

  v7 = _BYLoggingFacility(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BYAnalyticsManager commit];
  }

  v8 = BiomeLibrary();
  systemSettings = [v8 SystemSettings];
  childMultitaskingSetup = [systemSettings ChildMultitaskingSetup];
  source = [childMultitaskingSetup source];
  [source sendEvent:v5];
}

- (void)_sendCombinedAnalyticsRepromptNecessaryEventWithRTCReporting:(id)reporting
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v3 = [reporting sendMessageWithCategory:1 type:1 payload:0 error:&v6];
  v4 = v6;
  v5 = _BYLoggingFacility(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Analytics did send combined analytics reprompt necessary event with success %d error %@", buf, 0x12u);
  }
}

- (void)_sendCombinedAnalyticsRepromptCompletedEventIfNecessary
{
  v17[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rtcReporting = [(BYAnalyticsManager *)selfCopy rtcReporting];
  combinedAnalyticsRepromptChoiceNumber = [(BYAnalyticsManager *)selfCopy combinedAnalyticsRepromptChoiceNumber];
  objc_sync_exit(selfCopy);

  if (rtcReporting && combinedAnalyticsRepromptChoiceNumber)
  {
    v16 = @"enabled";
    v17[0] = combinedAnalyticsRepromptChoiceNumber;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = 0;
    v6 = [rtcReporting sendMessageWithCategory:1 type:2 payload:v5 error:&v9];
    v7 = v9;
    v8 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v11 = combinedAnalyticsRepromptChoiceNumber;
      v12 = 1024;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Analytics did send combined analytics reprompt completed event (choice %@) with success %d error %@", buf, 0x1Cu);
    }
  }
}

- (void)stash:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stash:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__BYAnalyticsManager_commitThenUpload__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendStashedEventWithName:payload:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendStashedEventWithName:payload:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendStashedEventWithName:payload:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sendAppearanceSetupEventWithData:dataVersion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendChildMultitaskingSetupEventWithData:dataVersion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end