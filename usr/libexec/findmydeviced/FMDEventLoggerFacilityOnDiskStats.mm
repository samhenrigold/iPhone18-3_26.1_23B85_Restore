@interface FMDEventLoggerFacilityOnDiskStats
- (FMDEventLoggerFacilityOnDiskStats)init;
- (id)loggedEvents;
- (id)loggedEventsForEventName:(id)name;
- (void)_logEvent:(id)event;
- (void)loadLogs;
- (void)logEvent:(id)event;
- (void)reset;
@end

@implementation FMDEventLoggerFacilityOnDiskStats

- (FMDEventLoggerFacilityOnDiskStats)init
{
  v15.receiver = self;
  v15.super_class = FMDEventLoggerFacilityOnDiskStats;
  v2 = [(FMDEventLoggerFacilityOnDiskStats *)&v15 init];
  if (v2)
  {
    v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced"];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced.eventlogger.stats"];

    v7 = [NSURL URLWithString:v6];
    [(FMDEventLoggerFacilityOnDiskStats *)v2 setCachedLogFileURL:v7];

    v8 = [FMDataArchiver alloc];
    cachedLogFileURL = [(FMDEventLoggerFacilityOnDiskStats *)v2 cachedLogFileURL];
    v10 = [v8 initWithFileURL:cachedLogFileURL];
    [(FMDEventLoggerFacilityOnDiskStats *)v2 setArchiver:v10];

    archiver = [(FMDEventLoggerFacilityOnDiskStats *)v2 archiver];
    [archiver setBackedUp:0];

    archiver2 = [(FMDEventLoggerFacilityOnDiskStats *)v2 archiver];
    [archiver2 setCreateDirectories:1];

    v13 = dispatch_queue_create("FMDEventLoggerFacilityOnDisk.serialQueue", 0);
    [(FMDEventLoggerFacilityOnDiskStats *)v2 setSerialQueue:v13];

    [(FMDEventLoggerFacilityOnDiskStats *)v2 loadLogs];
  }

  return v2;
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  objc_initWeak(&location, self);
  serialQueue = [(FMDEventLoggerFacilityOnDiskStats *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100160990;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_logEvent:(id)event
{
  eventCopy = event;
  if ([(FMDEventLoggerFacilityOnDiskStats *)self shouldLog])
  {
    logs = [(FMDEventLoggerFacilityOnDiskStats *)self logs];
    userInfo = [eventCopy userInfo];
    groupByKey = [eventCopy groupByKey];
    v8 = [userInfo objectForKey:groupByKey];
    [v8 doubleValue];
    v10 = v9;

    eventName = [eventCopy eventName];
    eventName2 = [eventCopy eventName];
    v13 = [logs objectForKey:eventName2];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_10000AA24;
    v35 = sub_100002ADC;
    v36 = 0;
    if (v13)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100160D54;
      v27[3] = &unk_1002CF0F8;
      v30 = v10;
      v28 = eventCopy;
      v29 = &v31;
      [v13 enumerateObjectsUsingBlock:v27];
    }

    else
    {
      v13 = +[NSMutableArray array];
      [logs setObject:v13 forKey:eventName];
    }

    v14 = v32[5];
    if (v14)
    {
      statValue = [v14 statValue];
      integerValue = [statValue integerValue];

      v17 = [NSNumber numberWithInteger:integerValue + 1];
      [v32[5] setStatValue:v17];
    }

    else
    {
      v18 = [[FMDEventLoggerEventStat alloc] initWithEventName:eventName];
      v19 = v32[5];
      v32[5] = v18;

      [v32[5] setStatValue:&off_1002E7B58];
      v20 = [NSNumber numberWithDouble:v10];
      [v32[5] setGroupValue:v20];

      [v13 addObject:v32[5]];
    }

    v21 = [v13 count];
    if (v21 > qword_100312CB8)
    {
      v21 = [v13 removeObjectAtIndex:0];
    }

    v22 = sub_100002880(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100228CF0(logs, v22);
    }

    archiver = [(FMDEventLoggerFacilityOnDiskStats *)self archiver];
    v24 = [archiver saveDictionary:logs];

    if (v24)
    {
      v26 = sub_100002880(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100228D68(v24, v26);
      }
    }

    _Block_object_dispose(&v31, 8);
  }
}

- (void)reset
{
  v3 = +[NSFileManager defaultManager];
  cachedLogFileURL = [(FMDEventLoggerFacilityOnDiskStats *)self cachedLogFileURL];
  path = [cachedLogFileURL path];
  v9 = 0;
  [v3 removeItemAtPath:path error:&v9];
  v6 = v9;

  if (v6)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100228DE0(self, v6, v8);
    }
  }

  [(FMDEventLoggerFacilityOnDiskStats *)self loadLogs];
}

- (id)loggedEvents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AA24;
  v11 = sub_100002ADC;
  v12 = 0;
  serialQueue = [(FMDEventLoggerFacilityOnDiskStats *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100161010;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)loggedEventsForEventName:(id)name
{
  nameCopy = name;
  logs = [(FMDEventLoggerFacilityOnDiskStats *)self logs];
  v6 = [logs objectForKey:nameCopy];

  v7 = [v6 copy];

  return v7;
}

- (void)loadLogs
{
  archiver = [(FMDEventLoggerFacilityOnDiskStats *)self archiver];
  v4 = [NSSet setWithObject:objc_opt_class()];
  v16 = 0;
  v5 = [archiver readDictionaryAndClasses:v4 error:&v16];
  v6 = v16;

  if (v6)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "FMDEventLoggerFacilityOnDisk read error %@", buf, 0xCu);
    }

    v9 = +[FMDEventLoggerGeneral sharedInstance];
    [v9 sendError:v6 forEventName:@"FMDEventLoggerFacilityOnDiskStatsFailedReadEventName"];

    v10 = 0;
  }

  else
  {
    v10 = [v5 mutableCopy];
  }

  objc_initWeak(buf, self);
  serialQueue = [(FMDEventLoggerFacilityOnDiskStats *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161328;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v15, buf);
  v14 = v10;
  v12 = v10;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

@end