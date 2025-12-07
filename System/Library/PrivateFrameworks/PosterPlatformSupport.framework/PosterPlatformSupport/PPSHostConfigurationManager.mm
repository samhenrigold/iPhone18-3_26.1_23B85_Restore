@interface PPSHostConfigurationManager
+ (id)bundleNameForRole:(id)role;
+ (id)sharedHostConfigurationManager;
- (PPSHostConfigurationManager)initWithUserDefaults:(id)defaults;
- (id)_connectionToBundleServiceForRole:(id)role outProxy:(id *)proxy errorHandler:(id)handler;
- (id)_lock_bundleURLForRole:(id)role error:(id *)error;
- (id)_lock_cachedHostConfigurationForRole:(id)role;
- (id)_lock_findBundleURLForRole:(id)role error:(id *)error;
- (id)_lock_hostConfigurationForRole:(id)role outCacheHit:(BOOL *)hit;
- (id)_lock_loadBundledHostConfigurationForRole:(id)role currentSwitcherConfiguration:(id)configuration;
- (id)_lock_loadSwitcherConfigurationForRole:(id)role currentSwitcherConfiguration:(id)configuration;
- (id)galleryPrewarmPolicy;
- (id)hostConfigurationForRole:(id)role;
- (id)updatedSwitcherConfigurationForRole:(id)role currentSwitcherConfiguration:(id)configuration error:(id *)error;
- (void)_lock_deleteHostConfigurationForRole:(id)role;
- (void)_lock_setHostConfiguration:(id)configuration forRole:(id)role;
- (void)deleteHostConfigurationForRole:(id)role;
- (void)setHostConfiguration:(id)configuration forRole:(id)role;
@end

@implementation PPSHostConfigurationManager

+ (id)bundleNameForRole:(id)role
{
  if ([role isEqualToString:@"PRPosterRoleAmbient"])
  {
    return @"AmbientHostConfigurationProvider.bundle";
  }

  else
  {
    return 0;
  }
}

+ (id)sharedHostConfigurationManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PPSHostConfigurationManager_sharedHostConfigurationManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHostConfigurationManager_onceToken != -1)
  {
    dispatch_once(&sharedHostConfigurationManager_onceToken, block);
  }

  v2 = sharedHostConfigurationManager_instance;

  return v2;
}

void __61__PPSHostConfigurationManager_sharedHostConfigurationManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 initWithUserDefaults:v4];
  v3 = sharedHostConfigurationManager_instance;
  sharedHostConfigurationManager_instance = v2;
}

- (PPSHostConfigurationManager)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = PPSHostConfigurationManager;
  v6 = [(PPSHostConfigurationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)setHostConfiguration:(id)configuration forRole:(id)role
{
  roleCopy = role;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  [(PPSHostConfigurationManager *)self _lock_setHostConfiguration:configurationCopy forRole:roleCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setHostConfiguration:(id)configuration forRole:(id)role
{
  roleCopy = role;
  v11 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:configuration requiringSecureCoding:1 error:&v11];
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    v10 = [(PPSHostConfigurationManager *)self defaultsKeyForRole:roleCopy];
    [(NSUserDefaults *)self->_userDefaults setObject:v7 forKey:v10];
    [(NSMutableSet *)self->_lock_rolesWithoutHostConfigurations removeObject:roleCopy];
  }

  else
  {
    v10 = PPSLogHostConfiguration(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PPSHostConfigurationManager _lock_setHostConfiguration:forRole:];
    }
  }
}

