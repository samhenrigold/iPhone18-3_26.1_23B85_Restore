@interface IMBalloonPluginManager
+ (BOOL)_allowExtensionWithIdentifier:(id)identifier;
+ (BOOL)_isExtensionBlocklisted:(id)blocklisted;
+ (BOOL)_shouldAddFindMyToBlockList;
+ (BOOL)_shouldAddGenPlaygroundToBlockList;
+ (BOOL)_shouldAddSafetyMonitorToBlockList;
+ (id)_extensionBlocklist;
+ (id)balloonProviderBundlePathURL;
+ (id)precacheBalloonAppExtensionsForExtensions:(id)extensions;
+ (id)sharedInstance;
+ (id)signpostLogHandle;
+ (void)setIsRunningPPT:(BOOL)t;
- (BOOL)_shouldSkipUpdatingPluginBundleIdentifier:(id)identifier;
- (Class)dataSourceClassForBundleID:(id)d;
- (IMBalloonPluginManager)init;
- (id)_appProxyBundleIdentifiersForAppPlugins;
- (id)_currentlyInstalledExtensionsExcludingExtensionPoint:(id)point;
- (id)_extensionWithIdentifier:(id)identifier;
- (id)_fallBackMessagesExtensionPluginForBundleID:(id)d;
- (id)_identifiersForAppPlugins;
- (id)_infoPlistPathForPluginCreatingFolderIfNeeded:(id)needed;
- (id)_insertPluginForAppBundle:(id)bundle balloonProviderBundle:(id)providerBundle;
- (id)_insertPluginForExtension:(id)extension balloonProviderBundle:(id)bundle precachedBalloonAppExtensions:(id)extensions timingCollection:(id)collection;
- (id)_loadAppExtensionDataSourcesForExtensionPoint:(id)point;
- (id)_metadataForPluginIdentifier:(id)identifier;
- (id)_pluginPlistPath:(id)path;
- (id)_pluginsForWhichWeHaveMetadata;
- (id)_proxyIdentifiersForPlugins;
- (id)allPlugins;
- (id)balloonPluginForBundleID:(id)d;
- (id)conversationID:(id)d appID:(id)iD;
- (id)dataSourceForPluginPayload:(id)payload;
- (id)existingDataSourceForMessageGUID:(id)d bundleID:(id)iD;
- (id)localParticipantIdentifierForAppID:(id)d conversationID:(id)iD;
- (id)recipientIDForRecipient:(id)recipient appID:(id)d;
- (id)signpostLogHandle;
- (id)systemBundleIdentifierForPluginIdentifier:(id)identifier;
- (void)_clearPluginMetadataForUninstalledApps;
- (void)_deleteMetaDataForPlugins:(id)plugins;
- (void)_findPluginsInPathInternal:(id)internal;
- (void)_findPluginsInPaths:(id)paths;
- (void)_loadAllDataSources;
- (void)_loadAppBundleDataSources;
- (void)_loadAppExtensionDataSources;
- (void)_moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions;
- (void)_postDeferredInstalledAppsChangedNotificationIfNecessary;
- (void)_postInstalledAppsChangedNotification;
- (void)_removePluginsForIdentifiers:(id)identifiers;
- (void)_removePluginsWithDelay;
- (void)_setPluginsToRemoveAndCallSelectorWithDelay:(id)delay;
- (void)_storeMetadata:(id)metadata _forPlugin:(id)plugin;
- (void)_transferUpdated:(id)updated;
- (void)_updatePluginsForBundles:(id)bundles;
- (void)_updatePluginsForExtensions:(id)extensions extensionPoint:(id)point precachedBalloonAppExtensions:(id)appExtensions;
- (void)dealloc;
- (void)insertDataSource:(id)source forGUID:(id)d;
- (void)insertPlugin:(id)plugin;
- (void)loadExtensionWithIdentifierIfNeeded:(id)needed;
- (void)pluginChatItem:(id)item didRelenquishNonResuableController:(id)controller contextIdentifier:(id)identifier;
- (void)pluginChatItem:(id)item didRelinquishReusableController:(id)controller contextIdentifier:(id)identifier;
- (void)pluginChatItemRequestedReleaseDataSource:(id)source;
- (void)removePluginWithBundleID:(id)d;
- (void)setPluginEnabled:(BOOL)enabled identifier:(id)identifier;
@end

@implementation IMBalloonPluginManager

- (IMBalloonPluginManager)init
{
  v54 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = IMBalloonPluginManager;
  v39 = [(IMBalloonPluginManager *)&v50 init];
  if (v39)
  {
    v2 = objc_alloc_init(IMBalloonPluginManagerModel);
    model = v39->_model;
    v39->_model = v2;

    if (IMIsRunningInPluginCapableClient())
    {
      [(IMBalloonPluginManager *)v39 _loadAllDataSources];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v39 selector:sel__transferUpdated_ name:@"__kIMFileTransferUpdatedNotification" object:0];

      v5 = MEMORY[0x1E695DFF8];
      v6 = [CPSharedResourcesDirectory() stringByAppendingString:@"/Library"];
      v7 = [v5 URLWithString:v6];

      v8 = [v7 URLByAppendingPathComponent:@"SMS" isDirectory:1];

      v9 = [v8 URLByAppendingPathComponent:@"PluginMetaDataCache" isDirectory:1];

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v11 = [standardUserDefaults valueForKey:@"PluginMetaDataCachePath"];
      LODWORD(v8) = v11 == 0;

      if (v8)
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        path = [v9 path];
        stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

        v38 = [v9 URLByAppendingPathComponent:stringGUID isDirectory:1];

        model = [(IMBalloonPluginManager *)v39 model];
        pluginMetaDataFolder = [model pluginMetaDataFolder];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v49 = 0;
        v19 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v49];
        v9 = v49;
        if (v9 && IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v53 = v9;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Error = %@ while trying to get contents of folder", buf, 0xCu);
          }
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        obj = v19;
        v21 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v21)
        {
          v22 = *v46;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v46 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v45 + 1) + 8 * i);
              if ([v24 hasSuffix:@"plist"])
              {
                lastPathComponent = [v24 lastPathComponent];
                v26 = [stringGUID stringByAppendingPathComponent:lastPathComponent];
                v27 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v26];

                v28 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v24];
                v44 = v9;
                [defaultManager moveItemAtPath:v28 toPath:v27 error:&v44];
                v29 = v44;

                v9 = v29;
              }
            }

            v21 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
          }

          while (v21);
        }

        if (v9 && IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v53 = v9;
            _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Error = %@ while trying to copy file to new folder", buf, 0xCu);
          }
        }

        standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults2 setObject:stringGUID forKey:@"PluginMetaDataCachePath"];
      }

      else
      {
        stringGUID = [MEMORY[0x1E695E000] standardUserDefaults];
        stringByDeletingLastPathComponent = [stringGUID valueForKey:@"PluginMetaDataCachePath"];
        v38 = [v9 URLByAppendingPathComponent:stringByDeletingLastPathComponent isDirectory:1];
      }

      path2 = [v38 path];
      model2 = [(IMBalloonPluginManager *)v39 model];
      [model2 setPluginMetaDataFolder:path2];

      v43 = v39;
      dword_1ED7674A8 = IMDispatchForNotify();
      dictionary = [MEMORY[0x1E695DF20] dictionary];
      model3 = [(IMBalloonPluginManager *)v43 model];
      [model3 setPluginIDToMetadataCache:dictionary];
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        *buf = 138412290;
        v53 = bundleIdentifier;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Un-allowlisted client tried to use IMBalloonPluginManager: %@", buf, 0xCu);
      }
    }

    model4 = [(IMBalloonPluginManager *)v39 model];
    [model4 setHasCompletedInitialization:1];
  }

  return v39;
}

