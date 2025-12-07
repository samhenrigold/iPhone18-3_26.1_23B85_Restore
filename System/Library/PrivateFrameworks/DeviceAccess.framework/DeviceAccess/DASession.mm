@interface DASession
+ (BOOL)networkingAllowedWithUUID:(id)d error:(id *)error;
+ (BOOL)processAllowedWithAuditToken:(id *)token error:(id *)error;
+ (BOOL)setDeviceAccessoryServiceInfo:(id)info device:(id)device session:(id)session error:(id *)error;
+ (BOOL)setDeviceAppAccessInfo:(id)info device:(id)device session:(id)session error:(id *)error;
+ (BOOL)setPartialIPsForAppBundleID:(id)d partialIPs:(id)ps error:(id *)error;
+ (BOOL)setPartialIPsWithAuditToken:(id *)token partialIPs:(id)ps error:(id *)error;
+ (BOOL)setState:(int64_t)state device:(id)device session:(id)session simulateApp:(BOOL)app error:(id *)error;
+ (id)diagnosticShow:(id)show endpoint:(id)endpoint error:(id *)error;
+ (id)getDevicesWithFlags:(unint64_t)flags session:(id)session error:(id *)error;
+ (id)getPartialIPsWithAppBundleID:(id)d error:(id *)error;
+ (id)getPartialIPsWithAuditToken:(id *)token error:(id *)error;
- (BOOL)appIsUsingDeviceAccess;
- (DAAppContext)appContext;
- (DASession)init;
- (DASession)initWithXPCObject:(id)object error:(id *)error;
- (NSArray)availableDevices;
- (id)_ensureXPCStarted;
- (id)bluetoothAccessInfoAndReturnError:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (uint64_t)appIsUsingDeviceAccess;
- (void)_activateDirect;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_getAuthorizedDevicesCompleted:(id)completed completionHandler:(id)handler;
- (void)_getBluetoothAccessInfoCompleted:(id)completed completionHandler:(id)handler;
- (void)_getDevicesCompleted:(id)completed completionHandler:(id)handler;
- (void)_getPartialIPsCompleted:(id)completed completionHandler:(id)handler;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportEvent:(id)event;
- (void)_reportEventType:(int64_t)type;
- (void)_xpcListenerEvent:(id)event;
- (void)_xpcReceivedDAEvent:(id)event;
- (void)_xpcReceivedMessage:(id)message;
- (void)activate;
- (void)diagnosticShow:(id)show completionHandler:(id)handler;
- (void)encodeWithXPCObject:(id)object;
- (void)getAuthorizedDevices:(id)devices;
- (void)getBluetoothAccessInfoWithCompletionHandler:(id)handler;
- (void)getDevicesWithFlags:(unint64_t)flags completionHandler:(id)handler;
- (void)getPartialIPsWithAppBundleID:(id)d completionHandler:(id)handler;
- (void)getPartialIPsWithAuditToken:(id *)token completionHandler:(id)handler;
- (void)invalidate;
- (void)modifyDeviceWithIdentifier:(id)identifier settings:(id)settings completionHandler:(id)handler;
- (void)removeDeviceAccess:(id)access completionHandler:(id)handler;
- (void)requestPermissionForDevice:(id)device services:(id)services completionHandler:(id)handler;
- (void)resetWiFiIdentifier:(id)identifier;
- (void)setDeviceAccessoryServiceInfo:(id)info device:(id)device completionHandler:(id)handler;
- (void)setDeviceAppAccessInfo:(id)info device:(id)device completionHandler:(id)handler;
- (void)setPartialIPsForAppBundleID:(id)d partialIPs:(id)ps completionHandler:(id)handler;
- (void)setPartialIPsWithAuditToken:(id *)token partialIPs:(id)ps completionHandler:(id)handler;
- (void)setState:(int64_t)state device:(id)device simulateApp:(BOOL)app completionHandler:(id)handler;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation DASession

- (DASession)init
{
  v7.receiver = self;
  v7.super_class = DASession;
  v2 = [(DASession *)&v7 init];
  if (v2)
  {
    v2->_clientID = CUXPCGetNextClientID();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    deviceMap = v2->_deviceMap;
    v2->_deviceMap = dictionary;

    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__DASession_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__21__DASession_activate__block_invoke(void *result)
{
  v1 = result;
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __21__DASession_activate__block_invoke_cold_1(v1);
    }
  }

  v2 = v1[4];
  if ((*(v2 + 16) & 1) == 0)
  {
    *(v2 + 16) = 1;
    v3 = v1[4];
    if (v3[56] == 1)
    {

      return [v3 _activateDirect];
    }

    else
    {

      return [v3 _activateXPCStart:0];
    }
  }

  return result;
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = self->_xpcListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__DASession__ensureXPCStarted__block_invoke;
    handler[3] = &unk_278F57E90;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    v5 = mach_service;
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  uTF8String = [(NSString *)self->_bundleID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "bndI", uTF8String);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v17 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v16 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v16, &v17, "%@", v5);
    v6 = v16;
  }

  v15 = v6;
  CUAppendF(&v15, &v17, "CID 0x%X", self->_clientID);
  v7 = v15;

  bundleID = self->_bundleID;
  if (bundleID)
  {
    v14 = v7;
    v9 = bundleID;
    CUAppendF(&v14, &v17, "BundleID %@", v9);
    v10 = v14;

    v7 = v10;
  }

  v11 = &stru_285B4C350;
  if (v7)
  {
    v11 = v7;
  }

  v12 = v11;

  return v12;
}

- (void)_activateDirect
{
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [(DASession *)self _activateDirect];
  }
}

