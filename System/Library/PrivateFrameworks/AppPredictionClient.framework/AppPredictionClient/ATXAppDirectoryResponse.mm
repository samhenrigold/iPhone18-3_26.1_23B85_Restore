@interface ATXAppDirectoryResponse
+ (BOOL)_canUseSuggestedApp:(id)app includeRemoteApps:(BOOL)apps;
- (ATXAppDirectoryResponse)initWithSuggestionLayout:(id)layout includeRemoteApps:(BOOL)apps recentApps:(id)recentApps hiddenApps:(id)hiddenApps otherAppsOnScreen:(id)screen numAppsToPredict:(unint64_t)predict error:(id)error;
- (ATXAppDirectoryResponse)initWithoutDedupingForRecents:(id)recents predictedApps:(id)apps hiddenApps:(id)hiddenApps error:(id)error;
- (NSArray)recentAppsVisible;
- (id)_minuteZeroResponse;
- (id)proactiveSuggestionForIdentity:(id)identity;
- (id)uuidForBundleId:(id)id;
- (id)uuidForIdentities:(id)identities;
- (id)uuidForIdentity:(id)identity;
- (id)uuidsForBundleIds:(id)ids;
@end

@implementation ATXAppDirectoryResponse

- (NSArray)recentAppsVisible
{
  recentApps = [(ATXAppDirectoryResponse *)self recentApps];
  v3 = [recentApps count];
  if (v3 >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = [recentApps subarrayWithRange:{0, v4}];

  return v5;
}

- (id)_minuteZeroResponse
{
  v2 = [[ATXAssetsABHelper alloc] initWithAssetsForResource:@"_ATXAppPredictorDayZero" ofType:@"plist" specifiedABGroup:0];
  abGroupContents = [(ATXAssetsABHelper *)v2 abGroupContents];
  v4 = [ATXClient dayZeroBundleIdsAndScoresFromDayZeroParameters:abGroupContents];
  allKeys = [v4 allKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ATXAppDirectoryResponse__minuteZeroResponse__block_invoke;
  v9[3] = &unk_1E80C17F0;
  v10 = v4;
  v6 = v4;
  v7 = [allKeys sortedArrayUsingComparator:v9];

  return v7;
}

uint64_t __46__ATXAppDirectoryResponse__minuteZeroResponse__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v8 compare:v7];
  return v9;
}

+ (BOOL)_canUseSuggestedApp:(id)app includeRemoteApps:(BOOL)apps
{
  appsCopy = apps;
  appCopy = app;
  if (!ATXIsRemoteAppBundleId() || appsCopy)
  {
    v6 = ATXBundleIdForRemoteBundleId();
    v7 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    appsCopy = objc_msgSend_containsObject_(v7) ^ 1;
  }

  return appsCopy;
}

