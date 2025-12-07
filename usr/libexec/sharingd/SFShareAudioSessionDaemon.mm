@interface SFShareAudioSessionDaemon
- (SFShareAudioSessionDaemon)init;
- (int)_runAdvertiser;
- (int)_runConfirm;
- (int)_runConnectGuestHeadphones;
- (int)_runFinish;
- (int)_runGuestiOSConnect;
- (int)_runGuestiOSPairSetupPublic;
- (int)_runGuestiOSShareAudio;
- (int)_runInit;
- (int)_runScannerNearbyInfo;
- (int)_runScannerProxPairing;
- (int)_runShowHeadphonesPairingInstructions;
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
- (void)_runGuestiOSShareAudioProcessResponse:(id)response error:(id)error;
- (void)_runGuestiOSShareAudioSendRequest;
- (void)activate;
- (void)invalidate;
- (void)proximityDeviceDidTrigger:(id)trigger;
- (void)userConfirmed;
@end

@implementation SFShareAudioSessionDaemon

- (SFShareAudioSessionDaemon)init
{
  v7.receiver = self;
  v7.super_class = SFShareAudioSessionDaemon;
  v2 = [(SFShareAudioSessionDaemon *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100498;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001005AC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFShareAudioSessionDaemon *)self _reportProgress:20];
    _cleanup = [(SFShareAudioSessionDaemon *)self _cleanup];
    if (dword_100970AB0 <= 30)
    {
      if (dword_100970AB0 != -1 || (_cleanup = _LogCategory_Initialize(), _cleanup))
      {
        sub_1001042C8(_cleanup, v4, v5);
      }
    }
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
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001042E4(&self->_prefRSSIThreshold);
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
  if (self->_triggeredDevice && self->_triggeredNeedsSetupDevice)
  {
    if (self->_bleProxPairingScanner)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100104328(self, a2, v2);
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100104344(self, a2, v2);
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
      v15[2] = sub_100100AA4;
      v15[3] = &unk_1008D05C0;
      v15[4] = v12;
      v15[5] = selfCopy;
      [(SFDeviceDiscovery *)v12 setDeviceFoundHandler:v15];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100100AC0;
      v14[3] = &unk_1008D05E8;
      v14[4] = v12;
      v14[5] = selfCopy;
      [(SFDeviceDiscovery *)v12 setDeviceChangedHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100100ADC;
      v13[3] = &unk_1008CF250;
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001043BC(self, a2, v2);
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_1001043D8(self, a2, v2);
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
      v16[2] = sub_100100E00;
      v16[3] = &unk_1008D05C0;
      v16[4] = v13;
      v16[5] = selfCopy;
      [(SFDeviceDiscovery *)v13 setDeviceFoundHandler:v16];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100100E1C;
      v15[3] = &unk_1008D05E8;
      v15[4] = v13;
      v15[5] = selfCopy;
      [(SFDeviceDiscovery *)v13 setDeviceChangedHandler:v15];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100100E38;
      v14[3] = &unk_1008CF250;
      v14[4] = v13;
      v14[5] = selfCopy;
      [(SFDeviceDiscovery *)v13 activateWithCompletion:v14];
    }

    return 4;
  }
}

- (int)_runAdvertiser
{
  selfCopy = self;
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (self->_triggeredDevice)
  {
    if (bleNearbyActionAdvertiser)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100104450(self, a2, v2);
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_10010446C(self, a2, v2);
        }
      }

      v7 = objc_alloc_init(SFService);
      v8 = selfCopy->_bleNearbyActionAdvertiser;
      selfCopy->_bleNearbyActionAdvertiser = v7;
      v9 = v7;

      [(SFService *)v9 setAdvertiseRate:60];
      [(SFService *)v9 setDeviceActionType:27];
      [(SFService *)v9 setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFService *)v9 setIdentifier:@"a5989962-d94b-4755-bbca-59ecf498ad2f"];
      [(SFService *)v9 setLabel:@"ShareAudio"];
      [(SFService *)v9 setNeedsSetup:1];
      [(SFService *)v9 setPairSetupDisabled:1];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001010C0;
      v10[3] = &unk_1008CF250;
      v10[4] = v9;
      v10[5] = selfCopy;
      [(SFService *)v9 activateWithCompletion:v10];
    }

    return 4;
  }
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