- (id)hostConfigurationForRole:(id)role
{
  v20 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v5 = PPSLogHostConfiguration(roleCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = PPSLogHostConfiguration(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25EDC0000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "hostConfigurationForRole", &unk_25EDC366A, buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v15 = 0;
  v10 = [(PPSHostConfigurationManager *)self _lock_hostConfigurationForRole:roleCopy outCacheHit:&v15];

  os_unfair_lock_unlock(&self->_lock);
  v12 = PPSLogHostConfiguration(v11);
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 67109376;
    v17 = v10 != 0;
    v18 = 1024;
    v19 = v15;
    _os_signpost_emit_with_name_impl(&dword_25EDC0000, v13, OS_SIGNPOST_INTERVAL_END, v6, "hostConfigurationForRole", "wasHostConfigurationLoaded=%{BOOL}u wasCacheHit=%{BOOL}u", buf, 0xEu);
  }

  return v10;
}

- (id)_lock_hostConfigurationForRole:(id)role outCacheHit:(BOOL *)hit
{
  v22 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v7 = [(PPSHostConfigurationManager *)self _lock_cachedHostConfigurationForRole:roleCopy];
  if (v7)
  {
    v8 = v7;
    v9 = PPSLogHostConfiguration(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PPSHostConfigurationManager _lock_hostConfigurationForRole:roleCopy outCacheHit:v9];
    }

LABEL_9:
    *hit = 1;
    goto LABEL_10;
  }

  v10 = [(NSMutableSet *)self->_lock_rolesWithoutHostConfigurations containsObject:roleCopy];
  if (v10)
  {
    v11 = PPSLogHostConfiguration(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = roleCopy;
      _os_log_impl(&dword_25EDC0000, v11, OS_LOG_TYPE_DEFAULT, "Already know there's no bundle for role: %{public}@", &v18, 0xCu);
    }

    v8 = 0;
    goto LABEL_9;
  }

  v8 = [(PPSHostConfigurationManager *)self _lock_loadBundledHostConfigurationForRole:roleCopy currentSwitcherConfiguration:0];
  v13 = PPSLogHostConfiguration(v8);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v14)
    {
      v18 = 138543618;
      v19 = roleCopy;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_25EDC0000, v13, OS_LOG_TYPE_DEFAULT, "Loaded bundled host configuration for %{public}@: %{public}@", &v18, 0x16u);
    }

    [(PPSHostConfigurationManager *)self _lock_setHostConfiguration:v8 forRole:roleCopy];
  }

  else
  {
    if (v14)
    {
      v18 = 138543362;
      v19 = roleCopy;
      _os_log_impl(&dword_25EDC0000, v13, OS_LOG_TYPE_DEFAULT, "Did not find any host configuration for %{public}@", &v18, 0xCu);
    }

    lock_rolesWithoutHostConfigurations = self->_lock_rolesWithoutHostConfigurations;
    if (!lock_rolesWithoutHostConfigurations)
    {
      v16 = objc_opt_new();
      v17 = self->_lock_rolesWithoutHostConfigurations;
      self->_lock_rolesWithoutHostConfigurations = v16;

      lock_rolesWithoutHostConfigurations = self->_lock_rolesWithoutHostConfigurations;
    }

    [(NSMutableSet *)lock_rolesWithoutHostConfigurations addObject:roleCopy];
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (id)_lock_loadBundledHostConfigurationForRole:(id)role currentSwitcherConfiguration:(id)configuration
{
  roleCopy = role;
  configurationCopy = configuration;
  v33 = 0;
  v8 = [(PPSHostConfigurationManager *)self _lock_bundleURLForRole:roleCopy error:&v33];
  v9 = v33;
  v10 = v9;
  if (v8)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v26 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke;
    v23[3] = &unk_279A55030;
    v11 = roleCopy;
    v24 = v11;
    v25 = &v27;
    v12 = [(PPSHostConfigurationManager *)self _connectionToBundleServiceForRole:v11 outProxy:&v26 errorHandler:v23];
    v13 = v26;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_8;
    v20 = &unk_279A55058;
    v22 = &v27;
    v21 = v11;
    [v13 hostConfigurationForBundleAtURL:v8 currentSwitcherConfiguration:configurationCopy forRole:v21 completion:&v17];
    [v12 invalidate];
    v14 = v28[5];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v15 = PPSLogHostConfiguration(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PPSHostConfigurationManager _lock_loadBundledHostConfigurationForRole:currentSwitcherConfiguration:];
    }

    v14 = 0;
  }

  return v14;
}

void __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSLogHostConfiguration(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    v9 = PPSLogHostConfiguration(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_8_cold_1(a1, v7);
    }
  }
}

- (void)deleteHostConfigurationForRole:(id)role
{
  roleCopy = role;
  os_unfair_lock_lock(&self->_lock);
  [(PPSHostConfigurationManager *)self _lock_deleteHostConfigurationForRole:roleCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_deleteHostConfigurationForRole:(id)role
{
  roleCopy = role;
  userDefaults = self->_userDefaults;
  v6 = [(PPSHostConfigurationManager *)self defaultsKeyForRole:roleCopy];
  [(NSUserDefaults *)userDefaults removeObjectForKey:v6];

  v7 = PPSLogHostConfiguration([(NSMutableSet *)self->_lock_rolesWithoutHostConfigurations removeObject:roleCopy]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PPSHostConfigurationManager *)roleCopy _lock_deleteHostConfigurationForRole:v7];
  }
}

