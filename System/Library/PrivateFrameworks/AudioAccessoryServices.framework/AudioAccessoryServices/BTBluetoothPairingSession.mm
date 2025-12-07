@interface BTBluetoothPairingSession
- (BTBluetoothPairingSession)init;
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

@implementation BTBluetoothPairingSession

- (BTBluetoothPairingSession)init
{
  v5.receiver = self;
  v5.super_class = BTBluetoothPairingSession;
  v2 = [(BTBluetoothPairingSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_ucat = &gLogCategory_BTBluetoothPairingSession;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_btSession)
  {
    [BTBluetoothPairingSession dealloc];
    goto LABEL_6;
  }

  if (self->_btSessionAttaching)
  {
LABEL_6:
    [BTBluetoothPairingSession dealloc];
    goto LABEL_7;
  }

  if (!self->_completionHandler)
  {
    v4.receiver = self;
    v4.super_class = BTBluetoothPairingSession;
    [(BTBluetoothPairingSession *)&v4 dealloc];
    return;
  }

LABEL_7:
  v2 = [BTBluetoothPairingSession dealloc];
  [(BTBluetoothPairingSession *)v2 activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BTBluetoothPairingSession_activate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  p_ucat = &self->_ucat;
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
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
      v5 = "yes";
    }

    v25 = v7;
    v26 = v5;
    guestAddress = self->_guestAddress;
    v24 = v6;
    deviceAddress = self->_deviceAddress;
    LogPrintF();
  }

  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_transaction)
  {
    v13 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v13;

    if (!self->_transaction)
    {
      v8 = *p_ucat;
      v15 = **p_ucat;
      if (v15 <= 60)
      {
        if (v15 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          v8 = LogPrintF();
        }
      }
    }
  }

  if (self->_timeoutTimer)
  {
LABEL_22:
    v19 = [objc_alloc(getWPClientClass(v8 v9];
    wpClient = self->_wpClient;
    self->_wpClient = v19;

    [(WPClient *)self->_wpClient disableScanning];
    _btEnsureStarted = [(BTBluetoothPairingSession *)self _btEnsureStarted];
    if (!_btEnsureStarted)
    {
      return;
    }

    goto LABEL_23;
  }

  v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v16;

  v18 = self->_timeoutTimer;
  if (v18)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__BTBluetoothPairingSession__activate__block_invoke;
    handler[3] = &unk_278CDD728;
    handler[4] = self;
    dispatch_source_set_event_handler(v18, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_timeoutTimer);
    goto LABEL_22;
  }

  [(BTBluetoothPairingSession *)p_ucat _activate];
  _btEnsureStarted = v28;
LABEL_23:
  [(BTBluetoothPairingSession *)self _completed:_btEnsureStarted, deviceAddress, guestAddress, v24, v25, v26];
}

uint64_t __38__BTBluetoothPairingSession__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[17];
  if (v3 <= 60)
  {
    if (v3 != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
    {
      LogPrintF();
      v2 = *(a1 + 32);
    }
  }

  return [v2 _completed:4294960574];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BTBluetoothPairingSession_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_invalidateCalled = 1;

  [(BTBluetoothPairingSession *)self _completed:4294960573];
}

