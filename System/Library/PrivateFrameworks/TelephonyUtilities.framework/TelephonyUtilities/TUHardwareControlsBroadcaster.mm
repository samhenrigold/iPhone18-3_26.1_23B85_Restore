@interface TUHardwareControlsBroadcaster
- (TUHardwareControlsBroadcaster)init;
- (void)dealloc;
- (void)longPressTimerFired:(id)fired;
@end

@implementation TUHardwareControlsBroadcaster

- (TUHardwareControlsBroadcaster)init
{
  v9.receiver = self;
  v9.super_class = TUHardwareControlsBroadcaster;
  v2 = [(TUHardwareControlsBroadcaster *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = TUDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "TUHardwareControlsBroadcaster starting to listen for hardware controls.", v8, 2u);
    }

    v3->_hidEventSystemClientRef = IOHIDEventSystemClientCreate();
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientScheduleWithRunLoop();
    IOHIDEventSystemClientRegisterEventCallback();
    array = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:&unk_1F09C6328 forKey:@"DeviceUsage"];
    [array addObject:v6];
    IOHIDEventSystemClientSetMatchingMultiple();
  }

  return v3;
}

- (void)dealloc
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "TUHardwareControlsBroadcaster deallocating - stopping listening for hardware controls.", buf, 2u);
  }

  CFRunLoopGetCurrent();
  IOHIDEventSystemClientUnscheduleWithRunLoop();
  CFRelease(self->_hidEventSystemClientRef);
  v4.receiver = self;
  v4.super_class = TUHardwareControlsBroadcaster;
  [(TUHardwareControlsBroadcaster *)&v4 dealloc];
}

- (void)longPressTimerFired:(id)fired
{
  firedCopy = fired;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__TUHardwareControlsBroadcaster_longPressTimerFired___block_invoke;
  v6[3] = &unk_1E7424898;
  v7 = firedCopy;
  selfCopy = self;
  v5 = firedCopy;
  TUGuaranteeExecutionOnMainThreadAsync(v6);
}

void __53__TUHardwareControlsBroadcaster_longPressTimerFired___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"TUCarPlayHardwareControlEventNotification" object:0 userInfo:v2];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotification:v3];

  v6 = TUDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "TUHardwareControlsBroadcaster long press timer fired, posting: %@", &v8, 0xCu);
  }

  v7 = [v2 valueForKey:@"kTUCarPlayHardwareControlButtonNameKey"];

  if (v7 == @"kTUCarPlayHardwareControlButtonWhiteTelephoneLongPress")
  {
    [*(a1 + 40) setEventTypeToIgnore:@"kTUCarPlayHardwareControlButtonWhiteTelephone"];
  }

  [*(a1 + 32) invalidate];
}

@end