@interface SFDeviceOperationHandlerCDPSetup
- (SFDeviceOperationHandlerCDPSetup)init;
- (void)_activate;
- (void)_handleCDP;
- (void)_handleCDPSetupRequest:(id)request responseHandler:(id)handler;
- (void)_repairCDP;
- (void)activate;
- (void)cdpContext:(id)context promptForAdoptionOfMultipleICSC:(id)c;
- (void)cdpContext:(id)context promptForICSCWithIsNumeric:(BOOL)numeric numericLength:(id)length isRandom:(BOOL)random validator:(id)validator;
- (void)cdpContext:(id)context promptForInteractiveAuthenticationWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForLocalSecretWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForRemoteSecretWithDevices:(id)devices offeringRemoteApproval:(BOOL)approval validator:(id)validator;
- (void)cdpRecoveryFlowContext:(id)context promptForRemoteSecretWithDevices:(id)devices validator:(id)validator;
- (void)invalidate;
@end

@implementation SFDeviceOperationHandlerCDPSetup

- (SFDeviceOperationHandlerCDPSetup)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceOperationHandlerCDPSetup;
  v2 = [(SFDeviceOperationHandlerCDPSetup *)&v7 init];
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
  block[2] = __44__SFDeviceOperationHandlerCDPSetup_activate__block_invoke;
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
      [(SFDeviceOperationHandlerCDPSetup *)self _activate];
    }
  }

  sfSession = selfCopy->_sfSession;
  if (sfSession)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__SFDeviceOperationHandlerCDPSetup__activate__block_invoke;
    v5[3] = &unk_1E788B4F8;
    v5[4] = selfCopy;
    [(SFSession *)sfSession registerRequestID:@"_cdpSetup" options:0 handler:v5];
  }

  else if (gLogCategory_SFDeviceOperationCDPSetup <= 90 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup _activate];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCDPSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __46__SFDeviceOperationHandlerCDPSetup_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __46__SFDeviceOperationHandlerCDPSetup_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 24) = 1;
  [*(*(v3 + 32) + 16) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = *(v3 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v13 = _Block_copy(*(*(v3 + 32) + 32));
  v8 = *(v3 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;

  if (v13)
  {
    v10 = NSErrorWithOSStatusF(4294896148, "Invalidated");
    (*(v13 + 2))(v13, v10, 0, 0);
  }

  [*(*(v3 + 32) + 64) deregisterRequestID:@"_cdpSetup"];
  v11 = *(v3 + 32);
  v12 = *(v11 + 64);
  *(v11 + 64) = 0;
}

- (void)_handleCDPSetupRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_responseHandler)
  {
    messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
    v7 = messageSessionTemplate;
    if (messageSessionTemplate)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
        {
          [(SFDeviceOperationHandlerCDPSetup *)messageSessionTemplate _handleCDPSetupRequest:v9 responseHandler:v10];
        }
      }

      altDSIDNeedingRepair = self->_altDSIDNeedingRepair;
      CDPContextClass = getCDPContextClass();
      if (altDSIDNeedingRepair)
      {
        [(objc_class *)CDPContextClass contextForAccountWithAltDSID:self->_altDSIDNeedingRepair];
      }

      else
      {
        [(objc_class *)CDPContextClass contextForPrimaryAccount];
      }
      v13 = ;
      cdpContext = self->_cdpContext;
      self->_cdpContext = v13;

      v16 = self->_cdpContext;
      if (v16)
      {
        v17 = [(CDPContext *)v16 setSharingChannel:v7];
        v18 = [objc_alloc(getCDPStateControllerClass(v17)) initWithContext:self->_cdpContext];
        cdpController = self->_cdpController;
        self->_cdpController = v18;

        [(CDPStateController *)self->_cdpController setUiProvider:self];
        v20 = _Block_copy(handlerCopy);
        responseHandler = self->_responseHandler;
        self->_responseHandler = v20;

        if (CFDictionaryGetInt64())
        {
          [(SFDeviceOperationHandlerCDPSetup *)self _repairCDP];
        }

        else
        {
          [(SFDeviceOperationHandlerCDPSetup *)self _handleCDP];
        }

        goto LABEL_24;
      }

      v14 = NSErrorWithOSStatusF(4294960551, "Failed to create CDPContext");
      if (gLogCategory_SFDeviceOperationCDPSetup > 90 || gLogCategory_SFDeviceOperationCDPSetup == -1 && !_LogCategory_Initialize())
      {
LABEL_23:
        (*(handlerCopy + 2))(handlerCopy, v14, 0, 0);

        goto LABEL_24;
      }
    }

    else
    {
      v14 = NSErrorWithOSStatusF(4294960551, "No message session");
      if (gLogCategory_SFDeviceOperationCDPSetup > 90 || gLogCategory_SFDeviceOperationCDPSetup == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_23;
      }
    }

    [SFDeviceOperationHandlerCDPSetup _handleCDPSetupRequest:v14 responseHandler:?];
    goto LABEL_23;
  }

  v7 = NSErrorWithOSStatusF(4294960575, "CDP setup already running");
  if (gLogCategory_SFDeviceOperationCDPSetup <= 90 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup _handleCDPSetupRequest:v7 responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, v7, 0, 0);
LABEL_24:
}

- (void)_handleCDP
{
  cdpController = self->_cdpController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke;
  v3[3] = &unk_1E788F340;
  v3[4] = self;
  [(CDPStateController *)cdpController handleCloudDataProtectionStateWithCompletion:v3];
}

void __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2;
  block[3] = &unk_1E788F318;
  block[4] = v8;
  v12 = v7;
  v13 = a3;
  v14 = a2;
  v10 = v7;
  dispatch_async(v9, block);
}

