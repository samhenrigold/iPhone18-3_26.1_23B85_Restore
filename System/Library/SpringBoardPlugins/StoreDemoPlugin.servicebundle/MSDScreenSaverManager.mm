@interface MSDScreenSaverManager
+ (id)sharedInstance;
+ (void)awakeFromBundle;
- (BOOL)handleIdleTimerDidExpire;
- (BOOL)handleIdleTimerDidWarn;
- (BOOL)isInStandbyMode:(id)mode;
- (BOOL)isRetailDeviceContentUpdating;
- (BOOL)loadScreenSaverConfig;
- (BOOL)shouldHandleIdleHandler;
- (BOOL)shouldSetupIdleHandler;
- (MSDScreenSaverManager)init;
- (id)applicationStateString:(unsigned __int8)string withVisibility:(BOOL)visibility;
- (id)getLastAutoRebootTime;
- (id)getLastSettingsUpdatedTime;
- (id)getStoreHours;
- (id)readHubSuppliedSettings;
- (id)readLastAutoReboot;
- (id)readLastSettingsUpdated;
- (int)getDemoMode;
- (int)readDemoMode;
- (void)acquireDisableAlwaysOnTimeAssertion;
- (void)applicationsDidInstall:(id)install;
- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error;
- (void)assertionWasAcquired:(id)acquired;
- (void)handleAlwaysOnTimeToggleTimerFired:(id)fired;
- (void)handleApplicationStateChanged:(id)changed;
- (void)handleSpringBoardLaunch;
- (void)handleStoreHourSettingsChanged:(id)changed;
- (void)launchScreenSaver;
- (void)launchScreenSaverTimerFired;
- (void)launchSpringBoard;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout;
- (void)releaseDisableAlwaysOnTimeAssertion;
- (void)screenSaverStarted;
- (void)screenSaverStopped;
- (void)setupAlwaysOnTimeToggleTimer;
- (void)setupIdleTimerHandler;
- (void)stopScreenSaver;
- (void)stopScreenSaverTimerFired;
@end

@implementation MSDScreenSaverManager

+ (void)awakeFromBundle
{
  v2 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, " ", buf, 2u);
  }

  v4 = screenSaverLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin awake.", v6, 2u);
  }

  v5 = +[MSDScreenSaverManager sharedInstance];
}

+ (id)sharedInstance
{
  if (qword_1E0A8 != -1)
  {
    sub_C3C0();
  }

  v3 = qword_1E0A0;

  return v3;
}

- (MSDScreenSaverManager)init
{
  v14.receiver = self;
  v14.super_class = MSDScreenSaverManager;
  v2 = [(MSDScreenSaverManager *)&v14 init];
  if (v2)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0);
    if (AppBooleanValue)
    {
      v4 = dispatch_queue_create("com.apple.StoreDemoPlugin", 0);
      [(MSDScreenSaverManager *)v2 setWorkQueue:v4];

      workQueue = [(MSDScreenSaverManager *)v2 workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5668;
      block[3] = &unk_185D0;
      v6 = v2;
      v12 = v6;
      dispatch_async(workQueue, block);

      v7 = v6;
    }

    else
    {
      v8 = screenSaverLogHandle(AppBooleanValue);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Store Demo Mode bit is not on.", buf, 2u);
      }

      v9 = v2;
    }
  }

  return v2;
}

