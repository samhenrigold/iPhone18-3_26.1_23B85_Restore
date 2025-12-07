@interface RPDiscovery
- (BOOL)_ensureXPCStarted;
- (NSArray)discoveredEndpoints;
- (RPDiscovery)init;
- (RPDiscovery)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllEndpoints;
- (void)_scheduleRetry;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setLabel:(id)label;
- (void)xpcDiscoveryChangedEndpoint:(id)endpoint;
- (void)xpcDiscoveryFoundEndpoint:(id)endpoint;
- (void)xpcDiscoveryLostEndpoint:(id)endpoint;
@end

@implementation RPDiscovery

- (RPDiscovery)init
{
  v6.receiver = self;
  v6.super_class = RPDiscovery;
  v2 = [(RPDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPDiscovery;
    v4 = v3;
  }

  return v3;
}

- (RPDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = RPDiscovery;
  v5 = [(RPDiscovery *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPDiscovery;
    v16 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_changeFlags = v16;
    }

    v7 = coderCopy;
    if ([v7 containsValueForKey:@"ctlF"])
    {
      v6->_controlFlags = [v7 decodeInt64ForKey:@"ctlF"];
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    label = v6->_label;
    if (label)
    {
      v10 = qword_1EB97A928;
      v11 = label;
      LogCategoryReplaceF(&v6->_ucat, "%s-%s", v10, [(NSString *)v11 UTF8String]);
    }

    v12 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  changeFlags = self->_changeFlags;
  v9 = coderCopy;
  if (changeFlags)
  {
    [coderCopy encodeInt64:changeFlags forKey:@"chgF"];
    coderCopy = v9;
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    [v9 encodeInt64:controlFlags forKey:@"ctlF"];
    coderCopy = v9;
  }

  label = self->_label;
  if (label)
  {
    [v9 encodeObject:label forKey:@"label"];
    coderCopy = v9;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v9 encodeObject:serviceType forKey:@"st"];
    coderCopy = v9;
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
  v4.super_class = RPDiscovery;
  [(RPDiscovery *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v15 = 0;
  NSAppendPrintF(&v15, "RPDiscovery: ST '%@', CtlF %#ll{flags} ChgF %#{flags}", self->_serviceType, self->_controlFlags, &unk_1B6F2D8D6, self->_changeFlags, &unk_1B6F2DB5B);
  objc_storeStrong(&v21, v15);
  if (level <= 30)
  {
    v5 = v17;
    obj = v17[5];
    NSAppendPrintF(&obj, ", %d endpoints", [(NSMutableDictionary *)self->_endpointMap count]);
    objc_storeStrong(v5 + 5, obj);
    if (level <= 20)
    {
      v6 = v17;
      v13 = v17[5];
      NSAppendPrintF(&v13, "\n");
      objc_storeStrong(v6 + 5, v13);
      if (level >= 11)
      {
        v7 = 50;
      }

      else
      {
        v7 = 30;
      }

      endpointMap = self->_endpointMap;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36__RPDiscovery_descriptionWithLevel___block_invoke;
      v11[3] = &unk_1E7C93A58;
      v11[4] = &v16;
      v12 = v7;
      [(NSMutableDictionary *)endpointMap enumerateKeysAndObjectsUsingBlock:v11];
    }
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __36__RPDiscovery_descriptionWithLevel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = CUDescriptionWithLevel();
  NSAppendPrintF(&obj, "    %@\n", v4);
  objc_storeStrong((v3 + 40), obj);
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB97A928;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activateCalled = selfCopy->_activateCalled;
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__RPDiscovery_activateWithCompletion___block_invoke;
  block[3] = &unk_1E7C92F60;
  block[4] = selfCopy;
  v10 = completionCopy;
  v11 = activateCalled;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_sync_exit(selfCopy);
}

void __38__RPDiscovery_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 24) == 1)
  {
    v10 = RPErrorF(4294896148, "Activate after invalidate", a3, a4, a5, a6, a7, a8, v18);
    v11 = *(*(a1 + 32) + 40);
    v19 = v10;
    if (*v11 <= 115)
    {
      if (*v11 == -1)
      {
        v14 = _LogCategory_Initialize();
        v10 = v19;
        if (!v14)
        {
          goto LABEL_13;
        }

        v11 = *(*(a1 + 32) + 40);
      }

      LogPrintF(v11, "[RPDiscovery activateWithCompletion:]_block_invoke", 115, "### Activate failed: %{error}\n", v10);
      v10 = v19;
    }

LABEL_13:
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v19);
      v10 = v19;
    }

    return;
  }

  if (*(a1 + 48) == 1)
  {
    v12 = *(v9 + 40);
    if (*v12 > 30)
    {
      goto LABEL_19;
    }

    if (*v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_19:
        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = *(v16 + 16);

          v17();
        }

        return;
      }

      v12 = *(*(a1 + 32) + 40);
    }

    LogPrintF(v12, "[RPDiscovery activateWithCompletion:]_block_invoke", 30, "Activate when already activated\n");
    goto LABEL_19;
  }

  v13 = *(a1 + 40);

  [v9 _activateWithCompletion:v13 reactivate:{0, a5, a6, a7, a8}];
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!reactivateCopy)
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
    }

    LogPrintF(ucat, "[RPDiscovery _activateWithCompletion:reactivate:]", 30, "Activate %s\n");
    goto LABEL_11;
  }

  if (var0 > 30)
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
LABEL_4:
    LogPrintF(ucat, "[RPDiscovery _activateWithCompletion:reactivate:]", 30, "Re-activate %s\n");
  }

