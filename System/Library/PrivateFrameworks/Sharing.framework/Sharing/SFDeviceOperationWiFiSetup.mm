@interface SFDeviceOperationWiFiSetup
- (SFDeviceOperationWiFiSetup)init;
- (id)createRequestFromWiFiConfig;
- (void)_activate;
- (void)_activate2;
- (void)_bonjourTestFoundDevice:(id)device;
- (void)_bonjourTestStart;
- (void)_bonjourTestTimeout;
- (void)_complete:(id)_complete;
- (void)_setupResponse:(id)response inResponse:(id)inResponse;
- (void)activate;
- (void)invalidate;
@end

@implementation SFDeviceOperationWiFiSetup

- (SFDeviceOperationWiFiSetup)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceOperationWiFiSetup;
  v2 = [(SFDeviceOperationWiFiSetup *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFDeviceOperationWiFiSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationWiFiSetup *)self _activate];
    }
  }

  selfCopy->_startTicks = mach_absolute_time();
  v15 = 0;
  selfCopy->_reachabilityEnabled = CFPrefs_GetInt64() != 0;
  Int64 = CFPrefs_GetInt64();
  if (v15)
  {
    v5 = 1;
  }

  else
  {
    v5 = Int64 == 0;
  }

  v6 = !v5;
  selfCopy->_forceFailScanWiFi = v6;
  v7 = CFPrefs_GetInt64();
  if (v15)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  v9 = !v8;
  selfCopy->_forceFailJoinWiFi = v9;
  v10 = WiFiCopyCurrentNetworkInfoEx();
  if (!v10)
  {
    v13 = NSErrorWithOSStatusF(301000, "GetWiFiInfoFailed: %#m", v15);
    [(SFDeviceOperationWiFiSetup *)selfCopy _complete:v13];

    goto LABEL_33;
  }

  if (selfCopy->_reachabilityEnabled)
  {
    if (!selfCopy->_skipLocalReachability)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationWiFiSetup _activate];
      }

      v11 = objc_alloc_init(MEMORY[0x1E6999510]);
      reachabilityMonitor = selfCopy->_reachabilityMonitor;
      selfCopy->_reachabilityMonitor = v11;

      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor setDispatchQueue:selfCopy->_dispatchQueue];
      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor setTimeout:100.0];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__SFDeviceOperationWiFiSetup__activate__block_invoke;
      v14[3] = &unk_1E788B238;
      v14[4] = selfCopy;
      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor setCompletionHandler:v14];
      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor activate];
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (selfCopy->_skipLocalReachability)
  {
LABEL_25:
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationWiFiSetup _activate];
    }
  }

  if (!selfCopy->_reachabilityEnabled && gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _activate];
  }

  [(SFDeviceOperationWiFiSetup *)selfCopy _activate2];
LABEL_33:
}

void __39__SFDeviceOperationWiFiSetup__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 32) & 1) == 0)
  {
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
    v10 = v3;

    v8 = v10;
    if (v10)
    {
      v9 = NSErrorNestedF();
      [*(a1 + 32) _complete:v9];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          __39__SFDeviceOperationWiFiSetup__activate__block_invoke_cold_1(v8, v6, v7);
        }
      }

      [*(a1 + 32) _activate2];
    }

    v3 = v10;
  }
}