- (int)_runConfirm
{
  confirmState = self->_confirmState;
  if (confirmState != 4 && confirmState != 2)
  {
    if (confirmState)
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_confirmState;
          }

          confirmState = self->_confirmState;
        }

        LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _runConfirm]", 30, "Confirm not ready yet (%d)\n", confirmState);
      }
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001044E4(self);
      }

      self->_confirmState = 1;
      [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:100];
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_guestiOSConnectState;
          }

          guestiOSConnectState = selfCopy->_guestiOSConnectState;
        }

        LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _runGuestiOSConnect]", 30, "Guest iOS session not ready yet (%d)\n", guestiOSConnectState);
      }
    }

    else
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100104528(self, a2, v2);
        }
      }

      selfCopy->_guestiOSConnectState = 1;
      [(SFShareAudioSessionDaemon *)selfCopy _reportProgressTriggeredDevice:200];
      v6 = objc_alloc_init(SFSession);
      guestiOSSession = selfCopy->_guestiOSSession;
      selfCopy->_guestiOSSession = v6;
      v8 = v6;

      [(SFSession *)v8 setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFSession *)v8 setLabel:@"ShareAudio"];
      [(SFSession *)v8 setPeerDevice:selfCopy->_triggeredDevice];
      [(SFSession *)v8 setServiceIdentifier:SFServiceIdentifierShareAudio];
      [(SFSession *)v8 setSessionFlags:1];
      [(SFSession *)v8 setStatusMonitor:selfCopy->_statusMonitor];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10010158C;
      v14[3] = &unk_1008CF250;
      v14[4] = v8;
      v14[5] = selfCopy;
      [(SFSession *)v8 setErrorHandler:v14];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100101690;
      v13[3] = &unk_1008CE028;
      v13[4] = v8;
      v13[5] = selfCopy;
      [(SFSession *)v8 setInterruptionHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001016E8;
      v12[3] = &unk_1008CE028;
      v12[4] = v8;
      v12[5] = selfCopy;
      [(SFSession *)v8 setInvalidationHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100101740;
      v11[3] = &unk_1008CE028;
      v11[4] = v8;
      v11[5] = selfCopy;
      [(SFSession *)v8 setSessionStartedHandler:v11];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001017D0;
      v10[3] = &unk_1008CF250;
      v10[4] = v8;
      v10[5] = selfCopy;
      [(SFSession *)v8 activateWithCompletion:v10];
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_guestiOSPairSetupPublicState;
          }

          guestiOSPairSetupPublicState = selfCopy->_guestiOSPairSetupPublicState;
        }

        LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _runGuestiOSPairSetupPublic]", 30, "Guest iOS PairSetup hasn't succeeded yet (%d)\n", guestiOSPairSetupPublicState);
      }
    }

    else
    {
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100104634(self, a2, v2);
        }
      }

      selfCopy->_guestiOSPairSetupPublicState = 1;
      v6 = selfCopy->_guestiOSSession;
      [(SFSession *)v6 setFixedPIN:@"public"];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100101A20;
      v8[3] = &unk_1008CF250;
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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSShareAudioState;
          }

          guestiOSShareAudioState = self->_guestiOSShareAudioState;
        }

        LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _runGuestiOSShareAudio]", 30, "Guest iOS ShareAudio hasn't succeeded yet (%d)\n", guestiOSShareAudioState);
      }
    }

    else
    {
      self->_guestiOSShareAudioState = 1;
      [(SFShareAudioSessionDaemon *)self _runGuestiOSShareAudioSendRequest];
    }
  }

  return self->_guestiOSShareAudioState;
}

- (void)_runGuestiOSShareAudioSendRequest
{
  selfCopy = self;
  if (dword_100970AB0 <= 30)
  {
    if (dword_100970AB0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001046AC(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = MGCopyAnswer();
  v8 = v5;
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"btAd"];
    v9 = GestaltCopyAnswer();
    if (v9)
    {
      [v4 setObject:v9 forKeyedSubscript:@"dname"];
    }

    guestiOSSession = selfCopy->_guestiOSSession;
    dispatchQueue = selfCopy->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100101D94;
    v13[3] = &unk_1008CDFB8;
    v13[4] = guestiOSSession;
    v13[5] = selfCopy;
    v13[6] = v4;
    v12 = guestiOSSession;
    [(SFSession *)v12 appleIDAddProof:v4 dispatchQueue:dispatchQueue completion:v13];
  }

  else
  {
    if (dword_100970AB0 <= 90)
    {
      if (dword_100970AB0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001046C8(v5, v6, v7);
      }
    }

    selfCopy->_guestiOSShareAudioState = 3;
    v9 = NSErrorF(NSOSStatusErrorDomain, 4294960535, "No iOS BT Addr");
    [(SFShareAudioSessionDaemon *)selfCopy _reportError:v9];
  }
}

- (void)_runGuestiOSShareAudioProcessResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = responseCopy;
  v9 = errorCopy;
  if (v9)
  {
    if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_100104768(v9);
    }

    self->_guestiOSShareAudioState = 3;
    [(SFShareAudioSessionDaemon *)self _reportError:v9];
  }

  else
  {
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001047A8(v8);
    }

    guestiOSSession = self->_guestiOSSession;
    dispatchQueue = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100102054;
    v13[3] = &unk_1008D0638;
    v13[4] = guestiOSSession;
    v13[5] = self;
    v14 = v8;
    v12 = guestiOSSession;
    [(SFSession *)v12 appleIDVerifyProof:v14 dispatchQueue:dispatchQueue completion:v13];
  }
}

