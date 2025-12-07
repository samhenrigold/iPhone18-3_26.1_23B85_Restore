@interface CWFAssetSetManager
- (BOOL)isMobileAssetDaemonReady;
- (CWFAssetSetManager)init;
- (id)checkAssetsWithReason:(id)reason CanBlock:(BOOL)block forAtomicInstance:(id)instance;
- (id)lockAutoAssetWithReason:(id)reason isBlocking:(BOOL)blocking forcedFetch:(BOOL)fetch;
- (id)makeAutoAssetSetWithEntry:(id)entry;
- (id)makeAutoAssetWithSelector:(id)selector;
- (void)__periodicCheckA11;
- (void)__startAssetTracking;
- (void)__stopPeriodicCheckA11;
- (void)_configureIntervalForTestingForPeriodicCheckForDownload;
- (void)_forTestingPeriodicCheck;
- (void)_handleAssetDiscoveredNotification;
- (void)_handleAssetDownloadedNotification;
- (void)_periodicCheckForDownloaded;
- (void)_registerForAssetDiscoveredNotification:(id)notification;
- (void)_registerForAssetDownloadedNotification:(id)notification;
- (void)activate;
- (void)forTestingEnablePeriodicCheck;
- (void)invalidate;
- (void)lockAndHandOffCanBlock:(BOOL)block forcedFetch:(BOOL)fetch;
- (void)processQueryResults:(id)results withError:(id)error;
- (void)rootMonitorDetectedAdd:(id)add deleted:(id)deleted updated:(id)updated;
- (void)scheduleReadinessRetry;
- (void)unlockAssetWithReason:(id)reason;
@end

@implementation CWFAssetSetManager

- (CWFAssetSetManager)init
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v4 = qword_1ED7E38B0;
  v42 = qword_1ED7E38B0;
  if (!qword_1ED7E38B0)
  {
    *&v43 = MEMORY[0x1E69E9820];
    *(&v43 + 1) = 3221225472;
    v44 = sub_1E0BFA4F0;
    v45 = &unk_1E86E5600;
    v46 = &v39;
    sub_1E0BFA4F0(&v43);
    v4 = v40[3];
  }

  v5 = v4;
  _Block_object_dispose(&v39, 8);
  if (!objc_opt_class() || (sub_1E0BF3F68(), !objc_opt_class()) || (sub_1E0BF406C(), v6 = objc_opt_class(), !MEMORY[0x1EEE987B8]) || !v6 || (_os_feature_enabled_impl() & 1) == 0)
  {
    v28 = CWFGetOTAOSLog();
    if (v28)
    {
      v29 = CWFGetOTAOSLog();
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v43) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, 0, "[OTA_SET] OTA update of PT is disabled", &v43, 2);
    }

    goto LABEL_27;
  }

  v7 = +[CWFAssetPowerTable isSupportedOTAPTUpdate];
  has_internal_content = +[CWFAssetPowerTable isSupportedOTAPTDownloadOnly];
  if (has_internal_content)
  {
    has_internal_content = _os_feature_enabled_impl();
    if (has_internal_content)
    {
      has_internal_content = os_variant_has_internal_content();
    }
  }

  if (((v7 | has_internal_content) & 1) == 0)
  {
    v31 = CWFGetOTAOSLog();
    if (v31)
    {
      v29 = CWFGetOTAOSLog();
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v43) = 136315138;
      *(&v43 + 4) = "[CWFAssetSetManager init]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, 16, "[OTA_SET] %s: Unsupported platform or disabled FF", &v43);
    }

LABEL_27:

LABEL_28:
    v9 = 0;
    goto LABEL_21;
  }

  v38.receiver = self;
  v38.super_class = CWFAssetSetManager;
  v9 = [(CWFAssetSetManager *)&v38 init];
  if (!v9)
  {
    v32 = CWFGetOTAOSLog();
    if (v32)
    {
      self = CWFGetOTAOSLog();
    }

    else
    {
      self = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v43) = 136315138;
      *(&v43 + 4) = "[CWFAssetSetManager init]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, self, 16, "[OTA_SET] %s: Unable to init", &v43);
    }

    goto LABEL_28;
  }

  v10 = +[CWFAssetPowerTable sharedObj];
  assetPowerTable = v9->_assetPowerTable;
  v9->_assetPowerTable = v10;

  if (!v9->_assetPowerTable)
  {
    v33 = CWFGetOTAOSLog();
    if (v33)
    {
      v34 = CWFGetOTAOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v43) = 136315138;
      *(&v43 + 4) = "[CWFAssetSetManager init]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 0, "[OTA_SET] %s:  Could not create _assetPowerTable", &v43);
    }

    self = v9;
    goto LABEL_28;
  }

  v12 = +[CWFAssetPowerTableTelemetry sharedObj];
  v13 = +[CWFAssetPowerTable getDeviceSKU];
  [v12 setSKU:v13];

  v14 = +[CWFAssetPowerTableTelemetry sharedObj];
  [v14 setIsSupportedChipset:{+[CWFAssetPowerTable isChipsetFullySupported](CWFAssetPowerTable, "isChipsetFullySupported")}];

  uTF8String = [@"com.apple.corewifi.AutoAssetNotifyAndOpsQueue" UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(uTF8String, v16);
  eventQueue = v9->_eventQueue;
  v9->_eventQueue = v17;

  v19 = MGCopyAnswer();
  LODWORD(uTF8String) = [v19 BOOLValue];

  if (uTF8String)
  {
    v20 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 2uLL, 1);
    firstObject = [v20 firstObject];
    v22 = [firstObject stringByAppendingPathComponent:@"CoreWiFiAssetRootDropoff"];
    v9->_assetRootToProcess = 0;
    v23 = [[CWFAssetRootMonitor alloc] initMonitorWithPath:v22];
    assetRootMonitor = v9->_assetRootMonitor;
    v9->_assetRootMonitor = v23;

    [(CWFAssetRootMonitor *)v9->_assetRootMonitor setDelegate:v9];
    [(CWFAssetRootMonitor *)v9->_assetRootMonitor startMonitoring];
  }

  v25 = CWFGetOTAOSLog();
  if (v25)
  {
    self = CWFGetOTAOSLog();
  }

  else
  {
    self = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v43) = 136315138;
    *(&v43 + 4) = "[CWFAssetSetManager init]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, self, 0, "[OTA_SET] %s: Initialized successfully", &v43);
  }

LABEL_21:

  objc_autoreleasePoolPop(v3);
  return v9;
}

