@interface SysDropSession
+ (OS_os_log)signpostLog;
- (SysDropSession)init;
- (id)_getAirDropDiscoverableMode;
- (id)_getAirDropID;
- (id)createSysDropAirDropEvent:(unsigned int)event error:(id)error;
- (id)createSysDropRPFileTransferEvent:(unsigned int)event error:(id)error fileTransferProgress:(id)progress;
- (id)createSysDropSysDiagnoseEvent:(id)event;
- (id)fileTransferredSysDiagnosePath;
- (int)_runAirDrop;
- (int)_runFileTransferComplete;
- (int)_runPreCheck;
- (int)_runReceiveRPFileTransferSysdiagnose;
- (int)_runSFSessionStart;
- (int)_runSysdiagnose;
- (int)_setupHandlers;
- (unint64_t)signpostID;
- (void)_activate;
- (void)_cleanup;
- (void)_cleanupSession;
- (void)_invalidate;
- (void)_reportError:(id)error label:(id)label;
- (void)_run;
- (void)_runPreCheckRequest;
- (void)_runPreCheckResponse:(id)response error:(id)error;
- (void)activate;
- (void)dealloc;
- (void)disconnect;
- (void)discoveryControllerLegacyModePropertiesDidChange:(id)change;
- (void)discoveryControllerSettingsDidChange:(id)change;
- (void)discoveryControllerVisibilityDidChange:(id)change;
- (void)enableAirDropForEveryone;
- (void)fileTransferCompleted:(id)completed;
- (void)handlePeerEvent:(id)event flags:(unsigned int)flags;
- (void)invalidate;
- (void)startAirDropSysdiagnose;
- (void)sysdiagnoseCompleted;
@end

@implementation SysDropSession

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SysDropSession_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __29__SysDropSession_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log;
  signpostLog_log = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (SysDropSession)init
{
  v9.receiver = self;
  v9.super_class = SysDropSession;
  v2 = [(SysDropSession *)&v9 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_proxSetupActiveToken = -1;
    v5 = objc_alloc_init(getSFAirDropDiscoveryControllerClass());
    airDropController = v2->_airDropController;
    v2->_airDropController = v5;

    [(SFAirDropDiscoveryController *)v2->_airDropController setDelegate:v2];
    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SysDropSession dealloc];
    [(SysDropSession *)v3 _cleanup];
  }

  else
  {
    [(SysDropSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SysDropSession;
    [(SysDropSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(SysDropSession *)self _cleanupSession];
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    progressHandler = self->_progressHandler;
  }

  self->_progressHandler = 0;
}

- (void)_cleanupSession
{
  if (!self->_startedFromSetup)
  {
    [(SFSession *)self->_sfSession invalidate];
    sfSession = self->_sfSession;
    self->_sfSession = 0;
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SysDropSession_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __26__SysDropSession_activate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    return [v1 _run];
  }

  else
  {
    return [v1 _activate];
  }
}

- (void)_activate
{
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _activate];
  }

  self->_activateCalled = 1;
  self->_startTicks = mach_absolute_time();
  notify_register_check("com.apple.sharing.wha-prox-setup", &self->_proxSetupActiveToken);
  notify_set_state(self->_proxSetupActiveToken, 1uLL);
  notify_post("com.apple.sharing.wha-prox-setup");
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _activate];
  }

  [(SysDropSession *)self _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SysDropSession_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _invalidate];
  }

  self->_invalidateCalled = 1;

  [(SysDropSession *)self _cleanup];
}

