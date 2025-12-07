@interface ATXNotificationDigestRankerServer
+ (id)sharedInstance;
- (ATXNotificationDigestRankerServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)days reply:(id)reply;
- (void)generateDigestForAppGroupedNotificationStacks:(id)stacks maxGlobalMarqueeGroups:(unint64_t)groups maxAppMarqueeGroups:(unint64_t)marqueeGroups reply:(id)reply;
- (void)generateDigestForNotificationStacks:(id)stacks reply:(id)reply;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler;
@end

@implementation ATXNotificationDigestRankerServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_9 != -1)
  {
    +[ATXNotificationDigestRankerServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_11;

  return v3;
}

void __51__ATXNotificationDigestRankerServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_11;
  sharedInstance__pasExprOnceResult_11 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXNotificationDigestRankerServer)init
{
  v7.receiver = self;
  v7.super_class = ATXNotificationDigestRankerServer;
  v2 = [(ATXNotificationDigestRankerServer *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE98]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEBB00]];
    listener = v2->_listener;
    v2->_listener = v4;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = *MEMORY[0x277CEBB00];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEBB00]];
  v8 = v7;
  if (v7 && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0) && (v7 = [v8 BOOLValue], (v7 & 1) != 0))
  {
    v9 = __atxlog_handle_notification_management(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ATXNotificationDigestRankerServer *)v9 listener:v10 shouldAcceptNewConnection:v11, v12, v13, v14, v15, v16];
    }

    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283AA7AF8];
    v18 = MEMORY[0x277CBEB98];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v20 = [v18 setWithArray:v19];
    [v17 setClasses:v20 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:0];

    v21 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v22 = 1;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v24 = [v21 setWithArray:v23];
    [v17 setClasses:v24 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:1];

    v25 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v27 = [v25 setWithArray:v26];
    [v17 setClasses:v27 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:0];

    v28 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v30 = [v28 setWithArray:v29];
    [v17 setClasses:v30 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:1];

    v31 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v33 = [v31 setWithArray:v32];
    [v17 setClasses:v33 forSelector:sel_appsSortedByNotificationsReceivedInPreviousNumDays_reply_ argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v17];
    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_83_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_86_0];
    [connectionCopy resume];
  }

  else
  {
    v17 = __atxlog_handle_notification_management(v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v17];
    }

    v22 = 0;
  }

  return v22;
}

void __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke_84(uint64_t a1)
{
  v1 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXNotificationDigestRankerServer_listener_shouldAcceptNewConnection___block_invoke_84_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)generateDigestForAppGroupedNotificationStacks:(id)stacks maxGlobalMarqueeGroups:(unint64_t)groups maxAppMarqueeGroups:(unint64_t)marqueeGroups reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  stacksCopy = stacks;
  replyCopy = reply;
  if (replyCopy)
  {
    v12 = objc_opt_new();
    v25 = 0;
    v13 = [v12 createDigestForAppGroupedNotificationStacks:stacksCopy maxGlobalMarqueeGroups:groups maxAppMarqueeGroups:marqueeGroups outError:&v25];
    v14 = v25;

    v16 = __atxlog_handle_notification_management(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      uuid = [v13 uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138412802;
      v27 = v18;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "[%@] Returning digest with UUID %@ and err %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, v13, v14);
  }

  else
  {
    v21 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerServer generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v22 = MEMORY[0x277CBEAD8];
    v23 = *MEMORY[0x277CBE658];
    v24 = objc_opt_class();
    v14 = NSStringFromClass(v24);
    v13 = NSStringFromSelector(a2);
    [v22 raise:v23 format:{@"[%@] No reply handler provided for %@", v14, v13}];
  }
}

- (void)generateDigestForNotificationStacks:(id)stacks reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  stacksCopy = stacks;
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = objc_opt_new();
    v21 = 0;
    v9 = [v8 createDigestForNotificationStacks:stacksCopy outError:&v21];
    v10 = v21;

    v12 = __atxlog_handle_notification_management(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      uuid = [v9 uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = uUIDString;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "[%@] Returning digest with UUID %@ and err %@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, v9, v10);
  }

  else
  {
    v17 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerServer generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE658];
    v20 = objc_opt_class();
    v10 = NSStringFromClass(v20);
    v9 = NSStringFromSelector(a2);
    [v18 raise:v19 format:{@"[%@] No reply handler provided for %@", v10, v9}];
  }
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)days reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = __atxlog_handle_notification_management(replyCopy);
  v8 = v7;
  if (replyCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXNotificationDigestRankerServer appsSortedByNotificationsReceivedInPreviousNumDays:reply:];
    }

    v9 = objc_opt_new();
    v10 = [v9 appsSortedByNumOfNotificationsGivenNumOfDays:days];
    v11 = __atxlog_handle_notification_management(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "[%@] Returning apps sorted by number of notifications", buf, 0xCu);
    }

    replyCopy[2](replyCopy, v10, [v9 containsMessageAndTimeSensitiveData], objc_msgSend(v9, "numDaysOfData"), 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerServer generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE658];
    v16 = objc_opt_class();
    v9 = NSStringFromClass(v16);
    v10 = NSStringFromSelector(a2);
    [v14 raise:v15 format:{@"[%@] No reply handler provided for %@", v9, v10}];
  }
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 numberOfActiveNotificationsWithCompletionHandler:handlerCopy];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Rejecting connection %@ without entitlement %@", &v3, 0x16u);
}

- (void)generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v4, v5, "[%@] No reply handler provided for %@", v6, v7, v8, v9);
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v5 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "[%@ %@] Fetching sorted apps", v4, 0x16u);
}

@end