- (ATXAppDirectoryResponse)initWithSuggestionLayout:(id)layout includeRemoteApps:(BOOL)apps recentApps:(id)recentApps hiddenApps:(id)hiddenApps otherAppsOnScreen:(id)screen numAppsToPredict:(unint64_t)predict error:(id)error
{
  appsCopy = apps;
  errorCopy3 = error;
  v77 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  recentAppsCopy = recentApps;
  hiddenAppsCopy = hiddenApps;
  screenCopy = screen;
  errorCopy2 = error;
  v73.receiver = self;
  v73.super_class = ATXAppDirectoryResponse;
  v20 = [(ATXAppDirectoryResponse *)&v73 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_30;
  }

  objc_storeStrong(&v20->_suggestionLayout, layout);
  v64 = [recentAppsCopy _pas_mappedArrayWithTransform:&__block_literal_global_13];
  appIdentitiesFromBundleIDs = [v64 appIdentitiesFromBundleIDs];
  recentAppIdentities = v21->_recentAppIdentities;
  v21->_recentAppIdentities = appIdentitiesFromBundleIDs;

  v24 = [ATXAppDirectoryCategory alloc];
  appIdentitiesFromBundleIDs2 = [hiddenAppsCopy appIdentitiesFromBundleIDs];
  v26 = [(ATXAppDirectoryCategory *)v24 initWithCategoryID:7 appIdentities:appIdentitiesFromBundleIDs2];
  hiddenAppsCategory = v21->_hiddenAppsCategory;
  v21->_hiddenAppsCategory = v26;

  v67 = objc_opt_new();
  v28 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  if (v28)
  {
    v29 = v28;
    bOOLValue = [v28 BOOLValue];

    if (!bOOLValue)
    {
      predictedAppIdentities = v21->_predictedAppIdentities;
      v21->_predictedAppIdentities = MEMORY[0x1E695E0F0];
      goto LABEL_23;
    }
  }

  v59 = errorCopy2;
  v60 = screenCopy;
  v61 = hiddenAppsCopy;
  v62 = recentAppsCopy;
  v66 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v63 = layoutCopy;
  allSuggestionsInLayout = [layoutCopy allSuggestionsInLayout];
  v32 = [allSuggestionsInLayout countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = *v70;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v70 != v34)
      {
        objc_enumerationMutation(allSuggestionsInLayout);
      }

      v36 = *(*(&v69 + 1) + 8 * i);
      executableSpecification = [v36 executableSpecification];
      if ([executableSpecification executableType] == 1)
      {
        executableSpecification2 = [v36 executableSpecification];
        executableObject = [executableSpecification2 executableObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          executableSpecification3 = [v36 executableSpecification];
          executableObject2 = [executableSpecification3 executableObject];

          if ([objc_opt_class() _canUseSuggestedApp:executableObject2 includeRemoteApps:appsCopy])
          {
            [(NSArray *)v66 addObject:executableObject2];
            [v67 setObject:v36 forKey:executableObject2];
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

      executableObject2 = __atxlog_handle_app_library(v41);
      if (os_log_type_enabled(executableObject2, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v75 = v36;
        _os_log_fault_impl(&dword_1BF549000, executableObject2, OS_LOG_TYPE_FAULT, "ATXAppDirectoryResponse received suggestion that was not of type app: %@", buf, 0xCu);
      }

LABEL_16:
    }

    v33 = [allSuggestionsInLayout countByEnumeratingWithState:&v69 objects:v76 count:16];
  }

  while (v33);
LABEL_18:

  objc_autoreleasePoolPop(context);
  recentAppsVisible = [(ATXAppDirectoryResponse *)v21 recentAppsVisible];
  predictedAppIdentities = v66;
  [(NSArray *)v66 removeObjectsInArray:recentAppsVisible];

  screenCopy = v60;
  [(NSArray *)v66 removeObjectsInArray:v60];
  v46 = [(NSArray *)v66 count];
  if (v46 >= predict)
  {
    predictCopy = predict;
  }

  else
  {
    predictCopy = v46;
  }

  predictCopy = [(NSArray *)v66 subarrayWithRange:0, predictCopy];
  appIdentitiesFromBundleIDs3 = [predictCopy appIdentitiesFromBundleIDs];
  v50 = v21->_predictedAppIdentities;
  v21->_predictedAppIdentities = appIdentitiesFromBundleIDs3;

  recentAppsCopy = v62;
  layoutCopy = v63;
  hiddenAppsCopy = v61;
  errorCopy3 = error;
  errorCopy2 = v59;
LABEL_23:

  v51 = [v67 copy];
  bundleIdToSuggestionMapping = v21->_bundleIdToSuggestionMapping;
  v21->_bundleIdToSuggestionMapping = v51;

  if (errorCopy2)
  {
    objc_storeStrong(&v21->_error, errorCopy3);
  }

  p_error = &v21->_error;
  if (v21->_error)
  {
    v55 = __atxlog_handle_app_library(v53);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryResponse initWithSuggestionLayout:v55 includeRemoteApps:? recentApps:? hiddenApps:? otherAppsOnScreen:? numAppsToPredict:? error:?];
    }

    v56 = *p_error;
    *p_error = 0;
  }

LABEL_30:
  return v21;
}

