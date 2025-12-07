@interface RemoteConfigurationController
+ (id)sharedController;
- (BOOL)_shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:(id)date;
- (BOOL)forceLoadConfigurationFromDisk;
- (BOOL)forceUpdateConfigurationFromServer;
- (BOOL)isSafeBrowsingOff;
- (RemoteConfigurationController)init;
- (id)_dyldSourceVersionString;
- (id)_lastConfigurationUpdateAttemptDate;
- (id)_providerToTurnOffFromProviderDictionary:(id)dictionary;
- (id)_urlOfDownloadedConfiguration;
- (unint64_t)_launchTimeBasedPercentile;
- (void)_didReceiveConfigurationData:(id)data;
- (void)_downloadConfigurationWithCompletionHandler:(id)handler;
- (void)_initializeProviderConfigurationsWithConfiguration:(id)configuration;
- (void)_initializeToDefaultProviderConfigurations;
- (void)_loadConfigurationFromDiskIfNecessary;
- (void)_notifyProviderConfigurationsDidChangeIfNecessary;
- (void)_scheduleConfigurationUpdateDaily;
- (void)_setCurrentConfigurationOnInternalQueue:(id)queue;
- (void)_setCurrentDateAsLastConfigurationUpdateAttemptDate;
- (void)_simplifyProviderConfigurations;
- (void)_updateConfigurationIfNecessary;
- (void)_urlOfDownloadedConfiguration;
- (void)_writeConfigurationToDisk:(id)disk;
- (void)dealloc;
- (void)setCurrentConfiguration:(id)configuration;
@end

@implementation RemoteConfigurationController

+ (id)sharedController
{
  if (+[RemoteConfigurationController sharedController]::onceToken != -1)
  {
    +[RemoteConfigurationController sharedController];
  }

  v3 = +[RemoteConfigurationController sharedController]::sharedController;

  return v3;
}

uint64_t __49__RemoteConfigurationController_sharedController__block_invoke()
{
  +[RemoteConfigurationController sharedController]::sharedController = objc_alloc_init(RemoteConfigurationController);

  return MEMORY[0x2821F96F8]();
}

