@interface SFSystemService
- (SFSystemService)init;
- (id)description;
- (void)_handleGetSystemInfoRequest:(id)request responseHandler:(id)handler;
- (void)_handleProfileInstallForSession:(id)session request:(id)request responseHandler:(id)handler;
- (void)_handleProfileRemoveForSession:(id)session request:(id)request responseHandler:(id)handler;
- (void)_handleProfilesGetForSession:(id)session request:(id)request responseHandler:(id)handler;
- (void)_handleRebootSystemForSession:(id)session request:(id)request responseHandler:(id)handler;
- (void)_handleSessionStarted:(id)started;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidate;
@end

@implementation SFSystemService

- (SFSystemService)init
{
  v6.receiver = self;
  v6.super_class = SFSystemService;
  v2 = [(SFSystemService *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "SFSystemService");
  v2 = v4;

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFSystemService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__SFSystemService_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFSystemService <= 30)
  {
    if (gLogCategory_SFSystemService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __27__SFSystemService_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  v4 = *(v3 + 32);

  return [v4 _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFSystemService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__SFSystemService_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFSystemService <= 30)
  {
    if (gLogCategory_SFSystemService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __29__SFSystemService_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 9) = 1;
  [*(*(v3 + 32) + 16) invalidate];
  v4 = *(v3 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFSystemService <= 30)
  {
    if (gLogCategory_SFSystemService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFSystemService *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;

  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.System"];
  [(SFService *)selfCopy->_sfService setLabel:@"System"];
  [(SFService *)selfCopy->_sfService setPairSetupDisabled:1];
  [(SFService *)selfCopy->_sfService setSessionFlags:33];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SFSystemService__sfServiceStart__block_invoke;
  v7[3] = &unk_1E788CA68;
  v7[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__SFSystemService__sfServiceStart__block_invoke_2;
  v6[3] = &unk_1E788CA90;
  v6[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v6];
  [(SFService *)selfCopy->_sfService activateWithCompletion:&__block_literal_global_68];
}

void __34__SFSystemService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    if (gLogCategory_SFSystemService <= 60)
    {
      v6 = v2;
      if (gLogCategory_SFSystemService != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __34__SFSystemService__sfServiceStart__block_invoke_3_cold_1(v4);
LABEL_13:
        v4 = v6;
      }
    }
  }

  else if (gLogCategory_SFSystemService <= 30)
  {
    v6 = 0;
    if (gLogCategory_SFSystemService != -1 || (v2 = _LogCategory_Initialize(), v4 = 0, v2))
    {
      __34__SFSystemService__sfServiceStart__block_invoke_3_cold_2(v2, v4, v3);
      goto LABEL_13;
    }
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__SFSystemService__handleSessionStarted___block_invoke;
  v17[3] = &unk_1E788B4F8;
  v17[4] = self;
  [startedCopy registerRequestID:@"_getSysInfo" options:&unk_1F1D7D790 handler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__SFSystemService__handleSessionStarted___block_invoke_2;
  v15[3] = &unk_1E7891338;
  v15[4] = self;
  v5 = startedCopy;
  v16 = v5;
  [v5 registerRequestID:@"_rebootSystem" options:&unk_1F1D7D7B8 handler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__SFSystemService__handleSessionStarted___block_invoke_3;
  v13[3] = &unk_1E7891338;
  v13[4] = self;
  v6 = v5;
  v14 = v6;
  [v6 registerRequestID:@"_profilesGet" options:&unk_1F1D7D7B8 handler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__SFSystemService__handleSessionStarted___block_invoke_4;
  v11[3] = &unk_1E7891338;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v7 registerRequestID:@"_profileInstall" options:&unk_1F1D7D7B8 handler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__SFSystemService__handleSessionStarted___block_invoke_5;
  v9[3] = &unk_1E7891338;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [v8 registerRequestID:@"_profileRemove" options:&unk_1F1D7D7B8 handler:v9];
}

- (void)_handleGetSystemInfoRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleGetSystemInfoRequest:requestCopy responseHandler:?];
  }

  v11 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = GestaltCopyAnswer();
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"model"];
  }

  else if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleGetSystemInfoRequest:? responseHandler:?];
  }

  v9 = GestaltCopyAnswer();

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"name"];
  }

  else if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleGetSystemInfoRequest:? responseHandler:?];
  }

  v10 = GestaltCopyAnswer();

  if (v10)
  {
    [v7 setObject:v10 forKeyedSubscript:@"osBuild"];
  }

  else if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleGetSystemInfoRequest:? responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)_handleRebootSystemForSession:(id)session request:(id)request responseHandler:(id)handler
{
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleRebootSystemForSession:requestCopy request:? responseHandler:?];
  }

  if (([sessionCopy sessionFlags] & 0x40) == 0 && (objc_msgSend(sessionCopy, "pairingContainsACL:", @"com.apple.admin") & 1) == 0)
  {
    v11 = NSErrorWithOSStatusF(4294960523, "Lacks admin ACL");
    if (gLogCategory_SFSystemService > 60 || gLogCategory_SFSystemService == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v10 = reboot3();
  if (!v10)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
    v12 = dispatch_time(0, 2000000000);
    dispatch_after(v12, self->_dispatchQueue, &__block_literal_global_193);
    goto LABEL_16;
  }

  v11 = NSErrorWithOSStatusF(v10, "reboot3 failed");
  if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
LABEL_10:
    [SFSystemService _handleRebootSystemForSession:v11 request:? responseHandler:?];
  }

