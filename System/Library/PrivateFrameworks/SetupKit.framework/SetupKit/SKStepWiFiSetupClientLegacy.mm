@interface SKStepWiFiSetupClientLegacy
- (BOOL)_runInit;
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepWiFiSetupClientLegacy)init;
- (void)_completeWithError:(id)error;
- (void)_invalidateCore;
- (void)_invalidated;
- (void)_run;
- (void)_runInternetReachabilityStart;
- (void)_runWiFiSetupStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation SKStepWiFiSetupClientLegacy

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (void)_runWiFiSetupStart
{
  v35[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2171;
  v32 = __Block_byref_object_dispose__2172;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke;
  v27[3] = &unk_279BB8670;
  v27[4] = self;
  v27[5] = &v28;
  v23 = MEMORY[0x26676A4C0](v27, a2);
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = self->_wifiInterface;
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277D02B18]);
    objc_storeStrong(&self->_wifiInterface, v4);
    [(CWFInterface *)v4 activate];
  }

  currentKnownNetworkProfile = [(CWFInterface *)v4 currentKnownNetworkProfile];
  if (!currentKnownNetworkProfile)
  {
    v19 = NSErrorF_safe(*MEMORY[0x277CCA590], 301000, "No WiFi profile");
    v10 = v29[5];
    v29[5] = v19;
    goto LABEL_21;
  }

  channel = [(CWFInterface *)v4 channel];
  v6Channel = [channel channel];

  if (v6Channel)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6Channel];
    [v24 setObject:v8 forKeyedSubscript:@"_wiCh"];
  }

  sSID = [currentKnownNetworkProfile SSID];
  v10 = sSID;
  if (!sSID)
  {
    v20 = NSErrorF_safe(*MEMORY[0x277CCA590], 301004, "No WiFi SSID data");
    v11 = v29[5];
    v29[5] = v20;
    goto LABEL_20;
  }

  v26 = 0;
  MEMORY[0x266769F90](sSID, &v26);
  v11 = v26;
  if (v11)
  {
    [v24 setObject:v11 forKeyedSubscript:@"_wiPW"];
  }

  networkName = [currentKnownNetworkProfile networkName];
  if (!networkName)
  {
    v21 = NSErrorF_safe(*MEMORY[0x277CCA590], 301004, "No WiFi SSID");
    v13 = v29[5];
    v29[5] = v21;
    goto LABEL_19;
  }

  [v24 setObject:networkName forKeyedSubscript:@"_wiSS"];
  v13 = self->_skMessaging;
  if (!v13)
  {
    v22 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960591, "No messaging");
    v18 = v29[5];
    v29[5] = v22;
    goto LABEL_18;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_13:
      v15 = CUPrintNSObject();
      v16 = v15;
      v17 = "yes";
      if (!v11)
      {
        v17 = "no";
      }

      LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _runWiFiSetupStart]", 30, "WiFiSetup send: SSID '%@...', Channel %d, PW %s", v15, v6Channel, v17);

      goto LABEL_17;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_13;
    }
  }

LABEL_17:
  v34 = @"timeoutSeconds";
  v35[0] = &unk_28776E240;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke_43;
  v25[3] = &unk_279BB86A0;
  v25[4] = self;
  [(CUMessaging *)v13 sendRequestID:@"_wiSU" requestMessage:v24 options:v18 responseHandler:v25];
LABEL_18:

LABEL_19:
LABEL_20:

LABEL_21:
  v23[2](v23);

  _Block_object_dispose(&v28, 8);
}

void __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(*(v2 + 8) + 40))
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v6 = _LogCategory_Initialize();
      v3 = *(a1 + 32);
      v2 = *(a1 + 40);
      if (!v6)
      {
        goto LABEL_7;
      }

      v4 = *(v3 + 96);
    }

    v5 = CUPrintNSError();
    LogPrintF(v4, "[SKStepWiFiSetupClientLegacy _runWiFiSetupStart]_block_invoke", 90, "### WiFiSetup start failed: %@", v5);

    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);

  objc_storeStrong((v3 + 80), v7);
}

void __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v6 = a4;
  if ((*(*(a1 + 32) + 48) & 1) == 0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 160) = v7;
    v8 = v15;
    v9 = *(a1 + 32);
    v10 = *(v9 + 96);
    v11 = *v10;
    if (v8 && !v6)
    {
      if (v11 <= 30)
      {
        if (v11 == -1)
        {
          v14 = _LogCategory_Initialize();
          v9 = *(a1 + 32);
          if (!v14)
          {
            goto LABEL_16;
          }

          v10 = *(v9 + 96);
        }

        LogPrintF(v10, "[SKStepWiFiSetupClientLegacy _runWiFiSetupStart]_block_invoke", 30, "WiFiSetup succeeded: %f seconds", *(v9 + 160));
        v9 = *(a1 + 32);
      }

LABEL_16:
      *(v9 + 72) = 1;
LABEL_17:
      [*(a1 + 32) _run];

      goto LABEL_18;
    }

    if (v11 <= 90)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v10 = *(*(a1 + 32) + 96);
      }

      v12 = CUPrintNSError();
      LogPrintF(v10, "[SKStepWiFiSetupClientLegacy _runWiFiSetupStart]_block_invoke", 90, "### WiFiSetup failed: %@", v12);
    }

