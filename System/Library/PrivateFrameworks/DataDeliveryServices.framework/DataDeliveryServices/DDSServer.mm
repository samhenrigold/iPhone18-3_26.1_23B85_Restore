@interface DDSServer
+ (id)interface;
+ (id)setUpAssertionStorageDirectory;
+ (id)sharedInstance;
+ (id)sharedInstanceWithConfiguration:(id)configuration;
+ (void)setUpAssertionStorageDirectory;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DDSServer)initWithXPCServiceName:(id)name assertionStorageFileURL:(id)l;
- (void)dealloc;
- (void)handleEndedConnection:(id)connection;
- (void)setCompatabilityVersion:(int64_t)version forAssetType:(id)type;
- (void)start;
@end

@implementation DDSServer

+ (id)setUpAssertionStorageDirectory
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/DataDeliveryServices"];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v6 = [defaultManager createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
  v7 = v12;

  v9 = DefaultLog(v8);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v4;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Verified the DDS folder is present at %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[(DDSServer *)v7];
  }

  return v4;
}

+ (id)sharedInstance
{
  v2 = [DDSServerConfiguration alloc];
  v3 = +[DDSServer setUpAssertionStorageDirectory];
  v4 = [(DDSServerConfiguration *)v2 initWithXPCServiceName:@"com.apple.DataDeliveryServices.AssetService" assertionStorageDirectoryURL:v3];

  v5 = [DDSServer sharedInstanceWithConfiguration:v4];

  return v5;
}

+ (id)sharedInstanceWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DDSServer_sharedInstanceWithConfiguration___block_invoke;
  block[3] = &unk_1E86C5AF0;
  v10 = configurationCopy;
  v4 = sharedInstanceWithConfiguration__onceToken;
  v5 = configurationCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedInstanceWithConfiguration__onceToken, block);
  }

  v6 = sharedInstanceWithConfiguration__sharedInstance;
  v7 = sharedInstanceWithConfiguration__sharedInstance;

  return v6;
}

void __45__DDSServer_sharedInstanceWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcServiceName];
  v11 = [v2 stringByAppendingPathExtension:@"plist"];

  v3 = [*(a1 + 32) xpcServiceName];
  v4 = [v3 isEqualToString:@"com.apple.DataDeliveryServices.AssetService"];

  if (v4)
  {

    v11 = @"ddsassertiondata.plist";
  }

  v5 = [*(a1 + 32) assertionStorageDirectoryURL];
  v6 = [v5 URLByAppendingPathComponent:v11];

  v7 = [DDSServer alloc];
  v8 = [*(a1 + 32) xpcServiceName];
  v9 = [(DDSServer *)v7 initWithXPCServiceName:v8 assertionStorageFileURL:v6];
  v10 = sharedInstanceWithConfiguration__sharedInstance;
  sharedInstanceWithConfiguration__sharedInstance = v9;

  [sharedInstanceWithConfiguration__sharedInstance start];
}

- (DDSServer)initWithXPCServiceName:(id)name assertionStorageFileURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = DDSServer;
  v8 = [(DDSServer *)&v23 init];
  if (v8)
  {
    v9 = objc_alloc_init(DDSMobileAssetv2Provider);
    provider = v8->_provider;
    v8->_provider = v9;

    v11 = [[DDSAssertionDataHandler alloc] initWithAssertionStorageFileURL:lCopy];
    v12 = [[DDSAssertionTracker alloc] initWithDataHandler:v11];
    v13 = [[DDSManager alloc] initWithProvider:v8->_provider tracker:v12];
    manager = v8->_manager;
    v8->_manager = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    clientConnections = v8->_clientConnections;
    v8->_clientConnections = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v18 = dispatch_queue_create([@"com.apple.DataDeliveryServices.ddsserver.queue" cStringUsingEncoding:4], v17);
    queue = v8->_queue;
    v8->_queue = v18;

    v20 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
    listener = v8->_listener;
    v8->_listener = v20;

    [(NSXPCListener *)v8->_listener _setQueue:v8->_queue];
  }

  return v8;
}

- (void)setCompatabilityVersion:(int64_t)version forAssetType:(id)type
{
  typeCopy = type;
  provider = [(DDSServer *)self provider];
  [provider setCompatabilityVersion:version forAssetType:typeCopy];
}

