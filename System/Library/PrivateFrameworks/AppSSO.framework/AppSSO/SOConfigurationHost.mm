@interface SOConfigurationHost
+ (id)_loadProfilesFromDict:(id)dict;
+ (id)_loadProfilesFromURL:(id)l logFileError:(BOOL)error;
+ (id)defaultManager;
+ (id)maskRegistrationTokenInConfigurationData:(id)data;
+ (id)maskRegistrationTokenInProfileList:(id)list;
+ (void)defaultManager;
- (BOOL)_initCachePath:(id)path ifNeededWithError:(id *)error;
- (BOOL)_initDataVaultIfNeededWithError:(id *)error;
- (BOOL)_isConfigFileAvailable;
- (BOOL)_saveCacheToFile:(id)file error:(id *)error;
- (BOOL)_saveConfigToFile:(id)file error:(id *)error;
- (BOOL)hasAnyMDMProfileForExtension:(id)extension;
- (BOOL)isPlatformSSOProfile:(id)profile;
- (BOOL)saveConfiguration:(id)configuration error:(id *)error;
- (BOOL)saveConfigurationData:(id)data error:(id *)error;
- (SOConfigurationHost)init;
- (id)_checkAssociatedDomainForProfiles:(id)profiles;
- (id)_checkExtensionsExistenceForProfiles:(id)profiles;
- (id)_defaultCacheFile;
- (id)_defaultConfigurationFile;
- (id)_mergeProfile:(id)profile userProfiles:(id)profiles;
- (id)_removeNotSupportedUserProfiles:(id)profiles;
- (id)_stringWithReason:(int64_t)reason;
- (id)configurationForClientWithError:(id *)error;
- (id)findPlatformSSOProfile:(id)profile;
- (id)findProfileForExtension:(id)extension profiles:(id)profiles;
- (id)platformSSOProfile;
- (id)profileForURL:(id)l responseCode:(int64_t)code;
- (id)profilesWithExtensionBundleIdentifier:(id)identifier;
- (id)realms;
- (id)removedProfileForExtensionBundleIdentifier:(id)identifier;
- (id)systemMDMProfileForExtension:(id)extension;
- (id)validatedProfileForPlatformSSO;
- (int64_t)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier;
- (void)_checkNewVersion;
- (void)_configurationLoadedWithReason:(int64_t)reason;
- (void)_extensionsLoaded:(id)loaded;
- (void)_isConfigFileAvailable;
- (void)_isConfigurationActiveForExtensionIdentifier:(id)identifier runningAsAgent:(BOOL)agent completion:(id)completion;
- (void)_loadCacheFromDisk;
- (void)_loadConfigForFirstTime;
- (void)_reloadConfigWithReason:(int64_t)reason;
- (void)_startKeyBagObserverForReloadingConfiguration;
- (void)dealloc;
- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier runningAsAgent:(BOOL)agent completion:(id)completion;
- (void)platformSSOProfile;
@end

@implementation SOConfigurationHost

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[SOConfigurationHost defaultManager];
  }

  v2 = defaultManager_manager_0;
  if (!defaultManager_manager_0)
  {
    v3 = SO_LOG_SOConfigurationHost(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[SOConfigurationHost defaultManager];
    }

    v2 = defaultManager_manager_0;
  }

  return v2;
}

- (void)_checkNewVersion
{
  if ([(SOConfigurationVersion *)self->_configurationVersion checkVersion]== 1)
  {
    configurationPendingLock = [(SOConfigurationHost *)self configurationPendingLock];
    objc_sync_enter(configurationPendingLock);
    [(SOConfigurationHost *)self setConfigurationPending:1];
    objc_sync_exit(configurationPendingLock);

    [(SOConfigurationHost *)self _reloadConfigWithReason:2];
  }
}

uint64_t __37__SOConfigurationHost_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(SOConfigurationHost);
  v1 = defaultManager_manager_0;
  defaultManager_manager_0 = v0;

  v2 = defaultManager_manager_0;

  return [v2 _loadConfigForFirstTime];
}

- (SOConfigurationHost)init
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOConfigurationHost init]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v14.receiver = self;
  v14.super_class = SOConfigurationHost;
  v4 = [(SOConfigurationHost *)&v14 init];
  if (v4)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v5 = getSOConfigurationVersionClass_softClass;
    v18 = getSOConfigurationVersionClass_softClass;
    if (!getSOConfigurationVersionClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSOConfigurationVersionClass_block_invoke;
      v20 = &unk_1E813E230;
      v21 = &v15;
      __getSOConfigurationVersionClass_block_invoke(buf);
      v5 = v16[3];
    }

    v6 = v5;
    _Block_object_dispose(&v15, 8);
    v7 = [[v5 alloc] initWithMode:0];
    configurationVersion = v4->_configurationVersion;
    v4->_configurationVersion = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedDomainCache = v4->_associatedDomainCache;
    v4->_associatedDomainCache = v9;

    v4->_configurationPending = 0;
    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    configurationPendingLock = v4->_configurationPendingLock;
    v4->_configurationPendingLock = v11;
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOConfigurationHost;
  [(SOConfigurationHost *)&v4 dealloc];
}

- (BOOL)saveConfiguration:(id)configuration error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = SO_LOG_SOConfigurationHost(configurationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() maskRegistrationTokenInProfileList:configurationCopy];
    *buf = 136315651;
    v22 = "[SOConfigurationHost saveConfiguration:error:]";
    v23 = 2113;
    v24 = v8;
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s saving new configuration: %{private}@ on %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v10 = [objc_opt_class() _loadProfilesFromDict:configurationCopy];
  if (v10)
  {
    v11 = [(SOConfigurationHost *)selfCopy2 _saveConfigToFile:configurationCopy error:error];
    if (v11)
    {
      [(SOConfigurationVersion *)selfCopy2->_configurationVersion increaseVersionWithMessage:@"NewConfiguration"];
    }

    if (!getuid())
    {
      _defaultCacheFile = [(SOConfigurationHost *)selfCopy2 _defaultCacheFile];
      stringByDeletingLastPathComponent = [_defaultCacheFile stringByDeletingLastPathComponent];

      v20 = 0;
      v14 = [(SOConfigurationHost *)selfCopy2 _initCachePath:stringByDeletingLastPathComponent ifNeededWithError:&v20];
      v15 = v20;
      v16 = v15;
      if (!v14)
      {
        v17 = SO_LOG_SOConfigurationHost(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SOConfigurationHost saveConfiguration:error:];
        }
      }
    }
  }

  else
  {
    v18 = SO_LOG_SOConfigurationHost(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost saveConfiguration:error:];
    }

    if (error)
    {
      [getSOErrorHelperClass_3() parameterErrorWithMessage:@"invalid configuration format"];
      *error = LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  objc_sync_exit(selfCopy2);
  return v11;
}

- (BOOL)saveConfigurationData:(id)data error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = SO_LOG_SOConfigurationHost(dataCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() maskRegistrationTokenInProfileList:dataCopy];
    v18 = 136315651;
    v19 = "[SOConfigurationHost saveConfigurationData:error:]";
    v20 = 2113;
    v21 = v8;
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s saving new configuration=%{private}@ on %@", &v18, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v10 = [objc_opt_class() _loadProfilesFromDict:dataCopy];
  if (!v10)
  {
    v15 = SO_LOG_SOConfigurationHost(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() maskRegistrationTokenInProfileList:dataCopy];
      [SOConfigurationHost saveConfigurationData:v16 error:&v18];
    }

    if (error)
    {
      [getSOErrorHelperClass_3() parameterErrorWithMessage:@"invalid configuration format"];
      v10 = 0;
      *error = v14 = 0;
      goto LABEL_12;
    }

    v10 = 0;
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (![(SOConfigurationHost *)selfCopy2 _saveConfigToFile:dataCopy error:error])
  {
    goto LABEL_11;
  }

  v11 = [(SOConfigurationHost *)selfCopy2 _checkAssociatedDomainForProfiles:v10];

  v12 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:v11];
  configuration = selfCopy2->_configuration;
  selfCopy2->_configuration = v12;

  [(SOConfigurationVersion *)selfCopy2->_configurationVersion increaseVersionWithMessage:@"NewConfiguration"];
  v14 = 1;
  v10 = v11;
LABEL_12:

  objc_sync_exit(selfCopy2);
  return v14;
}