- (void)setupIdleTimerHandler
{
  if ([(MSDScreenSaverManager *)self shouldSetupIdleHandler])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setBool:1 forKey:@"SBUsesStoreDemoPlugin"];

    v5 = screenSaverLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SBUsesStoreDemoPlugin set!", buf, 2u);
    }

    v6 = +[MSDStoreHoursManager sharedInstance];
    [(MSDScreenSaverManager *)self setStoreHoursManager:v6];

    [(MSDScreenSaverManager *)self setStoreHourSettings:0];
    v7 = +[NSDistributedNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"handleStoreHourSettingsChanged:" name:@"com.apple.MobileStoreDemo.SettingsUpdated" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"handleStoreHourSettingsChanged:" name:@"com.apple.MobileStoreDemo.StoreHours.Expired" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"handleStoreHourSettingsChanged:" name:NSSystemClockDidChangeNotification object:0];

    [(MSDScreenSaverManager *)self loadScreenSaverConfig];
    v10 = [SBIdleTimerRequestConfiguration configurationWithIdleEventHandler:self];
    v11 = +[ITIdleTimerState sharedInstance];
    v12 = [v11 newIdleTimerAssertionWithConfiguration:v10 forReason:@"MSD - Screen saver idle timer"];
    [(MSDScreenSaverManager *)self setIdleTimerAssertion:v12];

    v14 = screenSaverLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[MSDScreenSaverManager setupIdleTimerHandler]";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%s - Idle timer assertion acquired.", buf, 0xCu);
    }

    [(MSDScreenSaverManager *)self setBacklightLevel:-1];
    v15 = [FBSDisplayLayoutMonitor sharedMonitorForDisplayType:0];
    [v15 addObserver:self];
    monitor = [(MSDScreenSaverManager *)self monitor];

    if (monitor)
    {
      monitor2 = [(MSDScreenSaverManager *)self monitor];
      [monitor2 invalidate];

      [(MSDScreenSaverManager *)self setMonitor:0];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_5F54;
    v24[3] = &unk_18820;
    v24[4] = self;
    v18 = [RBSProcessMonitor monitorWithConfiguration:v24];
    [(MSDScreenSaverManager *)self setMonitor:v18];

    v20 = screenSaverLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[MSDScreenSaverManager setupIdleTimerHandler]";
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%s - RBSProcessMonitor initialized.", buf, 0xCu);
    }

    if ([(MSDScreenSaverManager *)self turnOffAlwaysOnTimeAtNight])
    {
      [(MSDScreenSaverManager *)self setupAlwaysOnTimeToggleTimer];
    }

    v21 = +[NSDate now];
    [(MSDScreenSaverManager *)self setSessionStartTime:v21];

    if ([(MSDScreenSaverManager *)self deviceType]== &dword_4 + 2)
    {
      v22 = +[MSDKManagedDevice sharedInstance];
      [v22 stashCurrentWallpaperSettingsIfNeeded];

      v23 = +[MSDKManagedDevice sharedInstance];
      [v23 initializeAppSwitcherContent];
    }
  }
}

- (BOOL)handleIdleTimerDidWarn
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDScreenSaverManager handleIdleTimerDidWarn]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s get called.", &v5, 0xCu);
  }

  return [(MSDScreenSaverManager *)self shouldHandleIdleHandler];
}