- (void)disconnect
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SysDropSession_disconnect__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __28__SysDropSession_disconnect__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 160) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  *(v2 + 160) = 0;
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SysDropSession > 30)
      {
        goto LABEL_10;
      }

      if (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize())
      {
        [SysDropSession _runSFSessionStart];
      }

      if (!self->_sfSessionState)
      {
LABEL_10:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(SysDropSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SFSessionStart", "", buf, 2u);
          }
        }
      }

      self->_sfSessionState = 1;
      if (self->_sfSession)
      {
        if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
        {
          [SysDropSession _runSFSessionStart];
        }

        self->_sfSessionState = 4;
      }

      else
      {
        [0 invalidate];
        v8 = objc_alloc_init(MEMORY[0x277D54CE8]);
        sfSession = self->_sfSession;
        self->_sfSession = v8;

        [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
        [(SFSession *)self->_sfSession setLabel:@"SysDrop"];
        [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
        [(SFSession *)self->_sfSession setServiceIdentifier:*MEMORY[0x277D54D80]];
        [(SFSession *)self->_sfSession setSessionFlags:1];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __36__SysDropSession__runSFSessionStart__block_invoke;
        v15[3] = &unk_279714198;
        v15[4] = self;
        [(SFSession *)self->_sfSession setErrorHandler:v15];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __36__SysDropSession__runSFSessionStart__block_invoke_2;
        v14[3] = &unk_279713FF0;
        v14[4] = self;
        [(SFSession *)self->_sfSession setInterruptionHandler:v14];
        v10 = self->_sfSession;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __36__SysDropSession__runSFSessionStart__block_invoke_3;
        v13[3] = &unk_279714198;
        v13[4] = self;
        [(SFSession *)v10 activateWithCompletion:v13];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __36__SysDropSession__runSFSessionStart__block_invoke_42;
        v12[3] = &unk_279713F50;
        v12[4] = self;
        [(SFSession *)self->_sfSession setReceivedObjectHandler:v12];
      }
    }
  }

  return self->_sfSessionState;
}

void __36__SysDropSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CCA590];
  v9 = *MEMORY[0x277CCA450];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6762 userInfo:v7];
  [v1 _reportError:v8 label:@"SFSessionInterruption-SysDrop"];
}

void __36__SysDropSession__runSFSessionStart__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = *(v5 + 20);
  if (v3)
  {
    if (!v6)
    {
      v7 = [objc_opt_class() signpostLog];
      v8 = [*v4 signpostID];
      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SFSessionStart", "", buf, 2u);
        }
      }
    }

    v10 = [objc_opt_class() signpostLog];
    v11 = [*v4 signpostID];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v10, OS_SIGNPOST_INTERVAL_END, v12, "SFSessionStart", "", v19, 2u);
      }
    }

    *(*v4 + 5) = 3;
    [*v4 _reportError:v3 label:@"SFSessionActivate-SysDrop"];
  }

  else
  {
    if (!v6)
    {
      v13 = [objc_opt_class() signpostLog];
      v14 = [*v4 signpostID];
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v13))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SFSessionStart", "", v22, 2u);
        }
      }
    }

    v16 = [objc_opt_class() signpostLog];
    v17 = [*v4 signpostID];
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v16, OS_SIGNPOST_INTERVAL_END, v18, "SFSessionStart", "", v21, 2u);
      }
    }

    *(*v4 + 5) = 4;
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      __36__SysDropSession__runSFSessionStart__block_invoke_3_cold_1(v4);
    }

    [*v4 _run];
  }
}

void __36__SysDropSession__runSFSessionStart__block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (gLogCategory_SysDropSession <= 30)
  {
    if (gLogCategory_SysDropSession != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      __36__SysDropSession__runSFSessionStart__block_invoke_42_cold_1();
      v5 = v7;
    }
  }

  [*(a1 + 32) handlePeerEvent:v5 flags:a2];
}

- (int)_runPreCheck
{
  preCheckState = self->_preCheckState;
  if (preCheckState > 1)
  {
    if (preCheckState == 2 || preCheckState == 4)
    {
      return self->_preCheckState;
    }

    goto LABEL_12;
  }

  if (preCheckState)
  {
    if (preCheckState == 1)
    {
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        [SysDropSession _runPreCheck];
      }

      return self->_preCheckState;
    }

LABEL_12:
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_preCheckState;
  }

  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _runPreCheck];
  }

  [(SysDropSession *)self _runPreCheckRequest];
  return self->_preCheckState;
}

- (void)_runPreCheckRequest
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_preCheckState = 1;
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"sd_rpft_cap"];
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _runPreCheckRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SysDropSession__runPreCheckRequest__block_invoke;
  v5[3] = &unk_2797145F0;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"sysdrop_check" options:&unk_2864E7CD0 request:v3 responseHandler:v5];
}

