@interface W5NetUsageManager
+ (void)copyPeriodicNetUsageToDir:(id)dir uuid:(id)uuid;
+ (void)writeProcNetUsage:(id)usage ToFile:(id)file;
- (W5NetUsageManager)init;
- (id)_getCurrentUsage;
- (id)_getProcNetUsageWithName:(id)name inUsageData:(id)data;
- (id)calculateUsageDelta:(id)delta;
- (void)recordUsageToDate:(id)date;
- (void)startPeriodicUsageMonitor:(double)monitor maxEntries:(unint64_t)entries uuid:(id)uuid;
- (void)stopPeriodicUsageMonitor:(id)monitor;
@end

@implementation W5NetUsageManager

- (W5NetUsageManager)init
{
  v19.receiver = self;
  v19.super_class = W5NetUsageManager;
  v2 = [(W5NetUsageManager *)&v19 init];
  if (objc_opt_class() && objc_opt_class())
  {
    v3 = [AnalyticsWorkspace alloc];
    v4 = [v3 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
    if (v4 && (v5 = [[UsageFeed alloc] initWithWorkspace:v4], usageFeed = v2->_usageFeed, v2->_usageFeed = v5, usageFeed, v2->_usageFeed))
    {
      v7 = [[NSMutableDictionary alloc] initWithCapacity:10];
      usageSnaphots = v2->_usageSnaphots;
      v2->_usageSnaphots = v7;

      v9 = [[NSMutableDictionary alloc] initWithCapacity:10];
      periodicUsageFiles = v2->_periodicUsageFiles;
      v2->_periodicUsageFiles = v9;

      v11 = [[NSMutableDictionary alloc] initWithCapacity:10];
      periodicBufferHead = v2->_periodicBufferHead;
      v2->_periodicBufferHead = v11;

      v13 = [[NSMutableDictionary alloc] initWithCapacity:10];
      netUsageTimer = v2->_netUsageTimer;
      v2->_netUsageTimer = v13;

      p_super = sub_100098A04();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315650;
        v21 = "[W5NetUsageManager init]";
        v22 = 2080;
        v23 = "W5NetUsageManager.m";
        v24 = 1024;
        v25 = 72;
        LODWORD(v18) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, p_super, 0, "[wifivelocity] %s (%s:%u) Init Success: Symptoms Framework Client", &v20, v18, LODWORD(v19.receiver));
      }
    }

    else
    {
      p_super = &v4->super;
      v4 = v2;
      v2 = 0;
    }

    v16 = v2;

    v2 = v4;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_getCurrentUsage
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100010588;
  v20 = sub_100010598;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  usageFeed = self->_usageFeed;
  v28[0] = kSymptomAnalyticsServiceRefreshUsage;
  v28[1] = kSymptomAnalyticsServiceExtensionUsage;
  v29[0] = &__kCFBooleanTrue;
  v29[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v6 = kUsageProcessProcName;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000105A0;
  v13[3] = &unk_1000E1410;
  v15 = &v16;
  v7 = v3;
  v14 = v7;
  LOBYTE(usageFeed) = [(UsageFeed *)usageFeed usageToDateWithOptionsFor:0 nameKind:v6 options:v5 reply:v13];

  if ((usageFeed & 1) == 0)
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "[W5NetUsageManager _getCurrentUsage]";
      v24 = 2080;
      v25 = "W5NetUsageManager.m";
      v26 = 1024;
      v27 = 104;
      LODWORD(v12) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) Failed to issue usageToDate request", buf, v12, LODWORD(v13[0]));
    }
  }

  v9 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v7, v9) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v23 = 0x4010000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)recordUsageToDate:(id)date
{
  dateCopy = date;
  v5 = [(NSMutableDictionary *)self->_usageSnaphots objectForKey:dateCopy];

  if (!v5)
  {
    v6 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_usageSnaphots setObject:v6 forKeyedSubscript:dateCopy];
  }

  v7 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:dateCopy];
  v8 = [v7 count];

  if (v8 <= 1)
  {
    _getCurrentUsage = [(W5NetUsageManager *)self _getCurrentUsage];
    v10 = +[NSDate date];
    v11 = [[W5WiFiNetUsageRecord alloc] init:v10 usageData:_getCurrentUsage];
    if (_getCurrentUsage)
    {
      v12 = sub_100098A04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316418;
        v16 = "[W5NetUsageManager recordUsageToDate:]";
        v17 = 2080;
        v18 = "W5NetUsageManager.m";
        v19 = 1024;
        v20 = 124;
        v21 = 2048;
        v22 = [_getCurrentUsage count];
        v23 = 2114;
        v24 = v10;
        v25 = 2112;
        v26 = dateCopy;
        v14 = 58;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) Recording Network Usage for %ld entries, at: %{public}@, for UUID: %@", &v15, v14);
      }

      v13 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:dateCopy];
      [v13 addObject:v11];
    }
  }
}

