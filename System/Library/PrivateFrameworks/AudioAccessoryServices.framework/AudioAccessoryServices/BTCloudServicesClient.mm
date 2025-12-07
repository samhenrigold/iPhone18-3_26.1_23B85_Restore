@interface BTCloudServicesClient
- (BTCloudServicesClient)init;
- (id)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)accountInfoWithCompletion:(id)completion;
- (void)cloudPairingIdentifierForPeripheral:(id)peripheral completion:(id)completion;
- (void)createDeviceRecord:(id)record completion:(id)completion;
- (void)createDeviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)createMagicSettingsRecord:(id)record completion:(id)completion;
- (void)createSoundProfileRecord:(id)record completion:(id)completion;
- (void)deleteDeviceRecord:(id)record completion:(id)completion;
- (void)deleteDeviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)deleteMagicSettingsRecord:(id)record completion:(id)completion;
- (void)deleteSoundProfileRecordWithCompletion:(id)completion;
- (void)deviceRecord:(id)record completion:(id)completion;
- (void)deviceRecordsWithCompletion:(id)completion;
- (void)deviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)deviceSupportInformationRecordsWithCompletion:(id)completion;
- (void)fetchSoundProfileRecordWithCompletion:(id)completion;
- (void)forceCloudPairingForIdentifiers:(id)identifiers completion:(id)completion;
- (void)invalidate;
- (void)magicSettingsRecord:(id)record completion:(id)completion;
- (void)magicSettingsRecordsWithCompletion:(id)completion;
- (void)modifyDeviceRecord:(id)record completion:(id)completion;
- (void)modifyDeviceSupportInformationRecord:(id)record completion:(id)completion;
- (void)modifyMagicSettingsRecord:(id)record completion:(id)completion;
- (void)modifySoundProfileRecord:(id)record completion:(id)completion;
@end

@implementation BTCloudServicesClient

- (BTCloudServicesClient)init
{
  v8.receiver = self;
  v8.super_class = BTCloudServicesClient;
  v2 = [(BTCloudServicesClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTCloudServicesClient", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
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
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothCloudServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345C78];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__BTCloudServicesClient__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278CDD728;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__BTCloudServicesClient__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278CDD728;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285345CD8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];
    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __42__BTCloudServicesClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_BTRootCloudServicesClient <= 50 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    [BTCloudServicesClient _interrupted];
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
  block[2] = __35__BTCloudServicesClient_invalidate__block_invoke;
  block[3] = &unk_278CDD728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__35__BTCloudServicesClient_invalidate__block_invoke(void *result)
{
  v2 = result[4];
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if ((*(result[4] + 9) & 1) == 0 && gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      __35__BTCloudServicesClient_invalidate__block_invoke_cold_1();
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
    if (!self->_invalidateCalled && gLogCategory_BTRootCloudServicesClient <= 50 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      [BTCloudServicesClient _invalidated];
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
      if (gLogCategory_BTRootCloudServicesClient <= 10 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        [BTCloudServicesClient _invalidated];
      }
    }
  }
}

- (void)createDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke(id *a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke_102;
  v25[3] = &unk_278CDDE20;
  v28 = &v29;
  v26 = a1[4];
  v27 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (v2)
  {
    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v22);
      v19 = v30[5];
      v30[5] = v21;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 createDeviceRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil Device Record", v3, v4, v5, v6, v7, v8, v22);
    v16 = v30[5];
    v30[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v29, 8);
}

uint64_t __55__BTCloudServicesClient_createDeviceRecord_completion___block_invoke_102(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)modifyDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke(id *a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v28 = &v29;
  v26 = a1[4];
  v27 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (v2)
  {
    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v22);
      v19 = v30[5];
      v30[5] = v21;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 modifyDeviceRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil Device Record", v3, v4, v5, v6, v7, v8, v22);
    v16 = v30[5];
    v30[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v29, 8);
}

uint64_t __55__BTCloudServicesClient_modifyDeviceRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deleteDeviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v27 = &v28;
  v25[4] = v2;
  v26 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (a1[4])
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 deleteDeviceRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "No deviceBluetoothAddress to delete", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __55__BTCloudServicesClient_deleteDeviceRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deviceRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BTCloudServicesClient_deviceRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__BTCloudServicesClient_deviceRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__BTCloudServicesClient_deviceRecord_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v27 = &v28;
  v25[4] = v2;
  v26 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (a1[4])
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49__BTCloudServicesClient_deviceRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 fetchDeviceRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "No deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __49__BTCloudServicesClient_deviceRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deviceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke_2;
  v17[3] = &unk_278CDDE70;
  v19 = &v20;
  v18 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v17);
  v9 = [*(a1 + 32) _ensureXPCStarted];
  if (v9)
  {
    v13 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v3, v4, v5, v6, v7, v8, v14);
    v12 = v21[5];
    v21[5] = v13;
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke_3;
    v15[3] = &unk_278CDD700;
    v16 = *(a1 + 40);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
    [v11 fetchDeviceRecordsWithCompletion:*(a1 + 40)];

    v12 = v16;
  }

  v2[2](v2);
  _Block_object_dispose(&v20, 8);
}