- (id)profileForURL:(id)l responseCode:(int64_t)code
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = SO_LOG_SOConfigurationHost(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SOConfigurationHost profileForURL:responseCode:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v16, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(SOConfigurationHost *)selfCopy2 _checkNewVersion];
  isKindOfClass = [(SOConfiguration *)selfCopy2->_configuration profileForURL:lCopy responseCode:code];
  v10 = isKindOfClass;
  if (isKindOfClass && (getSOFullProfileClass(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v13 = SO_LOG_SOConfigurationHost(isKindOfClass);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost profileForURL:responseCode:];
    }

    v12 = 0;
  }

  else
  {
    v11 = SO_LOG_SOConfigurationHost(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
      v16 = 141558787;
      v17 = 1752392040;
      v18 = 2117;
      selfCopy = lCopy;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = profiles;
      _os_log_debug_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEBUG, "profile for URL %{sensitive, mask.hash}@ => %{public}@ in %{public}@", &v16, 0x2Au);
    }

    v12 = v10;
  }

  objc_sync_exit(selfCopy2);

  return v12;
}

- (id)removedProfileForExtensionBundleIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOConfigurationHost(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SOConfigurationHost removedProfileForExtensionBundleIdentifier:]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy2->_removedProfiles;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        v13 = [extensionBundleIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_13;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = SO_LOG_SOConfigurationHost(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    removedProfiles = selfCopy2->_removedProfiles;
    *buf = 138543874;
    v23 = identifierCopy;
    v24 = 2114;
    selfCopy = v8;
    v26 = 2114;
    v27 = removedProfiles;
    _os_log_debug_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEBUG, "removed profile for extension bundle ID %{public}@ => %{public}@ in %{public}@", buf, 0x20u);
  }

  if (v8)
  {
    [(NSMutableArray *)selfCopy2->_removedProfiles removeObject:v8];
  }

  objc_sync_exit(selfCopy2);

  return v8;
}

- (id)configurationForClientWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SOConfigurationHost configurationForClientWithError:]";
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(SOConfigurationHost *)selfCopy2 _checkNewVersion];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
  v9 = [profiles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(profiles);
        }

        copyProfileForClient = [*(*(&v15 + 1) + 8 * i) copyProfileForClient];
        [array addObject:copyProfileForClient];
      }

      v9 = [profiles countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (error)
  {
    *error = 0;
  }

  v13 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:array];

  objc_sync_exit(selfCopy2);

  return v13;
}

- (id)profilesWithExtensionBundleIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOConfigurationHost(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[SOConfigurationHost profilesWithExtensionBundleIdentifier:]";
    v24 = 2114;
    v25 = identifierCopy;
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extensionBundleIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
  v9 = [profiles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(profiles);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        extensionBundleIdentifier = [v12 extensionBundleIdentifier];
        v14 = [extensionBundleIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          copyProfile = [v12 copyProfile];
          [array addObject:copyProfile];
        }
      }

      v9 = [profiles countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy2);

  return array;
}

- (id)validatedProfileForPlatformSSO
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[SOConfigurationHost validatedProfileForPlatformSSO]";
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
  copyProfile = [profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (copyProfile)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != copyProfile; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(profiles);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(SOConfigurationHost *)selfCopy2 isPlatformSSOProfile:v9])
        {
          copyProfile = [v9 copyProfile];
          pssoRegistrationToken = [v9 pssoRegistrationToken];
          [copyProfile setPssoRegistrationToken:pssoRegistrationToken];

          goto LABEL_13;
        }
      }

      copyProfile = [profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (copyProfile)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_sync_exit(selfCopy2);

  return copyProfile;
}

- (id)platformSSOProfile
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[SOConfigurationHost platformSSOProfile]";
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v5 = SO_LOG_SOConfigurationHost(_defaultConfigurationFile);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v8 = [v6 _loadProfilesFromURL:v7 logFileError:1];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(SOConfigurationHost *)self isPlatformSSOProfile:v14, v21];
        if (v15)
        {
          v19 = SO_LOG_SOConfigurationHost(v15);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [(SOConfigurationHost *)v14 platformSSOProfile];
          }

          v18 = v14;
          v17 = v9;
          goto LABEL_19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = SO_LOG_SOConfigurationHost(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v18 = 0;
LABEL_19:

  return v18;
}

- (id)findPlatformSSOProfile:(id)profile
{
  v23 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  v5 = SO_LOG_SOConfigurationHost(profileCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOConfigurationHost findPlatformSSOProfile:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = profileCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(SOConfigurationHost *)self isPlatformSSOProfile:v11, v14])
        {
          v12 = v11;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)findProfileForExtension:(id)extension profiles:(id)profiles
{
  v26 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  profilesCopy = profiles;
  v8 = SO_LOG_SOConfigurationHost(profilesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SOConfigurationHost findProfileForExtension:profiles:]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = profilesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        extensionBundleIdentifier = [v13 extensionBundleIdentifier];
        v15 = [extensionBundleIdentifier isEqualToString:extensionCopy];

        if (v15)
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v10;
}

- (BOOL)isPlatformSSOProfile:(id)profile
{
  profileCopy = profile;
  SOFullProfileClass = getSOFullProfileClass();
  platformSSO = [profileCopy platformSSO];
  v6 = [platformSSO objectForKeyedSubscript:@"AuthenticationMethod"];
  v7 = [SOFullProfileClass authMethodWithString:v6];

  v8 = v7 != 1000 && [profileCopy type] == 1;
  return v8;
}

- (id)_removeNotSupportedUserProfiles:(id)profiles
{
  v29 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = [profilesCopy mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = profilesCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v23;
    *&v8 = 138543362;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(SOConfigurationHost *)self isPlatformSSOProfile:v13, v21, v22];
        if (v14)
        {
          if (v10)
          {
            v15 = SO_LOG_SOConfigurationHost(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v27 = v13;
              _os_log_error_impl(&dword_1C1317000, v15, OS_LOG_TYPE_ERROR, "More than one Platform SSO profile is not supported (rejected): %{public}@", buf, 0xCu);
            }

            [v5 removeObject:v13];
          }

          else
          {
            platformSSO = [v13 platformSSO];
            v17 = [platformSSO objectForKeyedSubscript:@"UseSharedDeviceKeys"];

            bOOLValue = [v17 BOOLValue];
            if (bOOLValue)
            {
              v19 = SO_LOG_SOConfigurationHost(bOOLValue);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v27 = v13;
                _os_log_error_impl(&dword_1C1317000, v19, OS_LOG_TYPE_ERROR, "Platform SSO shared device keys require a system profile (rejected): %{public}@", buf, 0xCu);
              }

              [v5 removeObject:v13];
            }
          }

          v10 = 1;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  return v5;
}

- (BOOL)hasAnyMDMProfileForExtension:(id)extension
{
  v33 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = SO_LOG_SOConfigurationHost(extensionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[SOConfigurationHost hasAnyMDMProfileForExtension:]";
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v7 = SO_LOG_SOConfigurationHost(_defaultConfigurationFile);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v8 = objc_opt_class();
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v10 = [v8 _loadProfilesFromURL:v9 logFileError:1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        extensionBundleIdentifier = [*(*(&v24 + 1) + 8 * i) extensionBundleIdentifier];
        v17 = [extensionBundleIdentifier isEqualToString:extensionCopy];

        if (v17)
        {
          v22 = SO_LOG_SOConfigurationHost(v18);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost hasAnyMDMProfileForExtension:];
          }

          v21 = 1;
          v20 = v11;
          goto LABEL_19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = SO_LOG_SOConfigurationHost(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost hasAnyMDMProfileForExtension:];
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (id)systemMDMProfileForExtension:(id)extension
{
  v34 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = SO_LOG_SOConfigurationHost(extensionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[SOConfigurationHost systemMDMProfileForExtension:]";
    v32 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v7 = SO_LOG_SOConfigurationHost(_defaultConfigurationFile);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v8 = objc_opt_class();
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v10 = [v8 _loadProfilesFromURL:v9 logFileError:1];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        extensionBundleIdentifier = [v16 extensionBundleIdentifier];
        v18 = [extensionBundleIdentifier isEqualToString:extensionCopy];

        if (v18)
        {
          v23 = SO_LOG_SOConfigurationHost(v19);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost hasAnyMDMProfileForExtension:];
          }

          v22 = v16;
          v21 = v11;
          goto LABEL_19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21 = SO_LOG_SOConfigurationHost(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost hasAnyMDMProfileForExtension:];
  }

  v22 = 0;
LABEL_19:

  return v22;
}

- (id)realms
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOConfigurationHost realms]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  realms = [(SOConfiguration *)selfCopy2->_configuration realms];
  objc_sync_exit(selfCopy2);

  return realms;
}