void __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2(uint64_t a1)
{
  v18 = _Block_copy(*(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v10 = *(a1 + 40);
  if (v10 || *(*(a1 + 32) + 40) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (v14 = _LogCategory_Initialize(), v10 = *(a1 + 40), v14))
      {
        v11 = "no";
        if (*(a1 + 49))
        {
          v12 = "yes";
        }

        else
        {
          v12 = "no";
        }

        if (*(a1 + 48))
        {
          v11 = "yes";
        }

        LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationHandlerCDPSetup _handleCDP]_block_invoke_2", 90, "### CDP join failed: ShouldCompleteSignIn %s, CDP Enabled %s, %{error}\n", v12, v11, v10);
        v10 = *(a1 + 40);
      }
    }

    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = SFErrorF(4294960596, "CDP join, no error, not enabled", v4, v5, v6, v7, v8, v9, v17);
    }

    v16 = v15;
    if (v18)
    {
      (*(v18 + 2))(v18, v15, 0, 0);
    }

    goto LABEL_24;
  }

  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2_cold_1(a1);
  }

  v13 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, 0, 0, MEMORY[0x1E695E0F8]);
LABEL_24:
    v13 = v18;
  }
}

- (void)_repairCDP
{
  cdpController = self->_cdpController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke;
  v3[3] = &unk_1E788C170;
  v3[4] = self;
  [(CDPStateController *)cdpController repairCloudDataProtectionStateWithCompletion:v3];
}

void __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  block[4] = v6;
  v10 = v5;
  v11 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

void __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2(uint64_t a1)
{
  v17 = _Block_copy(*(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v10 = *(a1 + 40);
  if (v10 || *(*(a1 + 32) + 40) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (v13 = _LogCategory_Initialize(), v10 = *(a1 + 40), v13))
      {
        if (*(a1 + 48))
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationHandlerCDPSetup _repairCDP]_block_invoke_2", 90, "### CDP repair failed: DidRepair %s, %{error}\n", v11, v10);
        v10 = *(a1 + 40);
      }
    }

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = SFErrorF(4294960596, "CDP join, no error, not enabled", v4, v5, v6, v7, v8, v9, v16);
    }

    v15 = v14;
    if (v17)
    {
      (*(v17 + 2))(v17, v14, 0, 0);
    }

    goto LABEL_22;
  }

  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2_cold_1(a1);
  }

  v12 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, 0, 0, MEMORY[0x1E695E0F8]);
LABEL_22:
    v12 = v17;
  }
}

- (void)cdpContext:(id)context promptForAdoptionOfMultipleICSC:(id)c
{
  v5 = MEMORY[0x1E696ABC0];
  cCopy = c;
  v7 = [v5 errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8000 userInfo:0];
  (*(c + 2))(cCopy, 0, v7);
}

- (void)cdpContext:(id)context promptForICSCWithIsNumeric:(BOOL)numeric numericLength:(id)length isRandom:(BOOL)random validator:(id)validator
{
  contextCopy = context;
  lengthCopy = length;
  validatorCopy = validator;
  v13 = validatorCopy;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (validatorCopy = _LogCategory_Initialize(), validatorCopy))
    {
      [SFDeviceOperationHandlerCDPSetup cdpContext:validatorCopy promptForICSCWithIsNumeric:v11 numericLength:v12 isRandom:? validator:?];
    }
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8001 userInfo:0];
  [v13 cancelValidationWithError:v14];
}

- (void)cdpContext:(id)context promptForInteractiveAuthenticationWithCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = completionCopy;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFDeviceOperationHandlerCDPSetup *)completionCopy cdpContext:v6 promptForInteractiveAuthenticationWithCompletion:v7];
    }
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8002 userInfo:0];
  (v8)[2](v8, 0, v9);
}

- (void)cdpContext:(id)context promptForLocalSecretWithCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = completionCopy;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      [(SFDeviceOperationHandlerCDPSetup *)completionCopy cdpContext:v6 promptForLocalSecretWithCompletion:v7];
    }
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8003 userInfo:0];
  (v8)[2](v8, 0, v9);
}

- (void)cdpContext:(id)context promptForRemoteSecretWithDevices:(id)devices offeringRemoteApproval:(BOOL)approval validator:(id)validator
{
  contextCopy = context;
  devicesCopy = devices;
  validatorCopy = validator;
  v12 = validatorCopy;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (validatorCopy = _LogCategory_Initialize(), validatorCopy))
    {
      [SFDeviceOperationHandlerCDPSetup cdpContext:validatorCopy promptForRemoteSecretWithDevices:v10 offeringRemoteApproval:v11 validator:?];
    }
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8004 userInfo:0];
  [v12 cancelValidationWithError:v13];
}

- (void)cdpRecoveryFlowContext:(id)context promptForRemoteSecretWithDevices:(id)devices validator:(id)validator
{
  validatorCopy = validator;
  devicesCopy = devices;
  contextCopy = context;
  context = [contextCopy context];
  hasPeersForRemoteApproval = [contextCopy hasPeersForRemoteApproval];

  [(SFDeviceOperationHandlerCDPSetup *)self cdpContext:context promptForRemoteSecretWithDevices:devicesCopy offeringRemoteApproval:hasPeersForRemoteApproval validator:validatorCopy];
}

uint64_t __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = "no";
  if (*(a1 + 49))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  if (*(a1 + 48))
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationHandlerCDPSetup _handleCDP]_block_invoke_2", 30, "CDP joined: ShouldCompleteSignIn %s, CDP Enabled %s\n", v2, v1);
}

uint64_t __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2_cold_1(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_SFDeviceOperationCDPSetup, "[SFDeviceOperationHandlerCDPSetup _repairCDP]_block_invoke_2", 30, "CDP repair: DidRepair %s\n", v1);
}

@end