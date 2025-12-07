@interface SFBluetoothPairingSession
- (SFBluetoothPairingSession)init;
- (int)_btEnsureStarted;
- (uint64_t)_activate;
- (uint64_t)_btDeletePairingAndRetry;
- (uint64_t)_btEnsureStarted;
- (void)_activate;
- (void)_btDeletePairingAndRetry;
- (void)_btEnsureStopped;
- (void)_completed:(int)_completed;
- (void)_invalidate;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFBluetoothPairingSession

- (SFBluetoothPairingSession)init
{
  v6.receiver = self;
  v6.super_class = SFBluetoothPairingSession;
  v2 = [(SFBluetoothPairingSession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucat = &gLogCategory_SFBluetoothPairingSession;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_btSession)
  {
    [SFBLEScanner dealloc];
    goto LABEL_6;
  }

  if (self->_btSessionAttaching)
  {
LABEL_6:
    [SFBluetoothPairingSession dealloc];
    goto LABEL_7;
  }

  if (!self->_completionHandler)
  {
    v4.receiver = self;
    v4.super_class = SFBluetoothPairingSession;
    [(SFBluetoothPairingSession *)&v4 dealloc];
    return;
  }

LABEL_7:
  v2 = [SFBluetoothPairingSession dealloc];
  [(SFBluetoothPairingSession *)v2 activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFBluetoothPairingSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  p_ucat = &self->_ucat;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucat = *p_ucat;
    }

    v5 = "no";
    if (self->_guestMode)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    if (self->_disconnectOnly)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (self->_userNotInContacts)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (self->_temporaryManagedPairingMode)
    {
      v5 = "yes";
    }

    LogPrintF(ucat, "[SFBluetoothPairingSession _activate]", 30, "Activate: DA %@, GA %@, GM %s, DO %s, UNIC %s, TMPM %s\n", self->_deviceAddress, self->_guestAddress, v6, v7, v8, v5);
  }

LABEL_16:
  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_transaction)
  {
    v9 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v9;

    if (!self->_transaction)
    {
      v11 = *p_ucat;
      v12 = **p_ucat;
      if (v12 <= 60)
      {
        if (v12 != -1)
        {
LABEL_20:
          LogPrintF(v11, "[SFBluetoothPairingSession _activate]", 60, "### Create transaction failed\n");
          goto LABEL_22;
        }

        if (_LogCategory_Initialize())
        {
          v11 = *p_ucat;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_22:
  if (self->_timeoutTimer)
  {
    goto LABEL_25;
  }

  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v13;

  v15 = self->_timeoutTimer;
  if (v15)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__SFBluetoothPairingSession__activate__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    SFDispatchTimerSet(self->_timeoutTimer, 15.0, -1.0, -10.0);
    dispatch_resume(self->_timeoutTimer);
LABEL_25:
    v16 = [objc_alloc(getWPClientClass()) initWithQueue:self->_dispatchQueue machName:0];
    wpClient = self->_wpClient;
    self->_wpClient = v16;

    [(WPClient *)self->_wpClient disableScanning];
    _btEnsureStarted = [(SFBluetoothPairingSession *)self _btEnsureStarted];
    if (!_btEnsureStarted)
    {
      return;
    }

    goto LABEL_26;
  }

  [(SFBluetoothPairingSession *)p_ucat _activate];
  _btEnsureStarted = v20;
LABEL_26:
  [(SFBluetoothPairingSession *)self _completed:_btEnsureStarted];
}

uint64_t __38__SFBluetoothPairingSession__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[17];
  if (*v3 <= 60)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SFBluetoothPairingSession _activate]_block_invoke", 60, "### Timeout\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = v2[17];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v2 _completed:4294960574];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFBluetoothPairingSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFBluetoothPairingSession _invalidate]", 30, "Invalidate\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_invalidateCalled = 1;

  [(SFBluetoothPairingSession *)self _completed:4294960573];
}

