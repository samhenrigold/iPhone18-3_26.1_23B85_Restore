@interface ATXClient
+ (id)clientForConsumerType:(unint64_t)type;
+ (id)clientForConsumerType:(unint64_t)type cacheBasePath:(id)path;
+ (id)dayZeroBundleIdsAndScoresFromDayZeroParameters:(id)parameters;
- (ATXClient)initWithConsumerType:(unint64_t)type cacheBasePath:(id)path;
- (BOOL)forceCacheUpdateForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateIntentTypeIdentifiers:(id)typeIdentifiers;
- (BOOL)shouldPredictAppBundleId:(id)id;
- (BOOL)shouldPredictBundleIdForShortcuts:(id)shortcuts action:(id)action forPrimaryShortcuts:(BOOL)primaryShortcuts;
- (id)_asyncProxy;
- (id)_getConnection;
- (id)_minuteZeroResponse;
- (id)_predicateForDenyList:(id)list;
- (id)_simulatorResponse;
- (id)_syncProxy;
- (id)appPredictionsForConsumerSubType:(unsigned __int8)type blackList:(id)list limit:(int)limit runningDiagnostics:(BOOL)diagnostics;
- (id)appPredictionsForConsumerSubType:(unsigned __int8)type limit:(int)limit personaUID:(id)d;
- (id)approvedSiriKitIntents;
- (id)atxResponseFromBlendingAppPredictionCacheForConsumerSubType:(unsigned __int8)type filterPredicate:(id)predicate limit:(int)limit;
- (id)fetchLastExecutedActions;
- (id)fetchMenuItemsForCurrentAppInFocus:(id *)focus;
- (id)fetchPreWarmedContextualActionSuggestionsWithError:(id *)error;
- (id)fetchToolKitBasedFallbackActionIds:(id *)ids;
- (id)getAppPredictorAssetMappingDescription;
- (id)semanticallySimilarDocumentsFromOnScreenAppEntities;
- (void)dealloc;
- (void)getWebsitePredictionsForContextType:(id)type limit:(unint64_t)limit reply:(id)reply;
- (void)logUserFeedback:(id)feedback consumerSubType:(unsigned __int8)type engagementType:(unint64_t)engagementType bundleIdentifier:(id)identifier bundleIdsShown:(id)shown explicitlyRejectedIds:(id)ids personaUID:(id)d;
- (void)notifySpotlightInvoked:(BOOL)invoked;
- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)string contextType:(id)type;
- (void)recentURLsWithLimit:(unint64_t)limit typeIdentifiersForScope:(id)scope withCompletion:(id)completion;
- (void)sortAppsByLaunches:(id)launches reply:(id)reply;
@end

@implementation ATXClient

+ (id)clientForConsumerType:(unint64_t)type
{
  v3 = [[ATXClient alloc] initWithConsumerType:type cacheBasePath:0];

  return v3;
}

+ (id)clientForConsumerType:(unint64_t)type cacheBasePath:(id)path
{
  pathCopy = path;
  v6 = [[ATXClient alloc] initWithConsumerType:type cacheBasePath:pathCopy];

  return v6;
}

- (ATXClient)initWithConsumerType:(unint64_t)type cacheBasePath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = ATXClient;
  v8 = [(ATXClient *)&v15 init];
  if (v8)
  {
    v9 = [[ATXCacheReader alloc] initWithCacheBasePath:pathCopy];
    cacheReader = v8->_cacheReader;
    v8->_cacheReader = v9;

    objc_storeStrong(&v8->_cacheBasePath, path);
    v8->_consumerType = type;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.proactive.AppPrediction.client.ATXClientQueue", v11);
    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

- (void)dealloc
{
  v3 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ATXClient dealloc];
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4.receiver = self;
  v4.super_class = ATXClient;
  [(ATXClient *)&v4 dealloc];
}

