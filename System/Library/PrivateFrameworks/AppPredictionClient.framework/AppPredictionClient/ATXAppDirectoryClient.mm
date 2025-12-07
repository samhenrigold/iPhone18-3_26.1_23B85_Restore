@interface ATXAppDirectoryClient
+ (id)_allPlaceholderBundleIdsFromHomeScreenService:(id)service;
+ (id)_sortedAllOtherBundleIDsFromAllBundleIDs:(id)ds allPlaceholderBundleIDs:(id)iDs hardcodedAppCategoryMappings:(id)mappings;
+ (id)_sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings:(id)mappings;
+ (id)_sortedDefaultCategories;
+ (id)hardcodedAppCategoryMappings;
+ (id)sharedInstance;
+ (void)hardcodedAppCategoryMappings;
- (id)_hiddenAppsFromCache;
- (id)_init;
- (id)_suggestionsPodDedupableBundleIds;
- (id)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:(unint64_t)predict;
- (void)_addEngagedSuggestionToERM:(id)m;
- (void)_hiddenAppsFromCache;
- (void)_logCaptureRateCapture;
- (void)_logCaptureRateDiversionWithType:(int)type;
- (void)_logToBiome:(unint64_t)biome metadata:(id)metadata;
- (void)_logToBiomeWithEventType:(unint64_t)type date:(id)date blendingCacheUUID:(id)d shownSuggestionIds:(id)ids engagedSuggestionIds:(id)suggestionIds categoryID:(id)iD categoryIndex:(id)index bundleId:(id)self0 bundleIndex:(id)self1 searchQueryLength:(id)self2 searchTab:(id)self3 bundleIdInTopAppsVisible:(id)self4 userLaunchedAppBeforeLeaving:(id)self5;
- (void)_updateTopAppsVisibilityWithCategories:(id)categories;
- (void)appLaunchDatesWithReply:(id)reply;
- (void)categoriesWithShouldUseDefault:(BOOL)default reply:(id)reply;
- (void)dealloc;
- (void)logCategoryExitWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index;
- (void)logCategoryExpansionWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index;
- (void)logCloseSearchWithDate:(id)date;
- (void)logDidEnterAppDirectoryWithDate:(id)date;
- (void)logDidLeaveAppDirectoryWithDate:(id)date appDirectoryResponse:(id)response;
- (void)logLaunchFromCategoryPreviewWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index bundleID:(id)iD bundleIndex:(unint64_t)bundleIndex appDirectoryResponse:(id)response;
- (void)logLaunchFromExpandedCategoryWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index bundleID:(id)iD bundleIndex:(unint64_t)bundleIndex appDirectoryResponse:(id)response;
- (void)logLaunchFromSearchWithDate:(id)date bundleID:(id)d bundleIndex:(unint64_t)index searchQueryLength:(unint64_t)length searchTab:(unint64_t)tab appDirectoryResponse:(id)response;
- (void)logOpenSearchWithDate:(id)date;
- (void)notifyBookmarksDidChange;
- (void)predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:(unint64_t)apps shouldUseDefaultCategories:(BOOL)categories reply:(id)reply;
- (void)requestNotificationWhenCategoriesAreReady;
@end

@implementation ATXAppDirectoryClient

- (id)_hiddenAppsFromCache
{
  v2 = objc_alloc(MEMORY[0x1E698AFF0]);
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXAppDirectoryHiddenAppsCache"];
  v4 = __atxlog_handle_app_library(v3);
  v5 = [v2 initWithCacheFilePath:v3 loggingHandle:v4 debugName:@"hidden apps"];

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v17 = 0;
  v10 = [v5 readSecureCodedObjectWithMaxValidAge:v9 allowableClasses:&v17 error:-1.0];
  v11 = v17;

  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = __atxlog_handle_app_library(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient _hiddenAppsFromCache];
    }

    v15 = objc_opt_new();
    v10 = v15;
  }

  return v10;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_2 != -1)
  {
    +[ATXAppDirectoryClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_3;

  return v3;
}

void __39__ATXAppDirectoryClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXAppDirectoryClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_3;
  sharedInstance__pasExprOnceResult_3 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = ATXAppDirectoryClient;
  v2 = [(ATXAppDirectoryClient *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v7;

    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.appDirectory" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v9;

    v11 = ATXAppDirectoryInterface();
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_16];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_19];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __30__ATXAppDirectoryClient__init__block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __30__ATXAppDirectoryClient__init__block_invoke_cold_1();
  }
}

void __30__ATXAppDirectoryClient__init__block_invoke_17(uint64_t a1)
{
  v1 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __30__ATXAppDirectoryClient__init__block_invoke_17_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXAppDirectoryClient;
  [(ATXAppDirectoryClient *)&v3 dealloc];
}

