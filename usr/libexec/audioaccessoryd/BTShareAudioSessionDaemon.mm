@interface BTShareAudioSessionDaemon
- (BTShareAudioSessionDaemon)init;
- (int)_runAdvertiser;
- (int)_runConfirm;
- (int)_runConnectGuestHeadphones;
- (int)_runFinish;
- (int)_runGuestiOSConnect;
- (int)_runGuestiOSPairSetupPublic;
- (int)_runGuestiOSShareAudio;
- (int)_runGuestiOSShareAudioConnect;
- (int)_runInit;
- (int)_runScannerNearbyInfo;
- (int)_runScannerProxPairing;
- (int)_runShareAudioServiceStart;
- (int)_runShowHeadphonesPairingInstructions;
- (int)_runWaitForConfigRequestOrProxTrigger;
- (int)_runWaitForConnectRequest;
- (int)_runWaitForGuestHeadphones;
- (int)_runWaitForGuestHeadphonesPairingMode;
- (int)_runWaitForProxTrigger;
- (void)_bleScannerNearbyInfoDeviceFound:(id)found;
- (void)_bleScannerProxPairingDeviceFound:(id)found;
- (void)_cleanup;
- (void)_invalidate;
- (void)_pickableRoutesChanged;
- (void)_pickableRoutesChanged:(id)changed;
- (void)_reportError:(id)error;
- (void)_reportProgress:(int)progress;
- (void)_reportProgress:(int)progress info:(id)info;
- (void)_reportProgressTriggeredDevice:(int)device;
- (void)_run;
- (void)_runDefault;
- (void)_runGuestiOSShareAudioConnectProcessResponse:(id)response error:(id)error;
- (void)_runGuestiOSShareAudioConnectSendRequest;
- (void)_runGuestiOSShareAudioProcessResponse:(id)response error:(id)error;
- (void)_runGuestiOSShareAudioSendRequest;
- (void)_runShareAudioServiceConfigRequest:(id)request responseHandler:(id)handler;
- (void)_runShareAudioServiceConfigResponse:(id)response;
- (void)_runShareAudioServiceConnectRequest:(id)request responseHandler:(id)handler;
- (void)_runStory6TV;
- (void)_runStory6iOS;
- (void)activate;
- (void)invalidate;
- (void)userConfirmed:(BOOL)confirmed;
@end

@implementation BTShareAudioSessionDaemon

- (BTShareAudioSessionDaemon)init
{
  v6.receiver = self;
  v6.super_class = BTShareAudioSessionDaemon;
  v2 = [(BTShareAudioSessionDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E53EC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E54D8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(BTShareAudioSessionDaemon *)self _reportProgress:20];
    _cleanup = [(BTShareAudioSessionDaemon *)self _cleanup];
    if (dword_1002F7880 <= 30)
    {
      if (dword_1002F7880 != -1 || (_cleanup = _LogCategory_Initialize(), _cleanup))
      {
        sub_1001FE050(_cleanup, v4, v5);
      }
    }
  }
}

- (void)_run
{
  mode = self->_mode;
  if (mode == 2)
  {
    [(BTShareAudioSessionDaemon *)self _runStory6TV];
  }

  else if (mode == 1)
  {
    [(BTShareAudioSessionDaemon *)self _runStory6iOS];
  }

  else
  {
    [(BTShareAudioSessionDaemon *)self _runDefault];
  }
}

- (int)_runInit
{
  if (!self->_initialized)
  {
    self->_prefHeadphoneTrigger = CFPrefs_GetInt64() != 0;
    self->_prefiOSTrigger = CFPrefs_GetInt64() != 0;
    Int64 = CFPrefs_GetInt64();
    if (Int64 == Int64)
    {
      v4 = Int64;
    }

    else
    {
      v4 = -1;
    }

    self->_prefOverrideColorCode = v4;
    v5 = CFPrefs_GetInt64();
    if (v5 == v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = -1;
    }

    self->_prefOverrideProductID = v6;
    v7 = CFPrefs_GetInt64();
    if ((v7 - 1000) < 0xFFFFFFFFFFFFF831 || v7 == 0)
    {
      v9 = -40;
    }

    else
    {
      v9 = v7;
    }

    self->_prefRSSIThreshold = v9;
    self->_prefRespectDeviceSupport = CFPrefs_GetInt64() == 0;
    if (!self->_preventProxCardsClient)
    {
      v10 = objc_alloc_init(SFClient);
      preventProxCardsClient = self->_preventProxCardsClient;
      self->_preventProxCardsClient = v10;

      [(SFClient *)self->_preventProxCardsClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventProxCards"];
    }

    self->_initialized = 1;
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE06C(&self->_prefRSSIThreshold);
    }
  }

  return 4;
}

- (int)_runScannerProxPairing
{
  if (!self->_prefHeadphoneTrigger)
  {
    return 2;
  }

  v15[6] = v6;
  v15[7] = v5;
  v15[12] = v3;
  v15[13] = v4;
  selfCopy = self;
  if (self->_configRequestReceived || self->_triggeredDevice && self->_triggeredNeedsSetupDevice)
  {
    if (self->_bleProxPairingScanner)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE0CC(self, a2, v2);
        }
      }

      [(SFDeviceDiscovery *)selfCopy->_bleProxPairingScanner invalidate];
      bleProxPairingScanner = selfCopy->_bleProxPairingScanner;
      selfCopy->_bleProxPairingScanner = 0;
    }

    return 2;
  }

  else
  {
    if (!self->_bleProxPairingScanner)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE0B0(self, a2, v2);
        }
      }

      v10 = objc_alloc_init(SFDeviceDiscovery);
      v11 = selfCopy->_bleProxPairingScanner;
      selfCopy->_bleProxPairingScanner = v10;
      v12 = v10;

      [(SFDeviceDiscovery *)v12 setChangeFlags:13];
      [(SFDeviceDiscovery *)v12 setDiscoveryFlags:2];
      [(SFDeviceDiscovery *)v12 setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceDiscovery *)v12 setPurpose:@"ShareAudio"];
      [(SFDeviceDiscovery *)v12 setScanRate:50];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000E59F8;
      v15[3] = &unk_1002B8428;
      v15[4] = v12;
      v15[5] = selfCopy;
      [(SFDeviceDiscovery *)v12 setDeviceFoundHandler:v15];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000E5A14;
      v14[3] = &unk_1002B8450;
      v14[4] = v12;
      v14[5] = selfCopy;
      [(SFDeviceDiscovery *)v12 setDeviceChangedHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E5A30;
      v13[3] = &unk_1002B68A8;
      v13[4] = v12;
      v13[5] = selfCopy;
      [(SFDeviceDiscovery *)v12 activateWithCompletion:v13];
    }

    return 4;
  }
}