- (void)_activateXPCStart:(BOOL)start
{
  if (start)
  {
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v4 = "Re-activate start: %@";
LABEL_11:
      [(DASession *)v4 _activateXPCStart:?];
    }
  }

  else if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    v4 = "Activate start: %@";
    goto LABEL_11;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  [(DASession *)self encodeWithXPCObject:v5];
  xpc_dictionary_set_uint64(v5, "dvFl", self->_deviceFlags);
  xpc_dictionary_set_string(v5, "mTyp", "SesA");
  _ensureXPCStarted = [(DASession *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__DASession__activateXPCStart___block_invoke;
  handler[3] = &unk_278F57E90;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  completedCopy = completed;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__DASession__activateXPCCompleted___block_invoke;
  aBlock[3] = &unk_278F57EB8;
  aBlock[4] = self;
  aBlock[5] = &v28;
  v5 = _Block_copy(aBlock);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v29[5];
  v29[5] = v6;

  if (!v29[5])
  {
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_DASession, "[DASession _activateXPCCompleted:]", 30, "Activate completed: %@", self);
    }

    v8 = xpc_dictionary_get_array(completedCopy, "devs");
    if (!v8)
    {
      goto LABEL_10;
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__4;
    v19 = __Block_byref_object_dispose__4;
    v20 = 0;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __35__DASession__activateXPCCompleted___block_invoke_2;
    applier[3] = &unk_278F581D0;
    applier[4] = &v15;
    applier[5] = &v21;
    xpc_array_apply(v8, applier);
    v9 = v16[5];
    if (v9)
    {
      v12 = v29;
      v13 = v9;
      selfCopy = v12[5];
      v12[5] = v13;
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_deviceMap, v22[5]);
      objc_sync_exit(selfCopy);
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);

    if (!v9)
    {
LABEL_10:
      [(DASession *)self _reportEventType:10];
      v21 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        self->_currentDeviceCapabilities = v21;
      }

      if (xpc_dictionary_get_BOOL(completedCopy, "dvPr"))
      {
        v11 = [[DAEventDevicesPresent alloc] initWithPresent:1 devicesMigrated:0];
        [(DASession *)self _reportEvent:v11];
      }

      LOBYTE(v21) = 0;
      CUXPCDecodeBool();
      if (v21 == 1 && gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_DASession, "[DASession _activateXPCCompleted:]", 90, "[##### WARNING #####] App has companion watch app that maybe affected if using CoreBluetooth framework. Please read developer documentation for AccessorySetupKit.");
      }
    }
  }

  v5[2](v5);

  _Block_object_dispose(&v28, 8);
}

void __35__DASession__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v2 = *(a1 + 32);
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DASession, "[DASession _activateXPCCompleted:]_block_invoke", 90, "### Activate failed: %@, %@", v2, v3);
    }

    v4 = *(a1 + 32);
    v5 = [[DAEvent alloc] initWithEventType:10 error:*(*(*(a1 + 40) + 8) + 40)];
    [v4 _reportEvent:v5];
  }
}

- (DAAppContext)appContext
{
  p_appContext = &self->_appContext;
  v4 = self->_appContext;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      [(DASession *)self appContext];
    }

    v6 = self->_xpcListener;
    if (!v6)
    {
      v6 = xpc_connection_create(0, self->_dispatchQueue);
      xpcListener = self->_xpcListener;
      self->_xpcListener = v6;

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __23__DASession_appContext__block_invoke;
      handler[3] = &unk_278F57E90;
      handler[4] = self;
      xpc_connection_set_event_handler(v6, handler);
      xpc_connection_activate(v6);
    }

    v8 = self->_xpcEndpoint;
    if (!v8)
    {
      v8 = xpc_endpoint_create(v6);
      xpcEndpoint = self->_xpcEndpoint;
      self->_xpcEndpoint = v8;
    }

    v10 = objc_alloc_init(DAAppContext);
    [(DAAppContext *)v10 setXpcEndpoint:v8];
    objc_storeStrong(p_appContext, v10);
    v5 = v10;
  }

  return v5;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    v7 = v2;
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      [(DASession *)self _interrupted];
    }

    [(DASession *)self _reportEventType:60, v3, v7, v4];

    [(DASession *)self _activateXPCStart:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__DASession_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __23__DASession_invalidate__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      __23__DASession_invalidate__block_invoke_cold_1(v2);
    }

    v3 = *(*v2 + 104);
    v5 = v3;
    if (v3)
    {
      xpc_connection_cancel(v3);
    }

    v4 = *(*v2 + 48);
    if (v4)
    {
      xpc_connection_cancel(v4);
    }

    [*v2 _invalidated];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx && !self->_xpcListener)
  {
    [(DASession *)self _reportEventType:20];
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      [(DASession *)self _invalidated];
    }
  }
}

- (NSArray)availableDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceMap;
  v4 = v3;
  if (v3)
  {
    allValues = [(NSMutableDictionary *)v3 allValues];
  }

  else
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)removeDeviceAccess:(id)access completionHandler:(id)handler
{
  accessCopy = access;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DASession_removeDeviceAccess_completionHandler___block_invoke;
  block[3] = &unk_278F57F80;
  block[4] = self;
  v12 = accessCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = accessCopy;
  dispatch_async(dispatchQueue, block);
}

void __50__DASession_removeDeviceAccess_completionHandler___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "RvAi");
  CUXPCEncodeObject();
  CUXPCEncodeObject();
  v3 = [a1[4] _ensureXPCStarted];
  v4 = *(a1[4] + 11);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__DASession_removeDeviceAccess_completionHandler___block_invoke_2;
  v5[3] = &unk_278F57F08;
  v6 = a1[5];
  v7 = a1[6];
  xpc_connection_send_message_with_reply(v3, v2, v4, v5);
}

void __50__DASession_removeDeviceAccess_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    __50__DASession_removeDeviceAccess_completionHandler___block_invoke_2_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setDeviceAccessoryServiceInfo:(id)info device:(id)device completionHandler:(id)handler
{
  infoCopy = info;
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke;
  v15[3] = &unk_278F57FF8;
  v16 = deviceCopy;
  selfCopy = self;
  v18 = infoCopy;
  v19 = handlerCopy;
  v12 = infoCopy;
  v13 = handlerCopy;
  v14 = deviceCopy;
  dispatch_async(dispatchQueue, v15);
}

void __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke(id *a1)
{
  if (([a1[4] flags] & 8) != 0)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "mTyp", "SASi");
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    v3 = [a1[5] _ensureXPCStarted];
    v4 = *(a1[5] + 11);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_2;
    v5[3] = &unk_278F57F08;
    v6 = a1[6];
    v7 = a1[7];
    xpc_connection_send_message_with_reply(v3, v2, v4, v5);
  }

  else
  {
    __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_cold_1();
  }
}

