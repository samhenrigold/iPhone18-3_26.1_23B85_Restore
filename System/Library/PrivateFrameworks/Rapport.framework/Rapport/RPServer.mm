@interface RPServer
- (RPServer)init;
- (RPServer)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithReactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)activate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setControlFlags:(unint64_t)flags;
- (void)setLabel:(id)label;
- (void)setPassword:(id)password;
- (void)setPasswordType:(int)type;
- (void)setServiceType:(id)type;
- (void)xpcServerAcceptSession:(id)session completion:(id)completion;
- (void)xpcServerHidePassword:(unsigned int)password;
- (void)xpcServerShowPassword:(id)password flags:(unsigned int)flags;
@end

@implementation RPServer

- (RPServer)init
{
  v6.receiver = self;
  v6.super_class = RPServer;
  v2 = [(RPServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPServer;
    v4 = v3;
  }

  return v3;
}

- (RPServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = RPServer;
  v5 = [(RPServer *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPServer;
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"devName"])
    {
      v6->_advertiseDeviceName = [v7 decodeBoolForKey:@"devName"];
    }

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v8 = v7;
    if ([v8 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v8 decodeInt64ForKey:@"cFl"];
    }

    v18 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_internalAuthFlags = v18;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    label = v6->_label;
    if (label)
    {
      v11 = qword_1EB979F88;
      v12 = label;
      LogCategoryReplaceF(&v6->_ucat, "%s-%s", v11, [(NSString *)v12 UTF8String]);
    }

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v18 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_passwordType = v18;
    }

    v13 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allowedMACAddresses = self->_allowedMACAddresses;
  v13 = coderCopy;
  if (allowedMACAddresses)
  {
    [coderCopy encodeObject:allowedMACAddresses forKey:@"MAcAddrs"];
    coderCopy = v13;
  }

  if (self->_advertiseDeviceName)
  {
    [v13 encodeBool:1 forKey:@"devName"];
    coderCopy = v13;
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    [v13 encodeInt64:controlFlags forKey:@"cFl"];
    coderCopy = v13;
  }

  internalAuthFlags = self->_internalAuthFlags;
  if (internalAuthFlags)
  {
    [v13 encodeInt64:internalAuthFlags forKey:@"iaf"];
    coderCopy = v13;
  }

  label = self->_label;
  if (label)
  {
    [v13 encodeObject:label forKey:@"label"];
    coderCopy = v13;
  }

  pairSetupACL = self->_pairSetupACL;
  if (pairSetupACL)
  {
    [v13 encodeObject:pairSetupACL forKey:@"acl"];
    coderCopy = v13;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [v13 encodeInteger:passwordType forKey:@"pwTy"];
    coderCopy = v13;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v13 encodeObject:serviceType forKey:@"st"];
    coderCopy = v13;
  }

  password = self->_password;
  if (password)
  {
    [v13 encodeObject:password forKey:@"pw"];
    coderCopy = v13;
  }
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
  v4.super_class = RPServer;
  [(RPServer *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v24 = 0;
  NSAppendPrintF(&v24, "RPServer: ST '%@'", *&level, self->_serviceType);
  v4 = v24;
  v5 = v4;
  allowedMACAddresses = self->_allowedMACAddresses;
  if (allowedMACAddresses)
  {
    v23 = v4;
    v7 = allowedMACAddresses;
    NSAppendPrintF(&v23, ", Number of MACAddrs %d", [(NSArray *)v7 count]);
    v8 = v23;

    v5 = v8;
  }

  if (self->_advertiseDeviceName)
  {
    v22 = v5;
    NSAppendPrintF(&v22, ", AdvName %s", "yes");
    v9 = v22;

    v5 = v9;
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    v21 = v5;
    NSAppendPrintF(&v21, ", CF %#ll{flags}", controlFlags, &unk_1B6F2ECC7);
    v11 = v21;

    v5 = v11;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    v20 = v5;
    if (passwordType > 0xB)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_1E7C94E88[passwordType - 1];
    }

    NSAppendPrintF(&v20, ", PWType %s", v13);
    v14 = v20;

    v5 = v14;
  }

  pairSetupACL = self->_pairSetupACL;
  if (pairSetupACL)
  {
    v19 = v5;
    v16 = pairSetupACL;
    NSAppendPrintF(&v19, ", PSACL %@", v16);
    v17 = v19;

    v5 = v17;
  }

  return v5;
}

