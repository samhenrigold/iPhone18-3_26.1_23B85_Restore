@interface PasswordSharingViewControllerProxy
- (unint64_t)supportedInterfaceOrientations;
- (void)_deviceDiscoveryEnsureStarted;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_handleDeviceNoLongerNeedsPassword;
- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info;
- (void)_sessionStart;
- (void)activateTouchDelayTimer;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss;
- (void)ensureStoppedWithDismiss:(BOOL)dismiss reason:(int)reason;
- (void)handleButtonActions:(id)actions;
- (void)invalidateTouchDelayTimer;
- (void)showDoneUI:(int)i;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PasswordSharingViewControllerProxy

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(PasswordSharingViewControllerProxy *)self ensureStoppedWithDismiss:1 reason:4];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  if (dword_1001BE938 > 10)
  {
    goto LABEL_48;
  }

  v12 = infoCopy;
  if (dword_1001BE938 == -1)
  {
    infoCopy = _LogCategory_Initialize();
    v7 = v12;
    if (!infoCopy)
    {
      goto LABEL_48;
    }
  }

  if (progress <= 49)
  {
    if (progress > 30)
    {
      if (progress <= 32)
      {
        if (progress == 31)
        {
          v8 = "SessionStarted";
        }

        else
        {
          v8 = "SessionEnded";
        }

        goto LABEL_45;
      }

      if (progress == 33)
      {
        v8 = "SessionSecured";
        goto LABEL_45;
      }

      if (progress == 40)
      {
        v8 = "PreAuthStart";
        goto LABEL_45;
      }
    }

    else if (progress > 19)
    {
      if (progress == 20)
      {
        v8 = "Final";
        goto LABEL_45;
      }

      if (progress == 30)
      {
        v8 = "Error";
        goto LABEL_45;
      }
    }

    else
    {
      if (!progress)
      {
        v8 = "Invalid";
        goto LABEL_45;
      }

      if (progress == 10)
      {
        v8 = "Start";
        goto LABEL_45;
      }
    }

LABEL_44:
    v8 = "?";
    goto LABEL_45;
  }

  if (progress <= 81)
  {
    if (progress > 69)
    {
      if (progress == 70)
      {
        v8 = "SecurityFinished";
        goto LABEL_45;
      }

      if (progress == 80)
      {
        v8 = "PasswordSending";
        goto LABEL_45;
      }
    }

    else
    {
      if (progress == 50)
      {
        v8 = "PreAuthFinish";
        goto LABEL_45;
      }

      if (progress == 60)
      {
        v8 = "SecurityStart";
        goto LABEL_45;
      }
    }

    goto LABEL_44;
  }

  if (progress <= 83)
  {
    if (progress == 82)
    {
      v8 = "PasswordSent";
    }

    else
    {
      v8 = "PasswordReceived";
    }

    goto LABEL_45;
  }

  if (progress == 84)
  {
    v8 = "PasswordAccepted";
    goto LABEL_45;
  }

  if (progress == 86)
  {
    v8 = "PasswordDeclined";
    goto LABEL_45;
  }

  if (progress != 100)
  {
    goto LABEL_44;
  }

  v8 = "Finished";
LABEL_45:
  v9 = &stru_100195CA8;
  if (v7)
  {
    v9 = v7;
  }

  infoCopy = LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _sessionHandleProgress:info:]", 10, "PasswordSession progress: %s, %@", v8, v9);
  v7 = v12;
LABEL_48:
  if (progress == 82)
  {
    self->_passwordSent = 1;
  }

  else if (progress == 20)
  {
    v13 = v7;
    CFErrorGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    self->_shareState = v11;
    [(PasswordSharingViewControllerProxy *)self showDoneUI:NSErrorToOSStatus()];

    v7 = v13;
  }

  _objc_release_x1(infoCopy, v7);
}

