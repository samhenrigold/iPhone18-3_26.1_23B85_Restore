@interface SFDeviceRepairSession
- (BOOL)_remotePeerNeedsAppleIDRepair;
- (SFDeviceRepairSession)init;
- (int)_runAppleIDSetupRepair;
- (int)_runCDPSetup;
- (int)_runCaptiveJoin;
- (int)_runFinish;
- (int)_runGetProblems;
- (int)_runHomeKitSetup;
- (int)_runPairVerify;
- (int)_runPreflightWiFiEarly;
- (int)_runPreflightWiFiFull;
- (int)_runSFSessionStart;
- (int)_runTRAuthentication;
- (int)_runTRSessionStart;
- (int)_runWiFiSetup;
- (void)_cleanup;
- (void)_reportError:(id)error isPreflight:(BOOL)preflight;
- (void)_reportRepairResultMetrics:(id)metrics;
- (void)_run;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFDeviceRepairSession

- (SFDeviceRepairSession)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceRepairSession;
  v2 = [(SFDeviceRepairSession *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFDeviceRepairSession *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceRepairSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceRepairSession;
    [(SFDeviceRepairSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
  wifiSetupOperation = self->_wifiSetupOperation;
  self->_wifiSetupOperation = 0;

  [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
  captiveJoin = self->_captiveJoin;
  self->_captiveJoin = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
  homeKitSetupOperation = self->_homeKitSetupOperation;
  self->_homeKitSetupOperation = 0;

  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  appleIDRepairController = self->_appleIDRepairController;
  self->_appleIDRepairController = 0;

  [(SFSession *)self->_sfSession setInvalidationHandler:0];
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    progressHandler = self->_progressHandler;
  }

  self->_progressHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFDeviceRepairSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __33__SFDeviceRepairSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __33__SFDeviceRepairSession_activate__block_invoke_cold_1(a1);
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 16) = mach_absolute_time();
  *(*(a1 + 32) + 64) = [*(*(a1 + 32) + 344) problemFlags];
  *(*(a1 + 32) + 112) = CFPrefs_GetInt64() != 0;
  v2 = *(a1 + 32);
  v3 = v2[46];
  if (v3)
  {
    (*(v3 + 16))(v2[46], 10, 0);
    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceRepairSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceRepairSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __35__SFDeviceRepairSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)_reportError:(id)error isPreflight:(BOOL)preflight
{
  preflightCopy = preflight;
  v21[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFDeviceRepairSession <= 90 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairSession _reportError:errorCopy isPreflight:?];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v20 = @"eo";
    v10 = errorCopy;
    if (!errorCopy)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A768];
      v18 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v4 = v13;
      v14 = @"?";
      if (v13)
      {
        v14 = v13;
      }

      v19 = v14;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v10 = [v11 errorWithDomain:v12 code:-6700 userInfo:v5];
    }

    v21[0] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    progressHandler[2](progressHandler, 30, v15);

    if (!errorCopy)
    {
    }
  }

  v16 = objc_alloc_init(SFRepairResultMetrics);
  [(SFRepairResultMetrics *)v16 setError:errorCopy];
  [(SFRepairResultMetrics *)v16 setIsPreflightError:preflightCopy];
  [(SFRepairResultMetrics *)v16 setProblemFlags:self->_problemFlags];
  [(SFRepairResultMetrics *)v16 setPeerProblemFlags:self->_peerProblemFlags];
  model = [(SFDevice *)self->_peerDevice model];
  [(SFRepairResultMetrics *)v16 setPeerModel:model];

  [(SFRepairResultMetrics *)v16 setPeerBuild:self->_peerOSBuild];
  [(SFRepairResultMetrics *)v16 setForceWiFi:self->_repairFlags & 1];
  mach_absolute_time();
  [(SFRepairResultMetrics *)v16 setTotalMs:UpTicksToMilliseconds()];
  [(SFRepairResultMetrics *)v16 setTriggerMs:self->_triggerMs];
  [(SFRepairResultMetrics *)v16 setHasView:self->_presentingViewController != 0];
  [(SFDeviceRepairSession *)self _reportRepairResultMetrics:v16];
}

- (void)_reportRepairResultMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (gLogCategory_SFDeviceRepairSession <= 40 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairSession _reportRepairResultMetrics:];
  }

  dict = [metricsCopy dict];
  SFMetricsLog(@"com.apple.sharing.RepairResult", dict);
}

- (BOOL)_remotePeerNeedsAppleIDRepair
{
  if (_os_feature_enabled_impl())
  {
    v3 = BYTE1(self->_peerFeatureFlags) >> 7;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  if ((self->_problemFlags & 0x20006) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = (self->_repairFlags >> 3) & 1;
    if ((self->_repairFlags & 6) != 0)
    {
      LOBYTE(v4) = 1;
    }
  }

  return v3 & v4;
}

- (int)_runPreflightWiFiEarly
{
  preflightWiFiEarlyState = self->_preflightWiFiEarlyState;
  if (!preflightWiFiEarlyState)
  {
    selfCopy = self;
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceRepairSession *)self _runPreflightWiFiEarly];
      }
    }

    v5 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      v9 = v6;
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          [(SFDeviceRepairSession *)v6 _runPreflightWiFiEarly];
        }
      }

      selfCopy->_preflightWiFiEarlyState = 4;

      return selfCopy->_preflightWiFiEarlyState;
    }

    else
    {
      v10 = NSErrorWithOSStatusF(301000, "No WiFi SSID");
      selfCopy->_preflightWiFiEarlyState = 3;
      [(SFDeviceRepairSession *)selfCopy _reportError:v10 isPreflight:1];
      preflightWiFiEarlyState = selfCopy->_preflightWiFiEarlyState;
    }
  }

  return preflightWiFiEarlyState;
}

