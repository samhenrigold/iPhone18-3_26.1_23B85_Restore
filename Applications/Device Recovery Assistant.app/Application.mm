@interface Application
- (Application)init;
- (id)_getTopViewController;
- (void)_handleTriplePress;
- (void)_initRoutingRules;
- (void)_initializeAccessibilityFeatures;
- (void)_invalidatePowerAndVolumeUpLongPressTimer;
- (void)_invalidatePowerButtonLongPressTimer;
- (void)_invalidatePowerButtonPressTimer;
- (void)_powerAndVolumeUpLongPressFired:(id)fired;
- (void)_powerButtonLongPressFired:(id)fired;
- (void)_powerButtonPressCountTimerFired:(id)fired;
- (void)_resetButtonsStatesUIKitWorkaround;
- (void)_resetPowerButtonPressCount;
- (void)_showExitConfirmation;
- (void)_showMenuView;
- (void)_showNeRDBootConfirmation;
- (void)_showPowerDownView;
- (void)_startPowerAndVolumeUpLongPressTimerIfNeeded;
- (void)_startPowerButtonPressCountTimer;
- (void)handlePressEvent:(id)event phase:(int64_t)phase;
@end

@implementation Application

- (Application)init
{
  v7.receiver = self;
  v7.super_class = Application;
  v2 = [(Application *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100012608(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = "[Application init]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Principal class created", buf, 0xCu);
    }

    v3->_isPowerButtonDown = 0;
    v3->_isVolumeUpButtonDown = 0;
    v3->_isActionTriggeredForCurrentPressSequence = 0;
    v3->_powerButtonPressCount = 0;
    v3->_axSettingsImported = 0;
    [(Application *)v3 _initRoutingRules];
    v5 = sub_100012608(+[DisplayManager sharedInstance]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = "[Application init]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Assistant init complete", buf, 0xCu);
    }
  }

  return v3;
}

- (void)handlePressEvent:(id)event phase:(int64_t)phase
{
  if (![event _hidEvent])
  {
    v14 = sub_100012608(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 136446210;
      *&v42[4] = "[Application handlePressEvent:phase:]";
      v15 = "%{public}s: Physical HID button event does not exist";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v42, 0xCu);
    }

LABEL_13:

    return;
  }

  Type = IOHIDEventGetType();
  if (Type != 3)
  {
    v14 = sub_100012608(Type);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 136446210;
      *&v42[4] = "[Application handlePressEvent:phase:]";
      v15 = "%{public}s: HID Event is not of type Keyboard (i.e. isn't handled by us)";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v8 = IOHIDEventGetIntegerValue();
  v9 = v8;
  v10 = v8 | (IntegerValue << 16);
  v11 = sub_100012608(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 136447746;
    *&v42[4] = "[Application handlePressEvent:phase:]";
    *&v42[12] = 1024;
    *&v42[14] = IntegerValue;
    *&v42[18] = 1024;
    *&v42[20] = v9;
    v43 = 2048;
    phaseCopy = phase;
    v45 = 1024;
    v46 = v10;
    v47 = 1024;
    isPowerButtonDown = [(Application *)self isPowerButtonDown];
    v49 = 1024;
    isVolumeUpButtonDown = [(Application *)self isVolumeUpButtonDown];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [Keyboard HID Event Info] usagePage: 0x%x, usage: 0x%x, phase: %ld, hash: 0x%x. Currently, isPowerButtonDown:%d, isVolumeUpButtonDown:%d", v42, 0x34u);
  }

  if (v10 <= 786664)
  {
    if (v10 == 786480)
    {
      isPowerButtonDown2 = [(Application *)self isPowerButtonDown];
      if (phase)
      {
        if (isPowerButtonDown2)
        {
          [(Application *)self setIsPowerButtonDown:0];
          [(Application *)self _invalidatePowerButtonLongPressTimer];
          v23 = sub_100012608([(Application *)self _invalidatePowerAndVolumeUpLongPressTimer]);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 136446210;
            *&v42[4] = "[Application handlePressEvent:phase:]";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button up.", v42, 0xCu);
          }

          v24 = sub_100012608([(Application *)self setPowerButtonPressCount:[(Application *)self powerButtonPressCount]+ 1]);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            powerButtonPressCount = [(Application *)self powerButtonPressCount];
            *v42 = 136446466;
            *&v42[4] = "[Application handlePressEvent:phase:]";
            *&v42[12] = 2048;
            *&v42[14] = powerButtonPressCount;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button press count: %ld", v42, 0x16u);
          }

          powerButtonPressCount2 = [(Application *)self powerButtonPressCount];
          if (powerButtonPressCount2 >= 3)
          {
            v27 = sub_100012608(powerButtonPressCount2);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *v42 = 136446210;
              *&v42[4] = "[Application handlePressEvent:phase:]";
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: Triple press detected! Performing action.", v42, 0xCu);
            }

            [(Application *)self _handleTriplePress];
            [(Application *)self _resetPowerButtonPressCount];
          }

          isActionTriggeredForCurrentPressSequence = [(Application *)self isActionTriggeredForCurrentPressSequence];
          if ((isActionTriggeredForCurrentPressSequence & 1) == 0)
          {
            v29 = sub_100012608(isActionTriggeredForCurrentPressSequence);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v42 = 136446210;
              *&v42[4] = "[Application handlePressEvent:phase:]";
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button short press detected. Toggling display power.", v42, 0xCu);
            }

            v30 = +[DisplayManager sharedInstance];
            [v30 toggleDisplay];

            [(Application *)self setIsActionTriggeredForCurrentPressSequence:1];
          }
        }
      }

      else if ((isPowerButtonDown2 & 1) == 0)
      {
        [(Application *)self setIsPowerButtonDown:1];
        [(Application *)self setIsActionTriggeredForCurrentPressSequence:0];
        [(Application *)self _invalidatePowerButtonLongPressTimer];
        v38 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerButtonLongPressFired:" selector:0 userInfo:0 repeats:1.0];
        [(Application *)self setPowerButtonLongPressTimer:v38];

        v40 = sub_100012608(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 136446210;
          *&v42[4] = "[Application handlePressEvent:phase:]";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button down. Started power long press timer.", v42, 0xCu);
        }

        [(Application *)self _startPowerAndVolumeUpLongPressTimerIfNeeded];
        if (![(Application *)self powerButtonPressCount])
        {
          [(Application *)self _startPowerButtonPressCountTimer];
        }
      }

      goto LABEL_54;
    }

    v13 = 64;