- (int)_runScannerNearbyInfo
{
  if (!self->_prefiOSTrigger)
  {
    return 2;
  }

  v16[6] = v6;
  v16[7] = v5;
  v16[12] = v3;
  v16[13] = v4;
  selfCopy = self;
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  if (self->_triggeredDevice)
  {
    if (bleNearbyInfoScanner)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE144(self, a2, v2);
        }
      }

      [(SFDeviceDiscovery *)selfCopy->_bleNearbyInfoScanner invalidate];
      v9 = selfCopy->_bleNearbyInfoScanner;
      selfCopy->_bleNearbyInfoScanner = 0;
    }

    return 2;
  }

  else
  {
    if (!bleNearbyInfoScanner)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE160(self, a2, v2);
        }
      }

      v11 = objc_alloc_init(SFDeviceDiscovery);
      v12 = selfCopy->_bleNearbyInfoScanner;
      selfCopy->_bleNearbyInfoScanner = v11;
      v13 = v11;

      [(SFDeviceDiscovery *)v13 setChangeFlags:13];
      [(SFDeviceDiscovery *)v13 setDiscoveryFlags:1];
      [(SFDeviceDiscovery *)v13 setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceDiscovery *)v13 setPurpose:@"ShareAudio"];
      [(SFDeviceDiscovery *)v13 setScanRate:50];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000E5D54;
      v16[3] = &unk_1002B8428;
      v16[4] = v13;
      v16[5] = selfCopy;
      [(SFDeviceDiscovery *)v13 setDeviceFoundHandler:v16];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000E5D70;
      v15[3] = &unk_1002B8450;
      v15[4] = v13;
      v15[5] = selfCopy;
      [(SFDeviceDiscovery *)v13 setDeviceChangedHandler:v15];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000E5D8C;
      v14[3] = &unk_1002B68A8;
      v14[4] = v13;
      v14[5] = selfCopy;
      [(SFDeviceDiscovery *)v13 activateWithCompletion:v14];
    }

    return 4;
  }
}

- (int)_runShareAudioServiceStart
{
  if (!self->_shareAudioService)
  {
    selfCopy = self;
    if (dword_1002F7880 <= 30)
    {
      if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001FE1D8(self, a2, v2);
      }
    }

    v4 = objc_alloc_init(BTShareAudioService);
    shareAudioService = selfCopy->_shareAudioService;
    selfCopy->_shareAudioService = v4;
    v6 = v4;

    v7 = dispatch_queue_create("ShareAudioService", 0);
    [(BTShareAudioService *)v6 setDispatchQueue:v7];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E5FD8;
    v10[3] = &unk_1002BB870;
    v10[4] = v6;
    v10[5] = selfCopy;
    [(BTShareAudioService *)v6 setConfigRequestHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E6088;
    v9[3] = &unk_1002BB870;
    v9[4] = v6;
    v9[5] = selfCopy;
    [(BTShareAudioService *)v6 setConnectRequestHandler:v9];
    [(BTShareAudioService *)v6 activate];
  }

  return 4;
}

- (void)_runShareAudioServiceConfigRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003A08;
  v24 = sub_1000038B0;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E63E8;
  v17[3] = &unk_1002B74D0;
  v19 = &v20;
  handlerCopy = handler;
  v18 = handlerCopy;
  v8 = objc_retainBlock(v17);
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runShareAudioServiceConfigRequest:responseHandler:]", 30, "Config request: %##@", requestCopy);
  }

  if (self->_configResponseHandler)
  {
    v14 = BTErrorF(4294960575, "Already handling config request");
    v9 = v21[5];
    v21[5] = v14;
  }

  else
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      objc_storeStrong(&self->_guestHeadphonesAddress, v9);
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      guestHeadphonesName = self->_guestHeadphonesName;
      self->_guestHeadphonesName = v10;

      self->_guestHeadphonesProductID = CFDictionaryGetInt64Ranged();
      v12 = objc_retainBlock(handlerCopy);
      configResponseHandler = self->_configResponseHandler;
      self->_configResponseHandler = v12;

      self->_configRequestReceived = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:100];
      [(BTShareAudioSessionDaemon *)self _run];
    }

    else
    {
      v15 = BTErrorF(4294960591, "No BT addr");
      v16 = v21[5];
      v21[5] = v15;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v20, 8);
}

- (void)_runShareAudioServiceConfigResponse:(id)response
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003A08;
  v15 = sub_1000038B0;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E66C4;
  v8[3] = &unk_1002B74D0;
  v10 = &v11;
  responseCopy = response;
  v9 = responseCopy;
  v4 = objc_retainBlock(v8);
  v5 = MGCopyAnswer();
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:@"btAd"];
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runShareAudioServiceConfigResponse:]", 30, "Config response: %##@", v6);
    }

    (*(responseCopy + 2))(responseCopy, 0, 0, v6);
  }

  else
  {
    v7 = BTErrorF(4294960596, "Get Bluetooth address failed");
    v6 = v12[5];
    v12[5] = v7;
  }

  (v4[2])(v4);
  _Block_object_dispose(&v11, 8);
}

- (void)_runShareAudioServiceConnectRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FE1F4(requestCopy);
  }

  v7 = objc_retainBlock(handlerCopy);
  connectResponseHandler = self->_connectResponseHandler;
  self->_connectResponseHandler = v7;

  self->_connectRequestReceived = 1;
  [(BTShareAudioSessionDaemon *)self _run];
}