- (void)_activate2
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationWiFiSetup *)self _activate2];
    }
  }

  v38 = 0;
  createRequestFromWiFiConfig = [(SFDeviceOperationWiFiSetup *)selfCopy createRequestFromWiFiConfig];
  if (!createRequestFromWiFiConfig)
  {
    v10 = WiFiCopyCurrentNetworkInfoEx();
    if (v10)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFStringGetTypeID();
      v9 = CFDictionaryGetTypedValue();
      if (!v9)
      {
        v35 = NSErrorWithOSStatusF(301000, "NoWiFISSID");

        v8 = 0;
        goto LABEL_80;
      }

      [v7 setObject:v9 forKeyedSubscript:@"wifiSSID"];
      v11 = [v10 objectForKeyedSubscript:@"password"];
      if (v11 || ([v10 objectForKeyedSubscript:@"open"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_14:
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (Int64Ranged >= 1)
        {
          if (selfCopy->_forceFailScanWiFi)
          {
            v13 = 100;
          }

          else
          {
            v13 = Int64Ranged;
          }

          v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
          [v7 setObject:v14 forKeyedSubscript:@"wifiCh"];
        }

        if (CFDictionaryGetInt64())
        {
          [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiDirected"];
        }

        if (CFDictionaryGetInt64())
        {
          v15 = [v10 objectForKeyedSubscript:@"eapConfig"];
          if (v15)
          {
            [v7 setObject:v15 forKeyedSubscript:@"wifiEAPConfig"];
          }

          v16 = [v10 objectForKeyedSubscript:@"eapTrustExceptions"];

          if (v16)
          {
            [v7 setObject:v16 forKeyedSubscript:@"wifiEAPTE"];
          }
        }

        Int64 = CFDictionaryGetInt64();
        if (Int64)
        {
          [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiHN"];
        }

        CFStringGetTypeID();
        v18 = CFDictionaryGetTypedValue();
        v19 = v18;
        if (v18)
        {
          if (selfCopy->_forceFailJoinWiFi)
          {
            v20 = &stru_1F1D30528;
          }

          else
          {
            v20 = v18;
          }

          [v7 setObject:v20 forKeyedSubscript:@"wifiPW"];
          v21 = "no";
          v8 = v19;
        }

        else
        {
          CFDataGetTypeID();
          v8 = CFDictionaryGetTypedValue();
          if (v8)
          {
            [v7 setObject:v8 forKeyedSubscript:@"wifiPSK"];
            v21 = "yes";
          }

          else
          {
            v21 = "no";
          }
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
        {
          v24 = "yes";
          if (v19)
          {
            v25 = "yes";
          }

          else
          {
            v25 = "no";
          }

          if (!Int64)
          {
            v24 = "no";
          }

          LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationWiFiSetup _activate2]", 30, "Send WiFISetup request: SSID '%.3@...', Channel %d, PW %s, PSK %s, Home %s\n", v9, Int64Ranged, v25, v21, v24);
        }

        goto LABEL_56;
      }

      v23 = [v10 objectForKeyedSubscript:@"enterprise"];

      if (v23)
      {
        goto LABEL_14;
      }

      if (gLogCategory_SFDeviceOperationWiFiSetup <= 90 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationWiFiSetup _activate2];
      }

      v22 = NSErrorWithOSStatusF(301041, "GetWiFiInfoFailed: %#m", v38);
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationWiFiSetup _activate2];
      }

      v22 = NSErrorWithOSStatusF(301000, "GetWiFiInfoFailed: %#m", v38);
      v9 = 0;
      v7 = 0;
    }

    [(SFDeviceOperationWiFiSetup *)selfCopy _complete:v22];

    v8 = 0;
LABEL_70:
    v35 = 0;
    goto LABEL_71;
  }

  v7 = createRequestFromWiFiConfig;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (createRequestFromWiFiConfig = _LogCategory_Initialize(), createRequestFromWiFiConfig))
    {
      [(SFDeviceOperationWiFiSetup *)createRequestFromWiFiConfig _activate2];
    }
  }

  v8 = 0;
  v9 = 0;
LABEL_56:
  if (selfCopy->_repairFlags)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v7 setObject:v26 forKeyedSubscript:@"rpFl"];
  }

  if (selfCopy->_setupFlags)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v7 setObject:v27 forKeyedSubscript:@"suFl"];
  }

  if (selfCopy->_skipReachability)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiSR"];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)selfCopy _activate2];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_operationType];
  [v7 setObject:v28 forKeyedSubscript:@"wifiOT"];

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)selfCopy _activate2];
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_retryJoinsCount];
  [v7 setObject:v29 forKeyedSubscript:@"wifiJC"];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_retryScansCount];
  [v7 setObject:v30 forKeyedSubscript:@"wifiRC"];

  [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiRS"];
  sfSession = selfCopy->_sfSession;
  if (sfSession)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __40__SFDeviceOperationWiFiSetup__activate2__block_invoke;
    v37[3] = &unk_1E788B548;
    v37[4] = selfCopy;
    [(SFSession *)sfSession sendRequestID:@"_ws" options:0 request:v7 responseHandler:v37];
    v32 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_dispatchQueue);
    timeoutTimer = selfCopy->_timeoutTimer;
    selfCopy->_timeoutTimer = v32;

    v34 = selfCopy->_timeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__SFDeviceOperationWiFiSetup__activate2__block_invoke_2;
    handler[3] = &unk_1E788B198;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(v34, handler);
    SFDispatchTimerSet(selfCopy->_timeoutTimer, 100.0, -1.0, -4.0);
    dispatch_resume(selfCopy->_timeoutTimer);
    goto LABEL_70;
  }

  v35 = NSErrorWithOSStatusF(4294960591, "NoSFSession");