void __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_2_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setDeviceAppAccessInfo:(id)info device:(id)device completionHandler:(id)handler
{
  infoCopy = info;
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__DASession_setDeviceAppAccessInfo_device_completionHandler___block_invoke;
  v15[3] = &unk_278F57FF8;
  v16 = deviceCopy;
  selfCopy = self;
  v18 = infoCopy;
  v19 = handlerCopy;
  v12 = infoCopy;
  v13 = handlerCopy;
  v14 = deviceCopy;
  dispatch_async(dispatchQueue, v15);
}

void __61__DASession_setDeviceAppAccessInfo_device_completionHandler___block_invoke(id *a1)
{
  if (([a1[4] flags] & 0x408) != 0)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "mTyp", "SAAi");
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    v3 = [a1[5] _ensureXPCStarted];
    v4 = *(a1[5] + 11);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__DASession_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2;
    v5[3] = &unk_278F57F08;
    v6 = a1[6];
    v7 = a1[7];
    xpc_connection_send_message_with_reply(v3, v2, v4, v5);
  }

  else
  {
    __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_cold_1();
  }
}

void __61__DASession_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    __61__DASession_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetWiFiIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__DASession_resetWiFiIdentifier___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __33__DASession_resetWiFiIdentifier___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "RsWf");
  CUXPCEncodeObject();
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 88);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__DASession_resetWiFiIdentifier___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

void __33__DASession_resetWiFiIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v5 = v3;
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __33__DASession_resetWiFiIdentifier___block_invoke_2_cold_1(v3);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestPermissionForDevice:(id)device services:(id)services completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DASession_requestPermissionForDevice_services_completionHandler___block_invoke;
  block[3] = &unk_278F581F8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)getAuthorizedDevices:(id)devices
{
  devicesCopy = devices;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DASession_getAuthorizedDevices___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(dispatchQueue, v7);
}

void __34__DASession_getAuthorizedDevices___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "GADv");
  CUXPCEncodeObject();
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__DASession_getAuthorizedDevices___block_invoke_2;
  v7[3] = &unk_278F57F08;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

- (void)_getAuthorizedDevicesCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__DASession__getAuthorizedDevicesCompleted_completionHandler___block_invoke;
  aBlock[3] = &unk_278F57F30;
  v14 = &v15;
  v7 = handlerCopy;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v16[5];
  v16[5] = v9;

  if (!v16[5])
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v11 = CUPrintNSObjectOneLine();
      LogPrintF(&gLogCategory_DASession, "[DASession _getAuthorizedDevicesCompleted:completionHandler:]", 30, "GetAuthorizedDevices completed: %@", v11);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v8[2](v8);

  _Block_object_dispose(&v15, 8);
}

uint64_t __62__DASession__getAuthorizedDevicesCompleted_completionHandler___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DASession, "[DASession _getAuthorizedDevicesCompleted:completionHandler:]_block_invoke", 90, "### GetAuthorizedDevices failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)getDevicesWithFlags:(unint64_t)flags completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DASession_getDevicesWithFlags_completionHandler___block_invoke;
  block[3] = &unk_278F58220;
  v10 = handlerCopy;
  flagsCopy = flags;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __51__DASession_getDevicesWithFlags_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "GDvs");
  xpc_dictionary_set_uint64(v2, "dvFl", *(a1 + 48));
  CUXPCEncodeObject();
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__DASession_getDevicesWithFlags_completionHandler___block_invoke_2;
  v7[3] = &unk_278F57F08;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

- (void)_getDevicesCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__DASession__getDevicesCompleted_completionHandler___block_invoke;
  aBlock[3] = &unk_278F57F30;
  v14 = &v15;
  v7 = handlerCopy;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v16[5];
  v16[5] = v9;

  if (!v16[5])
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v11 = CUPrintNSObjectOneLine();
      LogPrintF(&gLogCategory_DASession, "[DASession _getDevicesCompleted:completionHandler:]", 30, "GetDevices completed: %@", v11);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v8[2](v8);

  _Block_object_dispose(&v15, 8);
}

uint64_t __52__DASession__getDevicesCompleted_completionHandler___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DASession, "[DASession _getDevicesCompleted:completionHandler:]_block_invoke", 90, "### GetDevices failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

+ (id)getDevicesWithFlags:(unint64_t)flags session:(id)session error:(id *)error
{
  sessionCopy = session;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "mTyp", "GDvs");
  xpc_dictionary_set_uint64(v8, "dvFl", flags);
  CUXPCEncodeObject();

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("DASession-GetInfo", v9);

  mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v10, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_1);
  xpc_connection_activate(mach_service);
  v12 = xpc_connection_send_message_with_reply_sync(mach_service, v8);
  xpc_connection_cancel(mach_service);
  if (v12)
  {
    v13 = CUXPCDecodeNSErrorIfNeeded();
    v14 = v13;
    if (v13)
    {
      if (error)
      {
        v17 = v13;
        *error = v14;
      }

      v15 = MEMORY[0x277CBEBF8];
    }

    else
    {
      objc_opt_class();
      CUXPCDecodeNSArrayOfClass();
      v15 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = DAErrorF(350000, "No reply");
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (void)_getPartialIPsCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__DASession__getPartialIPsCompleted_completionHandler___block_invoke;
  aBlock[3] = &unk_278F57F30;
  v14 = &v15;
  v7 = handlerCopy;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v16[5];
  v16[5] = v9;

  if (!v16[5])
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v11 = CUPrintNSObjectOneLine();
      LogPrintF(&gLogCategory_DASession, "[DASession _getPartialIPsCompleted:completionHandler:]", 30, "GetPartialIPs completed: %@", v11);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v8[2](v8);

  _Block_object_dispose(&v15, 8);
}

uint64_t __55__DASession__getPartialIPsCompleted_completionHandler___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DASession, "[DASession _getPartialIPsCompleted:completionHandler:]_block_invoke", 90, "### GetPartialIPs failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)_reportEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [DASession _reportEvent:eventCopy];
  }

  v4 = _Block_copy(self->_eventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, eventCopy);
  }
}

