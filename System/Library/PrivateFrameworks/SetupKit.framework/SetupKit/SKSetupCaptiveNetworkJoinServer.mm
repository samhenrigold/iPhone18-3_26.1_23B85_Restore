@interface SKSetupCaptiveNetworkJoinServer
+ (void)resetWithCompletionHandler:(id)handler;
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupCaptiveNetworkJoinServer)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_bleServerAcceptConnecton:(id)connecton;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_captiveDetectedNotificationUpdate:(BOOL)update;
- (void)_captiveNetworkIPAssign:(id)assign;
- (void)_captiveNetworkLoginInfo:(id)info cookie:(unsigned int)cookie responseHandler:(id)handler;
- (void)_captiveNetworkLoginRequest:(id)request responseHandler:(id)handler;
- (void)_captiveNetworkProbeEnsureStopped;
- (void)_captiveNetworkProbeRequest:(id)request responseHandler:(id)handler;
- (void)_captiveNetworkProbeResult:(int)result responseHandler:(id)handler;
- (void)_cfuEnsuredStarted;
- (void)_cfuEnsuredStopped;
- (void)_connectionEnded:(id)ended;
- (void)_invalidate;
- (void)_invalidated;
- (void)_networkRelayAWDLStartRequest:(id)request responseHandler:(id)handler;
- (void)_networkRelayDeviceEnsureStopped;
- (void)_networkRelaySetupRequest:(id)request responseHandler:(id)handler;
- (void)_oobEnsureStarted;
- (void)_run;
- (void)_runDefault;
- (void)dealloc;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype;
- (void)deviceProxyServiceInterfaceNameDidChange:(id)change interfaceName:(id)name;
@end

@implementation SKSetupCaptiveNetworkJoinServer

- (void)_captiveNetworkIPAssign:(id)assign
{
  assignCopy = assign;
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkIPAssign:]", 30, "Captive IP skip");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  assignCopy[2](assignCopy, 0);
}

- (void)_oobEnsureStarted
{
  if (!self->super._skCnx)
  {
    v4 = objc_alloc_init(SKConnection);
    [(SKConnection *)v4 setSendDataHandler:self->super._sendDataHandler];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v4 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_203];
  }
}

- (void)_captiveDetectedNotificationUpdate:(BOOL)update
{
  updateCopy = update;
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->super._ucat;
    }

    v6 = "no";
    if (updateCopy)
    {
      v6 = "yes";
    }

    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveDetectedNotificationUpdate:]", 30, "Captive network update: detected=%s", v6);
  }

LABEL_7:
  captiveDetectedNotifyToken = self->_captiveDetectedNotifyToken;
  if (updateCopy)
  {
    if (captiveDetectedNotifyToken == -1)
    {
      notify_register_check("com.apple.coreutils.captive-network-state", &self->_captiveDetectedNotifyToken);
      captiveDetectedNotifyToken = self->_captiveDetectedNotifyToken;
    }

    notify_set_state(captiveDetectedNotifyToken, 1uLL);

    notify_post("com.apple.coreutils.captive-network-state");
  }

  else if (captiveDetectedNotifyToken != -1)
  {
    notify_set_state(captiveDetectedNotifyToken, 0);
    notify_post("com.apple.coreutils.captive-network-state");
    notify_cancel(self->_captiveDetectedNotifyToken);
    self->_captiveDetectedNotifyToken = -1;
  }
}

- (void)deviceProxyServiceInterfaceNameDidChange:(id)change interfaceName:(id)name
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    v6 = changeCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      if ([v6 isConnected])
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      [changeCopy linkType];
      StringFromNRLinkType = createStringFromNRLinkType();
      [changeCopy linkSubtype];
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      proxyServiceInterfaceName = [changeCopy proxyServiceInterfaceName];
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer deviceProxyServiceInterfaceNameDidChange:interfaceName:]", 30, "NetworkRelayMonitor interface changed: connected %s, type %@, subtype %@, interface '%@'", v7, StringFromNRLinkType, StringFromNRLinkSubtype, proxyServiceInterfaceName);

      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      v6 = changeCopy;
      goto LABEL_3;
    }
  }

LABEL_8:
}

- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucat = self->super._ucat;
    }

    StringFromNRLinkType = createStringFromNRLinkType();
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer deviceLinkTypeDidChange:linkType:linkSubtype:]", 30, "NetworkRelayMonitor link type changed: type %@, subtype %@", StringFromNRLinkType, StringFromNRLinkSubtype);
  }
}

- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected
{
  connectedCopy = connected;
  changeCopy = change;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  proxyServiceInterfaceName = [changeCopy proxyServiceInterfaceName];
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      if (connectedCopy)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      [changeCopy linkType];
      StringFromNRLinkType = createStringFromNRLinkType();
      [changeCopy linkSubtype];
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer deviceIsConnectedDidChange:isConnected:]", 30, "NetworkRelayMonitor connected changed: %s, type %@, subtype %@, interface '%@'", v8, StringFromNRLinkType, StringFromNRLinkSubtype, proxyServiceInterfaceName);

      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_8:
}

