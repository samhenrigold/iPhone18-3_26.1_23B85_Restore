@interface HRCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HRCServer)init;
- (void)_classifyArbitratedHeartRateSample:(id)sample;
- (void)_classifyUnarbitratedHeartRateSample:(id)sample;
- (void)_handleBtleSourceListUpdate:(id)update;
- (void)_handleHeartRateForAlgorithms:(id)algorithms;
- (void)_handleHeartRateForClients:(id)clients;
- (void)_handleHeartRateForPublishing:(id)publishing;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)activeSourceDidChange:(unint64_t)change;
- (void)handleAnalyticsReport:(unsigned __int8)report data:(id)data;
- (void)handleBluetoothLeSourceUpdate:(id)update;
- (void)handleDownSelectedHeartRate:(id)rate;
- (void)handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)handleSysdiagnoseTrigger;
- (void)handleUserFitNotification:(id)notification;
- (void)heartRateSampleWasCollected:(id)collected;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setupUserOverrideSources;
- (void)updateBluetoothDiscoveryEnabledRequest:(BOOL)request;
- (void)updateCollatedOpportunisticModeRequest:(BOOL)request;
- (void)updateCollatedStreamingModeRequest:(unint64_t)request;
- (void)updateWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType;
@end

@implementation HRCServer

