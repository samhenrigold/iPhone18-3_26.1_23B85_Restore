@interface FMFLocatorDaemon
+ (id)sharedInstance;
- (FMFLocatorDaemon)init;
- (id)apsHandlerForEnvironment:(id)environment;
- (id)xpcDarwinEventHandlers;
- (id)xpcDistributedEventHandlers;
- (void)calculateFirstRunStatus;
- (void)checkInAllAPSHandlers;
- (void)startServiceProviders;
- (void)startupWithCompletion:(id)completion;
- (void)waitForSpringBoard;
@end

@implementation FMFLocatorDaemon

+ (id)sharedInstance
{
  if (qword_1000700D8 != -1)
  {
    sub_100036580();
  }

  v3 = qword_1000700D0;

  return v3;
}

- (FMFLocatorDaemon)init
{
  v8.receiver = self;
  v8.super_class = FMFLocatorDaemon;
  v2 = [(FMFLocatorDaemon *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    apsHandlers = v2->_apsHandlers;
    v2->_apsHandlers = v3;

    v5 = objc_alloc_init(FMStateCapture);
    [(FMFLocatorDaemon *)v2 setStateCapture:v5];

    stateCapture = [(FMFLocatorDaemon *)v2 stateCapture];
    [stateCapture setStateCaptureBlock:&stru_10005D0D8];
  }

  return v2;
}

- (void)startupWithCompletion:(id)completion
{
  completionCopy = completion;
  waitForSpringBoard = MGGetBoolAnswer();
  if (waitForSpringBoard)
  {
    waitForSpringBoard = [(FMFLocatorDaemon *)self waitForSpringBoard];
  }

  v6 = sub_100002830(waitForSpringBoard);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "\n*******************************************************************************\n                    FMFLocator Daemon Starting...\n*******************************************************************************", buf, 2u);
  }

  v7 = +[NSDate date];
  [(FMFLocatorDaemon *)self setStartTime:v7];

  [(FMFLocatorDaemon *)self calculateFirstRunStatus];
  if ([(FMFLocatorDaemon *)self isFirstRunAfterBoot])
  {
    v8 = objc_alloc_init(FMFLocatorMigrator);
    performMigration = [(FMFLocatorMigrator *)v8 performMigration];

    if ((performMigration & 1) == 0)
    {
      v11 = sub_100002830(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not perform migration", buf, 2u);
      }
    }
  }

  v12 = +[FMXPCTransactionManager sharedInstance];
  [v12 setLaunchOnRebootActivity:@"com.apple.icloud.fmflocatord.launch-on-reboot" keepAliveActivity:@"com.apple.icloud.fmflocatord.keep-alive-on-dirty"];

  v13 = +[SystemConfig sharedInstance];
  v14 = +[FMFAppStateObserver sharedInstance];
  v15 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v15 isInternalBuild];

  if (isInternalBuild)
  {
    v18 = [(FMFLocatorDaemon *)self verifyLaunchEventsConfiguration:@"/System/Library/LaunchDaemons/com.apple.icloud.fmflocatord.plist" withExclusions:&__NSArray0__struct];
    v19 = v18;
    if (v18)
    {
      v20 = sub_100002830(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_100036594(v19, v20);
      }
    }
  }

  v21 = sub_100002830(v17);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10003660C(v21);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  apsHandlers = [(FMFLocatorDaemon *)self apsHandlers];
  v23 = [apsHandlers countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      v26 = 0;
      do
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(apsHandlers);
        }

        v27 = *(*(&v45 + 1) + 8 * v26);
        apsHandlers2 = [(FMFLocatorDaemon *)self apsHandlers];
        v29 = [apsHandlers2 objectForKeyedSubscript:v27];

        [v29 suspendRegistrations];
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [apsHandlers countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v24);
  }

  v30 = +[APSTokenWatcher sharedInstance];
  [(FMFLocatorDaemon *)self startServiceProviders];
  v31 = +[FMXPCTransactionManager sharedInstance];
  sub_1000058F8();
  [(FMFLocatorDaemon *)self setStartupComplete:1];
  [(FMFLocatorDaemon *)self checkInAllAPSHandlers];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  apsHandlers3 = [(FMFLocatorDaemon *)self apsHandlers];
  v33 = [apsHandlers3 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v42;
    do
    {
      v36 = 0;
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(apsHandlers3);
        }

        v37 = *(*(&v41 + 1) + 8 * v36);
        apsHandlers4 = [(FMFLocatorDaemon *)self apsHandlers];
        v39 = [apsHandlers4 objectForKeyedSubscript:v37];

        [v39 resumeRegistrations];
        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [apsHandlers3 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v34);
  }

  v40 = +[XPCManager sharedInstance];
  [v40 initializeXPC];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  v4[2] = sub_100004B1C;
  v4[3] = &unk_10005D100;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (id)apsHandlerForEnvironment:(id)environment
{
  environmentCopy = environment;
  apsHandlers = [(FMFLocatorDaemon *)self apsHandlers];
  v6 = [apsHandlers objectForKeyedSubscript:environmentCopy];

  if (!v6)
  {
    v7 = [FMAPSHandler alloc];
    v8 = [@"com.apple.icloud.fmflocatord.aps-" stringByAppendingString:environmentCopy];
    v6 = [v7 initWithEnvironmentName:environmentCopy launchOnDemandPort:v8];

    if (![(FMFLocatorDaemon *)self startupComplete])
    {
      [v6 suspendRegistrations];
    }

    apsHandlers2 = [(FMFLocatorDaemon *)self apsHandlers];
    [apsHandlers2 setObject:v6 forKeyedSubscript:environmentCopy];
  }

  return v6;
}

