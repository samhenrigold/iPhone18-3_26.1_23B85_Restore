@interface BTAudioRoutingRequest
- (BTAudioRoutingRequest)init;
- (BTAudioRoutingRequest)initWithCoder:(id)coder;
- (id)_activateSync;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate;
- (void)_handleServerDied;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activate;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)updateAudioState:(id)state withState:(unsigned int)withState;
@end

@implementation BTAudioRoutingRequest

- (BTAudioRoutingRequest)init
{
  v5.receiver = self;
  v5.super_class = BTAudioRoutingRequest;
  v2 = [(BTAudioRoutingRequest *)&v5 init];
  if (v2)
  {
    v2->_clientID = BTXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3 = v2;
  }

  return v2;
}

- (BTAudioRoutingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BTAudioRoutingRequest *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_audioScore = 0;
    }

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = 0;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  audioScore = self->_audioScore;
  v11 = coderCopy;
  if (audioScore)
  {
    [coderCopy encodeInteger:audioScore forKey:@"auSc"];
    coderCopy = v11;
  }

  appBundleID = self->_appBundleID;
  if (appBundleID)
  {
    [v11 encodeObject:appBundleID forKey:@"aid"];
    coderCopy = v11;
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [v11 encodeInt64:clientID forKey:@"cid"];
    coderCopy = v11;
  }

  deviceAddress = self->_deviceAddress;
  if (deviceAddress)
  {
    [v11 encodeObject:deviceAddress forKey:@"dAdr"];
    coderCopy = v11;
  }

  flags = self->_flags;
  if (flags)
  {
    [v11 encodeInt64:flags forKey:@"flgs"];
    coderCopy = v11;
  }

  options = self->_options;
  if (options)
  {
    [v11 encodeObject:options forKey:@"opts"];
    coderCopy = v11;
  }
}

- (id)description
{
  v4 = 0;
  NSAppendPrintF(&v4, "BTAudioRoutingRequest, CID 0x%X, auSc %d, dAdr %@, flags %#{flags}", self->_clientID, self->_audioScore, self->_deviceAddress, self->_flags, &unk_241BF7940);
  v2 = v4;

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BTAudioRoutingRequest_activate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_BTAudioRoutingRequest <= 30 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
  {
    [(BTAudioRoutingRequest *)self _activate];
  }

  _ensureXPCStarted = [(BTAudioRoutingRequest *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    [(BTAudioRoutingRequest *)self _reportError:_ensureXPCStarted];
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__BTAudioRoutingRequest__activate__block_invoke;
    v7[3] = &unk_278D11970;
    v7[4] = self;
    v5 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__BTAudioRoutingRequest__activate__block_invoke_2;
    v6[3] = &unk_278D11998;
    v6[4] = self;
    [v5 audioRoutingRequest:self responseHandler:v6];
  }
}

void __34__BTAudioRoutingRequest__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_BTAudioRoutingRequest <= 90)
  {
    if (gLogCategory_BTAudioRoutingRequest != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __34__BTAudioRoutingRequest__activate__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __34__BTAudioRoutingRequest__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];
  if (v3)
  {
    if (gLogCategory_BTAudioRoutingRequest <= 90 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
    {
      __34__BTAudioRoutingRequest__activate__block_invoke_2_cold_1(v3);
    }

    [*(a1 + 32) _reportError:v3];
  }

  else
  {
    if (gLogCategory_BTAudioRoutingRequest <= 30 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
    {
      __34__BTAudioRoutingRequest__activate__block_invoke_2_cold_2(v7);
    }

    v4 = MEMORY[0x245CFACE0](*(*(a1 + 32) + 80));
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 80);
      *(v5 + 80) = 0;

      (v4)[2](v4, v7);
    }
  }
}

- (id)_activateSync
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  if (gLogCategory_BTAudioRoutingRequest <= 30 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_BTAudioRoutingRequest, "[BTAudioRoutingRequest _activateSync]", 30, "Activate, CID 0x%X", self->_clientID);
  }

  _ensureXPCStarted = [(BTAudioRoutingRequest *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    [(BTAudioRoutingRequest *)self _reportError:_ensureXPCStarted];
    v4 = 0;
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__BTAudioRoutingRequest__activateSync__block_invoke;
    v9[3] = &unk_278D11970;
    v9[4] = self;
    v6 = [(NSXPCConnection *)xpcCnx synchronousRemoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__BTAudioRoutingRequest__activateSync__block_invoke_2;
    v8[3] = &unk_278D119C0;
    v8[4] = self;
    v8[5] = &v10;
    [v6 audioRoutingRequest:self responseHandler:v8];

    v4 = v11[5];
  }

  _Block_object_dispose(&v10, 8);

  return v4;
}

void __38__BTAudioRoutingRequest__activateSync__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_BTAudioRoutingRequest <= 90)
  {
    if (gLogCategory_BTAudioRoutingRequest != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __38__BTAudioRoutingRequest__activateSync__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __38__BTAudioRoutingRequest__activateSync__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = [v7 error];
  if (v6)
  {
    if (gLogCategory_BTAudioRoutingRequest <= 90 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
    {
      __38__BTAudioRoutingRequest__activateSync__block_invoke_2_cold_1(v6);
    }

    [*(a1 + 32) _reportError:v6];
  }

  else if (gLogCategory_BTAudioRoutingRequest <= 30 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
  {
    __38__BTAudioRoutingRequest__activateSync__block_invoke_2_cold_2(v7);
  }
}

- (void)_handleServerDied
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BTAudioRoutingRequest__handleServerDied__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __42__BTAudioRoutingRequest__handleServerDied__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_BTAudioRoutingRequest <= 50)
  {
    if (gLogCategory_BTAudioRoutingRequest != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __42__BTAudioRoutingRequest__handleServerDied__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:AudioAccessorydDiedNotification object:*(v3 + 32)];
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D8F88];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__BTAudioRoutingRequest__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278D11830;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__BTAudioRoutingRequest__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278D11830;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D9090];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __42__BTAudioRoutingRequest__ensureXPCStarted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _interrupted];
  v2 = *(a1 + 32);

  return [v2 _handleServerDied];
}