- (void)categoriesWithShouldUseDefault:(BOOL)default reply:(id)reply
{
  defaultCopy = default;
  v31 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = __atxlog_handle_app_library(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = defaultCopy;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Starting requesting for categorization with shouldUseDefault: %{BOOL}d", buf, 8u);
  }

  if (defaultCopy && (v8 = +[ATXDemoAppLibraryProvider isAppLibraryDemoModeEnabled], (v8 & 1) == 0))
  {
    v14 = __atxlog_handle_app_library(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Using default categories", buf, 2u);
    }

    xpcConnection = self->_xpcConnection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke;
    v26[3] = &unk_1E80C1558;
    v28 = defaultCopy;
    v27 = replyCopy;
    v16 = replyCopy;
    v17 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
    [v17 requestNotificationWhenCategoriesAreReady];

    _sortedDefaultCategories = [objc_opt_class() _sortedDefaultCategories];
    v19 = __atxlog_handle_app_library(_sortedDefaultCategories);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v30 = _sortedDefaultCategories != 0;
      _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Obtained non-nil categories: %{BOOL}d", buf, 8u);
    }

    if (_sortedDefaultCategories)
    {
      v20 = [(ATXAppDirectoryClient *)self _updateTopAppsVisibilityWithCategories:_sortedDefaultCategories];
    }

    v10 = &v27;
    v21 = __atxlog_handle_app_library(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Sending reply with default categories", buf, 2u);
    }

    v16[2](v16, _sortedDefaultCategories, 0);
  }

  else
  {
    v9 = self->_xpcConnection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24;
    v24[3] = &unk_1E80C08E0;
    v10 = &v25;
    v11 = replyCopy;
    v25 = v11;
    v12 = [(NSXPCConnection *)v9 remoteObjectProxyWithErrorHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_25;
    v22[3] = &unk_1E80C1260;
    v22[4] = self;
    v23 = v11;
    v13 = v11;
    [v12 categoriesWithReply:v22];
  }
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_library(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_cold_1();
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_library(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_app_library(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Start of categories reply", buf, 2u);
  }

  if (v5)
  {
    [*(a1 + 32) _updateTopAppsVisibilityWithCategories:v5];
  }

  v8 = +[ATXDemoAppLibraryProvider isAppLibraryDemoModeEnabled];
  v9 = v8;
  v10 = __atxlog_handle_app_library(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: Using Demo app categories", v15, 2u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = [ATXDemoAppLibraryProvider demoAppCategoriesForRealAppCategories:v5];
      (*(v12 + 16))(v12, v13, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Received successful categorization response from server", v14, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:(unint64_t)apps shouldUseDefaultCategories:(BOOL)categories reply:(id)reply
{
  categoriesCopy = categories;
  v36 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v9 = __atxlog_handle_app_library(replyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v35 = categoriesCopy;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Starting loading predicted app with shouldUseDefaultCategories: %{BOOL}d", buf, 8u);
  }

  v10 = +[ATXDemoAppLibraryProvider isAppLibraryDemoModeEnabled];
  v11 = v10;
  v12 = __atxlog_handle_app_library(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: Using Demo suggestions and recents", buf, 2u);
    }

    if (replyCopy)
    {
      v14 = +[ATXDemoAppLibraryProvider demoSuggestionsAndRecents];
      replyCopy[2](replyCopy, v14);

      goto LABEL_21;
    }
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: Using non-demo suggestions and recents", buf, 2u);
    }
  }

  if (!self->_blendingClient)
  {
    v15 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:35];
    blendingClient = self->_blendingClient;
    self->_blendingClient = v15;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke;
  v33[3] = &unk_1E80C1580;
  v33[4] = self;
  v33[5] = apps;
  v17 = MEMORY[0x1BFB5BA40](v33);
  topAppsVisible = [(ATXAppDirectoryClient *)self topAppsVisible];

  v20 = __atxlog_handle_app_library(v19);
  v21 = v20;
  if (topAppsVisible)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Top apps are visible, will send reply", buf, 2u);
    }

    v22 = dispatch_get_global_queue(21, 0);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_30;
    v27[3] = &unk_1E80C15D0;
    v23 = &v28;
    v24 = &v29;
    v28 = replyCopy;
    v29 = v17;
    v25 = v17;
    dispatch_async(v22, v27);
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:shouldUseDefaultCategories:reply:];
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_29;
    v30[3] = &unk_1E80C15A8;
    v23 = &v31;
    v24 = &v32;
    v31 = replyCopy;
    v32 = v17;
    v26 = v17;
    [(ATXAppDirectoryClient *)self categoriesWithShouldUseDefault:categoriesCopy reply:v30];
  }

LABEL_21:
}

id __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [v2 recentAppsVisible];
  [v3 setRecentAppsVisible:v4];

  v6 = __atxlog_handle_app_library(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Finished processing recent apps", v8, 2u);
  }

  return v2;
}

void __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_29(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_app_library(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 != 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Received reply for categories: %{BOOL}d", v7, 8u);
  }

  v5 = *(a1 + 32);
  v6 = (*(*(a1 + 40) + 16))();
  (*(v5 + 16))(v5, v6);
}

void __113__ATXAppDirectoryClient_predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps_shouldUseDefaultCategories_reply___block_invoke_30(uint64_t a1)
{
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Top apps are visible, did send reply", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  (*(v3 + 16))(v3, v4);
}

- (id)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:(unint64_t)predict
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = __atxlog_handle_app_library(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryClient: Attempting to retrieve relevant App Directory cached entities: Predicted Apps, Recent apps and Hidden apps", buf, 2u);
  }

  selfCopy = self;
  suggestionLayoutFromCache = [(ATXProactiveSuggestionClient *)self->_blendingClient suggestionLayoutFromCache];
  v5 = objc_alloc(MEMORY[0x1E698AFF0]);
  v6 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXAppDirectoryRecentsCache"];
  v7 = __atxlog_handle_app_library(v6);
  v8 = [v5 initWithCacheFilePath:v6 loggingHandle:v7 debugName:@"ATXAppDirectoryClient.DiskRead"];

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v65 = 0;
  v15 = [v8 readSecureCodedObjectWithMaxValidAge:v14 allowableClasses:&v65 error:-1.0];
  v16 = v65;

  v52 = v8;
  if (v15 && (objc_opt_class(), v17 = objc_opt_isKindOfClass(), (v17 & 1) != 0))
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v62;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v62 != v21)
          {
            objc_enumerationMutation(v18);
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((isKindOfClass & 1) == 0)
          {
            v24 = __atxlog_handle_app_library(isKindOfClass);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [ATXAppDirectoryClient getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:];
            }

            goto LABEL_19;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v15 = v18;
  }

  else
  {
    v18 = __atxlog_handle_app_library(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:];
    }

