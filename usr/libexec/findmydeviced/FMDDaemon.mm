@interface FMDDaemon
+ (id)sharedInstance;
- (FMDDaemon)init;
- (id)apsHandlerForEnvironment:(id)environment;
- (id)xpcDarwinEventHandlers;
- (id)xpcDistributedEventHandlers;
- (void)_performPostStartupTasks;
- (void)_startupNowWithCompletion:(id)completion;
- (void)calculateFirstRunStatus;
- (void)checkInAllAPSHandlers;
- (void)cleanupPostWipe;
- (void)initialLaunchProcessing;
- (void)migrateAosnotifydStuff;
- (void)migrateFromVersion:(id)version toVersion:(id)toVersion;
- (void)startServiceProviders;
- (void)versionCheck;
- (void)waitForSpringBoard;
@end

@implementation FMDDaemon

+ (id)sharedInstance
{
  if (qword_100314548 != -1)
  {
    sub_100226834();
  }

  v3 = qword_100314540;

  return v3;
}

- (FMDDaemon)init
{
  v10.receiver = self;
  v10.super_class = FMDDaemon;
  v2 = [(FMDDaemon *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    apsHandlers = v2->_apsHandlers;
    v2->_apsHandlers = v3;

    v5 = dispatch_queue_create("APSHandlers-Mods", 0);
    apsHandlersModQueue = v2->_apsHandlersModQueue;
    v2->_apsHandlersModQueue = v5;

    v7 = objc_alloc_init(FMStateCapture);
    [(FMDDaemon *)v2 setStateCapture:v7];

    stateCapture = [(FMDDaemon *)v2 stateCapture];
    [stateCapture setStateCaptureBlock:&stru_1002CDA20];
  }

  return v2;
}

- (void)_startupNowWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDDaemon *)self migrateAosnotifydStuff];
  v5 = +[FMDFMIPSharedStateManager sharedInstance];
  [v5 recalculateLostMode];

  v6 = sub_100002880([(FMDDaemon *)self waitForSpringBoard]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "************ FindMyDevice Daemon Starting... ************", buf, 2u);
  }

  v7 = +[NSDate date];
  [(FMDDaemon *)self setStartTime:v7];

  [(FMDDaemon *)self versionCheck];
  [(FMDDaemon *)self calculateFirstRunStatus];
  v8 = +[FMXPCTransactionManager sharedInstance];
  [v8 setLaunchOnRebootActivity:@"com.apple.icloud.findmydeviced.launch-on-reboot" keepAliveActivity:@"com.apple.icloud.findmydeviced.keep-alive-on-dirty"];

  v9 = sub_100002880(+[FMDSystemConfig sharedInstance]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100226848(v9);
  }

  v10 = +[FMSystemInfo sharedInstance];
  if ([v10 isInternalBuild])
  {
    v11 = +[FMDSystemConfig sharedInstance];
    isRunningInRecovery = [v11 isRunningInRecovery];

    if (isRunningInRecovery)
    {
      goto LABEL_12;
    }

    v14 = [(FMDDaemon *)self verifyLaunchEventsConfiguration:@"/System/Library/LaunchDaemons/com.apple.icloud.findmydeviced.plist" withExclusions:&off_1002E88B8];
    v10 = v14;
    if (v14)
    {
      v15 = sub_100002880(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10022688C();
      }
    }
  }

LABEL_12:
  v16 = sub_100002880(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_1002268F4(v16);
  }

  [(FMDDaemon *)self startServiceProviders];
  v17 = +[FMXPCTransactionManager sharedInstance];
  v18 = +[FMNetworkMonitor sharedInstance];
  isMonitoring = [v18 isMonitoring];

  if ((isMonitoring & 1) == 0)
  {
    v20 = +[FMNetworkMonitor sharedInstance];
    [v20 startMonitoring];
  }

  [(FMDDaemon *)self cleanupPostWipe];
  [(FMDDaemon *)self setStartupComplete:1];
  [(FMDDaemon *)self checkInAllAPSHandlers];
  apsHandlersModQueue = [(FMDDaemon *)self apsHandlersModQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BDF4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(apsHandlersModQueue, block);

  v22 = +[FMDXPCManager sharedInstance];
  [v22 initializeXPC];

  [(FMDDaemon *)self _performPostStartupTasks];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v23 = [[FMDEventLoggerEventLaunch alloc] initWithEventName:@"FMDDaemonLaunchEvent"];
  [(FMDEventLoggerEventLaunch *)v23 setLaunchReason:0];
  v24 = +[FMDEventLogger sharedLogger];
  v25 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v32 = v25;
  v26 = [NSArray arrayWithObjects:&v32 count:1];
  [v24 logEvent:v23 toFacilitiesNamed:v26];

  v27 = MKBGetDeviceLockState();
  if (!v27)
  {
    v28 = sub_100002880(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Start clearing up empty folders", buf, 2u);
    }

    v29 = +[FMDProtectedContextManager sharedManager];
    [v29 cleanupEmptyFolders];
  }
}

