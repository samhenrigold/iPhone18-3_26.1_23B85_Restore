@interface UAFStagingLogManager
+ (BOOL)deleteItemAtURL:(id)l error:(id *)error;
+ (BOOL)findOrCreateDir:(id)dir;
+ (BOOL)moveItemAtURL:(id)l toURL:(id)rL;
+ (BOOL)writeToFile:(id)file content:(id)content;
+ (id)createLogEntryWithInfo:(id)info;
+ (id)getBuildVersionFromStagingLogsDir;
+ (id)getLastBuildStagingLogsDir;
+ (id)getLatestStagingLogsDir;
+ (id)getLogFileForTarget:(id)target andAssetSetName:(id)name;
+ (id)getRootStagingLogsDir;
+ (id)getSerialQueue;
+ (id)serializeJSONObjectToData:(id)data;
+ (void)createBuildVersionFile;
+ (void)deleteLoggedTargetsForEliminatedAssetSet:(id)set;
+ (void)logTargetSync:(id)sync withAssetSetName:(id)name withPlatformAssetVersion:(id)version;
+ (void)logTargets:(id)targets withAssetSetName:(id)name withPlatformAssetVersion:(id)version;
+ (void)rollStagingLogsUponNewBuildVersion;
@end

@implementation UAFStagingLogManager

+ (id)getSerialQueue
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_9);
  }

  v3 = qword_1ED7D1140;

  return v3;
}

void __38__UAFStagingLogManager_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFStagingLogManager.Serial", v2);
  v1 = qword_1ED7D1140;
  qword_1ED7D1140 = v0;
}

+ (void)rollStagingLogsUponNewBuildVersion
{
  v2 = +[UAFStagingLogManager getSerialQueue];
  dispatch_async(v2, &__block_literal_global_304);
}

void __58__UAFStagingLogManager_rollStagingLogsUponNewBuildVersion__block_invoke()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = +[UAFStagingLogManager getLatestStagingLogsDir];
  v1 = +[UAFStagingLogManager getLastBuildStagingLogsDir];
  v2 = v1;
  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to get the relevant staging directory URLs for rollover", buf, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v0 path];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      v4 = [UAFCommonUtilities mobileGestaltQuery:@"BuildVersion"];
      v8 = +[UAFStagingLogManager getBuildVersionFromStagingLogsDir];
      if ([v4 length]&& [(__CFString *)v8 length])
      {
        if ([(__CFString *)v8 isEqualToString:v4])
        {
          v9 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
            v29 = 2114;
            v30 = v4;
            v10 = "%s Skipping rollover - build version %{public}@ has not changed";
            v11 = v9;
            v12 = OS_LOG_TYPE_DEFAULT;
            v13 = 22;
LABEL_24:
            _os_log_impl(&dword_1BCF2C000, v11, v12, v10, buf, v13);
            goto LABEL_30;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v14 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v24 = [v4 length];
          v25 = @"stored";
          if (!v24)
          {
            v25 = @"running";
          }

          *buf = 136315394;
          v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
          v29 = 2114;
          v30 = v25;
          _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Unable to determine the %{public}@ build version. Proceeding with rollover", buf, 0x16u);
        }
      }

      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = [v2 path];
      v17 = [v15 fileExistsAtPath:v16];

      if (v17)
      {
        v26 = 0;
        v18 = [UAFStagingLogManager deleteItemAtURL:v2 error:&v26];
        v19 = v26;
        v9 = v19;
        if (!v18)
        {
          v22 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
            v29 = 2114;
            v30 = @"LastStagingLogsFromLastBuildVersion";
            v31 = 2114;
            v32 = v9;
            _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to delete the old %{public}@: %{public}@. Skipping rollover", buf, 0x20u);
          }

          goto LABEL_29;
        }
      }

      v20 = [UAFStagingLogManager moveItemAtURL:v0 toURL:v2];
      v21 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      v9 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
          v29 = 2114;
          v30 = v8;
          v31 = 2114;
          v32 = v4;
          v10 = "%s Successfully rolled staging logs due to moving from build %{public}@ to %{public}@";
          v11 = v9;
          v12 = OS_LOG_TYPE_INFO;
          v13 = 32;
          goto LABEL_24;
        }