LABEL_15:
  (*(handlerCopy + 2))(handlerCopy, v11, 0, 0);

LABEL_16:
}

uint64_t __73__SFSystemService__handleRebootSystemForSession_request_responseHandler___block_invoke()
{
  result = reboot3();
  if (gLogCategory_SFSystemService <= 60)
  {
    v1 = result;
    if (gLogCategory_SFSystemService != -1)
    {
      return __73__SFSystemService__handleRebootSystemForSession_request_responseHandler___block_invoke_cold_1(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __73__SFSystemService__handleRebootSystemForSession_request_responseHandler___block_invoke_cold_1(v1);
    }
  }

  return result;
}

- (void)_handleProfilesGetForSession:(id)session request:(id)request responseHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleProfilesGetForSession:requestCopy request:? responseHandler:?];
  }

  if (([sessionCopy sessionFlags] & 0x40) != 0 || objc_msgSend(sessionCopy, "pairingContainsACL:", @"com.apple.admin"))
  {
    v25 = handlerCopy;
    v26 = requestCopy;
    v27 = sessionCopy;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v12 = [mEMORY[0x1E69ADFB8] installedProfilesWithFilterFlags:3];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (!v14)
    {
      goto LABEL_29;
    }

    v15 = v14;
    v16 = *v29;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        identifier = [v18 identifier];
        if (!identifier && gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
        {
          [SFSystemService _handleProfilesGetForSession:request:responseHandler:];
        }

        friendlyName = [v18 friendlyName];
        if (friendlyName || ([v18 displayName], (friendlyName = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = friendlyName;
          v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v22 setObject:v21 forKeyedSubscript:@"name"];

          if (!identifier)
          {
            goto LABEL_19;
          }

LABEL_18:
          [v22 setObject:identifier forKeyedSubscript:@"id"];
          goto LABEL_19;
        }

        if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
        {
          [SFSystemService _handleProfilesGetForSession:identifier request:? responseHandler:?];
        }

        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
        if (identifier)
        {
          goto LABEL_18;
        }

LABEL_19:
        [v10 addObject:v22];

        ++v17;
      }

      while (v15 != v17);
      v23 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v15 = v23;
      if (!v23)
      {
LABEL_29:

        v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v24 setObject:v10 forKeyedSubscript:@"profiles"];
        requestCopy = v26;
        sessionCopy = v27;
        handlerCopy = v25;
LABEL_30:
        if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
        {
          [SFSystemService _handleProfilesGetForSession:request:responseHandler:];
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, v24);

        goto LABEL_34;
      }
    }
  }

  if (([SFSystemService _handleProfilesGetForSession:handlerCopy request:&v32 responseHandler:?]& 1) != 0)
  {
    v10 = 0;
    v24 = 0;
    v13 = 0;
    goto LABEL_30;
  }

  v10 = v32;
