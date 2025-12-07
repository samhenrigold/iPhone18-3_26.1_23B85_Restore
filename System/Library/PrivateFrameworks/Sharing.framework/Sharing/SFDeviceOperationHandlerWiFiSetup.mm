@interface SFDeviceOperationHandlerWiFiSetup
- (SFDeviceOperationHandlerWiFiSetup)init;
- (id)createWiFiRetryMetricEvent:(id)event duration:(double)duration channel:(int)channel isScan:(BOOL)scan;
- (id)createWiFiRetryMetricEventForIPAssign:(id)assign duration:(double)duration;
- (void)_activate;
- (void)_cleanupOldWiFiNetworks;
- (void)_completeError:(id)error;
- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler;
- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler;
- (void)_handleWiFiSetupRequest:(id)request responseHandler:(id)handler;
- (void)_run;
- (void)_runIP4AvailableStart;
- (void)_runJoinStart:(int)start;
- (void)_runReachabilityStart;
- (void)_runScanResults:(id)results error:(id)error channel:(int)channel;
- (void)_runScanStart:(int)start;
- (void)activate;
- (void)addRetryMetric:(id)metric;
- (void)invalidate;
@end

@implementation SFDeviceOperationHandlerWiFiSetup

- (SFDeviceOperationHandlerWiFiSetup)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceOperationHandlerWiFiSetup;
  v2 = [(SFDeviceOperationHandlerWiFiSetup *)&v8 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = objc_opt_new();
    wiFiRetryMetrics = v2->_wiFiRetryMetrics;
    v2->_wiFiRetryMetrics = v5;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFDeviceOperationHandlerWiFiSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __45__SFDeviceOperationHandlerWiFiSetup_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __45__SFDeviceOperationHandlerWiFiSetup_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

- (void)_activate
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _activate]", 60, "### No SFSession\n");
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFDeviceOperationHandlerWiFiSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __47__SFDeviceOperationHandlerWiFiSetup_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __47__SFDeviceOperationHandlerWiFiSetup_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 16) = 1;
  v4 = *(v3 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = NSErrorWithOSStatusF(4294960573, "Invalidated");
    (*(v5 + 16))(v5, v6, 0, 0);

    v7 = *(v3 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;

    v4 = *(v3 + 32);
  }

  [*(v4 + 8) invalidate];
  v9 = *(v3 + 32);
  v10 = *(v9 + 8);
  *(v9 + 8) = 0;

  v11 = *(*(v3 + 32) + 32);
  if (v11)
  {
    v12 = v11;
    dispatch_source_cancel(v12);
    v13 = *(v3 + 32);
    v14 = *(v13 + 32);
    *(v13 + 32) = 0;
  }

  [*(*(v3 + 32) + 24) invalidate];
  v15 = *(v3 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = 0;

  [*(*(v3 + 32) + 48) invalidate];
  v17 = *(v3 + 32);
  v18 = *(v17 + 48);
  *(v17 + 48) = 0;

  [*(*(v3 + 32) + 280) deregisterRequestID:@"_ws"];
  v19 = *(v3 + 32);
  v20 = *(v19 + 280);
  *(v19 + 280) = 0;
}

- (void)_completeError:(id)error
{
  errorCopy = error;
  v20 = errorCopy;
  if (errorCopy)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceOperationHandlerWiFiSetup *)self _completeError:v20];
    }

    WiFiDisassociateAndForget();
  }

  else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (errorCopy = _LogCategory_Initialize(), errorCopy))
    {
      [(SFDeviceOperationHandlerWiFiSetup *)errorCopy _completeError:v5, v6];
    }
  }

  self->_operationType = 0;
  self->_state = 0;
  v7 = objc_opt_new();
  [v7 setObject:self->_wiFiRetryMetrics forKeyedSubscript:@"wifiRM"];
  if ([v20 code])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "code")}];
    [v7 setObject:v8 forKeyedSubscript:@"wifiEC"];
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"wifiEC"];
  }

  domain = [v20 domain];
  if (domain)
  {
    domain2 = [v20 domain];
    [v7 setObject:domain2 forKeyedSubscript:@"wifiED"];
  }

  else
  {
    [v7 setObject:@"Unknown" forKeyedSubscript:@"wifiED"];
  }

  v11 = [v20 description];
  if (v11)
  {
    v12 = [v20 description];
    [v7 setObject:v12 forKeyedSubscript:@"wifiEL"];
  }

  else
  {
    [v7 setObject:@"Unknown" forKeyedSubscript:@"wifiEL"];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize())
    {
      [SFDeviceOperationHandlerWiFiSetup _completeError:v7];
    }

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _completeError:v20];
    }
  }

  v13 = objc_opt_new();
  wiFiRetryMetrics = self->_wiFiRetryMetrics;
  self->_wiFiRetryMetrics = v13;

  if (self->_responseHandler)
  {
    if (self->_isRetrySetup)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          [(SFDeviceOperationHandlerWiFiSetup *)v15 _completeError:v16, v17];
        }
      }

      v18 = *(self->_responseHandler + 2);
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          [(SFDeviceOperationHandlerWiFiSetup *)v15 _completeError:v16, v17];
        }
      }

      v18 = *(self->_responseHandler + 2);
    }

    v18();
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;
  }
}

- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  startCopy = start;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _handleRequestBonjourTestStart:startCopy responseHandler:?];
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
    v9 = objc_alloc_init(MEMORY[0x1E6999468]);
    bonjourAdvertiser = self->_bonjourAdvertiser;
    self->_bonjourAdvertiser = v9;

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDispatchQueue:self->_dispatchQueue];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setDomain:@"local."];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setLabel:@"SFDeviceOperationWiFi"];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setName:v8];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setPort:9];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setServiceType:@"_bonjourtest._tcp"];
    v13 = @"rpBA";
    v14[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setTxtDictionary:v11];

    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser activate];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
  }

  else
  {
    v12 = NSErrorWithOSStatusF(4294960591, "No test ID");
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 90 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _handleRequestBonjourTestStart:v12 responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, v12, 0, 0);
  }
}

- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler
{
  doneCopy = done;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _handleRequestBonjourTestDone:doneCopy responseHandler:?];
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
}

- (void)_handleWiFiSetupRequest:(id)request responseHandler:(id)handler
{
  v30[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  if (self->_state)
  {
    [(SFDeviceOperationHandlerWiFiSetup *)&v29 _handleWiFiSetupRequest:v30 responseHandler:&v28];
    v27 = v28;
  }

  else
  {
    self->_wifiChannel = CFDictionaryGetInt64Ranged();
    self->_wifiDirected = CFDictionaryGetInt64() != 0;
    v8 = [requestCopy objectForKeyedSubscript:@"wifiEAPConfig"];
    wifiEAPConfig = self->_wifiEAPConfig;
    self->_wifiEAPConfig = v8;

    v10 = [requestCopy objectForKeyedSubscript:@"wifiEAPTE"];
    wifiEAPTrustExceptions = self->_wifiEAPTrustExceptions;
    self->_wifiEAPTrustExceptions = v10;

    self->_wifiHomeNetwork = CFDictionaryGetInt64() != 0;
    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    wifiPassword = self->_wifiPassword;
    self->_wifiPassword = v12;

    CFDataGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    wifiPSK = self->_wifiPSK;
    self->_wifiPSK = v14;

    self->_wifiSkipReachbility = CFDictionaryGetInt64() != 0;
    self->_repairFlags = CFDictionaryGetInt64Ranged();
    self->_setupFlags = CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    wifiSSID = self->_wifiSSID;
    self->_wifiSSID = v16;

    if (self->_wifiSSID)
    {
      self->_wiFiJoinLimit = CFDictionaryGetInt64Ranged();
      Int64Ranged = CFDictionaryGetInt64Ranged();
      self->_wiFiScanLimit = Int64Ranged;
      if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
      {
        goto LABEL_7;
      }

      if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_7:
          isRetrySetup = CFDictionaryGetInt64() != 0;
          self->_isRetrySetup = isRetrySetup;
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
            goto LABEL_14;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_14;
            }

            isRetrySetup = self->_isRetrySetup;
          }

          if (isRetrySetup)
          {
            v20 = "yes";
          }

          else
          {
            v20 = "no";
          }

          LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _handleWiFiSetupRequest:responseHandler:]", 30, "isRetrySetup: %s\n", v20);
LABEL_14:
          operationType = CFDictionaryGetInt64Ranged();
          self->_operationType = operationType;
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
LABEL_30:
            v25 = _Block_copy(handlerCopy);
            responseHandler = self->_responseHandler;
            self->_responseHandler = v25;

            [(SFDeviceOperationHandlerWiFiSetup *)self _run];
            v27 = 0;
            goto LABEL_31;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_18;
            }

            operationType = self->_operationType;
          }

          LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _handleWiFiSetupRequest:responseHandler:]", 30, "operationType: %d\n", operationType);
