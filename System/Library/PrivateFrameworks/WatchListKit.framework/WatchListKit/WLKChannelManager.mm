@interface WLKChannelManager
+ (id)defaultChannelManager;
- (NSXPCConnection)connection;
- (void)_invalidationHandler;
- (void)vppaConsentedBundleIDsWithCompletion:(id)completion;
@end

@implementation WLKChannelManager

+ (id)defaultChannelManager
{
  if (defaultChannelManager_token != -1)
  {
    +[WLKChannelManager defaultChannelManager];
  }

  v3 = defaultChannelManager_defaultChannelManager;

  return v3;
}

uint64_t __42__WLKChannelManager_defaultChannelManager__block_invoke()
{
  v0 = objc_alloc_init(WLKChannelManager);
  v1 = defaultChannelManager_defaultChannelManager;
  defaultChannelManager_defaultChannelManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)vppaConsentedBundleIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(WLKChannelManager *)selfCopy connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3_1];

  [v6 vppaConsentedBundleIDsWithCompletion:completionCopy];
  objc_sync_exit(selfCopy);
}

void __58__WLKChannelManager_vppaConsentedBundleIDsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPlaybackTrackingLogObject(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelManager - Error: Unable to communicate with the remote object proxy (%@)", &v4, 0xCu);
  }
}

- (NSXPCConnection)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = selfCopy->_connection;
    selfCopy->_connection = v3;

    v5 = selfCopy->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)selfCopy->_connection setExportedObject:selfCopy];
    v7 = selfCopy->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:&__block_literal_global_7_1];
    objc_initWeak(&location, selfCopy);
    v9 = selfCopy->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __31__WLKChannelManager_connection__block_invoke_8;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)selfCopy->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  v10 = selfCopy->_connection;

  return v10;
}

void __31__WLKChannelManager_connection__block_invoke(uint64_t a1)
{
  v1 = WLKPlaybackTrackingLogObject(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKChannelManager - Connection interrupted.", v2, 2u);
  }
}

void __31__WLKChannelManager_connection__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidationHandler];
}

- (void)_invalidationHandler
{
  v3 = WLKPlaybackTrackingLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelManager - Connection invalidated.", v6, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  selfCopy->_connection = 0;

  objc_sync_exit(selfCopy);
}

@end