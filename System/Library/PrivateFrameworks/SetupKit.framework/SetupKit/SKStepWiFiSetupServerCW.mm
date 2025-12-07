@interface SKStepWiFiSetupServerCW
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepWiFiSetupServerCW)init;
- (void)_activate;
- (void)_completeWithError:(id)error;
- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler;
- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler;
- (void)_handleRequestWiFiSetup:(id)setup responseHandler:(id)handler;
- (void)_invalidated;
- (void)_run;
- (void)_runInternetReachabilityStart;
- (void)_runJoinStart:(int)start;
- (void)_runScanResults:(id)results error:(id)error channel:(int)channel;
- (void)_runScanStart:(int)start;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation SKStepWiFiSetupServerCW

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (void)_runInternetReachabilityStart
{
  internetReachabilityEnabled = self->_internetReachabilityEnabled;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (internetReachabilityEnabled)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SKStepWiFiSetupServerCW _runInternetReachabilityStart]", 30, "InternetReachability start");
    }

LABEL_9:
    self->_stepDone = 0;
    stepError = self->_stepError;
    self->_stepError = 0;

    [(CUReachabilityMonitor *)self->_internetReachabilityMonitor invalidate];
    v7 = objc_alloc_init(MEMORY[0x277D02900]);
    internetReachabilityMonitor = self->_internetReachabilityMonitor;
    self->_internetReachabilityMonitor = v7;
    v9 = v7;

    [(CUReachabilityMonitor *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CUReachabilityMonitor *)v9 setTimeout:20.0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__SKStepWiFiSetupServerCW__runInternetReachabilityStart__block_invoke;
    v11[3] = &unk_279BB8838;
    v11[4] = v9;
    v11[5] = self;
    [(CUReachabilityMonitor *)v9 setCompletionHandler:v11];
    [(CUReachabilityMonitor *)v9 activate];

    return;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SKStepWiFiSetupServerCW _runInternetReachabilityStart]", 30, "InternetReachability check disabled via pref");
  }

LABEL_11:
  self->_stepDone = 1;
  v10 = self->_stepError;
  self->_stepError = 0;
}

void __56__SKStepWiFiSetupServerCW__runInternetReachabilityStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(v4 + 40);
  if (*(a1 + 32) == v5)
  {
    *(v4 + 40) = 0;
    v12 = v3;

    if (v12)
    {
      v6 = NSErrorNestedF();
      v7 = *(a1 + 40);
      v8 = *(v7 + 104);
      *(v7 + 104) = v6;

      v9 = *(*(a1 + 40) + 112);
      if (*v9 <= 90)
      {
        if (*v9 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v9 = *(*(a1 + 40) + 112);
        }

        v10 = CUPrintNSError();
        LogPrintF(v9, "[SKStepWiFiSetupServerCW _runInternetReachabilityStart]_block_invoke", 90, "### InternetReachability failed: %@", v10);
      }
    }

    else
    {
      v11 = *(*(a1 + 40) + 112);
      if (*v11 <= 30)
      {
        if (*v11 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v11 = *(*(a1 + 40) + 112);
        }

        LogPrintF(v11, "[SKStepWiFiSetupServerCW _runInternetReachabilityStart]_block_invoke", 30, "InternetReachability succeeded");
      }
    }

LABEL_12:
    *(*(a1 + 40) + 96) = 1;
    [*(a1 + 40) _run];
    v3 = v12;
  }
}

