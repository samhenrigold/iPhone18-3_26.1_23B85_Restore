@interface FSModuleHost
+ (id)defaultHost;
+ (id)installedExtensionPropertiesSync;
+ (id)installedExtensionsSync;
- (FSModuleHost)init;
- (FSModuleHost)initWithProbeList:(BOOL)list;
- (NSDictionary)currentExtensionsByIdentifier;
- (id)configurationForInstance:(id)instance ofBundle:(id)bundle;
- (id)currentExtensions;
- (id)extensionPointRecords;
- (id)extensionTypes;
- (id)loadEnabledList;
- (id)loadProbeOrderList;
- (id)moduleForBundleID:(id)d;
- (unsigned)isValidModuleIdentifier:(id)identifier withError:(id *)error;
- (void)_updateProviderListForFilteredFSModuleInstances:(id)instances;
- (void)_updateProviderListForMatchingExtensionRecords:(id)records;
- (void)addBundleToEnableModules:(id)modules;
- (void)forceSynchronousProviderUpdate;
- (void)loadModulesAndMonitor;
- (void)loadModulesFromEKit;
- (void)loadModulesFromLSAndMonitor;
- (void)observerDidObserveDatabaseChange:(id)change;
- (void)removeBundleFromEnabledModules:(id)modules;
- (void)saveEnabledList;
- (void)saveProbeOrderList;
- (void)setExtensions:(id)extensions;
- (void)setExtensionsByIdentifierLocked:(id)locked;
- (void)setExtensionsLocked:(id)locked;
@end

@implementation FSModuleHost

- (FSModuleHost)init
{
  v9.receiver = self;
  v9.super_class = FSModuleHost;
  v2 = [(FSModuleHost *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FPDExtensionManager callback queue", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    moduleOrder = v2->_moduleOrder;
    v2->_moduleOrder = 0;

    enabledModules = v2->_enabledModules;
    v2->_enabledModules = 0;
  }

  return v2;
}

- (void)setExtensionsLocked:(id)locked
{
  v4 = MEMORY[0x277CBEB38];
  lockedCopy = locked;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(lockedCopy, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__FSModuleHost_setExtensionsLocked___block_invoke;
  v12[3] = &unk_278FED338;
  v7 = v6;
  v13 = v7;
  [lockedCopy enumerateObjectsUsingBlock:v12];
  v8 = [lockedCopy copy];

  modules = self->_modules;
  self->_modules = v8;

  modulesByIdentifier = self->_modulesByIdentifier;
  self->_modulesByIdentifier = v7;
  v11 = v7;

  [(NSCondition *)self->_queryLock signal];
}

void __36__FSModuleHost_setExtensionsLocked___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [v3 bundleIdentifier];

    v3 = v7;
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v7 bundleIdentifier];
      [v5 setObject:v7 forKey:v6];

      v3 = v7;
    }
  }
}

+ (id)installedExtensionPropertiesSync
{
  v2 = +[FSModuleHost installedExtensionsSync];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke;
    v9[3] = &unk_278FED360;
    v5 = v4;
    v10 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v6 = v10;
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

void __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 attributes];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 objectForKeyedSubscript:@"FSShortName"];
  v8 = [v6 stringWithFormat:@"%@_fskit", v7];

  v9 = [v4 objectForKeyedSubscript:@"FSSupportsBlockResources"];
  v10 = v9;
  if (v8)
  {
    v11 = v5 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && [v9 BOOLValue])
  {
    [v5 setValue:v8 forKey:*MEMORY[0x277CBED50]];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setValue:v12 forKey:@"FSIsFSModule"];

    [v5 setValue:&unk_285DF9C88 forKey:@"FSImplementation"];
    v13 = [v4 objectForKeyedSubscript:@"FSMediaTypes"];
    v14 = [v4 objectForKeyedSubscript:@"FSPersonalities"];
    v15 = v14;
    if (v13 && v14)
    {
      [v5 setValue:v13 forKey:@"FSMediaTypes"];
      [v5 setValue:v15 forKey:@"FSPersonalities"];
      v16 = fskit_std_log([*(a1 + 32) addObject:v5]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEFAULT, "Found FSModule: %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = fskit_std_log(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke_cold_1();
      }
    }
  }
}