- (void)checkInAllAPSHandlers
{
  v5[0] = @"production";
  v5[1] = @"development";
  v5[2] = @"demo";
  v3 = [NSArray arrayWithObjects:v5 count:3];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013C00C;
  v4[3] = &unk_1002CDA48;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (id)apsHandlerForEnvironment:(id)environment
{
  environmentCopy = environment;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000A9B4;
  v16 = sub_100002AA4;
  v17 = 0;
  if (environmentCopy)
  {
    apsHandlersModQueue = [(FMDDaemon *)self apsHandlersModQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013C264;
    block[3] = &unk_1002CDA70;
    v11 = &v12;
    block[4] = self;
    v10 = environmentCopy;
    dispatch_sync(apsHandlersModQueue, block);
  }

  else
  {
    v6 = sub_100002880(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002269A8(v6);
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)startServiceProviders
{
  v3 = objc_alloc_init(FMDFMIPServiceProvider);
  [(FMDDaemon *)self setActiveServiceProvider:v3];

  activeServiceProvider = [(FMDDaemon *)self activeServiceProvider];
  [activeServiceProvider start];

  v5 = +[FMDAppleAccountManager sharedInstance];
  [v5 syncFMIPAccountInfo];

  activeServiceProvider2 = [(FMDDaemon *)self activeServiceProvider];
  newLocationManager = [activeServiceProvider2 newLocationManager];

  v9 = sub_100002880(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = newLocationManager;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Started Location Manager (handling launch event) %p", &v10, 0xCu);
  }
}

- (id)xpcDarwinEventHandlers
{
  if (qword_100314558 != -1)
  {
    sub_1002269EC();
  }

  v3 = qword_100314550;

  return v3;
}

- (id)xpcDistributedEventHandlers
{
  if (qword_100314568 != -1)
  {
    sub_100226A68();
  }

  v3 = qword_100314560;

  return v3;
}

- (void)versionCheck
{
  v3 = +[FMDSystemConfig sharedInstance];
  buildVersion = [v3 buildVersion];

  v5 = +[FMDSystemConfig sharedInstance];
  isRunningInRecovery = [v5 isRunningInRecovery];

  v8 = sub_100002880(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (isRunningInRecovery)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *v13 = 138412290;
    *&v13[4] = buildVersion;
    v10 = "OS: %@ [Recovery Partition]";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *v13 = 138412290;
    *&v13[4] = buildVersion;
    v10 = "OS: %@";
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, v13, 0xCu);
LABEL_7:

  v11 = +[FMDPreferencesMgr lastLaunchVersion];
  v12 = v11;
  if (v11)
  {
    if (([v11 isEqualToString:buildVersion] & 1) == 0)
    {
      [(FMDDaemon *)self migrateFromVersion:v12 toVersion:buildVersion];
    }
  }

  else
  {
    [(FMDDaemon *)self initialLaunchProcessing];
  }

  [FMDPreferencesMgr setLastLaunchVersion:buildVersion, *v13, *&v13[8]];
}

- (void)initialLaunchProcessing
{
  v2 = sub_100002880(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initial launch", v3, 2u);
  }
}

- (void)migrateFromVersion:(id)version toVersion:(id)toVersion
{
  versionCopy = version;
  toVersionCopy = toVersion;
  v7 = [versionCopy compare:toVersionCopy];
  v8 = sub_100002880(v7);
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = versionCopy;
      v19 = 2112;
      v20 = toVersionCopy;
      v13 = "Back-migration from %@ to %@";
      v14 = v9;
      v15 = 22;
      goto LABEL_11;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v7 != -1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100226A7C();
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = versionCopy;
    v19 = 2112;
    v20 = toVersionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating from %@ to %@", buf, 0x16u);
  }

  if ([@"12A196" compare:versionCopy] != -1)
  {
    v10 = +[NSFileManager defaultManager];
    v16 = 0;
    [v10 removeItemAtPath:@"/var/mobile/Library/Logs/findmydeviced" error:&v16];
    v11 = v16;

    if (v11)
    {
      v9 = sub_100002880(v12);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "Failed to delete log directory. findmydeviced logging may not work";
        v14 = v9;
        v15 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)calculateFirstRunStatus
{
  v3 = sem_open("findmydeviced.boot_check", 0);
  if (v3 == -1)
  {
    v4 = sub_100002880([(FMDDaemon *)self setIsFirstRunAfterBoot:1]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "This is the first run after a boot", buf, 2u);
    }

    v5 = sem_open("findmydeviced.boot_check", 512, 256, 0);
    if (v5 == -1)
    {
      v6 = sub_100002880(-1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136315394;
        v10 = "findmydeviced.boot_check";
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to create semaphore %s: %s", buf, 0x16u);
      }
    }

    else
    {
      sem_close(v5);
    }
  }

  else
  {

    sem_close(v3);
  }
}

- (void)waitForSpringBoard
{
  if (MGGetBoolAnswer())
  {
    out_token = -1;
    notify_register_check("com.apple.springboard.finishedstartup", &out_token);
    if (out_token != -1)
    {
      v9 = 0;
      state = notify_get_state(out_token, &v9);
      v3 = v9;
      v4 = sub_100002880(state);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (v3)
      {
        if (v5)
        {
          *buf = 0;
          v6 = "SpringBoard is already running. Continuing to start findmydeviced";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
        }
      }

      else
      {
        if (v5)
        {
          *buf = 134217984;
          v12 = 20;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waiting upto %ld seconds for SpringBoard to start...", buf, 0xCu);
        }

        if (!v9)
        {
          v8 = 0;
          do
          {
            sleep(1u);
            v7 = notify_get_state(out_token, &v9);
            if (v8 > 0x12)
            {
              break;
            }

            ++v8;
          }

          while (!v9);
          if (!v9)
          {
            v4 = sub_100002880(v7);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = 0;
            v6 = "Timed out while waiting for SpringBoard to start. Continuing to start findmydeviced anyway";
            goto LABEL_15;
          }
        }

        v4 = sub_100002880(v7);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v6 = "SpringBoard has started. Continuing to start findmydeviced";
          goto LABEL_15;
        }
      }

LABEL_16:
    }
  }
}

- (void)_performPostStartupTasks
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kFMDStartupCompleteNotification, 0, 0, 1u);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v3, kFMDLocalActivationLockInfoChangedNotification, 0, 0, 1u);
  v5 = sub_100002880(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDLocalActivationLockInfoManager posted activationLockInfo changed notification after startup", v6, 2u);
  }
}

