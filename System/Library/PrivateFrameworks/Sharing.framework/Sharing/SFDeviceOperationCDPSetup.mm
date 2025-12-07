@interface SFDeviceOperationCDPSetup
- (SFDeviceOperationCDPSetup)init;
- (int)_runCDPApprovalServerStart;
- (int)_runCDPSetupRequest;
- (void)_activate;
- (void)_complete:(id)_complete;
- (void)_run;
- (void)activate;
- (void)invalidate;
- (void)uiController:(id)controller didPresentRootViewController:(id)viewController;
@end

@implementation SFDeviceOperationCDPSetup

- (SFDeviceOperationCDPSetup)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceOperationCDPSetup;
  v2 = [(SFDeviceOperationCDPSetup *)&v6 init];
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
  block[2] = __37__SFDeviceOperationCDPSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationCDPSetup *)self _activate];
    }
  }

  selfCopy->_startTicks = mach_absolute_time();
  if (selfCopy->_sfSession)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_dispatchQueue);
    timeoutTimer = selfCopy->_timeoutTimer;
    selfCopy->_timeoutTimer = v4;

    v6 = selfCopy->_timeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__SFDeviceOperationCDPSetup__activate__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(v6, handler);
    SFDispatchTimerSet(selfCopy->_timeoutTimer, 180.0, -1.0, -10.0);
    dispatch_activate(selfCopy->_timeoutTimer);
    [(SFDeviceOperationCDPSetup *)selfCopy _run];
  }

  else
  {
    v7 = NSErrorWithOSStatusF(4294960591, "NoSFSession");
    [(SFDeviceOperationCDPSetup *)selfCopy _complete:v7];
  }
}

void __38__SFDeviceOperationCDPSetup__activate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[36] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF(4294896149, "CDP Setup timed out");
    [v1 _complete:v2];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceOperationCDPSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __39__SFDeviceOperationCDPSetup_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 36) = 1;
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF(4294896148, "InvalidatedCalled");
  [v1 _complete:v2];
}

- (void)_complete:(id)_complete
{
  _completeCopy = _complete;
  v4 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v4)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    self->_metricSeconds = metricSeconds;
    if (!_completeCopy)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup > 30)
      {
        goto LABEL_11;
      }

      if (gLogCategory_SFDeviceOperationCDPSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        metricSeconds = self->_metricSeconds;
      }

      LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationCDPSetup _complete:]", 30, "Succeeded (%f seconds)\n", metricSeconds);
      goto LABEL_11;
    }

    if (gLogCategory_SFDeviceOperationCDPSetup <= 60 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationCDPSetup _complete:_completeCopy];
    }
  }

LABEL_11:
  [(CDPStateController *)self->_cdpController invalidate];
  cdpController = self->_cdpController;
  self->_cdpController = 0;

  cdpContext = self->_cdpContext;
  self->_cdpContext = 0;

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  if (v4)
  {
    v4[2](v4, _completeCopy);
  }
}

