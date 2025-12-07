@interface SFDeviceRepairService
- (BOOL)_localDeviceSupportsAppleIDSetup;
- (SFDeviceRepairService)init;
- (id)_whenLastProblemWasRecorded;
- (unint64_t)_lastProblemRecorded;
- (void)_handleFinishRequest:(id)request responseHandler:(id)handler;
- (void)_handleGetProblemsRequest:(id)request responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_invalidate;
- (void)_recordNewProblem:(unint64_t)problem;
- (void)_registerAppleIDSetupIfNecessary;
- (void)_registerCDPAndTouchRemoteIfNecessary;
- (void)_repairMetricsDailyPush;
- (void)_repairMetricsNewProblemFlags:(unint64_t)flags;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidateWithFlags:(unsigned int)flags;
- (void)setProblemFlags:(unint64_t)flags;
@end

@implementation SFDeviceRepairService

- (SFDeviceRepairService)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceRepairService;
  v2 = [(SFDeviceRepairService *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFDeviceRepairService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  if (!self->_repairMetricsTimer)
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService activate];
    }

    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    repairMetricsTimer = self->_repairMetricsTimer;
    self->_repairMetricsTimer = v4;

    v6 = self->_repairMetricsTimer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__SFDeviceRepairService_activate__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    dispatch_source_set_event_handler(v6, v7);
    SFDispatchTimerSet(self->_repairMetricsTimer, 86400.0, 86400.0, -5.0);
    dispatch_resume(self->_repairMetricsTimer);
  }
}

uint64_t __33__SFDeviceRepairService_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceRepairService <= 30)
  {
    if (gLogCategory_SFDeviceRepairService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __33__SFDeviceRepairService_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 56) = CFPrefs_GetInt64() != 0;
  *(*(v3 + 32) + 8) = 1;
  return [*(v3 + 32) _sfServiceStart];
}

- (void)setProblemFlags:(unint64_t)flags
{
  if ([(SFDeviceRepairService *)self _lastProblemRecorded]!= flags)
  {
    [(SFDeviceRepairService *)self _repairMetricsNewProblemFlags:flags];
    [(SFDeviceRepairService *)self _recordNewProblem:flags];
  }

  self->_problemFlags = flags;
  if (flags)
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  [(SFService *)self->_sfService setDeviceActionType:v5];
  [(SFService *)self->_sfService setProblemFlags:flags];
  sfService = self->_sfService;

  [(SFService *)sfService setNeedsSetup:flags != 0];
}

- (void)invalidateWithFlags:(unsigned int)flags
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SFDeviceRepairService_invalidateWithFlags___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(dispatchQueue, v4);
}

