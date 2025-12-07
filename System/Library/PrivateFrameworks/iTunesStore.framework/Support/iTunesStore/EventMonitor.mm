@interface EventMonitor
+ (id)sharedEventMonitor;
- (EventMonitor)init;
- (id)monitorEvent:(id)event;
- (void)_cancelPollTimer;
- (void)_fireEventsAfterPollTimer;
- (void)_reloadPollTimer;
- (void)_willRemoveEvent:(id)event;
- (void)dealloc;
- (void)removeEvent:(id)event;
@end

@implementation EventMonitor

- (EventMonitor)init
{
  v4.receiver = self;
  v4.super_class = EventMonitor;
  v2 = [(EventMonitor *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.EventMonitor", 0);
  }

  return v2;
}

- (void)dealloc
{
  [(EventMonitor *)self _cancelPollTimer];
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = EventMonitor;
  [(EventMonitor *)&v3 dealloc];
}

+ (id)sharedEventMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019F70C;
  block[3] = &unk_100327378;
  block[4] = self;
  if (qword_100384000 != -1)
  {
    dispatch_once(&qword_100384000, block);
  }

  return qword_100383FF8;
}

- (id)monitorEvent:(id)event
{
  v4 = [event copy];
  [v4 _setLastOccurrenceCheckTime:CFAbsoluteTimeGetCurrent()];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019F7D0;
  v7[3] = &unk_100327350;
  v7[4] = self;
  v7[5] = v4;
  dispatch_sync(dispatchQueue, v7);
  return v4;
}

- (void)removeEvent:(id)event
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10019F8CC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = event;
  dispatch_sync(dispatchQueue, v4);
}

- (void)_cancelPollTimer
{
  pollTimer = self->_pollTimer;
  if (pollTimer)
  {
    dispatch_source_cancel(pollTimer);
    dispatch_release(self->_pollTimer);
    self->_pollTimer = 0;
  }
}

- (void)_fireEventsAfterPollTimer
{
  v3 = objc_alloc_init(NSMutableArray);
  Current = CFAbsoluteTimeGetCurrent();
  [+[Daemon daemon](Daemon "daemon")];
  v5 = [(NSMutableArray *)self->_events count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      v7 = [(NSMutableArray *)self->_events objectAtIndex:v6 - 2];
      [v7 _lastOccurrenceCheckTime];
      if (vabdd_f64(Current, v8 + [v7 pollInterval]) < 0.5)
      {
        if ([v7 hasOccurred])
        {
          [v3 addObject:v7];
          [(EventMonitor *)self _willRemoveEvent:v7];
          [(NSMutableArray *)self->_events removeObjectAtIndex:v6 - 2];
        }

        else
        {
          [v7 _setLastOccurrenceCheckTime:Current];
        }
      }

      --v6;
    }

    while (v6 > 1);
  }

  if ([v3 count])
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019FB20;
    block[3] = &unk_100327378;
    block[4] = v3;
    dispatch_async(global_queue, block);
  }

  else
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  [(EventMonitor *)self _cancelPollTimer];
  [(EventMonitor *)self _reloadPollTimer];
}

- (void)_reloadPollTimer
{
  if ([(NSMutableArray *)self->_events count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    events = self->_events;
    v4 = [(NSMutableArray *)events countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v35;
      pollInterval = 1.79769313e308;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(events);
          }

          v9 = *(*(&v34 + 1) + 8 * i);
          if (pollInterval >= [v9 pollInterval])
          {
            pollInterval = [v9 pollInterval];
          }
        }

        v5 = [(NSMutableArray *)events countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v5);
    }

    else
    {
      pollInterval = 1.79769313e308;
    }

    v10 = fmax(pollInterval, 10.0);
    if (self->_pollTimer)
    {
      v11 = v10 + self->_lastPollTime;
      Current = CFAbsoluteTimeGetCurrent();
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = v11 - Current;
      shouldLog = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        LODWORD(v16) = shouldLog | 2;
      }

      else
      {
        LODWORD(v16) = shouldLog;
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v16 = v16;
      }

      else
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v18 = objc_opt_class();
        v38 = 138412546;
        v39 = v18;
        v40 = 2048;
        v41 = v14;
        v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%@: Scheduling poll in %.2f seconds", &v38, 22);
        if (v19)
        {
          v20 = v19;
          [NSString stringWithCString:v19 encoding:4];
          free(v20);
          SSFileLog();
        }
      }

      pollTimer = self->_pollTimer;
      v22 = dispatch_time(0, (v14 * 1000000000.0));
      dispatch_source_set_timer(pollTimer, v22, (v10 * 1000000000.0), 0);
    }

    else
    {
      v23 = +[SSLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog2;
      }

      oSLogObject2 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v38 = 138412546;
        v39 = v27;
        v40 = 2048;
        v41 = v10;
        v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 2, "%@: Scheduling poll in %.2f seconds", &v38, 22);
        if (v28)
        {
          v29 = v28;
          [NSString stringWithCString:v28 encoding:4];
          free(v29);
          SSFileLog();
        }
      }

      self->_lastPollTime = CFAbsoluteTimeGetCurrent();
      v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      self->_pollTimer = v30;
      v31 = dispatch_time(0, (v10 * 1000000000.0));
      dispatch_source_set_timer(v30, v31, (v10 * 1000000000.0), 0);
      v32 = self->_pollTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001A002C;
      handler[3] = &unk_100327378;
      handler[4] = self;
      dispatch_source_set_event_handler(v32, handler);
      dispatch_resume(self->_pollTimer);
    }
  }

  else
  {

    [(EventMonitor *)self _cancelPollTimer];
  }
}

- (void)_willRemoveEvent:(id)event
{
  if ([event shouldKeepDaemonAlive])
  {
    v3 = +[Daemon daemon];

    [v3 releaseKeepAliveAssertion:@"EventMonitor"];
  }
}

@end