_BYTE *__42__BTAudioRoutingRequest__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(a1 + 32) _invalidated];
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {

    return [result _handleServerDied];
  }

  return result;
}

- (void)_interrupted
{
  selfCopy = self;
  if (gLogCategory_BTAudioRoutingRequest <= 50)
  {
    if (gLogCategory_BTAudioRoutingRequest != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(BTAudioRoutingRequest *)self _interrupted];
    }
  }

  v10 = BTErrorF(4294960596, "XPC interrupted", v2, v3, v4, v5, v6, v7, v9);
  [(BTAudioRoutingRequest *)selfCopy _reportError:v10];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BTAudioRoutingRequest_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__35__BTAudioRoutingRequest_invalidate__block_invoke(void *result)
{
  v2 = result[4];
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if ((*(result[4] + 9) & 1) == 0 && gLogCategory_BTAudioRoutingRequest <= 30 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
    {
      __35__BTAudioRoutingRequest_invalidate__block_invoke_cold_1();
    }

    v4 = v3[4];
    if (v4[2])
    {
      [v4[2] invalidate];
      v4 = v3[4];
    }

    return [v4 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    selfCopy = self;
    if (!self->_invalidateCalled && gLogCategory_BTAudioRoutingRequest <= 50)
    {
      if (gLogCategory_BTAudioRoutingRequest != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(BTAudioRoutingRequest *)self _invalidated];
      }
    }

    if (!selfCopy->_xpcCnx)
    {
      v15 = MEMORY[0x245CFACE0](selfCopy->_responseHandler, a2);
      responseHandler = selfCopy->_responseHandler;
      selfCopy->_responseHandler = 0;

      if (v15)
      {
        v5 = objc_alloc_init(BTAudioRoutingResponse);
        v12 = BTErrorF(4294896148, "Invaliated", v6, v7, v8, v9, v10, v11, v14);
        [(BTAudioRoutingResponse *)v5 setError:v12];

        v15[2](v15, v5);
      }

      xpcCnx = selfCopy->_xpcCnx;
      selfCopy->_xpcCnx = 0;

      selfCopy->_invalidateDone = 1;
      if (gLogCategory_BTAudioRoutingRequest <= 10 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
      {
        [BTAudioRoutingRequest _invalidated];
      }
    }
  }
}

- (void)updateAudioState:(id)state withState:(unsigned int)withState
{
  stateCopy = state;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke;
  block[3] = &unk_278D119E8;
  withStateCopy = withState;
  block[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(dispatchQueue, block);
}

void __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke(uint64_t a1)
{
  if (gLogCategory_BTAudioRoutingRequest <= 50 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
  {
    __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    if (gLogCategory_BTAudioRoutingRequest <= 90 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
    {
      __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_cold_2(v2);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_2;
      v6[3] = &unk_278D11970;
      v6[4] = v3;
      v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
      [v5 audioStateUpdate:*(a1 + 48) withApps:*(a1 + 40)];
    }

    else if (gLogCategory_BTAudioRoutingRequest <= 90 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
    {
      __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_cold_3();
    }
  }
}

void __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_BTAudioRoutingRequest <= 90)
  {
    if (gLogCategory_BTAudioRoutingRequest != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_2_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_BTAudioRoutingRequest <= 90 && (gLogCategory_BTAudioRoutingRequest != -1 || _LogCategory_Initialize()))
  {
    [BTAudioRoutingRequest _reportError:errorCopy];
  }

  v4 = MEMORY[0x245CFACE0](self->_responseHandler);
  if (v4)
  {
    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;

    v6 = objc_alloc_init(BTAudioRoutingResponse);
    [(BTAudioRoutingResponse *)v6 setError:errorCopy];
    (v4)[2](v4, v6);
  }
}

uint64_t __52__BTAudioRoutingRequest_updateAudioState_withState___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 2)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_278D11A08[v1];
  }

  return LogPrintF(&gLogCategory_BTAudioRoutingRequest, "[BTAudioRoutingRequest updateAudioState:withState:]_block_invoke", 50, "UpdateAudioState CID 0x%X audioState %s apps %@ ", *(*(a1 + 32) + 32), v2, *(a1 + 40));
}

@end