- (void)_networkRelaySetupRequest:(id)request responseHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__85;
  v59 = __Block_byref_object_dispose__86;
  v60 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke;
  v52[3] = &unk_279BB8500;
  v54 = &v55;
  v52[4] = self;
  v7 = handlerCopy;
  v53 = v7;
  v42 = MEMORY[0x26676A4C0](v52);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v9 = CUPrintNSObjectOneLine();
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _networkRelaySetupRequest:responseHandler:]", 30, "NetworkRelaySetup request: %@", v9);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  if (!uTF8String)
  {
    v30 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960535, "No peer address");
    [(SKSetupBase *)self _completeWithError:v30];

    goto LABEL_35;
  }

  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v49 = 0;
  v11 = StringToSockAddr();
  if (v11)
  {
    v31 = NSErrorF_safe(*MEMORY[0x277CCA590], v11, "Convert peer IP failed");
    v32 = v56[5];
    v56[5] = v31;

    goto LABEL_35;
  }

  memset(&obj[1], 0, 24);
  v48 = 0;
  v12 = CUGetInterfaceAddresses();
  if (v12)
  {
    v33 = NSErrorF_safe(*MEMORY[0x277CCA590], v12, "Get awdl0 address failed");
    v34 = v56[5];
    v56[5] = v33;

    goto LABEL_35;
  }

  v13 = SockAddrToString();
  if (v13)
  {
    v35 = NSErrorF_safe(*MEMORY[0x277CCA590], v13, "Convert awdl0 address failed");
    v44 = v56[5];
    v56[5] = v35;

    goto LABEL_35;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v64];
  copySharedDeviceManager = self->_nrDeviceManager;
  if (!copySharedDeviceManager)
  {
    copySharedDeviceManager = [MEMORY[0x277D2C9E0] copySharedDeviceManager];
    if (!copySharedDeviceManager)
    {
      v40 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Get NRDeviceManager failed");
      copySharedDeviceManager = v56[5];
      v56[5] = v40;
      goto LABEL_34;
    }

    objc_storeStrong(&self->_nrDeviceManager, copySharedDeviceManager);
  }

  v15 = self->_nrDeviceIdentifier;
  if (v15)
  {
    v16 = self->super._ucat;
    if (v16->var0 < 31)
    {
      if (v16->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v16 = self->super._ucat;
      }

      nrDeviceIdentifier = [(NRDeviceIdentifier *)v15 nrDeviceIdentifier];
      LogPrintF(v16, "[SKSetupCaptiveNetworkJoinServer _networkRelaySetupRequest:responseHandler:]", 30, "NetworkRelaySetup unregister device: re-setup, %@", nrDeviceIdentifier);
    }

LABEL_17:
    [(NRDeviceManager *)copySharedDeviceManager unregisterDevice:v15];
    nrDeviceIdentifier = self->_nrDeviceIdentifier;
    self->_nrDeviceIdentifier = 0;
  }

  newEphemeralDeviceIdentifier = [MEMORY[0x277D2C9D0] newEphemeralDeviceIdentifier];
  if (!newEphemeralDeviceIdentifier)
  {
    v36 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "New NRDeviceIdentifier failed");
    v20 = v56[5];
    v56[5] = v36;
    goto LABEL_33;
  }

  objc_storeStrong(&self->_nrDeviceIdentifier, newEphemeralDeviceIdentifier);
  v20 = objc_alloc_init(MEMORY[0x277D2CA20]);
  v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v50 length:v49];
  [v20 setAwdlAddressData:v21];

  if ([(NSData *)self->super._pskData length])
  {
    [(NSData *)self->super._pskData bytes];
    [(NSData *)self->super._pskData length];
    CryptoHKDF();
    v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v63 length:{32, v63}];
  }

  else
  {
    skCnx = self->super._skCnx;
    v24 = v56 + 5;
    obj[0] = v56[5];
    v22 = [(SKConnection *)skCnx deriveKeyWithSaltPtr:"NetworkRelaySalt" saltLen:16 infoPtr:"NetworkRelayInfo" infoLen:16 keyLen:32 error:obj];
    objc_storeStrong(v24, obj[0]);
  }

  if (!v22)
  {
    v37 = v56;
    v38 = v56[5];
    if (v38)
    {
      v39 = v38;
      v25 = v37[5];
      v37[5] = v39;
    }

    else
    {
      v41 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Derive key failed");
      v25 = v56[5];
      v56[5] = v41;
    }

    goto LABEL_32;
  }

  [v20 setOutOfBandKey:v22];
  v25 = objc_alloc_init(MEMORY[0x277D2CA00]);
  [v25 setAllowedLinkTypes:&unk_28776E090];
  [v25 setAllowedLinkSubtypes:&unk_28776E0A8];
  [v25 setProxyCapability:1];
  if (objc_opt_respondsToSelector())
  {
    [v25 setProxyProviderRequiresWiFi:1];
  }

  v26 = self->_nrDeviceMonitor;
  if (!v26)
  {
    v26 = [objc_alloc(MEMORY[0x277D2C9F0]) initWithDeviceIdentifier:newEphemeralDeviceIdentifier delegate:self queue:self->super._dispatchQueue];
    objc_storeStrong(&self->_nrDeviceMonitor, v26);
  }

  v27 = self->super._ucat;
  if (v27->var0 <= 30)
  {
    if (v27->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      v27 = self->super._ucat;
    }

    LogPrintF(v27, "[SKSetupCaptiveNetworkJoinServer _networkRelaySetupRequest:responseHandler:]", 30, "NetworkRelaySetup register device start: %@, selfIP %@, peerIP %s", newEphemeralDeviceIdentifier, v43, uTF8String);
  }

