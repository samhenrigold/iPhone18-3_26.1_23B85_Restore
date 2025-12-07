@interface DADiscovery
- (BOOL)runningExtension;
- (DADiscovery)init;
- (DADiscovery)initWithConfiguration:(id)configuration error:(id *)error;
- (DADiscovery)initWithConfigurations:(id)configurations error:(id *)error;
- (DADiscovery)initWithXPCObject:(id)object error:(id *)error;
- (NSArray)discoveredDevices;
- (id)_ensureXPCStarted;
- (id)_uuidFromExtension:(id)extension;
- (id)descriptionWithLevel:(int)level;
- (void)_activateDirect;
- (void)_activateExtension:(id)extension;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_findExtensionPoint:(id)point bundleID:(id)d entitlement:(id)entitlement completion:(id)completion;
- (void)_getAuthorizedDevicesCompleted:(id)completed completionHandler:(id)handler;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportASKEvent:(id)event;
- (void)_reportEvent:(id)event;
- (void)_reportEventType:(int64_t)type;
- (void)_startExtensions:(id)extensions bundleID:(id)d entitlement:(id)entitlement completion:(id)completion;
- (void)_stopExtensons;
- (void)_updateNEPolicy:(id)policy remove:(BOOL)remove;
- (void)_xpcReceivedDAEvent:(id)event;
- (void)_xpcReceivedDeviceEvent:(id)event;
- (void)_xpcReceivedMessage:(id)message;
- (void)activate;
- (void)encodeWithXPCObject:(id)object;
- (void)finishMigration;
- (void)getAuthorizedDevices:(id)devices;
- (void)invalidate;
- (void)invalidateWithReason:(unint64_t)reason;
- (void)migrateDevices;
- (void)modifyDeviceWithIdentifier:(id)identifier settings:(id)settings completionHandler:(id)handler;
- (void)reportDeviceChanged:(id)changed appID:(id)d;
- (void)respondToBluetoothPairingRequest:(id)request completionHandler:(id)handler;
- (void)respondToWiFiAwarePairingRequest:(id)request completionHandler:(id)handler;
- (void)runOtherDiscovery;
- (void)setDeviceAppAccessInfo:(id)info device:(id)device completionHandler:(id)handler;
- (void)setState:(int64_t)state device:(id)device simulateApp:(BOOL)app completionHandler:(id)handler;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation DADiscovery

- (DADiscovery)init
{
  v5.receiver = self;
  v5.super_class = DADiscovery;
  v2 = [(DADiscovery *)&v5 init];
  if (v2)
  {
    v2->_clientID = CUXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v2->_lock._os_unfair_lock_opaque = 0;
    v3 = v2;
  }

  return v2;
}

- (DADiscovery)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v7 = [(DADiscovery *)self init];
  if (v7)
  {
    v8 = [configurationCopy copy];
    configuration = v7->_configuration;
    v7->_configuration = v8;

    v10 = v7;
  }

  else
  {
    [DADiscovery initWithConfiguration:error error:?];
  }

  return v7;
}

- (DADiscovery)initWithConfigurations:(id)configurations error:(id *)error
{
  configurationsCopy = configurations;
  v7 = [(DADiscovery *)self init];
  if (v7)
  {
    v8 = [configurationsCopy copy];
    configurations = v7->_configurations;
    v7->_configurations = v8;

    v10 = v7;
  }

  else
  {
    [DADiscovery initWithConfiguration:error error:?];
  }

  return v7;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  uTF8String = [(NSString *)self->_bundleID UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(objectCopy, "bndI", uTF8String);
  }

  deviceOTANameToBroadcast = self->_deviceOTANameToBroadcast;
  xdict = objectCopy;
  uTF8String2 = [(NSString *)deviceOTANameToBroadcast UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(xdict, "ldNm", uTF8String2);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  CUXPCEncodeObject();
  CUXPCEncodeNSArrayOfObjects();
  xpc_dictionary_set_uint64(xdict, "dsFs", self->_flags);
}

- (id)descriptionWithLevel:(int)level
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v4 = objc_opt_class();
  NSAppendPrintF(&v29, "%@, CID 0x%X %@, DeviceOTAName:%@", v4, self->_clientID, self->_bundleID, self->_deviceOTANameToBroadcast);
  v5 = v29;
  v6 = v5;
  extensions = self->_extensions;
  if (extensions)
  {
    v28 = v5;
    v8 = extensions;
    NSAppendPrintF(&v28, ", extensions %d", [(NSMutableSet *)v8 count]);
    v9 = v28;

    v6 = v9;
  }

  configuration = self->_configuration;
  if (configuration)
  {
    v27 = v6;
    v11 = configuration;
    NSAppendPrintF(&v27, ", config: %@", v11);
    v12 = v27;

    v6 = v12;
  }

  v13 = self->_configurations;
  v14 = v13;
  if (v13)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        v19 = v6;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v23 + 1) + 8 * v18);
          v22 = v19;
          NSAppendPrintF(&v22, ", %@", v20);
          v6 = v22;

          ++v18;
          v19 = v6;
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v16);
    }
  }

  return v6;
}

- (NSArray)discoveredDevices
{
  os_unfair_lock_lock(&self->_lock);
  deviceMap = self->_deviceMap;
  if (deviceMap)
  {
    allValues = [(NSMutableDictionary *)deviceMap allValues];
  }

  else
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (BOOL)runningExtension
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_extensions;
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(NSMutableSet *)v3 count];

  return v4 != 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__DADiscovery_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__23__DADiscovery_activate__block_invoke(void *result)
{
  v1 = result;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __23__DADiscovery_activate__block_invoke_cold_1();
    }
  }

  v2 = v1[4];
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
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