- (RemoteConfigurationController)init
{
  v7.receiver = self;
  v7.super_class = RemoteConfigurationController;
  v2 = [(RemoteConfigurationController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.RemoteConfigurationController.InternalQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    [(RemoteConfigurationController *)v2 _loadConfigurationFromDiskIfNecessary];
    [(RemoteConfigurationController *)v2 _updateConfigurationIfNecessary];
    [(RemoteConfigurationController *)v2 _initializeProviderConfigurationsWithConfiguration:v2->_currentConfiguration];
    [(RemoteConfigurationController *)v2 _scheduleConfigurationUpdateDaily];
    [(RemoteConfigurationController *)v2 _resetProviderConfigurationsDidChange];
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RemoteConfigurationController_dealloc__block_invoke;
  block[3] = &unk_278565058;
  block[4] = self;
  dispatch_sync(internalQueue, block);
  v4.receiver = self;
  v4.super_class = RemoteConfigurationController;
  [(RemoteConfigurationController *)&v4 dealloc];
}

void __40__RemoteConfigurationController_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (BOOL)isSafeBrowsingOff
{
  if (![self->_googleProviderConfiguration providerOff]|| ![self->_tencentProviderConfiguration providerOff])
  {
    return 0;
  }

  appleProviderConfiguration = self->_appleProviderConfiguration;

  return [appleProviderConfiguration providerOff];
}

- (id)_providerToTurnOffFromProviderDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"Provider To Turn Off"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v5;
}

- (void)_initializeToDefaultProviderConfigurations
{
  googleProviderConfiguration = self->_googleProviderConfiguration;
  if (googleProviderConfiguration && ![googleProviderConfiguration isEqualToConfiguration:0])
  {
    self->_googleConfigurationDidChange = 1;
  }

  v4 = [[ProviderConfiguration alloc] initWithConfiguration:0];
  v5 = self->_googleProviderConfiguration;
  self->_googleProviderConfiguration = v4;

  tencentProviderConfiguration = self->_tencentProviderConfiguration;
  if (tencentProviderConfiguration && ![tencentProviderConfiguration isEqualToConfiguration:0])
  {
    self->_tencentConfigurationDidChange = 1;
  }

  v7 = [[ProviderConfiguration alloc] initWithConfiguration:0];
  v8 = self->_tencentProviderConfiguration;
  self->_tencentProviderConfiguration = v7;

  appleProviderConfiguration = self->_appleProviderConfiguration;
  if (appleProviderConfiguration && ![appleProviderConfiguration isEqualToConfiguration:0])
  {
    self->_appleConfigurationDidChange = 1;
  }

  self->_appleProviderConfiguration = [[ProviderConfiguration alloc] initWithConfiguration:0];

  MEMORY[0x2821F96F8]();
}

- (void)_simplifyProviderConfigurations
{
  if (![self->_googleProviderConfiguration providerOff])
  {
    if ([self->_googleProviderConfiguration socialEngineeringThreatTypeOff])
    {
      malwareThreatTypeOff = [self->_googleProviderConfiguration malwareThreatTypeOff];
    }

    else
    {
      malwareThreatTypeOff = 0;
    }

    [self->_googleProviderConfiguration setProviderOff:malwareThreatTypeOff];
  }

  if (![self->_tencentProviderConfiguration providerOff])
  {
    [self->_tencentProviderConfiguration setProviderOff:[self->_tencentProviderConfiguration socialEngineeringThreatTypeOff]];
  }

  if (![self->_appleProviderConfiguration providerOff])
  {
    socialEngineeringThreatTypeOff = [self->_appleProviderConfiguration socialEngineeringThreatTypeOff];
    appleProviderConfiguration = self->_appleProviderConfiguration;

    [appleProviderConfiguration setProviderOff:socialEngineeringThreatTypeOff];
  }
}

- (id)_dyldSourceVersionString
{
  if ([RemoteConfigurationController _dyldSourceVersionString]::once != -1)
  {
    [RemoteConfigurationController _dyldSourceVersionString];
  }

  v3 = [RemoteConfigurationController _dyldSourceVersionString]::versionString;

  return v3;
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke()
{
  v0 = dyld_image_header_containing_address();
  if (v0)
  {
    if (*v0 == -17958193)
    {
      v2 = v0[4];
      if (!v2)
      {
        goto LABEL_16;
      }

      v3 = v0 + 8;
      while (*v3 != 42)
      {
        v3 = (v3 + v3[1]);
        if (!--v2)
        {
          goto LABEL_16;
        }
      }

      if (*(v3 + 1))
      {
        [RemoteConfigurationController _dyldSourceVersionString]::versionString = [RemoteConfigurationController convertDyldVersionToString:?];

        MEMORY[0x2821F96F8]();
      }

      else
      {
LABEL_16:
        v6 = SSBOSLogRemoteConfiguration(v0, v1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_2();
        }
      }
    }

    else
    {
      v5 = SSBOSLogRemoteConfiguration(v0, v1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = SSBOSLogRemoteConfiguration(0, v1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_3();
    }
  }
}

- (unint64_t)_launchTimeBasedPercentile
{
  if ([RemoteConfigurationController _launchTimeBasedPercentile]::once != -1)
  {
    [RemoteConfigurationController _launchTimeBasedPercentile];
  }

  return [RemoteConfigurationController _launchTimeBasedPercentile]::percentile;
}

uint64_t __59__RemoteConfigurationController__launchTimeBasedPercentile__block_invoke()
{
  result = gettimeofday(&v1, 0);
  [RemoteConfigurationController _launchTimeBasedPercentile]::percentile = v1.tv_usec % 100;
  return result;
}

- (void)_initializeProviderConfigurationsWithConfiguration:(id)configuration
{
  v85 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    selfCopy = self;
    _dyldSourceVersionString = [(RemoteConfigurationController *)self _dyldSourceVersionString];
    if (_dyldSourceVersionString)
    {
      v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = [configurationCopy ssb_arrayForKey:@"Configurations"];
      v56 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
      if (!v56)
      {
        goto LABEL_49;
      }

      v55 = *v77;
      while (1)
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v77 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v76 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((isKindOfClass & 1) == 0)
          {
            v8 = SSBOSLogRemoteConfiguration(isKindOfClass, v7);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v22 = objc_opt_class();
              *buf = 138543362;
              v83 = v22;
              _os_log_error_impl(&dword_2255EE000, v8, OS_LOG_TYPE_ERROR, "Skipped an entry in the configuration. Expected a NSDictionary, got %{public}@", buf, 0xCu);
            }

            goto LABEL_47;
          }

          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v8 = [v5 ssb_arrayForKey:@"VersionRanges"];
          v9 = [v8 countByEnumeratingWithState:&v72 objects:v81 count:16];
          if (!v9)
          {
            goto LABEL_47;
          }

          v10 = *v73;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v73 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v72 + 1) + 8 * j);
              objc_opt_class();
              v13 = objc_opt_isKindOfClass();
              if ((v13 & 1) == 0)
              {
                v15 = SSBOSLogRemoteConfiguration(v13, v14);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  v20 = objc_opt_class();
                  *buf = 138543362;
                  v83 = v20;
                  _os_log_error_impl(&dword_2255EE000, v15, OS_LOG_TYPE_ERROR, "Skipped an version range in the configuration. Expected a NSDictionary, got %{public}@", buf, 0xCu);
                }

                goto LABEL_25;
              }

              v15 = [v12 ssb_stringForKey:@"MinVersion"];
              v16 = [v12 ssb_stringForKey:@"MaxVersion"];
              v17 = [v15 length];
              if (!v17 || (v17 = [v16 length]) == 0)
              {
                v21 = SSBOSLogRemoteConfiguration(v17, v18);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  [(RemoteConfigurationController *)&v70 _initializeProviderConfigurationsWithConfiguration:v71, v21];
                }

LABEL_24:

LABEL_25:
                continue;
              }

              if ([_dyldSourceVersionString compare:v15 options:64] == -1)
              {
                goto LABEL_24;
              }

              v19 = [_dyldSourceVersionString compare:v16 options:64] == 1;

              if (!v19)
              {

                v23 = [v5 objectForKey:@"Percentage To Apply To"];
                v8 = v23;
                if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v24 = [v8 unsignedIntegerValue], [(RemoteConfigurationController *)selfCopy _launchTimeBasedPercentile]< v24))
                {
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v57 = [v5 ssb_arrayForKey:{@"Providers", configurationCopy}];
                  v60 = [v57 countByEnumeratingWithState:&v66 objects:v80 count:16];
                  if (v60)
                  {
                    v59 = *v67;
LABEL_36:
                    v25 = 0;
                    while (1)
                    {
                      if (*v67 != v59)
                      {
                        objc_enumerationMutation(v57);
                      }

                      v26 = *(*(&v66 + 1) + 8 * v25);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        break;
                      }

                      v27 = [v26 ssb_stringForKey:@"Provider To Turn Off"];
                      v28 = [v62 objectForKeyedSubscript:v27];
                      v29 = v26;
                      if (v28)
                      {
                        v64 = [v28 ssb_stringForKey:@"Provider To Turn Off"];
                        v63 = v29;
                        v61 = [v29 ssb_stringForKey:@"Provider To Turn Off"];
                        v29 = v28;
                        if ([v64 isEqualToString:?])
                        {
                          v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
                          [v29 setObject:v64 forKeyedSubscript:@"Provider To Turn Off"];
                          v30 = [v28 ssb_arrayForKey:@"Regions To Turn Off"];
                          v31 = [v63 ssb_arrayForKey:@"Regions To Turn Off"];
                          v32 = mergeConfigurationArrayIfBothNotNil(v30, v31);
                          [v29 setObject:v32 forKeyedSubscript:@"Regions To Turn Off"];

                          v33 = [v28 ssb_arrayForKey:@"Threat Types To Turn Off"];
                          v34 = [v63 ssb_arrayForKey:@"Threat Types To Turn Off"];
                          v35 = mergeConfigurationArrayIfBothNotNil(v33, v34);
                          [v29 setObject:v35 forKeyedSubscript:@"Threat Types To Turn Off"];

                          v36 = [v28 ssb_arrayForKey:@"Proxy Versions To Turn Off"];
                          v37 = [v63 ssb_arrayForKey:@"Proxy Versions To Turn Off"];
                          v38 = mergeConfigurationArray(v36, v37);
                          [v29 setObject:v38 forKeyedSubscript:@"Proxy Versions To Turn Off"];
                        }
                      }

                      [v62 setObject:v29 forKeyedSubscript:v27];

                      if (v60 == ++v25)
                      {
                        v60 = [v57 countByEnumeratingWithState:&v66 objects:v80 count:16];
                        if (v60)
                        {
                          goto LABEL_36;
                        }

                        break;
                      }
                    }
                  }
                }

                goto LABEL_47;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v72 objects:v81 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