- (int)_runAdvertiser
{
  selfCopy = self;
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (self->_triggeredDevice)
  {
    if (bleNearbyActionAdvertiser)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE234(self, a2, v2);
        }
      }

      [(SFService *)selfCopy->_bleNearbyActionAdvertiser invalidate];
      v5 = selfCopy->_bleNearbyActionAdvertiser;
      selfCopy->_bleNearbyActionAdvertiser = 0;
    }

    return 2;
  }

  else
  {
    if (!bleNearbyActionAdvertiser)
    {
      DeviceClass = GestaltGetDeviceClass();
      v10 = DeviceClass;
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (DeviceClass = _LogCategory_Initialize(), DeviceClass))
        {
          sub_1001FE250(DeviceClass, v8, v9);
        }
      }

      v11 = objc_alloc_init(SFService);
      v12 = selfCopy->_bleNearbyActionAdvertiser;
      selfCopy->_bleNearbyActionAdvertiser = v11;
      v13 = v11;

      [(SFService *)v13 setAdvertiseRate:60];
      if (v10 == 4)
      {
        v14 = 31;
      }

      else
      {
        v14 = 27;
      }

      [(SFService *)v13 setDeviceActionType:v14];
      [(SFService *)v13 setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFService *)v13 setIdentifier:@"a5989962-d94b-4755-bbca-59ecf498ad2f"];
      [(SFService *)v13 setLabel:@"ShareAudio"];
      [(SFService *)v13 setNeedsSetup:1];
      [(SFService *)v13 setPairSetupDisabled:1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000E69F8;
      v15[3] = &unk_1002B68A8;
      v15[4] = v13;
      v15[5] = selfCopy;
      [(SFService *)v13 activateWithCompletion:v15];
    }

    return 4;
  }
}

- (int)_runWaitForConfigRequestOrProxTrigger
{
  configRequestReceived = self->_configRequestReceived;
  result = 4;
  if (!configRequestReceived)
  {
    if (self->_triggeredDevice)
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (int)_runWaitForProxTrigger
{
  if (self->_triggeredDevice)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runWaitForConnectRequest
{
  if (self->_connectRequestReceived)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runConfirm
{
  confirmState = self->_confirmState;
  if (confirmState == 4)
  {
    v4 = objc_retainBlock(self->_configResponseHandler);
    configResponseHandler = self->_configResponseHandler;
    self->_configResponseHandler = 0;

    if (v4)
    {
      [(BTShareAudioSessionDaemon *)self _runShareAudioServiceConfigResponse:v4];
    }
  }

  else if (confirmState != 2)
  {
    if (confirmState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_confirmState;
          }

          confirmState = self->_confirmState;
        }

        LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runConfirm]", 30, "Confirm not ready yet (%d)", confirmState);
      }
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE2C8(self);
      }

      self->_confirmState = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:100];
    }
  }

  return self->_confirmState;
}

- (int)_runGuestiOSConnect
{
  selfCopy = self;
  guestiOSConnectState = self->_guestiOSConnectState;
  if (guestiOSConnectState != 4 && guestiOSConnectState != 2)
  {
    if (guestiOSConnectState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_guestiOSConnectState;
          }

          guestiOSConnectState = selfCopy->_guestiOSConnectState;
        }

        LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runGuestiOSConnect]", 30, "Guest iOS session not ready yet (%d)", guestiOSConnectState);
      }
    }

    else
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE30C(self, a2, v2);
        }
      }

      selfCopy->_guestiOSConnectState = 1;
      [(BTShareAudioSessionDaemon *)selfCopy _reportProgressTriggeredDevice:200];
      v6 = objc_alloc_init(SFSession);
      objc_storeStrong(&selfCopy->_guestiOSSession, v6);
      [v6 setDispatchQueue:selfCopy->_dispatchQueue];
      [v6 setLabel:@"ShareAudio"];
      darwinDevice = selfCopy->_darwinDevice;
      if (!darwinDevice)
      {
        darwinDevice = selfCopy->_triggeredDevice;
      }

      [v6 setPeerDevice:darwinDevice];
      [v6 setServiceIdentifier:@"com.apple.sharing.ShareAudio"];
      [v6 setSessionFlags:1];
      [v6 setStatusMonitor:selfCopy->_statusMonitor];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000E6F2C;
      v13[3] = &unk_1002B68A8;
      v13[4] = v6;
      v13[5] = selfCopy;
      [v6 setErrorHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E7030;
      v12[3] = &unk_1002B6D18;
      v12[4] = v6;
      v12[5] = selfCopy;
      [v6 setInterruptionHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000E7088;
      v11[3] = &unk_1002B6D18;
      v11[4] = v6;
      v11[5] = selfCopy;
      [v6 setInvalidationHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000E70E0;
      v10[3] = &unk_1002B6D18;
      v10[4] = v6;
      v10[5] = selfCopy;
      [v6 setSessionStartedHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000E7170;
      v9[3] = &unk_1002B68A8;
      v9[4] = v6;
      v9[5] = selfCopy;
      [v6 activateWithCompletion:v9];
    }
  }

  return selfCopy->_guestiOSConnectState;
}

- (int)_runGuestiOSPairSetupPublic
{
  selfCopy = self;
  guestiOSPairSetupPublicState = self->_guestiOSPairSetupPublicState;
  if (guestiOSPairSetupPublicState != 4 && guestiOSPairSetupPublicState != 2)
  {
    if (guestiOSPairSetupPublicState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_guestiOSPairSetupPublicState;
          }

          guestiOSPairSetupPublicState = selfCopy->_guestiOSPairSetupPublicState;
        }

        LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runGuestiOSPairSetupPublic]", 30, "Guest iOS PairSetup hasn't succeeded yet (%d)", guestiOSPairSetupPublicState);
      }
    }

    else
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001FE418(self, a2, v2);
        }
      }

      selfCopy->_guestiOSPairSetupPublicState = 1;
      v6 = selfCopy->_guestiOSSession;
      [(SFSession *)v6 setFixedPIN:@"public"];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000E73C0;
      v8[3] = &unk_1002B68A8;
      v8[4] = v6;
      v8[5] = selfCopy;
      [(SFSession *)v6 pairSetupWithFlags:16 completion:v8];
    }
  }

  return selfCopy->_guestiOSPairSetupPublicState;
}