- (int)_runPreflightWiFiFull
{
  selfCopy = self;
  preflightWiFiState = self->_preflightWiFiState;
  if (preflightWiFiState == 4 || preflightWiFiState == 2)
  {
    return selfCopy->_preflightWiFiState;
  }

  if (preflightWiFiState)
  {
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return selfCopy->_preflightWiFiState;
        }

        preflightWiFiState = selfCopy->_preflightWiFiState;
      }

      LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runPreflightWiFiFull]", 30, "Preflight WiFi hasn't succeeded yet (%d)\n", preflightWiFiState);
    }
  }

  else
  {
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceRepairSession *)self _runPreflightWiFiFull];
      }
    }

    v7 = WiFiCopyCurrentNetworkInfoEx();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (!v9)
    {
      v14 = NSErrorWithOSStatusF(301000, "No WiFi SSID");
      selfCopy->_preflightWiFiState = 3;
      [(SFDeviceRepairSession *)selfCopy _reportError:v14 isPreflight:1];
      v6 = selfCopy->_preflightWiFiState;
      goto LABEL_23;
    }

    if (CFDictionaryGetInt64())
    {
      if (Int64Ranged != 1)
      {
        v10 = NSPrintF("Not shareable (%d)", Int64Ranged);
        if (v10)
        {
          goto LABEL_18;
        }
      }

      bleDevice = [(SFDevice *)selfCopy->_peerDevice bleDevice];
      advertisementData = [bleDevice advertisementData];
      if ([advertisementData length])
      {
        osVersion = [(SFDevice *)selfCopy->_peerDevice osVersion];

        if (osVersion <= 0xA)
        {
          v10 = NSPrintF("Peer old OS (%d)", [(SFDevice *)selfCopy->_peerDevice osVersion]);
          if (v10)
          {
LABEL_18:
            v14 = v10;
            v15 = NSErrorWithOSStatusF(301004, "Enterprise WiFi not supported: %@", v10);
            selfCopy->_preflightWiFiState = 3;
            [(SFDeviceRepairSession *)selfCopy _reportError:v15 isPreflight:1];
            v6 = selfCopy->_preflightWiFiState;

LABEL_23:
LABEL_48:

            return v6;
          }
        }
      }

      else
      {
      }
    }

    if (CFPrefs_GetInt64() && [v9 isEqual:@"AppleWiFi"])
    {
      NSErrorWithOSStatusF(301020, "AppleWiFi not allowed", v23);
      v21 = LABEL_47:;
      selfCopy->_preflightWiFiState = 3;
      [(SFDeviceRepairSession *)selfCopy _reportError:v21 isPreflight:1];
      v6 = selfCopy->_preflightWiFiState;

      goto LABEL_48;
    }

    wifiIsCaptive = CFDictionaryGetInt64() != 0;
    selfCopy->_wifiIsCaptive = wifiIsCaptive;
    peerFeatureFlags = selfCopy->_peerFeatureFlags;
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession != -1 || (v18 = _LogCategory_Initialize(), wifiIsCaptive = selfCopy->_wifiIsCaptive, v18))
      {
        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runPreflightWiFiFull]", 30, "Network is captive: %d (blocked: %d)", wifiIsCaptive, (peerFeatureFlags & 0x2000) == 0);
        LOBYTE(wifiIsCaptive) = selfCopy->_wifiIsCaptive;
      }
    }

    if (wifiIsCaptive && (peerFeatureFlags & 0x2000) == 0)
    {
      NSErrorWithOSStatusF(301004, "WiFi network is captive");
      goto LABEL_47;
    }

    v20 = (peerFeatureFlags & 0x2000) == 0 || Int64Ranged != 5;
    if (Int64Ranged >= 2 && v20)
    {
      CUWiFiShareableStatusToString(Int64Ranged);
      NSErrorWithOSStatusF(301004, "WiFi network not shareable (%s)");
      goto LABEL_47;
    }

    if ((_os_feature_enabled_impl() || [(NSString *)selfCopy->_peerSSID isEqualToString:v9]) && ((selfCopy->_problemFlags & 0x200000) != 0 || (selfCopy->_repairFlags & 0x20) != 0))
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runPreflightWiFiFull];
      }

      selfCopy->_wifiSetupState = 2;
    }

    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairSession _runPreflightWiFiFull];
    }

    selfCopy->_preflightWiFiState = 4;
  }

  return selfCopy->_preflightWiFiState;
}