- (id)_getConnection
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.AppPrediction.predictions" options:0];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    v6 = ATXAppPredictionXPCInterface();
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_44];
    [(NSXPCConnection *)self->_xpcConnection resume];
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __27__ATXClient__getConnection__block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __27__ATXClient__getConnection__block_invoke_cold_1();
  }
}

- (id)_asyncProxy
{
  _getConnection = [(ATXClient *)self _getConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__ATXClient__asyncProxy__block_invoke;
  v6[3] = &unk_1E80C2AF8;
  v6[4] = self;
  v4 = [_getConnection remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __24__ATXClient__asyncProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__ATXClient__asyncProxy__block_invoke_cold_1();
  }
}

- (id)_syncProxy
{
  _getConnection = [(ATXClient *)self _getConnection];
  v3 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18_0];

  return v3;
}

void __23__ATXClient__syncProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__ATXClient__asyncProxy__block_invoke_cold_1();
  }
}

- (void)sortAppsByLaunches:(id)launches reply:(id)reply
{
  replyCopy = reply;
  launchesCopy = launches;
  _getConnection = [(ATXClient *)self _getConnection];
  remoteObjectProxy = [_getConnection remoteObjectProxy];
  [remoteObjectProxy sortAppsByLaunches:launchesCopy reply:replyCopy];
}

- (id)approvedSiriKitIntents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = MEMORY[0x1E695E0F0];
  _getConnection = [(ATXClient *)self _getConnection];
  v3 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__ATXClient_approvedSiriKitIntents__block_invoke_21;
  v6[3] = &unk_1E80C3128;
  v6[4] = &v7;
  [v3 approvedSiriKitIntentsWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__ATXClient_approvedSiriKitIntents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__ATXClient_approvedSiriKitIntents__block_invoke_cold_1();
  }
}

void __35__ATXClient_approvedSiriKitIntents__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __35__ATXClient_approvedSiriKitIntents__block_invoke_cold_1();
    }
  }

  if ([v6 count])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)shouldPredictAppBundleId:(id)id
{
  idCopy = id;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  _getConnection = [(ATXClient *)self _getConnection];
  v6 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_24];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__ATXClient_shouldPredictAppBundleId___block_invoke_25;
  v8[3] = &unk_1E80C3150;
  v8[4] = &v9;
  [v6 shouldPredictAppBundleId:idCopy reply:v8];

  LOBYTE(_getConnection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return _getConnection;
}

void __38__ATXClient_shouldPredictAppBundleId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__ATXClient_shouldPredictAppBundleId___block_invoke_cold_1();
  }
}

void __38__ATXClient_shouldPredictAppBundleId___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__ATXClient_shouldPredictAppBundleId___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)shouldPredictBundleIdForShortcuts:(id)shortcuts action:(id)action forPrimaryShortcuts:(BOOL)primaryShortcuts
{
  primaryShortcutsCopy = primaryShortcuts;
  shortcutsCopy = shortcuts;
  actionCopy = action;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  _getConnection = [(ATXClient *)self _getConnection];
  v11 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28_0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_29;
  v13[3] = &unk_1E80C3150;
  v13[4] = &v14;
  [v11 shouldPredictBundleIdForShortcuts:shortcutsCopy action:actionCopy forPrimaryShortcuts:primaryShortcutsCopy reply:v13];

  LOBYTE(primaryShortcutsCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return primaryShortcutsCopy;
}

void __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_cold_1();
  }
}

void __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_29(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74__ATXClient_shouldPredictBundleIdForShortcuts_action_forPrimaryShortcuts___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (id)appPredictionsForConsumerSubType:(unsigned __int8)type limit:(int)limit personaUID:(id)d
{
  v5 = *&limit;
  typeCopy = type;
  v8 = __atxlog_handle_metrics(self);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_metrics(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ATXSpotlightClient.SuggestedApps", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = objc_opt_new();
  v14 = [(ATXClient *)self appPredictionsForConsumerSubType:typeCopy blackList:v13 limit:v5 runningDiagnostics:0];

  v16 = __atxlog_handle_metrics(v15);
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF549000, v17, OS_SIGNPOST_INTERVAL_END, v9, "ATXSpotlightClient.SuggestedApps", " enableTelemetry=YES ", v19, 2u);
  }

  return v14;
}

