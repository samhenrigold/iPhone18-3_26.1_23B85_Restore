@interface BLTPingSubscriberManager
- (BLTBulletinDistributorSubscriberDeviceDelegate)deviceDelegate;
- (BLTPingSubscriberManager)initWithDeviceDelegate:(id)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_loadPingSubscriberBundles:(id)bundles;
@end

@implementation BLTPingSubscriberManager

- (BLTPingSubscriberManager)initWithDeviceDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = BLTPingSubscriberManager;
  v5 = [(BLTPingSubscriberManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceDelegate, delegateCopy);
    v7 = objc_alloc_init(BLTBulletinDistributorSubscriberList);
    subscribers = v6->_subscribers;
    v6->_subscribers = v7;

    v9 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/BulletinDistributor/PingSubscribers"];
    [(BLTPingSubscriberManager *)v6 _loadPingSubscriberBundles:v9];
    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletindistributord.server"];
    listener = v6->_listener;
    v6->_listener = v10;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.bulletindistributord.server"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (isKindOfClass = [v6 BOOLValue], (isKindOfClass))
  {
    v8 = [[BLTSubscriberRemoteClient alloc] initWithConnection:connectionCopy];
    v9 = [[BLTBulletinDistributorSubscriber alloc] initWithClient:v8];
    deviceDelegate = [(BLTPingSubscriberManager *)self deviceDelegate];
    [(BLTBulletinDistributorSubscriber *)v9 setDeviceDelegate:deviceDelegate];

    [connectionCopy setExportedObject:v9];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28544E800];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = 1;
    [v11 setClasses:v14 forSelector:sel_getWillNanoPresentNotificationForSectionID_subsectionIDs_completion_ argumentIndex:1 ofReply:0];
    [connectionCopy setExportedInterface:v11];
    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285454D28];
    [connectionCopy setRemoteObjectInterface:v16];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__BLTPingSubscriberManager_listener_shouldAcceptNewConnection___block_invoke;
    v22[3] = &unk_278D31400;
    v22[4] = self;
    v17 = v9;
    v23 = v17;
    [connectionCopy setInvalidationHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__BLTPingSubscriberManager_listener_shouldAcceptNewConnection___block_invoke_2;
    v20[3] = &unk_278D31400;
    v20[4] = self;
    v21 = v17;
    v18 = v17;
    [connectionCopy setInterruptionHandler:v20];
    [connectionCopy resume];
    [(BLTBulletinDistributorSubscriberList *)self->_subscribers addSubscriber:v18];
  }

  else
  {
    v8 = blt_general_log(isKindOfClass);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      [BLTPingSubscriberManager listener:&v8->super shouldAcceptNewConnection:?];
    }

    v15 = 0;
  }

  return v15;
}

- (void)_loadPingSubscriberBundles:(id)bundles
{
  v37 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v35 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:bundlesCopy error:&v35];
  v7 = v35;

  if (v7)
  {
    obj = blt_general_log(v8);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(BLTPingSubscriberManager *)v7 _loadPingSubscriberBundles:?];
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v25 = v6;
      v11 = *v32;
      v12 = 0x277CCA000uLL;
      v13 = &selRef_hasShowsOnExternalDevices;
      v27 = *v32;
      selfCopy = self;
      v26 = bundlesCopy;
      do
      {
        v14 = 0;
        v29 = v10;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [bundlesCopy stringByAppendingPathComponent:*(*(&v31 + 1) + 8 * v14)];
          v16 = [*(v12 + 2264) bundleWithPath:v15];
          principalClass = [v16 principalClass];
          if (principalClass)
          {
            v18 = principalClass;
            if ([(objc_class *)principalClass conformsToProtocol:v13[441]])
            {
              v19 = objc_alloc_init(BLTLocalPingSubscriberService);
              v20 = [[v18 alloc] initWithService:v19];
              v21 = [[BLTBulletinDistributorSubscriber alloc] initWithClient:v20];
              [(BLTPingSubscriberManager *)selfCopy deviceDelegate];
              v22 = v13;
              v24 = v23 = v12;
              [(BLTBulletinDistributorSubscriber *)v21 setDeviceDelegate:v24];

              v12 = v23;
              v13 = v22;
              [(BLTLocalPingSubscriberService *)v19 setSubscriber:v21];
              bundlesCopy = v26;
              v10 = v29;
              [(BLTBulletinDistributorSubscriberList *)selfCopy->_subscribers addSubscriber:v21];
              [v20 pingSubscriberDidLoad];

              v11 = v27;
            }
          }

          ++v14;
        }

        while (v10 != v14);
        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
      v7 = 0;
      v6 = v25;
    }
  }
}

- (BLTBulletinDistributorSubscriberDeviceDelegate)deviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "No entitlement %@", &v2, 0xCu);
}

- (void)_loadPingSubscriberBundles:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error loading ping subscriber bundles: %@", &v2, 0xCu);
}

@end