@interface ATXClientDonationsServer
+ (id)sharedInstance;
- (ATXClientDonationsServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)donateDocumentInteraction:(id)interaction completion:(id)completion;
- (void)donateMenuItem:(id)item completion:(id)completion;
@end

@implementation ATXClientDonationsServer

- (ATXClientDonationsServer)init
{
  v6.receiver = self;
  v6.super_class = ATXClientDonationsServer;
  v2 = [(ATXClientDonationsServer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.app-client.donation"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[ATXClientDonationsServer sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __42__ATXClientDonationsServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXClientDonationsServer);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = ATXClientDonationsInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_22];
  [connectionCopy setInvalidationHandler:&__block_literal_global_25_5];
  [connectionCopy resume];

  return 1;
}

void __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_client_donations(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke_23(uint64_t a1)
{
  v1 = __atxlog_handle_client_donations(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __63__ATXClientDonationsServer_listener_shouldAcceptNewConnection___block_invoke_23_cold_1();
  }
}

- (void)donateMenuItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v7 = __atxlog_handle_client_donations(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXClientDonationsServer donateMenuItem:itemCopy completion:v7];
  }

  v9 = __atxlog_handle_client_donations(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ATXClientDonationsServer donateMenuItem:completion:];
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:4 userInfo:0];
  completionCopy[2](completionCopy, v10);
}

- (void)donateDocumentInteraction:(id)interaction completion:(id)completion
{
  completionCopy = completion;
  v5 = __atxlog_handle_client_donations(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ATXClientDonationsServer donateDocumentInteraction:completion:];
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB260] code:4 userInfo:0];
  completionCopy[2](completionCopy, v6);
}

- (void)donateMenuItem:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Got menu item donation %@", &v2, 0xCu);
}

@end