- (BOOL)handleIdleTimerDidExpire
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[MSDScreenSaverManager handleIdleTimerDidExpire]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s get called.", buf, 0xCu);
  }

  shouldHandleIdleHandler = [(MSDScreenSaverManager *)self shouldHandleIdleHandler];
  if (shouldHandleIdleHandler)
  {
    workQueue = [(MSDScreenSaverManager *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_62AC;
    block[3] = &unk_185D0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  return shouldHandleIdleHandler;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout
{
  layoutCopy = layout;
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6368;
  v8[3] = &unk_187D0;
  v9 = layoutCopy;
  selfCopy = self;
  v7 = layoutCopy;
  dispatch_async(workQueue, v8);
}

- (void)assertionWasAcquired:(id)acquired
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Backlight assertion was acquired!", v4, 2u);
  }
}

- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error
{
  errorCopy = error;
  v5 = screenSaverLogHandle(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_C3D4(errorCopy, v5);
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = [installCopy countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v23)
  {
    v6 = *v27;
    v22 = v25;
    *&v5 = 138543362;
    v21 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(installCopy);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        bundleIdentifier = [v8 bundleIdentifier];
        if (([bundleIdentifier isEqualToString:@"com.apple.ist.demoloop"] & 1) == 0)
        {
          bundleIdentifier2 = [v8 bundleIdentifier];
          if (([bundleIdentifier2 isEqualToString:@"com.apple.ist.windward"] & 1) == 0)
          {
            bundleIdentifier3 = [v8 bundleIdentifier];
            if (![bundleIdentifier3 isEqualToString:@"com.apple.ist.DemoDiscoveryApp"])
            {
              [v8 bundleIdentifier];
              v16 = v6;
              v18 = v17 = installCopy;
              v19 = [v18 isEqualToString:@"com.retailtech.arkenstone"];

              installCopy = v17;
              v6 = v16;

              if ((v19 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_12;
            }
          }
        }

LABEL_12:
        v13 = screenSaverLogHandle(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier4 = [v8 bundleIdentifier];
          *buf = v21;
          v31 = bundleIdentifier4;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: %{public}@ app installed", buf, 0xCu);
        }

        workQueue = [(MSDScreenSaverManager *)self workQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        v25[0] = sub_6B6C;
        v25[1] = &unk_187D0;
        v25[2] = self;
        v25[3] = v8;
        dispatch_async(workQueue, block);

LABEL_15:
        v7 = v7 + 1;
      }

      while (v23 != v7);
      v20 = [installCopy countByEnumeratingWithState:&v26 objects:v32 count:16];
      v23 = v20;
    }

    while (v20);
  }
}

- (BOOL)isRetailDeviceContentUpdating
{
  screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
  if ([screenSaverAppID isEqualToString:@"com.apple.ist.windward"])
  {
  }

  else
  {
    screenSaverAppID2 = [(MSDScreenSaverManager *)self screenSaverAppID];
    v5 = [screenSaverAppID2 isEqualToString:@"com.apple.ist.DemoDiscoveryApp"];

    if (!v5)
    {
      return 0;
    }
  }

  getDemoMode = [(MSDScreenSaverManager *)self getDemoMode];
  return getDemoMode == 2 || getDemoMode == 4;
}

- (BOOL)shouldHandleIdleHandler
{
  v3 = BYSetupAssistantNeedsToRun();
  if (v3)
  {
    v4 = screenSaverLogHandle(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Buddy is still running, will not launch screen saver.", v6, 2u);
    }

    return 0;
  }

  else
  {

    return [(MSDScreenSaverManager *)self shouldSetupIdleHandler];
  }
}

- (BOOL)shouldSetupIdleHandler
{
  getDemoMode = [(MSDScreenSaverManager *)self getDemoMode];
  result = 1;
  if (getDemoMode && getDemoMode != 5)
  {
    isRetailDeviceContentUpdating = [(MSDScreenSaverManager *)self isRetailDeviceContentUpdating];
    if (isRetailDeviceContentUpdating)
    {
      return 1;
    }

    else
    {
      v6 = screenSaverLogHandle(isRetailDeviceContentUpdating);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
        v8[0] = 67109378;
        v8[1] = getDemoMode;
        v9 = 2114;
        v10 = screenSaverAppID;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Device in mode %d, screensaver: %{public}@, will not launch screen saver.", v8, 0x12u);
      }

      return 0;
    }
  }

  return result;
}

- (void)handleApplicationStateChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6EA0;
  v7[3] = &unk_187D0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

- (void)handleStoreHourSettingsChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_70B8;
  v7[3] = &unk_187D0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

- (BOOL)loadScreenSaverConfig
{
  getStoreHours = [(MSDScreenSaverManager *)self getStoreHours];
  getLastSettingsUpdatedTime = [(MSDScreenSaverManager *)self getLastSettingsUpdatedTime];
  storeHourSettings = [(MSDScreenSaverManager *)self storeHourSettings];
  if (storeHourSettings)
  {
    v6 = storeHourSettings;
    lastSettingsUpdated = [(MSDScreenSaverManager *)self lastSettingsUpdated];
    if (lastSettingsUpdated)
    {
      v8 = lastSettingsUpdated;
      storeHourSettings2 = [(MSDScreenSaverManager *)self storeHourSettings];
      if ([storeHourSettings2 isEqualToArray:getStoreHours])
      {
        lastSettingsUpdated2 = [(MSDScreenSaverManager *)self lastSettingsUpdated];
        v11 = [lastSettingsUpdated2 isEqualToDate:getLastSettingsUpdatedTime];

        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
  [storeHoursManager updateStoreHours:getStoreHours lastSettingsUpdatedDate:getLastSettingsUpdatedTime];

  [(MSDScreenSaverManager *)self setStoreHourSettings:getStoreHours];
  [(MSDScreenSaverManager *)self setLastSettingsUpdated:getLastSettingsUpdatedTime];
LABEL_9:
  storeHoursManager2 = [(MSDScreenSaverManager *)self storeHoursManager];
  evaluateStoreStatusAgainstCurrentTime = [storeHoursManager2 evaluateStoreStatusAgainstCurrentTime];

  return evaluateStoreStatusAgainstCurrentTime;
}

- (void)handleSpringBoardLaunch
{
  if ([(MSDScreenSaverManager *)self turnOffDisplayAtNight])
  {
    getLastAutoRebootTime = [(MSDScreenSaverManager *)self getLastAutoRebootTime];
    [(MSDScreenSaverManager *)self loadScreenSaverConfig];
    storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
    if (([storeHoursManager isStoreOpenNow] & 1) != 0 || !getLastAutoRebootTime || (objc_msgSend(getLastAutoRebootTime, "timeIntervalSinceNow"), v5 <= -180.0))
    {
    }

    else
    {
      screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
      v7 = [screenSaverAppID isEqualToString:@"com.apple.ist.demoloop"];

      if (v7)
      {
        v9 = screenSaverLogHandle(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Channel device auto-rebooted during close hour, will not launch screensaver.", buf, 2u);
        }

        [(MSDScreenSaverManager *)self stopScreenSaver];
        return;
      }
    }
  }

  shouldHandleIdleHandler = [(MSDScreenSaverManager *)self shouldHandleIdleHandler];
  if (shouldHandleIdleHandler)
  {
    v11 = screenSaverLogHandle(shouldHandleIdleHandler);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Launching screen saver right after system boot.", v12, 2u);
    }

    [(MSDScreenSaverManager *)self launchScreenSaver];
  }
}

- (void)launchSpringBoard
{
  v2 = objc_alloc_init(FBSOpenApplicationService);
  v3 = screenSaverLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: launching SpringBoard.", v6, 2u);
  }

  v7 = FBSOpenApplicationOptionKeyUnlockDevice;
  v8 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [FBSOpenApplicationOptions optionsWithDictionary:v4];

  [v2 openApplication:@"com.apple.springboard" withOptions:v5 completion:&stru_18860];
}

- (void)launchScreenSaver
{
  v3 = objc_alloc_init(FBSOpenApplicationService);
  screenSaverRunning = [(MSDScreenSaverManager *)self screenSaverRunning];
  if (screenSaverRunning)
  {
    goto LABEL_13;
  }

  v5 = screenSaverLogHandle(screenSaverRunning);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "StoreDemo plugin: launching screen saver.", v21, 2u);
  }

  v27 = FBSOpenApplicationOptionKeyUnlockDevice;
  v28 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v25[0] = SBSOpenApplicationOptionKeyLaunchBundleIdentifiers;
    screenSaverAppID = [(MSDScreenSaverManager *)self screenSaverAppID];
    v24 = screenSaverAppID;
    v11 = [NSArray arrayWithObjects:&v24 count:1];
    v26[0] = v11;
    v26[1] = @"[A<center,maximized>]";
    v25[1] = SBSOpenApplicationOptionKeyWindowingFormat;
    v25[2] = FBSOpenApplicationOptionKeyLaunchIntent;
    v26[2] = &off_19430;
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v7 addEntriesFromDictionary:v12];
  }

  screenSaverAppID2 = [(MSDScreenSaverManager *)self screenSaverAppID];
  if ([screenSaverAppID2 isEqualToString:@"com.apple.ist.windward"])
  {

LABEL_9:
    v22 = FBSOpenApplicationOptionKeyPayloadURL;
    v16 = [NSURL URLWithString:@"msdss://"];
    v23 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v7 addEntriesFromDictionary:v17];

    goto LABEL_10;
  }

  screenSaverAppID3 = [(MSDScreenSaverManager *)self screenSaverAppID];
  v15 = [screenSaverAppID3 isEqualToString:@"com.apple.ist.DemoDiscoveryApp"];

  if (v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  v18 = [FBSOpenApplicationOptions optionsWithDictionary:v7];
  v19 = screenSaverLogHandle(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_C46C(v7, v19);
  }

  screenSaverAppID4 = [(MSDScreenSaverManager *)self screenSaverAppID];
  [v3 openApplication:screenSaverAppID4 withOptions:v18 completion:&stru_18880];

LABEL_13:
}