- (void)rootMonitorDetectedAdd:(id)add deleted:(id)deleted updated:(id)updated
{
  v30 = *MEMORY[0x1E69E9840];
  addCopy = add;
  deletedCopy = deleted;
  updatedCopy = updated;
  v11 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136447490;
    v19 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]";
    v20 = 1024;
    v21 = 204;
    v22 = 2080;
    v23 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]";
    v24 = 2112;
    v25 = addCopy;
    v26 = 2112;
    v27 = deletedCopy;
    v28 = 2112;
    v29 = updatedCopy;
    _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_INFO, "%{public}s::%d:%s:  addedPaths ---\n %@\n deletedPaths ---\n %@\n updatedPaths ---\n %@", buf, 0x3Au);
  }

  if ([addCopy count] || objc_msgSend(updatedCopy, "count"))
  {
    eventQueue = [(CWFAssetSetManager *)self eventQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0BF43A0;
    block[3] = &unk_1E86E6060;
    block[4] = self;
    v16 = addCopy;
    v17 = updatedCopy;
    dispatch_async(eventQueue, block);

    eventQueue2 = v16;
  }

  else
  {
    if (![deletedCopy count])
    {
      goto LABEL_7;
    }

    eventQueue2 = [(CWFAssetSetManager *)self eventQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0BF461C;
    v14[3] = &unk_1E86E6010;
    v14[4] = self;
    dispatch_async(eventQueue2, v14);
  }

LABEL_7:
}

- (void)forTestingEnablePeriodicCheck
{
  v34 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = CWFGetOTAOSLog();
  if (v4)
  {
    v5 = CWFGetOTAOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[OTA_SET] %s: Running on internal build", &v30);
  }

  self->_forTestingPeriodicCheckEnabled = 0;
  v7 = [standardUserDefaults objectForKey:@"OTAPeriodicCheckEnabled"];

  if (v7)
  {
    self->_forTestingPeriodicCheckEnabled = [standardUserDefaults BOOLForKey:@"OTAPeriodicCheckEnabled"];
    v8 = CWFGetOTAOSLog();
    if (v8)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (self->_forTestingPeriodicCheckEnabled)
      {
        v11 = @"YES";
      }

      v30 = 136315394;
      v31 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      v32 = 2112;
      v33 = v11;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[OTA_SET] %s: _periodicCheckEnabled from defaults: %@", &v30, 22);
    }
  }

  self->_forTestingPeriodicityInSecs = -1;
  v12 = [standardUserDefaults objectForKey:@"OTAPeriodicCheckIntervalInSecs"];

  if (v12)
  {
    self->_forTestingPeriodicityInSecs = [standardUserDefaults integerForKey:@"OTAPeriodicCheckIntervalInSecs"];
    v13 = CWFGetOTAOSLog();
    if (v13)
    {
      v14 = CWFGetOTAOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      forTestingPeriodicityInSecs = self->_forTestingPeriodicityInSecs;
      v30 = 136315394;
      v31 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      v32 = 2048;
      v33 = forTestingPeriodicityInSecs;
      LODWORD(v28) = 22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[OTA_SET] %s: _periodicityInSecs from defaults: %lld", &v30, v28);
    }

    v17 = self->_forTestingPeriodicityInSecs;
    if (v17 < 60)
    {
      v18 = 60;
LABEL_24:
      self->_forTestingPeriodicityInSecs = v18;
      goto LABEL_25;
    }

    v18 = 604800;
    if (v17 > 0x93A80)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (self->_forTestingPeriodicCheckEnabled && self->_forTestingPeriodicityInSecs >= 1)
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v20 = CWFGetOTAOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[OTA_SET] %s: Setting up dispatch source for periodic check", &v30);
    }

    v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_eventQueue);
    forTestingPeriodicCheckTimer = self->_forTestingPeriodicCheckTimer;
    self->_forTestingPeriodicCheckTimer = v25;

    v27 = self->_forTestingPeriodicCheckTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0BF4BD0;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v27, handler);
  }

  else
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      v22 = CWFGetOTAOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 0, "[OTA_SET] %s: Not enabling", &v30);
    }
  }
}

- (void)activate
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_eventQueue);
  periodicCheckA11Timer = self->_periodicCheckA11Timer;
  self->_periodicCheckA11Timer = v4;

  v6 = self->_periodicCheckA11Timer;
  if (v6)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0BF4D98;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    v7 = self->_periodicCheckA11Timer;
    v8 = dispatch_walltime(0, 10000000000);
    dispatch_source_set_timer(v7, v8, 0xDF8475800uLL, 0);
    dispatch_activate(self->_periodicCheckA11Timer);
  }

  else
  {
    v9 = CWFGetOTAOSLog();
    if (v9)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CWFAssetSetManager activate]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA_SET] %s: _periodicCheckA11Timer is nil", &v13);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)__periodicCheckA11
{
  v3 = objc_autoreleasePoolPush();
  eventHandler = [(CWFAssetSetManager *)self eventHandler];

  if (eventHandler)
  {
    eventHandler2 = [(CWFAssetSetManager *)self eventHandler];
    eventHandler2[2]();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)processQueryResults:(id)results withError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  errorCopy = error;
  v8 = CWFGetOTAOSLog();
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[CWFAssetSetManager processQueryResults:withError:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[OTA_SET] %s: Entering", &v18);
  }

  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF4FB0;
  block[3] = &unk_1E86E6060;
  v15 = errorCopy;
  selfCopy = self;
  v17 = resultsCopy;
  v12 = resultsCopy;
  v13 = errorCopy;
  dispatch_async(eventQueue, block);
}

- (void)__stopPeriodicCheckA11
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CWFAssetSetManager __stopPeriodicCheckA11]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[OTA_SET] %s: Stopping periodic check for a11 interface", &v8);
  }

  periodicCheckA11Timer = self->_periodicCheckA11Timer;
  if (periodicCheckA11Timer)
  {
    dispatch_source_cancel(periodicCheckA11Timer);
    v7 = self->_periodicCheckA11Timer;
    self->_periodicCheckA11Timer = 0;
  }
}

- (BOOL)isMobileAssetDaemonReady
{
  v15 = *MEMORY[0x1E69E9840];
  hasStartupActivatedCompletedOnce = [sub_1E0BF3F68() hasStartupActivatedCompletedOnce];
  v4 = CWFGetOTAOSLog();
  v5 = v4;
  if (hasStartupActivatedCompletedOnce)
  {
    if (v4)
    {
      v6 = CWFGetOTAOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CWFAssetSetManager isMobileAssetDaemonReady]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[OTA_SET] %s: mobileassetd ready - proceeding with asset tracking", &v11);
    }
  }

  else
  {
    if (v4)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CWFAssetSetManager isMobileAssetDaemonReady]";
      v13 = 2048;
      v14 = [(CWFAssetSetManager *)self readinessRetryCount]+ 1;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[OTA_SET] %s: mobileassetd not ready - scheduling retry (attempt %lu)", &v11, 22);
    }

    [(CWFAssetSetManager *)self scheduleReadinessRetry];
  }

  return hasStartupActivatedCompletedOnce;
}

