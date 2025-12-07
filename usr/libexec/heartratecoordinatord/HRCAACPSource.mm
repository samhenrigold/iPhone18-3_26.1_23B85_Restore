@interface HRCAACPSource
- (BOOL)available;
- (HRCAACPSource)init;
- (id)initMatching:(id)matching;
- (void)_audioAccessoryDaemonSetup;
- (void)_audioAccessoryDisconnectHandler;
- (void)_audioAccessoryHRMDeviceChanged:(id)changed abstractedHIDDevice:(unsigned __int8)device;
- (void)_handleHeartRate:(id)rate;
- (void)_handleVendorDefinedEvent:(id)event;
- (void)_initMatching:(id)matching;
- (void)_notifySourceUpdate:(unint64_t)update forSource:(id)source;
- (void)_removalHandler:(unint64_t)handler;
- (void)_serviceDidConnect:(id)connect;
- (void)_setStreamingMode:(unint64_t)mode;
- (void)_setStreamingMode:(unint64_t)mode forService:(id)service;
- (void)_startStreaming:(id)streaming;
- (void)_stopStreaming:(id)streaming;
- (void)_updateStreamingMode;
- (void)activate;
- (void)dealloc;
- (void)postUserFitNotification:(id)notification;
- (void)setAnalyticsReportHandler:(id)handler;
- (void)setAvailabilityHandler:(id)handler;
- (void)setFitNotificationParamUpdateHandler:(id)handler;
- (void)setHeartRateHandler:(id)handler;
- (void)setOpportunisticMode:(BOOL)mode;
- (void)setSourceUpdateHandler:(id)handler;
- (void)setStreamingMode:(unint64_t)mode;
@end

@implementation HRCAACPSource

- (HRCAACPSource)init
{
  v11[0] = @"DeviceUsage";
  v11[1] = @"DeviceUsagePage";
  v12[0] = &off_1000432B8;
  v12[1] = &off_1000432D0;
  v11[2] = @"Transport";
  v12[2] = @"BT-AACP";
  v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  v13[0] = v3;
  v9[0] = @"DeviceUsage";
  v9[1] = @"DeviceUsagePage";
  v10[0] = &off_1000432B8;
  v10[1] = &off_1000432D0;
  v9[2] = @"Transport";
  v4 = [NSString stringWithUTF8String:"Virtual"];
  v10[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v13[1] = v5;
  v6 = [NSArray arrayWithObjects:v13 count:2];

  v7 = [(HRCAACPSource *)self initMatching:v6];
  return v7;
}

- (id)initMatching:(id)matching
{
  matchingCopy = matching;
  v25.receiver = self;
  v25.super_class = HRCAACPSource;
  v5 = [(HRCAACPSource *)&v25 init];
  v6 = sub_10000132C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initializing HRCAACPSource.", buf, 2u);
  }

  v7 = objc_opt_new();
  services = v5->_services;
  v5->_services = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, -1);

  v11 = dispatch_queue_create("com.apple.heartratecoordinator.aacpsource", v10);
  serviceQueue = v5->_serviceQueue;
  v5->_serviceQueue = v11;

  v5->_streamingMode = 0;
  v5->_aaToken = -1;
  v13 = objc_opt_new();
  timeSyncFormatter = v5->_timeSyncFormatter;
  v5->_timeSyncFormatter = v13;

  [(NSDateFormatter *)v5->_timeSyncFormatter setDateFormat:@"HH:mm:ss.SSSZZZZZ"];
  v15 = v5->_serviceQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100013834;
  v21[3] = &unk_100040BC8;
  v16 = v5;
  v22 = v16;
  v23 = matchingCopy;
  v17 = matchingCopy;
  dispatch_sync(v15, v21);
  v18 = v23;
  v19 = v16;

  return v19;
}