- (void)_completed:(int)_completed
{
  v26[1] = *MEMORY[0x1E69E9840];
  [(SFBluetoothPairingSession *)self _btEnsureStopped];
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v6 = retryTimer;
    dispatch_source_cancel(v6);
    v7 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v9 = timeoutTimer;
    dispatch_source_cancel(v9);
    v10 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(WPClient *)self->_wpClient invalidate];
  wpClient = self->_wpClient;
  self->_wpClient = 0;

  if (self->_completionHandler)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = self->_ucat;
      }

      Current = CFAbsoluteTimeGetCurrent();
      LogPrintF(ucat, "[SFBluetoothPairingSession _completed:]", 30, "Pairing completed (%.2f seconds): %#m\n", Current - self->_startTime);
    }

LABEL_10:
    completionHandler = self->_completionHandler;
    if (_completed)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A768];
      _completedCopy = _completed;
      v25 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v19 = v18;
      v20 = @"?";
      if (v18)
      {
        v20 = v18;
      }

      v26[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v22 = [v15 errorWithDomain:v16 code:_completedCopy userInfo:v21];
      completionHandler[2](completionHandler, v22);
    }

    else
    {
      completionHandler[2](self->_completionHandler, 0);
    }

    v23 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (int)_btEnsureStarted
{
  v105 = *MEMORY[0x1E69E9840];
  self->_btStarted = 1;
  if (self->_btSessionAttaching || self->_btSession)
  {
    goto LABEL_3;
  }

  *&v90[0] = 0;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_41;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTSession attach\n");
  }