- (int)_runGuestiOSShareAudio
{
  guestiOSShareAudioState = self->_guestiOSShareAudioState;
  if (guestiOSShareAudioState != 4 && guestiOSShareAudioState != 2)
  {
    if (guestiOSShareAudioState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSShareAudioState;
          }

          guestiOSShareAudioState = self->_guestiOSShareAudioState;
        }

        LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runGuestiOSShareAudio]", 30, "Guest iOS ShareAudio hasn't succeeded yet (%d)", guestiOSShareAudioState);
      }
    }

    else
    {
      self->_guestiOSShareAudioState = 1;
      [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudioSendRequest];
    }
  }

  return self->_guestiOSShareAudioState;
}

- (void)_runGuestiOSShareAudioSendRequest
{
  selfCopy = self;
  if (dword_1002F7880 <= 30)
  {
    if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001FE490(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  btAddressData = [(CBDevice *)selfCopy->_cbDevice btAddressData];
  v6 = CUPrintNSDataAddress();

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = MGCopyAnswer();
  if (v7)
  {
    v6 = v7;
LABEL_7:
    [v4 setObject:v6 forKeyedSubscript:@"btAd"];
    name = [(CBDevice *)selfCopy->_cbDevice name];
    if (name || (name = GestaltCopyAnswer()) != 0)
    {
      v11 = name;
      [v4 setObject:name forKeyedSubscript:@"dname"];
    }

    productID = [(CBDevice *)selfCopy->_cbDevice productID];
    if (productID)
    {
      v13 = [NSNumber numberWithUnsignedInt:productID];
      [v4 setObject:v13 forKeyedSubscript:@"productID"];
    }

    guestiOSSession = selfCopy->_guestiOSSession;
    dispatchQueue = selfCopy->_dispatchQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E77A4;
    v17[3] = &unk_1002B6D60;
    v17[4] = guestiOSSession;
    v17[5] = selfCopy;
    v17[6] = v4;
    v16 = guestiOSSession;
    [(SFSession *)v16 appleIDAddProof:v4 dispatchQueue:dispatchQueue completion:v17];

    goto LABEL_13;
  }

  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      sub_1001FE4AC(v7, v8, v9);
    }
  }

  selfCopy->_guestiOSShareAudioState = 3;
  v6 = NSErrorF(NSOSStatusErrorDomain, 4294960535, "No iOS BT Addr");
  [(BTShareAudioSessionDaemon *)selfCopy _reportError:v6];
LABEL_13:
}

- (void)_runGuestiOSShareAudioProcessResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = responseCopy;
  v9 = errorCopy;
  v12 = v9;
  if (v9)
  {
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE54C(v12);
    }

    self->_guestiOSShareAudioState = 3;
    [(BTShareAudioSessionDaemon *)self _reportError:v12];
  }

  else
  {
    if (v8)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE58C(v8);
      }

      v13 = self->_guestiOSSession;
      dispatchQueue = self->_dispatchQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000E7AF8;
      v16[3] = &unk_1002BB8C0;
      v17 = v13;
      selfCopy = self;
      v19 = v8;
      v15 = v13;
      [(SFSession *)v15 appleIDVerifyProof:v19 dispatchQueue:dispatchQueue completion:v16];
    }

    else
    {
      if (dword_1002F7880 <= 90)
      {
        if (dword_1002F7880 != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          sub_1001FE5CC(v9, v10, v11);
        }
      }

      self->_guestiOSShareAudioState = 3;
      v15 = NSErrorF(NSOSStatusErrorDomain, 4294960584, "No response");
      [(BTShareAudioSessionDaemon *)self _reportError:v15];
    }
  }
}

- (int)_runGuestiOSShareAudioConnect
{
  guestiOSShareAudioConnectState = self->_guestiOSShareAudioConnectState;
  if (guestiOSShareAudioConnectState != 4 && guestiOSShareAudioConnectState != 2)
  {
    if (guestiOSShareAudioConnectState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSShareAudioConnectState;
          }

          guestiOSShareAudioConnectState = self->_guestiOSShareAudioConnectState;
        }

        LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runGuestiOSShareAudioConnect]", 30, "Guest iOS ShareAudio connect hasn't succeeded yet (%d)", guestiOSShareAudioConnectState);
      }
    }

    else
    {
      self->_guestiOSShareAudioConnectState = 1;
      [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudioConnectSendRequest];
    }
  }

  return self->_guestiOSShareAudioConnectState;
}

- (void)_runGuestiOSShareAudioConnectSendRequest
{
  selfCopy = self;
  if (dword_1002F7880 <= 30)
  {
    if (dword_1002F7880 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001FE6E8(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  guestiOSSession = selfCopy->_guestiOSSession;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E7EBC;
  v7[3] = &unk_1002BB898;
  v7[4] = guestiOSSession;
  v7[5] = selfCopy;
  v6 = guestiOSSession;
  [(SFSession *)v6 sendRequestID:@"_shCn" options:0 request:v4 responseHandler:v7];
}

- (void)_runGuestiOSShareAudioConnectProcessResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE704(errorCopy);
    }

    self->_guestiOSShareAudioConnectState = 3;
    [(BTShareAudioSessionDaemon *)self _reportError:errorCopy];
  }

  else
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE744(responseCopy);
    }

    self->_guestiOSShareAudioConnectState = 4;
    [(BTShareAudioSessionDaemon *)self _run];
  }
}

- (int)_runShowHeadphonesPairingInstructions
{
  result = self->_guestHeadphonesInstructionsState;
  if (!result)
  {
    if (!self->_triggeredNeedsSetupDevice)
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE784(self);
      }

      [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:120];
    }

    result = 4;
    self->_guestHeadphonesInstructionsState = 4;
  }

  return result;
}