- (void)_activateDirect
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [(DADiscovery *)self _activateDirect];
  }

  bundleID = [(DADiscoveryConfiguration *)self->_configuration bundleID];
  bundleID = bundleID;
  if (!bundleID)
  {
    bundleID = self->_bundleID;
  }

  v5 = bundleID;

  self->_activateTimeInterval = CFAbsoluteTimeGetCurrent();
  if (v5)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30__DADiscovery__activateDirect__block_invoke;
    v13[3] = &unk_278F57E20;
    v13[4] = self;
    [(DADiscovery *)self _findExtensionPoint:@"com.apple.discovery-extension" bundleID:v5 entitlement:@"com.apple.developer.media-device-discovery-extension" completion:v13];
    if ((self->_flags & 4) != 0)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __30__DADiscovery__activateDirect__block_invoke_2;
      v11[3] = &unk_278F57E48;
      v11[4] = self;
      v12 = v5;
      [(DADiscovery *)self _findExtensionPoint:@"com.apple.accessory-setup-extension" bundleID:v12 entitlement:@"com.apple.developer.accessory-setup-discovery-extension" completion:v11];
    }

    else
    {
      [(DADiscovery *)self runOtherDiscovery];
    }
  }

  else
  {
    if (gLogCategory_DADiscovery <= 90)
    {
      if (gLogCategory_DADiscovery != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(DADiscovery *)v6 _activateDirect];
      }
    }

    v9 = DAErrorF(350001, "Bundle does not exist");
    v10 = [[DAEvent alloc] initWithEventType:10 error:v9];
    [(DADiscovery *)self _reportEvent:v10];
  }
}

void __30__DADiscovery__activateDirect__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _activateExtension:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void __30__DADiscovery__activateDirect__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 32) _activateExtension:*(*(&v12 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  if (!v9[11] && !v9[12])
  {
    v4 = DAErrorF(350001, "Extension or configurations not available on %@", *(a1 + 40));
    v10 = *(a1 + 32);
    v11 = [[DAEvent alloc] initWithEventType:32 error:v4];
    [v10 _reportEvent:v11];

LABEL_9:
    goto LABEL_10;
  }

  if (([v9 flags] & 0x10) != 0)
  {
    [gDADaemonServer runUpgradeWithDiscovery:*(a1 + 32)];
  }

  else if (([*(a1 + 32) flags] & 8) != 0)
  {
    [gDADaemonServer runMigrationWithDiscovery:*(a1 + 32) fromPostOnboarding:0];
  }

  else
  {
    [gDADaemonServer runSystemDiscovery];
  }

LABEL_10:
}

- (void)runOtherDiscovery
{
  bundleID = [(DADiscoveryConfiguration *)self->_configuration bundleID];
  bundleID = bundleID;
  if (!bundleID)
  {
    bundleID = self->_bundleID;
  }

  v8 = bundleID;

  v5 = v8;
  if ((self->_flags & 0x20) != 0)
  {
    if (self->_configuration || self->_configurations)
    {
      [gDADaemonServer runSystemDiscovery];
    }

    else
    {
      v6 = DAErrorF(350001, "Device discovery configurations not provided for %@", v8);
      v7 = [[DAEvent alloc] initWithEventType:32 error:v6];
      [(DADiscovery *)self _reportEvent:v7];
    }

    v5 = v8;
  }
}

- (void)migrateDevices
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DADiscovery_migrateDevices__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__DADiscovery_migrateDevices__block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __29__DADiscovery_migrateDevices__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 finishMigration];
}

- (void)finishMigration
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [(DADiscovery *)self finishMigration];
  }

  xdict = xpc_dictionary_create(0, 0, 0);
  [(DADiscovery *)self encodeWithXPCObject:xdict];
  xpc_dictionary_set_string(xdict, "mTyp", "DscM");
  _ensureXPCStarted = [(DADiscovery *)self _ensureXPCStarted];
  xpc_connection_send_message_with_reply(_ensureXPCStarted, xdict, self->_dispatchQueue, &__block_literal_global);
}

uint64_t __30__DADiscovery_finishMigration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_DADiscovery <= 30)
  {
    v5 = v2;
    if (gLogCategory_DADiscovery != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __30__DADiscovery_finishMigration__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_activateExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_alloc_init(DADiscoveryExtension);
  [(DADiscoveryExtension *)v5 setDispatchQueue:self->_dispatchQueue];
  [(DADiscoveryExtension *)v5 setEkExtension:extensionCopy];

  [(DADiscoveryExtension *)v5 setParent:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__DADiscovery__activateExtension___block_invoke;
  v10[3] = &unk_278F57CB8;
  v10[4] = self;
  v10[5] = v5;
  [(DADiscoveryExtension *)v5 setInvalidationHandler:v10];
  extensions = self->_extensions;
  if (!extensions)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->_extensions;
    self->_extensions = v7;

    extensions = self->_extensions;
  }

  [(NSMutableSet *)extensions addObject:v5];
  v9 = [(DADiscovery *)self _uuidFromExtension:v5];
  if (v9)
  {
    [(DADiscovery *)self _updateNEPolicy:v9 remove:0];
  }

  [(DADiscoveryExtension *)v5 activate];
}

uint64_t __34__DADiscovery__activateExtension___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _invalidated];
}

