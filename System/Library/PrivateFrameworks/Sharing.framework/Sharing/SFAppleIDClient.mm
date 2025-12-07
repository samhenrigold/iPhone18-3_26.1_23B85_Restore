@interface SFAppleIDClient
- (SFAppleIDClient)init;
- (__SecIdentity)copyIdentityForAppleID:(id)d error:(id *)error;
- (id)myAccountWithError:(id *)error;
- (id)syncRemoteProxyWithError:(id *)error;
- (void)_altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)_copyCertificateForAppleID:(id)d withCompletion:(id)completion;
- (void)_copyIdentityForAppleID:(id)d withCompletion:(id)completion;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_myAccountWithCompletion:(id)completion;
- (void)_personInfoWithEmailOrPhone:(id)phone completion:(id)completion;
- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion;
- (void)authenticateAccountWithAppleID:(id)d password:(id)password completion:(id)completion;
- (void)copyCertificateForAppleID:(id)d withCompletion:(id)completion;
- (void)copyIdentityForAppleID:(id)d withCompletion:(id)completion;
- (void)dealloc;
- (void)ensureSyncXPCStarted;
- (void)invalidate;
- (void)myAccountWithCompletion:(id)completion;
- (void)personInfoWithEmailOrPhone:(id)phone completion:(id)completion;
- (void)requestWithInfo:(id)info completion:(id)completion;
- (void)statusInfoWithCompletion:(id)completion;
@end

@implementation SFAppleIDClient

- (SFAppleIDClient)init
{
  v6.receiver = self;
  v6.super_class = SFAppleIDClient;
  v2 = [(SFAppleIDClient *)&v6 init];
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
  if (self->_xpcCnx)
  {
    v6 = [SFProximityClient dealloc];
    [(SFAppleIDClient *)v6 invalidate];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v8.receiver = self;
    v8.super_class = SFAppleIDClient;
    [(SFAppleIDClient *)&v8 dealloc];
  }
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  syncXPCCnx = selfCopy->_syncXPCCnx;
  if (syncXPCCnx)
  {
    [(NSXPCConnection *)syncXPCCnx invalidate];
    v4 = selfCopy->_syncXPCCnx;
    selfCopy->_syncXPCCnx = 0;
  }

  objc_sync_exit(selfCopy);

  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFAppleIDClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  if (!self->_invalidateDone && gLogCategory_SFAppleIDClient <= 30 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
  {
    [SFAppleIDClient _invalidate];
  }

  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    [(NSXPCConnection *)xpcCnx invalidate];
    v4 = self->_xpcCnx;
    self->_xpcCnx = 0;

    xpcAuthCnx = self->_xpcAuthCnx;
    if (!xpcAuthCnx)
    {
      return;
    }

    goto LABEL_10;
  }

  xpcAuthCnx = self->_xpcAuthCnx;
  if (xpcAuthCnx)
  {
LABEL_10:
    [(NSXPCConnection *)xpcAuthCnx invalidate];
    v6 = self->_xpcAuthCnx;
    self->_xpcAuthCnx = 0;

    return;
  }

  [(SFAppleIDClient *)self _invalidated];
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__SFAppleIDClient__ensureXPCStarted__block_invoke;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SFAppleIDClient__ensureXPCStarted__block_invoke_2;
    v6[3] = &unk_1E788B198;
    v6[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v6];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE780];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFAppleIDClient <= 10 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient _ensureXPCStarted];
    }
  }
}

- (void)ensureSyncXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_syncXPCCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    syncXPCCnx = selfCopy->_syncXPCCnx;
    selfCopy->_syncXPCCnx = v3;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke;
    v7[3] = &unk_1E788B198;
    v7[4] = selfCopy;
    [(NSXPCConnection *)selfCopy->_syncXPCCnx setInterruptionHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_3;
    v6[3] = &unk_1E788B198;
    v6[4] = selfCopy;
    [(NSXPCConnection *)selfCopy->_syncXPCCnx setInvalidationHandler:v6];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE780];
    [(NSXPCConnection *)selfCopy->_syncXPCCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)selfCopy->_syncXPCCnx resume];
    if (gLogCategory_SFAppleIDClient <= 10 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAppleIDClient, "[SFAppleIDClient ensureSyncXPCStarted]", 10, "Sync XPC started\n");
    }
  }

  objc_sync_exit(selfCopy);
}