- (int)_runShowHeadphonesPairingInstructions
{
  result = self->_guestHeadphonesInstructionsState;
  if (!result)
  {
    if (!self->_triggeredNeedsSetupDevice)
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001048E8(self);
      }

      [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:120];
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
    v4 = [(SFSession *)self->_guestiOSSession pairingDeriveKeyForIdentifier:@"ShareAudio" keyLength:16];
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _runConnectGuestHeadphones]", 30, "Guest headphone connect start: DA %@, GK %{mask}\n", self->_guestHeadphonesAddress, v4);
    }

    self->_guestHeadphonesConnectState = 1;
    [(SFShareAudioSessionDaemon *)self _reportProgressTriggeredDevice:300];
    v5 = objc_alloc_init(SFBluetoothPairingSession);
    objc_storeStrong(&self->_guestHeadphonesPairingSession, v5);
    [v5 setDeviceAddress:self->_guestHeadphonesAddress];
    [v5 setDispatchQueue:self->_dispatchQueue];
    if (self->_triggerediOS || ![(SFDevice *)self->_triggeredDevice paired])
    {
      [v5 setGuestKey:v4];
      [v5 setGuestMode:1];
      if (self->_triggerediOS && !self->_guestiOSContact)
      {
        [v5 setUserNotInContacts:1];
      }
    }

    else
    {
      [v5 setAggregate:1];
      [v5 setConnectOnly:1];
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001024B4;
    v6[3] = &unk_1008CF250;
    v6[4] = v5;
    v6[5] = self;
    [v5 setCompletionHandler:v6];
    [v5 activate];

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
      if (dword_100970AB0 <= 30)
      {
        if (dword_100970AB0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_guestiOSWaitForRouteState;
          }

          guestiOSWaitForRouteState = self->_guestiOSWaitForRouteState;
        }

        LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _runWaitForGuestHeadphones]", 30, "Guest iOS wait for headphones hasn't succeeded yet (%d)\n", guestiOSWaitForRouteState);
      }
    }

    else
    {
      if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104988(self);
      }

      self->_guestiOSWaitForRouteState = 1;
      v5 = [(SFShareAudioSessionDaemon *)self _reportProgress:320];
      sharedAVSystemController = [off_100970B20(v5) sharedAVSystemController];
      v7 = off_100970B28(sharedAVSystemController);
      v14 = v7;
      v8 = [NSArray arrayWithObjects:&v14 count:1];

      v10 = off_100970B30(v9);
      [sharedAVSystemController setAttribute:v8 forKey:v10 error:0];

      v11 = +[NSNotificationCenter defaultCenter];
      v12 = off_100970B28(v11);
      [v11 addObserver:self selector:"_pickableRoutesChanged:" name:v12 object:sharedAVSystemController];

      self->_observingPickableRoutes = 1;
      [(SFShareAudioSessionDaemon *)self _pickableRoutesChanged];
    }
  }

  return self->_guestiOSWaitForRouteState;
}

- (int)_runFinish
{
  v3 = self->_guestHeadphonesRouteUID;
  v6 = v3;
  if (v3)
  {
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001049CC(v6);
    }

    v12 = @"mediaRouteID";
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(SFShareAudioSessionDaemon *)self _reportProgress:40 info:v7];
  }

  else
  {
    if (dword_100970AB0 <= 90)
    {
      if (dword_100970AB0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100104A0C(v3, v4, v5);
      }
    }

    v10 = @"error";
    v7 = NSErrorWithOSStatusF(4294960569, "Audio route not found");
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [(SFShareAudioSessionDaemon *)self _reportProgress:50 info:v8];
  }

  [(SFShareAudioSessionDaemon *)self _cleanup];
  return 4;
}