- (int)_runSFSessionStart
{
  selfCopy = self;
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_sfSessionState;
          }

          sfSessionState = selfCopy->_sfSessionState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runSFSessionStart]", 30, "SFSession hasn't succeeded yet (%d)\n", sfSessionState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runSFSessionStart];
        }
      }

      selfCopy->_sfSessionState = 1;
      [(SFSession *)selfCopy->_sfSession invalidate];
      v6 = objc_alloc_init(SFSession);
      sfSession = selfCopy->_sfSession;
      selfCopy->_sfSession = v6;

      [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFSession *)selfCopy->_sfSession setLabel:@"Repair"];
      [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
      [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.Repair"];
      [(SFSession *)selfCopy->_sfSession setSessionFlags:4129];
      [(SFSession *)selfCopy->_sfSession setTouchRemoteEnabled:1];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke;
      v14[3] = &unk_1E788B238;
      v14[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setErrorHandler:v14];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_2;
      v13[3] = &unk_1E788B198;
      v13[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v13];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_3;
      v12[3] = &unk_1E788B198;
      v12[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInvalidationHandler:v12];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_4;
      v11[3] = &unk_1E788B198;
      v11[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setSessionStartedHandler:v11];
      v8 = selfCopy->_sfSession;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_5;
      v10[3] = &unk_1E788B238;
      v10[4] = selfCopy;
      [(SFSession *)v8 activateWithCompletion:v10];
    }
  }

  return selfCopy->_sfSessionState;
}

_BYTE *__43__SFDeviceRepairSession__runSFSessionStart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _reportError:a2 isPreflight:1];
  }

  return result;
}

void __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[9] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF(4294960534, "SFSessionInterruption");
    [v1 _reportError:v2 isPreflight:0];
  }
}

void __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[9] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF(4294960560, "SFSessionInvalidation");
    [v1 _reportError:v2 isPreflight:0];
  }
}

void *__43__SFDeviceRepairSession__runSFSessionStart__block_invoke_4(void *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 9) & 1) == 0 && *(v1 + 40) == 1)
  {
    *(v1 + 40) = 4;
    return [*(result + 4) _run];
  }

  return result;
}

void *__43__SFDeviceRepairSession__runSFSessionStart__block_invoke_5(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    if ((*(v2 + 9) & 1) == 0)
    {
      *(v2 + 40) = 3;
      return [*(result + 4) _reportError:a2 isPreflight:0];
    }
  }

  return result;
}

- (int)_runPairVerify
{
  pairVerifyState = self->_pairVerifyState;
  if ((pairVerifyState | 2) == 2)
  {
    [(SFSession *)self->_sfSession setSessionFlags:[(SFSession *)self->_sfSession sessionFlags]& 0xFFFFFBFFLL];
    self->_pairVerifyState = 0;
    pairVerifyType = self->_pairVerifyType;
    if (pairVerifyType != 1)
    {
LABEL_10:
      v6 = "?";
      if (pairVerifyType == 1)
      {
        v6 = "CUPairing";
      }

      if (pairVerifyType)
      {
        v7 = v6;
      }

      else
      {
        v7 = "HomeKit";
      }

      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceRepairSession *)v7 _runPairVerify];
      }

      self->_pairVerifyState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __39__SFDeviceRepairSession__runPairVerify__block_invoke;
      v11[3] = &unk_1E788F738;
      v11[4] = self;
      v11[5] = v7;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v11];
      return self->_pairVerifyState;
    }

    [(SFSession *)self->_sfSession setSessionFlags:[(SFSession *)self->_sfSession sessionFlags]| 0x400];
    pairVerifyState = self->_pairVerifyState;
  }

  if (pairVerifyState == 4 || pairVerifyState == 2)
  {
    return self->_pairVerifyState;
  }

  if (!pairVerifyState)
  {
    pairVerifyType = self->_pairVerifyType;
    goto LABEL_10;
  }

  if (gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_pairVerifyState;
      }

      pairVerifyState = self->_pairVerifyState;
    }

    LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runPairVerify]", 30, "PairVerify hasn't succeeded yet (%d)\n", pairVerifyState);
  }

  return self->_pairVerifyState;
}

void __39__SFDeviceRepairSession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  if ((*(*(a1 + 32) + 9) & 1) == 0)
  {
    v11 = v3;
    if (v3)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_1(a1);
      }

      v5 = *v4;
      v6 = *(*v4 + 80);
      if (v6 == 1)
      {
        *(v5 + 72) = 3;
        v7 = *v4;
        v8 = NSErrorWithOSStatusF(301012, "PairVerifyFailed %{error}", v11);
        [v7 _reportError:v8 isPreflight:0];

LABEL_19:
        v3 = v11;
        goto LABEL_20;
      }

      *(v5 + 80) = v6 + 1;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_2(a1 + 32);
      }

      *(*v4 + 72) = 2;
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_3(a1);
      }

      *(*v4 + 72) = 4;
      *(*v4 + 88) = 1;
      v9 = *v4;
      v10 = *(*v4 + 368);
      if (!v10)
      {
        goto LABEL_18;
      }

      (*(v10 + 16))(*(*v4 + 368), 70, 0);
    }

    v9 = *v4;