- (void)_activateXPCStart:(BOOL)start
{
  if (start)
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v4 = "Re-activate XPC: %@";
LABEL_11:
      [(DADiscovery *)v4 _activateXPCStart:?];
    }
  }

  else if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    v4 = "Activate XPC: %@";
    goto LABEL_11;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  [(DADiscovery *)self encodeWithXPCObject:v5];
  xpc_dictionary_set_string(v5, "mTyp", "DscA");
  _ensureXPCStarted = [(DADiscovery *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__DADiscovery__activateXPCStart___block_invoke;
  handler[3] = &unk_278F57E90;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  v40 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__DADiscovery__activateXPCCompleted___block_invoke;
  aBlock[3] = &unk_278F57EB8;
  aBlock[4] = self;
  aBlock[5] = &v32;
  v5 = _Block_copy(aBlock);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v33[5];
  v33[5] = v6;

  if (!v33[5])
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _activateXPCCompleted:]", 30, "Activated: %@", self);
    }

    v30 = 0;
    if (![(DADiscoveryConfiguration *)self->_configuration presenceOnly])
    {
      objc_opt_class();
      CUXPCDecodeNSArrayOfClass();
    }

    if ([v30 count])
    {
      os_unfair_lock_lock(&self->_lock);
      if (!self->_deviceMap)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        deviceMap = self->_deviceMap;
        self->_deviceMap = v8;
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = v30;
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v39 count:16];
      if (v11)
      {
        v12 = *v27;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            identifier = [v14 identifier];
            if (identifier)
            {
              [(NSMutableDictionary *)self->_deviceMap setObject:v14 forKeyedSubscript:identifier];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v26 objects:v39 count:16];
        }

        while (v11);
      }

      os_unfair_lock_unlock(&self->_lock);
    }

    [(DADiscovery *)self _reportEventType:10];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v30;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v38 count:16];
    if (v17)
    {
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:40 device:*(*(&v22 + 1) + 8 * j)];
          [(DADiscovery *)self _reportEvent:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v22 objects:v38 count:16];
      }

      while (v17);
    }

    if (xpc_dictionary_get_BOOL(completedCopy, "dvPr"))
    {
      v21 = [[DAEventDevicesPresent alloc] initWithPresent:1 devicesMigrated:0];
      [(DADiscovery *)self _reportEvent:v21];
    }
  }

  v5[2](v5);

  _Block_object_dispose(&v32, 8);
}

void __37__DADiscovery__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v2 = *(a1 + 32);
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _activateXPCCompleted:]_block_invoke", 90, "### Activate failed: %@, %@", v2, v3);
    }

    v4 = *(a1 + 32);
    v5 = [[DAEvent alloc] initWithEventType:10 error:*(*(*(a1 + 40) + 8) + 40)];
    [v4 _reportEvent:v5];
  }
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
    handler[2] = __32__DADiscovery__ensureXPCStarted__block_invoke;
    handler[3] = &unk_278F57E90;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    v5 = mach_service;
  }

  return v5;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    v7 = v2;
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [(DADiscovery *)self _interrupted];
    }

    [(DADiscovery *)self _reportEventType:60, v3, v7, v4];

    [(DADiscovery *)self _activateXPCStart:1];
  }
}

- (void)invalidate
{
  [gDADaemonServer runSystemDiscovery];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DADiscovery_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

char *__25__DADiscovery_invalidate__block_invoke(char *result)
{
  v2 = result + 32;
  v1 = *(result + 4);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      __25__DADiscovery_invalidate__block_invoke_cold_1(v2);
    }

    v3 = *(*v2 + 48);
    if (v3)
    {
      xpc_connection_cancel(v3);
    }

    [*v2 _stopExtensons];
    v4 = *v2;

    return [v4 _invalidated];
  }

  return result;
}

- (void)invalidateWithReason:(unint64_t)reason
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__DADiscovery_invalidateWithReason___block_invoke;
  v4[3] = &unk_278F57EE0;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(dispatchQueue, v4);
}

void __36__DADiscovery_invalidateWithReason___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    if (gLogCategory_DADiscovery <= 50 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      __36__DADiscovery_invalidateWithReason___block_invoke_cold_1(a1);
    }

    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "mTyp", "DsSp");
    v3 = *(a1 + 40);
    if (v3)
    {
      xpc_dictionary_set_uint64(v2, "DSpRn", v3);
    }

    v4 = [*(a1 + 32) _ensureXPCStarted];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__DADiscovery_invalidateWithReason___block_invoke_2;
    handler[3] = &unk_278F57E90;
    handler[4] = v5;
    xpc_connection_send_message_with_reply(v4, v2, v6, handler);
  }
}

void __36__DADiscovery_invalidateWithReason___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __36__DADiscovery_invalidateWithReason___block_invoke_2_cold_1(v3);
  }

  [*(a1 + 32) invalidate];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableSet *)self->_extensions count]&& !self->_xpcCnx)
  {
    [(DADiscovery *)self _reportEventType:20];
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [(DADiscovery *)self _invalidated];
    }
  }
}

- (void)_reportEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery _reportEvent:eventCopy];
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
  [(DADiscovery *)self _reportEvent:v4];
}

- (void)getAuthorizedDevices:(id)devices
{
  devicesCopy = devices;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__DADiscovery_getAuthorizedDevices___block_invoke;
  v7[3] = &unk_278F57DA8;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_async(dispatchQueue, v7);
}

void __36__DADiscovery_getAuthorizedDevices___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "GADv");
  v3 = objc_alloc_init(DASession);
  v4 = [*(*(a1 + 32) + 88) bundleID];
  v5 = v4;
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 120);
  }

  [(DASession *)v3 setBundleID:v5];

  [(DASession *)v3 setClientID:*(*(a1 + 32) + 60)];
  CUXPCEncodeObject();
  v6 = [*(a1 + 32) _ensureXPCStarted];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__DADiscovery_getAuthorizedDevices___block_invoke_2;
  v10[3] = &unk_278F57F08;
  v10[4] = v8;
  v11 = v7;
  xpc_connection_send_message_with_reply(v6, v2, v9, v10);
}

- (void)_getAuthorizedDevicesCompleted:(id)completed completionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__DADiscovery__getAuthorizedDevicesCompleted_completionHandler___block_invoke;
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
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v11 = CUPrintNSObjectOneLine();
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _getAuthorizedDevicesCompleted:completionHandler:]", 30, "GetAuthorizedDevices completed: %@", v11);
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  v8[2](v8);

  _Block_object_dispose(&v15, 8);
}

uint64_t __64__DADiscovery__getAuthorizedDevicesCompleted_completionHandler___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      v3 = CUPrintNSError();
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _getAuthorizedDevicesCompleted:completionHandler:]_block_invoke", 90, "### GetAuthorizedDevices failed: %@", v3);
    }

    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)respondToBluetoothPairingRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke;
  block[3] = &unk_278F57F80;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 50 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_cold_1();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "BTPM");
  xpc_dictionary_set_string(v2, "mSTyp", "BTPRsp");
  CUXPCEncodeObject();
  v3 = [*(a1 + 40) _ensureXPCStarted];
  v4 = *(*(a1 + 40) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v6 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

uint64_t __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v3;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2_cold_1(v3);
      v3 = v7;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)respondToWiFiAwarePairingRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke;
  block[3] = &unk_278F57F80;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

