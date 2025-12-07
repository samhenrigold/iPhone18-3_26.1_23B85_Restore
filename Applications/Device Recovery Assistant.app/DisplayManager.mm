@interface DisplayManager
+ (id)sharedInstance;
- (DisplayManager)init;
- (id)configurationWithAttentionLostTimeout:(double)timeout;
- (void)_allowIdleSleep;
- (void)_disableTapToWake;
- (void)_enableTapToWake;
- (void)_initTapToWake;
- (void)_powerChangedOnService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument;
- (void)_preventIdleSleep;
- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds;
- (void)_screenBlanked;
- (void)_setHIDUILockedState:(BOOL)state;
- (void)_tapToWake:(id)wake;
- (void)_undimDisplay;
- (void)dealloc;
- (void)dimDisplay;
- (void)enableIdleSleep;
- (void)resetIdleTimerAndUndim:(BOOL)undim;
- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setPreventIdleSleep:(BOOL)sleep forReason:(id)reason;
- (void)toggleDisplay;
- (void)undimDisplay;
@end

@implementation DisplayManager

+ (id)sharedInstance
{
  if (qword_100032128 != -1)
  {
    sub_10001272C();
  }

  v3 = qword_100032120;

  return v3;
}

- (DisplayManager)init
{
  v15.receiver = self;
  v15.super_class = DisplayManager;
  v2 = [(DisplayManager *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100012608(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = "[DisplayManager init]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Registering idle timer notifications…", buf, 0xCu);
    }

    v5 = objc_alloc_init(NSMutableSet);
    idleTimerDisabledReasons = v3->_idleTimerDisabledReasons;
    v3->_idleTimerDisabledReasons = v5;

    v7 = [(DisplayManager *)v3 configurationWithAttentionLostTimeout:30.0];
    v8 = objc_alloc_init(AWAttentionAwarenessClient);
    attentionAwarenessClient = v3->_attentionAwarenessClient;
    v3->_attentionAwarenessClient = v8;

    [(AWAttentionAwarenessClient *)v3->_attentionAwarenessClient setConfiguration:v7 shouldReset:1];
    [(DisplayManager *)v3 _initTapToWake];
    objc_initWeak(buf, v3);
    v10 = v3->_attentionAwarenessClient;
    v11 = &_dispatch_main_q;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005058;
    v13[3] = &unk_100028820;
    objc_copyWeak(&v14, buf);
    [(AWAttentionAwarenessClient *)v10 setEventHandlerWithQueue:&_dispatch_main_q block:v13];

    BKSHIDServicesAmbientLightSensorEnableAutoBrightness();
    v3->_displayDim = 0;
    [(DisplayManager *)v3 _undimDisplay];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[DisplayManager dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Dealloc was called", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  p_rootDomainConnect = &self->_rootDomainConnect;
  if (self->_rootDomainConnect)
  {
    v7 = sub_100012608(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = "[DisplayManager dealloc]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Deregistering and closing connection", buf, 0xCu);
    }

    IODeregisterForSystemPower(&self->_rootDomainConnect);
    IOServiceClose(*p_rootDomainConnect);
    *p_rootDomainConnect = 0;
  }

  v8.receiver = self;
  v8.super_class = DisplayManager;
  [(DisplayManager *)&v8 dealloc];
}

- (id)configurationWithAttentionLostTimeout:(double)timeout
{
  v4 = objc_alloc_init(AWAttentionAwarenessConfiguration);
  [v4 setIdentifier:@"DRIdleTimer"];
  [v4 setEventMask:3967];
  [v4 setAttentionLostTimeout:timeout];

  return v4;
}

- (void)_setHIDUILockedState:(BOOL)state
{
  if (byte_100031918 != state)
  {
    stateCopy = state;
    v4 = sub_100012608(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "[DisplayManager _setHIDUILockedState:]";
      v7 = 1024;
      v8 = stateCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Setting UI locked state to %d", &v5, 0x12u);
    }

    BKSHIDServicesSetHIDUILockedState();
    byte_100031918 = stateCopy;
  }
}

- (void)_undimDisplay
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"DRScreenWillUndimNotification" object:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_screenBlanked" object:0];
  v4 = sub_100012608([(DisplayManager *)self _disableTapToWake]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[DisplayManager _undimDisplay]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Undimming display…", buf, 0xCu);
  }

  BKSDisplayServicesSetScreenBlanked();
  BKSHIDServicesSetBacklightFactorWithFadeDuration();
  [(DisplayManager *)self setDisplayDim:0];
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v11 = 0;
  v6 = [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v11];
  v7 = v11;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = sub_100012608(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100012740();
    }
  }

  [(DisplayManager *)self _preventIdleSleep];
  [(DisplayManager *)self _setHIDUILockedState:0];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"DRScreenDidUndimNotification" object:0];
}