LABEL_18:
    [v9 _run];
    goto LABEL_19;
  }

LABEL_20:
}

- (int)_runGetProblems
{
  selfCopy = self;
  v13[1] = *MEMORY[0x1E69E9840];
  getProblemsState = self->_getProblemsState;
  if (getProblemsState != 4 && getProblemsState != 2)
  {
    if (getProblemsState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_getProblemsState;
          }

          getProblemsState = selfCopy->_getProblemsState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runGetProblems]", 30, "GetProblems hasn't succeeded yet (%d)\n", getProblemsState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runGetProblems];
        }
      }

      selfCopy->_getProblemsState = 1;
      if (_os_feature_enabled_impl())
      {
        v6 = 0x8000;
      }

      else
      {
        v6 = 0;
      }

      v12 = @"ff";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      v13[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

      sfSession = selfCopy->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__SFDeviceRepairSession__runGetProblems__block_invoke;
      v11[3] = &unk_1E788B548;
      v11[4] = selfCopy;
      [(SFSession *)sfSession sendRequestID:@"_getprob" options:0 request:v8 responseHandler:v11];
    }
  }

  return selfCopy->_getProblemsState;
}

void __40__SFDeviceRepairSession__runGetProblems__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v20 = a3;
  v8 = a4;
  if (v7)
  {
    goto LABEL_2;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    v10 = NSErrorWithOSStatusF(Int64Ranged, "GetProblemsFailed");
    if (v10)
    {
      v7 = v10;
LABEL_2:
      *(*(a1 + 32) + 92) = 3;
      [*(a1 + 32) _reportError:v7 isPreflight:0];

      goto LABEL_10;
    }
  }

  Int64 = CFDictionaryGetInt64();
  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  *(v13 + 96) = Int64;
  *(*v12 + 6) = CFDictionaryGetInt64();
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  v15 = *(*v12 + 41);
  *(*v12 + 41) = v14;

  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  v17 = *(*v12 + 7);
  *(*v12 + 7) = v16;

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  v19 = *(*v12 + 13);
  *(*v12 + 13) = v18;

  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __40__SFDeviceRepairSession__runGetProblems__block_invoke_cold_1(v12);
  }

  *(*v12 + 23) = 4;
  [*v12 _run];
LABEL_10:
}

- (int)_runWiFiSetup
{
  IsVirtualMachine = SFDeviceIsVirtualMachine();
  if (IsVirtualMachine)
  {
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession != -1 || (IsVirtualMachine = _LogCategory_Initialize(), IsVirtualMachine))
      {
        [(SFDeviceRepairSession *)IsVirtualMachine _runWiFiSetup];
      }
    }

    self->_wifiSetupState = 2;
  }

  else
  {
    wifiSetupState = self->_wifiSetupState;
    if (wifiSetupState != 4 && wifiSetupState != 2)
    {
      if (wifiSetupState)
      {
        if (gLogCategory_SFDeviceRepairSession <= 30)
        {
          if (gLogCategory_SFDeviceRepairSession == -1)
          {
            if (!_LogCategory_Initialize())
            {
              return self->_wifiSetupState;
            }

            wifiSetupState = self->_wifiSetupState;
          }

          LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runWiFiSetup]", 30, "WiFiSetup hasn't succeeded yet (%d)\n", wifiSetupState);
        }
      }

      else
      {
        if (gLogCategory_SFDeviceRepairSession <= 30)
        {
          if (gLogCategory_SFDeviceRepairSession != -1 || (IsVirtualMachine = _LogCategory_Initialize(), IsVirtualMachine))
          {
            [(SFDeviceRepairSession *)IsVirtualMachine _runWiFiSetup];
          }
        }

        self->_wifiSetupState = 1;
        progressHandler = self->_progressHandler;
        if (progressHandler)
        {
          progressHandler[2](progressHandler, 200, 0);
        }

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
        v9 = objc_alloc_init(SFDeviceOperationWiFiSetup);
        wifiSetupOperation = self->_wifiSetupOperation;
        self->_wifiSetupOperation = v9;

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setDispatchQueue:self->_dispatchQueue];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setRepairFlags:self->_repairFlags];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSfSession:self->_sfSession];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipLocalReachability:self->_wifiIsCaptive];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipReachability:self->_wifiIsCaptive];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setOperationType:self->_operationType];
        if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
        {
          [(SFDeviceRepairSession *)&self->_operationType _runWiFiSetup];
        }

        preferredWiFiConfiguration = self->_preferredWiFiConfiguration;
        if (preferredWiFiConfiguration)
        {
          v12 = [(NSDictionary *)preferredWiFiConfiguration count];
          if (v12)
          {
            if (gLogCategory_SFDeviceRepairSession <= 30)
            {
              if (gLogCategory_SFDeviceRepairSession != -1 || (v12 = _LogCategory_Initialize(), v12))
              {
                [(SFDeviceRepairSession *)v12 _runWiFiSetup];
              }
            }

            v21 = 0;
            CFStringGetTypeID();
            v15 = CFDictionaryGetTypedValue();
            CFStringGetTypeID();
            v16 = CFDictionaryGetTypedValue();
            v17 = v16;
            if (v15 && v16)
            {
              if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
              {
                [SFDeviceRepairSession _runWiFiSetup];
              }

              [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setPreferredWiFiConfiguration:self->_preferredWiFiConfiguration];
            }

            else
            {
              v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v21 userInfo:0];
              if (gLogCategory_SFDeviceRepairSession <= 60 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
              {
                [(SFDeviceRepairSession *)v18 _runWiFiSetup];
              }
            }
          }
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __38__SFDeviceRepairSession__runWiFiSetup__block_invoke;
        v20[3] = &unk_1E788B238;
        v20[4] = self;
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setCompletionHandler:v20];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation activate];
      }
    }
  }

  return self->_wifiSetupState;
}