LABEL_47:
        }

        v56 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (!v56)
        {
LABEL_49:

          v39 = [v62 objectForKeyedSubscript:@"Google"];
          v40 = [selfCopy->_googleProviderConfiguration isEqualToConfiguration:v39];
          selfCopy->_googleConfigurationDidChange = !v40;
          if (!v40)
          {
            v41 = [[ProviderConfiguration alloc] initWithConfiguration:v39];
            googleProviderConfiguration = selfCopy->_googleProviderConfiguration;
            selfCopy->_googleProviderConfiguration = v41;
          }

          v43 = [v62 objectForKeyedSubscript:{@"Tencent", configurationCopy}];
          v44 = [selfCopy->_tencentProviderConfiguration isEqualToConfiguration:v43];
          selfCopy->_tencentConfigurationDidChange = !v44;
          if (!v44)
          {
            v45 = [[ProviderConfiguration alloc] initWithConfiguration:v43];
            tencentProviderConfiguration = selfCopy->_tencentProviderConfiguration;
            selfCopy->_tencentProviderConfiguration = v45;
          }

          v47 = [v62 objectForKeyedSubscript:@"Apple"];
          v48 = [selfCopy->_googleProviderConfiguration isEqualToConfiguration:v47];
          selfCopy->_appleConfigurationDidChange = !v48;
          if (!v48)
          {
            v49 = [[ProviderConfiguration alloc] initWithConfiguration:v47];
            appleProviderConfiguration = selfCopy->_appleProviderConfiguration;
            selfCopy->_appleProviderConfiguration = v49;
          }

          [(RemoteConfigurationController *)selfCopy _simplifyProviderConfigurations];

          goto LABEL_60;
        }
      }
    }

    v51 = SSBOSLogRemoteConfiguration(0, v4);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      [RemoteConfigurationController _initializeProviderConfigurationsWithConfiguration:];
    }

    [(RemoteConfigurationController *)self _initializeToDefaultProviderConfigurations];