void *__45__SFDeviceRepairService_invalidateWithFlags___block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 9) & 1) == 0)
  {
    v3 = result;
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      __45__SFDeviceRepairService_invalidateWithFlags___block_invoke_cold_1(v3);
    }

    *(v3[4] + 9) = 1;
    v4 = *(v3 + 10);
    *(v3[4] + 12) = v4;
    v5 = v3[4];
    if ((v4 & 1) != 0 && v5[3])
    {
      if (gLogCategory_SFDeviceRepairService <= 30)
      {
        if (gLogCategory_SFDeviceRepairService != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          __45__SFDeviceRepairService_invalidateWithFlags___block_invoke_cold_2(v5, a2, a3);
        }
      }

      [*(v3[4] + 16) setNeedsSetup:0];
      result = [*(v3[4] + 16) deviceActionType];
      if (result)
      {
        v6 = *(v3[4] + 16);

        return [v6 setDeviceActionType:0];
      }
    }

    else
    {

      return [v5 _invalidate];
    }
  }

  return result;
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFDeviceRepairService *)self _handleSessionEnded:self->_sfSession];
    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 20, 0);
      v5 = self->_progressHandler;
    }

    else
    {
      v5 = 0;
    }

    self->_progressHandler = 0;

    if (gLogCategory_SFDeviceRepairService <= 30)
    {
      if (gLogCategory_SFDeviceRepairService != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(SFDeviceRepairService *)v6 _invalidate];
      }
    }
  }
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFDeviceRepairService <= 30)
  {
    if (gLogCategory_SFDeviceRepairService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceRepairService *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;

  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.Repair"];
  [(SFService *)selfCopy->_sfService setLabel:@"TTF"];
  [(SFService *)selfCopy->_sfService setNeedsSetup:selfCopy->_problemFlags != 0];
  if (selfCopy->_problemFlags)
  {
    v6 = 10;
  }

  else
  {
    v6 = 0;
  }

  [(SFService *)selfCopy->_sfService setDeviceActionType:v6];
  [(SFService *)selfCopy->_sfService setOverrideScreenOff:1];
  [(SFService *)selfCopy->_sfService setPairSetupDisabled:1];
  [(SFService *)selfCopy->_sfService setProblemFlags:selfCopy->_problemFlags];
  [(SFService *)selfCopy->_sfService setSessionFlags:33];
  [(SFService *)selfCopy->_sfService setOverrideScreenOff:1];
  [(SFService *)selfCopy->_sfService setTouchRemoteEnabled:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__SFDeviceRepairService__sfServiceStart__block_invoke;
  v10[3] = &unk_1E788CA68;
  v10[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SFDeviceRepairService__sfServiceStart__block_invoke_2;
  v9[3] = &unk_1E788CA90;
  v9[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v9];
  v7 = selfCopy->_sfService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SFDeviceRepairService__sfServiceStart__block_invoke_3;
  v8[3] = &unk_1E788B238;
  v8[4] = selfCopy;
  [(SFService *)v7 activateWithCompletion:v8];
}

void __40__SFDeviceRepairService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      __40__SFDeviceRepairService__sfServiceStart__block_invoke_3_cold_1(v3);
    }

    v4 = *(*(a1 + 32) + 160);
    if (v4)
    {
      v6 = @"eo";
      v7[0] = v3;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
      (*(v4 + 16))(v4, 30, v5);
    }
  }
}

- (void)_repairMetricsDailyPush
{
  v18[2] = *MEMORY[0x1E69E9840];
  problemFlags = self->_problemFlags;
  v16 = 0;
  NSAppendPrintF(&v16, "%{flags}", problemFlags, &unk_1A998F80E);
  v4 = v16;
  v17[0] = @"rawflags";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_problemFlags];
  v17[1] = @"problemFlags";
  v18[0] = v5;
  v6 = &stru_1F1D30528;
  if (v4)
  {
    v6 = v4;
  }

  v18[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v8 = [v7 mutableCopy];

  _whenLastProblemWasRecorded = [(SFDeviceRepairService *)self _whenLastProblemWasRecorded];
  if (_whenLastProblemWasRecorded)
  {
    v10 = self->_problemFlags;
    v11 = MEMORY[0x1E696AD98];
    v12 = [MEMORY[0x1E695DF00] now];
    [v12 timeIntervalSinceDate:_whenLastProblemWasRecorded];
    v13 = [v11 numberWithDouble:?];
    if (v10)
    {
      v14 = @"timeInBad";
    }

    else
    {
      v14 = @"timeInGood";
    }

    [v8 setObject:v13 forKeyedSubscript:v14];
  }

  v15 = [v8 copy];
  SFMetricsLog(@"com.apple.sharing.ServiceProblemFlagsDaily", v15);
}

