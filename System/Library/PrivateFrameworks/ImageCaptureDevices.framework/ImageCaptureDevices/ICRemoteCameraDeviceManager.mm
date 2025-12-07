@interface ICRemoteCameraDeviceManager
- (BOOL)addRemoteCameraDevice:(id)device uuidString:(id)string deviceName:(id)name;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)remoteManagerConnectionWithProcessIdentifierAuthorized:(int)authorized;
- (BOOL)removeRemoteCameraDevice:(id)device;
- (id)initManaging:(id)managing systemDaemon:(BOOL)daemon;
- (id)remoteDeviceForPrimaryIdentifier:(id)identifier;
- (id)remoteDeviceForUUID:(id)d;
- (void)addRemoteManagerConnection:(id)connection;
- (void)addSelectorToInterface:(id)interface selectorString:(id)string origin:(BOOL)origin;
- (void)closeDevice:(id)device;
- (void)dealloc;
- (void)notifyClientDeviceAdded:(id)added uuidString:(id)string deviceName:(id)name;
- (void)notifyClientDeviceRemoved:(id)removed;
- (void)openDevice:(id)device withReply:(id)reply;
- (void)removeRemoteManagerConnectionWithProcessIdentifier:(int)identifier;
- (void)requestDeviceListWithOptions:(id)options reply:(id)reply;
- (void)updateRemoteManagerConnectionWithProcessIdentifier:(int)identifier authorized:(BOOL)authorized;
@end

@implementation ICRemoteCameraDeviceManager

- (id)initManaging:(id)managing systemDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  managingCopy = managing;
  v15.receiver = self;
  v15.super_class = ICRemoteCameraDeviceManager;
  v7 = [(ICRemoteCameraDeviceManager *)&v15 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    remoteManagerConnections = v7->_remoteManagerConnections;
    v7->_remoteManagerConnections = v8;

    v10 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    remoteCameraDevices = v7->_remoteCameraDevices;
    v7->_remoteCameraDevices = v10;

    v12 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    osTransactions = v7->_osTransactions;
    v7->_osTransactions = v12;

    v7->_remoteManagerConnectionsLock._os_unfair_lock_opaque = 0;
    v7->_remoteCameraDevicesLock._os_unfair_lock_opaque = 0;
    [(ICRemoteCameraDeviceManager *)v7 setSystemDaemon:daemonCopy];
    [(ICRemoteCameraDeviceManager *)v7 setManagedObjectName:managingCopy];
  }

  return v7;
}

- (void)dealloc
{
  if (self->_remoteManagerConnections)
  {
    [(ICRemoteCameraDeviceManager *)self removeRemoteManagerConnectionWithProcessIdentifier:0xFFFFFFFFLL];
    remoteManagerConnections = self->_remoteManagerConnections;
    self->_remoteManagerConnections = 0;
  }

  v4.receiver = self;
  v4.super_class = ICRemoteCameraDeviceManager;
  [(ICRemoteCameraDeviceManager *)&v4 dealloc];
}