- (void)scheduleReadinessRetry
{
  v3 = dispatch_time(0, 30000000000);
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF5888;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_after(v3, eventQueue, block);
  [(CWFAssetSetManager *)self setReadinessRetryCount:[(CWFAssetSetManager *)self readinessRetryCount]+ 1];
}

- (void)__startAssetTracking
{
  v3 = objc_autoreleasePoolPush();
  eventQueue = [(CWFAssetSetManager *)self eventQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF5934;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(eventQueue, block);

  objc_autoreleasePoolPop(v3);
}

- (void)invalidate
{
  if ([(CWFAssetSetManager *)self notifyTokenVersionDownloaded]!= -1)
  {
    notify_cancel([(CWFAssetSetManager *)self notifyTokenVersionDownloaded]);
  }

  forTestingPeriodicCheckTimer = [(CWFAssetSetManager *)self forTestingPeriodicCheckTimer];

  if (forTestingPeriodicCheckTimer)
  {
    forTestingPeriodicCheckTimer2 = [(CWFAssetSetManager *)self forTestingPeriodicCheckTimer];
    dispatch_source_cancel(forTestingPeriodicCheckTimer2);
  }
}

- (void)lockAndHandOffCanBlock:(BOOL)block forcedFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  blockCopy = block;
  v22 = *MEMORY[0x1E69E9840];
  v7 = CWFGetOTAOSLog();
  if (v7)
  {
    v8 = CWFGetOTAOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[CWFAssetSetManager lockAndHandOffCanBlock:forcedFetch:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[OTA_SET] %s: Entered", &v20);
  }

  if ([(CWFAssetSetManager *)self interestExpressed])
  {
    v10 = [(CWFAssetSetManager *)self lockAutoAssetWithReason:@"reason-need-to-check-version" isBlocking:blockCopy forcedFetch:fetchCopy];
    if (v10)
    {
      v11 = v10;
      assetPowerTable = [(CWFAssetSetManager *)self assetPowerTable];
      [assetPowerTable processLocalAsset:v11];

      [(CWFAssetSetManager *)self unlockAssetWithReason:@"reason-need-to-check-version"];
      v13 = CWFGetOTAOSLog();
      if (v13)
      {
        v14 = CWFGetOTAOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315138;
        v21 = "[CWFAssetSetManager lockAndHandOffCanBlock:forcedFetch:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[OTA_SET] %s: Exiting", &v20);
      }
    }

    else
    {
      v16 = CWFGetOTAOSLog();
      if (v16)
      {
        v11 = CWFGetOTAOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[OTA_SET] %s:  localAsset did not populate", &v20);
      }
    }
  }

  else
  {
    v15 = CWFGetOTAOSLog();
    if (v15)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[OTA_SET] %s:  Not locking asset as interest is not yet set", &v20);
    }
  }
}

- (void)_registerForAssetDiscoveredNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (notificationCopy)
  {
    [(CWFAssetSetManager *)self setAssetDiscoveredHandler:notificationCopy];
  }

  v5 = [sub_1E0BF67F0() notifyRegistrationName:@"ATOMIC_INSTANCE_DISCOVERED" forAssetSetIdentifier:@"WiFi_SetOfPowerTables"];
  out_token = -1;
  uTF8String = [v5 UTF8String];
  eventQueue = [(CWFAssetSetManager *)self eventQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0BF68F4;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch(uTF8String, &out_token, eventQueue, handler);

  [(CWFAssetSetManager *)self setNotifyTokenVersionDiscovered:out_token];
  v8 = CWFGetOTAOSLog();
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[CWFAssetSetManager _registerForAssetDiscoveredNotification:]";
    v15 = 1024;
    v16 = out_token;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[OTA_SET] %s:  notify_register_dispatch() for discovery returned token %d", &v13, 18);
  }
}

- (void)_registerForAssetDownloadedNotification:(id)notification
{
  v20 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (notificationCopy)
  {
    [(CWFAssetSetManager *)self setAssetDownloadedHandler:notificationCopy];
  }

  v5 = [sub_1E0BF67F0() notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:@"WiFi_SetOfPowerTables"];
  out_token = -1;
  uTF8String = [v5 UTF8String];
  eventQueue = [(CWFAssetSetManager *)self eventQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0BF6C90;
  handler[3] = &unk_1E86E60D8;
  v13 = v5;
  selfCopy = self;
  v8 = v5;
  notify_register_dispatch(uTF8String, &out_token, eventQueue, handler);

  [(CWFAssetSetManager *)self setNotifyTokenVersionDownloaded:out_token];
  v9 = CWFGetOTAOSLog();
  if (v9)
  {
    v10 = CWFGetOTAOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[CWFAssetSetManager _registerForAssetDownloadedNotification:]";
    v18 = 1024;
    v19 = out_token;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[OTA_SET] %s:  notify_register_dispatch() returned token %d", &v16, 18);
  }
}

- (void)_forTestingPeriodicCheck
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[OTA_SET] %s:  Entered", &v29);
  }

  v6 = objc_alloc_init(sub_1E0BF730C());
  [v6 setAllowCheckDownloadOverCellular:1];
  [v6 setAllowCheckDownloadOnBattery:1];
  [v6 setAllowCheckDownloadOverExpensive:1];
  v7 = [(CWFAssetSetManager *)self makeAutoAssetSetWithEntry:0];
  v27 = 0;
  v28 = 0;
  v8 = [v7 checkAtomicSync:@"reason-expedite-discovery-for-testing" forAtomicInstance:0 withNeedPolicy:v6 withTimeout:-2 discoveredAtomicEntries:&v28 error:&v27];
  v9 = v28;
  v10 = v27;
  v11 = v10;
  if (v10)
  {
    if ([v10 code] == 13)
    {
      v12 = CWFGetOTAOSLog();
      if (v12)
      {
        v13 = CWFGetOTAOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v29 = 136315138;
      v30 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
      v26 = 12;
      v19 = "[OTA_SET] %s: Daemon unavailable during periodic check - will retry on next cycle";
      goto LABEL_27;
    }

    code = [v11 code];
    v16 = CWFGetOTAOSLog();
    v17 = v16;
    if (code != 6205)
    {
      if (v16)
      {
        v13 = CWFGetOTAOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315394;
        v30 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
        v31 = 2112;
        v32 = v11;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[OTA_SET] %s: Error: %@", &v29, 22);
      }

      goto LABEL_28;
    }

    if (v16)
    {
      v13 = CWFGetOTAOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315394;
      v30 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
      v31 = 2112;
      v32 = v11;
      v26 = 22;
      v19 = "[OTA_SET] %s: Same Version of asset is already downloaded. Error: %@";
      goto LABEL_27;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_29;
    }

    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v13 = CWFGetOTAOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315650;
      v30 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      v26 = 32;
      v19 = "[OTA_SET] %s: Found new version of asset with newAtomicInstance: %@ and entries: %@";
LABEL_27:
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, v19, &v29, v26);
    }
  }