void __38__SFDeviceRepairSession__runWiFiSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v5 = v7;
  if ((*(v7 + 9) & 1) == 0)
  {
    v9 = v3;
    if (v3)
    {
      *(v5 + 192) = 3;
      [*v6 _reportError:v3 isPreflight:0];
    }

    else
    {
      [*(v5 + 184) metricTotalSeconds];
      *(*v6 + 25) = v8;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __38__SFDeviceRepairSession__runWiFiSetup__block_invoke_cold_1(v6);
      }

      *(*v6 + 48) = 4;
      [*v6 _run];
    }

    v4 = v9;
  }
}

- (int)_runCaptiveJoin
{
  selfCopy = self;
  captiveJoinState = self->_captiveJoinState;
  if (captiveJoinState != 4)
  {
    if (captiveJoinState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_captiveJoinState;
          }

          captiveJoinState = selfCopy->_captiveJoinState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runCaptiveJoin]", 30, "Captive Join hasn't succeeded yet (%d)", captiveJoinState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runCaptiveJoin];
        }
      }

      selfCopy->_captiveJoinState = 1;
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin invalidate];
      v5 = objc_alloc_init(SFDeviceOperationCNJSetup);
      captiveJoin = selfCopy->_captiveJoin;
      selfCopy->_captiveJoin = v5;

      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setSfSession:selfCopy->_sfSession];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setPresentingViewController:selfCopy->_presentingViewController];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = selfCopy;
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setCompletionHandler:v8];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin activate];
    }
  }

  return selfCopy->_captiveJoinState;
}

void __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 320);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (gLogCategory_SFDeviceRepairSession <= 60)
    {
      if (gLogCategory_SFDeviceRepairSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v4 = *(v3 + 32);
      }

      LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runCaptiveJoin]_block_invoke_2", 60, "Captive join failed: %@", v4);
    }

LABEL_12:
    v7 = NSErrorWithOSStatusF(301028, "Captive login failed");
    *(*(v3 + 40) + 224) = 3;
    [*(v3 + 40) _reportError:v7 isPreflight:0];

    return;
  }

  if (gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke_2_cold_1(a1, a2, a3);
    }
  }

  [*(*(v3 + 40) + 216) metricTotalSeconds];
  *(*(v3 + 40) + 232) = v5;
  *(*(v3 + 40) + 224) = 4;
  v6 = *(v3 + 40);

  [v6 _run];
}

- (int)_runTRSessionStart
{
  selfCopy = self;
  trSessionState = self->_trSessionState;
  if (trSessionState == 4 || trSessionState == 2)
  {
    return selfCopy->_trSessionState;
  }

  if (!trSessionState)
  {
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceRepairSession *)self _runTRSessionStart];
      }
    }

    selfCopy->_trSessionState = 1;
    v6 = objc_alloc_init(getTROperationQueueClass_1());
    trOperationQueue = selfCopy->_trOperationQueue;
    selfCopy->_trOperationQueue = v6;

    if (selfCopy->_trOperationQueue)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      trOperations = selfCopy->_trOperations;
      selfCopy->_trOperations = v8;

      trSession = [(SFSession *)selfCopy->_sfSession trSession];
      trSession = selfCopy->_trSession;
      selfCopy->_trSession = trSession;

      if (selfCopy->_trSession)
      {
        if (gLogCategory_SFDeviceRepairSession <= 30)
        {
          if (gLogCategory_SFDeviceRepairSession != -1 || (v12 = _LogCategory_Initialize(), v12))
          {
            [(SFDeviceRepairSession *)v12 _runTRSessionStart];
          }
        }

        selfCopy->_trSessionState = 4;
        return selfCopy->_trSessionState;
      }

      if (gLogCategory_SFDeviceRepairSession > 90 || gLogCategory_SFDeviceRepairSession == -1 && !_LogCategory_Initialize())
      {
LABEL_29:
        selfCopy->_trSessionState = 3;
        v17 = NSErrorWithOSStatusF(4294960596, "TRSession start failed");
        [(SFDeviceRepairSession *)selfCopy _reportError:v17 isPreflight:0];

        return selfCopy->_trSessionState;
      }

      v16 = "### Get SFTRSession failed\n";
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession > 90 || gLogCategory_SFDeviceRepairSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v16 = "### Create TROperationQueue failed\n";
    }

    [(SFDeviceRepairSession *)v16 _runTRSessionStart];
    goto LABEL_29;
  }

  if (gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return selfCopy->_trSessionState;
      }

      trSessionState = selfCopy->_trSessionState;
    }

    LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runTRSessionStart]", 30, "TRSession hasn't succeeded yet (%d)\n", trSessionState);
  }

  return selfCopy->_trSessionState;
}