- (void)_runJoinStart:(int)start
{
  v3 = *&start;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__430;
  v27 = __Block_byref_object_dispose__431;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__SKStepWiFiSetupServerCW__runJoinStart___block_invoke;
  v21[3] = &unk_279BB8528;
  v21[4] = self;
  v21[5] = &v23;
  startCopy = start;
  v5 = MEMORY[0x26676A4C0](v21, a2);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      ucat = self->_ucat;
    }

    v7 = CUPrintNSObject();
    v8 = v7;
    v9 = "yes";
    if (self->_wifiEAPConfig)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    if (self->_wifiEAPTrustExceptions)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (self->_wifiPassword)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    if (self->_wifiPSK)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (!self->_wifiHomeNetwork)
    {
      v9 = "no";
    }

    LogPrintF(ucat, "[SKStepWiFiSetupServerCW _runJoinStart:]", 30, "Join SSID '%@...', channel %d, EAP %s/%s, PW %s, PSK %s, Home %s", v7, v3, v10, v11, v12, v13, v9);
  }

LABEL_19:
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v15 = self->_scanResult;
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277D02AE0]);
    [v16 setScanResult:v15];
    [v16 setPassword:self->_wifiPassword];
    v17 = self->_wifiInterface;
    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x277D02B18]);
      objc_storeStrong(&self->_wifiInterface, v17);
      [(CWFInterface *)v17 activate];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__SKStepWiFiSetupServerCW__runJoinStart___block_invoke_2;
    v19[3] = &unk_279BB7E38;
    v19[4] = self;
    v20 = v3;
    [(CWFInterface *)v17 associateWithParameters:v16 reply:v19];
  }

  else
  {
    v18 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960534, "JoinNoScanResult");
    v16 = v24[5];
    v24[5] = v18;
  }

  v5[2](v5);
  _Block_object_dispose(&v23, 8);
}

void __41__SKStepWiFiSetupServerCW__runJoinStart___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_7;
      }

      v3 = *(v2 + 112);
    }

    v4 = *(a1 + 48);
    v5 = CUPrintNSError();
    LogPrintF(v3, "[SKStepWiFiSetupServerCW _runJoinStart:]_block_invoke", 90, "### Join start failed: channel %d, %@", v4, v5);

    v2 = *(a1 + 32);
  }

LABEL_7:
  *(v2 + 96) = 1;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = (*(a1 + 32) + 104);

  objc_storeStrong(v8, v7);
}

void __41__SKStepWiFiSetupServerCW__runJoinStart___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if ((*(v5 + 48) & 1) == 0)
  {
    v6 = *(v5 + 112);
    v7 = *v6;
    v10 = v4;
    if (v4)
    {
      if (v7 <= 90)
      {
        if (v7 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v6 = *(*(a1 + 32) + 112);
        }

        v8 = *(a1 + 40);
        v9 = CUPrintNSError();
        LogPrintF(v6, "[SKStepWiFiSetupServerCW _runJoinStart:]_block_invoke_2", 90, "### Join failed: channel %d, %@", v8, v9);
      }
    }

    else if (v7 <= 30)
    {
      if (v7 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v6 = *(*(a1 + 32) + 112);
      }

      LogPrintF(v6, "[SKStepWiFiSetupServerCW _runJoinStart:]_block_invoke_2", 30, "Join done: channel %d", *(a1 + 40));
    }

LABEL_12:
    *(*(a1 + 32) + 96) = 1;
    objc_storeStrong((*(a1 + 32) + 104), a2);
    [*(a1 + 32) _run];
    v4 = v10;
  }
}

- (void)_runScanResults:(id)results error:(id)error channel:(int)channel
{
  v5 = *&channel;
  resultsCopy = results;
  errorCopy = error;
  firstObject = [resultsCopy firstObject];
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!errorCopy)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "-[SKStepWiFiSetupServerCW _runScanResults:error:channel:]", 30, "Scan done: channel %d, count %d", v5, [resultsCopy count]);
    }

LABEL_11:
    v13 = firstObject;
    scanResult = self->_scanResult;
    self->_scanResult = v13;
    goto LABEL_12;
  }

  if (var0 > 90)
  {
    goto LABEL_13;
  }

  if (var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    ucat = self->_ucat;
  }

  scanResult = CUPrintNSError();
  LogPrintF(ucat, "[SKStepWiFiSetupServerCW _runScanResults:error:channel:]", 90, "### Scan failed: channel %d, %@", v5, scanResult);