LABEL_31:
  dispatchQueue = self->super._dispatchQueue;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke_192;
  v46[3] = &unk_279BB8370;
  v46[4] = self;
  [(NRDeviceManager *)copySharedDeviceManager registerDevice:newEphemeralDeviceIdentifier properties:v20 operationalproperties:v25 queue:dispatchQueue completionBlock:v46];
  v61 = @"_ip";
  v62 = v43;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  (*(v7 + 2))(v7, v29, 0, 0, &__block_literal_global_196);

LABEL_32:
LABEL_33:

LABEL_34:
LABEL_35:
  v42[2](v42);

  _Block_object_dispose(&v55, 8);
}

uint64_t __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 144);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKSetupCaptiveNetworkJoinServer _networkRelaySetupRequest:responseHandler:]_block_invoke", 90, "### NetworkRelaySetup request failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

void __77__SKSetupCaptiveNetworkJoinServer__networkRelaySetupRequest_responseHandler___block_invoke_192(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  v8 = v3;
  if (*v5 <= 30)
  {
    if (*v5 != -1)
    {
LABEL_3:
      v6 = CUPrintNSError();
      LogPrintF(v5, "[SKSetupCaptiveNetworkJoinServer _networkRelaySetupRequest:responseHandler:]_block_invoke", 30, "NetworkRelaySetup register device completed: %@", v6);

      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v7 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v7)
    {
      v5 = *(v4 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  dispatch_assert_queue_V2(*(v4 + 32));
  [*(a1 + 32) _run];
}

- (void)_networkRelayAWDLStartRequest:(id)request responseHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__85;
  v24 = __Block_byref_object_dispose__86;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__SKSetupCaptiveNetworkJoinServer__networkRelayAWDLStartRequest_responseHandler___block_invoke;
  v17[3] = &unk_279BB8500;
  v19 = &v20;
  v17[4] = self;
  v8 = handlerCopy;
  v18 = v8;
  v9 = MEMORY[0x26676A4C0](v17);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v11 = CUPrintNSObjectOneLine();
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _networkRelayAWDLStartRequest:responseHandler:]", 30, "AWDLStart request: %@", v11);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (!v12)
  {
    v16 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No advertise name");
    v13 = v21[5];
    v21[5] = v16;
    goto LABEL_11;
  }

  v13 = objc_alloc_init(MEMORY[0x277D02840]);
  objc_storeStrong(&self->_awdlAdvertiser, v13);
  [v13 setAdvertiseFlags:2048];
  [v13 setDispatchQueue:self->super._dispatchQueue];
  [v13 setDomain:@"local."];
  [v13 setInterfaceName:@"awdl0"];
  [v13 setName:v12];
  [v13 setPort:1234];
  [v13 setServiceType:@"_setupkit._tcp"];
  v26 = @"rpBA";
  v27[0] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v13 setTxtDictionary:v14];

  v15 = self->super._ucat;
  if (v15->var0 <= 30)
  {
    if (v15->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v15 = self->super._ucat;
    }

    LogPrintF(v15, "[SKSetupCaptiveNetworkJoinServer _networkRelayAWDLStartRequest:responseHandler:]", 30, "AWDL advertiser start: %@", v12);
  }

LABEL_10:
  [v13 activate];
  (*(v8 + 2))(v8, MEMORY[0x277CBEC10], 0, 0, &__block_literal_global_154);
LABEL_11:

  v9[2](v9);
  _Block_object_dispose(&v20, 8);
}

uint64_t __81__SKSetupCaptiveNetworkJoinServer__networkRelayAWDLStartRequest_responseHandler___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 144);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKSetupCaptiveNetworkJoinServer _networkRelayAWDLStartRequest:responseHandler:]_block_invoke", 90, "### AWDLStart request failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)_networkRelayDeviceEnsureStopped
{
  v12 = self->_nrDeviceManager;
  v3 = self->_nrDeviceIdentifier;
  if (v12)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->super._ucat;
      }

      nrDeviceIdentifier = [(NRDeviceIdentifier *)v3 nrDeviceIdentifier];
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _networkRelayDeviceEnsureStopped]", 30, "NetworkRelaySetup unregister device: stop, %@", nrDeviceIdentifier);
    }