LABEL_17:
    if (v10 != (v13 | 0xC0000))
    {
      v21 = sub_100012608(v12);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 136446466;
        *&v42[4] = "[Application handlePressEvent:phase:]";
        *&v42[12] = 2048;
        *&v42[14] = phase;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: HID Event phase %ld isn't caught/handled by us", v42, 0x16u);
      }

      goto LABEL_54;
    }

    if (!phase)
    {
      v18 = sub_100012608(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 136446210;
        *&v42[4] = "[Application handlePressEvent:phase:]";
        v20 = "%{public}s: Volume Down/Home button down.";
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    isActionTriggeredForCurrentPressSequence2 = [(Application *)self isActionTriggeredForCurrentPressSequence];
    v17 = isActionTriggeredForCurrentPressSequence2;
    v18 = sub_100012608(isActionTriggeredForCurrentPressSequence2);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *v42 = 136446210;
        *&v42[4] = "[Application handlePressEvent:phase:]";
        v20 = "%{public}s: Volume Down/Home button up. Skipping undim as another action was triggered.";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, v42, 0xCu);
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *v42 = 136446210;
      *&v42[4] = "[Application handlePressEvent:phase:]";
      v36 = "%{public}s: Volume Down/Home button up. Undimming display if needed.";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v36, v42, 0xCu);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  if (v10 != 786665)
  {
    v13 = 234;
    goto LABEL_17;
  }

  isVolumeUpButtonDown2 = [(Application *)self isVolumeUpButtonDown];
  if (!phase)
  {
    if ((isVolumeUpButtonDown2 & 1) == 0)
    {
      v41 = sub_100012608([(Application *)self setIsVolumeUpButtonDown:1]);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v42 = 136446210;
        *&v42[4] = "[Application handlePressEvent:phase:]";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s: Volume Up button down.", v42, 0xCu);
      }

      [(Application *)self _startPowerAndVolumeUpLongPressTimerIfNeeded];
    }

    goto LABEL_54;
  }

  if (isVolumeUpButtonDown2)
  {
    [(Application *)self setIsVolumeUpButtonDown:0];
    v32 = sub_100012608([(Application *)self _invalidatePowerAndVolumeUpLongPressTimer]);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 136446210;
      *&v42[4] = "[Application handlePressEvent:phase:]";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Volume Up button up.", v42, 0xCu);
    }

    isActionTriggeredForCurrentPressSequence3 = [(Application *)self isActionTriggeredForCurrentPressSequence];
    v34 = isActionTriggeredForCurrentPressSequence3;
    v18 = sub_100012608(isActionTriggeredForCurrentPressSequence3);
    v35 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v35)
      {
        *v42 = 136446210;
        *&v42[4] = "[Application handlePressEvent:phase:]";
        v20 = "%{public}s: Volume Up button up. Skipping undim as another action was triggered.";
        goto LABEL_48;
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v35)
    {
      *v42 = 136446210;
      *&v42[4] = "[Application handlePressEvent:phase:]";
      v36 = "%{public}s: Volume Up button short press detected. Undimming display if needed.";
      goto LABEL_51;
    }