- (HRCServer)init
{
  v3 = sub_1000012D8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCServer init", buf, 2u);
  }

  v44.receiver = self;
  v44.super_class = HRCServer;
  v4 = [(HRCServer *)&v44 init];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.heartratecoordinatord.queue.primary", v5);
  primaryQueue = v4->_primaryQueue;
  v4->_primaryQueue = v6;

  v4->_internalUIVariant = os_variant_has_internal_ui();
  v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HeartRateCoordinator"];
  heartRateCoordinatorDefaults = v4->_heartRateCoordinatorDefaults;
  v4->_heartRateCoordinatorDefaults = v8;

  v10 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"forceFitNotification"];
  v11 = v10;
  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v13 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"fitNotificationThreshold"];

  if (v13)
  {
    [v13 floatValue];
    v14 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"fitNotificationMinDuration"];

  if (v15)
  {
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 unsignedIntegerValue]);
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"fitNotificationMinHrCount"];

  if (v17)
  {
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unsignedIntegerValue]);
  }

  else
  {
    v18 = 0;
  }

  v4->_notificationThresholdOverride = (v14 | v18) != 0;
  v19 = objc_opt_new();
  analyticsReporter = v4->_analyticsReporter;
  v4->_analyticsReporter = v19;

  v21 = [[HRCImproveHealthAndActivityMonitor alloc] initWithAnalyticsReporter:v4->_analyticsReporter];
  improveHealthAndActivityMonitor = v4->_improveHealthAndActivityMonitor;
  v4->_improveHealthAndActivityMonitor = v21;

  v23 = [[HRCClientCollator alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue];
  clientCollator = v4->_clientCollator;
  v4->_clientCollator = v23;

  v25 = [[HRCBluetoothLESourceObserverCollator alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue];
  observerCollator = v4->_observerCollator;
  v4->_observerCollator = v25;

  v27 = +[NSFileManager defaultManager];
  v28 = [v27 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.heartratecoordinatord"];

  v29 = [[HRCEventLogger alloc] initWithRootDirectory:v28 isInternalVariant:v4->_internalUIVariant];
  logger = v4->_logger;
  v4->_logger = v29;

  v31 = [[HRCArbiterAlgorithms alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue forceFitNotification:bOOLValue fitNotificationThreshold:v14 fitNotificationMinDuration:v16 fitNotificationMinHrCount:v18 analyticsReporter:v4->_analyticsReporter];
  arbiter = v4->_arbiter;
  v4->_arbiter = v31;

  v33 = [[HRCSourceController alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue analyticsReporter:v4->_analyticsReporter internalVariant:v4->_internalUIVariant];
  sourceController = v4->_sourceController;
  v4->_sourceController = v33;

  v35 = [[HRCPublisher alloc] initWithAnalyticsReporter:v4->_analyticsReporter isInternalVariant:v4->_internalUIVariant];
  hrPublisher = v4->_hrPublisher;
  v4->_hrPublisher = v35;

  v37 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.heartratecoordinatord.requestor"];
  hrClientListener = v4->_hrClientListener;
  v4->_hrClientListener = v37;

  [(NSXPCListener *)v4->_hrClientListener setDelegate:v4];
  [(NSXPCListener *)v4->_hrClientListener activate];
  v39 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.heartratecoordinatord.observer"];
  bluetoothLeSourceListener = v4->_bluetoothLeSourceListener;
  v4->_bluetoothLeSourceListener = v39;

  [(NSXPCListener *)v4->_bluetoothLeSourceListener setDelegate:v4];
  [(NSXPCListener *)v4->_bluetoothLeSourceListener activate];
  [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults addObserver:v4 forKeyPath:@"hrSourceOverride" options:5 context:&v4->_hrSourceOverridePreference];
  [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults addObserver:v4 forKeyPath:@"hrLoggingPreference" options:5 context:&v4->_hrLoggingPreference];
  objc_initWeak(buf, v4);
  objc_copyWeak(&v42, buf);
  os_state_add_handler();
  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v11 = [objectCopy valueForKeyPath:pathCopy];
  v12 = v11;
  p_hrSourceOverridePreference = &self->_hrSourceOverridePreference;
  if (&self->_hrSourceOverridePreference == context)
  {
    intValue = [v11 intValue];
    if (intValue >= 3)
    {
      v18 = sub_1000012D8(intValue);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100026B94();
      }
    }

    else if (*p_hrSourceOverridePreference != intValue)
    {
      *p_hrSourceOverridePreference = intValue;
      v15 = sub_1000012D8(intValue);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *p_hrSourceOverridePreference;
        *buf = 67109120;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "hrSourceOverride : %d", buf, 8u);
      }

      primaryQueue = [(HRCServer *)self primaryQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000024B0;
      block[3] = &unk_1000406C0;
      block[4] = self;
      dispatch_async(primaryQueue, block);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_1000012D8(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "received connection request from frontend client with pid : %d", &buf, 8u);
  }

  hrClientListener = [(HRCServer *)self hrClientListener];
  v10 = hrClientListener;
  if (hrClientListener == listenerCopy)
  {

    goto LABEL_9;
  }

  bluetoothLeSourceListener = [(HRCServer *)self bluetoothLeSourceListener];
  v12 = bluetoothLeSourceListener == listenerCopy;

  if (v12)
  {
LABEL_9:
    v15 = [connectionCopy valueForEntitlement:@"com.apple.heartratecoordinator.spi.heartrate"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
      {
        objc_initWeak(&buf, self);
        hrClientListener2 = [(HRCServer *)self hrClientListener];
        v19 = hrClientListener2 == listenerCopy;

        if (v19)
        {
          v36 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndClient];
          [connectionCopy setRemoteObjectInterface:v36];

          v37 = [HRCClient alloc];
          clientCollator = [(HRCServer *)self clientCollator];
          remoteObjectProxy = [connectionCopy remoteObjectProxy];
          primaryQueue = [(HRCServer *)self primaryQueue];
          v41 = [(HRCClient *)v37 initWithDelegate:clientCollator remoteObjectProxy:remoteObjectProxy onQueue:primaryQueue];

          v42 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndService];
          [connectionCopy setExportedInterface:v42];

          [connectionCopy setExportedObject:v41];
          v28 = v47;
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_100002B3C;
          v47[3] = &unk_1000406E8;
          v29 = &v48;
          objc_copyWeak(&v48, &buf);
          v30 = v41;
          v47[4] = v30;
          [connectionCopy setInvalidationHandler:v47];
          logger = [(HRCServer *)self logger];
          [logger addClient];

          clientCollator2 = [(HRCServer *)self clientCollator];
          [clientCollator2 addHrRequestorClient:v30];

          [connectionCopy activate];
        }

        else
        {
          bluetoothLeSourceListener2 = [(HRCServer *)self bluetoothLeSourceListener];
          v21 = bluetoothLeSourceListener2 == listenerCopy;

          if (!v21)
          {
LABEL_23:
            objc_destroyWeak(&buf);
            v34 = 1;
            goto LABEL_20;
          }

          v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndBluetoothLESourceObserverClient];
          [connectionCopy setRemoteObjectInterface:v22];

          v23 = [HRCBluetoothLESourceObserverClient alloc];
          remoteObjectProxy2 = [connectionCopy remoteObjectProxy];
          primaryQueue2 = [(HRCServer *)self primaryQueue];
          v26 = [(HRCBluetoothLESourceObserverClient *)v23 initWithRemoteObjectProxy:remoteObjectProxy2 onQueue:primaryQueue2];

          v27 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndBluetoothLESourceObserverService];
          [connectionCopy setExportedInterface:v27];

          [connectionCopy setExportedObject:v26];
          v28 = v45;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_100002C20;
          v45[3] = &unk_1000406E8;
          v29 = &v46;
          objc_copyWeak(&v46, &buf);
          v30 = v26;
          v45[4] = v30;
          [connectionCopy setInvalidationHandler:v45];
          logger2 = [(HRCServer *)self logger];
          [logger2 addClient];

          observerCollator = [(HRCServer *)self observerCollator];
          [observerCollator addBluetoothLESourceObserverClient:v30];

          [connectionCopy activate];
        }

        objc_destroyWeak(v29);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v33 = sub_1000012D8(v17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100026C14(&buf, [connectionCopy processIdentifier], v33);
    }

    goto LABEL_19;
  }

  v14 = sub_1000012D8(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100026BD4();
  }

LABEL_19:
  v34 = 0;
LABEL_20:

  return v34;
}

- (void)handleSysdiagnoseTrigger
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  analyticsReporter = self->_analyticsReporter;

  [(HRCAnalyticsReporter *)analyticsReporter handleSysdiagnoseTrigger];
}