LABEL_80:
  if (v35)
  {
    [(SFDeviceOperationWiFiSetup *)selfCopy _complete:v35];
  }

LABEL_71:
}

_BYTE *__40__SFDeviceOperationWiFiSetup__activate2__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    return [result _setupResponse:a2 inResponse:?];
  }

  return result;
}

void __40__SFDeviceOperationWiFiSetup__activate2__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[32] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF(4294896137, "WiFiSetup");
    [v1 _complete:v2];
  }
}

- (id)createRequestFromWiFiConfig
{
  CFStringGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  CFStringGetTypeID();
  v4 = CFPrefs_CopyTypedValue();
  v5 = objc_opt_new();
  if (v3 && v4)
  {
    preferredWiFiConfiguration = v3;
    v7 = v4;
  }

  else
  {
    preferredWiFiConfiguration = self->_preferredWiFiConfiguration;
    if (!preferredWiFiConfiguration)
    {
      v8 = 0;
      goto LABEL_22;
    }

    CFStringGetTypeID();
    preferredWiFiConfiguration = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue();
  }

  v8 = v7;
  v9 = 0;
  if (!preferredWiFiConfiguration || !v7)
  {
    goto LABEL_23;
  }

  if (![preferredWiFiConfiguration length])
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  [v5 setObject:preferredWiFiConfiguration forKeyedSubscript:@"wifiSSID"];
  if ([(__CFString *)v8 length])
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationWiFiSetup createRequestFromWiFiConfig];
    }

    if (self->_forceFailJoinWiFi)
    {
      v10 = &stru_1F1D30528;
    }

    else
    {
      v10 = v8;
    }

    [v5 setObject:v10 forKeyedSubscript:@"wifiPW"];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)preferredWiFiConfiguration createRequestFromWiFiConfig];
  }

  v9 = v5;
LABEL_23:

  return v9;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFDeviceOperationWiFiSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __40__SFDeviceOperationWiFiSetup_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 40) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = NSErrorWithOSStatusF(4294960573, "InvalidatedCalled");
  [v6 _complete:v7];
}

- (void)_bonjourTestStart
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  RandomBytes();
  v3 = NSStringWithMACAddress();
  objc_storeStrong(&self->_bonjourTestID, v3);
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)&self->_bonjourTestID _bonjourTestStart];
  }

  self->_bonjourTestState = 1;
  self->_startBonjourTestTicks = mach_absolute_time();
  [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
  v4 = objc_alloc_init(MEMORY[0x1E6999470]);
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = v4;

  [(CUBonjourBrowser *)self->_bonjourBrowser setChangeFlags:0xFFFFFFFFLL];
  [(CUBonjourBrowser *)self->_bonjourBrowser setDispatchQueue:self->_dispatchQueue];
  [(CUBonjourBrowser *)self->_bonjourBrowser setDomain:@"local."];
  [(CUBonjourBrowser *)self->_bonjourBrowser setLabel:@"SFDeviceOperationWiFi"];
  [(CUBonjourBrowser *)self->_bonjourBrowser setServiceType:@"_bonjourtest._tcp"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke;
  v14[3] = &unk_1E788F5A8;
  v14[4] = self;
  [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceFoundHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_2;
  v13[3] = &unk_1E788F5D0;
  v13[4] = self;
  [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceChangedHandler:v13];
  [(CUBonjourBrowser *)self->_bonjourBrowser activate];
  v17 = @"bjtID";
  v18[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  sfSession = self->_sfSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_3;
  v12[3] = &unk_1E788B548;
  v12[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_bjtS" options:0 request:v6 responseHandler:v12];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  bonjourTimer = self->_bonjourTimer;
  self->_bonjourTimer = v8;

  v10 = self->_bonjourTimer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_4;
  v11[3] = &unk_1E788B198;
  v11[4] = self;
  dispatch_source_set_event_handler(v10, v11);
  SFDispatchTimerSet(self->_bonjourTimer, 16.0, -1.0, 1.0);
  dispatch_resume(self->_bonjourTimer);
}

void *__47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[1])
  {
    return [result _bonjourTestFoundDevice:a2];
  }

  return result;
}

void *__47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[1])
  {
    return [result _bonjourTestFoundDevice:a2];
  }

  return result;
}