- (void)setControlFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__RPServer_setControlFlags___block_invoke;
  v3[3] = &unk_1E7C94E40;
  v3[4] = self;
  v3[5] = flags;
  [(RPServer *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__RPServer_setControlFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 128);
  if (v1 != v3)
  {
    *(v2 + 128) = v1;
  }

  return v1 != v3;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB979F88;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)setPassword:(id)password
{
  v4 = [password copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__RPServer_setPassword___block_invoke;
  v6[3] = &unk_1E7C94CB0;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(RPServer *)self _updateIfNeededWithBlock:v6];
}

BOOL __24__RPServer_setPassword___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 72);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 72);
    *(v9 + 72) = v10;
    goto LABEL_8;
  }

  return 0;
}

- (void)setServiceType:(id)type
{
  v4 = [type copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__RPServer_setServiceType___block_invoke;
  v6[3] = &unk_1E7C94CB0;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(RPServer *)self _updateIfNeededWithBlock:v6];
}

BOOL __27__RPServer_setServiceType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 176);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 176);
    *(v9 + 176) = v10;
    goto LABEL_8;
  }

  return 0;
}

- (void)setPasswordType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__RPServer_setPasswordType___block_invoke;
  v3[3] = &unk_1E7C94280;
  typeCopy = type;
  v3[4] = self;
  [(RPServer *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__RPServer_setPasswordType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 44);
  if (v1 != v3)
  {
    *(v2 + 44) = v1;
  }

  return v1 != v3;
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activateCalled = selfCopy->_activateCalled;
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__RPServer_activate__block_invoke;
  v5[3] = &unk_1E7C94E68;
  v5[4] = selfCopy;
  v6 = activateCalled;
  dispatch_async(dispatchQueue, v5);
  objc_sync_exit(selfCopy);
}

int *__20__RPServer_activate__block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 10) == 1)
  {
    return __20__RPServer_activate__block_invoke_cold_2(v2, v3);
  }

  if (*(a1 + 40) == 1)
  {
    return __20__RPServer_activate__block_invoke_cold_1(v2, v3);
  }

  if (*(v2 + 80))
  {
    *(v2 + 52) |= 8u;
    v2 = *v3;
  }

  if (*(v2 + 88))
  {
    *(v2 + 52) |= 1u;
    v2 = *v3;
  }

  if (*(v2 + 96))
  {
    *(v2 + 52) |= 2u;
    v2 = *v3;
  }

  if (*(v2 + 104))
  {
    *(v2 + 52) |= 4u;
    v2 = *v3;
  }

  return [v2 _activateWithReactivate:0];
}

- (void)_activateWithReactivate:(BOOL)reactivate
{
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (reactivate)
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

      LogPrintF(ucat, "[RPServer _activateWithReactivate:]", 30, "Re-activate\n");
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPServer _activateWithReactivate:]", 30, "Activate\n");
  }

LABEL_11:
  [(RPServer *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__RPServer__activateWithReactivate___block_invoke;
  v11[3] = &unk_1E7C94CD8;
  reactivateCopy = reactivate;
  v11[4] = self;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__RPServer__activateWithReactivate___block_invoke_2;
  v9[3] = &unk_1E7C94CD8;
  reactivateCopy2 = reactivate;
  v9[4] = self;
  [v8 xpcServerActivate:self completion:v9];
}

void __36__RPServer__activateWithReactivate___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(a1 + 32) + 16);
  v4 = *v3;
  if (*(a1 + 40) == 1)
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    v5 = v9;
    if (v4 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(*(a1 + 32) + 16);
      v5 = v9;
LABEL_4:
      LogPrintF(v3, "[RPServer _activateWithReactivate:]_block_invoke", 90, "### Re-activate XPC error: %{error}\n", v5);
    }
  }

  else
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    v6 = v9;
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v3 = *(*(a1 + 32) + 16);
      v6 = v9;
    }

    LogPrintF(v3, "[RPServer _activateWithReactivate:]_block_invoke", 90, "### Activate XPC error: %{error}\n", v6);
  }

LABEL_12:
  v7 = _Block_copy(*(*(a1 + 32) + 144));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9);
  }
}