- (void)startPeriodicUsageMonitor:(double)monitor maxEntries:(unint64_t)entries uuid:(id)uuid
{
  uuidCopy = uuid;
  v9 = [(NSMutableDictionary *)self->_netUsageTimer objectForKey:uuidCopy];

  if (v9)
  {
    v10 = sub_100098A04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315906;
      v34 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]";
      v35 = 2080;
      v36 = "W5NetUsageManager.m";
      v37 = 1024;
      v38 = 133;
      v39 = 2112;
      v40 = uuidCopy;
      v26 = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[wifivelocity] %s (%s:%u) WARN: Starting a new periodic collection for UUID:%@ when one is already active. Will cancel the last one", &v33, v26);
    }

    v11 = [(NSMutableDictionary *)self->_netUsageTimer objectForKeyedSubscript:uuidCopy];
    [v11 invalidate];
  }

  v12 = [NSURL alloc];
  uUIDString = [uuidCopy UUIDString];
  v14 = [NSString stringWithFormat:@"/tmp/com.apple.wifivelocity/%@/netusage", uUIDString];
  v15 = [v12 initFileURLWithPath:v14];

  v16 = +[NSFileManager defaultManager];
  v32 = 0;
  v17 = [v16 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v32];
  v18 = v32;

  v19 = sub_100098A04();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136316418;
    v34 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]";
    v35 = 2080;
    v36 = "W5NetUsageManager.m";
    v37 = 1024;
    v38 = 144;
    v39 = 2112;
    v40 = v15;
    v41 = 1024;
    v42 = v17;
    v43 = 2112;
    v44 = v18;
    LODWORD(v25) = 54;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v19, 0, "[wifivelocity] %s (%s:%u) Create Directory: %@, success: %d, error: %@", &v33, v25);
  }

  v20 = [[NSMutableArray alloc] initWithCapacity:entries];
  [(NSMutableDictionary *)self->_periodicUsageFiles setObject:v20 forKeyedSubscript:uuidCopy];

  v21 = [NSNumber numberWithUnsignedInteger:0];
  [(NSMutableDictionary *)self->_periodicBufferHead setObject:v21 forKeyedSubscript:uuidCopy];

  v22 = sub_100098A04();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315906;
    v34 = "[W5NetUsageManager startPeriodicUsageMonitor:maxEntries:uuid:]";
    v35 = 2080;
    v36 = "W5NetUsageManager.m";
    v37 = 1024;
    v38 = 149;
    v39 = 2112;
    v40 = uuidCopy;
    LODWORD(v25) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) Starting Periodic Netusage data collection for UUID: %@", &v33, v25);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010D94;
  block[3] = &unk_1000E1460;
  block[4] = self;
  v28 = uuidCopy;
  monitorCopy = monitor;
  v29 = v15;
  entriesCopy = entries;
  v23 = v15;
  v24 = uuidCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stopPeriodicUsageMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = [(NSMutableDictionary *)self->_netUsageTimer objectForKey:monitorCopy];

  if (v5)
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "[W5NetUsageManager stopPeriodicUsageMonitor:]";
      v12 = 2080;
      v13 = "W5NetUsageManager.m";
      v14 = 1024;
      v15 = 189;
      v16 = 2112;
      v17 = monitorCopy;
      v9 = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) Stopping Periodic Netusage data collection for UUID: %@", &v10, v9);
    }

    v7 = [(NSMutableDictionary *)self->_netUsageTimer objectForKeyedSubscript:monitorCopy];
    [v7 invalidate];

    [(NSMutableDictionary *)self->_netUsageTimer removeObjectForKey:monitorCopy];
    v8 = [(NSMutableDictionary *)self->_periodicUsageFiles objectForKeyedSubscript:monitorCopy];
    [v8 removeAllObjects];

    [(NSMutableDictionary *)self->_periodicUsageFiles removeObjectForKey:monitorCopy];
    [(NSMutableDictionary *)self->_periodicBufferHead removeObjectForKey:monitorCopy];
  }
}

