@interface CDMUaaPNLModelProvider
+ (id)createModelConfigurationFromURL:(id)l locale:(id)locale error:(id *)error;
+ (id)createModelConfigurationsFromURLs:(id)ls locale:(id)locale error:(id *)error;
+ (id)getCoreModelConfigurationForLocale:(id)locale bundlePath:(id)path error:(id *)error;
+ (id)modelURLsForInstalledApps;
+ (id)retrieveAllAppBundleURLs;
+ (id)retrieveModelURLFromBundleURL:(id)l;
- (CDMUaaPNLModelProvider)init;
- (id)foregroundBundeIdentifiers;
- (id)getForegroundModelConfigForLocale:(id)locale error:(id *)error;
- (id)getModelConfigsForLocale:(id)locale error:(id *)error;
- (id)getModelURLForForegroundApp;
- (id)getModelURLs:(id *)ls;
- (id)getModelURLsFromDefaults;
@end

@implementation CDMUaaPNLModelProvider

- (id)foregroundBundeIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = dispatch_semaphore_create(0);
  frontboardConfig = self->_frontboardConfig;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__CDMUaaPNLModelProvider_foregroundBundeIdentifiers__block_invoke;
  v16 = &unk_1E862F958;
  v6 = array;
  v17 = v6;
  v7 = v4;
  v18 = v7;
  [(FBSDisplayLayoutMonitorConfiguration *)frontboardConfig setTransitionHandler:&v13];
  v8 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:{self->_frontboardConfig, v13, v14, v15, v16}];
  v9 = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[CDMUaaPNLModelProvider foregroundBundeIdentifiers]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Timeout while fetching foreground app bundle identifiers.", buf, 0xCu);
    }

    [v8 invalidate];
    v11 = 0;
  }

  else
  {
    [v8 invalidate];
    v11 = v6;
  }

  return v11;
}