- (id)applicationStateString:(unsigned __int8)string withVisibility:(BOOL)visibility
{
  if (string <= 1)
  {
    if (!string)
    {
      string = @"0 - RBSTaskStateUnknown";
      goto LABEL_16;
    }

    if (string == 1)
    {
      string = @"1 - RBSTaskStateNone";
      goto LABEL_16;
    }
  }

  else
  {
    switch(string)
    {
      case 2u:
        string = @"2 - RBSTaskStateRunningUnknown";
        goto LABEL_16;
      case 3u:
        string = @"3 - RBSTaskStateRunningSuspended";
        goto LABEL_16;
      case 4u:
        if (visibility)
        {
          v4 = @"(Foreground)";
        }

        else
        {
          v4 = @"(Background)";
        }

        string = [@"4 - RBSTaskStateRunningScheduled" stringByAppendingString:v4];
        goto LABEL_16;
    }
  }

  string = [NSString stringWithFormat:@"%d - StateUnknown", visibility, string];
LABEL_16:

  return string;
}

- (void)screenSaverStopped
{
  if ([(MSDScreenSaverManager *)self screenSaverRunning])
  {
    v3 = +[NSDate now];
    [(MSDScreenSaverManager *)self setSessionStartTime:v3];

    timer = [(MSDScreenSaverManager *)self timer];

    if (timer)
    {
      timer2 = [(MSDScreenSaverManager *)self timer];
      userInfo = [timer2 userInfo];
      v7 = [userInfo objectForKey:@"LaunchScreenSaver"];

      if (v7 && (v8 = [v7 BOOLValue], v8))
      {
        v9 = screenSaverLogHandle(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Timer will be kept alive since its purpose is to relaunch screen saver later.", buf, 2u);
        }
      }

      else
      {
        v10 = screenSaverLogHandle(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Timer will be canceled because screen saver stopped.", v12, 2u);
        }

        timer3 = [(MSDScreenSaverManager *)self timer];
        [timer3 invalidate];

        [(MSDScreenSaverManager *)self setTimer:0];
      }
    }
  }

  [(MSDScreenSaverManager *)self setScreenSaverRunning:0];
}

