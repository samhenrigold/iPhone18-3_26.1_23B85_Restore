@interface ATXSuggestedPagesServer
+ (id)sharedInstance;
- (ATXSuggestedPagesServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (int64_t)_fetchPageTypeForModeUUID:(id)d;
- (void)prewarmCachedSuggestedPagesWithActivity:(id)activity;
- (void)suggestedPagesWithFilter:(id)filter layoutOptions:(id)options completionHandler:(id)handler;
- (void)updateSuggestedPagesWithCompletionHandler:(id)handler;
@end

@implementation ATXSuggestedPagesServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_11 != -1)
  {
    +[ATXSuggestedPagesServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_14;

  return v3;
}

void __41__ATXSuggestedPagesServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_14;
  sharedInstance__pasExprOnceResult_14 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSuggestedPagesServer)init
{
  v15.receiver = self;
  v15.super_class = ATXSuggestedPagesServer;
  v2 = [(ATXSuggestedPagesServer *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_modes(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: launched", v14, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.SuggestedPages"];
    listener = v3->_listener;
    v3->_listener = v5;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener resume];
    v7 = objc_opt_new();
    uninstallNotification = v3->_uninstallNotification;
    v3->_uninstallNotification = v7;

    [(_ATXInternalUninstallNotification *)v3->_uninstallNotification registerForNotificationsWithUninstallBlock:&__block_literal_global_27];
    v9 = objc_opt_new();
    lockedOrHiddenAppNotification = v3->_lockedOrHiddenAppNotification;
    v3->_lockedOrHiddenAppNotification = v9;

    [(ATXInternalLockedOrHiddenAppNotification *)v3->_lockedOrHiddenAppNotification registerForNotificationsWithLockedOrHiddenAppBlock:&__block_literal_global_32_0];
    v11 = objc_opt_new();
    unlockedOrUnhiddenAppNotification = v3->_unlockedOrUnhiddenAppNotification;
    v3->_unlockedOrUnhiddenAppNotification = v11;

    [(ATXInternalUnLockedOrUnHiddenAppNotification *)v3->_unlockedOrUnhiddenAppNotification registerForNotificationsWithUnLockedOrUnHiddenAppBlock:&__block_literal_global_36_0];
  }

  return v3;
}

void __31__ATXSuggestedPagesServer_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  [v2 evictCachedSuggestedPages];
}

void __31__ATXSuggestedPagesServer_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  [v2 evictCachedSuggestedPages];
}

void __31__ATXSuggestedPagesServer_init__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  [v2 evictCachedSuggestedPages];
}

- (void)suggestedPagesWithFilter:(id)filter layoutOptions:(id)options completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = os_transaction_create();
  if ([filterCopy pageType] == 2 || !objc_msgSend(filterCopy, "pageType"))
  {
    modeUUID = [filterCopy modeUUID];

    if (!modeUUID)
    {
LABEL_10:
      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
      goto LABEL_11;
    }

    v15 = __atxlog_handle_modes(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: looking up mode type via DND", &v26, 2u);
    }

    modeUUID2 = [filterCopy modeUUID];
    pageType = [(ATXSuggestedPagesServer *)self _fetchPageTypeForModeUUID:modeUUID2];
  }

  else
  {
    pageType = [filterCopy pageType];
  }

  if (pageType < 4 || pageType == 12)
  {
    goto LABEL_10;
  }

  v17 = objc_opt_new();
  v18 = [v17 cachedSuggestedPagesForPageType:pageType];
  v19 = [v18 count];
  v20 = __atxlog_handle_modes(v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v22 = NSStringFromATXSuggestedPageType();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: using cached pages for page type: %{public}@", &v26, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, v18, 0);
  }

  else
  {
    if (v21)
    {
      v23 = NSStringFromATXSuggestedPageType();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: generating pages for page type: %{public}@", &v26, 0xCu);
    }

    v24 = objc_opt_new();
    v25 = [v24 generateSuggestedPagesForPageType:pageType layoutOptions:optionsCopy];
    [v17 cacheSuggestedPages:v25 forPageType:pageType];
    (*(handlerCopy + 2))(handlerCopy, v25, 0);
  }

LABEL_11:
}

- (void)updateSuggestedPagesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(ATXSuggestedPagesServer *)self prewarmCachedSuggestedPagesWithActivity:0];
  handlerCopy[2](handlerCopy, 0);
}

- (void)prewarmCachedSuggestedPagesWithActivity:(id)activity
{
  v15 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = 4;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    didDefer = [activityCopy didDefer];
    if (didDefer)
    {
      break;
    }

    v11 = [v5 generateSuggestedPagesForPageType:v8 layoutOptions:v6];
    [v7 cacheSuggestedPages:v11 forPageType:v8];

    objc_autoreleasePoolPop(v9);
    if (++v8 == 13)
    {
      goto LABEL_8;
    }
  }

  v12 = __atxlog_handle_modes(didDefer);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v8;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Deferred caching suggested pages before processing: %ld", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
LABEL_8:
}

- (int64_t)_fetchPageTypeForModeUUID:(id)d
{
  v3 = MEMORY[0x277CEB440];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];

  v7 = [sharedInstance dndModeForDNDModeWithUUID:v6];

  if (!v7)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  semanticType = [v7 semanticType];
  if ((semanticType + 1) >= 0xB)
  {
    v10 = __atxlog_handle_modes(semanticType);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXSuggestedPagesServer *)v7 _fetchPageTypeForModeUUID:v10];
    }

    goto LABEL_7;
  }

  v9 = semanticType + 3;
LABEL_8:

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_modes(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesServer: connection attempted", v13, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.proactive.SuggestedPages"];
  v8 = v7;
  if (v7 && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0) && (v7 = [v8 BOOLValue], (v7 & 1) != 0))
  {
    v9 = ATXSuggestedPagesInterface();
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_46_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_49_1];
    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = __atxlog_handle_modes(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXSuggestedPagesServer listener:connectionCopy shouldAcceptNewConnection:v11];
    }

    v10 = 0;
  }

  return v10;
}

void __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v1);
  }
}

void __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke_47(uint64_t a1)
{
  v1 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __62__ATXSuggestedPagesServer_listener_shouldAcceptNewConnection___block_invoke_47_cold_1(v1);
  }
}

- (void)_fetchPageTypeForModeUUID:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 semanticType];
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "fetchPageTypeForModeUUID: unhandled type: %ld", &v3, 0xCu);
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = @"com.apple.proactive.SuggestedPages";
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesServer: rejecting connection %@ without entitlement %@", &v2, 0x16u);
}

@end