@interface EasyConfigDevice
+ (BOOL)supportedScanRecord:(id)record;
+ (id)deviceWithInfo:(id)info;
+ (id)deviceWithScanRecord:(id)record;
- (BOOL)removed:(id)removed;
- (BOOL)updated:(id)updated;
- (EasyConfigDevice)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)_applyConfigStart;
- (int)_configureStart:(id)start;
- (int)_findDevicePostConfigStart;
- (int)_findDevicePreConfigStart;
- (int)_mfiSAPNext:(HTTPMessagePrivate *)next;
- (int)_mfiSAPStart;
- (int)_pairSetupNext:(HTTPMessagePrivate *)next;
- (int)_pairSetupStart;
- (int)_pairVerifyNext:(HTTPMessagePrivate *)next;
- (int)_pairVerifyStart;
- (int)_setupClient:(id)client;
- (int)_startBonjourWithTimeout:(int)timeout handler:(id)handler;
- (int)_timeoutTimerStart:(int)start block:(id)block;
- (void)_applyConfigCompletion:(HTTPMessagePrivate *)completion;
- (void)_findDevicePostConfigEvent:(unsigned int)event info:(id)info;
- (void)_findDevicePreConfigEvent:(unsigned int)event info:(id)info;
- (void)_handleError:(int)error;
- (void)_logEnded;
- (void)_postConfigCheckCompletion:(HTTPMessagePrivate *)completion;
- (void)_postConfigCheckStart:(id)start;
- (void)_postNote:(id)note info:(id)info;
- (void)_postProgress:(int)progress info:(id)info;
- (void)_postProgress:(int)progress withResponse:(id)response;
- (void)_start;
- (void)_stop:(int)_stop;
- (void)_trySetupCode:(id)code;
- (void)dealloc;
- (void)resumePostConfig;
- (void)setPairingDelegate:(const void *)delegate;
- (void)setPostConfigMetrics:(id *)metrics;
- (void)setPreConfigMetrics:(id *)metrics;
- (void)setPromptForSetupCodeHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)trySetupCode:(id)code;
@end

@implementation EasyConfigDevice

- (int)_timeoutTimerStart:(int)start block:(id)block
{
  blockCopy = block;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v8 = timeoutTimer;
    dispatch_source_cancel(v8);
    v9 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  v11 = self->_timeoutTimer;
  self->_timeoutTimer = v10;

  if (v10)
  {
    dispatch_source_set_event_handler(v10, blockCopy);
    v12 = dispatch_time(0, 1000000000 * start);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v10);
    v13 = 0;
  }

  else
  {
    v13 = -6700;
  }

  return v13;
}

- (int)_startBonjourWithTimeout:(int)timeout handler:(id)handler
{
  v4 = *&timeout;
  handlerCopy = handler;
  if (!self->_supportsHAP2)
  {
    p_airplayBrowser = &self->_airplayBrowser;
    if (self->_airplayBrowser)
    {
      BonjourBrowser_Stop();
      CFRelease(*p_airplayBrowser);
      *p_airplayBrowser = 0;
    }

    v8 = BonjourBrowser_Create();
    if (v8)
    {
      goto LABEL_20;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandlerBlock();
    v8 = BonjourBrowser_Start();
    if (v8)
    {
      goto LABEL_20;
    }

    selfCopy = self;

    p_raopBrowser = &selfCopy->_raopBrowser;
    if (selfCopy->_raopBrowser)
    {
      BonjourBrowser_Stop();
      CFRelease(*p_raopBrowser);
      *p_raopBrowser = 0;
    }

    v8 = BonjourBrowser_Create();
    if (v8)
    {
      goto LABEL_20;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandlerBlock();
    v8 = BonjourBrowser_Start();
    if (v8)
    {
      goto LABEL_20;
    }

    v14 = selfCopy;

    p_mfiConfigBrowser = &v14->_mfiConfigBrowser;
    if (v14->_mfiConfigBrowser)
    {
      BonjourBrowser_Stop();
      CFRelease(*p_mfiConfigBrowser);
      *p_mfiConfigBrowser = 0;
    }

    v8 = BonjourBrowser_Create();
    if (v8)
    {
      goto LABEL_20;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandlerBlock();
    v8 = BonjourBrowser_Start();
    if (v8)
    {
      goto LABEL_20;
    }
  }

  p_hapBrowser = &self->_hapBrowser;
  if (self->_hapBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(*p_hapBrowser);
    *p_hapBrowser = 0;
  }

  v8 = BonjourBrowser_Create();
  if (!v8)
  {
    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandlerBlock();
    v8 = BonjourBrowser_Start();
    if (!v8)
    {
      selfCopy2 = self;

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __53__EasyConfigDevice__startBonjourWithTimeout_handler___block_invoke;
      v17[3] = &unk_278FBEBB8;
      v17[4] = selfCopy2;
      v10 = [(EasyConfigDevice *)selfCopy2 _timeoutTimerStart:v4 block:v17];
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

LABEL_20:
  v10 = v8;
LABEL_21:
  if (self->_airplayBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_airplayBrowser);
    self->_airplayBrowser = 0;
  }

  if (self->_raopBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_raopBrowser);
    self->_raopBrowser = 0;
  }

  if (self->_mfiConfigBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_mfiConfigBrowser);
    self->_mfiConfigBrowser = 0;
  }

  if (self->_hapBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_hapBrowser);
    self->_hapBrowser = 0;
  }

LABEL_29:

  return v10;
}

- (int)_setupClient:(id)client
{
  clientCopy = client;
  p_httpClient = &self->_httpClient;
  if (self->_httpClient)
  {
    HTTPClientInvalidate();
    CFRelease(*p_httpClient);
    *p_httpClient = 0;
  }

  DNSName = HTTPClientCreate();
  if (DNSName || (HTTPClientSetDispatchQueue(), HTTPClientSetFlags(), HTTPClientSetLogging(), (DNSName = BonjourDevice_GetDNSName()) != 0))
  {
    v7 = DNSName;
  }

  else
  {
    v7 = HTTPClientSetDestination();
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (*p_httpClient)
  {
    HTTPClientInvalidate();
    CFRelease(*p_httpClient);
    *p_httpClient = 0;
  }

LABEL_8:

  return v7;
}

- (void)_postProgress:(int)progress withResponse:(id)response
{
  responseCopy = response;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__EasyConfigDevice__postProgress_withResponse___block_invoke;
  block[3] = &unk_278FBEC80;
  progressCopy = progress;
  block[4] = self;
  v10 = responseCopy;
  v8 = responseCopy;
  dispatch_async(userQueue, block);
}

void __47__EasyConfigDevice__postProgress_withResponse___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v14 = @"EasyConfigKey_Response";
    v15[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    (*(v2 + 16))(v2, v3, v5);
  }

  if (*(a1 + 48) == 2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 496);
    *(v6 + 496) = 0;
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v12[0] = @"EasyConfigKey_Progress";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v12[1] = @"EasyConfigKey_Response";
  v13[0] = v10;
  v13[1] = *(a1 + 40);
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v8 postNotificationName:@"EasyConfigDeviceProgressNotification" object:v9 userInfo:v11];
}