- (void)dealloc
{
  aaToken = self->_aaToken;
  if (aaToken != -1)
  {
    notify_cancel(aaToken);
  }

  [(AASystemStateMonitor *)self->_audioSystemStateMonitor invalidate];
  [(HIDEventSystemClient *)self->_streamingClient cancel];
  v4 = sub_10000132C([(HIDEventSystemClient *)self->_monitorClient cancel]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HRCAACPSource dealloc", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = HRCAACPSource;
  [(HRCAACPSource *)&v5 dealloc];
}

- (void)activate
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013994;
  block[3] = &unk_1000406C0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

- (void)setStreamingMode:(unint64_t)mode
{
  serviceQueue = self->_serviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013BA8;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = mode;
  dispatch_async(serviceQueue, v4);
}

- (void)setHeartRateHandler:(id)handler
{
  handlerCopy = handler;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013C4C;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)setAvailabilityHandler:(id)handler
{
  handlerCopy = handler;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013D28;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)setSourceUpdateHandler:(id)handler
{
  handlerCopy = handler;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013E04;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)setOpportunisticMode:(BOOL)mode
{
  v3 = sub_10000132C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unsupported attempt to set opportunistic mode for AACP source", v4, 2u);
  }
}

- (BOOL)available
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013F5C;
  v5[3] = &unk_1000407F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAnalyticsReportHandler:(id)handler
{
  handlerCopy = handler;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014010;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)setFitNotificationParamUpdateHandler:(id)handler
{
  handlerCopy = handler;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000140F0;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)postUserFitNotification:(id)notification
{
  notificationCopy = notification;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000141CC;
  v7[3] = &unk_100040BC8;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)_initMatching:(id)matching
{
  matchingCopy = matching;
  objc_initWeak(&location, self);
  v5 = self->_serviceQueue;
  dispatch_assert_queue_V2(self->_serviceQueue);
  serviceQueue = self->_serviceQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000145C0;
  handler[3] = &unk_100040C58;
  objc_copyWeak(&v22, &location);
  notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", &self->_aaToken, serviceQueue, handler);
  [(HRCAACPSource *)self _audioAccessoryDaemonSetup];
  v7 = [[HIDEventSystemClient alloc] initWithType:3];
  streamingClient = self->_streamingClient;
  self->_streamingClient = v7;

  [(HIDEventSystemClient *)self->_streamingClient setDispatchQueue:self->_serviceQueue];
  [(HIDEventSystemClient *)self->_streamingClient setMatching:matchingCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014650;
  v19[3] = &unk_100040C80;
  objc_copyWeak(&v20, &location);
  [(HIDEventSystemClient *)self->_streamingClient setServiceNotificationHandler:v19];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000146C4;
  v16[3] = &unk_100040CA8;
  v9 = v5;
  v17 = v9;
  objc_copyWeak(&v18, &location);
  [(HIDEventSystemClient *)self->_streamingClient setEventHandler:v16];
  v10 = [[HIDEventSystemClient alloc] initWithType:1];
  monitorClient = self->_monitorClient;
  self->_monitorClient = v10;

  [(HIDEventSystemClient *)self->_monitorClient setMatching:matchingCopy];
  [(HIDEventSystemClient *)self->_monitorClient setDispatchQueue:self->_serviceQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100014784;
  v13[3] = &unk_100040CA8;
  v12 = v9;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(HIDEventSystemClient *)self->_monitorClient setEventHandler:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
}

- (void)_audioAccessoryDaemonSetup
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  v3 = objc_opt_new();
  audioSystemStateMonitor = self->_audioSystemStateMonitor;
  self->_audioSystemStateMonitor = v3;

  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setDispatchQueue:self->_serviceQueue];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100014A6C;
  v11[3] = &unk_100040CD0;
  objc_copyWeak(&v12, &location);
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setActiveHRMDeviceChangedHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014AF0;
  v9[3] = &unk_1000407A0;
  objc_copyWeak(&v10, &location);
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setInterruptionHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014B80;
  v7[3] = &unk_1000407A0;
  objc_copyWeak(&v8, &location);
  [(AASystemStateMonitor *)self->_audioSystemStateMonitor setInvalidationHandler:v7];
  v5 = sub_10000132C([(AASystemStateMonitor *)self->_audioSystemStateMonitor activateWithCompletion:&stru_100040D10]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HRCAACPSource configured audio accessory daemon connection", v6, 2u);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_audioAccessoryHRMDeviceChanged:(id)changed abstractedHIDDevice:(unsigned __int8)device
{
  deviceCopy = device;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v9 = sub_10000132C(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    bluetoothAddress = [changedCopy bluetoothAddress];
    v12 = bluetoothAddress;
    if (deviceCopy > 2)
    {
      v13 = "default";
    }

    else
    {
      v13 = off_100040D58[deviceCopy];
    }

    *buf = 138543874;
    v32 = name;
    v33 = 2114;
    v34 = bluetoothAddress;
    v35 = 2082;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HRCAACPSource Active HRM route set to %{public}@ (%{public}@) %{public}s", buf, 0x20u);
  }

  if (!changedCopy || deviceCopy)
  {
    objc_storeStrong(&self->_aaDevice, changed);
    self->_virtualDevice = deviceCopy == 2;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    services = [(HRCAACPSource *)self services];
    allValues = [services allValues];

    v19 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          if (self->_aaDevice)
          {
            v22 = *(*(&v26 + 1) + 8 * i);
            bluetoothAddress2 = [v22 bluetoothAddress];
            bluetoothAddressData = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
            v25 = [bluetoothAddress2 isEqualToData:bluetoothAddressData];

            if (v25)
            {
              [v22 setAaDevice:self->_aaDevice];
            }
          }
        }

        v19 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v19);
    }

    [(HRCAACPSource *)self _updateStreamingMode];
  }

  else
  {
    v15 = sub_10000132C(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      name2 = [changedCopy name];
      sub_100017114(name2, buf, v15);
    }
  }
}

