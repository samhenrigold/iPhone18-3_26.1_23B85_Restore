@interface KeyboardHelper
- (BOOL)isKeyboardConnected;
- (BOOL)isR18xKeyboardAttached;
- (KeyboardHelper)init;
- (void)dealloc;
- (void)getInitialFolioState;
- (void)registerForFolioEvents;
- (void)registerForKeyboardEvents;
- (void)updateFolioState:(BOOL)state;
- (void)updateKeyboardState;
- (void)updateSensorExchangeKey;
@end

@implementation KeyboardHelper

- (KeyboardHelper)init
{
  v7.receiver = self;
  v7.super_class = KeyboardHelper;
  v2 = [(KeyboardHelper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedIsKeyboardAttached = 0;
    v2->_cachedIsFolioAttached = 0;
    v2->_keyboardPortConnect = 0;
    v2->_keyboardPortDisconnect = 0;
    if (byte_1000AB2FC == 1)
    {
      v6 = 0;
      qword_1000AB2D0 = [CLPCPolicyInterface createClient:&v6];
      v4 = qword_1000AB2D0;
      if (v6)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005B3FC();
        }
      }
    }

    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:28 atSMCIndex:@"zETM", 28];
      dword_1000AB9A8 = 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_keyboardPortConnect);
  v4 = IONotificationPortGetRunLoopSource(self->_keyboardPortDisconnect);
  CFRunLoopRemoveSource(qword_1000AB2E8, RunLoopSource, kCFRunLoopDefaultMode);
  CFRunLoopRemoveSource(qword_1000AB2E8, v4, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(self->_keyboardPortConnect);
  IONotificationPortDestroy(self->_keyboardPortDisconnect);
  v5.receiver = self;
  v5.super_class = KeyboardHelper;
  [(KeyboardHelper *)&v5 dealloc];
}

- (void)registerForKeyboardEvents
{
  self->_keyboardPortConnect = IONotificationPortCreate(kIOMainPortDefault);
  v3 = IONotificationPortCreate(kIOMainPortDefault);
  self->_keyboardPortDisconnect = v3;
  keyboardPortConnect = self->_keyboardPortConnect;
  if (keyboardPortConnect)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B4A8();
    }
  }

  else
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(keyboardPortConnect);
    v7 = IONotificationPortGetRunLoopSource(self->_keyboardPortDisconnect);
    if (RunLoopSource)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005B46C();
      }
    }

    else
    {
      v9 = v7;
      CFRunLoopAddSource(qword_1000AB2E8, RunLoopSource, kCFRunLoopDefaultMode);
      CFRunLoopAddSource(qword_1000AB2E8, v9, kCFRunLoopDefaultMode);
      v10 = self->_keyboardPortConnect;
      v11 = IOServiceMatching("AppleHIDKeyboardEventDriverV2");
      v12 = IOServiceAddMatchingNotification(v10, "IOServiceFirstMatch", v11, sub_10004DB0C, self, &self->_keyboardIteratorConnect);
      v13 = self->_keyboardPortConnect;
      v14 = IOServiceMatching("AppleHIDKeyboardEventDriverV2");
      if (!(v12 | IOServiceAddMatchingNotification(v13, "IOServiceTerminate", v14, sub_10004DB0C, self, &self->_keyboardIteratorDisconnect)))
      {
        sub_10004DB0C(self, self->_keyboardIteratorConnect);
        keyboardIteratorDisconnect = self->_keyboardIteratorDisconnect;

        sub_10004DB0C(self, keyboardIteratorDisconnect);
      }
    }
  }
}