- (void)_reportEventType:(int64_t)type
{
  v4 = [[DAEvent alloc] initWithEventType:type];
  [(DASession *)self _reportEvent:v4];
}

- (void)setState:(int64_t)state device:(id)device simulateApp:(BOOL)app completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DASession_setState_device_simulateApp_completionHandler___block_invoke;
  block[3] = &unk_278F58270;
  v16 = deviceCopy;
  selfCopy = self;
  appCopy = app;
  v18 = handlerCopy;
  stateCopy = state;
  v13 = handlerCopy;
  v14 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__DASession_setState_device_simulateApp_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    __59__DASession_setState_device_simulateApp_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SDvS");
  CUXPCEncodeObject();
  xpc_dictionary_set_int64(v2, "dvSt", *(a1 + 56));
  CUXPCEncodeObject();
  if (*(a1 + 64) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "simA", 1);
  }

  v3 = [*(a1 + 40) _ensureXPCStarted];
  v4 = *(*(a1 + 40) + 88);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DASession_setState_device_simulateApp_completionHandler___block_invoke_2;
  v8[3] = &unk_278F58248;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v12 = *(a1 + 56);
  v7 = *(a1 + 40);
  v9 = v5;
  v10 = v7;
  v11 = v6;
  xpc_connection_send_message_with_reply(v3, v2, v4, v8);
}

void __59__DASession_setState_device_simulateApp_completionHandler___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    __59__DASession_setState_device_simulateApp_completionHandler___block_invoke_2_cold_1(a1, v3);
  }

  (*(a1[6] + 16))();
}

+ (BOOL)setState:(int64_t)state device:(id)device session:(id)session simulateApp:(BOOL)app error:(id *)error
{
  appCopy = app;
  deviceCopy = device;
  sessionCopy = session;
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [DASession setState:state device:sessionCopy session:? simulateApp:? error:?];
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v13, "mTyp", "SDvS");
  CUXPCEncodeObject();
  xpc_dictionary_set_int64(v13, "dvSt", state);
  CUXPCEncodeObject();
  if (appCopy)
  {
    xpc_dictionary_set_BOOL(v13, "simA", 1);
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("DASession-GetInfo", v14);

  mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v15, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_67);
  xpc_connection_activate(mach_service);
  v17 = xpc_connection_send_message_with_reply_sync(mach_service, v13);
  xpc_connection_cancel(mach_service);
  if (v17)
  {
    v18 = CUXPCDecodeNSErrorIfNeeded();
    v19 = v18 == 0;
    if (v18 && error)
    {
      v18 = v18;
      *error = v18;
    }
  }

  else if (error)
  {
    DAErrorF(350000, "No reply");
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)setDeviceAccessoryServiceInfo:(id)info device:(id)device session:(id)session error:(id *)error
{
  infoCopy = info;
  deviceCopy = device;
  sessionCopy = session;
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_DASession, "+[DASession setDeviceAccessoryServiceInfo:device:session:error:]", 30, "setDeviceAccessoryServiceInfo start: %@, device %@", infoCopy, deviceCopy);
  }

  if (([deviceCopy flags] & 8) != 0)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "mTyp", "SASi");
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("DASession-SetAccessoryServiceInfo", v13);

    mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v14, 0);
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_71);
    xpc_connection_activate(mach_service);
    v16 = xpc_connection_send_message_with_reply_sync(mach_service, v12);
    xpc_connection_cancel(mach_service);
    if (v16)
    {
      v17 = CUXPCDecodeNSErrorIfNeeded();
      v18 = v17 == 0;
      if (v17 && error)
      {
        v17 = v17;
        *error = v17;
      }
    }

    else if (error)
    {
      DAErrorF(350000, "No reply");
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (error)
  {
    DAErrorF(350001, "Session: Device missing accessory setup flag");
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)setDeviceAppAccessInfo:(id)info device:(id)device session:(id)session error:(id *)error
{
  infoCopy = info;
  deviceCopy = device;
  sessionCopy = session;
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_DASession, "+[DASession setDeviceAppAccessInfo:device:session:error:]", 30, "setDeviceAppAccessInfo start: %@, device %@", infoCopy, deviceCopy);
  }

  if (([deviceCopy flags] & 0x408) != 0)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "mTyp", "SAAi");
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("DASession-GetInfo", v13);

    mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v14, 0);
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_74);
    xpc_connection_activate(mach_service);
    v16 = xpc_connection_send_message_with_reply_sync(mach_service, v12);
    xpc_connection_cancel(mach_service);
    if (v16)
    {
      v17 = CUXPCDecodeNSErrorIfNeeded();
      v18 = v17 == 0;
      if (v17 && error)
      {
        v17 = v17;
        *error = v17;
      }
    }

    else if (error)
    {
      DAErrorF(350000, "No reply");
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (error)
  {
    DAErrorF(350001, "Session: Device missing accessory setup flag");
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)bluetoothAccessInfoAndReturnError:(id *)error
{
  if (error)
  {
    *error = DAErrorF(350002, "Not implemented yet");
  }

  return 0;
}

- (void)getBluetoothAccessInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__DASession_getBluetoothAccessInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__DASession_getBluetoothAccessInfoWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __57__DASession_getBluetoothAccessInfoWithCompletionHandler___block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "mTyp", "BTIG");
  v5 = [*(v3 + 32) _ensureXPCStarted];
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v8 = *(v7 + 88);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__DASession_getBluetoothAccessInfoWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278F57F08;
  v9[4] = v7;
  v10 = v6;
  xpc_connection_send_message_with_reply(v5, v4, v8, v9);
}

- (void)_getBluetoothAccessInfoCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__DASession__getBluetoothAccessInfoCompleted_completionHandler___block_invoke;
  aBlock[3] = &unk_278F57F30;
  v17 = &v18;
  v7 = handlerCopy;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  v9 = CUXPCDecodeNSErrorIfNeeded();
  v10 = v19[5];
  v19[5] = v9;

  if (!v19[5])
  {
    objc_opt_class();
    v11 = (v19 + 5);
    obj = v19[5];
    CUXPCDecodeObject();
    objc_storeStrong(v11, obj);
    if (!v19[5])
    {
      v12 = DAErrorF(350004, "No error, but no info");
      v13 = v19[5];
      v19[5] = v12;
    }
  }

  v8[2](v8);

  _Block_object_dispose(&v18, 8);
}