- (int)_runWaitForGuestHeadphonesPairingMode
{
  if (self->_triggeredNeedsSetupDevice)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (int)_runConnectGuestHeadphones
{
  result = self->_guestHeadphonesConnectState;
  if (!result)
  {
    btAddressData = [(CBDevice *)self->_cbDevice btAddressData];
    if (btAddressData)
    {
      btAddressData2 = [(CBDevice *)self->_cbDevice btAddressData];
      v6 = CUPrintNSDataAddress();
    }

    else
    {
      v6 = self->_guestHeadphonesAddress;
    }

    guestiOSSession = self->_guestiOSSession;
    if (guestiOSSession)
    {
      sfSession = guestiOSSession;
    }

    else
    {
      sfSession = [(BTShareAudioService *)self->_shareAudioService sfSession];
    }

    v9 = sfSession;
    v10 = [(SFSession *)sfSession pairingDeriveKeyForIdentifier:@"ShareAudio" keyLength:16];
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runConnectGuestHeadphones]", 30, "Guest headphone connect start: DA %@, GA %@, GK %{mask}", v6, self->_guestDeviceAddress, v10);
    }

    self->_guestHeadphonesConnectState = 1;
    [(BTShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:300];
    v11 = objc_alloc_init(BTBluetoothPairingSession);
    objc_storeStrong(&self->_guestHeadphonesPairingSession, v11);
    [v11 setDeviceAddress:v6];
    [v11 setDispatchQueue:self->_dispatchQueue];
    if (self->_triggerediOS || ![(SFDevice *)self->_triggeredDevice paired])
    {
      if (self->_guestDeviceAddress)
      {
        [v11 setGuestAddress:?];
      }

      [v11 setGuestKey:v10];
      [v11 setGuestMode:1];
      [v11 setGuestPermanent:self->_confirmPermanent];
      if (self->_triggerediOS && !self->_guestiOSContact || self->_mode == 1)
      {
        [v11 setUserNotInContacts:1];
      }
    }

    else
    {
      [v11 setAggregate:1];
      [v11 setConnectOnly:1];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E82C0;
    v12[3] = &unk_1002B68A8;
    v12[4] = v11;
    v12[5] = self;
    [v11 setCompletionHandler:v12];
    [v11 activate];

    return self->_guestHeadphonesConnectState;
  }

  return result;
}

- (int)_runWaitForGuestHeadphones
{
  guestiOSWaitForRouteState = self->_guestiOSWaitForRouteState;
  if (guestiOSWaitForRouteState != 4 && guestiOSWaitForRouteState != 2)
  {
    if (guestiOSWaitForRouteState)
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSWaitForRouteState;
          }

          guestiOSWaitForRouteState = self->_guestiOSWaitForRouteState;
        }

        LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runWaitForGuestHeadphones]", 30, "Guest iOS wait for headphones hasn't succeeded yet (%d)", guestiOSWaitForRouteState);
      }
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE824(self);
      }

      self->_guestiOSWaitForRouteState = 1;
      [(BTShareAudioSessionDaemon *)self _reportProgress:320];
      v5 = +[AVSystemController sharedAVSystemController];
      v6 = [NSArray arrayWithObject:AVSystemController_PickableRoutesDidChangeNotification];
      [v5 setAttribute:v6 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"_pickableRoutesChanged:" name:AVSystemController_PickableRoutesDidChangeNotification object:v5];
      self->_observingPickableRoutes = 1;
      [(BTShareAudioSessionDaemon *)self _pickableRoutesChanged];
    }
  }

  return self->_guestiOSWaitForRouteState;
}

- (int)_runFinish
{
  v3 = objc_retainBlock(self->_connectResponseHandler);
  v6 = v3;
  if (v3)
  {
    if (dword_1002F7880 < 31)
    {
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001FE868(v3, v4, v5);
      }
    }

    (v6)[2](v6, 0, 0, &__NSDictionary0__struct);
    connectResponseHandler = self->_connectResponseHandler;
    self->_connectResponseHandler = 0;
  }

  v8 = self->_guestHeadphonesRouteUID;
  v11 = v8;
  if (v8)
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE884(v11);
    }

    v17 = @"mediaRouteID";
    v18 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [(BTShareAudioSessionDaemon *)self _reportProgress:40 info:v12];
  }

  else
  {
    if (dword_1002F7880 <= 90)
    {
      if (dword_1002F7880 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001FE8C4(v8, v9, v10);
      }
    }

    v15 = @"error";
    v12 = NSErrorWithOSStatusF();
    v16 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [(BTShareAudioSessionDaemon *)self _reportProgress:50 info:v13];
  }

  [(BTShareAudioSessionDaemon *)self _cleanup];
  return 4;
}

- (void)_cleanup
{
  v3 = objc_retainBlock(self->_configResponseHandler);
  if (v3)
  {
    v4 = BTErrorF(4294960544, "Session ended");
    if (dword_1002F7880 < 91 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE8E0(v4);
    }

    (*(v3 + 2))(v3, v4, 0, 0);
    configResponseHandler = self->_configResponseHandler;
    self->_configResponseHandler = 0;
  }

  v6 = objc_retainBlock(self->_connectResponseHandler);
  if (v6)
  {
    v7 = BTErrorF(4294960544, "Session ended");
    if (dword_1002F7880 < 91 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE8E0(v7);
    }

    (*(v6 + 2))(v6, v7, 0, 0);
    connectResponseHandler = self->_connectResponseHandler;
    self->_connectResponseHandler = 0;
  }

  [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  self->_bleNearbyActionAdvertiser = 0;

  [(SFDeviceDiscovery *)self->_bleNearbyInfoScanner invalidate];
  bleNearbyInfoScanner = self->_bleNearbyInfoScanner;
  self->_bleNearbyInfoScanner = 0;

  [(SFDeviceDiscovery *)self->_bleProxPairingScanner invalidate];
  bleProxPairingScanner = self->_bleProxPairingScanner;
  self->_bleProxPairingScanner = 0;

  self->_guestHeadphonesConnectState = 0;
  guestHeadphonesAddress = self->_guestHeadphonesAddress;
  self->_guestHeadphonesAddress = 0;

  [(BTBluetoothPairingSession *)self->_guestHeadphonesPairingSession invalidate];
  guestHeadphonesPairingSession = self->_guestHeadphonesPairingSession;
  self->_guestHeadphonesPairingSession = 0;

  [(SFSession *)self->_guestiOSSession invalidate];
  guestiOSSession = self->_guestiOSSession;
  self->_guestiOSSession = 0;

  if (self->_observingPickableRoutes)
  {
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 removeObserver:self name:AVSystemController_PickableRoutesDidChangeNotification object:0];
    self->_observingPickableRoutes = 0;
  }

  [(SFClient *)self->_preventProxCardsClient invalidate];
  preventProxCardsClient = self->_preventProxCardsClient;
  self->_preventProxCardsClient = 0;

  [(BTShareAudioService *)self->_shareAudioService invalidate];
  shareAudioService = self->_shareAudioService;
  self->_shareAudioService = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  triggeredDevice = self->_triggeredDevice;
  self->_triggeredDevice = 0;

  triggeredNeedsSetupDevice = self->_triggeredNeedsSetupDevice;
  self->_triggeredNeedsSetupDevice = 0;

  self->_triggerediOS = 0;
}