- (void)_audioAccessoryDisconnectHandler
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  aaDevice = self->_aaDevice;
  self->_aaDevice = 0;

  [(HRCAACPSource *)self _updateStreamingMode];
}

- (void)_serviceDidConnect:(id)connect
{
  connectCopy = connect;
  dispatch_assert_queue_V2(self->_serviceQueue);
  serviceID = [connectCopy serviceID];
  v6 = [[HRCServiceInfo alloc] initWithService:connectCopy];
  services = [(HRCAACPSource *)self services];
  v8 = [NSNumber numberWithUnsignedLongLong:serviceID];
  [services setObject:v6 forKeyedSubscript:v8];

  bluetoothAddress = [(HRCServiceInfo *)v6 bluetoothAddress];
  bluetoothAddressData = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
  v11 = [bluetoothAddress isEqualToData:bluetoothAddressData];

  if (v11)
  {
    [(HRCServiceInfo *)v6 setAaDevice:self->_aaDevice];
  }

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015244;
  v13[3] = &unk_1000409E0;
  objc_copyWeak(v14, &location);
  v14[1] = serviceID;
  [connectCopy setRemovalHandler:v13];
  self->_available = [(NSMutableDictionary *)self->_services count]!= 0;
  if ([(NSMutableDictionary *)self->_services count]== 1)
  {
    availabilityHandler = self->_availabilityHandler;
    if (availabilityHandler)
    {
      availabilityHandler[2](availabilityHandler, 1);
    }
  }

  [(HRCAACPSource *)self _updateStreamingMode];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)_removalHandler:(unint64_t)handler
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  activeService = self->_activeService;
  services = self->_services;
  v7 = [NSNumber numberWithUnsignedLongLong:handler];
  v8 = [(NSMutableDictionary *)services objectForKeyedSubscript:v7];

  if (activeService == v8)
  {
    [(HRCAACPSource *)self _notifySourceUpdate:0 forSource:self->_activeService];
    v9 = self->_activeService;
    self->_activeService = 0;
  }

  v10 = self->_services;
  v11 = [NSNumber numberWithUnsignedLongLong:handler];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  if (![(NSMutableDictionary *)self->_services count])
  {
    availabilityHandler = self->_availabilityHandler;
    if (availabilityHandler)
    {
      availabilityHandler[2](availabilityHandler, 0);
    }
  }

  v13 = [(NSMutableDictionary *)self->_services count];
  self->_available = v13 != 0;
  v14 = sub_10000132C(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    services = [(HRCAACPSource *)self services];
    v16 = [NSNumber numberWithUnsignedLongLong:handler];
    v17 = [services objectForKeyedSubscript:v16];
    uuid = [v17 uuid];
    available = self->_available;
    v20 = 134218498;
    handlerCopy = handler;
    v22 = 2114;
    v23 = uuid;
    v24 = 1024;
    v25 = available;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "AACP HR service removed:0x%llx uuid: %{public}@ available:%{BOOL}u", &v20, 0x1Cu);
  }

  [(HRCAACPSource *)self _updateStreamingMode];
}