void __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 32) & 1) == 0 && gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationWiFiSetup _bonjourTestStart]_block_invoke_3", 30, "BonjourTest start response: %##@, %{error}\n", v8, v9);
  }
}

- (void)_bonjourTestFoundDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  v6 = [txtDictionary objectForKeyedSubscript:@"rpBA"];

  if ([v6 isEqual:self->_bonjourTestID])
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationWiFiSetup _bonjourTestFoundDevice:deviceCopy];
    }

    self->_bonjourTestState = 4;
    bonjourTimer = self->_bonjourTimer;
    if (bonjourTimer)
    {
      v8 = bonjourTimer;
      dispatch_source_cancel(v8);
      v9 = self->_bonjourTimer;
      self->_bonjourTimer = 0;
    }

    [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
    bonjourBrowser = self->_bonjourBrowser;
    self->_bonjourBrowser = 0;

    sfSession = self->_sfSession;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__SFDeviceOperationWiFiSetup__bonjourTestFoundDevice___block_invoke;
    v12[3] = &unk_1E788B548;
    v12[4] = self;
    [(SFSession *)sfSession sendRequestID:@"_bjtD" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v12];
  }

  else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _bonjourTestFoundDevice:deviceCopy];
  }
}

void __54__SFDeviceOperationWiFiSetup__bonjourTestFoundDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 112) = v7;
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationWiFiSetup _bonjourTestFoundDevice:]_block_invoke", 30, "BonjourTest done response: %f seconds, %##@, %{error}\n", *(*(a1 + 32) + 112), v6, v8);
    }

    [*(a1 + 32) _complete:0];
  }
}

- (void)_bonjourTestTimeout
{
  if (self->_invalidateCalled)
  {
    return;
  }

  mach_absolute_time();
  UpTicksToSecondsF();
  self->_metricBonjourTestSeconds = metricBonjourTestSeconds;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 90)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      metricBonjourTestSeconds = self->_metricBonjourTestSeconds;
    }

    LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationWiFiSetup _bonjourTestTimeout]", 90, "### BonjourTest timeout: %f seconds\n", metricBonjourTestSeconds);
  }

LABEL_6:
  self->_bonjourTestState = 3;

  [(SFDeviceOperationWiFiSetup *)self _complete:0];
}

- (void)_complete:(id)_complete
{
  _completeCopy = _complete;
  bonjourTimer = self->_bonjourTimer;
  v15 = _completeCopy;
  if (bonjourTimer)
  {
    v6 = bonjourTimer;
    dispatch_source_cancel(v6);
    v7 = self->_bonjourTimer;
    self->_bonjourTimer = 0;

    _completeCopy = v15;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v9 = timeoutTimer;
    dispatch_source_cancel(v9);
    v10 = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    _completeCopy = v15;
  }

  if (self->_completionHandler)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    v12 = v15;
    self->_metricTotalSeconds = metricTotalSeconds;
    if (!v15)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationWiFiSetup _complete:]", 30, "Succeeded: %f seconds\n");
      }

      goto LABEL_16;
    }

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
      {
        v13 = _LogCategory_Initialize();
        v12 = v15;
        if (!v13)
        {
          goto LABEL_16;
        }

        metricTotalSeconds = self->_metricTotalSeconds;
      }

      LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationWiFiSetup _complete:]", 60, "### Failed: %f seconds, %{error}\n", *&metricTotalSeconds, v12);
    }

LABEL_16:
    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    _completeCopy = v15;
  }
}

- (void)_setupResponse:(id)response inResponse:(id)inResponse
{
  responseCopy = response;
  inResponseCopy = inResponse;
  mach_absolute_time();
  UpTicksToSecondsF();
  self->_metricWiFiSetupSeconds = v8;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _setupResponse:inResponseCopy inResponse:?];
  }

  if (responseCopy)
  {
    v9 = responseCopy;
LABEL_12:
    [(SFDeviceOperationWiFiSetup *)self _complete:v9];

    goto LABEL_13;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (Int64Ranged)
  {
    [v12 UTF8String];
    v9 = NSErrorF();
  }

  else
  {
    v9 = 0;
  }

  CFArrayGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  self->_wiFiRetryMetrics = v13;

  if (v9)
  {
    goto LABEL_12;
  }

  if ((self->_setupFlags & 1) == 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _setupResponse:? inResponse:?];
  }

  [(SFDeviceOperationWiFiSetup *)self _bonjourTestStart];
LABEL_13:
}

@end