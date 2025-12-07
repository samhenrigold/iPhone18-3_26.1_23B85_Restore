@interface FMController
- (BOOL)_registerForLockStatusNotifications;
- (BOOL)_registerForMessagesAppForegroundedNotifications;
- (FMController)init;
- (void)_deviceUnlockTimerExpiration;
- (void)_handleBiomeEvent:(id)event;
- (void)_handleDeviceLockAtTimestamp:(id *)timestamp;
- (void)_handleDeviceUnlockAtTimestamp:(id *)timestamp;
- (void)_handleEligibilityStatus:(int64_t)status bundleId:(id)id event:(id)event;
- (void)_handleLockStatusNotificationAtTimestamp:(id *)timestamp;
- (void)_handleMessageAppBackgroundedWithTimestamp:(double)timestamp;
- (void)_handleMessageAppForegroundedWithTimestamp:(double)timestamp;
- (void)_handleMessageAppStatusNotification:(id)notification;
- (void)_reportSkBundleIdEligibilityCheckLatencyWithStartTimestamp:(unint64_t)timestamp andStopTimestamp:(unint64_t)stopTimestamp;
- (void)_requestToStopCameraSession;
- (void)_setupCameraSession;
- (void)_stopCameraSession;
- (void)handleFacialMetricsPacket:(id)packet withTimestamp:(unint64_t)timestamp;
- (void)sensorWriterDidStopMonitoring:(id)monitoring;
- (void)sensorWriterWillStartMonitoring:(id)monitoring;
@end

@implementation FMController