LABEL_19:

    v18 = objc_opt_new();
  }

  array = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v25 = v18;
  v26 = [v25 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v58;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v57 + 1) + 8 * j);
        v31 = [(__CFString *)v30 count];
        if (v31 == 2)
        {
          v32 = [(__CFString *)v30 objectForKeyedSubscript:@"bundleId"];
          objc_opt_class();
          v33 = objc_opt_isKindOfClass();
          if (v33)
          {
            v34 = [(__CFString *)v30 objectForKeyedSubscript:@"installDate"];
            objc_opt_class();
            v35 = objc_opt_isKindOfClass();
            if (v35)
            {
              [array addObject:v30];
            }

            else
            {
              v36 = __atxlog_handle_app_library(v35);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v67 = @"installDate";
                _os_log_error_impl(&dword_1BF549000, v36, OS_LOG_TYPE_ERROR, "ATXAppDirectoryClient: Recent apps cache element doesn't have expected install date key: '%@'", buf, 0xCu);
              }
            }
          }

          else
          {
            v34 = __atxlog_handle_app_library(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v67 = @"bundleId";
              _os_log_error_impl(&dword_1BF549000, v34, OS_LOG_TYPE_ERROR, "ATXAppDirectoryClient: Recent apps cache element doesn't have expected bundleId key: '%@'", buf, 0xCu);
            }
          }
        }

        else
        {
          v32 = __atxlog_handle_app_library(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v67 = v30;
            _os_log_error_impl(&dword_1BF549000, v32, OS_LOG_TYPE_ERROR, "ATXAppDirectoryClient: Recent apps cache element does not have expected number of keys: %@", buf, 0xCu);
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v27);
  }

  v37 = [array copy];
  v38 = [ATXAppDirectoryResponse alloc];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v41 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  if (v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = @"com.apple.Spotlight";
  }

  v43 = MEMORY[0x1E695E000];
  v44 = v42;
  v45 = [[v43 alloc] initWithSuiteName:v44];

  v46 = [v45 stringArrayForKey:@"EnabledPreferenceRules"];
  if (objc_msgSend_containsObject_(v46))
  {
    v47 = 0;
  }

  else
  {
    v47 = objc_msgSend_containsObject_(v46) ^ 1;
  }

  _hiddenAppsFromCache = [(ATXAppDirectoryClient *)selfCopy _hiddenAppsFromCache];
  topAppsVisible = [(ATXAppDirectoryClient *)selfCopy topAppsVisible];
  v50 = [(ATXAppDirectoryResponse *)v38 initWithSuggestionLayout:suggestionLayoutFromCache includeRemoteApps:v47 recentApps:v37 hiddenApps:_hiddenAppsFromCache otherAppsOnScreen:topAppsVisible numAppsToPredict:predict error:v16];

  return v50;
}

- (void)appLaunchDatesWithReply:(id)reply
{
  replyCopy = reply;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 appLaunchDatesWithReply:v6];
}

void __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_app_library(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)notifyBookmarksDidChange
{
  v2 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_44];
  [v2 notifyBookmarksDidChange];
}

void __49__ATXAppDirectoryClient_notifyBookmarksDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_app_library(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1();
  }
}

- (void)requestNotificationWhenCategoriesAreReady
{
  v2 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_46_0];
  [v2 requestNotificationWhenCategoriesAreReady];
}

void __66__ATXAppDirectoryClient_requestNotificationWhenCategoriesAreReady__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_app_library(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1();
  }
}

- (id)_suggestionsPodDedupableBundleIds
{
  topAppsVisible = [(ATXAppDirectoryClient *)self topAppsVisible];
  if (!topAppsVisible)
  {
    topAppsVisible = objc_opt_new();
  }

  recentAppsVisible = [(ATXAppDirectoryClient *)self recentAppsVisible];
  if (!recentAppsVisible)
  {
    recentAppsVisible = objc_opt_new();
  }

  v5 = [topAppsVisible arrayByAddingObjectsFromArray:recentAppsVisible];

  return v5;
}

- (void)_updateTopAppsVisibilityWithCategories:(id)categories
{
  v4 = MEMORY[0x1E69C5CF8];
  categoriesCopy = categories;
  isiPad = [v4 isiPad];
  v7 = objc_opt_new();
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke;
  v12 = &unk_1E80C1620;
  v8 = v7;
  v13 = v8;
  v14 = isiPad;
  [categoriesCopy enumerateObjectsUsingBlock:&v9];

  if (v8)
  {
    [(ATXAppDirectoryClient *)self setTopAppsVisible:v8, v9, v10, v11, v12];
  }
}

void __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 appIdentities];
  if ([v8 count] > 4)
  {
    v10 = 3;
  }

  else
  {
    v9 = [v7 appIdentities];
    v10 = [v9 count];
  }

  v11 = [v7 appIdentities];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke_2;
  v12[3] = &unk_1E80C15F8;
  v13 = *(a1 + 32);
  v14 = v10;
  [v11 enumerateObjectsUsingBlock:v12];

  if (a3 >= 5 && (*(a1 + 40) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __64__ATXAppDirectoryClient__updateTopAppsVisibilityWithCategories___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 bundleIdentifier];
  [v7 addObject:v8];

  if (*(a1 + 40) - 1 <= a3)
  {
    *a4 = 1;
  }
}