LABEL_9:
    [(NRDeviceManager *)v12 unregisterDevice:v3];
  }

  nrDeviceIdentifier = self->_nrDeviceIdentifier;
  self->_nrDeviceIdentifier = 0;

  nrDeviceManager = self->_nrDeviceManager;
  self->_nrDeviceManager = 0;

  nrDeviceMonitor = self->_nrDeviceMonitor;
  self->_nrDeviceMonitor = 0;

  if (self->_awdlAdvertiser)
  {
    v10 = self->super._ucat;
    if (v10->var0 <= 30)
    {
      if (v10->var0 != -1)
      {
LABEL_13:
        LogPrintF(v10, "[SKSetupCaptiveNetworkJoinServer _networkRelayDeviceEnsureStopped]", 30, "AWDL advertiser stop");
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v10 = self->super._ucat;
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  [(CUBonjourAdvertiser *)self->_awdlAdvertiser invalidate];
  awdlAdvertiser = self->_awdlAdvertiser;
  self->_awdlAdvertiser = 0;
}

- (void)_cfuEnsuredStopped
{
  if (self->_mode == 1 && GestaltGetDeviceClass() != 7)
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30 && (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKSetupCaptiveNetworkJoinServer, "[SKSetupCaptiveNetworkJoinServer _cfuEnsuredStopped]", 30, "CFU reset on invalidate start");
    }

    cfuController = self->_cfuController;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStopped__block_invoke;
    v7[3] = &unk_279BB7A50;
    v7[4] = cfuController;
    v4 = cfuController;
    [(FLFollowUpController *)v4 clearPendingFollowUpItemsWithUniqueIdentifiers:&unk_28776E078 completion:v7];
  }

  if (self->_cfuController)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _cfuEnsuredStopped]", 30, "CFU stop");
    }
  }

LABEL_13:
  v6 = self->_cfuController;
  self->_cfuController = 0;
}

uint64_t __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStopped__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30)
  {
    v9 = v4;
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || (v4 = _LogCategory_Initialize(), v5 = v9, v4))
    {
      if (a2)
      {
        v6 = "yes";
      }

      else
      {
        v6 = "no";
      }

      v7 = CUPrintNSError();
      LogPrintF_safe(&gLogCategory_SKSetupCaptiveNetworkJoinServer, "[SKSetupCaptiveNetworkJoinServer _cfuEnsuredStopped]_block_invoke", 30, "CFU reset on invalidate completed: success %s, error %@", v6, v7);

      v5 = v9;
    }
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)_cfuEnsuredStarted
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (self->_cfuController)
  {
    return;
  }

  p_var0 = &self->super._ucat->var0;
  if (*p_var0 <= 30)
  {
    if (*p_var0 == -1)
    {
      p_var0 = _LogCategory_Initialize();
      if (!p_var0)
      {
        goto LABEL_6;
      }

      p_var0 = &self->super._ucat->var0;
    }

    p_var0 = LogPrintF(p_var0, "[SKSetupCaptiveNetworkJoinServer _cfuEnsuredStarted]", 30, "CFU post start");
  }

LABEL_6:
  v4 = [objc_alloc(getFLFollowUpControllerClass(p_var0)) initWithClientIdentifier:@"com.apple.SetupKit"];
  cfuController = self->_cfuController;
  self->_cfuController = v4;

  v6 = objc_alloc_init(getFLFollowUpItemClass());
  v7 = v6;
  if (v6)
  {
    v8 = [v6 setUniqueIdentifier:@"com.apple.SetupKit.followup.captive-portal"];
    v9 = getFLGroupIdentifierDevice(v8);
    [v7 setGroupIdentifier:v9];

    v10 = SKLocalizedString(@"CNJ_CFU_TITLE");
    [v7 setTitle:v10];

    v11 = objc_alloc_init(getFLFollowUpActionClass());
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=Network&cfuAction=launchCaptive&activate=true"];
      [v11 setUrl:v12];

      v15[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [v7 setActions:v13];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStarted__block_invoke;
      v14[3] = &unk_279BB7A50;
      v14[4] = self;
      [(FLFollowUpController *)v4 postFollowUpItem:v7 completion:v14];
    }
  }
}

uint64_t __53__SKSetupCaptiveNetworkJoinServer__cfuEnsuredStarted__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 32) + 144);
  if (*v7 <= 30)
  {
    v11 = v5;
    if (*v7 != -1)
    {
LABEL_3:
      if (a2)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      v9 = CUPrintNSError();
      LogPrintF(v7, "[SKSetupCaptiveNetworkJoinServer _cfuEnsuredStarted]_block_invoke", 30, "CFU post completed: success %s, error %@", v8, v9);

      v6 = v11;
      goto LABEL_8;
    }

    v5 = _LogCategory_Initialize();
    v6 = v11;
    if (v5)
    {
      v7 = *(*(a1 + 32) + 144);
      goto LABEL_3;
    }
  }