- (id)_getProcNetUsageWithName:(id)name inUsageData:(id)data
{
  nameCopy = name;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dataCopy = data;
  v7 = [dataCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(dataCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKey:{@"procName", v16}];
        v13 = [v12 isEqualToString:nameCopy];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v8 = [dataCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)calculateUsageDelta:(id)delta
{
  deltaCopy = delta;
  v5 = [(NSMutableDictionary *)self->_usageSnaphots objectForKey:deltaCopy];

  if (!v5)
  {
    v27 = sub_100098A04();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315906;
      v44 = "[W5NetUsageManager calculateUsageDelta:]";
      v45 = 2080;
      v46 = "W5NetUsageManager.m";
      v47 = 1024;
      v48 = 214;
      v49 = 2112;
      v50 = deltaCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v27, 0, "[wifivelocity] %s (%s:%u) No usage snaphots found for UUID: %@", &v43, 38);
    }

    goto LABEL_21;
  }

  v6 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:deltaCopy];
  v7 = [v6 count];

  if (v7 != 2)
  {
    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:deltaCopy];
      v44 = "[W5NetUsageManager calculateUsageDelta:]";
      v45 = 2080;
      v43 = 136316162;
      v46 = "W5NetUsageManager.m";
      v47 = 1024;
      v48 = 220;
      v49 = 2048;
      v50 = [v30 count];
      v51 = 2112;
      v52 = deltaCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v29, 0, "[wifivelocity] %s (%s:%u) Unable to calclulate NetUsage Delta: Incorrect numer of entires: %ld for UUID: %@", &v43, 48);
    }

LABEL_21:
    v34 = 0;
    goto LABEL_22;
  }

  v34 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:deltaCopy];
  v9 = [v8 objectAtIndex:1];
  usageData = [v9 usageData];

  obj = usageData;
  v11 = [usageData countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v33 = *v39;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v14 objectForKey:@"procName"];
        v16 = deltaCopy;
        v17 = [(NSMutableDictionary *)self->_usageSnaphots objectForKeyedSubscript:deltaCopy];
        v18 = [v17 objectAtIndex:0];
        usageData2 = [v18 usageData];
        selfCopy = self;
        v21 = [(W5NetUsageManager *)self _getProcNetUsageWithName:v15 inUsageData:usageData2];

        if (v21)
        {
          v22 = objc_alloc_init(NSMutableDictionary);
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100011BD4;
          v35[3] = &unk_1000E1488;
          v35[4] = v14;
          v36 = v21;
          v37 = v22;
          v23 = v22;
          [v14 enumerateKeysAndObjectsUsingBlock:v35];
          [v34 addObject:v23];
        }

        else
        {
          v23 = [v14 copy];
          [v34 addObject:v23];
        }

        deltaCopy = v16;
        self = selfCopy;
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v12);
  }

  v24 = sub_100098A04();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v34 count];
    v44 = "[W5NetUsageManager calculateUsageDelta:]";
    v45 = 2080;
    v43 = 136316162;
    v46 = "W5NetUsageManager.m";
    v47 = 1024;
    v48 = 249;
    v49 = 2048;
    v50 = v25;
    v51 = 2112;
    v52 = deltaCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v24, 0, "[wifivelocity] %s (%s:%u) Calculated Network Usage Delta for %ld entries, UUID: %@", &v43, 48);
  }

  v26 = sub_100098A04();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 136315906;
    v44 = "[W5NetUsageManager calculateUsageDelta:]";
    v45 = 2080;
    v46 = "W5NetUsageManager.m";
    v47 = 1024;
    v48 = 251;
    v49 = 2112;
    v50 = deltaCopy;
    LODWORD(v31) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v26, 0, "[wifivelocity] %s (%s:%u) Clearing NetUsage records for UUID: %@", &v43, v31);
  }

  [(NSMutableDictionary *)self->_usageSnaphots removeObjectForKey:deltaCopy];
LABEL_22:

  return v34;
}