+ (id)hardcodedAppCategoryMappings
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"AppDirectoryDefaultCategories" ofType:@"plist"];

  if (v3)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];
  }

  else
  {
    v6 = __atxlog_handle_app_library(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ATXAppDirectoryClient hardcodedAppCategoryMappings];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings:(id)mappings
{
  v21 = *MEMORY[0x1E69E9840];
  mappingsCopy = mappings;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__ATXAppDirectoryClient__sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings___block_invoke;
  v18[3] = &unk_1E80C1648;
  v6 = v5;
  v19 = v6;
  [mappingsCopy enumerateKeysAndObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v7 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        [v12 sortUsingComparator:&__block_literal_global_61];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

void __84__ATXAppDirectoryClient__sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    [v7 addObject:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v6];

    [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
    v6 = v9;
  }
}

uint64_t __84__ATXAppDirectoryClient__sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lowercaseString];
  v6 = [v4 lowercaseString];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_sortedDefaultCategories
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  hardcodedAppCategoryMappings = [self hardcodedAppCategoryMappings];
  v5 = [hardcodedAppCategoryMappings mutableCopy];

  Current = CFAbsoluteTimeGetCurrent();
  v7 = objc_alloc_init(MEMORY[0x1E69D4240]);
  v8 = __atxlog_handle_app_library(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = CFAbsoluteTimeGetCurrent() - Current;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Time to initialize home screen service: %f seconds", buf, 0xCu);
  }

  v9 = CFAbsoluteTimeGetCurrent();
  v10 = +[ATXAppDisplayIdentifiers appIdentifiers];
  v11 = [v10 count];
  if (!v11)
  {
    v12 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    allHomeScreenApplicationBundleIdentifiers = [v7 allHomeScreenApplicationBundleIdentifiers];
    if (allHomeScreenApplicationBundleIdentifiers)
    {
      [MEMORY[0x1E695DFD8] setWithArray:allHomeScreenApplicationBundleIdentifiers];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v14 = ;

    v10 = v14;
  }

  v15 = __atxlog_handle_app_library(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v44 = v16 - v9;
    _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "Time to copy app identifiers: %f seconds", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allKeys = [v5 allKeys];
  v18 = [allKeys countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(allKeys);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(v10) & 1) == 0)
        {
          [v5 removeObjectForKey:v22];
        }
      }

      v19 = [allKeys countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  v23 = objc_opt_new();
  v24 = [self _sortedBundleIDsByCategoryWithHardcodedAppCategoryMappings:v5];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __49__ATXAppDirectoryClient__sortedDefaultCategories__block_invoke;
  v36[3] = &unk_1E80C1690;
  v25 = v23;
  v37 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:v36];

  [v25 sortUsingComparator:&__block_literal_global_68];
  v26 = CFAbsoluteTimeGetCurrent();
  v27 = [self _allPlaceholderBundleIdsFromHomeScreenService:v7];
  v28 = __atxlog_handle_app_library(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    v44 = v29 - v26;
    _os_log_impl(&dword_1BF549000, v28, OS_LOG_TYPE_DEFAULT, "Time to retrieve app placeholders: %f seconds", buf, 0xCu);
  }

  v30 = [self _sortedAllOtherBundleIDsFromAllBundleIDs:v10 allPlaceholderBundleIDs:v27 hardcodedAppCategoryMappings:v5];
  v31 = [ATXAppDirectoryCategory alloc];
  appIdentitiesFromBundleIDs = [v30 appIdentitiesFromBundleIDs];
  v33 = [(ATXAppDirectoryCategory *)v31 initWithCategoryID:1008 appIdentities:appIdentitiesFromBundleIDs];

  [v25 addObject:v33];
  v34 = v25;

  objc_autoreleasePoolPop(v3);

  return v34;
}

void __49__ATXAppDirectoryClient__sortedDefaultCategories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [ATXAppDirectoryCategory alloc];
  v8 = [v6 unsignedIntegerValue];

  v9 = [v5 appIdentitiesFromBundleIDs];

  v10 = [(ATXAppDirectoryCategory *)v7 initWithCategoryID:v8 appIdentities:v9];
  [*(a1 + 32) addObject:v10];
}

uint64_t __49__ATXAppDirectoryClient__sortedDefaultCategories__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = +[ATXAppDirectoryCategory localizedStringForCategoryID:](ATXAppDirectoryCategory, "localizedStringForCategoryID:", [a2 categoryID]);
  v6 = [v4 categoryID];

  v7 = [ATXAppDirectoryCategory localizedStringForCategoryID:v6];
  v8 = [v5 compare:v7];

  return v8;
}

+ (id)_allPlaceholderBundleIdsFromHomeScreenService:(id)service
{
  v3 = MEMORY[0x1E695DFD8];
  serviceCopy = service;
  v5 = [v3 alloc];
  allHomeScreenApplicationPlaceholderBundleIdentifiers = [serviceCopy allHomeScreenApplicationPlaceholderBundleIdentifiers];

  v7 = [v5 initWithArray:allHomeScreenApplicationPlaceholderBundleIdentifiers];

  return v7;
}

+ (id)_sortedAllOtherBundleIDsFromAllBundleIDs:(id)ds allPlaceholderBundleIDs:(id)iDs hardcodedAppCategoryMappings:(id)mappings
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  mappingsCopy = mappings;
  context = objc_autoreleasePoolPush();
  v10 = [dsCopy mutableCopy];
  [v10 unionSet:iDsCopy];
  v11 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [mappingsCopy objectForKeyedSubscript:v17];

        if (!v18)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [v11 sortUsingComparator:&__block_literal_global_70];
  objc_autoreleasePoolPop(context);

  return v11;
}