- (void)_postProgress:(int)progress info:(id)info
{
  infoCopy = info;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__EasyConfigDevice__postProgress_info___block_invoke;
  block[3] = &unk_278FBEC80;
  progressCopy = progress;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(userQueue, block);
}

void __39__EasyConfigDevice__postProgress_info___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 40));
  }

  if (*(a1 + 48) == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 496);
    *(v3 + 496) = 0;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *(a1 + 32);
  v9 = @"EasyConfigKey_Progress";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 postNotificationName:@"EasyConfigDeviceProgressNotification" object:v6 userInfo:v8];
}

- (void)_postNote:(id)note info:(id)info
{
  noteCopy = note;
  infoCopy = info;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__EasyConfigDevice__postNote_info___block_invoke;
  block[3] = &unk_278FBEC58;
  v12 = noteCopy;
  selfCopy = self;
  v14 = infoCopy;
  v9 = infoCopy;
  v10 = noteCopy;
  dispatch_async(userQueue, block);
}

void __35__EasyConfigDevice__postNote_info___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

- (void)_logEnded
{
  v3 = 328;
  if (self->_preConfigMetricsSet)
  {
    v3 = 240;
  }

  findPreConfigFoundTime = self->_findPreConfigFoundTime;
  v16 = *(&self->super.isa + v3);
  securityStartTime = self->_securityStartTime;
  securityFinishTime = self->_securityFinishTime;
  findPreConfigStartTime = self->_findPreConfigStartTime;
  applyConfigStartTime = self->_applyConfigStartTime;
  applyConfigFinishTime = self->_applyConfigFinishTime;
  findPostConfigStartTime = self->_findPostConfigStartTime;
  findPostConfigFoundTime = self->_findPostConfigFoundTime;
  postConfigCheckStartTime = self->_postConfigCheckStartTime;
  postConfigCheckFinishTime = self->_postConfigCheckFinishTime;
  Current = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_EasyConfigDevice <= 50)
  {
    v12 = Current;
    if (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _logEnded]", 50, "Configuration of device 0x%012llX ended: FindPre=%.3f, Auth=%.3f, Apply=%.3f, FindPost=%.3f, Check=%.3f, Full=%.3f seconds, Status=%#m\n", self->_deviceIdentifier, findPreConfigFoundTime - findPreConfigStartTime, securityFinishTime - securityStartTime, applyConfigFinishTime - applyConfigStartTime, findPostConfigFoundTime - findPostConfigStartTime, postConfigCheckFinishTime - postConfigCheckStartTime, v12 - v16);
    }
  }
}

- (void)_handleError:(int)error
{
  v3 = *&error;
  v5 = CFAbsoluteTimeGetCurrent() - self->_configStartTime;
  if (gLogCategory_EasyConfigDevice <= 40 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    state = self->_state;
    v7 = "configuring";
    v8 = "?";
    if (state == 3)
    {
      v8 = "post-configuring";
    }

    if (state != 2)
    {
      v7 = v8;
    }

    if (state == 1)
    {
      v9 = "pre-configuring";
    }

    else
    {
      v9 = v7;
    }

    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _handleError:]", 40, "### Error while %s after %.0f seconds: %#m\n", v9, v5);
  }

  if (!self->_firstErr)
  {
    self->_firstErr = v3;
  }

  if ((self->_state - 1) <= 1)
  {
    if (v5 >= 120.0)
    {
      if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _handleError:]", 60, "### Giving up on overall config after %.0f seconds\n", v5);
      }
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __33__EasyConfigDevice__handleError___block_invoke;
      v10[3] = &unk_278FBEBB8;
      v10[4] = self;
      v3 = [(EasyConfigDevice *)self _timeoutTimerStart:5 block:v10];
    }
  }

  if (v3)
  {
    [(EasyConfigDevice *)self _stop:v3];
  }
}

- (void)_postConfigCheckCompletion:(HTTPMessagePrivate *)completion
{
  self->_postConfigCheckFinishTime = CFAbsoluteTimeGetCurrent();
  var21 = completion->var21;
  if (!var21)
  {
    var12 = completion->var2.var12;
    if ((var12 - 300) >= 0xFFFFFF9C)
    {
      if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _postConfigCheckCompletion:]", 30, "Performed post-config check with device 0x%012llX\n", self->_deviceIdentifier);
      }

      [(EasyConfigDevice *)self _postProgress:70 info:0];
      [(EasyConfigDevice *)self _postProgress:100 info:0];

      [(EasyConfigDevice *)self _stop:0];
      return;
    }

    var21 = (var12 + 200000);
    if (var12 == -200000)
    {
      return;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _postConfigCheckCompletion:]", 60, "### Perform post-config check with device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
  }

  [(EasyConfigDevice *)self _handleError:var21];
}

