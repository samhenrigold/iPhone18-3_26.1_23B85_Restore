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
  block[3] = &unk_278D11830;
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
        goto LABEL_13;
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
      v5 = "yes";
    }

    LogPrintF(ucat, "[BTBluetoothPairingSession _activate]", 30, "Activate: DA %@, GA %@, GM %s, DO %s, UNIC %s\n", self->_deviceAddress, self->_guestAddress, v6, v7, v5);
  }

LABEL_13:
  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_transaction)
  {
    v8 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v8;

    if (!self->_transaction)
    {
      v10 = *p_ucat;
      v11 = **p_ucat;
      if (v11 <= 60)
      {
        if (v11 != -1)
        {
LABEL_17:
          LogPrintF(v10, "[BTBluetoothPairingSession _activate]", 60, "### Create transaction failed\n");
          goto LABEL_19;
        }

        if (_LogCategory_Initialize())
        {
          v10 = *p_ucat;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_19:
  if (self->_timeoutTimer)
  {
    goto LABEL_22;
  }

  v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v12;

  v14 = self->_timeoutTimer;
  if (v14)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__BTBluetoothPairingSession__activate__block_invoke;
    handler[3] = &unk_278D11830;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_timeoutTimer);
LABEL_22:
    v15 = [objc_alloc(getWPClientClass()) initWithQueue:self->_dispatchQueue machName:0];
    wpClient = self->_wpClient;
    self->_wpClient = v15;

    [(WPClient *)self->_wpClient disableScanning];
    _btEnsureStarted = [(BTBluetoothPairingSession *)self _btEnsureStarted];
    if (!_btEnsureStarted)
    {
      return;
    }

    goto LABEL_23;
  }

  [(BTBluetoothPairingSession *)p_ucat _activate];
  _btEnsureStarted = v19;
LABEL_23:
  [(BTBluetoothPairingSession *)self _completed:_btEnsureStarted];
}

uint64_t __38__BTBluetoothPairingSession__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[17];
  if (*v3 <= 60)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[BTBluetoothPairingSession _activate]_block_invoke", 60, "### Timeout\n");
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BTBluetoothPairingSession_invalidate__block_invoke;
  block[3] = &unk_278D11830;
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
      LogPrintF(ucat, "[BTBluetoothPairingSession _invalidate]", 30, "Invalidate\n");
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

  [(BTBluetoothPairingSession *)self _completed:4294960573];
}

- (void)_completed:(int)_completed
{
  v26[1] = *MEMORY[0x277D85DE8];
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
      LogPrintF(ucat, "[BTBluetoothPairingSession _completed:]", 30, "Pairing completed (%.2f seconds): %#m\n", Current - self->_startTime);
    }

LABEL_10:
    completionHandler = self->_completionHandler;
    if (_completed)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA590];
      _completedCopy = _completed;
      v25 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v19 = v18;
      v20 = @"?";
      if (v18)
      {
        v20 = v18;
      }

      v26[0] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
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
  v68 = *MEMORY[0x277D85DE8];
  self->_btStarted = 1;
  if (self->_btSessionAttaching || self->_btSession)
  {
    goto LABEL_3;
  }

  *&v66[0] = 0;
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

    LogPrintF(ucat, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTSession attach\n");
  }

