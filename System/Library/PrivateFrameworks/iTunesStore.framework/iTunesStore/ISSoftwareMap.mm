@interface ISSoftwareMap
+ (BOOL)currentMapIsValid;
+ (BOOL)haveApplicationsOfType:(id)type;
+ (id)_newSoftwareUpdateDictionaryForApplication:(id)application;
+ (id)applicationForBundleIdentifier:(id)identifier applicationType:(id)type;
+ (id)applicationForPluginBundleIdentifier:(id)identifier extensionType:(id)type;
+ (id)containerPathForApp:(id)app homeDirectory:(id)directory systemMetadataDirectory:(id)metadataDirectory;
+ (id)copySoftwareUpdatesPropertyListWithApplications:(id)applications updatesContext:(id)context;
+ (id)currentMap;
+ (id)loadedMap;
+ (void)_startWatchingInstallationNotifications;
+ (void)enumerateApplicationsForProxies:(id)proxies usingBlock:(id)block;
+ (void)enumerateApplicationsOfType:(unint64_t)type usingBlock:(id)block;
+ (void)invalidateCurrentMap;
+ (void)removableSystemApplicationsWithCompletionBlock:(id)block;
+ (void)setCurrentMap:(id)map;
- (ISSoftwareMap)init;
- (NSArray)applications;
- (id)applicationForBundleIdentifier:(id)identifier;
- (id)applicationForItemIdentifier:(id)identifier;
- (id)copySoftwareUpdatesPropertyListWithUpdatesContext:(id)context;
- (void)_loadFromMobileInstallation;
- (void)dealloc;
@end

@implementation ISSoftwareMap

- (ISSoftwareMap)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISSoftwareMap.m", 55, a2);
  [objc_opt_class() startObservingNotifications];
  v5.receiver = self;
  v5.super_class = ISSoftwareMap;
  v3 = [(ISSoftwareMap *)&v5 init];
  if (v3)
  {
    v3->_applications = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(ISSoftwareMap *)v3 _loadFromMobileInstallation];
  }

  return v3;
}

- (void)dealloc
{
  self->_applications = 0;
  v3.receiver = self;
  v3.super_class = ISSoftwareMap;
  [(ISSoftwareMap *)&v3 dealloc];
}

+ (BOOL)haveApplicationsOfType:(id)type
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (SSIsDaemon())
  {
    if ([type isEqualToString:*MEMORY[0x277CC1E30]])
    {
      v4 = 1;
    }

    else if ([type isEqualToString:*MEMORY[0x277CC1E08]])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__ISSoftwareMap_haveApplicationsOfType___block_invoke;
    v19[3] = &unk_27A6711F8;
    v19[4] = &v20;
    [defaultWorkspace enumerateApplicationsOfType:v4 block:v19];
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      v9 = oSLogObject;
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
      {
        v10 = shouldLog;
      }

      else
      {
        v10 = shouldLog & 2;
      }

      if (v10)
      {
        v24 = 136446210;
        v25 = "+[ISSoftwareMap haveApplicationsOfType:]";
        if (v11)
        {
          v12 = v11;
          [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
          free(v12);
          SSFileLog();
        }
      }
    }

    v13 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetCFObject();
    v14 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__ISSoftwareMap_haveApplicationsOfType___block_invoke_21;
    v18[3] = &unk_27A671220;
    v18[4] = v14;
    v18[5] = &v20;
    __ISSoftwareMapXPC(v13, v18);
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v14);
    xpc_release(v13);
  }

  v16 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v16;
}

uint64_t __40__ISSoftwareMap_haveApplicationsOfType___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

intptr_t __40__ISSoftwareMap_haveApplicationsOfType___block_invoke_21(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x277C8C570](a2) == MEMORY[0x277D86468])
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "0");
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (id)currentMap
{
  pthread_mutex_lock(&__CurrentMapLock);
  v2 = __CurrentMap;
  pthread_mutex_unlock(&__CurrentMapLock);
  return v2;
}

+ (BOOL)currentMapIsValid
{
  pthread_mutex_lock(&__CurrentMapLock);
  v2 = __CurrentMapIsValid;
  pthread_mutex_unlock(&__CurrentMapLock);
  return v2;
}

