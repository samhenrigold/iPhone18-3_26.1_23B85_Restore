@interface ATXNotificationDigestRankerClient
- (ATXNotificationDigestRankerClient)init;
- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)days reply:(id)reply;
- (void)dealloc;
- (void)generateDigestForAppGroupedNotificationStacks:(id)stacks maxGlobalMarqueeGroups:(unint64_t)groups maxAppMarqueeGroups:(unint64_t)marqueeGroups reply:(id)reply;
- (void)generateDigestForNotificationStacks:(id)stacks reply:(id)reply;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler;
@end

@implementation ATXNotificationDigestRankerClient

- (ATXNotificationDigestRankerClient)init
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = ATXNotificationDigestRankerClient;
  v2 = [(ATXNotificationDigestRankerClient *)&v22 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.NotificationDigest.xpc" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E8B6F0];
    v6 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v8 = [v6 setWithArray:v7];
    [v5 setClasses:v8 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:0];

    v9 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v11 = [v9 setWithArray:v10];
    [v5 setClasses:v11 forSelector:sel_generateDigestForNotificationStacks_reply_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v14 = [v12 setWithArray:v13];
    [v5 setClasses:v14 forSelector:sel_appsSortedByNotificationsReceivedInPreviousNumDays_reply_ argumentIndex:0 ofReply:1];

    v15 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v17 = [v15 setWithArray:v16];
    [v5 setClasses:v17 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:0];

    v18 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v20 = [v18 setWithArray:v19];
    [v5 setClasses:v20 forSelector:sel_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_83];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_78];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __41__ATXNotificationDigestRankerClient_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __41__ATXNotificationDigestRankerClient_init__block_invoke_cold_1(v2);
  }
}

void __41__ATXNotificationDigestRankerClient_init__block_invoke_76(uint64_t a1, uint64_t a2)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "[ATXNotificationDigestRankerClient] Invalidation Handler Called", v3, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXNotificationDigestRankerClient;
  [(ATXNotificationDigestRankerClient *)&v3 dealloc];
}

- (void)generateDigestForAppGroupedNotificationStacks:(id)stacks maxGlobalMarqueeGroups:(unint64_t)groups maxAppMarqueeGroups:(unint64_t)marqueeGroups reply:(id)reply
{
  v31[1] = *MEMORY[0x1E69E9840];
  stacksCopy = stacks;
  replyCopy = reply;
  if (!replyCopy)
  {
    v17 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    [v18 raise:v19 format:{@"[%@] No reply handler provided for %@", v21, v22}];

    goto LABEL_10;
  }

  v13 = [MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.NotificationDigest.xpc" logHandle:0];
  if ((v13 & 1) == 0)
  {
    v23 = __atxlog_handle_notification_management(v13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E696A5A0];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = @"Missing entitlement for digest generation.  Not calling XPC service.";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v21 = [v24 initWithDomain:v25 code:1 userInfo:v26];

    replyCopy[2](replyCopy, 0, v21);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke;
  v27[3] = &unk_1E80C1100;
  v27[4] = self;
  v29 = a2;
  v15 = replyCopy;
  v28 = v15;
  v16 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v27];
  [v16 generateDigestForAppGroupedNotificationStacks:stacksCopy maxGlobalMarqueeGroups:groups maxAppMarqueeGroups:marqueeGroups reply:v15];

LABEL_11:
}

void __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateDigestForNotificationStacks:(id)stacks reply:(id)reply
{
  v27[1] = *MEMORY[0x1E69E9840];
  stacksCopy = stacks;
  replyCopy = reply;
  if (!replyCopy)
  {
    v13 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    [v14 raise:v15 format:{@"[%@] No reply handler provided for %@", v17, v18}];

    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.NotificationDigest.xpc" logHandle:0];
  if ((v9 & 1) == 0)
  {
    v19 = __atxlog_handle_notification_management(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A5A0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Missing entitlement for digest generation.  Not calling XPC service.";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v17 = [v20 initWithDomain:v21 code:1 userInfo:v22];

    replyCopy[2](replyCopy, 0, v17);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__ATXNotificationDigestRankerClient_generateDigestForNotificationStacks_reply___block_invoke;
  v23[3] = &unk_1E80C1100;
  v23[4] = self;
  v25 = a2;
  v11 = replyCopy;
  v24 = v11;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v23];
  [v12 generateDigestForNotificationStacks:stacksCopy reply:v11];

LABEL_11:
}

void __79__ATXNotificationDigestRankerClient_generateDigestForNotificationStacks_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:(unint64_t)days reply:(id)reply
{
  v31[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = [MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.NotificationDigest.xpc" logHandle:0];
    v9 = v8;
    v10 = __atxlog_handle_notification_management(v8);
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ATXNotificationDigestRankerClient appsSortedByNotificationsReceivedInPreviousNumDays:reply:];
      }

      xpcConnection = self->_xpcConnection;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __94__ATXNotificationDigestRankerClient_appsSortedByNotificationsReceivedInPreviousNumDays_reply___block_invoke;
      v27[3] = &unk_1E80C1100;
      v27[4] = self;
      v29 = a2;
      v13 = replyCopy;
      v28 = v13;
      v14 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v27];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __94__ATXNotificationDigestRankerClient_appsSortedByNotificationsReceivedInPreviousNumDays_reply___block_invoke_95;
      v25[3] = &unk_1E80C5478;
      v26 = v13;
      [v14 appsSortedByNotificationsReceivedInPreviousNumDays:days reply:v25];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
      }

      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A5A0];
      v30 = *MEMORY[0x1E696A578];
      v31[0] = @"Missing entitlement for apps sorted by notifications.  Not calling XPC service.";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v24 = [v21 initWithDomain:v22 code:1 userInfo:v23];

      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v24);
    }
  }

  else
  {
    v15 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationDigestRankerClient generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:];
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D930];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    [v16 raise:v17 format:{@"[%@] No reply handler provided for %@", v19, v20}];
  }
}

void __94__ATXNotificationDigestRankerClient_appsSortedByNotificationsReceivedInPreviousNumDays_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__ATXNotificationDigestRankerClient_numberOfActiveNotificationsWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E80C1100;
  v10 = handlerCopy;
  v11 = a2;
  v9[4] = self;
  v7 = handlerCopy;
  v8 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v9];
  [v8 numberOfActiveNotificationsWithCompletionHandler:v7];
}

void __86__ATXNotificationDigestRankerClient_numberOfActiveNotificationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)generateDigestForAppGroupedNotificationStacks:maxGlobalMarqueeGroups:maxAppMarqueeGroups:reply:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __132__ATXNotificationDigestRankerClient_generateDigestForAppGroupedNotificationStacks_maxGlobalMarqueeGroups_maxAppMarqueeGroups_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = OUTLINED_FUNCTION_8_1(v1);
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_7_3();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)appsSortedByNotificationsReceivedInPreviousNumDays:reply:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v7 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = v2;
  v4 = NSStringFromSelector(v1);
  v5 = 138412546;
  v6 = v2;
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "[%@ %@] Fetching sorted apps", &v5, 0x16u);
}

@end