@interface WifiScannerBackend
+ (id)copySupportedChannelDicts:(__WiFiDeviceClient *)dicts;
- (BOOL)onQueueAllocManagerWithRunLoop:(__CFRunLoop *)loop;
- (BOOL)sensorPresent;
- (WifiScannerBackend)init;
- (id).cxx_construct;
- (unique_ptr<ScanInformation,)initiateScanOnDevice:(__WiFiDeviceClient *)device withSettings:(id)settings deviceNumber:(unint64_t)number;
- (void)invalidate;
- (void)onQueueDeleteCompletedScan:(void *)scan;
- (void)onQueueHandleDeviceAttached:(__WiFiDeviceClient *)attached;
- (void)onQueueHandleScanFor:(__WiFiDeviceClient *)for withResults:(id)results forScan:(void *)scan withSettings:(id)settings withRequest:(id)request withError:(int)error;
- (void)onQueueHandlerServerRestart;
- (void)onQueueInitiateScan:(id)scan initiated:(id)initiated;
- (void)onQueueNotifyWifiError:(int)error withSettings:(id)settings forScanInitiated:(duration<long)long;
- (void)onQueueRegisterCallbacks;
- (void)onQueueScanTimedOut:(void *)out withReason:(int)reason errorCode:(int)code forScanInitiated:(duration<long)long;
- (void)onQueueTeardown;
- (void)scanAsync:(id)async initiated:(id)initiated;
- (void)startListeningCachedScans;
- (void)stopListeningCachedScans;
@end

@implementation WifiScannerBackend

- (WifiScannerBackend)init
{
  self->_initialized = 0;
  v16.receiver = self;
  v16.super_class = WifiScannerBackend;
  v2 = [(BaseWifiScannerBackend *)&v16 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  if (!MobileWiFiContainsRadio())
  {
    if (qword_10045B050 == -1)
    {
      v13 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      sub_100386CE0();
      v13 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Platform doesn't contain radio", v15, 2u);
    goto LABEL_11;
  }

  v2->_isInternalBuild = MGGetBoolAnswer();
  v3 = dispatch_queue_create("com.apple.wifi.scanner.ios", 0);
  q = v2->_q;
  v2->_q = v3;

  if (!v2->_q)
  {
    goto LABEL_11;
  }

  v5 = dispatch_semaphore_create(0);
  wifiThreadShutdown = v2->_wifiThreadShutdown;
  v2->_wifiThreadShutdown = v5;

  if (!v2->_wifiThreadShutdown)
  {
    goto LABEL_11;
  }

  v7 = dispatch_semaphore_create(0);
  if (v7 && (v8 = dispatch_semaphore_create(0), retryingScan = v2->_retryingScan, v2->_retryingScan = v8, retryingScan, v2->_retryingScan))
  {
    v10 = [[WifiScannerThread alloc] initWithBackend:v2];
    scannerThread = v2->_scannerThread;
    v2->_scannerThread = v10;

    [NSThread detachNewThreadSelector:"runWifiThread:" toTarget:v2->_scannerThread withObject:v7];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v2->_initialized = 1;
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:
  return v12;
}

- (void)invalidate
{
  if (self->_initialized)
  {
    atomic_store(1u, &self->_shutdownRequested);
    dispatch_semaphore_signal(self->_retryingScan);
    if (self->_wifiThreadRunLoop)
    {
      v14 = 0;
      q = self->_q;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_1002EFF18;
      block[3] = &unk_100448158;
      selfCopy = self;
      v13 = &v14;
      v4 = selfCopy;
      dispatch_sync(q, block);

      if ((v14 & 1) == 0)
      {
        if (qword_10045B050 == -1)
        {
          v5 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_100386CE0();
          v5 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }
        }

        *buf = 0;
        v6 = "wifiThreadRunLoop already deallocated. Shutdown is complete.";
        goto LABEL_20;
      }

      if (qword_10045B050 == -1)
      {
        v8 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
LABEL_8:
          dispatch_semaphore_wait(v4[10], 0xFFFFFFFFFFFFFFFFLL);
          if (qword_10045B050 != -1)
          {
            sub_100386CE0();
            v5 = qword_10045B058;
            if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
            {
              goto LABEL_21;
            }

            goto LABEL_10;
          }

          v5 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
LABEL_10:
            *buf = 0;
            v6 = "wifiThreadShutdown done. [IOSWifiScannerBackend invalidate] completed successfully.";
LABEL_20:
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, buf, 2u);
          }

LABEL_21:

          return;
        }
      }

      else
      {
        sub_100386CE0();
        v8 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Wait for the wifi thread runloop to terminate...", buf, 2u);
      goto LABEL_8;
    }

    if (qword_10045B050 == -1)
    {
      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_15:
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Wi-Fi thread already shut-down", buf, 2u);
      }
    }

    else
    {
      sub_100386CCC();
      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }
    }
  }

  else if (self->_wifiThreadRunLoop)
  {
    sub_100386E50(self);
  }
}