- (void)_postConfigCheckStart:(id)start
{
  v9 = 0;
  startCopy = start;
  Current = CFAbsoluteTimeGetCurrent();
  self->_postConfigCheckStartTime = Current;
  self->_postConfigCheckFinishTime = Current;
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _postConfigCheckStart:]", 30, "Performing post-config check with device 0x%012llX\n", self->_deviceIdentifier);
  }

  [(EasyConfigDevice *)self _postProgress:60 info:0];
  v6 = [(EasyConfigDevice *)self _setupClient:startCopy];

  if (!v6)
  {
    v7 = HTTPMessageCreate();
    if (!v7)
    {
      HTTPHeader_InitRequest();
      HTTPHeader_SetField((v9 + 24), "Content-Length", "0");
      v8[5] = MEMORY[0x277D85DD0];
      v8[6] = 3221225472;
      v8[7] = __42__EasyConfigDevice__postConfigCheckStart___block_invoke;
      v8[8] = &unk_278FBEC30;
      v8[9] = self;
      HTTPMessageSetCompletionBlock();
      v9[8512] = 1;
      v7 = HTTPClientSendMessage();
      if (!v7)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __42__EasyConfigDevice__postConfigCheckStart___block_invoke_2;
        v8[3] = &unk_278FBEBB8;
        v8[4] = self;
        v7 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v8];
      }
    }

    v6 = v7;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _postConfigCheckStart:]", 60, "### Perform post-config check with device 0x%012llX start failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:v6];
  }
}

- (void)_findDevicePostConfigEvent:(unsigned int)event info:(id)info
{
  infoCopy = info;
  if (event != 1 || !self->_started || !self->_airplayBrowser && !self->_raopBrowser && !self->_mfiConfigBrowser && !self->_hapBrowser || BonjourDevice_GetDeviceID() != self->_deviceIdentifier)
  {
    goto LABEL_34;
  }

  Int64 = BonjourDevice_GetInt64();
  if (self->_configSeed != Int64)
  {
    goto LABEL_21;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (![v8 caseInsensitiveCompare:@"_hap._tcp."])
  {
    v9 = BonjourDevice_GetInt64();
    if ((v9 & 2) == 0)
    {
      if (gLogCategory_EasyConfigDevice <= 40 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePostConfigEvent:info:]", 40, "Allowing post-config device 0x%012llX with same seed %u, flags 0x%X\n", self->_deviceIdentifier, Int64, v9);
      }

LABEL_21:
      self->_findPostConfigFoundTime = CFAbsoluteTimeGetCurrent();
      if (self->_airplayBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_airplayBrowser);
        self->_airplayBrowser = 0;
      }

      if (self->_raopBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_raopBrowser);
        self->_raopBrowser = 0;
      }

      if (self->_mfiConfigBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_mfiConfigBrowser);
        self->_mfiConfigBrowser = 0;
      }

      if (self->_hapBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_hapBrowser);
        self->_hapBrowser = 0;
      }

      if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePostConfigEvent:info:]", 30, "Found post-config device 0x%012llX (%u->%u)\n", self->_deviceIdentifier, self->_configSeed, Int64);
      }

      [(EasyConfigDevice *)self _postConfigCheckStart:infoCopy];
      goto LABEL_34;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 40 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePostConfigEvent:info:]", 40, "Ignoring post-config device 0x%012llX with same seed %u (%@)\n", self->_deviceIdentifier, Int64, v8);
  }

LABEL_34:
}

- (int)_findDevicePostConfigStart
{
  self->_state = 3;
  Current = CFAbsoluteTimeGetCurrent();
  self->_findPostConfigStartTime = Current;
  self->_findPostConfigFoundTime = Current;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__EasyConfigDevice__findDevicePostConfigStart__block_invoke;
  v6[3] = &unk_278FBEC08;
  v6[4] = self;
  v4 = [(EasyConfigDevice *)self _startBonjourWithTimeout:60 handler:v6];
  if (v4)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePostConfigStart]", 60, "### Start search for post-config device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:v4];
  }

  else
  {
    if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePostConfigStart]", 30, "Started search for post-config device 0x%012llX\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _postProgress:50 info:0];
  }

  return v4;
}

- (void)_applyConfigCompletion:(HTTPMessagePrivate *)completion
{
  v14 = 0;
  var21 = completion->var21;
  if (var21)
  {
    v14 = var21;
  }

  else
  {
    var12 = completion->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      v13 = var12 + 196608;
      var21 = (v13 + 3392);
      v14 = v13 + 3392;
      if (v13 == -3392)
      {
        return;
      }
    }

    else if (!self->_mfiSAP || (var21 = MFiSAP_Decrypt(), (v14 = var21) == 0))
    {
      CFDictionaryGetTypeID();
      DictionaryFromTLV = CFCreateWithPlistBytes();
      if (!DictionaryFromTLV)
      {
        DictionaryFromTLV = EasyConfigCreateDictionaryFromTLV(completion->var6, completion->var7, &v14);
        if (!DictionaryFromTLV)
        {
          goto LABEL_20;
        }
      }

      configResponse = self->_configResponse;
      self->_configResponse = DictionaryFromTLV;

      self->_applyConfigFinishTime = CFAbsoluteTimeGetCurrent();
      if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _applyConfigCompletion:]", 30, "Applied configuration to device 0x%012llX\n", self->_deviceIdentifier);
      }

      [(EasyConfigDevice *)self _postProgress:40 withResponse:self->_configResponse];
      if (self->_pausesAfterApply)
      {
        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v10 = timeoutTimer;
          dispatch_source_cancel(v10);
          v11 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _applyConfigCompletion:]", 30, "Pausing configuration process until manually resumed\n");
        }

LABEL_20:
        var21 = v14;
        if (!v14)
        {
          return;
        }

        goto LABEL_21;
      }

      var21 = [(EasyConfigDevice *)self _findDevicePostConfigStart];
      v14 = var21;
      if (!var21)
      {
        return;
      }
    }
  }

LABEL_21:
  if (gLogCategory_EasyConfigDevice <= 60)
  {
    if (gLogCategory_EasyConfigDevice != -1 || (v12 = _LogCategory_Initialize(), var21 = v14, v12))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _applyConfigCompletion:]", 60, "### Apply configuration to device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
      var21 = v14;
    }
  }

  [(EasyConfigDevice *)self _handleError:var21];
}

