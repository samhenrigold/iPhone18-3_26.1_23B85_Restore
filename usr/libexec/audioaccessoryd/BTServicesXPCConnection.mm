@interface BTServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)_diagnosticControlShareAudioBanner;
- (void)audioRoutingRequest:(id)request responseHandler:(id)handler;
- (void)audioSessionActivate:(id)activate completion:(id)completion;
- (void)diagnosticControl:(id)control completion:(id)completion;
- (void)diagnosticShow:(id)show completion:(id)completion;
- (void)shareAudioSessionActivate:(id)activate completion:(id)completion;
- (void)shareAudioUserConfirmed:(BOOL)confirmed;
- (void)showHIDConnectedBannerAperture:(id)aperture completion:(id)completion;
- (void)xpcConnectionInvalidated;
@end

@implementation BTServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.BluetoothServices"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDAC8(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = BTErrorF(4294896128, "Missing entitlement '%@'", @"com.apple.BluetoothServices");
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  v3 = self->_audioSession;
  if (v3)
  {
    if (dword_1002F76E0 < 31 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FDB18(v3);
    }

    [(BTAudioSession *)v3 invalidate];
    audioSession = self->_audioSession;
    self->_audioSession = 0;
  }

  v5 = self->_shareAudioSession;
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    if (dword_1002F76E0 < 31)
    {
      if (dword_1002F76E0 != -1 || (v7 = _LogCategory_Initialize(), v6 = v9, v7))
      {
        sub_1001FDB18(v6);
        v6 = v9;
      }
    }

    [(BTShareAudioSessionDaemon *)v6 invalidate];
    shareAudioSession = self->_shareAudioSession;
    self->_shareAudioSession = 0;

    v6 = v9;
  }

  _objc_release_x1(v5, v6);
}

- (void)audioRoutingRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDB58(requestCopy);
  }

  smartRoutingSession = self->_smartRoutingSession;
  if (!smartRoutingSession)
  {
    v9 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v10 = self->_smartRoutingSession;
    self->_smartRoutingSession = v9;

    smartRoutingSession = self->_smartRoutingSession;
    if (!smartRoutingSession)
    {
      v11 = objc_alloc_init(BTAudioRoutingResponse);
      v12 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "### Smart Routing not supported on this platform");
      [v11 setError:v12];

      handlerCopy[2](handlerCopy, v11);
      smartRoutingSession = self->_smartRoutingSession;
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E3C30;
  v14[3] = &unk_1002BB7B8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(BTSmartRoutingDaemon *)smartRoutingSession smartRoutingAudioRoutingRequest:requestCopy withResponseHandler:v14];
}

- (void)audioSessionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDB98(activateCopy);
  }

  if (self->_smartRoutingSession || (+[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon], v7 = objc_claimAutoreleasedReturnValue(), smartRoutingSession = self->_smartRoutingSession, self->_smartRoutingSession = v7, smartRoutingSession, self->_smartRoutingSession))
  {
    NSErrorF(NSOSStatusErrorDomain, 4294960561, "audioSessionActivate is not supported on this platform.");
  }

  else
  {
    NSErrorF(NSOSStatusErrorDomain, 4294960561, "SmartRouting is disabled");
  }
  v9 = ;
  completionCopy[2](completionCopy, v9);
}

- (void)diagnosticControl:(id)control completion:(id)completion
{
  controlCopy = control;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000039F8;
  v27 = sub_1000038A8;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E40C4;
  v20[3] = &unk_1002B74D0;
  v22 = &v23;
  completionCopy = completion;
  v21 = completionCopy;
  v8 = objc_retainBlock(v20);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection diagnosticControl:completion:]", 30, "DiagnosticControl: %##@", controlCopy);
  }

  v9 = (v24 + 5);
  obj = v24[5];
  v10 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v12 = v11;
    if (!v11)
    {
      v18 = BTErrorF(4294960591, "No input");
      goto LABEL_21;
    }

    if ([v11 caseInsensitiveCompare:@"FWCrashed"])
    {
      if ([v12 caseInsensitiveCompare:@"HIDLagDetected"])
      {
        if ([v12 caseInsensitiveCompare:@"IgnoreBTRestart"])
        {
          if (![v12 caseInsensitiveCompare:@"shNote"])
          {
            [(BTServicesXPCConnection *)self _diagnosticControlShareAudioBanner];
LABEL_20:
            (*(completionCopy + 2))(completionCopy, &__NSDictionary0__struct, 0);
LABEL_21:

            goto LABEL_22;
          }

          if ([v12 caseInsensitiveCompare:@"HIDIntervalUpdated"])
          {
            v13 = +[BTIdentityDaemon sharedBTIdentityDaemon];
            v14 = [v13 diagnosticControl:controlCopy completion:completionCopy];

            if ((v14 & 1) == 0)
            {
              v15 = BTErrorF(4294960582, "Unsupported control");
              v16 = v24[5];
              v24[5] = v15;
            }

            goto LABEL_21;
          }

          v17 = +[BTServicesDaemon sharedBTServicesDaemon];
          [v17 _showHIDIntervalBannerIfEnabled:controlCopy];
        }

        else
        {
          v17 = +[BTServicesDaemon sharedBTServicesDaemon];
          [v17 setIgnoreBTRestart:1];
        }
      }

      else
      {
        v17 = +[BTServicesDaemon sharedBTServicesDaemon];
        [v17 _showHIDLagBannerIfEnabled:controlCopy];
      }
    }

    else
    {
      v17 = +[BTServicesDaemon sharedBTServicesDaemon];
      [v17 showCrashBannerIfNeeded:controlCopy];
    }

    goto LABEL_20;
  }