- (void)_repairMetricsNewProblemFlags:(unint64_t)flags
{
  v31[6] = *MEMORY[0x1E69E9840];
  _lastProblemRecorded = [(SFDeviceRepairService *)self _lastProblemRecorded];
  v29 = 0;
  NSAppendPrintF(&v29, "%{flags}", flags, &unk_1A998F80E);
  v6 = v29;
  v28 = 0;
  NSAppendPrintF(&v28, "%{flags}", self->_problemFlags, &unk_1A998F80E);
  v7 = v28;
  v27 = 0;
  NSAppendPrintF(&v27, "%{flags}", _lastProblemRecorded, &unk_1A998F80E);
  v8 = v27;
  v30[0] = @"flags";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:flags];
  v10 = v9;
  v26 = v6;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = &stru_1F1D30528;
  }

  v31[0] = v9;
  v31[1] = v11;
  v30[1] = @"problemFlags";
  v30[2] = @"prevFlags";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_problemFlags];
  v13 = v12;
  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = &stru_1F1D30528;
  }

  v31[2] = v12;
  v31[3] = v14;
  v30[3] = @"prevFlagsStr";
  v30[4] = @"lastProblem";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_lastProblemRecorded];
  v16 = v15;
  v30[5] = @"lastProblemStr";
  if (v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = &stru_1F1D30528;
  }

  v31[4] = v15;
  v31[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];
  v19 = [v18 mutableCopy];

  _whenLastProblemWasRecorded = [(SFDeviceRepairService *)self _whenLastProblemWasRecorded];
  if (_whenLastProblemWasRecorded)
  {
    if (flags && !_lastProblemRecorded)
    {
      v21 = @"timeInGood";
LABEL_17:
      v22 = MEMORY[0x1E696AD98];
      v23 = [MEMORY[0x1E695DF00] now];
      [v23 timeIntervalSinceDate:_whenLastProblemWasRecorded];
      v24 = [v22 numberWithDouble:?];
      [v19 setObject:v24 forKeyedSubscript:v21];

      goto LABEL_18;
    }

    if (!flags && _lastProblemRecorded)
    {
      v21 = @"timeInBad";
      goto LABEL_17;
    }
  }

LABEL_18:
  v25 = [v19 copy];
  SFMetricsLog(@"com.apple.sharing.ServiceProblemFlags", v25);
}

- (void)_recordNewProblem:(unint64_t)problem
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AD98];
  v5 = [MEMORY[0x1E695DF00] now];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [standardUserDefaults setObject:v6 forKey:@"lastProblemTimeIntervalSince1970"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:problem];
  [standardUserDefaults setObject:v7 forKey:@"lastProblemFlags"];
}

- (unint64_t)_lastProblemRecorded
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"lastProblemFlags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (id)_whenLastProblemWasRecorded
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"lastProblemTimeIntervalSince1970"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceRepairService <= 60 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceRepairService *)startedCopy _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleSessionStarted:startedCopy];
    }

    v6 = mach_absolute_time();
    problemFlags = self->_problemFlags;
    self->_startTicks = v6;
    self->_startProblemFlags = problemFlags;
    objc_storeStrong(&self->_sfSession, started);
    v8 = WiFiManagerClientCreate();
    self->_wifiManager = v8;
    if (v8)
    {
      WiFiManagerClientDisable();
    }

    else if (gLogCategory_SFDeviceRepairService <= 60 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleSessionStarted:];
    }

    sfSession = self->_sfSession;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__SFDeviceRepairService__handleSessionStarted___block_invoke;
    v23[3] = &unk_1E788B4F8;
    v23[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_getprob" options:0 handler:v23];
    v10 = objc_alloc_init(SFDeviceOperationHandlerWiFiSetup);
    wifiSetupHandler = self->_wifiSetupHandler;
    self->_wifiSetupHandler = v10;

    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setSfSession:startedCopy];
    activate = [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler activate];
    if (SFDeviceClassCodeGet(activate, v13) == 4)
    {
      v14 = objc_alloc_init(SFDeviceOperationHandlerCNJSetup);
      captiveNetworkHandler = self->_captiveNetworkHandler;
      self->_captiveNetworkHandler = v14;

      [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setSfSession:startedCopy];
      [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler activate];
    }

    v16 = self->_sfSession;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__SFDeviceRepairService__handleSessionStarted___block_invoke_2;
    v22[3] = &unk_1E788B4F8;
    v22[4] = self;
    v17 = [(SFSession *)v16 registerRequestID:@"_finish" options:0 handler:v22];
    v18 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass_0(v17));
    homeKitSetupHandler = self->_homeKitSetupHandler;
    self->_homeKitSetupHandler = v18;

    v20 = self->_homeKitSetupHandler;
    trSession = [(SFSession *)self->_sfSession trSession];
    [(HMDeviceSetupOperationHandler *)v20 registerMessageHandlersForSession:trSession];
  }
}