- (int)_applyConfigStart
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  self->_applyConfigStartTime = CFAbsoluteTimeGetCurrent();
  if (self->_supportsTLV)
  {
    v3 = EasyConfigCreateTLVfromDictionary(self->_configuration, &v14, &v16);
    v4 = 0;
    if (v16)
    {
      v5 = v3;
      goto LABEL_8;
    }

    v7 = "application/x-tlv8";
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_configuration format:200 options:0 error:0];
    v4 = v6;
    if (!v6)
    {
      v16 = -6732;
      goto LABEL_10;
    }

    [v6 bytes];
    v5 = 0;
    v14 = [v4 length];
    v7 = "application/octet-stream";
  }

  v16 = HTTPMessageCreate();
  if (!v16)
  {
    HTTPHeader_InitRequest();
    HTTPHeader_SetField(v15 + 24, "Content-Length", "%zu", v14);
    HTTPHeader_SetField(v15 + 24, "Content-Type", "%s", v7);
    if (self->_mfiSAP)
    {
      v16 = HTTPMessageSetBodyLength();
      if (v16)
      {
        goto LABEL_8;
      }

      v10 = MFiSAP_Encrypt();
    }

    else
    {
      v10 = HTTPMessageSetBody();
    }

    v16 = v10;
    if (!v10)
    {
      v13[5] = MEMORY[0x277D85DD0];
      v13[6] = 3221225472;
      v13[7] = __37__EasyConfigDevice__applyConfigStart__block_invoke;
      v13[8] = &unk_278FBEC30;
      v13[9] = self;
      HTTPMessageSetCompletionBlock();
      *(v15 + 8512) = 1;
      v16 = HTTPClientSendMessage();
      if (!v16)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __37__EasyConfigDevice__applyConfigStart__block_invoke_2;
        v13[3] = &unk_278FBEBB8;
        v13[4] = self;
        v16 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v13];
        if (!v16)
        {
          if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _applyConfigStart]", 30, "Applying configuration to device 0x%012llX\n", self->_deviceIdentifier);
          }

          [(EasyConfigDevice *)self _postProgress:30 info:0];
        }
      }
    }
  }

LABEL_8:
  if (v5)
  {
    free(v5);
  }

LABEL_10:
  if (v15)
  {
    CFRelease(v15);
  }

  v8 = v16;
  if (v16)
  {
    if (gLogCategory_EasyConfigDevice <= 60)
    {
      if (gLogCategory_EasyConfigDevice != -1 || (v11 = _LogCategory_Initialize(), v8 = v16, v11))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _applyConfigStart]", 60, "### Apply configuration to device 0x%012llX start failed: %#m\n", self->_deviceIdentifier);
        v8 = v16;
      }
    }

    [(EasyConfigDevice *)self _handleError:v8];
    v9 = v16;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)_pairVerifyNext:(HTTPMessagePrivate *)next
{
  v8 = *MEMORY[0x277D85DE8];
  if (!next)
  {
    goto LABEL_4;
  }

  var21 = next->var21;
  if (var21)
  {
    goto LABEL_6;
  }

  var12 = next->var2.var12;
  if ((var12 - 300) <= 0xFFFFFF9B)
  {
    var21 = (var12 + 200000);
  }

  else
  {
LABEL_4:
    v6 = PairingSessionExchange();
    if (v6)
    {
      var21 = v6;
    }

    else
    {
      var21 = HTTPMessageCreate();
      if (!var21)
      {
        HTTPHeader_InitRequestF(24, "HTTP/1.1", "POST", "/%s", "pair-verify");
        var21 = HTTPMessageSetBody();
        if (!var21)
        {
          HTTPMessageSetCompletionBlock();
          var21 = HTTPClientSendMessage();
        }
      }
    }
  }

LABEL_6:
  if (var21)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _pairVerifyNext:]", 60, "### Pair-verify with device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:var21];
  }

  return var21;
}

- (int)_pairVerifyStart
{
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _pairVerifyStart]", 30, "Starting pair-verify with device 0x%012llX\n", self->_deviceIdentifier);
  }

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v8[5] = self;
  if (self->_hasPairingDelegate)
  {
    *(v10 + 8) = *&self->_pairingDelegate.copyIdentity_f;
    *(&v10[1] + 1) = self->_pairingDelegate.savePeer_f;
  }

  v4 = PairingSessionCreate();
  if (v4)
  {
    goto LABEL_17;
  }

  if (self->_supportsHAP || self->_supportsHAP2 || self->_supportsPairSetup)
  {
    LODWORD(v7) = 1;
    PairingSessionSetKeychainInfo();
  }

  if (self->_pairVerifyFlags)
  {
    PairingSessionSetFlags();
  }

  PairingSessionSetLogging();
  v4 = [(EasyConfigDevice *)self _pairVerifyNext:0];
  if (v4)
  {
LABEL_17:
    v5 = v4;
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__EasyConfigDevice__pairVerifyStart__block_invoke;
    v8[3] = &unk_278FBEBB8;
    v8[4] = self;
    v5 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v8];
    if (!v5)
    {
      return v5;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _pairVerifyStart]", 60, "### Authenticate device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
  }

  [(EasyConfigDevice *)self _handleError:v5, v7];
  return v5;
}

- (int)_pairSetupNext:(HTTPMessagePrivate *)next
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  if (!next)
  {
    goto LABEL_4;
  }

  var21 = next->var21;
  if (var21)
  {
    goto LABEL_11;
  }

  var12 = next->var2.var12;
  if ((var12 - 300) <= 0xFFFFFF9B)
  {
    var21 = (var12 + 200000);
  }

  else
  {
LABEL_4:
    v6 = PairingSessionExchange();
    if (v6)
    {
      if (v6 == -6771)
      {
        var21 = 0;
      }

      else
      {
        var21 = v6;
      }
    }

    else
    {
      v7 = HTTPMessageCreate();
      if (!v7)
      {
        HTTPHeader_InitRequestF(v10 + 24, "HTTP/1.1", "POST", "/%s", "pair-setup");
        v7 = HTTPMessageSetBody();
        if (!v7)
        {
          v9[5] = MEMORY[0x277D85DD0];
          v9[6] = 3221225472;
          v9[7] = __35__EasyConfigDevice__pairSetupNext___block_invoke;
          v9[8] = &unk_278FBEC30;
          v9[9] = self;
          HTTPMessageSetCompletionBlock();
          v7 = HTTPClientSendMessage();
          if (!v7)
          {
            if (self->_timeoutTimer)
            {
              var21 = 0;
              goto LABEL_11;
            }

            v9[0] = MEMORY[0x277D85DD0];
            v9[1] = 3221225472;
            v9[2] = __35__EasyConfigDevice__pairSetupNext___block_invoke_2;
            v9[3] = &unk_278FBEBB8;
            v9[4] = self;
            v7 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v9];
          }
        }
      }

      var21 = v7;
    }
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    free(v13);
  }

  if (var21)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _pairSetupNext:]", 60, "### Pair-setup with device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:var21];
  }

  return var21;
}