uint64_t __53__BTCloudServicesClient_deviceRecordsWithCompletion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)createDeviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v28 = &v29;
  v26 = a1[4];
  v27 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (v2)
  {
    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v22);
      v19 = v30[5];
      v30[5] = v21;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 createDeviceSupportInformationRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil BTCloudDeviceSupportInformation", v3, v4, v5, v6, v7, v8, v22);
    v16 = v30[5];
    v30[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v29, 8);
}

uint64_t __73__BTCloudServicesClient_createDeviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)modifyDeviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke_2;
  v25[3] = &unk_278CDDE20;
  v28 = &v29;
  v26 = a1[4];
  v27 = a1[6];
  v9 = MEMORY[0x245CE9060](v25);
  if (v2)
  {
    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v22);
      v19 = v30[5];
      v30[5] = v21;
    }

    else
    {
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 modifyDeviceSupportInformationRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil BTCloudDeviceSupportInformation", v3, v4, v5, v6, v7, v8, v22);
    v16 = v30[5];
    v30[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v29, 8);
}

uint64_t __73__BTCloudServicesClient_modifyDeviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deleteDeviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke_2;
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 deleteDeviceSupportInformationRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil BTCloudDeviceSupportInformation deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __73__BTCloudServicesClient_deleteDeviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deviceSupportInformationRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke_2;
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 fetchBTCloudDeviceSupportInformation:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil BTCloudDeviceSupportInformation deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __67__BTCloudServicesClient_deviceSupportInformationRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deviceSupportInformationRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke_2;
  v17[3] = &unk_278CDDE70;
  v19 = &v20;
  v18 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v17);
  v9 = [*(a1 + 32) _ensureXPCStarted];
  if (v9)
  {
    v13 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v3, v4, v5, v6, v7, v8, v14);
    v12 = v21[5];
    v21[5] = v13;
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke_3;
    v15[3] = &unk_278CDD700;
    v16 = *(a1 + 40);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
    [v11 fetchAllBTCloudDeviceSupportInformationWithCompletion:*(a1 + 40)];

    v12 = v16;
  }

  v2[2](v2);
  _Block_object_dispose(&v20, 8);
}

uint64_t __71__BTCloudServicesClient_deviceSupportInformationRecordsWithCompletion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)createMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke_2;
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 createMagicSettingsRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil BTMagicPairingSettings deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __62__BTCloudServicesClient_createMagicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)modifyMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke_2;
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 modifyMagicSettingsRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil BTMagicPairingSettings deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __62__BTCloudServicesClient_modifyMagicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)deleteMagicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke_2;
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 deleteMagicSettingsRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil MagicSettings deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __62__BTCloudServicesClient_deleteMagicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)magicSettingsRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke(id *a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v2 = a1[4];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke_2;
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
      if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v17 = *(a1[5] + 2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke_3;
      v23[3] = &unk_278CDD700;
      v24 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v23];
      [v18 fetchMagicSettingsRecord:a1[4] completion:a1[6]];

      v19 = v24;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil MagicSettings deviceBluetoothAddress", v3, v4, v5, v6, v7, v8, v22);
    v16 = v29[5];
    v29[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v28, 8);
}

uint64_t __56__BTCloudServicesClient_magicSettingsRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)magicSettingsRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BTCloudServicesClient_magicSettingsRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278CDD638;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __60__BTCloudServicesClient_magicSettingsRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__BTCloudServicesClient_magicSettingsRecordsWithCompletion___block_invoke_2;
    v5[3] = &unk_278CDD700;
    v6 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 fetchAllMagicSettingsRecordsWithCompletion:*(a1 + 40)];
  }
}