LABEL_60:
  }

  else
  {
    [(RemoteConfigurationController *)self _initializeToDefaultProviderConfigurations];
  }
}

- (id)_urlOfDownloadedConfiguration
{
  v22[4] = *MEMORY[0x277D85DE8];
  v2 = geteuid();
  if (!v2)
  {
    v2 = getuid();
  }

  v3 = getpwuid(v2);
  if (v3 && (pw_dir = v3->pw_dir) != 0)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:pw_dir isDirectory:1 relativeToURL:0];
    v8 = v6;
    if (v6)
    {
      v9 = [v6 URLByAppendingPathComponent:@"Library"];
      v10 = [v9 URLByAppendingPathComponent:@"SafariSafeBrowsing" isDirectory:1];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v10 path];
      v22[0] = 0;
      v13 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:v22];
      v14 = v22[0];

      if (v13)
      {
        v17 = [@"SafeBrowsingRemoteConfiguration-1" stringByAppendingPathExtension:@"plist"];
        v18 = [v10 URLByAppendingPathComponent:v17];
      }

      else
      {
        v17 = SSBOSLogRemoteConfiguration(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [v14 ssb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [RemoteConfigurationController _urlOfDownloadedConfiguration];
        }

        v18 = 0;
      }
    }

    else
    {
      v20 = SSBOSLogRemoteConfiguration(0, v7);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [RemoteConfigurationController _urlOfDownloadedConfiguration];
      }

      v18 = 0;
    }
  }

  else
  {
    v19 = SSBOSLogRemoteConfiguration(v3, v4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [RemoteConfigurationController _urlOfDownloadedConfiguration];
    }

    v18 = 0;
  }

  return v18;
}