- (FMController)init
{
  v26.receiver = self;
  v26.super_class = FMController;
  v2 = [(FMController *)&v26 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 11);
    *(v2 + 11) = v3;

    v6 = sub_100004784(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[NSBundle mainBundle];
      infoDictionary = [v7 infoDictionary];
      v9 = [infoDictionary objectForKeyedSubscript:kCFBundleVersionKey];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "version: %{public}@", &buf, 0xCu);
    }

    v10 = +[FMCameraSession deviceIsSupported];
    if (v10)
    {
      [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:@"com.apple.Research"];
      *(v2 + 8) = MKBGetDeviceLockState() == 0;
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, -1);

      v13 = dispatch_queue_create("com.apple.facemetricsd.controller", v12);
      v14 = *(v2 + 3);
      *(v2 + 3) = v13;

      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 3));
      v16 = *(v2 + 9);
      *(v2 + 9) = v15;

      v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 3));
      v18 = *(v2 + 10);
      *(v2 + 10) = v17;

      *&buf = 0;
      *(&buf + 1) = &buf;
      v28 = 0x2020000000;
      v29 = 0;
      v19 = *(v2 + 3);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100002AD4;
      v23[3] = &unk_10000C4F0;
      v20 = v2;
      v24 = v20;
      p_buf = &buf;
      dispatch_sync(v19, v23);
      v21 = 0;
      if (*(*(&buf + 1) + 24) == 1)
      {
        v21 = v20;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v12 = sub_100004784(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device is not supported", &buf, 2u);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_registerForLockStatusNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  out_token = -1;
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100002CAC;
  handler[3] = &unk_10000C518;
  objc_copyWeak(&v9, &location);
  v4 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, queue, handler);
  v5 = v4;
  if (v4)
  {
    v6 = sub_100004784(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100005CCC();
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return v5 == 0;
}

- (void)_handleLockStatusNotificationAtTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  deviceIsUnlocked = self->_deviceIsUnlocked;
  if (deviceIsUnlocked != (MKBGetDeviceLockState() == 0))
  {
    v6 = self->_deviceIsUnlocked;
    self->_deviceIsUnlocked = !v6;
    v7 = *&timestamp->var0;
    var3 = timestamp->var3;
    if (v6)
    {
      [(FMController *)self _handleDeviceLockAtTimestamp:&v7];
    }

    else
    {
      [(FMController *)self _handleDeviceUnlockAtTimestamp:&v7];
    }
  }
}

- (void)_handleDeviceUnlockAtTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = sub_100004784(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device just unlocked", buf, 2u);
  }

  if ([(SRSensorWriter *)self->_sensorWriter isMonitoring])
  {
    cameraSession = [(FMController *)self cameraSession];
    if (cameraSession)
    {
      v8 = cameraSession;
      cameraSessionActiveReason = [(FMController *)self cameraSessionActiveReason];

      if (cameraSessionActiveReason)
      {
        v11 = sub_100004784(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_100005D40();
        }

        [(FMController *)self setCameraSessionActiveReason:0];
        [(FMController *)self _requestToStopCameraSession];
      }
    }

    [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]| 1];
    cameraSession2 = [(FMController *)self cameraSession];

    if (cameraSession2)
    {
      cameraSession3 = [(FMController *)self cameraSession];
      *buf = *&timestamp->var0;
      var3 = timestamp->var3;
      [cameraSession3 generateUnlockSessionIdWithSessionStartTimestamp:buf];
    }

    else
    {
      [(FMController *)self _setupCameraSession];
      cameraSession4 = [(FMController *)self cameraSession];
      *buf = *&timestamp->var0;
      var3 = timestamp->var3;
      [cameraSession4 generateUnlockSessionIdWithSessionStartTimestamp:buf];

      cameraSession3 = [(FMController *)self cameraSession];
      [cameraSession3 startCameraSession];
    }

    v15 = dispatch_time(0, 5000000000);
    deviceUnlockTimer = [(FMController *)self deviceUnlockTimer];
    dispatch_source_set_timer(deviceUnlockTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(buf, self);
    deviceUnlockTimer2 = [(FMController *)self deviceUnlockTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003080;
    handler[3] = &unk_10000C540;
    objc_copyWeak(&v23, buf);
    dispatch_source_set_event_handler(deviceUnlockTimer2, handler);

    v19 = sub_100004784(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "activating unlock timer", v21, 2u);
    }

    self->_unlockTimerStartTime = CFAbsoluteTimeGetCurrent();
    deviceUnlockTimer3 = [(FMController *)self deviceUnlockTimer];
    dispatch_activate(deviceUnlockTimer3);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)_deviceUnlockTimerExpiration
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = sub_100004784(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11.value) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "device unlock timer expired", &v11, 2u);
  }

  v5 = CFAbsoluteTimeGetCurrent() - self->_unlockTimerStartTime;
  v7 = sub_100004784(v6);
  v8 = v7;
  if (v5 <= 6.0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11.value) = 134217984;
      *(&v11.value + 4) = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "unlock timer took (%f s) to fire", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_100005D7C();
  }

  [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]& 0xFE];
  cameraSession = [(FMController *)self cameraSession];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v11, HostTimeClock);
  [cameraSession updateUnlockSessionWithSessionStopTimestamp:&v11];

  [(FMController *)self _requestToStopCameraSession];
}

- (void)_handleDeviceLockAtTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = sub_100004784(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device just locked", &v8, 2u);
  }

  [(FMController *)self setCameraSessionActiveReason:0];
  cameraSession = [(FMController *)self cameraSession];
  v8 = *&timestamp->var0;
  var3 = timestamp->var3;
  [cameraSession updateUnlockSessionWithSessionStopTimestamp:&v8];

  [(FMController *)self _requestToStopCameraSession];
}

- (BOOL)_registerForMessagesAppForegroundedNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v3 = BiomeLibrary();
  v4 = [v3 App];
  inFocus = [v4 InFocus];

  v6 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.facemetricsd" targetQueue:self->_queue waking:1];
  dSLPublisher = [inFocus DSLPublisher];
  v8 = [dSLPublisher subscribeOn:v6];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100003484;
  v14 = &unk_10000C5A8;
  objc_copyWeak(&v15, &location);
  v9 = [v8 sinkWithCompletion:&stru_10000C580 receiveInput:&v11];
  [(FMController *)self setSink:v9, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return 1;
}