- (void)accountInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke_2;
  v17[3] = &unk_278CDDE70;
  v19 = &v20;
  v18 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v17);
  v9 = [*(a1 + 32) _ensureXPCStarted];
  if (v9)
  {
    v13 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v3, v4, v5, v6, v7, v8, v14);
    v12 = v21[5];
    v21[5] = v13;
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke_3;
    v15[3] = &unk_278CDD700;
    v16 = *(a1 + 40);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
    [v11 fetchCloudAccountInfoUpdatedWithCompletion:*(a1 + 40)];

    v12 = v16;
  }

  v2[2](v2);
  _Block_object_dispose(&v20, 8);
}

uint64_t __51__BTCloudServicesClient_accountInfoWithCompletion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)cloudPairingIdentifierForPeripheral:(id)peripheral completion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = peripheralCopy;
  v9 = completionCopy;
  v10 = peripheralCopy;
  dispatch_async(dispatchQueue, block);
}

void __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke(id *a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v2 = a1[4];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke_2;
  v26[3] = &unk_278CDDE20;
  v28 = &v29;
  v26[4] = v2;
  v27 = a1[6];
  v9 = MEMORY[0x245CE9060](v26);
  if (v2)
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v22 = v2;
      LogPrintF();
    }

    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v23);
      v19 = v30[5];
      v30[5] = v21;
    }

    else
    {
      v17 = *(a1[5] + 2);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke_3;
      v24[3] = &unk_278CDD700;
      v25 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v24];
      [v18 fetchCloudPairingIdentifierForPeripheral:a1[4] completion:a1[6]];

      v19 = v25;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil Peripheral Identifier", v3, v4, v5, v6, v7, v8, v22);
    v16 = v30[5];
    v30[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v29, 8);
}

uint64_t __72__BTCloudServicesClient_cloudPairingIdentifierForPeripheral_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)forceCloudPairingForIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = identifiersCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(dispatchQueue, block);
}

void __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke(id *a1)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v2 = a1[4];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke_2;
  v26[3] = &unk_278CDDE20;
  v28 = &v29;
  v26[4] = v2;
  v27 = a1[6];
  v9 = MEMORY[0x245CE9060](v26);
  if (v2)
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v22 = v2;
      LogPrintF();
    }

    v16 = [a1[5] _ensureXPCStarted];
    if (v16)
    {
      v21 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v10, v11, v12, v13, v14, v15, v23);
      v19 = v30[5];
      v30[5] = v21;
    }

    else
    {
      v17 = *(a1[5] + 2);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke_3;
      v24[3] = &unk_278CDD700;
      v25 = a1[6];
      v18 = [v17 remoteObjectProxyWithErrorHandler:v24];
      [v18 forceCloudPairingForIdentifiers:v2 completion:a1[6]];

      v19 = v25;
    }
  }

  else
  {
    v20 = BTErrorF(4294960591, "Nil Peripheral Identifier", v3, v4, v5, v6, v7, v8, v22);
    v16 = v30[5];
    v30[5] = v20;
  }

  v9[2](v9);
  _Block_object_dispose(&v29, 8);
}

uint64_t __68__BTCloudServicesClient_forceCloudPairingForIdentifiers_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)createSoundProfileRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke(id *a1)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v2 = a1[4];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_2;
  v35[3] = &unk_278CDDE20;
  v38 = &v39;
  v36 = a1[4];
  v37 = a1[6];
  v9 = MEMORY[0x245CE9060](v35);
  if (!v2)
  {
    v27 = BTErrorF(4294960591, "Nil record provided", v3, v4, v5, v6, v7, v8, v29);
LABEL_13:
    v23 = v40[5];
    v40[5] = v27;
    goto LABEL_10;
  }

  v10 = [v2 soundProfileData];

  if (!v10)
  {
    v27 = BTErrorF(4294960591, "Please add sound profile data", v11, v12, v13, v14, v15, v16, v29);
    goto LABEL_13;
  }

  if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    v29 = v2;
    LogPrintF();
  }

  v23 = [a1[5] _ensureXPCStarted];
  if (v23)
  {
    v28 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v17, v18, v19, v20, v21, v22, v30);
    v24 = v40[5];
    v40[5] = v28;
  }

  else
  {
    v24 = *(a1[5] + 2);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_3;
    v33[3] = &unk_278CDD700;
    v34 = a1[6];
    v25 = [v24 remoteObjectProxyWithErrorHandler:v33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_4;
    v31[3] = &unk_278CDDE98;
    v26 = a1[6];
    v31[5] = v24;
    v32 = v26;
    v31[4] = v2;
    [v25 startSoundProfileRecordFileHandleSessionWithCompletion:v31];
  }

LABEL_10:
  v9[2](v9);

  _Block_object_dispose(&v39, 8);
}

