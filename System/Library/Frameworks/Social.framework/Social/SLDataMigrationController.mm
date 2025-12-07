@interface SLDataMigrationController
+ (id)sharedController;
- (BOOL)needsFileProtectionUpgradeForProfileImagesAtPath:(id)path serviceNameForLogging:(id)logging;
- (BOOL)needsMigrationForSocialDaemonBundleID:(id)d preferenceKey:(id)key;
- (void)didFinishMigrationForSocialDaemonBundleID:(id)d preferenceKey:(id)key;
- (void)ensureSocialUserDataDirectory;
- (void)removeAncillarySocialDatabaseFilesWithPrefix:(id)prefix serviceNameForLogging:(id)logging;
@end

@implementation SLDataMigrationController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SLDataMigrationController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __45__SLDataMigrationController_sharedController__block_invoke()
{
  sharedController_sharedController = objc_alloc_init(SLDataMigrationController);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)needsMigrationForSocialDaemonBundleID:(id)d preferenceKey:(id)key
{
  keyCopy = key;
  dCopy = d;
  v7 = DMCopyCurrentBuildVersion();
  v8 = *MEMORY[0x1E695E8B8];
  v9 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(dCopy, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v10 = CFPreferencesCopyValue(keyCopy, dCopy, v8, v9);

  v11 = v7 && (!v10 || [v7 compare:v10 options:1]);
  return v11;
}

- (void)didFinishMigrationForSocialDaemonBundleID:(id)d preferenceKey:(id)key
{
  applicationID = d;
  keyCopy = key;
  v6 = DMCopyCurrentBuildVersion();
  if (v6)
  {
    v7 = *MEMORY[0x1E695E8B8];
    v8 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(keyCopy, v6, applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(applicationID, v7, v8);
  }
}

- (void)ensureSocialUserDataDirectory
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v2 = SLUserDataDirectory();
  if (([defaultManager fileExistsAtPath:v2] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (BOOL)needsFileProtectionUpgradeForProfileImagesAtPath:(id)path serviceNameForLogging:(id)logging
{
  pathCopy = path;
  loggingCopy = logging;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v9 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v30];
  v10 = v30;
  if (v10)
  {
    v16 = v10;
    _SLLog(v4, 3, @"Failed to get contents of %@ profile image directory with errror %@", v11, v12, v13, v14, v15, loggingCopy);
    v17 = 0;
  }

  else
  {
    if (![v9 count])
    {
      v17 = 0;
      goto LABEL_11;
    }

    lastObject = [v9 lastObject];
    v23 = [@"/" stringByAppendingString:?];
    v24 = [pathCopy stringByAppendingString:v23];

    v29 = 0;
    v25 = [defaultManager attributesOfItemAtPath:v24 error:&v29];
    v16 = v29;
    v26 = [v25 objectForKey:*MEMORY[0x1E696A3A0]];
    v17 = 1;
    if (v26)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v26 isEqualToString:*MEMORY[0x1E696A378]])
      {
        v17 = 0;
      }
    }
  }

LABEL_11:
  _SLLog(v4, 3, @"%@ needs profile image file protection upgrade? %d", v18, v19, v20, v21, v22, loggingCopy);

  return v17;
}

- (void)removeAncillarySocialDatabaseFilesWithPrefix:(id)prefix serviceNameForLogging:(id)logging
{
  v36 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  loggingCopy = logging;
  v8 = SLUserDataDirectory();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v30 = v8;
  v29 = [defaultManager contentsOfDirectoryAtPath:v8 error:0];
  v10 = loggingCopy;
  _SLLog(v4, 7, @"%@ migration got contents of social directory %@", v11, v12, v13, v14, v15, loggingCopy);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = v29;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        if ([v21 hasPrefix:prefixCopy])
        {
          v22 = [@"/" stringByAppendingString:v21];
          v23 = [v30 stringByAppendingString:v22];

          _SLLog(v4, 7, @"%@ migration trying to delete %@", v24, v25, v26, v27, v28, v10);
          [defaultManager removeItemAtPath:v23 error:0];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }
}

@end