LABEL_52:

    v18 = +[DisplayManager sharedInstance];
    [v18 undimDisplay];
    goto LABEL_53;
  }

LABEL_54:
  if (![(Application *)self isPowerButtonDown:*v42]&& ![(Application *)self isVolumeUpButtonDown])
  {
    [(Application *)self setIsActionTriggeredForCurrentPressSequence:0];
    if ([(Application *)self powerButtonPressCount]>= 1)
    {
      powerButtonPressTimer = [(Application *)self powerButtonPressTimer];

      if (!powerButtonPressTimer)
      {
        [(Application *)self _resetPowerButtonPressCount];
      }
    }
  }
}

- (void)_invalidatePowerButtonLongPressTimer
{
  powerButtonLongPressTimer = [(Application *)self powerButtonLongPressTimer];

  if (powerButtonLongPressTimer)
  {
    powerButtonLongPressTimer2 = [(Application *)self powerButtonLongPressTimer];
    [powerButtonLongPressTimer2 invalidate];

    v5 = sub_100012608([(Application *)self setPowerButtonLongPressTimer:0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[Application _invalidatePowerButtonLongPressTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalidated power long press timer.", &v6, 0xCu);
    }
  }
}

- (void)_invalidatePowerAndVolumeUpLongPressTimer
{
  powerAndVolumeUpLongPressTimer = [(Application *)self powerAndVolumeUpLongPressTimer];

  if (powerAndVolumeUpLongPressTimer)
  {
    powerAndVolumeUpLongPressTimer2 = [(Application *)self powerAndVolumeUpLongPressTimer];
    [powerAndVolumeUpLongPressTimer2 invalidate];

    v5 = sub_100012608([(Application *)self setPowerAndVolumeUpLongPressTimer:0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[Application _invalidatePowerAndVolumeUpLongPressTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalidated power+volume up long press timer.", &v6, 0xCu);
    }
  }
}

- (void)_invalidatePowerButtonPressTimer
{
  powerButtonPressTimer = [(Application *)self powerButtonPressTimer];

  if (powerButtonPressTimer)
  {
    powerButtonPressTimer2 = [(Application *)self powerButtonPressTimer];
    [powerButtonPressTimer2 invalidate];

    v5 = sub_100012608([(Application *)self setPowerButtonPressTimer:0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[Application _invalidatePowerButtonPressTimer]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Invalidated power button press count timer.", &v6, 0xCu);
    }
  }
}

- (void)_startPowerButtonPressCountTimer
{
  [(Application *)self _invalidatePowerButtonPressTimer];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerButtonPressCountTimerFired:" selector:0 userInfo:0 repeats:1.0];
  [(Application *)self setPowerButtonPressTimer:v3];

  v5 = sub_100012608(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[Application _startPowerButtonPressCountTimer]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Started power button press count timer (1 second timeout).", &v6, 0xCu);
  }
}

- (void)_powerButtonPressCountTimerFired:(id)fired
{
  v4 = sub_100012608(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[Application _powerButtonPressCountTimerFired:]";
    v7 = 2048;
    powerButtonPressCount = [(Application *)self powerButtonPressCount];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button press count timer expired. Resetting count from %ld to 0.", &v5, 0x16u);
  }

  [(Application *)self _resetPowerButtonPressCount];
  [(Application *)self setPowerButtonPressTimer:0];
}

- (void)_resetPowerButtonPressCount
{
  [(Application *)self setPowerButtonPressCount:0];
  v3 = sub_100012608([(Application *)self _invalidatePowerButtonPressTimer]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[Application _resetPowerButtonPressCount]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Reset power button press count.", &v4, 0xCu);
  }
}

- (void)_handleTriplePress
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[Application _handleTriplePress]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Handling triple press action.", buf, 0xCu);
  }

  axSettingsImported = [(Application *)self axSettingsImported];
  if (axSettingsImported)
  {
    v5 = _AXSVoiceOverTouchEnabled();
    v6 = v5;
    v7 = sub_100012608(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v8 = "enabled";
      }

      else
      {
        v8 = "disabled";
      }

      *buf = 136446466;
      v16 = "[Application _handleTriplePress]";
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Current VoiceOver state: %s. Toggling...", buf, 0x16u);
    }

    _AXSVoiceOverTouchSetUsageConfirmed();
    v9 = _AXSVoiceOverTouchSetEnabled();
    if (v6)
    {
      v10 = +[DisplayManager sharedInstance];
      [v10 undimDisplay];
    }

    v11 = sub_100012608(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v12 = "disabled";
      }

      else
      {
        v12 = "enabled";
      }

      *buf = 136446466;
      v16 = "[Application _handleTriplePress]";
      v17 = 2080;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: VoiceOver toggled to: %s", buf, 0x16u);
    }
  }

  else
  {
    v13 = sub_100012608(axSettingsImported);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[Application _handleTriplePress]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: First triple-press detected. Loading accessibility settings from daemon and enabling voiceover", buf, 0xCu);
    }

    v11 = +[DeviceRecoveryController sharedController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002BE0;
    v14[3] = &unk_1000286E0;
    v14[4] = self;
    [v11 loadAccessibilitySettingsToDefaultsWithCompletion:v14];
  }
}

- (void)_startPowerAndVolumeUpLongPressTimerIfNeeded
{
  [(Application *)self powerAndVolumeUpLongPressTimer];
  if (objc_claimAutoreleasedReturnValue() || ![(Application *)self isPowerButtonDown])
  {

    _objc_release_x1();
  }

  else if ([(Application *)self isVolumeUpButtonDown])
  {
    [(Application *)self _invalidatePowerButtonLongPressTimer];
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_powerAndVolumeUpLongPressFired:" selector:0 userInfo:0 repeats:1.0];
    [(Application *)self setPowerAndVolumeUpLongPressTimer:v3];

    v5 = sub_100012608(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v7 = "[Application _startPowerAndVolumeUpLongPressTimerIfNeeded]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Started power+volume up long press timer.", buf, 0xCu);
    }
  }
}

