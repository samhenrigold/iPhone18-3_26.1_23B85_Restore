@interface FMDSecureLocationMonitor
- (FMDSecureLocationMonitor)init;
- (double)_clLocationAccuracyFromConfigValue:(id)value;
- (id)_createLocationManager;
- (id)_createLocationManagerForStewie;
- (id)_createLocationManagerWithQueue:(id)queue;
- (void)_publishHeartbeatIfNeeded;
- (void)_publishLocation:(id)location;
- (void)_publishLocationInfo:(id)info completion:(id)completion;
- (void)_publishPeriodicShallowIfNeeded:(id)needed;
- (void)_registerForOnDemandPublishRequest;
- (void)_registerForStewiePublishRequest;
- (void)_scheduleXPCActivity;
- (void)_unregisterFromOnDemandPublishRequest;
- (void)_unregisterFromStewiePublishRequest;
- (void)activeConfigChanged:(id)changed;
- (void)activeConfigExtended:(id)extended;
- (void)dealloc;
- (void)forcePublishOndemandLocationIfNeeded:(id)needed;
- (void)liteLocationPublishRequestNotification:(id)notification;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)publishLocationToStewie:(id)stewie;
- (void)publishOnDemandLocation:(id)location;
- (void)publishOneTimeShallowLocation:(id)location;
- (void)requestForcedShallowLocation;
- (void)startLocationMonitor:(id)monitor;
- (void)startLocationMonitorAfterRestart;
- (void)startLocationMonitorWithContext:(id)context completion:(id)completion;
- (void)startLocationMonitorWithContext:(id)context forcePublish:(BOOL)publish completion:(id)completion;
- (void)stopLocationMonitor:(id)monitor;
- (void)stopLocationMonitorWithContext:(id)context completion:(id)completion;
- (void)updateMonitorConfig:(id)config;
@end

@implementation FMDSecureLocationMonitor