- (int)_pairSetupStart
{
  self->_securityStartTime = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _pairSetupStart]", 30, "Starting pair-setup with device 0x%012llX\n", self->_deviceIdentifier);
  }

  [(EasyConfigDevice *)self _postProgress:20 info:0];
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  v4 = PairingSessionCreate();
  if (v4)
  {
    v5 = v4;
LABEL_16:
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _pairSetupStart]", 60, "### Authenticate device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:v5, v7];
    return v5;
  }

  if (self->_supportsHAP || self->_supportsHAP2 || self->_supportsPairSetup)
  {
    LODWORD(v7) = 1;
    PairingSessionSetKeychainInfo();
  }

  if (self->_pairSetupFlags)
  {
    PairingSessionSetFlags();
  }

  PairingSessionSetLogging();
  v5 = [(EasyConfigDevice *)self _pairSetupNext:0];
  if (v5)
  {
    goto LABEL_16;
  }

  return v5;
}

- (int)_mfiSAPNext:(HTTPMessagePrivate *)next
{
  if (!next)
  {
    goto LABEL_4;
  }

  var21 = next->var21;
  if (var21)
  {
    goto LABEL_8;
  }

  var12 = next->var2.var12;
  if ((var12 - 300) <= 0xFFFFFF9B)
  {
    var21 = (var12 + 200000);
  }

  else
  {
LABEL_4:
    var21 = MFiSAP_Exchange();
    if (!var21)
    {
      var21 = HTTPMessageCreate();
      if (!var21)
      {
        HTTPHeader_InitRequest();
        HTTPHeader_SetField(24, "CSeq", "1");
        var21 = HTTPMessageSetBody();
        if (!var21)
        {
          HTTPMessageSetCompletionBlock();
          var21 = HTTPClientSendMessage();
        }
      }
    }
  }

LABEL_8:
  if (var21)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _mfiSAPNext:]", 60, "### Authenticate device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:var21];
  }

  return var21;
}

- (int)_mfiSAPStart
{
  self->_securityStartTime = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _mfiSAPStart]", 30, "Authenticating device 0x%012llX\n", self->_deviceIdentifier);
  }

  [(EasyConfigDevice *)self _postProgress:20 info:0];
  if (self->_mfiSAP)
  {
    MFiSAP_Delete();
    self->_mfiSAP = 0;
  }

  v3 = MFiSAP_Create();
  if (v3 || (v3 = [(EasyConfigDevice *)self _mfiSAPNext:0], v3))
  {
    v4 = v3;
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__EasyConfigDevice__mfiSAPStart__block_invoke;
    v6[3] = &unk_278FBEBB8;
    v6[4] = self;
    v4 = [(EasyConfigDevice *)self _timeoutTimerStart:20 block:v6];
    if (!v4)
    {
      return v4;
    }
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _mfiSAPStart]", 60, "### Authenticate device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
  }

  [(EasyConfigDevice *)self _handleError:v4];
  return v4;
}

- (int)_configureStart:(id)start
{
  startCopy = start;
  self->_state = 2;
  v5 = gLogCategory_EasyConfigDevice;
  if (gLogCategory_EasyConfigDevice <= 30)
  {
    if (gLogCategory_EasyConfigDevice == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v5 = gLogCategory_EasyConfigDevice;
    }

    deviceIdentifier = self->_deviceIdentifier;
    if (v5 > 20)
    {
      v8 = 0;
      v7 = &unk_249F5796A;
    }

    else
    {
      v7 = ":\n";
      if (v5 != -1)
      {
        goto LABEL_8;
      }

      if (!_LogCategory_Initialize())
      {
        v7 = &unk_249F5796A;
      }

      v5 = gLogCategory_EasyConfigDevice;
      if (gLogCategory_EasyConfigDevice > 20)
      {
        v8 = 0;
      }

      else
      {
LABEL_8:
        v8 = v5 != -1 || _LogCategory_Initialize() != 0;
      }
    }

    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _configureStart:]", 30, "Starting configure of device 0x%012llX%s%?@\n", deviceIdentifier, v7, v8, startCopy);
  }

LABEL_16:
  v22 = 0;
  valueLen = 0;
  self->_configSeed = BonjourDevice_GetInt64();
  if (v22)
  {
    self->_configSeed = BonjourDevice_GetInt64();
    if (v22)
    {
      self->_configSeed = BonjourDevice_GetInt64();
      if (v22)
      {
        if (gLogCategory_EasyConfigDevice <= 50 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _configureStart:]", 50, "### No config seed for pre-config device 0x%012llX\n", self->_deviceIdentifier);
        }

        self->_configSeed = 1;
      }
    }
  }

  self->_supportsTLV = 0;
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    goto LABEL_53;
  }

  v10 = TypedValue;
  if (CFStringCompare(TypedValue, @"_airplay._tcp.", 1uLL) == kCFCompareEqualTo || CFStringCompare(v10, @"_raop._tcp.", 1uLL) == kCFCompareEqualTo)
  {
    Value = CFDictionaryGetValue(startCopy, @"txt");
    if (Value)
    {
      v13 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v13);
      if (TXTRecordGetValuePtr(Length, BytePtr, "srcvers", &valueLen) || TXTRecordGetValuePtr(Length, BytePtr, "vs", &valueLen))
      {
        LOBYTE(v11) = TextToSourceVersion() > 0x1B903F;
LABEL_34:
        self->_supportsTLV = v11;
        goto LABEL_35;
      }

      v16 = 4294960581;
LABEL_55:
      v22 = v16;
      goto LABEL_46;
    }