- (void)_runPreCheckResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _runPreCheckResponse:error:];
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _runPreCheckResponse:error:];
  }

  self->_sysdiagnoseStatus = Int64Ranged;
  self->_homePodCanRPFileTransfer = v8;
  self->_preCheckState = 4;
  self->_sysdiagnoseDone = Int64Ranged == 2;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _runPreCheckResponse:error:];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v10 = [(SysDropSession *)self createSysDropAirDropEvent:5 error:0];
    progressHandler[2](progressHandler, 906, v10);
  }

  [(SysDropSession *)self _run];
}

- (int)_runSysdiagnose
{
  sysdiagnoseState = self->_sysdiagnoseState;
  if (sysdiagnoseState == 1)
  {
    if (self->_sysdiagnoseStatus == 2)
    {
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        [SysDropSession _runSysdiagnose];
      }

      self->_sysdiagnoseState = 4;
    }

    else if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runSysdiagnose];
    }
  }

  else if (!sysdiagnoseState)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runSysdiagnose];
    }

    self->_sysdiagnoseState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v5 = [(SysDropSession *)self createSysDropSysDiagnoseEvent:self->_setupError];
      progressHandler[2](progressHandler, 907, v5);
    }
  }

  return self->_sysdiagnoseState;
}

- (int)_runAirDrop
{
  airDropState = self->_airDropState;
  if (airDropState == 1)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runAirDrop];
    }
  }

  else if (!airDropState)
  {
    [(SysDropSession *)self enableAirDropForEveryone];
    self->_airDropState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v5 = [(SysDropSession *)self createSysDropAirDropEvent:0 error:0];
      progressHandler[2](progressHandler, 906, v5);
    }
  }

  return self->_airDropState;
}

- (int)_runReceiveRPFileTransferSysdiagnose
{
  rpFileTransferState = self->_rpFileTransferState;
  if (rpFileTransferState == 1)
  {
    if (self->_transferCompleted)
    {
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        [SysDropSession _runReceiveRPFileTransferSysdiagnose];
      }

      self->_rpFileTransferState = 4;
    }

    else if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runReceiveRPFileTransferSysdiagnose];
    }
  }

  else if (!rpFileTransferState)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runReceiveRPFileTransferSysdiagnose];
    }

    self->_rpFileTransferState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v5 = [(SysDropSession *)self createSysDropRPFileTransferEvent:0 error:0 fileTransferProgress:0];
      progressHandler[2](progressHandler, 909, v5);
    }
  }

  return self->_rpFileTransferState;
}

- (int)_runFileTransferComplete
{
  rpFileCompleteState = self->_rpFileCompleteState;
  if (rpFileCompleteState == 1)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runFileTransferComplete];
    }
  }

  else if (!rpFileCompleteState)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _runFileTransferComplete];
    }

    self->_rpFileCompleteState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v5 = [(SysDropSession *)self createSysDropRPFileTransferEvent:2 error:0 fileTransferProgress:0];
      progressHandler[2](progressHandler, 910, v5);
    }
  }

  return self->_rpFileCompleteState;
}

- (void)fileTransferCompleted:(id)completed
{
  completedCopy = completed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SysDropSession_fileTransferCompleted___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = completedCopy;
  v6 = completedCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __40__SysDropSession_fileTransferCompleted___block_invoke(uint64_t a1)
{
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    __40__SysDropSession_fileTransferCompleted___block_invoke_cold_1();
  }

  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  *(*(a1 + 32) + 96) = 1;
  v2 = *(a1 + 32);
  v3 = v2[18];
  if (v3)
  {
    v4 = [v2 fileTransferredSysDiagnosePath];
    (*(v3 + 16))(v3, v4);

    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (id)fileTransferredSysDiagnosePath
{
  itemURL = [(RPFileTransferItem *)self->_transferItem itemURL];
  path = [itemURL path];

  if (path)
  {
    itemURL2 = [(RPFileTransferItem *)self->_transferItem itemURL];
    path2 = [itemURL2 path];

    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession fileTransferredSysDiagnosePath];
    }
  }

  else
  {
    if (gLogCategory_SysDropSession <= 60 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession fileTransferredSysDiagnosePath];
    }

    path2 = &stru_2864DB950;
  }

  return path2;
}