- (FSModuleHost)initWithProbeList:(BOOL)list
{
  listCopy = list;
  v4 = [(FSModuleHost *)self init];
  v5 = v4;
  if (v4 && listCopy)
  {
    loadProbeOrderList = [(FSModuleHost *)v4 loadProbeOrderList];
    moduleOrder = v5->_moduleOrder;
    v5->_moduleOrder = loadProbeOrderList;

    loadEnabledList = [(FSModuleHost *)v5 loadEnabledList];
    enabledModules = v5->_enabledModules;
    v5->_enabledModules = loadEnabledList;
  }

  return v5;
}

+ (id)defaultHost
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FSModuleHost_Project__defaultHost__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultHost_onceToken != -1)
  {
    dispatch_once(&defaultHost_onceToken, block);
  }

  v2 = defaultHost_defaultHost;

  return v2;
}

uint64_t __36__FSModuleHost_Project__defaultHost__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultHost_defaultHost;
  defaultHost_defaultHost = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)installedExtensionsSync
{
  defaultHost = [self defaultHost];
  if (_os_feature_enabled_impl())
  {
    [defaultHost forceSynchronousProviderUpdate];
  }

  else
  {
    [defaultHost loadModulesFromEKit];
  }

  modulesByIdentifier = [defaultHost modulesByIdentifier];

  return modulesByIdentifier;
}

- (void)loadModulesFromEKit
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CC5DF8] extensionPointIdentifierQuery:@"com.apple.fskit.fsmodule"];
  if (v3)
  {
    v4 = [MEMORY[0x277CC5E00] executeQuery:v3];
    v5 = fskit_std_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_24A929000, v5, OS_LOG_TYPE_DEFAULT, "Found Extensions %@", &v7, 0xCu);
    }

    v6 = [v4 fs_map:&__block_literal_global_8];
    [(FSModuleHost *)self setExtensions:v6];
  }

  else
  {
    v4 = fskit_std_log(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadModulesFromEKit];
    }
  }
}

- (void)loadModulesAndMonitor
{
  v3 = fskit_std_log(self);
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v6 = fskit_std_log(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24A929000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "InitialEnumeration", "Initial enumeration of file system modules", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    [(FSModuleHost *)self loadModulesFromLSAndMonitor];
  }

  else
  {
    [(FSModuleHost *)self loadModulesFromEKit];
  }

  callbackQueue = self->_callbackQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__FSModuleHost_Project__loadModulesAndMonitor__block_invoke;
  v9[3] = &unk_278FED1C8;
  v9[4] = self;
  v9[5] = v4;
  dispatch_async(callbackQueue, v9);
}

void __46__FSModuleHost_Project__loadModulesAndMonitor__block_invoke(uint64_t a1)
{
  v2 = fskit_std_log([*(a1 + 32) afterFirstDiscovery]);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_24A929000, v3, OS_SIGNPOST_INTERVAL_END, v4, "InitialEnumeration", &unk_24A972C93, v5, 2u);
  }
}

- (void)observerDidObserveDatabaseChange:(id)change
{
  v4 = fskit_std_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A929000, v4, OS_LOG_TYPE_DEFAULT, "Got LS database change", buf, 2u);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__FSModuleHost_Project__observerDidObserveDatabaseChange___block_invoke;
  block[3] = &unk_278FED278;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)loadModulesFromLSAndMonitor
{
  v3 = fskit_std_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A929000, v3, OS_LOG_TYPE_DEFAULT, "Loading modules from LS", v8, 2u);
  }

  if (!self->_observer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CC1ED0]);
    observer = self->_observer;
    self->_observer = v4;

    [(LSObserver *)self->_observer setDelegate:self];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(LSObserver *)self->_observer setName:v7];

    [(LSObserver *)self->_observer startObserving];
    [(FSModuleHost *)self forceSynchronousProviderUpdate];
  }
}

