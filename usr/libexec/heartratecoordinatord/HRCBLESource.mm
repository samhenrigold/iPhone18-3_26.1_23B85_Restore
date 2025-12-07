@interface HRCBLESource
- (BOOL)available;
- (HRCBLESource)init;
- (void)_setDiscoveryEnabled:(BOOL)enabled;
- (void)_setStreamingMode:(unint64_t)mode discoveryEnabled:(BOOL)enabled;
- (void)activate;
- (void)connectedDevicesDidChange:(id)change;
- (void)dealloc;
- (void)heartRateSampleWasCollected:(id)collected device:(id)device;
- (void)setAvailabilityHandler:(id)handler;
- (void)setBluetoothLeSourcesUpdateHandler:(id)handler;
- (void)setDiscoveryEnabled:(BOOL)enabled;
- (void)setHeartRateHandler:(id)handler;
- (void)setOpportunisticMode:(BOOL)mode;
- (void)setSourceUpdateHandler:(id)handler;
- (void)setStreamingMode:(unint64_t)mode;
@end

@implementation HRCBLESource

- (HRCBLESource)init
{
  v17.receiver = self;
  v17.super_class = HRCBLESource;
  v2 = [(HRCBLESource *)&v17 init];
  v3 = sub_10000132C(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing HRCBLESource.", buf, 2u);
  }

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, -1);

  v6 = dispatch_queue_create("com.apple.heartratecoordinator.blesource", v5);
  v7 = *(v2 + 1);
  *(v2 + 1) = v6;

  v8 = objc_opt_new();
  v9 = *(v2 + 9);
  *(v2 + 9) = v8;

  v10 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v2 + 1));
  v11 = *(v2 + 10);
  *(v2 + 10) = v10;

  objc_initWeak(buf, v2);
  v12 = *(v2 + 10);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000686C;
  handler[3] = &unk_1000407A0;
  objc_copyWeak(&v15, buf);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(*(v2 + 10));
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v2;
}

- (void)dealloc
{
  v3 = sub_10000132C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCBLESource dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = HRCBLESource;
  [(HRCBLESource *)&v4 dealloc];
}

- (BOOL)available
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006A54;
  v5[3] = &unk_1000407F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)activate
{
  if (self->_bleHeartRate)
  {
    v2 = sub_10000132C(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100007C84(v2);
    }
  }

  else
  {
    v4 = [[HLEHeartRateRequestor alloc] initWithDelegate:self onQueue:self->_queue];
    bleHeartRate = self->_bleHeartRate;
    self->_bleHeartRate = v4;
  }
}

- (void)setAvailabilityHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006B8C;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)setHeartRateHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006C68;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)setSourceUpdateHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006D44;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)setBluetoothLeSourcesUpdateHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006E20;
  v7[3] = &unk_100040818;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)setOpportunisticMode:(BOOL)mode
{
  v3 = sub_10000132C(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Opportunistic mode not supported on BLE sources", v4, 2u);
  }
}

- (void)setStreamingMode:(unint64_t)mode
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006F40;
  v4[3] = &unk_100040840;
  v4[4] = self;
  v4[5] = mode;
  dispatch_async(queue, v4);
}

- (void)_setStreamingMode:(unint64_t)mode discoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_queue);
  if (mode - 1 < 2)
  {
    LOBYTE(enabledCopy) = 0;
    v8 = 2;
LABEL_5:
    self->_discoveryEnabled = enabledCopy;
    goto LABEL_7;
  }

  if (!mode)
  {
    v8 = enabledCopy;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  v9 = sub_10000132C(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    discoveryEnabled = self->_discoveryEnabled;
    v11[0] = 67109632;
    v11[1] = mode;
    v12 = 1024;
    v13 = discoveryEnabled;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BLE streaming mode set to %u discovery %{BOOL}u HLE: %u", v11, 0x14u);
  }

  [(HLEHeartRateRequestor *)self->_bleHeartRate setHeartRateState:v8];
}