uint64_t __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

void __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__1;
  v26[4] = __Block_byref_object_dispose__1;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_5;
  v23[3] = &unk_278CDDE70;
  v25 = v26;
  v24 = *(a1 + 48);
  v7 = MEMORY[0x245CE9060](v23);
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = v5;
    if (v14)
    {
      if (gLogCategory_BTRootCloudServicesClient <= 40 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v15 = [*(a1 + 32) soundProfileData];
      [v14 writeData:v15];

      if (gLogCategory_BTRootCloudServicesClient <= 40 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_6;
      v21[3] = &unk_278CDD700;
      v16 = *(a1 + 40);
      v22 = *(a1 + 48);
      v17 = [v16 remoteObjectProxyWithErrorHandler:v21];
      [v17 finishSoundProfileRecordSessionHandle:v14 completion:*(a1 + 48)];

      v18 = v22;
    }

    else
    {
      v19 = *(a1 + 48);
      v18 = BTErrorF(4294960543, "Unable to create sound profile with file handle", v8, v9, v10, v11, v12, v13, v20);
      (*(v19 + 16))(v19, v18);
    }
  }

  v7[2](v7);

  _Block_object_dispose(v26, 8);
}

uint64_t __61__BTCloudServicesClient_createSoundProfileRecord_completion___block_invoke_5(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)fetchSoundProfileRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke_2;
  v17[3] = &unk_278CDDE70;
  v19 = &v20;
  v18 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v17);
  if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = [*(a1 + 32) _ensureXPCStarted];
  if (v9)
  {
    v13 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v3, v4, v5, v6, v7, v8, v14);
    v12 = v21[5];
    v21[5] = v13;
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke_3;
    v15[3] = &unk_278CDD700;
    v16 = *(a1 + 40);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
    [v11 fetchSoundProfileRecordWithCompletion:*(a1 + 40)];

    v12 = v16;
  }

  v2[2](v2);
  _Block_object_dispose(&v20, 8);
}

uint64_t __63__BTCloudServicesClient_fetchSoundProfileRecordWithCompletion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)modifySoundProfileRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke;
  block[3] = &unk_278CDDE48;
  selfCopy = self;
  v14 = completionCopy;
  v12 = recordCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(dispatchQueue, block);
}

void __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke(id *a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v2 = a1[4];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke_2;
  v23[3] = &unk_278CDDE70;
  v25 = &v26;
  v24 = a1[6];
  v9 = MEMORY[0x245CE9060](v23);
  if (v2 && ([v2 soundProfileData], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      v21 = v2;
      LogPrintF();
    }

    v12 = [a1[5] _ensureXPCStarted];
    if (v12)
    {
      v19 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v13, v14, v15, v16, v17, v18, v22);
      v20 = v27[5];
      v27[5] = v19;
    }

    else
    {
      [a1[5] createSoundProfileRecord:a1[4] completion:a1[6]];
    }
  }

  else
  {
    v11 = BTErrorF(4294960591, "Nil Sound Profile Record or Data", v3, v4, v5, v6, v7, v8, v21);
    v12 = v27[5];
    v27[5] = v11;
  }

  v9[2](v9);
  _Block_object_dispose(&v26, 8);
}

uint64_t __61__BTCloudServicesClient_modifySoundProfileRecord_completion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

- (void)deleteSoundProfileRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke;
  v7[3] = &unk_278CDD688;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke_2;
  v17[3] = &unk_278CDDE70;
  v19 = &v20;
  v18 = *(a1 + 40);
  v2 = MEMORY[0x245CE9060](v17);
  if (gLogCategory_BTRootCloudServicesClient <= 30 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = [*(a1 + 32) _ensureXPCStarted];
  if (v9)
  {
    v13 = BTErrorF(4294960543, "Unable to establish connection to Bluetooth Cloud Services", v3, v4, v5, v6, v7, v8, v14);
    v12 = v21[5];
    v21[5] = v13;
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke_3;
    v15[3] = &unk_278CDD700;
    v16 = *(a1 + 40);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
    [v11 deleteSoundProfileRecordWithCompletion:*(a1 + 40)];

    v12 = v16;
  }

  v2[2](v2);
  _Block_object_dispose(&v20, 8);
}

uint64_t __64__BTCloudServicesClient_deleteSoundProfileRecordWithCompletion___block_invoke_2(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    if (gLogCategory_BTRootCloudServicesClient <= 90 && (gLogCategory_BTRootCloudServicesClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(*(v1 + 32) + 16);

    return v2();
  }

  return result;
}

@end