void __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_2;
  block[3] = &unk_1E788B198;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFAppleIDClient_ensureSyncXPCStarted__block_invoke_4;
  block[3] = &unk_1E788B198;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFAppleIDClient <= 50)
  {
    if (gLogCategory_SFAppleIDClient != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFAppleIDClient *)v3 _interrupted];
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v7 = *(interruptionHandler + 2);

    v7();
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFAppleIDClient <= 50)
    {
      if (gLogCategory_SFAppleIDClient != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFAppleIDClient *)v3 _invalidated];
      }
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    xpcAuthCnx = self->_xpcAuthCnx;
    self->_xpcAuthCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFAppleIDClient <= 10 && (gLogCategory_SFAppleIDClient != -1 || _LogCategory_Initialize()))
    {
      [SFAppleIDClient _invalidated];
    }
  }
}

- (id)syncRemoteProxyWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  syncXPCCnx = selfCopy->_syncXPCCnx;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFAppleIDClient_syncRemoteProxyWithError___block_invoke;
  v8[3] = &unk_1E788C320;
  v8[4] = &v9;
  v6 = [(NSXPCConnection *)syncXPCCnx synchronousRemoteObjectProxyWithErrorHandler:v8];
  objc_sync_exit(selfCopy);

  if (error && !v6)
  {
    *error = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)copyCertificateForAppleID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFAppleIDClient_copyCertificateForAppleID_withCompletion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_copyCertificateForAppleID:(id)d withCompletion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/copyCertificateForAppleID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dCopy && completionCopy)
  {
    [(SFAppleIDClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke;
    v20[3] = &unk_1E788B6D8;
    v10 = completionCopy;
    v21 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2;
    v18[3] = &unk_1E788C348;
    v19 = v10;
    [v11 accountForAppleID:dCopy withCompletion:v18];

    v12 = v21;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    v13 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v14;
    v15 = @"?";
    if (v14)
    {
      v15 = v14;
    }

    v24[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-6705 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }

LABEL_5:
  os_activity_scope_leave(&state);
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    v9 = v6;
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v7 = [v5 identity];

      if (v7)
      {
        v8 = [v5 identity];
        v7 = [v8 copyCertificate];

        if (v7)
        {
          v9 = 0;
          goto LABEL_6;
        }

        __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_1();
      }

      else
      {
        __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_2();
      }
    }

    else
    {
      __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3();
      v7 = 0;
    }

    v9 = v11;
  }

LABEL_6:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }
}

- (void)copyIdentityForAppleID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = completionCopy;
  if (gSDAppleIDAgent)
  {
    if (gLogCategory_SFAppleIDClient <= 90)
    {
      if (gLogCategory_SFAppleIDClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [(SFAppleIDClient *)completionCopy copyIdentityForAppleID:v8 withCompletion:v9];
      }
    }

    v11 = [gSDAppleIDAgent copyIdentityForAppleID:dCopy];
    if (v11)
    {
      v10[2](v10, v11, 0);
    }

    else
    {
      v13 = NSErrorF();
      (v10)[2](v10, 0, v13);
    }
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SFAppleIDClient_copyIdentityForAppleID_withCompletion___block_invoke;
    block[3] = &unk_1E788A570;
    block[4] = self;
    v15 = dCopy;
    v16 = v10;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_copyIdentityForAppleID:(id)d withCompletion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/copyIdentityForAppleID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dCopy && completionCopy)
  {
    [(SFAppleIDClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__SFAppleIDClient__copyIdentityForAppleID_withCompletion___block_invoke;
    v20[3] = &unk_1E788B6D8;
    v10 = completionCopy;
    v21 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__SFAppleIDClient__copyIdentityForAppleID_withCompletion___block_invoke_2;
    v18[3] = &unk_1E788C348;
    v19 = v10;
    [v11 accountForAppleID:dCopy withCompletion:v18];

    v12 = v21;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    v13 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v14;
    v15 = @"?";
    if (v14)
    {
      v15 = v14;
    }

    v24[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-6705 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }

LABEL_5:
  os_activity_scope_leave(&state);
}

void __58__SFAppleIDClient__copyIdentityForAppleID_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    v9 = v6;
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v7 = [v5 identity];

      if (v7)
      {
        v8 = [v5 identity];
        v7 = [v8 copyIdentity];

        if (v7)
        {
          v9 = 0;
          goto LABEL_6;
        }
      }

      __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_2();
    }

    else
    {
      __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3();
      v7 = 0;
    }

    v9 = v11;
  }

LABEL_6:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v9);
  }
}