- (void)_loadAllDataSources
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v3 startTimingForKey:@"loadAllDataSources"];
  signpostLogHandle = [(IMBalloonPluginManager *)self signpostLogHandle];
  signpostLogHandle2 = [(IMBalloonPluginManager *)self signpostLogHandle];
  v6 = os_signpost_id_make_with_pointer(signpostLogHandle2, "loadAllDataSources");

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLogHandle))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, signpostLogHandle, OS_SIGNPOST_INTERVAL_BEGIN, v6, "loadAllDataSources", " enableTelemetry=YES ", &v13, 2u);
  }

  if (IMGetDomainBoolForKey())
  {
    v7 = IMBalloonProviderBundleRootDirectory();
    [(IMBalloonPluginManager *)self _findPluginsInPathInternal:v7];

    [(IMBalloonPluginManager *)self _findPluginsInPathInternal:@"/AppleInternal/Library/Bundles/Messages/iMessageBalloons/"];
  }

  else
  {
    v8 = IMBalloonProviderBundlePaths();
    [(IMBalloonPluginManager *)self _findPluginsInPaths:v8];
  }

  [(IMBalloonPluginManager *)self _loadAppBundleDataSources];
  [(IMBalloonPluginManager *)self _loadAppExtensionDataSources];
  signpostLogHandle3 = [(IMBalloonPluginManager *)self signpostLogHandle];
  signpostLogHandle4 = [(IMBalloonPluginManager *)self signpostLogHandle];
  v11 = os_signpost_id_make_with_pointer(signpostLogHandle4, "loadAllDataSources");

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLogHandle3))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, signpostLogHandle3, OS_SIGNPOST_INTERVAL_END, v11, "loadAllDataSources", " enableTelemetry=YES ", &v13, 2u);
  }

  [v3 stopTimingForKey:@"loadAllDataSources"];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Finished loading all data sources: %@", &v13, 0xCu);
    }
  }
}

- (id)signpostLogHandle
{
  v2 = objc_opt_class();

  return [v2 signpostLogHandle];
}

+ (id)signpostLogHandle
{
  if (qword_1ED767650 != -1)
  {
    sub_1A8256FA4();
  }

  v3 = qword_1ED767648;

  return v3;
}

- (void)_loadAppBundleDataSources
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ((byte_1EB2EA240 & 1) == 0)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = IMAppBundleRootDirectory();
    v5 = [v3 fileURLWithPath:v4];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = *MEMORY[0x1E695DB78];
    v12[0] = *MEMORY[0x1E695DC30];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:4 errorHandler:0];

    allObjects = [v9 allObjects];
    v11 = [allObjects __imArrayByApplyingBlock:&unk_1F1B6E4A0];

    [(IMBalloonPluginManager *)self _updatePluginsForBundles:v11];
  }
}

- (void)_loadAppExtensionDataSources
{
  v3 = [(IMBalloonPluginManager *)self _loadAppExtensionDataSourcesForExtensionPoint:*MEMORY[0x1E69A7118]];
  model = [(IMBalloonPluginManager *)self model];
  [model setExtensionMatchingContext:v3];

  v6 = [(IMBalloonPluginManager *)self _loadAppExtensionDataSourcesForExtensionPoint:*MEMORY[0x1E69A7120]];
  model2 = [(IMBalloonPluginManager *)self model];
  [model2 setHighMemoryExtensionMatchingContext:v6];
}

- (void)_postDeferredInstalledAppsChangedNotificationIfNecessary
{
  model = [(IMBalloonPluginManager *)self model];
  hasDeferredInstalledAppsChangedNotification = [model hasDeferredInstalledAppsChangedNotification];

  if (hasDeferredInstalledAppsChangedNotification)
  {
    model2 = [(IMBalloonPluginManager *)self model];
    [model2 setHasDeferredInstalledAppsChangedNotification:0];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Performing deffered IMBalloonPluginManagerInstalledAppsChangedNotification.", v7, 2u);
      }
    }

    [(IMBalloonPluginManager *)self _postInstalledAppsChangedNotification];
  }
}

+ (id)_extensionBlocklist
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8257D94;
  block[3] = &unk_1E78102B8;
  block[4] = self;
  if (qword_1ED767660 != -1)
  {
    dispatch_once(&qword_1ED767660, block);
  }

  v2 = qword_1ED767658;

  return v2;
}

+ (BOOL)_shouldAddSafetyMonitorToBlockList
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isZelkovaEnabled])
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v4 = [mEMORY[0x1E69A8070]2 isSendMenuEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (BOOL)_shouldAddFindMyToBlockList
{
  if ([MEMORY[0x1E69A8020] deviceIsLockedDown])
  {
    return 1;
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isWaldoEnabled = [mEMORY[0x1E69A8070] isWaldoEnabled];

  return isWaldoEnabled ^ 1;
}

+ (BOOL)_shouldAddGenPlaygroundToBlockList
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isGenPlaygroundEnabled = [mEMORY[0x1E69A8070] isGenPlaygroundEnabled];

  return isGenPlaygroundEnabled ^ 1;
}

- (id)_appProxyBundleIdentifiersForAppPlugins
{
  v28 = *MEMORY[0x1E69E9840];
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  allIdentifiers = [pluginsMap allIdentifiers];

  v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = allIdentifiers;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        model2 = [(IMBalloonPluginManager *)self model];
        pluginsMap2 = [model2 pluginsMap];
        v14 = [pluginsMap2 pluginForIdentifier:v11];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          proxy = [v14 proxy];
          if (proxy)
          {
            v16 = proxy;
            proxy2 = [v14 proxy];
            bundleIdentifier = [proxy2 bundleIdentifier];

            if (bundleIdentifier)
            {
              proxy3 = [v14 proxy];
              bundleIdentifier2 = [proxy3 bundleIdentifier];
              [v22 addObject:bundleIdentifier2];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  return v22;
}

- (id)_proxyIdentifiersForPlugins
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v6 = [v3 initWithCapacity:{objc_msgSend(pluginsMap, "pluginCount")}];

  model2 = [(IMBalloonPluginManager *)self model];
  pluginsMap2 = [model2 pluginsMap];
  dictionaryMapCopy = [pluginsMap2 dictionaryMapCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A825E8E0;
  v12[3] = &unk_1E7810D30;
  v10 = v6;
  v13 = v10;
  [dictionaryMapCopy enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

+ (id)balloonProviderBundlePathURL
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = IMBalloonProviderBundleRootDirectory();
  v7[0] = v3;
  v7[1] = @"MSMessageExtensionBalloonPlugin.bundle";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v2 fileURLWithPathComponents:v4];

  return v5;
}

- (void)_moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions
{
  v25 = *MEMORY[0x1E69E9840];
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v5 = [pluginsMap pluginForIdentifier:*MEMORY[0x1E69A69F0]];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  messageToDatasourceMap = [v5 messageToDatasourceMap];
  allKeys = [messageToDatasourceMap allKeys];

  obj = allKeys;
  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        messageToDatasourceMap2 = [v5 messageToDatasourceMap];
        v14 = [messageToDatasourceMap2 objectForKey:v12];

        bundleID = [v14 bundleID];
        v16 = [(IMBalloonPluginManager *)self balloonPluginForBundleID:bundleID];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 existingDataSourceForMessageGUID:v12];

          if (!v17)
          {
            [v16 insertDataSource:v14 forGUID:v12];
            messageToDatasourceMap3 = [v5 messageToDatasourceMap];
            [messageToDatasourceMap3 removeObjectForKey:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_postInstalledAppsChangedNotification
{
  model = [(IMBalloonPluginManager *)self model];
  hasCompletedInitialization = [model hasCompletedInitialization];

  v5 = IMOSLoggingEnabled();
  if (hasCompletedInitialization)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Posting notification IMBalloonPluginManagerInstalledAppsChangedNotification", v9, 2u);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMBalloonPluginManagerInstalledAppsChangedNotification" object:0];
  }

  else
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Deffering IMBalloonPluginManagerInstalledAppsChangedNotification until after initialization is completed.", buf, 2u);
      }
    }

    defaultCenter = [(IMBalloonPluginManager *)self model];
    [defaultCenter setHasDeferredInstalledAppsChangedNotification:1];
  }
}