- (ATXAppDirectoryResponse)initWithoutDedupingForRecents:(id)recents predictedApps:(id)apps hiddenApps:(id)hiddenApps error:(id)error
{
  recentsCopy = recents;
  appsCopy = apps;
  hiddenAppsCopy = hiddenApps;
  errorCopy = error;
  v24.receiver = self;
  v24.super_class = ATXAppDirectoryResponse;
  v14 = [(ATXAppDirectoryResponse *)&v24 init];
  if (v14)
  {
    appIdentitiesFromBundleIDs = [recentsCopy appIdentitiesFromBundleIDs];
    recentAppIdentities = v14->_recentAppIdentities;
    v14->_recentAppIdentities = appIdentitiesFromBundleIDs;

    v17 = [ATXAppDirectoryCategory alloc];
    appIdentitiesFromBundleIDs2 = [hiddenAppsCopy appIdentitiesFromBundleIDs];
    v19 = [(ATXAppDirectoryCategory *)v17 initWithCategoryID:7 appIdentities:appIdentitiesFromBundleIDs2];
    hiddenAppsCategory = v14->_hiddenAppsCategory;
    v14->_hiddenAppsCategory = v19;

    appIdentitiesFromBundleIDs3 = [appsCopy appIdentitiesFromBundleIDs];
    predictedAppIdentities = v14->_predictedAppIdentities;
    v14->_predictedAppIdentities = appIdentitiesFromBundleIDs3;

    objc_storeStrong(&v14->_error, error);
  }

  return v14;
}

- (id)uuidsForBundleIds:(id)ids
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ATXAppDirectoryResponse_uuidsForBundleIds___block_invoke;
  v5[3] = &unk_1E80C1838;
  v5[4] = self;
  v3 = [ids _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __45__ATXAppDirectoryResponse_uuidsForBundleIds___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:a2];
  v3 = [v2 uuid];

  return v3;
}

- (id)uuidForBundleId:(id)id
{
  v3 = [(NSDictionary *)self->_bundleIdToSuggestionMapping objectForKey:id];
  uuid = [v3 uuid];

  return uuid;
}

- (id)proactiveSuggestionForIdentity:(id)identity
{
  bundleIdToSuggestionMapping = self->_bundleIdToSuggestionMapping;
  bundleIDWithRelevantPrefix = [identity bundleIDWithRelevantPrefix];
  v5 = [(NSDictionary *)bundleIdToSuggestionMapping objectForKey:bundleIDWithRelevantPrefix];

  return v5;
}

- (id)uuidForIdentities:(id)identities
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ATXAppDirectoryResponse_uuidForIdentities___block_invoke;
  v5[3] = &unk_1E80C1860;
  v5[4] = self;
  v3 = [identities _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __45__ATXAppDirectoryResponse_uuidForIdentities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [a2 bundleIDWithRelevantPrefix];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 uuid];

  return v5;
}

- (id)uuidForIdentity:(id)identity
{
  bundleIdToSuggestionMapping = self->_bundleIdToSuggestionMapping;
  bundleIDWithRelevantPrefix = [identity bundleIDWithRelevantPrefix];
  v5 = [(NSDictionary *)bundleIdToSuggestionMapping objectForKey:bundleIDWithRelevantPrefix];
  uuid = [v5 uuid];

  return uuid;
}

- (void)initWithSuggestionLayout:(uint64_t *)a1 includeRemoteApps:(NSObject *)a2 recentApps:hiddenApps:otherAppsOnScreen:numAppsToPredict:error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXAppDirectoryResponse: Attempt to create a response with error %@. Scrubbing the error from the response to allow display of the error-free parts of the response", &v3, 0xCu);
}

@end