- (FMDSecureLocationMonitor)init
{
  v21.receiver = self;
  v21.super_class = FMDSecureLocationMonitor;
  v2 = [(FMDSecureLocationMonitor *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.findmydevice.locationPublishQueue", 0);
    v4 = *(v2 + 18);
    *(v2 + 18) = v3;

    v5 = dispatch_queue_create("com.apple.findmydevice.forcePushOndemandLocationQueue", 0);
    v6 = *(v2 + 19);
    *(v2 + 19) = v5;

    v7 = dispatch_queue_create("com.apple.findmydevice.stewieLocationManagerQueue", 0);
    v8 = *(v2 + 20);
    *(v2 + 20) = v7;

    dispatch_queue_set_specific(*(v2 + 19), "com.apple.findmydevice.forcePublishQueueKey", "com.apple.findmydevice.forcePublishQueueKey", 0);
    v9 = objc_alloc_init(FMDSecureLocationConfigManager);
    v10 = *(v2 + 14);
    *(v2 + 14) = v9;

    [*(v2 + 14) setDelegate:v2];
    activeConfig = [*(v2 + 14) activeConfig];

    if (activeConfig)
    {
      v12 = [FMDSecureLocationPublisher alloc];
      activeConfig2 = [*(v2 + 14) activeConfig];
      v14 = [(FMDSecureLocationPublisher *)v12 initWithConfiguration:activeConfig2];
      v15 = *(v2 + 13);
      *(v2 + 13) = v14;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v16 = objc_alloc_init(SPSecureLocationsManager);
      v17 = *(v2 + 2);
      *(v2 + 2) = v16;
    }

    [v2 _registerForOnDemandPublishRequest];
    [v2 _registerForStewiePublishRequest];
    if (_os_feature_enabled_impl())
    {
      v18 = objc_alloc_init(_TtC13findmydeviced19FindMyLocateWrapper);
      v19 = *(v2 + 21);
      *(v2 + 21) = v18;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(FMDSecureLocationMonitor *)self _unregisterFromOnDemandPublishRequest];
  [(FMDSecureLocationMonitor *)self _unregisterFromStewiePublishRequest];
  v3.receiver = self;
  v3.super_class = FMDSecureLocationMonitor;
  [(FMDSecureLocationMonitor *)&v3 dealloc];
}

- (void)startLocationMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = sub_1000029E0(monitorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to start location monitors", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5750;
  block[3] = &unk_1002D0B08;
  objc_copyWeak(&v9, buf);
  block[4] = self;
  v8 = monitorCopy;
  v6 = monitorCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)startLocationMonitorWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_1000029E0(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext %@", &v10, 0xCu);
  }

  configManager = [(FMDSecureLocationMonitor *)self configManager];
  [configManager requestMonitorWithContext:contextCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)startLocationMonitorWithContext:(id)context forcePublish:(BOOL)publish completion:(id)completion
{
  publishCopy = publish;
  contextCopy = context;
  completionCopy = completion;
  v10 = sub_1000029E0(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = contextCopy;
    v21 = 1024;
    v22 = publishCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext %@ forcePublish %d", buf, 0x12u);
  }

  if (publishCopy)
  {
    objc_initWeak(buf, self);
    forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B6728;
    v16 = &unk_1002CD288;
    objc_copyWeak(&v18, buf);
    selfCopy = self;
    dispatch_async(forcePushOndemandLocationQueue, &v13);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v12 = [(FMDSecureLocationMonitor *)self configManager:v13];
  [v12 requestMonitorWithContext:contextCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)startLocationMonitorAfterRestart
{
  v3 = [FMPreferencesUtil integerForKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
  v4 = sub_1000029E0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "shouldStart secure locations %ld", &v11, 0xCu);
  }

  v5 = objc_alloc_init(FMDSecureLocationContext);
  v6 = [v5 setFindMyId:@"restart"];
  if ((v3 - 1) < 3)
  {
    v6 = [v5 setMode:**(&off_1002D0C98 + (v3 - 1))];
LABEL_6:
    v7 = sub_1000029E0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      mode = [v5 mode];
      v11 = 138412290;
      v12 = mode;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "starting location monitoring after restart with policy %@", &v11, 0xCu);
    }

    if (![(FMDSecureLocationMonitor *)self isRunning])
    {
      [(FMDSecureLocationMonitor *)self startLocationMonitorWithContext:v5 completion:&stru_1002D0B48];
    }

    goto LABEL_10;
  }

  if (v3 > 0)
  {
    goto LABEL_6;
  }

  isRunning = [(FMDSecureLocationMonitor *)self isRunning];
  if ((isRunning & 1) == 0)
  {
    v10 = sub_1000029E0(isRunning);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unregister previously scheduled activity, if any.", &v11, 2u);
    }

    xpc_activity_unregister("com.apple.findmydevice.secureLocationsCheck");
  }

LABEL_10:
}

- (void)stopLocationMonitorWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_1000029E0(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopLocationMonitorWithContext %@", &v10, 0xCu);
  }

  configManager = [(FMDSecureLocationMonitor *)self configManager];
  [configManager removeMonitorWithContext:contextCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)stopLocationMonitor:(id)monitor
{
  monitorCopy = monitor;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6C4C;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v8, &location);
  v7 = monitorCopy;
  v5 = monitorCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)_clLocationAccuracyFromConfigValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy isEqualToString:@"best"];
  if (v4)
  {
    v5 = kCLLocationAccuracyBest;
    v6 = @"kCLLocationAccuracyBest";
  }

  else
  {
    v4 = [valueCopy isEqualToString:@"navigation"];
    if (v4)
    {
      v5 = kCLLocationAccuracyBestForNavigation;
      v6 = @"kCLLocationAccuracyBestForNavigation";
    }

    else
    {
      v4 = [valueCopy isEqualToString:@"10meters"];
      if (v4)
      {
        v5 = kCLLocationAccuracyNearestTenMeters;
        v6 = @"kCLLocationAccuracyNearestTenMeters";
      }

      else
      {
        v5 = kCLLocationAccuracyHundredMeters;
        v4 = [valueCopy isEqualToString:@"100meters"];
        v6 = @"kCLLocationAccuracyHundredMeters";
        if ((v4 & 1) == 0)
        {
          v4 = [valueCopy isEqualToString:@"1kilometer"];
          if (v4)
          {
            v5 = kCLLocationAccuracyKilometer;
            v6 = @"kCLLocationAccuracyKilometer";
          }

          else
          {
            v4 = [valueCopy isEqualToString:@"3kilometers"];
            if (v4)
            {
              v6 = @"kCLLocationAccuracyThreeKilometers";
              v5 = kCLLocationAccuracyThreeKilometers;
            }
          }
        }
      }
    }
  }

  v7 = sub_1000029E0(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = valueCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: returning CL accuracy %@ for config value %@", &v9, 0x16u);
  }

  return v5;
}