- (void)onQueueTeardown
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = *v25;
    do
    {
      v5 = 0;
      do
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v6 = qword_10045B058;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          uTF8String = [WiFiDeviceClientGetInterfaceName() UTF8String];
          LODWORD(buf.version) = 136315138;
          *(&buf.version + 4) = uTF8String;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Tearing down exiting device %s", &buf, 0xCu);
        }

        WiFiDeviceClientScanCancel();
        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v8 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.version) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unregistering per-device callbacks", &buf, 2u);
        }

        WiFiDeviceClientRegisterPowerCallback();
        WiFiDeviceClientRegisterScanUpdateCallback();
        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }

  wifiDevices = self->_wifiDevices;
  self->_wifiDevices = 0;

  if (self->_wifiManager)
  {
    memset(&buf, 0, sizeof(buf));
    v10 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &buf);
    CFRunLoopAddSource(self->_wifiThreadRunLoop, v10, kCFRunLoopDefaultMode);
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Tearing down existing manager", v23, 2u);
    }

    WiFiManagerClientRegisterServerRestartCallback();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientUnscheduleFromRunLoop();
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Releasing the WiFi manager", v23, 2u);
    }

    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;
    wifiThreadRunLoop = self->_wifiThreadRunLoop;
    self->_wifiThreadRunLoop = 0;
    v15 = self->_scannerThread;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002F0550;
    block[3] = &unk_100448190;
    v20 = wifiManager;
    v16 = v15;
    v19 = v16;
    v21 = wifiThreadRunLoop;
    v22 = v10;
    CFRunLoopPerformBlock(wifiThreadRunLoop, kCFRunLoopCommonModes, block);
    CFRunLoopWakeUp(wifiThreadRunLoop);
  }
}

- (void)onQueueRegisterCallbacks
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v6 = qword_10045B058;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          uTF8String = [WiFiDeviceClientGetInterfaceName() UTF8String];
          *buf = 134217984;
          v13 = uTF8String;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Registering callbacks for device %p", buf, 0xCu);
        }

        WiFiDeviceClientRegisterPowerCallback();
        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
    }

    while (v3);
  }

  WiFiManagerClientRegisterServerRestartCallback();
  WiFiManagerClientRegisterDeviceAttachmentCallback();
}

- (BOOL)onQueueAllocManagerWithRunLoop:(__CFRunLoop *)loop
{
  [(WifiScannerBackend *)self onQueueTeardown];
  self->_wifiManager = WiFiManagerClientCreate();
  v5 = WiFiManagerClientCopyDevices();
  wifiDevices = self->_wifiDevices;
  self->_wifiDevices = v5;

  v7 = self->_wifiDevices;
  if (v7 && [(NSArray *)v7 count])
  {
    sub_1002F0DDC(&self->_supportedChannelsPerDevice, [(NSArray *)self->_wifiDevices count]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_wifiDevices;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [WifiScannerBackend copySupportedChannelDicts:*(*(&v19 + 1) + 8 * i)];
          v18 = v12;
          var0 = self->_supportedChannelsPerDevice.var0;
          if (var0 >= self->_supportedChannelsPerDevice.var1)
          {
            v14 = sub_1002F4CCC(&self->_supportedChannelsPerDevice, &v18);
          }

          else
          {
            v18 = 0;
            *var0 = v12;
            v14 = (var0 + 1);
          }

          self->_supportedChannelsPerDevice.var0 = v14;
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    [(WifiScannerBackend *)self onQueueRegisterCallbacks];
    WiFiManagerClientScheduleWithRunLoop();
    WiFiManagerClientSetType();
    self->_wifiThreadRunLoop = loop;
    LOBYTE(v15) = 1;
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v16 = qword_10045B058;
    v15 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Platform doesn't contain any wifi devices", buf, 2u);
      LOBYTE(v15) = 0;
    }
  }

  return v15;
}

- (void)onQueueHandlerServerRestart
{
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100386CCC();
  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "wifi daemon restarted", v5, 2u);
  }

LABEL_4:
  for (i = self->_pendingScans.__end_.__next_; i != &self->_pendingScans; i = i->__end_.__next_)
  {
    sub_1002F1060(i->__size_, 54);
  }

  atomic_store(0, &self->_pendingScanCount.__a_.__a_value);
}