- (void)_sessionStart
{
  v3 = objc_alloc_init(SFDevice);
  [v3 setContactIdentifier:self->_peerContactID];
  [v3 setIdentifier:self->_deviceIdentifier];
  [v3 setRequestSSID:self->_requestSSID];
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _sessionStart]", 30, "Start setup with %@\n", v3);
  }

  v16 = 0;
  self->_shareState = 1;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (v16 && dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _sessionStart]", 30, "No email hash?\n");
  }

  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v16 && dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _sessionStart]", 30, "No phone hash?\n");
  }

  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  if (v16 && dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _sessionStart]", 30, "No device name?\n");
  }

  v7 = +[NSDate date];
  clock = self->_clock;
  self->_clock = v7;

  [(SFPasswordSharingSession *)self->_passwordSession invalidate];
  v9 = objc_alloc_init(SFPasswordSharingSession);
  passwordSession = self->_passwordSession;
  self->_passwordSession = v9;

  [(SFPasswordSharingSession *)self->_passwordSession setDeviceName:v6];
  [(SFPasswordSharingSession *)self->_passwordSession setHashedEmail:v4];
  [(SFPasswordSharingSession *)self->_passwordSession setHashedPhone:v5];
  [(SFPasswordSharingSession *)self->_passwordSession setPeerDevice:v3];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000FBF54;
  v15[3] = &unk_1001959F8;
  v15[4] = self;
  [(SFPasswordSharingSession *)self->_passwordSession setProgressHandler:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FBF64;
  v14[3] = &unk_100195A48;
  v14[4] = self;
  [(SFPasswordSharingSession *)self->_passwordSession setPromptForPINHandler:v14];
  if (self->_hotspot)
  {
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v12 = v11;
    if (v16 || !v11)
    {
      if (dword_1001BE938 <= 60 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _sessionStart]", 60, "### No PSK for hotspot?");
      }
    }

    else
    {
      [(SFPasswordSharingSession *)self->_passwordSession setHotspotPSK:v11];
    }
  }

  [(SFPasswordSharingSession *)self->_passwordSession activate];
  _remoteViewControllerProxy = [(PasswordSharingViewControllerProxy *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.WiFiPasswordSharing"];
}

- (void)_handleDeviceNoLongerNeedsPassword
{
  shareState = self->_shareState;
  if (shareState != 1)
  {
    if (!shareState)
    {

      [(PasswordSharingViewControllerProxy *)self ensureStoppedWithDismiss:1 reason:22];
    }

    return;
  }

  if (self->_passwordSent)
  {
    self->_missingAck = 1;
LABEL_10:
    if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _handleDeviceNoLongerNeedsPassword]", 30, "### Peer no longer needs password before final ack received\n");
    }

    goto LABEL_14;
  }

  if (self->_missingAck)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (self->_missingAck)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4294896130;
  }

  [(PasswordSharingViewControllerProxy *)self showDoneUI:v4];
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  bleDevice = [lostCopy bleDevice];
  identifier = [lostCopy identifier];

  if (self->_deviceDiscovery)
  {
    v6 = identifier == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && [identifier isEqual:self->_deviceIdentifier])
  {
    if (dword_1001BE938 <= 10 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _deviceLost:]", 10, "Lost %@\n", bleDevice);
    }

    [(PasswordSharingViewControllerProxy *)self _handleDeviceNoLongerNeedsPassword];
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  bleDevice = [foundCopy bleDevice];
  identifier = [foundCopy identifier];
  v6 = identifier;
  if (self->_deviceDiscovery)
  {
    v7 = identifier == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && [identifier isEqual:self->_deviceIdentifier])
  {
    v8 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      if (dword_1001BE938 <= 50 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _deviceFound:]", 50, "Not connecting to mock device.");
      }
    }

    else
    {
      if (dword_1001BE938 <= 10 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _deviceFound:]", 10, "Found %@\n", bleDevice);
      }

      if (![foundCopy needsSetup] || objc_msgSend(foundCopy, "deviceActionType") != 8)
      {
        if (dword_1001BE938 <= 10 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy _deviceFound:]", 10, "Device doesn't need WiFi password anymore\n");
        }

        [(PasswordSharingViewControllerProxy *)self _handleDeviceNoLongerNeedsPassword];
      }
    }
  }
}