- (id)_predicateForDenyList:(id)list
{
  listCopy = list;
  v4 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__ATXClient__predicateForDenyList___block_invoke;
  v8[3] = &unk_1E80C1508;
  v9 = listCopy;
  v5 = listCopy;
  v6 = [v4 predicateWithBlock:v8];

  return v6;
}

uint64_t __35__ATXClient__predicateForDenyList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 predictedItem];
  v5 = [ATXApplicationRecord isInstalledAndNotRestrictedForBundle:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 predictedItem];
    v8 = objc_msgSend_containsObject_(v6) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)appPredictionsForConsumerSubType:(unsigned __int8)type blackList:(id)list limit:(int)limit runningDiagnostics:(BOOL)diagnostics
{
  v7 = *&limit;
  typeCopy = type;
  v33 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v11 = __atxlog_handle_default(listCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v30[0] = 67109378;
    v30[1] = typeCopy;
    v31 = 2112;
    v32 = listCopy;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_INFO, "App predictions for subtype %i deny list: %@", v30, 0x12u);
  }

  if (diagnostics)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(ATXClient *)self _predicateForDenyList:listCopy];
  }

  if (typeCopy != 9)
  {
    v18 = [(ATXCacheReader *)self->_cacheReader readCacheFileForConsumerSubtype:typeCopy];
    if (v18)
    {
      v19 = ATXCacheFileSplitChunks();
      v20 = [v19 count];
      if (v20 == 2)
      {
        firstObject = [v19 firstObject];
        v22 = [ATXPredictionSetReader bundleIdReader:firstObject];
        v23 = [v22 readScoredPredictionsWithLimit:v7 filterPredicate:v12];
        v24 = [[ATXResponse alloc] initWithPredictions:v23 cacheFileData:v18 error:0];

        if (v24)
        {
LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v26 = __atxlog_handle_default(v20);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30[0]) = 0;
          _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "No chunks returned from cache. (this may be due to a cache file change)", v30, 2u);
        }
      }
    }

    v27 = [ATXResponse alloc];
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ATXClient" code:1 userInfo:0];
    v24 = [(ATXResponse *)v27 initWithPredictions:0 cacheFileData:0 error:v28];

    goto LABEL_24;
  }

  v13 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  if (v13 && (v14 = v13, v15 = [v13 BOOLValue], v14, !v15))
  {
    v25 = __atxlog_handle_blending(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30[0]) = 0;
      _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "Siri setting 'Show Suggestions' turned off. [ATXClient appPredictionsForConsumerSubType:blackList:limit:runningDiagnostics:] to return an empty ATXResponse", v30, 2u);
    }

    v17 = [[ATXResponse alloc] initWithPredictions:0 cacheFileData:0 error:0];
  }

  else
  {
    v16 = __atxlog_handle_blending(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30[0]) = 0;
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "Blending providing suggestions to ATXConsumerSubTypeSpotlightUnknown inside ATXClient...", v30, 2u);
    }

    v17 = [(ATXClient *)self atxResponseFromBlendingAppPredictionCacheForConsumerSubType:9 filterPredicate:v12 limit:v7];
  }

  v24 = v17;
LABEL_25:

  return v24;
}

