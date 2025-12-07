@interface SSUInstalledAppProviderSandbox
- (SSUInstalledAppProviderSandbox)initWithDirectory:(id)directory locale:(id)locale;
- (id)lookupAllSSUEnabledApps;
- (id)lookupSSUEnabledAppByBundleId:(id)id;
@end

@implementation SSUInstalledAppProviderSandbox

- (id)lookupAllSSUEnabledApps
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    directory = self->_directory;
    *buf = 136315394;
    v34 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
    v35 = 2112;
    v36 = directory;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Looking up all installed SSU-enabled apps in sandbox directory: %@.", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)self->_directory path];
  v31 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:path error:&v31];
  v7 = v31;

  if (v6)
  {
    v24 = v7;
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(SSUInstalledAppProviderSandbox *)self lookupSSUEnabledAppByBundleId:*(*(&v27 + 1) + 8 * v13)];
          if (v14)
          {
            v15 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              bundleIdentifier = [v14 bundleIdentifier];
              assetURL = [v14 assetURL];
              path2 = [assetURL path];
              *buf = 136315650;
              v34 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
              v35 = 2112;
              v36 = bundleIdentifier;
              v37 = 2112;
              v38 = path2;
              _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found SSU app %@ with asset URL %@", buf, 0x20u);
            }

            [array addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v21 = [array count];
      *buf = 136315394;
      v34 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
      v35 = 2048;
      v36 = v21;
      _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Found %lu SSU-enabled apps in total in sandbox.", buf, 0x16u);
    }

    v7 = v24;
    v6 = v25;
  }

  else
  {
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_directory;
      v23 = [CDMPlatformUtils prettyPrintError:v7];
      *buf = 136315650;
      v34 = "[SSUInstalledAppProviderSandbox lookupAllSSUEnabledApps]";
      v35 = 2112;
      v36 = v22;
      v37 = 2112;
      v38 = v23;
      _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to list contents of directory %@ due to error: %@. Returning no installed apps.", buf, 0x20u);
    }

    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)lookupSSUEnabledAppByBundleId:(id)id
{
  v31 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = [(NSURL *)self->_directory URLByAppendingPathComponent:idCopy];
  v22 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [(NSURL *)v5 path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:&v22];

  if ((v8 & 1) == 0)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      directory = self->_directory;
      *buf = 136315650;
      v24 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
      v25 = 2112;
      v26 = directory;
      v27 = 2112;
      v28 = idCopy;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s The installed app sandbox directory %@ not contain a subdirectory: %@. Reporting app as not available.", buf, 0x20u);
    }

    goto LABEL_12;
  }

  if ((v22 & 1) == 0)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: The installed app sandbox directory has a non-directory file: %@. Reporting app as not available.", buf, 0x16u);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_21;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AAE8]) _initUniqueWithURL:v5];
  v10 = [v9 SSUAssetPathForLocale:self->_locale];

  if (v10)
  {
    locale = self->_locale;
    v21 = 0;
    v12 = [MEMORY[0x1E69D1480] applicationInfoWithBundleIdentifier:idCopy assetURL:v10 forLocale:locale error:&v21];
    v13 = v21;
    v14 = CDMOSLoggerForCategory(0);
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        bundleIdentifier = [v12 bundleIdentifier];
        *buf = 136315394;
        v24 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
        v25 = 2112;
        v26 = bundleIdentifier;
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found SSU-enabled app in sandbox: %@", buf, 0x16u);
      }

      v16 = v12;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = [CDMPlatformUtils prettyPrintError:v13];
        *buf = 136315906;
        v24 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
        v25 = 2112;
        v26 = idCopy;
        v27 = 2112;
        v28 = v5;
        v29 = 2112;
        v30 = v20;
        _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to build SNLPSSUApplicationInfo instance for bundle ID=%@ and app asset URL=%@: %@. Ignoring app.", buf, 0x2Au);
      }
    }
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[SSUInstalledAppProviderSandbox lookupSSUEnabledAppByBundleId:]";
      v25 = 2112;
      v26 = v5;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s The installed app sandbox directory app is not SSU-enabled: %@ (no asset subdirectory found). Reporting app as not available.", buf, 0x16u);
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (SSUInstalledAppProviderSandbox)initWithDirectory:(id)directory locale:(id)locale
{
  directoryCopy = directory;
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = SSUInstalledAppProviderSandbox;
  v8 = [(SSUInstalledAppProviderSandbox *)&v13 init];
  directory = v8->_directory;
  v8->_directory = directoryCopy;
  v10 = directoryCopy;

  locale = v8->_locale;
  v8->_locale = localeCopy;

  return v8;
}

@end