LABEL_18:
          if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
          {
            v22 = "yes";
            if (self->_wifiPassword)
            {
              v23 = "yes";
            }

            else
            {
              v23 = "no";
            }

            if (self->_wifiPSK)
            {
              v24 = "yes";
            }

            else
            {
              v24 = "no";
            }

            if (!self->_wifiHomeNetwork)
            {
              v22 = "no";
            }

            LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _handleWiFiSetupRequest:responseHandler:]", 30, "WiFiSetupRequest: SSID '%.3@...', Channel %d, PW %s, PSK %s, Home %s\n", self->_wifiSSID, self->_wifiChannel, v23, v24, v22);
          }

          goto LABEL_30;
        }

        Int64Ranged = self->_wiFiScanLimit;
      }

      LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _handleWiFiSetupRequest:responseHandler:]", 30, "WiFiJoinLimit: %u | WiFiJoinScan: %u\n", self->_wiFiJoinLimit, Int64Ranged);
      goto LABEL_7;
    }

    v27 = NSErrorWithOSStatusF(0, "No WiFI SSID");
  }

  if (handlerCopy && v27)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _handleWiFiSetupRequest:v27 responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, v27, 0, 0);
  }

LABEL_31:
}

- (void)_run
{
  while (!self->_invalidateCalled)
  {
    state = self->_state;
    switch(state)
    {
      case 0:
        if (self->_responseHandler)
        {
          if (self->_wifiChannel < 1)
          {
            goto LABEL_58;
          }

          goto LABEL_5;
        }

        goto LABEL_61;
      case 3:
        stepError = self->_stepError;
        if (!stepError)
        {
          v13 = NSErrorWithOSStatusF(4294960534, "FailureNoError");
          v14 = self->_stepError;
          self->_stepError = v13;

          stepError = self->_stepError;
        }

        selfCopy2 = self;
        goto LABEL_23;
      case 4:
        selfCopy2 = self;
        stepError = 0;
LABEL_23:
        [(SFDeviceOperationHandlerWiFiSetup *)selfCopy2 _completeError:stepError];
        goto LABEL_61;
      case 11:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke;
        v23[3] = &unk_1E788B198;
        v23[4] = self;
        v10 = v23;
        goto LABEL_36;
      case 12:
        if (self->_scanResult)
        {
          goto LABEL_34;
        }

        if (self->_stepDone)
        {
          currentWiFiScanChannelCount = self->_currentWiFiScanChannelCount;
          if (currentWiFiScanChannelCount >= self->_wiFiScanLimit)
          {
            goto LABEL_58;
          }

          self->_currentWiFiScanChannelCount = currentWiFiScanChannelCount + 1;
LABEL_5:
          v4 = 11;
          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v16 = 12;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 13:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke_2;
        v22[3] = &unk_1E788B198;
        v22[4] = self;
        v10 = v22;
        goto LABEL_36;
      case 14:
        if (!self->_stepDone)
        {
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
            goto LABEL_61;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
          {
            v16 = 14;
            goto LABEL_71;
          }

          goto LABEL_72;
        }

        if (!self->_stepError)
        {
          goto LABEL_51;
        }

        currentWiFiJoinChannelCount = self->_currentWiFiJoinChannelCount;
        if (currentWiFiJoinChannelCount < self->_wiFiJoinLimit)
        {
          self->_currentWiFiJoinChannelCount = currentWiFiJoinChannelCount + 1;
LABEL_34:
          v4 = 13;
          goto LABEL_60;
        }

        goto LABEL_58;
      case 15:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke_3;
        v21[3] = &unk_1E788B198;
        v21[4] = self;
        v10 = v21;
        goto LABEL_36;
      case 16:
        if (self->_scanResult)
        {
          goto LABEL_38;
        }

        if (self->_stepDone)
        {
          currentWiFiScanNoChannelCount = self->_currentWiFiScanNoChannelCount;
          if (currentWiFiScanNoChannelCount >= self->_wiFiScanLimit)
          {
            goto LABEL_59;
          }

          self->_currentWiFiScanNoChannelCount = currentWiFiScanNoChannelCount + 1;
LABEL_58:
          v4 = 15;
          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v16 = 16;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 17:
        v8 = dispatch_time(0, 2000000000);
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__SFDeviceOperationHandlerWiFiSetup__run__block_invoke_4;
        block[3] = &unk_1E788B198;
        block[4] = self;
        v10 = block;
LABEL_36:
        dispatch_after(v8, dispatchQueue, v10);
        goto LABEL_61;
      case 18:
        if (self->_stepDone)
        {
          if (self->_stepError)
          {
            currentWiFiJoinNoChannelCount = self->_currentWiFiJoinNoChannelCount;
            if (currentWiFiJoinNoChannelCount >= self->_wiFiJoinLimit)
            {
              goto LABEL_59;
            }

            self->_currentWiFiJoinNoChannelCount = currentWiFiJoinNoChannelCount + 1;
LABEL_38:
            v4 = 17;
          }

          else
          {
LABEL_51:
            v4 = 19;
          }

          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v16 = 18;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 19:
        self->_state = 20;
        [(SFDeviceOperationHandlerWiFiSetup *)self _runIP4AvailableStart];
        goto LABEL_61;
      case 20:
        if (self->_stepDone)
        {
          if (self->_stepError)
          {
            goto LABEL_59;
          }

          v4 = 21;
          goto LABEL_60;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
        {
          goto LABEL_61;
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          v16 = 20;
          goto LABEL_71;
        }

        goto LABEL_72;
      case 21:
        self->_state = 22;
        [(SFDeviceOperationHandlerWiFiSetup *)self _runReachabilityStart];
        goto LABEL_61;
      case 22:
        if (self->_stepDone)
        {
          if (self->_stepError)
          {
LABEL_59:
            v4 = 3;
          }

          else
          {
            v4 = 4;
          }

LABEL_60:
          self->_state = v4;
        }

        else
        {
          if (gLogCategory_SFDeviceOperationWiFiSetup > 30)
          {
            goto LABEL_61;
          }

          if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
          {
            v16 = 22;
LABEL_71:
            v19 = WiFiSetupStateToString(v16);
            LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _run]", 30, "%s\n", v19);
            goto LABEL_61;
          }

LABEL_72:
          if (_LogCategory_Initialize())
          {
            v16 = self->_state;
            goto LABEL_71;
          }
        }

LABEL_61:
        if (self->_state == state)
        {
          return;
        }

        break;
      default:
        if (gLogCategory_SFDeviceOperationWiFiSetup > 90)
        {
          goto LABEL_61;
        }

        v11 = self->_state;
        if (gLogCategory_SFDeviceOperationWiFiSetup != -1)
        {
          goto LABEL_19;
        }

        if (_LogCategory_Initialize())
        {
          v11 = self->_state;
LABEL_19:
          v12 = WiFiSetupStateToString(v11);
          LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _run]", 90, "### Unexpected state %d (%s)\n", v11, v12);
        }

        goto LABEL_61;
    }
  }
}

- (void)_runScanStart:(int)start
{
  v3 = *&start;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerWiFiSetup _runScanStart:v3];
  }

  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  scanResult = self->_scanResult;
  self->_scanResult = 0;

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3 >= 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [v7 setObject:v8 forKeyedSubscript:@"channel"];
  }

  wifiSSID = self->_wifiSSID;
  if (wifiSSID)
  {
    [v7 setObject:wifiSSID forKeyedSubscript:@"ssid"];
    [v7 setObject:&unk_1F1D7CE50 forKeyedSubscript:@"scanDwellTime"];
    self->_scanStartTicks = mach_absolute_time();
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __51__SFDeviceOperationHandlerWiFiSetup__runScanStart___block_invoke;
    v18 = &unk_1E788F5F8;
    selfCopy = self;
    v20 = v3;
    v10 = WiFiScan_b();
    if (!v10)
    {
      goto LABEL_8;
    }

    NSErrorWithOSStatusF(v10, "WiFiScan");
  }

  else
  {
    NSErrorWithOSStatusF(4294960534, "ScanNoSSID");
  }
  v11 = ;
  if (v11)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runScanStart:]", 60, "### Scan channel %d start failed: %{error}\n", v3, v11, v15, v16, v17, v18, selfCopy, v20);
    }

    self->_stepDone = 1;
    v12 = self->_stepError;
    self->_stepError = v11;
    v13 = v11;

    mach_absolute_time();
    UpTicksToSecondsF();
    v14 = [(SFDeviceOperationHandlerWiFiSetup *)self createWiFiRetryMetricEvent:v13 duration:v3 channel:1 isScan:?];
    [(SFDeviceOperationHandlerWiFiSetup *)self addRetryMetric:v14];

    [(SFDeviceOperationHandlerWiFiSetup *)self _run];
  }