- (void)_cleanup
{
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

  [(SFBluetoothPairingSession *)self->_guestHeadphonesPairingSession invalidate];
  guestHeadphonesPairingSession = self->_guestHeadphonesPairingSession;
  self->_guestHeadphonesPairingSession = 0;

  [(SFSession *)self->_guestiOSSession invalidate];
  guestiOSSession = self->_guestiOSSession;
  self->_guestiOSSession = 0;

  if (self->_observingPickableRoutes)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = off_100970B28(v9);
    [v9 removeObserver:self name:v10 object:0];

    self->_observingPickableRoutes = 0;
  }

  [(SFClient *)self->_preventProxCardsClient invalidate];
  preventProxCardsClient = self->_preventProxCardsClient;
  self->_preventProxCardsClient = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  triggeredDevice = self->_triggeredDevice;
  self->_triggeredDevice = 0;

  triggeredNeedsSetupDevice = self->_triggeredNeedsSetupDevice;
  self->_triggeredNeedsSetupDevice = 0;

  self->_triggerediOS = 0;
  proximityController = self->_proximityController;

  [(SDProximityController *)proximityController clearDeviceList];
}

- (void)_bleScannerNearbyInfoDeviceFound:(id)found
{
  foundCopy = found;
  if (!self->_triggeredDevice)
  {
    v11 = foundCopy;
    if ([foundCopy paired])
    {
      sub_100104B90();
      goto LABEL_23;
    }

    if (([v11 deviceFlags] & 0x800) == 0)
    {
      sub_100104B18();
      goto LABEL_23;
    }

    bleDevice = [v11 bleDevice];
    rssiEstimate = [bleDevice rssiEstimate];
    [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v11];
    v8 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v11];
    if (v8 == 2)
    {
      if (dword_100970AB0 <= 50)
      {
        if (dword_100970AB0 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          sub_100104A68(v8, v9, v10);
        }
      }

      if (_os_feature_enabled_impl())
      {
        goto LABEL_17;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      if (dword_100970AB0 <= 50 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
      {
        sub_100104A28(v11);
      }

      goto LABEL_22;
    }

    if ((rssiEstimate & 0x80000000) == 0 || rssiEstimate < self->_prefRSSIThreshold)
    {
      sub_100104A84(self, rssiEstimate, v11);
LABEL_22:

LABEL_23:
      foundCopy = v11;
      goto LABEL_24;
    }

LABEL_17:
    if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _bleScannerNearbyInfoDeviceFound:]", 30, "Triggering proximity ShareAudio (iOS): RSSI %d, %@\n", rssiEstimate, v11);
    }

    objc_storeStrong(&self->_triggeredDevice, found);
    self->_triggerediOS = 1;
    [(SFShareAudioSessionDaemon *)self _run];
    goto LABEL_22;
  }