LABEL_11:
  if ([(RPDiscovery *)self _ensureXPCStarted])
  {
    xpcCnx = self->_xpcCnx;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke;
    v15[3] = &unk_1E7C93500;
    v17 = reactivateCopy;
    v15[4] = self;
    v10 = completionCopy;
    v16 = v10;
    v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke_2;
    v12[3] = &unk_1E7C93528;
    v14 = reactivateCopy;
    v12[4] = self;
    v13 = v10;
    [v11 xpcDiscoveryActivate:self completion:v12];
  }

  else
  {
    [(RPDiscovery *)self _scheduleRetry];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 32) + 40);
  v4 = *v3;
  if (*(a1 + 48) == 1)
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    if (v4 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(*(a1 + 32) + 40);
LABEL_4:
      LogPrintF(v3, "[RPDiscovery _activateWithCompletion:reactivate:]_block_invoke", 90, "### Re-activate XPC error: %{error}\n", v6);
    }
  }

  else
  {
    if (v4 > 90)
    {
      goto LABEL_12;
    }

    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v3 = *(*(a1 + 32) + 40);
    }

    LogPrintF(v3, "[RPDiscovery _activateWithCompletion:reactivate:]_block_invoke", 90, "### Activate XPC error: %{error}\n", v6);
  }

LABEL_12:
  [*(a1 + 32) _scheduleRetry];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v11)
    {
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = *(*(a1 + 32) + 16);
          if (!v15)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v17 = *(a1 + 32);
            v18 = *(v17 + 16);
            *(v17 + 16) = v16;

            v15 = *(*(a1 + 32) + 16);
          }

          v19 = [v14 identifier];
          [v15 setObject:v14 forKeyedSubscript:v19];
        }

        v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    objc_sync_exit(v9);
    v20 = *(*(a1 + 32) + 40);
    v21 = *v20;
    if (*(a1 + 48) == 1)
    {
      if (v21 <= 30)
      {
        if (v21 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          v20 = *(*(a1 + 32) + 40);
        }

        LogPrintF(v20, "-[RPDiscovery _activateWithCompletion:reactivate:]_block_invoke_2", 30, "Re-activated: %d existing\n", [v10 count]);
      }
    }

    else if (v21 <= 30)
    {
      if (v21 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v20 = *(*(a1 + 32) + 40);
      }

      LogPrintF(v20, "-[RPDiscovery _activateWithCompletion:reactivate:]_block_invoke_2", 30, "Activated: %d existing\n", [v10 count]);
    }

LABEL_38:
    v25 = *(a1 + 40);
    if (v25)
    {
      (*(v25 + 16))(v25, 0);
    }

    v26 = _Block_copy(*(*(a1 + 32) + 104));
    if (v26)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v27 = v10;
      v28 = [v27 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v28)
      {
        v29 = *v32;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v32 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v26[2](v26, *(*(&v31 + 1) + 8 * j));
          }

          v28 = [v27 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v28);
      }
    }

    v6 = 0;
    goto LABEL_50;
  }

  v7 = *(*(a1 + 32) + 40);
  v8 = *v7;
  if (*(a1 + 48) == 1)
  {
    if (v8 > 90)
    {
      goto LABEL_29;
    }

    if (v8 != -1)
    {
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v7 = *(*(a1 + 32) + 40);
LABEL_5:
      LogPrintF(v7, "[RPDiscovery _activateWithCompletion:reactivate:]_block_invoke_2", 90, "### Re-activate failed: %{error}\n", v6);
    }
  }

  else
  {
    if (v8 > 90)
    {
      goto LABEL_29;
    }

    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v7 = *(*(a1 + 32) + 40);
    }

    LogPrintF(v7, "[RPDiscovery _activateWithCompletion:reactivate:]_block_invoke_2", 90, "### Activate failed: %{error}\n", v6);
  }

LABEL_29:
  if ([v6 code] == -71168)
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = *(v22 + 16);
LABEL_34:
      v23();
    }
  }

  else
  {
    [*(a1 + 32) _scheduleRetry];
    v24 = *(a1 + 40);
    if (v24)
    {
      v23 = *(v24 + 16);
      goto LABEL_34;
    }
  }

LABEL_50:
}