LABEL_8:
}

void __51__SFDeviceOperationHandlerWiFiSetup__runScanStart___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v18[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 272));
  v6 = *(a1 + 32);
  if ((v6[16] & 1) == 0)
  {
    if (v4)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A768];
      v9 = v4;
      v17 = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v11 = v10;
      v12 = @"?";
      if (v10)
      {
        v12 = v10;
      }

      v18[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v7 errorWithDomain:v8 code:v9 userInfo:v13];
      [v6 _runScanResults:a3 error:v14 channel:*(a1 + 40)];
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 32);

      [v16 _runScanResults:a3 error:0 channel:v15];
    }
  }
}

- (void)_runScanResults:(id)results error:(id)error channel:(int)channel
{
  v5 = *&channel;
  resultsCopy = results;
  errorCopy = error;
  mach_absolute_time();
  UpTicksToSecondsF();
  v10 = v9;
  firstObject = [resultsCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (errorCopy || (isKindOfClass & 1) == 0)
  {
    if (!errorCopy)
    {
      errorCopy = NSErrorWithOSStatusF(4294960596, "ScanNoErrorNoResults");
    }

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runScanResults:error:channel:]", 60, "### Scan channel %d failed: %{error}\n", v5, errorCopy);
    }

    scanResult = [(SFDeviceOperationHandlerWiFiSetup *)self createWiFiRetryMetricEvent:errorCopy duration:v5 channel:1 isScan:v10];
    [(SFDeviceOperationHandlerWiFiSetup *)self addRetryMetric:scanResult];
  }

  else
  {
    v13 = [(SFDeviceOperationHandlerWiFiSetup *)self createWiFiRetryMetricEvent:0 duration:v5 channel:1 isScan:v10];
    [(SFDeviceOperationHandlerWiFiSetup *)self addRetryMetric:v13];

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerWiFiSetup _runScanResults:resultsCopy error:v5 channel:?];
    }

    v14 = firstObject;
    errorCopy = 0;
    scanResult = self->_scanResult;
    self->_scanResult = v14;
  }

  self->_stepDone = 1;
  stepError = self->_stepError;
  self->_stepError = errorCopy;

  [(SFDeviceOperationHandlerWiFiSetup *)self _run];
}