+ (id)sharedInstance
{
  if (qword_1ED767890 != -1)
  {
    sub_1A825F1E0();
  }

  [qword_1ED767668 _postDeferredInstalledAppsChangedNotificationIfNecessary];
  v2 = qword_1ED767668;

  return v2;
}

- (id)allPlugins
{
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  allPlugins = [pluginsMap allPlugins];

  return allPlugins;
}

- (void)insertPlugin:(id)plugin
{
  pluginCopy = plugin;
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  identifier = [pluginCopy identifier];
  [pluginsMap setPlugin:pluginCopy forIdentifier:identifier];
}

+ (void)setIsRunningPPT:(BOOL)t
{
  v28 = *MEMORY[0x1E69E9840];
  byte_1EB2EA248 = t;
  if (t)
  {
    v4 = +[IMBalloonPluginManager sharedInstance];
    balloonProviderBundlePathURL = [self balloonProviderBundlePathURL];
    v5 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:balloonProviderBundlePathURL];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    _extensionBlocklist = [self _extensionBlocklist];
    v7 = [_extensionBlocklist countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(_extensionBlocklist);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          model = [v4 model];
          pluginsMap = [model pluginsMap];
          v13 = [pluginsMap pluginForIdentifier:v10];
          v14 = v13 == 0;

          if (v14)
          {
            v20 = 0;
            v15 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v10 error:&v20];
            v16 = v20;
            if (!v15 && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v26 = v10;
                _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Failed to load previously blocklisted extension for identifier %@", buf, 0xCu);
              }
            }

            v18 = [v4 _insertPluginForExtension:v15 balloonProviderBundle:v5 precachedBalloonAppExtensions:0 timingCollection:0];
          }
        }

        v7 = [_extensionBlocklist countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }
  }
}

- (void)pluginChatItem:(id)item didRelinquishReusableController:(id)controller contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  itemCopy = item;
  type = [itemCopy type];
  v12 = [(IMBalloonPluginManager *)self balloonPluginForBundleID:type];

  [v12 moveController:controllerCopy toReusePoolFromChatItem:itemCopy contextIdentifier:identifierCopy];
}

- (void)pluginChatItem:(id)item didRelenquishNonResuableController:(id)controller contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  itemCopy = item;
  type = [itemCopy type];
  v12 = [(IMBalloonPluginManager *)self balloonPluginForBundleID:type];

  [v12 removeController:controllerCopy forChatItem:itemCopy contextIdentifier:identifierCopy];
}

- (void)pluginChatItemRequestedReleaseDataSource:(id)source
{
  sourceCopy = source;
  type = [sourceCopy type];
  v6 = [(IMBalloonPluginManager *)self balloonPluginForBundleID:type];

  [v6 removeDataSourceForChatItem:sourceCopy];
}

- (void)dealloc
{
  notify_cancel(dword_1ED7674A8);
  v3 = MEMORY[0x1E696ABD0];
  model = [(IMBalloonPluginManager *)self model];
  extensionMatchingContext = [model extensionMatchingContext];
  [v3 endMatchingExtensions:extensionMatchingContext];

  v6 = MEMORY[0x1E696ABD0];
  model2 = [(IMBalloonPluginManager *)self model];
  highMemoryExtensionMatchingContext = [model2 highMemoryExtensionMatchingContext];
  [v6 endMatchingExtensions:highMemoryExtensionMatchingContext];

  v9.receiver = self;
  v9.super_class = IMBalloonPluginManager;
  [(IMBalloonPluginManager *)&v9 dealloc];
}

- (id)_pluginPlistPath:(id)path
{
  pathCopy = path;
  model = [(IMBalloonPluginManager *)self model];
  pluginMetaDataFolder = [model pluginMetaDataFolder];
  lastPathComponent = [pathCopy lastPathComponent];

  v8 = [lastPathComponent stringByAppendingPathExtension:@"plist"];
  v9 = [pluginMetaDataFolder stringByAppendingPathComponent:v8];

  return v9;
}

- (id)_infoPlistPathForPluginCreatingFolderIfNeeded:(id)needed
{
  neededCopy = needed;
  model = [(IMBalloonPluginManager *)self model];
  pluginMetaDataFolder = [model pluginMetaDataFolder];
  IMSharedHelperEnsureDirectoryExistsAtPath();

  v7 = [(IMBalloonPluginManager *)self _pluginPlistPath:neededCopy];

  return v7;
}

