@interface BKSAccelerometer
- (BKSAccelerometer)init;
- (BKSAccelerometerDelegate)delegate;
- (int64_t)currentDeviceOrientation;
- (void)_checkIn;
- (void)_checkOut;
- (void)_orientationDidChange;
- (void)_registerForOrientationNotifications;
- (void)_serverWasRestarted;
- (void)_updateOrientationServer;
- (void)dealloc;
- (void)setAccelerometerEventsEnabled:(BOOL)enabled;
- (void)setOrientationEventsEnabled:(BOOL)enabled;
- (void)setPassiveOrientationEvents:(BOOL)events;
- (void)setUpdateInterval:(double)interval;
- (void)setXThreshold:(float)threshold;
- (void)setYThreshold:(float)threshold;
- (void)setZThreshold:(float)threshold;
@end

@implementation BKSAccelerometer

- (BKSAccelerometer)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = BKSAccelerometer;
  v2 = [(BKSAccelerometer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;

    if (notify_register_check("com.apple.backboardd.rawOrientation", &v2->_orientationCheckToken))
    {
      v5 = BKLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        *buf = 138543362;
        v11 = v7;
        v8 = v7;
        _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "%{public}@ unable to create notifyd token for device orientation", buf, 0xCu);
      }
    }

    v2->_passiveOrientationEvents = 1;
    mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v2->_orientationPort);
  }

  return v2;
}

- (int64_t)currentDeviceOrientation
{
  state64 = 0;
  notify_get_state(self->_orientationCheckToken, &state64);
  return state64;
}

- (void)_updateOrientationServer
{
  v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  orientationPort = self->_orientationPort;
  orientationEventsEnabled = self->_orientationEventsEnabled;
  passiveOrientationEvents = self->_passiveOrientationEvents;

  _BKSHIDSetOrientationClientEventsEnabled(v3, orientationPort, orientationEventsEnabled, passiveOrientationEvents);
}

- (void)_registerForOrientationNotifications
{
  v3 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56__BKSAccelerometer__registerForOrientationNotifications__block_invoke;
  handler[3] = &unk_1E6F46F60;
  handler[4] = self;
  notify_register_dispatch("com.apple.backboardd.rawOrientation", &self->_orientationNotificationsToken, v3, handler);
}

- (void)_checkIn
{
  name.perform = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:? selector:? object:?];
  if (!self->_accelerometerEventsSource)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, _serverWasRestarted, @"kBKSHIDServerDiedNotification", 0, 0);
    LODWORD(name.version) = 0;
    v4 = MEMORY[0x1E69E9A60];
    v5 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    if (v5)
    {
      v14 = v5;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      [currentHandler handleFailureInMethod:v16 object:mach_error_string(v14) file:? lineNumber:? description:?];
    }

    v18 = 2;
    MEMORY[0x186605820](*v4, LODWORD(name.version), 1, &v18, 1);
    v6 = BKCreateMIGServerSourceWithContext(&_BKXXBKAccelerometer_subsystem, name.version, 0, self);
    self->_accelerometerEventsSource = v6;
    if (!v6)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:objc_opt_class() object:? file:? lineNumber:? description:?];
    }

    Current = CFRunLoopGetCurrent();
    self->_accelerometerEventsRunLoop = Current;
    CFRetain(Current);
    CFRunLoopAddSource(self->_accelerometerEventsRunLoop, self->_accelerometerEventsSource, *MEMORY[0x1E695E8D0]);
  }

  v8 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  accelerometerEventsSource = self->_accelerometerEventsSource;
  memset(&name.info, 0, 64);
  name.version = 1;
  CFRunLoopSourceGetContext(accelerometerEventsSource, &name);
  v10 = _BKSHIDSetAccelerometerClientEventsEnabled(v8, *name.info, 0, self->_updateInterval, self->_xThreshold, self->_yThreshold, self->_zThreshold);
  if (v10)
  {
    v11 = v10;
    if (v10 == 268435460)
    {
      v12 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
      [BKSAccelerometer performSelector:"performSelector:withObject:afterDelay:inModes:" withObject:? afterDelay:? inModes:?];
    }

    else
    {
      v12 = BKLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = mach_error_string(v11);
        LODWORD(name.version) = 136446210;
        *(&name.version + 4) = v13;
        _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, "BKSetAccelerometerClientEventsEnabled failed: %{public}s", &name, 0xCu);
      }
    }
  }
}

