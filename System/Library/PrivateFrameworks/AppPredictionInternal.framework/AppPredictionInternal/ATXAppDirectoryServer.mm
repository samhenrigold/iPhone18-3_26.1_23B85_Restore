@interface ATXAppDirectoryServer
+ (id)sharedInstance;
- (ATXAppDirectoryServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)appLaunchDatesWithReply:(id)reply;
- (void)categoriesWithReply:(id)reply;
- (void)notifyBookmarksDidChange;
- (void)requestNotificationWhenCategoriesAreReady;
@end

@implementation ATXAppDirectoryServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_31 != -1)
  {
    +[ATXAppDirectoryServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_38;

  return v3;
}

void __39__ATXAppDirectoryServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_38;
  sharedInstance__pasExprOnceResult_38 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXAppDirectoryServer)init
{
  v10.receiver = self;
  v10.super_class = ATXAppDirectoryServer;
  v2 = [(ATXAppDirectoryServer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_app_library(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryServer launched", v9, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277CCAE98]);
    v6 = [v5 initWithMachServiceName:*MEMORY[0x277CEBA28]];
    listener = v3->_listener;
    v3->_listener = v6;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener resume];
  }

  return v3;
}

- (void)categoriesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v4 categoriesWithReply:replyCopy];
}

- (void)appLaunchDatesWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v4 appLaunchDatesWithReply:replyCopy];
}

- (void)notifyBookmarksDidChange
{
  v2 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v2 notifyBookmarksDidChange];
}

- (void)requestNotificationWhenCategoriesAreReady
{
  v2 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v2 requestNotificationWhenCategoriesAreReady];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_app_library(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryServer connection attempted", v14, 2u);
  }

  v7 = *MEMORY[0x277CEBA28];
  v8 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEBA28]];
  v9 = v8;
  if (v8 && (v8 = objc_opt_respondsToSelector(), (v8 & 1) != 0) && (v8 = [v9 BOOLValue], (v8 & 1) != 0))
  {
    v10 = ATXAppDirectoryInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_25_4];
    [connectionCopy setInvalidationHandler:&__block_literal_global_28_0];
    [connectionCopy resume];
    v11 = 1;
  }

  else
  {
    v12 = __atxlog_handle_app_library(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppDirectoryServer *)connectionCopy listener:v7 shouldAcceptNewConnection:v12];
    }

    v11 = 0;
  }

  return v11;
}

void __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v1);
  }
}

void __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke_26(uint64_t a1)
{
  v1 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __60__ATXAppDirectoryServer_listener_shouldAcceptNewConnection___block_invoke_26_cold_1(v1);
  }
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXAppDirectoryServer: Rejecting connection %@ without entitlement %@", &v3, 0x16u);
}

@end