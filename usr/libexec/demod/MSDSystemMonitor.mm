@interface MSDSystemMonitor
+ (id)sharedInstance;
- (MSDSystemMonitorObserver)observer;
- (unint64_t)systemIdleDuration;
- (void)processCoreDuetCallBack;
- (void)processDiskSpaceMonitorCallback;
- (void)registerObserver:(id)observer;
- (void)startDiskSpaceMonitoring;
- (void)startPowerForegroundAppMonitoring;
- (void)startSystemIdleDetection;
- (void)stopDiskSpaceMonitoring;
- (void)stopSystemIdleDetection;
@end

@implementation MSDSystemMonitor

+ (id)sharedInstance
{
  if (qword_1001A5950 != -1)
  {
    sub_1000DF0D8();
  }

  v3 = qword_1001A5948;

  return v3;
}

- (unint64_t)systemIdleDuration
{
  coreDuetContext = [(MSDSystemMonitor *)self coreDuetContext];
  v4 = +[_CDContextQueries keyPathForInUseStatus];
  v5 = [coreDuetContext objectForKeyedSubscript:v4];

  if ([v5 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    coreDuetContext2 = [(MSDSystemMonitor *)self coreDuetContext];
    v8 = +[_CDContextQueries keyPathForLastUseDate];
    v9 = [coreDuetContext2 objectForKeyedSubscript:v8];

    v10 = +[NSDate now];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;

    v13 = 0.0;
    if (v12 > 0.0)
    {
      v13 = v12;
    }

    v6 = v13;
  }

  return v6;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (([observerCopy conformsToProtocol:&OBJC_PROTOCOL___MSDSystemMonitorObserver] & 1) == 0)
  {
    sub_1000DF0EC(a2, self);
  }

  [(MSDSystemMonitor *)self setObserver:observerCopy];
}

- (void)startSystemIdleDetection
{
  [(MSDSystemMonitor *)self setCoreDuetTriggeredPause:0];
  [(MSDSystemMonitor *)self setDiskSpaceTriggeredPause:0];
  [(MSDSystemMonitor *)self startPowerForegroundAppMonitoring];

  [(MSDSystemMonitor *)self startDiskSpaceMonitoring];
}

- (void)stopSystemIdleDetection
{
  [(MSDSystemMonitor *)self setCoreDuetTriggeredPause:0];
  [(MSDSystemMonitor *)self setDiskSpaceTriggeredPause:0];
  coreDuetContext = [(MSDSystemMonitor *)self coreDuetContext];
  applicationRegistration = [(MSDSystemMonitor *)self applicationRegistration];
  [coreDuetContext deregisterCallback:applicationRegistration];

  [(MSDSystemMonitor *)self stopDiskSpaceMonitoring];
}

- (void)startDiskSpaceMonitoring
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087EF4;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)stopDiskSpaceMonitoring
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008807C;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)processDiskSpaceMonitorCallback
{
  obj = self;
  objc_sync_enter(obj);
  v2 = +[MSDTargetDevice sharedInstance];
  getFreeSpace = [v2 getFreeSpace];

  if (getFreeSpace + 0xFFFFF > 0x1FFFFE)
  {
    [(MSDSystemMonitor *)obj setDiskSpaceTriggeredPause:0];
    v4 = 0;
  }

  else
  {
    [(MSDSystemMonitor *)obj setDiskSpaceTriggeredPause:1];
    v4 = @"diskSpaceTriggeredPause";
  }

  observer = [(MSDSystemMonitor *)obj observer];

  if (observer)
  {
    observer2 = [(MSDSystemMonitor *)obj observer];
    diskSpaceTriggeredPause = [(MSDSystemMonitor *)obj coreDuetTriggeredPause]|| [(MSDSystemMonitor *)obj diskSpaceTriggeredPause];
    [observer2 didReceiveNewPauseStatus:diskSpaceTriggeredPause forReason:v4];
  }

  objc_sync_exit(obj);
}