- (void)_handleBiomeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  eventBody = [eventCopy eventBody];
  bundleID = [eventBody bundleID];

  v8 = sub_100004784(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = bundleID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received Biome notification for BundleId : %{public}@", buf, 0xCu);
  }

  cachedBundleIdEligibility = [(FMController *)self cachedBundleIdEligibility];
  v10 = [cachedBundleIdEligibility objectForKeyedSubscript:bundleID];

  bOOLValue = [v10 BOOLValue];
  if (bOOLValue)
  {
    v12 = sub_100004784(bOOLValue);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue2 = [v10 BOOLValue];
      v14 = "not ";
      if (bOOLValue2)
      {
        v14 = "";
      }

      *buf = 136446466;
      v23 = v14;
      v24 = 2114;
      v25 = bundleID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "From cached eligibility, data collection is %{public}seligible for bundleID %{public}@", buf, 0x16u);
    }

    if ([v10 BOOLValue])
    {
      eventBody2 = [eventCopy eventBody];
      [(FMController *)self _handleMessageAppStatusNotification:eventBody2];
    }
  }

  else
  {
    v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    sensorWriter = self->_sensorWriter;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100003738;
    v18[3] = &unk_10000C5F8;
    v18[4] = self;
    v19 = bundleID;
    v20 = eventCopy;
    v21 = v16;
    [(SRSensorWriter *)sensorWriter bundleEligibility:v19 completion:v18];
  }
}

- (void)_handleEligibilityStatus:(int64_t)status bundleId:(id)id event:(id)event
{
  idCopy = id;
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  if (!status)
  {
    eventBody = sub_100004784(v10);
    if (os_log_type_enabled(eventBody, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = idCopy;
      _os_log_impl(&_mh_execute_header, eventBody, OS_LOG_TYPE_INFO, "Received SREligibilityStatusNotEligible for bundleID %{public}@", &v15, 0xCu);
    }

    v13 = &__kCFBooleanFalse;
    goto LABEL_9;
  }

  if (status == 1)
  {
    v11 = sub_100004784(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = idCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received SREligibilityStatusEligible for bundleID %{public}@", &v15, 0xCu);
    }

    eventBody = [eventCopy eventBody];
    [(FMController *)self _handleMessageAppStatusNotification:eventBody];
    v13 = &__kCFBooleanTrue;
LABEL_9:

    cachedBundleIdEligibility = [(FMController *)self cachedBundleIdEligibility];
    [cachedBundleIdEligibility setObject:v13 forKeyedSubscript:idCopy];
  }
}

- (void)_handleMessageAppStatusNotification:(id)notification
{
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  messageAppForegrounded = self->_messageAppForegrounded;
  starting = [notificationCopy starting];
  if (messageAppForegrounded == starting)
  {
    absoluteTimestamp = sub_100004784(starting);
    if (os_log_type_enabled(absoluteTimestamp, OS_LOG_TYPE_ERROR))
    {
      sub_100005E6C();
    }
  }

  else
  {
    v8 = self->_messageAppForegrounded;
    self->_messageAppForegrounded = !v8;
    v9 = sub_100004784(starting);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        bundleID = [notificationCopy bundleID];
        v13 = 138412290;
        v14 = bundleID;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ backgrounded", &v13, 0xCu);
      }

      absoluteTimestamp = [notificationCopy absoluteTimestamp];
      [absoluteTimestamp timeIntervalSinceReferenceDate];
      [(FMController *)self _handleMessageAppBackgroundedWithTimestamp:?];
    }

    else
    {
      if (v10)
      {
        bundleID2 = [notificationCopy bundleID];
        v13 = 138412290;
        v14 = bundleID2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ foregrounded", &v13, 0xCu);
      }

      absoluteTimestamp = [notificationCopy absoluteTimestamp];
      [absoluteTimestamp timeIntervalSinceReferenceDate];
      [(FMController *)self _handleMessageAppForegroundedWithTimestamp:?];
    }
  }
}

- (void)_handleMessageAppForegroundedWithTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(SRSensorWriter *)self->_sensorWriter isMonitoring])
  {
    [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]| 2];
    cameraSession = [(FMController *)self cameraSession];

    if (cameraSession)
    {
      cameraSession2 = [(FMController *)self cameraSession];
      [cameraSession2 generateMessageSessionIdWithSessionStartTimestamp:timestamp];
    }

    else
    {
      [(FMController *)self _setupCameraSession];
      cameraSession3 = [(FMController *)self cameraSession];
      [cameraSession3 generateMessageSessionIdWithSessionStartTimestamp:timestamp];

      cameraSession2 = [(FMController *)self cameraSession];
      [cameraSession2 startCameraSession];
    }

    v8 = dispatch_time(0, 30000000000);
    messageAppForegroundedTimer = [(FMController *)self messageAppForegroundedTimer];
    dispatch_source_set_timer(messageAppForegroundedTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(&location, self);
    messageAppForegroundedTimer2 = [(FMController *)self messageAppForegroundedTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003DBC;
    handler[3] = &unk_10000C540;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(messageAppForegroundedTimer2, handler);

    v12 = sub_100004784(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "activating app foregrounded timer", v14, 2u);
    }

    self->_foregroundTimerStartTime = CFAbsoluteTimeGetCurrent();
    messageAppForegroundedTimer3 = [(FMController *)self messageAppForegroundedTimer];
    dispatch_activate(messageAppForegroundedTimer3);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_handleMessageAppBackgroundedWithTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]& 0xFFFFFFFD];
  cameraSession = [(FMController *)self cameraSession];
  [cameraSession updateMessageSessionWithSessionStopTimestamp:timestamp];

  [(FMController *)self _requestToStopCameraSession];
}

- (void)_setupCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = sub_100004784(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setting up the camera", buf, 2u);
  }

  v5 = [[FMCameraSession alloc] initWithQueue:self->_queue];
  [(FMController *)self setCameraSession:v5];

  cameraSession = [(FMController *)self cameraSession];

  if (cameraSession)
  {
    cameraSession2 = [(FMController *)self cameraSession];
    [cameraSession2 resetUnlockSessionId];

    cameraSession3 = [(FMController *)self cameraSession];
    [cameraSession3 resetMessageSessionId];

    v11 = sub_100004784(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "started camera session", v13, 2u);
    }

    cameraSession4 = [(FMController *)self cameraSession];
    [cameraSession4 setDelegate:self];
  }

  else
  {
    cameraSession4 = sub_100004784(v7);
    if (os_log_type_enabled(cameraSession4, OS_LOG_TYPE_ERROR))
    {
      sub_100005F24();
    }
  }
}

- (void)_requestToStopCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  cameraSession = [(FMController *)self cameraSession];

  if (cameraSession)
  {
    cameraSessionActiveReason = [(FMController *)self cameraSessionActiveReason];
    if (cameraSessionActiveReason)
    {
      v5 = sub_100004784(cameraSessionActiveReason);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ignore request to stop camera session due to a timer being active", v6, 2u);
      }
    }

    else
    {

      [(FMController *)self _stopCameraSession];
    }
  }
}

- (void)_stopCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = sub_100004784(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stopping camera session", v6, 2u);
  }

  cameraSession = [(FMController *)self cameraSession];
  [cameraSession stop];

  [(FMController *)self setCameraSession:0];
}

- (void)_reportSkBundleIdEligibilityCheckLatencyWithStartTimestamp:(unint64_t)timestamp andStopTimestamp:(unint64_t)stopTimestamp
{
  v6 = @"skLatencyMilliSeconds";
  v4 = [NSNumber numberWithDouble:(stopTimestamp - timestamp) / 1000000.0];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  AnalyticsSendEvent();
}

- (void)handleFacialMetricsPacket:(id)packet withTimestamp:(unint64_t)timestamp
{
  packetCopy = packet;
  dispatch_assert_queue_V2(self->_queue);
  isMonitoring = [(SRSensorWriter *)self->_sensorWriter isMonitoring];
  if (isMonitoring)
  {
    v8 = sub_100004784(isMonitoring);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100005F60(packetCopy, timestamp, v8);
    }

    sensorWriter = self->_sensorWriter;
    v14 = 0;
    v10 = [(SRSensorWriter *)sensorWriter provideSampleData:packetCopy continuousTimestamp:timestamp error:&v14];
    v11 = v14;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      v13 = sub_100004784(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100005FFC();
      }
    }
  }
}

- (void)sensorWriterWillStartMonitoring:(id)monitoring
{
  v4 = sub_100004784(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sensor writer is now monitoring", v5, 2u);
  }

  dispatch_async(self->_queue, &stru_10000C638);
}

- (void)sensorWriterDidStopMonitoring:(id)monitoring
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000045A4;
  v5[3] = &unk_10000C540;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end