- (void)_setStreamingMode:(unint64_t)mode
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (self->_streamingMode != mode)
  {
    self->_streamingMode = mode;
    v6 = sub_10000132C(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      available = self->_available;
      v8[0] = 67240448;
      v8[1] = mode;
      v9 = 1024;
      v10 = available;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AACP Source streaming mode set %{public}d available:%{BOOL}u", v8, 0xEu);
    }

    [(HRCAACPSource *)self _updateStreamingMode];
  }
}

- (void)_updateStreamingMode
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  activeService = self->_activeService;
  location = &self->_activeService;
  if (!self->_streamingMode)
  {
    if (activeService)
    {
      [(HRCAACPSource *)self _notifySourceUpdate:0 forSource:?];
      v30 = self->_activeService;
      self->_activeService = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    services = [(HRCAACPSource *)self services];
    allValues = [services allValues];

    v32 = [allValues countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v32)
    {
      v33 = *v47;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(allValues);
          }

          service = [*(*(&v46 + 1) + 8 * i) service];
          [(HRCAACPSource *)self _setStreamingMode:0 forService:service];
        }

        v32 = [allValues countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v32);
    }

    goto LABEL_37;
  }

  bluetoothAddress = [(HRCServiceInfo *)activeService bluetoothAddress];
  bluetoothAddressData = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
  v6 = [bluetoothAddress isEqualToData:bluetoothAddressData];

  if (((*location != 0) & v6) == 1)
  {
    virtualDevice = self->_virtualDevice;
    virtualDevice = [*location virtualDevice];
    if (virtualDevice == virtualDevice)
    {
      allValues = sub_10000132C(virtualDevice);
      if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
      {
        service2 = [*location service];
        *buf = 134349056;
        serviceID = [service2 serviceID];
        _os_log_impl(&_mh_execute_header, allValues, OS_LOG_TYPE_DEFAULT, "Active service 0x%{public}llx still valid", buf, 0xCu);
      }

LABEL_37:

      v13 = 0;
      v28 = 0;
      goto LABEL_45;
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  services2 = [(HRCAACPSource *)self services];
  allValues2 = [services2 allValues];

  obj = allValues2;
  v13 = 0;
  v14 = 0;
  v15 = [allValues2 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v15)
  {
    goto LABEL_40;
  }

  v16 = *v43;
  do
  {
    for (j = 0; j != v15; j = j + 1)
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v42 + 1) + 8 * j);
      bluetoothAddress2 = [v18 bluetoothAddress];
      bluetoothAddressData2 = [(AudioAccessoryDevice *)self->_aaDevice bluetoothAddressData];
      v21 = [bluetoothAddress2 isEqualToData:bluetoothAddressData2];

      if (v21)
      {
        v22 = self->_virtualDevice;
        virtualDevice2 = [v18 virtualDevice];
        if (v22 == virtualDevice2)
        {
          if (v14)
          {
            v24 = sub_10000132C(virtualDevice2);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              sub_10001716C(buf, &buf[1], v24);
            }
          }

          service3 = v14;
          v14 = v18;
          goto LABEL_20;
        }
      }

      if (([v18 simulator]& 1) != 0)
      {
        service3 = v13;
        v13 = v18;
LABEL_20:
        v26 = v18;
        goto LABEL_22;
      }

      service3 = [v18 service];
      [(HRCAACPSource *)self _setStreamingMode:0 forService:service3];
