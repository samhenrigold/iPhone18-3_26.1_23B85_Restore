@interface SKSetupCaptiveNetworkJoinClient
- (BOOL)_runNetworkRelayPeerStart;
- (SKSetupCaptiveNetworkJoinClient)init;
- (void)_captiveProbeRequest;
- (void)_invalidate;
- (void)_networkRelayEnsureStopped;
- (void)_postEvent:(id)event;
- (void)_run;
- (void)_runAWDLFoundDevice:(id)device;
- (void)_runAWDLFoundTimerStart;
- (void)_runAWDLStart;
- (void)_runCaptiveNetworkLoginResponse:(id)response;
- (void)_runCaptiveNetworkLoginStart;
- (void)_runNetworkRelaySelfStart;
- (void)deviceIsConnectedDidChange:(id)change isConnected:(BOOL)connected;
- (void)deviceLinkTypeDidChange:(id)change linkType:(unsigned __int8)type linkSubtype:(unsigned __int8)subtype;
- (void)deviceProxyServiceInterfaceNameDidChange:(id)change interfaceName:(id)name;
@end

@implementation SKSetupCaptiveNetworkJoinClient

- (void)deviceProxyServiceInterfaceNameDidChange:(id)change interfaceName:(id)name
{
  changeCopy = change;
  nameCopy = name;
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    v8 = changeCopy;
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->super._ucat;
      v8 = changeCopy;
    }

    if ([v8 isConnected])
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    [changeCopy linkType];
    StringFromNRLinkType = createStringFromNRLinkType();
    [changeCopy linkSubtype];
    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    proxyServiceInterfaceName = [changeCopy proxyServiceInterfaceName];
    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient deviceProxyServiceInterfaceNameDidChange:interfaceName:]", 30, "NetworkRelayMonitor interface changed: connected %s, type %@, subtype %@, interface '%@'", v9, StringFromNRLinkType, StringFromNRLinkSubtype, proxyServiceInterfaceName);
  }

LABEL_8:
  if ([changeCopy isConnected] && !self->_networkRelayProxyInterface && objc_msgSend(nameCopy, "length"))
  {
    objc_storeStrong(&self->_networkRelayProxyInterface, name);
    [(SKSetupCaptiveNetworkJoinClient *)self _run];
  }
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
    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient deviceLinkTypeDidChange:linkType:linkSubtype:]", 30, "NetworkRelayMonitor link type changed: type %@, subtype %@", StringFromNRLinkType, StringFromNRLinkSubtype);
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
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->super._ucat;
    }

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
    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient deviceIsConnectedDidChange:isConnected:]", 30, "NetworkRelayMonitor connected changed: %s, type %@, subtype %@, interface '%@'", v8, StringFromNRLinkType, StringFromNRLinkSubtype, proxyServiceInterfaceName);
  }

LABEL_8:
  if (connectedCopy && !self->_networkRelayProxyInterface && [proxyServiceInterfaceName length])
  {
    objc_storeStrong(&self->_networkRelayProxyInterface, proxyServiceInterfaceName);
    [(SKSetupCaptiveNetworkJoinClient *)self _run];
  }
}

- (void)_runCaptiveNetworkLoginResponse:(id)response
{
  responseCopy = response;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (v4)
  {
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
      if (v6)
      {
        v7 = self->_networkRelayProxyInterface;
        if (v7)
        {
          v8 = [[SKEventCaptiveNetworkPresent alloc] initWithCaptiveURL:v6 interfaceIdentifier:v7 ssid:v4];
          [(SKSetupBase *)self _reportEvent:v8];
          self->_captiveNetworkLoginDone = 1;
          [(SKSetupCaptiveNetworkJoinClient *)self _run];
        }

        else
        {
          v8 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No captive interface");
          [(SKSetupBase *)self _completeWithError:v8];
        }
      }

      else
      {
        v7 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Bad captive URL: '%@'", v5);
        [(SKSetupBase *)self _completeWithError:v7];
      }
    }

    else
    {
      v6 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No captive URL");
      [(SKSetupBase *)self _completeWithError:v6];
    }
  }

  else
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No captive SSID");
    [(SKSetupBase *)self _completeWithError:v5];
  }
}