- (int64_t)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  v10 = SO_LOG_SOConfigurationHost(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316163;
    v34 = "[SOConfigurationHost willHandleURL:responseCode:callerBundleIdentifier:]";
    v35 = 2160;
    v36 = 1752392040;
    v37 = 2117;
    v38 = lCopy;
    v39 = 2114;
    v40 = identifierCopy;
    v41 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEBUG, "%s URL: %{sensitive, mask.hash}@, callerBundleIdentifier: %{public}@ on %@", buf, 0x34u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  configuration = selfCopy2->_configuration;
  v32 = 0;
  v13 = [(SOConfiguration *)configuration willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy profile:&v32];
  type = v32;
  v15 = type;
  if (!v13)
  {
    type = [type type];
    if (type == 1)
    {
      extensionBundleIdentifier = [v15 extensionBundleIdentifier];
      if ([SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier])
      {
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }

      scheme = [lCopy scheme];
      lowercaseString = [scheme lowercaseString];
      v19 = [lowercaseString isEqualToString:@"ssoid"];

      if ((v19 & 1) == 0)
      {
        extensionBundleIdentifier = +[SOExtensionManager sharedInstance];
        objc_sync_enter(extensionBundleIdentifier);
        v20 = +[SOExtensionManager sharedInstance];
        extensionBundleIdentifier2 = [v15 extensionBundleIdentifier];
        v22 = [v20 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier2];

        hasAssociatedDomainsApproved = [v22 hasAssociatedDomainsApproved];
        if (hasAssociatedDomainsApproved)
        {
          v13 = 0;
        }

        else
        {
          v24 = SO_LOG_SOConfigurationHost(hasAssociatedDomainsApproved);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost willHandleURL:responseCode:callerBundleIdentifier:];
          }

          v25 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
          v26 = [(SOConfigurationHost *)selfCopy2 _checkAssociatedDomainForProfiles:v25];

          hasAssociatedDomainsApproved2 = [v22 hasAssociatedDomainsApproved];
          if (hasAssociatedDomainsApproved2)
          {
            v28 = SO_LOG_SOConfigurationHost(hasAssociatedDomainsApproved2);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [SOConfigurationHost willHandleURL:responseCode:callerBundleIdentifier:];
            }

            [(SOConfigurationHost *)selfCopy2 _reloadConfigWithReason:1];
            v13 = [(SOConfiguration *)selfCopy2->_configuration willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy profile:0];
          }

          else
          {
            v13 = +[SOPreferences isAssociatedDomainValidated];
          }
        }

        objc_sync_exit(extensionBundleIdentifier);
        goto LABEL_19;
      }
    }

    v13 = 0;
  }

LABEL_20:
  v29 = SO_LOG_SOConfigurationHost(type);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [getSOConfigurationClass() stringWithHandleResult:v13];
    *buf = 141558787;
    v34 = 1752392040;
    v35 = 2117;
    v36 = lCopy;
    v37 = 2114;
    v38 = identifierCopy;
    v39 = 2114;
    v40 = v30;
    _os_log_impl(&dword_1C1317000, v29, OS_LOG_TYPE_INFO, "willHandleURL(host): %{sensitive, mask.hash}@ callerBundleIdentifier: %{public}@ result: %{public}@", buf, 0x2Au);
  }

  objc_sync_exit(selfCopy2);
  return v13;
}

- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier runningAsAgent:(BOOL)agent completion:(id)completion
{
  agentCopy = agent;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = SO_LOG_SOConfigurationHost(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
  }

  if (agentCopy)
  {
    [(SOConfigurationHost *)self _checkNewVersion];
  }

  configurationPendingLock = [(SOConfigurationHost *)self configurationPendingLock];
  objc_sync_enter(configurationPendingLock);
  configurationPending = [(SOConfigurationHost *)self configurationPending];
  objc_sync_exit(configurationPendingLock);

  v14 = SO_LOG_SOConfigurationHost(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (configurationPending)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_INFO, "New configuration pending", buf, 2u);
    }

    v16 = dispatch_time(0, 3100000000);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__SOConfigurationHost_isConfigurationActiveForExtensionIdentifier_runningAsAgent_completion___block_invoke;
    v17[3] = &unk_1E813ED90;
    v17[4] = self;
    v18 = identifierCopy;
    v20 = agentCopy;
    v19 = completionCopy;
    dispatch_after(v16, MEMORY[0x1E69E96A0], v17);
  }

  else
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_INFO, "New configuration not pending", buf, 2u);
    }

    [(SOConfigurationHost *)self _isConfigurationActiveForExtensionIdentifier:identifierCopy runningAsAgent:agentCopy completion:completionCopy];
  }
}

void __93__SOConfigurationHost_isConfigurationActiveForExtensionIdentifier_runningAsAgent_completion___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _isConfigurationActiveForExtensionIdentifier:*(a1 + 40) runningAsAgent:*(a1 + 56) completion:*(a1 + 48)];
  objc_sync_exit(obj);
}

- (void)_isConfigurationActiveForExtensionIdentifier:(id)identifier runningAsAgent:(BOOL)agent completion:(id)completion
{
  agentCopy = agent;
  v67 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOConfigurationHost(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
  }

  v10 = SO_LOG_SOConfigurationHost(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
  }

  if ([(SOConfigurationHost *)self hasAnyMDMProfileForExtension:identifierCopy])
  {
    v11 = 0;
    while (1)
    {
      selfCopy = self;
      v13 = objc_sync_enter(selfCopy);
      v14 = SO_LOG_SOConfigurationHost(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:v56 runningAsAgent:? completion:?];
      }

      if (agentCopy)
      {
        v16 = +[SOExtensionManager sharedInstance];
        v17 = [v16 loadedExtensionWithBundleIdentifier:identifierCopy];
      }

      else
      {
        v18 = SO_LOG_SOConfigurationHost(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:v54 runningAsAgent:? completion:?];
        }

        v16 = +[SOExtensionManager sharedInstance];
        v17 = [v16 loadExtensionWithBundleIdentifier:identifierCopy];
      }

      v19 = v17;

      objc_sync_exit(selfCopy);
      if (v19)
      {
        break;
      }

      v21 = SO_LOG_SOConfigurationHost(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = v11;
        _os_log_impl(&dword_1C1317000, v21, OS_LOG_TYPE_INFO, "Extension not installed. Attempt %{public}d", buf, 8u);
      }

      [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
      if (v11++ >= 9)
      {
        v49 = [getSOErrorHelperClass_3() errorWithCode:-14 message:@"Missing extension with extension identifier"];
        completionCopy[2](completionCopy, 0, v49);

        goto LABEL_58;
      }
    }

    v23 = MEMORY[0x1E695DFF8];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@", @"ssoid", identifierCopy];
    v50 = [v23 URLWithString:identifierCopy];

    v57 = 0;
    v58 = &v57;
    v59 = 0x2050000000;
    v25 = getSOClientClass_softClass;
    v60 = getSOClientClass_softClass;
    if (!getSOClientClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = __getSOClientClass_block_invoke;
      v64 = &unk_1E813E230;
      v65 = &v57;
      __getSOClientClass_block_invoke(buf);
      v25 = v58[3];
    }

    v26 = v25;
    _Block_object_dispose(&v57, 8);
    v48 = objc_alloc_init(v25);
    v27 = 0;
    do
    {
      v28 = selfCopy;
      v29 = objc_sync_enter(v28);
      v30 = SO_LOG_SOConfigurationHost(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:&v57 + 1 runningAsAgent:? completion:?];
      }

      if (agentCopy)
      {
        v31 = [(SOConfiguration *)selfCopy->_configuration profileForURL:v50 responseCode:0];
      }

      else
      {
        *buf = 0;
        v62 = buf;
        v63 = 0x3032000000;
        v64 = __Block_byref_object_copy__2;
        v65 = __Block_byref_object_dispose__2;
        v66 = 0;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __94__SOConfigurationHost__isConfigurationActiveForExtensionIdentifier_runningAsAgent_completion___block_invoke;
        v52[3] = &unk_1E813EDB8;
        v52[4] = buf;
        [v48 configurationWithCompletion:v52];
        v31 = [*(v62 + 40) profileForURL:v50 responseCode:0];

        _Block_object_dispose(buf, 8);
      }

      if (!v31)
      {
        v33 = SO_LOG_SOConfigurationHost(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = v27;
          _os_log_impl(&dword_1C1317000, v33, OS_LOG_TYPE_INFO, "Configuration not ready. Attempt %{public}d", buf, 8u);
        }

        [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
      }

      objc_sync_exit(v28);
    }

    while (v27++ <= 8 && v31 == 0);
    if (v31)
    {
      v37 = SO_LOG_SOConfigurationHost(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
      }

      [v28 _loadCacheFromDisk];
      v38 = [v28[5] objectForKeyedSubscript:identifierCopy];
      v39 = [v38 mutableCopy];
      v40 = v39;
      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = [MEMORY[0x1E695E0F8] mutableCopy];
      }

      v42 = v41;

      v43 = SO_LOG_SOConfigurationHost([v19 checkAssociatedDomainsWithCache:v42]);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
      }

      if ([v19 hasAssociatedDomainsApproved])
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      else
      {
        v44 = +[SOPreferences isAssociatedDomainValidated];
        if (v44)
        {
          v45 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:identifierCopy];
          if (!v45)
          {
            [MEMORY[0x1E696AF00] sleepForTimeInterval:3.0];
            [v19 checkAssociatedDomainsWithCompletion:completionCopy];
            goto LABEL_57;
          }

          v46 = SO_LOG_SOConfigurationHost(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            [SOConfigurationHost _isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:];
          }
        }

        else
        {
          v46 = SO_LOG_SOConfigurationHost(v44);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C1317000, v46, OS_LOG_TYPE_INFO, "Associated domain: validation is ignored", buf, 2u);
          }
        }

        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v42 = [getSOErrorHelperClass_3() errorWithCode:-14 message:@"Configuration not loaded for extension"];
      completionCopy[2](completionCopy, 0, v42);
    }