+ (void)invalidateCurrentMap
{
  pthread_mutex_lock(&__CurrentMapLock);
  __CurrentMapIsValid = 0;
  pthread_mutex_unlock(&__CurrentMapLock);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"ISSoftwareMapInvalidatedNotification" object:0];
}

+ (id)loadedMap
{
  pthread_mutex_lock(&__CurrentMapLock);
  v2 = __CurrentMap;
  if (!__CurrentMap || (__CurrentMapIsValid & 1) == 0)
  {

    v2 = objc_alloc_init(ISSoftwareMap);
    __CurrentMap = v2;
    __CurrentMapIsValid = 1;
  }

  v3 = v2;
  pthread_mutex_unlock(&__CurrentMapLock);
  return v3;
}

+ (void)setCurrentMap:(id)map
{
  pthread_mutex_lock(&__CurrentMapLock);
  if (__CurrentMap != map)
  {

    map = map;
    __CurrentMap = map;
  }

  __CurrentMapIsValid = map != 0;

  pthread_mutex_unlock(&__CurrentMapLock);
}

+ (id)applicationForBundleIdentifier:(id)identifier applicationType:(id)type
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  [objc_opt_class() startObservingNotifications];
  currentMap = [self currentMap];
  if (currentMap && [self currentMapIsValid] && objc_msgSend(type, "isEqualToString:", *MEMORY[0x277CC1E40]))
  {
    v8 = [currentMap applicationForBundleIdentifier:identifier];
LABEL_8:
    v24[5] = v8;
    goto LABEL_22;
  }

  if (SSIsDaemon())
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifier];
    if ([objc_msgSend(v9 "bundleType")])
    {
      v8 = [[ISSoftwareApplication alloc] initWithLaunchServicesApplication:v9];
      goto LABEL_8;
    }
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      v14 = oSLogObject;
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
      {
        v15 = shouldLog;
      }

      else
      {
        v15 = shouldLog & 2;
      }

      if (v15)
      {
        v29 = 136446210;
        v30 = "+[ISSoftwareMap applicationForBundleIdentifier:applicationType:]";
        if (v16)
        {
          v17 = v16;
          [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
          free(v17);
          SSFileLog();
        }
      }
    }

    v18 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetCFObject();
    SSXPCDictionarySetCFObject();
    v19 = dispatch_semaphore_create(0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__ISSoftwareMap_applicationForBundleIdentifier_applicationType___block_invoke;
    v22[3] = &unk_27A671220;
    v22[4] = v19;
    v22[5] = &v23;
    __ISSoftwareMapXPC(v18, v22);
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v19);
    xpc_release(v18);
  }

LABEL_22:
  v20 = v24[5];
  _Block_object_dispose(&v23, 8);
  return v20;
}

intptr_t __64__ISSoftwareMap_applicationForBundleIdentifier_applicationType___block_invoke(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x277C8C570](a2) == MEMORY[0x277D86468])
  {
    *(*(*(a1 + 40) + 8) + 40) = [[ISSoftwareApplication alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "0")];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (id)applicationForPluginBundleIdentifier:(id)identifier extensionType:(id)type
{
  if (SSIsDaemon() && ((v6 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:identifier], v7 = v6, !type) || objc_msgSend(objc_msgSend(v6, "protocol"), "isEqualToString:", type)) && (objc_msgSend(v7, "containingBundle"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = objc_msgSend(objc_msgSend(v7, "containingBundle"), "bundleType"), objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277CC1E40])))
  {
    v9 = -[ISSoftwareApplication initWithLaunchServicesApplication:]([ISSoftwareApplication alloc], "initWithLaunchServicesApplication:", [v7 containingBundle]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)applicationForBundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  applications = self->_applications;
  result = [(NSArray *)applications countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(applications);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "bundleIdentifier")])
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)applications countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)applicationForItemIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  applications = self->_applications;
  result = [(NSArray *)applications countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(applications);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "itemIdentifier")])
        {
          return v9;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)applications countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (NSArray)applications
{
  v2 = self->_applications;

  return v2;
}

- (id)copySoftwareUpdatesPropertyListWithUpdatesContext:(id)context
{
  v5 = objc_opt_class();
  applications = self->_applications;

  return [v5 copySoftwareUpdatesPropertyListWithApplications:applications updatesContext:context];
}