- (void)_runJoinStart:(int)start
{
  v3 = *&start;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationHandlerWiFiSetup *)self _runJoinStart:v3];
  }

  stepError = self->_stepError;
  self->_stepDone = 0;
  self->_stepError = 0;

  if (self->_scanResult)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_scanResult];
    v7 = v6;
    if (self->_wifiDirected)
    {
      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"directed"];
    }

    wifiEAPConfig = self->_wifiEAPConfig;
    if (wifiEAPConfig)
    {
      [v7 setObject:wifiEAPConfig forKeyedSubscript:@"eapConfig"];
    }

    wifiEAPTrustExceptions = self->_wifiEAPTrustExceptions;
    if (wifiEAPTrustExceptions)
    {
      [v7 setObject:wifiEAPTrustExceptions forKeyedSubscript:@"eapTrustExceptions"];
    }

    if (self->_repairFlags)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"forceFix"];
    }

    if (self->_wifiHomeNetwork)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"homeNetwork"];
    }

    if (self->_wifiPassword || self->_wifiPSK)
    {
      [v7 setObject:? forKeyedSubscript:?];
    }

    if (_os_feature_enabled_impl() && self->_operationType == 3)
    {
      [v7 setObject:&unk_1F1D7CE68 forKeyedSubscript:@"networkEventType"];
    }

    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"persistent"];
    [v7 setObject:&unk_1F1D7CE50 forKeyedSubscript:@"scanDwellTime"];
    self->_joinStartTicks = mach_absolute_time();
    v13 = MEMORY[0x1E69E9820];
    v10 = WiFiJoinNetwork_b();
    if (v10)
    {
      v11 = NSErrorWithOSStatusF(v10, "WiFiJoinStart");
      if (v11)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runJoinStart:]", 60, "### Join channel %d start failed: %{error}\n", v3, v11, v13, 3221225472, __51__SFDeviceOperationHandlerWiFiSetup__runJoinStart___block_invoke, &unk_1E788F620, self, v3);
        }

        self->_stepDone = 1;
        objc_storeStrong(&self->_stepError, v11);
        mach_absolute_time();
        UpTicksToSecondsF();
        v12 = [(SFDeviceOperationHandlerWiFiSetup *)self createWiFiRetryMetricEvent:v11 duration:v3 channel:1 isScan:?];
        [(SFDeviceOperationHandlerWiFiSetup *)self addRetryMetric:v12];

        [(SFDeviceOperationHandlerWiFiSetup *)self _run];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [SFDeviceOperationHandlerWiFiSetup _runJoinStart:];
    v11 = 0;
    v7 = 0;
  }
}