- (void)_runCaptiveNetworkLoginStart
{
  v7[1] = *MEMORY[0x277D85DE8];
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->super._ucat;
    }

    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _runCaptiveNetworkLoginStart]", 30, "CaptiveNetworkLogin request");
  }

LABEL_5:
  v6 = @"timeoutSeconds";
  v7[0] = &unk_28776E1C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SKSetupCaptiveNetworkJoinClient__runCaptiveNetworkLoginStart__block_invoke;
  v5[3] = &unk_279BB86A0;
  v5[4] = self;
  [(SKSetupBase *)self sendRequestID:@"_cnLg" requestMessage:MEMORY[0x277CBEC10] options:v4 responseHandler:v5];
}

void __63__SKSetupCaptiveNetworkJoinClient__runCaptiveNetworkLoginStart__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = *(a1 + 32);
  v12 = v11[18];
  v13 = *v12;
  v20 = v10;
  if (v10 && !v9)
  {
    v14 = v10;
    if (v13 <= 30)
    {
      if (v13 == -1)
      {
        v19 = _LogCategory_Initialize();
        v11 = *(a1 + 32);
        if (!v19)
        {
          v14 = v20;
          goto LABEL_15;
        }

        v12 = v11[18];
      }

      v15 = CUPrintNSObjectOneLine();
      LogPrintF(v12, "[SKSetupCaptiveNetworkJoinClient _runCaptiveNetworkLoginStart]_block_invoke", 30, "CaptiveNetworkLogin response: %@", v15);

      v14 = v20;
      v11 = *(a1 + 32);
    }

LABEL_15:
    [v11 _runCaptiveNetworkLoginResponse:v14];
    goto LABEL_16;
  }

  if (v13 <= 90)
  {
    if (v13 != -1)
    {
LABEL_8:
      v16 = CUPrintNSError();
      LogPrintF(v12, "[SKSetupCaptiveNetworkJoinClient _runCaptiveNetworkLoginStart]_block_invoke", 90, "### CaptiveNetworkLogin request failed: %@", v16);

      v11 = *(a1 + 32);
      goto LABEL_10;
    }

    v17 = _LogCategory_Initialize();
    v11 = *(a1 + 32);
    if (v17)
    {
      v12 = v11[18];
      goto LABEL_8;
    }
  }

LABEL_10:
  if (v9)
  {
    [v11 _completeWithError:v9];
  }

  else
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No response, no error");
    [v11 _completeWithError:v18];
  }

LABEL_16:
}

- (void)_runNetworkRelaySelfStart
{
  v47 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__596;
  v44 = __Block_byref_object_dispose__597;
  v45 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke;
  v39[3] = &unk_279BB8670;
  v39[4] = self;
  v39[5] = &v40;
  v3 = MEMORY[0x26676A4C0](v39, a2);
  copySharedDeviceManager = self->_nrDeviceManager;
  if (!copySharedDeviceManager)
  {
    copySharedDeviceManager = [MEMORY[0x277D2C9E0] copySharedDeviceManager];
    if (!copySharedDeviceManager)
    {
      v31 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Get NRDeviceManager failed");
      copySharedDeviceManager = v41[5];
      v41[5] = v31;
      goto LABEL_27;
    }

    objc_storeStrong(&self->_nrDeviceManager, copySharedDeviceManager);
  }

  v5 = self->_nrDeviceIdentifier;
  if (v5)
  {
    ucat = self->super._ucat;
    if (ucat->var0 < 31)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->super._ucat;
      }

      nrDeviceIdentifier = [(NRDeviceIdentifier *)v5 nrDeviceIdentifier];
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelaySelfStart]", 30, "NetworkRelaySetup unregister device: re-setup, %@", nrDeviceIdentifier);
    }