LABEL_24:
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
      v10 = objc_msgSend_advertisementFields(bleDevice);

      if ((needsSetup & 1) == 0 && self->_prefRespectDeviceSupport && ([v6 deviceFlags] & 0x800) == 0)
      {
        sub_100104C08();
        goto LABEL_55;
      }

      if (CFDictionaryGetInt64Ranged() != 8208 && (CFDictionaryGetInt64Ranged() & 0x24) != 0)
      {
        sub_100104C80();
        goto LABEL_55;
      }

      if (CFDictionaryGetInt64())
      {
        sub_100104CF8();
        goto LABEL_55;
      }

      bleDevice2 = [v6 bleDevice];
      smoothedRSSI = [bleDevice2 smoothedRSSI];
      v13 = smoothedRSSI;
      if ((smoothedRSSI & 0x80000000) == 0)
      {
        sub_100104FD0(smoothedRSSI, v6);
        goto LABEL_54;
      }

      if (needsSetup)
      {
        v14 = 4294967236;
      }

      else
      {
        v14 = 4294967251;
      }

      if ((needsSetup & 1) == 0)
      {
        [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v6];
        v15 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v6];
        if (v15 == 2)
        {
          if (dword_100970AB0 <= 50)
          {
            if (dword_100970AB0 != -1 || (v15 = _LogCategory_Initialize(), v15))
            {
              sub_100104DE8(v15, v16, v17);
            }
          }

          _os_feature_enabled_impl();
        }

        else if (_os_feature_enabled_impl())
        {
          sub_100104D70();
          goto LABEL_54;
        }
      }

      v18 = _os_feature_enabled_impl();
      if (v14 > v13 && (v18 & 1) == 0)
      {
        sub_100104E04(v13, v14, v6);
        goto LABEL_54;
      }

      Int64Ranged = CFDictionaryGetInt64Ranged();
      bluetoothAddress = [bleDevice2 bluetoothAddress];
      v21 = bluetoothAddress;
      if (Int64Ranged && [bluetoothAddress length] == 6)
      {
        v36 = v13;
        v37 = needsSetup;
        v38 = foundCopy;
        v41 = bleDevice2;
        v42 = v6;
        v40 = v21;
        v22 = NSPrintF("%.6a", COERCE_DOUBLE([v21 bytes]));
        sharedAVSystemController = [off_100970B20(v22) sharedAVSystemController];
        v24 = off_100970B38(sharedAVSystemController);
        v39 = sharedAVSystemController;
        v25 = [sharedAVSystemController attributeForKey:v24];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v26 = v25;
        Int64 = [v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (Int64)
        {
          v28 = Int64;
          v29 = *v44;
          while (2)
          {
            v30 = 0;
            do
            {
              if (*v44 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v43 + 1) + 8 * v30);
              (off_100970B40)(Int64);
              Int64 = CFDictionaryGetInt64();
              if (Int64)
              {
                v32 = (off_100970B48)(Int64);
                v33 = [v31 objectForKeyedSubscript:v32];

                if ([v33 rangeOfString:v22 options:1] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v6 = v42;
                  if (dword_100970AB0 <= 10 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100104E94(v42);
                  }

                  bleDevice2 = v41;
                  v21 = v40;
                  goto LABEL_53;
                }
              }

              v30 = v30 + 1;
            }

            while (v28 != v30);
            Int64 = [v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
            v28 = Int64;
            if (Int64)
            {
              continue;
            }

            break;
          }
        }

        v6 = v42;
        foundCopy = v38;
        v21 = v40;
        bleDevice2 = v41;
        p_triggeredNeedsSetupDevice = &self->_triggeredNeedsSetupDevice;
        needsSetup = v37;
        v13 = v36;
      }

      if ((needsSetup & 1) == 0 && ![v6 paired])
      {
        goto LABEL_43;
      }

      if (v21)
      {
        if ([v21 length] == 6)
        {
          v34 = NSPrintF("%.6a", COERCE_DOUBLE([v21 bytes]));
          guestHeadphonesAddress = self->_guestHeadphonesAddress;
          self->_guestHeadphonesAddress = v34;

          if (needsSetup)
          {
            if (!self->_triggeredDevice)
            {
              objc_storeStrong(&self->_triggeredDevice, foundCopy);
            }

            goto LABEL_44;
          }

LABEL_43:
          p_triggeredNeedsSetupDevice = &self->_triggeredDevice;
LABEL_44:
          objc_storeStrong(p_triggeredNeedsSetupDevice, foundCopy);
          if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _bleScannerProxPairingDeviceFound:]", 30, "Triggering proximity ShareAudio (Headphones): RSSI %d, %@\n", v13, v6);
          }

          [(SFShareAudioSessionDaemon *)self _run];
          goto LABEL_53;
        }

        sub_100104ED4(v21, v6);
      }

      else
      {
        sub_100104F54();
      }

LABEL_53:

LABEL_54:
LABEL_55:
    }
  }
}