- (void)onQueueHandleDeviceAttached:(__WiFiDeviceClient *)attached
{
  if (qword_10045B050 == -1)
  {
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      return;
    }
  }

  else
  {
    sub_100386CCC();
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      return;
    }
  }

  *v4 = 0;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "device attachment unimplemented", v4, 2u);
}

+ (id)copySupportedChannelDicts:(__WiFiDeviceClient *)dicts
{
  v4 = [NSNumber numberWithInteger:27];

  return _WiFiDeviceClientCopyProperty(dicts, v4);
}

- (BOOL)sensorPresent
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_wifiDevices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v8 != v4)
      {
        objc_enumerationMutation(v2);
      }

      if (WiFiDeviceClientGetPower())
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 1;
}

- (void)startListeningCachedScans
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F1598;
  block[3] = &unk_1004481B0;
  selfCopy = self;
  v3 = selfCopy;
  dispatch_async(q, block);
}

- (void)stopListeningCachedScans
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F179C;
  block[3] = &unk_1004481E0;
  selfCopy = self;
  v3 = selfCopy;
  dispatch_async(q, block);
}

- (void)scanAsync:(id)async initiated:(id)initiated
{
  asyncCopy = async;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F19F0;
  block[3] = &unk_100448210;
  selfCopy = self;
  v9 = asyncCopy;
  v10 = objc_retainBlock(initiated);
  v14 = selfCopy;
  v15 = v9;
  v11 = v9;
  v12 = selfCopy;
  v16 = objc_retainBlock(v10);
  dispatch_async(q, block);
}

- (void)onQueueInitiateScan:(id)scan initiated:(id)initiated
{
  scanCopy = scan;
  initiatedCopy = initiated;
  v8 = _os_activity_create(&_mh_execute_header, "Wifi Scan", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = scanCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Initiating a scan with settings: %{public}@", &buf, 0xCu);
  }

  buf = 0uLL;
  v28 = 0;
  v10 = [(NSArray *)self->_wifiDevices count];
  if (v10)
  {
    sub_1002F4F04(&buf, v10);
  }

  v11 = [(NSArray *)self->_wifiDevices count];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002F1EE8;
  block[3] = &unk_100448240;
  selfCopy = self;
  v14 = v8;
  v15 = scanCopy;
  v16 = selfCopy;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  p_buf = &buf;
  dispatch_apply(v11, v12, block);

  sub_1002F5058(&v16->_pendingScans, &v16->_pendingScans, buf, *(&buf + 1));
  atomic_store(v16->_pendingScans.__size_, &v16->_pendingScanCount.__a_.__a_value);
  initiatedCopy[2](initiatedCopy, [(NSArray *)self->_wifiDevices count]);

  v17 = buf;
  if (buf)
  {
    v18 = *(&buf + 1);
    v19 = buf;
    if (*(&buf + 1) != buf)
    {
      do
      {
        v21 = *--v18;
        v20 = v21;
        *v18 = 0;
        if (v21)
        {
          sub_1002F42F8(v20);
          operator delete();
        }
      }

      while (v18 != v17);
      v19 = buf;
    }

    *(&buf + 1) = v17;
    operator delete(v19);
  }
}