- (void)_publishLocation:(id)location
{
  locationCopy = location;
  isLocationValid = [locationCopy isLocationValid];
  if (isLocationValid)
  {
    v6 = +[FMDRestrictedRegions sharedInstance];
    isRestrictedSKU = [v6 isRestrictedSKU];
    if (isRestrictedSKU)
    {
      v8 = sub_1000029E0(isRestrictedSKU);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_13;
      }

      *buf = 0;
      v9 = "SecureLocationMonitor - not publishing - restricted SKU";
      v10 = v8;
      v11 = 2;
    }

    else
    {
      locationInfo = [locationCopy locationInfo];
      latitude = [locationInfo latitude];
      [latitude doubleValue];
      v15 = v14;
      locationInfo2 = [locationCopy locationInfo];
      longitude = [locationInfo2 longitude];
      [longitude doubleValue];
      v19 = [v6 isRestrictedLocationWithLatitude:v15 longitude:v18];

      if (!v19)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1001B7470;
        v21[3] = &unk_1002CD478;
        v21[4] = self;
        v22 = locationCopy;
        _os_activity_initiate(&_mh_execute_header, "FMDSecureLocationMonitor.publishLocation", OS_ACTIVITY_FLAG_DEFAULT, v21);

        goto LABEL_13;
      }

      v8 = sub_1000029E0(v20);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 67109376;
      v24 = 0;
      v25 = 1024;
      v26 = 1;
      v9 = "SecureLocationMonitor - not publishing - restricted region. isRestrictedSKU %d isRestrictedLocation %d";
      v10 = v8;
      v11 = 14;
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_11;
  }

  v6 = sub_1000029E0(isLocationValid);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - not publishing - invalid location", buf, 2u);
  }

LABEL_13:
}

- (void)_publishLocationInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  convertToSecureLocationObject = [info convertToSecureLocationObject];
  if (_os_feature_enabled_impl())
  {
    findMyLocate = [(FMDSecureLocationMonitor *)self findMyLocate];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001B77EC;
    v16[3] = &unk_1002D0B98;
    v9 = v17;
    v17[0] = convertToSecureLocationObject;
    v17[1] = self;
    v10 = &v18;
    v18 = completionCopy;
    v11 = completionCopy;
    [findMyLocate publishLocation:convertToSecureLocationObject completionHandler:v16];
  }

  else
  {
    findMyLocate = [(FMDSecureLocationMonitor *)self secureLocationsManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001B7924;
    v13[3] = &unk_1002D0B98;
    v9 = v14;
    v14[0] = convertToSecureLocationObject;
    v14[1] = self;
    v10 = &v15;
    v15 = completionCopy;
    v12 = completionCopy;
    [findMyLocate publishLocation:convertToSecureLocationObject completion:v13];
  }
}

- (void)_publishHeartbeatIfNeeded
{
  lastPublishedTime = [(FMDSecureLocationMonitor *)self lastPublishedTime];

  lastPublishedTime2 = [(FMDSecureLocationMonitor *)self lastPublishedTime];
  [lastPublishedTime2 timeIntervalSinceNow];
  v6 = v5;
  configManager = [(FMDSecureLocationMonitor *)self configManager];
  activeConfig = [configManager activeConfig];
  [activeConfig heartbeatPublish];
  v10 = v9;

  v12 = sub_1000029E0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (lastPublishedTime)
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    lastPublishedTime3 = [(FMDSecureLocationMonitor *)self lastPublishedTime];
    [lastPublishedTime3 timeIntervalSinceNow];
    v16 = -v15;
    configManager2 = [(FMDSecureLocationMonitor *)self configManager];
    activeConfig2 = [configManager2 activeConfig];
    [activeConfig2 heartbeatPublish];
    *buf = 138412802;
    v23 = v13;
    v24 = 2048;
    v25 = v16;
    v26 = 2048;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Heartbeat isfirstpublish %@. Time since last publish %f configLimit %f", buf, 0x20u);
  }

  lastPublishedTime4 = [(FMDSecureLocationMonitor *)self lastPublishedTime];

  if (!lastPublishedTime4 || v10 <= -v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B7C64;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_publishPeriodicShallowIfNeeded:(id)needed
{
  neededCopy = needed;
  configManager = [(FMDSecureLocationMonitor *)self configManager];
  v6 = [configManager configForPolicy:kFMDSecureLocationModeProactiveShallow];

  v7 = +[NSDate date];
  lastShallowPublishTime = [(FMDSecureLocationMonitor *)self lastShallowPublishTime];
  if (!lastShallowPublishTime || (v9 = lastShallowPublishTime, -[FMDSecureLocationMonitor lastShallowPublishTime](self, "lastShallowPublishTime"), v10 = objc_claimAutoreleasedReturnValue(), [v10 timeIntervalSinceNow], v12 = -v11, objc_msgSend(v6, "minTimeBetweenPublish"), v14 = v13, v10, v9, v14 <= v12))
  {
    v15 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:neededCopy];
    v16 = [FMDSecureLocationInfo alloc];
    motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
    lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
    v19 = [(FMDSecureLocationInfo *)v16 initWithLocation:v15 motion:lastKnownDeviceMotion publishReason:6];

    [(FMDSecureLocationMonitor *)self _publishLocation:v19];
    v20 = sub_1000029E0([(FMDSecureLocationMonitor *)self setLastShallowPublishTime:v7]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published periodic shallow during live session", v21, 2u);
    }
  }
}