- (void)_powerButtonLongPressFired:(id)fired
{
  v4 = sub_100012608(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "[Application _powerButtonLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power long press timer fired.", &v14, 0xCu);
  }

  v6 = sub_100012608(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "[Application _powerButtonLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to undim display due to power long press timer.", &v14, 0xCu);
  }

  v7 = +[DisplayManager sharedInstance];
  [v7 undimDisplay];

  isPowerButtonDown = [(Application *)self isPowerButtonDown];
  if (!isPowerButtonDown || (isPowerButtonDown = [(Application *)self isVolumeUpButtonDown], (isPowerButtonDown & 1) != 0) || (isPowerButtonDown = [(Application *)self isActionTriggeredForCurrentPressSequence], (isPowerButtonDown & 1) != 0))
  {
    v9 = sub_100012608(isPowerButtonDown);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      isPowerButtonDown2 = [(Application *)self isPowerButtonDown];
      isVolumeUpButtonDown = [(Application *)self isVolumeUpButtonDown];
      isActionTriggeredForCurrentPressSequence = [(Application *)self isActionTriggeredForCurrentPressSequence];
      v14 = 136446978;
      v15 = "[Application _powerButtonLongPressFired:]";
      v16 = 1024;
      v17 = isPowerButtonDown2;
      v18 = 1024;
      v19 = isVolumeUpButtonDown;
      v20 = 1024;
      v21 = isActionTriggeredForCurrentPressSequence;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Power long press conditions not met (Power:%d, VolUp:%d, ActionTriggered:%d). Menu not shown.", &v14, 0x1Eu);
    }
  }

  else
  {
    v13 = sub_100012608(isPowerButtonDown);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[Application _powerButtonLongPressFired:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Power button long press conditions met. Showing menu view.", &v14, 0xCu);
    }

    [(Application *)self setIsActionTriggeredForCurrentPressSequence:1];
    [(Application *)self _showMenuView];
  }

  [(Application *)self setPowerButtonLongPressTimer:0];
}