- (id)remoteDeviceForUUID:(id)d
{
  v19 = *MEMORY[0x29EDCA608];
  dCopy = d;
  v5 = [(NSMutableArray *)self->_remoteCameraDevices copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uuidString = [v10 uuidString];
        v12 = [uuidString isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)remoteDeviceForPrimaryIdentifier:(id)identifier
{
  v19 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v5 = [(NSMutableArray *)self->_remoteCameraDevices copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        primaryIdentifierString = [v10 primaryIdentifierString];
        v12 = [primaryIdentifierString isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)removeRemoteCameraDevice:(id)device
{
  v21 = *MEMORY[0x29EDCA608];
  deviceCopy = device;
  os_unfair_lock_lock(&self->_remoteCameraDevicesLock);
  v5 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:deviceCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    __ICOSLogCreate(v6, v7);
    managedObjectName = [(ICRemoteCameraDeviceManager *)self managedObjectName];
    if ([managedObjectName length] >= 0x15)
    {
      v9 = [managedObjectName substringWithRange:{0, 18}];
      v10 = [v9 stringByAppendingString:@".."];

      managedObjectName = v10;
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"close device"];
    v12 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = managedObjectName;
      v14 = v12;
      v17 = 136446466;
      uTF8String = [managedObjectName UTF8String];
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_29EB58000, v14, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v17, 0x16u);
    }

    uuidString = [v5 uuidString];
    [(ICRemoteCameraDeviceManager *)self closeDevice:uuidString];

    objc_autoreleasePoolPop(v6);
  }

  os_unfair_lock_unlock(&self->_remoteCameraDevicesLock);

  return v5 != 0;
}

- (BOOL)addRemoteCameraDevice:(id)device uuidString:(id)string deviceName:(id)name
{
  deviceCopy = device;
  stringCopy = string;
  nameCopy = name;
  os_unfair_lock_lock(&self->_remoteCameraDevicesLock);
  v11 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:deviceCopy];

  if (!v11)
  {
    v12 = [[ICRemoteCameraDeviceProxy alloc] initWithPrimaryIdentifierString:deviceCopy uuidString:stringCopy localizedName:nameCopy];
    [(NSMutableArray *)self->_remoteCameraDevices addObject:v12];
  }

  os_unfair_lock_unlock(&self->_remoteCameraDevicesLock);

  return v11 == 0;
}

- (void)notifyClientDeviceAdded:(id)added uuidString:(id)string deviceName:(id)name
{
  v27 = *MEMORY[0x29EDCA608];
  addedCopy = added;
  if ([(ICRemoteCameraDeviceManager *)self addRemoteCameraDevice:addedCopy uuidString:string deviceName:name])
  {
    v19 = addedCopy;
    v20 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:addedCopy];
    os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_remoteManagerConnections;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v12)];
          v14 = [v13 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
          v15 = [v13 objectForKeyedSubscript:@"ICRemoteManagerAuthorized"];
          bOOLValue = [v15 BOOLValue];

          if (bOOLValue)
          {
            v17 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
            deviceContext = [v20 deviceContext];
            [v17 notifyAddedDevice:deviceContext];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
    addedCopy = v19;
  }
}

- (void)notifyClientDeviceRemoved:(id)removed
{
  v23 = *MEMORY[0x29EDCA608];
  removedCopy = removed;
  v16 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForPrimaryIdentifier:removedCopy];
  if (v16)
  {
    v15 = removedCopy;
    os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self->_remoteManagerConnections;
    v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v8)];
          v10 = [v9 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
          v11 = [v9 objectForKeyedSubscript:@"ICRemoteManagerAuthorized"];
          bOOLValue = [v11 BOOLValue];

          if (bOOLValue)
          {
            v13 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_69];
            deviceContext = [v16 deviceContext];
            [v13 notifyRemovedDevice:deviceContext];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
    removedCopy = v15;
    [(ICRemoteCameraDeviceManager *)self removeRemoteCameraDevice:v15];
  }
}

- (void)requestDeviceListWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __66__ICRemoteCameraDeviceManager_requestDeviceListWithOptions_reply___block_invoke;
  v7[3] = &unk_29F380C20;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(MEMORY[0x29EDCA578], v7);
}

void __66__ICRemoteCameraDeviceManager_requestDeviceListWithOptions_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  __ICOSLogCreate(a1, a2);
  v3 = @"getDeviceList";
  if ([@"getDeviceList" length] >= 0x15)
  {
    v4 = [@"getDeviceList" substringWithRange:{0, 18}];
    v3 = [v4 stringByAppendingString:@".."];
  }

  v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"requestDeviceListWithOptions:reply"];
  v6 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3;
    v8 = v6;
    *buf = 136446466;
    v23 = [(__CFString *)v3 UTF8String];
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&dword_29EB58000, v8, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v9 = [MEMORY[0x29EDB8DE8] array];
  v10 = [MEMORY[0x29EDB8E00] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [*(a1 + 32) remoteCameraDevices];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v17 + 1) + 8 * v15) deviceContext];
        [v9 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [v10 setObject:v9 forKeyedSubscript:@"ICDeviceContexts"];
  (*(*(a1 + 40) + 16))();
}