- (void)publishOnDemandLocation:(id)location
{
  locationCopy = location;
  locationPublishQueue = [(FMDSecureLocationMonitor *)self locationPublishQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B7FBC;
  v7[3] = &unk_1002CE228;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(locationPublishQueue, v7);
}

- (void)_registerForOnDemandPublishRequest
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1001B8220, @"com.apple.icloud.searchparty.secureLocations.OnDemandPublishRequest", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = sub_1000029E0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Registered for ondemand publish notification", v6, 2u);
  }
}

- (void)_unregisterFromOnDemandPublishRequest
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.icloud.searchparty.secureLocations.OnDemandPublishRequest", 0);
}

- (void)publishLocationToStewie:(id)stewie
{
  stewieLocationManager = [(FMDSecureLocationMonitor *)self stewieLocationManager];

  if (!stewieLocationManager)
  {
    v6 = sub_1000029E0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ No location manager - creating one", buf, 0xCu);
    }

    _createLocationManagerForStewie = [(FMDSecureLocationMonitor *)self _createLocationManagerForStewie];
    [(FMDSecureLocationMonitor *)self setStewieLocationManager:_createLocationManagerForStewie];
  }

  stewieLocationManager2 = [(FMDSecureLocationMonitor *)self stewieLocationManager];

  if (stewieLocationManager2)
  {
    locationPublishQueue = [(FMDSecureLocationMonitor *)self locationPublishQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B8498;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(locationPublishQueue, block);
  }

  else
  {
    v11 = sub_1000029E0(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ No location manager available", buf, 0xCu);
    }
  }
}

- (void)_registerForStewiePublishRequest
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"liteLocationPublishRequestNotification:" name:@"com.apple.icloud.searchparty.secureLocations.liteLocationPublishRequest" object:0];

    v6 = sub_1000029E0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"stewie:";
      v7 = "SecureLocationMonitor: %@ Registered for publish notification";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
    }
  }

  else
  {
    v6 = sub_1000029E0(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"stewie:";
      v7 = "SecureLocationMonitor: %@ feature disabled. Not registering for notification";
      goto LABEL_6;
    }
  }
}

- (void)_unregisterFromStewiePublishRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.icloud.searchparty.secureLocations.liteLocationPublishRequest" object:0];

  v5 = sub_1000029E0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"stewie:";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ Unregistered for publish notification", &v6, 0xCu);
  }
}

- (void)liteLocationPublishRequestNotification:(id)notification
{
  v4 = _os_feature_enabled_impl();
  v5 = v4;
  v6 = sub_1000029E0(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ Received publish request", &v8, 0xCu);
    }

    [(FMDSecureLocationMonitor *)self publishLocationToStewie:&stru_1002D0BB8];
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ feature disabled", &v8, 0xCu);
    }
  }
}

