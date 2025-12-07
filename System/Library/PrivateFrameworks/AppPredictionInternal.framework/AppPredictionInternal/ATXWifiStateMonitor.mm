@interface ATXWifiStateMonitor
+ (id)sharedInstance;
- (ATXWifiStateMonitor)init;
- (NSString)SSID;
- (void)SSID;
- (void)_start;
- (void)dealloc;
@end

@implementation ATXWifiStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken3 != -1)
  {
    +[ATXWifiStateMonitor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_8;

  return v3;
}

void __37__ATXWifiStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_8;
  sharedInstance__pasExprOnceResult_8 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXWifiStateMonitor)init
{
  v13.receiver = self;
  v13.super_class = ATXWifiStateMonitor;
  v2 = [(ATXWifiStateMonitor *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ATXWifiStateMonitor_init__block_invoke;
    block[3] = &unk_278596BB8;
    v12 = v2;
    dispatch_async(v9, block);
  }

  return v2;
}

- (void)_start
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = WiFiManagerClientCreate();
  self->_manager = v3;
  if (!v3)
  {
    v18 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXWifiStateMonitor *)v18 _start];
    }

    goto LABEL_19;
  }

  v4 = WiFiManagerClientCopyDevices();
  if (!v4)
  {
    v18 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXWifiStateMonitor *)v18 _start];
    }

LABEL_19:

    return;
  }

  v5 = v4;
  if (CFArrayGetCount(v4) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    self->_device = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  device = self->_device;
  if (device && (v8 = CFGetTypeID(device), device = WiFiDeviceClientGetTypeID(), v8 == device))
  {
    WiFiDeviceClientRegisterExtendedLinkCallback();
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    v9 = WiFiDeviceClientCopyCurrentNetwork();
    if (v9)
    {
      v10 = v9;
      v11 = [WiFiNetworkGetSSID() copy];
      lastSeenSSID = self->_lastSeenSSID;
      self->_lastSeenSSID = v11;

      self->_isActive = self->_lastSeenSSID != 0;
      v13 = objc_opt_new();
      lastSeenDate = self->_lastSeenDate;
      self->_lastSeenDate = v13;

      v16 = __atxlog_handle_default(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = self->_lastSeenSSID;
        v21 = 138412290;
        v22 = v17;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Initial SSID: '%@'", &v21, 0xCu);
      }

      CFRelease(v10);
    }
  }

  else
  {
    v19 = __atxlog_handle_default(device);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Could not get WiFi device", &v21, 2u);
    }

    v20 = self->_device;
    if (v20)
    {
      CFRelease(v20);
      self->_device = 0;
    }
  }
}

- (NSString)SSID
{
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x3032000000;
  v9[2] = __Block_byref_object_copy__27;
  v9[3] = __Block_byref_object_dispose__27;
  v10 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__ATXWifiStateMonitor_SSID__block_invoke;
  v7[3] = &unk_278596C38;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  v4 = __atxlog_handle_default(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXWifiStateMonitor *)v9 SSID];
  }

  v5 = *(v9[0] + 40);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __27__ATXWifiStateMonitor_SSID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 48) & 1) == 0)
  {
    v3 = *(v2 + 40);
    if (!v3)
    {
      return;
    }

    [v3 timeIntervalSinceNow];
    if (v4 <= -1800.0)
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 32);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)dealloc
{
  if (self->_device)
  {
    WiFiDeviceClientRegisterExtendedLinkCallback();
    CFRelease(self->_device);
  }

  if (self->_manager)
  {
    CFRunLoopGetMain();
    v3 = *MEMORY[0x277CBF048];
    WiFiManagerClientUnscheduleFromRunLoop();
    manager = self->_manager;
    Main = CFRunLoopGetMain();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__ATXWifiStateMonitor_dealloc__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = manager;
    CFRunLoopPerformBlock(Main, v3, block);
    v6 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v6);
  }

  v7.receiver = self;
  v7.super_class = ATXWifiStateMonitor;
  [(ATXWifiStateMonitor *)&v7 dealloc];
}

- (void)SSID
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Current SSID: %@", &v3, 0xCu);
}

@end