LABEL_57:

    goto LABEL_58;
  }

  v19 = [getSOErrorHelperClass_3() errorWithCode:-13 message:@"No profile for extension identifier"];
  completionCopy[2](completionCopy, 0, v19);
LABEL_58:
}

+ (id)_loadProfilesFromDict:(id)dict
{
  v34 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = SO_LOG_SOConfigurationHost(dictCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "+[SOConfigurationHost _loadProfilesFromDict:]";
    v32 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  obj = self;
  objc_sync_enter(obj);
  v5 = [dictCopy objectForKeyedSubscript:@"Profiles"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    array = SO_LOG_SOConfigurationHost(isKindOfClass);
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      +[SOConfigurationHost _loadProfilesFromDict:];
    }

LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = 0;
  v11 = *v26;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v25 + 1) + 8 * i);
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();
      if ((v14 & 1) == 0)
      {
        v16 = SO_LOG_SOConfigurationHost(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v20 = [obj maskRegistrationTokenInConfigurationData:v13];
          [(SOConfigurationHost *)v20 _loadProfilesFromDict:buf];
        }

        goto LABEL_24;
      }

      v15 = [objc_alloc(getSOFullProfileClass()) initWithProfileData:v13];
      v16 = v15;
      if (!v15)
      {
        v21 = SO_LOG_SOConfigurationHost(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[SOConfigurationHost _loadProfilesFromDict:];
        }

        goto LABEL_23;
      }

      pssoAuthenticationMethod = [v15 pssoAuthenticationMethod];
      v18 = pssoAuthenticationMethod != 1000;
      if ((v18 & v10) == 1)
      {
        v21 = SO_LOG_SOConfigurationHost(pssoAuthenticationMethod);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[SOConfigurationHost _loadProfilesFromDict:];
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      [array addObject:v16];

      v10 |= v18;
    }

    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_14:

  array = array;
  v19 = array;
LABEL_26:

  objc_sync_exit(obj);

  return v19;
}

+ (id)_loadProfilesFromURL:(id)l logFileError:(BOOL)error
{
  errorCopy = error;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (v9)
  {
    if (errorCopy)
    {
      v11 = SO_LOG_SOConfigurationHost(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[SOConfigurationHost _loadProfilesFromURL:logFileError:];
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = [objc_opt_class() _loadProfilesFromDict:v8];
  }

  objc_sync_exit(selfCopy);

  return v12;
}

- (void)_loadCacheFromDisk
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E695DFF8];
  _defaultCacheFile = [(SOConfigurationHost *)selfCopy _defaultCacheFile];
  v5 = [v3 fileURLWithPath:_defaultCacheFile];

  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:0 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = v7;
    v9 = SO_LOG_SOConfigurationHost(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _loadCacheFromDisk];
    }
  }

  else
  {
    if (!v6)
    {
      v8 = 0;
      goto LABEL_5;
    }

    v14 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:16 error:&v14];
    v10 = v14;
    if (v10)
    {
      v8 = v10;
      v11 = SO_LOG_SOConfigurationHost(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _loadCacheFromDisk];
      }
    }

    else
    {
      v12 = [v9 mutableCopy];
      associatedDomainCache = selfCopy->_associatedDomainCache;
      selfCopy->_associatedDomainCache = v12;

      v8 = 0;
    }
  }

LABEL_5:
  objc_sync_exit(selfCopy);
}

- (void)_loadConfigForFirstTime
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOConfigurationHost _loadConfigForFirstTime]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  configurationPendingLock = [(SOConfigurationHost *)self configurationPendingLock];
  objc_sync_enter(configurationPendingLock);
  [(SOConfigurationHost *)self setConfigurationPending:1];
  objc_sync_exit(configurationPendingLock);

  if ([(SOConfigurationHost *)self _isConfigFileAvailable])
  {
    [(SOConfigurationHost *)self _reloadConfigWithReason:0];
  }

  else
  {
    [(SOConfigurationHost *)self _startKeyBagObserverForReloadingConfiguration];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__extensionsLoaded_ name:@"com.apple.AppSSO.SOExtensionManager.ExtensionsChanged" object:0];
}

- (void)_startKeyBagObserverForReloadingConfiguration
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SOConfigurationHost _startKeyBagObserverForReloadingConfiguration]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __68__SOConfigurationHost__startKeyBagObserverForReloadingConfiguration__block_invoke;
  handler[3] = &unk_1E813EDE0;
  handler[4] = self;
  v4 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, MEMORY[0x1E69E96A0], handler);
  if (v4)
  {
    v5 = SO_LOG_SOConfigurationHost(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _startKeyBagObserverForReloadingConfiguration];
    }
  }
}

uint64_t __68__SOConfigurationHost__startKeyBagObserverForReloadingConfiguration__block_invoke(uint64_t a1, int a2)
{
  v4 = SO_LOG_SOConfigurationHost(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_INFO, "the device key bag is unlocked, reloading config...", v6, 2u);
  }

  notify_cancel(a2);
  return [*(a1 + 32) _reloadConfigWithReason:0];
}

- (void)_reloadConfigWithReason:(int64_t)reason
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SOConfigurationHost *)self _stringWithReason:reason];
    *buf = 136315650;
    v73 = "[SOConfigurationHost _reloadConfigWithReason:]";
    v74 = 2112;
    v75 = v5;
    v76 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s reason = %@ on %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (reason != 1)
  {
    [(SOConfigurationHost *)selfCopy2 _loadCacheFromDisk];
  }

  _defaultConfigurationFile = [(SOConfigurationHost *)selfCopy2 _defaultConfigurationFile];
  v6 = SO_LOG_SOConfigurationHost(_defaultConfigurationFile);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOConfigurationHost platformSSOProfile];
  }

  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
  v46 = [v7 _loadProfilesFromURL:v8 logFileError:1];

  v9 = [(SOConfigurationHost *)selfCopy2 _mergeProfile:v46 userProfiles:0];
  v10 = [(SOConfigurationHost *)selfCopy2 _checkExtensionsExistenceForProfiles:v9];

  v54 = [(SOConfigurationHost *)selfCopy2 _checkAssociatedDomainForProfiles:v10];

  if (reason == 2)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    profiles = [(SOConfiguration *)selfCopy2->_configuration profiles];
    v12 = [profiles countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (!v12)
    {
      v50 = 0;
      goto LABEL_33;
    }

    v50 = 0;
    v52 = *v64;
    obj = profiles;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v64 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v63 + 1) + 8 * v13);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v15 = v54;
        v16 = [v15 countByEnumeratingWithState:&v59 objects:v70 count:16];
        if (v16)
        {
          v17 = *v60;
LABEL_15:
          v18 = 0;
          while (1)
          {
            if (*v60 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v59 + 1) + 8 * v18);
            extensionBundleIdentifier = [v14 extensionBundleIdentifier];
            extensionBundleIdentifier2 = [v19 extensionBundleIdentifier];
            LOBYTE(v19) = [extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2];

            if (v19)
            {
              goto LABEL_24;
            }

            if (v16 == ++v18)
            {
              v16 = [v15 countByEnumeratingWithState:&v59 objects:v70 count:16];
              if (v16)
              {
                goto LABEL_15;
              }

              break;
            }
          }
        }

        extensionBundleIdentifier3 = [v14 extensionBundleIdentifier];
        v23 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier3];

        if (v23)
        {
          v15 = SO_LOG_SOConfigurationHost(v24);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            extensionBundleIdentifier4 = [v14 extensionBundleIdentifier];
            *buf = 138543362;
            v73 = extensionBundleIdentifier4;
            _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_INFO, "Removed configuration ignored for extension: %{public}@", buf, 0xCu);
          }

