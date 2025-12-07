@interface DiagExtWifiScanner
- (BOOL)setupWifiManagerClient;
- (BOOL)startMonitoring:(double)monitoring;
- (BOOL)startWiFiNetworkScan;
- (DiagExtWifiScanner)initWithDelegate:(id)delegate;
- (DiagExtWifiScannerDelegate)delegate;
- (int)scanAndGetWifiAvailability:(unsigned int)availability;
- (void)dealloc;
- (void)disableAutoJoin;
- (void)enableAutoJoin;
- (void)releaseWifiManagerClient;
- (void)setTimeForNextScan;
- (void)startRunLoop_sync;
- (void)stopMonitoring;
- (void)stopWiFiNetworkScan;
- (void)wifiScanCompleted:(__CFArray *)completed withError:(int)error;
@end

@implementation DiagExtWifiScanner

- (DiagExtWifiScanner)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = DiagExtWifiScanner;
  delegateCopy = delegate;
  v4 = [(DiagExtWifiScanner *)&v6 init];
  [(DiagExtWifiScanner *)v4 setDelegate:delegateCopy, v6.receiver, v6.super_class];

  [(DiagExtWifiScanner *)v4 setFWaitForResult:0];
  [(DiagExtWifiScanner *)v4 setFAvailabilityState:0];
  v4->fWifiManagerRef = 0;
  v4->fWifiDeviceRef = 0;
  v4->fIsMonitoring = 0;
  [(DiagExtWifiScanner *)v4 startRunLoop_sync];
  return v4;
}

- (void)startRunLoop_sync
{
  [(DiagExtWifiScanner *)self setFWaitForResult:dispatch_semaphore_create(0)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000054A8;
  v6[3] = &unk_100010500;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Create Runloop", v5, 2u);
  }

  pthread_create(&self->fServerRunLoopThread, 0, sub_1000054FC, v3);
  dispatch_semaphore_wait([(DiagExtWifiScanner *)self fWaitForResult], 0xFFFFFFFFFFFFFFFFLL);
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = DiagExtWifiScanner;
  [(DiagExtWifiScanner *)&v4 dealloc];
}

- (BOOL)setupWifiManagerClient
{
  if (self->fWifiManagerRef)
  {
    goto LABEL_4;
  }

  self->fWifiManagerRef = WiFiManagerClientCreate();
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    fWifiManagerRef = self->fWifiManagerRef;
    if (!fWifiManagerRef)
    {
      return fWifiManagerRef;
    }

LABEL_4:
    if (self->fWifiDeviceRef)
    {
      LOBYTE(fWifiManagerRef) = 0;
      return fWifiManagerRef;
    }

    v5 = WiFiManagerClientCopyDevices();
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];

      if (v6)
      {
        self->fWifiDeviceRef = v6;
        CFRetain(v6);
        [(DiagExtWifiScanner *)self fServerRunLoopRef];
        WiFiManagerClientScheduleWithRunLoop();
        Current = CFRunLoopGetCurrent();
        CFRunLoopWakeUp(Current);
        v8 = 1;
        v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: No device available", &v14, 2u);
      }
    }

    v8 = 0;
    v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      LOBYTE(fWifiManagerRef) = v8;
      return fWifiManagerRef;
    }

LABEL_13:
    if (self->fWifiDeviceRef)
    {
      v11 = "Success";
    }

    else
    {
      v11 = "Failed";
    }

    v14 = 136315138;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: setup device client %s", &v14, 0xCu);
    goto LABEL_17;
  }

  if (self->fWifiManagerRef)
  {
    v12 = "Success";
  }

  else
  {
    v12 = "Failed";
  }

  v14 = 136315138;
  v15 = v12;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: setup manager client %s", &v14, 0xCu);
  fWifiManagerRef = self->fWifiManagerRef;
  if (fWifiManagerRef)
  {
    goto LABEL_4;
  }

  return fWifiManagerRef;
}