LABEL_12:

LABEL_13:
  self->_stepDone = 1;
  stepError = self->_stepError;
  self->_stepError = errorCopy;

  [(SKStepWiFiSetupServerCW *)self _run];
}

- (void)_runScanStart:(int)start
{
  v25[1] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__430;
  v23 = __Block_byref_object_dispose__431;
  v24 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__SKStepWiFiSetupServerCW__runScanStart___block_invoke;
  v17[3] = &unk_279BB8528;
  v17[4] = self;
  v17[5] = &v19;
  startCopy = start;
  v5 = MEMORY[0x26676A4C0](v17, a2);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SKStepWiFiSetupServerCW _runScanStart:]", 30, "Scan channel %d", start);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  scanResult = self->_scanResult;
  self->_scanResult = 0;

  v9 = objc_alloc_init(MEMORY[0x277D02B48]);
  if (start >= 1)
  {
    v10 = objc_alloc_init(MEMORY[0x277D02B00]);
    [v10 setChannel:start];
    [v10 setFlags:28];
    v25[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [v9 setChannels:v11];
  }

  v12 = self->_wifiSSID;
  if (v12)
  {
    [v9 setSSID:v12];
    v13 = self->_wifiInterface;
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277D02B18]);
      objc_storeStrong(&self->_wifiInterface, v13);
      [(CWFInterface *)v13 activate];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__SKStepWiFiSetupServerCW__runScanStart___block_invoke_2;
    v15[3] = &unk_279BB7E10;
    v15[4] = self;
    startCopy2 = start;
    [(CWFInterface *)v13 performScanWithParameters:v9 reply:v15];
  }

  else
  {
    v14 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "ScanNoSSID");
    v13 = v20[5];
    v20[5] = v14;
  }

  v5[2](v5);
  _Block_object_dispose(&v19, 8);
}

void __41__SKStepWiFiSetupServerCW__runScanStart___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_7;
      }

      v3 = *(v2 + 112);
    }

    v4 = *(a1 + 48);
    v5 = CUPrintNSError();
    LogPrintF(v3, "[SKStepWiFiSetupServerCW _runScanStart:]_block_invoke", 90, "### Scan start failed: channel %d, %@", v4, v5);

    v2 = *(a1 + 32);
  }

LABEL_7:
  *(v2 + 96) = 1;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = (*(a1 + 32) + 104);

  objc_storeStrong(v8, v7);
}