- (void)startServiceProviders
{
  v2 = sub_100002830(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000366C4(v2);
  }

  v3 = +[ServiceProviderMgr sharedInstance];
  [v3 start];
}

- (id)xpcDarwinEventHandlers
{
  v14[0] = @"com.apple.locationd/Prefs";
  v2 = [&stru_10005D120 copy];
  v15[0] = v2;
  v14[1] = @"com.apple.locationd.authorization";
  v3 = [&stru_10005D140 copy];
  v15[1] = v3;
  v14[2] = @"com.apple.mobileme.fmf1.allowFindMyFriendsModification";
  v4 = [&stru_10005D160 copy];
  v15[2] = v4;
  v14[3] = @"com.apple.system.hostname";
  v5 = [&stru_10005D180 copy];
  v15[3] = v5;
  v13[0] = @"AppleLanguagePreferencesChangedNotification";
  v13[1] = @"AppleDatePreferencesChangedNotification";
  v13[2] = @"AppleTimePreferencesChangedNotification";
  v13[3] = @"AppleNumberPreferencesChangedNotification";
  v13[4] = @"AppleKeyboardsPreferencesChangedNotification";
  v13[5] = @"com.apple.language.changed";
  v6 = [NSArray arrayWithObjects:v13 count:6];
  v14[4] = v6;
  v7 = [&stru_10005D1A0 copy];
  v15[4] = v7;
  v14[5] = @"com.apple.purplebuddy.setupdone";
  v8 = [&stru_10005D1C0 copy];
  v15[5] = v8;
  v14[6] = NRPairedDeviceRegistryDeviceDidPairDarwinNotification;
  v9 = [&stru_10005D1E0 copy];
  v15[6] = v9;
  v14[7] = NRPairedDeviceRegistryDeviceDidUnpairDarwinNotification;
  v10 = [&stru_10005D200 copy];
  v15[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v11;
}

- (id)xpcDistributedEventHandlers
{
  v6[0] = @"com.apple.LaunchServices.applicationRegistered";
  v2 = [&stru_10005D240 copy];
  v6[1] = @"com.apple.LaunchServices.applicationUnregistered";
  v7[0] = v2;
  v3 = [&stru_10005D260 copy];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)calculateFirstRunStatus
{
  v3 = sem_open("fmflocatord.boot_check", 0);
  if (v3 == -1)
  {
    v4 = sub_100002830([(FMFLocatorDaemon *)self setIsFirstRunAfterBoot:1]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "This is the first run after a boot", buf, 2u);
    }

    v5 = sem_open("fmflocatord.boot_check", 512, 256, 0);
    if (v5 == -1)
    {
      v6 = sub_100002830(-1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136315394;
        v10 = "fmflocatord.boot_check";
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to create semaphore %s: %s", buf, 0x16u);
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
  out_token = -1;
  notify_register_check("com.apple.springboard.finishedstartup", &out_token);
  if (out_token != -1)
  {
    v9 = 0;
    state = notify_get_state(out_token, &v9);
    v3 = v9;
    v4 = sub_100002830(state);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        v6 = "SpringBoard is already running. Continuing to start fmflocatord";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, buf, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 134217984;
        v12 = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Waiting upto %.0f seconds for SpringBoard to start...", buf, 0xCu);
      }

      if (!v9)
      {
        v8 = 0;
        do
        {
          sleep(1u);
          v7 = notify_get_state(out_token, &v9);
          if (v8 > 0x3A)
          {
            break;
          }

          ++v8;
        }

        while (!v9);
        if (!v9)
        {
          v4 = sub_100002830(v7);
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          *buf = 0;
          v6 = "Timed out while waiting for SpringBoard to start. Continuing to start fmflocatord anyway";
          goto LABEL_14;
        }
      }

      v4 = sub_100002830(v7);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v6 = "SpringBoard has started. Continuing to start fmflocatord";
        goto LABEL_14;
      }
    }

LABEL_15:
  }
}

@end