- (id)atxResponseFromBlendingAppPredictionCacheForConsumerSubType:(unsigned __int8)type filterPredicate:(id)predicate limit:(int)limit
{
  typeCopy = type;
  v40 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v9 = [[ATXProactiveSuggestionClient alloc] initWithConsumerSubType:typeCopy];
  suggestionLayoutFromCache = [(ATXProactiveSuggestionClient *)v9 suggestionLayoutFromCache];
  if (suggestionLayoutFromCache)
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    allSuggestionsInLayout = [suggestionLayoutFromCache allSuggestionsInLayout];
    v14 = __atxlog_handle_blending(allSuggestionsInLayout);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [allSuggestionsInLayout count];
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "Blending retrieved a layout with %lu bundleIds in it.", &buf, 0xCu);
    }

    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v32 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__8;
    v38 = __Block_byref_object_dispose__8;
    v39 = predicateCopy;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__ATXClient_atxResponseFromBlendingAppPredictionCacheForConsumerSubType_filterPredicate_limit___block_invoke;
    v25[3] = &unk_1E80C3178;
    limitCopy = limit;
    v28 = v31;
    p_buf = &buf;
    v15 = v11;
    v26 = v15;
    v16 = v12;
    v27 = v16;
    v17 = __atxlog_handle_blending([allSuggestionsInLayout enumerateObjectsUsingBlock:v25]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v15 count];
      *v33 = 134217984;
      v34 = v18;
      _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "Blending created an ATXResponse that has %lu bundleIds in it.", v33, 0xCu);
    }

    v19 = [ATXResponse alloc];
    v20 = objc_opt_new();
    uuid = [suggestionLayoutFromCache uuid];
    _minuteZeroResponse = [(ATXResponse *)v19 initWithPredictions:v15 proactiveSuggestions:v16 uuid:v20 cacheFileData:0 blendingUICacheUpdateUUID:uuid error:0];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v31, 8);
  }

  else
  {
    v23 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "There was no cached suggestion layout, falling back to minute zero response", &buf, 2u);
    }

    _minuteZeroResponse = [(ATXClient *)self _minuteZeroResponse];
  }

  return _minuteZeroResponse;
}

void __95__ATXClient_atxResponseFromBlendingAppPredictionCacheForConsumerSubType_filterPredicate_limit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    *a4 = 1;
  }

  else
  {
    v8 = [v6 executableSpecification];
    v9 = [v8 executableObject];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = [ATXScoredPrediction alloc];
      v12 = [v7 scoreSpecification];
      [v12 rawScore];
      *&v13 = v13;
      v14 = [(ATXScoredPrediction *)v11 initWithPredictedItem:v9 score:v13];

      if (v14 && ((v16 = *(*(*(a1 + 56) + 8) + 40)) == 0 || (v15 = [v16 evaluateWithObject:v14], v15)))
      {
        [*(a1 + 32) addObject:v14];
        [*(a1 + 40) addObject:v7];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else
      {
        v17 = __atxlog_handle_blending(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v9;
          _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_INFO, "%@ did not pass app prediction deny list filters", &v18, 0xCu);
        }
      }
    }

    else
    {
      v14 = __atxlog_handle_blending(isKindOfClass);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __95__ATXClient_atxResponseFromBlendingAppPredictionCacheForConsumerSubType_filterPredicate_limit___block_invoke_cold_1();
      }
    }
  }
}