_BYTE *__41__SKStepWiFiSetupServerCW__runScanStart___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if ((result[48] & 1) == 0)
  {
    return [result _runScanResults:a3 error:a2 channel:*(a1 + 40)];
  }

  return result;
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    while (1)
    {
      runState = self->_runState;
      switch(runState)
      {
        case 0:
          if (self->_responseHandler)
          {
            if (self->_wifiChannel < 1)
            {
              goto LABEL_42;
            }

            v5 = 11;
            goto LABEL_45;
          }

          goto LABEL_46;
        case 3:
          stepError = self->_stepError;
          if (!stepError)
          {
            v12 = NSErrorF_safe(v3, 4294960534, "Failed, but no error");
            v13 = self->_stepError;
            self->_stepError = v12;

            stepError = self->_stepError;
          }

          selfCopy2 = self;
          goto LABEL_22;
        case 4:
          selfCopy2 = self;
          stepError = 0;
LABEL_22:
          [(SKStepWiFiSetupServerCW *)selfCopy2 _completeWithError:stepError];
          goto LABEL_46;
        case 11:
          self->_runState = 12;
          wifiChannel = self->_wifiChannel;
          selfCopy5 = self;
          goto LABEL_27;
        case 12:
          if (self->_scanResult)
          {
            v5 = 13;
            goto LABEL_45;
          }

          if (self->_stepDone)
          {
            goto LABEL_42;
          }

          ucat = self->_ucat;
          if (ucat->var0 > 30)
          {
            goto LABEL_46;
          }

          if (ucat->var0 == -1)
          {
            goto LABEL_72;
          }

          v15 = 12;
          goto LABEL_70;
        case 13:
          self->_runState = 14;
          v6 = self->_wifiChannel;
          selfCopy6 = self;
          goto LABEL_29;
        case 14:
          if (self->_stepDone)
          {
            if (!self->_stepError)
            {
              goto LABEL_25;
            }

LABEL_42:
            v5 = 15;
            goto LABEL_45;
          }

          ucat = self->_ucat;
          if (ucat->var0 > 30)
          {
            goto LABEL_46;
          }

          if (ucat->var0 != -1)
          {
            v15 = 14;
            goto LABEL_70;
          }

          goto LABEL_72;
        case 15:
          self->_runState = 16;
          selfCopy5 = self;
          wifiChannel = 0;
LABEL_27:
          [(SKStepWiFiSetupServerCW *)selfCopy5 _runScanStart:wifiChannel];
          goto LABEL_46;
        case 16:
          if (self->_scanResult)
          {
            v5 = 17;
            goto LABEL_45;
          }

          if (self->_stepDone)
          {
            goto LABEL_44;
          }

          ucat = self->_ucat;
          if (ucat->var0 > 30)
          {
            goto LABEL_46;
          }

          if (ucat->var0 == -1)
          {
            goto LABEL_72;
          }

          v15 = 16;
          goto LABEL_70;
        case 17:
          self->_runState = 18;
          selfCopy6 = self;
          v6 = 0;
LABEL_29:
          [(SKStepWiFiSetupServerCW *)selfCopy6 _runJoinStart:v6];
          goto LABEL_46;
        case 18:
          if (self->_stepDone)
          {
            if (self->_stepError)
            {
              goto LABEL_44;
            }

LABEL_25:
            v5 = 19;
            goto LABEL_45;
          }

          ucat = self->_ucat;
          if (ucat->var0 > 30)
          {
            goto LABEL_46;
          }

          if (ucat->var0 != -1)
          {
            v15 = 18;
            goto LABEL_70;
          }

          goto LABEL_72;
        case 19:
          self->_runState = 20;
          [(SKStepWiFiSetupServerCW *)self _runInternetReachabilityStart];
          goto LABEL_46;
        case 20:
          if (!self->_stepDone)
          {
            ucat = self->_ucat;
            if (ucat->var0 > 30)
            {
              goto LABEL_46;
            }

            if (ucat->var0 != -1)
            {
              v15 = 20;
              goto LABEL_70;
            }

LABEL_72:
            if (!_LogCategory_Initialize())
            {
              goto LABEL_46;
            }

            ucat = self->_ucat;
            v15 = self->_runState;
            if (v15 < 0x15)
            {
LABEL_70:
              if (((0x1FF8FFu >> v15) & 1) == 0)
              {
                goto LABEL_74;
              }

              v20 = off_279BB8598[v15];
            }

            else
            {
LABEL_74:
              if (v15 <= 9)
              {
                v20 = "?";
              }

              else
              {
                v20 = "User";
              }
            }

            LogPrintF(ucat, "[SKStepWiFiSetupServerCW _run]", 30, "Waiting: %s", v20);
            goto LABEL_46;
          }

          if (self->_stepError)
          {
LABEL_44:
            v5 = 3;
          }

          else
          {
            v5 = 4;
          }

LABEL_45:
          self->_runState = v5;
LABEL_46:
          v16 = self->_runState;
          if (v16 == runState)
          {
            return;
          }

          v17 = self->_ucat;
          if (v17->var0 > 30)
          {
            continue;
          }

          if (v17->var0 != -1)
          {
            goto LABEL_49;
          }

          if (_LogCategory_Initialize())
          {
            v17 = self->_ucat;
            v16 = self->_runState;
LABEL_49:
            if (runState < 0x15 && ((0x1FF8FFu >> runState) & 1) != 0)
            {
              v18 = off_279BB8598[runState];
            }

            else if (runState <= 9)
            {
              v18 = "?";
            }

            else
            {
              v18 = "User";
            }

            if (v16 < 0x15 && ((0x1FF8FFu >> v16) & 1) != 0)
            {
              v19 = off_279BB8598[v16];
            }

            else if (v16 <= 9)
            {
              v19 = "?";
            }

            else
            {
              v19 = "User";
            }

            LogPrintF(v17, "[SKStepWiFiSetupServerCW _run]", 30, "State: %s -> %s", v18, v19);
          }

          break;
        default:
          goto LABEL_46;
      }
    }
  }
}

