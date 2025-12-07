@interface BDSNotificationConnection
+ (BOOL)isWithinConnectionDateRange;
- (BDSNotificationConnection)init;
- (void)didAcceptConnection:(id)connection;
- (void)handleNotification:(id)notification;
- (void)startListeningForNotifications;
@end

@implementation BDSNotificationConnection

+ (BOOL)isWithinConnectionDateRange
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"BookDataStore.ConnectionDate"];

  if (!v3)
  {
    v3 = +[NSDate date];
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setObject:v3 forKey:@"BookDataStore.ConnectionDate"];
  }

  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [v3 timeIntervalSinceReferenceDate];
  v9 = v7 - v8;

  v11 = sub_100002660(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C20FC(v9 < 1209600.0, v11, v12, v13, v14, v15, v16, v17);
  }

  return v9 < 1209600.0;
}

- (BDSNotificationConnection)init
{
  v26.receiver = self;
  v26.super_class = BDSNotificationConnection;
  v2 = [(BDSNotificationConnection *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    v4 = +[BCCloudKitController sharedInstance];
    configuration = [v4 configuration];
    [v3 addObject:configuration];

    v6 = +[BCCloudKitController secureSharedInstance];
    configuration2 = [v6 configuration];
    [v3 addObject:configuration2];

    v8 = [[_BDSNotificationConnectionListener alloc] initWithContainerConfigurations:v3 delegate:v2];
    listener = v2->_listener;
    v2->_listener = v8;

    v2->_unfairLock._os_unfair_lock_opaque = 0;
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 objectForKey:@"BookDataStore.ConnectionDate"];
    p_lastConnectionDate = &v2->_lastConnectionDate;
    lastConnectionDate = v2->_lastConnectionDate;
    v2->_lastConnectionDate = v11;

    if (!v2->_lastConnectionDate)
    {
      v15 = +[NSDate date];
      v16 = *p_lastConnectionDate;
      *p_lastConnectionDate = v15;

      v17 = +[NSUserDefaults standardUserDefaults];
      [v17 setObject:*p_lastConnectionDate forKey:@"BookDataStore.ConnectionDate"];
    }

    v18 = sub_100002660(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C2180(&v2->_lastConnectionDate, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return v2;
}

- (void)startListeningForNotifications
{
  listener = [(BDSNotificationConnection *)self listener];
  [listener startListeningForNotifications];
}

- (void)didAcceptConnection:(id)connection
{
  os_unfair_lock_lock(&self->_unfairLock);
  v4 = +[NSDate date];
  [(BDSNotificationConnection *)self setLastConnectionDate:v4];

  v5 = +[NSUserDefaults standardUserDefaults];
  lastConnectionDate = [(BDSNotificationConnection *)self lastConnectionDate];
  [v5 setObject:lastConnectionDate forKey:@"BookDataStore.ConnectionDate"];

  v8 = sub_100002660(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C21F0(self, v8, v9, v10, v11, v12, v13, v14);
  }

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  lastConnectionDate = [(BDSNotificationConnection *)self lastConnectionDate];
  [lastConnectionDate timeIntervalSinceReferenceDate];
  v10 = v7 - v9;

  os_unfair_lock_unlock(&self->_unfairLock);
  v12 = sub_100002660(v11);
  v13 = v12;
  if (v10 >= 1209600.0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Ignoring cloud notifications - Application has not been launched recently.", v14, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C2260(v13);
    }

    v13 = [BCCloudKitController instanceForCKNotification:notificationCopy];
    [v13 handleRemoteCKNotification:notificationCopy];
  }
}

@end