LABEL_8:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)_captiveNetworkProbeResult:(int)result responseHandler:(id)handler
{
  v4 = *&result;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = 4294896138;
  handlerCopy = handler;
  if (!v4)
  {
    v8 = CNWebsheetNotifyComplete();
    self->_captiveNetworkWebSheetActive = 0;
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 4294896139;
    }

    self->_captiveNetworkWebSheetCompleted = 1;
  }

  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      ucat = self->super._ucat;
    }

    v10 = CUPrintErrorCode();
    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkProbeResult:responseHandler:]", 30, "CaptiveNetworkProbe result: %d, %@", v4, v10);
  }

LABEL_10:
  v15 = @"_cnPR";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeResult_responseHandler___block_invoke;
  v13[3] = &unk_279BB7E38;
  v14 = v6;
  v13[4] = self;
  (*(handlerCopy + 2))(handlerCopy, v12, 0, 0, v13);
}

id *__78__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeResult_responseHandler___block_invoke(id *result)
{
  if (!*(result + 10))
  {
    return [result[4] _reportEventType:202];
  }

  return result;
}

- (void)_captiveNetworkProbeRequest:(id)request responseHandler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__85;
  v28 = __Block_byref_object_dispose__86;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeRequest_responseHandler___block_invoke;
  v21[3] = &unk_279BB8500;
  v23 = &v24;
  v21[4] = self;
  v8 = handlerCopy;
  v22 = v8;
  v9 = MEMORY[0x26676A4C0](v21);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkProbeRequest:responseHandler:]", 30, "CaptiveNetworkProbe start");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (!self->_captiveNetworkWebSheetActive)
  {
    if (CFPrefs_GetInt64())
    {
      v16 = 301056;
    }

    else if (self->_captiveNetworkWebSheetCompleted)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294960551;
    }

    v17 = self->super._ucat;
    if (v17->var0 > 30)
    {
      goto LABEL_19;
    }

    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v17 = self->super._ucat;
    }

    v18 = CUPrintErrorCode();
    LogPrintF(v17, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkProbeRequest:responseHandler:]", 30, "CaptiveNetworkProbe when not active: %@", v18);

LABEL_19:
    v30 = @"_cnPR";
    v19 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    v31[0] = v19;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    (*(v8 + 2))(v8, v11, 0, 0, &__block_literal_global_109);
    goto LABEL_20;
  }

  v11 = self->_captiveNetworkInterfaceName;
  if (v11)
  {
    v12 = objc_alloc_init(SKCaptiveContext);
    [(SKCaptiveContext *)v12 setResponseHandler:v8];
    [(SKCaptiveContext *)v12 setServer:self];
    v13 = v12;
    if (!CNProberCreate())
    {

      v14 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "CNProberCreate failed");
      v15 = v25[5];
      v25[5] = v14;
    }
  }

  else
  {
    v20 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960552, "No captive interface");
    v13 = v25[5];
    v25[5] = v20;
  }

LABEL_20:
  v9[2](v9);

  _Block_object_dispose(&v24, 8);
}

uint64_t __79__SKSetupCaptiveNetworkJoinServer__captiveNetworkProbeRequest_responseHandler___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 144);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkProbeRequest:responseHandler:]_block_invoke", 90, "### CaptiveNetworkProbe request failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)_captiveNetworkProbeEnsureStopped
{
  if (self->_captiveNetworkWebSheetActive)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkProbeEnsureStopped]", 30, "CaptiveNetwork cancel");
    }

LABEL_6:
    CNWebsheetNotifyComplete();
    self->_captiveNetworkWebSheetActive = 0;
  }
}

- (void)_captiveNetworkLoginInfo:(id)info cookie:(unsigned int)cookie responseHandler:(id)handler
{
  v32[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__85;
  v29 = __Block_byref_object_dispose__86;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__SKSetupCaptiveNetworkJoinServer__captiveNetworkLoginInfo_cookie_responseHandler___block_invoke;
  v22[3] = &unk_279BB8500;
  v24 = &v25;
  v22[4] = self;
  v10 = handlerCopy;
  v23 = v10;
  v11 = MEMORY[0x26676A4C0](v22);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v13 = CUPrintNSObjectOneLine();
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkLoginInfo:cookie:responseHandler:]", 30, "CaptiveNetworkLogin info: %@", v13);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (infoCopy)
  {
    CFStringGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    if (v14)
    {
      CFStringGetTypeID();
      v15 = CFDictionaryGetTypedValue();
      if (v15)
      {
        CFStringGetTypeID();
        v16 = CFDictionaryGetTypedValue();
        if (v16)
        {
          self->_captiveNetworkCookie = cookie;
          objc_storeStrong(&self->_captiveNetworkInterfaceName, v16);
          self->_captiveNetworkWebSheetActive = 1;
          v31[0] = @"_cnSS";
          v31[1] = @"_cnUR";
          v32[0] = v15;
          v32[1] = v14;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
          (*(v10 + 2))(v10, v17, 0, 0, &__block_literal_global_94);
        }

        else
        {
          v21 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No captive interface name");
          v17 = v26[5];
          v26[5] = v21;
        }
      }

      else
      {
        v20 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No captive SSID");
        v16 = v26[5];
        v26[5] = v20;
      }
    }

    else
    {
      v19 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No captive URL");
      v15 = v26[5];
      v26[5] = v19;
    }
  }

  else
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No websheet info");
    v14 = v26[5];
    v26[5] = v18;
  }

  v11[2](v11);
  _Block_object_dispose(&v25, 8);
}