void __51__SFDeviceOperationHandlerWiFiSetup__runJoinStart___block_invoke(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 272));
  mach_absolute_time();
  UpTicksToSecondsF();
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v5 = v4;
    if (a2)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runJoinStart:]_block_invoke", 60, "### Join channel %d failed: %#m\n", *(a1 + 40));
      }
    }

    else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      __51__SFDeviceOperationHandlerWiFiSetup__runJoinStart___block_invoke_cold_1(a1);
    }

    *(*(a1 + 32) + 76) = 1;
    v6 = NSErrorWithOSStatusF(a2, "WiFiJoinCallback");
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;

    v9 = *(a1 + 32);
    v10 = [v9 createWiFiRetryMetricEvent:v9[10] duration:*(a1 + 40) channel:0 isScan:v5];
    [v9 addRetryMetric:v10];

    if (!a2)
    {
      v11 = _os_feature_enabled_impl();
      if (!v11 || SFDeviceClassCodeGet(v11, v12) != 4)
      {
        [*(a1 + 32) _cleanupOldWiFiNetworks];
      }
    }

    v13 = *(a1 + 32);

    [v13 _run];
  }
}

- (void)_runIP4AvailableStart
{
  if (_os_feature_enabled_impl())
  {
    v3 = 60;
  }

  else
  {
    v3 = 10;
  }

  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  self->_ipAssigned = 0;
  self->_ipAssignSecs = 0.0;
  self->_ipAssignStartTicks = mach_absolute_time();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__11;
  v29 = 0;
  if (self->_ensureIP4Configured)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke;
    aBlock[3] = &unk_1E788DA50;
    aBlock[4] = self;
    aBlock[5] = &v24;
    v5 = _Block_copy(aBlock);
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    ip4Timeout = self->_ip4Timeout;
    self->_ip4Timeout = v6;

    dispatch_source_set_event_handler(self->_ip4Timeout, v5);
    SFDispatchTimerSet(self->_ip4Timeout, v3, -1.0, 0.0);
    dispatch_activate(self->_ip4Timeout);
    if (_os_feature_enabled_impl())
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runIP4AvailableStart]", 30, "Waiting for IP assignment (timeout: %i seconds)\n", v3);
      }

      v8 = nw_path_monitor_create_with_type(nw_interface_type_wifi);
      v9 = v25[5];
      v25[5] = v8;

      v10 = v25[5];
      if (!v10)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup <= 90 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runIP4AvailableStart]", 90, "Path Monitor init failed\n");
        }

        self->_ipAssigned = 0;
        v5[2](v5);
        goto LABEL_30;
      }

      nw_path_monitor_set_queue(v10, self->_dispatchQueue);
      v11 = v25[5];
      update_handler[0] = MEMORY[0x1E69E9820];
      update_handler[1] = 3221225472;
      update_handler[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_2;
      update_handler[3] = &unk_1E788F648;
      update_handler[4] = self;
      v22 = v5;
      nw_path_monitor_set_update_handler(v11, update_handler);
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runIP4AvailableStart]", 30, "Starting Path Monitor");
      }

      nw_path_monitor_start(v25[5]);
      v16 = &v22;
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runIP4AvailableStart]", 30, "Waiting for IPv4 (timeout: %i seconds)\n", v3);
      }

      [(CUNetInterfaceMonitor *)self->_interfaceMonitor invalidate];
      v12 = objc_alloc_init(MEMORY[0x1E69994E0]);
      interfaceMonitor = self->_interfaceMonitor;
      self->_interfaceMonitor = v12;

      [(CUNetInterfaceMonitor *)self->_interfaceMonitor setDispatchQueue:self->_dispatchQueue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_3;
      v19[3] = &unk_1E788B210;
      v19[4] = self;
      v14 = v5;
      v20 = v14;
      [(CUNetInterfaceMonitor *)self->_interfaceMonitor setPrimaryIPChangedHandler:v19];
      v15 = self->_interfaceMonitor;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_4;
      v17[3] = &unk_1E788B210;
      v17[4] = self;
      v18 = v14;
      [(CUNetInterfaceMonitor *)v15 activateWithCompletion:v17];
      v16 = &v20;
    }

LABEL_30:
    goto LABEL_31;
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runIP4AvailableStart]", 30, "Not waiting for IPv4 interface per defaults\n");
  }

  self->_stepDone = 1;
LABEL_31:
  _Block_object_dispose(&v24, 8);
}