LABEL_28:

LABEL_29:
  v22 = CWFGetOTAOSLog();
  if (v22)
  {
    v23 = CWFGetOTAOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 0, "[OTA_SET] %s:  Exiting", &v29);
  }
}

- (void)_periodicCheckForDownloaded
{
  v52 = *MEMORY[0x1E69E9840];
  forTestingPeriodicCheckForDownloadEnabled = self->_forTestingPeriodicCheckForDownloadEnabled;
  forTestingPeriodicityForDownloadInSecs = self->_forTestingPeriodicityForDownloadInSecs;
  v5 = CWFGetOTAOSLog();
  if (v5)
  {
    v6 = CWFGetOTAOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 136315138;
    v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[OTA_SET] %s: Entered", &v46);
  }

  periodicCheckForDownloadCounts = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
  atomicInstanceTrackedForDownloaded = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];

  if (periodicCheckForDownloadCounts)
  {
    if (!atomicInstanceTrackedForDownloaded)
    {
      v22 = CWFGetOTAOSLog();
      if (v22)
      {
        v23 = CWFGetOTAOSLog();
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v46 = 136315138;
        v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 16, "[OTA_SET] %s: atomicInstanceTrackedForDownloaded is nil", &v46);
      }

      [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
      goto LABEL_33;
    }

    atomicInstanceTrackedForDownloaded2 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
    v11 = [(CWFAssetSetManager *)self checkAssetsWithReason:@"reason-expedite-discovery" CanBlock:0 forAtomicInstance:atomicInstanceTrackedForDownloaded2];

    if (v11 && (-[CWFAssetSetManager atomicInstanceTrackedForDownloaded](self, "atomicInstanceTrackedForDownloaded"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, -[CWFAssetSetManager atomicInstanceTrackedForDownloaded](self, "atomicInstanceTrackedForDownloaded"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v11 isEqualToString:v14], v14, v13, v15))
    {
      v16 = CWFGetOTAOSLog();
      if (v16)
      {
        v17 = CWFGetOTAOSLog();
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v39 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        periodicCheckForDownloadCounts2 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
        atomicInstanceTrackedForDownloaded3 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
        v46 = 136315650;
        v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
        v48 = 2048;
        v49 = periodicCheckForDownloadCounts2;
        v50 = 2112;
        v51 = atomicInstanceTrackedForDownloaded3;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 0, "[OTA_SET] %s: Tracked asset is already downloaded. Disabling further retry. periodicCheckForDownloadCounts = %lu,  atomicInstanceTrackedForDownloaded = %@", &v46, 32);
      }

      [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
    }

    else
    {
      v20 = CWFGetOTAOSLog();
      if (v20)
      {
        v21 = CWFGetOTAOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v27 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        periodicCheckForDownloadCounts3 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
        atomicInstanceTrackedForDownloaded4 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
        v46 = 136315650;
        v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
        v48 = 2048;
        v49 = periodicCheckForDownloadCounts3;
        v50 = 2112;
        v51 = atomicInstanceTrackedForDownloaded4;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 0, "[OTA_SET] %s: Retry attempt periodicCheckForDownloadCounts = %lu,  atomicInstanceTrackedForDownloaded = %@ ", &v46, 32);
      }

      v30 = [(CWFAssetSetManager *)self checkAssetsWithReason:@"reason-expedite-discovery" CanBlock:1 forAtomicInstance:0];
    }
  }

  else
  {
    if (atomicInstanceTrackedForDownloaded)
    {
      v42 = CWFGetOTAOSLog();
      if (v42)
      {
        v37 = CWFGetOTAOSLog();
      }

      else
      {
        v37 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v46 = 136315138;
        v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v37, 16, "[OTA_SET] %s: atomicInstanceTrackedForDownloaded is not nil", &v46);
      }

      goto LABEL_43;
    }

    v11 = [(CWFAssetSetManager *)self checkAssetsWithReason:@"reason-expedite-discovery" CanBlock:0 forAtomicInstance:0];
    [(CWFAssetSetManager *)self setAtomicInstanceTrackedForDownloaded:v11];
    v18 = CWFGetOTAOSLog();
    if (v18)
    {
      v19 = CWFGetOTAOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      periodicCheckForDownloadCounts4 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
      atomicInstanceTrackedForDownloaded5 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
      v46 = 136315650;
      v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
      v48 = 2048;
      v49 = periodicCheckForDownloadCounts4;
      v50 = 2112;
      v51 = atomicInstanceTrackedForDownloaded5;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[OTA_SET] %s: First discovery, periodicCheckForDownloadCounts = %lu,  atomicInstanceTrackedForDownloaded = %@ ", &v46, 32);
    }
  }

LABEL_33:
  if (!-[CWFAssetSetManager periodicCheckForDownloadEnabled](self, "periodicCheckForDownloadEnabled") || (v32 = -[CWFAssetSetManager periodicCheckForDownloadCounts](self, "periodicCheckForDownloadCounts"), v32 >= [&unk_1F5BB9AC0 count]))
  {
    [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
    [(CWFAssetSetManager *)self setAtomicInstanceTrackedForDownloaded:0];
    [(CWFAssetSetManager *)self setPeriodicCheckForDownloadCounts:0];
    return;
  }

  if (!forTestingPeriodicCheckForDownloadEnabled)
  {
    v33 = [&unk_1F5BB9AC0 objectAtIndex:{-[CWFAssetSetManager periodicCheckForDownloadCounts](self, "periodicCheckForDownloadCounts")}];
    forTestingPeriodicityForDownloadInSecs = 3600 * [v33 longLongValue];
  }

  v34 = dispatch_time(0, 1000000000 * forTestingPeriodicityForDownloadInSecs);
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF7B78;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_after(v34, eventQueue, block);
  [(CWFAssetSetManager *)self setPeriodicCheckForDownloadCounts:[(CWFAssetSetManager *)self periodicCheckForDownloadCounts]+ 1];
  v36 = CWFGetOTAOSLog();
  if (v36)
  {
    v37 = CWFGetOTAOSLog();
  }

  else
  {
    v37 = MEMORY[0x1E69E9C10];
    v38 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 136315394;
    v47 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
    v48 = 2048;
    v49 = forTestingPeriodicityForDownloadInSecs;
    LODWORD(v44) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v37, 0, "[OTA_SET] %s: Scheduled next check in %lld secs ", &v46, v44);
  }

LABEL_43:
}