LABEL_30:

        goto LABEL_31;
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v22 = [v0 path];
      v23 = [v2 path];
      *buf = 136315650;
      v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
      v29 = 2114;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to rollover logs from %{public}@ to %{public}@", buf, 0x20u);

LABEL_29:
      goto LABEL_30;
    }

    v4 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "+[UAFStagingLogManager rollStagingLogsUponNewBuildVersion]_block_invoke";
      v29 = 2114;
      v30 = @"LatestStagingLogs";
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Did not find %{public}@. Skipping rollover", buf, 0x16u);
    }
  }

LABEL_31:
}

+ (void)logTargets:(id)targets withAssetSetName:(id)name withPlatformAssetVersion:(id)version
{
  v24 = *MEMORY[0x1E69E9840];
  targetsCopy = targets;
  nameCopy = name;
  versionCopy = version;
  if ([targetsCopy count] && -[__CFString length](nameCopy, "length"))
  {
    v10 = +[UAFStagingLogManager getSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__UAFStagingLogManager_logTargets_withAssetSetName_withPlatformAssetVersion___block_invoke;
    block[3] = &unk_1E7FFDEA0;
    v15 = targetsCopy;
    v16 = nameCopy;
    v17 = versionCopy;
    dispatch_async(v10, block);

    v11 = v15;
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [targetsCopy count];
      v13 = @"nil";
      *buf = 136315650;
      v19 = "+[UAFStagingLogManager logTargets:withAssetSetName:withPlatformAssetVersion:]";
      if (nameCopy)
      {
        v13 = nameCopy;
      }

      v20 = 2048;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Cannot log targets: invalid parameters (targets count: %lu, assetSetName: %{public}@)", buf, 0x20u);
    }
  }
}

void __77__UAFStagingLogManager_logTargets_withAssetSetName_withPlatformAssetVersion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [UAFStagingLogManager logTargetSync:*(*(&v7 + 1) + 8 * v6++) withAssetSetName:*(a1 + 40) withPlatformAssetVersion:*(a1 + 48), v7];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)deleteLoggedTargetsForEliminatedAssetSet:(id)set
{
  v10 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if ([setCopy length])
  {
    v4 = +[UAFStagingLogManager getSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__UAFStagingLogManager_deleteLoggedTargetsForEliminatedAssetSet___block_invoke;
    block[3] = &unk_1E7FFCFD0;
    v7 = setCopy;
    dispatch_async(v4, block);

    v5 = v7;
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "+[UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:]";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Cannot delete logs for nil or empty asset set name", buf, 0xCu);
    }
  }
}

void __65__UAFStagingLogManager_deleteLoggedTargetsForEliminatedAssetSet___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = +[UAFStagingLogManager getLatestStagingLogsDir];
  if (!v2 || ([MEMORY[0x1E696AC08] defaultManager], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "path"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "fileExistsAtPath:", v4), v4, v3, (v5 & 1) == 0))
  {
    v10 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 136315650;
      v44 = "+[UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:]_block_invoke";
      v45 = 2114;
      v46 = @"LatestStagingLogs";
      v47 = 2114;
      v48 = v11;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_INFO, "%s Did not find %{public}@. Skip removing logs for eliminated assetSet %{public}@", buf, 0x20u);
    }

    goto LABEL_29;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *MEMORY[0x1E695DB78];
  v42 = *MEMORY[0x1E695DB78];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v40 = 0;
  v9 = [v6 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:v8 options:4 error:&v40];
  v10 = v40;

  if (!v10)
  {
    v32 = v2;
    log = [*(a1 + 32) stringByAppendingString:@".json"];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = v13;
    v15 = *v37;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * v16);
        v35 = 0;
        v18 = [v17 getResourceValue:&v35 forKey:v7 error:0];
        v19 = v35;
        v20 = v19;
        if (v18 && [v19 BOOLValue])
        {
          v21 = [v17 URLByAppendingPathComponent:log];
          v22 = [MEMORY[0x1E696AC08] defaultManager];
          v23 = [v21 path];
          v24 = [v22 fileExistsAtPath:v23];

          if (v24)
          {
            v34 = 0;
            v25 = [UAFStagingLogManager deleteItemAtURL:v21 error:&v34];
            v26 = v34;
            v27 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
            v28 = v27;
            if (v25)
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v29 = [v21 path];
                *buf = 136315394;
                v44 = "+[UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:]_block_invoke";
                v45 = 2114;
                v46 = v29;
                _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_INFO, "%s Successfully removed log file %{public}@", buf, 0x16u);
                goto LABEL_19;
              }
            }

            else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v29 = [v21 path];
              *buf = 136315650;
              v44 = "+[UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:]_block_invoke";
              v45 = 2114;
              v46 = v29;
              v47 = 2114;
              v48 = v26;
              _os_log_error_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_ERROR, "%s Failed to remove file %{public}@: %{public}@", buf, 0x20u);