- (id)_createLocationManagerForStewie
{
  stewieLocationManagerQueue = [(FMDSecureLocationMonitor *)self stewieLocationManagerQueue];
  v4 = [(FMDSecureLocationMonitor *)self _createLocationManagerWithQueue:stewieLocationManagerQueue];

  [v4 setDelegate:self];
  [v4 setDesiredAccuracy:kCLLocationAccuracyBest];

  return v4;
}

- (id)_createLocationManager
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v3 = [[CLLocationManager alloc] initWithEffectiveBundle:v2];

  return v3;
}

- (id)_createLocationManagerWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v6 = [[CLLocationManager alloc] initWithEffectiveBundle:v5 delegate:self onQueue:queueCopy];

  return v6;
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  v6 = sub_1000029E0(visitCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [visitCopy coordinate];
    v8 = v7;
    [visitCopy coordinate];
    v28 = 138412803;
    v29 = visitCopy;
    v30 = 2049;
    v31 = v8;
    v32 = 2049;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didVisit %@ %{private}f %{private}f", &v28, 0x20u);
  }

  locationPublisher = [(FMDSecureLocationMonitor *)self locationPublisher];

  if (locationPublisher)
  {
    hasArrivalDate = [visitCopy hasArrivalDate];
    if (hasArrivalDate && (hasArrivalDate = [visitCopy hasDepartureDate], (hasArrivalDate & 1) == 0))
    {
      v13 = [CLLocation alloc];
      [visitCopy coordinate];
      v15 = v14;
      v17 = v16;
      [visitCopy horizontalAccuracy];
      v19 = v18;
      v20 = +[NSDate date];
      v12 = [v13 initWithCoordinate:v20 altitude:v15 horizontalAccuracy:v17 verticalAccuracy:0.0 timestamp:{v19, 0.0}];

      v21 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v12];
      v22 = [FMDSecureLocationInfo alloc];
      motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
      lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
      v25 = [(FMDSecureLocationInfo *)v22 initWithLocation:v21 motion:lastKnownDeviceMotion publishReason:2];

      v26 = +[FMSystemInfo sharedInstance];
      LODWORD(lastKnownDeviceMotion) = [v26 isInternalBuild];

      if (lastKnownDeviceMotion && [FMPreferencesUtil BOOLForKey:@"PublishVisitImmediately" inDomain:kFMDNotBackedUpPrefDomain])
      {
        [(FMDSecureLocationMonitor *)self _publishLocation:v25];
      }

      locationPublisher2 = [(FMDSecureLocationMonitor *)self locationPublisher];
      [locationPublisher2 processUpdatedLocation:v25];
    }

    else
    {
      v12 = sub_1000029E0(hasArrivalDate);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Received visit departure. Ignoring", &v28, 2u);
      }
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v8 = sub_1000029E0(locationsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D838(v8);
  }

  if (![locationsCopy count])
  {
    lastObject2 = sub_1000029E0(0);
    if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor didUpdateLocations but location count is zero", buf, 2u);
    }

    goto LABEL_57;
  }

  bystanderLocationManager = [(FMDSecureLocationMonitor *)self bystanderLocationManager];

  if (bystanderLocationManager == managerCopy)
  {
    v23 = locationsCopy;
    configManager = [(FMDSecureLocationMonitor *)self configManager];
    activeConfig = [configManager activeConfig];
    policyName = [activeConfig policyName];
    v27 = [policyName isEqualToString:kFMDSecureLocationModeOwnerProactive];

    if (v27)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 10;
    }

    else
    {
      configManager2 = [(FMDSecureLocationMonitor *)self configManager];
      activeConfig2 = [configManager2 activeConfig];
      policyName2 = [activeConfig2 policyName];
      v31 = [policyName2 isEqualToString:kFMDSecureLocationModeBackgroundProactive];

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v31)
      {
        v21 = 12;
      }

      else
      {
        v21 = 4;
      }
    }

    locationsCopy = v23;
  }

  else
  {
    slcLocationManager = [(FMDSecureLocationMonitor *)self slcLocationManager];

    if (slcLocationManager == managerCopy)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v17 = 1;
      v21 = 1;
    }

    else
    {
      heartbeatLocationManager = [(FMDSecureLocationMonitor *)self heartbeatLocationManager];

      if (heartbeatLocationManager == managerCopy)
      {
        configManager3 = [(FMDSecureLocationMonitor *)self configManager];
        activeConfig3 = [configManager3 activeConfig];
        policyName3 = [activeConfig3 policyName];
        v35 = locationsCopy;
        v36 = [policyName3 isEqualToString:kFMDSecureLocationModeOwnerProactive];

        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v37 = v36 == 0;
        locationsCopy = v35;
        if (v37)
        {
          v21 = 3;
        }

        else
        {
          v21 = 9;
        }
      }

      else
      {
        ondemandLocationManager = [(FMDSecureLocationMonitor *)self ondemandLocationManager];

        if (ondemandLocationManager == managerCopy)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 5;
        }

        else
        {
          liveLocationManager = [(FMDSecureLocationMonitor *)self liveLocationManager];

          if (liveLocationManager == managerCopy)
          {
            v17 = 0;
            v18 = 0;
            v20 = 0;
            v19 = 1;
            v21 = 7;
          }

          else
          {
            shallowLocationManager = [(FMDSecureLocationMonitor *)self shallowLocationManager];

            if (shallowLocationManager == managerCopy)
            {
              [managerCopy setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = 1;
              v21 = 6;
            }

            else
            {
              stewieLocationManager = [(FMDSecureLocationMonitor *)self stewieLocationManager];

              if (stewieLocationManager == managerCopy)
              {
                v38 = sub_1000029E0(v16);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor didUpdateLocations for satellite location", buf, 2u);
                }

                v17 = 0;
                v19 = 0;
                v20 = 0;
                v18 = 1;
                v21 = 8;
              }

              else
              {
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 0;
                v21 = 0;
              }
            }
          }
        }
      }
    }
  }

  lastObject = [locationsCopy lastObject];
  [(FMDSecureLocationMonitor *)self forcePublishOndemandLocationIfNeeded:lastObject];

  v41 = sub_1000029E0(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D87C(v21, v41);
  }

  locationPublisher = [(FMDSecureLocationMonitor *)self locationPublisher];

  if (locationPublisher)
  {
    v44 = v18;
    v70 = v20;
    v71 = locationsCopy;
    v72 = managerCopy;
    v45 = v19;
    lastObject2 = [locationsCopy lastObject];
    v46 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:lastObject2];
    v47 = [FMDSecureLocationInfo alloc];
    motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
    lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
    v50 = [(FMDSecureLocationInfo *)v47 initWithLocation:v46 motion:lastKnownDeviceMotion publishReason:v21];

    if (v17)
    {
      configManager4 = [(FMDSecureLocationMonitor *)self configManager];
      v53 = [configManager4 configForPolicy:kFMDSecureLocationModeProactive];

      timestamp = [lastObject2 timestamp];
      [timestamp timeIntervalSinceNow];
      v56 = -v55;

      minTimeBetweenPublish = [v53 minTimeBetweenPublish];
      if (v58 < v56)
      {
        v59 = sub_1000029E0(minTimeBetweenPublish);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - we received a very old location. Lets ignore it and request an on demand publish", buf, 2u);
        }

        [(FMDSecureLocationMonitor *)self publishOnDemandLocation:&stru_1002D0BD8];
        goto LABEL_38;
      }

      v63 = +[FMSystemInfo sharedInstance];
      isInternalBuild = [v63 isInternalBuild];

      if (isInternalBuild && [FMPreferencesUtil BOOLForKey:@"PublishSLCImmediately" inDomain:kFMDNotBackedUpPrefDomain])
      {
        [(FMDSecureLocationMonitor *)self _publishLocation:v50];
LABEL_38:
        managerCopy = v72;

        locationsCopy = v71;
LABEL_57:

        goto LABEL_58;
      }

      v19 = v45;
      managerCopy = v72;
    }

    else
    {
      v19 = v45;
      managerCopy = v72;
      if (v44)
      {
        v60 = sub_1000029E0(v51);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = @"stewie:";
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ location request - sending to publish immediately", buf, 0xCu);
        }

        [(FMDSecureLocationMonitor *)self _publishLocation:v50];
        stewieLocationManager2 = [(FMDSecureLocationMonitor *)self stewieLocationManager];
        [stewieLocationManager2 stopUpdatingLocation];

        stewieLocationManager3 = [(FMDSecureLocationMonitor *)self stewieLocationManager];
        [stewieLocationManager3 setDelegate:0];

        [(FMDSecureLocationMonitor *)self setStewieLocationManager:0];
      }
    }

    locationPublisher2 = [(FMDSecureLocationMonitor *)self locationPublisher];
    [locationPublisher2 processUpdatedLocation:v50];

    v20 = v70;
    locationsCopy = v71;
  }

  else
  {
    lastObject2 = sub_1000029E0(v43);
    if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - anomalous condition - received locations but no publisher setup", buf, 2u);
    }
  }

  if ((v19 | v20) == 1)
  {
    configManager5 = [(FMDSecureLocationMonitor *)self configManager];
    lastObject3 = configManager5;
    if (v19)
    {
      lastObject2 = [configManager5 expirationTimeFor:kFMDSecureLocationModeLive];

      lastObject3 = [locationsCopy lastObject];
      [(FMDSecureLocationMonitor *)self _publishPeriodicShallowIfNeeded:lastObject3];
    }

    else
    {
      lastObject2 = [configManager5 expirationTimeFor:kFMDSecureLocationModeProactiveShallow];
    }

    if (lastObject2)
    {
      v68 = +[NSDate date];
      v69 = [v68 compare:lastObject2];

      if (v69 == 1)
      {
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_1001B95C4;
        v73[3] = &unk_1002CD868;
        v73[4] = self;
        [(FMDSecureLocationMonitor *)self stopLocationMonitor:v73];
      }
    }

    goto LABEL_57;
  }