- (void)screenSaverStarted
{
  if (![(MSDScreenSaverManager *)self screenSaverRunning])
  {
    [(MSDScreenSaverManager *)self setScreenSaverRunning:1];
    sessionStartTime = [(MSDScreenSaverManager *)self sessionStartTime];

    if (sessionStartTime)
    {
      v4 = +[MSDKManagedDevice sharedInstance];
      sessionStartTime2 = [(MSDScreenSaverManager *)self sessionStartTime];
      v6 = +[NSDate now];
      [v4 collectAppUsageWithSessionStart:sessionStartTime2 andEnd:v6];
    }

    isRetailDeviceContentUpdating = [(MSDScreenSaverManager *)self isRetailDeviceContentUpdating];
    if ((isRetailDeviceContentUpdating & 1) != 0 || (isRetailDeviceContentUpdating = [(MSDScreenSaverManager *)self turnOffDisplayAtNight], !isRetailDeviceContentUpdating))
    {
      screenSaverShouldRunUntil = screenSaverLogHandle(isRetailDeviceContentUpdating);
      if (os_log_type_enabled(screenSaverShouldRunUntil, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, screenSaverShouldRunUntil, OS_LOG_TYPE_DEFAULT, "DemoUpdate on retail device, will run Pricing app till reboot (or it get killed).", buf, 2u);
      }
    }

    else
    {
      [(MSDScreenSaverManager *)self loadScreenSaverConfig];
      storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
      screenSaverShouldRunUntil = [storeHoursManager screenSaverShouldRunUntil];

      timeIntervalSinceNow = [screenSaverShouldRunUntil timeIntervalSinceNow];
      v12 = v11;
      v13 = screenSaverLogHandle(timeIntervalSinceNow);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        toString = [screenSaverShouldRunUntil toString];
        *buf = 134218242;
        v23 = v12;
        v24 = 2114;
        v25 = toString;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "The app should run for %td seconds (till %{public}@).", buf, 0x16u);
      }

      v15 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.StoreDemoPlugin.stopScreenSaver" serviceIdentifier:self target:"stopScreenSaverTimerFired" selector:0 userInfo:v12];
      [(MSDScreenSaverManager *)self setTimer:v15];

      timer = [(MSDScreenSaverManager *)self timer];
      [timer setMinimumEarlyFireProportion:1.0];

      timer2 = [(MSDScreenSaverManager *)self timer];
      workQueue = [(MSDScreenSaverManager *)self workQueue];
      [timer2 scheduleInQueue:workQueue];
    }

    v19 = dispatch_time(0, 5000000000);
    workQueue2 = [(MSDScreenSaverManager *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8118;
    block[3] = &unk_185D0;
    block[4] = self;
    dispatch_after(v19, workQueue2, block);
  }
}