- (void)_bleScannerNearbyInfoDeviceFound:(id)found
{
  foundCopy = found;
  if (!self->_triggeredDevice)
  {
    v9 = foundCopy;
    if ([foundCopy paired])
    {
      sub_1001FEA2C();
    }

    else if (([v9 deviceFlags] & 0x800) != 0)
    {
      bleDevice = [v9 bleDevice];
      rssiEstimate = [bleDevice rssiEstimate];
      v8 = rssiEstimate;
      if ((rssiEstimate & 0x80000000) != 0 && rssiEstimate >= self->_prefRSSIThreshold)
      {
        if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerNearbyInfoDeviceFound:]", 30, "Triggering proximity ShareAudio (iOS): RSSI %d, %@", v8, v9);
        }

        objc_storeStrong(&self->_triggeredDevice, found);
        self->_triggerediOS = 1;
        [(BTShareAudioSessionDaemon *)self _run];
      }

      else
      {
        sub_1001FE920(self, rssiEstimate, v9);
      }
    }

    else
    {
      sub_1001FE9B4();
    }

    foundCopy = v9;
  }
}

- (void)_bleScannerProxPairingDeviceFound:(id)found
{
  foundCopy = found;
  foundCopy2 = found;
  v6 = foundCopy2;
  p_triggeredNeedsSetupDevice = &self->_triggeredNeedsSetupDevice;
  if (!self->_triggeredNeedsSetupDevice)
  {
    needsSetup = [foundCopy2 needsSetup];
    if ((needsSetup & 1) != 0 || !self->_triggeredDevice)
    {
      bleDevice = [v6 bleDevice];
      advertisementFields = [bleDevice advertisementFields];

      if ((needsSetup & 1) == 0 && self->_prefRespectDeviceSupport && ([v6 deviceFlags] & 0x800) == 0)
      {
        sub_1001FEAA4();
        goto LABEL_46;
      }

      if ((CFDictionaryGetInt64Ranged() & 0x24) != 0)
      {
        sub_1001FEB1C();
        goto LABEL_46;
      }

      if (CFDictionaryGetInt64())
      {
        sub_1001FEB94();
        goto LABEL_46;
      }

      bleDevice2 = [v6 bleDevice];
      smoothedRSSI = [bleDevice2 smoothedRSSI];
      v13 = smoothedRSSI;
      if ((smoothedRSSI & 0x80000000) == 0)
      {
        sub_1001FEDD8(smoothedRSSI, v6);
        goto LABEL_45;
      }

      if (needsSetup)
      {
        v14 = 4294967236;
      }

      else
      {
        v14 = 4294967251;
      }

      if (v14 > smoothedRSSI)
      {
        sub_1001FED48(smoothedRSSI, v14, v6);
        goto LABEL_45;
      }

      Int64Ranged = CFDictionaryGetInt64Ranged();
      bluetoothAddress = [bleDevice2 bluetoothAddress];
      v17 = bluetoothAddress;
      if (Int64Ranged && [bluetoothAddress length] == 6)
      {
        v28 = v13;
        v29 = needsSetup;
        v30 = foundCopy;
        selfCopy = self;
        v33 = advertisementFields;
        v18 = NSPrintF("%.6a", COERCE_DOUBLE([v17 bytes]));
        v32 = +[AVSystemController sharedAVSystemController];
        [v32 attributeForKey:AVSystemController_PickableRoutesAttribute];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v19 = v37 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v35;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v35 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v34 + 1) + 8 * i);
              if (CFDictionaryGetInt64())
              {
                v25 = [v24 objectForKeyedSubscript:AVSystemController_RouteDescriptionKey_RouteUID];
                if ([v25 rangeOfString:v18 options:1] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (dword_1002F7880 <= 10 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001FEC0C(v6);
                  }

                  advertisementFields = v33;
                  goto LABEL_44;
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        advertisementFields = v33;
        foundCopy = v30;
        self = selfCopy;
        needsSetup = v29;
        v13 = v28;
      }

      if ((needsSetup & 1) == 0 && ![v6 paired])
      {
        goto LABEL_34;
      }

      if (v17)
      {
        if ([v17 length] == 6)
        {
          v26 = NSPrintF("%.6a", COERCE_DOUBLE([v17 bytes]));
          guestHeadphonesAddress = self->_guestHeadphonesAddress;
          self->_guestHeadphonesAddress = v26;

          if (needsSetup)
          {
            if (!self->_triggeredDevice)
            {
              objc_storeStrong(&self->_triggeredDevice, foundCopy);
            }

            goto LABEL_35;
          }

LABEL_34:
          p_triggeredNeedsSetupDevice = &self->_triggeredDevice;
LABEL_35:
          objc_storeStrong(p_triggeredNeedsSetupDevice, foundCopy);
          if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 30, "Triggering proximity ShareAudio (Headphones): RSSI %d, %@", v13, v6);
          }

          [(BTShareAudioSessionDaemon *)self _run];
          goto LABEL_44;
        }

        sub_1001FEC4C(v17, v6);
      }

      else
      {
        sub_1001FECCC();
      }

LABEL_44:

LABEL_45:
LABEL_46:
    }
  }
}