LABEL_11:
    v13 = v6;
    if (!v6)
    {
      v13 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960596, "No response, no error");
    }

    objc_storeStrong((*(a1 + 32) + 80), v13);
    if (!v6)
    {
    }

    goto LABEL_17;
  }

LABEL_18:
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

      LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _runInternetReachabilityStart]", 30, "InternetReachability start");
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
    v11[2] = __60__SKStepWiFiSetupClientLegacy__runInternetReachabilityStart__block_invoke;
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

    LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _runInternetReachabilityStart]", 30, "InternetReachability check disabled via pref");
  }

LABEL_11:
  self->_stepDone = 1;
  v10 = self->_stepError;
  self->_stepError = 0;
}

void __60__SKStepWiFiSetupClientLegacy__runInternetReachabilityStart__block_invoke(uint64_t a1, void *a2)
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
      v8 = *(v7 + 80);
      *(v7 + 80) = v6;

      v9 = *(*(a1 + 40) + 96);
      if (*v9 <= 90)
      {
        if (*v9 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v9 = *(*(a1 + 40) + 96);
        }

        v10 = CUPrintNSError();
        LogPrintF(v9, "[SKStepWiFiSetupClientLegacy _runInternetReachabilityStart]_block_invoke", 90, "### InternetReachability failed: %@", v10);
      }
    }

    else
    {
      v11 = *(*(a1 + 40) + 96);
      if (*v11 <= 30)
      {
        if (*v11 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v11 = *(*(a1 + 40) + 96);
        }

        LogPrintF(v11, "[SKStepWiFiSetupClientLegacy _runInternetReachabilityStart]_block_invoke", 30, "InternetReachability succeeded");
      }
    }

LABEL_12:
    *(*(a1 + 40) + 72) = 1;
    [*(a1 + 40) _run];
    v3 = v12;
  }
}

- (BOOL)_runInit
{
  self->_startTicks = mach_absolute_time();
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v3;
  v5 = v3;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SKStepWiFiSetupClientLegacy__runInit__block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = v5;
  v7[5] = self;
  dispatch_source_set_event_handler(v5, v7);
  CUDispatchTimerSet();
  dispatch_activate(self->_timeoutTimer);

  return 1;
}

void *__39__SKStepWiFiSetupClientLegacy__runInit__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 != result[11])
  {
    return result;
  }

  v4 = result[12];
  if (*v4 <= 90)
  {
    if (*v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      result = *(a1 + 40);
      if (!v5)
      {
        goto LABEL_6;
      }

      v4 = result[12];
    }

    LogPrintF(v4, "[SKStepWiFiSetupClientLegacy _runInit]_block_invoke", 90, "### Overall timeout");
    result = *(a1 + 40);
  }