- (id)checkAssetsWithReason:(id)reason CanBlock:(BOOL)block forAtomicInstance:(id)instance
{
  blockCopy = block;
  v39 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  reasonCopy = reason;
  v10 = objc_alloc_init(sub_1E0BF730C());
  [v10 setAllowCheckDownloadOverCellular:1];
  [v10 setAllowCheckDownloadOnBattery:1];
  [v10 setAllowCheckDownloadOverExpensive:1];
  v11 = [(CWFAssetSetManager *)self makeAutoAssetSetWithEntry:0];
  v12 = v11;
  if (blockCopy)
  {
    v13 = -2;
  }

  else
  {
    v13 = 0;
  }

  v31 = 0;
  v32 = 0;
  v14 = [v11 checkAtomicSync:reasonCopy forAtomicInstance:instanceCopy withNeedPolicy:v10 withTimeout:v13 discoveredAtomicEntries:&v32 error:&v31];

  v15 = v32;
  v16 = v31;
  v17 = v16;
  if (v16)
  {
    if ([v16 code] == 13)
    {
      v18 = CWFGetOTAOSLog();
      if (v18)
      {
        v19 = CWFGetOTAOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v33 = 136315138;
      v34 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
      v30 = 12;
      v25 = "[OTA_SET] %s: Daemon unavailable during periodic check - will retry on next cycle";
      goto LABEL_25;
    }

    code = [v17 code];
    v22 = CWFGetOTAOSLog();
    v23 = v22;
    if (code != 6205)
    {
      if (v22)
      {
        v19 = CWFGetOTAOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v33 = 136315394;
        v34 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
        v35 = 2112;
        v36 = v17;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[OTA_SET] %s: Error: %@", &v33, 22);
      }

      goto LABEL_26;
    }

    if (v22)
    {
      v19 = CWFGetOTAOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315394;
      v34 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
      v35 = 2112;
      v36 = v17;
      v30 = 22;
      v25 = "[OTA_SET] %s: Same Version of asset is already downloaded. Error: %@";
      goto LABEL_25;
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_27;
    }

    v20 = CWFGetOTAOSLog();
    if (v20)
    {
      v19 = CWFGetOTAOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 136315650;
      v34 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      v30 = 32;
      v25 = "[OTA_SET] %s: Found new version of asset with newAtomicInstance: %@ and entries: %@";
LABEL_25:
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 0, v25, &v33, v30);
    }
  }

LABEL_26:

LABEL_27:

  return v14;
}

- (void)_configureIntervalForTestingForPeriodicCheckForDownload
{
  v29 = *MEMORY[0x1E69E9840];
  self->_forTestingPeriodicCheckForDownloadEnabled = 0;
  self->_forTestingPeriodicityForDownloadInSecs = -1;
  if (!os_variant_has_internal_content())
  {
    return;
  }

  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "[CWFAssetSetManager _configureIntervalForTestingForPeriodicCheckForDownload]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[OTA_SET] %s: Running on internal build", &v25);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"OTAPeriodicCheckForDownloadEnabled"];

  if (v7)
  {
    self->_forTestingPeriodicCheckForDownloadEnabled = [standardUserDefaults BOOLForKey:@"OTAPeriodicCheckForDownloadEnabled"];
    v8 = CWFGetOTAOSLog();
    if (v8)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (self->_forTestingPeriodicCheckForDownloadEnabled)
      {
        v11 = @"YES";
      }

      v25 = 136315394;
      v26 = "[CWFAssetSetManager _configureIntervalForTestingForPeriodicCheckForDownload]";
      v27 = 2112;
      v28 = v11;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[OTA_SET] %s: _forTestingPeriodicCheckForDownloadEnabled from defaults: %@", &v25, 22);
    }
  }

  if (self->_forTestingPeriodicCheckForDownloadEnabled)
  {
    v12 = [standardUserDefaults objectForKey:@"OTAPeriodicCheckForDownloadIntervalInSecs"];

    if (v12)
    {
      self->_forTestingPeriodicityForDownloadInSecs = [standardUserDefaults integerForKey:@"OTAPeriodicCheckForDownloadIntervalInSecs"];
      v13 = CWFGetOTAOSLog();
      if (v13)
      {
        v14 = CWFGetOTAOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        forTestingPeriodicityForDownloadInSecs = self->_forTestingPeriodicityForDownloadInSecs;
        v25 = 136315394;
        v26 = "[CWFAssetSetManager _configureIntervalForTestingForPeriodicCheckForDownload]";
        v27 = 2048;
        v28 = forTestingPeriodicityForDownloadInSecs;
        LODWORD(v24) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[OTA_SET] %s: _forTestingPeriodicityForDownloadInSecs from defaults: %lld", &v25, v24);
      }

      v17 = self->_forTestingPeriodicityForDownloadInSecs;
      if (v17 >= 60)
      {
        v18 = 604800;
        if (v17 <= 0x93A80)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = 60;
      }

      self->_forTestingPeriodicityForDownloadInSecs = v18;
    }
  }

LABEL_27:
  if (self->_forTestingPeriodicCheckForDownloadEnabled && self->_forTestingPeriodicityForDownloadInSecs >= 1)
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v20 = CWFGetOTAOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v24) = 22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[OTA_SET] %s: Enabling faster periodic check for downloads, %lld secs", &v25, v24);
    }
  }

  else
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      v20 = CWFGetOTAOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[OTA_SET] %s: Not enabling faster periodic check for downloads", &v25);
    }
  }
}

- (void)_handleAssetDiscoveredNotification
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CWFAssetSetManager _handleAssetDiscoveredNotification]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[OTA_SET] %s:  Entered", &v11);
  }

  if (![(CWFAssetSetManager *)self periodicCheckForDownloadEnabled])
  {
    [(CWFAssetSetManager *)self _configureIntervalForTestingForPeriodicCheckForDownload];
    [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:1];
    v6 = dispatch_time(0, 60000000000);
    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0BF8544;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    dispatch_after(v6, eventQueue, block);
  }

  assetDiscoveredHandler = [(CWFAssetSetManager *)self assetDiscoveredHandler];

  if (assetDiscoveredHandler)
  {
    assetDiscoveredHandler2 = [(CWFAssetSetManager *)self assetDiscoveredHandler];
    assetDiscoveredHandler2[2]();
  }
}

- (void)_handleAssetDownloadedNotification
{
  [(CWFAssetSetManager *)self lockAndHandOffCanBlock:1 forcedFetch:0];
  assetDownloadedHandler = [(CWFAssetSetManager *)self assetDownloadedHandler];

  if (assetDownloadedHandler)
  {
    assetDownloadedHandler2 = [(CWFAssetSetManager *)self assetDownloadedHandler];
    assetDownloadedHandler2[2]();
  }
}