- (void)logUserFeedback:(id)feedback consumerSubType:(unsigned __int8)type engagementType:(unint64_t)engagementType bundleIdentifier:(id)identifier bundleIdsShown:(id)shown explicitlyRejectedIds:(id)ids personaUID:(id)d
{
  typeCopy = type;
  v54 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  identifierCopy = identifier;
  shownCopy = shown;
  idsCopy = ids;
  v19 = __atxlog_handle_default(idsCopy);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  if (v20)
  {
    engagementTypeCopy = engagementType;
    v21 = objc_opt_new();
    v22 = [shownCopy count];
    if (v22)
    {
      for (i = 0; i < v22; ++i)
      {
        if (i)
        {
          [v21 appendString:{@", "}];
        }

        v24 = [shownCopy objectAtIndexedSubscript:i];
        [v21 appendString:v24];

        v22 = [shownCopy count];
      }
    }

    v25 = __atxlog_handle_default(v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v33 = [MEMORY[0x1E698B028] stringForConsumerType:self->_consumerType];
      v31 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
      [MEMORY[0x1E698B028] stringForEngagementType:engagementTypeCopy];
      *buf = 138413570;
      v43 = v33;
      v44 = 2112;
      v45 = feedbackCopy;
      v46 = 2112;
      v47 = v31;
      v49 = v48 = 2112;
      v32 = v49;
      v50 = 2112;
      v51 = identifierCopy;
      v52 = 2112;
      v53 = v21;
      _os_log_debug_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEBUG, "sending feedback for\n  consumerType:%@\n  atxResponse: ***(%@)***\n  consumerSubType:%@\n  engagementType:%@\n  bundleIdentifier:%@\n  bundleIdsShown:%@", buf, 0x3Eu);
    }

    engagementType = engagementTypeCopy;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__ATXClient_logUserFeedback_consumerSubType_engagementType_bundleIdentifier_bundleIdsShown_explicitlyRejectedIds_personaUID___block_invoke;
  block[3] = &unk_1E80C31C0;
  v41 = typeCopy;
  block[4] = self;
  v36 = feedbackCopy;
  v37 = identifierCopy;
  v38 = shownCopy;
  v39 = idsCopy;
  engagementTypeCopy2 = engagementType;
  v27 = idsCopy;
  v28 = shownCopy;
  v29 = identifierCopy;
  v30 = feedbackCopy;
  dispatch_async(queue, block);
}

void __125__ATXClient_logUserFeedback_consumerSubType_engagementType_bundleIdentifier_bundleIdsShown_explicitlyRejectedIds_personaUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _asyncProxy];
  [v2 sendFeedbackForConsumerType:*(*(a1 + 32) + 24) consumerSubType:*(a1 + 80) atxResponse:*(a1 + 40) engagementType:*(a1 + 72) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 56) explicitlyRejectedBundleIds:*(a1 + 64) reply:&__block_literal_global_53_0];
}

void __125__ATXClient_logUserFeedback_consumerSubType_engagementType_bundleIdentifier_bundleIdsShown_explicitlyRejectedIds_personaUID___block_invoke_2(uint64_t a1, int a2)
{
  v3 = __atxlog_handle_default(a1);
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "ATXClient logUserFeedback -- server returned SUCCESS";
      v6 = &v10;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1BF549000, v7, v8, v5, v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v5 = "ATXClient logUserFeedback -- server returned FAILURE";
    v6 = &v9;
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

- (BOOL)forceCacheUpdateForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateIntentTypeIdentifiers:(id)typeIdentifiers
{
  intentCopy = intent;
  identifiersCopy = identifiers;
  typeIdentifiersCopy = typeIdentifiers;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke;
  v18[3] = &unk_1E80C3210;
  typeCopy = type;
  v18[4] = self;
  v19 = intentCopy;
  v20 = identifiersCopy;
  v21 = typeIdentifiersCopy;
  v22 = &v24;
  v14 = typeIdentifiersCopy;
  v15 = identifiersCopy;
  v16 = intentCopy;
  dispatch_sync(queue, v18);
  LOBYTE(queue) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return queue;
}

void __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncProxy];
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke_2;
  v7[3] = &unk_1E80C31E8;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 64);
  [v2 generateNewAppPredictionsForConsumerSubType:v3 intent:v4 candidateBundleIdentifiers:v5 candidateIntentTypeIdentifiers:v6 reply:v7];
}

void __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v3 = __atxlog_handle_default(a1);
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __113__ATXClient_forceCacheUpdateForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXClient forceCacheUpdate -- server returned FAILURE", v5, 2u);
  }
}

- (id)getAppPredictorAssetMappingDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = &stru_1F3E050C8;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke;
  v5[3] = &unk_1E80C2080;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncProxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke_2;
  v3[3] = &unk_1E80C3238;
  v3[4] = *(a1 + 40);
  [v2 getAppPredictorAssetMappingDescriptionWithReply:v3];
}

void __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = __atxlog_handle_default(v5);
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __51__ATXClient_getAppPredictorAssetMappingDescription__block_invoke_2_cold_1();
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXClient getAppPredictorAssetMappingDescription -- server returned FAILURE", v10, 2u);
  }
}