- (id)_metadataForPluginIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    model = [(IMBalloonPluginManager *)self model];
    pluginIDToMetadataCache = [model pluginIDToMetadataCache];
    v7 = [pluginIDToMetadataCache objectForKey:identifierCopy];

    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = identifierCopy;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Reading plugin metadata from disk for ID %@", &v18, 0xCu);
        }
      }

      v9 = MEMORY[0x1E695DF20];
      v10 = [(IMBalloonPluginManager *)self _infoPlistPathForPluginCreatingFolderIfNeeded:identifierCopy];
      v7 = [v9 dictionaryWithContentsOfFile:v10];

      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF20]);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v18 = 138412290;
            v19 = identifierCopy;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "No metadataForPluginIdentifer %@", &v18, 0xCu);
          }
        }
      }
    }

    if ([v7 count])
    {
      model2 = [(IMBalloonPluginManager *)self model];
      pluginIDToMetadataCache2 = [model2 pluginIDToMetadataCache];
      v14 = [pluginIDToMetadataCache2 mutableCopy];

      [v14 setObject:v7 forKey:identifierCopy];
      model3 = [(IMBalloonPluginManager *)self model];
      v16 = [v14 copy];
      [model3 setPluginIDToMetadataCache:v16];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_storeMetadata:(id)metadata _forPlugin:(id)plugin
{
  v37 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  pluginCopy = plugin;
  v8 = pluginCopy;
  if (metadataCopy && pluginCopy)
  {
    v9 = [(IMBalloonPluginManager *)self _infoPlistPathForPluginCreatingFolderIfNeeded:pluginCopy];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager fileExistsAtPath:v9];

    if (v11)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = 0;
      [defaultManager2 removeItemAtPath:v9 error:&v28];
      v13 = v28;

      if (v13 && IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v32 = v9;
          v33 = 2112;
          v34 = v13;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "IMBalloonPluginManager could not delete file at path %@ error %@", buf, 0x16u);
        }
      }
    }

    if (([metadataCopy writeToFile:v9 atomically:1] & 1) == 0 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v32 = metadataCopy;
        v33 = 2112;
        v34 = v9;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "IMBalloonPluginManager could not write metadata %@ to file %@ idenitifier %@", buf, 0x20u);
      }
    }

    model = [(IMBalloonPluginManager *)self model];
    pluginIDToMetadataCache = [model pluginIDToMetadataCache];
    v18 = [pluginIDToMetadataCache mutableCopy];

    [v18 setObject:metadataCopy forKey:v8];
    model2 = [(IMBalloonPluginManager *)self model];
    v20 = [v18 copy];
    [model2 setPluginIDToMetadataCache:v20];

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = *MEMORY[0x1E696A3A0];
    v30 = *MEMORY[0x1E696A388];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v27 = 0;
    v23 = [defaultManager3 setAttributes:v22 ofItemAtPath:v9 error:&v27];
    v24 = v27;

    if ((v23 & 1) == 0 && IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v32 = v9;
        v33 = 2112;
        v34 = v24;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = metadataCopy;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "IMBalloonPluginManager invalid args to _storeMetadata %@ identifier %@", buf, 0x16u);
    }
  }
}

- (id)localParticipantIdentifierForAppID:(id)d conversationID:(id)iD
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (dCopy)
  {
    v8 = [(IMBalloonPluginManager *)self _metadataForPluginIdentifier:dCopy];
    Mutable = [v8 mutableCopy];

    v10 = [(__CFDictionary *)Mutable objectForKey:@"localID"];
    if ([v10 length])
    {
      uUIDString = v10;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = dCopy;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Generating local ID for app %@", &v18, 0xCu);
        }
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      [(__CFDictionary *)Mutable setObject:uUIDString forKey:@"localID"];
      [(IMBalloonPluginManager *)self _storeMetadata:Mutable _forPlugin:dCopy];
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 138412546;
        v19 = uUIDString;
        v20 = 2112;
        v21 = dCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "localID %@ for appID %@", &v18, 0x16u);
      }
    }

    v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uUIDString];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 136315138;
        v19 = "[IMBalloonPluginManager localParticipantIdentifierForAppID:conversationID:]";
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "IMBalloonPluginManager %s appID = nil", &v18, 0xCu);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (id)recipientIDForRecipient:(id)recipient appID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  dCopy = d;
  v8 = dCopy;
  if (recipientCopy && dCopy)
  {
    v9 = [(IMBalloonPluginManager *)self _metadataForPluginIdentifier:dCopy];
    Mutable = [v9 mutableCopy];

    v11 = [(__CFDictionary *)Mutable objectForKey:recipientCopy];
    if ([v11 length])
    {
      uUIDString = v11;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v8;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Generating recipientID ID for app %@", &v19, 0xCu);
        }
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      [(__CFDictionary *)Mutable setObject:uUIDString forKey:recipientCopy];
      [(IMBalloonPluginManager *)self _storeMetadata:Mutable _forPlugin:v8];
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = uUIDString;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "recipient %@ for appID %@", &v19, 0x16u);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uUIDString];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v19 = 136315650;
        v20 = "[IMBalloonPluginManager recipientIDForRecipient:appID:]";
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = recipientCopy;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "IMBalloonPluginManager %s appID: %@ recipient: %@ ", &v19, 0x20u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)conversationID:(id)d appID:(id)iD
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy && iDCopy)
  {
    v9 = [(IMBalloonPluginManager *)self _metadataForPluginIdentifier:iDCopy];
    Mutable = [v9 mutableCopy];

    v11 = [(__CFDictionary *)Mutable objectForKey:dCopy];
    if ([v11 length])
    {
      uUIDString = v11;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v8;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Generating randomConversationID ID for app %@", &v19, 0xCu);
        }
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      [(__CFDictionary *)Mutable setObject:uUIDString forKey:dCopy];
      [(IMBalloonPluginManager *)self _storeMetadata:Mutable _forPlugin:v8];
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = uUIDString;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "randomConversationID %@ for appID %@", &v19, 0x16u);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uUIDString];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v19 = 136315650;
        v20 = "[IMBalloonPluginManager conversationID:appID:]";
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = dCopy;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "IMBalloonPluginManager %s appID: %@ recipient: %@ ", &v19, 0x20u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)_identifiersForAppPlugins
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  allIdentifiers = [pluginsMap allIdentifiers];

  obj = allIdentifiers;
  v7 = [allIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        model2 = [(IMBalloonPluginManager *)self model];
        pluginsMap2 = [model2 pluginsMap];
        v14 = [pluginsMap2 pluginForIdentifier:v11];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v3 && v11)
        {
          CFArrayAppendValue(v3, v11);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)_pluginsForWhichWeHaveMetadata
{
  v33 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  model = [(IMBalloonPluginManager *)self model];
  pluginMetaDataFolder = [model pluginMetaDataFolder];
  v27 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:pluginMetaDataFolder error:&v27];
  v7 = v27;

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  model2 = [(IMBalloonPluginManager *)self model];
  pluginMetaDataFolder2 = [model2 pluginMetaDataFolder];
  v11 = [defaultManager2 fileExistsAtPath:pluginMetaDataFolder2];
  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        model3 = [(IMBalloonPluginManager *)self model];
        pluginMetaDataFolder3 = [model3 pluginMetaDataFolder];
        *buf = 138412546;
        v30 = pluginMetaDataFolder3;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "IMBalloonPluginManager could not read contents of dir %@ error %@", buf, 0x16u);
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v17);
          }

          stringByDeletingPathExtension = [*(*(&v23 + 1) + 8 * i) stringByDeletingPathExtension];
          [v16 addObject:stringByDeletingPathExtension];
        }

        v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  return v16;
}

- (void)_deleteMetaDataForPlugins:(id)plugins
{
  v32 = *MEMORY[0x1E69E9840];
  pluginsCopy = plugins;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = pluginsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "_deleteMetaDataForPlugins %@", buf, 0xCu);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = pluginsCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = *v24;
    *&v7 = 138412546;
    v20 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(IMBalloonPluginManager *)self _pluginPlistPath:v10, v20];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v22 = 0;
        [defaultManager removeItemAtPath:v11 error:&v22];
        v13 = v22;

        if (v13 && IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v28 = v11;
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Could not delete plugin meta data at path %@ %@", buf, 0x16u);
          }
        }

        model = [(IMBalloonPluginManager *)self model];
        pluginIDToMetadataCache = [model pluginIDToMetadataCache];
        v17 = [pluginIDToMetadataCache mutableCopy];

        [v17 removeObjectForKey:v10];
        model2 = [(IMBalloonPluginManager *)self model];
        v19 = [v17 copy];
        [model2 setPluginIDToMetadataCache:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }
}