- (void)stopScreenSaverTimerFired
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Timer to stop screen saver fired.", v4, 2u);
  }

  [(MSDScreenSaverManager *)self stopScreenSaver];
}

- (void)stopScreenSaver
{
  [(MSDScreenSaverManager *)self loadScreenSaverConfig];
  storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
  screenSaverShouldLaunchAt = [storeHoursManager screenSaverShouldLaunchAt];

  [screenSaverShouldLaunchAt timeIntervalSinceNow];
  v6 = v5;
  timer = [(MSDScreenSaverManager *)self timer];

  if (timer)
  {
    timer2 = [(MSDScreenSaverManager *)self timer];
    [timer2 invalidate];
  }

  v9 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.StoreDemoPlugin.launchScreenSaver" serviceIdentifier:self target:"launchScreenSaverTimerFired" selector:&off_19448 userInfo:v6];
  [(MSDScreenSaverManager *)self setTimer:v9];

  timer3 = [(MSDScreenSaverManager *)self timer];
  [timer3 setMinimumEarlyFireProportion:1.0];

  timer4 = [(MSDScreenSaverManager *)self timer];
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  [timer4 scheduleInQueue:workQueue];

  v14 = screenSaverLogHandle(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    toString = [screenSaverShouldLaunchAt toString];
    v16 = 138543362;
    v17 = toString;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Timer scheduled to run screen saver at %{public}@", &v16, 0xCu);
  }

  dispatch_async(&_dispatch_main_q, &stru_188C0);
}

- (void)launchScreenSaverTimerFired
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Timer to launch screen saver fired.", v4, 2u);
  }

  [(MSDScreenSaverManager *)self launchScreenSaver];
}