- (void)_powerAndVolumeUpLongPressFired:(id)fired
{
  v4 = sub_100012608(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "[Application _powerAndVolumeUpLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power+Volume up long press timer fired.", &v14, 0xCu);
  }

  v6 = sub_100012608(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    v15 = "[Application _powerAndVolumeUpLongPressFired:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to undim display due to power+volUp long press timer.", &v14, 0xCu);
  }

  v7 = +[DisplayManager sharedInstance];
  [v7 undimDisplay];

  isPowerButtonDown = [(Application *)self isPowerButtonDown];
  if (isPowerButtonDown && (isPowerButtonDown = [(Application *)self isVolumeUpButtonDown], isPowerButtonDown) && (isPowerButtonDown = [(Application *)self isActionTriggeredForCurrentPressSequence], (isPowerButtonDown & 1) == 0))
  {
    v13 = sub_100012608(isPowerButtonDown);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = "[Application _powerAndVolumeUpLongPressFired:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Power + Volume Up long press conditions met. Showing power down view.", &v14, 0xCu);
    }

    [(Application *)self setIsActionTriggeredForCurrentPressSequence:1];
    [(Application *)self _invalidatePowerButtonLongPressTimer];
    [(Application *)self _showPowerDownView];
    [(Application *)self _resetButtonsStatesUIKitWorkaround];
  }

  else
  {
    v9 = sub_100012608(isPowerButtonDown);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      isPowerButtonDown2 = [(Application *)self isPowerButtonDown];
      isVolumeUpButtonDown = [(Application *)self isVolumeUpButtonDown];
      isActionTriggeredForCurrentPressSequence = [(Application *)self isActionTriggeredForCurrentPressSequence];
      v14 = 136446978;
      v15 = "[Application _powerAndVolumeUpLongPressFired:]";
      v16 = 1024;
      v17 = isPowerButtonDown2;
      v18 = 1024;
      v19 = isVolumeUpButtonDown;
      v20 = 1024;
      v21 = isActionTriggeredForCurrentPressSequence;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Power+VolUp long press conditions not met (Power:%d, VolUp:%d, ActionTriggered:%d). Power down view not shown.", &v14, 0x1Eu);
    }
  }

  [(Application *)self setPowerAndVolumeUpLongPressTimer:0];
}

- (void)_initRoutingRules
{
  v2 = +[BKSHIDEventDisplay builtinDisplay];
  v3 = +[BKSHIDEventDisplay nullDisplay];
  v4 = [NSSet setWithObjects:v2, v3, 0];

  v5 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultSystemPredicate];
  v6 = +[BKSMutableHIDEventDiscreteDispatchingPredicate defaultFocusPredicate];
  v7 = objc_opt_new();
  [v5 setDisplays:v4];
  v28 = v4;
  [v6 setDisplays:v4];
  v8 = [BKSHIDEventDescriptor descriptorWithEventType:42];
  v9 = [BKSHIDEventVendorDefinedDescriptor descriptorWithPage:65280 usage:102];
  v10 = [NSSet setWithObjects:v8, v9, 0];

  [v7 setSenderDescriptors:0];
  v25 = v10;
  [v7 setDescriptors:v10];
  v11 = +[BKSHIDEventDeferringEnvironment ui_cameraCaptureButtonEnvironment];
  v12 = [BKSHIDEventDispatchingTarget targetForDeferringEnvironment:v11];

  v13 = +[BKSHIDEventDispatchingTarget systemTarget];
  v27 = v5;
  v14 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v5 toTarget:v13];

  v15 = +[BKSHIDEventDispatchingTarget keyboardFocusTarget];
  v16 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v6 toTarget:v15];

  v17 = +[BKSHIDEventDispatchingTarget systemTarget];
  v18 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v7 toTarget:v17];

  v19 = [BKSHIDEventDiscreteDispatchingRule ruleForDispatchingDiscreteEventsMatchingPredicate:v7 toTarget:v12];
  v20 = +[BKSHIDEventDeliveryManager sharedInstance];
  v31[0] = v14;
  v31[1] = v16;
  v31[2] = v18;
  v31[3] = v19;
  v21 = [NSArray arrayWithObjects:v31 count:4];
  v22 = [v20 dispatchDiscreteEventsForReason:@"SB-Default" withRules:v21];
  [(Application *)self setDispatchingAssertion:v22];

  v24 = sub_100012608(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[Application _initRoutingRules]";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: HID Routing rules initialized.", buf, 0xCu);
  }
}

