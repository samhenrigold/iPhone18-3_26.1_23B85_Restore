@interface AACloudServicesClient
- (AACloudServicesClient)init;
- (AACloudServicesClient)initWithCoder:(id)coder;
- (id)_ensureXPCStarted;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)address completion:(id)completion;
- (void)hmDeviceCloudRecordInfosUpdated:(id)updated;
- (void)invalidate;
- (void)modifyAAProxCardsInfo:(id)info completion:(id)completion;
- (void)modifyHMDeviceCloudRecordInfo:(id)info completion:(id)completion;
- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion;
- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)address completion:(id)completion;
@end

@implementation AACloudServicesClient

- (void)encodeWithCoder:(id)coder
{
  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    [coder encodeInt64:internalFlags forKey:@"inf"];
  }
}

- (AACloudServicesClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACloudServicesClient *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_internalFlags = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (AACloudServicesClient)init
{
  v8.receiver = self;
  v8.super_class = AACloudServicesClient;
  v2 = [(AACloudServicesClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AACloudServicesClient", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AACloudServicesClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__AACloudServicesClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v7 = NSErrorF(*MEMORY[0x277CCA590], 4294960575, "Activate already called");
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __48__AACloudServicesClient_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v3 = MEMORY[0x245CE9060](*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(a1 + 32);

    [v6 _activate];
  }
}

- (void)_activate
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __34__AACloudServicesClient__activate__block_invoke;
  v26[3] = &unk_278CDE3A0;
  v26[4] = self;
  v26[5] = &v27;
  v9 = MEMORY[0x245CE9060](v26, a2);
  if (self->_invalidateCalled)
  {
    v19 = BTErrorF(4294896148, "Activate after invalidate", v3, v4, v5, v6, v7, v8, clientID);
    _ensureXPCStarted = v28[5];
    v28[5] = v19;
  }

  else
  {
    if (self->_hmDeviceCloudRecordUpdateHandler)
    {
      self->_internalFlags |= 1u;
    }

    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      clientID = self->_clientID;
      LogPrintF();
    }

    _ensureXPCStarted = [(AACloudServicesClient *)self _ensureXPCStarted];
    if (_ensureXPCStarted)
    {
      v20 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v23);
      v21 = v28[5];
      v28[5] = v20;
    }

    else
    {
      xpcCnx = self->_xpcCnx;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __34__AACloudServicesClient__activate__block_invoke_2;
      v25[3] = &unk_278CDD750;
      v25[4] = self;
      v18 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v25];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __34__AACloudServicesClient__activate__block_invoke_3;
      v24[3] = &unk_278CDD750;
      v24[4] = self;
      [v18 cloudServicesClientActivate:self completion:v24];
    }
  }

  v9[2](v9);
  _Block_object_dispose(&v27, 8);
}

id *__34__AACloudServicesClient__activate__block_invoke(id *result)
{
  if (*(*(result[5] + 1) + 40))
  {
    return [result[4] _reportError:?];
  }

  return result;
}

void __34__AACloudServicesClient__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_AACloudServicesClient <= 90)
  {
    if (gLogCategory_AACloudServicesClient != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __34__AACloudServicesClient__activate__block_invoke_2_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __34__AACloudServicesClient__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_AACloudServicesClient <= 90)
    {
      if (gLogCategory_AACloudServicesClient != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        __34__AACloudServicesClient__activate__block_invoke_3_cold_1();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
  }

  else
  {
    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __34__AACloudServicesClient__activate__block_invoke_3_cold_2();
    }

    v6 = MEMORY[0x245CE9060](*(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

- (id)_ensureXPCStarted
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C78];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_hmDeviceCloudRecordInfosUpdated_ argumentIndex:0 ofReply:0];
  if (!self->_xpcCnx)
  {
    v7 = self->_testListenerEndpoint;
    v8 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v7)
    {
      v9 = [v8 initWithListenerEndpoint:v7];
    }

    else
    {
      v9 = [v8 initWithMachServiceName:@"com.apple.BluetoothCloudServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v9;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__AACloudServicesClient__ensureXPCStarted__block_invoke;
    v14[3] = &unk_278CDD728;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__AACloudServicesClient__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_278CDD728;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345CD8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v11];
    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [AACloudServicesClient _ensureXPCStarted];
    }
  }

  return 0;
}

uint64_t __42__AACloudServicesClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_AACloudServicesClient <= 50 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [AACloudServicesClient _interrupted];
  }

  v3 = MEMORY[0x245CE9060](self->_interruptionHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__AACloudServicesClient_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__35__AACloudServicesClient_invalidate__block_invoke(void *result)
{
  v2 = result[4];
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if ((*(result[4] + 25) & 1) == 0 && gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __35__AACloudServicesClient_invalidate__block_invoke_cold_1();
    }

    v4 = v3[4];
    if (v4[4])
    {
      [v4[4] invalidate];
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
    if (!self->_invalidateCalled && gLogCategory_AACloudServicesClient <= 50 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [AACloudServicesClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v3 = MEMORY[0x245CE9060](self->_invalidationHandler, a2);
      v4 = v3;
      if (v3)
      {
        (*(v3 + 16))(v3);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_AACloudServicesClient <= 10 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        [AACloudServicesClient _invalidated];
      }
    }
  }
}

- (void)fetchAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2;
  v25[3] = &unk_278CDDE70;
  v27 = &v28;
  v26 = a1[6];
  v8 = MEMORY[0x245CE9060](v25);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v15 = [a1[5] _ensureXPCStarted];
    if (v15)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v9, v10, v11, v12, v13, v14, v22);
      v19 = v29[5];
      v29[5] = v21;
    }

    else
    {
      v16 = *(a1[5] + 4);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v17 = [v16 remoteObjectProxyWithErrorHandler:v23];
      v18 = [a1[4] uppercaseString];
      [v17 fetchAAProxCardsInfoForDeviceWithAddress:v18 completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil deviceBluetoothAddress", v2, v3, v4, v5, v6, v7, v22);
    v15 = v29[5];
    v29[5] = v20;
  }

  v8[2](v8);
  _Block_object_dispose(&v28, 8);
}

