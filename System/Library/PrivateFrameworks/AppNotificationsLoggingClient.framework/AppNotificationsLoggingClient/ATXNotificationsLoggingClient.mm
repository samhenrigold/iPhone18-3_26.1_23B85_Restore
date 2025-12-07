@interface ATXNotificationsLoggingClient
+ (id)sharedInstance;
- (ATXNotificationsLoggingClient)init;
- (void)_processActiveSuggestionsRequests;
- (void)activeSuggestionsWithReply:(id)reply;
- (void)dealloc;
- (void)logNotificationDeliveryUI:(unint64_t)i notificationUUIDs:(id)ds;
- (void)logNotificationEvent:(int64_t)event notification:(id)notification;
- (void)logNotificationEvent:(int64_t)event notification:(id)notification reason:(unint64_t)reason;
- (void)logNotificationEvent:(int64_t)event notification:(id)notification reason:(unint64_t)reason interactionUI:(unint64_t)i;
- (void)logNotificationGroupEvent:(int64_t)event eventIdentifier:(id)identifier;
- (void)logNotificationGroupEvent:(int64_t)event eventIdentifier:(id)identifier timestamp:(id)timestamp;
- (void)logSuggestionEvent:(int64_t)event suggestionType:(int64_t)type suggestionIdentifier:(id)identifier timestamp:(id)timestamp;
@end

@implementation ATXNotificationsLoggingClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ATXNotificationsLoggingClient sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __47__ATXNotificationsLoggingClient_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXNotificationsLoggingClient;
  [(ATXNotificationsLoggingClient *)&v3 dealloc];
}

- (ATXNotificationsLoggingClient)init
{
  v23.receiver = self;
  v23.super_class = ATXNotificationsLoggingClient;
  v2 = [(ATXNotificationsLoggingClient *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeSuggestionsRequests = v2->_activeSuggestionsRequests;
    v2->_activeSuggestionsRequests = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ATXNotificationsLoggingClient.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    objc_initWeak(&location, v2);
    v8 = objc_alloc(MEMORY[0x277D42628]);
    v9 = v2->_queue;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __37__ATXNotificationsLoggingClient_init__block_invoke;
    v20 = &unk_278C8F638;
    objc_copyWeak(&v21, &location);
    v10 = [v8 initWithQueue:v9 operation:&v17];
    coalescingTimer = v2->_coalescingTimer;
    v2->_coalescingTimer = v10;

    v12 = objc_alloc(MEMORY[0x277CCAE80]);
    v13 = [v12 initWithMachServiceName:@"com.apple.notifications.logging" options:{0, v17, v18, v19, v20}];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v13;

    v15 = ATXNotificationsLoggingInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v15];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_68_0];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_71_0];
    [(NSXPCConnection *)v2->_xpcConnection resume];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__ATXNotificationsLoggingClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processActiveSuggestionsRequests];
}

void __37__ATXNotificationsLoggingClient_init__block_invoke_2(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __37__ATXNotificationsLoggingClient_init__block_invoke_2_cold_1();
  }
}

void __37__ATXNotificationsLoggingClient_init__block_invoke_69(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_24001A000, v1, OS_LOG_TYPE_INFO, "ATXNotificationsLoggingClient invalidation handler called", v2, 2u);
  }
}

- (void)_processActiveSuggestionsRequests
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke;
  v12[3] = &unk_278C8F688;
  v12[4] = self;
  v3 = MEMORY[0x245CB55D0](v12, a2);
  xpcConnection = self->_xpcConnection;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76;
  v10 = &unk_278C8F6B0;
  v11 = v3;
  v5 = v3;
  v6 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&v7];
  [v6 activeSuggestionsWithReply:{v5, v7, v8, v9, v10}];
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = [*(*(a1 + 32) + 24) count];
  v9 = v8;
  if (v8 >= 2)
  {
    v10 = __atxlog_handle_notification_management(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_cold_1(v9, v10);
    }
  }

  v11 = *(*(a1 + 32) + 24);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_72;
  v14[3] = &unk_278C8F660;
  v17 = v9;
  v12 = v5;
  v15 = v12;
  v13 = v6;
  v16 = v13;
  [v11 enumerateObjectsUsingBlock:v14];
  [*(*(a1 + 32) + 24) removeAllObjects];

  objc_sync_exit(v7);
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_72(uint64_t a1, void (**a2)(void, void), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) - 1 == a3)
  {
    v5 = a2;
    v6 = __atxlog_handle_notification_management(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) count];
      *buf = 134217984;
      v13 = v7;
      _os_log_impl(&dword_24001A000, v6, OS_LOG_TYPE_INFO, "activeSuggestionsWithReply: delivering %tu suggestions.", buf, 0xCu);
    }

    (v5[2])(v5, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = ATXNotificationsLoggingClientErrorDomain;
    v10 = a2;
    v11 = [v8 errorWithDomain:v9 code:1 userInfo:0];
    a2[2](v10, 0);
  }
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_76_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)activeSuggestionsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = __atxlog_handle_notification_management(replyCopy);
  v6 = v5;
  if (replyCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_24001A000, v6, OS_LOG_TYPE_DEFAULT, "activeSuggestionsWithReply: queued request", v10, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeSuggestionsRequests = selfCopy->_activeSuggestionsRequests;
    v9 = MEMORY[0x245CB55D0](replyCopy);
    [(NSMutableArray *)activeSuggestionsRequests addObject:v9];

    objc_sync_exit(selfCopy);
    [(_PASSimpleCoalescingTimer *)selfCopy->_coalescingTimer runAfterDelaySeconds:1 coalescingBehavior:0.5];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationsLoggingClient activeSuggestionsWithReply:];
    }
  }
}