LABEL_58:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_1000029E0(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10022D920(errorCopy, v6);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:kCLErrorDomain])
  {

    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code)
  {
LABEL_8:
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001B97D4;
    v11[3] = &unk_1002CD868;
    v12 = errorCopy;
    [(FMDSecureLocationMonitor *)self stopLocationMonitor:v11];
    v10 = v12;
    goto LABEL_9;
  }

  v10 = sub_1000029E0(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not stopping the SecureLocationMonitor service because the error is temporary.", buf, 2u);
  }

LABEL_9:
}

- (void)_scheduleXPCActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = kFMDSecureLocationModeProactive;
  configManager = [(FMDSecureLocationMonitor *)self configManager];
  activeConfig = [configManager activeConfig];
  policyName = [activeConfig policyName];
  v8 = kFMDSecureLocationModeOwnerProactive;
  v9 = [policyName caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

  if (v9)
  {
    configManager2 = [(FMDSecureLocationMonitor *)self configManager];
    activeConfig2 = [configManager2 activeConfig];
    policyName2 = [activeConfig2 policyName];
    v8 = kFMDSecureLocationModeBackgroundProactive;
    v14 = [policyName2 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

    if (v14)
    {
      goto LABEL_9;
    }

    v16 = sub_1000029E0(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: _scheduleXPCActivity for %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = sub_1000029E0(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
      goto LABEL_7;
    }
  }

  v17 = v8;
  v4 = v17;
LABEL_9:
  configManager3 = [(FMDSecureLocationMonitor *)self configManager];
  v19 = [configManager3 configForPolicy:v4];

  if (v19)
  {
    [v19 heartbeatPublish];
    v21 = v20;
    shouldWakeDevice = [v19 shouldWakeDevice];
  }

  else
  {
    shouldWakeDevice = 1;
    v21 = 1080;
  }

  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v21);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, shouldWakeDevice);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_15_MIN);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v24 = sub_1000029E0(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v29 = v21;
    v30 = 1024;
    v31 = shouldWakeDevice;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Configuring Heartbeat XPC activity with duration %lld. shouldWake: %i", buf, 0x12u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001B9C68;
  handler[3] = &unk_1002D0638;
  handler[4] = self;
  xpc_activity_register("com.apple.findmydevice.secureLocationsCheck", v3, handler);
  v26 = sub_1000029E0(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Scheduled XPC Activity for SecureLocations Hearbeat", buf, 2u);
  }
}