- (void)_handleRequestWiFiSetup:(id)setup responseHandler:(id)handler
{
  setupCopy = setup;
  handlerCopy = handler;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__430;
  v39 = __Block_byref_object_dispose__431;
  v40 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __67__SKStepWiFiSetupServerCW__handleRequestWiFiSetup_responseHandler___block_invoke;
  v32[3] = &unk_279BB8500;
  v34 = &v35;
  v32[4] = self;
  v8 = handlerCopy;
  v33 = v8;
  v9 = MEMORY[0x26676A4C0](v32);
  if (self->_runState)
  {
    v30 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960575, "Already started");
LABEL_19:
    v31 = v36[5];
    v36[5] = v30;

    goto LABEL_16;
  }

  self->_wifiChannel = CFDictionaryGetInt64Ranged();
  self->_wifiDirected = CFDictionaryGetInt64() != 0;
  v10 = [setupCopy objectForKeyedSubscript:@"_wiEC"];
  wifiEAPConfig = self->_wifiEAPConfig;
  self->_wifiEAPConfig = v10;

  v12 = [setupCopy objectForKeyedSubscript:@"_wiET"];
  wifiEAPTrustExceptions = self->_wifiEAPTrustExceptions;
  self->_wifiEAPTrustExceptions = v12;

  self->_wifiHomeNetwork = CFDictionaryGetInt64() != 0;
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  wifiPassword = self->_wifiPassword;
  self->_wifiPassword = v14;

  CFDataGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  wifiPSK = self->_wifiPSK;
  self->_wifiPSK = v16;

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  v19 = self->_wifiPassword;
  self->_wifiPassword = v18;

  CFStringGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  wifiSSID = self->_wifiSSID;
  self->_wifiSSID = v20;

  if (!self->_wifiSSID)
  {
    v30 = NSErrorF_safe(*MEMORY[0x277CCA590], 0, "No WiFI SSID");
    goto LABEL_19;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_5:
      v23 = CUPrintNSObject();
      v24 = v23;
      v25 = "yes";
      if (self->_wifiPassword)
      {
        v26 = "yes";
      }

      else
      {
        v26 = "no";
      }

      if (self->_wifiPSK)
      {
        v27 = "yes";
      }

      else
      {
        v27 = "no";
      }

      if (!self->_wifiHomeNetwork)
      {
        v25 = "no";
      }

      LogPrintF(ucat, "[SKStepWiFiSetupServerCW _handleRequestWiFiSetup:responseHandler:]", 30, "WiFiSetupRequest: SSID '%@...', Channel %d, PW %s, PSK %s, Home %s", v23, self->_wifiChannel, v26, v27, v25);

      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_15:
  v28 = MEMORY[0x26676A4C0](v8);
  responseHandler = self->_responseHandler;
  self->_responseHandler = v28;

  [(SKStepWiFiSetupServerCW *)self _run];
LABEL_16:
  v9[2](v9);

  _Block_object_dispose(&v35, 8);
}

uint64_t __67__SKStepWiFiSetupServerCW__handleRequestWiFiSetup_responseHandler___block_invoke(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  v3 = *(a1[4] + 112);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(a1[4] + 112);
    }

    v4 = CUPrintNSError();
    LogPrintF(v3, "[SKStepWiFiSetupServerCW _handleRequestWiFiSetup:responseHandler:]_block_invoke", 90, "### WiFiSetupRequest failed: %@", v4);
  }