+ (id)containerPathForApp:(id)app homeDirectory:(id)directory systemMetadataDirectory:(id)metadataDirectory
{
  bundleContainerURL = [app bundleContainerURL];
  if (bundleContainerURL && (v9 = bundleContainerURL, ![bundleContainerURL isEqual:directory]))
  {

    return [v9 path];
  }

  else
  {
    bundleIdentifier = [app bundleIdentifier];

    return [metadataDirectory stringByAppendingPathComponent:bundleIdentifier];
  }
}

+ (id)copySoftwareUpdatesPropertyListWithApplications:(id)applications updatesContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  if (![applications count])
  {
    return 0;
  }

  v7 = [applications mutableCopy];
  softwareTypes = [context softwareTypes];
  v9 = softwareTypes;
  if (softwareTypes)
  {
    v10 = [softwareTypes containsObject:*MEMORY[0x277D6A5E0]] ^ 1;
    v11 = [v9 containsObject:*MEMORY[0x277D6A5E8]] ^ 1;
    if (v10)
    {
LABEL_8:
      v13 = [v7 count];
      if (v13 - 1 >= 0)
      {
        v14 = v13;
        v15 = *MEMORY[0x277D6A0F0];
        while (1)
        {
          v16 = [objc_msgSend(v7 objectAtIndex:{--v14), "softwareType"}];
          if (![v16 isEqualToString:v15])
          {
            break;
          }

          if (v10)
          {
            goto LABEL_12;
          }

LABEL_13:
          if (v14 <= 0)
          {
            goto LABEL_20;
          }
        }

        if (v16)
        {
          if ([v9 containsObject:v16])
          {
            goto LABEL_13;
          }
        }

        else if ((v11 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_12:
        [v7 removeObjectAtIndex:v14];
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_8;
  }

LABEL_20:
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v7);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if (([v22 isPlaceholder] & 1) == 0)
        {
          v23 = [self _newSoftwareUpdateDictionaryForApplication:v22];
          if ([v23 count])
          {
            [v17 addObject:v23];
          }
        }
      }

      v19 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  if ([v17 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:v17 forKey:@"local-software"];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)enumerateApplicationsForProxies:(id)proxies usingBlock:(id)block
{
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = CPSharedResourcesDirectory();
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v23[0] = v5;
    v23[1] = @"Library";
    v23[2] = @"com.apple.itunesstored";
    v23[3] = @"iTunesMetadata";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    v5 = [MEMORY[0x277CCACA8] pathWithComponents:v7];
  }

  else
  {
    v6 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [proxies countByEnumeratingWithState:&v18 objects:v22 count:{16, proxies}];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obja);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = -[ISSoftwareApplication initWithLaunchServicesApplication:containerPath:]([ISSoftwareApplication alloc], "initWithLaunchServicesApplication:containerPath:", v12, [self containerPathForApp:v12 homeDirectory:v6 systemMetadataDirectory:v5]);
        if ([(ISSoftwareApplication *)v14 bundleIdentifier])
        {
          (*(block + 2))(block, v14);
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obja countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

+ (void)enumerateApplicationsOfType:(unint64_t)type usingBlock:(id)block
{
  v12[4] = *MEMORY[0x277D85DE8];
  v7 = CPSharedResourcesDirectory();
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
    v12[0] = v7;
    v12[1] = @"Library";
    v12[2] = @"com.apple.itunesstored";
    v12[3] = @"iTunesMetadata";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    v7 = [MEMORY[0x277CCACA8] pathWithComponents:v9];
  }

  else
  {
    v8 = 0;
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ISSoftwareMap_enumerateApplicationsOfType_usingBlock___block_invoke;
  v11[3] = &unk_27A671248;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v7;
  v11[7] = block;
  [defaultWorkspace enumerateApplicationsOfType:type block:v11];
}

void __56__ISSoftwareMap_enumerateApplicationsOfType_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = -[ISSoftwareApplication initWithLaunchServicesApplication:containerPath:]([ISSoftwareApplication alloc], "initWithLaunchServicesApplication:containerPath:", a2, [*(a1 + 32) containerPathForApp:a2 homeDirectory:*(a1 + 40) systemMetadataDirectory:*(a1 + 48)]);
    if ([(ISSoftwareApplication *)v5 bundleIdentifier])
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_autoreleasePoolPop(v4);
  }
}

+ (void)removableSystemApplicationsWithCompletionBlock:(id)block
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc_init(RemovableSoftwareLookupTable);
  if (SSIsDaemon())
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ISSoftwareMap_removableSystemApplicationsWithCompletionBlock___block_invoke;
    v7[3] = &unk_27A671270;
    v7[4] = v5;
    v7[5] = array;
    [defaultWorkspace enumerateApplicationsOfType:1 block:v7];
  }

  if (block)
  {
    (*(block + 2))(block, [array copy]);
  }
}