- (void)_clearPluginMetadataForUninstalledApps
{
  _identifiersForAppPlugins = [(IMBalloonPluginManager *)self _identifiersForAppPlugins];
  _pluginsForWhichWeHaveMetadata = [(IMBalloonPluginManager *)self _pluginsForWhichWeHaveMetadata];
  v5 = [_pluginsForWhichWeHaveMetadata mutableCopy];

  [v5 removeObjectsInArray:_identifiersForAppPlugins];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "clearing in memory salt cache", v7, 2u);
    }
  }

  [(IMBalloonPluginManager *)self _deleteMetaDataForPlugins:v5];
}

- (id)_currentlyInstalledExtensionsExcludingExtensionPoint:(id)point
{
  pointCopy = point;
  v5 = [MEMORY[0x1E695DFA8] set];
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  dictionaryMapCopy = [pluginsMap dictionaryMapCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82E89E8;
  v14[3] = &unk_1E7811B90;
  v15 = pointCopy;
  v9 = v5;
  v16 = v9;
  v10 = pointCopy;
  [dictionaryMapCopy enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

- (void)loadExtensionWithIdentifierIfNeeded:(id)needed
{
  v22 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v7 = [pluginsMap pluginForIdentifier:neededCopy];

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = neededCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Plugin already loaded: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = [neededCopy componentsSeparatedByString:@":"];
    lastObject = [v9 lastObject];

    v11 = [(IMBalloonPluginManager *)self _extensionWithIdentifier:lastObject];
    extensionPointIdentifier = [v11 extensionPointIdentifier];
    v13 = [extensionPointIdentifier isEqualToString:*MEMORY[0x1E69A7118]];

    if (v13)
    {
      v17 = v11;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [(IMBalloonPluginManager *)self _updatePluginsForExtensions:v14 extensionPoint:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        extensionPointIdentifier2 = [v11 extensionPointIdentifier];
        *buf = 138412546;
        v19 = neededCopy;
        v20 = 2112;
        v21 = extensionPointIdentifier2;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "IMBalloonPluginManager asked to load an extension that is not an iMessage app. Identifier: %@ extensionPointIdentifier: %@", buf, 0x16u);
      }
    }
  }
}

- (id)_extensionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = 0;
  v4 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifierCopy error:&v8];
  v5 = v8;
  if (!v4 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = identifierCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "IMBalloonPluginManager failed to find extension with extension identifier: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (id)_loadAppExtensionDataSourcesForExtensionPoint:(id)point
{
  v21[1] = *MEMORY[0x1E69E9840];
  pointCopy = point;
  if (byte_1EB2EA240)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
    pointCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"beginMatchingExtensionsWithAttributes_%@", pointCopy];
    [v6 startTimingForKey:pointCopy];
    v20 = *MEMORY[0x1E696A2F8];
    v21[0] = pointCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E696ABD0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82E902C;
    v13[3] = &unk_1E7811BE0;
    v10 = v6;
    v14 = v10;
    v11 = pointCopy;
    v15 = v11;
    v16 = pointCopy;
    objc_copyWeak(&v18, &location);
    selfCopy = self;
    v5 = [v9 beginMatchingExtensionsWithAttributes:v8 completion:v13];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_setPluginsToRemoveAndCallSelectorWithDelay:(id)delay
{
  v10 = *MEMORY[0x1E69E9840];
  delayCopy = delay;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = delayCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setting plugins to remove with delay: %@", &v8, 0xCu);
    }
  }

  model = [(IMBalloonPluginManager *)self model];
  v7 = [delayCopy copy];
  [model setPluginsToRemoveAfterExtensionsUpdate:v7];

  [(IMBalloonPluginManager *)self performSelector:sel__removePluginsWithDelay withObject:0 afterDelay:1.0];
}

- (BOOL)_shouldSkipUpdatingPluginBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceIsLockedDown = [MEMORY[0x1E69A8020] deviceIsLockedDown];
  v5 = [identifierCopy isEqualToString:*MEMORY[0x1E69A68F8]];
  v6 = [identifierCopy isEqualToString:*MEMORY[0x1E69A6928]];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isStickersAppEnabled])
  {
  }

  else
  {
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v9 = ([mEMORY[0x1E69A8070]2 isClingEnabled] ^ 1) & v5;

    if (v9)
    {
      goto LABEL_12;
    }
  }

  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if (deviceIsLockedDown & 1 | (([mEMORY[0x1E69A8070]3 isWaldoEnabled] & 1) == 0))
  {
    v11 = [identifierCopy isEqualToString:*MEMORY[0x1E69A6938]];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070]4 isZelkovaEnabled])
  {
    mEMORY[0x1E69A8070]5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    if ([mEMORY[0x1E69A8070]5 isSendMenuEnabled])
    {

LABEL_14:
      mEMORY[0x1E69A8070]6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v15 = ([mEMORY[0x1E69A8070]6 isPollsEnabled] ^ 1) & v6;

      goto LABEL_15;
    }

    v16 = [identifierCopy isEqualToString:*MEMORY[0x1E69A6930]];

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = [identifierCopy isEqualToString:*MEMORY[0x1E69A6930]];

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  LOBYTE(v15) = 1;
LABEL_15:

  return v15;
}

- (void)_updatePluginsForBundles:(id)bundles
{
  bundlesCopy = bundles;
  [MEMORY[0x1E695DFD0] cancelPreviousPerformRequestsWithTarget:self selector:sel__removePluginsWithDelay object:0];
  _appProxyBundleIdentifiersForAppPlugins = [(IMBalloonPluginManager *)self _appProxyBundleIdentifiersForAppPlugins];
  _proxyIdentifiersForPlugins = [(IMBalloonPluginManager *)self _proxyIdentifiersForPlugins];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1A8259B50;
  v42 = sub_1A825AED4;
  v43 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(bundlesCopy, "count")}];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_1A8259B50;
  v36[4] = sub_1A825AED4;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_1A8259B50;
  v34[4] = sub_1A825AED4;
  v35 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8259B50;
  v30 = sub_1A825AED4;
  model = [(IMBalloonPluginManager *)self model];
  pluginsToRemoveAfterExtensionsUpdate = [model pluginsToRemoveAfterExtensionsUpdate];
  v31 = [pluginsToRemoveAfterExtensionsUpdate mutableCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82E9B70;
  v17[3] = &unk_1E7811C28;
  v17[4] = self;
  v20 = &v38;
  v21 = &v26;
  v9 = _appProxyBundleIdentifiersForAppPlugins;
  v18 = v9;
  v22 = v36;
  v23 = v34;
  v10 = _proxyIdentifiersForPlugins;
  v19 = v10;
  v24 = v33;
  v25 = v32;
  [bundlesCopy enumerateObjectsUsingBlock:v17];
  model2 = [(IMBalloonPluginManager *)self model];
  v12 = [v27[5] copy];
  [model2 setPluginsToRemoveAfterExtensionsUpdate:v12];

  [v9 minusSet:v39[5]];
  if ([v9 count])
  {
    [(IMBalloonPluginManager *)self _setPluginsToRemoveAndCallSelectorWithDelay:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Clearing extensions to remove after delay", v16, 2u);
      }
    }

    model3 = [(IMBalloonPluginManager *)self model];
    v15 = [MEMORY[0x1E695DFD8] set];
    [model3 setPluginsToRemoveAfterExtensionsUpdate:v15];
  }

  [(IMBalloonPluginManager *)self _moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
}

