@interface ATXLockScreenNotificationRankerServer
+ (id)sharedInstance;
- (ATXLockScreenNotificationRankerServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)rankNewNotificationIntoNotificationArrays:(id)arrays newNotification:(id)notification notificationArrayIndex:(unint64_t)index reply:(id)reply;
- (void)rankNotificationArrays:(id)arrays reply:(id)reply;
@end

@implementation ATXLockScreenNotificationRankerServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_44 != -1)
  {
    +[ATXLockScreenNotificationRankerServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_56;

  return v3;
}

void __55__ATXLockScreenNotificationRankerServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_56;
  sharedInstance__pasExprOnceResult_56 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXLockScreenNotificationRankerServer)init
{
  v7.receiver = self;
  v7.super_class = ATXLockScreenNotificationRankerServer;
  v2 = [(ATXLockScreenNotificationRankerServer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEBAF8]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEBAF8]];
  v9 = v8;
  if (v8 && (v8 = objc_opt_respondsToSelector(), (v8 & 1) != 0) && (v8 = [v9 BOOLValue], (v8 & 1) != 0))
  {
    v10 = ATXLockScreenNotificationRankerXPCInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke;
    v19[3] = &unk_2785977B0;
    objc_copyWeak(&v20, &location);
    [connectionCopy setInterruptionHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20;
    v17[3] = &unk_2785977B0;
    objc_copyWeak(&v18, &location);
    [connectionCopy setInvalidationHandler:v17];
    v11 = __atxlog_handle_notification_management([connectionCopy resume]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_loadWeakRetained(&location);
      v13 = objc_opt_class();
      [(ATXLockScreenNotificationRankerServer *)v13 listener:v22 shouldAcceptNewConnection:v11, v12];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    v14 = 1;
  }

  else
  {
    v15 = __atxlog_handle_notification_management(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXLockScreenNotificationRankerServer listener:shouldAcceptNewConnection:];
    }

    v14 = 0;
  }

  return v14;
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(a1);
  }
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20_cold_1(a1);
  }
}

- (void)rankNotificationArrays:(id)arrays reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v14 = 0;
    v8 = [ATXLockScreenNotificationRanker rankNotificationArrays:arrays error:&v14];
    v9 = v14;
    replyCopy[2](replyCopy, v8, v9);
  }

  else
  {
    v10 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXLockScreenNotificationRankerServer rankNotificationArrays:a2 reply:?];
    }

    v11 = MEMORY[0x277CBEAD8];
    v12 = *MEMORY[0x277CBE658];
    v13 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    [v11 raise:v12 format:{@"[%@] No reply handler provided for %@", v13, v9}];
  }
}

- (void)rankNewNotificationIntoNotificationArrays:(id)arrays newNotification:(id)notification notificationArrayIndex:(unint64_t)index reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v23 = 0;
    v12 = [ATXLockScreenNotificationRanker rankNewNotificationIntoNotificationArrays:arrays newNotification:notification notificationArrayIndex:index error:&v23];
    v13 = v23;
    v14 = v13;
    if (v12)
    {
      first = [v12 first];
      unsignedIntegerValue = [first unsignedIntegerValue];
      second = [v12 second];
      replyCopy[2](replyCopy, unsignedIntegerValue, [second unsignedIntegerValue], v14);
    }

    else
    {
      if (!v13)
      {
        v22 = __atxlog_handle_notification_management(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [ATXLockScreenNotificationRankerServer rankNewNotificationIntoNotificationArrays:? newNotification:? notificationArrayIndex:? reply:?];
        }
      }

      replyCopy[2](replyCopy, 0, 0, v14);
    }
  }

  else
  {
    v18 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXLockScreenNotificationRankerServer rankNotificationArrays:a2 reply:?];
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v21 = objc_opt_class();
    v14 = NSStringFromSelector(a2);
    [v19 raise:v20 format:{@"[%@] No reply handler provided for %@", v21, v14}];
  }
}

- (void)listener:(NSObject *)a3 shouldAcceptNewConnection:(void *)a4 .cold.1(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v7 = a1;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "[%@] Connection established", a2, 0xCu);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Rejecting connection %@ without entitlement %@", v2, 0x16u);
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);
}

void __76__ATXLockScreenNotificationRankerServer_listener_shouldAcceptNewConnection___block_invoke_20_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);
}

- (void)rankNotificationArrays:(uint64_t)a1 reply:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);
}

- (void)rankNewNotificationIntoNotificationArrays:(uint64_t)a1 newNotification:notificationArrayIndex:reply:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0xCu);
}

@end