void __36__RPServer__activateWithReactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v5 = *v4;
  v8 = v3;
  if (!v3)
  {
    if (*(a1 + 40))
    {
      if (v5 > 30)
      {
        goto LABEL_22;
      }

      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v4 = *(*(a1 + 32) + 16);
      }

      LogPrintF(v4, "[RPServer _activateWithReactivate:]_block_invoke_2", 30, "Re-activated\n");
      goto LABEL_22;
    }

    if (v5 > 30)
    {
      goto LABEL_22;
    }

    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v4, "[RPServer _activateWithReactivate:]_block_invoke_2", 30, "Activated\n");
    goto LABEL_22;
  }

  if (*(a1 + 40))
  {
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v4 = *(*(a1 + 32) + 16);
      }

      LogPrintF(v4, "[RPServer _activateWithReactivate:]_block_invoke_2", 90, "### Re-activate failed: %{error}\n", v8);
    }
  }

  else if (v5 <= 90)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v4 = *(*(a1 + 32) + 16);
    }

    LogPrintF(v4, "[RPServer _activateWithReactivate:]_block_invoke_2", 90, "### Activate failed: %{error}\n", v8);
  }

LABEL_19:
  v6 = _Block_copy(*(*(a1 + 32) + 144));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8);
  }

LABEL_22:
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[11] = v2;
    v13[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.CompanionLink" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEF148];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __29__RPServer__ensureXPCStarted__block_invoke;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__RPServer__ensureXPCStarted__block_invoke_2;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v12];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED18];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[RPServer _ensureXPCStarted]", 10, "XPC started\n");
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }
}

uint64_t __29__RPServer__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 50)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPServer _interrupted]", 50, "### Interrupted\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_activateCalled)
  {
    [(RPServer *)self _activateWithReactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v5 = *(interruptionHandler + 2);

    v5();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__RPServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__22__RPServer_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 10))
  {
    return result;
  }

  v11 = v2;
  v12 = v1;
  v6 = result;
  *(v5 + 10) = 1;
  v7 = result[4];
  v8 = *(v7 + 16);
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

      v8 = *(v7 + 16);
    }

    LogPrintF(v8, "[RPServer invalidate]_block_invoke", 30, "Invalidating\n", v2, v12, v3);
    v7 = v6[4];
  }

LABEL_6:
  [*(v7 + 24) invalidate];
  v10 = v6[4];

  return [v10 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    acceptHandler = self->_acceptHandler;
    self->_acceptHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v7 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    showPasswordHandler = self->_showPasswordHandler;
    self->_showPasswordHandler = 0;

    hidePasswordHandler = self->_hidePasswordHandler;
    self->_hidePasswordHandler = 0;

    promptForPasswordHandler = self->_promptForPasswordHandler;
    self->_promptForPasswordHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPServer _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__RPServer__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (self->_invalidateCalled)
  {
    return;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  changesPending = selfCopy->_changesPending;
  selfCopy->_changesPending = 0;
  objc_sync_exit(selfCopy);

  ucat = selfCopy->_ucat;
  var0 = ucat->var0;
  if (!changesPending)
  {
    if (var0 > 10)
    {
      return;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucat = selfCopy->_ucat;
    }

    LogPrintF(ucat, "[RPServer _update]", 10, "Unchanged server: %@\n", selfCopy);
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

      ucat = selfCopy->_ucat;
    }

    LogPrintF(ucat, "[RPServer _update]", 30, "Update server: %@\n", selfCopy);
  }

LABEL_11:
  remoteObjectProxy = [(NSXPCConnection *)selfCopy->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy xpcServerUpdate:selfCopy];
}

- (void)xpcServerAcceptSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPServer xpcServerAcceptSession:completion:]", 30, "Accept session: %@\n", sessionCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = _Block_copy(self->_acceptHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, sessionCopy, completionCopy);
  }
}

- (void)xpcServerShowPassword:(id)password flags:(unsigned int)flags
{
  v4 = *&flags;
  passwordCopy = password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPServer xpcServerShowPassword:flags:]", 30, "Show password: %#{flags}\n", v4, &unk_1B6F2EF4C);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = _Block_copy(self->_showPasswordHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v4, passwordCopy);
  }
}

- (void)xpcServerHidePassword:(unsigned int)password
{
  v3 = *&password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPServer xpcServerHidePassword:]", 30, "Hide password: %#{flags}\n", v3, &unk_1B6F2EF4C);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = _Block_copy(self->_hidePasswordHandler);
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))(v6, v3);
    v6 = v7;
  }
}

int *__20__RPServer_activate__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*result <= 30)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(*a2 + 16);
    }

    return LogPrintF(result, "[RPServer activate]_block_invoke", 30, "Activate when already activated\n");
  }

  return result;
}

int *__20__RPServer_activate__block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*result <= 115)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      result = *(*a2 + 16);
    }

    return LogPrintF(result, "[RPServer activate]_block_invoke", 115, "### Activate after invalidate\n");
  }

  return result;
}

@end