- (id)makeAutoAssetWithSelector:(id)selector
{
  v26 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v5 = selectorCopy;
  if (!selectorCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = qword_1ECE86940;
    v22 = qword_1ECE86940;
    if (!qword_1ECE86940)
    {
      *v23 = MEMORY[0x1E69E9820];
      *&v23[8] = 3221225472;
      *&v23[16] = sub_1E0BFA8EC;
      v24 = &unk_1E86E5600;
      v25 = &v19;
      sub_1E0BFA6B8();
      Class = objc_getClass("MAAutoAssetSelector");
      *(v25[1] + 24) = Class;
      qword_1ECE86940 = *(v25[1] + 24);
      v6 = v20[3];
    }

    v8 = v6;
    _Block_object_dispose(&v19, 8);
    v9 = [v6 alloc];
    assetSpecifier = [(CWFAssetSetManager *)self assetSpecifier];
    v5 = [v9 initForAssetType:@"com.apple.MobileAsset.CoreWiFi" withAssetSpecifier:assetSpecifier];
  }

  v18 = 0;
  v11 = [objc_alloc(sub_1E0BF3F68()) initForClientName:@"CoreWiFiAssetMAClient" selectingAsset:v5 error:&v18];
  v12 = v18;
  if (v12 || !v11)
  {
    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v15 = CWFGetOTAOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315650;
      *&v23[4] = "[CWFAssetSetManager makeAutoAssetWithSelector:]";
      *&v23[12] = 2112;
      *&v23[14] = selectorCopy;
      *&v23[22] = 2112;
      v24 = v12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[OTA_SET] %s:  Unable to initialize autoAsset with requested assetSelector: %@, error: %@", v23, 32);
    }

    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

- (id)lockAutoAssetWithReason:(id)reason isBlocking:(BOOL)blocking forcedFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  blockingCopy = blocking;
  v120[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v107 = objc_opt_new();
  v103 = objc_opt_new();
  v114 = 0;
  v115 = &v114;
  v116 = 0x2050000000;
  v8 = qword_1ECE86948;
  v117 = qword_1ECE86948;
  if (!qword_1ECE86948)
  {
    *v118 = MEMORY[0x1E69E9820];
    *&v118[8] = 3221225472;
    *&v118[16] = sub_1E0BFA93C;
    v119 = &unk_1E86E5600;
    v120[0] = &v114;
    sub_1E0BFA6B8();
    Class = objc_getClass("MAAutoAssetPolicy");
    *(*(v120[0] + 8) + 24) = Class;
    qword_1ECE86948 = *(*(v120[0] + 8) + 24);
    v8 = v115[3];
  }

  v10 = v8;
  _Block_object_dispose(&v114, 8);
  v101 = objc_opt_new();
  v98 = +[CWFAssetPowerTable isChipsetDownloadOnly];
  currentLockedAutoAsset = [(CWFAssetSetManager *)self currentLockedAutoAsset];

  if (currentLockedAutoAsset)
  {
    v12 = CWFGetOTAOSLog();
    if (v12)
    {
      v13 = CWFGetOTAOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v118 = 136315138;
      *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[OTA_SET] %s: Asset is already locked! Unlocking first.", v118);
    }

    [(CWFAssetSetManager *)self unlockAssetWithReason:@"reason-need-to-check-version"];
  }

  if (!self->_assetRootToProcess)
  {
    oslog = [(CWFAssetSetManager *)self makeAutoAssetSetWithEntry:0];
    sub_1E0BF730C();
    v32 = objc_opt_new();
    [v32 setUserInitiated:blockingCopy];
    [v32 setAllowCheckDownloadOverCellular:1];
    [v32 setAllowCheckDownloadOnBattery:1];
    [v32 setAllowCheckDownloadOverExpensive:1];
    if (blockingCopy)
    {
      v33 = -2;
    }

    else
    {
      v33 = 0;
    }

    v112 = 0;
    v113 = 0;
    v96 = [oslog lockAtomicSync:reasonCopy forAtomicInstance:0 withNeedPolicy:v32 withTimeout:v33 lockedAtomicEntries:&v113 error:&v112];
    v99 = v113;
    v105 = v112;
    v34 = CWFGetOTAOSLog();
    if (v34)
    {
      v35 = CWFGetOTAOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      atomicInstanceTrackedForDownloaded = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
      *v118 = 136315650;
      *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
      *&v118[12] = 2112;
      *&v118[14] = v96;
      *&v118[22] = 2112;
      v119 = atomicInstanceTrackedForDownloaded;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v35, 0, "[OTA_SET] %s: Locked atomic instance = %@. Tracked atomic instance = %@", v118, 32);
    }

    if (v96)
    {
      atomicInstanceTrackedForDownloaded2 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
      if (atomicInstanceTrackedForDownloaded2)
      {
        atomicInstanceTrackedForDownloaded3 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
        v40 = [v96 isEqualToString:atomicInstanceTrackedForDownloaded3];

        if (v40)
        {
          v41 = CWFGetOTAOSLog();
          if (v41)
          {
            v42 = CWFGetOTAOSLog();
          }

          else
          {
            v42 = MEMORY[0x1E69E9C10];
            v43 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *v118 = 136315394;
            *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
            *&v118[12] = 2112;
            *&v118[14] = v96;
            LODWORD(v95) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 0, "[OTA_SET] %s: Disabling periodic check for downloads, atomic instance %@", v118, v95);
          }

          [(CWFAssetSetManager *)self setAtomicInstanceTrackedForDownloaded:0];
          [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
          [(CWFAssetSetManager *)self setPeriodicCheckForDownloadCounts:0];
        }
      }
    }

    if (fetchCopy && [v105 code] == 6556)
    {
      v87 = CWFGetOTAOSLog();
      if (v87)
      {
        v88 = CWFGetOTAOSLog();
      }

      else
      {
        v88 = MEMORY[0x1E69E9C10];
        v94 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *v118 = 136315138;
        *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v88, 0, "[OTA_SET] %s: No Server Side auto-asset-entries matching set requirements exist, exiting", v118);
      }

      rootCatalogInfo = 0;
      assetVersion = 0;
      assetSpecifier = 0;
      assetType = 0;
      v104 = 0;
      v100 = 0;
      v31 = 0;
      fullAssetSelector = 0;
      v29 = 0;
      v75 = 0;
      goto LABEL_80;
    }

    if (!v105 && v99 && [v99 count])
    {
      v44 = CWFGetOTAOSLog();
      if (v44)
      {
        v45 = CWFGetOTAOSLog();
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *v118 = 136315394;
        *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
        *&v118[12] = 2112;
        *&v118[14] = v99;
        LODWORD(v95) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 0, "[OTA_SET] %s: Successfully locked the asset entries = %@", v118, v95);
      }

      v47 = [v99 objectAtIndexedSubscript:0];
      fullAssetSelector = [v47 fullAssetSelector];

      v29 = [(CWFAssetSetManager *)self makeAutoAssetWithSelector:fullAssetSelector];
      if (v29)
      {
        [(CWFAssetSetManager *)self setCurrentLockedAutoAsset:v29];
        v49 = CWFGetOTAOSLog();
        if (v49)
        {
          v50 = CWFGetOTAOSLog();
        }

        else
        {
          v50 = MEMORY[0x1E69E9C10];
          v51 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *v118 = 136315394;
          *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
          *&v118[12] = 2112;
          *&v118[14] = v29;
          LODWORD(v95) = 22;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v50, 0, "[OTA_SET] %s: Successfully locked the asset. currentLockedAutoAsset = %@", v118, v95);
        }

        [v101 setUserInitiated:blockingCopy];
        v110 = 0;
        v111 = fullAssetSelector;
        v109 = 0;
        v104 = [v29 lockContentSync:reasonCopy withUsagePolicy:v101 withTimeout:v33 lockedAssetSelector:&v111 newerInProgress:&v110 error:&v109];
        v30 = v111;

        v52 = v110;
        v105 = v109;
        v100 = v52;
        if (v52)
        {
          availableForUseAttributes = [v52 availableForUseAttributes];
          [v103 addEntriesFromDictionary:availableForUseAttributes];
        }

        if (v30)
        {
          v54 = v104 == 0;
        }

        else
        {
          v54 = 1;
        }

        v56 = v54 || v105 != 0;
        v57 = CWFGetOTAOSLog();
        v58 = v57;
        if (v56)
        {
          if (v57)
          {
            v80 = CWFGetOTAOSLog();
          }

          else
          {
            v80 = MEMORY[0x1E69E9C10];
            v90 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            v91 = [v105 description];
            *v118 = 136315650;
            *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
            *&v118[12] = 2112;
            *&v118[14] = v30;
            *&v118[22] = 2112;
            v119 = v91;
            LODWORD(v95) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v80, 16, "[OTA_SET] %s:  Unable to lock any version of auto-asset content, lockedAssetSelector: %@ error: %@", v118, v95);
          }

          assetVersion = 0;
          assetSpecifier = 0;
          assetType = 0;
        }

        else
        {
          if (v57)
          {
            v59 = CWFGetOTAOSLog();
          }

          else
          {
            v59 = MEMORY[0x1E69E9C10];
            v60 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *v118 = 136315394;
            *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
            *&v118[12] = 2112;
            *&v118[14] = v29;
            LODWORD(v95) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v59, 0, "[OTA_SET] %s: Successfully locked the asset. lockedAutoAsset = %@", v118, v95);
          }

          assetSelector = [v29 assetSelector];
          assetType = [assetSelector assetType];

          assetSelector2 = [v29 assetSelector];
          assetSpecifier = [assetSelector2 assetSpecifier];

          assetSelector3 = [v29 assetSelector];
          assetVersion = [assetSelector3 assetVersion];

          v108 = 0;
          v31 = [v29 currentStatusSync:&v108];
          v105 = v108;
          if (v31)
          {
            availableForUseAttributes2 = [v31 availableForUseAttributes];

            availableForUse = availableForUseAttributes2 != 0;
            if (availableForUseAttributes2)
            {
              availableForUseAttributes3 = [v31 availableForUseAttributes];
              [v107 addEntriesFromDictionary:availableForUseAttributes3];
            }

            else
            {
              v66 = CWFGetOTAOSLog();
              if (v66)
              {
                availableForUseAttributes3 = CWFGetOTAOSLog();
              }

              else
              {
                availableForUseAttributes3 = MEMORY[0x1E69E9C10];
                v67 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(availableForUseAttributes3, OS_LOG_TYPE_ERROR))
              {
                *v118 = 136315394;
                *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
                *&v118[12] = 2112;
                *&v118[14] = v31;
                LODWORD(v95) = 22;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, availableForUseAttributes3, 16, "[OTA_SET] %s: No availableForUseAttributes for status: %@", v118, v95);
              }
            }

            v68 = CWFGetOTAOSLog();
            if (v68)
            {
              v69 = CWFGetOTAOSLog();
            }

            else
            {
              v69 = MEMORY[0x1E69E9C10];
              v70 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              assetSelector4 = [v29 assetSelector];
              *v118 = 136315906;
              *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
              *&v118[12] = 2112;
              *&v118[14] = assetSelector4;
              *&v118[22] = 2112;
              v119 = v96;
              LOWORD(v120[0]) = 2112;
              *(v120 + 2) = v107;
              LODWORD(v95) = 42;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v69, 0, "[OTA_SET] %s: Locked Asset: %@, lockedSetString: %@, Attributes: %@", v118, v95);
            }

            rootCatalogInfo = 0;
            goto LABEL_77;
          }

          v86 = CWFGetOTAOSLog();
          if (v86)
          {
            v80 = CWFGetOTAOSLog();
          }

          else
          {
            v80 = MEMORY[0x1E69E9C10];
            v92 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            assetSelector5 = [v29 assetSelector];
            *v118 = 136315650;
            *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
            *&v118[12] = 2112;
            *&v118[14] = assetSelector5;
            *&v118[22] = 2112;
            v119 = v105;
            LODWORD(v95) = 32;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v80, 16, "[OTA_SET] %s: Fetch status for locked auto asset: %@ completed with error: %@", v118, v95);
          }
        }

        fullAssetSelector = v30;
        goto LABEL_115;
      }

      v85 = CWFGetOTAOSLog();
      if (v85)
      {
        v80 = CWFGetOTAOSLog();
      }

      else
      {
        v80 = MEMORY[0x1E69E9C10];
        v89 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *v118 = 136315394;
        *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
        *&v118[12] = 2112;
        *&v118[14] = fullAssetSelector;
        LODWORD(v95) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v80, 16, "[OTA_SET] %s: Cannot create auto asset instance with selector: %@", v118, v95);
      }

      assetVersion = 0;
      assetSpecifier = 0;
      assetType = 0;
      v104 = 0;
      v105 = 0;
      v100 = 0;
    }

    else
    {
      v79 = CWFGetOTAOSLog();
      if (v79)
      {
        v80 = CWFGetOTAOSLog();
      }

      else
      {
        v80 = MEMORY[0x1E69E9C10];
        v82 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v83 = [v105 description];
        *v118 = 136315650;
        *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
        *&v118[12] = 2112;
        *&v118[14] = v99;
        *&v118[22] = 2112;
        v119 = v83;
        LODWORD(v95) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v80, 16, "[OTA_SET] %s:  Unable to lock any version of auto-asset-set content, entries: %@ error: %@", v118, v95);
      }

      assetVersion = 0;
      assetSpecifier = 0;
      assetType = 0;
      v104 = 0;
      v100 = 0;
      fullAssetSelector = 0;
    }

    v29 = 0;