- (int)_runCDPApprovalServerStart
{
  selfCopy = self;
  cdpApprovalServerState = self->_cdpApprovalServerState;
  if (cdpApprovalServerState != 4 && cdpApprovalServerState != 2)
  {
    if (cdpApprovalServerState)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpApprovalServerState;
          }

          cdpApprovalServerState = selfCopy->_cdpApprovalServerState;
        }

        LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationCDPSetup _runCDPApprovalServerStart]", 30, "CDP approval server hasn't started yet (%d)\n", cdpApprovalServerState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceOperationCDPSetup *)self _runCDPApprovalServerStart];
        }
      }

      selfCopy->_cdpApprovalServerState = 1;
      messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
      if (messageSessionTemplate)
      {
        v7 = messageSessionTemplate;
        defaultStore = [(objc_class *)getACAccountStoreClass_2() defaultStore];
        aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
        v10 = objc_alloc_init(getCDPContextClass());
        cdpContext = selfCopy->_cdpContext;
        selfCopy->_cdpContext = v10;

        username = [aa_primaryAppleAccount username];
        [(CDPContext *)selfCopy->_cdpContext setAppleID:username];

        v13 = MEMORY[0x1E696AD98];
        aa_personID = [aa_primaryAppleAccount aa_personID];
        v15 = [v13 numberWithLongLong:{objc_msgSend(aa_personID, "longLongValue")}];
        [(CDPContext *)selfCopy->_cdpContext setDsid:v15];

        [(CDPContext *)selfCopy->_cdpContext setSharingChannel:v7];
        v16 = [(CDPContext *)selfCopy->_cdpContext set_skipEscrowFetches:selfCopy->_skipEscrowFetches];
        v17 = [objc_alloc(getCDPStateControllerClass(v16)) initWithContext:selfCopy->_cdpContext];
        cdpController = selfCopy->_cdpController;
        selfCopy->_cdpController = v17;

        v19 = selfCopy->_presentingViewController;
        if (v19)
        {
          v20 = [objc_alloc(getCDPUIControllerClass()) initWithPresentingViewController:v19];
          [v20 setDelegate:selfCopy];
          [v20 setForceInlinePresentation:1];
          [(CDPStateController *)selfCopy->_cdpController setUiProvider:v20];
        }

        v21 = selfCopy->_cdpController;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke;
        v23[3] = &unk_1E788C170;
        v23[4] = selfCopy;
        [(CDPStateController *)v21 startCircleApplicationApprovalServer:v23];
      }

      else
      {
        selfCopy->_cdpApprovalServerState = 3;
        v7 = NSErrorWithOSStatusF(4294960551, "No message session");
        [(SFDeviceOperationCDPSetup *)selfCopy _complete:v7];
      }
    }
  }

  return selfCopy->_cdpApprovalServerState;
}

void __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void *__55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2(void *result)
{
  if ((*(result[4] + 36) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
    {
      __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2_cold_1(v2);
    }

    *(v2[4] + 8) = 4;
    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (int)_runCDPSetupRequest
{
  selfCopy = self;
  v12[1] = *MEMORY[0x1E69E9840];
  cdpSetupRequestState = self->_cdpSetupRequestState;
  if (cdpSetupRequestState != 4 && cdpSetupRequestState != 2)
  {
    if (cdpSetupRequestState)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpSetupRequestState;
          }

          cdpSetupRequestState = selfCopy->_cdpSetupRequestState;
        }

        LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationCDPSetup _runCDPSetupRequest]", 30, "CDP approval server hasn't started yet (%d)\n", cdpSetupRequestState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceOperationCDPSetup *)self _runCDPSetupRequest];
        }
      }

      v11 = @"cdpRepair";
      v6 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isRepair];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

      sfSession = selfCopy->_sfSession;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke;
      v10[3] = &unk_1E788B548;
      v10[4] = selfCopy;
      [(SFSession *)sfSession sendRequestID:@"_cdpSetup" options:0 request:v7 responseHandler:v10];
    }
  }

  return selfCopy->_cdpSetupRequestState;
}

void __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 36) & 1) == 0)
  {
    v9 = v11;
    if (v11)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 90)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (v10 = _LogCategory_Initialize(), v9 = v11, v10))
        {
          __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke_cold_1(v9);
          v9 = v11;
        }
      }

      [*(a1 + 32) _complete:v9];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
      {
        __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke_cold_2();
      }

      *(*(a1 + 32) + 32) = 4;
      [*(a1 + 32) _run];
    }
  }
}

- (void)uiController:(id)controller didPresentRootViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = viewControllerCopy;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (viewControllerCopy = _LogCategory_Initialize(), viewControllerCopy))
    {
      [(SFDeviceOperationCDPSetup *)viewControllerCopy uiController:v6 didPresentRootViewController:v7];
    }
  }
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && self->_completionHandler)
  {
    _runCDPApprovalServerStart = [(SFDeviceOperationCDPSetup *)self _runCDPApprovalServerStart];
    if (_runCDPApprovalServerStart == 4 || _runCDPApprovalServerStart == 2)
    {
      if (self->_skipSetupRequest || ((v5 = [(SFDeviceOperationCDPSetup *)self _runCDPSetupRequest], v5 != 4) ? (v6 = v5 == 2) : (v6 = 1), v6))
      {

        [(SFDeviceOperationCDPSetup *)self _complete:0];
      }
    }
  }
}

uint64_t __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = "no";
  if (*(a1 + 48))
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationCDPSetup _runCDPApprovalServerStart]_block_invoke_2", 30, "CDP approval server started: success %s, %{error}\n", v1, *(a1 + 40));
}

@end