- (void)openDevice:(id)device withReply:(id)reply
{
  deviceCopy = device;
  replyCopy = reply;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __52__ICRemoteCameraDeviceManager_openDevice_withReply___block_invoke;
  block[3] = &unk_29F380C48;
  block[4] = self;
  v11 = deviceCopy;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = deviceCopy;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

void __52__ICRemoteCameraDeviceManager_openDevice_withReply___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) remoteDeviceForUUID:*(a1 + 40)];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v5 = v3;
  if (!v2)
  {
    goto LABEL_16;
  }

  v6 = [v2 camera];

  if (v6)
  {
    __ICOSLogCreate(v7, v8);
    v9 = [*(a1 + 32) managedObjectName];
    if ([v9 length] >= 0x15)
    {
      v10 = [v9 substringWithRange:{0, 18}];
      v11 = [v10 stringByAppendingString:@".."];

      v9 = v11;
    }

    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"> Existing Device"];
    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v9;
      v15 = v13;
      *buf = 136446466;
      v54 = [v9 UTF8String];
      v55 = 2114;
      v56 = v12;
      _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v16 = [v2 uuidString];
    [v5 setObject:v16 forKeyedSubscript:@"ICInternalDeviceUUID"];

    v17 = [v2 camera];
    v18 = [v17 endpoint];
    [v5 setObject:v18 forKeyedSubscript:@"ICDeviceEndpoint"];

    v19 = [v2 localizedName];
    [v5 setObject:v19 forKeyedSubscript:@"ICDeviceName"];

    v20 = [v2 camera];
    v21 = [v20 additionalProperties];

    if (v21)
    {
      v22 = [v2 camera];
      v23 = [v22 additionalProperties];
      [v5 addEntriesFromDictionary:v23];
    }

    v24 = *(*(a1 + 48) + 16);
LABEL_21:
    v24();
    goto LABEL_22;
  }

  v25 = [*(a1 + 32) managedObjectName];
  v26 = objc_alloc(NSClassFromString(v25));
  v27 = [v2 deviceContext];
  v28 = [v26 initWithDeviceContext:v27];

  if (!v28)
  {
LABEL_16:
    __ICOSLogCreate(v3, v4);
    v46 = [*(a1 + 32) managedObjectName];
    if ([v46 length] >= 0x15)
    {
      v47 = [v46 substringWithRange:{0, 18}];
      v48 = [v47 stringByAppendingString:@".."];

      v46 = v48;
    }

    v49 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"> Not Found: %@", *(a1 + 40)];
    v50 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v46;
      v52 = v50;
      *buf = 136446466;
      v54 = [v46 UTF8String];
      v55 = 2114;
      v56 = v49;
      _os_log_impl(&dword_29EB58000, v52, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v24 = *(*(a1 + 48) + 16);
    goto LABEL_21;
  }

  v29 = [v28 startListening];
  __ICOSLogCreate(v29, v30);
  v31 = [*(a1 + 32) managedObjectName];
  if ([v31 length] >= 0x15)
  {
    v32 = [v31 substringWithRange:{0, 18}];
    v33 = [v32 stringByAppendingString:@".."];

    v31 = v33;
  }

  v34 = MEMORY[0x29EDBA0F8];
  v35 = [v2 localizedName];
  v36 = [v34 stringWithFormat:@"> New Device: %@", v35];

  v37 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v31;
    v39 = v37;
    *buf = 136446466;
    v54 = [v31 UTF8String];
    v55 = 2114;
    v56 = v36;
    _os_log_impl(&dword_29EB58000, v39, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  [v28 setDelegate:*(a1 + 32)];
  v40 = [v28 endpoint];
  v41 = [v28 cameraDictionary];
  [v41 setObject:v40 forKeyedSubscript:@"ICDeviceEndpoint"];

  v42 = [v2 uuidString];
  v43 = [v28 cameraDictionary];
  [v43 setObject:v42 forKeyedSubscript:@"ICInternalDeviceUUID"];

  [v2 setCamera:v28];
  v44 = *(a1 + 48);
  v45 = [v28 cameraDictionary];
  (*(v44 + 16))(v44, v45);

LABEL_22:
}