LABEL_9:
    [(NRDeviceManager *)copySharedDeviceManager unregisterDevice:v5];
    nrDeviceIdentifier = self->_nrDeviceIdentifier;
    self->_nrDeviceIdentifier = 0;
  }

  newEphemeralDeviceIdentifier = [MEMORY[0x277D2C9D0] newEphemeralDeviceIdentifier];
  if (!newEphemeralDeviceIdentifier)
  {
    v22 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "New NRDeviceIdentifier failed");
    v10 = v41[5];
    v41[5] = v22;
    goto LABEL_26;
  }

  objc_storeStrong(&self->_nrDeviceIdentifier, newEphemeralDeviceIdentifier);
  v10 = objc_alloc_init(MEMORY[0x277D2CA20]);
  uTF8String = [(NSString *)self->_networkRelayPeerIPStr UTF8String];
  if (!uTF8String)
  {
    v23 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "No peer IP");
    v24 = v41[5];
    v41[5] = v23;

    goto LABEL_26;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v36 = 0;
  v12 = StringToSockAddr();
  if (v12)
  {
    v25 = NSErrorF_safe(*MEMORY[0x277CCA590], v12, "Convert peer IP failed");
    v14 = v41[5];
    v41[5] = v25;
    goto LABEL_25;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v37 length:v36];
  [v10 setAwdlAddressData:v13];

  if ([(NSData *)self->super._pskData length])
  {
    [(NSData *)self->super._pskData bytes];
    [(NSData *)self->super._pskData length];
    CryptoHKDF();
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v46 length:{32, v46}];
  }

  else
  {
    skCnx = self->super._skCnx;
    v16 = v41;
    obj = v41[5];
    v14 = [(SKConnection *)skCnx deriveKeyWithSaltPtr:"NetworkRelaySalt" saltLen:16 infoPtr:"NetworkRelayInfo" infoLen:16 keyLen:32 error:&obj];
    objc_storeStrong(v16 + 5, obj);
  }

  if (!v14)
  {
    v26 = v41;
    v27 = v41[5];
    if (v27)
    {
      v28 = v27;
      v17 = v26[5];
      v26[5] = v28;
    }

    else
    {
      v32 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "Derive key failed");
      v17 = v41[5];
      v41[5] = v32;
    }

    goto LABEL_24;
  }

  [v10 setOutOfBandKey:v14];
  v17 = objc_alloc_init(MEMORY[0x277D2CA00]);
  [v17 setAllowedLinkTypes:&unk_28776E0C0];
  [v17 setAllowedLinkSubtypes:&unk_28776E0D8];
  [v17 setProxyCapability:2];
  v18 = [objc_alloc(MEMORY[0x277D2C9F0]) initWithDeviceIdentifier:self->_nrDeviceIdentifier delegate:self queue:self->super._dispatchQueue];
  if (!v18)
  {
    v29 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "No create NRDeviceMonitor failed");
    v30 = v41[5];
    v41[5] = v29;

    goto LABEL_23;
  }

  objc_storeStrong(&self->_nrDeviceMonitor, v18);
  v19 = self->super._ucat;
  if (v19->var0 <= 30)
  {
    if (v19->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v19 = self->super._ucat;
    }

    LogPrintF(v19, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelaySelfStart]", 30, "NetworkRelaySetup register device start: %@, peerIP %s", newEphemeralDeviceIdentifier, uTF8String);
  }

LABEL_22:
  dispatchQueue = self->super._dispatchQueue;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_87;
  v34[3] = &unk_279BB8370;
  v34[4] = self;
  [(NRDeviceManager *)copySharedDeviceManager registerDevice:newEphemeralDeviceIdentifier properties:v10 operationalproperties:v17 queue:dispatchQueue completionBlock:v34];
  v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->super._dispatchQueue);
  objc_storeStrong(&self->_networkRelayTimer, v21);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_2;
  handler[3] = &unk_279BB8648;
  handler[4] = v21;
  handler[5] = self;
  dispatch_source_set_event_handler(v21, handler);
  CUDispatchTimerSet();
  dispatch_activate(v21);

LABEL_23:
LABEL_24:

LABEL_25:
LABEL_26:

LABEL_27:
  v3[2](v3);

  _Block_object_dispose(&v40, 8);
}