LABEL_22:
    }

    v15 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  }

  while (v15);

  v28 = v14;
  if (v14 && v13)
  {
    v29 = sub_10000132C(v27);
    obj = v29;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1000171AC(v29);
    }

LABEL_40:

    v28 = v14;
  }

  else if (v13)
  {
    v14 = v13;
    obj = v28;
    v13 = v14;
    goto LABEL_40;
  }

  if (*locationa)
  {
    [(HRCAACPSource *)self _notifySourceUpdate:0 forSource:?];
    v36 = *locationa;
    *locationa = 0;
  }

  if (v28)
  {
    streamingMode = self->_streamingMode;
    service4 = [v28 service];
    [(HRCAACPSource *)self _setStreamingMode:streamingMode forService:service4];

    objc_storeStrong(locationa, v28);
    [(HRCAACPSource *)self _notifySourceUpdate:self->_streamingMode forSource:self->_activeService];
  }

LABEL_45:
}

- (void)_notifySourceUpdate:(unint64_t)update forSource:(id)source
{
  sourceCopy = source;
  v7 = sourceCopy;
  if (update && self->_fitNotificationParamUpdateHandler)
  {
    aaDevice = [sourceCopy aaDevice];
    if ([aaDevice productID] == 8221)
    {

      v9.n128_u32[0] = 1036831949;
    }

    else
    {
      v10 = [v7 simProductID] == 8221;

      v9.n128_u32[0] = dword_10002C8C8[v10];
    }

    (*(self->_fitNotificationParamUpdateHandler + 2))(v9);
  }

  if (self->_sourceUpdateHandler)
  {
    v13 = +[NSDate now];
    std::chrono::steady_clock::now();
    service = [v7 service];
    aaDevice2 = [v7 aaDevice];
    v14 = [HRCServiceInfo makeDevice:service aaDevice:aaDevice2];
    uuid = [v7 uuid];
    [v7 virtualDevice];
    [v7 aaDevice];

    (*(self->_sourceUpdateHandler + 2))();
  }
}

- (void)_setStreamingMode:(unint64_t)mode forService:(id)service
{
  serviceCopy = service;
  v7 = serviceCopy;
  if (mode - 1 >= 2)
  {
    if (!mode)
    {
      [(HRCAACPSource *)self _stopStreaming:serviceCopy];
    }
  }

  else
  {
    [(HRCAACPSource *)self _startStreaming:serviceCopy];
  }
}

- (void)_startStreaming:(id)streaming
{
  streamingCopy = streaming;
  v4 = [streamingCopy setProperty:&off_1000432A0 forKey:@"ReportInterval"];
  if (v4)
  {
    v5 = sub_10000132C(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      serviceID = [streamingCopy serviceID];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Streaming started for AACP source 0x%{public}llx", &v6, 0xCu);
    }
  }

  else
  {
    v5 = sub_10000132C(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000171F0(&v6, [streamingCopy serviceID], v5);
    }
  }
}

- (void)_stopStreaming:(id)streaming
{
  streamingCopy = streaming;
  v4 = [streamingCopy setProperty:&off_1000432E8 forKey:@"ReportInterval"];
  if (v4)
  {
    v5 = sub_10000132C(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      serviceID = [streamingCopy serviceID];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Streaming stopped for AACP source 0x%{public}llx", &v6, 0xCu);
    }
  }

  else
  {
    v5 = sub_10000132C(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001722C(&v6, [streamingCopy serviceID], v5);
    }
  }
}