LABEL_19:
            }
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v30 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
      v14 = v30;
      if (!v30)
      {
LABEL_27:

        v10 = 0;
        v2 = v32;
        v9 = v31;
        goto LABEL_28;
      }
    }
  }

  log = UAFGetLogCategory(&UAFLogContextStagingLogManager);
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "+[UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:]_block_invoke";
    v45 = 2114;
    v46 = v10;
    _os_log_error_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_ERROR, "%s Failed to enumerate directory contents: %{public}@", buf, 0x16u);
  }

LABEL_28:

LABEL_29:
}

+ (void)logTargetSync:(id)sync withAssetSetName:(id)name withPlatformAssetVersion:(id)version
{
  v59 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  nameCopy = name;
  versionCopy = version;
  if (syncCopy && [(__CFString *)nameCopy length])
  {
    v10 = +[UAFStagingLogManager getLatestStagingLogsDir];
    if (v10)
    {
      v11 = [UAFStagingLogManager getLogFileForTarget:syncCopy andAssetSetName:nameCopy];
      v12 = v11;
      if (v11)
      {
        v41 = v11;
        v42 = v10;
        v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
        v44 = nameCopy;
        [v13 setObject:nameCopy forKeyedSubscript:@"assetSetName"];
        minTargetOSVersion = [syncCopy minTargetOSVersion];
        v15 = minTargetOSVersion;
        if (minTargetOSVersion)
        {
          v16 = minTargetOSVersion;
        }

        else
        {
          v16 = @"unknown";
        }

        [v13 setObject:v16 forKeyedSubscript:@"minTargetOSVersion"];

        maxTargetOSVersion = [syncCopy maxTargetOSVersion];
        v18 = maxTargetOSVersion;
        if (maxTargetOSVersion)
        {
          v19 = maxTargetOSVersion;
        }

        else
        {
          v19 = @"unknown";
        }

        [v13 setObject:v19 forKeyedSubscript:@"maxTargetOSVersion"];

        v43 = versionCopy;
        if (versionCopy)
        {
          v20 = versionCopy;
        }

        else
        {
          v20 = @"unknown";
        }

        v40 = v13;
        [v13 setObject:v20 forKeyedSubscript:@"platformAssetVersion"];
        autoAssetEntries = [syncCopy autoAssetEntries];
        v22 = [autoAssetEntries count];

        v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v22];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        obj = [syncCopy autoAssetEntries];
        v24 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v47;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v47 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v46 + 1) + 8 * i);
              v50[0] = @"assetSpecifier";
              assetSelector = [v28 assetSelector];
              assetSpecifier = [assetSelector assetSpecifier];
              v31 = assetSpecifier;
              if (assetSpecifier)
              {
                v32 = assetSpecifier;
              }

              else
              {
                v32 = @"unknown";
              }

              v50[1] = @"assetLockedInhibitsRemoval";
              v51[0] = v32;
              v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v28, "assetLockedInhibitsRemoval")}];
              v51[1] = v33;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

              [v23 addObject:v34];
            }

            v25 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v25);
        }

        v35 = v40;
        [v40 setObject:v23 forKeyedSubscript:@"autoAssetEntries"];
        v12 = v41;
        if (![UAFStagingLogManager writeToFile:v41 content:v40])
        {
          v36 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            path = [v41 path];
            *buf = 136315394;
            v54 = "+[UAFStagingLogManager logTargetSync:withAssetSetName:withPlatformAssetVersion:]";
            v55 = 2114;
            v56 = path;
            _os_log_error_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_ERROR, "%s Failed to write to log file %{public}@", buf, 0x16u);
          }
        }

        nameCopy = v44;
        v10 = v42;
        versionCopy = v43;
      }

      else
      {
        v35 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "+[UAFStagingLogManager logTargetSync:withAssetSetName:withPlatformAssetVersion:]";
          v55 = 2114;
          v56 = nameCopy;
          _os_log_error_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_ERROR, "%s Failed to get log file for target %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "+[UAFStagingLogManager logTargetSync:withAssetSetName:withPlatformAssetVersion:]";
        v55 = 2114;
        v56 = @"LatestStagingLogs";
        _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v37 = @"valid";
      if (!syncCopy)
      {
        v37 = @"nil";
      }

      *buf = 136315650;
      v54 = "+[UAFStagingLogManager logTargetSync:withAssetSetName:withPlatformAssetVersion:]";
      v55 = 2114;
      v56 = v37;
      if (nameCopy)
      {
        v38 = nameCopy;
      }

      else
      {
        v38 = @"nil";
      }

      v57 = 2114;
      v58 = v38;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Cannot log target: invalid parameters (target: %{public}@, assetSetName: %{public}@)", buf, 0x20u);
    }
  }
}