void *__60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke(void *result)
{
  v1 = result[5];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = result[4];
  v4 = v3[18];
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = v2[4];
      v1 = v2[5];
      if (!v6)
      {
        goto LABEL_7;
      }

      v4 = v3[18];
    }

    v5 = CUPrintNSError();
    LogPrintF(v4, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelaySelfStart]_block_invoke", 90, "### NetworkRelaySetup request failed: %@", v5);

    v3 = v2[4];
    v1 = v2[5];
  }

LABEL_7:
  v7 = *(*(v1 + 8) + 40);

  return [v3 _completeWithError:v7];
}

uint64_t __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_87(uint64_t a1, void *a2)
{
  v10 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  v3 = v10;
  v4 = *(a1 + 32);
  v5 = v4[18];
  v6 = *v5;
  if (v10)
  {
    if (v6 <= 90)
    {
      if (v6 == -1)
      {
        v8 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v8)
        {
          goto LABEL_9;
        }

        v5 = v4[18];
      }

      v7 = CUPrintNSError();
      LogPrintF(v5, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelaySelfStart]_block_invoke", 90, "### NetworkRelaySetup register device failed: %@", v7);

      v4 = *(a1 + 32);
    }

LABEL_9:
    v4 = [v4 _completeWithError:v10];
    goto LABEL_10;
  }

  if (v6 > 30)
  {
    goto LABEL_11;
  }

  if (v6 != -1)
  {
LABEL_7:
    v4 = LogPrintF(v5, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelaySelfStart]_block_invoke", 30, "NetworkRelaySetup register device completed");
LABEL_10:
    v3 = v10;
    goto LABEL_11;
  }

  v4 = _LogCategory_Initialize();
  v3 = 0;
  if (v4)
  {
    v5 = *(*(a1 + 32) + 144);
    goto LABEL_7;
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v4, v3);
}

void __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelaySelfStart__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[33];
  if (v1 == v3)
  {
    if (v1)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 264);
      *(v6 + 264) = 0;

      v2 = *(a1 + 40);
    }

    v8 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960574, "NetworkRelaySetup timeout");
    [v2 _completeWithError:v8];
  }
}

- (BOOL)_runNetworkRelayPeerStart
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0;
  v3 = CUGetInterfaceAddresses();
  if (v3)
  {
    v13 = NSErrorF_safe(*MEMORY[0x277CCA590], v3, "Get awdl0 address failed");
    [(SKSetupBase *)self _completeWithError:v13];

    return 0;
  }

  v4 = SockAddrToString();
  v5 = v4 == 0;
  if (v4)
  {
    v7 = NSErrorF_safe(*MEMORY[0x277CCA590], v4, "Convert awdl0 address failed");
    [(SKSetupBase *)self _completeWithError:v7];
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
  v22 = @"_ip";
  v23 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v20 = @"timeoutSeconds";
  v21 = &unk_28776E1C8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
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

    v10 = CUPrintNSObjectOneLine();
    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelayPeerStart]", 30, "NetworkRelaySetup peer request: %@", v10);
  }

LABEL_7:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelayPeerStart__block_invoke;
  v14[3] = &unk_279BB7EB0;
  v14[4] = self;
  v15 = v6;
  v11 = v6;
  [(SKSetupBase *)self sendRequestID:@"_ntRl" requestMessage:v7 options:v8 responseHandler:v14];

LABEL_8:
  return v5;
}

void __60__SKSetupCaptiveNetworkJoinClient__runNetworkRelayPeerStart__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = a2;
  v7 = a3;
  v8 = a4;
  if (v21 && !v8)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    v10 = [v9 UTF8String];
    v11 = *(a1 + 32);
    if (!v10)
    {
      v20 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960535, "No peer address");
      [v11 _completeWithError:v20];

      goto LABEL_16;
    }

    objc_storeStrong(v11 + 31, v9);
    v12 = *(a1 + 32);
    v13 = v12[18];
    if (*v13 <= 30)
    {
      if (*v13 == -1)
      {
        v19 = _LogCategory_Initialize();
        v12 = *(a1 + 32);
        if (!v19)
        {
          goto LABEL_15;
        }

        v13 = v12[18];
      }

      LogPrintF(v13, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelayPeerStart]_block_invoke", 30, "NetworkRelaySetup peer succeeded: selfIP %@, peerIP %@", *(a1 + 40), v9);
      v12 = *(a1 + 32);
    }