- (id)updatedSwitcherConfigurationForRole:(id)role currentSwitcherConfiguration:(id)configuration error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  configurationCopy = configuration;
  v9 = PPSLogHostConfiguration(configurationCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = PPSLogHostConfiguration(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v24[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_25EDC0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "updatedSwitcherConfigurationForRole", &unk_25EDC366A, v24, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v14 = [(PPSHostConfigurationManager *)self _lock_loadBundledHostConfigurationForRole:roleCopy currentSwitcherConfiguration:configurationCopy];
  v15 = v14;
  if (v14)
  {
    entries = [v14 entries];
    v17 = [entries bs_compactMap:&__block_literal_global];

    v18 = [MEMORY[0x277D3E950] hostConfigurationWithConfigurationEntries:v17];
    [(PPSHostConfigurationManager *)self _lock_setHostConfiguration:v18 forRole:roleCopy];
  }

  v19 = [(PPSHostConfigurationManager *)self _lock_loadSwitcherConfigurationForRole:roleCopy currentSwitcherConfiguration:configurationCopy];
  os_unfair_lock_unlock(&self->_lock);
  v21 = PPSLogHostConfiguration(v20);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v24[0] = 67109120;
    v24[1] = v19 != 0;
    _os_signpost_emit_with_name_impl(&dword_25EDC0000, v22, OS_SIGNPOST_INTERVAL_END, v10, "updatedSwitcherConfigurationForRole", "success=%{BOOL}u", v24, 8u);
  }

  return v19;
}

id __102__PPSHostConfigurationManager_updatedSwitcherConfigurationForRole_currentSwitcherConfiguration_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3E958];
  v3 = a2;
  v4 = [v3 extensionID];
  v5 = [v3 descriptorID];

  v6 = [v2 entryWithExtensionID:v4 descriptorID:v5];

  return v6;
}

- (id)_lock_loadSwitcherConfigurationForRole:(id)role currentSwitcherConfiguration:(id)configuration
{
  roleCopy = role;
  configurationCopy = configuration;
  v33 = 0;
  v8 = [(PPSHostConfigurationManager *)self _lock_bundleURLForRole:roleCopy error:&v33];
  v9 = v33;
  v10 = v9;
  if (v8)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v26 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __99__PPSHostConfigurationManager__lock_loadSwitcherConfigurationForRole_currentSwitcherConfiguration___block_invoke;
    v23[3] = &unk_279A55030;
    v11 = roleCopy;
    v24 = v11;
    v25 = &v27;
    v12 = [(PPSHostConfigurationManager *)self _connectionToBundleServiceForRole:v11 outProxy:&v26 errorHandler:v23];
    v13 = v26;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __99__PPSHostConfigurationManager__lock_loadSwitcherConfigurationForRole_currentSwitcherConfiguration___block_invoke_16;
    v20 = &unk_279A55058;
    v22 = &v27;
    v21 = v11;
    [v13 switcherConfigurationForBundleAtURL:v8 currentSwitcherConfiguration:configurationCopy forRole:v21 completion:&v17];
    [v12 invalidate];
    v14 = v28[5];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v15 = PPSLogHostConfiguration(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PPSHostConfigurationManager _lock_loadBundledHostConfigurationForRole:currentSwitcherConfiguration:];
    }

    v14 = 0;
  }

  return v14;
}

void __99__PPSHostConfigurationManager__lock_loadSwitcherConfigurationForRole_currentSwitcherConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PPSLogHostConfiguration(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __99__PPSHostConfigurationManager__lock_loadSwitcherConfigurationForRole_currentSwitcherConfiguration___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    v9 = PPSLogHostConfiguration(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_8_cold_1(a1, v7);
    }
  }
}

- (id)galleryPrewarmPolicy
{
  v2 = objc_opt_new();
  v3 = PFCurrentDeviceClass();
  v4 = 9;
  v5 = PFFeatureEnabled();
  v6 = 4;
  if (v3 == 1)
  {
    v6 = 5;
    v4 = 24;
  }

  if (v5)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  if (PFFeatureEnabled())
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v2 setSkipFirstSection:1];
  [v2 setMaxPerSectionToPrewarm:v7];
  [v2 setMaxTotalItemsToPrewarm:v4];

  return v2;
}

- (id)_lock_bundleURLForRole:(id)role error:(id *)error
{
  roleCopy = role;
  v7 = [(NSMutableDictionary *)self->_lock_bundleURLByRoleIdentifier objectForKey:roleCopy];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (error)
      {
        v9 = v8;
        v10 = 0;
        *error = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = v8;
      v8 = v10;
    }
  }

  else
  {
    v16 = 0;
    v11 = [(PPSHostConfigurationManager *)self _lock_findBundleURLForRole:roleCopy error:&v16];
    v12 = v16;
    v13 = v12;
    v14 = v11;
    if (v11 || (v14 = v12) != 0)
    {
      [(NSMutableDictionary *)self->_lock_bundleURLByRoleIdentifier setObject:v14 forKey:roleCopy];
    }

    v10 = v11;

    v8 = v10;
  }

  return v10;
}