LABEL_53:
    v16 = 4294960534;
    goto LABEL_55;
  }

  if (CFStringCompare(v10, @"_mfi-config._tcp.", 1uLL) == kCFCompareEqualTo)
  {
    v11 = (BonjourDevice_GetInt64() >> 2) & 1;
    goto LABEL_34;
  }

  LOBYTE(v11) = 1;
  if (CFStringCompare(v10, @"_hap._tcp.", 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_34;
  }

LABEL_35:
  v16 = [(EasyConfigDevice *)self _setupClient:startCopy];
  v22 = v16;
  if (!v16)
  {
    if (CFDictionaryGetInt64() && (self->_supportsHAP2 || self->_supportsPairSetup || !self->_supportsMFi))
    {
      _mfiSAPStart = self->_skipPairSetup ? [(EasyConfigDevice *)self _pairVerifyStart]: [(EasyConfigDevice *)self _pairSetupStart];
    }

    else
    {
      _mfiSAPStart = [(EasyConfigDevice *)self _mfiSAPStart];
    }

    v16 = _mfiSAPStart;
    v22 = _mfiSAPStart;
    if (!_mfiSAPStart)
    {
      v19 = 0;
      goto LABEL_51;
    }
  }

LABEL_46:
  if (gLogCategory_EasyConfigDevice <= 60)
  {
    if (gLogCategory_EasyConfigDevice != -1 || (v18 = _LogCategory_Initialize(), v16 = v22, v18))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _configureStart:]", 60, "### Start configure of device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
      v16 = v22;
    }
  }

  [(EasyConfigDevice *)self _handleError:v16];
  v19 = v22;
LABEL_51:

  return v19;
}

- (void)_findDevicePreConfigEvent:(unsigned int)event info:(id)info
{
  infoCopy = info;
  if (event == 1 && self->_started && (self->_airplayBrowser || self->_raopBrowser || self->_mfiConfigBrowser || self->_hapBrowser))
  {
    v11 = infoCopy;
    v7 = BonjourDevice_GetDeviceID() == self->_deviceIdentifier;
    infoCopy = v11;
    if (v7)
    {
      self->_findPreConfigFoundTime = CFAbsoluteTimeGetCurrent();
      BonjourDevice_Reconfirm();
      if (self->_airplayBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_airplayBrowser);
        self->_airplayBrowser = 0;
      }

      if (self->_raopBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_raopBrowser);
        self->_raopBrowser = 0;
      }

      if (self->_mfiConfigBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_mfiConfigBrowser);
        self->_mfiConfigBrowser = 0;
      }

      if (self->_hapBrowser)
      {
        BonjourBrowser_Stop();
        CFRelease(self->_hapBrowser);
        self->_hapBrowser = 0;
      }

      timeoutTimer = self->_timeoutTimer;
      if (timeoutTimer)
      {
        v9 = timeoutTimer;
        dispatch_source_cancel(v9);
        v10 = self->_timeoutTimer;
        self->_timeoutTimer = 0;
      }

      [(EasyConfigDevice *)self _configureStart:v11];
      infoCopy = v11;
    }
  }
}

- (int)_findDevicePreConfigStart
{
  self->_state = 1;
  Current = CFAbsoluteTimeGetCurrent();
  self->_findPreConfigStartTime = Current;
  self->_findPreConfigFoundTime = Current;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__EasyConfigDevice__findDevicePreConfigStart__block_invoke;
  v6[3] = &unk_278FBEC08;
  v6[4] = self;
  v4 = [(EasyConfigDevice *)self _startBonjourWithTimeout:20 handler:v6];
  if (v4)
  {
    if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePreConfigStart]", 60, "### Start search for pre-config device 0x%012llX failed: %#m\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _handleError:v4];
  }

  else
  {
    if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _findDevicePreConfigStart]", 30, "Started search for pre-config device 0x%012llX\n", self->_deviceIdentifier);
    }

    [(EasyConfigDevice *)self _postProgress:10 info:0];
  }

  return v4;
}

- (void)_trySetupCode:(id)code
{
  codeCopy = code;
  self->_enterSetupCodeMs = ((CFAbsoluteTimeGetCurrent() - self->_promptForSetupCodeTime) * 1000.0);
  if (!self->_pairingSession)
  {
    v5 = 4294960593;
    goto LABEL_5;
  }

  [codeCopy UTF8String];
  v4 = PairingSessionSetSetupCode();
  if (v4 || (v4 = [(EasyConfigDevice *)self _pairSetupNext:0], v4))
  {
    v5 = v4;
LABEL_5:
    [(EasyConfigDevice *)self _handleError:v5];
  }
}

- (void)trySetupCode:(id)code
{
  codeCopy = code;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__EasyConfigDevice_trySetupCode___block_invoke;
  v7[3] = &unk_278FBEBE0;
  v7[4] = self;
  v8 = codeCopy;
  v6 = codeCopy;
  dispatch_async(internalQueue, v7);
}

- (void)setPromptForSetupCodeHandler:(id)handler
{
  v4 = MEMORY[0x24C209090](handler, a2);
  if (v4)
  {
    v5 = v4;
    v8 = [v4 copy];
  }

  else
  {
    v8 = 0;
  }

  v6 = MEMORY[0x24C209090](v8);
  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  self->_promptForSetupCodeBlock = v6;
}

- (void)setPostConfigMetrics:(id *)metrics
{
  v3 = *&metrics->var4;
  *&self->_postConfigMetrics.secondsToGetLinkUpOnDestination = *&metrics->var0;
  *&self->_postConfigMetrics.rssiOfDestinationAP = v3;
  self->_postConfigMetricsSet = 1;
}

- (void)setPreConfigMetrics:(id *)metrics
{
  v3 = *&metrics->var0;
  v4 = *&metrics->var8;
  *&self->_preConfigMetrics.secondsToGetLinkUpOnSWAP = *&metrics->var5;
  *&self->_preConfigMetrics.rssiOfSWAP = v4;
  *&self->_preConfigMetrics.startTime = v3;
  self->_preConfigMetricsSet = 1;
}