uint64_t __77__AACloudServicesClient_fetchAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)modifyAAProxCardsInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = infoCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v27 = &v28;
  v25[4] = v2;
  v26 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (v2)
  {
    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v22);
      v19 = v29[5];
      v29[5] = v21;
    }

    else
    {
      if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 4);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 modifyAAProxCardsInfo:v2 completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil AAProxCardsInfo", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __58__AACloudServicesClient_modifyAAProxCardsInfo_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)removeAAProxCardsInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2;
  v25[3] = &unk_278CDDE70;
  v27 = &v28;
  v26 = a1[6];
  v8 = MEMORY[0x245CE9060](v25);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v15 = [a1[5] _ensureXPCStarted];
    if (v15)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v9, v10, v11, v12, v13, v14, v22);
      v19 = v29[5];
      v29[5] = v21;
    }

    else
    {
      v16 = *(a1[5] + 4);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v17 = [v16 remoteObjectProxyWithErrorHandler:v23];
      v18 = [a1[4] uppercaseString];
      [v17 removeAAProxCardsInfoForDeviceWithAddress:v18 completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil deviceBluetoothAddress", v2, v3, v4, v5, v6, v7, v22);
    v15 = v29[5];
    v29[5] = v20;
  }

  v8[2](v8);
  _Block_object_dispose(&v28, 8);
}

uint64_t __78__AACloudServicesClient_removeAAProxCardsInfoForDeviceWithAddress_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)fetchHMDeviceCloudRecordInfoWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke_2;
  v25[3] = &unk_278CDDE70;
  v27 = &v28;
  v26 = a1[6];
  v8 = MEMORY[0x245CE9060](v25);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v15 = [a1[5] _ensureXPCStarted];
    if (v15)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v9, v10, v11, v12, v13, v14, v22);
      v19 = v29[5];
      v29[5] = v21;
    }

    else
    {
      v16 = *(a1[5] + 4);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v17 = [v16 remoteObjectProxyWithErrorHandler:v23];
      v18 = [a1[4] uppercaseString];
      [v17 fetchHMDeviceCloudRecordInfoWithAddress:v18 completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil deviceBluetoothAddress", v2, v3, v4, v5, v6, v7, v22);
    v15 = v29[5];
    v29[5] = v20;
  }

  v8[2](v8);
  _Block_object_dispose(&v28, 8);
}

uint64_t __76__AACloudServicesClient_fetchHMDeviceCloudRecordInfoWithAddress_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)modifyHMDeviceCloudRecordInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = infoCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(dispatchQueue, block);
}

void __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v27 = &v28;
  v25[4] = v2;
  v26 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (v2)
  {
    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v22);
      v19 = v29[5];
      v29[5] = v21;
    }

    else
    {
      if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 4);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 modifyHMDeviceCloudRecordInfo:v2 completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil HMDeviceCloudRecordInfo", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __66__AACloudServicesClient_modifyHMDeviceCloudRecordInfo_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)removeHMDeviceCloudRecordInfoForDeviceWithAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke;
  block[3] = &unk_278CDE3C8;
  selfCopy = self;
  v14 = completionCopy;
  v12 = addressCopy;
  v9 = addressCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke_2;
  v25[3] = &unk_278CDDE70;
  v27 = &v28;
  v26 = a1[6];
  v8 = MEMORY[0x245CE9060](v25);
  if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a1[4])
  {
    v15 = [a1[5] _ensureXPCStarted];
    if (v15)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v9, v10, v11, v12, v13, v14, v22);
      v19 = v29[5];
      v29[5] = v21;
    }

    else
    {
      v16 = *(a1[5] + 4);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v17 = [v16 remoteObjectProxyWithErrorHandler:v23];
      v18 = [a1[4] uppercaseString];
      [v17 removeHMDeviceCloudRecordInfoForDeviceWithAddress:v18 completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil deviceBluetoothAddress", v2, v3, v4, v5, v6, v7, v22);
    v15 = v29[5];
    v29[5] = v20;
  }

  v8[2](v8);
  _Block_object_dispose(&v28, 8);
}

uint64_t __86__AACloudServicesClient_removeHMDeviceCloudRecordInfoForDeviceWithAddress_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)hmDeviceCloudRecordInfosUpdated:(id)updated
{
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_hmDeviceCloudRecordUpdateHandler)
  {
    if (gLogCategory_AACloudServicesClient <= 30 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [(AACloudServicesClient *)self hmDeviceCloudRecordInfosUpdated:updatedCopy];
    }

    (*(self->_hmDeviceCloudRecordUpdateHandler + 2))();
  }

  else if (gLogCategory_AACloudServicesClient <= 10 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [AACloudServicesClient hmDeviceCloudRecordInfosUpdated:];
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  if (gLogCategory_AACloudServicesClient <= 90 && (gLogCategory_AACloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [AACloudServicesClient _reportError:];
  }

  v4 = MEMORY[0x245CE9060](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, errorCopy);
  }
}

@end