LABEL_115:

    rootCatalogInfo = 0;
    availableForUse = 0;
    v31 = 0;
    v75 = 0;
    goto LABEL_78;
  }

  assetFromRoot = [(CWFAssetSetManager *)self assetFromRoot];
  infoPlist = [assetFromRoot infoPlist];

  assetType = [infoPlist objectForKey:@"CFBundleIdentifier"];
  assetFromRoot2 = [(CWFAssetSetManager *)self assetFromRoot];
  assetSpecifier = [assetFromRoot2 AssetSpecifier];

  assetFromRoot3 = [(CWFAssetSetManager *)self assetFromRoot];
  assetVersion = [assetFromRoot3 AssetVersion];

  assetFromRoot4 = [(CWFAssetSetManager *)self assetFromRoot];
  localContentURL = [assetFromRoot4 localContentURL];
  v104 = [localContentURL URLByAppendingPathComponent:@"AssetData"];

  assetFromRoot5 = [(CWFAssetSetManager *)self assetFromRoot];
  availableForUse = [assetFromRoot5 availableForUse];

  assetFromRoot6 = [(CWFAssetSetManager *)self assetFromRoot];
  rootCatalogInfo = [assetFromRoot6 rootCatalogInfo];

  assetFromRoot7 = [(CWFAssetSetManager *)self assetFromRoot];
  availableForUseAttributes4 = [assetFromRoot7 availableForUseAttributes];

  if (v104)
  {
    v29 = 0;
    v105 = 0;
    v30 = 0;
    v31 = 0;
    v100 = 0;
    v107 = availableForUseAttributes4;
LABEL_77:
    v72 = [CWFAssetLocal alloc];
    v73 = MEMORY[0x1E695DFF8];
    oslog = [v104 path];
    v74 = [v73 fileURLWithPath:oslog isDirectory:1];
    v75 = [(CWFAssetLocal *)v72 initWithAssetType:assetType assetSpecifier:assetSpecifier assetVersion:assetVersion attributes:v107 rootCatalogInfo:rootCatalogInfo localURL:v74];

    fullAssetSelector = v30;
    goto LABEL_78;
  }

  v81 = CWFGetOTAOSLog();
  if (v81)
  {
    oslog = CWFGetOTAOSLog();
  }

  else
  {
    oslog = MEMORY[0x1E69E9C10];
    v84 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *v118 = 136315394;
    *&v118[4] = "[CWFAssetSetManager lockAutoAssetWithReason:isBlocking:forcedFetch:]";
    *&v118[12] = 2112;
    *&v118[14] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, oslog, 16, "[OTA_SET] %s: invalid localContentURL %@", v118, 22);
  }

  v104 = 0;
  v105 = 0;
  v100 = 0;
  v31 = 0;
  fullAssetSelector = 0;
  v29 = 0;
  v75 = 0;
  v107 = availableForUseAttributes4;