void __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 50 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_cold_1();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "wFPM");
  CUXPCEncodeObject();
  v3 = [*(a1 + 40) _ensureXPCStarted];
  v4 = *(*(a1 + 40) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v6 = *(a1 + 48);
  xpc_connection_send_message_with_reply(v3, v2, v4, handler);
}

uint64_t __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v3;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2_cold_1(v3);
      v3 = v7;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return MEMORY[0x2821F96F8](v5, v3);
}

- (void)setState:(int64_t)state device:(id)device simulateApp:(BOOL)app completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke;
  v14[3] = &unk_278F57FD0;
  v15 = deviceCopy;
  selfCopy = self;
  v17 = handlerCopy;
  stateCopy = state;
  v12 = handlerCopy;
  v13 = deviceCopy;
  dispatch_async(dispatchQueue, v14);
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke(uint64_t a1)
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_cold_1(a1);
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "mTyp", "SDvS");
  CUXPCEncodeObject();
  xpc_dictionary_set_int64(v2, "dvSt", *(a1 + 56));
  v3 = objc_alloc_init(DASession);
  v4 = [*(*(a1 + 40) + 88) bundleID];
  v5 = v4;
  if (!v4)
  {
    v5 = *(*(a1 + 40) + 120);
  }

  [(DASession *)v3 setBundleID:v5];

  [(DASession *)v3 setClientID:*(*(a1 + 40) + 60)];
  CUXPCEncodeObject();
  v6 = [*(a1 + 40) _ensureXPCStarted];
  v7 = *(*(a1 + 40) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57FA8;
  v8 = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = v8;
  v14 = v9;
  v13 = v10;
  xpc_connection_send_message_with_reply(v6, v2, v7, handler);
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2_cold_1(a1, v3);
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
  v15[2] = __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke;
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

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke(id *a1)
{
  if (([a1[4] flags] & 0x408) != 0)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "mTyp", "SAAi");
    v3 = objc_alloc_init(DASession);
    v4 = [*(a1[5] + 11) bundleID];
    v5 = v4;
    if (!v4)
    {
      v5 = *(a1[5] + 15);
    }

    [(DASession *)v3 setBundleID:v5];

    [(DASession *)v3 setClientID:*(a1[5] + 15)];
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    CUXPCEncodeObject();
    v6 = [a1[5] _ensureXPCStarted];
    v7 = *(a1[5] + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2;
    v8[3] = &unk_278F57F08;
    v9 = a1[6];
    v10 = a1[7];
    xpc_connection_send_message_with_reply(v6, v2, v7, v8);
  }

  else
  {
    __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_cold_1(a1);
  }
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)modifyDeviceWithIdentifier:(id)identifier settings:(id)settings completionHandler:(id)handler
{
  identifierCopy = identifier;
  settingsCopy = settings;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke;
  v15[3] = &unk_278F58020;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = settingsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = settingsCopy;
  v14 = identifierCopy;
  dispatch_async(dispatchQueue, v15);
}

void __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = objc_alloc_init(DASession);
  v4 = [*(*(a1 + 32) + 88) bundleID];
  v5 = v4;
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 120);
  }

  [(DASession *)v3 setBundleID:v5];

  [(DASession *)v3 setClientID:*(*(a1 + 32) + 60)];
  xpc_dictionary_set_string(v2, "mTyp", "MdSt");
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = [v6 UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(v7, "id", v8);
  }

  CUXPCEncodeObject();
  CUXPCEncodeObject();
  v9 = [*(a1 + 32) _ensureXPCStarted];
  v10 = *(*(a1 + 32) + 64);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke_2;
  handler[3] = &unk_278F57F58;
  v12 = *(a1 + 56);
  xpc_connection_send_message_with_reply(v9, v7, v10, handler);
}

void __69__DADiscovery_modifyDeviceWithIdentifier_settings_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

- (void)reportDeviceChanged:(id)changed appID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = [(DAEventDevice *)[DADeviceEvent alloc] initWithEventType:42 device:changedCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_extensions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) reportEventToExtension:{v6, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  v8 = messageCopy;
  if (gLogCategory_DADiscovery <= 9)
  {
    if (gLogCategory_DADiscovery != -1 || (v5 = _LogCategory_Initialize(), messageCopy = v8, v5))
    {
      [DADiscovery xpcReceivedMessage:];
      messageCopy = v8;
    }
  }

  if (MEMORY[0x24C1DC9E0](messageCopy) == MEMORY[0x277D86468])
  {
    [(DADiscovery *)self _xpcReceivedMessage:v8];
  }

  else if (v8 == MEMORY[0x277D863F0])
  {
    [(DADiscovery *)self _interrupted];
  }

  else if (v8 == MEMORY[0x277D863F8])
  {
    if (!self->_invalidateCalled && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery xpcReceivedMessage:?];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(DADiscovery *)self _invalidated];
  }

  else
  {
    v6 = DAErrorF(350000, "XPC event error");
    if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [(DADiscovery *)v6 xpcReceivedMessage:v8, self];
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
      [(DADiscovery *)self _xpcReceivedDAEvent:messageCopy];
    }

    else if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _xpcReceivedMessage:]", 90, "### XPC unknown message type: '%s', %@", v5, self);
    }
  }

  else if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscovery _xpcReceivedMessage:?];
  }
}