- (void)updateCollatedStreamingModeRequest:(unint64_t)request
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  logger = [(HRCServer *)self logger];
  [logger handleStreamingModeUpdate:request withTimestamp:mach_continuous_time()];

  v7 = [(HRCAnalyticsReporter *)self->_analyticsReporter handleStreamingModeUpdate:request steadyClockDurationCount:std::chrono::steady_clock::now().__d_.__rep_];
  v8 = sub_1000012D8(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    requestCopy = request;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "server received request to update streaming mode : %ld", &v11, 0xCu);
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter handleStreamingModeUpdate:request];

  sourceController = [(HRCServer *)self sourceController];
  [sourceController setStreamingMode:request];
}

- (void)updateCollatedOpportunisticModeRequest:(BOOL)request
{
  requestCopy = request;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  logger = [(HRCServer *)self logger];
  [logger handleOpportunisticModeUpdate:requestCopy withTimestamp:mach_continuous_time()];

  v8 = sub_1000012D8(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "server received request to update opportunistic mode : %{BOOL}u", v10, 8u);
  }

  sourceController = [(HRCServer *)self sourceController];
  [sourceController setOpportunisticMode:requestCopy];
}

- (void)updateWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  logger = [(HRCServer *)self logger];
  [logger handleWorkoutActivityType:type withLocationType:locationType withTimestamp:mach_continuous_time()];

  v10 = sub_1000012D8(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 134283777;
    typeCopy = type;
    v15 = 2049;
    locationTypeCopy = locationType;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "server received request to update activityType : %{private}lu , locationType : %{private}lu", &v13, 0x16u);
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter handleWorkoutActivityTypeUpdate:type];

  [(HRCAnalyticsReporter *)self->_analyticsReporter updateWorkoutActivityType:type withLocationType:locationType];
  sourceController = [(HRCServer *)self sourceController];
  [sourceController updateWorkoutActivityType:type withLocationType:locationType];
}