LABEL_22:
  (v8[2])(v8);

  _Block_object_dispose(&v23, 8);
}

- (void)_diagnosticControlShareAudioBanner
{
  selfCopy = self;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001FDBD8(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(CUUserNotificationSession);
  [v4 setBundleID:@"com.apple.ShareAudioNotifications"];
  [v4 setCategoryID:@"ShareAudioCategoryID"];
  [v4 setDispatchQueue:selfCopy->_dispatchQueue];
  [v4 setFlags:1];
  [v4 setTitleKey:@"Apple TV"];
  [v4 setBodyKey:@"SHARE_AUDIO_BODY_FORMAT"];
  [v4 setBodyArguments:&off_1002CC138];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E4328;
  v6[3] = &unk_1002BB768;
  v6[4] = v4;
  [v4 setActionHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E43B4;
  v5[3] = &unk_1002B6880;
  v5[4] = v4;
  [v4 addActionWithIdentifier:@"ShareAudioActionIDConnect" title:@"SHARE_AUDIO_BUTTON" flags:0 handler:v5];
  [v4 activate];
}

- (void)diagnosticShow:(id)show completion:(id)completion
{
  showCopy = show;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000039F8;
  v24 = sub_1000038A8;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E46C8;
  v17[3] = &unk_1002B74D0;
  v19 = &v20;
  completionCopy = completion;
  v18 = completionCopy;
  v8 = objc_retainBlock(v17);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection diagnosticShow:completion:]", 30, "DiagnosticShow: %.32@", showCopy);
  }

  v9 = (v21 + 5);
  obj = v21[5];
  v10 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    v15 = 0;
    v11 = CUDescriptionWithLevel();
    NSAppendPrintF(&v15, "%@", v11);
    v12 = v15;

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"None\n";
    }

    v26 = @"_output";
    v27 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    (*(completionCopy + 2))(completionCopy, v14, 0);
  }

  (v8[2])(v8);

  _Block_object_dispose(&v20, 8);
}

- (void)showHIDConnectedBannerAperture:(id)aperture completion:(id)completion
{
  apertureCopy = aperture;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000039F8;
  v20 = sub_1000038A8;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E499C;
  v13[3] = &unk_1002B74D0;
  v15 = &v16;
  completionCopy = completion;
  v14 = completionCopy;
  v8 = objc_retainBlock(v13);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection showHIDConnectedBannerAperture:completion:]", 30, "HIDBanner: %@", apertureCopy);
  }

  v9 = (v17 + 5);
  obj = v17[5];
  v10 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    v11 = +[BTServicesDaemon sharedBTServicesDaemon];
    [v11 _showHIDConnected:apertureCopy];

    (*(completionCopy + 2))(completionCopy, 0);
  }

  (v8[2])(v8);

  _Block_object_dispose(&v16, 8);
}

- (void)shareAudioSessionActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000039F8;
  v27 = sub_1000038A8;
  v28 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000E4D78;
  v19[3] = &unk_1002B7120;
  v22 = &v23;
  v8 = activateCopy;
  v20 = v8;
  v9 = completionCopy;
  v21 = v9;
  v10 = objc_retainBlock(v19);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection shareAudioSessionActivate:completion:]", 30, "Activate: %@", v8);
  }

  v11 = (v24 + 5);
  obj = v24[5];
  v12 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v11, obj);
  if (v12)
  {
    if (self->_shareAudioSession)
    {
      v16 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "Session already active");
      v13 = v24[5];
      v24[5] = v16;
    }

    else
    {
      v13 = objc_alloc_init(BTShareAudioSessionDaemon);
      objc_storeStrong(&self->_shareAudioSession, v13);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("BTShareAudioSessionDaemon", v14);
      [(BTShareAudioSessionDaemon *)v13 setDispatchQueue:v15];

      -[BTShareAudioSessionDaemon setMode:](v13, "setMode:", [v8 mode]);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000E4E44;
      v17[3] = &unk_1002BB790;
      v17[4] = self;
      v17[5] = v13;
      [(BTShareAudioSessionDaemon *)v13 setProgressHandler:v17];
      [(BTShareAudioSessionDaemon *)v13 activate];
      (*(v9 + 2))(v9, 0);
    }
  }

  (v10[2])(v10);

  _Block_object_dispose(&v23, 8);
}

- (void)shareAudioUserConfirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000039F8;
  v18 = sub_1000038A8;
  v19 = 0;
  v5 = self->_shareAudioSession;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E5178;
  v13[3] = &unk_1002B6ED8;
  v13[4] = v5;
  v13[5] = &v14;
  v6 = objc_retainBlock(v13);
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    v7 = "no";
    if (confirmedCopy)
    {
      v7 = "yes";
    }

    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection shareAudioUserConfirmed:]", 30, "UserConfirmed: permanent %s, %@", v7, v5);
  }

  v8 = (v15 + 5);
  obj = v15[5];
  v9 = [(BTServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v8, obj);
  if (v9)
  {
    if (v5)
    {
      [(BTShareAudioSessionDaemon *)v5 userConfirmed:confirmedCopy];
    }

    else
    {
      v10 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "No session");
      v11 = v15[5];
      v15[5] = v10;
    }
  }

  (v6[2])(v6);

  _Block_object_dispose(&v14, 8);
}

@end