- (void)_xpcReceivedDAEvent:(id)event
{
  eventCopy = event;
  if (MEMORY[0x24C1DC9E0]() != MEMORY[0x277D86468])
  {
    [DADiscovery _xpcReceivedDAEvent:];
    goto LABEL_14;
  }

  v9 = 0;
  v5 = [DAEvent allocInitWithXPCObject:eventCopy error:&v9];
  v6 = v9;
  if (v5)
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscovery _xpcReceivedDAEvent:v5];
    }

    if (([v5 eventType] - 40) > 2)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(DADiscovery *)self _xpcReceivedDeviceEvent:v5];
LABEL_10:
      v7 = _Block_copy(self->_eventHandler);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, v5);
      }

      goto LABEL_13;
    }

    [DADiscovery _xpcReceivedDAEvent:];
  }

  else
  {
    [gLogCategory_DADiscovery _xpcReceivedDAEvent:v6, self];
  }

LABEL_13:

LABEL_14:
}

- (void)_xpcReceivedDeviceEvent:(id)event
{
  eventCopy = event;
  device = [eventCopy device];
  identifier = [device identifier];
  if (identifier)
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self->_deviceMap)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      deviceMap = self->_deviceMap;
      self->_deviceMap = v6;
    }

    if ([eventCopy eventType] == 41)
    {
      v8 = 0;
    }

    else
    {
      v8 = device;
    }

    [(NSMutableDictionary *)self->_deviceMap setObject:v8 forKeyedSubscript:identifier];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [DADiscovery _xpcReceivedDeviceEvent:];
  }
}

- (void)_findExtensionPoint:(id)point bundleID:(id)d entitlement:(id)entitlement completion:(id)completion
{
  pointCopy = point;
  dCopy = d;
  entitlementCopy = entitlement;
  completionCopy = completion;
  v14 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:pointCopy];
  v15 = MEMORY[0x277CC5E00];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke;
  v20[3] = &unk_278F58070;
  v20[4] = self;
  v21 = pointCopy;
  v23 = entitlementCopy;
  v24 = completionCopy;
  v22 = dCopy;
  v16 = entitlementCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v19 = pointCopy;
  [v15 executeQuery:v14 completionHandler:v20];
}

void __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2;
  v6[3] = &unk_278F58048;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v12 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2(uint64_t *a1)
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    __67__DADiscovery__findExtensionPoint_bundleID_entitlement_completion___block_invoke_2_cold_1(a1);
  }

  if ((*(a1[6] + 32) & 1) != 0 || ![a1[5] count])
  {
    v8 = *(a1[9] + 16);

    return v8();
  }

  else
  {
    v3 = a1[5];
    v2 = a1[6];
    v4 = a1[7];
    v5 = a1[8];
    v6 = a1[9];

    return [v2 _startExtensions:v3 bundleID:v4 entitlement:v5 completion:v6];
  }
}

- (void)_startExtensions:(id)extensions bundleID:(id)d entitlement:(id)entitlement completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  dCopy = d;
  entitlementCopy = entitlement;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v12 = dCopy;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = extensionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        bundleIdentifier = [v18 bundleIdentifier];
        stringByDeletingPathExtension = [bundleIdentifier stringByDeletingPathExtension];

        if (v12 && ([stringByDeletingPathExtension isEqual:v12] & 1) == 0)
        {
          if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _startExtensions:bundleID:entitlement:completion:]", 30, "Ignoring extension parent bundle mismatch: expected %@ vs %@", v12, stringByDeletingPathExtension);
          }
        }

        else
        {
          v21 = [v18 entitlementNamed:entitlementCopy ofClass:objc_opt_class()];
          bOOLValue = [v21 BOOLValue];

          if (bOOLValue)
          {
            [array addObject:v18];
          }

          else if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            [DADiscovery _startExtensions:v18 bundleID:? entitlement:? completion:?];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, array);
  }
}