- (id)extensionTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = @"com.apple.fskit.fsmodule";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v3 = fskit_std_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_24A929000, v3, OS_LOG_TYPE_DEFAULT, "Returning extension types %@", &v5, 0xCu);
  }

  return v2;
}

- (id)extensionPointRecords
{
  v7 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__FSModuleHost_Project__extensionPointRecords__block_invoke;
  block[3] = &unk_278FED278;
  block[4] = self;
  if (extensionPointRecords_onceToken != -1)
  {
    dispatch_once(&extensionPointRecords_onceToken, block);
  }

  v2 = fskit_std_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = extensionPointRecords_ret;
    _os_log_impl(&dword_24A929000, v2, OS_LOG_TYPE_DEFAULT, "returning ep records %@", buf, 0xCu);
  }

  return extensionPointRecords_ret;
}

void __46__FSModuleHost_Project__extensionPointRecords__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(a1 + 32) extensionTypes];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = objc_alloc(MEMORY[0x277CC1EC8]);
        v19 = v9;
        v12 = [v11 initWithIdentifier:v10 platform:2 error:&v19];
        v6 = v19;

        v14 = fskit_std_log(v13);
        v15 = v14;
        if (v12)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v12 debugDescription];
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEFAULT, "Adding LS record %@", buf, 0xCu);
          }

          [v2 addObject:v12];
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v25 = v10;
            v26 = 1024;
            v27 = 2;
            v28 = 2112;
            v29 = v6;
            _os_log_error_impl(&dword_24A929000, v15, OS_LOG_TYPE_ERROR, "Extension record %@ for platform %d missing: %@", buf, 0x1Cu);
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v17 = [v2 copy];
  v18 = extensionPointRecords_ret;
  extensionPointRecords_ret = v17;
}

- (void)forceSynchronousProviderUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  extensionPointRecords = [(FSModuleHost *)selfCopy extensionPointRecords];
  v5 = [extensionPointRecords countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(extensionPointRecords);
        }

        v8 = [MEMORY[0x277CC1E50] enumeratorWithExtensionPointRecord:*(*(&v13 + 1) + 8 * v7) options:0];
        allObjects = [v8 allObjects];
        [v3 addObjectsFromArray:allObjects];

        ++v7;
      }

      while (v5 != v7);
      v5 = [extensionPointRecords countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v3 fs_map:&__block_literal_global_151];
  moduleUUIDs = selfCopy->_moduleUUIDs;
  v12 = [MEMORY[0x277CBEB98] setWithArray:v10];
  LOBYTE(moduleUUIDs) = [(NSSet *)moduleUUIDs isEqualToSet:v12];

  if ((moduleUUIDs & 1) == 0)
  {
    [(FSModuleHost *)selfCopy _updateProviderListForMatchingExtensionRecords:v3];
  }

  objc_sync_exit(selfCopy);
}

- (unsigned)isValidModuleIdentifier:(id)identifier withError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/:"];
  v7 = [identifierCopy rangeOfCharacterFromSet:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = fskit_std_log(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = @"/:";
      _os_log_impl(&dword_24A929000, v11, OS_LOG_TYPE_DEFAULT, "Provider identifier '%@' may not contain any of the characters '%@'", buf, 0x16u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] fskit_errorWithPOSIXCode:22 description:{@"Provider identifier '%@' may not contain any of the characters '%@'", identifierCopy, @"/:"}];
      goto LABEL_12;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_15;
  }

  v9 = [identifierCopy isEqualToString:@"."];
  if ((v9 & 1) == 0)
  {
    v9 = [identifierCopy isEqualToString:@".."];
    if (!v9)
    {
      v12 = 1;
      goto LABEL_15;
    }
  }

  v10 = fskit_std_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = identifierCopy;
  }

  if (!error)
  {
    goto LABEL_13;
  }