- (void)_handleHeartRate:(id)rate
{
  rateCopy = rate;
  v4 = rateCopy;
  if (!rateCopy)
  {
    goto LABEL_53;
  }

  v65 = rateCopy;
  [rateCopy doubleValueForField:2818049];
  v6 = v5;
  v61 = [v4 integerValueForField:2818050];
  timestamp = [v4 timestamp];
  v60 = [v4 integerValueForField:2818048];
  dispatch_assert_queue_V2(self->_serviceQueue);
  v62 = +[NSUUID UUID];
  services = [(HRCAACPSource *)self services];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v65 senderID]);
  v10 = [services objectForKeyedSubscript:v9];

  v64 = v10;
  hrcDevice = [v10 hrcDevice];

  if (!hrcDevice)
  {
    service = [v10 service];
    aaDevice = [v10 aaDevice];
    v14 = [HRCServiceInfo makeDevice:service aaDevice:aaDevice];
    [v64 setHrcDevice:v14];
  }

  services2 = [(HRCAACPSource *)self services];
  v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v65 senderID]);
  v17 = [services2 objectForKeyedSubscript:v16];
  uuid = [v17 uuid];

  v19 = sub_10000132C(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134547203;
    v75 = v60;
    v76 = 2053;
    v77 = v6;
    v78 = 1026;
    v79 = v61;
    v80 = 2050;
    v81 = timestamp;
    v82 = 2050;
    senderID = [v65 senderID];
    v84 = 2114;
    v85 = uuid;
    v86 = 2114;
    v87 = v62;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "AACP HR %{sensitive}ld (%{sensitive}f conf) loc:%{public}hu gen:%{public}llu sender:0x%{public}llx Source:%{public}@ Sample:%{public}@ \n", buf, 0x44u);
  }

  uuid2 = [(HRCServiceInfo *)self->_activeService uuid];
  v21 = [uuid isEqual:uuid2];

  if ((v21 & 1) == 0)
  {
    v23 = sub_10000132C(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [(HRCServiceInfo *)self->_activeService uuid];
      sub_100017268(uuid3, uuid, buf, v23);
    }
  }

  hrcDevice2 = [v64 hrcDevice];
  v26 = hrcDevice2 == 0;

  if (v26)
  {
    v56 = sub_10000132C(v27);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_100017314(v72, [v65 senderID], v56);
    }

    goto LABEL_51;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  children = [v65 children];
  type = [children countByEnumeratingWithState:&v67 objects:v71 count:16];
  v30 = type;
  if (!type)
  {

LABEL_49:
    v56 = sub_10000132C(v51);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      sub_1000172D0(v56);
    }

LABEL_51:
    v32 = 0;
    goto LABEL_52;
  }

  v31 = 0;
  v32 = 0;
  v33 = *v68;
  do
  {
    v34 = 0;
    do
    {
      if (*v68 != v33)
      {
        objc_enumerationMutation(children);
      }

      v35 = *(*(&v67 + 1) + 8 * v34);
      v36 = sub_10000132C(type);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *v72 = 138543362;
        v73 = v35;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "AACP child event %{public}@", v72, 0xCu);
      }

      if ([v35 type] == 1 && objc_msgSend(v35, "integerValueForField:", 0x10000) == 65301 && objc_msgSend(v35, "integerValueForField:", 65537) == 290)
      {
        v37 = [v35 dataValueForField:65540];
        v38 = [v35 integerValueForField:65539];
        v41 = v38;
        if (v38 == 20)
        {
          LODWORD(v39) = v37[3];
          LODWORD(v40) = v37[4];
          v42 = [NSDate dateWithTimeIntervalSince1970:v40 / 1000000000.0 + v39];

          v44 = sub_10000132C(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [(NSDateFormatter *)self->_timeSyncFormatter stringFromDate:v42];
            *v72 = 138543362;
            v73 = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "AACP HR TimeSync: %{public}@", v72, 0xCu);
          }

          goto LABEL_34;
        }

        v44 = sub_10000132C(v38);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v72 = 134349056;
        v73 = v41;
        v49 = v44;
        v50 = "AACP HR TimeSync invalid size %{public}zu";
        goto LABEL_38;
      }

      type = [v35 type];
      if (type == 1)
      {
        type = [v35 integerValueForField:0x10000];
        if (type == 65301)
        {
          type = [v35 integerValueForField:65537];
          if (type == 18)
          {
            v46 = [v35 dataValueForField:65540];
            v47 = [v35 integerValueForField:65539];
            v48 = v47;
            if (v47 == 4)
            {
              v31 = *v46;
              v44 = sub_10000132C(4);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *v72 = 67240192;
                LODWORD(v73) = v31;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "AACP Flags %{public}08x\n", v72, 8u);
              }

LABEL_33:
              v42 = v32;
LABEL_34:

              v32 = v42;
              goto LABEL_35;
            }

            v44 = sub_10000132C(v47);
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_33;
            }

            *v72 = 134349056;
            v73 = v48;
            v49 = v44;
            v50 = "AACP Flags invalid size %{public}zu";