- (void)start
{
  [(DDSManaging *)self->_manager setDelegate:self];
  [(NSXPCListener *)self->_listener setDelegate:self];
  listener = self->_listener;

  [(NSXPCListener *)listener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = DefaultLog(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = connectionCopy;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Server shouldAcceptNewConnection: (%{public}@)", buf, 0xCu);
  }

  manager = [(DDSServer *)self manager];
  [connectionCopy setExportedObject:manager];

  interface = [objc_opt_class() interface];
  [connectionCopy setExportedInterface:interface];

  v11 = +[DDSInterface interface];
  [connectionCopy setRemoteObjectInterface:v11];

  queue = [(DDSServer *)self queue];
  [connectionCopy _setQueue:queue];

  objc_initWeak(buf, connectionCopy);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__DDSServer_listener_shouldAcceptNewConnection___block_invoke;
  v21[3] = &unk_1E86C5B18;
  objc_copyWeak(&v22, buf);
  v21[4] = self;
  [connectionCopy setInvalidationHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __48__DDSServer_listener_shouldAcceptNewConnection___block_invoke_309;
  v18 = &unk_1E86C5B18;
  objc_copyWeak(&v20, buf);
  selfCopy = self;
  [connectionCopy setInterruptionHandler:&v15];
  v13 = [(DDSServer *)self clientConnections:v15];
  [v13 addObject:connectionCopy];

  [connectionCopy resume];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  return 1;
}

void __48__DDSServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = DefaultLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Client connection invalidated: %{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) handleEndedConnection:v3];
  }
}

void __48__DDSServer_listener_shouldAcceptNewConnection___block_invoke_309(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = DefaultLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__DDSServer_listener_shouldAcceptNewConnection___block_invoke_309_cold_1(v3, v4);
    }

    [*(a1 + 32) handleEndedConnection:v3];
  }
}

- (void)handleEndedConnection:(id)connection
{
  connectionCopy = connection;
  clientConnections = [(DDSServer *)self clientConnections];
  [clientConnections removeObject:connectionCopy];
}

+ (id)interface
{
  if (interface_onceToken != -1)
  {
    +[DDSServer interface];
  }

  v3 = interface_xpcClientInterface;

  return v3;
}

uint64_t __22__DDSServer_interface__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AC8C18];
  v1 = interface_xpcClientInterface;
  interface_xpcClientInterface = v0;

  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_addAssertionForQuery_policy_assertionID_clientID_ argumentIndex:0 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_addAssertionForQuery_policy_assertionID_clientID_ argumentIndex:1 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_addAssertionForQuery_policy_assertionID_clientID_ argumentIndex:2 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_addAssertionForQuery_policy_assertionID_clientID_ argumentIndex:3 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_removeAssertionWithID_ argumentIndex:0 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_assertionIDsForClientID_reply_ argumentIndex:0 ofReply:0];
  v2 = interface_xpcClientInterface;
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_assertionIDsForClientID_reply_ argumentIndex:0 ofReply:1];

  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_fetchAssetUpdateStatusForQuery_callback_ argumentIndex:0 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_fetchAssetUpdateStatusForQuery_callback_ argumentIndex:0 ofReply:1];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_fetchAssetUpdateStatusForQuery_callback_ argumentIndex:1 ofReply:1];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_updateAssetForQuery_callback_ argumentIndex:0 ofReply:0];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_updateAssetForQuery_callback_ argumentIndex:0 ofReply:1];
  [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_updateAssetForQuery_callback_ argumentIndex:1 ofReply:1];
  return [interface_xpcClientInterface setClass:objc_opt_class() forSelector:sel_triggerDumpWithReply_ argumentIndex:0 ofReply:1];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = DDSServer;
  [(DDSServer *)&v3 dealloc];
}

+ (void)setUpAssertionStorageDirectory
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1DF7C6000, log, OS_LOG_TYPE_ERROR, "Failed to create directory at url %{public}@:(%{public}@)", &v3, 0x16u);
}

void __48__DDSServer_listener_shouldAcceptNewConnection___block_invoke_309_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Client connection interrupted: %{public}@", &v2, 0xCu);
}

@end