uint64_t __119__ATXAppDirectoryClient__sortedAllOtherBundleIDsFromAllBundleIDs_allPlaceholderBundleIDs_hardcodedAppCategoryMappings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lowercaseString];
  v6 = [v4 lowercaseString];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_addEngagedSuggestionToERM:(id)m
{
  mCopy = m;
  dispatch_assert_queue_V2(self->_loggingQueue);
  v5 = mCopy;
  if (mCopy)
  {
    engagementRecordManager = self->_engagementRecordManager;
    if (!engagementRecordManager)
    {
      v7 = +[ATXEngagementRecordManager sharedInstance];
      v8 = self->_engagementRecordManager;
      self->_engagementRecordManager = v7;

      engagementRecordManager = self->_engagementRecordManager;
    }

    v4 = [(ATXEngagementRecordManager *)engagementRecordManager addEngagedSuggestion:mCopy engagementRecordType:1];
    v5 = mCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_logCaptureRateDiversionWithType:(int)type
{
  v3 = *&type;
  dispatch_assert_queue_V2(self->_loggingQueue);
  tracker = self->_tracker;
  if (!tracker)
  {
    v6 = objc_opt_new();
    v7 = self->_tracker;
    self->_tracker = v6;

    tracker = self->_tracker;
  }

  [ATXBlendingCaptureRateTracker logAppDirectoryDiversionWithCaptureType:v3 tracker:tracker];
}

- (void)_logCaptureRateCapture
{
  dispatch_assert_queue_V2(self->_loggingQueue);
  tracker = self->_tracker;
  if (!tracker)
  {
    v4 = objc_opt_new();
    v5 = self->_tracker;
    self->_tracker = v4;

    tracker = self->_tracker;
  }

  [ATXBlendingCaptureRateTracker logAppDirectoryCaptureWithTracker:tracker];
}

- (void)_logToBiomeWithEventType:(unint64_t)type date:(id)date blendingCacheUUID:(id)d shownSuggestionIds:(id)ids engagedSuggestionIds:(id)suggestionIds categoryID:(id)iD categoryIndex:(id)index bundleId:(id)self0 bundleIndex:(id)self1 searchQueryLength:(id)self2 searchTab:(id)self3 bundleIdInTopAppsVisible:(id)self4 userLaunchedAppBeforeLeaving:(id)self5
{
  visibleCopy = visible;
  leavingCopy = leaving;
  selfCopy = self;
  queue = self->_loggingQueue;
  tabCopy = tab;
  lengthCopy = length;
  bundleIndexCopy = bundleIndex;
  idCopy = id;
  indexCopy = index;
  iDCopy = iD;
  suggestionIdsCopy = suggestionIds;
  idsCopy = ids;
  dCopy = d;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v45 = visibleCopy;
  if (visibleCopy | leavingCopy)
  {
    v27 = [[ATXAppDirectoryEventMetadata alloc] initWithBundleIdInTopAppsVisible:visibleCopy userLaunchedAppBeforeLeaving:leavingCopy];
  }

  else
  {
    v27 = 0;
  }

  v43 = v27;
  v41 = [[ATXAppDirectoryEvent alloc] initWithDate:dateCopy eventType:type categoryID:iDCopy categoryIndex:indexCopy bundleId:idCopy bundleIndex:bundleIndexCopy searchQueryLength:lengthCopy searchTab:tabCopy blendingCacheUUID:dCopy shownSuggestionIds:idsCopy engagedSuggestionIds:suggestionIdsCopy metadata:v27];

  uiStream = selfCopy->_uiStream;
  if (!uiStream)
  {
    v29 = objc_opt_new();
    v30 = selfCopy->_uiStream;
    selfCopy->_uiStream = v29;

    uiStream = selfCopy->_uiStream;
  }

  v31 = [ATXUIEvent uiEventWithAppDirectoryEvent:v41];
  [(ATXUniversalBiomeUIStream *)uiStream donateGenericUIEvent:v31];

  v33 = __atxlog_handle_app_library(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [ATXAppDirectoryClient _logToBiomeWithEventType:v41 date:v33 blendingCacheUUID:? shownSuggestionIds:? engagedSuggestionIds:? categoryID:? categoryIndex:? bundleId:? bundleIndex:? searchQueryLength:? searchTab:? bundleIdInTopAppsVisible:? userLaunchedAppBeforeLeaving:?];
  }
}

- (void)_logToBiome:(unint64_t)biome metadata:(id)metadata
{
  loggingQueue = self->_loggingQueue;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(loggingQueue);
  v13 = [ATXAppDirectoryEvent appDirectoryEventWithEventType:biome metadata:metadataCopy];

  v8 = v13;
  if (v13)
  {
    uiStream = self->_uiStream;
    if (!uiStream)
    {
      v10 = objc_opt_new();
      v11 = self->_uiStream;
      self->_uiStream = v10;

      uiStream = self->_uiStream;
    }

    v12 = [ATXUIEvent uiEventWithAppDirectoryEvent:v13];
    [(ATXUniversalBiomeUIStream *)uiStream donateGenericUIEvent:v12];

    v8 = v13;
  }
}

- (void)logDidEnterAppDirectoryWithDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v5 = +[ATXHomeScreenSuggestionClient sharedInstance];
    [v5 logSpecialPageDidAppear:1 widgetsByStackId:0 prediction:0];

    loggingQueue = self->_loggingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__ATXAppDirectoryClient_logDidEnterAppDirectoryWithDate___block_invoke;
    v8[3] = &unk_1E80C0958;
    v8[4] = self;
    v9 = dateCopy;
    dispatch_async(loggingQueue, v8);
  }

  else
  {
    v7 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logDidEnterAppDirectoryWithDate:];
    }
  }
}

uint64_t __57__ATXAppDirectoryClient_logDidEnterAppDirectoryWithDate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "[ATXAppDirectoryClient logDidEnterAppDirectoryWithDate:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  [*(a1 + 32) _logToBiomeWithEventType:0 date:*(a1 + 40) blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
  return [*(a1 + 32) _resetSessionState];
}