- (void)undimDisplay
{
  isDisplayDim = [(DisplayManager *)self isDisplayDim];
  if (isDisplayDim)
  {
    v4 = sub_100012608(isDisplayDim);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[DisplayManager undimDisplay]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Display is off. Turning display on…", &v5, 0xCu);
    }

    [(DisplayManager *)self _undimDisplay];
  }
}

- (void)toggleDisplay
{
  isDisplayDim = [(DisplayManager *)self isDisplayDim];
  v4 = isDisplayDim;
  v5 = sub_100012608(isDisplayDim);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 136446210;
      v8 = "[DisplayManager toggleDisplay]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Toggling display. Display is off, undimming display…", &v7, 0xCu);
    }

    [(DisplayManager *)self undimDisplay];
  }

  else
  {
    if (v6)
    {
      v7 = 136446210;
      v8 = "[DisplayManager toggleDisplay]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Toggling display. Display is on, dimming display…", &v7, 0xCu);
    }

    [(DisplayManager *)self dimDisplay];
  }
}

- (void)dimDisplay
{
  if (![(DisplayManager *)self isDisplayDim])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"DRScreenWillDimNotification" object:0];

    v5 = sub_100012608(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v17 = "[DisplayManager dimDisplay]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Dimming display…", buf, 0xCu);
    }

    BKSHIDServicesSetBacklightFactorWithFadeDuration();
    [(DisplayManager *)self setDisplayDim:1];
    attentionAwarenessClient = self->_attentionAwarenessClient;
    v14 = 0;
    v7 = [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v14];
    v8 = v14;
    v10 = v8;
    if ((v7 & 1) == 0)
    {
      v11 = sub_100012608(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000127BC();
      }
    }

    LODWORD(v9) = 1.0;
    [(DisplayManager *)self _preventIdleSleepForNumberOfSeconds:v9];
    [(DisplayManager *)self _setHIDUILockedState:1];
    v15 = NSRunLoopCommonModes;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    [(DisplayManager *)self performSelector:"_screenBlanked" withObject:0 afterDelay:v12 inModes:0.25];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"DRScreenDidDimNotification" object:0];
  }
}

- (void)_screenBlanked
{
  BKSDisplayServicesSetScreenBlanked();

  [(DisplayManager *)self _enableTapToWake];
}

- (void)_allowIdleSleep
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DisplayManager _allowIdleSleep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Allowing idle sleep…", &v4, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(DisplayManager *)self setPreventIdleSleep:0 forReason:@"backlight"];
}

- (void)_preventIdleSleep
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DisplayManager _preventIdleSleep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Preventing idle sleep…", &v4, 0xCu);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_allowIdleSleep" object:0];
  [(DisplayManager *)self setPreventIdleSleep:1 forReason:@"backlight"];
}