uint64_t __64__DASession__getBluetoothAccessInfoCompleted_completionHandler___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DASession, "[DASession _getBluetoothAccessInfoCompleted:completionHandler:]_block_invoke", 90, "### BluetoothAccessInfo failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (BOOL)appIsUsingDeviceAccess
{
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [(DASession *)self appIsUsingDeviceAccess];
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "mTyp", "MDDEx");
  bundleID = self->_bundleID;
  v5 = v3;
  uTF8String = [(NSString *)bundleID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v5, "bndI", uTF8String);
  }

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("DASession-CheckMDD", v7);

  mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v8, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_87);
  xpc_connection_activate(mach_service);
  v10 = xpc_connection_send_message_with_reply_sync(mach_service, v5);
  xpc_connection_cancel(mach_service);
  if (v10)
  {
    v14 = CUXPCDecodeNSErrorIfNeeded();
    if (v14)
    {
      if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
      {
        [(DASession *)v14 appIsUsingDeviceAccess];
      }

      v15 = 0;
    }

    else
    {
      v17 = 0;
      CUXPCDecodeBool();
      if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
      {
        [(DASession *)&v17 appIsUsingDeviceAccess];
      }

      v15 = v17;
    }
  }

  else
  {
    if (gLogCategory_DASession <= 30)
    {
      if (gLogCategory_DASession != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [(DASession *)v11 appIsUsingDeviceAccess];
      }
    }

    v15 = 0;
  }

  return v15 & 1;
}

+ (id)diagnosticShow:(id)show endpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "mTyp", "DgSh");
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("DASession-GetInfo", v8);

  v10 = endpointCopy;
  v11 = v10;
  if (v10)
  {
    mach_service = xpc_connection_create_from_endpoint(v10);
    xpc_connection_set_target_queue(mach_service, v9);
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v9, 0);
  }

  xpc_connection_set_event_handler(mach_service, &__block_literal_global_96);
  xpc_connection_activate(mach_service);
  v13 = xpc_connection_send_message_with_reply_sync(mach_service, v7);
  xpc_connection_cancel(mach_service);
  if (v13)
  {
    v14 = CUXPCDecodeNSErrorIfNeeded();
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v20 = v14;
        v17 = 0;
        *error = v15;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v16 = _CFXPCCreateCFObjectFromXPCObject();
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        [DASession diagnosticShow:error endpoint:? error:?];
      }
    }
  }

  else if (error)
  {
    DAErrorF(350000, "No reply");
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)diagnosticShow:(id)show completionHandler:(id)handler
{
  showCopy = show;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DASession_diagnosticShow_completionHandler___block_invoke;
  block[3] = &unk_278F58298;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = showCopy;
  v9 = handlerCopy;
  v10 = showCopy;
  dispatch_async(dispatchQueue, block);
}

void __46__DASession_diagnosticShow_completionHandler___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "DgSh");
  v3 = a1[4];
  if (v3)
  {
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v4)
    {
      __46__DASession_diagnosticShow_completionHandler___block_invoke_cold_1(a1, v3);
      goto LABEL_5;
    }

    v5 = v4;
    xpc_dictionary_set_value(v2, "parm", v4);
  }

  v6 = [a1[5] _ensureXPCStarted];
  v7 = *(a1[5] + 11);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__DASession_diagnosticShow_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v9 = a1[6];
  xpc_connection_send_message_with_reply(v6, v2, v7, handler);

LABEL_5:
}

void __46__DASession_diagnosticShow_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = *(a1 + 32);
    if (v4)
    {
      (*(v5 + 16))(*(a1 + 32), v4, 0);
    }

    else
    {
      __46__DASession_diagnosticShow_completionHandler___block_invoke_2_cold_1((v5 + 16), v5);
    }
  }
}

+ (BOOL)networkingAllowedWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/var/mobile/Library/com.apple.DeviceAccess/DANetworkUUIDs.plist" isDirectory:0];
  v13 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v6 error:&v13];
  v8 = v13;
  uUIDString = [dCopy UUIDString];
  v10 = [v7 objectForKeyedSubscript:uUIDString];

  if (gLogCategory_DASession <= 20 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [(DASession *)v10 != 0 networkingAllowedWithUUID:v8 error:dCopy];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else if (!error)
  {
    goto LABEL_7;
  }

  if (!v10)
  {
    v11 = v8;
    *error = v8;
  }

LABEL_7:

  return v10 != 0;
}

+ (BOOL)processAllowedWithAuditToken:(id *)token error:(id *)error
{
  v17 = 0;
  v5 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v5;
  v6 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v16 error:&v17];
  v7 = v17;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 extensionPointRecord], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.discovery-extension"), v9, v8, (v10))
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      extensionPointRecord = [v6 extensionPointRecord];
      identifier = [extensionPointRecord identifier];
      v11 = [identifier isEqualToString:@"com.apple.accessory-setup-extension"];

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    if ((v11 & 1) == 0)
    {
      v14 = v7;
      v11 = 0;
      *error = v7;
    }
  }

LABEL_10:
  if (gLogCategory_DASession <= 20 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [DASession processAllowedWithAuditToken:v11 error:v7];
  }

  return v11;
}