LABEL_41:
  *&v90[0] = _btSessionEventHandler_0;
  selfCopy = self;

  v22 = softLinkBTSessionAttachWithQueue_0(self->_ucat->var4, v90, selfCopy, selfCopy->_dispatchQueue);
  if (v22)
  {
    v23 = v22;
    CFRelease(selfCopy);
    Default = (v23 + 310000);
    v25 = self->_ucat;
    if (v25->var0 > 60)
    {
      goto LABEL_199;
    }

    if (v25->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v25 = self->_ucat;
    }

    LogPrintF(v25, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTSesson attach failed: %#m\n", (v23 + 310000));
    goto LABEL_199;
  }

  self->_btSessionAttaching = 1;
LABEL_3:
  if (self->_btSessionAddedServiceCallback || !self->_btSession)
  {
    goto LABEL_14;
  }

  v3 = self->_ucat;
  if (v3->var0 <= 30)
  {
    if (v3->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v3 = self->_ucat;
    }

    LogPrintF(v3, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTSession add callbacks\n");
  }

LABEL_12:
  v5 = softLinkBTServiceAddCallbacks(self->_btSession, _btServiceEventHandler, self);
  if (v5)
  {
    Default = (v5 + 310000);
    v70 = self->_ucat;
    if (v70->var0 > 60)
    {
      goto LABEL_199;
    }

    if (v70->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v70 = self->_ucat;
    }

    LogPrintF(v70, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTSesson add service callbacks failed: %#m\n", Default);
    goto LABEL_199;
  }

  self->_btSessionAddedServiceCallback = 1;
LABEL_14:
  p_btDevice = &self->_btDevice;
  if (self->_btDevice || !self->_btSession)
  {
    goto LABEL_15;
  }

  p_ucat = &self->_ucat;
  v9 = self->_ucat;
  if (v9->var0 <= 30)
  {
    if (v9->var0 != -1)
    {
LABEL_26:
      LogPrintF(v9, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTSession device lookup\n");
      goto LABEL_28;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *p_ucat;
      goto LABEL_26;
    }
  }

LABEL_28:
  deviceAddress = self->_deviceAddress;
  if (!deviceAddress)
  {
    [(SFBluetoothPairingSession *)&self->_ucat _btEnsureStarted];
    Default = LODWORD(v90[0]);
    goto LABEL_200;
  }

  v89 = 0;
  v88 = 0;
  uTF8String = [(NSString *)deviceAddress UTF8String];
  v13 = softLinkBTDeviceAddressFromString_0(uTF8String, &v88);
  if (v13)
  {
    Default = (v13 + 310000);
    v71 = *p_ucat;
    var0 = (*p_ucat)->var0;
    if (var0 > 60)
    {
      goto LABEL_199;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v71 = *p_ucat;
    }

    LogPrintF(v71, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### Bad BTDevice address: '%@'\n", self->_deviceAddress);
    goto LABEL_199;
  }

  v14 = softLinkBTDeviceFromAddress(self->_btSession, &v88, &self->_btDevice);
  if (v14)
  {
    Default = (v14 + 310000);
    v73 = *p_ucat;
    v74 = (*p_ucat)->var0;
    if (v74 > 60)
    {
      goto LABEL_199;
    }

    if (v74 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v73 = *p_ucat;
    }

    LogPrintF(v73, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTDevice lookup %@ failed: %#m\n", self->_deviceAddress, Default);
    goto LABEL_199;
  }

  AddressString_0 = softLinkBTDeviceGetAddressString_0(self->_btDevice, self->_btAddrStr, 32);
  if (AddressString_0)
  {
    Default = (AddressString_0 + 310000);
    v75 = *p_ucat;
    v76 = (*p_ucat)->var0;
    if (v76 > 60)
    {
      goto LABEL_199;
    }

    if (v76 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v75 = *p_ucat;
    }

    LogPrintF(v75, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceGetAddressString start %@ failed: %#m\n", self->_deviceAddress, Default);
    goto LABEL_199;
  }

  guestAddress = self->_guestAddress;
  if (!guestAddress)
  {
    v87 = 0;
    PairingStatus_0 = softLinkBTDeviceGetPairingStatus_0(*p_btDevice, &v87);
    v20 = *p_ucat;
    if (PairingStatus_0)
    {
      if (*v20 > 60)
      {
        goto LABEL_58;
      }

      if (*v20 != -1 || (v26 = _LogCategory_Initialize(), v20 = *p_ucat, v26))
      {
        LogPrintF(v20, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### Device get pairing status failed: %#m\n", (PairingStatus_0 + 310000));
        v20 = *p_ucat;
      }
    }

    if (*v20 <= 30)
    {
      if (*v20 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_58;
        }

        v20 = *p_ucat;
      }

      if (v87)
      {
        v27 = "already paired";
      }

      else
      {
        v27 = "not paired";
      }

      LogPrintF(v20, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTSession device %@ pairing status: %s\n", self->_deviceAddress, v27);
    }

LABEL_58:
    if (!v87 || !self->_connectOnly)
    {
      goto LABEL_15;
    }

    v28 = *p_ucat;
    v29 = (*p_ucat)->var0;
    if (v29 <= 30)
    {
      if (v29 != -1)
      {
LABEL_62:
        LogPrintF(v28, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "Already paired, grabbing existing properties");
        goto LABEL_64;
      }

      if (_LogCategory_Initialize())
      {
        v28 = *p_ucat;
        goto LABEL_62;
      }
    }

LABEL_64:
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    softLinkBTDeviceGetName_0(*p_btDevice, v90, 248);
    if (LOBYTE(v90[0]))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v90];
      name = self->_name;
      self->_name = v30;
    }

    v86 = 0;
    v85 = 0;
    softLinkBTDeviceGetDeviceId(self->_btDevice, &v86, &v85 + 4, &v85, &self->_deviceVersion);
    v84 = 0;
    Default = softLinkBTAccessoryManagerGetDefault(self->_btSession, &v84);
    if (Default)
    {
      v32 = *p_ucat;
      v33 = (*p_ucat)->var0;
      if (v33 <= 60)
      {
        if (v33 != -1)
        {
LABEL_69:
          LogPrintF(v32, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTAccessoryManagerGetDefault failed: %#m\n", (Default + 310000));
          goto LABEL_170;
        }

        if (_LogCategory_Initialize())
        {
          v32 = *p_ucat;
          goto LABEL_69;
        }
      }
    }

LABEL_170:
    if (!v84)
    {
      goto LABEL_198;
    }

    v83 = 0;
    FeatureCapability = softLinkBTAccessoryManagerGetFeatureCapability(v84, *p_btDevice, 1, &v83);
    if (!FeatureCapability)
    {
      v62 = v83 != 0;
      goto LABEL_181;
    }

    v59 = FeatureCapability;
    v60 = *p_ucat;
    v61 = (*p_ucat)->var0;
    if (v61 <= 60)
    {
      if (v61 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_180;
        }

        v60 = *p_ucat;
      }

      LogPrintF(v60, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTAccessoryManagerGetFeatureCapability in ear failed: %#m\n", (v59 + 310000));
    }

LABEL_180:
    v62 = 0;
    v83 = 0;
LABEL_181:
    self->_inEarDetection = v62;
    v82 = 0;
    Default = softLinkBTAccessoryManagerGetFeatureCapability(v84, self->_btDevice, 26, &v82);
    if (!Default)
    {
      softwareVolume = v82 != 0;
      goto LABEL_188;
    }

    v63 = *p_ucat;
    v64 = (*p_ucat)->var0;
    if (v64 <= 60)
    {
      if (v64 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_187;
        }

        v63 = *p_ucat;
      }

      LogPrintF(v63, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTAccessoryManagerGetFeatureCapability software volume failed: %#m\n", (Default + 310000));
    }

LABEL_187:
    softwareVolume = 0;
    v82 = 0;
LABEL_188:
    self->_softwareVolume = softwareVolume;
    v66 = self->_ucat;
    if (v66->var0 <= 30)
    {
      if (v66->var0 != -1)
      {
LABEL_190:
        if (self->_inEarDetection)
        {
          v67 = "yes";
        }

        else
        {
          v67 = "no";
        }

        if (softwareVolume)
        {
          v68 = "yes";
        }

        else
        {
          v68 = "no";
        }

        LogPrintF(v66, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDevice supports ied:%s, swvol:%s", v67, v68);
        goto LABEL_198;
      }

      if (_LogCategory_Initialize())
      {
        v66 = self->_ucat;
        softwareVolume = self->_softwareVolume;
        goto LABEL_190;
      }
    }

LABEL_198:
    [(SFBluetoothPairingSession *)self _completed:0];
    goto LABEL_199;
  }

  v17 = *p_ucat;
  v18 = (*p_ucat)->var0;
  if (v18 <= 30)
  {
    if (v18 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v17 = self->_ucat;
      guestAddress = self->_guestAddress;
    }

    LogPrintF(v17, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTSession configure device %@, guest %@\n", self->_deviceAddress, guestAddress);
  }

LABEL_15:
  if (self->_connectOnly || self->_disconnectOnly || self->_guestAddress || self->_btPairingAgent || !self->_btSession)
  {
    goto LABEL_77;
  }

  v7 = 0uLL;
  v91 = 0u;
  memset(v90, 0, sizeof(v90));
  v8 = self->_ucat;
  if (v8->var0 <= 30)
  {
    if (v8->var0 != -1)
    {
LABEL_22:
      LogPrintF(v8, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTPairingAgentCreate\n");
      v7 = 0uLL;
      goto LABEL_71;
    }

    v34 = _LogCategory_Initialize();
    v7 = 0uLL;
    if (v34)
    {
      v8 = self->_ucat;
      goto LABEL_22;
    }
  }

LABEL_71:
  v91 = 0uLL;
  *(v90 + 8) = v7;
  *&v90[0] = _btPairingAgentStatusHandler;
  *(&v90[1] + 1) = _btPairingAgentUserConfirmationHandler;
  v35 = softLinkBTPairingAgentCreate(self->_btSession, v90, self, &self->_btPairingAgent);
  if (v35)
  {
    Default = (v35 + 310000);
    v79 = self->_ucat;
    if (v79->var0 > 60)
    {
      goto LABEL_199;
    }

    if (v79->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v79 = self->_ucat;
    }

    LogPrintF(v79, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTPairingAgentCreate failed: %#m\n", Default, v81);
    goto LABEL_199;
  }

  v36 = self->_ucat;
  if (v36->var0 <= 30)
  {
    if (v36->var0 != -1)
    {
LABEL_74:
      LogPrintF(v36, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTPairingAgentStart\n");
      goto LABEL_76;
    }

    if (_LogCategory_Initialize())
    {
      v36 = self->_ucat;
      goto LABEL_74;
    }
  }

LABEL_76:
  v37 = softLinkBTPairingAgentStart(self->_btPairingAgent);
  if (v37)
  {
    Default = (v37 + 310000);
    v80 = self->_ucat;
    if (v80->var0 > 60)
    {
      goto LABEL_199;
    }

    if (v80->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_199;
      }

      v80 = self->_ucat;
    }

    LogPrintF(v80, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTPairingAgentStart failed: %#m\n", Default, v81);
    goto LABEL_199;
  }

LABEL_77:
  btDevice = self->_btDevice;
  if (self->_unpairOnly)
  {
    if (!btDevice || self->_btDisconnected)
    {
      goto LABEL_167;
    }

    v39 = self->_ucat;
    if (v39->var0 > 30)
    {
      goto LABEL_130;
    }

    if (v39->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_130:
        if (!softLinkBTPairingAgentDeletePairedDevice(self->_btPairingAgent, self->_btDevice))
        {
          goto LABEL_165;
        }

        v46 = self->_ucat;
        if (v46->var0 > 60)
        {
          goto LABEL_165;
        }

        if (v46->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_165;
          }

          v46 = self->_ucat;
        }

        LogPrintF(v46, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTPairingAgentDeletePairedDevice failed: %d, %#m\n");
LABEL_165:
        self->_btDisconnected = 1;
        goto LABEL_166;
      }

      v39 = self->_ucat;
    }

    LogPrintF(v39, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTPairingAgentDeletePairedDevice\n");
    goto LABEL_130;
  }

  if (btDevice)
  {
    if (!self->_btConfigured && self->_guestAddress || !self->_btConnecting && (self->_btPairingAgentStarted || self->_connectOnly))
    {
      if (self->_guestAddress)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConfigureLinkKey"))
        {
          v41 = self->_ucat;
          if (v41->var0 <= 30)
          {
            if (v41->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_142;
              }

              v41 = self->_ucat;
            }

            LogPrintF(v41, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConfigureLinkKey: %@, key %d bytes\n", self->_guestAddress, [(NSData *)self->_guestKey length]);
          }

LABEL_142:
          v90[0] = 0uLL;
          if ([(NSData *)self->_guestKey length]== 16)
          {
            v90[0] = *[(NSData *)self->_guestKey bytes];
            v49 = 0xFFFFFFFFLL;
          }

          else
          {
            v49 = 0;
          }

          WORD2(v84) = 0;
          LODWORD(v84) = 0;
          uTF8String2 = [(NSString *)self->_guestAddress UTF8String];
          v51 = softLinkBTDeviceAddressFromString_0(uTF8String2, &v84);
          if (v51)
          {
            Default = (v51 + 310000);
            v77 = self->_ucat;
            if (v77->var0 > 60)
            {
              goto LABEL_199;
            }

            if (v77->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_199;
              }

              v77 = self->_ucat;
            }

            LogPrintF(v77, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### Bad guest address: '%@'\n", self->_guestAddress, v81);
            goto LABEL_199;
          }

          v52 = softLinkBTDeviceConfigureLinkKey(*p_btDevice, &v84, v90, v49);
          if (!v52)
          {
            self->_btConfigured = 1;
LABEL_166:
            [(SFBluetoothPairingSession *)self _completed:0];
            goto LABEL_167;
          }

          Default = (v52 + 310000);
          v78 = self->_ucat;
          if (v78->var0 > 60)
          {
            goto LABEL_199;
          }

          if (v78->var0 != -1)
          {
            goto LABEL_233;
          }

          if (_LogCategory_Initialize())
          {
            v78 = self->_ucat;
LABEL_233:
            LogPrintF(v78, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceConfigureLinkKey failed: %#m\n", Default, v81);
          }

LABEL_199:
          if (!Default)
          {
            return Default;
          }

LABEL_200:
          v69 = self->_ucat;
          if (v69->var0 <= 60)
          {
            if (v69->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_204;
              }

              v69 = self->_ucat;
            }

            LogPrintF(v69, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BT setup failed: %#m\n", Default);
          }

LABEL_204:
          [(SFBluetoothPairingSession *)self _completed:Default];
          return Default;
        }
      }

      if (self->_guestMode)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters"))
        {
          v42 = self->_ucat;
          if (v42->var0 > 30)
          {
            goto LABEL_154;
          }

          if (v42->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_154:
              v90[0] = 0uLL;
              if ([(NSData *)self->_guestKey length]== 16)
              {
                v90[0] = *[(NSData *)self->_guestKey bytes];
                if (self->_userNotInContacts)
                {
                  v54 = 4;
                }

                else
                {
                  v54 = 2;
                }
              }

              else
              {
                v54 = 1;
              }

              v55 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, v54, v90);
              if (v55)
              {
                [(SFBluetoothPairingSession *)v55 _btEnsureStarted:v90];
LABEL_244:
                Default = v84;
                goto LABEL_199;
              }

LABEL_178:
              LODWORD(Default) = 0;
              self->_btConnecting = 1;
              return Default;
            }

            v42 = self->_ucat;
          }

          LogPrintF(v42, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServicesWithParameters: guest, key %d bytes\n", [(NSData *)self->_guestKey length]);
          goto LABEL_154;
        }
      }

      if (self->_temporaryManagedPairingMode)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters"))
        {
          v43 = self->_ucat;
          if (v43->var0 > 30)
          {
            goto LABEL_162;
          }

          if (v43->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_162:
              v90[0] = 0uLL;
              v56 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 128, v90);
              if (!v56)
              {
                goto LABEL_178;
              }

LABEL_243:
              [(SFBluetoothPairingSession *)v56 _btEnsureStarted:v90];
              goto LABEL_244;
            }

            v43 = self->_ucat;
          }

          LogPrintF(v43, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServicesWithParameters: Temporary Managed Pairing Mode\n");
          goto LABEL_162;
        }
      }

      if (self->_aggregate)
      {
        if (MobileBluetoothLibrary_sOnce_0 != -1)
        {
          [SFBluetoothPairingSession _btEnsureStarted];
        }

        if (MobileBluetoothLibrary_sLib_0 && dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters"))
        {
          v44 = self->_ucat;
          if (v44->var0 > 30)
          {
            goto LABEL_177;
          }

          if (v44->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
LABEL_177:
              v90[0] = 0uLL;
              v56 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 0, v90);
              if (!v56)
              {
                goto LABEL_178;
              }

              goto LABEL_243;
            }

            v44 = self->_ucat;
          }

          LogPrintF(v44, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServices: aggregate\n");
          goto LABEL_177;
        }
      }

      v45 = self->_ucat;
      if (v45->var0 <= 30)
      {
        if (v45->var0 != -1)
        {
LABEL_128:
          LogPrintF(v45, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServices\n");
          goto LABEL_137;
        }

        if (_LogCategory_Initialize())
        {
          v45 = self->_ucat;
          goto LABEL_128;
        }
      }

LABEL_137:
      v47 = softLinkBTDeviceConnectServices(*p_btDevice, 4294959103);
      if (v47)
      {
        Default = (v47 + 310000);
        v48 = self->_ucat;
        if (v48->var0 > 60)
        {
          goto LABEL_199;
        }

        if (v48->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_199;
          }

          v48 = self->_ucat;
        }

        LogPrintF(v48, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceConnectServices failed: %#m\n", Default, v81);
        goto LABEL_199;
      }

      goto LABEL_178;
    }

    if (self->_btDisconnected || !self->_disconnectOnly)
    {
      goto LABEL_167;
    }

    v40 = self->_ucat;
    if (v40->var0 <= 30)
    {
      if (v40->var0 != -1)
      {
LABEL_91:
        LogPrintF(v40, "[SFBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceDisconnect\n");
        goto LABEL_149;
      }

      if (_LogCategory_Initialize())
      {
        v40 = self->_ucat;
        goto LABEL_91;
      }
    }

LABEL_149:
    if (!softLinkBTDeviceDisconnect(*p_btDevice))
    {
      goto LABEL_165;
    }

    v53 = self->_ucat;
    if (v53->var0 > 60)
    {
      goto LABEL_165;
    }

    if (v53->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_165;
      }

      v53 = self->_ucat;
    }

    LogPrintF(v53, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceDisconnect failed: %d, %#m\n");
    goto LABEL_165;
  }

LABEL_167:
  LODWORD(Default) = 0;
  return Default;
}

- (void)_btEnsureStopped
{
  if (self->_btConnecting)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBluetoothPairingSession _btEnsureStopped]", 30, "BTPairingAgentCancelPairing\n");
    }

LABEL_6:
    softLinkBTPairingAgentCancelPairing(self->_btPairingAgent);
    self->_btConnecting = 0;
  }

  if (!self->_btPairingAgentStarted)
  {
    goto LABEL_13;
  }

  v4 = self->_ucat;
  if (v4->var0 <= 30)
  {
    if (v4->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v4 = self->_ucat;
    }

    LogPrintF(v4, "[SFBluetoothPairingSession _btEnsureStopped]", 30, "BTPairingAgentStop\n");
  }

LABEL_12:
  softLinkBTPairingAgentStop(self->_btPairingAgent);
  self->_btPairingAgentStarted = 0;
LABEL_13:
  if (!self->_btPairingAgent)
  {
    goto LABEL_19;
  }

  v5 = self->_ucat;
  if (v5->var0 <= 30)
  {
    if (v5->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v5 = self->_ucat;
    }

    LogPrintF(v5, "[SFBluetoothPairingSession _btEnsureStopped]", 30, "BTPairingAgentDestroy\n");
  }

LABEL_18:
  softLinkBTPairingAgentDestroy(&self->_btPairingAgent);
  self->_btPairingAgent = 0;
LABEL_19:
  if (!self->_btSessionAddedServiceCallback)
  {
    goto LABEL_27;
  }

  if (self->_btSession)
  {
    v6 = self->_ucat;
    if (v6->var0 <= 30)
    {
      if (v6->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v6 = self->_ucat;
      }

      LogPrintF(v6, "[SFBluetoothPairingSession _btEnsureStopped]", 30, "BTServiceRemoveCallbacks\n");
    }

LABEL_25:
    softLinkBTServiceRemoveCallbacks(self->_btSession, _btServiceEventHandler);
  }

  self->_btSessionAddedServiceCallback = 0;
LABEL_27:
  if (self->_btSession)
  {
    v7 = self->_ucat;
    if (v7->var0 <= 30)
    {
      if (v7->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v7 = self->_ucat;
      }

      LogPrintF(v7, "[SFBluetoothPairingSession _btEnsureStopped]", 30, "BTSessionDetachWithQueue\n");
    }

LABEL_32:
    softLinkBTSessionDetachWithQueue_0(&self->_btSession);
    self->_btSession = 0;
  }

  self->_btDevice = 0;
  self->_btStarted = 0;
}

- (void)_btDeletePairingAndRetry
{
  retryCount = self->_retryCount;
  if (retryCount < 3)
  {
    v5 = retryCount + 1;
    p_ucat = &self->_ucat;
    ucat = self->_ucat;
    self->_retryCount = v5;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
        v5 = self->_retryCount;
      }

      LogPrintF(ucat, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 50, "Deleting stale BTDevice pairing and retrying (%u)\n", v5);
    }

LABEL_11:
    v8 = softLinkBTPairingAgentDeletePairedDevice(self->_btPairingAgent, self->_btDevice);
    if (v8)
    {
      v9 = v8;
      v10 = *p_ucat;
      var0 = (*p_ucat)->var0;
      if (var0 <= 60)
      {
        if (var0 != -1)
        {
LABEL_14:
          LogPrintF(v10, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 60, "### BTPairingAgentDeletePairedDevice failed: %#m\n", (v9 + 310000));
          goto LABEL_16;
        }

        if (_LogCategory_Initialize())
        {
          v10 = *p_ucat;
          goto LABEL_14;
        }
      }
    }

LABEL_16:
    if (!self->_timeoutTimer)
    {
      goto LABEL_22;
    }

    v12 = *p_ucat;
    v13 = (*p_ucat)->var0;
    if (v13 <= 50)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v12 = *p_ucat;
      }

      LogPrintF(v12, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 50, "Pushing out timer another %d seconds\n", 15);
    }

LABEL_21:
    SFDispatchTimerSet(self->_timeoutTimer, 15.0, -1.0, -10.0);
LABEL_22:
    v14 = self->_ucat;
    v15 = v14->var0;
    if (!self->_btSession)
    {
      if (v15 > 90)
      {
        goto LABEL_31;
      }

      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_31:
          v16 = *p_ucat;
          v17 = (*p_ucat)->var0;
          if (v17 <= 30)
          {
            if (v17 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_35;
              }

              v16 = *p_ucat;
            }

            LogPrintF(v16, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 30, "Starting timer to retry pairing later %d seconds\n", 2);
          }

LABEL_35:
          retryTimer = self->_retryTimer;
          if (retryTimer)
          {
            v19 = retryTimer;
            dispatch_source_cancel(v19);
            v20 = self->_retryTimer;
            self->_retryTimer = 0;
          }

          v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
          v22 = self->_retryTimer;
          self->_retryTimer = v21;

          v23 = self->_retryTimer;
          if (v23)
          {
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __53__SFBluetoothPairingSession__btDeletePairingAndRetry__block_invoke;
            handler[3] = &unk_1E788B198;
            handler[4] = self;
            dispatch_source_set_event_handler(v23, handler);
            SFDispatchTimerSet(self->_retryTimer, 2.0, -1.0, -10.0);
            dispatch_resume(self->_retryTimer);
          }

          else
          {
            [(SFBluetoothPairingSession *)&self->_ucat _btDeletePairingAndRetry];
          }

          return;
        }

        v14 = *p_ucat;
      }

      LogPrintF(v14, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 90, "No BTSession for retry?\n");
      goto LABEL_31;
    }

    if (v15 <= 50)
    {
      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v14 = *p_ucat;
      }

      LogPrintF(v14, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 50, "Tearing down BTSession to retry later\n");
    }