+ (void)copyPeriodicNetUsageToDir:(id)dir uuid:(id)uuid
{
  dirCopy = dir;
  uuidCopy = uuid;
  v6 = [NSURL alloc];
  uUIDString = [uuidCopy UUIDString];
  v8 = [NSString stringWithFormat:@"/tmp/com.apple.wifivelocity/%@/netusage", uUIDString];
  v9 = [v6 initFileURLWithPath:v8];

  v10 = +[NSFileManager defaultManager];
  v43 = 0;
  v11 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:4 error:&v43];
  v12 = v43;

  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 count];
    v44 = 136315906;
    v45 = "+[W5NetUsageManager copyPeriodicNetUsageToDir:uuid:]";
    v46 = 2080;
    v47 = "W5NetUsageManager.m";
    v48 = 1024;
    v49 = 268;
    v50 = 2048;
    v51 = v14;
    LODWORD(v30) = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) Copying %ld netusage files", &v44, v30, v31, v33);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v15)
  {
    v16 = v15;
    v32 = v9;
    v34 = uuidCopy;
    v17 = 0;
    v18 = *v40;
    do
    {
      v19 = 0;
      v20 = v12;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v39 + 1) + 8 * v19);
        lastPathComponent = [v21 lastPathComponent];
        v23 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

        v24 = +[NSFileManager defaultManager];
        v38 = v20;
        v25 = [v24 copyItemAtURL:v21 toURL:v23 error:&v38];
        v12 = v38;

        v26 = sub_100098A04();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v44 = 136316674;
          v45 = "+[W5NetUsageManager copyPeriodicNetUsageToDir:uuid:]";
          v46 = 2080;
          v47 = "W5NetUsageManager.m";
          v48 = 1024;
          v49 = 274;
          v50 = 2112;
          v51 = v21;
          v52 = 2112;
          *v53 = v23;
          *&v53[8] = 1024;
          *&v53[10] = v25;
          v54 = 2112;
          v55 = v12;
          LODWORD(v30) = 64;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v26, 0, "[wifivelocity] %s (%s:%u) Copy: %@ -> %@, success: %d, error: %@", &v44, v30);
        }

        v17 += v25;
        v19 = v19 + 1;
        v20 = v12;
      }

      while (v16 != v19);
      v16 = [obj countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v16);
    v9 = v32;
    uuidCopy = v34;
  }

  else
  {
    v17 = 0;
    v25 = 0;
  }

  if (v17 == [obj count])
  {
    v27 = +[NSFileManager defaultManager];
    v37 = v12;
    [v27 removeItemAtURL:v9 error:&v37];
    v28 = v37;

    v29 = sub_100098A04();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v44 = 136316418;
      v45 = "+[W5NetUsageManager copyPeriodicNetUsageToDir:uuid:]";
      v46 = 2080;
      v47 = "W5NetUsageManager.m";
      v48 = 1024;
      v49 = 281;
      v50 = 2112;
      v51 = v9;
      v52 = 1024;
      *v53 = v25;
      *&v53[4] = 2112;
      *&v53[6] = v28;
      LODWORD(v30) = 54;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v29, 0, "[wifivelocity] %s (%s:%u) Delete: %@, success: %d, error: %@", &v44, v30);
    }
  }

  else
  {
    v28 = v12;
  }
}

+ (void)writeProcNetUsage:(id)usage ToFile:(id)file
{
  usageCopy = usage;
  fileCopy = file;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = "+[W5NetUsageManager writeProcNetUsage:ToFile:]";
    v20 = 2080;
    v18 = 136316162;
    v21 = "W5NetUsageManager.m";
    v22 = 1024;
    v23 = 287;
    v24 = 2048;
    v25 = [usageCopy count];
    v26 = 2114;
    v27 = fileCopy;
    v15 = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) Writing %ld Network Usage entries to: %{public}@", &v18, v15);
  }

  if ([usageCopy count])
  {
    +[NSMutableString string];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100012460;
    v8 = v16[3] = &unk_1000E14B0;
    v17 = v8;
    [usageCopy enumerateObjectsUsingBlock:v16];
    v9 = +[NSFileManager defaultManager];
    path = [fileCopy path];
    v11 = [v8 dataUsingEncoding:4];
    v12 = [v9 createFileAtPath:path contents:v11 attributes:0];

    if (v12)
    {
      v13 = sub_100098A04();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315906;
        v19 = "+[W5NetUsageManager writeProcNetUsage:ToFile:]";
        v20 = 2080;
        v21 = "W5NetUsageManager.m";
        v22 = 1024;
        v23 = 303;
        v24 = 2114;
        v25 = fileCopy;
        LODWORD(v14) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] %s (%s:%u) Generated Network Usage File at: %{public}@", &v18, v14);
      }
    }
  }
}

@end