- (void)releaseWifiManagerClient
{
  if (self->fWifiManagerRef)
  {
    [(DiagExtWifiScanner *)self fServerRunLoopRef];
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->fWifiManagerRef);
    self->fWifiManagerRef = 0;
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: release manager client", buf, 2u);
    }
  }

  fWifiDeviceRef = self->fWifiDeviceRef;
  if (fWifiDeviceRef)
  {
    CFRelease(fWifiDeviceRef);
    self->fWifiDeviceRef = 0;
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: release device client", v6, 2u);
    }
  }
}

- (void)setTimeForNextScan
{
  if ([(DiagExtWifiScanner *)self fIsScanning])
  {
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Device is already scanning for networks", v5, 2u);
    }
  }

  else
  {
    fScanTimer = self->fScanTimer;
    if (fScanTimer)
    {
      [(NSTimer *)fScanTimer invalidate];
    }

    [(DiagExtWifiScanner *)self fScanIntervalInSec];
    self->fScanTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"startWiFiNetworkScan" selector:0 userInfo:0 repeats:?];

    _objc_release_x1();
  }
}

- (int)scanAndGetWifiAvailability:(unsigned int)availability
{
  if (self->fIsMonitoring)
  {

    return [(DiagExtWifiScanner *)self fAvailabilityState];
  }

  else
  {
    [(DiagExtWifiScanner *)self setFScanRepeatRequired:0];
    if ([(DiagExtWifiScanner *)self startWiFiNetworkScan])
    {
      [(DiagExtWifiScanner *)self setFWaitForResult:dispatch_semaphore_create(0)];
      fWaitForResult = [(DiagExtWifiScanner *)self fWaitForResult];
      v7 = dispatch_time(0, 1000000000 * availability);
      if (dispatch_semaphore_wait(fWaitForResult, v7))
      {
        [(DiagExtWifiScanner *)self stopWiFiNetworkScan];
        v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        fAvailabilityState = 0;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Failed to get wifi scan reseult in time", v11, 2u);
          fAvailabilityState = 0;
        }
      }

      else
      {
        fAvailabilityState = [(DiagExtWifiScanner *)self fAvailabilityState];
      }

      [(DiagExtWifiScanner *)self setFWaitForResult:0];
      return fAvailabilityState;
    }

    else
    {
      v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Failed to start", buf, 2u);
      }

      return 0;
    }
  }
}

- (BOOL)startMonitoring:(double)monitoring
{
  fIsMonitoring = self->fIsMonitoring;
  v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (fIsMonitoring)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: already running", &v10, 2u);
    }

    return 1;
  }

  else
  {
    if (v7)
    {
      v10 = 134217984;
      monitoringCopy = monitoring;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Start monitoring w/ scan interval=%lf", &v10, 0xCu);
    }

    [(DiagExtWifiScanner *)self setFScanIntervalInSec:monitoring];
    v8 = 1;
    [(DiagExtWifiScanner *)self setFScanRepeatRequired:1];
    if ([(DiagExtWifiScanner *)self startWiFiNetworkScan])
    {
      self->fIsMonitoring = 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (void)stopMonitoring
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Stop monitoring", v4, 2u);
  }

  [(DiagExtWifiScanner *)self stopWiFiNetworkScan];
  self->fIsMonitoring = 0;
}

- (void)stopWiFiNetworkScan
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Stop wifi scanning", v5, 2u);
  }

  if (self->fWifiDeviceRef)
  {
    WiFiDeviceClientScanCancel();
  }

  fScanTimer = self->fScanTimer;
  if (fScanTimer)
  {
    [(NSTimer *)fScanTimer invalidate];
  }

  [(DiagExtWifiScanner *)self setFIsScanning:0];
}