- (int)_runTRAuthentication
{
  selfCopy = self;
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState != 4 && trAuthenticationState != 2)
  {
    if (trAuthenticationState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trAuthenticationState;
          }

          trAuthenticationState = selfCopy->_trAuthenticationState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runTRAuthentication]", 30, "TRAuthentication hasn't succeeded yet (%d)\n", trAuthenticationState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runTRAuthentication];
        }
      }

      selfCopy->_trAuthenticationState = 1;
      selfCopy->_trAuthenticationStartTicks = mach_absolute_time();
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler = (*(progressHandler + 16))(progressHandler, 220, 0);
      }

      v7 = [objc_alloc(getTRAuthenticationOperationClass_0(progressHandler)) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v7];
      v18 = 0;
      Int64 = CFPrefs_GetInt64();
      disableSilentAuth = [(SFDeviceRepairSession *)selfCopy disableSilentAuth];
      if (Int64)
      {
        v10 = disableSilentAuth;
      }

      else
      {
        v10 = 1;
      }

      [v7 setShouldForceInteractiveAuth:v10];
      [v7 setShouldIgnoreAuthFailures:0];
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v12 = v11;
      problemFlags = selfCopy->_problemFlags;
      if ((problemFlags & 2) != 0 || (selfCopy->_repairFlags & 2) != 0)
      {
        [v11 addObject:&unk_1F1D7CEC8];
        problemFlags = selfCopy->_problemFlags;
      }

      if ((problemFlags & 4) != 0 || (selfCopy->_repairFlags & 4) != 0)
      {
        [v12 addObject:&unk_1F1D7CEE0];
      }

      [v7 setTargetedServices:v12];
      if (selfCopy->_presentingViewController)
      {
        [v7 setPresentingViewController:?];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__SFDeviceRepairSession__runTRAuthentication__block_invoke;
      v16[3] = &unk_1E788A658;
      v16[4] = selfCopy;
      v17 = v7;
      v14 = v7;
      [v14 setCompletionBlock:v16];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v14];
    }
  }

  return selfCopy->_trAuthenticationState;
}

void __45__SFDeviceRepairSession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 320);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 248))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 288) = v3;
    v7 = [*(a1 + 40) result];
    getTRAuthenticationOperationUnauthenticatedServicesKey_0(v7);
    CFSetGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    if (v7 && ![v4 count])
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 68) = 4;
      [*v1 _run];
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 60 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2_cold_2(v7);
      }

      v5 = [*(a1 + 40) error];
      if (!v5)
      {
        getTRAuthenticationOperationErrorKey_0(0);
        CFErrorGetTypeID();
        v5 = CFDictionaryGetTypedValue();
        if (!v5)
        {
          v5 = NSErrorWithOSStatusF(301014, "TRAuth Failed");
        }
      }

      v6 = v5;
      *(*v1 + 68) = 3;
      [*v1 _reportError:v5 isPreflight:0];
    }
  }
}

- (int)_runCDPSetup
{
  selfCopy = self;
  cdpState = self->_cdpState;
  if (cdpState != 4)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpState;
          }

          cdpState = selfCopy->_cdpState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runCDPSetup]", 30, "CDPSetup hasn't succeeded yet (%d)\n", cdpState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runCDPSetup];
        }
      }

      selfCopy->_cdpState = 1;
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 236, 0);
      }

      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation invalidate];
      v6 = objc_alloc_init(SFDeviceOperationCDPSetup);
      cdpSetupOperation = selfCopy->_cdpSetupOperation;
      selfCopy->_cdpSetupOperation = v6;

      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setSfSession:selfCopy->_sfSession];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setIsRepair:1];
      if (selfCopy->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setPresentingViewController:?];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__SFDeviceRepairSession__runCDPSetup__block_invoke;
      v9[3] = &unk_1E788B238;
      v9[4] = selfCopy;
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation activate];
    }
  }

  return selfCopy->_cdpState;
}

void __37__SFDeviceRepairSession__runCDPSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 120);
  if (v7)
  {
    v9 = v3;
    if (v3)
    {
      *(v4 + 136) = 3;
      [*v5 _reportError:v3 isPreflight:0];
    }

    else
    {
      [v7 metricSeconds];
      *(*v5 + 16) = v8;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __37__SFDeviceRepairSession__runCDPSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 34) = 4;
      [*v5 _run];
    }

    v3 = v9;
  }
}

