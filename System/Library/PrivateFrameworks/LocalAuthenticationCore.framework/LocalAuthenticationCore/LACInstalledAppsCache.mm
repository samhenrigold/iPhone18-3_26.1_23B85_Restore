@interface LACInstalledAppsCache
+ (id)sharedInstance;
- (id)_bundleForPid:(int)pid;
- (id)_localizedNameForBundle:(id)bundle;
- (id)_localizedNameForPath:(id)path;
- (id)_localizedNameFromInfoDict:(id)dict path:(id)path;
- (id)binaryNameForPid:(int)pid;
- (id)bundlePathForPid:(int)pid stripXPCService:(BOOL)service;
- (id)infoForPid:(int)pid;
- (id)pathForPid:(int)pid;
@end

@implementation LACInstalledAppsCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[LACInstalledAppsCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __39__LACInstalledAppsCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)infoForPid:(int)pid
{
  v3 = *&pid;
  v5 = [(LACInstalledAppsCache *)self _bundleForPid:?];
  bundleIdentifier = [v5 bundleIdentifier];
  if (v5)
  {
    v7 = [(LACInstalledAppsCache *)self _localizedNameForBundle:v5];
  }

  else
  {
    v8 = [(LACInstalledAppsCache *)self pathForPid:v3];
    v7 = [(LACInstalledAppsCache *)self _localizedNameForPath:v8];
  }

  v9 = [[LACClientInfo alloc] initWithBundleId:bundleIdentifier displayName:v7];

  return v9;
}

- (id)pathForPid:(int)pid
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(LACInstalledAppsCache *)self _bundlePathForPid:?];
  v5 = v4;
  if (!v4)
  {
    v4 = proc_pidpath(pid, v8, 0x1000u);
    if (v4 < 1)
    {
      v5 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:v4 encoding:4];
      v5 = v4;
    }
  }

  v6 = LACLogEnvironment(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = pid;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Determined path for PID %d: %{public}@", v8, 0x12u);
  }

  return v5;
}

- (id)bundlePathForPid:(int)pid stripXPCService:(BOOL)service
{
  serviceCopy = service;
  v5 = *&pid;
  v7 = [(LACInstalledAppsCache *)self _bundleForPid:?];
  v8 = v7;
  if (v7)
  {
    [v7 bundlePath];
  }

  else
  {
    [(LACInstalledAppsCache *)self pathForPid:v5];
  }
  v9 = ;
  v10 = v9;
  if (serviceCopy)
  {
    v11 = [v9 rangeOfString:@"/Contents/XPCServices/"];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v10 substringToIndex:v11];

      v10 = v12;
    }
  }

  return v10;
}

- (id)binaryNameForPid:(int)pid
{
  v3 = [(LACInstalledAppsCache *)self pathForPid:*&pid];
  lastPathComponent = [v3 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (id)_bundleForPid:(int)pid
{
  v3 = *&pid;
  v5 = [(LACInstalledAppsCache *)self _bundlePathForPid:?];
  if (!v5 || ([MEMORY[0x1E696AAE8] bundleWithPath:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [(LACInstalledAppsCache *)self pathForPid:v3];
    if (v7)
    {
      v8 = v7;
      v6 = [MEMORY[0x1E696AAE8] bundleWithPath:v7];
      if (!v6)
      {
        v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v8, kCFURLPOSIXPathStyle, 0);
        if (v6)
        {
          v11 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
          CFRelease(v6);
          if (v11)
          {
            v12 = CFBundleCopyBundleURL(v11);
            if (v12)
            {
              v13 = v12;
              v6 = [MEMORY[0x1E696AAE8] bundleWithURL:v12];
              CFRelease(v13);
            }

            else
            {
              v6 = 0;
            }

            CFRelease(v11);
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }

    else
    {
      v9 = LACLogEnvironment(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(LACInstalledAppsCache *)v3 _bundleForPid:v9];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)_localizedNameFromInfoDict:(id)dict path:(id)path
{
  dictCopy = dict;
  pathCopy = path;
  v7 = [dictCopy objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
  v8 = v7;
  if (v7)
  {
    stringByDeletingPathExtension = v7;
  }

  else
  {
    v10 = [dictCopy objectForKeyedSubscript:@"CFBundleDisplayName"];
    v11 = v10;
    if (v10)
    {
      stringByDeletingPathExtension = v10;
    }

    else
    {
      v12 = [dictCopy objectForKeyedSubscript:@"CFBundleName"];
      v13 = v12;
      if (v12)
      {
        stringByDeletingPathExtension = v12;
      }

      else
      {
        lastPathComponent = [pathCopy lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      }
    }
  }

  return stringByDeletingPathExtension;
}

- (id)_localizedNameForBundle:(id)bundle
{
  v32 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = MEMORY[0x1E696AAE8];
  localizations = [bundleCopy localizations];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v8 = [v5 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = @"en";
  }

  v10 = [bundleCopy URLForResource:@"InfoPlist" withExtension:@"strings" subdirectory:0 localization:v9];
  if (v10 && ([MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(bundleCopy, "localizedInfoDictionary"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    bundlePath = [bundleCopy bundlePath];
    v14 = [(LACInstalledAppsCache *)self _localizedNameFromInfoDict:v12 path:bundlePath];
    goto LABEL_8;
  }

  v20 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleVisibleComponentName"];
  v12 = v20;
  if (!v20)
  {
    v21 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleDisplayName"];
    bundlePath = v21;
    if (!v21)
    {
      v22 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleName"];
      v23 = v22;
      if (v22)
      {
        stringByDeletingPathExtension = v22;
      }

      else
      {
        v24 = [bundleCopy objectForInfoDictionaryKey:@"CFBundleDisplayName"];
        v25 = v24;
        if (v24)
        {
          stringByDeletingPathExtension = v24;
        }

        else
        {
          bundlePath2 = [bundleCopy bundlePath];
          lastPathComponent = [bundlePath2 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
        }
      }

      goto LABEL_9;
    }

    v14 = v21;
LABEL_8:
    stringByDeletingPathExtension = v14;
LABEL_9:

    goto LABEL_10;
  }

  stringByDeletingPathExtension = v20;
LABEL_10:

  v17 = LACLogEnvironment(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    *buf = 138543618;
    v29 = bundleIdentifier;
    v30 = 2114;
    v31 = stringByDeletingPathExtension;
  }

  return stringByDeletingPathExtension;
}

- (id)_localizedNameForPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    stringByDeletingPathExtension = 0;
    goto LABEL_12;
  }

  v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], pathCopy, kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = CFBundleCopyInfoDictionaryForURL(v5);
  if (!v7 || (v8 = v7, [(LACInstalledAppsCache *)self _localizedNameFromInfoDict:v7 path:0], stringByDeletingPathExtension = objc_claimAutoreleasedReturnValue(), CFRelease(v8), !stringByDeletingPathExtension))
  {
    v14 = 0;
    [(__CFURL *)v6 getResourceValue:&v14 forKey:*MEMORY[0x1E695DC10] error:0];
    stringByDeletingPathExtension = v14;
    CFRelease(v6);
    if (stringByDeletingPathExtension)
    {
      goto LABEL_9;
    }

LABEL_8:
    lastPathComponent = [(__CFString *)pathCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    goto LABEL_9;
  }

  CFRelease(v6);
LABEL_9:
  v12 = LACLogEnvironment(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = pathCopy;
    v17 = 2114;
    v18 = stringByDeletingPathExtension;
  }

LABEL_12:

  return stringByDeletingPathExtension;
}

- (void)_bundleForPid:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Failed to determine path for pid: %d", v2, 8u);
}

@end