- (void)closeDevice:(id)device
{
  v21 = *MEMORY[0x29EDCA608];
  deviceCopy = device;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ICRemoteCameraDeviceManager *)self remoteDeviceForUUID:deviceCopy];
  v8 = v6;
  if (v6)
  {
    __ICOSLogCreate(v6, v7);
    managedObjectName = [(ICRemoteCameraDeviceManager *)self managedObjectName];
    if ([managedObjectName length] >= 0x15)
    {
      v10 = [managedObjectName substringWithRange:{0, 18}];
      v11 = [v10 stringByAppendingString:@".."];

      managedObjectName = v11;
    }

    deviceCopy = [MEMORY[0x29EDBA0F8] stringWithFormat:@"close: %@", deviceCopy];
    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = managedObjectName;
      v15 = v13;
      *buf = 136446466;
      uTF8String = [managedObjectName UTF8String];
      v19 = 2114;
      v20 = deviceCopy;
      _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    camera = [v8 camera];
    [camera removeAllSessions];

    [(NSMutableArray *)self->_remoteCameraDevices removeObject:v8];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)addSelectorToInterface:(id)interface selectorString:(id)string origin:(BOOL)origin
{
  originCopy = origin;
  v7 = addSelectorToInterface_selectorString_origin__onceToken_0;
  stringCopy = string;
  interfaceCopy = interface;
  if (v7 != -1)
  {
    [ICRemoteCameraDeviceManager addSelectorToInterface:selectorString:origin:];
  }

  v9 = addSelectorToInterface_selectorString_origin__incomingClasses_0;
  v10 = NSSelectorFromString(stringCopy);

  [interfaceCopy setClasses:v9 forSelector:v10 argumentIndex:0 ofReply:originCopy];
}

uint64_t __76__ICRemoteCameraDeviceManager_addSelectorToInterface_selectorString_origin___block_invoke()
{
  v15 = objc_alloc(MEMORY[0x29EDB8E50]);
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v15 initWithObjects:{v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = addSelectorToInterface_selectorString_origin__incomingClasses_0;
  addSelectorToInterface_selectorString_origin__incomingClasses_0 = v10;

  return MEMORY[0x2A1C71028](v10, v11);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v20 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  __ICOSLogCreate(connectionCopy, v6);
  v7 = @"remoteManager";
  if ([@"remoteManager" length] >= 0x15)
  {
    v8 = [@"remoteManager" substringWithRange:{0, 18}];
    v7 = [v8 stringByAppendingString:@".."];
  }

  v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"New Connection: %d", objc_msgSend(connectionCopy, "processIdentifier")];
  v10 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    v12 = v10;
    *buf = 136446466;
    uTF8String = [(__CFString *)v7 UTF8String];
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_29EB58000, v12, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v13 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A254E320];
  v14 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A254E320];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v13 selectorString:@"requestDeviceListWithOptions:reply:" origin:1];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v13 selectorString:@"openDevice:withReply:" origin:1];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v13 selectorString:@"closeDevice:withReply:" origin:1];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v14 selectorString:@"notifyAddedDevice:" origin:0];
  [(ICRemoteCameraDeviceManager *)self addSelectorToInterface:v14 selectorString:@"notifyRemovedDevice:" origin:0];
  [connectionCopy setExportedInterface:v13];
  [connectionCopy setRemoteObjectInterface:v14];
  [connectionCopy setExportedObject:self];
  [(ICRemoteCameraDeviceManager *)self addRemoteManagerConnection:connectionCopy];
  [connectionCopy resume];

  return 1;
}