uint64_t __83__SKSetupCaptiveNetworkJoinServer__captiveNetworkLoginInfo_cookie_responseHandler___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 144);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 144);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkLoginInfo:cookie:responseHandler:]_block_invoke", 90, "### CaptiveNetworkLogin response failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)_captiveNetworkLoginRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v8 = CUPrintNSObjectOneLine();
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkLoginRequest:responseHandler:]", 30, "CaptiveNetworkLogin request: %@", v8);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = objc_alloc_init(SKCaptiveContext);
  [(SKCaptiveContext *)v9 setResponseHandler:handlerCopy];
  [(SKCaptiveContext *)v9 setServer:self];
  v10 = v9;
  if (MEMORY[0x266769E70](_captiveNetworkLoginCallback, v10))
  {
    goto LABEL_11;
  }

  v11 = self->super._ucat;
  if (v11->var0 <= 90)
  {
    if (v11->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v11 = self->super._ucat;
    }

    LogPrintF(v11, "[SKSetupCaptiveNetworkJoinServer _captiveNetworkLoginRequest:responseHandler:]", 90, "### CaptiveNetworkLogin CNIAmTheWebsheetApp2 failed");
  }

LABEL_10:

  v12 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "CNIAmTheWebsheetApp2 failed");
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v12, &__block_literal_global_76);

LABEL_11:
}

- (void)_connectionEnded:(id)ended
{
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveNetworkProbeEnsureStopped];

  [(SKSetupCaptiveNetworkJoinServer *)self _networkRelayDeviceEnsureStopped];
}

- (void)_bleServerAcceptConnecton:(id)connecton
{
  connectonCopy = connecton;
  v4 = self->super._skCnx;
  if (!v4)
  {
    v5 = objc_alloc_init(SKConnection);
    [(SKConnection *)v5 setBleConnection:connectonCopy];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v5 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_95];
    goto LABEL_8;
  }

  v5 = v4;
  ucat = self->super._ucat;
  if (ucat->var0 <= 90)
  {
    v7 = connectonCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->super._ucat;
      v7 = connectonCopy;
    }

    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _bleServerAcceptConnecton:]", 90, "### Reject BLE connection when already connected: %@ vs %@", v7, v5);
  }

LABEL_7:
  [connectonCopy invalidate];
LABEL_8:
}

- (void)_bleServerEnsureStopped
{
  if (self->_bleServer)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _bleServerEnsureStopped]", 30, "BLE server stop");
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBServer *)self->_bleServer invalidate];
  bleServer = self->_bleServer;
  self->_bleServer = 0;
}

- (void)_bleServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBE090]);
    bleServer = self->_bleServer;
    self->_bleServer = v3;

    [(CBServer *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBServer *)v3 setBleListenPSM:130];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke;
    v7[3] = &unk_279BB8180;
    v7[4] = v3;
    v7[5] = self;
    [(CBServer *)v3 setAcceptHandler:v7];
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _bleServerEnsureStarted]", 30, "BLE server start: %@", v3);
    }

LABEL_6:
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBServer *)v3 activateWithCompletion:v6];
  }
}

void __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (*(a1 + 32) != v6[27])
  {
    v7 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Server invalidated");
    v5[2](v5, v7);

    goto LABEL_9;
  }

  v8 = v6[18];
  v9 = v11;
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v10 = _LogCategory_Initialize();
      v6 = *(a1 + 40);
      if (!v10)
      {
        v9 = v11;
        goto LABEL_8;
      }

      v8 = v6[18];
      v9 = v11;
    }

    LogPrintF(v8, "[SKSetupCaptiveNetworkJoinServer _bleServerEnsureStarted]_block_invoke", 30, "BLE server incoming connection: %@", v9);
    v9 = v11;
    v6 = *(a1 + 40);
  }

LABEL_8:
  [v6 _bleServerAcceptConnecton:v9];
  [*(a1 + 40) _run];
  v5[2](v5, 0);
LABEL_9:
}