+ (BOOL)writeToFile:(id)file content:(id)content
{
  v37 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  contentCopy = content;
  path = [fileCopy path];
  if (path)
  {
    v8 = path;
    v9 = [contentCopy count];

    if (v9)
    {
      uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
      if ([UAFStagingLogManager findOrCreateDir:uRLByDeletingLastPathComponent])
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path2 = [fileCopy path];
        v13 = [defaultManager fileExistsAtPath:path2];

        if (!v13)
        {
          goto LABEL_7;
        }

        v30 = 0;
        v14 = [UAFStagingLogManager deleteItemAtURL:fileCopy error:&v30];
        v15 = v30;
        v16 = v15;
        if (v14)
        {

LABEL_7:
          v16 = [UAFStagingLogManager createLogEntryWithInfo:contentCopy];
          v17 = [UAFStagingLogManager serializeJSONObjectToData:v16];
          v18 = v17;
          if (v17)
          {
            v29 = 0;
            v19 = 1;
            v20 = [v17 writeToURL:fileCopy options:1 error:&v29];
            v21 = v29;
            if (v20)
            {
LABEL_19:

LABEL_24:
              goto LABEL_25;
            }

            v22 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              path3 = [fileCopy path];
              *buf = 136315650;
              v32 = "+[UAFStagingLogManager writeToFile:content:]";
              v33 = 2114;
              v34 = path3;
              v35 = 2114;
              v36 = v21;
              _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to write to %{public}@ with error %{public}@", buf, 0x20u);
            }
          }

          else
          {
            v21 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v32 = "+[UAFStagingLogManager writeToFile:content:]";
              _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s Failed to serialize data to json", buf, 0xCu);
            }
          }

          v19 = 0;
          goto LABEL_19;
        }

        path5 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
        if (os_log_type_enabled(path5, OS_LOG_TYPE_ERROR))
        {
          path4 = [fileCopy path];
          *buf = 136315650;
          v32 = "+[UAFStagingLogManager writeToFile:content:]";
          v33 = 2114;
          v34 = path4;
          v35 = 2114;
          v36 = v16;
          _os_log_error_impl(&dword_1BCF2C000, path5, OS_LOG_TYPE_ERROR, "%s Failed to delete existing item at %{public}@: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v16 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          v19 = 0;
          goto LABEL_24;
        }

        path5 = [fileCopy path];
        *buf = 136315394;
        v32 = "+[UAFStagingLogManager writeToFile:content:]";
        v33 = 2114;
        v34 = path5;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to get parent directory for %{public}@", buf, 0x16u);
      }

      goto LABEL_23;
    }
  }

  uRLByDeletingLastPathComponent = UAFGetLogCategory(&UAFLogContextStagingLogManager);
  if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
  {
    path6 = [fileCopy path];
    v26 = @"empty content";
    if (!path6)
    {
      v26 = @"nil filePath";
    }

    *buf = 136315394;
    v32 = "+[UAFStagingLogManager writeToFile:content:]";
    v33 = 2114;
    v34 = v26;
    _os_log_error_impl(&dword_1BCF2C000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "%s Bad parameters passed: %{public}@", buf, 0x16u);
  }

  v19 = 0;