- (int)_runAppleIDSetupRepair
{
  appleIDSetupState = self->_appleIDSetupState;
  if (appleIDSetupState != 4)
  {
    if (appleIDSetupState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceRepairSession *)self _runAppleIDSetupRepair];
      }

      return self->_appleIDSetupState;
    }

    v4 = self->_altDSID;
    if (v4)
    {
      messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];

      if (messageSessionTemplate)
      {
        if (gLogCategory_SFDeviceRepairSession <= 30)
        {
          if (gLogCategory_SFDeviceRepairSession != -1 || (v6 = _LogCategory_Initialize(), v6))
          {
            [(SFDeviceRepairSession *)v6 _runAppleIDSetupRepair];
          }
        }

        self->_appleIDSetupState = 1;
        progressHandler = self->_progressHandler;
        if (progressHandler)
        {
          progressHandler[2](progressHandler, 224, 0);
        }

        v10 = mach_absolute_time();
        v11 = [objc_alloc(getAISRepairContextClass_0()) initWithAltDSID:v4];
        messageSessionTemplate2 = [(SFSession *)self->_sfSession messageSessionTemplate];
        [v11 setMessageSessionTemplate:messageSessionTemplate2];

        v13 = [v11 setRemoteRole:3];
        v14 = objc_alloc_init(getAISRepairControllerClass_0(v13));
        appleIDRepairController = self->_appleIDRepairController;
        self->_appleIDRepairController = v14;

        v16 = self->_appleIDRepairController;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke;
        v21[3] = &unk_1E788F760;
        v21[4] = self;
        v21[5] = v10;
        [(AISRepairController *)v16 repairWithContext:v11 completionHandler:v21];

        return self->_appleIDSetupState;
      }

      v18 = "No message session";
    }

    else
    {
      v18 = "Missing altDSID";
    }

    self->_appleIDSetupState = 3;
    v19 = NSErrorWithOSStatusF(4294960551, v18);
    [(SFDeviceRepairSession *)self _reportError:v19 isPreflight:0];

    v17 = self->_appleIDSetupState;
    return v17;
  }

  return self->_appleIDSetupState;
}

void __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 320);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke_2;
  v12[3] = &unk_1E788B570;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

uint64_t __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke_2(void *a1)
{
  if (a1[4])
  {
    *(a1[5] + 160) = 3;
    v3 = a1[4];
    v2 = a1[5];

    return [v2 _reportError:v3 isPreflight:0];
  }

  else
  {
    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke_2_cold_1(a1);
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    *(a1[5] + 152) = v5;
    *(a1[5] + 160) = 4;
    v6 = a1[5];

    return [v6 _run];
  }
}

- (int)_runHomeKitSetup
{
  selfCopy = self;
  homeKitSetupState = self->_homeKitSetupState;
  if (homeKitSetupState != 4)
  {
    if (homeKitSetupState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_homeKitSetupState;
          }

          homeKitSetupState = selfCopy->_homeKitSetupState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runHomeKitSetup]", 30, "HomeKitSetup hasn't succeeded yet (%d)\n", homeKitSetupState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runHomeKitSetup];
        }
      }

      selfCopy->_homeKitSetupState = 1;
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 234, 0);
      }

      v6 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetupOperation = selfCopy->_homeKitSetupOperation;
      selfCopy->_homeKitSetupOperation = v6;

      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setKeyExchangeOnly:1];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setUserInteractive:0];
      trSession = [(SFSession *)selfCopy->_sfSession trSession];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setTrSession:trSession];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__SFDeviceRepairSession__runHomeKitSetup__block_invoke;
      v10[3] = &unk_1E788B238;
      v10[4] = selfCopy;
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setCompletionHandler:v10];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation activate];
    }
  }

  return selfCopy->_homeKitSetupState;
}

void __41__SFDeviceRepairSession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v6 = *(a1 + 32);
  if (*(v6 + 168))
  {
    v7 = v3;
    if (v3)
    {
      *(v6 + 176) = 3;
      [*(a1 + 32) _reportError:v3 isPreflight:0];
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          __41__SFDeviceRepairSession__runHomeKitSetup__block_invoke_cold_1(v3, v5, v4);
        }
      }

      *(*(a1 + 32) + 176) = 4;
      [*(a1 + 32) _run];
    }

    v5 = v7;
  }
}

- (int)_runFinish
{
  selfCopy = self;
  finishState = self->_finishState;
  if (finishState != 4 && finishState != 2)
  {
    if (finishState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_finishState;
          }

          finishState = selfCopy->_finishState;
        }

        LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runFinish]", 30, "Finish hasn't succeeded yet (%d)\n", finishState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceRepairSession *)self _runFinish];
        }
      }

      selfCopy->_finishState = 1;
      sfSession = selfCopy->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35__SFDeviceRepairSession__runFinish__block_invoke;
      v8[3] = &unk_1E788B548;
      v8[4] = selfCopy;
      [(SFSession *)sfSession sendRequestID:@"_finish" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v8];
    }
  }

  return selfCopy->_finishState;
}

