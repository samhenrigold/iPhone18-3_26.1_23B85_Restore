@interface HRCPublisher
- (HRCPublisher)initWithAnalyticsReporter:(id)reporter isInternalVariant:(BOOL)variant;
- (void)_disableDataCollectorForSource:(unsigned __int8)source;
- (void)_enableDataCollectorForSource:(unsigned __int8)source;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)_publishHeartRate:(id)rate;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)publishHeartRate:(id)rate;
@end

@implementation HRCPublisher

- (HRCPublisher)initWithAnalyticsReporter:(id)reporter isInternalVariant:(BOOL)variant
{
  reporterCopy = reporter;
  v22.receiver = self;
  v22.super_class = HRCPublisher;
  v8 = [(HRCPublisher *)&v22 init];
  objc_storeStrong(&v8->_analyticsReporter, reporter);
  v9 = dispatch_queue_create("com.apple.heartratecoordinator.healthkit.publisher", 0);
  publisherQueue = v8->_publisherQueue;
  v8->_publisherQueue = v9;

  v12 = v8->_publisherQueue;
  if (v12)
  {
    v8->_isInternalVariant = variant;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017540;
    block[3] = &unk_1000406C0;
    v13 = v8;
    v21 = v13;
    dispatch_async(v12, block);
    v15 = sub_10000132C(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HRCPublisher init", v19, 2u);
    }

    v16 = v13;
    p_super = &v21->super;
  }

  else
  {
    p_super = sub_10000132C(v11);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      sub_1000190B4();
    }

    v16 = 0;
  }

  return v16;
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  v5 = update->var0;
  var1 = update->var1;
  v7 = update->var2;
  v8 = update->var3;
  v9 = *&update->var4;
  publisherQueue = self->_publisherQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_1000176FC;
  v14[3] = &unk_100040D78;
  v14[4] = self;
  v15 = v5;
  v16 = var1;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v5;
  dispatch_async(publisherQueue, v14);
}

- (void)publishHeartRate:(id)rate
{
  rateCopy = rate;
  publisherQueue = self->_publisherQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000177A4;
  v7[3] = &unk_100040BC8;
  v7[4] = self;
  v8 = rateCopy;
  v6 = rateCopy;
  dispatch_async(publisherQueue, v7);
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update
{
  dispatch_assert_queue_V2(self->_publisherQueue);
  if (update->var4)
  {
    if (update->var5)
    {

      [(HRCPublisher *)self _enableDataCollectorForSource:?];
    }

    else
    {

      [(HRCPublisher *)self _disableDataCollectorForSource:?];
    }
  }

  else
  {
    v6 = sub_10000132C(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1000190E8();
    }
  }
}

- (void)_enableDataCollectorForSource:(unsigned __int8)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_publisherQueue);
  switch(sourceCopy)
  {
    case 3:
      btleSourceCollector = [(HRCPublisher *)self btleSourceCollector];
      v8 = sub_100017A08(btleSourceCollector);

      if (v8)
      {
        return;
      }

      hkStore = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(3, hkStore);
      [(HRCPublisher *)self setBtleSourceCollector:v6];
      break;
    case 2:
      watchSourceCollector = [(HRCPublisher *)self watchSourceCollector];
      v7 = sub_100017A08(watchSourceCollector);

      if (v7)
      {
        return;
      }

      hkStore = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(2, hkStore);
      [(HRCPublisher *)self setWatchSourceCollector:v6];
      break;
    case 1:
      aacpSourceCollector = [(HRCPublisher *)self aacpSourceCollector];
      v5 = sub_100017A08(aacpSourceCollector);

      if (v5)
      {
        return;
      }

      hkStore = [(HRCPublisher *)self hkStore];
      v6 = sub_100017B04(1, hkStore);
      [(HRCPublisher *)self setAacpSourceCollector:v6];
      break;
    default:
      return;
  }
}

- (void)_disableDataCollectorForSource:(unsigned __int8)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_publisherQueue);
  switch(sourceCopy)
  {
    case 3:
      btleSourceCollector = [(HRCPublisher *)self btleSourceCollector];

      if (btleSourceCollector)
      {
        v15 = sub_10000132C(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "tearing down hk data collector for btle source", v17, 2u);
        }

        btleSourceCollector2 = [(HRCPublisher *)self btleSourceCollector];
        [btleSourceCollector2 finishWithCompletion:&stru_100040E08];

        [(HRCPublisher *)self setBtleSourceCollector:0];
      }

      break;
    case 2:
      watchSourceCollector = [(HRCPublisher *)self watchSourceCollector];

      if (watchSourceCollector)
      {
        v11 = sub_10000132C(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "tearing down hk data collector for watch source", v18, 2u);
        }

        watchSourceCollector2 = [(HRCPublisher *)self watchSourceCollector];
        [watchSourceCollector2 finishWithCompletion:&stru_100040DE8];

        [(HRCPublisher *)self setWatchSourceCollector:0];
      }

      break;
    case 1:
      aacpSourceCollector = [(HRCPublisher *)self aacpSourceCollector];

      if (aacpSourceCollector)
      {
        v7 = sub_10000132C(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "tearing down hk data collector for aacp source", buf, 2u);
        }

        aacpSourceCollector2 = [(HRCPublisher *)self aacpSourceCollector];
        [aacpSourceCollector2 finishWithCompletion:&stru_100040DC8];

        [(HRCPublisher *)self setAacpSourceCollector:0];
      }

      break;
  }
}

