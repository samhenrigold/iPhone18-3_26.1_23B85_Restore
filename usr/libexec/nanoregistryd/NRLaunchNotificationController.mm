@interface NRLaunchNotificationController
- (id)prefs;
- (void)_setLaunchEvent:(id)event enable:(BOOL)enable;
- (void)setLaunchEvent:(id)event enable:(BOOL)enable;
@end

@implementation NRLaunchNotificationController

- (id)prefs
{
  if (qword_1001B3778 != -1)
  {
    sub_1000FDE5C();
  }

  v3 = qword_1001B3770;

  return v3;
}

- (void)setLaunchEvent:(id)event enable:(BOOL)enable
{
  enableCopy = enable;
  eventCopy = event;
  v7 = [eventCopy stringByAppendingString:@".enabled"];
  prefs = [(NRLaunchNotificationController *)self prefs];
  v9 = [prefs objectForKeyedSubscript:v7];

  integerValue = [v9 integerValue];
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = v7;
      v26 = 1024;
      LODWORD(v27) = integerValue;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NRLaunchNotificationController: notification %{public}@ prefs value: %d", &v24, 0x12u);
    }
  }

  if (integerValue - 1 > 1)
  {

    if (integerValue)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (integerValue - 1 == enableCopy)
    {
      goto LABEL_19;
    }
  }

  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"disabling";
      if (enableCopy)
      {
        v17 = @"enabling";
      }

      v24 = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = eventCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NRLaunchNotificationController: %@ %@ launch notifications", &v24, 0x16u);
    }
  }

  prefs2 = [(NRLaunchNotificationController *)self prefs];
  [prefs2 setObject:&off_100186B80 forKeyedSubscript:v7];

  prefs3 = [(NRLaunchNotificationController *)self prefs];
  [prefs3 synchronize];

  [(NRLaunchNotificationController *)self _setLaunchEvent:eventCopy enable:enableCopy];
  if (enableCopy)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = [NSNumber numberWithInt:v20];
  prefs4 = [(NRLaunchNotificationController *)self prefs];
  [prefs4 setObject:v21 forKeyedSubscript:v7];

  prefs5 = [(NRLaunchNotificationController *)self prefs];
  [prefs5 synchronize];

LABEL_19:
}

- (void)_setLaunchEvent:(id)event enable:(BOOL)enable
{
  enableCopy = enable;
  eventCopy = event;
  if (enableCopy)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "Notification", [eventCopy UTF8String]);
  }

  else
  {
    v6 = 0;
  }

  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"disabling";
      if (enableCopy)
      {
        v10 = @"enabling";
      }

      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = eventCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NRLaunchNotificationController: %@ launch notification %@", &v11, 0x16u);
    }
  }

  [eventCopy UTF8String];
  xpc_set_event();
}

@end