- (__SecIdentity)copyIdentityForAppleID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!dCopy)
  {
    goto LABEL_4;
  }

  if (!gSDAppleIDAgent)
  {
    [(SFAppleIDClient *)self ensureSyncXPCStarted];
    v10 = v20;
    obj = v20[5];
    v9 = [(SFAppleIDClient *)self syncRemoteProxyWithError:&obj];
    objc_storeStrong(v10 + 5, obj);
    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke;
      v13[3] = &unk_1E788C370;
      v13[4] = &v19;
      v13[5] = &v15;
      [v9 accountForAppleID:dCopy withCompletion:v13];
    }

    goto LABEL_7;
  }

  v7 = [gSDAppleIDAgent copyIdentityForAppleID:dCopy];
  v16[3] = v7;
  if (!v7)
  {
LABEL_4:
    v8 = NSErrorF();
    v9 = v20[5];
    v20[5] = v8;
LABEL_7:
  }

  v11 = v16[3];
  if (error && !v11)
  {
    *error = v20[5];
    v11 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else if (v5)
  {
    v7 = [v5 identity];

    if (!v7 || ([v5 identity], v8 = objc_claimAutoreleasedReturnValue(), *(*(*(a1 + 40) + 8) + 24) = objc_msgSend(v8, "copyIdentity"), v8, !*(*(*(a1 + 40) + 8) + 24)))
    {
      __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_1();
    }
  }

  else
  {
    __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_3();
  }
}

- (void)myAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gSDAppleIDAgent)
  {
    if (gLogCategory_SFAppleIDClient <= 90)
    {
      if (gLogCategory_SFAppleIDClient != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
      {
        [(SFAppleIDClient *)completionCopy myAccountWithCompletion:v5, v6];
      }
    }

    myAccount = [gSDAppleIDAgent myAccount];
    if (myAccount)
    {
      (v7)[2](v7, myAccount, 0);
    }

    else
    {
      v10 = NSErrorF();
      (v7)[2](v7, 0, v10);
    }
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__SFAppleIDClient_myAccountWithCompletion___block_invoke;
    v11[3] = &unk_1E788B210;
    v11[4] = self;
    v12 = completionCopy;
    dispatch_async(dispatchQueue, v11);
  }
}

- (void)_myAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/myAccountWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (completionCopy)
  {
    [(SFAppleIDClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__SFAppleIDClient__myAccountWithCompletion___block_invoke;
    v11[3] = &unk_1E788B6D8;
    v7 = completionCopy;
    v12 = v7;
    v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__SFAppleIDClient__myAccountWithCompletion___block_invoke_2;
    v9[3] = &unk_1E788C348;
    v10 = v7;
    [v8 myAccountWithCompletion:v9];
  }

  os_activity_scope_leave(&state);
}

void __44__SFAppleIDClient__myAccountWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code])
  {
    v7 = v6;
  }

  else if (v5)
  {
    v7 = 0;
  }

  else
  {
    __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3();
    v7 = v9;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v7);
  }
}

- (id)myAccountWithError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  if (!gSDAppleIDAgent)
  {
    [(SFAppleIDClient *)self ensureSyncXPCStarted];
    v9 = v22;
    obj = v22[5];
    v8 = [(SFAppleIDClient *)self syncRemoteProxyWithError:&obj];
    objc_storeStrong(v9 + 5, obj);
    if (v8)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __38__SFAppleIDClient_myAccountWithError___block_invoke;
      v13[3] = &unk_1E788C370;
      v13[4] = &v21;
      v13[5] = &v15;
      [v8 myAccountWithCompletion:v13];
    }

    goto LABEL_6;
  }

  myAccount = [gSDAppleIDAgent myAccount];
  v6 = v16[5];
  v16[5] = myAccount;

  if (!v16[5])
  {
    v7 = NSErrorF();
    v8 = v22[5];
    v22[5] = v7;
LABEL_6:
  }

  v10 = v16[5];
  if (error && !v10)
  {
    *error = v22[5];
    v10 = v16[5];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __38__SFAppleIDClient_myAccountWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ([v7 code])
  {
    v8 = (*(*(a1 + 32) + 8) + 40);
    v9 = a3;
  }

  else
  {
    if (!v6)
    {
      __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_3();
      goto LABEL_5;
    }

    v8 = (*(*(a1 + 40) + 8) + 40);
    v9 = a2;
  }

  objc_storeStrong(v8, v9);
LABEL_5:
}