- (void)connectedDevicesDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_queue);
  available = self->_available;
  v5 = [changeCopy count];
  self->_available = v5 != 0;
  v6 = sub_10000132C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = [changeCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "received updated bluetooth le source list with count : %{public}lu", &buf, 0xCu);
  }

  bleSourcesUpdateHandler = self->_bleSourcesUpdateHandler;
  if (bleSourcesUpdateHandler)
  {
    v9 = sub_1000018EC(changeCopy);
    bleSourcesUpdateHandler[2](bleSourcesUpdateHandler, v9);
  }

  if (self->_available != available)
  {
    v10 = sub_10000132C(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_available;
      LODWORD(buf) = 67109376;
      DWORD1(buf) = available;
      WORD4(buf) = 1024;
      *(&buf + 10) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BLE availability changed: %{BOOL}u -> %{BOOL}u", &buf, 0xEu);
    }

    availabilityHandler = self->_availabilityHandler;
    if (availabilityHandler)
    {
      availabilityHandler[2](availabilityHandler, self->_available);
    }

    if (self->_available)
    {
      v13 = os_transaction_create();
      [(HRCBLESource *)self setTransaction:v13];

      v15 = sub_10000132C(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v16 = "Holding transaction because BLE device is connected";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &buf, 2u);
      }
    }

    else
    {
      v15 = sub_10000132C([(HRCBLESource *)self setTransaction:0]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v16 = "Releasing transaction because BLE device disconnected";
        goto LABEL_15;
      }
    }
  }

  if (self->_sourceUpdateHandler)
  {
    v17 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = changeCopy;
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v19)
    {
      v20 = *v42;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v41 + 1) + 8 * i);
          v23 = [NSUUID alloc];
          localIdentifier = [v22 localIdentifier];
          v25 = [v23 initWithUUIDString:localIdentifier];

          if (v25)
          {
            if (([(NSMutableArray *)self->_activeDeviceUUIDs containsObject:v25]& 1) == 0)
            {
              *&buf = +[NSDate now];
              *(&buf + 1) = std::chrono::steady_clock::now();
              v47 = 0;
              v27 = v25;
              v48 = v27;
              v49 = 771;
              (*(self->_sourceUpdateHandler + 2))();
              [(NSMutableArray *)v17 addObject:v27];
            }
          }

          else
          {
            v28 = sub_10000132C(v26);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              localIdentifier2 = [v22 localIdentifier];
              sub_100007CC8(localIdentifier2, v50, &v51, v28);
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v19);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = self->_activeDeviceUUIDs;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v31)
    {
      v32 = *v38;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v37 + 1) + 8 * j);
          if (([(NSMutableArray *)v17 containsObject:v34]& 1) == 0)
          {
            *&buf = +[NSDate now];
            *(&buf + 1) = std::chrono::steady_clock::now();
            v47 = 0;
            v48 = v34;
            v49 = 3;
            (*(self->_sourceUpdateHandler + 2))();
          }
        }

        v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v31);
    }

    activeDeviceUUIDs = self->_activeDeviceUUIDs;
    self->_activeDeviceUUIDs = v17;
  }
}

- (void)heartRateSampleWasCollected:(id)collected device:(id)device
{
  collectedCopy = collected;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  uUID = [collectedCopy UUID];
  dateInterval = [collectedCopy dateInterval];
  startDate = [dateInterval startDate];

  quantity = [collectedCopy quantity];
  [quantity _beatsPerMinute];
  v13 = v12;

  v15 = sub_10000132C(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134546179;
    v29 = v13;
    v30 = 2114;
    v31 = uUID;
    v32 = 2114;
    v33 = startDate;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BLE HR %{sensitive}f %{public}@ TS: %{public}@", buf, 0x20u);
  }

  if (deviceCopy)
  {
    v17 = [NSUUID alloc];
    localIdentifier = [deviceCopy localIdentifier];
    v19 = [v17 initWithUUIDString:localIdentifier];

    if (v19)
    {
      v21 = [HRCHeartRateData alloc];
      v22 = [HRCUtilities translateToHRCDevice:deviceCopy];
      LOBYTE(v27) = 0;
      LOWORD(v26) = 3;
      v23 = [v21 initWithHeartRate:0 confidence:0 confidenceLevel:0 arbitrationStatus:0 context:0 hrContext:startDate timestamp:v13 sampleUuid:uUID sourceType:v26 streamingThrottleStatus:v19 deviceUuid:v22 device:v27 sensorLocation:? flags:?];

      heartRateHandler = self->_heartRateHandler;
      if (heartRateHandler)
      {
        heartRateHandler[2](heartRateHandler, v23);
      }
    }

    else
    {
      v23 = sub_10000132C(v20);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        localIdentifier2 = [deviceCopy localIdentifier];
        sub_100007D24(localIdentifier2, buf, v23);
      }
    }
  }

  else
  {
    v19 = sub_10000132C(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_100007D7C(v19);
    }
  }
}

- (void)setDiscoveryEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007A14;
  v4[3] = &unk_100040868;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(queue, v4);
}

- (void)_setDiscoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_queue);
  v6 = sub_10000132C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "bluetooth le source discovery enabled : %{BOOL}u", v10, 8u);
  }

  [(HRCBLESource *)self _setStreamingMode:self->_streamingMode discoveryEnabled:enabledCopy];
  if (enabledCopy)
  {
    bleSourcesUpdateHandler = self->_bleSourcesUpdateHandler;
    if (bleSourcesUpdateHandler)
    {
      currentConnectedDevices = [(HLEHeartRateRequestor *)self->_bleHeartRate currentConnectedDevices];
      v9 = sub_1000018EC(currentConnectedDevices);
      bleSourcesUpdateHandler[2](bleSourcesUpdateHandler, v9);
    }
  }
}

@end