LABEL_12:
  *error = v12 = 0;
LABEL_15:

  return v12;
}

- (void)_updateProviderListForMatchingExtensionRecords:(id)records
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__FSModuleHost_Project___updateProviderListForMatchingExtensionRecords___block_invoke;
  v5[3] = &unk_278FED3C8;
  v5[4] = self;
  v4 = [records fs_map:v5];
  [(FSModuleHost *)self _updateProviderListForFilteredFSModuleInstances:v4];
}

FSModuleInstance *__72__FSModuleHost_Project___updateProviderListForMatchingExtensionRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = [*(*(a1 + 32) + 40) containsObject:v4];
  if ([*(a1 + 32) isValidModuleIdentifier:v4 withError:0])
  {
    v6 = [[FSModuleInstance alloc] initWithExtensionRecord:v3 enabled:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateProviderListForFilteredFSModuleInstances:(id)instances
{
  v98 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_opt_new();
  allValues = [(NSDictionary *)self->_modulesByIdentifier allValues];
  v73 = [allValues mutableCopy];

  v9 = [instancesCopy mutableCopy];
  v10 = MEMORY[0x277CBEB98];
  v11 = [v9 fs_map:&__block_literal_global_173];
  v12 = [v10 setWithArray:v11];
  moduleUUIDs = self->_moduleUUIDs;
  selfCopy = self;
  self->_moduleUUIDs = v12;

  v71 = [instancesCopy fs_map:&__block_literal_global_175];
  v14 = fskit_std_log(v71);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v97 = v71;
    _os_log_impl(&dword_24A929000, v14, OS_LOG_TYPE_DEFAULT, "New module list %@", buf, 0xCu);
  }

  v74 = v7;

  v16 = fskit_std_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    modulesByIdentifier = self->_modulesByIdentifier;
    *buf = 138412290;
    v97 = modulesByIdentifier;
    _os_log_impl(&dword_24A929000, v16, OS_LOG_TYPE_DEFAULT, "Old modules %@", buf, 0xCu);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v9;
  v18 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v90;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v90 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v89 + 1) + 8 * i);
        bundleIdentifier = [(NSDictionary *)v22 bundleIdentifier];
        if (bundleIdentifier)
        {
          v24 = [(NSDictionary *)selfCopy->_modulesByIdentifier objectForKeyedSubscript:bundleIdentifier];
          v25 = v24;
          if (v24 && [v24 isEqual:v22])
          {
            [v6 setObject:v25 forKeyedSubscript:bundleIdentifier];
            [v73 removeObject:v25];
          }

          else
          {
            [v6 setObject:v22 forKeyedSubscript:bundleIdentifier];
            [v74 addObject:bundleIdentifier];
          }
        }

        else
        {
          v25 = fskit_std_log(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v97 = v22;
            _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_DEFAULT, "%@: module has no bundle identifier", buf, 0xCu);
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v19);
  }

  v26 = selfCopy;
  [(FSModuleHost *)selfCopy setExtensionsByIdentifierLocked:v6];
  v27 = &off_24A970000;
  v28 = 0x277CBE000uLL;
  if (selfCopy->_moduleOrder)
  {
    v29 = v74;
    if ([v74 count] || objc_msgSend(v73, "count"))
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:selfCopy->_moduleOrder];
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_179;
      v87[3] = &unk_278FED338;
      v31 = v30;
      v88 = v31;
      [v73 enumerateObjectsUsingBlock:v87];
      v32 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v74];
      v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:selfCopy->_moduleOrder];
      [v32 minusSet:v33];

      v34 = [v32 count];
      v69 = v34 != 0;
      if (v34)
      {
        v65 = v5;
        v67 = instancesCopy;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v72 = v32;
        v35 = [v72 countByEnumeratingWithState:&v83 objects:v94 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v84;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              v39 = v32;
              if (*v84 != v37)
              {
                objc_enumerationMutation(v72);
              }

              v40 = *(*(&v83 + 1) + 8 * j);
              v41 = [v6 objectForKeyedSubscript:v40];
              identity = [v41 identity];
              isSystem = [identity isSystem];

              if (isSystem)
              {
                [v31 addObject:v40];
              }

              else
              {
                [v31 insertObject:v40 atIndex:0];
              }

              v32 = v39;
            }

            v36 = [v72 countByEnumeratingWithState:&v83 objects:v94 count:16];
          }

          while (v36);
        }

        v5 = v65;
        instancesCopy = v67;
        v26 = selfCopy;
        v28 = 0x277CBE000;
      }

      v44 = [v31 copy];
      moduleOrder = v26->_moduleOrder;
      v26->_moduleOrder = v44;

      v29 = v74;
      v46 = v69;
      v27 = &off_24A970000;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v29 = v74;
  }

  if (v26->_enabledModules && ([v29 count] || objc_msgSend(v73, "count")))
  {
    v70 = v46;
    v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v26->_enabledModules];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = *(v27 + 479);
    v81[2] = __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_2_181;
    v81[3] = &unk_278FED338;
    v48 = v47;
    v82 = v48;
    [v73 enumerateObjectsUsingBlock:v81];
    v49 = [objc_alloc(*(v28 + 2904)) initWithArray:v29];
    v50 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v26->_enabledModules];
    [v49 minusSet:v50];

    v51 = [v49 count];
    v52 = v51 != 0;
    if (v51)
    {
      v66 = v5;
      v68 = instancesCopy;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v64 = v49;
      v53 = v49;
      v54 = [v53 countByEnumeratingWithState:&v77 objects:v93 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v78;
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (*v78 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v77 + 1) + 8 * k);
            v59 = [v6 objectForKeyedSubscript:v58];
            identity2 = [v59 identity];
            isEnabled = [identity2 isEnabled];

            if (isEnabled)
            {
              [v48 addObject:v58];
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v77 objects:v93 count:16];
        }

        while (v55);
      }

      v5 = v66;
      instancesCopy = v68;
      v26 = selfCopy;
      v52 = 1;
      v49 = v64;
    }

    v62 = [v48 copy];
    enabledModules = v26->_enabledModules;
    v26->_enabledModules = v62;

    v29 = v74;
    v46 = v70;
  }

  else
  {
    v52 = 0;
  }

  if (v26->_modulesUnloaded && [v73 count])
  {
    (*(v26->_modulesUnloaded + 2))();
  }

  if (v26->_modulesLoaded && (([v29 count] == 0) & ~v46) == 0)
  {
    (*(v26->_modulesLoaded + 2))();
  }

  if (v46)
  {
    [(FSModuleHost *)v26 saveProbeOrderList];
  }

  if (v52)
  {
    [(FSModuleHost *)v26 saveEnabledList];
  }

  objc_autoreleasePoolPop(v5);
}