LABEL_7:
  v5 = *(a1[5] + 16);

  return v5();
}

- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler
{
  doneCopy = done;
  handlerCopy = handler;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v8 = CUPrintNSObjectOneLine();
      LogPrintF(ucat, "[SKStepWiFiSetupServerCW _handleRequestBonjourTestDone:responseHandler:]", 30, "BonjourTestDone: %@", v8);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  bonjourTimeoutTimer = self->_bonjourTimeoutTimer;
  if (bonjourTimeoutTimer)
  {
    v11 = bonjourTimeoutTimer;
    dispatch_source_cancel(v11);
    v12 = self->_bonjourTimeoutTimer;
    self->_bonjourTimeoutTimer = 0;
  }

  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], 0, 0, &__block_literal_global_50);
}

- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  handlerCopy = handler;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v9 = CUPrintNSObjectOneLine();
      LogPrintF(ucat, "[SKStepWiFiSetupServerCW _handleRequestBonjourTestStart:responseHandler:]", 30, "BonjourTestStart: %@", v9);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    v11 = NSErrorWithOSStatusF();
    v20 = self->_ucat;
    if (v20->var0 <= 90)
    {
      if (v20->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v20 = self->_ucat;
      }

      v21 = CUPrintNSError();
      LogPrintF(v20, "[SKStepWiFiSetupServerCW _handleRequestBonjourTestStart:responseHandler:]", 90, "### BonjourTestStart failed: %@", v21);
    }

LABEL_13:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v11, &__block_literal_global_34);
    goto LABEL_14;
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  v11 = objc_alloc_init(MEMORY[0x277D02840]);
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = v11;

  [(CUBonjourAdvertiser *)v11 setDispatchQueue:self->_dispatchQueue];
  [(CUBonjourAdvertiser *)v11 setDomain:@"local."];
  [(CUBonjourAdvertiser *)v11 setLabel:@"WiFiSetup"];
  [(CUBonjourAdvertiser *)v11 setName:v10];
  [(CUBonjourAdvertiser *)v11 setPort:9];
  [(CUBonjourAdvertiser *)v11 setServiceType:@"_bonjourtest._tcp"];
  v23 = @"bjID";
  v24[0] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(CUBonjourAdvertiser *)v11 setTxtDictionary:v13];

  [(CUBonjourAdvertiser *)v11 activate];
  bonjourTimeoutTimer = self->_bonjourTimeoutTimer;
  if (bonjourTimeoutTimer)
  {
    v15 = bonjourTimeoutTimer;
    dispatch_source_cancel(v15);
    v16 = self->_bonjourTimeoutTimer;
    self->_bonjourTimeoutTimer = 0;
  }

  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v18 = self->_bonjourTimeoutTimer;
  self->_bonjourTimeoutTimer = v17;
  v19 = v17;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __74__SKStepWiFiSetupServerCW__handleRequestBonjourTestStart_responseHandler___block_invoke_2;
  handler[3] = &unk_279BB8648;
  handler[4] = v19;
  handler[5] = self;
  dispatch_source_set_event_handler(v19, handler);
  CUDispatchTimerSet();
  dispatch_activate(v19);
  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], 0, 0, &__block_literal_global_47);

LABEL_14:
}

void __74__SKStepWiFiSetupServerCW__handleRequestBonjourTestStart_responseHandler___block_invoke_2(uint64_t a1)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v5 + 24);
  if (v6 != v7)
  {
    return;
  }

  v16 = v2;
  v17 = v1;
  if (v6)
  {
    v9 = v7;
    dispatch_source_cancel(v9);
    v10 = *(a1 + 40);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;

    v5 = *(a1 + 40);
  }

  v12 = *(v5 + 112);
  if (*v12 <= 90)
  {
    if (*v12 == -1)
    {
      v13 = _LogCategory_Initialize();
      v5 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_8;
      }

      v12 = *(v5 + 112);
    }

    LogPrintF(v12, "[SKStepWiFiSetupServerCW _handleRequestBonjourTestStart:responseHandler:]_block_invoke_2", 90, "### BonjourTest timeout", v16, v17, v3);
    v5 = *(a1 + 40);
  }

