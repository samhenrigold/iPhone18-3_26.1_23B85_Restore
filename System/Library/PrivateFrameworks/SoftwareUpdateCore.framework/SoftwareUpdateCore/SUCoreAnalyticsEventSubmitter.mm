@interface SUCoreAnalyticsEventSubmitter
- (BOOL)_queue_registerSendEvent:(id)event;
- (BOOL)_queue_submitAllEvents;
- (BOOL)_queue_submitEvent:(id)event;
- (BOOL)_queue_submitEventsWithName:(id)name;
- (BOOL)submitAllEvents;
- (BOOL)submitEvent:(id)event;
- (BOOL)submitEventsWithName:(id)name;
- (NSDictionary)events;
- (SUCoreAnalyticsEventSubmitter)init;
- (void)_queue_removeAllEvents;
- (void)_queue_removeEvent:(id)event;
- (void)_queue_removeEventsWithName:(id)name;
- (void)_queue_setEvent:(id)event;
- (void)removeAllEvents;
- (void)removeEvent:(id)event;
- (void)removeEventsWithName:(id)name;
- (void)setEvent:(id)event;
@end

@implementation SUCoreAnalyticsEventSubmitter

- (SUCoreAnalyticsEventSubmitter)init
{
  v11.receiver = self;
  v11.super_class = SUCoreAnalyticsEventSubmitter;
  v2 = [(SUCoreAnalyticsEventSubmitter *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.SUCore.SUCoreAnalyticsEventSubmitterQueue", v5);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUCoreAnalyticsEventSubmitter"];
    eventSubmitterLogger = v2->_eventSubmitterLogger;
    v2->_eventSubmitterLogger = v8;
  }

  return v2;
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _queue_setEvent:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke_cold_1();
    }
  }
}

- (void)removeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _queue_removeEvent:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke_cold_1();
    }
  }
}

- (void)removeEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUCoreAnalyticsEventSubmitter_removeEventsWithName___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = nameCopy;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_sync(stateQueue, v7);
}

void __54__SUCoreAnalyticsEventSubmitter_removeEventsWithName___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _queue_removeEventsWithName:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke_cold_1();
    }
  }
}

- (void)removeAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUCoreAnalyticsEventSubmitter_removeAllEvents__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (BOOL)submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUCoreAnalyticsEventSubmitter_submitEvent___block_invoke;
  block[3] = &unk_27892D520;
  v9 = eventCopy;
  selfCopy = self;
  v11 = &v12;
  v6 = eventCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(eventCopy) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return eventCopy;
}

void __45__SUCoreAnalyticsEventSubmitter_submitEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([v2 eventUUID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _queue_submitEvent:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 40) eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_submitEvent___block_invoke_cold_1();
    }
  }
}

- (BOOL)submitEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUCoreAnalyticsEventSubmitter_submitEventsWithName___block_invoke;
  block[3] = &unk_27892D520;
  v9 = nameCopy;
  selfCopy = self;
  v11 = &v12;
  v6 = nameCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(nameCopy) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return nameCopy;
}

void __54__SUCoreAnalyticsEventSubmitter_submitEventsWithName___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    *(*(a1[6] + 8) + 24) = [v2 _queue_submitEventsWithName:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__SUCoreAnalyticsEventSubmitter_submitEventsWithName___block_invoke_cold_1();
    }
  }
}

- (BOOL)submitAllEvents
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = selfCopy->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUCoreAnalyticsEventSubmitter_submitAllEvents__block_invoke;
  v5[3] = &unk_27892C8D0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__48__SUCoreAnalyticsEventSubmitter_submitAllEvents__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_submitAllEvents];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSDictionary)events
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SUCoreAnalyticsEventSubmitter_events__block_invoke;
  v6[3] = &unk_27892C8D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__SUCoreAnalyticsEventSubmitter_events__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 8)];

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_setEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    oslog = [eventSubmitterLogger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = eventCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SET_EVENT: Adding CoreAnalytics event to submission queue: %{public}@", &v11, 0xCu);
    }

    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    [(NSMutableDictionary *)events setSafeObject:eventCopy forKey:eventUUID];
  }

  else
  {
    eventSubmitterLogger2 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    eventUUID = [eventSubmitterLogger2 oslog];

    if (os_log_type_enabled(eventUUID, OS_LOG_TYPE_ERROR))
    {
      __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke_cold_1();
    }
  }
}

- (void)_queue_removeEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    oslog2 = [(NSMutableDictionary *)events objectForKey:eventUUID];

    eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    oslog = [eventSubmitterLogger oslog];

    v11 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (oslog2)
    {
      if (v11)
      {
        v14 = 138543362;
        v15 = eventCopy;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Successfully removed event %{public}@ from queue", &v14, 0xCu);
      }

      v12 = self->_events;
      oslog = [oslog2 eventUUID];
      [(NSMutableDictionary *)v12 removeObjectForKey:oslog];
    }

    else if (v11)
    {
      v14 = 138543362;
      v15 = eventCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Event %{public}@ does not exist. Nothing to do", &v14, 0xCu);
    }
  }

  else
  {
    eventSubmitterLogger2 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    oslog2 = [eventSubmitterLogger2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke_cold_1();
    }
  }
}