- (void)_registerCDPAndTouchRemoteIfNecessary
{
  if (![(SFDeviceRepairService *)self _shouldRunAppleIDSetup])
  {
    if (self->_prefCDPEnabled)
    {
      v3 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v3;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setFailIfCDPNotEnabled:1];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:self->_sfSession];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    v5 = objc_alloc_init(SFTouchRemoteAccountServicesHandlerConfiguration);
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setDispatchQueue:self->_dispatchQueue];
    v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1D7D8B0];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setSupportedTRAccountServices:v6];

    v7 = [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setIsPrimaryAppleAccount:1];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setShouldActivateStoreAccount:SFDeviceClassCodeGet(v7, v8) == 4];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setShouldSuppressStoreSignInDialogs:1];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setShouldIgnoreStoreAccountConversion:1];
    v9 = [[SFTouchRemoteAccountServicesHandler alloc] initWithConfiguration:v5];
    touchRemoteHandler = self->_touchRemoteHandler;
    self->_touchRemoteHandler = v9;

    v11 = self->_touchRemoteHandler;
    trSession = [(SFSession *)self->_sfSession trSession];
    v14 = 0;
    LOBYTE(v11) = [(SFTouchRemoteAccountServicesHandler *)v11 activateWithSession:trSession error:&v14];
    v13 = v14;

    if ((v11 & 1) == 0 && gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceRepairService *)v13 _registerCDPAndTouchRemoteIfNecessary];
    }
  }
}

- (BOOL)_localDeviceSupportsAppleIDSetup
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = SFDeviceClassCodeGet(v2, v3) == 6;
  }

  return v2;
}

- (void)_registerAppleIDSetupIfNecessary
{
  _shouldRunAppleIDSetup = [(SFDeviceRepairService *)self _shouldRunAppleIDSetup];
  if (_shouldRunAppleIDSetup)
  {
    if (self->_altDSID)
    {
      messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];

      if (messageSessionTemplate)
      {
        v15 = objc_alloc_init(getAISRepairControllerClass());
        v10 = [objc_alloc(getAISRepairContextClass()) initWithAltDSID:self->_altDSID];
        messageSessionTemplate2 = [(SFSession *)self->_sfSession messageSessionTemplate];
        [v10 setMessageSessionTemplate:messageSessionTemplate2];

        v12 = [v10 setRemoteRole:4];
        if (gLogCategory_SFDeviceRepairService <= 30)
        {
          if (gLogCategory_SFDeviceRepairService != -1 || (v12 = _LogCategory_Initialize(), v12))
          {
            [(SFDeviceRepairService *)v12 _registerAppleIDSetupIfNecessary];
          }
        }

        [v15 repairWithContext:v10 completionHandler:&__block_literal_global_46];
      }

      else if (gLogCategory_SFDeviceRepairService <= 90)
      {
        if (gLogCategory_SFDeviceRepairService != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          [(SFDeviceRepairService *)v7 _registerAppleIDSetupIfNecessary];
        }
      }
    }

    else if (gLogCategory_SFDeviceRepairService <= 90)
    {
      if (gLogCategory_SFDeviceRepairService != -1 || (_shouldRunAppleIDSetup = _LogCategory_Initialize(), _shouldRunAppleIDSetup))
      {
        [(SFDeviceRepairService *)_shouldRunAppleIDSetup _registerAppleIDSetupIfNecessary];
      }
    }
  }
}

void __57__SFDeviceRepairService__registerAppleIDSetupIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (v4)
  {
    if (gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      __57__SFDeviceRepairService__registerAppleIDSetupIfNecessary__block_invoke_cold_1(v4);
    }
  }

  else if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    __57__SFDeviceRepairService__registerAppleIDSetupIfNecessary__block_invoke_cold_2(v5);
  }
}