- (void)_preventIdleSleepForNumberOfSeconds:(float)seconds
{
  isDisplayDim = [(DisplayManager *)self isDisplayDim];
  if (isDisplayDim)
  {
    v6 = sub_100012608(isDisplayDim);
    secondsCopy = seconds;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v11 = "[DisplayManager _preventIdleSleepForNumberOfSeconds:]";
      v12 = 2048;
      v13 = secondsCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Preventing idle sleep for %f seconds…", buf, 0x16u);
    }

    [(DisplayManager *)self _preventIdleSleep];
    v9 = NSRunLoopCommonModes;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [(DisplayManager *)self performSelector:"_allowIdleSleep" withObject:0 afterDelay:v8 inModes:secondsCopy];
  }
}

- (void)_powerChangedOnService:(unsigned int)service messageType:(unsigned int)type messageArgument:(void *)argument
{
  v8 = sub_100012608(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
    v19 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Received power notification %u", &v17, 0x12u);
  }

  HIDWORD(v11) = type + 536870288;
  LODWORD(v11) = type + 536870288;
  v10 = v11 >> 4;
  if (v10 > 1)
  {
    switch(v10)
    {
      case 2:
        v12 = sub_100012608(v9);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

          return;
        }

        v17 = 136446210;
        v18 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
        v13 = "%{public}s: [DisplayManager] Received kIOMessageSystemWillNotSleep";
        break;
      case 9:
        v16 = sub_100012608(v9);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136446210;
          v18 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Received kIOMessageSystemHasPoweredOn", &v17, 0xCu);
        }

        v12 = +[NSNotificationCenter defaultCenter];
        [v12 postNotificationName:@"DRDidWakeFromSleepNotification" object:0 userInfo:0];
        goto LABEL_19;
      case 11:
        v12 = sub_100012608(v9);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v17 = 136446210;
        v18 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
        v13 = "%{public}s: [DisplayManager] Received kIOMessageSystemWillPowerOn";
        break;
      default:
        return;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
    goto LABEL_19;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      return;
    }

    v14 = sub_100012608(v9);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v17 = 136446210;
    v18 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
    v15 = "%{public}s: [DisplayManager] Received kIOMessageSystemWillSleep";
    goto LABEL_22;
  }

  v14 = sub_100012608(v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446210;
    v18 = "[DisplayManager _powerChangedOnService:messageType:messageArgument:]";
    v15 = "%{public}s: [DisplayManager] Received kIOMessageCanSystemSleep";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v17, 0xCu);
  }

LABEL_23:

  IOAllowPowerChange(self->_rootDomainConnect, argument);
}

- (void)enableIdleSleep
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DisplayManager enableIdleSleep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Enabling idle sleep…", buf, 0xCu);
  }

  notifier = 0;
  *buf = 0;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IOPower:/IOPowerConnection/IOPMrootDomain");
  v5 = IORegisterForSystemPower(self, buf, sub_10000618C, &notifier);
  self->_rootDomainConnect = v5;
  if (v5)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(*buf);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  }

  else
  {
    v8 = sub_100012608(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100012838();
    }
  }

  valuePtr = 1;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  IORegistryEntrySetCFProperty(v4, @"System Boot Complete", kCFBooleanTrue);
  IORegistryEntrySetCFProperty(v4, @"System Idle Seconds", v9);
  CFRelease(v9);
  AssertionID = 0;
  IOPMAssertionCreateWithName(@"EnableIdleSleep", 0xFFu, @"com.apple.DeviceRecovery.enableidlesleep", &AssertionID);
  [(DisplayManager *)self setPreventIdleSleep:1 forReason:0];
  [(DisplayManager *)self setFinishedBoot:1];
}