- (void)updateBluetoothDiscoveryEnabledRequest:(BOOL)request
{
  requestCopy = request;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  logger = [(HRCServer *)self logger];
  [logger handleBluetoothDiscoveryEnabledUpdate:requestCopy withTimestamp:mach_continuous_time()];

  sourceController = [(HRCServer *)self sourceController];
  [sourceController setEnableBluetoothSourceDiscovery:requestCopy];
}

- (void)setupUserOverrideSources
{
  v3 = sub_1000012D8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setting up override preferences", v8, 2u);
  }

  p_hrSourceOverridePreference = &self->_hrSourceOverridePreference;
  hrSourceOverridePreference = self->_hrSourceOverridePreference;
  if (hrSourceOverridePreference == 3)
  {
    sourceController = [(HRCServer *)self sourceController];
    [sourceController enableWatchSource:1 enableAacpSource:0];
  }

  else if (hrSourceOverridePreference == 2)
  {
    sourceController = [(HRCServer *)self sourceController];
    [sourceController enableWatchSource:0 enableAacpSource:1];
  }

  else if (hrSourceOverridePreference)
  {
    sourceController = sub_1000012D8(v4);
    if (os_log_type_enabled(sourceController, OS_LOG_TYPE_FAULT))
    {
      sub_100026C5C(p_hrSourceOverridePreference, sourceController);
    }
  }

  else
  {
    sourceController = [(HRCServer *)self sourceController];
    [sourceController enableWatchSource:1 enableAacpSource:1];
  }
}

- (void)heartRateSampleWasCollected:(id)collected
{
  collectedCopy = collected;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v7 = sub_1000012D8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    timestamp = [collectedCopy timestamp];
    [collectedCopy heartRate];
    v9 = v8;
    confidence = [collectedCopy confidence];
    hrContext = [collectedCopy hrContext];
    uuid = [collectedCopy uuid];
    confidenceLevel = [collectedCopy confidenceLevel];
    arbitrationStatus = [collectedCopy arbitrationStatus];
    sourceType = [collectedCopy sourceType];
    streamingThrottleStatus = [collectedCopy streamingThrottleStatus];
    timestamp2 = [collectedCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    *buf = 138546179;
    v22 = timestamp;
    v23 = 2053;
    v24 = v9;
    v25 = 2112;
    v26 = confidence;
    v27 = 2048;
    v28 = hrContext;
    v29 = 2113;
    v30 = uuid;
    v31 = 1024;
    v32 = confidenceLevel;
    v33 = 1024;
    v34 = arbitrationStatus;
    v35 = 1024;
    v36 = sourceType;
    v37 = 1024;
    v38 = streamingThrottleStatus;
    v39 = 2050;
    v40 = v16;
    v41 = 1025;
    sensorLocation = [collectedCopy sensorLocation];
    v43 = 1026;
    flags = [collectedCopy flags];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "server received hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f, location : %{private}d, flags : %{public}u", buf, 0x62u);
  }

  logger = [(HRCServer *)self logger];
  [logger handleHeartRate:collectedCopy withTimestamp:mach_continuous_time()];

  [(HRCServer *)self _classifyUnarbitratedHeartRateSample:collectedCopy];
}

- (void)activeSourceDidChange:(unint64_t)change
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  if (update->var4 == 3)
  {
    var5 = update->var5;
    logger = [(HRCServer *)self logger];
    v8 = logger;
    if (var5 == 3)
    {
      [logger addClient];
    }

    else
    {
      [logger removeClient];
    }
  }

  logger2 = [(HRCServer *)self logger];
  [logger2 handleSourceUpdate:update withTimestamp:mach_continuous_time()];

  logger3 = [(HRCServer *)self logger];
  [logger3 flush];

  [(HRCAnalyticsReporter *)self->_analyticsReporter handleSourceUpdate:update];

  [(HRCServer *)self _handleSourceUpdate:update];
}

- (void)handleBluetoothLeSourceUpdate:(id)update
{
  updateCopy = update;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  [(HRCServer *)self _handleBtleSourceListUpdate:updateCopy];
}