- (void)_loadConfigurationFromDiskIfNecessary
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke;
  block[3] = &unk_278565058;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = [v2 _urlOfDownloadedConfiguration];
    if (v3)
    {
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      v5 = [v3 path];
      v6 = [v4 fileExistsAtPath:v5];

      if (v6)
      {
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
        v8 = *(a1 + 32);
        v9 = *(v8 + 56);
        *(v8 + 56) = v7;

        if (!*(*(a1 + 32) + 56))
        {
          v12 = SSBOSLogRemoteConfiguration(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __70__RemoteConfigurationController__loadConfigurationFromDiskIfNecessary__block_invoke_cold_1();
          }
        }
      }
    }
  }
}

- (void)_writeConfigurationToDisk:(id)disk
{
  v12[4] = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  _urlOfDownloadedConfiguration = [(RemoteConfigurationController *)self _urlOfDownloadedConfiguration];
  if (_urlOfDownloadedConfiguration)
  {
    if (diskCopy)
    {
      [diskCopy writeToURL:_urlOfDownloadedConfiguration atomically:1];
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v12[0] = 0;
      v7 = [defaultManager removeItemAtURL:_urlOfDownloadedConfiguration error:v12];
      v8 = v12[0];

      if ((v7 & 1) == 0)
      {
        v11 = SSBOSLogRemoteConfiguration(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [v8 ssb_privacyPreservingDescription];
          objc_claimAutoreleasedReturnValue();
          [RemoteConfigurationController _writeConfigurationToDisk:];
        }
      }
    }
  }
}

- (void)setCurrentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RemoteConfigurationController_setCurrentConfiguration___block_invoke;
  v7[3] = &unk_278565080;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)_setCurrentConfigurationOnInternalQueue:(id)queue
{
  queueCopy = queue;
  currentConfiguration = self->_currentConfiguration;
  v7 = queueCopy;
  if (queueCopy | currentConfiguration && (!queueCopy || ![(NSDictionary *)currentConfiguration isEqualToDictionary:queueCopy]))
  {
    objc_storeStrong(&self->_currentConfiguration, queue);
    [(RemoteConfigurationController *)self _initializeProviderConfigurationsWithConfiguration:self->_currentConfiguration];
    [(RemoteConfigurationController *)self _writeConfigurationToDisk:self->_currentConfiguration];
    [(RemoteConfigurationController *)self _notifyProviderConfigurationsDidChangeIfNecessary];
  }
}

- (void)_notifyProviderConfigurationsDidChangeIfNecessary
{
  selfCopy = self;
  if (self->_googleConfigurationDidChange)
  {
    self = notify_post("com.apple.Safari.SafeBrowsing.GoogleRemoteConfigurationDidChange");
  }

  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(self);
  if (shouldConsultWithTencent && selfCopy->_tencentConfigurationDidChange)
  {
    shouldConsultWithTencent = notify_post("com.apple.Safari.SafeBrowsing.TencentRemoteConfigurationDidChange");
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent) && selfCopy->_appleConfigurationDidChange)
  {
    notify_post("com.apple.Safari.SafeBrowsing.AppleRemoteConfigurationDidChange");
  }

  [(RemoteConfigurationController *)selfCopy _resetProviderConfigurationsDidChange];
}