- (void)logNotificationEvent:(int64_t)event notification:(id)notification reason:(unint64_t)reason interactionUI:(unint64_t)i
{
  notificationCopy = notification;
  uuid = [notificationCopy uuid];

  if (uuid)
  {
    v13 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_79];
    [v13 logNotificationEvent:event notification:notificationCopy reason:reason interactionUI:i];
  }

  else
  {
    v14 = __atxlog_handle_notification_management(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationEvent:notification:reason:interactionUI:];
    }
  }
}

void __88__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason_interactionUI___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __88__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason_interactionUI___block_invoke_cold_1();
  }
}

- (void)logNotificationEvent:(int64_t)event notification:(id)notification
{
  notificationCopy = notification;
  uuid = [notificationCopy uuid];

  if (uuid)
  {
    v9 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_81];
    [v9 logNotificationEvent:event notification:notificationCopy reason:0 interactionUI:5];
  }

  else
  {
    v10 = __atxlog_handle_notification_management(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationEvent:notification:reason:interactionUI:];
    }
  }
}

void __67__ATXNotificationsLoggingClient_logNotificationEvent_notification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__ATXNotificationsLoggingClient_logNotificationEvent_notification___block_invoke_cold_1();
  }
}

- (void)logNotificationEvent:(int64_t)event notification:(id)notification reason:(unint64_t)reason
{
  notificationCopy = notification;
  uuid = [notificationCopy uuid];

  if (uuid)
  {
    v11 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_83_0];
    [v11 logNotificationEvent:event notification:notificationCopy reason:reason interactionUI:5];
  }

  else
  {
    v12 = __atxlog_handle_notification_management(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationEvent:notification:reason:interactionUI:];
    }
  }
}

void __74__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__ATXNotificationsLoggingClient_logNotificationEvent_notification_reason___block_invoke_cold_1();
  }
}

- (void)logSuggestionEvent:(int64_t)event suggestionType:(int64_t)type suggestionIdentifier:(id)identifier timestamp:(id)timestamp
{
  xpcConnection = self->_xpcConnection;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_85];
  [v12 logSuggestionEvent:event suggestionType:type suggestionIdentifier:identifierCopy timestamp:timestampCopy];
}

void __98__ATXNotificationsLoggingClient_logSuggestionEvent_suggestionType_suggestionIdentifier_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__ATXNotificationsLoggingClient_logSuggestionEvent_suggestionType_suggestionIdentifier_timestamp___block_invoke_cold_1();
  }
}

- (void)logNotificationGroupEvent:(int64_t)event eventIdentifier:(id)identifier timestamp:(id)timestamp
{
  xpcConnection = self->_xpcConnection;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_87];
  [v10 logNotificationGroupEvent:event eventIdentifier:identifierCopy timestamp:timestampCopy];
}

void __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke_cold_1();
  }
}

- (void)logNotificationGroupEvent:(int64_t)event eventIdentifier:(id)identifier
{
  xpcConnection = self->_xpcConnection;
  identifierCopy = identifier;
  v8 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_89_0];
  v7 = [MEMORY[0x277CBEAA8] now];
  [v8 logNotificationGroupEvent:event eventIdentifier:identifierCopy timestamp:v7];
}

void __75__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __85__ATXNotificationsLoggingClient_logNotificationGroupEvent_eventIdentifier_timestamp___block_invoke_cold_1();
  }
}

- (void)logNotificationDeliveryUI:(unint64_t)i notificationUUIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v9 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingClient logNotificationDeliveryUI:dsCopy notificationUUIDs:v9];
    }
  }

  else
  {
    v8 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_92_0];
    [v8 logNotificationDeliveryUI:i notificationUUIDs:dsCopy];
  }
}

void __77__ATXNotificationsLoggingClient_logNotificationDeliveryUI_notificationUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__ATXNotificationsLoggingClient_logNotificationDeliveryUI_notificationUUIDs___block_invoke_cold_1();
  }
}

void __66__ATXNotificationsLoggingClient__processActiveSuggestionsRequests__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1 - 1;
  _os_log_debug_impl(&dword_24001A000, a2, OS_LOG_TYPE_DEBUG, "activeSuggestionsWithReply: throttling %tu earlier requests before delivering suggestions in the last request.", &v2, 0xCu);
}

- (void)logNotificationDeliveryUI:(uint64_t)a1 notificationUUIDs:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_24001A000, a2, OS_LOG_TYPE_FAULT, "-logNotificationDeliveryUI:notificationUUIDs: was passed an object that is not an array: %{public}@", v5, 0xCu);
}

@end