- (id)_simulatorResponse
{
  v42[11] = *MEMORY[0x1E69E9840];
  v2 = [ATXScoredPrediction alloc];
  LODWORD(v3) = 11.0;
  v40 = [(ATXScoredPrediction *)v2 initWithPredictedItem:@"com.apple.reminders" score:v3];
  v42[0] = v40;
  v4 = [ATXScoredPrediction alloc];
  LODWORD(v5) = 10.0;
  v39 = [(ATXScoredPrediction *)v4 initWithPredictedItem:@"com.apple.news" score:v5];
  v42[1] = v39;
  v6 = [ATXScoredPrediction alloc];
  LODWORD(v7) = 9.0;
  v8 = [(ATXScoredPrediction *)v6 initWithPredictedItem:@"com.apple.mobilecal" score:v7];
  v42[2] = v8;
  v9 = [ATXScoredPrediction alloc];
  LODWORD(v10) = 8.0;
  v11 = [(ATXScoredPrediction *)v9 initWithPredictedItem:@"com.apple.shortcuts" score:v10];
  v42[3] = v11;
  v12 = [ATXScoredPrediction alloc];
  LODWORD(v13) = 7.0;
  v14 = [(ATXScoredPrediction *)v12 initWithPredictedItem:@"com.apple.MobileSMS" score:v13];
  v42[4] = v14;
  v15 = [ATXScoredPrediction alloc];
  LODWORD(v16) = 6.0;
  v17 = [(ATXScoredPrediction *)v15 initWithPredictedItem:@"com.apple.mobileslideshow" score:v16];
  v42[5] = v17;
  v18 = [ATXScoredPrediction alloc];
  LODWORD(v19) = 5.0;
  v20 = [(ATXScoredPrediction *)v18 initWithPredictedItem:@"com.apple.mobilesafari" score:v19];
  v42[6] = v20;
  v21 = [ATXScoredPrediction alloc];
  LODWORD(v22) = 4.0;
  v23 = [(ATXScoredPrediction *)v21 initWithPredictedItem:@"com.apple.MobileAddressBook" score:v22];
  v42[7] = v23;
  v24 = [ATXScoredPrediction alloc];
  LODWORD(v25) = 3.0;
  v26 = [(ATXScoredPrediction *)v24 initWithPredictedItem:@"com.apple.reminders" score:v25];
  v42[8] = v26;
  v27 = [ATXScoredPrediction alloc];
  LODWORD(v28) = 2.0;
  v29 = [(ATXScoredPrediction *)v27 initWithPredictedItem:@"com.apple.Maps" score:v28];
  v42[9] = v29;
  v30 = [ATXScoredPrediction alloc];
  LODWORD(v31) = 1.0;
  v32 = [(ATXScoredPrediction *)v30 initWithPredictedItem:@"com.apple.Preferences" score:v31];
  v42[10] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:11];

  v34 = objc_opt_new();
  v35 = [(ATXClient *)self _predicateForDenyList:v34];
  v36 = [v33 filteredArrayUsingPredicate:v35];

  v37 = [[ATXResponse alloc] initWithPredictions:v36 cacheFileData:0 error:0];

  return v37;
}