- (void)_queue_removeEventsWithName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (nameCopy)
  {
    allValues = [(NSMutableDictionary *)self->_events allValues];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v21;
      *&v7 = 138543362;
      v19 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          eventName = [v11 eventName];
          v13 = [eventName isEqualToString:nameCopy];

          if (v13)
          {
            eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
            oslog = [eventSubmitterLogger oslog];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v25 = v11;
              _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENTS_WITH_NAME: Removing %{public}@", buf, 0xCu);
            }

            events = self->_events;
            eventUUID = [v11 eventUUID];
            [(NSMutableDictionary *)events removeObjectForKey:eventUUID];
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }
  }

  else
  {
    eventSubmitterLogger2 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    allValues = [eventSubmitterLogger2 oslog];

    if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_removeEventsWithName:];
    }
  }
}

- (void)_queue_removeAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  oslog = [eventSubmitterLogger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "REMOVE_ALL_EVENTS: Removing all events from submission queue", v5, 2u);
  }

  [(NSMutableDictionary *)self->_events removeAllObjects];
}

- (BOOL)_queue_submitEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!eventCopy || ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    oslog = [eventSubmitterLogger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_submitEvent:];
    }

    goto LABEL_16;
  }

  events = self->_events;
  eventUUID = [eventCopy eventUUID];
  oslog = [(NSMutableDictionary *)events objectForKey:eventUUID];

  eventSubmitterLogger2 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  oslog2 = [eventSubmitterLogger2 oslog];

  v11 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (!oslog)
  {
    if (v11)
    {
      v17 = 138543362;
      v18 = eventCopy;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "SUBMIT: No event found matching %{public}@. Skipping", &v17, 0xCu);
    }

    goto LABEL_16;
  }

  if (v11)
  {
    v17 = 138543362;
    v18 = oslog;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "SUBMIT: Found event %{public}@. Sending", &v17, 0xCu);
  }

  if (![(SUCoreAnalyticsEventSubmitter *)self _queue_registerSendEvent:oslog])
  {
    eventSubmitterLogger3 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    oslog3 = [eventSubmitterLogger3 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreAnalyticsEventSubmitter *)eventCopy _queue_submitEvent:oslog3];
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  [(SUCoreAnalyticsEventSubmitter *)self _queue_removeEvent:oslog];
  v12 = 1;
LABEL_17:

  return v12;
}

- (BOOL)_queue_submitEventsWithName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (nameCopy)
  {
    allValues = [(NSMutableDictionary *)self->_events allValues];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v23;
      v10 = 1;
      *&v7 = 138543362;
      v21 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          eventName = [v12 eventName];
          v14 = [eventName isEqualToString:nameCopy];

          if (v14)
          {
            eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
            oslog = [eventSubmitterLogger oslog];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v27 = v12;
              _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "SUBMIT_EVENTS_WITH_NAME: Submitting %{public}@", buf, 0xCu);
            }

            if ([(SUCoreAnalyticsEventSubmitter *)self _queue_registerSendEvent:v12])
            {
              [(SUCoreAnalyticsEventSubmitter *)self _queue_removeEvent:v12];
            }

            else
            {
              eventSubmitterLogger2 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
              oslog2 = [eventSubmitterLogger2 oslog];

              if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v27 = v12;
                _os_log_error_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_ERROR, "SUBMIT_EVENTS_WITH_NAME: Failed to send event: %{public}@", buf, 0xCu);
              }

              v10 = 0;
            }
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    eventSubmitterLogger3 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    allValues = [eventSubmitterLogger3 oslog];

    if (os_log_type_enabled(allValues, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_submitEventsWithName:];
    }

    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_queue_submitAllEvents
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  allValues = [(NSMutableDictionary *)self->_events allValues];
  eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  oslog = [eventSubmitterLogger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v27 = [allValues count];
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENTS: Will submit %{public}lu total events", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    v11 = 1;
    *&v8 = 138543362;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger:v20];
        oslog2 = [v14 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          eventName = [v13 eventName];
          *buf = v20;
          v27 = eventName;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENT: Sending event %{public}@", buf, 0xCu);
        }

        if ([(SUCoreAnalyticsEventSubmitter *)self _queue_registerSendEvent:v13])
        {
          [(SUCoreAnalyticsEventSubmitter *)self _queue_removeEvent:v13];
        }

        else
        {
          eventSubmitterLogger2 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
          oslog3 = [eventSubmitterLogger2 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = v13;
            _os_log_error_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_ERROR, "[CoreAnalytics]: SUBMIT_ALL_EVENT: Failed to send event: %{public}@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)_queue_registerSendEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  eventSubmitterLogger = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  oslog = [eventSubmitterLogger oslog];

  if (eventCopy)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = eventCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: Calling SendEventLazy for %{public}@", buf, 0xCu);
    }

    eventName = [eventCopy eventName];
    v10 = eventCopy;
    v8 = AnalyticsSendEventLazy();
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_registerSendEvent:];
    }

    v8 = 0;
  }

  return v8;
}

id __58__SUCoreAnalyticsEventSubmitter__queue_registerSendEvent___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventSubmitterLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: Submitting CoreAnalytics event: %{public}@", &v7, 0xCu);
  }

  v5 = [*(a1 + 40) eventPayload];

  return v5;
}

- (void)_queue_submitEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "SUBMIT: failed to send event: %{public}@", &v2, 0xCu);
}

@end