- (void)setPreventIdleSleep:(BOOL)sleep forReason:(id)reason
{
  sleepCopy = sleep;
  reasonCopy = reason;
  v7 = sub_100012608(reasonCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446722;
    v16 = "[DisplayManager setPreventIdleSleep:forReason:]";
    v17 = 1024;
    v18 = sleepCopy;
    v19 = 2112;
    v20 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Preventing idle sleep (%d) for reason: %@", &v15, 0x1Cu);
  }

  finishedBoot = [(DisplayManager *)self finishedBoot];
  if (reasonCopy)
  {
    v9 = qword_100032138;
    if (sleepCopy)
    {
      if (!qword_100032138)
      {
        v10 = [[NSMutableSet alloc] initWithCapacity:2];
        v11 = qword_100032138;
        qword_100032138 = v10;

        v9 = qword_100032138;
      }

      finishedBoot = [v9 addObject:reasonCopy];
      goto LABEL_12;
    }

    [qword_100032138 removeObject:reasonCopy];
  }

  else if (sleepCopy)
  {
    goto LABEL_12;
  }

  finishedBoot = [qword_100032138 count];
  if (!finishedBoot)
  {
    if (byte_100032140 != 1)
    {
      goto LABEL_17;
    }

    v14 = sub_100012608(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "[DisplayManager setPreventIdleSleep:forReason:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Releasing kIOPMAssertionTypeNoIdleSleep assertion", &v15, 0xCu);
    }

    IOPMAssertionRelease(dword_100032130);
    v13 = 0;
    goto LABEL_16;
  }

LABEL_12:
  if ((byte_100032140 & 1) == 0)
  {
    v12 = sub_100012608(finishedBoot);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136446210;
      v16 = "[DisplayManager setPreventIdleSleep:forReason:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Taking out kIOPMAssertionTypeNoIdleSleep assertion", &v15, 0xCu);
    }

    v13 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.DeviceRecovery.idle", &dword_100032130) == 0;
LABEL_16:
    byte_100032140 = v13;
  }

LABEL_17:
}

- (void)resetIdleTimerAndUndim:(BOOL)undim
{
  undimCopy = undim;
  v5 = sub_100012608(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[DisplayManager resetIdleTimerAndUndim:]";
    v18 = 1024;
    LODWORD(v19) = undimCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Resetting idle timer and undim %d", buf, 0x12u);
  }

  if (undimCopy)
  {
    [(DisplayManager *)self undimDisplay];
  }

  if (![(DisplayManager *)self isDisplayDim])
  {
    idleTimerDisabledReasons = [(DisplayManager *)self idleTimerDisabledReasons];
    if ([idleTimerDisabledReasons count])
    {
      v7 = 1.79769313e308;
    }

    else
    {
      v7 = 30.0;
    }

    v8 = [(DisplayManager *)self configurationWithAttentionLostTimeout:v7];
    v9 = sub_100012608(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[DisplayManager resetIdleTimerAndUndim:]";
      v18 = 2048;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Setting a new attention awareness configuration with timeout: %f", buf, 0x16u);
    }

    attentionAwarenessClient = [(DisplayManager *)self attentionAwarenessClient];
    v15 = 0;
    v11 = [attentionAwarenessClient setConfiguration:v8 shouldReset:1 error:&v15];
    v12 = v15;

    if ((v11 & 1) == 0)
    {
      v14 = sub_100012608(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000128B8();
      }
    }
  }
}