LABEL_41:
  *&v66[0] = _btSessionEventHandler;
  selfCopy = self;
  v22 = softLinkBTSessionAttachWithQueue(self->_ucat->var4, v66, selfCopy, selfCopy->_dispatchQueue);
  if (v22)
  {
    v23 = v22;
    CFRelease(selfCopy);
    v24 = (v23 + 310000);
    v25 = self->_ucat;
    if (v25->var0 > 60)
    {
      goto LABEL_49;
    }

    if (v25->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v25 = self->_ucat;
    }

    LogPrintF(v25, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTSesson attach failed: %#m\n", (v23 + 310000));
    goto LABEL_49;
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

    LogPrintF(v3, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTSession add callbacks\n");
  }

LABEL_12:
  v5 = softLinkBTServiceAddCallbacks(self->_btSession, _btServiceEventHandler, self);
  if (v5)
  {
    v24 = (v5 + 310000);
    v52 = self->_ucat;
    if (v52->var0 > 60)
    {
      goto LABEL_49;
    }

    if (v52->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v52 = self->_ucat;
    }

    LogPrintF(v52, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTSesson add service callbacks failed: %#m\n", v24);
    goto LABEL_49;
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
      LogPrintF(v9, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTSession device lookup\n");
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
    [(BTBluetoothPairingSession *)&self->_ucat _btEnsureStarted];
    v24 = LODWORD(v66[0]);
LABEL_50:
    v26 = self->_ucat;
    if (v26->var0 <= 60)
    {
      if (v26->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_54;
        }

        v26 = self->_ucat;
      }

      LogPrintF(v26, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BT setup failed: %#m\n", v24);
    }

LABEL_54:
    [(BTBluetoothPairingSession *)self _completed:v24];
    return v24;
  }

  WORD2(v66[0]) = 0;
  LODWORD(v66[0]) = 0;
  uTF8String = [(NSString *)deviceAddress UTF8String];
  v13 = softLinkBTDeviceAddressFromString(uTF8String, v66);
  if (v13)
  {
    v24 = (v13 + 310000);
    v53 = *p_ucat;
    var0 = (*p_ucat)->var0;
    if (var0 > 60)
    {
      goto LABEL_49;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v53 = *p_ucat;
    }

    LogPrintF(v53, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### Bad BTDevice address: '%@'\n", self->_deviceAddress);
    goto LABEL_49;
  }

  v14 = softLinkBTDeviceFromAddress(self->_btSession, v66, &self->_btDevice);
  if (v14)
  {
    v24 = (v14 + 310000);
    v55 = *p_ucat;
    v56 = (*p_ucat)->var0;
    if (v56 > 60)
    {
      goto LABEL_49;
    }

    if (v56 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v55 = *p_ucat;
    }

    LogPrintF(v55, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTDevice lookup %@ failed: %#m\n", self->_deviceAddress, v24);
    goto LABEL_49;
  }

  AddressString = softLinkBTDeviceGetAddressString(self->_btDevice, self->_btAddrStr, 32);
  if (AddressString)
  {
    v24 = (AddressString + 310000);
    v57 = *p_ucat;
    v58 = (*p_ucat)->var0;
    if (v58 > 60)
    {
      goto LABEL_49;
    }

    if (v58 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v57 = *p_ucat;
    }

    LogPrintF(v57, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceGetAddressString start %@ failed: %#m\n", self->_deviceAddress, v24);
    goto LABEL_49;
  }

  guestAddress = self->_guestAddress;
  if (guestAddress)
  {
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

      LogPrintF(v17, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTSession configure device %@, guest %@\n", self->_deviceAddress, guestAddress);
    }
  }

  else
  {
    v64 = 0;
    PairingStatus = softLinkBTDeviceGetPairingStatus(*p_btDevice, &v64);
    v20 = *p_ucat;
    if (PairingStatus)
    {
      if (*v20 > 60)
      {
        goto LABEL_15;
      }

      if (*v20 != -1 || (v27 = _LogCategory_Initialize(), v20 = *p_ucat, v27))
      {
        LogPrintF(v20, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### Device get pairing status failed: %#m\n", (PairingStatus + 310000));
        v20 = *p_ucat;
      }
    }

    if (*v20 <= 30)
    {
      if (*v20 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v20 = *p_ucat;
      }

      if (v64)
      {
        v28 = "already paired";
      }

      else
      {
        v28 = "not paired";
      }

      LogPrintF(v20, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTSession device %@ pairing status: %s\n", self->_deviceAddress, v28);
    }
  }

LABEL_15:
  if (self->_connectOnly || self->_disconnectOnly || self->_guestAddress || self->_btPairingAgent || !self->_btSession)
  {
    goto LABEL_71;
  }

  v7 = 0uLL;
  v67 = 0u;
  memset(v66, 0, sizeof(v66));
  v8 = self->_ucat;
  if (v8->var0 <= 30)
  {
    if (v8->var0 != -1)
    {
LABEL_22:
      LogPrintF(v8, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTPairingAgentCreate\n");
      v7 = 0uLL;
      goto LABEL_65;
    }

    v29 = _LogCategory_Initialize();
    v7 = 0uLL;
    if (v29)
    {
      v8 = self->_ucat;
      goto LABEL_22;
    }
  }

LABEL_65:
  v67 = 0uLL;
  *(v66 + 8) = v7;
  *&v66[0] = _btPairingAgentStatusHandler;
  *(&v66[1] + 1) = _btPairingAgentUserConfirmationHandler;
  v30 = softLinkBTPairingAgentCreate(self->_btSession, v66, self, &self->_btPairingAgent);
  if (v30)
  {
    v24 = (v30 + 310000);
    v61 = self->_ucat;
    if (v61->var0 > 60)
    {
      goto LABEL_49;
    }

    if (v61->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v61 = self->_ucat;
    }

    LogPrintF(v61, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTPairingAgentCreate failed: %#m\n", v24, v63);
    goto LABEL_49;
  }

  v31 = self->_ucat;
  if (v31->var0 <= 30)
  {
    if (v31->var0 != -1)
    {
LABEL_68:
      LogPrintF(v31, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTPairingAgentStart\n");
      goto LABEL_70;
    }

    if (_LogCategory_Initialize())
    {
      v31 = self->_ucat;
      goto LABEL_68;
    }
  }

LABEL_70:
  v32 = softLinkBTPairingAgentStart(self->_btPairingAgent);
  if (v32)
  {
    v24 = (v32 + 310000);
    v62 = self->_ucat;
    if (v62->var0 > 60)
    {
      goto LABEL_49;
    }

    if (v62->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v62 = self->_ucat;
    }

    LogPrintF(v62, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTPairingAgentStart failed: %#m\n", v24, v63);
    goto LABEL_49;
  }

LABEL_71:
  if (!*p_btDevice)
  {
LABEL_147:
    LODWORD(v24) = 0;
    return v24;
  }

  if ((self->_btConfigured || !self->_guestAddress) && (self->_btConnecting || !self->_btPairingAgentStarted && !self->_connectOnly))
  {
    if (self->_btDisconnected || !self->_disconnectOnly)
    {
      goto LABEL_147;
    }

    v33 = self->_ucat;
    if (v33->var0 <= 30)
    {
      if (v33->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_125;
        }

        v33 = self->_ucat;
      }

      LogPrintF(v33, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceDisconnect\n");
    }

LABEL_125:
    v45 = softLinkBTDeviceDisconnect(*p_btDevice);
    if (!v45)
    {
      goto LABEL_145;
    }

    v46 = v45;
    v47 = self->_ucat;
    if (v47->var0 > 60)
    {
      goto LABEL_145;
    }

    if (v47->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_145;
      }

      v47 = self->_ucat;
    }

    LogPrintF(v47, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceDisconnect failed: %d, %#m\n", v46);
LABEL_145:
    self->_btDisconnected = 1;
    goto LABEL_146;
  }

  if (!self->_guestAddress)
  {
    goto LABEL_210;
  }

  if (MobileBluetoothLibrary_sOnce != -1)
  {
    [BTBluetoothPairingSession _btEnsureStarted];
  }

  if (!MobileBluetoothLibrary_sLib || !dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConfigureLinkKey"))
  {
LABEL_210:
    if (self->_guestMode)
    {
      if (MobileBluetoothLibrary_sOnce != -1)
      {
        [BTBluetoothPairingSession _btEnsureStarted];
      }

      if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters"))
      {
        v35 = self->_ucat;
        if (v35->var0 > 30)
        {
          goto LABEL_130;
        }

        if (v35->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_130;
          }

          v35 = self->_ucat;
        }

        if (self->_guestPermanent)
        {
          v36 = "yes";
        }

        else
        {
          v36 = "no";
        }

        LogPrintF(v35, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServicesWithParameters: guest, permanent %s, key %d bytes\n", v36, [(NSData *)self->_guestKey length]);
LABEL_130:
        v66[0] = 0uLL;
        if ([(NSData *)self->_guestKey length]== 16)
        {
          v66[0] = *[(NSData *)self->_guestKey bytes];
          if (self->_guestPermanent)
          {
            v48 = 16;
          }

          else if (self->_userNotInContacts)
          {
            v48 = 4;
          }

          else
          {
            v48 = 2;
          }
        }

        else if (self->_guestPermanent)
        {
          v48 = 16;
        }

        else
        {
          v48 = 1;
        }

        v49 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, v48, v66);
        if (v49)
        {
          [(BTBluetoothPairingSession *)v49 _btEnsureStarted:v66];
LABEL_179:
          v24 = v64;
          goto LABEL_49;
        }

        goto LABEL_143;
      }
    }

    if (self->_aggregate)
    {
      if (MobileBluetoothLibrary_sOnce != -1)
      {
        [BTBluetoothPairingSession _btEnsureStarted];
      }

      if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters"))
      {
        v37 = self->_ucat;
        if (v37->var0 > 30)
        {
          goto LABEL_142;
        }

        if (v37->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_142:
            v66[0] = 0uLL;
            v50 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 0, v66);
            if (v50)
            {
              [(BTBluetoothPairingSession *)v50 _btEnsureStarted:v66];
              goto LABEL_179;
            }

LABEL_143:
            LODWORD(v24) = 0;
            self->_btConnecting = 1;
            return v24;
          }

          v37 = self->_ucat;
        }

        LogPrintF(v37, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServices: aggregate\n");
        goto LABEL_142;
      }
    }

    v38 = self->_ucat;
    if (v38->var0 <= 30)
    {
      if (v38->var0 != -1)
      {
LABEL_111:
        LogPrintF(v38, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConnectServices\n");
        goto LABEL_113;
      }

      if (_LogCategory_Initialize())
      {
        v38 = self->_ucat;
        goto LABEL_111;
      }
    }

LABEL_113:
    v39 = softLinkBTDeviceConnectServices(*p_btDevice, 4294959103);
    if (v39)
    {
      v24 = (v39 + 310000);
      v40 = self->_ucat;
      if (v40->var0 > 60)
      {
        goto LABEL_49;
      }

      if (v40->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_49;
        }

        v40 = self->_ucat;
      }

      LogPrintF(v40, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceConnectServices failed: %#m\n", v24, v63);
      goto LABEL_49;
    }

    goto LABEL_143;
  }

  v34 = self->_ucat;
  if (v34->var0 <= 30)
  {
    if (v34->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_118;
      }

      v34 = self->_ucat;
    }

    LogPrintF(v34, "[BTBluetoothPairingSession _btEnsureStarted]", 30, "BTDeviceConfigureLinkKey: %@, key %d bytes\n", self->_guestAddress, [(NSData *)self->_guestKey length]);
  }

LABEL_118:
  v66[0] = 0uLL;
  if ([(NSData *)self->_guestKey length]== 16)
  {
    v66[0] = *[(NSData *)self->_guestKey bytes];
    v41 = 0xFFFFFFFFLL;
  }

  else
  {
    v41 = 0;
  }

  v65 = 0;
  v64 = 0;
  uTF8String2 = [(NSString *)self->_guestAddress UTF8String];
  v43 = softLinkBTDeviceAddressFromString(uTF8String2, &v64);
  if (v43)
  {
    v24 = (v43 + 310000);
    v59 = self->_ucat;
    if (v59->var0 > 60)
    {
      goto LABEL_49;
    }

    if (v59->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v59 = self->_ucat;
    }

    LogPrintF(v59, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### Bad guest address: '%@'\n", self->_guestAddress, v63);
    goto LABEL_49;
  }

  v44 = softLinkBTDeviceConfigureLinkKey(*p_btDevice, &v64, v66, v41);
  if (!v44)
  {
    self->_btConfigured = 1;
LABEL_146:
    [(BTBluetoothPairingSession *)self _completed:0];
    goto LABEL_147;
  }

  v24 = (v44 + 310000);
  v60 = self->_ucat;
  if (v60->var0 <= 60)
  {
    if (v60->var0 != -1)
    {
LABEL_167:
      LogPrintF(v60, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceConfigureLinkKey failed: %#m\n", v24, v63);
      goto LABEL_49;
    }

    if (_LogCategory_Initialize())
    {
      v60 = self->_ucat;
      goto LABEL_167;
    }
  }

LABEL_49:
  if (v24)
  {
    goto LABEL_50;
  }

  return v24;
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

      LogPrintF(ucat, "[BTBluetoothPairingSession _btEnsureStopped]", 30, "BTPairingAgentCancelPairing\n");
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

    LogPrintF(v4, "[BTBluetoothPairingSession _btEnsureStopped]", 30, "BTPairingAgentStop\n");
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

    LogPrintF(v5, "[BTBluetoothPairingSession _btEnsureStopped]", 30, "BTPairingAgentDestroy\n");
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

      LogPrintF(v6, "[BTBluetoothPairingSession _btEnsureStopped]", 30, "BTServiceRemoveCallbacks\n");
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

      LogPrintF(v7, "[BTBluetoothPairingSession _btEnsureStopped]", 30, "BTSessionDetachWithQueue\n");
    }

LABEL_32:
    softLinkBTSessionDetachWithQueue(&self->_btSession);
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

      LogPrintF(ucat, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 50, "Deleting stale BTDevice pairing and retrying (%u)\n", v5);
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
          LogPrintF(v10, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 60, "### BTPairingAgentDeletePairedDevice failed: %#m\n", (v9 + 310000));
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

      LogPrintF(v12, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 50, "Pushing out timer another %d seconds\n", 15);
    }

LABEL_21:
    CUDispatchTimerSet();
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

            LogPrintF(v16, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 30, "Starting timer to retry pairing later %d seconds\n", 2);
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

          v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
          v22 = self->_retryTimer;
          self->_retryTimer = v21;

          v23 = self->_retryTimer;
          if (v23)
          {
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __53__BTBluetoothPairingSession__btDeletePairingAndRetry__block_invoke;
            handler[3] = &unk_278D11830;
            handler[4] = self;
            dispatch_source_set_event_handler(v23, handler);
            CUDispatchTimerSet();
            dispatch_resume(self->_retryTimer);
          }

          else
          {
            [(BTBluetoothPairingSession *)&self->_ucat _btDeletePairingAndRetry];
          }

          return;
        }

        v14 = *p_ucat;
      }

      LogPrintF(v14, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 90, "No BTSession for retry?\n");
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

      LogPrintF(v14, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 50, "Tearing down BTSession to retry later\n");
    }

LABEL_30:
    [(BTBluetoothPairingSession *)self _btEnsureStopped];
    goto LABEL_31;
  }

  v4 = self->_ucat;
  if (v4->var0 <= 60)
  {
    if (v4->var0 != -1)
    {
LABEL_4:
      LogPrintF(v4, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 60, "### Too many retries (%u)\n", retryCount);
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

      LogPrintF(v7, "[BTBluetoothPairingSession _btDeletePairingAndRetry]_block_invoke", 30, "Retry after BTSession finishes tearing down\n");
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

    LogPrintF(v7, "[BTBluetoothPairingSession _btDeletePairingAndRetry]_block_invoke", 30, "Retry pairing\n");
    v6 = *(a1 + 32);
  }

LABEL_15:
  *(v6 + 96) = 0;
  v13 = *(a1 + 32);

  return [v13 _btEnsureStarted];
}

- (uint64_t)_activate
{
  result = OUTLINED_FUNCTION_1(self);
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

    result = LogPrintF(result, "[BTBluetoothPairingSession _activate]", 60, "### Create timeout timer failed\n");
  }

LABEL_6:
  *a2 = -6729;
  return result;
}

- (uint64_t)_btEnsureStarted
{
  result = OUTLINED_FUNCTION_0_0(self, a2, a3, a4);
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

    return LogPrintF(result, "[BTBluetoothPairingSession _btEnsureStarted]", 60, "### BTDeviceConnectServicesWithParameters aggregate failed: %#m\n", v4);
  }

  return result;
}

- (uint64_t)_btDeletePairingAndRetry
{
  result = OUTLINED_FUNCTION_1(self);
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

    return LogPrintF(result, "[BTBluetoothPairingSession _btDeletePairingAndRetry]", 60, "### Create retry timer failed\n");
  }

  return result;
}

@end