- (int)_setupHandlers
{
  result = self->_setupHandlersState;
  if (!result)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession _setupHandlers];
    }

    self->_setupHandlersState = 4;
    sfSession = self->_sfSession;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__SysDropSession__setupHandlers__block_invoke;
    v5[3] = &unk_279714668;
    v5[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_hds_rpft_sysdrop" options:&unk_2864E7CF8 handler:v5];
    return self->_setupHandlersState;
  }

  return result;
}

void __32__SysDropSession__setupHandlers__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    __32__SysDropSession__setupHandlers__block_invoke_cold_1();
  }

  v10 = objc_alloc_init(HDSFileTransferService);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__SysDropSession__setupHandlers__block_invoke_2;
  v17[3] = &unk_279714238;
  v17[4] = *(a1 + 32);
  [(HDSFileTransferService *)v10 setFileTransferProgressHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__SysDropSession__setupHandlers__block_invoke_3;
  v15[3] = &unk_279714618;
  v15[4] = *(a1 + 32);
  v16 = v10;
  v11 = v10;
  [(HDSFileTransferService *)v11 setFileTransferCompletionHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__SysDropSession__setupHandlers__block_invoke_4;
  v13[3] = &unk_279714640;
  v13[4] = *(a1 + 32);
  v14 = v9;
  v12 = v9;
  [(HDSFileTransferService *)v11 handleSysDropStartFileTransferRequest:v8 responseHandler:v13];
}

uint64_t __32__SysDropSession__setupHandlers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  if (v5 && (*(v4 + 122) & 1) == 0)
  {
    v8 = v3;
    v6 = [v4 createSysDropRPFileTransferEvent:1 error:0 fileTransferProgress:v3];
    (*(v5 + 16))(v5, 909, v6);

    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v4, v3);
}

void __32__SysDropSession__setupHandlers__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = v5;
    LogPrintF();
  }

  if (v11)
  {
    [*(a1 + 32) _reportError:v11 label:@"File Transfer Disconnected"];
  }

  else if (v5)
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      __32__SysDropSession__setupHandlers__block_invoke_3_cold_1();
    }

    [*(a1 + 32) fileTransferCompleted:{v5, v9, v10}];
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 invalidate];
    }
  }

  else
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      __32__SysDropSession__setupHandlers__block_invoke_3_cold_2();
    }

    v7 = *(a1 + 32);
    v8 = NSErrorF();
    [v7 _reportError:v8 label:@"File Transfer Did not complete"];
  }
}

void __32__SysDropSession__setupHandlers__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SysDropSession <= 30)
    {
      if (gLogCategory_SysDropSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __32__SysDropSession__setupHandlers__block_invoke_4_cold_1();
        v4 = v6;
      }
    }

    [*(a1 + 32) _reportError:v4 label:@"Failed To Setup File Transfer receiver"];
  }

  else
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      __32__SysDropSession__setupHandlers__block_invoke_4_cold_2();
    }

    [*(a1 + 32) sysdiagnoseCompleted];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enableAirDropForEveryone
{
  [(SFAirDropDiscoveryController *)self->_airDropController setDiscoverableMode:2];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.sharingd.plist"];
  v7 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2 error:&v7];
  v4 = v3;
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = @"Not set";
  }

  else
  {
    v6 = [v3 objectForKey:@"DiscoverableMode"];
  }

  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession enableAirDropForEveryone];
  }
}

- (id)_getAirDropID
{
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.sharingd.plist"];
  v8 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2 error:&v8];
  v4 = v8;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = &stru_2864DB950;
  }

  else
  {
    v6 = [v3 objectForKey:@"AirDropID"];
  }

  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _getAirDropID];
  }

  return v6;
}

- (id)_getAirDropDiscoverableMode
{
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.sharingd.plist"];
  v8 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2 error:&v8];
  v4 = v8;
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = &stru_2864DB950;
  }

  else
  {
    v6 = [v3 objectForKey:@"DiscoverableMode"];
  }

  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession _getAirDropDiscoverableMode];
  }

  return v6;
}

- (id)createSysDropSysDiagnoseEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  v5 = v4;
  if (eventCopy)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "code")}];
    [v5 setObject:v6 forKeyedSubscript:@"sd_er"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"sd_er"];
  }

  domain = [eventCopy domain];
  [v5 setObject:domain forKeyedSubscript:@"sd_ed"];

  v8 = [eventCopy description];
  [v5 setObject:v8 forKeyedSubscript:@"sd_de"];

  return v5;
}

- (id)createSysDropAirDropEvent:(unsigned int)event error:(id)error
{
  v4 = *&event;
  errorCopy = error;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [v7 setObject:v8 forKeyedSubscript:@"sd_ad_e"];

  if (errorCopy)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v7 setObject:v9 forKeyedSubscript:@"sd_ad_er"];
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"sd_ad_er"];
  }

  domain = [errorCopy domain];

  [v7 setObject:domain forKeyedSubscript:@"sd_ad_ed"];
  setupError = self->_setupError;
  if (setupError)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](setupError, "code")}];
    [v7 setObject:v12 forKeyedSubscript:@"sd_er"];
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"sd_er"];
  }

  domain2 = [(NSError *)self->_setupError domain];
  [v7 setObject:domain2 forKeyedSubscript:@"sd_ed"];

  v14 = [(NSError *)self->_setupError description];
  [v7 setObject:v14 forKeyedSubscript:@"sd_de"];

  return v7;
}

- (id)createSysDropRPFileTransferEvent:(unsigned int)event error:(id)error fileTransferProgress:(id)progress
{
  v6 = *&event;
  progressCopy = progress;
  errorCopy = error;
  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  [v10 setObject:v11 forKeyedSubscript:@"sd_rp_e"];

  if (errorCopy)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v10 setObject:v12 forKeyedSubscript:@"sd_rp_er"];
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"sd_rp_er"];
  }

  domain = [errorCopy domain];

  [v10 setObject:domain forKeyedSubscript:@"sd_rp_ed"];
  setupError = self->_setupError;
  if (setupError)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSError code](setupError, "code")}];
    [v10 setObject:v15 forKeyedSubscript:@"sd_er"];
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"sd_er"];
  }

  domain2 = [(NSError *)self->_setupError domain];
  [v10 setObject:domain2 forKeyedSubscript:@"sd_ed"];

  v17 = [(NSError *)self->_setupError description];
  [v10 setObject:v17 forKeyedSubscript:@"sd_de"];

  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession createSysDropRPFileTransferEvent:progressCopy error:? fileTransferProgress:?];
    if (progressCopy)
    {
      goto LABEL_11;
    }

LABEL_13:
    v20 = -1.0;
    goto LABEL_14;
  }

  if (!progressCopy)
  {
    goto LABEL_13;
  }

LABEL_11:
  transferredByteCount = [progressCopy transferredByteCount];
  v20 = transferredByteCount / [progressCopy totalByteCount];
LABEL_14:
  *&v18 = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [v10 setObject:v21 forKeyedSubscript:@"sd_rp_pr"];

  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession createSysDropRPFileTransferEvent:error:fileTransferProgress:];
    if (progressCopy)
    {
      goto LABEL_18;
    }
  }

  else if (progressCopy)
  {
LABEL_18:
    [progressCopy remainingSeconds];
    goto LABEL_21;
  }

  v22 = -1.0;
LABEL_21:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
  [v10 setObject:v23 forKeyedSubscript:@"sd_rp_rs"];

  if ([progressCopy type])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(progressCopy, "type")}];
    [v10 setObject:v24 forKeyedSubscript:@"sd_pt"];
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"sd_pt"];
  }

  return v10;
}