- (void)_downloadConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277CBABB8] = [MEMORY[0x277CBABB8] sharedSession];
  v5 = configurationBaseURL();
  v6 = [@"SafeBrowsingRemoteConfiguration-1" stringByAppendingPathExtension:@"plist"];
  v7 = [v5 URLByAppendingPathComponent:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke;
  v10[3] = &unk_2785650A8;
  v8 = handlerCopy;
  v11 = v8;
  v9 = [mEMORY[0x277CBABB8] dataTaskWithURL:v7 completionHandler:v10];
  [v9 resume];
}

void __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = v9;
  if (!v7 && v9)
  {
    v12 = SSBOSLogRemoteConfiguration(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v11 ssb_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_updateConfigurationIfNecessary
{
  _lastConfigurationUpdateAttemptDate = [(RemoteConfigurationController *)self _lastConfigurationUpdateAttemptDate];
  v4 = [(RemoteConfigurationController *)self _shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:_lastConfigurationUpdateAttemptDate];

  if (v4)
  {
    [(RemoteConfigurationController *)self _setCurrentDateAsLastConfigurationUpdateAttemptDate];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke;
    v5[3] = &unk_2785650F8;
    v5[4] = self;
    objc_copyWeak(&v6, &location);
    [(RemoteConfigurationController *)self _downloadConfigurationWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke_2;
    v5[3] = &unk_2785650D0;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = v3;
    dispatch_async(v4, v5);

    objc_destroyWeak(&v7);
  }
}

void __64__RemoteConfigurationController__updateConfigurationIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReceiveConfigurationData:*(a1 + 32)];
}

- (void)_didReceiveConfigurationData:(id)data
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:v9];
  v5 = v9[0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(RemoteConfigurationController *)self _setCurrentConfigurationOnInternalQueue:v4];
  }

  else
  {
    v8 = SSBOSLogRemoteConfiguration(isKindOfClass, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v5 ssb_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [RemoteConfigurationController _didReceiveConfigurationData:];
    }
  }
}

- (BOOL)_shouldUpdateConfigurationGivenLastConfigurationUpdateAttemptDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    if (Backend::Google::SSBUtilities::isInternalInstall(dateCopy) && ([MEMORY[0x277CBEBD0] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", @"DebugSafeBrowsingTestUpdateInterval"), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
    {
      [(Backend::Google::SSBUtilities *)v4 timeIntervalSinceNow];
      v8 = v7;
      [v6 doubleValue];
      v10 = v9 < -v8;
    }

    else
    {
      [(Backend::Google::SSBUtilities *)v4 timeIntervalSinceNow];
      v10 = v11 < -86400.0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)_lastConfigurationUpdateAttemptDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"SafeBrowsingRemoteConfigurationLastUpdateDate"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v5;
}

- (void)_setCurrentDateAsLastConfigurationUpdateAttemptDate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  date = [MEMORY[0x277CBEAA8] date];
  [standardUserDefaults setObject:date forKey:@"SafeBrowsingRemoteConfigurationLastUpdateDate"];
}

- (void)_scheduleConfigurationUpdateDaily
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke;
  block[3] = &unk_278565058;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke(id *a1)
{
  if (!*(a1[4] + 2))
  {
    v2 = 86400000000000;
    if (Backend::Google::SSBUtilities::isInternalInstall(a1))
    {
      v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v4 = [v3 objectForKey:@"DebugSafeBrowsingTestUpdateInterval"];

      if (v4)
      {
        [v4 doubleValue];
        v2 = (v5 * 1000000000.0);
      }
    }

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1[4] + 1));
    v7 = a1[4];
    v8 = v7[2];
    v7[2] = v6;

    objc_initWeak(&location, a1[4]);
    v9 = *(a1[4] + 2);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke_2;
    v12[3] = &unk_278565120;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v9, v12);
    v10 = *(a1[4] + 2);
    v11 = dispatch_time(0, v2);
    dispatch_source_set_timer(v10, v11, v2, v2 / 0xA);
    dispatch_resume(*(a1[4] + 2));
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __66__RemoteConfigurationController__scheduleConfigurationUpdateDaily__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = SSBOSLogRemoteConfiguration(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2255EE000, v3, OS_LOG_TYPE_INFO, "update timer fired", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateConfigurationIfNecessary];
  }
}