- (void)setPairingDelegate:(const void *)delegate
{
  if (delegate)
  {
    *&self->_pairingDelegate.context = *delegate;
    v3 = *(delegate + 1);
    v4 = *(delegate + 2);
    v5 = *(delegate + 3);
    self->_pairingDelegate.resumeResponse_f = *(delegate + 8);
    *&self->_pairingDelegate.copyIdentity_f = v4;
    *&self->_pairingDelegate.savePeer_f = v5;
    *&self->_pairingDelegate.hideSetupCode_f = v3;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  self->_hasPairingDelegate = v6;
}

- (void)resumePostConfig
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__EasyConfigDevice_resumePostConfig__block_invoke;
  block[3] = &unk_278FBEBB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void *__36__EasyConfigDevice_resumePostConfig__block_invoke(void *result)
{
  if (*(result[4] + 232) == 1)
  {
    v1 = result;
    if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice resumePostConfig]_block_invoke", 30, "Manually resuming configuration process\n");
    }

    v2 = v1[4];

    return [v2 _findDevicePostConfigStart];
  }

  else if (gLogCategory_EasyConfigDevice <= 60)
  {
    if (gLogCategory_EasyConfigDevice != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice resumePostConfig]_block_invoke", 60, "### Manually resuming configuration process when not paused\n");
    }
  }

  return result;
}

- (void)_stop:(int)_stop
{
  v3 = *&_stop;
  v30[1] = *MEMORY[0x277D85DE8];
  started = self->_started;
  self->_started = 0;
  if (self->_firstErr)
  {
    if (!started)
    {
      goto LABEL_18;
    }
  }

  else
  {
    self->_firstErr = _stop;
    if (!started)
    {
      goto LABEL_18;
    }
  }

  [(EasyConfigDevice *)self _logEnded];
  v6 = 0x27EF2B000uLL;
  if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _stop:]", 30, "Stopping: %#m\n", v3);
  }

  v7 = 0x277CCA000uLL;
  if (v3)
  {
    v29 = @"EasyConfigKey_ReasonError";
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v10 = v3;
    v27 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v28 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v8 errorWithDomain:v9 code:v3 userInfo:v14];
    v30[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [(EasyConfigDevice *)self _postProgress:2 info:v16];

    v7 = 0x277CCA000;
    v6 = 0x27EF2B000;
  }

  else
  {
    [(EasyConfigDevice *)self _postProgress:2 info:0];
    v10 = 0;
    v9 = *MEMORY[0x277CCA590];
  }

  v25 = @"EasyConfigKey_ReasonError";
  v17 = [*(v7 + 2488) errorWithDomain:v9 code:v10 userInfo:0];
  v26 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [(EasyConfigDevice *)self _postNote:@"EasyConfigDeviceStoppedNotification" info:v18];

  v19 = *(v6 + 1824);
  if (v19 <= 30 && (v19 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _stop:]", 30, "Stopped: %#m\n", v3);
  }

LABEL_18:
  if (self->_airplayBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_airplayBrowser);
    self->_airplayBrowser = 0;
  }

  if (self->_raopBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_raopBrowser);
    self->_raopBrowser = 0;
  }

  if (self->_mfiConfigBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_mfiConfigBrowser);
    self->_mfiConfigBrowser = 0;
  }

  if (self->_hapBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_hapBrowser);
    self->_hapBrowser = 0;
  }

  if (self->_httpClient)
  {
    HTTPClientInvalidate();
    CFRelease(self->_httpClient);
    self->_httpClient = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v21 = timeoutTimer;
    dispatch_source_cancel(v21);
    v22 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  if (self->_mfiSAP)
  {
    MFiSAP_Delete();
    self->_mfiSAP = 0;
  }

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  self->_promptForSetupCodeBlock = 0;
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__EasyConfigDevice_stop__block_invoke;
  block[3] = &unk_278FBEBB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_start
{
  if (!self->_started)
  {
    if (gLogCategory_EasyConfigDevice <= 30 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _start]", 30, "Starting\n");
    }

    self->_started = 1;
    self->_firstErr = 0;
    self->_configStartTime = CFAbsoluteTimeGetCurrent();
    configResponse = self->_configResponse;
    self->_configResponse = 0;

    scanRecord = self->_scanRecord;
    if (scanRecord)
    {
      v5 = [(NSDictionary *)scanRecord objectForKey:@"IE"];
      v6 = v5;
      if (v5)
      {
        if ([v5 length])
        {
          [v6 bytes];
          v7 = IEGetVendorSpecific();
          v11 = v7;
          if (v7 || (v7 = TLV8Get(), (v11 = v7) != 0))
          {
            v8 = v7;
            goto LABEL_21;
          }

          v8 = 4294960553;
        }

        else
        {
          v8 = 4294960546;
        }
      }

      else
      {
        v8 = 4294960569;
      }
    }

    else
    {
      if (self->_deviceInfo)
      {
        self->_deviceIdentifier = CFDictionaryGetHardwareAddress();
        Int64 = CFDictionaryGetInt64();
        v6 = 0;
        self->_supportsHAP = (Int64 & 0x20000) != 0;
        self->_supportsHAP2 = (Int64 & 0x40000) != 0;
        self->_supportsMFi = (Int64 & 4) != 0;
        self->_supportsPairSetup = (Int64 & 0x100000) != 0;
        if (((Int64 >> 17) & 1) == 0 && ((Int64 >> 18) & 1) == 0 && (Int64 & 4) == 0 && ((Int64 >> 20) & 1) == 0)
        {
          v8 = 4294960562;
          goto LABEL_34;
        }

        if (self->_configuration)
        {
          [(EasyConfigDevice *)self _findDevicePreConfigStart];
          goto LABEL_26;
        }
      }

      else
      {
        v6 = 0;
      }

      v8 = 4294960551;
    }

LABEL_34:
    v11 = v8;
LABEL_21:
    if (gLogCategory_EasyConfigDevice <= 60)
    {
      if (gLogCategory_EasyConfigDevice != -1 || (v10 = _LogCategory_Initialize(), v8 = v11, v10))
      {
        LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _start]", 60, "### Start failed: %#m\n", v8);
        v8 = v11;
      }
    }

    [(EasyConfigDevice *)self _stop:v8];
    goto LABEL_26;
  }

  if (gLogCategory_EasyConfigDevice <= 60 && (gLogCategory_EasyConfigDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_EasyConfigDevice, "[EasyConfigDevice _start]", 60, "### Started while already started\n");
  }

  v6 = 0;
LABEL_26:
}