- (void)startAirDropSysdiagnose
{
  _getAirDropID = [(SysDropSession *)self _getAirDropID];
  if ([_getAirDropID length])
  {
    _getAirDropDiscoverableMode = [(SysDropSession *)self _getAirDropDiscoverableMode];
    v5 = _getAirDropDiscoverableMode;
    if (_getAirDropDiscoverableMode && ([_getAirDropDiscoverableMode isEqualToString:@"Everyone"] & 1) != 0)
    {
      v6 = objc_opt_new();
      [v6 setObject:_getAirDropID forKeyedSubscript:@"sd_ad_id"];
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        [SysDropSession startAirDropSysdiagnose];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        v8 = [(SysDropSession *)self createSysDropAirDropEvent:5 error:0];
        progressHandler[2](progressHandler, 906, v8);
      }

      sfSession = self->_sfSession;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __41__SysDropSession_startAirDropSysdiagnose__block_invoke;
      v14[3] = &unk_2797145F0;
      v14[4] = self;
      [(SFSession *)sfSession sendRequestID:@"sysdrop_ad" options:&unk_2864E7D20 request:v6 responseHandler:v14];
    }

    else
    {
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        [SysDropSession startAirDropSysdiagnose];
      }

      v10 = self->_progressHandler;
      v11 = [(SysDropSession *)self createSysDropAirDropEvent:2 error:0];
      v10[2](v10, 906, v11);
    }
  }

  else
  {
    if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession startAirDropSysdiagnose];
    }

    v12 = self->_progressHandler;
    v13 = [(SysDropSession *)self createSysDropAirDropEvent:1 error:0];
    v12[2](v12, 906, v13);
  }
}

void __41__SysDropSession_startAirDropSysdiagnose__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 128);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SysDropSession_startAirDropSysdiagnose__block_invoke_2;
  block[3] = &unk_279714320;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v10 = v6;
  v11 = v7;
  dispatch_async(v9, block);
}

void __41__SysDropSession_startAirDropSysdiagnose__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    __41__SysDropSession_startAirDropSysdiagnose__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 48);
  v3 = v2[17];
  if (*(a1 + 40))
  {
    v6 = [v2 createSysDropAirDropEvent:3 error:?];
    (*(v3 + 16))(v3, 906, v6);
  }

  else
  {
    v4 = [v2 createSysDropAirDropEvent:4 error:?];
    (*(v3 + 16))(v3, 906, v4);

    v5 = *(a1 + 48);

    [v5 _run];
  }
}