LABEL_15:
    [v12 _run];
LABEL_16:

    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  v15 = v14[18];
  if (*v15 <= 90)
  {
    if (*v15 != -1)
    {
LABEL_9:
      v16 = CUPrintNSError();
      LogPrintF(v15, "[SKSetupCaptiveNetworkJoinClient _runNetworkRelayPeerStart]_block_invoke", 90, "### NetworkRelaySetup peer failed: %@", v16);

      v14 = *(a1 + 32);
      goto LABEL_11;
    }

    v17 = _LogCategory_Initialize();
    v14 = *(a1 + 32);
    if (v17)
    {
      v15 = v14[18];
      goto LABEL_9;
    }
  }

LABEL_11:
  if (v8)
  {
    [v14 _completeWithError:v8];
  }

  else
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No response, no error");
    [v14 _completeWithError:v18];
  }

LABEL_17:
}

- (void)_runAWDLFoundDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  awdlName = self->_awdlName;
  v7 = name;
  v8 = awdlName;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_6;
  }

  if ((v7 != 0) == (v8 == 0))
  {

    goto LABEL_15;
  }

  v10 = [(NSString *)v7 isEqual:v8];

  if (v10)
  {
LABEL_6:
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

      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _runAWDLFoundDevice:]", 30, "AWDL browser found: %@", deviceCopy);
    }

LABEL_10:
    objc_storeStrong(&self->_awdlPeerDevice, device);
    [(SKSetupCaptiveNetworkJoinClient *)self _run];
    goto LABEL_11;
  }

LABEL_15:
  v12 = self->super._ucat;
  if (v12->var0 > 30)
  {
    goto LABEL_11;
  }

  if (v12->var0 != -1)
  {
    goto LABEL_17;
  }

  if (_LogCategory_Initialize())
  {
    v12 = self->super._ucat;
LABEL_17:
    LogPrintF(v12, "[SKSetupCaptiveNetworkJoinClient _runAWDLFoundDevice:]", 30, "AWDL browser ignore name mismatch: %@", deviceCopy);
  }

LABEL_11:
}

- (void)_runAWDLFoundTimerStart
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->super._dispatchQueue);
  awdlTimer = self->_awdlTimer;
  self->_awdlTimer = v3;
  v5 = v3;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SKSetupCaptiveNetworkJoinClient__runAWDLFoundTimerStart__block_invoke;
  v6[3] = &unk_279BB8648;
  v6[4] = v5;
  v6[5] = self;
  dispatch_source_set_event_handler(v5, v6);
  CUDispatchTimerSet();
  dispatch_activate(v5);
}

void __58__SKSetupCaptiveNetworkJoinClient__runAWDLFoundTimerStart__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[30];
  if (v1 == v3)
  {
    if (v1)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 240);
      *(v6 + 240) = 0;

      v2 = *(a1 + 40);
    }

    v8 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960574, "AWDL find timeout");
    [v2 _completeWithError:v8];
  }
}