uint64_t __58__SKSetupCaptiveNetworkJoinServer__bleServerEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == v4[27])
  {
    v6 = v4[18];
    v7 = *v6;
    v13 = v3;
    if (v3)
    {
      if (v7 <= 90)
      {
        if (v7 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v6 = *(*(a1 + 40) + 144);
        }

        v8 = CUPrintNSError();
        LogPrintF(v6, "[SKSetupCaptiveNetworkJoinServer _bleServerEnsureStarted]_block_invoke_2", 90, "### BLE server failed: %@", v8);
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v9 = *(a1 + 40);
      v10 = *(v9 + 216);
      *(v9 + 216) = 0;

LABEL_13:
      v3 = v13;
      goto LABEL_14;
    }

    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v11 = _LogCategory_Initialize();
        v4 = *(a1 + 40);
        if (!v11)
        {
          goto LABEL_12;
        }

        v6 = v4[18];
        v5 = *(a1 + 32);
      }

      LogPrintF(v6, "[SKSetupCaptiveNetworkJoinServer _bleServerEnsureStarted]_block_invoke_2", 30, "BLE server started: %@", v5);
      v4 = *(a1 + 40);
    }

LABEL_12:
    v4 = [v4 _run];
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)_bleAdvertiserEnsureStopped
{
  bleAdvertiser = self->_bleAdvertiser;
  if (bleAdvertiser)
  {
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _bleAdvertiserEnsureStopped]", 30, "BLE advertiser stop: %@", bleAdvertiser);
        bleAdvertiser = self->_bleAdvertiser;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      bleAdvertiser = self->_bleAdvertiser;
      if (v5)
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBAdvertiser *)bleAdvertiser invalidate];
  v6 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  if (!self->_bleAdvertiser)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = v3;

    [(CBAdvertiser *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBAdvertiser *)v3 setNearbyActionFlags:64];
    [(CBAdvertiser *)v3 setNearbyActionType:39];
    ucat = self->super._ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->super._ucat;
      }

      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _bleAdvertiserEnsureStarted]", 30, "BLE advertiser start: %@", v3);
    }

LABEL_6:
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SKSetupCaptiveNetworkJoinServer__bleAdvertiserEnsureStarted__block_invoke;
    v6[3] = &unk_279BB8838;
    v6[4] = v3;
    v6[5] = self;
    [(CBAdvertiser *)v3 activateWithCompletion:v6];
  }
}

uint64_t __62__SKSetupCaptiveNetworkJoinServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == v4[26])
  {
    v10 = v3;
    if (!v3)
    {
      v4 = [v4 _run];
LABEL_9:
      v3 = v10;
      goto LABEL_10;
    }

    v5 = v4[18];
    if (*v5 <= 90)
    {
      if (*v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v5 = *(*(a1 + 40) + 144);
      }

      v6 = CUPrintNSError();
      LogPrintF(v5, "[SKSetupCaptiveNetworkJoinServer _bleAdvertiserEnsureStarted]_block_invoke", 90, "### BLE advertiser failed: %@", v6);
    }

LABEL_8:
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 208);
    *(v7 + 208) = 0;

    goto LABEL_9;
  }

LABEL_10:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_bleAdvertiserShouldRun
{
  bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
  if (bleListeningPSM)
  {
    LOBYTE(bleListeningPSM) = [(SKConnection *)self->super._skCnx state]!= 1 && GestaltGetDeviceClass() != 7;
  }

  return bleListeningPSM;
}

- (void)_runDefault
{
  if (self->super._sendDataHandler)
  {
    [(SKSetupCaptiveNetworkJoinServer *)self _oobEnsureStarted];
  }

  else
  {
    [(SKSetupCaptiveNetworkJoinServer *)self _bleServerEnsureStarted];
  }

  if ([(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserShouldRun])
  {

    [(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserEnsureStarted];
  }

  else
  {

    [(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserEnsureStopped];
  }
}

- (void)_run
{
  if (!self->super._invalidateCalled)
  {
    mode = self->_mode;
    if (mode == 2)
    {

      [(SKSetupCaptiveNetworkJoinServer *)self _runUserRequest];
    }

    else if (mode == 1)
    {

      [(SKSetupCaptiveNetworkJoinServer *)self _runDetected];
    }

    else
    {
      if (mode)
      {
        ucat = self->super._ucat;
        if (ucat->var0 > 90)
        {
          return;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return;
          }

          ucat = self->super._ucat;
          mode = self->_mode;
        }

        LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinServer _run]", 90, "### Unsupported mode: %d", mode);
        return;
      }

      [(SKSetupCaptiveNetworkJoinServer *)self _runDefault];
    }
  }
}

- (void)_invalidated
{
  if (!self->_cfuController)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = SKSetupCaptiveNetworkJoinServer;
    [(SKSetupBase *)&v4 _invalidated];
  }
}