- (void)wifiScanCompleted:(__CFArray *)completed withError:(int)error
{
  if (error)
  {
    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = error;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan finished with error 0x%x", buf, 8u);
      [(DiagExtWifiScanner *)self setFIsScanning:0];
      if ([(DiagExtWifiScanner *)self fScanRepeatRequired])
      {
        goto LABEL_23;
      }
    }

    else
    {
      [(DiagExtWifiScanner *)self setFIsScanning:0];
      if ([(DiagExtWifiScanner *)self fScanRepeatRequired])
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if (![(DiagExtWifiScanner *)self fWaitForResult])
    {
      return;
    }

    goto LABEL_5;
  }

  Count = CFArrayGetCount(completed);
  if (Count < 1)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  *&v9 = 138412290;
  v19 = v9;
  do
  {
    while (1)
    {
      CFArrayGetValueAtIndex(completed, v11);
      v13 = WiFiNetworkGetSSID();
      v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      v15 = v13;
      if (![v15 length])
      {
        goto LABEL_12;
      }

LABEL_9:
      v12 = [v15 isEqualToString:{@" ", v19}];

      v10 += (v12 & 1) == 0;
      if (Count == ++v11)
      {
        goto LABEL_16;
      }
    }

    *buf = v19;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "\tSSID=%@", buf, 0xCu);
    v15 = v13;
    if ([v15 length])
    {
      goto LABEL_9;
    }

LABEL_12:

    ++v11;
  }

  while (Count != v11);
LABEL_16:
  if (v10 > 0)
  {
    v16 = 2;
    goto LABEL_20;
  }

LABEL_19:
  v16 = 1;
LABEL_20:
  [(DiagExtWifiScanner *)self setFAvailabilityState:v16, v19];
  v17 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v21) = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Scan finished and report %d networks", buf, 8u);
  }

  delegate = [(DiagExtWifiScanner *)self delegate];
  [delegate handleWifiAvailabilityEvent:{-[DiagExtWifiScanner fAvailabilityState](self, "fAvailabilityState")}];

  [(DiagExtWifiScanner *)self setFIsScanning:0];
  if (![(DiagExtWifiScanner *)self fScanRepeatRequired])
  {
    goto LABEL_4;
  }

LABEL_23:
  [(DiagExtWifiScanner *)self setTimeForNextScan];
  if ([(DiagExtWifiScanner *)self fWaitForResult])
  {
LABEL_5:
    dispatch_semaphore_signal([(DiagExtWifiScanner *)self fWaitForResult]);
  }
}

- (BOOL)startWiFiNetworkScan
{
  if ([(DiagExtWifiScanner *)self fIsScanning])
  {
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Scanning already in progress", &v23, 2u);
    }

LABEL_24:
    LOBYTE(v19) = 1;
    return v19;
  }

  if (self->fWifiDeviceRef)
  {
    +[NSDictionary dictionary];
    v4 = WiFiDeviceClientScanAsync();
    if (!v4)
    {
      goto LABEL_21;
    }

    v5 = v4;
    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v23, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    +[NSDictionary dictionary];
    v7 = WiFiDeviceClientScanAsync();
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = v7;
    v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v23, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    +[NSDictionary dictionary];
    v10 = WiFiDeviceClientScanAsync();
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = v10;
    v12 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v23, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    +[NSDictionary dictionary];
    v13 = WiFiDeviceClientScanAsync();
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = v13;
    v15 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v23, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    +[NSDictionary dictionary];
    v16 = WiFiDeviceClientScanAsync();
    if (!v16)
    {
LABEL_21:
      v20 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Start wifi scanning", &v23, 2u);
      }

      [(DiagExtWifiScanner *)self setFIsScanning:1];
      goto LABEL_24;
    }

    v17 = v16;
    v18 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      v24 = v17;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v23, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    LOBYTE(v19) = 0;
  }

  else
  {
    v21 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    v19 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: no client", &v23, 2u);
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (void)disableAutoJoin
{
  fWifiManagerRef = self->fWifiManagerRef;
  if (fWifiManagerRef)
  {
    _WiFiManagerClientDisable(fWifiManagerRef, a2);
  }
}

- (void)enableAutoJoin
{
  fWifiManagerRef = self->fWifiManagerRef;
  if (fWifiManagerRef)
  {
    _WiFiManagerClientEnable(fWifiManagerRef, a2);
  }
}

- (DiagExtWifiScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end