LABEL_24:

          goto LABEL_25;
        }

        array = v50;
        if (!v50)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v50 = array;
        [array addObject:{v14, v46}];
LABEL_25:
        ++v13;
      }

      while (v13 != v12);
      profiles = obj;
      v27 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
      v12 = v27;
      if (!v27)
      {
LABEL_33:

        objc_storeStrong(&selfCopy2->_removedProfiles, v50);
        v28 = [(NSMutableArray *)selfCopy2->_removedProfiles count];
        if (v28)
        {
          v29 = SO_LOG_SOConfigurationHost(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            removedProfiles = selfCopy2->_removedProfiles;
            *buf = 138477827;
            v73 = removedProfiles;
            _os_log_impl(&dword_1C1317000, v29, OS_LOG_TYPE_DEFAULT, "removed profiles = %{private}@", buf, 0xCu);
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = selfCopy2->_removedProfiles;
          v31 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v55 objects:v69 count:16];
          if (v31)
          {
            v32 = *v56;
            v33 = MEMORY[0x1E695E0F8];
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v56 != v32)
                {
                  objc_enumerationMutation(v53);
                }

                v35 = *(*(&v55 + 1) + 8 * i);
                v36 = objc_alloc_init(SOAuthorization);
                v67 = @"removedProfileExtensionBundleIdentifier";
                extensionBundleIdentifier5 = [v35 extensionBundleIdentifier];
                v68 = extensionBundleIdentifier5;
                v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
                [(SOAuthorization *)v36 setAuthorizationOptions:v38];

                v39 = objc_alloc_init(SOAuthorizationParameters);
                [(SOAuthorizationParameters *)v39 setOperation:@"configuration_removed"];
                v40 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F408B1A0];
                [(SOAuthorizationParameters *)v39 setUrl:v40];

                [(SOAuthorizationParameters *)v39 setHttpHeaders:v33];
                v41 = objc_opt_new();
                [(SOAuthorizationParameters *)v39 setHttpBody:v41];

                [(SOAuthorizationParameters *)v39 setUseInternalExtensions:0];
                [(SOAuthorization *)v36 beginAuthorizationWithParameters:v39];
              }

              v31 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v55 objects:v69 count:16];
            }

            while (v31);
          }
        }

        break;
      }
    }
  }

  v42 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:v54];
  configuration = selfCopy2->_configuration;
  selfCopy2->_configuration = v42;

  [(SOConfigurationHost *)selfCopy2 _configurationLoadedWithReason:reason];
  v44 = [(SOConfigurationHost *)selfCopy2 _stringWithReason:reason];
  [SOAnalytics analyticsForMDMProfiles:v54 reason:v44];

  configurationPendingLock = [(SOConfigurationHost *)selfCopy2 configurationPendingLock];
  objc_sync_enter(configurationPendingLock);
  [(SOConfigurationHost *)selfCopy2 setConfigurationPending:0];
  objc_sync_exit(configurationPendingLock);

  objc_sync_exit(selfCopy2);
}

- (id)_mergeProfile:(id)profile userProfiles:(id)profiles
{
  v29 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  profilesCopy = profiles;
  v8 = SO_LOG_SOConfigurationHost(profilesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(profileCopy, "count")}];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(profilesCopy, "count")}];
    v21 = 136315906;
    v22 = "[SOConfigurationHost _mergeProfile:userProfiles:]";
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s systemProfiles = %{public}@, userProfiles = %{public}@ on %@", &v21, 0x2Au);
  }

  v11 = [(SOConfigurationHost *)self _removeNotSupportedUserProfiles:profilesCopy];
  if (![v11 count])
  {
    v19 = profileCopy;
LABEL_14:
    v18 = v19;
    goto LABEL_19;
  }

  if (![profileCopy count] && objc_msgSend(v11, "count"))
  {
    v19 = v11;
    goto LABEL_14;
  }

  if ([profileCopy count] && objc_msgSend(v11, "count"))
  {
    v12 = [(SOConfigurationHost *)self findPlatformSSOProfile:profileCopy];
    v13 = [(SOConfigurationHost *)self findPlatformSSOProfile:v11];
    if (v12)
    {
      extensionBundleIdentifier = [v12 extensionBundleIdentifier];
      v15 = [(SOConfigurationHost *)self findProfileForExtension:extensionBundleIdentifier profiles:v11];

      if (v13 | v15)
      {
        extensionData = [v15 extensionData];
        [v12 setExtensionData:extensionData];

        pssoRegistrationToken = [v15 pssoRegistrationToken];
        [v12 setPssoRegistrationToken:pssoRegistrationToken];

        v18 = [v11 mutableCopy];
        [v18 removeObject:v15];
        [v18 addObject:v12];
      }

      else
      {
        v18 = [v11 arrayByAddingObject:v12];
      }
    }

    else
    {
      v18 = v11;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (void)_configurationLoadedWithReason:(int64_t)reason
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SOConfigurationHost *)self _stringWithReason:reason];
    configuration = self->_configuration;
    *buf = 136315906;
    v21 = "[SOConfigurationHost _configurationLoadedWithReason:]";
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = configuration;
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s reason = %{public}@, configuration = %{public}@ on %@", buf, 0x2Au);
  }

  if ([(SOConfiguration *)self->_configuration empty])
  {
    [(SOConfigurationVersion *)self->_configurationVersion setAppSSOUnavailable];
    if (!reason)
    {
      return;
    }

    v18 = @"reason";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v19 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v19;
    v11 = &v18;
  }

  else
  {
    if (reason == 1 || !reason && (([(SOConfigurationVersion *)self->_configurationVersion checkVersion], ![(SOConfigurationVersion *)self->_configurationVersion version]) || [(SOConfigurationVersion *)self->_configurationVersion version]== -1))
    {
      configurationVersion = self->_configurationVersion;
      v13 = [(SOConfigurationHost *)self _stringWithReason:reason];
      [(SOConfigurationVersion *)configurationVersion increaseVersionWithMessage:v13];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{reason, @"reason"}];
    v17 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v17;
    v11 = &v16;
  }

  v14 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.AppSSO.SOConfigurationHost.ConfigurationChanged" object:self userInfo:v14];
}