- (void)handleAnalyticsReport:(unsigned __int8)report data:(id)data
{
  reportCopy = report;
  dataCopy = data;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  [(HRCAnalyticsReporter *)self->_analyticsReporter handleAnalyticsReport:reportCopy data:dataCopy];
  [(HRCEventLogger *)self->_logger handleAnalyticsReport:reportCopy data:dataCopy];
}

- (void)handleFitNotificationUpdateThreshold:(float)threshold minimumPacketCount:(unsigned int)count
{
  v4 = *&count;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  if (self->_notificationThresholdOverride)
  {
    v8 = sub_1000012D8(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring threshold update because default override is set", buf, 2u);
    }
  }

  else
  {
    arbiter = [(HRCServer *)self arbiter];
    *&v9 = threshold;
    [arbiter handleFitNotificationUpdateThreshold:v4 minimumPacketCount:v9];
  }
}

- (void)handleDownSelectedHeartRate:(id)rate
{
  rateCopy = rate;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  arbitrationStatus = [rateCopy arbitrationStatus];
  if (arbitrationStatus == 2)
  {
    logger = [(HRCServer *)self logger];
    [logger handleHeartRate:rateCopy withTimestamp:mach_continuous_time()];

    [(HRCServer *)self _classifyArbitratedHeartRateSample:rateCopy];
  }

  else
  {
    v8 = sub_1000012D8(arbitrationStatus);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100026CD8([rateCopy arbitrationStatus], v9, v8);
    }
  }
}

- (void)handleUserFitNotification:(id)notification
{
  notificationCopy = notification;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  [(HRCSourceController *)self->_sourceController postUserFitNotification:notificationCopy];
}

- (void)_classifyUnarbitratedHeartRateSample:(id)sample
{
  sampleCopy = sample;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003CEC;
  v11[3] = &unk_100040710;
  v11[4] = self;
  v12 = sampleCopy;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003CF8;
  v9[3] = &unk_100040710;
  v9[4] = self;
  v10 = v12;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003D04;
  v7[3] = &unk_100040710;
  v7[4] = self;
  v6 = v10;
  v8 = v6;
  [HRCClassifier classifyUnarbitratedHeartRate:v6 algorithmsInputBlock:v11 publisherBlock:v9 clientBlock:v7];
}

- (void)_classifyArbitratedHeartRateSample:(id)sample
{
  sampleCopy = sample;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003E60;
  v9[3] = &unk_100040710;
  v9[4] = self;
  v10 = sampleCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003E6C;
  v7[3] = &unk_100040710;
  v7[4] = self;
  v6 = v10;
  v8 = v6;
  [HRCClassifier classifyArbitratedHeartRate:v6 publisherBlock:v9 clientBlock:v7];
}

- (void)_handleHeartRateForAlgorithms:(id)algorithms
{
  algorithmsCopy = algorithms;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v7 = sub_1000012D8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D24();
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter arbitrateHeartRate:algorithmsCopy];
}

- (void)_handleHeartRateForPublishing:(id)publishing
{
  publishingCopy = publishing;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v7 = sub_1000012D8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D58();
  }

  hrPublisher = [(HRCServer *)self hrPublisher];
  [hrPublisher publishHeartRate:publishingCopy];
}

- (void)_handleHeartRateForClients:(id)clients
{
  clientsCopy = clients;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v7 = sub_1000012D8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D8C();
  }

  clientCollator = [(HRCServer *)self clientCollator];
  [clientCollator handleHeartRate:clientsCopy];
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v7 = sub_1000012D8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100026DC0();
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter handleSourceUpdate:update];

  hrPublisher = [(HRCServer *)self hrPublisher];
  [hrPublisher handleSourceUpdate:update];
}

- (void)_handleBtleSourceListUpdate:(id)update
{
  updateCopy = update;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v7 = sub_1000012D8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "server received btle source list update", v9, 2u);
  }

  observerCollator = [(HRCServer *)self observerCollator];
  [observerCollator handleSourceListUpdate:updateCopy];
}

@end