LABEL_30:
    [(SFBluetoothPairingSession *)self _btEnsureStopped];
    goto LABEL_31;
  }

  v4 = self->_ucat;
  if (v4->var0 <= 60)
  {
    if (v4->var0 != -1)
    {
LABEL_4:
      LogPrintF(v4, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 60, "### Too many retries (%u)\n", retryCount);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v4 = self->_ucat;
      retryCount = self->_retryCount;
      goto LABEL_4;
    }
  }
}

uint64_t __53__SFBluetoothPairingSession__btDeletePairingAndRetry__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  v8 = *v7;
  if (*(v6 + 80))
  {
    if (v8 <= 30)
    {
      if (v8 == -1)
      {
        v9 = _LogCategory_Initialize();
        v6 = *(a1 + 32);
        if (!v9)
        {
          goto LABEL_11;
        }

        v7 = *(v6 + 136);
      }

      LogPrintF(v7, "[SFBluetoothPairingSession _btDeletePairingAndRetry]_block_invoke", 30, "Retry after BTSession finishes tearing down\n");
      v6 = *(a1 + 32);
    }

LABEL_11:
    *(v6 + 96) = 1;
    v10 = *(a1 + 32);

    return [v10 _btEnsureStopped];
  }

  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      v12 = _LogCategory_Initialize();
      v6 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 136);
    }

    LogPrintF(v7, "[SFBluetoothPairingSession _btDeletePairingAndRetry]_block_invoke", 30, "Retry pairing\n");
    v6 = *(a1 + 32);
  }

LABEL_15:
  *(v6 + 96) = 0;
  v13 = *(a1 + 32);

  return [v13 _btEnsureStarted];
}

- (uint64_t)_activate
{
  result = OUTLINED_FUNCTION_1_13(self);
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      result = *self;
    }

    result = LogPrintF(result, "[SFBluetoothPairingSession _activate]", 60, "### Create timeout timer failed\n");
  }

LABEL_6:
  *a2 = -6729;
  return result;
}

- (uint64_t)_btEnsureStarted
{
  result = OUTLINED_FUNCTION_0_14(self, a2, a3, a4);
  if (v9 ^ v10 | v8)
  {
    if (v7 == -1)
    {
      v11 = v6;
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *v11;
    }

    return LogPrintF(result, "[SFBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceConnectServicesWithParameters aggregate failed: %#m\n", v4);
  }

  return result;
}

- (uint64_t)_btDeletePairingAndRetry
{
  result = OUTLINED_FUNCTION_1_13(self);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *self;
    }

    return LogPrintF(result, "[SFBluetoothPairingSession _btDeletePairingAndRetry]", 60, "### Create retry timer failed\n");
  }

  return result;
}

@end