LABEL_8:
  [*(v5 + 16) invalidate];
  v14 = *(a1 + 40);
  v15 = *(v14 + 16);
  *(v14 + 16) = 0;
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  self->_runState = 0;
  mach_absolute_time();
  UpTicksToSecondsF();
  metricTotalSeconds = v5;
  self->_metricTotalSeconds = v5;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!errorCopy)
  {
    if (var0 > 30)
    {
      goto LABEL_11;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
      metricTotalSeconds = self->_metricTotalSeconds;
    }

    LogPrintF(ucat, "[SKStepWiFiSetupServerCW _completeWithError:]", 30, "Succeeded: %f seconds", metricTotalSeconds);
    goto LABEL_11;
  }

  if (var0 > 90)
  {
    goto LABEL_11;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
    metricTotalSeconds = self->_metricTotalSeconds;
LABEL_4:
    v9 = CUPrintNSError();
    LogPrintF(ucat, "[SKStepWiFiSetupServerCW _completeWithError:]", 90, "### Failed: %f seconds, %@", *&metricTotalSeconds, v9);
  }

LABEL_11:
  v10 = MEMORY[0x26676A4C0](self->_responseHandler);
  responseHandler = self->_responseHandler;
  self->_responseHandler = 0;

  if (v10)
  {
    if (errorCopy)
    {
      v12 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEC10];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SKStepWiFiSetupServerCW__completeWithError___block_invoke;
    v13[3] = &unk_279BB8838;
    v13[4] = self;
    v14 = errorCopy;
    (v10)[2](v10, v12, 0, v14, v13);
  }
}

void __46__SKStepWiFiSetupServerCW__completeWithError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 200));
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = v5;
    }

    (v3)[2](v3, v4);
  }
}

- (void)_invalidated
{
  if (!self->_invalidateCalled || self->_invalidateDone)
  {
    return;
  }

  v6 = MEMORY[0x26676A4C0](self->_skCompletionHandler, a2);
  skCompletionHandler = self->_skCompletionHandler;
  self->_skCompletionHandler = 0;

  if (v6)
  {
    v4 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Invalidated");
    v6[2](v6, v4);
  }

  self->_invalidateDone = 1;
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

    LogPrintF(ucat, "[SKStepWiFiSetupServerCW _invalidated]", 30, "Invalidated");
  }

LABEL_10:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKStepWiFiSetupServerCW_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __37__SKStepWiFiSetupServerCW_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    return;
  }

  *(v2 + 48) = 1;
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  if (*v5 <= 30)
  {
    if (*v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v5 = *(v4 + 112);
    }

    LogPrintF(v5, "[SKStepWiFiSetupServerCW invalidate]_block_invoke", 30, "Invalidating");
    v4 = *(a1 + 32);
  }

LABEL_6:
  v21 = MEMORY[0x26676A4C0](*(v4 + 64));
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  if (v21)
  {
    v9 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294896148, "Setup Invalidated");
    (*(v21 + 2))(v21, 0, 0, v9, &__block_literal_global_496);
  }

  [*(*(a1 + 32) + 16) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = v13;
    dispatch_source_cancel(v14);
    v15 = *(a1 + 32);
    v16 = *(v15 + 24);
    *(v15 + 24) = 0;

    v12 = *(a1 + 32);
  }

  [*(v12 + 40) invalidate];
  v17 = *(a1 + 32);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  [*(*(a1 + 32) + 208) deregisterRequestID:@"_bjTS" completionHandler:&__block_literal_global_19];
  [*(*(a1 + 32) + 208) deregisterRequestID:@"_bjTD" completionHandler:&__block_literal_global_21];
  [*(*(a1 + 32) + 208) deregisterRequestID:@"_wiSU" completionHandler:&__block_literal_global_23];
  [*(*(a1 + 32) + 152) invalidate];
  v19 = *(a1 + 32);
  v20 = *(v19 + 152);
  *(v19 + 152) = 0;

  [*(a1 + 32) _invalidated];
}