- (void)setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v7 = sub_100012608(reasonCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446466;
    v17 = "[DisplayManager setIdleTimerDisabled:forReason:]";
    v18 = 1024;
    LODWORD(v19) = disabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Attempting to set idle timer disabled to %d", &v16, 0x12u);
  }

  if (reasonCopy)
  {
    idleTimerDisabledReasons = [(DisplayManager *)self idleTimerDisabledReasons];
    v10 = [idleTimerDisabledReasons containsObject:reasonCopy];

    if (disabledCopy)
    {
      if ((v10 & 1) == 0)
      {
        v12 = sub_100012608(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136446466;
          v17 = "[DisplayManager setIdleTimerDisabled:forReason:]";
          v18 = 2112;
          v19 = reasonCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Adding idle timer disabled reason: %@", &v16, 0x16u);
        }

        idleTimerDisabledReasons2 = [(DisplayManager *)self idleTimerDisabledReasons];
        [idleTimerDisabledReasons2 addObject:reasonCopy];
LABEL_16:

        [(DisplayManager *)self resetIdleTimerAndUndim:1];
      }
    }

    else if (v10)
    {
      v15 = sub_100012608(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446466;
        v17 = "[DisplayManager setIdleTimerDisabled:forReason:]";
        v18 = 2112;
        v19 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Removing idle timer disabled reason: %@", &v16, 0x16u);
      }

      idleTimerDisabledReasons2 = [(DisplayManager *)self idleTimerDisabledReasons];
      [idleTimerDisabledReasons2 removeObject:reasonCopy];
      goto LABEL_16;
    }
  }

  else
  {
    v14 = sub_100012608(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[DisplayManager setIdleTimerDisabled:forReason:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Ignoring request since idle timer disabled reason was not specified…", &v16, 0xCu);
    }
  }
}

- (void)_initTapToWake
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446210;
    v17 = "[DisplayManager _initTapToWake]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Initializing tap to wake", &v16, 0xCu);
  }

  v4 = MGGetBoolAnswer();
  v5 = 1;
  if (!v4)
  {
    v5 = 2;
  }

  self->_tapToWakeSupported = v5;
  if (v4)
  {
    v6 = +[_UISystemGestureManager sharedInstance];
    v7 = +[UIScreen mainScreen];
    v8 = [[SBFTapToWakeGestureRecognizer alloc] initWithTarget:self action:"_tapToWake:"];
    tapToWakeGestureRecognizer = self->_tapToWakeGestureRecognizer;
    self->_tapToWakeGestureRecognizer = v8;

    [(SBFTapToWakeGestureRecognizer *)self->_tapToWakeGestureRecognizer setEnabled:0];
    v10 = self->_tapToWakeGestureRecognizer;
    displayIdentity = [v7 displayIdentity];
    [v6 addGestureRecognizer:v10 toDisplayWithIdentity:displayIdentity];

    v13 = sub_100012608(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[DisplayManager _initTapToWake]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to wake is supported and has been set up.", &v16, 0xCu);
    }

    v15 = sub_100012608(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100012934();
    }
  }

  else
  {
    v6 = sub_100012608(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "[DisplayManager _initTapToWake]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Hardware does not support tap to wake.", &v16, 0xCu);
    }
  }
}

- (void)_tapToWake:(id)wake
{
  if ([wake state] == 3)
  {
    v4 = sub_100012608(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[DisplayManager _tapToWake:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to wake performed!", &v5, 0xCu);
    }

    if ([(DisplayManager *)self isDisplayDim])
    {
      [(DisplayManager *)self resetIdleTimerAndUndim:1];
    }
  }
}

- (void)_enableTapToWake
{
  if ([(DisplayManager *)self tapToWakeSupported]== 1)
  {
    dispatch_async(&_dispatch_main_q, &stru_100028840);
    tapToWakeGestureRecognizer = [(DisplayManager *)self tapToWakeGestureRecognizer];
    [tapToWakeGestureRecognizer setEnabled:1];

    v5 = sub_100012608(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[DisplayManager _enableTapToWake]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to Wake enabled", &v6, 0xCu);
    }
  }
}

- (void)_disableTapToWake
{
  if ([(DisplayManager *)self tapToWakeSupported]== 1)
  {
    tapToWakeGestureRecognizer = [(DisplayManager *)self tapToWakeGestureRecognizer];
    [tapToWakeGestureRecognizer setEnabled:0];

    dispatch_async(&_dispatch_main_q, &stru_100028860);
    v5 = sub_100012608(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[DisplayManager _disableTapToWake]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Tap to Wake disabled", &v6, 0xCu);
    }
  }
}

@end