- (void)_checkOut
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:? selector:? object:?];
  if (self->_accelerometerEventsSource)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, @"kBKSHIDServerDiedNotification", 0);
    accelerometerEventsSource = self->_accelerometerEventsSource;
    memset(&context.info, 0, 64);
    context.version = 1;
    CFRunLoopSourceGetContext(accelerometerEventsSource, &context);
    v5 = *context.info;
    CFRunLoopSourceInvalidate(self->_accelerometerEventsSource);
    CFRelease(self->_accelerometerEventsSource);
    self->_accelerometerEventsSource = 0;
    CFRelease(self->_accelerometerEventsRunLoop);
    v6 = MEMORY[0x1E69E9A60];
    self->_accelerometerEventsRunLoop = 0;
    v7 = *v6;

    mach_port_mod_refs(v7, v5, 1u, -1);
  }
}

- (BKSAccelerometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_orientationDidChange
{
  delegate = [(BKSAccelerometer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(BKSAccelerometer *)self currentDeviceOrientation];
    [delegate accelerometer:? didChangeDeviceOrientation:?];
  }
}

- (void)setOrientationEventsEnabled:(BOOL)enabled
{
  if (self->_orientationEventsEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_orientationEventsEnabled = enabled;
    [(BKSAccelerometer *)self _updateOrientationServer];
    if (enabledCopy)
    {
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      orientationEventsThread = self->_orientationEventsThread;
      self->_orientationEventsThread = currentThread;

      [(BKSAccelerometer *)self _registerForOrientationNotifications];
    }

    else
    {
      notify_cancel(self->_orientationNotificationsToken);
      v7 = self->_orientationEventsThread;
      self->_orientationEventsThread = 0;
    }
  }
}

- (void)setPassiveOrientationEvents:(BOOL)events
{
  if (self->_passiveOrientationEvents != events)
  {
    self->_passiveOrientationEvents = events;
    [(BKSAccelerometer *)self _updateOrientationServer];
  }
}

- (void)_serverWasRestarted
{
  [(NSLock *)self->_lock lock];
  if (self->_accelerometerEventsSource)
  {
    [(BKSAccelerometer *)self _checkIn];
  }

  if (self->_orientationEventsEnabled)
  {
    [(BKSAccelerometer *)self _updateOrientationServer];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setZThreshold:(float)threshold
{
  if (self->_zThreshold != threshold)
  {
    self->_zThreshold = threshold;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setYThreshold:(float)threshold
{
  if (self->_yThreshold != threshold)
  {
    self->_yThreshold = threshold;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setXThreshold:(float)threshold
{
  if (self->_xThreshold != threshold)
  {
    self->_xThreshold = threshold;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setUpdateInterval:(double)interval
{
  if (self->_updateInterval != interval)
  {
    self->_updateInterval = interval;
    [(NSLock *)self->_lock lock];
    if (self->_accelerometerEventsSource)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (void)setAccelerometerEventsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(NSLock *)self->_lock lock];
  if ([(BKSAccelerometer *)self accelerometerEventsEnabled]!= enabledCopy)
  {
    if (enabledCopy)
    {
      [(BKSAccelerometer *)self _checkIn];
    }

    else
    {
      [(BKSAccelerometer *)self _checkOut];
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)dealloc
{
  [(BKSAccelerometer *)self setAccelerometerEventsEnabled:?];
  [(BKSAccelerometer *)self setOrientationEventsEnabled:?];
  notify_cancel(self->_orientationCheckToken);
  orientationPort = self->_orientationPort;
  if (orientationPort + 1 >= 2)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], orientationPort, 1u, -1);
  }

  v4.receiver = self;
  v4.super_class = BKSAccelerometer;
  [(BKSAccelerometer *)&v4 dealloc];
}

@end