id __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v3 UUID];
  v6 = [v2 stringWithFormat:@"Mod %p ID '%@' UUID %@", v3, v4, v5];

  return v6;
}

void __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_179(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 removeObject:v3];
}

void __73__FSModuleHost_Project___updateProviderListForFilteredFSModuleInstances___block_invoke_2_181(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 removeObject:v3];
}

- (id)loadProbeOrderList
{
  v2 = +[FSSettings defaultSettings];
  probeOrderArray = [v2 probeOrderArray];

  if (probeOrderArray)
  {
    v23 = 0;
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:probeOrderArray error:&v23];
    v6 = v23;
    v7 = v6;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = fskit_std_log(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v8 loadProbeOrderList:v9];
    }

    v7 = 0;
  }

  v16 = fskit_std_log(v6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleHost(Project) loadProbeOrderList];
  }

  defaultProbeOrderList = [objc_opt_class() defaultProbeOrderList];
  v5 = defaultProbeOrderList;
  if (!v7)
  {
    v21 = fskit_std_log(defaultProbeOrderList);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadProbeOrderList];
    }

    v7 = 0;
    goto LABEL_19;
  }

  domain = [v7 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_17:
    v21 = fskit_std_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadProbeOrderList];
    }

LABEL_19:

    goto LABEL_20;
  }

  code = [v7 code];

  if (code != 260)
  {
    goto LABEL_17;
  }