- (void)_completed:(int)_completed
{
  v3 = *&_completed;
  v27[1] = *MEMORY[0x277D85DE8];
  [(BTBluetoothPairingSession *)self _btEnsureStopped];
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
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v25 = v3;
      v24 = CFAbsoluteTimeGetCurrent() - self->_startTime;
      LogPrintF();
    }

    completionHandler = self->_completionHandler;
    if (v3)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = v3;
      v26 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v18 = v17;
      v19 = @"?";
      if (v17)
      {
        v19 = v17;
      }

      v27[0] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:{1, *&v24, v25}];
      v21 = [v14 errorWithDomain:v15 code:v16 userInfo:v20];
      completionHandler[2](completionHandler, v21);
    }

    else
    {
      completionHandler[2](self->_completionHandler, 0);
    }

    v22 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (int)_btEnsureStarted
{
  v68 = *MEMORY[0x277D85DE8];
  self->_btStarted = 1;
  if (!self->_btSessionAttaching && !self->_btSession)
  {
    *&v66[0] = 0;
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *&v66[0] = _btSessionEventHandler;
    selfCopy = self;
    v21 = softLinkBTSessionAttachWithQueue(self->_ucat->var4, v66, selfCopy, selfCopy->_dispatchQueue);
    if (v21)
    {
      v22 = v21;
      CFRelease(selfCopy);
      v23 = (v22 + 310000);
      v24 = self->_ucat->var0;
      if (v24 > 60 || v24 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v62 = (v22 + 310000);
      goto LABEL_163;
    }

    self->_btSessionAttaching = 1;
  }

  if (!self->_btSessionAddedServiceCallback && self->_btSession)
  {
    v3 = self->_ucat->var0;
    if (v3 <= 30 && (v3 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = softLinkBTServiceAddCallbacks(self->_btSession, _btServiceEventHandler, self);
    if (v5)
    {
      v23 = (v5 + 310000);
      v54 = self->_ucat->var0;
      if (v54 <= 60 && (v54 != -1 || _LogCategory_Initialize()))
      {
        v62 = v23;
        LogPrintF();
      }

      goto LABEL_49;
    }

    self->_btSessionAddedServiceCallback = 1;
  }

  p_btDevice = &self->_btDevice;
  if (self->_btDevice || !self->_btSession)
  {
    goto LABEL_15;
  }

  p_ucat = &self->_ucat;
  v10 = self->_ucat->var0;
  if (v10 <= 30 && (v10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  deviceAddress = self->_deviceAddress;
  if (deviceAddress)
  {
    WORD2(v66[0]) = 0;
    LODWORD(v66[0]) = 0;
    uTF8String = [(NSString *)deviceAddress UTF8String];
    v13 = softLinkBTDeviceAddressFromString(uTF8String, v66);
    if (v13)
    {
      v23 = (v13 + 310000);
      v55 = (*p_ucat)->var0;
      if (v55 > 60 || v55 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v62 = self->_deviceAddress;
      goto LABEL_163;
    }

    v14 = softLinkBTDeviceFromAddress(self->_btSession, v66, &self->_btDevice);
    if (v14)
    {
      v23 = (v14 + 310000);
      v56 = (*p_ucat)->var0;
      if (v56 > 60 || v56 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v62 = self->_deviceAddress;
      v63 = v23;
      goto LABEL_163;
    }

    AddressString = softLinkBTDeviceGetAddressString(self->_btDevice, self->_btAddrStr, 32);
    if (AddressString)
    {
      v23 = (AddressString + 310000);
      v57 = (*p_ucat)->var0;
      if (v57 > 60 || v57 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v62 = self->_deviceAddress;
      v63 = v23;
      goto LABEL_163;
    }

    guestAddress = self->_guestAddress;
    if (guestAddress)
    {
      v17 = (*p_ucat)->var0;
      if (v17 <= 30)
      {
        if (v17 != -1)
        {
LABEL_35:
          v62 = self->_deviceAddress;
          v63 = guestAddress;
LABEL_62:
          LogPrintF();
          goto LABEL_15;
        }

        if (_LogCategory_Initialize())
        {
          guestAddress = self->_guestAddress;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v64 = 0;
      PairingStatus = softLinkBTDeviceGetPairingStatus(*p_btDevice, &v64);
      v19 = *p_ucat;
      if (PairingStatus)
      {
        if (*v19 > 60)
        {
          goto LABEL_15;
        }

        if (*v19 != -1 || (v26 = _LogCategory_Initialize(), v19 = *p_ucat, v26))
        {
          v62 = (PairingStatus + 310000);
          LogPrintF();
          v19 = *p_ucat;
        }
      }

      if (*v19 <= 30 && (*v19 != -1 || _LogCategory_Initialize()))
      {
        if (v64)
        {
          v27 = "already paired";
        }

        else
        {
          v27 = "not paired";
        }

        v62 = self->_deviceAddress;
        v63 = v27;
        goto LABEL_62;
      }
    }

LABEL_15:
    if (!self->_connectOnly && !self->_disconnectOnly && !self->_guestAddress && !self->_btPairingAgent && self->_btSession)
    {
      v7 = 0uLL;
      v67 = 0u;
      memset(v66, 0, sizeof(v66));
      v8 = self->_ucat->var0;
      if (v8 <= 30)
      {
        if (v8 != -1 || (v28 = _LogCategory_Initialize(), v7 = 0uLL, v28))
        {
          LogPrintF();
          v7 = 0uLL;
        }
      }

      v67 = 0uLL;
      *(v66 + 8) = v7;
      *&v66[0] = _btPairingAgentStatusHandler;
      *(&v66[1] + 1) = _btPairingAgentUserConfirmationHandler;
      v29 = softLinkBTPairingAgentCreate(self->_btSession, v66, self, &self->_btPairingAgent);
      if (v29)
      {
        v23 = (v29 + 310000);
        v60 = self->_ucat->var0;
        if (v60 <= 60 && (v60 != -1 || _LogCategory_Initialize()))
        {
          v62 = v23;
          goto LABEL_163;
        }

        goto LABEL_49;
      }

      v30 = self->_ucat->var0;
      if (v30 <= 30 && (v30 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v31 = softLinkBTPairingAgentStart(self->_btPairingAgent);
      if (v31)
      {
        v23 = (v31 + 310000);
        v61 = self->_ucat->var0;
        if (v61 <= 60 && (v61 != -1 || _LogCategory_Initialize()))
        {
          v62 = v23;
          goto LABEL_163;
        }

        goto LABEL_49;
      }
    }

    if (!*p_btDevice)
    {
LABEL_148:
      LODWORD(v23) = 0;
      return v23;
    }

    if ((self->_btConfigured || !self->_guestAddress) && (self->_btConnecting || !self->_btPairingAgentStarted && !self->_connectOnly))
    {
      if (self->_btDisconnected || !self->_disconnectOnly)
      {
        goto LABEL_148;
      }

      v32 = self->_ucat->var0;
      if (v32 <= 30 && (v32 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v47 = softLinkBTDeviceDisconnect(*p_btDevice);
      if (v47)
      {
        v48 = v47;
        v49 = self->_ucat->var0;
        if (v49 <= 60 && (v49 != -1 || _LogCategory_Initialize()))
        {
          v62 = v48;
          v63 = (v48 + 310000);
          LogPrintF();
        }
      }

      self->_btDisconnected = 1;
      goto LABEL_147;
    }

    if (self->_guestAddress)
    {
      if (MobileBluetoothLibrary_sOnce != -1)
      {
        [BTBluetoothPairingSession _btEnsureStarted];
      }

      if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConfigureLinkKey"))
      {
        v33 = self->_ucat->var0;
        if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
        {
          v34 = self->_guestAddress;
          v35 = [(NSData *)self->_guestKey length:v62];
          v62 = v34;
          v63 = v35;
          LogPrintF();
        }

        v66[0] = 0uLL;
        if ([(NSData *)self->_guestKey length:v62]== 16)
        {
          v66[0] = *[(NSData *)self->_guestKey bytes];
          v43 = 0xFFFFFFFFLL;
        }

        else
        {
          v43 = 0;
        }

        v65 = 0;
        v64 = 0;
        uTF8String2 = [(NSString *)self->_guestAddress UTF8String];
        v45 = softLinkBTDeviceAddressFromString(uTF8String2, &v64);
        if (!v45)
        {
          v46 = softLinkBTDeviceConfigureLinkKey(*p_btDevice, &v64, v66, v43);
          if (!v46)
          {
            self->_btConfigured = 1;
LABEL_147:
            [(BTBluetoothPairingSession *)self _completed:0, v62, v63];
            goto LABEL_148;
          }

          v23 = (v46 + 310000);
          v59 = self->_ucat->var0;
          if (v59 <= 60 && (v59 != -1 || _LogCategory_Initialize()))
          {
            v62 = v23;
            goto LABEL_163;
          }

LABEL_49:
          if (!v23)
          {
            return v23;
          }

          goto LABEL_50;
        }

        v23 = (v45 + 310000);
        v58 = self->_ucat->var0;
        if (v58 > 60 || v58 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_49;
        }

        v62 = self->_guestAddress;
LABEL_163:
        LogPrintF();
        goto LABEL_49;
      }
    }

    if (!self->_guestMode)
    {
      goto LABEL_212;
    }

    if (MobileBluetoothLibrary_sOnce != -1)
    {
      [BTBluetoothPairingSession _btEnsureStarted];
    }

    if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters"))
    {
      v36 = self->_ucat->var0;
      if (v36 <= 30 && (v36 != -1 || _LogCategory_Initialize()))
      {
        if (self->_guestPermanent)
        {
          v37 = "yes";
        }

        else
        {
          v37 = "no";
        }

        v38 = [(NSData *)self->_guestKey length:v62];
        v62 = v37;
        v63 = v38;
        LogPrintF();
      }

      v66[0] = 0uLL;
      if ([(NSData *)self->_guestKey length:v62]== 16)
      {
        v66[0] = *[(NSData *)self->_guestKey bytes];
        if (self->_guestPermanent)
        {
          v50 = 16;
        }

        else if (self->_userNotInContacts)
        {
          v50 = 4;
        }

        else
        {
          v50 = 2;
        }
      }

      else if (self->_guestPermanent)
      {
        v50 = 16;
      }

      else
      {
        v50 = 1;
      }

      v51 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, v50, v66);
      if (v51)
      {
        [(BTBluetoothPairingSession *)v51 _btEnsureStarted:v66];
LABEL_181:
        v23 = v64;
        goto LABEL_49;
      }
    }

    else
    {
      if (!self->_aggregate)
      {
        goto LABEL_110;
      }

LABEL_212:
      if (MobileBluetoothLibrary_sOnce != -1)
      {
        [BTBluetoothPairingSession _btEnsureStarted];
      }

      if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters"))
      {
        v39 = self->_ucat->var0;
        if (v39 <= 30 && (v39 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v66[0] = 0uLL;
        v52 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 0, v66);
        if (v52)
        {
          [(BTBluetoothPairingSession *)v52 _btEnsureStarted:v66];
          goto LABEL_181;
        }
      }

      else
      {
LABEL_110:
        v40 = self->_ucat->var0;
        if (v40 <= 30 && (v40 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v41 = softLinkBTDeviceConnectServices(*p_btDevice, 4294959103);
        if (v41)
        {
          v23 = (v41 + 310000);
          v42 = self->_ucat->var0;
          if (v42 > 60 || v42 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_49;
          }

          v62 = v23;
          goto LABEL_163;
        }
      }
    }

    LODWORD(v23) = 0;
    self->_btConnecting = 1;
    return v23;
  }

  [(BTBluetoothPairingSession *)&self->_ucat _btEnsureStarted];
  v23 = LODWORD(v66[0]);
LABEL_50:
  v25 = self->_ucat->var0;
  if (v25 <= 60 && (v25 != -1 || _LogCategory_Initialize()))
  {
    v62 = v23;
    LogPrintF();
  }

  [(BTBluetoothPairingSession *)self _completed:v23, v62, v63];
  return v23;
}

- (void)_btEnsureStopped
{
  if (self->_btConnecting)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    softLinkBTPairingAgentCancelPairing(self->_btPairingAgent);
    self->_btConnecting = 0;
  }

  if (self->_btPairingAgentStarted)
  {
    v4 = self->_ucat->var0;
    if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    softLinkBTPairingAgentStop(self->_btPairingAgent);
    self->_btPairingAgentStarted = 0;
  }

  if (self->_btPairingAgent)
  {
    v5 = self->_ucat->var0;
    if (v5 <= 30 && (v5 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    softLinkBTPairingAgentDestroy(&self->_btPairingAgent);
    self->_btPairingAgent = 0;
  }

  if (self->_btSessionAddedServiceCallback)
  {
    if (self->_btSession)
    {
      v6 = self->_ucat->var0;
      if (v6 <= 30 && (v6 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      softLinkBTServiceRemoveCallbacks(self->_btSession, _btServiceEventHandler);
    }

    self->_btSessionAddedServiceCallback = 0;
  }

  if (self->_btSession)
  {
    v7 = self->_ucat->var0;
    if (v7 <= 30 && (v7 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    softLinkBTSessionDetachWithQueue(&self->_btSession);
    self->_btSession = 0;
  }

  self->_btDevice = 0;
  self->_btStarted = 0;
}

- (void)_btDeletePairingAndRetry
{
  retryCount = self->_retryCount;
  if (retryCount >= 3)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return;
  }

  v5 = retryCount + 1;
  p_ucat = &self->_ucat;
  ucat = self->_ucat;
  self->_retryCount = v5;
  if (ucat->var0 <= 50)
  {
    if (ucat->var0 != -1)
    {
LABEL_7:
      v20 = v5;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      v5 = self->_retryCount;
      goto LABEL_7;
    }
  }

LABEL_11:
  v8 = softLinkBTPairingAgentDeletePairedDevice(self->_btPairingAgent, self->_btDevice);
  if (v8)
  {
    v9 = v8;
    v10 = (*p_ucat)->var0;
    if (v10 <= 60 && (v10 != -1 || _LogCategory_Initialize()))
    {
      v20 = (v9 + 310000);
      LogPrintF();
    }
  }

  if (self->_timeoutTimer)
  {
    v11 = (*p_ucat)->var0;
    if (v11 <= 50 && (v11 != -1 || _LogCategory_Initialize()))
    {
      v20 = 15;
      LogPrintF();
    }

    CUDispatchTimerSet();
  }

  v12 = self->_ucat->var0;
  if (self->_btSession)
  {
    if (v12 <= 50 && (v12 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(BTBluetoothPairingSession *)self _btEnsureStopped];
  }

  else if (v12 <= 90 && (v12 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = (*p_ucat)->var0;
  if (v13 <= 30 && (v13 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v15 = retryTimer;
    dispatch_source_cancel(v15);
    v16 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v18 = self->_retryTimer;
  self->_retryTimer = v17;

  v19 = self->_retryTimer;
  if (v19)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__BTBluetoothPairingSession__btDeletePairingAndRetry__block_invoke;
    handler[3] = &unk_278CDD728;
    handler[4] = self;
    dispatch_source_set_event_handler(v19, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
  }

  else
  {
    [(BTBluetoothPairingSession *)&self->_ucat _btDeletePairingAndRetry];
  }
}

uint64_t __53__BTBluetoothPairingSession__btDeletePairingAndRetry__block_invoke(uint64_t a1)
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
  v7 = **(v6 + 136);
  if (*(v6 + 80))
  {
    if (v7 <= 30)
    {
      if (v7 != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 32), v8))
      {
        LogPrintF();
        v6 = *(a1 + 32);
      }
    }

    *(v6 + 96) = 1;
    v9 = *(a1 + 32);

    return [v9 _btEnsureStopped];
  }

  else
  {
    if (v7 <= 30)
    {
      if (v7 != -1 || (v11 = _LogCategory_Initialize(), v6 = *(a1 + 32), v11))
      {
        LogPrintF();
        v6 = *(a1 + 32);
      }
    }

    *(v6 + 96) = 0;
    v12 = *(a1 + 32);

    return [v12 _btEnsureStarted];
  }
}

- (uint64_t)_activate
{
  result = OUTLINED_FUNCTION_1_2(self);
  if (v6 ^ v7 | v5)
  {
    if (v4 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = -6729;
  return result;
}

- (uint64_t)_btEnsureStarted
{
  result = OUTLINED_FUNCTION_0_1(self, a2, a3, a4);
  if (v7 ^ v8 | v6)
  {
    if (v5 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_btDeletePairingAndRetry
{
  result = OUTLINED_FUNCTION_1_2(self);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

@end