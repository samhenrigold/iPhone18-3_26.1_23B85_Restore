@interface AXBOpaqueTouchSettingsManager
+ (id)sharedInstance;
- (id)initSharedInstance;
- (void)_applyPreferencesToDeviceService:(__IOHIDServiceClient *)service;
- (void)_resendPreferencesToServices;
- (void)dealloc;
- (void)deviceServiceAppeared:(__IOHIDServiceClient *)appeared;
- (void)deviceServiceDisappeared:(__IOHIDServiceClient *)disappeared;
- (void)start;
@end

@implementation AXBOpaqueTouchSettingsManager

- (id)initSharedInstance
{
  v7.receiver = self;
  v7.super_class = AXBOpaqueTouchSettingsManager;
  v2 = [(AXBOpaqueTouchSettingsManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    trackedServices = v2->_trackedServices;
    v2->_trackedServices = v3;

    v2->_systemFilterClient = IOHIDEventSystemClientCreate();
    array = [MEMORY[0x29EDB8DE8] array];
    [array addObject:&unk_2A21219F0];
    [array addObject:&unk_2A2121A18];
    IOHIDEventSystemClientSetMatchingMultiple();
    CFRunLoopGetMain();
    IOHIDEventSystemClientScheduleWithRunLoop();
  }

  return v2;
}

- (void)dealloc
{
  if (self->_systemFilterClient)
  {
    CFRunLoopGetMain();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    CFRelease(self->_systemFilterClient);
    self->_systemFilterClient = 0;
  }

  v3.receiver = self;
  v3.super_class = AXBOpaqueTouchSettingsManager;
  [(AXBOpaqueTouchSettingsManager *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXBOpaqueTouchSettingsManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __47__AXBOpaqueTouchSettingsManager_sharedInstance__block_invoke()
{
  sharedInstance_shared = [[AXBOpaqueTouchSettingsManager alloc] initSharedInstance];

  return MEMORY[0x2A1C71028]();
}

- (void)_applyPreferencesToDeviceService:(__IOHIDServiceClient *)service
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "Applying preferences to service", buf, 2u);
  }

  if (IOHIDServiceClientConformsTo(service, 0xFF60u, 0x1000u))
  {
    _AXSOpaqueTouchTapSpeed();
    valuePtr = (v5 * 1000.0);
    v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
    IOHIDServiceClientSetProperty(service, @"DoubleTapDeltaMs", v6);
    CFRelease(v6);
    v7 = _AXSAllowOpaqueTouchGestures();
    v8 = MEMORY[0x29EDB8EF8];
    if (!v7)
    {
      v8 = MEMORY[0x29EDB8F00];
    }

    IOHIDServiceClientSetProperty(service, @"GesturesDisabled", *v8);
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_29BBBD000, v9, OS_LOG_TYPE_DEFAULT, "Applying double-tap delay %@", buf, 0xCu);
    }
  }

  else
  {
    if (!IOHIDServiceClientConformsTo(service, 0xDu, 0xCu))
    {
      return;
    }

    v10 = MEMORY[0x29EDBA070];
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    IOHIDServiceClientSetProperty(service, @"TrackpadExternallyDisabled", [v10 numberWithBool:{objc_msgSend(mEMORY[0x29EDBDFA0], "ignoreTrackpad")}]);

    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x29EDBA070];
      mEMORY[0x29EDBDFA0]2 = [MEMORY[0x29EDBDFA0] sharedInstance];
      v14 = [v12 numberWithBool:{objc_msgSend(mEMORY[0x29EDBDFA0]2, "ignoreTrackpad")}];
      *buf = 138412290;
      v17 = v14;
      _os_log_impl(&dword_29BBBD000, v9, OS_LOG_TYPE_DEFAULT, "Applying ignore trackpad from service discovery %@", buf, 0xCu);
    }
  }
}

- (void)deviceServiceAppeared:(__IOHIDServiceClient *)appeared
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = AXLogAccessories();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    appearedCopy = appeared;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Accessibility noticed opaque touch service appearing: %@", &v7, 0xCu);
  }

  IOHIDServiceClientRegisterRemovalCallback();
  appearedCopy2 = appeared;
  if (([(NSMutableArray *)self->_trackedServices containsObject:appearedCopy2]& 1) == 0)
  {
    [(NSMutableArray *)self->_trackedServices addObject:appearedCopy2];
    [(AXBOpaqueTouchSettingsManager *)self _applyPreferencesToDeviceService:appearedCopy2];
  }
}

- (void)deviceServiceDisappeared:(__IOHIDServiceClient *)disappeared
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = AXLogAccessories();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    disappearedCopy = disappeared;
    _os_log_impl(&dword_29BBBD000, v5, OS_LOG_TYPE_DEFAULT, "Accessibility noticed opaque touch service disappearing: %@", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_trackedServices removeObject:disappeared];
}

- (void)start
{
  v20 = *MEMORY[0x29EDCA608];
  if (!self->_running || (v12 = "[AXBOpaqueTouchSettingsManager start]", _AXAssert(), !self->_running))
  {
    self->_running = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _prefChangedCallback, *MEMORY[0x29EDC83C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, 0, _prefChangedCallback, *MEMORY[0x29EDC84B8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    IOHIDEventSystemClientRegisterDeviceMatchingCallback();
    v5 = IOHIDEventSystemClientCopyServices(self->_systemFilterClient);
    v6 = AXLogAccessories();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = [(__CFArray *)v5 count];
      _os_log_impl(&dword_29BBBD000, v6, OS_LOG_TYPE_DEFAULT, "Accessibility is starting opaque touch settings manager. There are %ld matching devices at startup.", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(AXBOpaqueTouchSettingsManager *)self deviceServiceAppeared:*(*(&v13 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)_resendPreferencesToServices
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = AXLogAccessories();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_trackedServices count];
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&dword_29BBBD000, v3, OS_LOG_TYPE_DEFAULT, "Accessibility is resending opaque touch preferences to tracked device services. there are %ld such services.", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_trackedServices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AXBOpaqueTouchSettingsManager *)self _applyPreferencesToDeviceService:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end