- (void)_stopExtensons
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_extensions;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(DADiscovery *)self _uuidFromExtension:v8, v10];
        if (v9)
        {
          [(DADiscovery *)self _updateNEPolicy:v9 remove:1];
        }

        [v8 invalidate];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_updateNEPolicy:(id)policy remove:(BOOL)remove
{
  removeCopy = remove;
  v123[3] = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v109 = policyCopy;
  if (gLogCategory_DADiscovery <= 30)
  {
    if (gLogCategory_DADiscovery != -1 || (policyCopy = _LogCategory_Initialize(), policyCopy))
    {
      policyCopy = [DADiscovery _updateNEPolicy:v109 remove:?];
    }
  }

  if (v109)
  {
    if (removeCopy)
    {
      policySessions = self->_policySessions;
      p_policySessions = &self->_policySessions;
      uUIDString = [v109 UUIDString];
      v12 = [(NSMutableDictionary *)policySessions objectForKeyedSubscript:uUIDString];

      if (v12)
      {
        if (([v12 removeAllPolicies] & 1) == 0 && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        if (([v12 apply] & 1) == 0 && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        v13 = *p_policySessions;
        uUIDString2 = [v109 UUIDString];
        [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:uUIDString2];

        if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:? remove:?];
        }
      }

      else
      {
        [DADiscovery _updateNEPolicy:remove:];
      }
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CD92F0]);
      if (v12)
      {
        v15 = objc_alloc(MEMORY[0x277CD92D8]);
        v16 = [MEMORY[0x277CD92E8] skipWithOrder:20];
        allInterfaces = [MEMORY[0x277CD92E0] allInterfaces];
        v123[0] = allInterfaces;
        v18 = [MEMORY[0x277CD92E0] customEntitlement:@"com.apple.developer.media-device-discovery-extension"];
        v123[1] = v18;
        v19 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
        v123[2] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:3];
        v21 = [v15 initWithOrder:0 result:v16 conditions:v20];

        v105 = v21;
        if (![v12 addPolicy:v21] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        v22 = objc_alloc(MEMORY[0x277CD92D8]);
        v23 = [MEMORY[0x277CD92E8] skipWithOrder:100];
        allInterfaces2 = [MEMORY[0x277CD92E0] allInterfaces];
        v122[0] = allInterfaces2;
        v25 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
        v122[1] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:2];
        v27 = [v22 initWithOrder:10 result:v23 conditions:v26];

        v104 = v27;
        if (![v12 addPolicy:v27] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        selfCopy = self;
        v28 = objc_alloc(MEMORY[0x277CD92D8]);
        v29 = [MEMORY[0x277CD92E8] skipWithOrder:65];
        allInterfaces3 = [MEMORY[0x277CD92E0] allInterfaces];
        v121[0] = allInterfaces3;
        v31 = [MEMORY[0x277CD92E0] schemeUsingPort:53];
        v121[1] = v31;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:2];
        v33 = [v28 initWithOrder:25 result:v29 conditions:v32];

        v103 = v33;
        if (![v12 addPolicy:v33] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        v34 = MEMORY[0x277CD92E0];
        v35 = [MEMORY[0x277CD91B8] endpointWithHostname:@"224.0.0.0" port:@"0"];
        v107 = [v34 remoteAddress:v35 prefix:4];

        v36 = MEMORY[0x277CD92E0];
        v37 = [MEMORY[0x277CD91B8] endpointWithHostname:@"ff00::" port:@"0"];
        v38 = [v36 remoteAddress:v37 prefix:8];

        v39 = MEMORY[0x277CD92E0];
        v40 = [MEMORY[0x277CD91B8] endpointWithHostname:@"255.255.255.255" port:@"0"];
        v41 = [v39 remoteAddress:v40 prefix:32];

        v42 = MEMORY[0x277CD92E0];
        v43 = [MEMORY[0x277CD91B8] endpointWithHostname:@"224.0.0.0" port:@"0"];
        v44 = [v42 localAddress:v43 prefix:4];

        v45 = MEMORY[0x277CD92E0];
        v46 = [MEMORY[0x277CD91B8] endpointWithHostname:@"ff00::" port:@"0"];
        v47 = [v45 localAddress:v46 prefix:8];

        v48 = MEMORY[0x277CD92E0];
        v49 = [MEMORY[0x277CD91B8] endpointWithHostname:@"255.255.255.255" port:@"0"];
        v50 = [v48 localAddress:v49 prefix:32];

        v120[0] = v107;
        v120[1] = v38;
        v101 = v41;
        v102 = v38;
        v120[2] = v41;
        v120[3] = v44;
        v99 = v47;
        v100 = v44;
        v120[4] = v47;
        v120[5] = v50;
        v98 = v50;
        [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:6];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        obj = v113 = 0u;
        v51 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v111;
          do
          {
            v54 = 0;
            do
            {
              if (*v111 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v55 = *(*(&v110 + 1) + 8 * v54);
              v56 = objc_alloc(MEMORY[0x277CD92D8]);
              v57 = [MEMORY[0x277CD92E8] skipWithOrder:50];
              allInterfaces4 = [MEMORY[0x277CD92E0] allInterfaces];
              v118[0] = allInterfaces4;
              v59 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
              v118[1] = v59;
              v118[2] = v55;
              v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:3];
              v61 = [v56 initWithOrder:30 result:v57 conditions:v60];

              if (![v12 addPolicy:v61] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
              {
                [DADiscovery _updateNEPolicy:v109 remove:?];
              }

              ++v54;
            }

            while (v52 != v54);
            v62 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
            v52 = v62;
          }

          while (v62);
        }

        v63 = objc_alloc(MEMORY[0x277CD92D8]);
        v64 = [MEMORY[0x277CD92E8] skipWithOrder:100];
        allInterfaces5 = [MEMORY[0x277CD92E0] allInterfaces];
        v117[0] = allInterfaces5;
        localNetworks = [MEMORY[0x277CD92E0] localNetworks];
        v117[1] = localNetworks;
        v67 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
        v117[2] = v67;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:3];
        v69 = [v63 initWithOrder:35 result:v64 conditions:v68];

        if (![v12 addPolicy:v69] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        v70 = objc_alloc(MEMORY[0x277CD92D8]);
        drop = [MEMORY[0x277CD92E8] drop];
        allInterfaces6 = [MEMORY[0x277CD92E0] allInterfaces];
        v116[0] = allInterfaces6;
        v73 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
        v116[1] = v73;
        v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
        v75 = [v70 initWithOrder:40 result:drop conditions:v74];

        v97 = v75;
        if (![v12 addPolicy:v75] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        v76 = objc_alloc(MEMORY[0x277CD92D8]);
        v77 = [MEMORY[0x277CD92E8] skipWithOrder:100];
        allInterfaces7 = [MEMORY[0x277CD92E0] allInterfaces];
        v115[0] = allInterfaces7;
        v79 = [MEMORY[0x277CD92E0] customEntitlement:@"com.apple.developer.networking.multicast"];
        v115[1] = v79;
        v80 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
        v115[2] = v80;
        v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:3];
        v82 = [v76 initWithOrder:60 result:v77 conditions:v81];

        v83 = v82;
        if (![v12 addPolicy:v82] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        v84 = objc_alloc(MEMORY[0x277CD92D8]);
        drop2 = [MEMORY[0x277CD92E8] drop];
        allInterfaces8 = [MEMORY[0x277CD92E0] allInterfaces];
        v114[0] = allInterfaces8;
        v87 = [MEMORY[0x277CD92E0] effectiveApplication:v109];
        v114[1] = v87;
        v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
        v89 = [v84 initWithOrder:70 result:drop2 conditions:v88];

        if (![v12 addPolicy:v89] && gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
        {
          [DADiscovery _updateNEPolicy:v109 remove:?];
        }

        if ([v12 apply])
        {
          v90 = &selfCopy->_policySessions;
          v91 = selfCopy->_policySessions;
          if (!v91)
          {
            v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v93 = *v90;
            *v90 = v92;

            v91 = *v90;
          }

          uUIDString3 = [v109 UUIDString];
          [(NSMutableDictionary *)v91 setObject:v12 forKeyedSubscript:uUIDString3];

          v96 = v103;
          v95 = v104;
          if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            [DADiscovery _updateNEPolicy:v90 remove:?];
          }
        }

        else
        {
          v96 = v103;
          v95 = v104;
          if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
          {
            [DADiscovery _updateNEPolicy:v109 remove:?];
          }
        }
      }

      else
      {
        [DADiscovery _updateNEPolicy:remove:];
      }
    }
  }

  else
  {
    [(DADiscovery *)policyCopy _updateNEPolicy:v7 remove:v8];
  }
}