void __35__SFDeviceRepairSession__runFinish__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    goto LABEL_2;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    Int64Ranged = NSErrorWithOSStatusF(Int64Ranged, "FinishFailed");
    if (Int64Ranged)
    {
      v7 = Int64Ranged;
LABEL_2:
      *(*(a1 + 32) + 296) = 3;
      [*(a1 + 32) _reportError:v7 isPreflight:0];
      goto LABEL_12;
    }
  }

  if (gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession != -1 || (Int64Ranged = _LogCategory_Initialize(), Int64Ranged))
    {
      __35__SFDeviceRepairSession__runFinish__block_invoke_cold_1(Int64Ranged, v11, v12);
    }
  }

  v7 = objc_alloc_init(SFRepairResultMetrics);
  [(SFRepairResultMetrics *)v7 setProblemFlags:*(*(a1 + 32) + 96)];
  [(SFRepairResultMetrics *)v7 setPeerProblemFlags:*(*(a1 + 32) + 64)];
  [(SFRepairResultMetrics *)v7 setForceWiFi:*(*(a1 + 32) + 304) & 1];
  mach_absolute_time();
  [(SFRepairResultMetrics *)v7 setTotalMs:UpTicksToMilliseconds()];
  [(SFRepairResultMetrics *)v7 setTriggerMs:*(*(a1 + 32) + 376)];
  v13 = [*(*(a1 + 32) + 344) model];
  [(SFRepairResultMetrics *)v7 setPeerModel:v13];

  [(SFRepairResultMetrics *)v7 setPeerBuild:*(*(a1 + 32) + 104)];
  [(SFRepairResultMetrics *)v7 setHasView:*(*(a1 + 32) + 360) != 0];
  [*(a1 + 32) _reportRepairResultMetrics:v7];
  v14 = objc_alloc_init(SFClient);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__SFDeviceRepairSession__runFinish__block_invoke_2;
  v18[3] = &unk_1E788B238;
  v15 = v14;
  v19 = v15;
  [(SFClient *)v15 reenableProxCardType:10 completion:v18];
  v16 = *(a1 + 32);
  v17 = v16[46];
  if (v17)
  {
    (*(v17 + 16))(v16[46], 96, 0);
    v16 = *(a1 + 32);
  }

  [v16 _cleanup];

LABEL_12:
}

void __35__SFDeviceRepairSession__runFinish__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceRepairSession__runFinish__block_invoke_2_cold_1(v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runPreflightWiFiEarly = [(SFDeviceRepairSession *)self _runPreflightWiFiEarly];
    if (_runPreflightWiFiEarly == 4 || _runPreflightWiFiEarly == 2)
    {
      _runSFSessionStart = [(SFDeviceRepairSession *)self _runSFSessionStart];
      if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceRepairSession *)self _runPairVerify], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          _runGetProblems = [(SFDeviceRepairSession *)self _runGetProblems];
          if (_runGetProblems == 4 || _runGetProblems == 2)
          {
            if ((self->_problemFlags & 0x10) == 0 && (self->_repairFlags & 1) == 0 || ((v11 = [(SFDeviceRepairSession *)self _runPreflightWiFiFull], v11 != 4) ? (v12 = v11 == 2) : (v12 = 1), v12 && ((v13 = [(SFDeviceRepairSession *)self _runWiFiSetup], v13 != 4) ? (v14 = v13 == 2) : (v14 = 1), v14 && (!self->_presentingViewController || (self->_problemFlags & 0x200000) == 0 && (self->_repairFlags & 0x20) == 0 || ((v15 = [(SFDeviceRepairSession *)self _runCaptiveJoin], v15 != 4) ? (v16 = v15 == 2) : (v16 = 1), v16)))))
            {
              if ([(SFDeviceRepairSession *)self _remotePeerNeedsAppleIDRepair])
              {
                _runAppleIDSetupRepair = [(SFDeviceRepairSession *)self _runAppleIDSetupRepair];
                if (_runAppleIDSetupRepair != 2 && _runAppleIDSetupRepair != 4)
                {
                  return;
                }
              }

              else
              {
                if ((self->_problemFlags & 6) != 0 || (self->_repairFlags & 6) != 0)
                {
                  _runTRSessionStart = [(SFDeviceRepairSession *)self _runTRSessionStart];
                  if (_runTRSessionStart != 4 && _runTRSessionStart != 2)
                  {
                    return;
                  }

                  _runTRAuthentication = [(SFDeviceRepairSession *)self _runTRAuthentication];
                  if (_runTRAuthentication != 4 && _runTRAuthentication != 2)
                  {
                    return;
                  }
                }

                if (self->_cdpEnabled && ((self->_problemFlags & 0x20000) != 0 || (self->_repairFlags & 8) != 0))
                {
                  _runCDPSetup = [(SFDeviceRepairSession *)self _runCDPSetup];
                  if (_runCDPSetup != 4 && _runCDPSetup != 2)
                  {
                    return;
                  }
                }
              }

              if ((self->_problemFlags & 8) == 0 && (self->_repairFlags & 0x10) == 0 || ((v25 = [(SFDeviceRepairSession *)self _runHomeKitSetup], v25 != 4) ? (v26 = v25 == 2) : (v26 = 1), v26))
              {
                if ((self->_problemFlags & 0x100) == 0)
                {

                  [(SFDeviceRepairSession *)self _runFinish];
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_2(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = "?";
  if (v1 == 1)
  {
    v2 = "CUPairing";
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "HomeKit";
  }

  return LogPrintF(&gLogCategory_SFDeviceRepairSession, "[SFDeviceRepairSession _runPairVerify]_block_invoke", 30, "PairVerify will now attempt: %s\n", v3);
}

@end