- (void)_initializeAccessibilityFeatures
{
  axSettingsImported = [(Application *)self axSettingsImported];
  if (axSettingsImported)
  {
    v4 = sub_100012608(axSettingsImported);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[Application _initializeAccessibilityFeatures]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Accessibility settings already imported. Skipping...", &v5, 0xCu);
    }
  }

  else
  {
    [(Application *)self setAxSettingsImported:1];
    if (_AXSVoiceOverTouchEnabled())
    {
      _AXSVoiceOverTouchSetEnabled();
    }

    if (_AXSAssistiveTouchEnabled())
    {
      _AXSAssistiveTouchSetEnabled();
    }

    if (_AXSAssistiveTouchScannerEnabled())
    {
      _AXSAssistiveTouchScannerSetEnabled();
    }

    if (_AXSCommandAndControlEnabled())
    {
      _AXSCommandAndControlSetEnabled();
    }

    if (_AXSInvertColorsEnabled())
    {

      __AXSInvertColorsSetEnabled(1);
    }
  }
}

- (void)_resetButtonsStatesUIKitWorkaround
{
  v3 = sub_100012608(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[Application _resetButtonsStatesUIKitWorkaround]";
    v6 = 2112;
    v7 = @"rdar://151218296";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Reset buttons' internal states after UIKit responder chain changes as a workaround for %@", &v4, 0x16u);
  }

  [(Application *)self setIsPowerButtonDown:0];
  [(Application *)self setIsVolumeUpButtonDown:0];
  [(Application *)self _resetPowerButtonPressCount];
}

- (void)_showPowerDownView
{
  v3 = +[DREAlertManager sharedInstance];
  alertVisible = [v3 alertVisible];

  v6 = sub_100012608(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (alertVisible)
  {
    if (v7)
    {
      *buf = 136446210;
      v10 = "[Application _showPowerDownView]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down view requested, but an alert is already presented.", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136446210;
      v10 = "[Application _showPowerDownView]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Showing power down view.", buf, 0xCu);
    }

    v6 = +[DREAlertManager sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000039D0;
    v8[3] = &unk_100028748;
    v8[4] = self;
    [v6 showPowerDownWithCompletion:0 response:v8];
  }
}

- (id)_getTopViewController
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![v8 activationState])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            keyWindow = [v8 keyWindow];
            if (keyWindow)
            {
              v10 = keyWindow;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  rootViewController = [v10 rootViewController];

  return rootViewController;
}

- (void)_showExitConfirmation
{
  _getTopViewController = [(Application *)self _getTopViewController];
  view = [_getTopViewController view];
  window = [view window];
  windowScene = [window windowScene];
  delegate = [windowScene delegate];

  [delegate promptToCancelAndRebootFromViewController:_getTopViewController];
}

- (void)_showNeRDBootConfirmation
{
  _getTopViewController = [(Application *)self _getTopViewController];
  view = [_getTopViewController view];
  window = [view window];
  windowScene = [window windowScene];
  delegate = [windowScene delegate];

  [delegate promptToBootToNeRDFromViewController:_getTopViewController];
}

- (void)_showMenuView
{
  v3 = +[DREAlertManager sharedInstance];
  alertVisible = [v3 alertVisible];

  v6 = sub_100012608(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (alertVisible)
  {
    if (v7)
    {
      *buf = 136446210;
      v11 = "[Application _showMenuView]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Menu view requested, but an alert is already presented.", buf, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136446210;
      v11 = "[Application _showMenuView]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Showing menu view.", buf, 0xCu);
    }

    v8 = +[DREAlertManager sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004098;
    v9[3] = &unk_100028748;
    v9[4] = self;
    [v8 showMenuSheetWithOptions:7 completion:0 response:v9];

    [(Application *)self _resetButtonsStatesUIKitWorkaround];
  }
}

@end