- (id)_uuidFromExtension:(id)extension
{
  extensionCopy = extension;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  ekExtension = [extensionCopy ekExtension];
  bundleIdentifier = [ekExtension bundleIdentifier];

  if (bundleIdentifier)
  {
    [bundleIdentifier UTF8String];
    v6 = NEHelperCacheCopyAppUUIDMapping();
    v7 = v6;
    if (v6 && MEMORY[0x24C1DC9E0](v6) == MEMORY[0x277D86440])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __34__DADiscovery__uuidFromExtension___block_invoke;
      applier[3] = &unk_278F58098;
      applier[4] = &v11;
      xpc_array_apply(v7, applier);
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __34__DADiscovery__uuidFromExtension___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x24C1DC9E0]() == MEMORY[0x277D864D0])
  {
    bytes = xpc_uuid_get_bytes(v4);
    if (bytes)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  return 1;
}

- (DADiscovery)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(DADiscovery *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v13 = objc_opt_class();
    v11 = OUTLINED_FUNCTION_8();
LABEL_18:
    DAErrorF(v11, v12, v13);
    *error = v9 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v12 = "XPC non-dict";
    v11 = 350004;
    goto LABEL_18;
  }

  CUXPCDecodeNSString();
  CUXPCDecodeNSString();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 != 6)
  {
    if (v8 != 5)
    {
      goto LABEL_6;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_13;
  }

  v7->_clientID = 0;
LABEL_6:
  objc_opt_class();
  OUTLINED_FUNCTION_9();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_19;
  }

  if (!v7->_configuration)
  {
    objc_opt_class();
    OUTLINED_FUNCTION_9();
    CUXPCDecodeNSArrayOfClass();
    if (!v7->_configuration && !v7->_configurations)
    {
      goto LABEL_19;
    }
  }

  if (CUXPCDecodeUInt64RangedEx() == 6)
  {
    v7->_flags = 0;
  }

  v9 = v7;
LABEL_13:

  return v9;
}

- (void)_reportASKEvent:(id)event
{
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  device = [eventCopy device];
  if (!device)
  {
    goto LABEL_43;
  }

  bundleID = [(DADiscoveryConfiguration *)self->_configuration bundleID];
  bundleID = bundleID;
  if (!bundleID)
  {
    bundleID = self->_bundleID;
  }

  v8 = bundleID;

  v9 = [gDADaemonServer getDevicesWithFlags:8 appID:v8];
  if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _reportASKEvent:]", 90, " authorizedDevices authorized %@", v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v11)
  {
LABEL_19:

    identifier = [device identifier];
    if (identifier)
    {
      [device setFlags:8];
      discoveryConfiguration = [device discoveryConfiguration];

      if (!discoveryConfiguration)
      {
        v26 = objc_alloc_init(DADiscoveryConfiguration);
        [(DADiscoveryConfiguration *)v26 setBundleID:v8];
        [device identifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_4() setAssociationIdentifier:?];

        [device name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_4() setDisplayName:?];

        -[DADiscoveryConfiguration setAllowsBluetoothPairing:](v26, "setAllowsBluetoothPairing:", [device allowPairing]);
        [device bluetoothIdentifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_4() setBluetoothIdentifier:?];

        discoveryConfiguration2 = [device discoveryConfiguration];
        flags = [discoveryConfiguration2 flags];
        [(DADiscoveryConfiguration *)v26 setFlags:[(DADiscoveryConfiguration *)v26 flags]| flags];

        discoveryConfiguration3 = [device discoveryConfiguration];
        [discoveryConfiguration3 wifiAwareServiceName];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3() setWifiAwareServiceName:?];

        discoveryConfiguration4 = [device discoveryConfiguration];
        -[DADiscoveryConfiguration setWifiAwareServiceType:](v26, "setWifiAwareServiceType:", [discoveryConfiguration4 wifiAwareServiceType]);

        discoveryConfiguration5 = [device discoveryConfiguration];
        [discoveryConfiguration5 wifiAwareModelNameMatch];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3() setWifiAwareModelNameMatch:?];

        discoveryConfiguration6 = [device discoveryConfiguration];
        [discoveryConfiguration6 wifiAwareVendorNameMatch];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_3() setWifiAwareVendorNameMatch:?];

        [device setDiscoveryConfiguration:v26];
      }

      [device setDiscoveredInExtension:1];
      if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _reportASKEvent:]", 30, "ReportASKEvent: %@", eventCopy);
      }

      v39 = _Block_copy(self->_eventHandler);
      v40 = v39;
      if (v39)
      {
        (*(v39 + 2))(v39, eventCopy);
      }
    }

    goto LABEL_42;
  }

  identifier = v11;
  v13 = *v46;
  v42 = v8;
  v43 = eventCopy;
  obj = v10;
  selfCopy = self;
LABEL_10:
  v10 = 0;
  while (1)
  {
    if (*v46 != v13)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v45 + 1) + 8 * v10);
    eventCopy = [v14 bluetoothIdentifier];
    bluetoothIdentifier = [device bluetoothIdentifier];
    v16 = [eventCopy isEqual:bluetoothIdentifier];

    if (v16)
    {
      OUTLINED_FUNCTION_5();
      v8 = v42;
      if (!(v35 ^ v36 | v34))
      {
        goto LABEL_42;
      }

      if (v33 == -1)
      {
        identifier = v10;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }
      }

      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _reportASKEvent:]", 90, "Bluetooth Device already authorized ");