LABEL_34:
}

- (void)_handleProfileInstallForSession:(id)session request:(id)request responseHandler:(id)handler
{
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleProfileInstallForSession:requestCopy request:? responseHandler:?];
  }

  v18 = 0;
  if (([sessionCopy sessionFlags] & 0x40) == 0 && (objc_msgSend(sessionCopy, "pairingContainsACL:", @"com.apple.admin") & 1) == 0)
  {
    v12 = NSErrorWithOSStatusF(4294960523, "Lacks admin ACL");
    v10 = 0;
    goto LABEL_21;
  }

  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    v12 = NSErrorWithOSStatusF(4294960596, "No profile data");
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v17[1] = 0;
  v11 = NSDataDecompress();
  v12 = 0;
  if (!v11)
  {
    goto LABEL_22;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v17[0] = v12;
  v14 = [mEMORY[0x1E69ADFB8] installProfileData:v11 options:0 outError:v17];
  v15 = v17[0];

  if (!v14)
  {
    if (v15)
    {
      v16 = 0;
      v14 = 0;
LABEL_11:
      if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
      {
        [SFSystemService _handleProfileInstallForSession:v15 request:? responseHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, v15, 0, 0);

      goto LABEL_27;
    }

    v12 = NSErrorWithOSStatusF(4294960596, "Install profile failed");
LABEL_22:
    v14 = 0;
    v16 = 0;
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:v14 forKeyedSubscript:@"id"];
  v12 = v15;
  if (v15)
  {
LABEL_10:
    v15 = v12;
    goto LABEL_11;
  }

LABEL_23:
  if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleProfileInstallForSession:v14 request:? responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);
LABEL_27:
}

- (void)_handleProfileRemoveForSession:(id)session request:(id)request responseHandler:(id)handler
{
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleProfileRemoveForSession:requestCopy request:? responseHandler:?];
  }

  if ([sessionCopy sessionFlags] & 0x40) != 0 || (objc_msgSend(sessionCopy, "pairingContainsACL:", @"com.apple.admin"))
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = v10;
      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      [mEMORY[0x1E69ADFB8] removeProfileWithIdentifier:v11];

      goto LABEL_8;
    }

    NSErrorWithOSStatusF(4294960596, "No profile ID");
  }

  else
  {
    NSErrorWithOSStatusF(4294960523, "Lacks admin ACL");
  }
  v11 = ;
  if (!v11)
  {
LABEL_8:
    if (gLogCategory_SFSystemService <= 30 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
    {
      [SFSystemService _handleProfileRemoveForSession:v11 request:? responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
    goto LABEL_12;
  }

  if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    [SFSystemService _handleProfileRemoveForSession:v11 request:? responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, v11, 0, 0);
LABEL_12:
}

- (uint64_t)_handleProfilesGetForSession:(uint64_t)a1 request:(uint64_t *)a2 responseHandler:.cold.2(uint64_t a1, uint64_t *a2)
{
  v4 = NSErrorWithOSStatusF(4294960523, "Lacks admin ACL");
  *a2 = v4;
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  if (gLogCategory_SFSystemService <= 60 && (gLogCategory_SFSystemService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFSystemService, "[SFSystemService _handleProfilesGetForSession:request:responseHandler:]", 60, "### ProfilesGet failed: %{error}\n", v5);
  }

  (*(a1 + 16))(a1, v5, 0, 0);
  return 0;
}

@end