- (void)_handleSessionEnded:(id)ended
{
  v27[5] = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession != endedCopy)
  {
    goto LABEL_22;
  }

  if (endedCopy && gLogCategory_SFDeviceRepairService <= 30)
  {
    if (gLogCategory_SFDeviceRepairService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    peer = [(SFSession *)sfSession peer];
    LogPrintF(&gLogCategory_SFDeviceRepairService, "[SFDeviceRepairService _handleSessionEnded:]", 30, "Ending session with %@\n", peer);
  }

LABEL_7:
  v25 = 0;
  NSAppendPrintF(&v25, "%{flags}", self->_problemFlags, &unk_1A998F80E);
  v7 = v25;
  v24 = 0;
  NSAppendPrintF(&v24, "%{flags}", self->_startProblemFlags, &unk_1A998F80E);
  v8 = v24;
  v26[0] = @"flags";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_problemFlags];
  v10 = v9;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = &stru_1F1D30528;
  }

  v27[0] = v9;
  v27[1] = v11;
  v26[1] = @"problemFlags";
  v26[2] = @"startFlags";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startProblemFlags];
  v13 = v12;
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = &stru_1F1D30528;
  }

  v27[2] = v12;
  v27[3] = v14;
  v26[3] = @"startFlagsStr";
  v26[4] = @"totalMs";
  v15 = MEMORY[0x1E696AD98];
  mach_absolute_time();
  v16 = [v15 numberWithUnsignedLongLong:UpTicksToMilliseconds()];
  v27[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
  SFMetricsLog(@"com.apple.sharing.RepairPerformed", v17);

  [(SFSession *)self->_sfSession deregisterRequestID:@"_getprob"];
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler invalidate];
  wifiSetupHandler = self->_wifiSetupHandler;
  self->_wifiSetupHandler = 0;

  [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler invalidate];
  captiveNetworkHandler = self->_captiveNetworkHandler;
  self->_captiveNetworkHandler = 0;

  if (self->_wifiManager)
  {
    WiFiManagerClientEnable();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
  }

  [(SFTouchRemoteAccountServicesHandler *)self->_touchRemoteHandler invalidate];
  touchRemoteHandler = self->_touchRemoteHandler;
  self->_touchRemoteHandler = 0;

  v23 = self->_sfSession;
  self->_sfSession = 0;

  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleSessionEnded:];
    }

    [(SFDeviceRepairService *)self _invalidate];
  }

LABEL_22:
}