- (void)_updatePluginsForExtensions:(id)extensions extensionPoint:(id)point precachedBalloonAppExtensions:(id)appExtensions
{
  v78 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  pointCopy = point;
  appExtensionsCopy = appExtensions;
  v33 = extensionsCopy;
  v11 = [MEMORY[0x1E695DFA8] setWithArray:extensionsCopy];
  v12 = [(IMBalloonPluginManager *)self _currentlyInstalledExtensionsExcludingExtensionPoint:pointCopy];
  [v11 unionSet:v12];
  [MEMORY[0x1E695DFD0] cancelPreviousPerformRequestsWithTarget:self selector:sel__removePluginsWithDelay object:0];
  _appProxyBundleIdentifiersForAppPlugins = [(IMBalloonPluginManager *)self _appProxyBundleIdentifiersForAppPlugins];
  _proxyIdentifiersForPlugins = [(IMBalloonPluginManager *)self _proxyIdentifiersForPlugins];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_1A8259B50;
  v74 = sub_1A825AED4;
  v75 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_1A8259B50;
  v68 = sub_1A825AED4;
  v69 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_1A8259B50;
  v62[4] = sub_1A825AED4;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = sub_1A8259B50;
  v60[4] = sub_1A825AED4;
  v61 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1A8259B50;
  v50 = sub_1A825AED4;
  model = [(IMBalloonPluginManager *)self model];
  pluginsToRemoveAfterExtensionsUpdate = [model pluginsToRemoveAfterExtensionsUpdate];
  v51 = [pluginsToRemoveAfterExtensionsUpdate mutableCopy];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1A82EA5D4;
  v34[3] = &unk_1E7811C50;
  v39 = &v70;
  v40 = &v46;
  v17 = _appProxyBundleIdentifiersForAppPlugins;
  v41 = &v64;
  v42 = v62;
  v35 = v17;
  selfCopy = self;
  v43 = v60;
  v18 = appExtensionsCopy;
  v37 = v18;
  v19 = _proxyIdentifiersForPlugins;
  v38 = v19;
  v44 = &v56;
  v45 = &v52;
  [v11 enumerateObjectsUsingBlock:v34];
  model2 = [(IMBalloonPluginManager *)self model];
  v21 = [v47[5] copy];
  [model2 setPluginsToRemoveAfterExtensionsUpdate:v21];

  [v17 minusSet:v71[5]];
  if ([v17 count])
  {
    [(IMBalloonPluginManager *)self _setPluginsToRemoveAndCallSelectorWithDelay:v17];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Clearing extensions to remove after delay", buf, 2u);
      }
    }

    model3 = [(IMBalloonPluginManager *)self model];
    v24 = [MEMORY[0x1E695DFD8] set];
    [model3 setPluginsToRemoveAfterExtensionsUpdate:v24];
  }

  if (v65[5] && IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v65[5];
      *buf = 138412290;
      v77 = v26;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "app extension loading time: %@", buf, 0xCu);
    }
  }

  [(IMBalloonPluginManager *)self _moveExtensionDataSourcesFromMessagesExtensionPluginToAppExtensions];
  [(IMBalloonPluginManager *)self _postInstalledAppsChangedNotification];
  if ((byte_1EB2EA240 & 1) == 0 && [pointCopy isEqualToString:*MEMORY[0x1E69A7118]])
  {
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A76F0] withCount:v28];

    mEMORY[0x1E69A8168]2 = [MEMORY[0x1E69A8168] sharedInstance];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v57[3]];
    [mEMORY[0x1E69A8168]2 trackEvent:*MEMORY[0x1E69A76E8] withCount:v30];

    mEMORY[0x1E69A8168]3 = [MEMORY[0x1E69A8168] sharedInstance];
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v53[3]];
    [mEMORY[0x1E69A8168]3 trackEvent:*MEMORY[0x1E69A7738] withCount:v32];
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
}

- (id)_insertPluginForAppBundle:(id)bundle balloonProviderBundle:(id)providerBundle
{
  bundleCopy = bundle;
  providerBundleCopy = providerBundle;
  if (bundleCopy)
  {
    v8 = [[IMBalloonAppExtension alloc] initWithPluginBundle:providerBundleCopy appBundle:bundleCopy];
    identifier = [(IMBalloonPlugin *)v8 identifier];

    if (identifier)
    {
      model = [(IMBalloonPluginManager *)self model];
      pluginsMap = [model pluginsMap];
      identifier2 = [(IMBalloonPlugin *)v8 identifier];
      [pluginsMap setPlugin:v8 forIdentifier:identifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_allowExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v6 = [self _isServerBlocklistedBundleIdentifier:identifierCopy serverBag:v5];

  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [self _isExtensionBlocklisted:identifierCopy] ^ 1;
  }

  return v7;
}

+ (id)precacheBalloonAppExtensionsForExtensions:(id)extensions
{
  v25 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  balloonProviderBundlePathURL = [self balloonProviderBundlePathURL];
  v5 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:balloonProviderBundlePathURL];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = extensionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        identifier = [v10 identifier];
        if (identifier && [self _allowExtensionWithIdentifier:identifier])
        {
          v12 = [[IMBalloonAppExtension alloc] initWithPluginBundle:v5 extension:v10];
          [v17 setObject:v12 forKeyedSubscript:identifier];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v23 = identifier;
              _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Precached balloon app extension for %@", buf, 0xCu);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v23 = identifier;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Not precached balloon app extension for %@, identifier was blocked", buf, 0xCu);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  return v17;
}

- (id)_insertPluginForExtension:(id)extension balloonProviderBundle:(id)bundle precachedBalloonAppExtensions:(id)extensions timingCollection:(id)collection
{
  v31 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  bundleCopy = bundle;
  extensionsCopy = extensions;
  collectionCopy = collection;
  identifier = [extensionCopy identifier];
  if (!extensionCopy || ![objc_opt_class() _allowExtensionWithIdentifier:identifier])
  {
    v15 = 0;
    goto LABEL_20;
  }

  [collectionCopy startTimingForKey:@"createPlugin"];
  v15 = [extensionsCopy objectForKeyedSubscript:identifier];
  v16 = IMOSLoggingEnabled();
  if (v15)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = identifier;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Using precached plugin for %@", &v29, 0xCu);
      }
    }
  }

  else
  {
    if (v16)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = identifier;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "No precached plugin for %@, creating a new instance", &v29, 0xCu);
      }
    }

    v15 = [[IMBalloonAppExtension alloc] initWithPluginBundle:bundleCopy extension:extensionCopy];
  }

  identifier2 = [(IMBalloonPlugin *)v15 identifier];
  v20 = IMBalloonExtensionIDWithSuffix();
  v21 = [identifier2 isEqualToString:v20];

  v22 = _os_feature_enabled_impl();
  if (v21)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  identifier3 = [(IMBalloonPlugin *)v15 identifier];
  v24 = identifier3 == 0;

  if (!v24)
  {
LABEL_18:
    model = [(IMBalloonPluginManager *)self model];
    pluginsMap = [model pluginsMap];
    identifier4 = [(IMBalloonPlugin *)v15 identifier];
    [pluginsMap setPlugin:v15 forIdentifier:identifier4];
  }