- (id)_checkExtensionsExistenceForProfiles:(id)profiles
{
  v28 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = SO_LOG_SOConfigurationHost(profilesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[SOConfigurationHost _checkExtensionsExistenceForProfiles:]";
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  obj = self;
  objc_sync_enter(obj);
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = profilesCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = +[SOExtensionManager sharedInstance];
        extensionBundleIdentifier = [v11 extensionBundleIdentifier];
        v14 = [v12 isLoadedExtensionWithBundleIdentifier:extensionBundleIdentifier];

        if (v14)
        {
          [array addObject:v11];
        }

        else
        {
          v16 = SO_LOG_SOConfigurationHost(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v25 = v11;
            _os_log_error_impl(&dword_1C1317000, v16, OS_LOG_TYPE_ERROR, "no extension available for profile (ignored): %{public}@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);

  return array;
}

- (id)_checkAssociatedDomainForProfiles:(id)profiles
{
  v101 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = SO_LOG_SOConfigurationHost(profilesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v91 = "[SOConfigurationHost _checkAssociatedDomainForProfiles:]";
    v92 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v68 = +[SOExtensionManager sharedInstance];
  objc_sync_enter(v68);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = profilesCopy;
  v6 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v6)
  {
    v7 = *v87;
    v8 = MEMORY[0x1E695E0F8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v87 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v86 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          v11 = +[SOExtensionManager sharedInstance];
          extensionBundleIdentifier = [v10 extensionBundleIdentifier];
          v13 = [v11 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier];

          extensionBundleIdentifier2 = [v10 extensionBundleIdentifier];
          LOBYTE(extensionBundleIdentifier) = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier2];

          if ((extensionBundleIdentifier & 1) == 0)
          {
            associatedDomainCache = selfCopy2->_associatedDomainCache;
            extensionBundleIdentifier3 = [v10 extensionBundleIdentifier];
            v17 = [(NSMutableDictionary *)associatedDomainCache objectForKeyedSubscript:extensionBundleIdentifier3];
            v18 = [v17 mutableCopy];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = [v8 mutableCopy];
            }

            v21 = v20;

            [v13 checkAssociatedDomainsWithCache:v21];
            v22 = selfCopy2->_associatedDomainCache;
            extensionBundleIdentifier4 = [v10 extensionBundleIdentifier];
            [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:extensionBundleIdentifier4];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v6);
  }

  v24 = selfCopy2->_associatedDomainCache;
  v85 = 0;
  v25 = [(SOConfigurationHost *)selfCopy2 _saveCacheToFile:v24 error:&v85];
  v26 = v85;
  v67 = v26;
  if (!v25)
  {
    v27 = SO_LOG_SOConfigurationHost(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _checkAssociatedDomainForProfiles:];
    }
  }

  v28 = +[SOPreferences isAssociatedDomainValidated];
  if (v28)
  {
    array = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v69 = obj;
    v72 = [v69 countByEnumeratingWithState:&v81 objects:v99 count:16];
    if (v72)
    {
      v71 = *v82;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v82 != v71)
          {
            objc_enumerationMutation(v69);
          }

          v29 = *(*(&v81 + 1) + 8 * j);
          if ([v29 type] != 1)
          {
            [array addObject:v29];
            continue;
          }

          v30 = +[SOExtensionManager sharedInstance];
          extensionBundleIdentifier5 = [v29 extensionBundleIdentifier];
          v76 = [v30 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier5];

          if (!v76)
          {
            v38 = SO_LOG_SOConfigurationHost(v32);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v91 = v29;
              _os_log_error_impl(&dword_1C1317000, v38, OS_LOG_TYPE_ERROR, "Associated domain: validation failed to find extension for profile: %{public}@, ignoring profile", buf, 0xCu);
            }

            goto LABEL_66;
          }

          extensionBundleIdentifier6 = [v29 extensionBundleIdentifier];
          v34 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:extensionBundleIdentifier6];

          if (!v34)
          {
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            uRLPrefix = [v29 URLPrefix];
            v40 = [uRLPrefix countByEnumeratingWithState:&v77 objects:v96 count:16];
            if (!v40)
            {
              goto LABEL_64;
            }

            v41 = *v78;
            while (1)
            {
              v42 = 0;
              do
              {
                if (*v78 != v41)
                {
                  objc_enumerationMutation(uRLPrefix);
                }

                v43 = *(*(&v77 + 1) + 8 * v42);
                v44 = [MEMORY[0x1E695DFF8] URLWithString:v43];
                scheme = [v44 scheme];
                if ([scheme isEqualToString:@"http"])
                {
                }

                else
                {
                  scheme2 = [v44 scheme];
                  v47 = [scheme2 isEqualToString:@"https"];

                  if ((v47 & 1) == 0)
                  {
                    v59 = SO_LOG_SOConfigurationHost(v48);
                    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_55;
                    }

                    *buf = 141558531;
                    v91 = 1752392040;
                    v92 = 2117;
                    selfCopy = v43;
                    v94 = 2114;
                    v95 = v76;
                    v60 = v59;
                    v61 = "Associated domain: validation removed URL: %{sensitive, mask.hash}@ because it is not a http scheme for extension %{public}@";
                    goto LABEL_62;
                  }
                }

                host = [v44 host];
                if ([host rangeOfString:@"*"] != 0x7FFFFFFFFFFFFFFFLL)
                {

LABEL_52:
                  v59 = SO_LOG_SOConfigurationHost(v52);
                  if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_55;
                  }

                  *buf = 141558531;
                  v91 = 1752392040;
                  v92 = 2117;
                  selfCopy = v43;
                  v94 = 2114;
                  v95 = v76;
                  v60 = v59;
                  v61 = "Associated domain: validation removed URL: %{sensitive, mask.hash}@ because it contains a wildcard in the host name for extension %{public}@";
LABEL_62:
                  _os_log_error_impl(&dword_1C1317000, v60, OS_LOG_TYPE_ERROR, v61, buf, 0x20u);
                  goto LABEL_55;
                }

                host2 = [v44 host];
                v51 = [host2 rangeOfString:@"?"] == 0x7FFFFFFFFFFFFFFFLL;

                if (!v51)
                {
                  goto LABEL_52;
                }

                v53 = selfCopy2->_associatedDomainCache;
                extensionBundleIdentifier7 = [v29 extensionBundleIdentifier];
                v55 = [(NSMutableDictionary *)v53 objectForKeyedSubscript:extensionBundleIdentifier7];
                LOBYTE(v53) = [v76 hasURLApprovedAssociatedDomain:v44 cache:v55];

                if (v53)
                {
                  goto LABEL_56;
                }

                hasAssociatedDomainsApproved = [v76 hasAssociatedDomainsApproved];
                v57 = hasAssociatedDomainsApproved;
                v58 = SO_LOG_SOConfigurationHost(hasAssociatedDomainsApproved);
                v59 = v58;
                if (v57)
                {
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 141558531;
                    v91 = 1752392040;
                    v92 = 2117;
                    selfCopy = v43;
                    v94 = 2114;
                    v95 = v76;
                    v60 = v59;
                    v61 = "Associated domain: validation removed URL: %{sensitive, mask.hash}@ because it has no approved associated domains for extensions %{public}@";
                    goto LABEL_62;
                  }

LABEL_55:

                  [v29 removeURLPrefix:v43];
                  goto LABEL_56;
                }

                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  *buf = 141558531;
                  v91 = 1752392040;
                  v92 = 2117;
                  selfCopy = v43;
                  v94 = 2114;
                  v95 = v76;
                  _os_log_impl(&dword_1C1317000, v59, OS_LOG_TYPE_INFO, "Associated domain: validation failed for URL: %{sensitive, mask.hash}@ because it has no approved associated domains for extensions %{public}@, it will be checked again when the extension is used", buf, 0x20u);
                }

LABEL_56:
                ++v42;
              }

              while (v40 != v42);
              v62 = [uRLPrefix countByEnumeratingWithState:&v77 objects:v96 count:16];
              v40 = v62;
              if (!v62)
              {
LABEL_64:

                uRLPrefix2 = [v29 URLPrefix];
                v64 = [uRLPrefix2 count] == 0;

                if (!v64)
                {
                  goto LABEL_65;
                }

                goto LABEL_66;
              }
            }
          }

          v36 = SO_LOG_SOConfigurationHost(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            extensionBundleIdentifier8 = [v29 extensionBundleIdentifier];
            [(SOConfigurationHost *)extensionBundleIdentifier8 _checkAssociatedDomainForProfiles:v97, &v98, v36];
          }

LABEL_65:
          [array addObject:v29];
LABEL_66:
        }

        v72 = [v69 countByEnumeratingWithState:&v81 objects:v99 count:16];
      }

      while (v72);
    }
  }

  else
  {
    v65 = SO_LOG_SOConfigurationHost(v28);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v65, OS_LOG_TYPE_INFO, "Associated domain: validation is ignored, using all URLs in AppSSO configuration", buf, 2u);
    }

    array = obj;
  }

  objc_sync_exit(v68);
  objc_sync_exit(selfCopy2);

  return array;
}