+ (id)getPartialIPsWithAppBundleID:(id)d error:(id *)error
{
  dCopy = d;
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [DASession getPartialIPsWithAppBundleID:dCopy error:?];
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "mTyp", "GIFs");
  v7 = v6;
  uTF8String = [dCopy UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v7, "bndI", uTF8String);
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("DASession-GetInfo", v9);

  mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v10, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_119);
  xpc_connection_activate(mach_service);
  v12 = xpc_connection_send_message_with_reply_sync(mach_service, v7);
  xpc_connection_cancel(mach_service);
  if (v12)
  {
    v13 = CUXPCDecodeNSErrorIfNeeded();
    v14 = v13;
    if (v13)
    {
      if (error)
      {
        v17 = v13;
        *error = v14;
      }

      v15 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v18 = 0;
      objc_opt_class();
      CUXPCDecodeNSArrayOfClass();
      if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
      {
        [DASession getPartialIPsWithAppBundleID:? error:?];
      }

      v15 = v18;
    }
  }

  else
  {
    if (error)
    {
      *error = DAErrorF(350000, "No reply");
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

+ (id)getPartialIPsWithAuditToken:(id *)token error:(id *)error
{
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(DASession *)self getPartialIPsWithAuditToken:a2 error:token];
    }
  }

  v13 = 0;
  v6 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v6;
  v7 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v12 error:&v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [v7 bundleIdentifier];
    stringByDeletingPathExtension = [bundleIdentifier stringByDeletingPathExtension];

    v10 = [DASession getPartialIPsWithAppBundleID:stringByDeletingPathExtension error:error];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)modifyDeviceWithIdentifier:(id)identifier settings:(id)settings completionHandler:(id)handler
{
  identifierCopy = identifier;
  settingsCopy = settings;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__DASession_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke;
  v15[3] = &unk_278F58020;
  v16 = identifierCopy;
  v17 = settingsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = settingsCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

void __67__DASession_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "MdSt");
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "id", v5);
  }

  CUXPCEncodeObject();
  CUXPCEncodeObject();
  v6 = [*(a1 + 48) _ensureXPCStarted];
  v7 = *(*(a1 + 48) + 88);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __67__DASession_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v9 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v6, v4, v7, handler);
}

void __67__DASession_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

+ (BOOL)setPartialIPsWithAuditToken:(id *)token partialIPs:(id)ps error:(id *)error
{
  psCopy = ps;
  v10 = psCopy;
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (psCopy = _LogCategory_Initialize(), psCopy))
    {
      [DASession setPartialIPsWithAuditToken:psCopy partialIPs:v8 error:v9];
    }
  }

  v17 = 0;
  v11 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v11;
  v12 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v16 error:&v17];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [v12 bundleIdentifier];
    v14 = [DASession setPartialIPsForAppBundleID:bundleIdentifier partialIPs:v10 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)setPartialIPsForAppBundleID:(id)d partialIPs:(id)ps error:(id *)error
{
  dCopy = d;
  psCopy = ps;
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_DASession, "+[DASession setPartialIPsForAppBundleID:partialIPs:error:]", 30, "setPartialIPsWithAppBundleID: %@, IPs: %@", dCopy, psCopy);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "mTyp", "SIFs");
  if (dCopy)
  {
    v10 = v9;
    uTF8String = [dCopy UTF8String];
    if (uTF8String)
    {
      xpc_dictionary_set_string(v10, "bndI", uTF8String);
    }
  }

  v12 = [psCopy count];
  if (v12 < 0xB)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  else
  {
    if (gLogCategory_DASession <= 30)
    {
      if (gLogCategory_DASession != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [DASession setPartialIPsForAppBundleID:v12 partialIPs:v13 error:v14];
      }
    }

    v15 = [psCopy subarrayWithRange:{0, 10}];
    CUXPCEncodeNSArrayOfObjects();
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("DASession-GetInfo", v16);

  mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", v17, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_130);
  xpc_connection_activate(mach_service);
  v19 = xpc_connection_send_message_with_reply_sync(mach_service, v9);
  xpc_connection_cancel(mach_service);
  if (v19)
  {
    v20 = CUXPCDecodeNSErrorIfNeeded();
    v21 = v20 == 0;
    if (v20 && error)
    {
      v20 = v20;
      *error = v20;
    }
  }

  else if (error)
  {
    DAErrorF(350000, "No reply");
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)setPartialIPsWithAuditToken:(id *)token partialIPs:(id)ps completionHandler:(id)handler
{
  psCopy = ps;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [DASession setPartialIPsWithAuditToken:handlerCopy partialIPs:v10 completionHandler:v11];
    }
  }

  v17 = 0;
  v13 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v13;
  v14 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v16 error:&v17];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [v14 bundleIdentifier];
    [(DASession *)self setPartialIPsForAppBundleID:bundleIdentifier partialIPs:psCopy completionHandler:v12];
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (void)setPartialIPsForAppBundleID:(id)d partialIPs:(id)ps completionHandler:(id)handler
{
  dCopy = d;
  psCopy = ps;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__DASession_setPartialIPsForAppBundleID_partialIPs_completionHandler___block_invoke;
  v15[3] = &unk_278F58020;
  v16 = dCopy;
  v17 = psCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = psCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __70__DASession_setPartialIPsForAppBundleID_partialIPs_completionHandler___block_invoke(id *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SIFs");
  v3 = a1[4];
  if (v3)
  {
    v4 = v2;
    v5 = [v3 UTF8String];
    if (v5)
    {
      xpc_dictionary_set_string(v4, "bndI", v5);
    }
  }

  CUXPCEncodeNSArrayOfObjects();
  v6 = [a1[6] _ensureXPCStarted];
  v7 = *(a1[6] + 11);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DASession_setPartialIPsForAppBundleID_partialIPs_completionHandler___block_invoke_2;
  v8[3] = &unk_278F57F08;
  v9 = a1[4];
  v10 = a1[7];
  xpc_connection_send_message_with_reply(v6, v2, v7, v8);
}

void __70__DASession_setPartialIPsForAppBundleID_partialIPs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    __70__DASession_setPartialIPsForAppBundleID_partialIPs_completionHandler___block_invoke_2_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getPartialIPsWithAuditToken:(id *)token completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = handlerCopy;
  if (gLogCategory_DASession <= 30)
  {
    if (gLogCategory_DASession != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(DASession *)handlerCopy getPartialIPsWithAuditToken:v7 completionHandler:v8];
    }
  }

  v15 = 0u;
  v16 = 0u;
  xpc_connection_get_audit_token();
  v14 = 0;
  v10 = *&token->var0[4];
  v13[0] = *token->var0;
  v13[1] = v10;
  v11 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v13 error:&v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [v11 bundleIdentifier];
    [(DASession *)self getPartialIPsWithAppBundleID:bundleIdentifier completionHandler:v9];
  }

  else
  {
    v9[2](v9, MEMORY[0x277CBEBF8], 0);
  }
}