void __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 32);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(v3 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
  }

  mach_absolute_time();
  UpTicksToSecondsF();
  *(*(v3 + 32) + 256) = v8;
  if (_os_feature_enabled_impl())
  {
    v9 = *(*(*(v3 + 40) + 8) + 40);
    if (v9)
    {
      nw_path_monitor_cancel(v9);
      v10 = *(*(v3 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }

  if (*(*(v3 + 32) + 88))
  {
    if (_os_feature_enabled_impl())
    {
      v12 = *(v3 + 32);
      v13 = [v12 createWiFiRetryMetricEventForIPAssign:0 duration:v12[32]];
      [v12 addRetryMetric:v13];
    }

    *(*(v3 + 32) + 40) = 1;
    *(*(v3 + 32) + 76) = 1;
    v14 = *(v3 + 32);

    [v14 _run];
  }

  else
  {
    v17 = NSErrorWithOSStatusF(4294896159, "IPAssignTimedOut");
    if (_os_feature_enabled_impl())
    {
      v15 = *(v3 + 32);
      v16 = [v15 createWiFiRetryMetricEventForIPAssign:v17 duration:v15[32]];
      [v15 addRetryMetric:v16];
    }

    [*(v3 + 32) _completeError:v17];
  }
}

uint64_t __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_2(uint64_t a1, nw_path_t path)
{
  result = nw_path_get_status(path);
  if (result == 1)
  {
    *(*(a1 + 32) + 88) = 1;
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void *__58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_3(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = result[4];
  if ((*(v4 + 16) & 1) == 0 && (*(v4 + 40) & 1) == 0)
  {
    v5 = result;
    LODWORD(v9) = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    result = *(v4 + 24);
    if (result)
    {
      result = objc_msgSend_primaryIPv4Addr(result, a2, a3, a4, v6, v7, v8, v9);
    }

    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_3_cold_1(&v6);
      }
    }

    if (BYTE1(v6) == 2)
    {
      *(v5[4] + 88) = 1;
      return (*(v5[5] + 16))();
    }
  }

  return result;
}

void *__58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v9) = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = objc_msgSend_primaryIPv4Addr(result, a2, a3, a4, v6, v7, v8, v9);
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __58__SFDeviceOperationHandlerWiFiSetup__runIP4AvailableStart__block_invoke_4_cold_1(&v6);
    }
  }

  if (BYTE1(v6) == 2)
  {
    *(*(a1 + 32) + 88) = 1;
    return (*(*(a1 + 40) + 16))();
  }

  return result;
}

- (void)_runReachabilityStart
{
  selfCopy = self;
  if (self->_reachabilityEnabled)
  {
    if (!self->_wifiSkipReachbility)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceOperationHandlerWiFiSetup *)self _runReachabilityStart];
        }
      }

      selfCopy->_stepDone = 0;
      stepError = selfCopy->_stepError;
      selfCopy->_stepError = 0;

      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor invalidate];
      v5 = objc_alloc_init(MEMORY[0x1E6999510]);
      reachabilityMonitor = selfCopy->_reachabilityMonitor;
      selfCopy->_reachabilityMonitor = v5;

      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor setDispatchQueue:selfCopy->_dispatchQueue];
      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor setTimeout:100.0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = selfCopy;
      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor setCompletionHandler:v8];
      [(CUReachabilityMonitor *)selfCopy->_reachabilityMonitor activate];
      return;
    }

    goto LABEL_8;
  }

  if (self->_wifiSkipReachbility)
  {
LABEL_8:
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (self = _LogCategory_Initialize(), self))
      {
        self = [(SFDeviceOperationHandlerWiFiSetup *)self _runReachabilityStart];
      }
    }
  }

  if (!selfCopy->_reachabilityEnabled && gLogCategory_SFDeviceOperationWiFiSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationHandlerWiFiSetup *)self _runReachabilityStart];
    }
  }

  selfCopy->_stepDone = 1;
  v7 = selfCopy->_stepError;
  selfCopy->_stepError = 0;
}

void __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 272));
  v5 = v11;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    if (v11)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 60 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke_cold_1(v11);
      }
    }

    else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        __58__SFDeviceOperationHandlerWiFiSetup__runReachabilityStart__block_invoke_cold_2(v5, v3, v4);
      }
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;

    *(*(a1 + 32) + 76) = 1;
    v8 = v11;
    if (v11)
    {
      if ([v11 code] == -6748 && objc_msgSend(*(*(a1 + 32) + 280), "sharingSourceVersion") >= 0xA03CB5)
      {
        NSErrorWithOSStatusF(4294896139, "Reachability mismatch: %@", v11);
      }

      else
      {
        NSErrorWithOSStatusF(4294896138, "Reachability after WiFi join failed: %@", v11);
      }
      v8 = ;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    [*(a1 + 32) _run];
    v5 = v11;
  }
}

- (void)_cleanupOldWiFiNetworks
{
  networkName = [self networkName];
  v3 = CUPrintNSError();
  LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _cleanupOldWiFiNetworks]", 90, "### Remove old WiFi network failed: name='%.3@...', error=%@", networkName, v3);
}