LABEL_78:

  v76 = +[CWFAssetPowerTableTelemetry sharedObj];
  [v76 setAssetContentSyncResult:availableForUse availableForUseAttributes:v107 newerVersionAttributes:v103 assetType:assetType assetSpecifier:assetSpecifier assetVersion:assetVersion error:v105];

  if (v98)
  {
    oslog = +[CWFAssetPowerTableTelemetry sharedObj];
    [oslog sendTelemetryAndClear];
LABEL_80:
  }

  v77 = v75;

  return v75;
}

- (void)unlockAssetWithReason:(id)reason
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = CWFGetOTAOSLog();
  if (v5)
  {
    v6 = CWFGetOTAOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[CWFAssetSetManager unlockAssetWithReason:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[OTA_SET] %s: Entered", &v22);
  }

  currentLockedAutoAsset = [(CWFAssetSetManager *)self currentLockedAutoAsset];

  if (currentLockedAutoAsset)
  {
    currentLockedAutoAsset2 = [(CWFAssetSetManager *)self currentLockedAutoAsset];
    v10 = [currentLockedAutoAsset2 endLockUsageSync:reasonCopy];

    v11 = CWFGetOTAOSLog();
    v12 = v11;
    if (v10)
    {
      if (v11)
      {
        v13 = CWFGetOTAOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315650;
        v23 = "[CWFAssetSetManager unlockAssetWithReason:]";
        v24 = 2112;
        v25 = reasonCopy;
        v26 = 2112;
        v27 = v10;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[OTA_SET] %s:  Failed to unlock for reason:%@ with error: %@", &v22, 32);
      }
    }

    else
    {
      if (v11)
      {
        v15 = CWFGetOTAOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315138;
        v23 = "[CWFAssetSetManager unlockAssetWithReason:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[OTA_SET] %s:  Unlocked Assets", &v22);
      }

      [(CWFAssetSetManager *)self setCurrentLockedAutoAssetSelector:0];
      [(CWFAssetSetManager *)self setCurrentLockedAutoAsset:0];
      v10 = 0;
    }
  }

  else
  {
    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "[CWFAssetSetManager unlockAssetWithReason:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[OTA_SET] %s:  Skipping the end asset lock operation as it was never locked.", &v22);
    }
  }

  v19 = CWFGetOTAOSLog();
  if (v19)
  {
    v20 = CWFGetOTAOSLog();
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[CWFAssetSetManager unlockAssetWithReason:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[OTA_SET] %s: Exiting", &v22);
  }
}

- (id)makeAutoAssetSetWithEntry:(id)entry
{
  v29 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy || (v6 = entryCopy, ![entryCopy count]))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v7 = qword_1ECE86950;
    v25 = qword_1ECE86950;
    if (!qword_1ECE86950)
    {
      *v26 = MEMORY[0x1E69E9820];
      *&v26[8] = 3221225472;
      *&v26[16] = sub_1E0BFA98C;
      v27 = &unk_1E86E5600;
      v28 = &v22;
      sub_1E0BFA6B8();
      Class = objc_getClass("MAAutoAssetSetEntry");
      *(v28[1] + 24) = Class;
      qword_1ECE86950 = *(v28[1] + 24);
      v7 = v23[3];
    }

    v9 = v7;
    _Block_object_dispose(&v22, 8);
    v10 = [v7 alloc];
    assetSpecifier = [(CWFAssetSetManager *)self assetSpecifier];
    v12 = [v10 initForAssetType:@"com.apple.MobileAsset.CoreWiFi" withAssetSpecifier:assetSpecifier];

    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v12, 0}];
  }

  v21 = 0;
  v13 = [objc_alloc(sub_1E0BF406C()) initUsingClientDomain:@"com.apple.CoreWiFi" forClientName:@"CoreWiFiAssetMAClient" forAssetSetIdentifier:@"WiFi_SetOfPowerTables" comprisedOfEntries:v6 error:&v21];
  v14 = v21;
  v15 = [v13 alterEntriesRepresentingAtomicSync:@"reason-define-asset-set" toBeComprisedOfEntries:v6];
  if (v14 || !v13)
  {
    v17 = CWFGetOTAOSLog();
    if (v17)
    {
      v18 = CWFGetOTAOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v26 = 136315650;
      *&v26[4] = "[CWFAssetSetManager makeAutoAssetSetWithEntry:]";
      *&v26[12] = 2112;
      *&v26[14] = v6;
      *&v26[22] = 2112;
      v27 = v14;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[OTA_SET] %s:  Unable to initialize autoAsset with requested assetSelector: %@, error: %@", v26, 32);
    }

    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

@end