- (void)start
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__EasyConfigDevice_start__block_invoke;
  block[3] = &unk_278FBEBB8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (BOOL)removed:(id)removed
{
  v4 = [removed objectForKey:@"serviceType"];
  if ([v4 isEqual:@"_airplay._tcp."])
  {
    v5 = 48;
LABEL_9:
    v6 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = 0;

    goto LABEL_10;
  }

  if ([v4 isEqual:@"_raop._tcp."])
  {
    v5 = 64;
    goto LABEL_9;
  }

  if ([v4 isEqual:@"_mfi-config._tcp."])
  {
    v5 = 80;
    goto LABEL_9;
  }

  if ([v4 isEqual:@"_hap._tcp."])
  {
    v5 = 96;
    goto LABEL_9;
  }

LABEL_10:
  v7 = !self->_airplayBonjourInfo && !self->_raopBonjourInfo && !self->_mfiConfigBonjourInfo && self->_hapBonjourInfo == 0;

  return v7;
}

- (BOOL)updated:(id)updated
{
  updatedCopy = updated;
  v6 = [updatedCopy objectForKey:@"name"];
  v7 = [(NSString *)self->_name isEqual:v6];
  if ((v7 & 1) == 0)
  {
    [(EasyConfigDevice *)self setName:v6];
  }

  DeviceID = BonjourDevice_GetDeviceID();
  if (DeviceID == self->_deviceIdentifier)
  {
    v9 = v7 ^ 1;
  }

  else
  {
    self->_deviceIdentifier = DeviceID;
    v9 = 1;
  }

  v10 = [updatedCopy objectForKey:@"serviceType"];
  if ([v10 isEqual:@"_airplay._tcp."])
  {
    airplayBonjourInfo = self->_airplayBonjourInfo;
    p_airplayBonjourInfo = &self->_airplayBonjourInfo;
    v11 = airplayBonjourInfo;
  }

  else if ([v10 isEqual:@"_raop._tcp."])
  {
    raopBonjourInfo = self->_raopBonjourInfo;
    p_airplayBonjourInfo = &self->_raopBonjourInfo;
    v11 = raopBonjourInfo;
  }

  else if ([v10 isEqual:@"_mfi-config._tcp."])
  {
    mfiConfigBonjourInfo = self->_mfiConfigBonjourInfo;
    p_airplayBonjourInfo = &self->_mfiConfigBonjourInfo;
    v11 = mfiConfigBonjourInfo;
  }

  else
  {
    if (![v10 isEqual:@"_hap._tcp."])
    {
      goto LABEL_16;
    }

    hapBonjourInfo = self->_hapBonjourInfo;
    p_airplayBonjourInfo = &self->_hapBonjourInfo;
    v11 = hapBonjourInfo;
  }

  if (([(NSDictionary *)v11 isEqual:updatedCopy]& 1) == 0)
  {

    objc_storeStrong(p_airplayBonjourInfo, updated);
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSDictionary *)self->_scanRecord copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(NSDictionary *)self->_airplayBonjourInfo copy];
  v8 = *(v4 + 48);
  *(v4 + 48) = v7;

  v9 = [(NSDictionary *)self->_raopBonjourInfo copy];
  v10 = *(v4 + 64);
  *(v4 + 64) = v9;

  v11 = [(NSDictionary *)self->_mfiConfigBonjourInfo copy];
  v12 = *(v4 + 80);
  *(v4 + 80) = v11;

  v13 = [(NSDictionary *)self->_hapBonjourInfo copy];
  v14 = *(v4 + 96);
  *(v4 + 96) = v13;

  *(v4 + 104) = self->_configSeed;
  [v4 setDeviceIdentifier:self->_deviceIdentifier];
  *(v4 + 184) = self->_features;
  [v4 setModel:self->_model];
  [v4 setName:self->_name];
  [v4 setConfiguration:self->_configuration];
  return v4;
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    self->_internalQueue = 0;
  }

  userQueue = self->_userQueue;
  if (userQueue)
  {
    self->_userQueue = 0;
  }

  scanRecord = self->_scanRecord;
  self->_scanRecord = 0;

  airplayBonjourInfo = self->_airplayBonjourInfo;
  self->_airplayBonjourInfo = 0;

  raopBonjourInfo = self->_raopBonjourInfo;
  self->_raopBonjourInfo = 0;

  mfiConfigBonjourInfo = self->_mfiConfigBonjourInfo;
  self->_mfiConfigBonjourInfo = 0;

  hapBonjourInfo = self->_hapBonjourInfo;
  self->_hapBonjourInfo = 0;

  model = self->_model;
  self->_model = 0;

  name = self->_name;
  self->_name = 0;

  configuration = self->_configuration;
  self->_configuration = 0;

  configResponse = self->_configResponse;
  self->_configResponse = 0;

  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  self->_promptForSetupCodeBlock = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = 0;

  v17.receiver = self;
  v17.super_class = EasyConfigDevice;
  [(EasyConfigDevice *)&v17 dealloc];
}

- (EasyConfigDevice)init
{
  v7.receiver = self;
  v7.super_class = EasyConfigDevice;
  v2 = [(EasyConfigDevice *)&v7 init];
  if (v2 && (v3 = dispatch_queue_create("EasyConfigDevice", 0), internalQueue = v2->_internalQueue, v2->_internalQueue = v3, internalQueue, v2->_internalQueue))
  {
    objc_storeStrong(&v2->_userQueue, MEMORY[0x277D85CD0]);
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)deviceWithScanRecord:(id)record
{
  recordCopy = record;
  v4 = objc_alloc_init(EasyConfigDevice);
  scanRecord = v4->_scanRecord;
  v4->_scanRecord = recordCopy;

  return v4;
}

+ (id)deviceWithInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(EasyConfigDevice);
  deviceInfo = v4->_deviceInfo;
  v4->_deviceInfo = infoCopy;

  return v4;
}

+ (BOOL)supportedScanRecord:(id)record
{
  v3 = [record objectForKey:@"IE"];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    LOBYTE(v5) = 0;
    goto LABEL_5;
  }

  v5 = [v3 length];
  if (v5)
  {
    [v4 bytes];
    if (!IEGetVendorSpecific())
    {
      TLV8Get();
    }

    goto LABEL_6;
  }

LABEL_5:

  return v5;
}

@end