- (void)getPartialIPsWithAppBundleID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__DASession_getPartialIPsWithAppBundleID_completionHandler___block_invoke;
  v8[3] = &unk_278F57DA8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(dispatchQueue, v8);
}

void __60__DASession_getPartialIPsWithAppBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "GIFs");
  CUXPCEncodeObject();
  CUXPCEncodeObject();
  v3 = [*(a1 + 32) _ensureXPCStarted];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DASession_getPartialIPsWithAppBundleID_completionHandler___block_invoke_2;
  v7[3] = &unk_278F57F08;
  v7[4] = v5;
  v8 = v4;
  xpc_connection_send_message_with_reply(v3, v2, v6, v7);
}

- (void)_xpcListenerEvent:(id)event
{
  eventCopy = event;
  v4 = MEMORY[0x24C1DC9E0]();
  if (v4 == MEMORY[0x277D86450])
  {
    v4 = [(DASession *)self _xpcConnectionAccept:eventCopy];
    goto LABEL_8;
  }

  v6 = eventCopy;
  if (eventCopy == MEMORY[0x277D863F8])
  {
    if (gLogCategory_DASession <= 30)
    {
      if (gLogCategory_DASession != -1 || (v4 = _LogCategory_Initialize(), v6 = eventCopy, v4))
      {
        v4 = [(DASession *)v4 _xpcListenerEvent:v6, v5];
        goto LABEL_8;
      }
    }
  }

  else if (gLogCategory_DASession <= 90)
  {
    if (gLogCategory_DASession != -1 || (v4 = _LogCategory_Initialize(), v6 = eventCopy, v4))
    {
      [DASession _xpcListenerEvent:v6];
LABEL_8:
      v6 = eventCopy;
    }
  }

  MEMORY[0x2821F96F8](v4, v6);
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  v8 = messageCopy;
  if (gLogCategory_DASession <= 9)
  {
    if (gLogCategory_DASession != -1 || (v5 = _LogCategory_Initialize(), messageCopy = v8, v5))
    {
      [DASession xpcReceivedMessage:messageCopy];
      messageCopy = v8;
    }
  }

  if (MEMORY[0x24C1DC9E0](messageCopy) == MEMORY[0x277D86468])
  {
    [(DASession *)self _xpcReceivedMessage:v8];
  }

  else if (v8 == MEMORY[0x277D863F0])
  {
    [(DASession *)self _interrupted];
  }

  else if (v8 == MEMORY[0x277D863F8])
  {
    if (!self->_invalidateCalled && gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      [DASession xpcReceivedMessage:?];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(DASession *)self _invalidated];
  }

  else
  {
    v6 = DAErrorF(350000, "XPC event error");
    if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      [(DASession *)v6 xpcReceivedMessage:v8];
    }
  }
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (string)
  {
    v5 = string;
    if (!strcmp(string, "Evnt"))
    {
      [(DASession *)self _xpcReceivedDAEvent:messageCopy];
    }

    else if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_DASession, "[DASession _xpcReceivedMessage:]", 90, "### XPC unknown message type: '%s', %@", v5, self);
    }
  }

  else if (gLogCategory_DASession <= 90 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [DASession _xpcReceivedMessage:?];
  }
}

- (void)_xpcReceivedDAEvent:(id)event
{
  eventCopy = event;
  if (MEMORY[0x24C1DC9E0]() != MEMORY[0x277D86468])
  {
    [DASession _xpcReceivedDAEvent:?];
    goto LABEL_32;
  }

  v17 = 0;
  v5 = [DAEvent allocInitWithXPCObject:eventCopy error:&v17];
  v6 = v17;
  if (!v5)
  {
    if (gLogCategory_DASession > 90 || gLogCategory_DASession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_31;
    }

    v16 = CUPrintNSError();
    LogPrintF(&gLogCategory_DASession, "[DASession _xpcReceivedDAEvent:]", 90, "### XPC DAEvent decode failed: %@, %@", self, v16);
    goto LABEL_30;
  }

  if (gLogCategory_DASession <= 30 && (gLogCategory_DASession != -1 || _LogCategory_Initialize()))
  {
    [DASession _xpcReceivedDAEvent:v5];
  }

  eventType = [v5 eventType];
  if (eventType > 40)
  {
    if (eventType != 41)
    {
      if (eventType != 42)
      {
        if (eventType != 50)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    device = [v5 device];
    identifier = [device identifier];
    if (identifier)
    {
      deviceMap = self->_deviceMap;
      v11 = 0;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (eventType == 15)
  {
    goto LABEL_28;
  }

  if (eventType == 40)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_17:
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          device2 = [v5 device];
          identifier2 = [device2 identifier];
          if (identifier2)
          {
            [(NSMutableDictionary *)self->_deviceMap setObject:device2 forKeyedSubscript:identifier2];
          }
        }

        goto LABEL_28;
      }
    }

    device = [v5 device];
    identifier = [device identifier];
    if (identifier)
    {
      deviceMap = self->_deviceMap;
      v11 = device;
LABEL_26:
      [(NSMutableDictionary *)deviceMap setObject:v11 forKeyedSubscript:identifier];
    }

LABEL_27:
    flags = [device flags];

    if ((flags & 8) != 0)
    {
LABEL_28:
      v15 = _Block_copy(self->_eventHandler);
      v16 = v15;
      if (v15)
      {
        (*(v15 + 2))(v15, v5);
      }

LABEL_30:
    }
  }

LABEL_31:

LABEL_32:
}

- (DASession)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(DASession *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v11 = OUTLINED_FUNCTION_8();
LABEL_13:
    DAErrorF(v11, v12, v13);
    *error = v9 = 0;
    goto LABEL_8;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v12 = "XPC non-dict";
    v11 = 350004;
    goto LABEL_13;
  }

  if (!CUXPCDecodeNSString())
  {
    goto LABEL_14;
  }

  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 != 6)
  {
    if (v8 != 5)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_8;
  }

  v7->_clientID = 0;
LABEL_7:
  v9 = v7;