+ (id)dayZeroBundleIdsAndScoresFromDayZeroParameters:(id)parameters
{
  v3 = [parameters objectForKeyedSubscript:@"dayZero"];
  v4 = [v3 objectForKeyedSubscript:@"dayZeroBumps"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
  }

  else
  {
    v7 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[ATXClient dayZeroBundleIdsAndScoresFromDayZeroParameters:];
    }

    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (id)_minuteZeroResponse
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = [[ATXAssetsABHelper alloc] initWithAssetsForResource:@"_ATXAppPredictorDayZero" ofType:@"plist" specifiedABGroup:0];
  abGroupContents = [(ATXAssetsABHelper *)v31 abGroupContents];
  v2 = [objc_opt_class() dayZeroBundleIdsAndScoresFromDayZeroParameters:abGroupContents];
  v3 = +[ATXAppDisplayIdentifiers appIdentifiers];
  v29 = v3;
  if ([v3 count])
  {
    allKeys = [v2 allKeys];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __32__ATXClient__minuteZeroResponse__block_invoke;
    v40[3] = &unk_1E80C1BD0;
    v41 = v3;
    v5 = [allKeys _pas_filteredArrayWithTest:v40];
    v6 = [v2 dictionaryWithValuesForKeys:v5];

    v2 = v6;
  }

  allKeys2 = [v2 allKeys];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __32__ATXClient__minuteZeroResponse__block_invoke_2;
  v38[3] = &unk_1E80C17F0;
  v27 = v2;
  v28 = allKeys2;
  v39 = v27;
  v8 = [allKeys2 sortedArrayUsingComparator:v38];
  v33 = objc_opt_new();
  v9 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [objc_alloc(MEMORY[0x1E69C5BC0]) initWithClientModelId:@"app_zkw_minute_zero" clientModelVersion:@"1.0"];
        v16 = [objc_alloc(MEMORY[0x1E69C5BC8]) initWithExecutableObject:v14 executableDescription:v14 executableIdentifier:v14 suggestionExecutableType:1];
        v17 = objc_alloc(MEMORY[0x1E69C5BE0]);
        LOWORD(v26) = 1;
        v18 = [v17 initWithTitle:v14 subtitle:0 predictionReason:0 preferredLayoutConfigs:MEMORY[0x1E695E0F0] allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v26 shouldClearOnEngagement:?];
        v19 = [objc_alloc(MEMORY[0x1E69C5BD8]) initWithRawScore:2 suggestedConfidenceCategory:0.0];
        v20 = [objc_alloc(MEMORY[0x1E69C5BB0]) initWithClientModelSpecification:v15 executableSpecification:v16 uiSpecification:v18 scoreSpecification:v19];
        [v33 addObject:v20];
        v21 = [[ATXScoredPrediction alloc] initWithPredictedItem:v14 score:0.0];
        [v9 addObject:v21];
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v11);
  }

  v22 = [ATXResponse alloc];
  v23 = objc_opt_new();
  v24 = [(ATXResponse *)v22 initWithPredictions:v9 proactiveSuggestions:v33 uuid:v23 cacheFileData:0 blendingUICacheUpdateUUID:0 error:0];

  return v24;
}

uint64_t __32__ATXClient__minuteZeroResponse__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v8 compare:v7];
  return v9;
}

- (void)getWebsitePredictionsForContextType:(id)type limit:(unint64_t)limit reply:(id)reply
{
  replyCopy = reply;
  typeCopy = type;
  _getConnection = [(ATXClient *)self _getConnection];
  remoteObjectProxy = [_getConnection remoteObjectProxy];
  [remoteObjectProxy getWebsitePredictionsForContextType:typeCopy limit:limit reply:replyCopy];
}

- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)string contextType:(id)type
{
  typeCopy = type;
  stringCopy = string;
  _getConnection = [(ATXClient *)self _getConnection];
  remoteObjectProxy = [_getConnection remoteObjectProxy];
  [remoteObjectProxy overwriteWebsitePredictionsCacheWithWebsiteString:stringCopy contextType:typeCopy];
}

- (void)recentURLsWithLimit:(unint64_t)limit typeIdentifiersForScope:(id)scope withCompletion:(id)completion
{
  completionCopy = completion;
  scopeCopy = scope;
  _getConnection = [(ATXClient *)self _getConnection];
  remoteObjectProxy = [_getConnection remoteObjectProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke;
  v13[3] = &unk_1E80C0908;
  v14 = completionCopy;
  v12 = completionCopy;
  [remoteObjectProxy recentURLsWithLimit:limit typeIdentifiersForScope:scopeCopy withCompletion:v13];
}

void __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_document_predictor(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (void)notifySpotlightInvoked:(BOOL)invoked
{
  invokedCopy = invoked;
  _getConnection = [(ATXClient *)self _getConnection];
  v4 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_118_0];
  [v4 notifySpotlightInvoked:invokedCopy];
}

void __36__ATXClient_notifySpotlightInvoked___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_default(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__ATXClient_notifySpotlightInvoked___block_invoke_cold_1();
  }
}