- (unique_ptr<ScanInformation,)initiateScanOnDevice:(__WiFiDeviceClient *)device withSettings:(id)settings deviceNumber:(unint64_t)number
{
  settingsCopy = settings;
  v8 = self->_supportedChannelsPerDevice.__begin_[number];
  if (!v8)
  {
    v9 = [WifiScannerBackend copySupportedChannelDicts:device];
    if (v9)
    {
      v10 = v9;
      objc_storeStrong(&self->_supportedChannelsPerDevice.__begin_[number], v9);
      v8 = v10;
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v11 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        buf = 134217984;
        buf_4 = number;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get supported channels dictionaries for device %zu", &buf, 0xCu);
      }

      v8 = 0;
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002F27E4;
  v14[3] = &unk_100448278;
  v15 = v8;
  v12 = [(BaseWifiScannerBackend *)self log];
  [WifiScannerCommonDarwin scanSettingsToDictionary:settingsCopy usingSupportedChannels:v14 logTo:v12];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

- (void)onQueueNotifyWifiError:(int)error withSettings:(id)settings forScanInitiated:(duration<long)long
{
  v6 = *&error;
  settingsCopy = settings;
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WARNING: WiFi scan failed with error %d", buf, 8u);
  }

  if (settingsCopy)
  {
    v14 = @"scan parameters";
    v15 = settingsCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSError errorWithDomain:@"com.apple.pipeline.wifi" code:v6 userInfo:v10];
  v12 = [[WifiScannedSettings alloc] initWithSettings:settingsCopy cached:0 at:sub_10010C670() initiatedAt:a5.__rep_];
  [(WifiScannedSettings *)v12 setWifiError:v6];
  delegate = [(BaseWifiScannerBackend *)self delegate];
  [delegate wifiScanFailed:v11 withSettings:v12];
}

- (void)onQueueScanTimedOut:(void *)out withReason:(int)reason errorCode:(int)code forScanInitiated:(duration<long)long
{
  v7 = *&code;
  if (reason == 1)
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v17) = 67109120;
      HIDWORD(v17) = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Scan timed out with error code %d - cancelling", &v17, 8u);
    }

    WiFiDeviceClientScanCancel();
  }

  else if (!reason)
  {
    if (code == 82)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v10 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v17) = 0;
        v11 = "WiFi is powered off.";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 2;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, &v17, v14);
      }
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v16 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        LODWORD(v17) = 67109120;
        HIDWORD(v17) = v7;
        v11 = "Fake timeout for scan invalidation elapsed.  Scan had failed to schedule with %d";
        v12 = v16;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 8;
        goto LABEL_17;
      }
    }
  }

  [(WifiScannerBackend *)self onQueueNotifyWifiError:v7 withSettings:*(out + 3) forScanInitiated:a6.__rep_, v17];
  [(WifiScannerBackend *)self onQueueDeleteCompletedScan:out];
}

- (void)onQueueDeleteCompletedScan:(void *)scan
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    scanCopy3 = scan;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing pending scan %p", &v13, 0xCu);
  }

  p_pendingScans = &self->_pendingScans;
  next = self->_pendingScans.__end_.__next_;
  if (next != &self->_pendingScans)
  {
    while (next->super._log != scan)
    {
      next = next->super._delegate;
      if (next == p_pendingScans)
      {
        goto LABEL_17;
      }
    }
  }

  if (next == p_pendingScans)
  {
LABEL_17:
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      scanCopy3 = scan;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Completed scan %p but don't have it in the pending list", &v13, 0xCu);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v8 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      scanCopy3 = scan;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Erasing pending scan %p from the list", &v13, 0xCu);
    }

    isa = next->super.super.isa;
    delegate = next->super._delegate;
    *(isa + 1) = delegate;
    *delegate = isa;
    --self->_pendingScans.__size_;
    log = next->super._log;
    next->super._log = 0;
    if (log)
    {
      sub_1002F42F8(log);
      operator delete();
    }

    operator delete(next);
    atomic_store(self->_pendingScans.__size_, &self->_pendingScanCount.__a_.__a_value);
  }
}