- (void)addRemoteManagerConnection:(id)connection
{
  v34 = *MEMORY[0x29EDCA608];
  connectionCopy = connection;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy_;
  v31[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v32 = selfCopy;
  v6 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __58__ICRemoteCameraDeviceManager_addRemoteManagerConnection___block_invoke;
  v28[3] = &unk_29F380C70;
  v30 = v31;
  v26 = v6;
  v29 = v26;
  [connectionCopy setInvalidationHandler:v28];
  invalidationHandler = [connectionCopy invalidationHandler];
  [connectionCopy setInterruptionHandler:invalidationHandler];

  memset(&error[1], 0, 32);
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  token = *&error[1];
  v8 = SecTaskCreateWithAuditToken(0, &token);
  error[0] = 0;
  v9 = SecTaskCopySigningIdentifier(v8, error);
  if (v8)
  {
    CFRelease(v8);
  }

  os_unfair_lock_lock(&selfCopy->_remoteManagerConnectionsLock);
  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%05d-%@", objc_msgSend(connectionCopy, "processIdentifier"), v9];
  v11 = v10;
  [v10 UTF8String];
  v12 = os_transaction_create();
  v13 = [(NSMutableDictionary *)selfCopy->_osTransactions setObject:v12 forKeyedSubscript:v10];
  __ICOSLogCreate(v13, v14);
  managedObjectName = [(ICRemoteCameraDeviceManager *)selfCopy managedObjectName];
  if ([managedObjectName length] >= 0x15)
  {
    v16 = [managedObjectName substringWithRange:{0, 18}];
    v17 = [v16 stringByAppendingString:@".."];

    managedObjectName = v17;
  }

  v18 = MEMORY[0x29EDBA0F8];
  osTransactions = [(ICRemoteCameraDeviceManager *)selfCopy osTransactions];
  allKeys = [osTransactions allKeys];
  v21 = [v18 stringWithFormat:@"+ %@:[%05lu]", v10, objc_msgSend(allKeys, "count")];

  v22 = _gICOSLog;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = managedObjectName;
    uTF8String = [managedObjectName UTF8String];
    token.val[0] = 136446466;
    *&token.val[1] = uTF8String;
    LOWORD(token.val[3]) = 2114;
    *(&token.val[3] + 2) = v21;
    _os_log_impl(&dword_29EB58000, v22, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &token, 0x16u);
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  [dictionary setObject:connectionCopy forKeyedSubscript:@"ICRemoteManagerConnection"];
  [dictionary setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"ICRemoteManagerAuthorized"];
  [(NSMutableDictionary *)selfCopy->_remoteManagerConnections setObject:dictionary forKeyedSubscript:v10];
  os_unfair_lock_unlock(&selfCopy->_remoteManagerConnectionsLock);

  _Block_object_dispose(v31, 8);
}

void __58__ICRemoteCameraDeviceManager_addRemoteManagerConnection___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1;
    [v3 removeRemoteManagerConnectionWithProcessIdentifier:{objc_msgSend(v2, "intValue")}];
  }
}