LABEL_25:

  return v19;
}

+ (BOOL)findOrCreateDir:(id)dir
{
  v33 = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  path = [dirCopy path];

  if (path)
  {
    v24 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path2 = [dirCopy path];
    v7 = [defaultManager fileExistsAtPath:path2 isDirectory:&v24];

    if (v7)
    {
      if (v24)
      {
        v8 = 1;
        goto LABEL_19;
      }

      v10 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        path3 = [dirCopy path];
        *buf = 136315394;
        v28 = "+[UAFStagingLogManager findOrCreateDir:]";
        v29 = 2114;
        v30 = path3;
        _os_log_fault_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_FAULT, "%s Found unexpected file where directory should exist at %{public}@. Deleting file...", buf, 0x16u);
      }

      v23 = 0;
      v11 = [UAFStagingLogManager deleteItemAtURL:dirCopy error:&v23];
      v12 = v23;
      v13 = v12;
      if (!v11)
      {
        v17 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          path4 = [dirCopy path];
          *buf = 136315650;
          v28 = "+[UAFStagingLogManager findOrCreateDir:]";
          v29 = 2114;
          v30 = path4;
          v31 = 2114;
          v32 = v13;
          v19 = "%s Failed to delete unexpected file at %{public}@: %{public}@";
          goto LABEL_21;
        }

LABEL_17:

        v8 = 0;
        goto LABEL_18;
      }
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v25 = *MEMORY[0x1E696A370];
    v26 = &unk_1F3B731E8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v22 = 0;
    v16 = [defaultManager2 createDirectoryAtURL:dirCopy withIntermediateDirectories:1 attributes:v15 error:&v22];
    v13 = v22;

    if (v16)
    {
      +[UAFStagingLogManager createBuildVersionFile];
      v8 = 1;
LABEL_18:

      goto LABEL_19;
    }

    v17 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      path4 = [dirCopy path];
      *buf = 136315650;
      v28 = "+[UAFStagingLogManager findOrCreateDir:]";
      v29 = 2114;
      v30 = path4;
      v31 = 2114;
      v32 = v13;
      v19 = "%s Failed to create directory at %{public}@ with error %{public}@";
LABEL_21:
      _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x20u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "+[UAFStagingLogManager findOrCreateDir:]";
    _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Cannot find/create nil path", buf, 0xCu);
  }

  v8 = 0;
LABEL_19:

  return v8;
}