- (id)fetchPreWarmedContextualActionSuggestionsWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  _getConnection = [(ATXClient *)self _getConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ATXClient_fetchPreWarmedContextualActionSuggestionsWithError___block_invoke;
  v10[3] = &unk_1E80C3260;
  v10[4] = &v17;
  v5 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__ATXClient_fetchPreWarmedContextualActionSuggestionsWithError___block_invoke_2;
  v9[3] = &unk_1E80C3288;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchPreWarmedContextualActionSuggestionsWithCompletion:v9];

  v6 = v12;
  if (error && !v12[5])
  {
    *error = v18[5];
    v6 = v12;
  }

  v7 = v6[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __64__ATXClient_fetchPreWarmedContextualActionSuggestionsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)fetchMenuItemsForCurrentAppInFocus:(id *)focus
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  _getConnection = [(ATXClient *)self _getConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ATXClient_fetchMenuItemsForCurrentAppInFocus___block_invoke;
  v10[3] = &unk_1E80C3260;
  v10[4] = &v17;
  v5 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ATXClient_fetchMenuItemsForCurrentAppInFocus___block_invoke_2;
  v9[3] = &unk_1E80C3288;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchMenuItemsForCurrentAppInFocusWithCompletion:v9];

  v6 = v12;
  if (focus && !v12[5])
  {
    *focus = v18[5];
    v6 = v12;
  }

  v7 = v6[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __48__ATXClient_fetchMenuItemsForCurrentAppInFocus___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)fetchToolKitBasedFallbackActionIds:(id *)ids
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  _getConnection = [(ATXClient *)self _getConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ATXClient_fetchToolKitBasedFallbackActionIds___block_invoke;
  v10[3] = &unk_1E80C3260;
  v10[4] = &v17;
  v5 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__ATXClient_fetchToolKitBasedFallbackActionIds___block_invoke_2;
  v9[3] = &unk_1E80C3288;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 fetchToolKitBasedFallbackActionIdsWithCompletion:v9];

  v6 = v12;
  if (ids && !v12[5])
  {
    *ids = v18[5];
    v6 = v12;
  }

  v7 = v6[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __48__ATXClient_fetchToolKitBasedFallbackActionIds___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)semanticallySimilarDocumentsFromOnScreenAppEntities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = MEMORY[0x1E695E0F0];
  _getConnection = [(ATXClient *)self _getConnection];
  v3 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_120];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ATXClient_semanticallySimilarDocumentsFromOnScreenAppEntities__block_invoke_2;
  v6[3] = &unk_1E80C3128;
  v6[4] = &v7;
  [v3 fetchSemanticallySimilarDocumentsWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__ATXClient_semanticallySimilarDocumentsFromOnScreenAppEntities__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_screen_entities(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__ATXClient_semanticallySimilarDocumentsFromOnScreenAppEntities__block_invoke_2_cold_1();
    }
  }

  if ([v5 count])
  {
    v9 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_124];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)fetchLastExecutedActions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = MEMORY[0x1E695E0F0];
  _getConnection = [(ATXClient *)self _getConnection];
  v3 = [_getConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_126];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__ATXClient_fetchLastExecutedActions__block_invoke_2;
  v6[3] = &unk_1E80C3128;
  v6[4] = &v7;
  [v3 fetchLastExecutedActionsWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__ATXClient_fetchLastExecutedActions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_action_prediction(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __37__ATXClient_fetchLastExecutedActions__block_invoke_2_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __72__ATXClient_recentURLsWithLimit_typeIdentifiersForScope_withCompletion___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "Got recents: %@", v1, 0xCu);
}

@end