- (void)onQueueHandleScanFor:(__WiFiDeviceClient *)for withResults:(id)results forScan:(void *)scan withSettings:(id)settings withRequest:(id)request withError:(int)error
{
  v8 = *&error;
  resultsCopy = results;
  settingsCopy = settings;
  requestCopy = request;
  if (!requestCopy)
  {
    sub_1000474A4(&buf, "");
    sub_100383A74(__p, &buf);
    sub_10003F5D0(__p);
  }

  if (!settingsCopy)
  {
    sub_1000474A4(&buf, "");
    sub_100383A74(__p, &buf);
    sub_10003F5D0(__p);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = v18;
  uTF8String = [v18 UTF8String];
  if ((isKindOfClass & 1) == 0)
  {
    sub_1000474A4(__p, "");
    sub_1002F55B0(&buf, "We expect that request is of type NSDictionary, but it's not. Memory smasher? Got ");
    sub_1002C60F8(&uTF8String, &v67);
    sub_1000E661C(__p, &buf, 2);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_63:
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

LABEL_71:
        operator delete(__p[0]);
LABEL_64:
        sub_10003F5D0(v63);
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

  objc_opt_class();
  v20 = objc_opt_isKindOfClass();
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = v22;
  uTF8String = [v22 UTF8String];
  if ((v20 & 1) == 0)
  {
    sub_1000474A4(__p, "");
    sub_1002F5600(&buf, "We expect that scanSettings is of type WifiScannerSettings, but it's not. Memory smasher? Got ");
    sub_1002C60F8(&uTF8String, &v67);
    sub_1000E661C(__p, &buf, 2);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_67:
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_74:
        operator delete(__p[0]);
LABEL_68:
        sub_10003F5D0(v63);
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_74;
  }

  if (!v8)
  {
    if (scan)
    {
      v28 = sub_10010C670();
      rep = std::chrono::steady_clock::now().__d_.__rep_;
      v30 = *(scan + 7);
      [(WifiScannerBackend *)self onQueueDeleteCompletedScan:scan];
      v31 = v28 - rep + v30;
    }

    else
    {
      v38 = [requestCopy objectForKeyedSubscript:qword_10045D480];
      v39 = [NSNumber numberWithInt:getpid()];
      v40 = [v38 isEqualToNumber:v39];

      if (v40)
      {
        if (qword_10045B050 != -1)
        {
          sub_100386CE0();
        }

        v41 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "Dropping cached scan results because it's for a scan we initiated", &buf, 2u);
        }

        goto LABEL_58;
      }

      v43 = [requestCopy objectForKeyedSubscript:qword_10045D488];
      v44 = v43;
      if (v43)
      {
        [v43 timeIntervalSinceNow];
        v31 = (v45 * -1000000000.0);
      }

      else
      {
        dwell = [settingsCopy dwell];
        channels = [settingsCopy channels];
        v48 = [channels count];

        v44 = [[NSDate alloc] initWithTimeIntervalSinceNow:(v48 * dwell) / -1000.0];
        v31 = 0;
      }

      if (qword_10045B050 != -1)
      {
        sub_100386CE0();
      }

      v49 = qword_10045B058;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = [v44 description];
        v51 = v50;
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = [v50 UTF8String];
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Got scan request at %s", &buf, 0xCu);
      }
    }

    v52 = [WifiScannerCommonDarwin networkResultsToScanResults:resultsCopy];
    v53 = [[WifiScannedSettings alloc] initWithSettings:settingsCopy cached:scan == 0 at:sub_10010C670() initiatedAt:v31];
    if (!scan)
    {
      v54 = [requestCopy objectForKeyedSubscript:@"SCAN_RSSI_THRESHOLD"];
      v55 = v54;
      if (v54)
      {
        -[WifiScannedSettings setScanRssiThreshold:](v53, "setScanRssiThreshold:", ([v54 intValue] << 32) | 1);
      }

      v56 = [requestCopy objectForKeyedSubscript:@"SCAN_MERGE"];
      v57 = v56;
      if (v56)
      {
        if ([v56 BOOLValue])
        {
          v58 = 257;
        }

        else
        {
          v58 = 1;
        }

        [(WifiScannedSettings *)v53 setMerged:v58];
      }

      v59 = [requestCopy objectForKeyedSubscript:@"SSID_STR"];
      if (v59)
      {
        [(WifiScannedSettings *)v53 setTargettedSsid:1];
      }
    }

    delegate = [(BaseWifiScannerBackend *)self delegate];
    v61 = delegate;
    if (scan)
    {
      [delegate wifiScanResult:v52 withSettings:v53];
    }

    else
    {
      [delegate wifiCachedScanResult:v52 withSettings:v53];
    }

    goto LABEL_58;
  }

  if (scan)
  {
    if ([settingsCopy lowPriorityScan])
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CE0();
      }

      v24 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
      v25 = "WARNING: An error occurred during a WiFi scan (error code %d)";
      v26 = v24;
      v27 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CE0();
      }

      v36 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
      v25 = "An error occurred during a WiFi scan (error code %d)";
      v26 = v36;
      v27 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&_mh_execute_header, v26, v27, v25, &buf, 8u);
LABEL_24:
    v37 = sub_10010C670();
    [(WifiScannerBackend *)self onQueueNotifyWifiError:v8 withSettings:settingsCopy forScanInitiated:v37 - std::chrono::steady_clock::now().__d_.__rep_ + *(scan + 7)];
    [(WifiScannerBackend *)self onQueueDeleteCompletedScan:scan];
    goto LABEL_58;
  }

  if ([settingsCopy lowPriorityScan])
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v32 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
      v33 = "WARNING: An error occurred during a WiFi scan (error code %d)";
      v34 = v32;
      v35 = OS_LOG_TYPE_INFO;
LABEL_34:
      _os_log_impl(&_mh_execute_header, v34, v35, v33, &buf, 8u);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CE0();
    }

    v42 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v8;
      v33 = "An error occurred during a WiFi scan (error code %d)";
      v34 = v42;
      v35 = OS_LOG_TYPE_ERROR;
      goto LABEL_34;
    }
  }

LABEL_58:
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 11) = self + 88;
  *(self + 12) = self + 88;
  *(self + 13) = 0;
  return self;
}

@end