- (void)_deviceDiscoveryEnsureStarted
{
  if (!self->_deviceDiscovery)
  {
    v3 = objc_alloc_init(SFDeviceDiscovery);
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = v3;

    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:0xFFFFFFFFLL];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:16];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:40];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FC5C0;
    v9[3] = &unk_100195190;
    v9[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FC5CC;
    v8[3] = &unk_100195190;
    v8[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000FC5D8;
    v7[3] = &unk_1001951B8;
    v7[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v7];
    v5 = self->_deviceDiscovery;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FC5E4;
    v6[3] = &unk_100195940;
    v6[4] = self;
    [(SFDeviceDiscovery *)v5 activateWithCompletion:v6];
  }
}

- (void)showDoneUI:(int)i
{
  v3 = *&i;
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy showDoneUI:]", 30, "Show done UI: %#m\n", v3);
  }

  [(SFPasswordSharingSession *)self->_passwordSession invalidate];
  passwordSession = self->_passwordSession;
  self->_passwordSession = 0;

  [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = 0;

  if (!self->_vcDone)
  {
    v7 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"doneUI"];
    vcDone = self->_vcDone;
    self->_vcDone = v7;

    [(SVSBaseViewController *)self->_vcDone setMainController:self];
    [(PasswordSharingDoneViewController *)self->_vcDone setUserInfo:self->super._userInfo];
  }

  [(NSDate *)self->_clock timeIntervalSinceNow];
  v10 = v9;
  [(NSDate *)self->_clock timeIntervalSinceNow];
  if (v10 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = CFPrefs_GetInt64() != 0;
  v14 = -1.0;
  if (v13)
  {
    v14 = v12;
  }

  [(PasswordSharingDoneViewController *)self->_vcDone setDuration:v14];
  [(PasswordSharingDoneViewController *)self->_vcDone setStatus:v3];
  sub_100127D6C(self->_vcNav, self->_vcDone, 0);
  _remoteViewControllerProxy = [(PasswordSharingViewControllerProxy *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.WiFiPasswordSharing"];

  v29[0] = @"_cat";
  v29[1] = @"_op";
  v30[0] = @"PasswordSharing";
  v30[1] = @"Done";
  v29[2] = @"durationMS";
  [NSNumber numberWithInteger:(v12 * 1000.0)];
  v17 = v16 = v3;
  v30[2] = v17;
  v29[3] = @"errorCode";
  v18 = [NSNumber numberWithInt:v16];
  v30[3] = v18;
  v29[4] = @"isHotspot";
  v19 = [NSNumber numberWithBool:self->_hotspot];
  v30[4] = v19;
  v29[5] = @"missingAck";
  v20 = [NSNumber numberWithBool:self->_missingAck];
  v30[5] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];
  SFDashboardLogJSON();

  v27[0] = @"durationMS";
  v22 = [NSNumber numberWithInteger:(v12 * 1000.0)];
  v28[0] = v22;
  v27[1] = @"errorCode";
  v23 = [NSNumber numberWithInt:v16];
  v28[1] = v23;
  v27[2] = @"isHotspot";
  v24 = [NSNumber numberWithBool:self->_hotspot];
  v28[2] = v24;
  v27[3] = @"missingAck";
  v25 = [NSNumber numberWithBool:self->_missingAck];
  v28[3] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
  SFMetricsLog();
}

- (void)ensureStoppedWithDismiss:(BOOL)dismiss reason:(int)reason
{
  v4 = *&reason;
  dismissCopy = dismiss;
  if (dword_1001BE938 <= 50 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy ensureStoppedWithDismiss:reason:]", 50, "Ensuring stopped.");
  }

  v19[0] = @"scanRate";
  scanRate = [(SFDeviceDiscovery *)self->_deviceDiscovery scanRate];
  if (scanRate > 9)
  {
    if (scanRate <= 29)
    {
      if (scanRate == 10)
      {
        v8 = "Background";
        goto LABEL_29;
      }

      if (scanRate == 20)
      {
        v8 = "Normal";
        goto LABEL_29;
      }
    }

    else
    {
      switch(scanRate)
      {
        case 30:
          v8 = "HighNormal";
          goto LABEL_29;
        case 40:
          v8 = "High";
          goto LABEL_29;
        case 50:
          v8 = "Aggressive";
          goto LABEL_29;
      }
    }
  }

  else if (scanRate <= 1)
  {
    if (!scanRate)
    {
      v8 = "Invalid";
      goto LABEL_29;
    }

    if (scanRate == 1)
    {
      v8 = "BackgroundOld";
      goto LABEL_29;
    }
  }

  else
  {
    switch(scanRate)
    {
      case 2:
        v8 = "NormalOld";
        goto LABEL_29;
      case 3:
        v8 = "HighOld";
        goto LABEL_29;
      case 4:
        v8 = "AggressiveOld";
        goto LABEL_29;
    }
  }

  v8 = "?";
LABEL_29:
  v9 = [NSString stringWithUTF8String:v8];
  v10 = v9;
  v11 = @"?";
  if (v9)
  {
    v11 = v9;
  }

  v19[1] = @"state";
  v20[0] = v11;
  v20[1] = @"Stop";
  v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  SFPowerLogEvent();

  [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = 0;

  [(SFPasswordSharingSession *)self->_passwordSession invalidate];
  passwordSession = self->_passwordSession;
  self->_passwordSession = 0;

  [(PasswordSharingViewControllerProxy *)self invalidateTouchDelayTimer];
  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  if (dismissCopy)
  {
    [(PasswordSharingViewControllerProxy *)self dismiss:v4];
  }
}

- (void)dismiss:(int)dismiss
{
  if (!self->_dismissed)
  {
    v3 = *&dismiss;
    self->_dismissed = 1;
    if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy dismiss:]", 30, "Dismissing UI. Reason: %d", v3);
    }

    [(PasswordSharingViewControllerProxy *)self _remoteViewControllerProxy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FD1A4;
    v5 = v14[3] = &unk_100195AC0;
    v15 = v5;
    [(PasswordSharingViewControllerProxy *)self dismissViewControllerAnimated:v3 != 19 completion:v14];
    [(NSDate *)self->_visibleClock timeIntervalSinceNow];
    v7 = v6;
    [(NSDate *)self->_visibleClock timeIntervalSinceNow];
    if (v7 < 0.0)
    {
      v8 = -v8;
    }

    v9 = (v8 * 1000.0);
    v16[0] = @"actionType";
    v10 = [NSNumber numberWithInt:v3];
    v17[0] = v10;
    v16[1] = @"shareState";
    v11 = [NSNumber numberWithInt:self->_shareState];
    v17[1] = v11;
    v16[2] = @"durationMS";
    v12 = [NSNumber numberWithInteger:v9];
    v17[2] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    SFMetricsLog();
  }
}

