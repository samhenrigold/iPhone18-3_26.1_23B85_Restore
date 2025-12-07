@interface CALNDefaultTimeToLeaveRefreshMonitor
+ (id)_refreshTimerAlarmNameForEventExternalURL:(id)l;
- (CALNDefaultTimeToLeaveRefreshMonitor)initWithStorage:(id)storage;
- (CALNTimeToLeaveRefreshMonitorDelegate)delegate;
- (void)_refreshTimerFiredForEventExternalURL:(id)l;
- (void)receivedAlarmNamed:(id)named;
- (void)removeRefreshTimerForEventExternalURL:(id)l;
- (void)setUpRefreshTimerWithTriggerDate:(id)date eventExternalURL:(id)l;
@end

@implementation CALNDefaultTimeToLeaveRefreshMonitor

- (CALNDefaultTimeToLeaveRefreshMonitor)initWithStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = CALNDefaultTimeToLeaveRefreshMonitor;
  v6 = [(CALNDefaultTimeToLeaveRefreshMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
  }

  return v7;
}

- (void)receivedAlarmNamed:(id)named
{
  namedCopy = named;
  if (![(CALNDefaultTimeToLeaveRefreshMonitor *)self isActive])
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
    }

    goto LABEL_17;
  }

  if ([namedCopy hasPrefix:@"CalendarNotificationRefreshTimer-"])
  {
    [namedCopy UTF8String];
    v5 = xpc_copy_event();
    v6 = v5;
    if (v5)
    {
      string = xpc_dictionary_get_string(v5, "com.apple.calaccessd.TTLRefreshMonitor.alarm.context.URLString");
      if (string)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        if (v8)
        {
          [(CALNDefaultTimeToLeaveRefreshMonitor *)self _refreshTimerFiredForEventExternalURL:v8];
        }

        else
        {
          v9 = MEMORY[0x245D1CF80](v6);
          v10 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
          }

          free(v9);
        }
      }

      else
      {
        v8 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
        }
      }
    }

    else
    {
      v8 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
      }
    }

LABEL_17:
  }
}

- (void)setUpRefreshTimerWithTriggerDate:(id)date eventExternalURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lCopy = l;
  if ([(CALNDefaultTimeToLeaveRefreshMonitor *)self isRegisteredForAlarms])
  {
    storage = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
    v9 = [storage refreshDateWithIdentifier:lCopy];

    if ([dateCopy isEqualToDate:v9])
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543618;
        v20 = dateCopy;
        v21 = 2114;
        v22 = lCopy;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "A refresh timer with the same trigger date of [%{public}@] has already been set up. Will not set up a new timer. Event external URL: [%{public}@].", &v19, 0x16u);
      }
    }

    else
    {
      v11 = [objc_opt_class() _refreshTimerAlarmNameForEventExternalURL:lCopy];
      uTF8String = [v11 UTF8String];

      [dateCopy timeIntervalSinceNow];
      if (v13 >= 0.0)
      {
        v14 = ((ceil(v13) + time(0)) * 1000000000.0);
        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_date(v10, *MEMORY[0x277CF7888], v14);
        xpc_dictionary_set_string(v10, "com.apple.calaccessd.TTLRefreshMonitor.alarm.context.URLString", [lCopy UTF8String]);
        xpc_set_event();
        v15 = MEMORY[0x245D1CF80](v10);
        v16 = +[CALNLogSubsystem alarmEngine];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315138;
          v20 = v15;
          _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Scheduled XPC alarm event: %s.", &v19, 0xCu);
        }

        free(v15);
        storage2 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
        [storage2 addRefreshDate:dateCopy withIdentifier:lCopy];

        v18 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543874;
          v20 = lCopy;
          v21 = 2114;
          v22 = dateCopy;
          v23 = 2082;
          v24 = uTF8String;
          _os_log_impl(&dword_242909000, v18, OS_LOG_TYPE_DEFAULT, "Set up refresh timer. event external url = %{public}@, trigger date = %{public}@, job name = %{public}s", &v19, 0x20u);
        }
      }

      else
      {
        v10 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CALNDefaultTimeToLeaveRefreshMonitor setUpRefreshTimerWithTriggerDate:eventExternalURL:];
        }
      }
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor setUpRefreshTimerWithTriggerDate:eventExternalURL:];
    }
  }
}

- (void)removeRefreshTimerForEventExternalURL:(id)l
{
  v12 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([(CALNDefaultTimeToLeaveRefreshMonitor *)self isRegisteredForAlarms])
  {
    storage = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
    v6 = [storage refreshDateWithIdentifier:lCopy];

    if (v6)
    {
      v7 = [objc_opt_class() _refreshTimerAlarmNameForEventExternalURL:lCopy];
      [v7 UTF8String];
      xpc_set_event();
      storage2 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
      [storage2 removeRefreshDateWithIdentifier:lCopy];

      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = lCopy;
        _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Removed refresh timer for event with external url = %{public}@", &v10, 0xCu);
      }
    }

    else
    {
      v7 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CALNDefaultTimeToLeaveRefreshMonitor removeRefreshTimerForEventExternalURL:];
      }
    }
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor removeRefreshTimerForEventExternalURL:];
    }
  }
}

- (void)_refreshTimerFiredForEventExternalURL:(id)l
{
  v11 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = lCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Refresh timer fired for event external url = %{public}@", &v9, 0xCu);
  }

  delegate = [(CALNDefaultTimeToLeaveRefreshMonitor *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate timeToLeaveRefreshMonitor:self refreshTimerFiredForEventExternalURL:lCopy];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor _refreshTimerFiredForEventExternalURL:];
    }
  }
}

+ (id)_refreshTimerAlarmNameForEventExternalURL:(id)l
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(l, "hash")}];
  stringValue = [v3 stringValue];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-[%@]", @"CalendarNotificationRefreshTimer-", stringValue];

  return v5;
}

- (CALNTimeToLeaveRefreshMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receivedAlarmNamed:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)receivedAlarmNamed:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setUpRefreshTimerWithTriggerDate:eventExternalURL:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_242909000, v1, OS_LOG_TYPE_FAULT, "Time to leave refresh monitor is not registered for alarms. Cannot set up refresh timer for event, event external url = %{public}@, refresh date = %{public}@", v2, 0x16u);
}

- (void)setUpRefreshTimerWithTriggerDate:eventExternalURL:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Ignoring attempt to set refresh timer for [%{public}@] that would fire in the past [%{public}@].", v2, 0x16u);
}

- (void)removeRefreshTimerForEventExternalURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_242909000, v0, OS_LOG_TYPE_FAULT, "Time to leave refresh monitor is not registered for alarms. Cannot remove refresh timer for event, event external url = %{public}@", v1, 0xCu);
}

- (void)removeRefreshTimerForEventExternalURL:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_refreshTimerFiredForEventExternalURL:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end