- (BOOL)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED18];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_xpcDiscoveryActivate_completion_ argumentIndex:0 ofReply:1];

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.CompanionLink" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEF148];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__RPDiscovery__ensureXPCStarted__block_invoke;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__RPDiscovery__ensureXPCStarted__block_invoke_2;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_xpcCnx resume];
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPDiscovery _ensureXPCStarted]", 10, "XPC started\n");
    }

LABEL_6:
  }

  return 1;
}

uint64_t __32__RPDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v6 = *v5;
  if (*(v4 + 24) == 1)
  {
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        v7 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v7)
        {
          goto LABEL_9;
        }

        v5 = *(v4 + 40);
      }

      LogPrintF(v5, "[RPDiscovery _ensureXPCStarted]_block_invoke_2", 30, "XPC invalidated\n");
      v4 = *(a1 + 32);
    }

LABEL_9:

    return [v4 _invalidated];
  }

  if (v6 <= 90)
  {
    if (v6 == -1)
    {
      v9 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_13;
      }

      v5 = *(v4 + 40);
    }

    LogPrintF(v5, "[RPDiscovery _ensureXPCStarted]_block_invoke_2", 90, "### XPC invalidated...will retry\n");
    v4 = *(a1 + 32);
  }

LABEL_13:

  return [v4 _scheduleRetry];
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
      LogPrintF(ucat, "[RPDiscovery _interrupted]", 50, "### Interrupted\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(RPDiscovery *)self _lostAllEndpoints];
  if (self->_activateCalled)
  {
    [(RPDiscovery *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __25__RPDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__25__RPDiscovery_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 24))
  {
    return result;
  }

  v15 = v2;
  v16 = v1;
  v6 = result;
  *(v5 + 24) = 1;
  v7 = result[4];
  v8 = *(v7 + 40);
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

      v8 = *(v7 + 40);
    }

    LogPrintF(v8, "[RPDiscovery invalidate]_block_invoke", 30, "Invalidating\n", v2, v16, v3);
    v7 = v6[4];
  }

LABEL_6:
  v10 = *(v7 + 32);
  if (v10)
  {
    v11 = v10;
    dispatch_source_cancel(v11);
    v12 = v6[4];
    v13 = *(v12 + 32);
    *(v12 + 32) = 0;
  }

  [*(v6[4] + 48) invalidate];
  v14 = v6[4];

  return [v14 _invalidated];
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

    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v5 = retryTimer;
      dispatch_source_cancel(v5);
      v6 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    foundHandler = self->_foundHandler;
    self->_foundHandler = 0;

    lostHandler = self->_lostHandler;
    self->_lostHandler = 0;

    changedHandler = self->_changedHandler;
    self->_changedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v11 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

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

      LogPrintF(ucat, "[RPDiscovery _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)_scheduleRetry
{
  if (!self->_invalidateCalled && !self->_retryTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v3;

    v5 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__RPDiscovery__scheduleRetry__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
  }
}

_BYTE *__29__RPDiscovery__scheduleRetry__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[RPDiscovery _scheduleRetry]_block_invoke", 30, "Retry timer fired\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = *(v2 + 40);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = v5;
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }

  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {

    return [result _activateWithCompletion:0 reactivate:1];
  }

  return result;
}

- (NSArray)discoveredEndpoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  if (endpointMap)
  {
    allValues = [(NSMutableDictionary *)endpointMap allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)_lostAllEndpoints
{
  v17 = *MEMORY[0x1E69E9840];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPDiscovery _lostAllEndpoints]", 30, "Removing all endpoints\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = _Block_copy(self->_lostHandler);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  if (v4)
  {
    allValues = [(NSMutableDictionary *)endpointMap allValues];
    [(NSMutableDictionary *)selfCopy->_endpointMap removeAllObjects];
    objc_sync_exit(selfCopy);

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = allValues;
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v4[2](v4, *(*(&v12 + 1) + 8 * i));
        }

        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(NSMutableDictionary *)endpointMap removeAllObjects];
    objc_sync_exit(selfCopy);
  }
}

- (void)xpcDiscoveryFoundEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = endpointCopy;
  endpointMap = selfCopy->_endpointMap;
  if (!endpointMap)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = selfCopy->_endpointMap;
    selfCopy->_endpointMap = v7;

    endpointMap = selfCopy->_endpointMap;
    v5 = endpointCopy;
  }

  identifier = [v5 identifier];
  [(NSMutableDictionary *)endpointMap setObject:endpointCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
  v10 = _Block_copy(selfCopy->_foundHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, endpointCopy);
  }
}

- (void)xpcDiscoveryLostEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  identifier = [endpointCopy identifier];
  [(NSMutableDictionary *)endpointMap setObject:0 forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
  v7 = _Block_copy(selfCopy->_lostHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, endpointCopy);
  }
}

- (void)xpcDiscoveryChangedEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  identifier = [endpointCopy identifier];
  [(NSMutableDictionary *)endpointMap setObject:endpointCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
  v7 = _Block_copy(selfCopy->_changedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, endpointCopy);
  }
}

@end