- (id)createWiFiRetryMetricEvent:(id)event duration:(double)duration channel:(int)channel isScan:(BOOL)scan
{
  scanCopy = scan;
  eventCopy = event;
  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [v11 setObject:v12 forKeyedSubscript:@"wifiDN"];

  if ([eventCopy code])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(eventCopy, "code")}];
    [v11 setObject:v13 forKeyedSubscript:@"wifiEC"];
  }

  else
  {
    [v11 setObject:0 forKeyedSubscript:@"wifiEC"];
  }

  domain = [eventCopy domain];
  if (domain)
  {
    domain2 = [eventCopy domain];
    [v11 setObject:domain2 forKeyedSubscript:@"wifiED"];
  }

  else
  {
    [v11 setObject:@"Unknown" forKeyedSubscript:@"wifiED"];
  }

  v16 = [eventCopy description];
  if (v16)
  {
    v17 = [eventCopy description];
    [v11 setObject:v17 forKeyedSubscript:@"wifiEL"];
  }

  else
  {
    [v11 setObject:@"Unknown" forKeyedSubscript:@"wifiEL"];
  }

  v18 = 200;
  if (scanCopy)
  {
    v18 = 208;
  }

  v19 = 184;
  if (scanCopy)
  {
    v19 = 192;
    v20 = 168;
  }

  else
  {
    v20 = 176;
  }

  v21 = 3;
  if (scanCopy)
  {
    v21 = 1;
  }

  v22 = 2;
  if (scanCopy)
  {
    v22 = 0;
  }

  if (channel)
  {
    v18 = v19;
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(&self->super.isa + v18)];
  [v11 setObject:v24 forKeyedSubscript:@"wifiAT"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(&self->super.isa + v20)];
  [v11 setObject:v25 forKeyedSubscript:@"wifiLT"];

  v26 = [MEMORY[0x1E696AD98] numberWithInt:eventCopy == 0];
  [v11 setObject:v26 forKeyedSubscript:@"wifiSUCC"];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
  [v11 setObject:v27 forKeyedSubscript:@"wifiRT"];

  v28 = [v11 copy];

  return v28;
}

- (id)createWiFiRetryMetricEventForIPAssign:(id)assign duration:(double)duration
{
  assignCopy = assign;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [v6 setObject:v7 forKeyedSubscript:@"wifiDN"];

  if ([assignCopy code])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(assignCopy, "code")}];
    [v6 setObject:v8 forKeyedSubscript:@"wifiEC"];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:@"wifiEC"];
  }

  domain = [assignCopy domain];
  if (domain)
  {
    domain2 = [assignCopy domain];
    [v6 setObject:domain2 forKeyedSubscript:@"wifiED"];
  }

  else
  {
    [v6 setObject:@"Unknown" forKeyedSubscript:@"wifiED"];
  }

  v11 = [assignCopy description];
  if (v11)
  {
    v12 = [assignCopy description];
    [v6 setObject:v12 forKeyedSubscript:@"wifiEL"];
  }

  else
  {
    [v6 setObject:@"Unknown" forKeyedSubscript:@"wifiEL"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:assignCopy == 0];
  [v6 setObject:v13 forKeyedSubscript:@"wifiSUCC"];

  [v6 setObject:&unk_1F1D7CE80 forKeyedSubscript:@"wifiRT"];
  v14 = [v6 copy];

  return v14;
}

- (void)addRetryMetric:(id)metric
{
  metricCopy = metric;
  wiFiRetryMetrics = self->_wiFiRetryMetrics;
  v8 = metricCopy;
  if (!wiFiRetryMetrics)
  {
    v6 = objc_opt_new();
    v7 = self->_wiFiRetryMetrics;
    self->_wiFiRetryMetrics = v6;

    metricCopy = v8;
    wiFiRetryMetrics = self->_wiFiRetryMetrics;
  }

  [(NSMutableArray *)wiFiRetryMetrics addObject:metricCopy];
}

- (void)_handleWiFiSetupRequest:(uint64_t *)a3 responseHandler:.cold.1(void *a1, __CFString **a2, uint64_t *a3)
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  *a1 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a2 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:1];
  *a3 = [v6 errorWithDomain:v7 code:-6721 userInfo:v11];
}

- (uint64_t)_runJoinStart:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = "yes";
  if (*(a1 + 112))
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if (*(a1 + 120))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if (*(a1 + 136))
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (*(a1 + 144))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (!*(a1 + 128))
  {
    v2 = "no";
  }

  return LogPrintF(&gLogCategory_SFDeviceOperationWiFiSetup, "[SFDeviceOperationHandlerWiFiSetup _runJoinStart:]", 30, "Join SSID '%.3@...', channel %d, EAP %s/%s, PW %s, PSK %s, Home %s, RF %#{flags}\n", *(a1 + 152), a2, v3, v4, v5, v6, v2, *(a1 + 92), &unk_1A998F7B0);
}

@end