LABEL_20:

  return v5;
}

- (void)saveProbeOrderList
{
  v3 = +[FSSettings defaultSettings];
  probeOrderArray = [v3 probeOrderArray];

  if (!probeOrderArray)
  {
    v8 = fskit_std_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v8 saveProbeOrderList:v10];
    }

    goto LABEL_8;
  }

  moduleOrder = self->_moduleOrder;
  v17 = 0;
  [(NSArray *)moduleOrder writeToURL:probeOrderArray error:&v17];
  v7 = v17;
  if (v7)
  {
    v8 = v7;
    v9 = fskit_std_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) saveProbeOrderList];
    }

LABEL_8:
  }
}

- (id)loadEnabledList
{
  v2 = +[FSSettings defaultSettings];
  enabledModulesArray = [v2 enabledModulesArray];

  if (enabledModulesArray)
  {
    v23 = 0;
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithContentsOfURL:enabledModulesArray error:&v23];
    v6 = v23;
    v7 = v6;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = fskit_std_log(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v8 loadEnabledList:v9];
    }

    v7 = 0;
  }

  v16 = fskit_std_log(v6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleHost(Project) loadEnabledList];
  }

  defaultProbeOrderList = [objc_opt_class() defaultProbeOrderList];
  v5 = defaultProbeOrderList;
  if (!v7)
  {
    v21 = fskit_std_log(defaultProbeOrderList);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadEnabledList];
    }

    v7 = 0;
    goto LABEL_19;
  }

  domain = [v7 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

LABEL_17:
    v21 = fskit_std_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) loadEnabledList];
    }

LABEL_19:

    goto LABEL_20;
  }

  code = [v7 code];

  if (code != 260)
  {
    goto LABEL_17;
  }

LABEL_20:

  return v5;
}

- (void)saveEnabledList
{
  v3 = +[FSSettings defaultSettings];
  enabledModulesArray = [v3 enabledModulesArray];

  if (!enabledModulesArray)
  {
    v8 = fskit_std_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v8 saveEnabledList:v10];
    }

    goto LABEL_8;
  }

  enabledModules = self->_enabledModules;
  v17 = 0;
  [(NSArray *)enabledModules writeToURL:enabledModulesArray error:&v17];
  v7 = v17;
  if (v7)
  {
    v8 = v7;
    v9 = fskit_std_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FSModuleHost(Project) saveEnabledList];
    }

LABEL_8:
  }
}

- (void)setExtensions:(id)extensions
{
  queryLock = self->_queryLock;
  extensionsCopy = extensions;
  [(NSCondition *)queryLock lock];
  [(FSModuleHost *)self setExtensionsLocked:extensionsCopy];

  v6 = self->_queryLock;

  [(NSCondition *)v6 unlock];
}

- (void)setExtensionsByIdentifierLocked:(id)locked
{
  v4 = [locked copy];
  modulesByIdentifier = self->_modulesByIdentifier;
  self->_modulesByIdentifier = v4;

  allValues = [(NSDictionary *)self->_modulesByIdentifier allValues];
  modules = self->_modules;
  self->_modules = allValues;

  MEMORY[0x2821F96F8](allValues, modules);
}