- (void)_publishHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_publisherQueue);
  sourceType = [rateCopy sourceType];
  if (sourceType)
  {
    v52 = _HKPrivateMetadataKeyHeartRateContext;
    v71 = _HKPrivateMetadataKeyHeartRateContext;
    v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rateCopy context]);
    v72 = v4;
    v61 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];

    v6 = sub_10000132C(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uuid = [rateCopy uuid];
      [rateCopy heartRate];
      *buf = 138544131;
      *&buf[4] = uuid;
      v65 = 2053;
      v66 = v8;
      v67 = 2053;
      hrContext = [rateCopy hrContext];
      v69 = 1026;
      streamingThrottleStatus = [rateCopy streamingThrottleStatus];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "publishing HR sample to HK with UUID : %{public}@ , bpm : %{sensitive}f , context : %{sensitive}ld , streamingThrottleStatus : %{public}d", buf, 0x26u);
    }

    v9 = [HKDevice alloc];
    device = [rateCopy device];
    name = [device name];
    device2 = [rateCopy device];
    manufacturer = [device2 manufacturer];
    device3 = [rateCopy device];
    model = [device3 model];
    device4 = [rateCopy device];
    hardwareVersion = [device4 hardwareVersion];
    device5 = [rateCopy device];
    firmwareVersion = [device5 firmwareVersion];
    device6 = [rateCopy device];
    softwareVersion = [device6 softwareVersion];
    device7 = [rateCopy device];
    localIdentifier = [device7 localIdentifier];
    device8 = [rateCopy device];
    uDIDeviceIdentifier = [device8 UDIDeviceIdentifier];
    v60 = [v9 initWithName:name manufacturer:manufacturer model:model hardwareVersion:hardwareVersion firmwareVersion:firmwareVersion softwareVersion:softwareVersion localIdentifier:localIdentifier UDIDeviceIdentifier:uDIDeviceIdentifier];

    device9 = [rateCopy device];
    bluetoothIdentifier = [device9 bluetoothIdentifier];
    [v60 _setBluetoothIdentifier:bluetoothIdentifier];

    sourceType2 = [rateCopy sourceType];
    if (sourceType2 > 1)
    {
      if (sourceType2 == 2)
      {
        if ([rateCopy hrContext] == 2)
        {
          watchSourceCollector = [(HRCPublisher *)self watchSourceCollector];
          v37 = watchSourceCollector == 0;

          if (v37)
          {
            v39 = sub_10000132C(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              sub_100019190();
            }

            hkStore = [(HRCPublisher *)self hkStore];
            v41 = sub_100017B04(2, hkStore);
            [(HRCPublisher *)self setWatchSourceCollector:v41];
          }

          watchSourceCollector2 = [(HRCPublisher *)self watchSourceCollector];
          v29 = +[HKDevice localDevice];
          v42 = sub_100018CC4(rateCopy);
          sub_100018B60(watchSourceCollector2, v29, v61, v42);
        }

        else
        {
          watchSourceCollector2 = [(HRCPublisher *)self hkStore];
          v43 = rateCopy;
          v44 = [HKUnit unitFromString:@"count/min"];
          [v43 heartRate];
          v45 = [HKQuantity quantityWithUnit:v44 doubleValue:?];

          v46 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
          v73 = v52;
          v47 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[HRCUtilities translateToHealthKitContextType:](HRCUtilities, "translateToHealthKitContextType:", [v43 hrContext]));
          *buf = v47;
          v48 = [NSDictionary dictionaryWithObjects:buf forKeys:&v73 count:1];

          timestamp = [v43 timestamp];
          timestamp2 = [v43 timestamp];
          v51 = +[HKDevice localDevice];
          v29 = [HKQuantitySample quantitySampleWithType:v46 quantity:v45 startDate:timestamp endDate:timestamp2 device:v51 metadata:v48];

          [watchSourceCollector2 saveObject:v29 withCompletion:&stru_100040E28];
        }

        goto LABEL_28;
      }

      if (sourceType2 == 3)
      {
        btleSourceCollector = [(HRCPublisher *)self btleSourceCollector];
        v31 = btleSourceCollector == 0;

        if (v31)
        {
          v33 = sub_10000132C(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            sub_10001915C();
          }

          hkStore2 = [(HRCPublisher *)self hkStore];
          v35 = sub_100017B04(3, hkStore2);
          [(HRCPublisher *)self setBtleSourceCollector:v35];
        }

        watchSourceCollector2 = [(HRCPublisher *)self btleSourceCollector];
        v29 = sub_100018CC4(rateCopy);
        sub_100018B60(watchSourceCollector2, v60, v61, v29);
        goto LABEL_28;
      }
    }

    else
    {
      if (!sourceType2)
      {
LABEL_30:

        goto LABEL_31;
      }

      if (sourceType2 == 1)
      {
        aacpSourceCollector = [(HRCPublisher *)self aacpSourceCollector];
        v23 = aacpSourceCollector == 0;

        if (v23)
        {
          v25 = sub_10000132C(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            sub_1000191C4();
          }

          hkStore3 = [(HRCPublisher *)self hkStore];
          v27 = sub_100017B04(1, hkStore3);
          [(HRCPublisher *)self setAacpSourceCollector:v27];
        }

        watchSourceCollector2 = [(HRCPublisher *)self aacpSourceCollector];
        v29 = sub_100018CC4(rateCopy);
        sub_100018B60(watchSourceCollector2, v60, v61, v29);
LABEL_28:
      }
    }

    -[HRCAnalyticsReporter heartRatePublishedFromSource:steadyClockDurationCount:](self->_analyticsReporter, "heartRatePublishedFromSource:steadyClockDurationCount:", [rateCopy sourceType], std::chrono::steady_clock::now().__d_.__rep_);
    goto LABEL_30;
  }

  v61 = sub_10000132C(sourceType);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
  {
    sub_1000191F8();
  }

LABEL_31:
}

@end