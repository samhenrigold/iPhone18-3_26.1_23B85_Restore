@interface DRAnalytics
- (DRAnalytics)init;
- (void)_queue_addEvent:(id)event;
- (void)_queue_removeEvent:(id)event;
- (void)_queue_submitAllEvents;
- (void)_queue_submitEvent:(id)event;
- (void)addEvent:(id)event;
- (void)submitAllEvents;
@end

@implementation DRAnalytics

- (DRAnalytics)init
{
  v9.receiver = self;
  v9.super_class = DRAnalytics;
  v2 = [(DRAnalytics *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.DeviceRecovery.DRAnalyticsEventQueue", v5);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v6;
  }

  return v2;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000015A4;
  v7[3] = &unk_100034AC0;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)submitAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001688;
  block[3] = &unk_100034AE8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_queue_addEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy)
  {
    eventUUID = [eventCopy eventUUID];

    if (eventUUID)
    {
      goto LABEL_8;
    }

    v8 = sub_1000118BC(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100017E30(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v8 = sub_1000118BC(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100017EA8(v8, v16, v17, v18, v19, v20, v21, v22);
    }
  }

LABEL_8:
  v23 = sub_1000118BC(v7);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136446466;
    v27 = "[DRAnalytics _queue_addEvent:]";
    v28 = 2114;
    v29 = eventCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: ADD_EVENT: Adding CoreAnalytics event to the submission queue: %{public}@", &v26, 0x16u);
  }

  events = self->_events;
  eventUUID2 = [eventCopy eventUUID];
  [(NSMutableDictionary *)events setObject:eventCopy forKey:eventUUID2];
}

- (void)_queue_submitAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  allValues = [(NSMutableDictionary *)self->_events allValues];
  v4 = sub_1000118BC(allValues);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "[DRAnalytics _queue_submitAllEvents]";
    v20 = 2050;
    v21 = [allValues count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: SUBMIT_ALL_EVENTS: Will submit %{public}lu total events to CoreAnalytics", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allValues;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = sub_1000118BC(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          eventName = [v10 eventName];
          *buf = 136446466;
          v19 = "[DRAnalytics _queue_submitAllEvents]";
          v20 = 2114;
          v21 = eventName;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: SUBMIT_ALL_EVENTS: Sending event %{public}@", buf, 0x16u);
        }

        [(DRAnalytics *)self _queue_submitEvent:v10];
        v6 = [(DRAnalytics *)self _queue_removeEvent:v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v6;
    }

    while (v6);
  }
}

- (void)_queue_submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy)
  {
    eventName = [eventCopy eventName];
    v15 = eventCopy;
    AnalyticsSendEventLazy();

    v7 = v15;
  }

  else
  {
    v7 = sub_1000118BC(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100017F20(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)_queue_removeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy)
  {
    eventUUID = [eventCopy eventUUID];

    if (eventUUID)
    {
      goto LABEL_8;
    }

    v8 = sub_1000118BC(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100017F98(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v8 = sub_1000118BC(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100018010(v8, v16, v17, v18, v19, v20, v21, v22);
    }
  }

LABEL_8:
  events = self->_events;
  eventUUID2 = [eventCopy eventUUID];
  v25 = [(NSMutableDictionary *)events objectForKey:eventUUID2];

  v27 = sub_1000118BC(v26);
  eventUUID3 = v27;
  if (v25)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136446466;
      v31 = "[DRAnalytics _queue_removeEvent:]";
      v32 = 2114;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, eventUUID3, OS_LOG_TYPE_DEFAULT, "%{public}s: REMOVE_EVENT: Removed event %{public}@ from queue", &v30, 0x16u);
    }

    v29 = self->_events;
    eventUUID3 = [eventCopy eventUUID];
    [(NSMutableDictionary *)v29 removeObjectForKey:eventUUID3];
  }

  else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_100018088(eventCopy, eventUUID3);
  }
}

@end