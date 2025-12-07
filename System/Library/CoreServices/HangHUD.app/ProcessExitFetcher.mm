@interface ProcessExitFetcher
+ (id)sharedInstance;
- (ProcessExitFetcher)initWithMonitorID:(id)d fetchIntervalMs:(double)ms;
- (id)extractProcessNameToDisplayFromBundleID:(id)d;
- (id)getProcessExitRecordFetchQueue;
- (id)processNameToDisplayForBundleID:(id)d;
- (void)fetchProcessExitInfo;
- (void)kickOffFetchTimer;
- (void)stopFetchTimer;
@end

@implementation ProcessExitFetcher

+ (id)sharedInstance
{
  if (qword_10003E7D8 != -1)
  {
    sub_100019E5C();
  }

  v3 = qword_10003E7D0;

  return v3;
}

- (ProcessExitFetcher)initWithMonitorID:(id)d fetchIntervalMs:(double)ms
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = ProcessExitFetcher;
  v8 = [(ProcessExitFetcher *)&v19 init];
  v9 = v8;
  if (v8)
  {
    processExitHandler = v8->_processExitHandler;
    v8->_processExitHandler = 0;

    v11 = objc_alloc_init(NSMutableArray);
    processExitRecords = v9->_processExitRecords;
    v9->_processExitRecords = v11;

    objc_storeStrong(&v9->_launchServiceMonitorID, d);
    v9->_launchServiceMaxRecordCount = 128;
    v9->_fetchIntervalMs = ms;
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.HangHUD.procExitfetchTimer", v13);
    timerQueue = v9->_timerQueue;
    v9->_timerQueue = v14;

    v16 = objc_alloc_init(NSCache);
    bundleIdToProcessNameCache = v9->_bundleIdToProcessNameCache;
    v9->_bundleIdToProcessNameCache = v16;

    [(NSCache *)v9->_bundleIdToProcessNameCache setCountLimit:100];
  }

  return v9;
}

- (id)getProcessExitRecordFetchQueue
{
  if (qword_10003E7E8 != -1)
  {
    sub_100019E70();
  }

  v3 = qword_10003E7E0;

  return v3;
}

- (void)fetchProcessExitInfo
{
  mach_absolute_time();
  [(NSString *)self->_launchServiceMonitorID UTF8String];
  v3 = _launch_service_stats_copy_impl();
  v4 = mach_absolute_time();
  if (v3)
  {
    v5 = sub_10000A9AC(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = strerror(v3);
      sub_100018560(v6, buf, v3, v5);
    }
  }

  else
  {
    [(NSMutableArray *)self->_processExitRecords removeAllObjects];
    v5 = objc_alloc_init(NSMutableDictionary);
  }
}

- (id)processNameToDisplayForBundleID:(id)d
{
  dCopy = d;
  v5 = [(NSCache *)self->_bundleIdToProcessNameCache objectForKey:dCopy];
  if (!v5)
  {
    v11 = 0;
    v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v11];
    v7 = v11;
    if (v7)
    {
      v5 = [(ProcessExitFetcher *)self extractProcessNameToDisplayFromBundleID:dCopy];
    }

    else
    {
      v8 = +[HUDConfiguration sharedInstance];
      thirdPartyDevPreferredLanguages = [v8 thirdPartyDevPreferredLanguages];

      if ([thirdPartyDevPreferredLanguages count])
      {
        [v6 localizedNameWithPreferredLocalizations:thirdPartyDevPreferredLanguages];
      }

      else
      {
        [v6 localizedName];
      }
      v5 = ;
    }

    [(NSCache *)self->_bundleIdToProcessNameCache setObject:v5 forKey:dCopy];
  }

  return v5;
}

- (id)extractProcessNameToDisplayFromBundleID:(id)d
{
  v3 = [d componentsSeparatedByString:@"."];
  v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
  v5 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"[({<");
  v6 = [v4 rangeOfCharacterFromSet:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 substringToIndex:v6];

    v4 = v7;
  }

  return v4;
}

- (void)kickOffFetchTimer
{
  if (!self->_fetchTimer)
  {
    handler[9] = v2;
    handler[10] = v3;
    [(NSString *)self->_launchServiceMonitorID UTF8String];
    v5 = launch_service_stats_enable();
    v6 = sub_10000A9AC(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100019FB0();
    }

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_timerQueue);
    fetchTimer = self->_fetchTimer;
    self->_fetchTimer = v7;

    v9 = dispatch_time(0, 0);
    dispatch_source_set_timer(self->_fetchTimer, v9, (self->_fetchIntervalMs * 1000000.0), (self->_fetchIntervalMs * 1000000.0) / 0xA);
    v10 = self->_fetchTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100011248;
    handler[3] = &unk_100030668;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    v12 = sub_10000A9AC(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A03C();
    }

    dispatch_resume(self->_fetchTimer);
  }
}

- (void)stopFetchTimer
{
  if (self->_fetchTimer)
  {
    v3 = sub_10000A9AC(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A07C();
    }

    dispatch_source_cancel(self->_fetchTimer);
    fetchTimer = self->_fetchTimer;
    self->_fetchTimer = 0;

    [(NSString *)self->_launchServiceMonitorID UTF8String];
    launch_service_stats_disable();
  }
}

@end