- (void)removeRemoteManagerConnectionWithProcessIdentifier:(int)identifier
{
  selfCopy = self;
  v69 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v5 = [(NSMutableDictionary *)selfCopy->_remoteManagerConnections copy];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v60;
    identifierCopy = identifier;
    v51 = *v60;
    v52 = v6;
    do
    {
      v10 = 0;
      v54 = v8;
      do
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v59 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v12 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
        processIdentifier = [v13 processIdentifier];
        if (identifier == -1 || processIdentifier == identifier)
        {
          osTransactions = [(ICRemoteCameraDeviceManager *)selfCopy osTransactions];
          [osTransactions removeObjectForKey:v11];

          __ICOSLogCreate(v16, v17);
          managedObjectName = [(ICRemoteCameraDeviceManager *)selfCopy managedObjectName];
          if ([managedObjectName length] >= 0x15)
          {
            v19 = [managedObjectName substringWithRange:{0, 18}];
            v20 = [v19 stringByAppendingString:@".."];

            managedObjectName = v20;
          }

          v21 = MEMORY[0x29EDBA0F8];
          v22 = selfCopy;
          osTransactions2 = [(ICRemoteCameraDeviceManager *)selfCopy osTransactions];
          allKeys = [osTransactions2 allKeys];
          v25 = [v21 stringWithFormat:@"- %@:[%05lu]", v11, objc_msgSend(allKeys, "count")];

          v26 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v27 = managedObjectName;
            v28 = v26;
            uTF8String = [managedObjectName UTF8String];
            *buf = 136446466;
            v65 = uTF8String;
            v66 = 2114;
            v67 = v25;
            _os_log_impl(&dword_29EB58000, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          [v13 setInvalidationHandler:0];
          [v13 setInterruptionHandler:0];
          [v13 invalidate];
          selfCopy = v22;
          [(NSMutableDictionary *)v22->_remoteManagerConnections removeObjectForKey:v11];
          identifier = identifierCopy;
          v9 = v51;
          v6 = v52;
          v8 = v54;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v8);
  }

  if (selfCopy->_systemDaemon && ![(NSMutableDictionary *)selfCopy->_remoteManagerConnections count])
  {
    v30 = selfCopy;
    v31 = [(NSMutableArray *)selfCopy->_remoteCameraDevices copy];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v56;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v56 != v35)
          {
            objc_enumerationMutation(v32);
          }

          camera = [*(*(&v55 + 1) + 8 * i) camera];
          [camera closeDevice];
        }

        v34 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v34);
    }

    os_unfair_lock_unlock(v30 + 3);
    v38 = MEMORY[0x29EDBA0F8];
    managedObjectName2 = [(os_unfair_lock_s *)v30 managedObjectName];
    v40 = [v38 stringWithFormat:@"%@-[D]", managedObjectName2];

    __ICOSLogCreate(v41, v42);
    v43 = v40;
    v44 = v43;
    if ([v43 length] >= 0x15)
    {
      v45 = [v43 substringWithRange:{0, 18}];
      v44 = [v45 stringByAppendingString:@".."];
    }

    v46 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Exiting %@", v43];
    v47 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v44;
      v49 = v47;
      uTF8String2 = [v44 UTF8String];
      *buf = 136446466;
      v65 = uTF8String2;
      v66 = 2114;
      v67 = v46;
      _os_log_impl(&dword_29EB58000, v49, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    exit(0);
  }

  os_unfair_lock_unlock(&selfCopy->_remoteManagerConnectionsLock);
}

- (void)updateRemoteManagerConnectionWithProcessIdentifier:(int)identifier authorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v20 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_remoteManagerConnections;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        v13 = [v12 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
        if ([v13 processIdentifier] == identifier)
        {
          v14 = [MEMORY[0x29EDBA070] numberWithBool:authorizedCopy];
          [v12 setObject:v14 forKeyedSubscript:@"ICRemoteManagerAuthorized"];

          goto LABEL_11;
        }
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
}

- (BOOL)remoteManagerConnectionWithProcessIdentifierAuthorized:(int)authorized
{
  v20 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_remoteManagerConnectionsLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_remoteManagerConnections;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_remoteManagerConnections objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        v11 = [v10 objectForKeyedSubscript:@"ICRemoteManagerConnection"];
        if ([v11 processIdentifier] == authorized)
        {
          v13 = [v10 objectForKeyedSubscript:@"ICRemoteManagerAuthorized"];
          bOOLValue = [v13 BOOLValue];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  bOOLValue = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_remoteManagerConnectionsLock);
  return bOOLValue;
}

@end