- (void)_handleGetProblemsRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairService _handleGetProblemsRequest:requestCopy responseHandler:?];
  }

  v8 = [requestCopy objectForKeyedSubscript:@"ff"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_peerFeatureFlags = [v8 unsignedLongLongValue];
  }

  [(SFDeviceRepairService *)self _registerAppleIDSetupIfNecessary];
  _registerCDPAndTouchRemoteIfNecessary = [(SFDeviceRepairService *)self _registerCDPAndTouchRemoteIfNecessary];
  problemFlags = self->_problemFlags;
  v12 = SFDeviceClassCodeGet(_registerCDPAndTouchRemoteIfNecessary, v11);
  v40 = v8;
  if (v12 == 4 || SFDeviceClassCodeGet(v12, v13) == 6)
  {
    IsRequired = CNUserInteractionIsRequired();
    if (IsRequired)
    {
      if (gLogCategory_SFDeviceRepairService <= 30)
      {
        if (gLogCategory_SFDeviceRepairService != -1 || (IsRequired = _LogCategory_Initialize(), IsRequired))
        {
          [(SFDeviceRepairService *)IsRequired _handleGetProblemsRequest:v15 responseHandler:v16];
        }
      }

      problemFlags |= 0x200000uLL;
    }

    v17 = 0x2000;
  }

  else
  {
    v17 = 0;
  }

  if ([(SFDeviceRepairService *)self _localDeviceSupportsAppleIDSetup])
  {
    v18 = v17 | 0x8000;
  }

  else
  {
    v18 = v17;
  }

  if (!self->_akAccountManager)
  {
    sharedInstance = [(objc_class *)getAKAccountManagerClass() sharedInstance];
    akAccountManager = self->_akAccountManager;
    self->_akAccountManager = sharedInstance;
  }

  accountStore = self->_accountStore;
  if (!accountStore)
  {
    defaultStore = [(objc_class *)getACAccountStoreClass_3() defaultStore];
    v23 = self->_accountStore;
    self->_accountStore = defaultStore;

    accountStore = self->_accountStore;
  }

  aa_primaryAppleAccount = [(ACAccountStore *)accountStore aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  v26 = [(AKAccountManager *)self->_akAccountManager authKitAccountWithAltDSID:aa_altDSID];
  v27 = [(AKAccountManager *)self->_akAccountManager continuationTokenForAccount:v26];
  v29 = SFDeviceClassCodeGet(v27, v28);
  if (v29 == 4 || (v29 = SFDeviceClassCodeGet(v29, v30), v29 == 6))
  {
    if (!v27)
    {
      if (gLogCategory_SFDeviceRepairService <= 30)
      {
        if (gLogCategory_SFDeviceRepairService != -1 || (v29 = _LogCategory_Initialize(), v29))
        {
          [(SFDeviceRepairService *)v29 _handleGetProblemsRequest:v30 responseHandler:v31];
        }
      }

      problemFlags |= 2uLL;
    }
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:problemFlags];
  [v32 setObject:v33 forKeyedSubscript:@"dpf"];

  [v32 setObject:@"1945.10.6" forKeyedSubscript:@"shv"];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18];
  [v32 setObject:v34 forKeyedSubscript:@"ff"];

  v35 = WiFiCopyCurrentNetworkInfoEx();
  CFStringGetTypeID();
  v36 = CFDictionaryGetTypedValue();
  v37 = v36;
  if (v36)
  {
    v36 = [v32 setObject:v36 forKeyedSubscript:@"wifiSSID"];
  }

  v38 = softLinkIDSCopyLocalDeviceUniqueID(v36);
  if (v38)
  {
    [v32 setObject:v38 forKeyedSubscript:@"idsID"];
  }

  v41 = 0;
  v39 = GestaltCopyAnswer();
  if (v39)
  {
    [v32 setObject:v39 forKeyedSubscript:@"osBuild"];
  }

  else
  {
    if (gLogCategory_SFDeviceRepairService > 60)
    {
      goto LABEL_41;
    }

    if (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize())
    {
      [SFDeviceRepairService _handleGetProblemsRequest:? responseHandler:?];
    }
  }

  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairService _handleGetProblemsRequest:v32 responseHandler:?];
  }

LABEL_41:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v32);
}

- (void)_handleFinishRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (gLogCategory_SFDeviceRepairService <= 30)
  {
    if (gLogCategory_SFDeviceRepairService != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(SFDeviceRepairService *)handlerCopy _handleFinishRequest:v8 responseHandler:v9];
    }
  }

  v10[2](v10, 0, 0, MEMORY[0x1E695E0F8]);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFDeviceRepairService__handleFinishRequest_responseHandler___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __62__SFDeviceRepairService__handleFinishRequest_responseHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(*(result + 32) + 9) & 1) == 0)
  {
    v2 = result;
    v3 = SFDeviceClassCodeGet(result, a2);
    if (v3 == 4)
    {
      if (gLogCategory_SFDeviceRepairService <= 30)
      {
        if (gLogCategory_SFDeviceRepairService != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          __62__SFDeviceRepairService__handleFinishRequest_responseHandler___block_invoke_cold_1(v3, v4, v5);
        }
      }

      v6 = [objc_alloc(getFLFollowUpControllerClass()) initWithClientIdentifier:0];
      [v6 clearPendingFollowUpItems:0];
    }

    result = *(*(v2 + 32) + 160);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF(&gLogCategory_SFDeviceRepairService, "[SFDeviceRepairService _handleSessionStarted:]", 60, "### Ignoring session from %@ when active with %@\n", v4, v3);
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceRepairService, "[SFDeviceRepairService _handleSessionStarted:]", 30, "Starting session with %@\n", v1);
}

@end