- (void)_runAWDLStart
{
  v18[2] = *MEMORY[0x277D85DE8];
  [(CUBonjourBrowser *)self->_awdlBrowser invalidate];
  awdlPeerDevice = self->_awdlPeerDevice;
  self->_awdlPeerDevice = 0;

  v4 = objc_alloc_init(MEMORY[0x277D02848]);
  awdlBrowser = self->_awdlBrowser;
  self->_awdlBrowser = v4;

  [(CUBonjourBrowser *)v4 setChangeFlags:0xFFFFFFFFLL];
  [(CUBonjourBrowser *)v4 setDispatchQueue:self->super._dispatchQueue];
  [(CUBonjourBrowser *)v4 setDomain:@"local."];
  [(CUBonjourBrowser *)v4 setInterfaceName:@"awdl0"];
  [(CUBonjourBrowser *)v4 setServiceType:@"_setupkit._tcp"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke;
  v13[3] = &unk_279BB7E60;
  v13[4] = v4;
  v13[5] = self;
  [(CUBonjourBrowser *)v4 setDeviceFoundHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_2;
  v12[3] = &unk_279BB7E88;
  v12[4] = v4;
  v12[5] = self;
  [(CUBonjourBrowser *)v4 setDeviceChangedHandler:v12];
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _runAWDLStart]", 30, "AWDL browser start");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->super._ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(CUBonjourBrowser *)v4 activate];
  *(v18 + 5) = 0;
  v18[0] = 0;
  RandomString();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v18];
  objc_storeStrong(&self->_awdlName, v7);
  v8 = self->super._ucat;
  if (v8->var0 <= 30)
  {
    if (v8->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v8 = self->super._ucat;
    }

    LogPrintF(v8, "[SKSetupCaptiveNetworkJoinClient _runAWDLStart]", 30, "AWDLStart request: name '%@'", v7);
  }

LABEL_9:
  self->_awdlAdvertiserPeerStarted = 0;
  v16 = @"_nm";
  v17 = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = @"timeoutSeconds";
  v15 = &unk_28776E1C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_3;
  v11[3] = &unk_279BB86A0;
  v11[4] = self;
  [(SKSetupBase *)self sendRequestID:@"_awSt" requestMessage:v9 options:v10 responseHandler:v11];
}

void *__48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[27])
  {
    return [result _runAWDLFoundDevice:a2];
  }

  return result;
}

void *__48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[27])
  {
    return [result _runAWDLFoundDevice:a2];
  }

  return result;
}

void __48__SKSetupCaptiveNetworkJoinClient__runAWDLStart__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(v9 + 144);
  v11 = *v10;
  if (v16 && !v8)
  {
    if (v11 <= 30)
    {
      if (v11 == -1)
      {
        v15 = _LogCategory_Initialize();
        v9 = *(a1 + 32);
        if (!v15)
        {
          goto LABEL_14;
        }

        v10 = *(v9 + 144);
      }

      LogPrintF(v10, "[SKSetupCaptiveNetworkJoinClient _runAWDLStart]_block_invoke_3", 30, "AWDLStart succeeded");
      v9 = *(a1 + 32);
    }

LABEL_14:
    *(v9 + 210) = 1;
    [*(a1 + 32) _run];
    goto LABEL_15;
  }

  if (v11 <= 90)
  {
    if (v11 != -1)
    {
LABEL_8:
      v12 = CUPrintNSError();
      LogPrintF(v10, "[SKSetupCaptiveNetworkJoinClient _runAWDLStart]_block_invoke_3", 90, "### AWDLStart failed: %@", v12);

      v9 = *(a1 + 32);
      goto LABEL_10;
    }

    v13 = _LogCategory_Initialize();
    v9 = *(a1 + 32);
    if (v13)
    {
      v10 = *(v9 + 144);
      goto LABEL_8;
    }
  }

LABEL_10:
  if (v8)
  {
    [v9 _completeWithError:v8];
  }

  else
  {
    v14 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No response, no error");
    [v9 _completeWithError:v14];
  }

LABEL_15:
}