- (void)invalidateTouchDelayTimer
{
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy invalidateTouchDelayTimer]", 30, "Touch delay timer invalidate");
  }

  touchDelayTimer = self->_touchDelayTimer;
  if (touchDelayTimer)
  {
    v4 = touchDelayTimer;
    dispatch_source_cancel(v4);
    v5 = self->_touchDelayTimer;
    self->_touchDelayTimer = 0;

    if (!self->_touchDelayTimer || dword_1001BE938 > 60 || dword_1001BE938 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v6 = "Touch delay timer didn't invalidate?\n";
    v7 = 60;
  }

  else
  {
    if (dword_1001BE938 > 30 || dword_1001BE938 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v6 = "No touch delay timer to invalidate\n";
    v7 = 30;
  }

  LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy invalidateTouchDelayTimer]", v7, v6);
}

- (void)activateTouchDelayTimer
{
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy activateTouchDelayTimer]", 30, "Touch delay timer activate");
  }

  if (!self->_touchDelayActive)
  {
    if (dword_1001BE938 > 30 || dword_1001BE938 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v8 = "Touch delay already active\n";
    v9 = 30;
    goto LABEL_20;
  }

  if (self->_touchDelayTimer)
  {
    if (dword_1001BE938 > 60 || dword_1001BE938 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v8 = "Touch delay timer already active\n";
    goto LABEL_19;
  }

  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  touchDelayTimer = self->_touchDelayTimer;
  self->_touchDelayTimer = v3;

  v5 = self->_touchDelayTimer;
  if (v5)
  {
    v6 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
    v7 = self->_touchDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000FD560;
    handler[3] = &unk_100195AC0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_touchDelayTimer);
    return;
  }

  if (dword_1001BE938 <= 60 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    v8 = "Failed to create touch delay timer\n";
LABEL_19:
    v9 = 60;
LABEL_20:

    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy activateTouchDelayTimer]", v9, v8);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  _remoteViewControllerProxy = [(PasswordSharingViewControllerProxy *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.WiFiPasswordSharing"];

  if (!self->_dismissed)
  {
    if (dword_1001BE938 <= 50 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy viewDidDisappear:]", 50, "### Dismising from view did disappear.");
    }

    [(PasswordSharingViewControllerProxy *)self dismiss:21];
  }

  [(PasswordSharingViewControllerProxy *)self ensureStoppedWithDismiss:0];
  v6.receiver = self;
  v6.super_class = PasswordSharingViewControllerProxy;
  [(SVSBaseMainController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = PasswordSharingViewControllerProxy;
  [(PasswordSharingViewControllerProxy *)&v15 viewDidAppear:appear];
  v4 = +[NSDate date];
  visibleClock = self->_visibleClock;
  self->_visibleClock = v4;

  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy viewDidAppear:]", 30, "View did appear");
  }

  v6 = [UIStoryboard storyboardWithName:@"PasswordSharing" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v6;

  instantiateInitialViewController = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = instantiateInitialViewController;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  v10 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v10 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  viewControllers = [(SVSCommonNavController *)self->_vcNav viewControllers];
  firstObject = [viewControllers firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = firstObject;

  [(PasswordSharingStartViewController *)self->_vcStart setDisplayNameIsDevice:self->_displayNameIsDevice];
  [(PasswordSharingStartViewController *)self->_vcStart setPeerDisplayName:self->_peerDisplayName];
  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(PasswordSharingStartViewController *)self->_vcStart setUserInfo:self->super._userInfo];
  [(PasswordSharingViewControllerProxy *)self presentViewController:self->_vcNav animated:1 completion:0];
  [(PasswordSharingViewControllerProxy *)self activateTouchDelayTimer];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6 = dispatch_queue_create("clientQueue", 0);
  v7 = dispatch_semaphore_create(0);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000FDDB0;
  v38 = sub_1000FDDC0;
  v39 = 0;
  v33 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v28.receiver = self;
  v28.super_class = PasswordSharingViewControllerProxy;
  [(PasswordSharingViewControllerProxy *)&v28 viewWillAppear:appearCopy];
  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy viewWillAppear:]", 30, "View will appear");
  }

  deviceIdentifier = 16;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  peerContactID = self->_peerContactID;
  self->_peerContactID = v9;

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  v12 = v33;
  if (!v33)
  {
    v17 = [[NSUUID alloc] initWithUUIDString:v11];
    deviceIdentifier = self->_deviceIdentifier;
    self->_deviceIdentifier = v17;
    goto LABEL_14;
  }

  if (dword_1001BE938 <= 60)
  {
    if (dword_1001BE938 != -1)
    {
      goto LABEL_8;
    }

    if (!_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    v12 = v33;
    if (v33)
    {
LABEL_8:
      v40 = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithUTF8String:DebugGetErrorString()];
      deviceIdentifier = v13;
      v14 = @"?";
      if (v13)
      {
        v14 = v13;
      }

      v41 = v14;
      v3 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v12 userInfo:v3];
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 1;
    }

    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy viewWillAppear:]", 60, "### Error acquiring device identifier: %@", v15);
    if ((v16 & 1) == 0)
    {

LABEL_14:
    }
  }