LABEL_37:
      identifier = v10;
      goto LABEL_42;
    }

    eventCopy = [v14 SSID];
    sSID = [device SSID];
    v18 = [eventCopy isEqual:sSID];

    if (v18)
    {
      OUTLINED_FUNCTION_5();
      v8 = v42;
      if (!(v35 ^ v36 | v34))
      {
        goto LABEL_42;
      }

      if (v37 == -1)
      {
        identifier = v10;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }
      }

      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _reportASKEvent:]", 90, "WiFi Device already authorized ");
      goto LABEL_37;
    }

    wifiAwareDevicePairingID = [v14 wifiAwareDevicePairingID];
    if (wifiAwareDevicePairingID)
    {
      eventCopy = wifiAwareDevicePairingID;
      discoveryConfiguration7 = [v14 discoveryConfiguration];
      wifiAwareServiceName = [discoveryConfiguration7 wifiAwareServiceName];
      discoveryConfiguration8 = [device discoveryConfiguration];
      wifiAwareServiceName2 = [discoveryConfiguration8 wifiAwareServiceName];
      v24 = [wifiAwareServiceName isEqual:wifiAwareServiceName2];

      if (v24)
      {
        break;
      }
    }

    v10 = v10 + 1;
    if (identifier == v10)
    {
      v10 = obj;
      identifier = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      v8 = v42;
      eventCopy = v43;
      self = selfCopy;
      if (identifier)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_5();
  v8 = v42;
  if (v35 ^ v36 | v34)
  {
    if (v38 != -1 || (identifier = v10, _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _reportASKEvent:]", 90, "Wi-Fi Aware Device already authorized");
      goto LABEL_37;
    }
  }

LABEL_42:

LABEL_43:
}

- (void)initWithConfiguration:(void *)result error:.cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = DAErrorF(350000, "init failed");
    *v1 = result;
  }

  return result;
}

void __36__DADiscovery_invalidateWithReason___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery invalidateWithReason:]_block_invoke_2", 30, "invalidateWithReason completed: %@", v1);
}

void __66__DADiscovery_respondToBluetoothPairingRequest_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery respondToBluetoothPairingRequest:completionHandler:]_block_invoke_2", 30, "respondToBluetoothPairingRequest completed: %@", v1);
}

void __66__DADiscovery_respondToWiFiAwarePairingRequest_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = CUPrintNSError();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery respondToWiFiAwarePairingRequest:completionHandler:]_block_invoke_2", 30, "respondToWiFiAwarePairingRequest completed: %@", v1);
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  DADeviceStateToString(*(a1 + 56));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery setState:device:simulateApp:completionHandler:]_block_invoke", 30, "SetDeviceState start: %@, state %@");
}

void __61__DADiscovery_setState_device_simulateApp_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = DADeviceStateToString(*(a1 + 48));
  v3 = CUPrintNSError();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery setState:device:simulateApp:completionHandler:]_block_invoke_2", 30, "SetDeviceState completed: %@, state %@, %@", v2, v4, v3);
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = OUTLINED_FUNCTION_8();
  v4 = DAErrorF(v2, v3);
  (*(v1 + 16))(v1, v4);
}

void __63__DADiscovery_setDeviceAppAccessInfo_device_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery setDeviceAppAccessInfo:device:completionHandler:]_block_invoke_2", 30, "SetDeviceAppAccessInfo completed: %@, %@");
}

- (void)xpcReceivedMessage:.cold.1()
{
  CUPrintXPC();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery xpcReceivedMessage:]", 9, "XPC event: %@, %@");
}

- (void)xpcReceivedMessage:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CUPrintNSError();
  v4 = CUPrintXPC();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery xpcReceivedMessage:]", 90, "### XPC error: %@, %@, %@", a3, v5, v4);
}

- (void)_xpcReceivedDAEvent:.cold.1()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _xpcReceivedDAEvent:]", 90, "### XPC event non-dict: %@", v0);
    }
  }
}

- (void)_xpcReceivedDAEvent:.cold.3()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _xpcReceivedDAEvent:]", 90, "### XPC device event bad class: %@", v0);
    }
  }
}

- (void)_xpcReceivedDAEvent:(uint64_t)a3 .cold.4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 90 && (a1 != -1 || _LogCategory_Initialize()))
  {
    v4 = CUPrintNSError();
    LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _xpcReceivedDAEvent:]", 90, "### XPC DAEvent decode failed: %@, %@", a3, v4);
  }
}

- (void)_xpcReceivedDeviceEvent:.cold.1()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _xpcReceivedDeviceEvent:]", 90, "### XPC device event no ID: %@", v0);
    }
  }
}

- (void)_startExtensions:(void *)a1 bundleID:entitlement:completion:.cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _startExtensions:bundleID:entitlement:completion:]", 30, "Ignoring extension without entitlement: %@", v1);
}

- (void)_updateNEPolicy:(void *)a1 remove:.cold.11(void *a1)
{
  v1 = CUPrintNSObjectOneLine();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _updateNEPolicy:remove:]", 30, "NEPolicySession added to policy dictionary: %@", v1);
}

- (void)_updateNEPolicy:remove:.cold.12()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _updateNEPolicy:remove:]", 90, "### Failed to create NEPolicy session for extensionID: %@", v0);
    }
  }
}

- (void)_updateNEPolicy:(void *)a1 remove:.cold.15(void *a1)
{
  v1 = CUPrintNSObjectOneLine();
  LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _updateNEPolicy:remove:]", 30, "NEPolicySession removed from device dictionary: %@", v1);
}

- (void)_updateNEPolicy:remove:.cold.16()
{
  if (gLogCategory_DADiscovery <= 90)
  {
    OUTLINED_FUNCTION_6();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_DADiscovery, "[DADiscovery _updateNEPolicy:remove:]", 90, "### Failed to get current session for extensionID: %@", v0);
    }
  }
}

- (void)_updateNEPolicy:(uint64_t)a3 remove:.cold.17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_11(&gLogCategory_DADiscovery, "[DADiscovery _updateNEPolicy:remove:]", a3, "### Invalid extensionID");
  }
}

@end