- (void)personInfoWithEmailOrPhone:(id)phone completion:(id)completion
{
  phoneCopy = phone;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SFAppleIDClient_personInfoWithEmailOrPhone_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = phoneCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = phoneCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_personInfoWithEmailOrPhone:(id)phone completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  phoneCopy = phone;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/personInfoWithEmailOrPhone", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (completionCopy)
  {
    if (phoneCopy)
    {
      [(SFAppleIDClient *)self _ensureXPCStarted];
      xpcCnx = self->_xpcCnx;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58__SFAppleIDClient__personInfoWithEmailOrPhone_completion___block_invoke;
      v20[3] = &unk_1E788B6D8;
      v10 = completionCopy;
      v21 = v10;
      v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v20];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__SFAppleIDClient__personInfoWithEmailOrPhone_completion___block_invoke_2;
      v18[3] = &unk_1E788C398;
      v18[4] = self;
      v19 = v10;
      [v11 personInfoWithEmailOrPhone:phoneCopy completion:v18];

      v12 = v21;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v12 = v14;
      v15 = @"?";
      if (v14)
      {
        v15 = v14;
      }

      v24[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v17 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-6705 userInfo:v16];
      (*(completionCopy + 2))(completionCopy, 0, v17);
    }
  }

  os_activity_scope_leave(&state);
}

void __58__SFAppleIDClient__personInfoWithEmailOrPhone_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if ([v5 code])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v6);
  }
}

- (void)altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  emailsCopy = emails;
  numbersCopy = numbers;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__SFAppleIDClient_altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = emailsCopy;
  v17 = numbersCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = numbersCopy;
  v14 = emailsCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_altDSIDLookupWithEmails:(id)emails phoneNumbers:(id)numbers completion:(id)completion
{
  emailsCopy = emails;
  numbersCopy = numbers;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/altDSIDLookupWithEmailsAndPhoneNumbers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__SFAppleIDClient__altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = emailsCopy;
  v18 = numbersCopy;
  v19 = completionCopy;
  v13 = numbersCopy;
  v14 = emailsCopy;
  v15 = completionCopy;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __68__SFAppleIDClient__altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SFAppleIDClient__altDSIDLookupWithEmails_phoneNumbers_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 altDSIDLookupWithEmails:*(a1 + 40) phoneNumbers:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)authenticateAccountWithAppleID:(id)d password:(id)password completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SFAppleIDClient_authenticateAccountWithAppleID_password_completion___block_invoke;
  v15[3] = &unk_1E788C3C0;
  v15[4] = self;
  v16 = dCopy;
  v17 = passwordCopy;
  v18 = completionCopy;
  v12 = passwordCopy;
  v13 = dCopy;
  v14 = completionCopy;
  dispatch_async(dispatchQueue, v15);
}

void __70__SFAppleIDClient_authenticateAccountWithAppleID_password_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureAuthXPCStarted];
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__SFAppleIDClient_authenticateAccountWithAppleID_password_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 authenticateAccountWithAppleID:*(a1 + 40) password:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)requestWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/requestWithInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFAppleIDClient_requestWithInfo_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = infoCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = infoCopy;
  v11 = completionCopy;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __46__SFAppleIDClient_requestWithInfo_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SFAppleIDClient_requestWithInfo_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 requestWithInfo:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)statusInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFAppleIDClient/statusInfoWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFAppleIDClient_statusInfoWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __44__SFAppleIDClient_statusInfoWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFAppleIDClient_statusInfoWithCompletion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 statusInfoWithCompletion:*(a1 + 40)];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  *v1 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7(0x11F3u);
  v2 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v2, @"?");
  OUTLINED_FUNCTION_5_1();
  v4 = [v3 dictionaryWithObjects:? forKeys:? count:?];
  *v0 = [OUTLINED_FUNCTION_8_0() errorWithDomain:? code:? userInfo:?];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_4_5();
  *v2 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7(0x11F5u);
  v3 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v3, @"?");
  OUTLINED_FUNCTION_5_1();
  [v4 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  *v0 = [OUTLINED_FUNCTION_3_4() errorWithDomain:? code:? userInfo:?];
}

void __61__SFAppleIDClient__copyCertificateForAppleID_withCompletion___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_4_5();
  *v2 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7(0x11F2u);
  v3 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v3, @"?");
  OUTLINED_FUNCTION_5_1();
  [v4 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  *v0 = [OUTLINED_FUNCTION_2_6() errorWithDomain:? code:? userInfo:?];
}

void __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  *v1 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7(0x11F5u);
  v2 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v2, @"?");
  OUTLINED_FUNCTION_5_1();
  [v3 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_3_4() errorWithDomain:? code:? userInfo:?];
  OUTLINED_FUNCTION_10(v4);
}

void __48__SFAppleIDClient_copyIdentityForAppleID_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4_5();
  *v1 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_7(0x11F2u);
  v2 = [OUTLINED_FUNCTION_9() stringWithUTF8String:?];
  OUTLINED_FUNCTION_6_2(v2, @"?");
  OUTLINED_FUNCTION_5_1();
  [v3 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_2_6() errorWithDomain:? code:? userInfo:?];
  OUTLINED_FUNCTION_10(v4);
}

@end