- (void)logCategoryExpansionWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index
{
  dateCopy = date;
  v9 = dateCopy;
  if (dateCopy)
  {
    loggingQueue = self->_loggingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__ATXAppDirectoryClient_logCategoryExpansionWithDate_categoryID_categoryIndex___block_invoke;
    v12[3] = &unk_1E80C16D8;
    dCopy = d;
    indexCopy = index;
    v12[4] = self;
    v13 = dateCopy;
    dispatch_async(loggingQueue, v12);
  }

  else
  {
    v11 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logCategoryExpansionWithDate:categoryID:categoryIndex:];
    }
  }
}

void __79__ATXAppDirectoryClient_logCategoryExpansionWithDate_categoryID_categoryIndex___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[6];
    v4 = a1[7];
    *buf = 136315650;
    v10 = "[ATXAppDirectoryClient logCategoryExpansionWithDate:categoryID:categoryIndex:]_block_invoke";
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %tu, categoryIndex: %tu", buf, 0x20u);
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[7]];
  [v5 _logToBiomeWithEventType:1 date:v6 blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:v7 categoryIndex:v8 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

- (void)logCategoryExitWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index
{
  dateCopy = date;
  v9 = dateCopy;
  if (dateCopy)
  {
    loggingQueue = self->_loggingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__ATXAppDirectoryClient_logCategoryExitWithDate_categoryID_categoryIndex___block_invoke;
    v12[3] = &unk_1E80C16D8;
    dCopy = d;
    indexCopy = index;
    v12[4] = self;
    v13 = dateCopy;
    dispatch_async(loggingQueue, v12);
  }

  else
  {
    v11 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logCategoryExitWithDate:categoryID:categoryIndex:];
    }
  }
}

void __74__ATXAppDirectoryClient_logCategoryExitWithDate_categoryID_categoryIndex___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[6];
    v4 = a1[7];
    *buf = 136315650;
    v10 = "[ATXAppDirectoryClient logCategoryExitWithDate:categoryID:categoryIndex:]_block_invoke";
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %tu, categoryIndex: %tu", buf, 0x20u);
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[7]];
  [v5 _logToBiomeWithEventType:2 date:v6 blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:v7 categoryIndex:v8 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

- (void)logLaunchFromExpandedCategoryWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index bundleID:(id)iD bundleIndex:(unint64_t)bundleIndex appDirectoryResponse:(id)response
{
  dateCopy = date;
  iDCopy = iD;
  responseCopy = response;
  v17 = responseCopy;
  if (dateCopy)
  {
    if (!iDCopy)
    {
      v18 = __atxlog_handle_app_library(responseCopy);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryClient logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
      }

      iDCopy = @"nil";
    }

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __130__ATXAppDirectoryClient_logLaunchFromExpandedCategoryWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1700;
    dCopy = d;
    indexCopy = index;
    iDCopy = iDCopy;
    v22 = iDCopy;
    bundleIndexCopy = bundleIndex;
    v23 = v17;
    selfCopy = self;
    v25 = dateCopy;
    dispatch_async(loggingQueue, block);

    v20 = v22;
  }

  else
  {
    v20 = __atxlog_handle_app_library(responseCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
    }
  }
}

void __130__ATXAppDirectoryClient_logLaunchFromExpandedCategoryWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136316418;
    v32 = "[ATXAppDirectoryClient logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:]_block_invoke";
    v33 = 2048;
    v34 = v3;
    v35 = 2048;
    v36 = v4;
    v37 = 2112;
    v38 = v6;
    v39 = 2048;
    v40 = v5;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %lu, categoryIndex: %lu, bundleId: %@, bundleIndex: %lu, response: %@", buf, 0x3Eu);
  }

  v8 = [*(a1 + 40) predictedAppIdentities];
  v9 = [*(a1 + 40) predictedAppIdentities];
  v10 = [v9 count];

  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 bundleIDsFromIdentities];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 48) _suggestionsPodDedupableBundleIds];
  v16 = [v14 numberWithBool:objc_msgSend_containsObject_(v15)];

  v17 = *(a1 + 48);
  v29 = *(a1 + 56);
  v18 = [*(a1 + 40) suggestionLayout];
  v19 = [v18 uuid];
  v30 = v13;
  v20 = [*(a1 + 40) uuidsForBundleIds:v13];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v23 = *(a1 + 32);
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  [v17 _logToBiomeWithEventType:3 date:v29 blendingCacheUUID:v19 shownSuggestionIds:v20 engagedSuggestionIds:0 categoryID:v21 categoryIndex:v22 bundleId:v23 bundleIndex:v24 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:v16 userLaunchedAppBeforeLeaving:0];

  if ([v16 BOOLValue])
  {
    v25 = 4006;
  }

  else
  {
    v25 = 4002;
  }

  if (*(a1 + 64) == 4)
  {
    if ([v16 BOOLValue])
    {
      v25 = 4007;
    }

    else
    {
      v25 = 4003;
    }
  }

  v26 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  if (!v26 || (v27 = v26, v28 = [v26 BOOLValue], v27, v28))
  {
    [*(a1 + 48) _logCaptureRateDiversionWithType:v25];
  }

  *(*(a1 + 48) + 56) = 1;
}