LABEL_15:
  v18 = objc_alloc_init(SFClient);
  [v18 setDispatchQueue:v6];
  v19 = self->_peerContactID;
  v20 = self->_deviceIdentifier;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000FDDC8;
  v24[3] = &unk_100194F38;
  v26 = &v34;
  v27 = &v29;
  v21 = v7;
  v25 = v21;
  [v18 displayStringForContactIdentifier:v19 deviceIdentifier:v20 completion:v24];

  v22 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v21, v22);
  [v18 invalidate];
  if (!v35[5] && dword_1001BE938 <= 60 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy viewWillAppear:]", 60, "### No display name?\n");
  }

  objc_storeStrong(&self->_peerDisplayName, v35[5]);
  v23 = *(v30 + 24);
  if (self->_testMode == 6)
  {
    v23 = 1;
  }

  self->_displayNameIsDevice = v23;
  [(PasswordSharingViewControllerProxy *)self _deviceDiscoveryEnsureStarted];
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v34, 8);
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(PasswordSharingViewControllerProxy *)self view];
  window = [view window];

  if (!window)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BE938 <= 30 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy configureWithContext:completion:]", 30, "Main configuration: %@\n", self->super._userInfo);
  }

  v9 = 1;
  self->_touchDelayActive = 1;
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000001"])
  {
    goto LABEL_18;
  }

  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000002"])
  {
    v9 = 2;
LABEL_18:
    self->_testMode = v9;
    goto LABEL_19;
  }

  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000003"])
  {
    v9 = 3;
    goto LABEL_18;
  }

  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000004"])
  {
    v9 = 4;
    goto LABEL_18;
  }

  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000005"])
  {
    v9 = 5;
    goto LABEL_18;
  }

  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000006"])
  {
    v9 = 6;
    goto LABEL_18;
  }

  if ([v10 isEqual:@"00000000-0000-0000-0000-000000000007"])
  {
    v9 = 7;
    goto LABEL_18;
  }

LABEL_19:
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();

  if (!v11 && dword_1001BE938 <= 60 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy configureWithContext:completion:]", 60, "### No request SSID: %@\n", 0);
  }

  requestSSID = self->_requestSSID;
  self->_requestSSID = v11;
  v13 = v11;

  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    self->_hotspot = 1;
  }

  if ((self->_testMode & 0xFFFFFFFE) == 4)
  {
    self->_hotspot = 1;
  }

  v15 = CFPrefs_GetInt64() != 0;
  if (!IsAppleInternalBuild())
  {
    v15 = 0;
  }

  if (self->_autoGrant != v15)
  {
    if (dword_1001BE938 <= 40 && (dword_1001BE938 != -1 || _LogCategory_Initialize()))
    {
      v16 = "yes";
      if (v15)
      {
        v17 = "no";
      }

      else
      {
        v17 = "yes";
      }

      if (!v15)
      {
        v16 = "no";
      }

      LogPrintF(&dword_1001BE938, "[PasswordSharingViewControllerProxy configureWithContext:completion:]", 40, "autoGrant enabled: %s -> %s\n", v17, v16);
    }

    self->_autoGrant = v15;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end