- (void)_pickableRoutesChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001032C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_pickableRoutesChanged
{
  if (self->_guestiOSWaitForRouteState == 1)
  {
    v3 = self->_guestHeadphonesAddress;
    v4 = v3;
    if (v3)
    {
      sharedAVSystemController = [off_100970B20(v3) sharedAVSystemController];
      v6 = off_100970B38(sharedAVSystemController);
      v17 = sharedAVSystemController;
      v7 = [sharedAVSystemController attributeForKey:v6];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            v14 = (off_100970B48)(v9);
            v15 = [v13 objectForKeyedSubscript:v14];

            if ([(NSString *)v15 rangeOfString:v4 options:1]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
              {
                sub_10010506C(v15);
              }

              guestHeadphonesRouteUID = self->_guestHeadphonesRouteUID;
              self->_guestHeadphonesRouteUID = v15;

              self->_guestiOSWaitForRouteState = 4;
              [(SFShareAudioSessionDaemon *)self _run];
              goto LABEL_16;
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          v10 = v9;
          if (v9)
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
  if (dword_100970AB0 <= 90 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001050AC(errorCopy);
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
  if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001050EC(v3);
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
  if (dword_100970AB0 <= 30 && (dword_100970AB0 != -1 || _LogCategory_Initialize()))
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
            LogPrintF(&dword_100970AB0, "[SFShareAudioSessionDaemon _reportProgress:info:]", 30, "Progress: %s: %##@\n", v7, v6);
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
  v11 = objc_msgSend_advertisementFields(bleDevice);

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

  if ((self->_prefOverrideProductID & 0x80000000) == 0)
  {
    v9 = [NSNumber numberWithInt:?];
LABEL_11:
    v10 = v9;
LABEL_12:
    [v6 setObject:v10 forKeyedSubscript:@"pid"];
    goto LABEL_13;
  }

  if (self->_guestHeadphonesProductID)
  {
    v9 = [NSNumber numberWithUnsignedInt:?];
    goto LABEL_11;
  }

  v10 = NSDictionaryGetNSNumber();
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(SFShareAudioSessionDaemon *)self _reportProgress:v3 info:v6];
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  v4 = triggerCopy;
  if (dword_100970AB0 <= 50)
  {
    v6 = triggerCopy;
    if (dword_100970AB0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100105248(v4);
      v4 = v6;
    }
  }
}

- (void)userConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103B58;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    _runInit = [(SFShareAudioSessionDaemon *)self _runInit];
    if (_runInit == 4 || _runInit == 2)
    {
      _runScannerNearbyInfo = [(SFShareAudioSessionDaemon *)self _runScannerNearbyInfo];
      if (_runScannerNearbyInfo == 4 || _runScannerNearbyInfo == 2)
      {
        _runScannerProxPairing = [(SFShareAudioSessionDaemon *)self _runScannerProxPairing];
        if (_runScannerProxPairing == 4 || _runScannerProxPairing == 2)
        {
          _runAdvertiser = [(SFShareAudioSessionDaemon *)self _runAdvertiser];
          if (_runAdvertiser == 4 || _runAdvertiser == 2)
          {
            _runWaitForProxTrigger = [(SFShareAudioSessionDaemon *)self _runWaitForProxTrigger];
            if (_runWaitForProxTrigger == 4 || _runWaitForProxTrigger == 2)
            {
              _runConfirm = [(SFShareAudioSessionDaemon *)self _runConfirm];
              if (_runConfirm == 4 || _runConfirm == 2)
              {
                if (self->_triggerediOS)
                {
                  _runGuestiOSConnect = [(SFShareAudioSessionDaemon *)self _runGuestiOSConnect];
                  if (_runGuestiOSConnect != 4 && _runGuestiOSConnect != 2)
                  {
                    return;
                  }

                  _runGuestiOSPairSetupPublic = [(SFShareAudioSessionDaemon *)self _runGuestiOSPairSetupPublic];
                  if (_runGuestiOSPairSetupPublic != 4 && _runGuestiOSPairSetupPublic != 2)
                  {
                    return;
                  }

                  _runGuestiOSShareAudio = [(SFShareAudioSessionDaemon *)self _runGuestiOSShareAudio];
                  if (_runGuestiOSShareAudio != 2 && _runGuestiOSShareAudio != 4)
                  {
                    return;
                  }
                }

                else if (([(SFDevice *)self->_triggeredDevice paired]& 1) == 0)
                {
                  _runShowHeadphonesPairingInstructions = [(SFShareAudioSessionDaemon *)self _runShowHeadphonesPairingInstructions];
                  if (_runShowHeadphonesPairingInstructions != 4 && _runShowHeadphonesPairingInstructions != 2)
                  {
                    return;
                  }

                  _runWaitForGuestHeadphonesPairingMode = [(SFShareAudioSessionDaemon *)self _runWaitForGuestHeadphonesPairingMode];
                  if (_runWaitForGuestHeadphonesPairingMode != 4 && _runWaitForGuestHeadphonesPairingMode != 2)
                  {
                    return;
                  }
                }

                _runConnectGuestHeadphones = [(SFShareAudioSessionDaemon *)self _runConnectGuestHeadphones];
                if (_runConnectGuestHeadphones == 4 || _runConnectGuestHeadphones == 2)
                {
                  _runWaitForGuestHeadphones = [(SFShareAudioSessionDaemon *)self _runWaitForGuestHeadphones];
                  if (_runWaitForGuestHeadphones == 4 || _runWaitForGuestHeadphones == 2)
                  {

                    [(SFShareAudioSessionDaemon *)self _runFinish];
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