- (void)updateMonitorConfig:(id)config
{
  configCopy = config;
  v5 = sub_1000029E0(configCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateMonitorConfig", v7, 2u);
  }

  configManager = [(FMDSecureLocationMonitor *)self configManager];
  [configManager updateConfigData:configCopy];
}

- (void)activeConfigChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_1000029E0(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Active Config Changed: %{public}@.", buf, 0xCu);
  }

  isRunning = [(FMDSecureLocationMonitor *)self isRunning];
  v7 = isRunning;
  v8 = sub_1000029E0(isRunning);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Stopping and restarting after config change", buf, 2u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001BA1C0;
    v10[3] = &unk_1002CE320;
    v11 = changedCopy;
    selfCopy = self;
    [(FMDSecureLocationMonitor *)self stopLocationMonitor:v10];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Not running. Starting it.", buf, 2u);
    }

    [(FMDSecureLocationMonitor *)self startLocationMonitor:&stru_1002D0C18];
  }
}

- (void)activeConfigExtended:(id)extended
{
  extendedCopy = extended;
  v5 = sub_1000029E0(extendedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    policyName = [extendedCopy policyName];
    v11 = 138412290;
    v12 = policyName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Active Config Extended %@", &v11, 0xCu);
  }

  isRunning = [(FMDSecureLocationMonitor *)self isRunning];
  if (isRunning)
  {
    v8 = sub_1000029E0(isRunning);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: activeConfig already running", &v11, 2u);
    }

    policyName2 = [extendedCopy policyName];
    v10 = [policyName2 caseInsensitiveCompare:kFMDSecureLocationModeProactive];

    if (!v10)
    {
      [(FMDSecureLocationMonitor *)self publishOnDemandLocation:&stru_1002D0C58];
    }
  }

  else
  {
    [(FMDSecureLocationMonitor *)self startLocationMonitor:&stru_1002D0C38];
  }
}