LABEL_8:

  return v9;
}

BOOL __35__DASession__activateXPCCompleted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [DADevice alloc];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [(DADevice *)v5 initWithXPCObject:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = [(DADevice *)v7 identifier];
    v9 = v8 != 0;
    if (v8)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      v11 = OUTLINED_FUNCTION_8();
      v13 = DAErrorF(v11, v12);
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __50__DASession_removeDeviceAccess_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DASession, "[DASession removeDeviceAccess:completionHandler:]_block_invoke_2", 30, "RemoveDeviceAccess completed: %@, %@");
}

void __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_cold_1()
{
  v0 = OUTLINED_FUNCTION_8();
  v4 = DAErrorF(v0, v1);
  v2 = OUTLINED_FUNCTION_1_3();
  v3(v2);
}

void __68__DASession_setDeviceAccessoryServiceInfo_device_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DASession, "[DASession setDeviceAccessoryServiceInfo:device:completionHandler:]_block_invoke_2", 30, "setDeviceAccessoryServiceInfo completed: %@, %@");
}

void __61__DASession_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DASession, "[DASession setDeviceAppAccessInfo:device:completionHandler:]_block_invoke_2", 30, "SetDeviceAppAccessInfo completed: %@, %@");
}

void __33__DASession_resetWiFiIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF(&gLogCategory_DASession, "[DASession resetWiFiIdentifier:]_block_invoke_2", 30, "ResetWiFiIdentifier complete, error: %@", v1);
}

void __59__DASession_setState_device_simulateApp_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1[4];
  v3 = DADeviceStateToString(a1[7]);
  LogPrintF(&gLogCategory_DASession, "[DASession setState:device:simulateApp:completionHandler:]_block_invoke", 30, "SetDeviceState start: %@, state %@, bundleID %@", v2, v3, *(a1[5] + 64));
}

void __59__DASession_setState_device_simulateApp_completionHandler___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v6 = DADeviceStateToString(a1[7]);
  v4 = *(a1[5] + 64);
  v5 = CUPrintNSError();
  LogPrintF(&gLogCategory_DASession, "[DASession setState:device:simulateApp:completionHandler:]_block_invoke_2", 30, "SetDeviceState completed: %@, state %@, , bundleID %@, %@", v3, v6, v4, v5);
}

+ (void)setState:(uint64_t)a1 device:(void *)a2 session:simulateApp:error:.cold.1(uint64_t a1, void *a2)
{
  v14 = DADeviceStateToString(a1);
  v3 = [a2 bundleID];
  OUTLINED_FUNCTION_4_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&gLogCategory_DASession, "+[DASession setState:device:session:simulateApp:error:]", 30, "SetDeviceState start: %@, state %@, bundleID %@");
}

- (uint64_t)appIsUsingDeviceAccess
{
  if (*self)
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_DASession, "[DASession appIsUsingDeviceAccess]", 30, "check appIsUsingDeviceAccess completed with result: %s", v1);
}

+ (void)diagnosticShow:(void *)result endpoint:error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = DAErrorF(350004, "Convert reply to CF failed");
    *v1 = result;
  }

  return result;
}

void __46__DASession_diagnosticShow_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = DAErrorF(350000, "Params conversion failed");
  v3 = OUTLINED_FUNCTION_1_3();
  v4(v3, 0, v2);
}

void __46__DASession_diagnosticShow_completionHandler___block_invoke_2_cold_1(void (**a1)(uint64_t, void, id), uint64_t a2)
{
  v4 = DAErrorF(350000, "No error, no response");
  (*a1)(a2, 0, v4);
}

+ (void)networkingAllowedWithUUID:(uint64_t)a3 error:.cold.1(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = CUPrintNSError();
  LogPrintF(&gLogCategory_DASession, "+[DASession networkingAllowedWithUUID:error:]", 20, "NetworkingAllowedWithUUID: %@, allowed %s, error %@", a3, v4, v5);
}

+ (void)processAllowedWithAuditToken:(char)a1 error:(uint64_t)a2 .cold.1(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  v3 = CUPrintNSError();
  LogPrintF(&gLogCategory_DASession, "+[DASession processAllowedWithAuditToken:error:]", 20, "ProcessAllowedWithAuditToken: allowed %s, error %@", v2, v3);
}

+ (void)getPartialIPsWithAppBundleID:(void *)a1 error:.cold.2(void *a1)
{
  v1 = CUPrintNSObjectOneLine();
  LogPrintF(&gLogCategory_DASession, "+[DASession getPartialIPsWithAppBundleID:error:]", 30, "getPartialIPsWithAppBundleID completed: %@", v1);
}

void __70__DASession_setPartialIPsForAppBundleID_partialIPs_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DASession, "[DASession setPartialIPsForAppBundleID:partialIPs:completionHandler:]_block_invoke_2", 30, "setPartialIPsForAppBundleID bundleID %@, %@");
}

- (void)_xpcListenerEvent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = CUPrintXPC();
  LogPrintF(&gLogCategory_DASession, "[DASession _xpcListenerEvent:]", 90, "### XPC listener error: %@", v1);
}

- (void)xpcReceivedMessage:(uint64_t)a1 .cold.1(uint64_t a1)
{
  CUPrintXPC();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DASession, "[DASession xpcReceivedMessage:]", 9, "XPC event: %@, %@");
}

- (void)xpcReceivedMessage:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v14 = CUPrintNSError();
  v3 = CUPrintXPC();
  OUTLINED_FUNCTION_4_1(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&gLogCategory_DASession, "[DASession xpcReceivedMessage:]", 90, "### XPC error: %@, %@, %@");
}

- (uint64_t)_xpcReceivedDAEvent:(uint64_t)result .cold.1(uint64_t result)
{
  if (gLogCategory_DASession <= 90)
  {
    v1 = result;
    if (gLogCategory_DASession != -1)
    {
      return LogPrintF(&gLogCategory_DASession, "[DASession _xpcReceivedDAEvent:]", 90, "### XPC event non-dict: %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_DASession, "[DASession _xpcReceivedDAEvent:]", 90, "### XPC event non-dict: %@", v1);
    }
  }

  return result;
}

@end