- (void)startPowerForegroundAppMonitoring
{
  objc_initWeak(&location, self);
  v3 = +[_CDContextQueries keyPathForInUseStatus];
  v16[0] = v3;
  v4 = +[_CDContextQueries keyPathForForegroundApp];
  v16[1] = v4;
  v5 = +[_CDContextQueries keyPathForBatteryLevel];
  v16[2] = v5;
  v6 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v16[3] = v6;
  v7 = [NSArray arrayWithObjects:v16 count:4];
  v8 = [_CDContextualPredicate predicateForChangeAtKeyPaths:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088468;
  v13[3] = &unk_10016BA58;
  objc_copyWeak(&v14, &location);
  v9 = objc_retainBlock(v13);
  v10 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.mobilestoredemo" contextualPredicate:v8 callback:v9];
  [(MSDSystemMonitor *)self setApplicationRegistration:v10];

  coreDuetContext = [(MSDSystemMonitor *)self coreDuetContext];
  applicationRegistration = [(MSDSystemMonitor *)self applicationRegistration];
  [coreDuetContext registerCallback:applicationRegistration];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)processCoreDuetCallBack
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  coreDuetContext = [(MSDSystemMonitor *)selfCopy coreDuetContext];
  v4 = +[_CDContextQueries keyPathForForegroundApp];
  v5 = [coreDuetContext objectForKeyedSubscript:v4];

  coreDuetContext2 = [(MSDSystemMonitor *)selfCopy coreDuetContext];
  v7 = +[_CDContextQueries keyPathForInUseStatus];
  v8 = [coreDuetContext2 objectForKeyedSubscript:v7];
  bOOLValue = [v8 BOOLValue];

  coreDuetContext3 = [(MSDSystemMonitor *)selfCopy coreDuetContext];
  v11 = +[_CDContextQueries keyPathForBatteryLevel];
  v12 = [coreDuetContext3 objectForKeyedSubscript:v11];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  coreDuetContext4 = [(MSDSystemMonitor *)selfCopy coreDuetContext];
  v15 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v16 = [coreDuetContext4 objectForKeyedSubscript:v15];

  v17 = +[MSDPlatform sharedInstance];
  LOBYTE(v15) = [v17 tvOS];

  if (v15)
  {
LABEL_2:
    v19 = 0;
    v20 = 0;
    if (!bOOLValue)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v20 = @"batteryLevelTriggeredPause";
  if (unsignedIntegerValue >= 0x15)
  {
    if (unsignedIntegerValue <= 0x31)
    {
      v24 = +[_CDContextQueries batteryExternalConnectedKey];
      v25 = [v16 objectForKey:v24];
      bOOLValue2 = [v25 BOOLValue];

      v19 = bOOLValue2 ^ 1;
      if (bOOLValue2)
      {
        v20 = 0;
      }

      if (!bOOLValue)
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    goto LABEL_2;
  }

  v19 = 1;
  if (!bOOLValue)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

LABEL_6:
  foregroundAllowedApps = [(MSDSystemMonitor *)selfCopy foregroundAllowedApps];
  v22 = [foregroundAllowedApps containsObject:v5];

  v23 = v22 ^ 1;
  if (!v22)
  {
    v20 = @"systemInUseTriggeredPause";
  }

LABEL_14:
  v27 = sub_100063A54(v18);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_1000DF160(v5, bOOLValue, v27);
  }

  [(MSDSystemMonitor *)selfCopy setCoreDuetTriggeredPause:v19 | v23];
  observer = [(MSDSystemMonitor *)selfCopy observer];

  if (observer)
  {
    observer2 = [(MSDSystemMonitor *)selfCopy observer];
    diskSpaceTriggeredPause = [(MSDSystemMonitor *)selfCopy coreDuetTriggeredPause]|| [(MSDSystemMonitor *)selfCopy diskSpaceTriggeredPause];
    [observer2 didReceiveNewPauseStatus:diskSpaceTriggeredPause forReason:v20];
  }

  objc_sync_exit(selfCopy);
}

- (MSDSystemMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end