LABEL_19:
  [collectionCopy stopTimingForKey:@"createPlugin"];
LABEL_20:

  return v15;
}

- (void)removePluginWithBundleID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [dCopy length];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = dCopy;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Explicitly removing plugin with bundleID: %@", &v14, 0xCu);
      }
    }

    model = [(IMBalloonPluginManager *)self model];
    pluginsMap = [model pluginsMap];
    v10 = [pluginsMap pluginForIdentifier:dCopy];

    if (v10)
    {
      model2 = [(IMBalloonPluginManager *)self model];
      pluginsMap2 = [model2 pluginsMap];
      [pluginsMap2 removePluginWithIdentifier:dCopy];

      [(IMBalloonPluginManager *)self _clearPluginMetadataForUninstalledApps];
      [(IMBalloonPluginManager *)self _postInstalledAppsChangedNotification];
    }
  }

  else if (v6)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Attempting to explicitly remove a plugin with a nil bundleID", &v14, 2u);
    }
  }
}

- (void)_removePluginsWithDelay
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      model = [(IMBalloonPluginManager *)self model];
      pluginsToRemoveAfterExtensionsUpdate = [model pluginsToRemoveAfterExtensionsUpdate];
      v13 = 138412290;
      v14 = pluginsToRemoveAfterExtensionsUpdate;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Removing plugins with identifiers after delay: %@", &v13, 0xCu);
    }
  }

  model2 = [(IMBalloonPluginManager *)self model];
  pluginsToRemoveAfterExtensionsUpdate2 = [model2 pluginsToRemoveAfterExtensionsUpdate];
  v8 = [pluginsToRemoveAfterExtensionsUpdate2 count] == 0;

  if (!v8)
  {
    model3 = [(IMBalloonPluginManager *)self model];
    pluginsToRemoveAfterExtensionsUpdate3 = [model3 pluginsToRemoveAfterExtensionsUpdate];
    [(IMBalloonPluginManager *)self _removePluginsForIdentifiers:pluginsToRemoveAfterExtensionsUpdate3];

    model4 = [(IMBalloonPluginManager *)self model];
    v12 = [MEMORY[0x1E695DFD8] set];
    [model4 setPluginsToRemoveAfterExtensionsUpdate:v12];

    [(IMBalloonPluginManager *)self _clearPluginMetadataForUninstalledApps];
    [(IMBalloonPluginManager *)self _postInstalledAppsChangedNotification];
  }
}

- (void)_removePluginsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _proxyIdentifiersForPlugins = [(IMBalloonPluginManager *)self _proxyIdentifiersForPlugins];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A8259B50;
  v18 = sub_1A825AED4;
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A82EB418;
  v10[3] = &unk_1E7811C78;
  v6 = _proxyIdentifiersForPlugins;
  v11 = v6;
  selfCopy = self;
  v13 = &v14;
  [identifiersCopy enumerateObjectsUsingBlock:v10];
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v9 = [v15[5] copy];
  [pluginsMap removePluginsWithIdentifiers:v9];

  _Block_object_dispose(&v14, 8);
}

- (void)setPluginEnabled:(BOOL)enabled identifier:(id)identifier
{
  enabledCopy = enabled;
  identifierCopy = identifier;
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v11 = [pluginsMap pluginForIdentifier:identifierCopy];

  v9 = [v11 app];
  [v9 setIsEnabled:enabledCopy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"IMBalloonPluginEnabledStateChangedNotification" object:v11];
}

+ (BOOL)_isExtensionBlocklisted:(id)blocklisted
{
  blocklistedCopy = blocklisted;
  if ([self isRunningPPT] & 1) != 0 || (IMGetDomainBoolForKey())
  {
    v5 = 0;
  }

  else
  {
    _extensionBlocklist = [self _extensionBlocklist];
    v5 = [_extensionBlocklist containsObject:blocklistedCopy];
  }

  return v5;
}

- (void)_findPluginsInPaths:(id)paths
{
  v40 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v29 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v29 startTimingForKey:@"loadPlugins"];
  selfCopy = self;
  signpostLogHandle = [(IMBalloonPluginManager *)self signpostLogHandle];
  signpostLogHandle2 = [(IMBalloonPluginManager *)selfCopy signpostLogHandle];
  v7 = os_signpost_id_make_with_pointer(signpostLogHandle2, "findPluginsInPaths");

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLogHandle))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, signpostLogHandle, OS_SIGNPOST_INTERVAL_BEGIN, v7, "findPluginsInPaths", " enableTelemetry=YES ", buf, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = pathsCopy;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if (byte_1EB2EA240 != 1 || [*(*(&v33 + 1) + 8 * i) hasSuffix:@"MSMessageExtensionBalloonPlugin.bundle"])
        {
          v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
          v13 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v12];
          bundleIdentifier = [v13 bundleIdentifier];
          if (bundleIdentifier && (-[IMBalloonPluginManager model](selfCopy, "model"), v15 = objc_claimAutoreleasedReturnValue(), [v15 pluginsMap], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "pluginForIdentifier:", bundleIdentifier), v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 == 0, v17, v16, v15, v18))
          {
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v38 = bundleIdentifier;
                _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Found plugin: %@", buf, 0xCu);
              }
            }

            v21 = [[IMBalloonPlugin alloc] initWithBundle:v13];
            if (v21)
            {
              [dictionary setObject:v21 forKey:bundleIdentifier];
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v38 = v13;
              _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to get bundle identifier for %@", buf, 0xCu);
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  if ([dictionary count])
  {
    model = [(IMBalloonPluginManager *)selfCopy model];
    pluginsMap = [model pluginsMap];
    v24 = [dictionary copy];
    [pluginsMap updateWithMap:v24];
  }

  signpostLogHandle3 = [(IMBalloonPluginManager *)selfCopy signpostLogHandle];
  signpostLogHandle4 = [(IMBalloonPluginManager *)selfCopy signpostLogHandle];
  v27 = os_signpost_id_make_with_pointer(signpostLogHandle4, "findPluginsInPaths");

  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLogHandle3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, signpostLogHandle3, OS_SIGNPOST_INTERVAL_END, v27, "findPluginsInPaths", " enableTelemetry=YES ", buf, 2u);
  }

  [v29 stopTimingForKey:@"loadPlugins"];
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v29;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Find Plugin time: %@", buf, 0xCu);
    }
  }
}