- (BOOL)_initDataVaultIfNeededWithError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = SO_LOG_SOConfigurationHost(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "[SOConfigurationHost _initDataVaultIfNeededWithError:]";
    v44 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationPath = [(SOConfigurationHost *)self _defaultConfigurationPath];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager fileExistsAtPath:_defaultConfigurationPath isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v10 = *MEMORY[0x1E696A328];
    v40[0] = *MEMORY[0x1E696A360];
    v40[1] = v10;
    v41[0] = @"mobile";
    v41[1] = @"mobile";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = 0;
    v13 = [defaultManager2 createDirectoryAtPath:_defaultConfigurationPath withIntermediateDirectories:1 attributes:v11 error:&v39];
    v14 = v39;

    if (v14)
    {
      v13 = 0;
    }

    v16 = SO_LOG_SOConfigurationHost(v15);
    v17 = v16;
    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _initDataVaultIfNeededWithError:];
      }

      if (error)
      {
        v27 = v14;
        *error = v14;
      }

      v28 = 0;
      goto LABEL_31;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = _defaultConfigurationPath;
      _os_log_impl(&dword_1C1317000, v17, OS_LOG_TYPE_DEFAULT, "created configuration directory at %{public}@", buf, 0xCu);
    }
  }

  v18 = _defaultConfigurationPath;
  [_defaultConfigurationPath UTF8String];
  v19 = rootless_check_datavault_flag();
  if (v19)
  {
    if (v19 == -1)
    {
      v20 = SO_LOG_SOConfigurationHost(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        [(SOConfigurationHost *)v22 _initDataVaultIfNeededWithError:buf];
      }

      if (error)
      {
        SOErrorHelperClass_3 = getSOErrorHelperClass_3();
        v24 = MEMORY[0x1E696AEC0];
        v25 = __error();
        v14 = [v24 stringWithFormat:@"failed to check the state of datavault: %s", strerror(*v25)];
        v26 = [SOErrorHelperClass_3 internalErrorWithMessage:v14];
LABEL_30:
        v28 = 0;
        *error = v26;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v29 = _defaultConfigurationPath;
      [_defaultConfigurationPath UTF8String];
      v30 = rootless_convert_to_datavault();
      v31 = v30;
      v32 = SO_LOG_SOConfigurationHost(v30);
      v14 = v32;
      if (v31 != -1)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v43 = _defaultConfigurationPath;
          _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEFAULT, "successfully created datavault at %{public}@", buf, 0xCu);
        }

        v28 = 1;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = __error();
        v34 = strerror(*v33);
        [(SOConfigurationHost *)v34 _initDataVaultIfNeededWithError:buf];
      }

      if (error)
      {
        v35 = getSOErrorHelperClass_3();
        v36 = MEMORY[0x1E696AEC0];
        v37 = __error();
        v14 = [v36 stringWithFormat:@"failed to convert to datavault: %s", strerror(*v37)];
        v26 = [v35 internalErrorWithMessage:v14];
        goto LABEL_30;
      }
    }

    v28 = 0;
    goto LABEL_32;
  }

  v28 = 1;
LABEL_32:
  objc_sync_exit(selfCopy2);

  return v28;
}

- (BOOL)_initCachePath:(id)path ifNeededWithError:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = SO_LOG_SOConfigurationHost(pathCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[SOConfigurationHost _initCachePath:ifNeededWithError:]";
    v47 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v9 = *MEMORY[0x1E696A328];
  v43[0] = *MEMORY[0x1E696A360];
  v43[1] = v9;
  v44[0] = @"mobile";
  v44[1] = @"mobile";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v42 = 0;
  v12 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:v10 error:&v42];
  v13 = v42;

  if (v13)
  {
    v12 = 0;
  }

  v15 = SO_LOG_SOConfigurationHost(v14);
  v16 = v15;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost saveConfiguration:error:];
    }

    if (error)
    {
      v30 = v13;
      *error = v13;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = pathCopy;
    _os_log_impl(&dword_1C1317000, v16, OS_LOG_TYPE_DEFAULT, "created cache directory at %{public}@", buf, 0xCu);
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v41 = 0;
  v18 = [defaultManager2 setAttributes:v10 ofItemAtPath:pathCopy error:&v41];
  v19 = v41;

  if ((v18 & 1) == 0)
  {
    v31 = SO_LOG_SOConfigurationHost(v20);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _initCachePath:ifNeededWithError:];
    }

    if (error)
    {
      v32 = v19;
      *error = v19;
    }

LABEL_26:
    objc_sync_exit(selfCopy2);
    LOBYTE(v22) = 0;
LABEL_27:

    goto LABEL_28;
  }

  objc_sync_exit(selfCopy2);
  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = [defaultManager3 fileExistsAtPath:pathCopy isDirectory:0];

  if (v22)
  {
    v23 = pathCopy;
    [pathCopy UTF8String];
    v24 = rootless_check_datavault_flag();
    if (!v24)
    {
      LOBYTE(v22) = 1;
      goto LABEL_28;
    }

    if (v24 == -1)
    {
      v25 = SO_LOG_SOConfigurationHost(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _initCachePath:ifNeededWithError:];
      }

      if (error)
      {
        SOErrorHelperClass_3 = getSOErrorHelperClass_3();
        v27 = MEMORY[0x1E696AEC0];
        v28 = __error();
        selfCopy2 = [v27 stringWithFormat:@"failed to check the state of datavault: %s", strerror(*v28)];
        v29 = [SOErrorHelperClass_3 internalErrorWithMessage:selfCopy2];
LABEL_38:
        LOBYTE(v22) = 0;
        *error = v29;
        goto LABEL_27;
      }
    }

    else
    {
      v34 = pathCopy;
      [pathCopy UTF8String];
      v35 = rootless_convert_to_datavault();
      v36 = v35;
      v37 = SO_LOG_SOConfigurationHost(v35);
      selfCopy2 = v37;
      if (v36 != -1)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v46 = pathCopy;
          _os_log_impl(&dword_1C1317000, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "successfully created datavault at %{public}@", buf, 0xCu);
        }

        LOBYTE(v22) = 1;
        goto LABEL_27;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _initCachePath:ifNeededWithError:];
      }

      if (error)
      {
        v38 = getSOErrorHelperClass_3();
        v39 = MEMORY[0x1E696AEC0];
        v40 = __error();
        selfCopy2 = [v39 stringWithFormat:@"failed to convert to datavault: %s", strerror(*v40)];
        v29 = [v38 internalErrorWithMessage:selfCopy2];
        goto LABEL_38;
      }
    }

    LOBYTE(v22) = 0;
  }

LABEL_28:

  return v22;
}

- (BOOL)_saveConfigToFile:(id)file error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v7 = SO_LOG_SOConfigurationHost(fileCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[SOConfigurationHost _saveConfigToFile:error:]";
    v34 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if ([(SOConfigurationHost *)selfCopy2 _initDataVaultIfNeededWithError:error])
  {
    _defaultConfigurationFile = [(SOConfigurationHost *)selfCopy2 _defaultConfigurationFile];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultConfigurationFile];
    v29 = 0;
    v11 = [fileCopy writeToURL:v10 error:&v29];
    v12 = v29;

    if (v11)
    {
      v14 = *MEMORY[0x1E696A328];
      v30[0] = *MEMORY[0x1E696A360];
      v30[1] = v14;
      v31[0] = @"mobile";
      v31[1] = @"mobile";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v28 = 0;
      v17 = [defaultManager setAttributes:v15 ofItemAtPath:_defaultConfigurationFile error:&v28];
      v18 = v28;

      v20 = SO_LOG_SOConfigurationHost(v19);
      v21 = v20;
      if (v17)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [objc_opt_class() maskRegistrationTokenInProfileList:fileCopy];
          *buf = 138543618;
          v33 = _defaultConfigurationFile;
          v34 = 2112;
          selfCopy = v22;
          _os_log_impl(&dword_1C1317000, v21, OS_LOG_TYPE_DEFAULT, "config written to file: %{public}@, %@", buf, 0x16u);
        }

        v23 = 1;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveConfigToFile:error:];
      }

      if (error)
      {
        v26 = v18;
        *error = v18;
      }
    }

    else
    {
      v24 = SO_LOG_SOConfigurationHost(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveConfigToFile:error:];
      }

      if (error)
      {
        v25 = v12;
        v23 = 0;
        *error = v12;
LABEL_20:

        goto LABEL_21;
      }
    }

    v23 = 0;
    goto LABEL_20;
  }

  v23 = 0;
LABEL_21:
  objc_sync_exit(selfCopy2);

  return v23;
}

- (BOOL)_saveCacheToFile:(id)file error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v7 = SO_LOG_SOConfigurationHost(fileCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[SOConfigurationHost _saveCacheToFile:error:]";
    v42 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  _defaultCacheFile = [(SOConfigurationHost *)selfCopy2 _defaultCacheFile];
  stringByDeletingLastPathComponent = [_defaultCacheFile stringByDeletingLastPathComponent];

  if ([(SOConfigurationHost *)selfCopy2 _initCachePath:stringByDeletingLastPathComponent ifNeededWithError:error])
  {
    _defaultCacheFile2 = [(SOConfigurationHost *)selfCopy2 _defaultCacheFile];
    v37 = 0;
    v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:fileCopy options:3 error:&v37];
    v13 = v37;
    v34 = v13;
    if (!v12)
    {
      v27 = SO_LOG_SOConfigurationHost(v13);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveCacheToFile:error:];
      }

      if (error)
      {
        v28 = v34;
        v26 = 0;
        *error = v34;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_26;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultCacheFile2];
    [defaultManager removeItemAtURL:v15 error:0];

    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:_defaultCacheFile2];
    v36 = 0;
    LODWORD(v15) = [v12 writeToURL:v16 options:0 error:&v36];
    v17 = v36;

    if (v15)
    {
      v19 = *MEMORY[0x1E696A328];
      v38[0] = *MEMORY[0x1E696A360];
      v38[1] = v19;
      v39[0] = @"mobile";
      v39[1] = @"mobile";
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = 0;
      v21 = [defaultManager2 setAttributes:v33 ofItemAtPath:_defaultCacheFile2 error:&v35];
      v22 = v35;

      v24 = SO_LOG_SOConfigurationHost(v23);
      v25 = v24;
      if (v21)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v41 = _defaultCacheFile2;
          v42 = 2114;
          selfCopy = fileCopy;
          _os_log_impl(&dword_1C1317000, v25, OS_LOG_TYPE_DEFAULT, "cache written to file: %{public}@, %{public}@", buf, 0x16u);
        }

        v26 = 1;
        goto LABEL_25;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveConfigToFile:error:];
      }

      if (error)
      {
        v31 = v22;
        *error = v22;
      }
    }

    else
    {
      v29 = SO_LOG_SOConfigurationHost(v18);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SOConfigurationHost _saveCacheToFile:error:];
      }

      if (error)
      {
        v30 = v17;
        v26 = 0;
        *error = v17;
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }
    }

    v26 = 0;
    goto LABEL_25;
  }

  v26 = 0;