- (void)_run
{
  if (!self->super._invalidateCalled)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          runState = self->super._runState;
          switch(runState)
          {
            case 0:
              v4 = 11;
              goto LABEL_30;
            case 11:
              [(SKSetupBase *)self _connectionStartWithSKConnection:0 clientMode:1 completeOnFailure:1 completion:&__block_literal_global_642];
              goto LABEL_28;
            case 12:
              state = [(SKConnection *)self->super._skCnx state];
              v4 = self->super._runState;
              if (state != 1)
              {
                break;
              }

              goto LABEL_29;
            case 13:
              [(SKSetupCaptiveNetworkJoinClient *)self _runAWDLStart];
              goto LABEL_28;
            case 14:
              if (self->_awdlAdvertiserPeerStarted)
              {
                v4 = 15;
                goto LABEL_30;
              }

              v4 = 14;
              break;
            case 15:
              [(SKSetupCaptiveNetworkJoinClient *)self _runAWDLFoundTimerStart];
              goto LABEL_28;
            case 16:
              if (!self->_awdlPeerDevice)
              {
                v4 = 16;
                break;
              }

              v6 = 240;
              awdlTimer = self->_awdlTimer;
              if (awdlTimer)
              {
                goto LABEL_27;
              }

              v4 = 17;
              goto LABEL_30;
            case 17:
              _runNetworkRelayPeerStart = [(SKSetupCaptiveNetworkJoinClient *)self _runNetworkRelayPeerStart];
              v4 = self->super._runState;
              if (!_runNetworkRelayPeerStart)
              {
                break;
              }

              goto LABEL_29;
            case 18:
              if (self->_networkRelayPeerIPStr)
              {
                v4 = 19;
                goto LABEL_30;
              }

              v4 = 18;
              break;
            case 19:
              [(SKSetupCaptiveNetworkJoinClient *)self _runNetworkRelaySelfStart];
              goto LABEL_28;
            case 20:
              if (!self->_networkRelayProxyInterface)
              {
                v4 = 20;
                break;
              }

              v6 = 264;
              awdlTimer = self->_networkRelayTimer;
              if (awdlTimer)
              {
LABEL_27:
                v9 = awdlTimer;
                dispatch_source_cancel(v9);
                v10 = *(&self->super.super.isa + v6);
                *(&self->super.super.isa + v6) = 0;

LABEL_28:
                v4 = self->super._runState;
LABEL_29:
                ++v4;
              }

              else
              {
                v4 = 21;
              }

              goto LABEL_30;
            case 21:
              [(SKSetupCaptiveNetworkJoinClient *)self _runCaptiveNetworkLoginStart];
              goto LABEL_28;
            case 22:
              if (self->_captiveNetworkLoginDone)
              {
                v4 = 23;
                goto LABEL_30;
              }

              v4 = 22;
              break;
            case 23:
              if (self->_captiveNetworkProbingSuccess)
              {
                v4 = 24;
LABEL_30:
                self->super._runState = v4;
              }

              else
              {
                v4 = 23;
              }

              break;
            case 24:
              [(SKSetupBase *)self _completeWithError:0];
              v4 = self->super._runState;
              break;
            default:
              return;
          }

          if (v4 == runState)
          {
            return;
          }

          ucat = self->super._ucat;
        }

        while (ucat->var0 > 30);
        if (ucat->var0 == -1)
        {
          break;
        }

LABEL_34:
        if ((0x1FFF8FFu >> runState))
        {
          v12 = off_279BB7ED0[runState];
        }

        else if (runState <= 9)
        {
          v12 = "?";
        }

        else
        {
          v12 = "User";
        }

        if (v4 < 0x19 && ((0x1FFF8FFu >> v4) & 1) != 0)
        {
          v13 = off_279BB7ED0[v4];
        }

        else if (v4 <= 9)
        {
          v13 = "?";
        }

        else
        {
          v13 = "User";
        }

        LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _run]", 30, "State: %s -> %s", v12, v13);
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        v4 = self->super._runState;
        goto LABEL_34;
      }
    }
  }
}

- (void)_postEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy eventType] == 201)
  {
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

      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _postEvent:]", 30, "ReportEvent: %@", eventCopy);
    }

LABEL_7:
    [(SKSetupCaptiveNetworkJoinClient *)self _captiveProbeRequest];
    goto LABEL_8;
  }

  v6.receiver = self;
  v6.super_class = SKSetupCaptiveNetworkJoinClient;
  [(SKSetupBase *)&v6 _postEvent:eventCopy];
LABEL_8:
}