- (void)forcePublishOndemandLocationIfNeeded:(id)needed
{
  neededCopy = needed;
  if (dispatch_get_specific("com.apple.findmydevice.forcePublishQueueKey") == "com.apple.findmydevice.forcePublishQueueKey")
  {
    [(FMDSecureLocationMonitor *)self publishOneTimeShallowLocation:neededCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BA844;
    block[3] = &unk_1002CD288;
    objc_copyWeak(&v8, &location);
    v7 = neededCopy;
    dispatch_async(forcePushOndemandLocationQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)requestForcedShallowLocation
{
  forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  dispatch_assert_queue_V2(forcePushOndemandLocationQueue);

  forceShallowLocationManager = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];

  if (forceShallowLocationManager)
  {
    forceShallowLocationManager2 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
    [forceShallowLocationManager2 stopUpdatingLocation];

    [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:0];
  }

  forcePushOndemandLocationQueue2 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  v7 = [(FMDSecureLocationMonitor *)self _createLocationManagerWithQueue:forcePushOndemandLocationQueue2];
  [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:v7];

  forceShallowLocationManager3 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [forceShallowLocationManager3 setDelegate:self];

  forceShallowLocationManager4 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [forceShallowLocationManager4 setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];

  forceShallowLocationManager5 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [forceShallowLocationManager5 requestLocation];
}

- (void)publishOneTimeShallowLocation:(id)location
{
  locationCopy = location;
  forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  dispatch_assert_queue_V2(forcePushOndemandLocationQueue);

  if (![(FMDSecureLocationMonitor *)self forcePushOndemandlocation])
  {
    goto LABEL_11;
  }

  v6 = _os_feature_enabled_impl();
  v7 = v6;
  v8 = sub_1000029E0(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v20 = 138412290;
      v21 = locationCopy;
      v10 = "SecureLocationMonitor: Sending force location to FML to publish %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v20, 0xCu);
    }
  }

  else if (v9)
  {
    v20 = 138412290;
    v21 = locationCopy;
    v10 = "SecureLocationMonitor: Sending force location to searchpartyd to publish %@";
    goto LABEL_7;
  }

  v11 = [CLLocationFMGeoLocatableAdapter alloc];
  v12 = +[NSDate now];
  v13 = [(CLLocationFMGeoLocatableAdapter *)v11 initWithLocation:locationCopy timeStamp:v12];

  v14 = [FMDSecureLocationInfo alloc];
  motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
  lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
  v17 = [(FMDSecureLocationInfo *)v14 initWithLocation:v13 motion:lastKnownDeviceMotion publishReason:6];

  [(FMDSecureLocationMonitor *)self _publishLocation:v17];
  [(FMDSecureLocationMonitor *)self setForcePushOndemandlocation:0];
  forceShallowLocationManager = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];

  if (forceShallowLocationManager)
  {
    forceShallowLocationManager2 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
    [forceShallowLocationManager2 stopUpdatingLocation];

    [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:0];
  }

LABEL_11:
}

@end