- (id)configurationForInstance:(id)instance ofBundle:(id)bundle
{
  instanceCopy = instance;
  v7 = [(FSModuleHost *)self moduleForBundleID:bundle];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CC5DD8]);
    record = [v7 record];
    v10 = [v8 initWithApplicationExtensionRecord:record];

    v11 = [objc_alloc(MEMORY[0x277CC5DF0]) initWithExtensionIdentity:v10 instanceIdentifier:instanceCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)currentExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  [(NSCondition *)self->_queryLock lock];
  modules = self->_modules;
  v5 = modules;
  if (!modules)
  {
    do
    {
      v6 = [(NSCondition *)self->_queryLock waitUntilDate:v3];
      modules = self->_modules;
    }

    while (!modules && v6);
    if (modules)
    {
      v5 = self->_modules;
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }
  }

  queryLock = self->_queryLock;
  v8 = modules;
  [(NSCondition *)queryLock unlock];
  v9 = v5;

  v11 = fskit_std_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_24A929000, v11, OS_LOG_TYPE_DEFAULT, "Returning module array %@", &v13, 0xCu);
  }

  return v9;
}

- (id)moduleForBundleID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  [(NSCondition *)self->_queryLock lock];
  if (!self->_modules)
  {
    do
    {
      v6 = [(NSCondition *)self->_queryLock waitUntilDate:v5];
    }

    while (!self->_modules && v6);
  }

  modulesByIdentifier = self->_modulesByIdentifier;
  if (modulesByIdentifier)
  {
    v8 = [(NSDictionary *)modulesByIdentifier objectForKeyedSubscript:dCopy];
  }

  else
  {
    v8 = 0;
  }

  [(NSCondition *)self->_queryLock unlock];

  return v8;
}

- (NSDictionary)currentExtensionsByIdentifier
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
  [(NSCondition *)self->_queryLock lock];
  if (!self->_modules)
  {
    do
    {
      v4 = [(NSCondition *)self->_queryLock waitUntilDate:v3];
    }

    while (!self->_modules && v4);
  }

  v5 = self->_modulesByIdentifier;
  [(NSCondition *)self->_queryLock unlock];
  if (v5)
  {
    v6 = [(NSDictionary *)v5 copy];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

- (void)addBundleToEnableModules:(id)modules
{
  modulesCopy = modules;
  v5 = modulesCopy;
  if (modulesCopy)
  {
    identity = [modulesCopy identity];
    [identity setEnabled:1];

    enabledModules = self->_enabledModules;
    bundleIdentifier = [v5 bundleIdentifier];
    LOBYTE(enabledModules) = [(NSArray *)enabledModules containsObject:bundleIdentifier];

    if ((enabledModules & 1) == 0)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_enabledModules];
      bundleIdentifier2 = [v5 bundleIdentifier];
      [v9 addObject:bundleIdentifier2];

      v11 = [v9 copy];
      v12 = self->_enabledModules;
      self->_enabledModules = v11;

      [(FSModuleHost *)self saveEnabledList];
    }
  }

  else
  {
    v13 = fskit_std_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v13 addBundleToEnableModules:v14, v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)removeBundleFromEnabledModules:(id)modules
{
  modulesCopy = modules;
  v5 = modulesCopy;
  if (modulesCopy)
  {
    identity = [modulesCopy identity];
    [identity setEnabled:0];

    enabledModules = self->_enabledModules;
    bundleIdentifier = [v5 bundleIdentifier];
    LODWORD(enabledModules) = [(NSArray *)enabledModules containsObject:bundleIdentifier];

    if (enabledModules)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_enabledModules];
      bundleIdentifier2 = [v5 bundleIdentifier];
      [v9 removeObject:bundleIdentifier2];

      v11 = [v9 copy];
      v12 = self->_enabledModules;
      self->_enabledModules = v11;

      [(FSModuleHost *)self saveEnabledList];
    }
  }

  else
  {
    v13 = fskit_std_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FSModuleHost(Project) *)v13 removeBundleFromEnabledModules:v14, v15, v16, v17, v18, v19, v20];
    }
  }
}

void __48__FSModuleHost_installedExtensionPropertiesSync__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end