LABEL_27:

  objc_sync_exit(selfCopy2);
  return v26;
}

- (void)_extensionsLoaded:(id)loaded
{
  v56 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  v4 = SO_LOG_SOConfigurationHost(loadedCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[SOConfigurationHost _extensionsLoaded:]";
    v52 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  userInfo = [loadedCopy userInfo];
  v29 = [userInfo objectForKeyedSubscript:@"extensions"];

  userInfo2 = [loadedCopy userInfo];
  v31 = [userInfo2 objectForKeyedSubscript:@"new"];

  userInfo3 = [loadedCopy userInfo];
  v32 = [userInfo3 objectForKeyedSubscript:@"removed"];

  v9 = SO_LOG_SOConfigurationHost(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v51 = v29;
    v52 = 2114;
    selfCopy = v31;
    v54 = 2114;
    v55 = v32;
    _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_INFO, "extensions changed: %{public}@, new: %{public}@, removed: %{public}@", buf, 0x20u);
  }

  if ([v32 count])
  {
    configurationPendingLock = [(SOConfigurationHost *)selfCopy2 configurationPendingLock];
    objc_sync_enter(configurationPendingLock);
    [(SOConfigurationHost *)selfCopy2 setConfigurationPending:1];
    objc_sync_exit(configurationPendingLock);

    v11 = selfCopy2;
    objc_sync_enter(v11);
    v30 = v11;
    profiles = [v11[1] profiles];
    v13 = [profiles mutableCopy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v32;
    v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v37)
    {
      v36 = *v45;
      do
      {
        v38 = 0;
        do
        {
          if (*v45 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * v38);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v15 = [v13 copy];
          v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v16)
          {
            v17 = *v41;
            do
            {
              v18 = 0;
              do
              {
                if (*v41 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v40 + 1) + 8 * v18);
                extensionBundleIdentifier = [v14 extensionBundleIdentifier];
                extensionBundleIdentifier2 = [v19 extensionBundleIdentifier];
                v22 = [extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2];

                if (v22)
                {
                  [v13 removeObject:v19];
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v16);
          }

          ++v38;
        }

        while (v38 != v37);
        v37 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v37);
    }

    v23 = [objc_alloc(getSOConfigurationClass()) initWithProfiles:v13];
    v24 = v30[1];
    v30[1] = v23;

    [v30 _configurationLoadedWithReason:1];
    v25 = [v30 _stringWithReason:1];
    [SOAnalytics analyticsForMDMProfiles:v13 reason:v25];

    configurationPendingLock2 = [v30 configurationPendingLock];
    objc_sync_enter(configurationPendingLock2);
    [v30 setConfigurationPending:0];
    objc_sync_exit(configurationPendingLock2);

    objc_sync_exit(v30);
  }

  if ([(SOConfigurationHost *)v31 count])
  {
    configurationPendingLock3 = [(SOConfigurationHost *)selfCopy2 configurationPendingLock];
    objc_sync_enter(configurationPendingLock3);
    [(SOConfigurationHost *)selfCopy2 setConfigurationPending:1];
    objc_sync_exit(configurationPendingLock3);

    v28 = dispatch_time(0, 3000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SOConfigurationHost__extensionsLoaded___block_invoke;
    block[3] = &unk_1E813ECB8;
    block[4] = selfCopy2;
    dispatch_after(v28, MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(selfCopy2);
}

- (BOOL)_isConfigFileAvailable
{
  v2 = MEMORY[0x1E695DF20];
  v3 = MEMORY[0x1E695DFF8];
  _defaultConfigurationFile = [(SOConfigurationHost *)self _defaultConfigurationFile];
  v5 = [v3 fileURLWithPath:_defaultConfigurationFile];
  v11 = 0;
  v6 = [v2 dictionaryWithContentsOfURL:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    v9 = SO_LOG_SOConfigurationHost(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOConfigurationHost _isConfigFileAvailable];
    }
  }

  return v6 != 0;
}

- (id)_stringWithReason:(int64_t)reason
{
  v3 = @"FirstLoad";
  if (reason == 1)
  {
    v3 = @"ExtensionsChanged";
  }

  if (reason == 2)
  {
    return @"ModifiedByMDM";
  }

  else
  {
    return v3;
  }
}

+ (id)maskRegistrationTokenInConfigurationData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy mutableCopy];
  v5 = [dataCopy objectForKeyedSubscript:@"RegistrationToken"];

  if (v5)
  {
    v6 = @"present";
  }

  else
  {
    v6 = @"<null>";
  }

  [v4 setObject:v6 forKeyedSubscript:@"RegistrationToken"];

  return v4;
}

+ (id)maskRegistrationTokenInProfileList:(id)list
{
  v24 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = [listCopy objectForKeyedSubscript:@"Profiles"];

  if (v4)
  {
    v17 = [listCopy mutableCopy];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = listCopy;
    v6 = [listCopy objectForKeyedSubscript:@"Profiles"];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 mutableCopy];
          v13 = [v11 objectForKeyedSubscript:@"RegistrationToken"];
          if (v13)
          {
            v14 = @"present";
          }

          else
          {
            v14 = @"<null>";
          }

          [v12 setObject:v14 forKeyedSubscript:@"RegistrationToken"];

          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = v17;
    [v17 setObject:v5 forKeyedSubscript:@"Profiles"];

    listCopy = v18;
  }

  else
  {
    v15 = listCopy;
  }

  return v15;
}

- (id)_defaultConfigurationFile
{
  v2 = MEMORY[0x1E696AEC0];
  _defaultConfigurationPath = [(SOConfigurationHost *)self _defaultConfigurationPath];
  v4 = [v2 stringWithFormat:@"%@/%@", _defaultConfigurationPath, @"com.apple.AppSSO.configuration.plist"];

  return v4;
}

- (id)_defaultCacheFile
{
  v2 = MEMORY[0x1E696AEC0];
  _defaultConfigurationPath = [(SOConfigurationHost *)self _defaultConfigurationPath];
  v4 = [v2 stringWithFormat:@"%@/Cache/%@", _defaultConfigurationPath, @"com.apple.AppSSO.cache.json"];

  return v4;
}

+ (void)defaultManager
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveConfiguration:error:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveConfigurationData:(void *)a1 error:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 5.808e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)profileForURL:responseCode:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)platformSSOProfile
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)willHandleURL:responseCode:callerBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

- (void)willHandleURL:responseCode:callerBundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

- (void)isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_15(v0, v1, v2, v3, v4);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isConfigurationActiveForExtensionIdentifier:runningAsAgent:completion:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_loadProfilesFromDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_loadProfilesFromDict:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 5.808e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)_loadProfilesFromDict:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_loadProfilesFromDict:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_checkAssociatedDomainForProfiles:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkAssociatedDomainForProfiles:(void *)a3 .cold.2(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&dword_1C1317000, log, OS_LOG_TYPE_DEBUG, "Associated domain: validation skipped for extension: %{public}@", buf, 0xCu);
}

- (void)_initDataVaultIfNeededWithError:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 4.8751e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initDataVaultIfNeededWithError:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13(a1, a2, 4.8751e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initCachePath:ifNeededWithError:.cold.3()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14(&dword_1C1317000, v1, v2, "failed to check the state of datavault: %{public}s", v3, v4, v5, v6);
}

- (void)_initCachePath:ifNeededWithError:.cold.4()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14(&dword_1C1317000, v1, v2, "failed to convert to datavault: %{public}s", v3, v4, v5, v6);
}

- (void)_isConfigFileAvailable
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end