LABEL_6:
  if (!result[10])
  {
    v6 = NSErrorF_safe(*MEMORY[0x277CCA590], 4294960574, "Overall timeout");
    v7 = *(a1 + 40);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;

    result = *(a1 + 40);
  }

  return [result _run];
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    v13 = *MEMORY[0x277CCA590];
    while (1)
    {
      runState = self->_runState;
      if (runState <= 12)
      {
        if (runState)
        {
          if (runState == 11)
          {
            self->_runState = 12;
            [(SKStepWiFiSetupClientLegacy *)self _runInternetReachabilityStart];
            goto LABEL_28;
          }

          if (runState == 12)
          {
            if (self->_stepError)
            {
              goto LABEL_13;
            }

            if (self->_stepDone)
            {
              v4 = 13;
              goto LABEL_27;
            }
          }
        }

        else
        {
          self->_runState = 10;
          if ([(SKStepWiFiSetupClientLegacy *)self _runInit])
          {
            v4 = self->_runState + 1;
            goto LABEL_27;
          }
        }
      }

      else if (runState > 14)
      {
        if (runState == 15)
        {
          selfCopy2 = self;
          stepError = 0;
LABEL_23:
          [(SKStepWiFiSetupClientLegacy *)selfCopy2 _completeWithError:stepError];
          goto LABEL_28;
        }

        if (runState == 16)
        {
          stepError = self->_stepError;
          if (!stepError)
          {
            v6 = NSErrorF_safe(v13, 4294960534, "Failed, but no error");
            v7 = self->_stepError;
            self->_stepError = v6;

            stepError = self->_stepError;
          }

          selfCopy2 = self;
          goto LABEL_23;
        }
      }

      else
      {
        if (runState == 13)
        {
          self->_runState = 14;
          [(SKStepWiFiSetupClientLegacy *)self _runWiFiSetupStart];
          goto LABEL_28;
        }

        if (self->_stepError)
        {
LABEL_13:
          self->_runState = 16;
          goto LABEL_28;
        }

        if (self->_stepDone)
        {
          v4 = 15;
LABEL_27:
          self->_runState = v4;
        }
      }

LABEL_28:
      v9 = self->_runState;
      if (v9 == runState)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
            v9 = self->_runState;
            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
          if (runState < 0x11 && ((0x1F8FFu >> runState) & 1) != 0)
          {
            v11 = off_279BB86C0[runState];
          }

          else if (runState <= 9)
          {
            v11 = "?";
          }

          else
          {
            v11 = "User";
          }

          if (v9 < 0x11 && ((0x1F8FFu >> v9) & 1) != 0)
          {
            v12 = off_279BB86C0[v9];
          }

          else if (v9 <= 9)
          {
            v12 = "?";
          }

          else
          {
            v12 = "User";
          }

          LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _run]", 30, "State: %s -> %s", v11, v12);
        }
      }
    }
  }
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  self->_runState = v4;
  mach_absolute_time();
  UpTicksToSecondsF();
  v6 = v5;
  self->_metricTotalSeconds = v5;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!errorCopy)
  {
    if (var0 > 30)
    {
      goto LABEL_14;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _completeWithError:]", 30, "Succeeded: %f seconds", v6);
    goto LABEL_14;
  }

  if (var0 > 60)
  {
    goto LABEL_14;
  }

  if (var0 != -1)
  {
    goto LABEL_7;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_7:
    v9 = CUPrintNSError();
    LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _completeWithError:]", 60, "### Failed: %f seconds, %@", *&v6, v9);
  }

LABEL_14:
  [(SKStepWiFiSetupClientLegacy *)self _invalidateCore];
  v10 = MEMORY[0x26676A4C0](self->_skCompletionHandler);
  skCompletionHandler = self->_skCompletionHandler;
  self->_skCompletionHandler = 0;

  if (v10)
  {
    (v10)[2](v10, errorCopy);
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

    LogPrintF(ucat, "[SKStepWiFiSetupClientLegacy _invalidated]", 30, "Invalidated");
  }

LABEL_10:
}

- (void)_invalidateCore
{
  [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = 0;

  bonjourTimer = self->_bonjourTimer;
  if (bonjourTimer)
  {
    v5 = bonjourTimer;
    dispatch_source_cancel(v5);
    v6 = self->_bonjourTimer;
    self->_bonjourTimer = 0;
  }

  [(CUReachabilityMonitor *)self->_internetReachabilityMonitor invalidate];
  internetReachabilityMonitor = self->_internetReachabilityMonitor;
  self->_internetReachabilityMonitor = 0;

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v9 = timeoutTimer;
    dispatch_source_cancel(v9);
    v10 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(CWFInterface *)self->_wifiInterface invalidate];
  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SKStepWiFiSetupClientLegacy_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__41__SKStepWiFiSetupClientLegacy_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 48))
  {
    return result;
  }

  v11 = v2;
  v12 = v1;
  v6 = result;
  *(v5 + 48) = 1;
  v7 = result[4];
  v8 = v7[12];
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v7 = v6[4];
      if (!v9)
      {
        goto LABEL_6;
      }

      v8 = v7[12];
    }

    LogPrintF(v8, "[SKStepWiFiSetupClientLegacy invalidate]_block_invoke", 30, "Invalidating", v2, v12, v3);
    v7 = v6[4];
  }

LABEL_6:
  [v7 _invalidateCore];
  v10 = v6[4];

  return [v10 _invalidated];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKStepWiFiSetupClientLegacy_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SKStepWiFiSetupClientLegacy_activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[SKStepWiFiSetupClientLegacy activate]_block_invoke", 30, "Activate");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = *(v2 + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v2 + 32) = 1;
  v5 = *(a1 + 32);

  return [v5 _run];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_280035338;
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
  v4.super_class = SKStepWiFiSetupClientLegacy;
  [(SKStepWiFiSetupClientLegacy *)&v4 dealloc];
}

- (SKStepWiFiSetupClientLegacy)init
{
  v6.receiver = self;
  v6.super_class = SKStepWiFiSetupClientLegacy;
  v2 = [(SKStepWiFiSetupClientLegacy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_ucat = &gLogCategory_SKStepWiFiSetupClientLegacy;
    v4 = v3;
  }

  return v3;
}

@end