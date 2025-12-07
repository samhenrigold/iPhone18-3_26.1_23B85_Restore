@interface PHInCallOrientationMonitor
+ (id)sharedInstance;
- (BOOL)isSpringBoardInterfaceOrientationLocked;
- (PHInCallOrientationMonitor)init;
- (int64_t)activeInterfaceOrientation;
- (int64_t)currentOrientation;
- (int64_t)deviceOrientation;
- (int64_t)lastValidOrientation;
- (int64_t)springBoardLockedInterfaceOrientation;
- (void)_updateCachedOrientationValues;
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)setCurrentOrientation:(int64_t)orientation;
- (void)setIsOrientationLocked:(BOOL)locked;
- (void)setOrientationEventsEnabled:(BOOL)enabled;
@end

@implementation PHInCallOrientationMonitor

+ (id)sharedInstance
{
  if (qword_1003B0F98 != -1)
  {
    sub_1002570F8();
  }

  v3 = qword_1003B0F90;

  return v3;
}

- (PHInCallOrientationMonitor)init
{
  v7.receiver = self;
  v7.super_class = PHInCallOrientationMonitor;
  v2 = [(PHInCallOrientationMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(BKSAccelerometer);
    accelerometer = v2->_accelerometer;
    v2->_accelerometer = v3;

    [(BKSAccelerometer *)v2->_accelerometer setDelegate:v2];
    [(PHInCallOrientationMonitor *)v2 _updateCachedOrientationValues];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10010F3D4, @"com.apple.backboardd.orientationlock", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:0];
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:1];
  [(BKSAccelerometer *)self->_accelerometer setDelegate:0];
  v4.receiver = self;
  v4.super_class = PHInCallOrientationMonitor;
  [(PHInCallOrientationMonitor *)&v4 dealloc];
}

- (void)_updateCachedOrientationValues
{
  [(PHInCallOrientationMonitor *)self setCurrentOrientation:[(BKSAccelerometer *)self->_accelerometer currentDeviceOrientation]];
  if ([(PHInCallOrientationMonitor *)self isSpringBoardInterfaceOrientationLocked])
  {
    self->_lockedOrientation = [(PHInCallOrientationMonitor *)self springBoardLockedInterfaceOrientation];
    self->_isOrientationLocked = 1;
  }
}

- (void)setOrientationEventsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = sub_100004F84(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setOrientationEventsEnabled: %d", v7, 8u);
  }

  [(BKSAccelerometer *)self->_accelerometer setOrientationEventsEnabled:enabledCopy];
  v6 = enabledCopy ^ 1;
  [(BKSAccelerometer *)self->_accelerometer setPassiveOrientationEvents:v6];
  if ((v6 & 1) == 0)
  {
    [(PHInCallOrientationMonitor *)self _updateCachedOrientationValues];
  }
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  v6 = sub_100004F84(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    currentOrientation = [(PHInCallOrientationMonitor *)self currentOrientation];
    v19 = 2048;
    orientationCopy2 = orientation;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accelerometer orientation change from %ld to %ld", buf, 0x16u);
  }

  [(PHInCallOrientationMonitor *)self setCurrentOrientation:orientation];
  v7 = +[PHPIPController defaultPIPController];
  isPipped = [v7 isPipped];

  isOrientationLocked = [(PHInCallOrientationMonitor *)self isOrientationLocked];
  if (!isOrientationLocked || isPipped)
  {
    v10 = sub_100004F84(isOrientationLocked);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      currentOrientation = @"PHInCallOrientationEventNotification";
      v19 = 2048;
      orientationCopy2 = orientation;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "posting %@ for orientation: %ld", buf, 0x16u);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    v12 = [NSNumber numberWithInteger:orientation, @"kPHInCallOrientationType"];
    v15[1] = @"kPHLastValidInCallOrientationType";
    v16[0] = v12;
    v13 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self lastValidOrientation]];
    v16[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v11 postNotificationName:@"PHInCallOrientationEventNotification" object:0 userInfo:v14];
  }
}

- (int64_t)currentOrientation
{
  if (![(PHInCallOrientationMonitor *)self isOrientationLocked])
  {
    return self->_currentOrientation;
  }

  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];
  isPresentingAmbient = [delegate isPresentingAmbient];
  v6 = 40;
  if (isPresentingAmbient)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);

  return v7;
}