- (void)logLaunchFromCategoryPreviewWithDate:(id)date categoryID:(unint64_t)d categoryIndex:(unint64_t)index bundleID:(id)iD bundleIndex:(unint64_t)bundleIndex appDirectoryResponse:(id)response
{
  dateCopy = date;
  iDCopy = iD;
  responseCopy = response;
  v17 = responseCopy;
  if (dateCopy)
  {
    if (!iDCopy)
    {
      v18 = __atxlog_handle_app_library(responseCopy);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryClient logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
      }

      iDCopy = @"nil";
    }

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1700;
    dCopy = d;
    indexCopy = index;
    iDCopy = iDCopy;
    v22 = iDCopy;
    bundleIndexCopy = bundleIndex;
    v23 = v17;
    selfCopy = self;
    v25 = dateCopy;
    dispatch_async(loggingQueue, block);

    v20 = v22;
  }

  else
  {
    v20 = __atxlog_handle_app_library(responseCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:];
    }
  }
}

void __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136316418;
    v44 = "[ATXAppDirectoryClient logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:]_block_invoke";
    v45 = 2048;
    v46 = v3;
    v47 = 2048;
    v48 = v4;
    v49 = 2112;
    v50 = v6;
    v51 = 2048;
    v52 = v5;
    v53 = 2112;
    v54 = v7;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, categoryId: %lu, categoryIndex: %lu, bundleId: %@, bundleIndex: %lu, response: %@", buf, 0x3Eu);
  }

  v8 = [*(a1 + 40) predictedAppIdentities];
  v9 = [*(a1 + 40) predictedAppIdentities];
  v10 = [v9 count];

  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 bundleIDsFromIdentities];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 48) _suggestionsPodDedupableBundleIds];
  v41 = [v14 numberWithBool:objc_msgSend_containsObject_(v15)];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:objc_msgSend_containsObject_(v13)];
  v17 = *(a1 + 64);
  v35 = *(a1 + 48);
  v36 = *(a1 + 56);
  v38 = [*(a1 + 40) suggestionLayout];
  v18 = [v38 uuid];
  v19 = [*(a1 + 40) uuidsForBundleIds:v13];
  v39 = v16;
  v40 = v13;
  v37 = v18;
  if (v17 == 3)
  {
    v20 = *(a1 + 40);
    v42 = *(a1 + 32);
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v21 = [v20 uuidsForBundleIds:?];
  }

  else
  {
    v21 = 0;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v24 = *(a1 + 32);
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  v26 = v41;
  [v35 _logToBiomeWithEventType:4 date:v36 blendingCacheUUID:v37 shownSuggestionIds:v19 engagedSuggestionIds:v21 categoryID:v22 categoryIndex:v23 bundleId:v24 bundleIndex:v25 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:v41 userLaunchedAppBeforeLeaving:0];

  if (v17 == 3)
  {

    v27 = v39;
    v28 = [v39 BOOLValue];
    v29 = v40;
    if ((v28 & 1) == 0)
    {
      v30 = __atxlog_handle_app_library(v28);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke_cold_1();
      }
    }

    [*(a1 + 48) _logCaptureRateCapture];
    v31 = *(a1 + 48);
    v32 = [*(a1 + 40) proactiveSuggestionForBundleId:*(a1 + 32)];
    [v31 _addEngagedSuggestionToERM:v32];

    v26 = v41;
  }

  else
  {

    if ([v41 BOOLValue])
    {
      v33 = 4005;
    }

    else
    {
      v33 = 4001;
    }

    v27 = v39;
    v29 = v40;
    if (v17 == 4)
    {
      if ([v41 BOOLValue])
      {
        v33 = 4007;
      }

      else
      {
        v33 = 4003;
      }
    }

    if ([v40 count])
    {
      [*(a1 + 48) _logCaptureRateDiversionWithType:v33];
    }
  }

  *(*(a1 + 48) + 56) = 1;
}

- (void)logLaunchFromSearchWithDate:(id)date bundleID:(id)d bundleIndex:(unint64_t)index searchQueryLength:(unint64_t)length searchTab:(unint64_t)tab appDirectoryResponse:(id)response
{
  dateCopy = date;
  dCopy = d;
  responseCopy = response;
  v17 = responseCopy;
  if (dateCopy)
  {
    if (!dCopy)
    {
      v18 = __atxlog_handle_app_library(responseCopy);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:];
      }

      dCopy = @"nil";
    }

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __123__ATXAppDirectoryClient_logLaunchFromSearchWithDate_bundleID_bundleIndex_searchQueryLength_searchTab_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1700;
    dCopy = dCopy;
    v22 = dCopy;
    indexCopy = index;
    lengthCopy = length;
    tabCopy = tab;
    v23 = v17;
    selfCopy = self;
    v25 = dateCopy;
    dispatch_async(loggingQueue, block);

    v20 = v22;
  }

  else
  {
    v20 = __atxlog_handle_app_library(responseCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:];
    }
  }
}

void __123__ATXAppDirectoryClient_logLaunchFromSearchWithDate_bundleID_bundleIndex_searchQueryLength_searchTab_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136316418;
    v29 = "[ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:]_block_invoke";
    v30 = 2112;
    v31 = v6;
    v32 = 2048;
    v33 = v3;
    v34 = 2048;
    v35 = v4;
    v36 = 2048;
    v37 = v5;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s, bundleId: %@, bundleIndex: %lu, searchQueryLength: %lu, searchTab: %lu, response: %@", buf, 0x3Eu);
  }

  v8 = [*(a1 + 40) predictedAppIdentities];
  v9 = [*(a1 + 40) predictedAppIdentities];
  v10 = [v9 count];

  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  v13 = [v12 bundleIDsFromIdentities];

  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 48) _suggestionsPodDedupableBundleIds];
  v16 = [v14 numberWithBool:objc_msgSend_containsObject_(v15)];

  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v17 = [*(a1 + 40) suggestionLayout];
  v18 = [v17 uuid];
  v19 = [*(a1 + 40) uuidsForBundleIds:v13];
  v20 = *(a1 + 32);
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  [v26 _logToBiomeWithEventType:6 date:v27 blendingCacheUUID:v18 shownSuggestionIds:v19 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:v20 bundleIndex:v21 searchQueryLength:v22 searchTab:v23 bundleIdInTopAppsVisible:v16 userLaunchedAppBeforeLeaving:0];

  v24 = [v16 BOOLValue];
  if ([v13 count])
  {
    if (v24)
    {
      v25 = 4004;
    }

    else
    {
      v25 = 4000;
    }

    [*(a1 + 48) _logCaptureRateDiversionWithType:v25];
  }

  *(*(a1 + 48) + 56) = 1;
}