+ (BOOL)deleteItemAtURL:(id)l error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    path = [lCopy path];
    *buf = 136315394;
    v23 = "+[UAFStagingLogManager deleteItemAtURL:error:]";
    v24 = 2114;
    v25 = path;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_INFO, "%s Deleting %{public}@", buf, 0x16u);
  }

  path2 = [lCopy path];

  if (!path2)
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Invalid URL path";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [v16 errorWithDomain:v17 code:258 userInfo:v11];
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0;
  v10 = [defaultManager removeItemAtURL:lCopy error:&v19];
  v11 = v19;

  if ((v10 & 1) != 0 || !v11 || [v11 code] != 4 || (objc_msgSend(v11, "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E696A250]), v12, !v13))
  {
    if (error)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_19;
    }

    v14 = v11;
    goto LABEL_17;
  }

  v10 = 1;
  if (error)
  {
    v14 = 0;
LABEL_18:
    *error = v14;
  }

LABEL_19:

LABEL_20:
  return v10;
}

+ (BOOL)moveItemAtURL:(id)l toURL:(id)rL
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v19 = 0;
  v7 = [UAFStagingLogManager deleteItemAtURL:rLCopy error:&v19];
  v8 = v19;
  if (!v7)
  {
    v13 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      path = [rLCopy path];
      *buf = 136315650;
      v21 = "+[UAFStagingLogManager moveItemAtURL:toURL:]";
      v22 = 2114;
      v23 = path;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Failed to delete item in %{public}@ with error: %{public}@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v18 = v8;
  v10 = [defaultManager moveItemAtURL:lCopy toURL:rLCopy error:&v18];
  v11 = v18;

  if ((v10 & 1) == 0)
  {
    v13 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      path3 = [rLCopy path];
      *buf = 136315906;
      v21 = "+[UAFStagingLogManager moveItemAtURL:toURL:]";
      v22 = 2114;
      v23 = path2;
      v24 = 2114;
      v25 = path3;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Failed to move item from %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
    }

    v8 = v11;
LABEL_9:

    v12 = 0;
    v11 = v8;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

+ (id)getRootStagingLogsDir
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = +[UAFCommonUtilities getDefaultStoragePath];
  v4 = [v2 fileURLWithPath:v3];

  if (v4)
  {
    v5 = [v4 URLByAppendingPathComponent:@"StagingLogs"];
  }

  else
  {
    v6 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "+[UAFStagingLogManager getRootStagingLogsDir]";
      _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to get default storage path", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)getLatestStagingLogsDir
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[UAFStagingLogManager getRootStagingLogsDir];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLByAppendingPathComponent:@"LatestStagingLogs"];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[UAFStagingLogManager getLatestStagingLogsDir]";
      v9 = 2114;
      v10 = @"LatestStagingLogs";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get %{public}@", &v7, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)getLastBuildStagingLogsDir
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[UAFStagingLogManager getRootStagingLogsDir];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLByAppendingPathComponent:@"LastStagingLogsFromLastBuildVersion"];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[UAFStagingLogManager getLastBuildStagingLogsDir]";
      v9 = 2114;
      v10 = @"StagingLogs";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get %{public}@", &v7, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)getLogFileForTarget:(id)target andAssetSetName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  nameCopy = name;
  minTargetOSVersion = [targetCopy minTargetOSVersion];
  if (![minTargetOSVersion length])
  {

LABEL_6:
    v10 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [nameCopy length];
      v16 = @"Missing minTargetOSVersion";
      if (!v15)
      {
        v16 = @"Missing assetSetName";
      }

      v19 = 136315394;
      v20 = "+[UAFStagingLogManager getLogFileForTarget:andAssetSetName:]";
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Invalid parameters for getLogFileForTarget: %@", &v19, 0x16u);
    }

    goto LABEL_13;
  }

  v8 = [nameCopy length];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = +[UAFStagingLogManager getLatestStagingLogsDir];
  if (v9)
  {
    v10 = v9;
    minTargetOSVersion2 = [targetCopy minTargetOSVersion];
    v12 = [v10 URLByAppendingPathComponent:minTargetOSVersion2];
    v13 = [nameCopy stringByAppendingString:@".json"];
    v14 = [v12 URLByAppendingPathComponent:v13];

    goto LABEL_14;
  }

  v17 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315394;
    v20 = "+[UAFStagingLogManager getLogFileForTarget:andAssetSetName:]";
    v21 = 2114;
    v22 = @"LatestStagingLogs";
    _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to get %{public}@", &v19, 0x16u);
  }

  v10 = 0;
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)createLogEntryWithInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [UAFCommonUtilities getISO8601Timestamp:date withFractionalSeconds:1];
  [v4 setObject:v6 forKeyedSubscript:@"timestamp"];

  if ([infoCopy count])
  {
    [v4 setObject:infoCopy forKeyedSubscript:@"eventInformation"];
  }

  v7 = [v4 copy];

  return v7;
}