void __52__CDMUaaPNLModelProvider_foregroundBundeIdentifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 elements];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isUIApplicationElement])
          {
            v10 = [v9 bundleIdentifier];
            if (v10)
            {
              [*(a1 + 32) addObject:v10];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (id)getModelURLsFromDefaults
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[CDMUserDefaultsUtils readUaaPNLAppModelPaths];
  v3 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [v4 objectForKey:{*(*(&v14 + 1) + 8 * v9), v14}];
        v7 = [v11 objectForKey:@"appDataPath"];

        if (v7)
        {
          v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
          [v3 addObject:v12];
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)getModelURLForForegroundApp
{
  v31 = *MEMORY[0x1E69E9840];
  foregroundBundeIdentifiers = [(CDMUaaPNLModelProvider *)self foregroundBundeIdentifiers];
  v3 = foregroundBundeIdentifiers;
  if (foregroundBundeIdentifiers)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = foregroundBundeIdentifiers;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v21 = v3;
      v7 = 0;
      v8 = 0;
      v9 = *v23;
      while (2)
      {
        v10 = 0;
        v11 = v7;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:*(*(&v22 + 1) + 8 * v10)];

          bundleURL = [v7 bundleURL];

          if (!bundleURL)
          {
            v8 = 0;
            goto LABEL_19;
          }

          v13 = [bundleURL URLByAppendingPathComponent:@"uaap"];

          v8 = [v13 URLByAppendingPathComponent:@"customLu"];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [v8 path];
          v16 = [defaultManager fileExistsAtPath:path];

          if (v16)
          {
            v17 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              bundleIdentifier = [v7 bundleIdentifier];
              *buf = 136315394;
              v27 = "[CDMUaaPNLModelProvider getModelURLForForegroundApp]";
              v28 = 2112;
              v29 = bundleIdentifier;
              _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s UaaP detected foreground app with model available: %@", buf, 0x16u);
            }

            v18 = v4;
            goto LABEL_18;
          }

          ++v10;
          v11 = v7;
        }

        while (v6 != v10);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v17 = v7;
      v18 = v8;
      v7 = v4;
      v8 = 0;
LABEL_18:

      v4 = v18;
LABEL_19:
      v3 = v21;

      v4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getModelURLs:(id *)ls
{
  v11[1] = *MEMORY[0x1E69E9840];
  getModelURLsFromDefaults = [(CDMUaaPNLModelProvider *)self getModelURLsFromDefaults];
  if ([getModelURLsFromDefaults count])
  {
    v5 = getModelURLsFromDefaults;
LABEL_5:
    ls = v5;
    v6 = v5;
    goto LABEL_6;
  }

  v6 = +[CDMUaaPNLModelProvider modelURLsForInstalledApps];

  if ([v6 count])
  {
    v5 = v6;
    goto LABEL_5;
  }

  if (ls)
  {
    v8 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"No UaaP custom NLU model config found. Did you configure the model path?";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *ls = [v8 errorWithDomain:@"UaaPNLService" code:1 userInfo:v9];

    ls = 0;
  }

LABEL_6:

  return ls;
}

- (id)getForegroundModelConfigForLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  getModelURLForForegroundApp = [(CDMUaaPNLModelProvider *)self getModelURLForForegroundApp];
  if (getModelURLForForegroundApp)
  {
    v8 = [CDMUaaPNLModelProvider createModelConfigurationFromURL:getModelURLForForegroundApp locale:localeCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getModelConfigsForLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  v7 = [(CDMUaaPNLModelProvider *)self getModelURLs:error];
  if ([v7 count])
  {
    v8 = [CDMUaaPNLModelProvider createModelConfigurationsFromURLs:v7 locale:localeCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CDMUaaPNLModelProvider)init
{
  v6.receiver = self;
  v6.super_class = CDMUaaPNLModelProvider;
  v2 = [(CDMUaaPNLModelProvider *)&v6 init];
  if (v2)
  {
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
    frontboardConfig = v2->_frontboardConfig;
    v2->_frontboardConfig = configurationForDefaultMainDisplayMonitor;
  }

  return v2;
}

+ (id)getCoreModelConfigurationForLocale:(id)locale bundlePath:(id)path error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  pathCopy = path;
  v9 = +[CDMUserDefaultsUtils readUaaPNLCoreModelPath];
  if (!v9 || ([MEMORY[0x1E695DFF8] fileURLWithPath:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@/", pathCopy, @"model-core"];
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:1];
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "+[CDMUaaPNLModelProvider getCoreModelConfigurationForLocale:bundlePath:error:]";
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s UaaP Core model path not defined in user defaults, using default path: %@", buf, 0x16u);
    }
  }

  v13 = [v10 URLByAppendingPathComponent:localeCopy isDirectory:1];
  v14 = [MEMORY[0x1E69D14C8] configurationFromDirectoryUrl:v13 error:error];

  return v14;
}

+ (id)createModelConfigurationsFromURLs:(id)ls locale:(id)locale error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  localeCopy = locale;
  v9 = [MEMORY[0x1E695DFA8] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = lsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v22;
    *&v12 = 136315394;
    v19 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [CDMUaaPNLModelProvider createModelConfigurationFromURL:*(*(&v21 + 1) + 8 * v15) locale:localeCopy error:error, v19];
        if (v16)
        {
          [v9 addObject:v16];
        }

        else
        {
          v17 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = [*error description];
            *buf = v19;
            v26 = "+[CDMUaaPNLModelProvider createModelConfigurationsFromURLs:locale:error:]";
            v27 = 2112;
            v28 = v20;
            _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Error creating UaaP model configuration %@", buf, 0x16u);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  return v9;
}

+ (id)createModelConfigurationFromURL:(id)l locale:(id)locale error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = [l URLByAppendingPathComponent:locale isDirectory:1];
  if (v6)
  {
    error = [MEMORY[0x1E69D14C8] configurationFromDirectoryUrl:v6 error:error];
  }

  else if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Unable to build fullModelUrl from baseURL and locale";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:@"UaaPNLService" code:1 userInfo:v8];

    error = 0;
  }

  return error;
}

+ (id)retrieveModelURLFromBundleURL:(id)l
{
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v4 = Unique;
    v5 = CFBundleCopyResourceURL(Unique, @"customLu", 0, @"uaap");
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)retrieveAllAppBundleURLs
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) URL];
        [array addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

+ (id)modelURLsForInstalledApps
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[CDMUaaPNLModelProvider retrieveAllAppBundleURLs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [self retrieveModelURLFromBundleURL:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end