- (void)_networkRelayEnsureStopped
{
  [(CUBonjourBrowser *)self->_awdlBrowser invalidate];
  awdlBrowser = self->_awdlBrowser;
  self->_awdlBrowser = 0;

  awdlTimer = self->_awdlTimer;
  if (awdlTimer)
  {
    v5 = awdlTimer;
    dispatch_source_cancel(v5);
    v6 = self->_awdlTimer;
    self->_awdlTimer = 0;
  }

  networkRelayTimer = self->_networkRelayTimer;
  if (networkRelayTimer)
  {
    v8 = networkRelayTimer;
    dispatch_source_cancel(v8);
    v9 = self->_networkRelayTimer;
    self->_networkRelayTimer = 0;
  }

  v17 = self->_nrDeviceManager;
  v10 = self->_nrDeviceIdentifier;
  if (v17)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
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

      nrDeviceIdentifier = [(NRDeviceIdentifier *)v10 nrDeviceIdentifier];
      LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _networkRelayEnsureStopped]", 30, "NetworkRelaySetup unregister device: stop, %@", nrDeviceIdentifier);
    }

LABEL_13:
    [(NRDeviceManager *)v17 unregisterDevice:v10];
  }

  nrDeviceIdentifier = self->_nrDeviceIdentifier;
  self->_nrDeviceIdentifier = 0;

  nrDeviceManager = self->_nrDeviceManager;
  self->_nrDeviceManager = 0;

  nrDeviceMonitor = self->_nrDeviceMonitor;
  self->_nrDeviceMonitor = 0;
}

- (void)_captiveProbeRequest
{
  v7[1] = *MEMORY[0x277D85DE8];
  ucat = self->super._ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->super._ucat;
    }

    LogPrintF(ucat, "[SKSetupCaptiveNetworkJoinClient _captiveProbeRequest]", 30, "CaptiveNetworkProbe request");
  }

LABEL_5:
  v6 = @"timeoutSeconds";
  v7[0] = &unk_28776E1C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SKSetupCaptiveNetworkJoinClient__captiveProbeRequest__block_invoke;
  v5[3] = &unk_279BB86A0;
  v5[4] = self;
  [(SKSetupBase *)self sendRequestID:@"_cnPb" requestMessage:MEMORY[0x277CBEC10] options:v4 responseHandler:v5];
}

void __55__SKSetupCaptiveNetworkJoinClient__captiveProbeRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = *(a1 + 32);
  v12 = v11[18];
  v13 = *v12;
  v20 = v10;
  if (v10 && !v9)
  {
    v14 = v10;
    if (v13 <= 30)
    {
      if (v13 == -1)
      {
        v19 = _LogCategory_Initialize();
        v11 = *(a1 + 32);
        if (!v19)
        {
          v14 = v20;
          goto LABEL_15;
        }

        v12 = v11[18];
      }

      v15 = CUPrintNSObjectOneLine();
      LogPrintF(v12, "[SKSetupCaptiveNetworkJoinClient _captiveProbeRequest]_block_invoke", 30, "CaptiveNetworkProbe response: %@", v15);

      v14 = v20;
      v11 = *(a1 + 32);
    }

LABEL_15:
    [v11 _captiveProbeResponse:v14];
    goto LABEL_16;
  }

  if (v13 <= 90)
  {
    if (v13 != -1)
    {
LABEL_8:
      v16 = CUPrintNSError();
      LogPrintF(v12, "[SKSetupCaptiveNetworkJoinClient _captiveProbeRequest]_block_invoke", 90, "### CaptiveNetworkProbe request failed: %@", v16);

      v11 = *(a1 + 32);
      goto LABEL_10;
    }

    v17 = _LogCategory_Initialize();
    v11 = *(a1 + 32);
    if (v17)
    {
      v12 = v11[18];
      goto LABEL_8;
    }
  }

LABEL_10:
  if (v9)
  {
    [v11 _completeWithError:v9];
  }

  else
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No response, no error");
    [v11 _completeWithError:v18];
  }

LABEL_16:
}

- (void)_invalidate
{
  [(SKSetupCaptiveNetworkJoinClient *)self _networkRelayEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupCaptiveNetworkJoinClient;
  [(SKSetupBase *)&v3 _invalidate];
}

- (SKSetupCaptiveNetworkJoinClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupCaptiveNetworkJoinClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupCaptiveNetworkJoinClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end