void __64__ISSoftwareMap_removableSystemApplicationsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_autoreleasePoolPush();
    if ([objc_msgSend(a2 "applicationType")] && objc_msgSend(a2, "isDeletable"))
    {
      v5 = [[ISSoftwareApplication alloc] initWithLaunchServicesApplication:a2];
      if (![(ISSoftwareApplication *)v5 itemIdentifier])
      {
        v6 = [*(a1 + 32) itemIdentifierForBundleIdentifer:{-[ISSoftwareApplication bundleIdentifier](v5, "bundleIdentifier")}];
        if (v6)
        {
          [(ISSoftwareApplication *)v5 setItemIdentifier:v6];
        }
      }

      if ([(ISSoftwareApplication *)v5 bundleIdentifier])
      {
        [*(a1 + 40) addObject:v5];
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)_newSoftwareUpdateDictionaryForApplication:(id)application
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemIdentifier = [application itemIdentifier];
  if (itemIdentifier)
  {
    [v4 setObject:itemIdentifier forKey:@"adam-id"];
  }

  versionIdentifier = [application versionIdentifier];
  if (versionIdentifier)
  {
    [v4 setObject:versionIdentifier forKey:@"installed-version-identifier"];
  }

  return v4;
}

+ (void)_startWatchingInstallationNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __SoftwareMappingChangedNotification, @"com.apple.itunesstored.invalidatedSoftwareMap", 0, CFNotificationSuspensionBehaviorCoalesce);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, self, __SoftwareMappingChangedNotification, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorCoalesce);

  CFNotificationCenterAddObserver(DistributedCenter, self, __SoftwareMappingChangedNotification, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_loadFromMobileInstallation
{
  v21 = *MEMORY[0x277D85DE8];
  if (SSIsDaemon())
  {
    v3 = objc_alloc_init(RemovableSoftwareLookupTable);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke;
    v18[3] = &unk_27A671298;
    v18[4] = v4;
    [v5 enumerateApplicationsOfType:0 usingBlock:v18];
    v6 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_2;
    v17[3] = &unk_27A6712C0;
    v17[4] = v3;
    v17[5] = v4;
    [v6 enumerateApplicationsOfType:1 usingBlock:v17];

    self->_applications = v4;
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v9 = shouldLog | 2;
      }

      else
      {
        v9 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 2;
      }

      if (v11)
      {
        v19 = 136446210;
        v20 = "[ISSoftwareMap _loadFromMobileInstallation]";
        if (v12)
        {
          v13 = v12;
          [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
          free(v13);
          SSFileLog();
        }
      }
    }

    v14 = SSXPCCreateMessageDictionary();
    v15 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_61;
    v16[3] = &unk_27A6712E8;
    v16[4] = self;
    v16[5] = v15;
    __ISSoftwareMapXPC(v14, v16);
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v15);
    xpc_release(v14);
  }
}

void *__44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_2(uint64_t a1, void *a2)
{
  if (![a2 itemIdentifier])
  {
    v4 = [*(a1 + 32) itemIdentifierForBundleIdentifer:{objc_msgSend(a2, "bundleIdentifier")}];
    if (v4)
    {
      [a2 setItemIdentifier:v4];
    }
  }

  v5 = [a2 removableStatus];
  result = [a2 itemIdentifier];
  if (result && (v5 & 4) == 0)
  {
    v7 = *(a1 + 40);

    return [v7 addObject:a2];
  }

  return result;
}

intptr_t __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_61(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x277C8C570](a2) == MEMORY[0x277D86468])
  {
    xpc_dictionary_get_value(a2, "0");
    objc_opt_class();
    *(*(a1 + 32) + 8) = SSXPCCreateNSArrayFromXPCEncodedArray();
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

@end