- (void)_invalidate
{
  [(SKSetupCaptiveNetworkJoinServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _bleServerEnsureStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveDetectedNotificationUpdate:0];
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveNetworkProbeEnsureStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _cfuEnsuredStopped];
  [(SKSetupCaptiveNetworkJoinServer *)self _networkRelayDeviceEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activate
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke;
  v11[3] = &unk_279BB7A28;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_2;
  v10[3] = &unk_279BB8370;
  v10[4] = self;
  [(SKSetupBase *)self registerRequestID:@"_awSt" options:0 requestHandler:v11 completionHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_3;
  v9[3] = &unk_279BB7A28;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_4;
  v8[3] = &unk_279BB8370;
  v8[4] = self;
  [(SKSetupBase *)self registerRequestID:@"_cnPb" options:0 requestHandler:v9 completionHandler:v8];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_5;
  v7[3] = &unk_279BB7A28;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_6;
  v6[3] = &unk_279BB8370;
  [(SKSetupBase *)self registerRequestID:@"_ntRl" options:0 requestHandler:v7 completionHandler:v6];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_7;
  v5[3] = &unk_279BB7A28;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_8;
  v4[3] = &unk_279BB8370;
  [(SKSetupBase *)self registerRequestID:@"_cnLg" options:0 requestHandler:v5 completionHandler:v4];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinServer;
  [(SKSetupBase *)&v3 _activate];
}

id *__44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_2(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _completeWithError:a2];
  }

  return result;
}

id *__44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_4(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _completeWithError:a2];
  }

  return result;
}

id *__44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_6(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _completeWithError:a2];
  }

  return result;
}

id *__44__SKSetupCaptiveNetworkJoinServer__activate__block_invoke_8(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _completeWithError:a2];
  }

  return result;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v19 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v18 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v18, &v19, "%@", v5);
    v6 = v18;
  }

  v17 = v6;
  mode = self->_mode;
  if (mode > 2)
  {
    v8 = @"?";
  }

  else
  {
    v8 = off_279BB7A98[mode];
  }

  CUAppendF(&v17, &v19, "mode %@", v8);
  v9 = v17;

  pskData = [(SKSetupBase *)self pskData];
  v11 = pskData;
  if (pskData)
  {
    v16 = v9;
    CUAppendF(&v16, &v19, "PSK %d bytes", [pskData length]);
    v12 = v16;

    v9 = v12;
  }

  v13 = &stru_2877689A8;
  if (v9)
  {
    v13 = v9;
  }

  v14 = v13;

  return v14;
}

- (void)dealloc
{
  [(SKSetupCaptiveNetworkJoinServer *)self _captiveDetectedNotificationUpdate:0];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinServer;
  [(SKSetupBase *)&v3 dealloc];
}

- (SKSetupCaptiveNetworkJoinServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupCaptiveNetworkJoinServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupCaptiveNetworkJoinServer];
  v3 = v2;
  if (v2)
  {
    v2->_captiveDetectedNotifyToken = -1;
    v2->super._setupType = 2;
    v4 = v2;
  }

  return v3;
}

+ (void)resetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_alloc(getFLFollowUpControllerClass(handlerCopy)) initWithClientIdentifier:@"com.apple.SetupKit"];
  if (v4)
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30 && (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKSetupCaptiveNetworkJoinServer, "+[SKSetupCaptiveNetworkJoinServer resetWithCompletionHandler:]", 30, "CFU reset start");
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SKSetupCaptiveNetworkJoinServer_resetWithCompletionHandler___block_invoke;
    v6[3] = &unk_279BB7A00;
    v8 = handlerCopy;
    v7 = v4;
    [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:&unk_28776E060 completion:v6];
  }

  else
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 90 && (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory_SKSetupCaptiveNetworkJoinServer, "+[SKSetupCaptiveNetworkJoinServer resetWithCompletionHandler:]", 90, "### CFU reset failed: no CFU controller");
    }

    if (handlerCopy)
    {
      v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Create FLFollowUpController failed");
      (*(handlerCopy + 2))(handlerCopy, v5);
    }
  }
}

uint64_t __62__SKSetupCaptiveNetworkJoinServer_resetWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (gLogCategory_SKSetupCaptiveNetworkJoinServer <= 30)
  {
    if (gLogCategory_SKSetupCaptiveNetworkJoinServer != -1 || (v8 = _LogCategory_Initialize(), v5 = v11, v8))
    {
      if (a2)
      {
        v6 = "yes";
      }

      else
      {
        v6 = "no";
      }

      v7 = CUPrintNSError();
      LogPrintF_safe(&gLogCategory_SKSetupCaptiveNetworkJoinServer, "+[SKSetupCaptiveNetworkJoinServer resetWithCompletionHandler:]_block_invoke", 30, "CFU reset completed: success %s, error %@", v6, v7);

      v5 = v11;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v9 = (*(v9 + 16))(v9, v11);
    v5 = v11;
  }

  return MEMORY[0x2821F96F8](v9, v5);
}

@end