- (void)registerForFolioEvents
{
  self->_hidClient = IOHIDEventSystemClientCreate();
  v18[0] = @"PrimaryUsagePage";
  v18[1] = @"PrimaryUsage";
  v19[0] = [NSNumber numberWithInt:11];
  v19[1] = [NSNumber numberWithInt:1];
  [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  IOHIDEventSystemClientSetMatching();
  IOHIDEventSystemClientRegisterEventCallback();
  IOHIDEventSystemClientScheduleWithRunLoop();
  hidClient = self->_hidClient;
  if (hidClient)
  {
    v4 = IOHIDEventSystemClientCopyServices(hidClient);
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4) >= 1)
      {
        Count = CFArrayGetCount(v5);
        if (Count >= 1)
        {
          v7 = 0;
          v8 = Count & 0x7FFFFFFF;
          do
          {
            if (CFArrayGetValueAtIndex(v5, v7))
            {
              KeyboardEvent = IOHIDEventCreateKeyboardEvent();
              if (!KeyboardEvent)
              {
                v10 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  sub_10005B4E4(&buf, v17, v10);
                }
              }

              v11 = IOHIDServiceClientCopyEvent();
              if (v11)
              {
                v12 = v11;
                [(KeyboardHelper *)self updateFolioState:IOHIDEventGetIntegerValue() != 0];
                CFRelease(v12);
              }

              else
              {
                v13 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  sub_10005B524(&v14, v15, v13);
                }
              }

              CFRelease(KeyboardEvent);
            }

            ++v7;
          }

          while (v8 != v7);
        }
      }

      CFRelease(v5);
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B564();
    }
  }
}

- (void)updateKeyboardState
{
  isKeyboardConnected = [(KeyboardHelper *)self isKeyboardConnected];
  if (self->_cachedIsKeyboardAttached != isKeyboardConnected)
  {
    self->_cachedIsKeyboardAttached = isKeyboardConnected;
    if (isKeyboardConnected)
    {
      [(KeyboardHelper *)self isR18xKeyboardAttached];
    }

    [(KeyboardHelper *)self updateSensorExchangeKey];
  }
}

- (BOOL)isR18xKeyboardAttached
{
  if (self->_cachedIsKeyboardAttached)
  {
    v8 = v2;
    v9 = v3;
    v4 = sub_100031CAC("AppleOrionManager", 0, 0);
    if (v4)
    {
      v5 = v4;
      if (sub_100031F8C(v4, @"IOAccessoryDigitalID", v7, 6) && (v7[4] & 1) != 0)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        IOObjectRelease(v5);
        LOBYTE(v4) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isKeyboardConnected
{
  v2 = sub_100031CAC("AppleHIDKeyboardEventDriverV2", 0, 0);
  v3 = sub_100031CAC("IOAccessoryIDBusHIDDevice", 0, 0);
  if (v2)
  {
    v4 = sub_10003203C(v2, @"RequiresCompassResetOnConnect");
    if (v3)
    {
      return v4 | sub_10003203C(v3, @"RequiresCompassResetOnConnect");
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B5A0();
    }

    v4 = 0;
    if (v3)
    {
      return v4 | sub_10003203C(v3, @"RequiresCompassResetOnConnect");
    }
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B620();
  }

  return v4;
}

- (void)updateFolioState:(BOOL)state
{
  if (self->_cachedIsFolioAttached != state)
  {
    self->_cachedIsFolioAttached = state;
    [(KeyboardHelper *)self updateSensorExchangeKey];
  }
}

- (void)updateSensorExchangeKey
{
  if (self->_cachedIsFolioAttached)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | self->_cachedIsKeyboardAttached;
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v5) = 67109376;
      HIDWORD(v5) = v3;
      v6 = 1024;
      v7 = dword_1000AB2D8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> KeyboardHelper updating SDTK - NewValue: %u PreviousValue: %u", &v5, 0xEu);
    }
  }

  if (dword_1000AB2D8 != v3)
  {
    dword_1000AB2D8 = v3;
    *&dword_1000AB9A8 = v3;
    v5 = 0;
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (qword_1000AB2D0)
        {
          [qword_1000AB2D0 setDockMode:1 options:2 error:&v5];
          if (v5)
          {
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_10005B6A0();
            }
          }
        }
      }
    }

    else if (v3)
    {
      if (qword_1000AB2D0)
      {
        [qword_1000AB2D0 setDockMode:1 options:1 error:&v5];
        if (v5)
        {
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_10005B710();
          }
        }
      }
    }

    else if (qword_1000AB2D0)
    {
      [qword_1000AB2D0 setDockMode:0 options:0 error:&v5];
      if (v5)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005B780();
        }
      }
    }
  }
}

- (void)getInitialFolioState
{
  qword_1000ABCC0 = IOHIDEventSystemCreate();
  if (!qword_1000ABCC0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B7F0();
  }

  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v4 = IOHIDEventSystemCopyEvent();
  if (v4)
  {
    v5 = v4;
    [(KeyboardHelper *)self updateFolioState:IOHIDEventGetIntegerValue() != 0];
    CFRelease(v5);
  }

  CFRelease(KeyboardEvent);
}

@end