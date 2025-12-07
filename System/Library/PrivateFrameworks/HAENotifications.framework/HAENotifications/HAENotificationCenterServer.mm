@interface HAENotificationCenterServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HAENotificationCenterServer)init;
- (void)addHAENotificationEvent:(id)event;
@end

@implementation HAENotificationCenterServer

+ (id)sharedInstance
{
  if (sharedInstance_once_4 != -1)
  {
    +[HAENotificationCenterServer sharedInstance];
  }

  v3 = sharedInstance_instance_4;

  return v3;
}

uint64_t __45__HAENotificationCenterServer_sharedInstance__block_invoke()
{
  sharedInstance_instance_4 = objc_alloc_init(HAENotificationCenterServer);

  return MEMORY[0x2821F96F8]();
}

- (HAENotificationCenterServer)init
{
  v6.receiver = self;
  v6.super_class = HAENotificationCenterServer;
  v2 = [(HAENotificationCenterServer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.coreaudio.adam.hae.notification"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
  }

  return v2;
}

- (void)addHAENotificationEvent:(id)event
{
  v12 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = HAENotificationsLog(eventCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = eventCopy;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "Received HAE notificaton event: %@", &v10, 0xCu);
  }

  v5 = +[HAENDefaults sharedInstance];
  isHAENFeatureEnabled = [v5 isHAENFeatureEnabled];

  if (isHAENFeatureEnabled)
  {
    v8 = +[HAENotificationCenterManager sharedInstance];
    v9 = [v8 addHAENotificationEvent:eventCopy];
  }

  else
  {
    v8 = HAENotificationsLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "HAE Notification disabled...", &v10, 2u);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2862CB150];
  [connectionCopy setExportedInterface:v6];

  v7 = HAENotificationsLog([connectionCopy setExportedObject:self]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v11 = 138412802;
    v12 = v8;
    v13 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    v15 = 2080;
    v16 = "Success";
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "New XPC Connection to %@ from pid: %d [%s]", &v11, 0x1Cu);
  }

  [connectionCopy resume];
  return 1;
}

@end