- (void)cleanupPostWipe
{
  v2 = +[FMDSystemConfig sharedInstance];
  isBuddyDone = [v2 isBuddyDone];

  if (isBuddyDone)
  {
    v4 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
    v5 = [v4 objectForKey:@"lostModeEnabled"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      v7 = MAEGetActivationStateWithError();
      v8 = 0;
      v9 = v8;
      if (v8)
      {
        v10 = sub_100002880(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100226A00();
        }
      }

      v11 = sub_100002880(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Doing fallback cleanup of postwipe preferences.  Activation state: [%@]", buf, 0xCu);
      }

      [FMDPreferencesMgr setFMIPWipeLostModeInfo:0];
    }
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10013DFBC, @"com.apple.purplebuddy.setupdone", 0, 0);
  }
}

- (void)migrateAosnotifydStuff
{
  v2 = +[FMDPreferencesMgr importedAosnotifydData];
  if ((v2 & 1) == 0)
  {
    v3 = sub_100002880(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for stuff to migrate from aosnotifyd", buf, 2u);
    }

    v4 = [NSString stringWithFormat:@"%@/FMIP-trackedLocations.dat", @"/var/mobile/Library/Caches/com.apple.aosnotifyd"];
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtPath:v4 error:0];
    }

    v8 = +[NSFileManager defaultManager];
    [v8 moveItemAtPath:@"/var/mobile/Library/Preferences/com.apple.AOSNotification.FMIPAccounts.plist" toPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist" error:0];

    v9 = +[NSFileManager defaultManager];
    [v9 moveItemAtPath:@"/var/mobile/Library/Preferences/com.apple.AOSNotification.FMIPAccounts.notbackedup.plist" toPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist" error:0];

    v10 = [FMPreferencesUtil dictionaryForKey:@"_trackingInfo_FMIP" inDomain:@"com.apple.AOSNotification.notbackedup"];
    if (v10)
    {
      v11 = [FMDLocationTracker stringForLocationTrackerType:0];
      [FMDPreferencesMgr setTrackingInfo:v10 forType:v11];
    }

    v12 = [FMPreferencesUtil dictionaryForKey:@"ClientLostModeInfo" inDomain:@"com.apple.AOSNotification.public.notbackedup"];
    if (v12)
    {
      [FMDPreferencesMgr setClientLostModeInfo:v12];
    }

    v13 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:@"com.apple.AOSNotification.postwipe"];
    if (v13)
    {
      [FMDPreferencesMgr setFMIPWipeLostModeInfo:v13];
    }

    v14 = [FMPreferencesUtil dictionaryForKey:@"FMIPLostModeInfo" inDomain:@"com.apple.AOSNotification.public.notbackedup"];
    if (v14)
    {
      [FMDPreferencesMgr setLostModeInfo:v14];
    }

    v15 = [FMPreferencesUtil integerForKey:@"_wipeState" inDomain:@"com.apple.AOSNotification.notbackedup"];
    if (v15)
    {
      [FMDPreferencesMgr setWipeState:v15];
    }

    v16 = [FMPreferencesUtil dictionaryForKey:@"_wipeInfo" inDomain:@"com.apple.AOSNotification.notbackedup"];
    if (v16)
    {
      [FMDPreferencesMgr setWipeInfo:v16];
    }

    [FMDPreferencesMgr setImportedAosnotifydData:1];
  }
}

@end