LABEL_38:
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, v50, v72, 0xCu);
            goto LABEL_33;
          }
        }
      }

LABEL_35:
      v34 = v34 + 1;
    }

    while (v30 != v34);
    type = [children countByEnumeratingWithState:&v67 objects:v71 count:16];
    v30 = type;
  }

  while (type);

  if (!v32)
  {
    goto LABEL_49;
  }

  if ((v61 & 0xFFFC) != 0)
  {
    v52 = 0;
  }

  else
  {
    v52 = v61;
  }

  v53 = [HRCHeartRateData alloc];
  v54 = [NSNumber numberWithDouble:v6];
  hrcDevice3 = [v64 hrcDevice];
  HIDWORD(v59) = v31;
  LOBYTE(v59) = v52;
  LOWORD(v58) = 1;
  v56 = [v53 initWithHeartRate:v54 confidence:0 confidenceLevel:1 arbitrationStatus:2 context:2 hrContext:v32 timestamp:v60 sampleUuid:v62 sourceType:v58 streamingThrottleStatus:uuid deviceUuid:hrcDevice3 device:v59 sensorLocation:? flags:?];

  heartRateHandler = self->_heartRateHandler;
  if (heartRateHandler)
  {
    heartRateHandler[2](heartRateHandler, v56);
  }

LABEL_52:

  v4 = v65;
LABEL_53:
}

- (void)_handleVendorDefinedEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    v6 = [eventCopy integerValueForField:0x10000];
    v7 = [v5 integerValueForField:65537];
    v8 = v7;
    if (v6 != 65290 || v7 != 19)
    {
      v11 = sub_10000132C(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v23 = 134218240;
        v24 = v6;
        v25 = 2048;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring vendor-defined event usage page: %04lX usage: %04lX", &v23, 0x16u);
      }

      goto LABEL_27;
    }

    services = [(HRCAACPSource *)self services];
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 senderID]);
    v11 = [services objectForKeyedSubscript:v10];

    aaDevice = [v11 aaDevice];
    if (aaDevice)
    {
    }

    else
    {
      simulator = [v11 simulator];
      if ((simulator & 1) == 0)
      {
        v20 = sub_10000132C(simulator);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100017350(v20);
        }

        goto LABEL_27;
      }
    }

    v14 = [v5 dataValueForField:65540];
    v15 = [v5 integerValueForField:65539];
    v16 = sub_10000132C(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134217984;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Handling CoreAnalytics Event length %zu", &v23, 0xCu);
    }

    if (!self->_analyticsHandler)
    {
LABEL_27:

      goto LABEL_28;
    }

    v17 = [NSData dataWithBytes:v14 length:v15];
    aaDevice2 = [v11 aaDevice];
    if ([aaDevice2 productID] == 8221)
    {

      goto LABEL_26;
    }

    if ([v11 simulator])
    {
      v19 = [v11 simProductID]== 8221;

      if (v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    aaDevice3 = [v11 aaDevice];
    if ([aaDevice3 productID] != 8231)
    {
      aaDevice4 = [v11 aaDevice];
      if ([aaDevice4 productID] != 8232)
      {
        [v11 simulator];

        goto LABEL_26;
      }
    }

LABEL_26:
    (*(self->_analyticsHandler + 2))();

    goto LABEL_27;
  }

LABEL_28:
}

@end