- (void)logOpenSearchWithDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    loggingQueue = self->_loggingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__ATXAppDirectoryClient_logOpenSearchWithDate___block_invoke;
    v8[3] = &unk_1E80C0958;
    v8[4] = self;
    v9 = dateCopy;
    dispatch_async(loggingQueue, v8);
  }

  else
  {
    v7 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logOpenSearchWithDate:];
    }
  }
}

uint64_t __47__ATXAppDirectoryClient_logOpenSearchWithDate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "[ATXAppDirectoryClient logOpenSearchWithDate:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  return [*(a1 + 32) _logToBiomeWithEventType:7 date:*(a1 + 40) blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

- (void)logDidLeaveAppDirectoryWithDate:(id)date appDirectoryResponse:(id)response
{
  dateCopy = date;
  responseCopy = response;
  v8 = responseCopy;
  if (dateCopy)
  {
    v9 = +[ATXHomeScreenSuggestionClient sharedInstance];
    [v9 logSpecialPageDidDisappear:1];

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__ATXAppDirectoryClient_logDidLeaveAppDirectoryWithDate_appDirectoryResponse___block_invoke;
    block[3] = &unk_1E80C1728;
    v13 = v8;
    selfCopy = self;
    v15 = dateCopy;
    dispatch_async(loggingQueue, block);

    v11 = v13;
  }

  else
  {
    v11 = __atxlog_handle_app_library(responseCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logDidLeaveAppDirectoryWithDate:appDirectoryResponse:];
    }
  }
}

void __78__ATXAppDirectoryClient_logDidLeaveAppDirectoryWithDate_appDirectoryResponse___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[ATXAppDirectoryClient logDidLeaveAppDirectoryWithDate:appDirectoryResponse:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  v3 = [*(a1 + 32) predictedAppIdentities];
  v4 = [*(a1 + 32) predictedAppIdentities];
  v5 = [v4 count];

  if (v5 >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 subarrayWithRange:{0, v6}];
  v8 = [v7 bundleIDsFromIdentities];

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = [*(a1 + 32) suggestionLayout];
  v12 = [v11 uuid];
  v13 = [*(a1 + 32) uuidsForBundleIds:v8];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 40) + 56)];
  [v10 _logToBiomeWithEventType:8 date:v9 blendingCacheUUID:v12 shownSuggestionIds:v13 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:v14];

  [*(a1 + 40) _resetSessionState];
}

- (void)logCloseSearchWithDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    loggingQueue = self->_loggingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__ATXAppDirectoryClient_logCloseSearchWithDate___block_invoke;
    v8[3] = &unk_1E80C0958;
    v8[4] = self;
    v9 = dateCopy;
    dispatch_async(loggingQueue, v8);
  }

  else
  {
    v7 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryClient logCloseSearchWithDate:];
    }
  }
}

uint64_t __48__ATXAppDirectoryClient_logCloseSearchWithDate___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_app_library(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "[ATXAppDirectoryClient logCloseSearchWithDate:]_block_invoke";
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_INFO, "ATXAppDirectoryClient: %s", buf, 0xCu);
  }

  return [*(a1 + 32) _logToBiomeWithEventType:9 date:*(a1 + 40) blendingCacheUUID:0 shownSuggestionIds:0 engagedSuggestionIds:0 categoryID:0 categoryIndex:0 bundleId:0 bundleIndex:0 searchQueryLength:0 searchTab:0 bundleIdInTopAppsVisible:0 userLaunchedAppBeforeLeaving:0];
}

void __30__ATXAppDirectoryClient__init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __30__ATXAppDirectoryClient__init__block_invoke_17_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__ATXAppDirectoryClient_categoriesWithShouldUseDefault_reply___block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)predictedAppsAndRecentAppsWithMaxNumberOfPredictedApps:shouldUseDefaultCategories:reply:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDirectoryResponseFromCacheWithMaxNumberOfAppsToPredict:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__ATXAppDirectoryClient_appLaunchDatesWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_hiddenAppsFromCache
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)hardcodedAppCategoryMappings
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_logToBiomeWithEventType:(void *)a1 date:(NSObject *)a2 blendingCacheUUID:shownSuggestionIds:engagedSuggestionIds:categoryID:categoryIndex:bundleId:bundleIndex:searchQueryLength:searchTab:bundleIdInTopAppsVisible:userLaunchedAppBeforeLeaving:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 jsonDict];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "ATXAppDirectoryClient: logging event to Biome: %@", v4, 0xCu);
}

- (void)logLaunchFromExpandedCategoryWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)logLaunchFromCategoryPreviewWithDate:categoryID:categoryIndex:bundleID:bundleIndex:appDirectoryResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __129__ATXAppDirectoryClient_logLaunchFromCategoryPreviewWithDate_categoryID_categoryIndex_bundleID_bundleIndex_appDirectoryResponse___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_1_9();
  v3 = v0;
  _os_log_fault_impl(&dword_1BF549000, v1, OS_LOG_TYPE_FAULT, "ATXAppDirectoryClient launch from suggestions category with bundleId: %@ not in shown bundleIds: %@", v2, 0x16u);
}

- (void)logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end