+ (id)serializeJSONObjectToData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy count])
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dataCopy options:1 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "+[UAFStagingLogManager serializeJSONObjectToData:]";
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to serialize JSON object: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "+[UAFStagingLogManager serializeJSONObjectToData:]";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Cannot serialize nil JSON object", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)getBuildVersionFromStagingLogsDir
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = +[UAFStagingLogManager getLatestStagingLogsDir];
  v3 = v2;
  if (!v2)
  {
    v11 = 0;
    goto LABEL_36;
  }

  v4 = [v2 URLByAppendingPathComponent:@"BuildVersion.json"];
  v25 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v4 path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:&v25];

  if (v7)
  {
    if (v25 == 1)
    {
      v8 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        path2 = [v4 path];
        *buf = 136315394;
        v27 = "+[UAFStagingLogManager getBuildVersionFromStagingLogsDir]";
        v28 = 2114;
        v29 = path2;
        _os_log_fault_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_FAULT, "%s Deleting directory that was found with the path of the build version file %{public}@", buf, 0x16u);
      }

      v24 = 0;
      v9 = [UAFStagingLogManager deleteItemAtURL:v4 error:&v24];
      v10 = v24;
      if (v9)
      {
        v11 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v12 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "+[UAFStagingLogManager getBuildVersionFromStagingLogsDir]";
        v28 = 2114;
        v29 = v10;
        _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to delete directory with the path of the build version file: %{public}@", buf, 0x16u);
      }

      goto LABEL_20;
    }

    v23 = 0;
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:&v23];
    v10 = v23;
    if (!v12)
    {
      v16 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "+[UAFStagingLogManager getBuildVersionFromStagingLogsDir]";
        v28 = 2114;
        v29 = @"BuildVersion.json";
        v30 = 2114;
        v31 = v10;
        _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to read %{public}@: %{public}@", buf, 0x20u);
      }

      v12 = 0;
LABEL_20:
      v11 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v22 = v10;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v22];
    v14 = v22;

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v13 objectForKeyedSubscript:@"eventInformation"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v15 objectForKeyedSubscript:@"BuildVersion"];
        }

        else
        {
          v19 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v27 = "+[UAFStagingLogManager getBuildVersionFromStagingLogsDir]";
            v28 = 2114;
            v29 = @"BuildVersion.json";
            _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s %{public}@ does not contain valid eventInformation", buf, 0x16u);
          }

          v11 = 0;
        }

        goto LABEL_32;
      }

      v18 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "+[UAFStagingLogManager getBuildVersionFromStagingLogsDir]";
        v28 = 2114;
        v29 = @"BuildVersion.json";
        _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s %{public}@ does not contain a dictionary", buf, 0x16u);
      }
    }

    else
    {
      v17 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "+[UAFStagingLogManager getBuildVersionFromStagingLogsDir]";
        v28 = 2114;
        v29 = @"BuildVersion.json";
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to parse %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v11 = 0;
LABEL_32:
    v10 = v14;
    goto LABEL_33;
  }

  v11 = 0;
LABEL_35:

LABEL_36:

  return v11;
}

+ (void)createBuildVersionFile
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = +[UAFStagingLogManager getLatestStagingLogsDir];
  v3 = [v2 URLByAppendingPathComponent:@"BuildVersion.json"];
  v19 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v19];

  if (!v6)
  {
    goto LABEL_7;
  }

  if (v19 == 1)
  {
    v7 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      path2 = [v3 path];
      *buf = 136315394;
      v23 = "+[UAFStagingLogManager createBuildVersionFile]";
      v24 = 2114;
      v25 = path2;
      _os_log_fault_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_FAULT, "%s Deleting directory that was found with the path of %{public}@", buf, 0x16u);
    }

    v18 = 0;
    v8 = [UAFStagingLogManager deleteItemAtURL:v3 error:&v18];
    v9 = v18;
    v10 = v9;
    if (!v8)
    {
      v13 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "+[UAFStagingLogManager createBuildVersionFile]";
        v24 = 2114;
        v25 = v10;
        v14 = "%s Failed to delete the directory: %{public}@";
        goto LABEL_15;
      }

LABEL_17:

      goto LABEL_18;
    }

LABEL_7:
    v10 = [UAFCommonUtilities mobileGestaltQuery:@"BuildVersion"];
    if ([v10 length])
    {
      v20 = @"BuildVersion";
      v21 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [UAFStagingLogManager writeToFile:v3 content:v11];

      if (v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      v13 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "+[UAFStagingLogManager createBuildVersionFile]";
        v24 = 2114;
        v25 = v3;
        v14 = "%s Failed to write build version to %{public}@";
LABEL_15:
        v15 = v13;
        v16 = 22;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = UAFGetLogCategory(&UAFLogContextStagingLogManager);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "+[UAFStagingLogManager createBuildVersionFile]";
        v14 = "%s Failed to get running build version";
        v15 = v13;
        v16 = 12;
LABEL_16:
        _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
        goto LABEL_17;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
}

@end