- (void)setCurrentOrientation:(int64_t)orientation
{
  self->_currentOrientation = orientation;
  if ((orientation - 1) <= 3)
  {
    [(PHInCallOrientationMonitor *)self setLastValidOrientation:?];
  }
}

- (int64_t)lastValidOrientation
{
  if ([(PHInCallOrientationMonitor *)self isOrientationLocked])
  {
    v3 = +[UIApplication sharedApplication];
    delegate = [v3 delegate];
    isPresentingAmbient = [delegate isPresentingAmbient];

    if ((isPresentingAmbient & 1) == 0)
    {
      self->_lastValidOrientation = [(PHInCallOrientationMonitor *)self lockedOrientation];
    }
  }

  result = self->_lastValidOrientation;
  if (!result)
  {
    result = [(PHInCallOrientationMonitor *)self deviceOrientation];
    self->_lastValidOrientation = result;
  }

  if ((result - 1) >= 4)
  {
    v7 = UIApp;

    return [v7 statusBarOrientation];
  }

  return result;
}

- (int64_t)deviceOrientation
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  currentInCallScene = [delegate currentInCallScene];
  interfaceOrientation = [currentInCallScene interfaceOrientation];

  return interfaceOrientation;
}

- (int64_t)activeInterfaceOrientation
{
  v3 = +[PHUIConfiguration canAutoRotateInCallUIForFaceTime];
  if (v3)
  {
    isOrientationLocked = [(PHInCallOrientationMonitor *)self isOrientationLocked];
    if (isOrientationLocked)
    {
      lockedOrientation = self->_lockedOrientation;
      v6 = sub_100004F84(isOrientationLocked);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = lockedOrientation;
        v7 = "activeInterfaceOrientation: device allows UI rotation and is orientation locked to %d";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 8u);
      }
    }

    else
    {
      lockedOrientation = BKHIDServicesGetNonFlatDeviceOrientation();
      v6 = sub_100004F84(lockedOrientation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = lockedOrientation;
        v7 = "activeInterfaceOrientation: device allows UI rotation and the last flat orientation was %d";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = sub_100004F84(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "activeInterfaceOrientation: we'll default to UIInterfaceOrientationPortrait", &v9, 2u);
    }

    lockedOrientation = 1;
  }

  return lockedOrientation;
}

- (BOOL)isSpringBoardInterfaceOrientationLocked
{
  if (byte_1003B0FA4)
  {
    state64 = 0;
  }

  else if (notify_register_check("com.apple.backboardd.orientationlock", &dword_1003B0FA0))
  {
    state64 = 0;
    if ((byte_1003B0FA4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    byte_1003B0FA4 = 1;
    state64 = 0;
  }

  notify_get_state(dword_1003B0FA0, &state64);
  return state64 != 0;
}

- (int64_t)springBoardLockedInterfaceOrientation
{
  if (byte_1003B0FAC)
  {
    state64 = 1;
    goto LABEL_7;
  }

  if (!notify_register_check("com.apple.backboardd.orientation", &dword_1003B0FA8))
  {
    byte_1003B0FAC = 1;
    state64 = 1;
    goto LABEL_7;
  }

  result = 1;
  state64 = 1;
  if (byte_1003B0FAC)
  {
LABEL_7:
    notify_get_state(dword_1003B0FA8, &state64);
    return state64;
  }

  return result;
}

- (void)setIsOrientationLocked:(BOOL)locked
{
  if (self->_isOrientationLocked != locked)
  {
    lockedCopy = locked;
    v5 = sub_100004F84(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = lockedCopy;
      v16 = 2048;
      lockedOrientation = [(PHInCallOrientationMonitor *)self lockedOrientation];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "set orientation locked: %d to orientation: %ld", buf, 0x12u);
    }

    self->_isOrientationLocked = lockedCopy;
    v6 = +[NSNotificationCenter defaultCenter];
    if (lockedCopy)
    {
      v7 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self lockedOrientation]];
      v11 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [v6 postNotificationName:@"PHInCallOrientationEventNotification" object:0 userInfo:v8];
    }

    else
    {
      v12[0] = @"kPHInCallOrientationType";
      v7 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self currentOrientation]];
      v12[1] = @"kPHLastValidInCallOrientationType";
      v13[0] = v7;
      v8 = [NSNumber numberWithInteger:[(PHInCallOrientationMonitor *)self lastValidOrientation]];
      v13[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v6 postNotificationName:@"PHInCallOrientationEventNotification" object:0 userInfo:v9];
    }
  }
}

@end