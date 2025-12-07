@interface ATXAnchorModelDataAnonymizer
+ (BOOL)isFirstPartyApp:(id)app;
+ (BOOL)shouldAnonymizeActionType:(id)type forBundleId:(id)id;
+ (BOOL)shouldAnonymizeBundle:(id)bundle;
+ (id)readDeviceSpecificSalt;
+ (id)setSaltToUserDefaults:(id)defaults scheme:(id)scheme;
+ (void)_hashAndSaltActionKeyMetadataIfNeededInList:(id)list withSalt:(id)salt;
+ (void)anonymizeMessage:(id)message;
@end

@implementation ATXAnchorModelDataAnonymizer

+ (void)anonymizeMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = __atxlog_handle_default(messageCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Anchor Model Data Collection: starting anonymization procedure for log entry message...", buf, 2u);
  }

  readDeviceSpecificSalt = [objc_opt_class() readDeviceSpecificSalt];
  anchor = [messageCopy anchor];
  anchorEventIdentifier = [anchor anchorEventIdentifier];
  v9 = _ATXAnchorModelSha256Hash(anchorEventIdentifier, readDeviceSpecificSalt);
  anchor2 = [messageCopy anchor];
  [anchor2 setAnchorEventIdentifier:v9];

  anchor3 = [messageCopy anchor];
  locationIdentifier = [anchor3 locationIdentifier];
  v13 = _ATXAnchorModelSha256Hash(locationIdentifier, readDeviceSpecificSalt);
  anchor4 = [messageCopy anchor];
  [anchor4 setLocationIdentifier:v13];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  positiveAppLaunches = [messageCopy positiveAppLaunches];
  v16 = [positiveAppLaunches countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      v19 = 0;
      do
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(positiveAppLaunches);
        }

        v20 = *(*(&v43 + 1) + 8 * v19);
        v21 = objc_opt_class();
        bundleId = [v20 bundleId];
        LODWORD(v21) = [v21 shouldAnonymizeBundle:bundleId];

        if (v21)
        {
          bundleId2 = [v20 bundleId];
          v24 = _ATXAnchorModelSha256Hash(bundleId2, readDeviceSpecificSalt);
          [v20 setBundleId:v24];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [positiveAppLaunches countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v17);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  negativeAppLaunches = [messageCopy negativeAppLaunches];
  v26 = [negativeAppLaunches countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(negativeAppLaunches);
        }

        v30 = *(*(&v39 + 1) + 8 * v29);
        v31 = objc_opt_class();
        bundleId3 = [v30 bundleId];
        LODWORD(v31) = [v31 shouldAnonymizeBundle:bundleId3];

        if (v31)
        {
          bundleId4 = [v30 bundleId];
          v34 = _ATXAnchorModelSha256Hash(bundleId4, readDeviceSpecificSalt);
          [v30 setBundleId:v34];
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = [negativeAppLaunches countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v27);
  }

  positiveActions = [messageCopy positiveActions];
  [self _hashAndSaltActionKeyMetadataIfNeededInList:positiveActions withSalt:readDeviceSpecificSalt];

  negativeActions = [messageCopy negativeActions];
  [self _hashAndSaltActionKeyMetadataIfNeededInList:negativeActions withSalt:readDeviceSpecificSalt];

  v38 = __atxlog_handle_default(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "Anchor Model Data Collection: finished anonymization procedure for log entry message.", buf, 2u);
  }
}

+ (void)_hashAndSaltActionKeyMetadataIfNeededInList:(id)list withSalt:(id)salt
{
  v26 = *MEMORY[0x277D85DE8];
  listCopy = list;
  saltCopy = salt;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = listCopy;
  v7 = [listCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        appLaunchMetadata = [v11 appLaunchMetadata];
        bundleId = [appLaunchMetadata bundleId];

        actionKeyMetadata = [v11 actionKeyMetadata];
        actionType = [actionKeyMetadata actionType];

        if ([objc_opt_class() shouldAnonymizeBundle:bundleId])
        {
          v16 = _ATXAnchorModelSha256Hash(bundleId, saltCopy);
          appLaunchMetadata2 = [v11 appLaunchMetadata];
          [appLaunchMetadata2 setBundleId:v16];
        }

        if ([objc_opt_class() shouldAnonymizeActionType:actionType forBundleId:bundleId])
        {
          v18 = _ATXAnchorModelSha256Hash(actionType, saltCopy);
          actionKeyMetadata2 = [v11 actionKeyMetadata];
          [actionKeyMetadata2 setActionType:v18];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

+ (BOOL)isFirstPartyApp:(id)app
{
  appCopy = app;
  if ([MEMORY[0x277CEB3B8] isSystemAppForBundleId:appCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [appCopy hasPrefix:@"com.apple."];
  }

  return v4;
}

+ (BOOL)shouldAnonymizeBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([self isFirstPartyApp:bundleCopy])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[_ATXGlobals sharedInstance];
    whitelistedBundlesForAnchorModelLogging = [v6 whitelistedBundlesForAnchorModelLogging];
    v8 = [whitelistedBundlesForAnchorModelLogging objectForKey:bundleCopy];
    v5 = v8 == 0;
  }

  return v5;
}

+ (BOOL)shouldAnonymizeActionType:(id)type forBundleId:(id)id
{
  typeCopy = type;
  if ([self isFirstPartyApp:id])
  {
    v7 = 0;
  }

  else
  {
    v8 = +[_ATXGlobals sharedInstance];
    whitelistedActionTypesForAnchorModelLogging = [v8 whitelistedActionTypesForAnchorModelLogging];
    v10 = [whitelistedActionTypesForAnchorModelLogging objectForKey:typeCopy];
    v11 = v10 == 0;

    approvedSiriKitIntents = [v8 approvedSiriKitIntents];
    v13 = [approvedSiriKitIntents containsObject:typeCopy];

    v7 = v11 & ~v13;
  }

  return v7;
}

+ (id)setSaltToUserDefaults:(id)defaults scheme:(id)scheme
{
  defaultsCopy = defaults;
  schemeCopy = scheme;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:32];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, [v7 mutableBytes]))
  {
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithData:v7];

    if (v10)
    {
      [defaultsCopy setObject:v10 forKey:schemeCopy];
      goto LABEL_8;
    }
  }

  v9 = __atxlog_handle_default(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [ATXAnchorModelDataAnonymizer setSaltToUserDefaults:v9 scheme:?];
  }

  v10 = 0;
LABEL_8:

  return v10;
}

+ (id)readDeviceSpecificSalt
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 dataForKey:@"ATXAnchorModelOfflineDataHarvesterDeviceSpecificSalt"];
  if (!v4)
  {
    v4 = [objc_opt_class() setSaltToUserDefaults:v3 scheme:@"ATXAnchorModelOfflineDataHarvesterDeviceSpecificSalt"];
    v5 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Anchor Model Data Collection: Created a new salt for data collection.", v7, 2u);
    }
  }

  return v4;
}

@end