- (void)_findPluginsInPathInternal:(id)internal
{
  v34 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Loading all internal plugins", buf, 2u);
    }
  }

  v24 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v24 startTimingForKey:@"loadPlugins"];
  v22 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:internalCopy];
  v6 = [v22 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:7 errorHandler:&unk_1F1B6E4C0];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:*(*(&v27 + 1) + 8 * i)];
        bundleIdentifier = [v10 bundleIdentifier];
        if (bundleIdentifier && (-[IMBalloonPluginManager model](self, "model"), v12 = objc_claimAutoreleasedReturnValue(), [v12 pluginsMap], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "pluginForIdentifier:", bundleIdentifier), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v13, v12, v15))
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v32 = bundleIdentifier;
              _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Found plugin: %@", buf, 0xCu);
            }
          }

          v16 = [[IMBalloonPlugin alloc] initWithBundle:v10];
          if (v16)
          {
            [dictionary setObject:v16 forKey:bundleIdentifier];
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_23;
          }

          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v10;
            _os_log_impl(&dword_1A823F000, &v16->super, OS_LOG_TYPE_INFO, "Failed to get bundle identifier for %@", buf, 0xCu);
          }
        }

LABEL_23:
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  if ([dictionary count])
  {
    model = [(IMBalloonPluginManager *)self model];
    pluginsMap = [model pluginsMap];
    v20 = [dictionary copy];
    [pluginsMap updateWithMap:v20];
  }

  [v24 stopTimingForKey:@"loadPlugins"];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v24;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Find Plugin time: %@", buf, 0xCu);
    }
  }
}

- (Class)dataSourceClassForBundleID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = dCopy;
  if (!dCopy)
  {
    richLinksDataSourceClass2 = 0;
    goto LABEL_20;
  }

  v6 = [dCopy isEqualToString:*MEMORY[0x1E69A6A18]];
  if (v6)
  {
    model = [(IMBalloonPluginManager *)self model];
    richLinksDataSourceClass = [model richLinksDataSourceClass];

    if (richLinksDataSourceClass)
    {
      model2 = [(IMBalloonPluginManager *)self model];
      richLinksDataSourceClass2 = [model2 richLinksDataSourceClass];

      goto LABEL_20;
    }
  }

  model3 = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model3 pluginsMap];
  v13 = [pluginsMap pluginForIdentifier:v5];

  if (!v13)
  {
    v13 = [(IMBalloonPluginManager *)self _fallBackMessagesExtensionPluginForBundleID:v5];
    if (!v13)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = v5;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", &v21, 0xCu);
        }
      }

      v15 = 0;
      v13 = 0;
      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }
  }

  if ([objc_msgSend(v13 "dataSourceClass")])
  {
    dataSourceClass = [v13 dataSourceClass];
  }

  else
  {
    dataSourceClass = objc_opt_class();
  }

  v15 = dataSourceClass;
  if (v6)
  {
LABEL_12:
    model4 = [(IMBalloonPluginManager *)self model];
    v17 = [model4 richLinksDataSourceClass] == 0;

    if (v17)
    {
      model5 = [(IMBalloonPluginManager *)self model];
      [model5 setRichLinksDataSourceClass:v15];
    }
  }

LABEL_19:
  richLinksDataSourceClass2 = v15;

LABEL_20:

  return richLinksDataSourceClass2;
}

- (id)_fallBackMessagesExtensionPluginForBundleID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && (v6 = *MEMORY[0x1E69A69F0], ![dCopy rangeOfString:*MEMORY[0x1E69A69F0]]))
  {
    model = [(IMBalloonPluginManager *)self model];
    pluginsMap = [model pluginsMap];
    v7 = [pluginsMap pluginForIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dataSourceForPluginPayload:(id)payload
{
  v27 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  pluginBundleID = [payloadCopy pluginBundleID];

  if (!pluginBundleID)
  {
    *buf = xmmword_1E7811CB8;
    v25 = *off_1E7811CC8;
    v26 = 1845;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
    v9 = [v6 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"pluginPayload.pluginBundleID != nil", "-[IMBalloonPluginManager dataSourceForPluginPayload:]", v7, 1845, v8];

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DF284(v9, warning);
      }
    }
  }

  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  pluginBundleID2 = [payloadCopy pluginBundleID];
  v15 = [pluginsMap pluginForIdentifier:pluginBundleID2];

  if (!v15)
  {
    pluginBundleID3 = [payloadCopy pluginBundleID];
    v15 = [(IMBalloonPluginManager *)self _fallBackMessagesExtensionPluginForBundleID:pluginBundleID3];
  }

  pluginBundleID4 = [payloadCopy pluginBundleID];
  if (pluginBundleID4)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19 && IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      pluginBundleID5 = [payloadCopy pluginBundleID];
      *buf = 138412290;
      *&buf[4] = pluginBundleID5;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", buf, 0xCu);
    }
  }

  v22 = [v15 dataSourceForPluginPayload:payloadCopy];

  return v22;
}

- (id)existingDataSourceForMessageGUID:(id)d bundleID:(id)iD
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    model = [(IMBalloonPluginManager *)self model];
    pluginsMap = [model pluginsMap];
    v10 = [pluginsMap pluginForIdentifier:iDCopy];

    if (!v10)
    {
      v10 = [(IMBalloonPluginManager *)self _fallBackMessagesExtensionPluginForBundleID:iDCopy];
      if (!v10)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v14 = 138412290;
            v15 = iDCopy;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", &v14, 0xCu);
          }
        }

        v10 = 0;
      }
    }

    v12 = [v10 existingDataSourceForMessageGUID:dCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)insertDataSource:(id)source forGUID:(id)d
{
  dCopy = d;
  sourceCopy = source;
  bundleID = [sourceCopy bundleID];
  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v10 = [pluginsMap pluginForIdentifier:bundleID];

  [v10 insertDataSource:sourceCopy forGUID:dCopy];
}

- (id)balloonPluginForBundleID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  model = [(IMBalloonPluginManager *)self model];
  pluginsMap = [model pluginsMap];
  v7 = [pluginsMap pluginForIdentifier:dCopy];

  if (!v7)
  {
    v7 = [(IMBalloonPluginManager *)self _fallBackMessagesExtensionPluginForBundleID:dCopy];
    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = dCopy;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "IMBalloonPluginManager. Did not find any plugin for id %@", &v10, 0xCu);
        }
      }

      goto LABEL_8;
    }
  }

LABEL_9:

  return v7;
}

- (id)systemBundleIdentifierForPluginIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    model = [(IMBalloonPluginManager *)self model];
    pluginsMap = [model pluginsMap];
    v7 = [pluginsMap pluginForIdentifier:identifierCopy];

    appBundle = [v7 appBundle];
    bundleIdentifier = [appBundle bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (void)_transferUpdated:(id)updated
{
  object = [updated object];
  if ([object transferState] == 5)
  {
    messageGUID = [object messageGUID];
    v5 = [(IMBalloonPluginManager *)self existingDataSourceForMessageGUID:messageGUID bundleID:*MEMORY[0x1E69A6A18]];

    [v5 pluginPayloadDidChange:2];
  }
}

@end