- (void)_pickableRoutesChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8FEC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_pickableRoutesChanged
{
  if (self->_guestiOSWaitForRouteState == 1)
  {
    v3 = self->_guestHeadphonesAddress;
    if (v3)
    {
      v4 = +[AVSystemController sharedAVSystemController];
      [v4 attributeForKey:AVSystemController_PickableRoutesAttribute];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v15 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{AVSystemController_RouteDescriptionKey_RouteUID, v12}];
            if ([(NSString *)v10 rangeOfString:v3 options:1]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
              {
                sub_1001FEE74(v10);
              }

              guestHeadphonesRouteUID = self->_guestHeadphonesRouteUID;
              self->_guestHeadphonesRouteUID = v10;

              self->_guestiOSWaitForRouteState = 4;
              [(BTShareAudioSessionDaemon *)self _run];
              goto LABEL_16;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FEEB4(errorCopy);
  }

  v8 = @"error";
  v9 = errorCopy;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = objc_retainBlock(self->_progressHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 50, v5);
  }
}

- (void)_reportProgress:(int)progress
{
  v3 = *&progress;
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FEEF4(v3);
  }

  v5 = objc_retainBlock(self->_progressHandler);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, v3, 0);
    v5 = v6;
  }
}

- (void)_reportProgress:(int)progress info:(id)info
{
  v4 = *&progress;
  infoCopy = info;
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    if (v4 > 119)
    {
      if (v4 > 219)
      {
        if (v4 > 309)
        {
          v6 = infoCopy;
          if (v4 == 310)
          {
            v7 = "GuestHeadphonesConnected";
            goto LABEL_40;
          }

          if (v4 == 320)
          {
            v7 = "GuestHeadphonesWaitForRoute";
            goto LABEL_40;
          }
        }

        else
        {
          v6 = infoCopy;
          if (v4 == 220)
          {
            v7 = "GuestiOSWaitingForAccept";
            goto LABEL_40;
          }

          if (v4 == 300)
          {
            v7 = "GuestHeadphonesConnecting";
            goto LABEL_40;
          }
        }

LABEL_39:
        v7 = "?";
        goto LABEL_40;
      }

      if (v4 != 120)
      {
        v6 = infoCopy;
        if (v4 == 200)
        {
          v7 = "GuestiOSConnecting";
          goto LABEL_40;
        }

        if (v4 == 210)
        {
          v7 = "GuestiOSAuthenticated";
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v7 = "ShowPairInstructions";
    }

    else
    {
      if (v4 > 29)
      {
        if (v4 > 49)
        {
          v6 = infoCopy;
          if (v4 == 50)
          {
            v7 = "Failed";
            goto LABEL_40;
          }

          if (v4 == 100)
          {
            v7 = "Confirm";
            goto LABEL_40;
          }
        }

        else
        {
          v6 = infoCopy;
          if (v4 == 30)
          {
            v7 = "Interrupted";
            goto LABEL_40;
          }

          if (v4 == 40)
          {
            v7 = "Succeeded";
LABEL_40:
            LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _reportProgress:info:]", 30, "Progress: %s: %##@", v7, v6);
            goto LABEL_41;
          }
        }

        goto LABEL_39;
      }

      if (v4)
      {
        v6 = infoCopy;
        if (v4 == 10)
        {
          v7 = "Activated";
          goto LABEL_40;
        }

        if (v4 == 20)
        {
          v7 = "Invalidated";
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v7 = "Invalid";
    }

    v6 = infoCopy;
    goto LABEL_40;
  }

LABEL_41:
  v8 = objc_retainBlock(self->_progressHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v4, infoCopy);
  }
}

- (void)_reportProgressTriggeredDevice:(int)device
{
  v3 = *&device;
  bleDevice = [(SFDevice *)self->_triggeredDevice bleDevice];
  advertisementFields = [bleDevice advertisementFields];

  v6 = objc_alloc_init(NSMutableDictionary);
  if ((self->_prefOverrideColorCode & 0x80000000) == 0)
  {
    v7 = [NSNumber numberWithInt:?];
LABEL_5:
    v8 = v7;
LABEL_6:
    [v6 setObject:v8 forKeyedSubscript:@"colorCode"];
    goto LABEL_7;
  }

  if (self->_guestHeadphonesColorCode)
  {
    v7 = [NSNumber numberWithUnsignedInt:?];
    goto LABEL_5;
  }

  v8 = NSDictionaryGetNSNumber();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  guestHeadphonesName = self->_guestHeadphonesName;
  if (guestHeadphonesName)
  {
    [v6 setObject:guestHeadphonesName forKeyedSubscript:@"deviceName"];
  }

  if ((self->_prefOverrideProductID & 0x80000000) == 0)
  {
    v10 = [NSNumber numberWithInt:?];
LABEL_13:
    v11 = v10;
LABEL_14:
    [v6 setObject:v11 forKeyedSubscript:@"pid"];
    goto LABEL_15;
  }

  if (self->_guestHeadphonesProductID)
  {
    v10 = [NSNumber numberWithUnsignedInt:?];
    goto LABEL_13;
  }

  v11 = NSDictionaryGetNSNumber();
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:

  [(BTShareAudioSessionDaemon *)self _reportProgress:v3 info:v6];
}

- (void)userConfirmed:(BOOL)confirmed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E97EC;
  v4[3] = &unk_1002B67F0;
  confirmedCopy = confirmed;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)_runDefault
{
  if (!self->_invalidateCalled)
  {
    _runInit = [(BTShareAudioSessionDaemon *)self _runInit];
    if (_runInit == 4 || _runInit == 2)
    {
      _runScannerProxPairing = [(BTShareAudioSessionDaemon *)self _runScannerProxPairing];
      if (_runScannerProxPairing == 4 || _runScannerProxPairing == 2)
      {
        _runScannerNearbyInfo = [(BTShareAudioSessionDaemon *)self _runScannerNearbyInfo];
        if (_runScannerNearbyInfo == 4 || _runScannerNearbyInfo == 2)
        {
          _runAdvertiser = [(BTShareAudioSessionDaemon *)self _runAdvertiser];
          if (_runAdvertiser == 4 || _runAdvertiser == 2)
          {
            _runWaitForProxTrigger = [(BTShareAudioSessionDaemon *)self _runWaitForProxTrigger];
            if (_runWaitForProxTrigger == 4 || _runWaitForProxTrigger == 2)
            {
              _runConfirm = [(BTShareAudioSessionDaemon *)self _runConfirm];
              if (_runConfirm == 4 || _runConfirm == 2)
              {
                if (self->_triggerediOS)
                {
                  _runGuestiOSConnect = [(BTShareAudioSessionDaemon *)self _runGuestiOSConnect];
                  if (_runGuestiOSConnect != 4 && _runGuestiOSConnect != 2)
                  {
                    return;
                  }

                  _runGuestiOSPairSetupPublic = [(BTShareAudioSessionDaemon *)self _runGuestiOSPairSetupPublic];
                  if (_runGuestiOSPairSetupPublic != 4 && _runGuestiOSPairSetupPublic != 2)
                  {
                    return;
                  }

                  _runGuestiOSShareAudio = [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudio];
                  if (_runGuestiOSShareAudio != 2 && _runGuestiOSShareAudio != 4)
                  {
                    return;
                  }
                }

                else if (([(SFDevice *)self->_triggeredDevice paired]& 1) == 0)
                {
                  _runShowHeadphonesPairingInstructions = [(BTShareAudioSessionDaemon *)self _runShowHeadphonesPairingInstructions];
                  if (_runShowHeadphonesPairingInstructions != 4 && _runShowHeadphonesPairingInstructions != 2)
                  {
                    return;
                  }

                  _runWaitForGuestHeadphonesPairingMode = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphonesPairingMode];
                  if (_runWaitForGuestHeadphonesPairingMode != 4 && _runWaitForGuestHeadphonesPairingMode != 2)
                  {
                    return;
                  }
                }

                _runConnectGuestHeadphones = [(BTShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
                if (_runConnectGuestHeadphones == 4 || _runConnectGuestHeadphones == 2)
                {
                  _runWaitForGuestHeadphones = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphones];
                  if (_runWaitForGuestHeadphones == 4 || _runWaitForGuestHeadphones == 2)
                  {

                    [(BTShareAudioSessionDaemon *)self _runFinish];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_runStory6iOS
{
  if (!self->_invalidateCalled)
  {
    _runInit = [(BTShareAudioSessionDaemon *)self _runInit];
    if (_runInit == 4 || _runInit == 2)
    {
      _runGuestiOSConnect = [(BTShareAudioSessionDaemon *)self _runGuestiOSConnect];
      if (_runGuestiOSConnect == 4 || _runGuestiOSConnect == 2)
      {
        _runGuestiOSPairSetupPublic = [(BTShareAudioSessionDaemon *)self _runGuestiOSPairSetupPublic];
        if (_runGuestiOSPairSetupPublic == 4 || _runGuestiOSPairSetupPublic == 2)
        {
          _runGuestiOSShareAudio = [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudio];
          if (_runGuestiOSShareAudio == 4 || _runGuestiOSShareAudio == 2)
          {
            _runConnectGuestHeadphones = [(BTShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
            if (_runConnectGuestHeadphones == 4 || _runConnectGuestHeadphones == 2)
            {
              _runGuestiOSShareAudioConnect = [(BTShareAudioSessionDaemon *)self _runGuestiOSShareAudioConnect];
              if (_runGuestiOSShareAudioConnect == 4 || _runGuestiOSShareAudioConnect == 2)
              {

                [(BTShareAudioSessionDaemon *)self _runFinish];
              }
            }
          }
        }
      }
    }
  }
}

- (void)_runStory6TV
{
  if (!self->_invalidateCalled)
  {
    _runInit = [(BTShareAudioSessionDaemon *)self _runInit];
    if (_runInit == 4 || _runInit == 2)
    {
      _runScannerProxPairing = [(BTShareAudioSessionDaemon *)self _runScannerProxPairing];
      if (_runScannerProxPairing == 4 || _runScannerProxPairing == 2)
      {
        _runShareAudioServiceStart = [(BTShareAudioSessionDaemon *)self _runShareAudioServiceStart];
        if (_runShareAudioServiceStart == 4 || _runShareAudioServiceStart == 2)
        {
          _runAdvertiser = [(BTShareAudioSessionDaemon *)self _runAdvertiser];
          if (_runAdvertiser == 4 || _runAdvertiser == 2)
          {
            _runWaitForConfigRequestOrProxTrigger = [(BTShareAudioSessionDaemon *)self _runWaitForConfigRequestOrProxTrigger];
            if (_runWaitForConfigRequestOrProxTrigger == 4 || _runWaitForConfigRequestOrProxTrigger == 2)
            {
              _runConfirm = [(BTShareAudioSessionDaemon *)self _runConfirm];
              if (_runConfirm == 4 || _runConfirm == 2)
              {
                if (self->_configRequestReceived)
                {
                  _runWaitForConnectRequest = [(BTShareAudioSessionDaemon *)self _runWaitForConnectRequest];
                  if (_runWaitForConnectRequest != 2 && _runWaitForConnectRequest != 4)
                  {
                    return;
                  }
                }

                else if (([(SFDevice *)self->_triggeredDevice paired]& 1) == 0)
                {
                  _runShowHeadphonesPairingInstructions = [(BTShareAudioSessionDaemon *)self _runShowHeadphonesPairingInstructions];
                  if (_runShowHeadphonesPairingInstructions != 4 && _runShowHeadphonesPairingInstructions != 2)
                  {
                    return;
                  }

                  _runWaitForGuestHeadphonesPairingMode = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphonesPairingMode];
                  if (_runWaitForGuestHeadphonesPairingMode != 4 && _runWaitForGuestHeadphonesPairingMode != 2)
                  {
                    return;
                  }
                }

                _runConnectGuestHeadphones = [(BTShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
                if (_runConnectGuestHeadphones == 4 || _runConnectGuestHeadphones == 2)
                {
                  _runWaitForGuestHeadphones = [(BTShareAudioSessionDaemon *)self _runWaitForGuestHeadphones];
                  if (_runWaitForGuestHeadphones == 4 || _runWaitForGuestHeadphones == 2)
                  {

                    [(BTShareAudioSessionDaemon *)self _runFinish];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end