- (id)_lock_findBundleURLForRole:(id)role error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v6 = [objc_opt_class() bundleNameForRole:roleCopy];
  if (v6)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager URLsForDirectory:5 inDomains:8];
    if ([v8 count])
    {
      firstObject = [v8 firstObject];
      v10 = [firstObject URLByAppendingPathComponent:@"Posters"];
      v11 = [v10 URLByAppendingPathComponent:@"HostConfigurationProviders"];
      v12 = [v11 URLByAppendingPathComponent:v6];

      v14 = PPSLogHostConfiguration(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v12;
        v32 = 2114;
        v33 = roleCopy;
        _os_log_impl(&dword_25EDC0000, v14, OS_LOG_TYPE_DEFAULT, "Checking for host configuration bundle %{public}@ for role %{public}@", buf, 0x16u);
      }

      path = [v12 path];
      v16 = [defaultManager fileExistsAtPath:path];

      if (v16)
      {
        v18 = v12;
      }

      else
      {
        v23 = PPSLogHostConfiguration(v17);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [PPSHostConfigurationManager _lock_findBundleURLForRole:error:];
        }

        if (error)
        {
          roleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No bundle at %@ for role %@", v12, roleCopy];
          v25 = MEMORY[0x277CCA9B8];
          v28 = *MEMORY[0x277CCA470];
          v29 = roleCopy;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          *error = [v25 errorWithDomain:@"com.apple.PosterBoard.PPSHostConfigurationManager" code:-3 userInfo:v26];
        }

        v18 = 0;
      }
    }

    else
    {
      v21 = PPSLogHostConfiguration(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PPSHostConfigurationManager _lock_findBundleURLForRole:roleCopy error:v21];
      }

      if (!error)
      {
        v18 = 0;
        goto LABEL_22;
      }

      v22 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA470];
      v35 = @"There is no /System/Library directory";
      firstObject = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [v22 errorWithDomain:@"com.apple.PosterBoard.PPSHostConfigurationManager" code:-2 userInfo:firstObject];
      *error = v18 = 0;
    }

LABEL_22:
    goto LABEL_23;
  }

  v19 = PPSLogHostConfiguration(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = roleCopy;
    _os_log_impl(&dword_25EDC0000, v19, OS_LOG_TYPE_DEFAULT, "Role %{public}@ not compatible with bundle-based host configuration", buf, 0xCu);
  }

  if (error)
  {
    v20 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA470];
    v37[0] = @"Role not compatible with bundle-based host configuration";
    defaultManager = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [v20 errorWithDomain:@"com.apple.PosterBoard.PPSHostConfigurationManager" code:-1 userInfo:defaultManager];
    *error = v18 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (id)_lock_cachedHostConfigurationForRole:(id)role
{
  roleCopy = role;
  v5 = [(PPSHostConfigurationManager *)self defaultsKeyForRole:roleCopy];
  v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
    v8 = v12;
    v9 = v8;
    if (!v7)
    {
      v10 = PPSLogHostConfiguration(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PPSHostConfigurationManager _lock_cachedHostConfigurationForRole:];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return v7;
}

- (id)_connectionToBundleServiceForRole:(id)role outProxy:(id *)proxy errorHandler:(id)handler
{
  v6 = _connectionToBundleServiceForRole_outProxy_errorHandler__onceToken;
  handlerCopy = handler;
  if (v6 != -1)
  {
    [PPSHostConfigurationManager _connectionToBundleServiceForRole:outProxy:errorHandler:];
  }

  v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PosterPlatformSupportBundleService"];
  [v8 setRemoteObjectInterface:_connectionToBundleServiceForRole_outProxy_errorHandler__remoteInterface];
  [v8 resume];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  v10 = v9;
  *proxy = v9;

  return v8;
}

uint64_t __87__PPSHostConfigurationManager__connectionToBundleServiceForRole_outProxy_errorHandler___block_invoke()
{
  _connectionToBundleServiceForRole_outProxy_errorHandler__remoteInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2870F1FA8];

  return MEMORY[0x2821F96F8]();
}

- (void)_lock_hostConfigurationForRole:(uint64_t)a1 outCacheHit:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25EDC0000, a2, OS_LOG_TYPE_DEBUG, "Found cached host configuration for %{public}@", &v2, 0xCu);
}

void __102__PPSHostConfigurationManager__lock_loadBundledHostConfigurationForRole_currentSwitcherConfiguration___block_invoke_8_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_25EDC0000, v3, v4, "Failed to load host configuration for role %{public}@: %{public}@", v5, v6, v7, v8);
}

- (void)_lock_deleteHostConfigurationForRole:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25EDC0000, a2, OS_LOG_TYPE_DEBUG, "Deleted cached host configuration for %{public}@", &v2, 0xCu);
}

- (void)_lock_findBundleURLForRole:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_25EDC0000, a2, OS_LOG_TYPE_ERROR, "Failed to load host configuration for role %{public}@: There is no /System/Library directory??", &v2, 0xCu);
}

@end