- (void)setupAlwaysOnTimeToggleTimer
{
  [(MSDScreenSaverManager *)self loadScreenSaverConfig];
  storeHoursManager = [(MSDScreenSaverManager *)self storeHoursManager];
  isStoreOpenNow = [storeHoursManager isStoreOpenNow];

  storeHoursManager2 = [(MSDScreenSaverManager *)self storeHoursManager];
  nextStoreOpenDate = [storeHoursManager2 nextStoreOpenDate];

  storeHoursManager3 = [(MSDScreenSaverManager *)self storeHoursManager];
  nextStoreClosedDate = [storeHoursManager3 nextStoreClosedDate];

  [nextStoreOpenDate timeIntervalSinceNow];
  v10 = v9;
  timeIntervalSinceNow = [nextStoreClosedDate timeIntervalSinceNow];
  if (v10 <= 0.0 || v12 <= 0.0)
  {
    v15 = screenSaverLogHandle(timeIntervalSinceNow);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_C4E4(v15);
    }

    v13 = 0;
    v14 = 0;
    isStoreOpenNow = 1;
  }

  else
  {
    v13 = v10 < 60.0;
    v14 = v12 < 60.0;
  }

  v16 = screenSaverLogHandle(timeIntervalSinceNow);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 67109632;
    *v31 = isStoreOpenNow;
    *&v31[4] = 1024;
    *&v31[6] = v13;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = v14;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Setting up AOT toggle timer: Store open=%{BOOL}d, Soon open=%{BOOL}d, Soon close=%{BOOL}d", &v30, 0x14u);
  }

  if (isStoreOpenNow)
  {
    if (v14)
    {
LABEL_11:
      v17 = [nextStoreOpenDate dateByAddingTimeInterval:-30.0];
      [(MSDScreenSaverManager *)self acquireDisableAlwaysOnTimeAssertion];
      goto LABEL_14;
    }
  }

  else if (!v13)
  {
    goto LABEL_11;
  }

  v17 = [nextStoreClosedDate dateByAddingTimeInterval:-30.0];
  [(MSDScreenSaverManager *)self releaseDisableAlwaysOnTimeAssertion];
LABEL_14:
  timeIntervalSinceNow2 = [v17 timeIntervalSinceNow];
  v20 = v19;
  if (v19 <= 0.0)
  {
    v21 = screenSaverLogHandle(timeIntervalSinceNow2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "AOT toggle timer interval is negative. Use default value of 3600 seconds.", &v30, 2u);
    }

    v20 = 3600.0;
  }

  v22 = screenSaverLogHandle(timeIntervalSinceNow2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    toString = [v17 toString];
    v30 = 134218242;
    *v31 = v20;
    *&v31[8] = 2114;
    v32 = toString;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "AOT toggle timer will fire in %f seconds (at %{public}@).", &v30, 0x16u);
  }

  aotTimer = [(MSDScreenSaverManager *)self aotTimer];

  if (aotTimer)
  {
    aotTimer2 = [(MSDScreenSaverManager *)self aotTimer];
    [aotTimer2 invalidate];

    [(MSDScreenSaverManager *)self setAotTimer:0];
  }

  v26 = [[PCPersistentTimer alloc] initWithTimeInterval:@"com.apple.StoreDemoPlugin.AlwaysOnTimeToggle" serviceIdentifier:self target:"handleAlwaysOnTimeToggleTimerFired:" selector:0 userInfo:v20];
  [(MSDScreenSaverManager *)self setAotTimer:v26];

  aotTimer3 = [(MSDScreenSaverManager *)self aotTimer];
  [aotTimer3 setMinimumEarlyFireProportion:1.0];

  aotTimer4 = [(MSDScreenSaverManager *)self aotTimer];
  workQueue = [(MSDScreenSaverManager *)self workQueue];
  [aotTimer4 scheduleInQueue:workQueue];
}

- (void)handleAlwaysOnTimeToggleTimerFired:(id)fired
{
  v4 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AOT toggle timer fired to toggle AOT!", v5, 2u);
  }

  [(MSDScreenSaverManager *)self launchSpringBoard];
  [(MSDScreenSaverManager *)self setupAlwaysOnTimeToggleTimer];
}

