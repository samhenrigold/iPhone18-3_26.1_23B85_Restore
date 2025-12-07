@interface MADAnalyticsEventSubmitter
- (MADAnalyticsEventSubmitter)init;
- (void)_queue_registerSendEvent:(id)event;
- (void)_queue_removeAllEvents;
- (void)_queue_removeEvent:(id)event;
- (void)_queue_removeEventsWithName:(id)name;
- (void)_queue_setEvent:(id)event;
- (void)_queue_submitAllEvents;
- (void)_queue_submitEvent:(id)event;
- (void)setEvent:(id)event;
- (void)submitAllEvents;
- (void)submitEvent:(id)event;
@end

@implementation MADAnalyticsEventSubmitter

- (MADAnalyticsEventSubmitter)init
{
  v9.receiver = self;
  v9.super_class = MADAnalyticsEventSubmitter;
  v2 = [(MADAnalyticsEventSubmitter *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.mobileassetd.MADAnalyticsEventSubmitterQueue", v5);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v6;
  }

  return v2;
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__MADAnalyticsEventSubmitter_setEvent___block_invoke;
  v7[3] = &unk_4B2B18;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __39__MADAnalyticsEventSubmitter_setEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);

    [v3 _queue_setEvent:?];
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "SET_EVENT: Nil event passed to setEvent", v5, 2u);
    }
  }
}

- (void)submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __42__MADAnalyticsEventSubmitter_submitEvent___block_invoke;
  v7[3] = &unk_4B2B18;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __42__MADAnalyticsEventSubmitter_submitEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([v2 eventUUID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v4 _queue_submitEvent:v5];
  }

  else
  {
    v6 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "SUBMIT_EVENT: Nil/invalid event passed to submit", v7, 2u);
    }
  }
}

- (void)submitAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__MADAnalyticsEventSubmitter_submitAllEvents__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_queue_setEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (_MAPreferencesIsVerboseLoggingEnabled(v6, v7))
    {
      v8 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = eventCopy;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "SET_EVENT: Adding CoreAnalytics event to submission queue: %{public}@", &v11, 0xCu);
      }
    }

    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    [(NSMutableDictionary *)events setSafeObject:eventCopy forKey:eventUUID];
  }

  else
  {
    eventUUID = _MADLog(@"Analytics");
    if (os_log_type_enabled(eventUUID, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, eventUUID, OS_LOG_TYPE_ERROR, "SET_EVENT: Nil event passed to setEvent", &v11, 2u);
    }
  }
}

- (void)_queue_removeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    v8 = [(NSMutableDictionary *)events objectForKey:eventUUID];

    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled(v9, v10);
    if (v8)
    {
      if (IsVerboseLoggingEnabled)
      {
        v12 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = eventCopy;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Successfully removed event %{public}@ from queue", &v15, 0xCu);
        }
      }

      v13 = self->_events;
      eventUUID2 = [v8 eventUUID];
      [(NSMutableDictionary *)v13 removeObjectForKey:eventUUID2];
    }

    else
    {
      if (!IsVerboseLoggingEnabled)
      {
        goto LABEL_12;
      }

      eventUUID2 = _MADLog(@"Analytics");
      if (os_log_type_enabled(eventUUID2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = eventCopy;
        _os_log_impl(&dword_0, eventUUID2, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Event %{public}@ does not exist. Nothing to do", &v15, 0xCu);
      }
    }
  }

  else
  {
    v8 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "REMOVE_EVENT: Nil event name passed to removeEvent", &v15, 2u);
    }
  }

LABEL_12:
}

- (void)_queue_removeEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (nameCopy)
  {
    allValues = [(NSMutableDictionary *)self->_events allValues];
    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled(allValues, v6);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = allValues;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v22;
      *&v10 = 138543362;
      v20 = v10;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          eventName = [v14 eventName];
          v16 = [eventName isEqualToString:nameCopy];

          if (v16)
          {
            if (IsVerboseLoggingEnabled)
            {
              v17 = _MADLog(@"Analytics");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v20;
                v26 = v14;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENTS_WITH_NAME: Removing %{public}@", buf, 0xCu);
              }
            }

            events = self->_events;
            eventUUID = [v14 eventUUID];
            [(NSMutableDictionary *)events removeObjectForKey:eventUUID];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "REMOVE_EVENTS_WITH_NAME: Nil event name passed to removeEvent", buf, 2u);
    }
  }
}

- (void)_queue_removeAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "REMOVE_ALL_EVENTS: Removing all events from submission queue", v4, 2u);
  }

  [(NSMutableDictionary *)self->_events removeAllObjects];
}

- (void)_queue_submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    v8 = [(NSMutableDictionary *)events objectForKey:eventUUID];

    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled(v9, v10);
    if (v8)
    {
      if (IsVerboseLoggingEnabled)
      {
        v12 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = v8;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "SUBMIT: Found event %{public}@. Sending", &v14, 0xCu);
        }
      }

      [(MADAnalyticsEventSubmitter *)self _queue_registerSendEvent:v8];
      [(MADAnalyticsEventSubmitter *)self _queue_removeEvent:v8];
    }

    else if (IsVerboseLoggingEnabled)
    {
      v13 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = eventCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "SUBMIT: No event found matching %{public}@. Skipping", &v14, 0xCu);
      }
    }
  }

  else
  {
    v8 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "SUBMIT: nil event/uuid passed to submit", &v14, 2u);
    }
  }
}

- (void)_queue_submitAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  allValues = [(NSMutableDictionary *)self->_events allValues];
  v4 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [allValues count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENTS: Will submit %lu total events", buf, 0xCu);
  }

  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled(v5, v6);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = allValues;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    *&v9 = 138543362;
    v17 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        if (IsVerboseLoggingEnabled)
        {
          v15 = _MADLog(@"Analytics");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            eventName = [v13 eventName];
            *buf = v17;
            v25 = eventName;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENT: Sending event %{public}@", buf, 0xCu);
          }
        }

        [(MADAnalyticsEventSubmitter *)self _queue_registerSendEvent:v13, v17];
        [(MADAnalyticsEventSubmitter *)self _queue_removeEvent:v13];
        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

- (void)_queue_registerSendEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!eventCopy)
  {
    v10 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v11 = "[CoreAnalytics] SUBMIT: NO -- Unable to register sending null CoreAnalytics event. ";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 2;
LABEL_12:
    _os_log_impl(&dword_0, v12, v13, v11, buf, v14);
    goto LABEL_13;
  }

  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled(v5, v6);
  if (!&_AnalyticsSendEventLazy)
  {
    v10 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v17 = eventCopy;
    v11 = "[CoreAnalytics] SUBMIT: NO -- Unable to invoke CoreAnalytics on this OS for event %{public}@";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 12;
    goto LABEL_12;
  }

  if (IsVerboseLoggingEnabled)
  {
    v8 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = eventCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: Calling SendEventLazy for %{public}@", buf, 0xCu);
    }
  }

  eventName = [eventCopy eventName];
  v15 = eventCopy;
  AnalyticsSendEventLazy();

  v10 = v15;
LABEL_13:
}

id __55__MADAnalyticsEventSubmitter__queue_registerSendEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: YES -- Submitting CoreAnalytics event: %{public}@", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) eventPayload];

  return v4;
}

@end