- (void)_activate
{
  self->_startTicks = mach_absolute_time();
  skMessaging = self->_skMessaging;
  if (skMessaging)
  {
    self->_internetReachabilityEnabled = 1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__SKStepWiFiSetupServerCW__activate__block_invoke;
    v11[3] = &unk_279BB8810;
    v11[4] = skMessaging;
    v11[5] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__SKStepWiFiSetupServerCW__activate__block_invoke_2;
    v10[3] = &unk_279BB8838;
    v10[4] = skMessaging;
    v10[5] = self;
    v4 = skMessaging;
    [(CUMessaging *)v4 registerRequestID:@"_bjTS" options:0 requestHandler:v11 completionHandler:v10];
    v8[5] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__SKStepWiFiSetupServerCW__activate__block_invoke_3;
    v9[3] = &unk_279BB8810;
    v9[4] = v4;
    v9[5] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SKStepWiFiSetupServerCW__activate__block_invoke_4;
    v8[3] = &unk_279BB8838;
    v8[4] = v4;
    [(CUMessaging *)v4 registerRequestID:@"_bjTD" options:0 requestHandler:v9 completionHandler:v8];
    v6[5] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SKStepWiFiSetupServerCW__activate__block_invoke_5;
    v7[3] = &unk_279BB8810;
    v7[4] = v4;
    v7[5] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SKStepWiFiSetupServerCW__activate__block_invoke_6;
    v6[3] = &unk_279BB8838;
    v6[4] = v4;
    [(CUMessaging *)v4 registerRequestID:@"_wiSU" options:0 requestHandler:v7 completionHandler:v6];
  }

  else
  {
    v5 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No messaging");
    [(SKStepWiFiSetupServerCW *)self _completeWithError:v5];
  }
}

void *__36__SKStepWiFiSetupServerCW__activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[26])
  {
    return [result _handleRequestBonjourTestStart:a3 responseHandler:a5];
  }

  return result;
}

void *__36__SKStepWiFiSetupServerCW__activate__block_invoke_2(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[26])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

void *__36__SKStepWiFiSetupServerCW__activate__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[26])
  {
    return [result _handleRequestBonjourTestDone:a3 responseHandler:a5];
  }

  return result;
}

void *__36__SKStepWiFiSetupServerCW__activate__block_invoke_4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[26])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

void *__36__SKStepWiFiSetupServerCW__activate__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[26])
  {
    return [result _handleRequestWiFiSetup:a3 responseHandler:a5];
  }

  return result;
}

void *__36__SKStepWiFiSetupServerCW__activate__block_invoke_6(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[26])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKStepWiFiSetupServerCW_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SKStepWiFiSetupServerCW_activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[14];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SKStepWiFiSetupServerCW activate]_block_invoke", 30, "Activate");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = v2[14];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v2 _activate];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_280034CF8;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (NSString)description
{
  v2 = [objc_opt_class() description];
  v3 = NSPrintF("%@", v2);

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SKStepWiFiSetupServerCW;
  [(SKStepWiFiSetupServerCW *)&v4 dealloc];
}

- (SKStepWiFiSetupServerCW)init
{
  v6.receiver = self;
  v6.super_class = SKStepWiFiSetupServerCW;
  v2 = [(SKStepWiFiSetupServerCW *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_ucat = &gLogCategory_SKStepWiFiSetupServerCW;
    v4 = v3;
  }

  return v3;
}

@end