- (void)acquireDisableAlwaysOnTimeAssertion
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Acquiring backlight assertion for disabling always-on time.", v10, 2u);
  }

  backlightAssertion = [(MSDScreenSaverManager *)self backlightAssertion];

  if (backlightAssertion)
  {
    v6 = screenSaverLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Backlight assertion is already acquired!", v10, 2u);
    }
  }

  else
  {
    v7 = +[BLSDisableAlwaysOnAttribute disableAlwaysOn];
    v11[0] = v7;
    v8 = +[BLSValidWhenBacklightInactiveAttribute ignoreWhenBacklightInactivates];
    v11[1] = v8;
    v6 = [NSArray arrayWithObjects:v11 count:2];

    v9 = [BLSAssertion acquireWithExplanation:@"Store Demo - Night Time Disable" observer:self attributes:v6];
    [(MSDScreenSaverManager *)self setBacklightAssertion:v9];
  }
}

- (void)releaseDisableAlwaysOnTimeAssertion
{
  v3 = screenSaverLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Releasing backlight assertion for disabling always-on time.", buf, 2u);
  }

  backlightAssertion = [(MSDScreenSaverManager *)self backlightAssertion];

  if (backlightAssertion)
  {
    backlightAssertion2 = [(MSDScreenSaverManager *)self backlightAssertion];
    [backlightAssertion2 invalidate];

    [(MSDScreenSaverManager *)self setBacklightAssertion:0];
  }

  else
  {
    v7 = screenSaverLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Backlight assertion is already released!", v8, 2u);
    }
  }
}

- (int)getDemoMode
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (!preferencesFileExists)
  {
    return 0;
  }

  return [(MSDScreenSaverManager *)self readDemoMode];
}

- (id)getLastAutoRebootTime
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (preferencesFileExists)
  {
    readLastAutoReboot = [(MSDScreenSaverManager *)self readLastAutoReboot];
    v6 = readLastAutoReboot;
    if (readLastAutoReboot)
    {
      v7 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [readLastAutoReboot integerValue]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLastSettingsUpdatedTime
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (preferencesFileExists)
  {
    readLastSettingsUpdated = [(MSDScreenSaverManager *)self readLastSettingsUpdated];
    if (readLastSettingsUpdated && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = readLastSettingsUpdated;
    }

    else
    {
      v6 = +[NSDate distantPast];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getStoreHours
{
  v3 = +[MSDKManagedDevice sharedInstance];
  preferencesFileExists = [v3 preferencesFileExists];

  if (preferencesFileExists)
  {
    readHubSuppliedSettings = [(MSDScreenSaverManager *)self readHubSuppliedSettings];
    if (readHubSuppliedSettings && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [readHubSuppliedSettings objectForKey:@"StoreHours"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)readDemoMode
{
  v2 = +[MSDKManagedDevice sharedInstance];
  getDemoInstallState = [v2 getDemoInstallState];

  return getDemoInstallState;
}

- (id)readLastAutoReboot
{
  v2 = +[MSDKManagedDevice sharedInstance];
  v3 = [v2 readPreferencesFileObjectForKey:@"msd-last-auto-reboot"];

  return v3;
}

- (id)readLastSettingsUpdated
{
  v2 = +[MSDKManagedDevice sharedInstance];
  v3 = [v2 readPreferencesFileObjectForKey:@"LastSettingsUpdatedTime"];

  return v3;
}

- (id)readHubSuppliedSettings
{
  v2 = +[MSDKManagedDevice sharedInstance];
  v3 = [v2 readPreferencesFileObjectForKey:@"HubSuppliedSettings"];

  return v3;
}

- (BOOL)isInStandbyMode:(id)mode
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  elements = [mode elements];
  v4 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = SBSDisplayLayoutElementStandByIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        v10 = [identifier isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end