- (void)sysdiagnoseCompleted
{
  if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
  {
    [SysDropSession sysdiagnoseCompleted];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SysDropSession_sysdiagnoseCompleted__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)handlePeerEvent:(id)event flags:(unsigned int)flags
{
  if ((flags & 1) == 0)
  {
    eventCopy = event;
    self->_sysdiagnoseStatus = CFDictionaryGetInt64Ranged();
    CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();

    if (gLogCategory_SysDropSession <= 30)
    {
      if (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize())
      {
        [SysDropSession handlePeerEvent:flags:];
      }

      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    sysdiagnoseStatus = self->_sysdiagnoseStatus;
    if (sysdiagnoseStatus == 3)
    {
      v7 = NSErrorF();
      [(SysDropSession *)self _reportError:v7 label:@"SysDrop Sysdiagnose Error"];
    }

    else if (sysdiagnoseStatus == 2)
    {
      [(SysDropSession *)self sysdiagnoseCompleted];
    }

    else if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
    {
      [SysDropSession handlePeerEvent:flags:];
    }
  }
}

- (void)_reportError:(id)error label:(id)label
{
  v29[4] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  labelCopy = label;
  v8 = gLogCategory_SysDropSession;
  if (gLogCategory_SysDropSession <= 30)
  {
    if (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize())
    {
      [SysDropSession _reportError:? label:?];
    }

    v8 = gLogCategory_SysDropSession;
  }

  if (v8 <= 60 && (v8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FPrintF(*MEMORY[0x277D85E08], "CmdHomeDeviceSetupNoUI _reportError called: %@, %{error}\n", labelCopy, errorCopy);
  [(SysDropSession *)self _cleanupSession];
  if (self->_totalSecs == 0.0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    self->_totalSecs = v9;
  }

  if ([errorCopy code] != -6723)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = labelCopy;
    v28[0] = @"label";
    v28[1] = @"errDomain";
    domain = [errorCopy domain];
    v12 = domain;
    v13 = @"?";
    if (domain)
    {
      v13 = domain;
    }

    v29[1] = v13;
    v28[2] = @"errCode";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v29[2] = v14;
    v28[3] = @"totalMs";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_totalSecs * 1000.0)];
    v29[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    [v10 addEntriesFromDictionary:v16];

    HDSMetricsLog(@"com.apple.sharing.ASSetupError", v10);
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v26 = @"eo";
      v18 = errorCopy;
      if (!errorCopy)
      {
        v19 = MEMORY[0x277CCA9B8];
        v20 = *MEMORY[0x277CCA590];
        v24 = *MEMORY[0x277CCA450];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v12 = v21;
        v22 = @"?";
        if (v21)
        {
          v22 = v21;
        }

        v25 = v22;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v18 = [v19 errorWithDomain:v20 code:-6700 userInfo:v14];
      }

      v27 = v18;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      progressHandler[2](progressHandler, 30, v23);

      if (!errorCopy)
      {
      }
    }
  }
}

- (void)discoveryControllerSettingsDidChange:(id)change
{
  changeCopy = change;
  v4 = changeCopy;
  if (gLogCategory_SysDropSession <= 30)
  {
    v5 = changeCopy;
    if (gLogCategory_SysDropSession != -1 || (changeCopy = _LogCategory_Initialize(), v4 = v5, changeCopy))
    {
      changeCopy = [SysDropSession discoveryControllerSettingsDidChange:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](changeCopy, v4);
}

- (void)discoveryControllerVisibilityDidChange:(id)change
{
  changeCopy = change;
  v4 = changeCopy;
  if (gLogCategory_SysDropSession <= 30)
  {
    v5 = changeCopy;
    if (gLogCategory_SysDropSession != -1 || (changeCopy = _LogCategory_Initialize(), v4 = v5, changeCopy))
    {
      changeCopy = [SysDropSession discoveryControllerVisibilityDidChange:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](changeCopy, v4);
}

- (void)discoveryControllerLegacyModePropertiesDidChange:(id)change
{
  changeCopy = change;
  v4 = changeCopy;
  if (gLogCategory_SysDropSession <= 30)
  {
    v5 = changeCopy;
    if (gLogCategory_SysDropSession != -1 || (changeCopy = _LogCategory_Initialize(), v4 = v5, changeCopy))
    {
      changeCopy = [SysDropSession discoveryControllerLegacyModePropertiesDidChange:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](changeCopy, v4);
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runSFSessionStart = [(SysDropSession *)self _runSFSessionStart];
    if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
    {
      if (gLogCategory_SysDropSession <= 30 && (gLogCategory_SysDropSession != -1 || _LogCategory_Initialize()))
      {
        identifier = [(SFSession *)self->_sfSession identifier];
        LogPrintF();
      }

      identifier2 = [(SFSession *)self->_sfSession identifier];

      if (identifier2)
      {
        _setupHandlers = [(SysDropSession *)self _setupHandlers];
        if (_setupHandlers == 4 || _setupHandlers == 2)
        {
          _runPreCheck = [(SysDropSession *)self _runPreCheck];
          if (_runPreCheck == 4 || _runPreCheck == 2)
          {
            if (self->_sysdiagnoseDone || ((v10 = [(SysDropSession *)self _runSysdiagnose], v10 != 4) ? (v11 = v10 == 2) : (v11 = 1), v11))
            {
              if (_os_feature_enabled_impl() && self->_homePodCanRPFileTransfer)
              {
                _runReceiveRPFileTransferSysdiagnose = [(SysDropSession *)self _runReceiveRPFileTransferSysdiagnose];
                if (_runReceiveRPFileTransferSysdiagnose != 2 && _runReceiveRPFileTransferSysdiagnose != 4)
                {
                  return;
                }
              }

              else
              {
                _runAirDrop = [(SysDropSession *)self _runAirDrop];
                if (_runAirDrop != 4 && _runAirDrop != 2)
                {
                  return;
                }
              }

              [(SysDropSession *)self _runFileTransferComplete];
            }
          }
        }
      }
    }
  }
}

void __36__SysDropSession__runSFSessionStart__block_invoke_3_cold_1(uint64_t a1)
{
  v1 = [*(*a1 + 160) identifier];
  LogPrintF();
}

- (uint64_t)createSysDropRPFileTransferEvent:(void *)a1 error:fileTransferProgress:.cold.1(void *a1)
{
  [a1 transferredByteCount];
  [a1 totalByteCount];
  return LogPrintF();
}

- (void)_reportError:(uint64_t)a1 label:.cold.1(uint64_t a1)
{
  v1 = [*(a1 + 160) identifier];
  LogPrintF();
}

@end