- (BOOL)forceLoadConfigurationFromDisk
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__RemoteConfigurationController_forceLoadConfigurationFromDisk__block_invoke;
  v5[3] = &unk_278565148;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__RemoteConfigurationController_forceLoadConfigurationFromDisk__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _urlOfDownloadedConfiguration];
  if (v8)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v8 path];
    v4 = [v2 fileExistsAtPath:v3];

    if (v4)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
      if (v5)
      {
        if (([*(*(a1 + 32) + 56) isEqualToDictionary:v5] & 1) == 0)
        {
          objc_storeStrong((*(a1 + 32) + 56), v5);
          [*(a1 + 32) _initializeProviderConfigurationsWithConfiguration:*(*(a1 + 32) + 56)];
          [*(a1 + 32) _notifyProviderConfigurationsDidChangeIfNecessary];
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      if (v7)
      {
        *(v6 + 56) = 0;

        [*(a1 + 32) _initializeToDefaultProviderConfigurations];
        [*(a1 + 32) _notifyProviderConfigurationsDidChangeIfNecessary];
      }
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)forceUpdateConfigurationFromServer
{
  [(RemoteConfigurationController *)self _setCurrentDateAsLastConfigurationUpdateAttemptDate];
  v3 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  v5 = [MEMORY[0x277CBABB8] sessionWithConfiguration:ephemeralSessionConfiguration];
  v6 = configurationBaseURL();
  v7 = [@"SafeBrowsingRemoteConfiguration-1" stringByAppendingPathExtension:@"plist"];
  v8 = [v6 URLByAppendingPathComponent:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke;
  v14[3] = &unk_278565198;
  v17 = &v18;
  v9 = v3;
  v15 = v9;
  selfCopy = self;
  v10 = [v5 dataTaskWithURL:v8 completionHandler:v14];
  [v10 resume];

  v11 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = 0;
    *(v19 + 24) = 0;
  }

  else
  {
    v12 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v12 & 1;
}

void __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 statusCode] == 404)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(v12 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_2;
      block[3] = &unk_278565080;
      block[4] = v12;
      v26 = v11;
      dispatch_async(v13, block);
      v14 = v26;
    }

    else
    {
      v15 = *(*(a1 + 40) + 8);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_3;
      v20[3] = &unk_278565170;
      v16 = v7;
      v17 = *(a1 + 48);
      v21 = v16;
      v24 = v17;
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v22 = v18;
      v23 = v19;
      dispatch_async(v15, v20);

      v14 = v21;
    }
  }
}

intptr_t __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setCurrentConfigurationOnInternalQueue:0];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void __67__RemoteConfigurationController_forceUpdateConfigurationFromServer__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC58] propertyListWithData:*(a1 + 32) options:0 format:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) _setCurrentConfigurationOnInternalQueue:v2];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__RemoteConfigurationController__dyldSourceVersionString__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_initializeProviderConfigurationsWithConfiguration:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2255EE000, log, OS_LOG_TYPE_ERROR, "Skipped an version range in the configuration. Missing min or max versions entries in dictionary", buf, 2u);
}

- (void)_urlOfDownloadedConfiguration
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_writeConfigurationToDisk:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to remove remote configuration file: %{public}@", v5);
}

void __77__RemoteConfigurationController__downloadConfigurationWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to get configuration data from server with error: %{public}@", v5);
}

- (void)_didReceiveConfigurationData:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_2(&dword_2255EE000, v3, v4, "Failed to read configuration data received from server with error: %{public}@", v5);
}

@end