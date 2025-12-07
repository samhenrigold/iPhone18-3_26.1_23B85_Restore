@interface RestorePostProcess
- (BOOL)_configurePlaceholderIPA:(id)a personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated installType:(unint64_t)type;
- (BOOL)_createInstallCoordinatorForPlaceholderAtPath:(id)path bundleID:(id)d personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated installType:(unint64_t)type error:(id *)error;
- (BOOL)performMigration;
- (BOOL)performMigrationWithConfig:(id)config error:(id *)error;
- (RestorePostProcess)init;
- (float)estimatedDuration;
- (float)migrationProgress;
- (id)_installCoordinatorForPlaceholder:(id)placeholder bundleID:(id)d installType:(unint64_t)type personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated error:(id *)error;
- (id)_placeholderAtPath:(id)path bundleID:(id)d installType:(unint64_t)type error:(id *)error;
- (unint64_t)_installTypeForBundleID:(id)d demotedAppsPlist:(id)plist;
- (void)_installedPlaceholderWithBundleID:(id)d error:(id)error;
- (void)_registerPlaceholdersForBackgroundRestore:(id)restore personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated demotedAppsPlist:(id)plist;
- (void)_registerSafeHarborsAtPath:(id)path;
- (void)_resetTetheredSyncAnchors;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidInstallPlaceholder:(id)placeholder forApplicationRecord:(id)record;
@end

@implementation RestorePostProcess

- (RestorePostProcess)init
{
  v3.receiver = self;
  v3.super_class = RestorePostProcess;
  result = [(RestorePostProcess *)&v3 init];
  if (result)
  {
    result->_placeholderInstallationLock._os_unfair_lock_opaque = 0;
    result->_progress = 0.0;
  }

  return result;
}

- (void)_resetTetheredSyncAnchors
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting tethered sync anchors", buf, 2u);
    _MBLog(@"Df", "Resetting tethered sync anchors");
  }

  v3 = 0;
  v4 = "com.apple.Contacts";
  do
  {
    v5 = CFStringCreateWithCString(0, v4, 0x600u);
    v6 = MBGetDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting sync anchors for data source %@", buf, 0xCu);
        _MBLog(@"Df", "Resetting sync anchors for data source %@", v5);
      }

      if (CreateDataSourceForDataClassName())
      {
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v11 = v5;
          v12 = 2112;
          v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't create a data source for %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Couldn't create a data source for %@: %@", v5, 0);
        }
      }

      else
      {
        if (DataSourceClearSyncAnchors())
        {
          v9 = MBGetDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v11 = v5;
            v12 = 2112;
            v13 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't reset sync anchors for data source %@: %@", buf, 0x16u);
            _MBLog(@"E ", "Couldn't reset sync anchors for data source %@: %@", v5, 0);
          }
        }

        if (!DataSourceDeleteDataSource())
        {
          goto LABEL_21;
        }

        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v11 = v5;
          v12 = 2112;
          v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't delete data source for %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Couldn't delete data source for %@: %@", v5, 0);
        }
      }

LABEL_21:
      CFRelease(v5);
      goto LABEL_22;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't make CFString data class name for %s to clear sync anchors after restore", buf, 0xCu);
      _MBLog(@"E ", "Can't make CFString data class name for %s to clear sync anchors after restore", v4);
    }

LABEL_22:
    v4 = off_1003BE358[++v3];
  }

  while (v3 != 4);
}

- (void)_registerPlaceholdersForBackgroundRestore:(id)restore personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated demotedAppsPlist:(id)plist
{
  restoreCopy = restore;
  identifierCopy = identifier;
  plistCopy = plist;
  v38 = +[NSDate now];
  v39 = +[NSFileManager defaultManager];
  [(RestorePostProcess *)self setCurrentPlaceholderRestoreDirectory:restoreCopy];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [plistCopy path];
    *buf = 138543618;
    *&buf[4] = restoreCopy;
    *&buf[12] = 2114;
    *&buf[14] = path;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reading the app placeholders at %{public}@, demotedAppsPlist:%{public}@", buf, 0x16u);

    path2 = [plistCopy path];
    _MBLog(@"Df", "Reading the app placeholders at %{public}@, demotedAppsPlist:%{public}@", restoreCopy, path2);
  }

  v59 = 0;
  v40 = [v39 contentsOfDirectoryAtPath:restoreCopy error:&v59];
  v37 = v59;
  if (v40)
  {
    v36 = [v40 count];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Installing %lu app placeholders for persona %@", buf, 0x16u);
      _MBLog(@"Df", "Installing %lu app placeholders for persona %@", v36, identifierCopy);
    }

    v12 = objc_opt_new();
    [(RestorePostProcess *)self setAppInstallCoordinators:v12];

    v13 = dispatch_group_create();
    [(RestorePostProcess *)self setPlaceholderInstallationGroup:v13];

    v14 = dispatch_semaphore_create(2);
    v15 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v68 = 0;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v40;
    v16 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v16)
    {
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          dispatch_group_enter(v15);
          dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
          v20 = [(RestorePostProcess *)self _installTypeForBundleID:v19 demotedAppsPlist:plistCopy];
          v21 = [restoreCopy stringByAppendingPathComponent:v19];
          v22 = dispatch_get_global_queue(25, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000DFF30;
          block[3] = &unk_1003BE388;
          block[4] = self;
          v48 = v21;
          v23 = identifierCopy;
          separatedCopy = separated;
          v49 = v23;
          v52 = buf;
          v53 = v20;
          v50 = v14;
          v51 = v15;
          v24 = v21;
          dispatch_async(v22, block);
        }

        v16 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v16);
    }

    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v25 = atomic_load((*&buf[8] + 24));
    v26 = MBGetDefaultLog();
    v27 = v25;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 134218498;
      v61 = v25;
      v62 = 2048;
      v63 = *&v36;
      v64 = 2112;
      v65 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Done configuring %lu/%lu placeholders for %@. Waiting for them to get installed", v60, 0x20u);
      _MBLog(@"Df", "Done configuring %lu/%lu placeholders for %@. Waiting for them to get installed", v25, v36, identifierCopy);
    }

    placeholderInstallationGroup = [(RestorePostProcess *)self placeholderInstallationGroup];
    v29 = dispatch_time(0, ((5 * v27) * 1000000000.0));
    v30 = dispatch_group_wait(placeholderInstallationGroup, v29) == 0;

    if (!v30)
    {
      v31 = MBGetDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Placeholder installations timed out. Proceeding anyway", v60, 2u);
        _MBLog(@"Df", "Placeholder installations timed out. Proceeding anyway");
      }
    }

    [v38 timeIntervalSinceNow];
    v33 = v32;
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = -v33;
      *v60 = 138412546;
      v61 = identifierCopy;
      v62 = 2048;
      v63 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Finished installing app placeholders for persona %@ in %.3fs", v60, 0x16u);
      _MBLog(@"Df", "Finished installing app placeholders for persona %@ in %.3fs", identifierCopy, *&v35);
    }

    [(RestorePostProcess *)self setAppInstallCoordinators:0];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = restoreCopy;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "-contentsOfDirectoryAtPath: failed at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "-contentsOfDirectoryAtPath: failed at %{public}@: %{public}@", restoreCopy, v37);
    }
  }
}

- (unint64_t)_installTypeForBundleID:(id)d demotedAppsPlist:(id)plist
{
  dCopy = d;
  plistCopy = plist;
  bundleInstallTypeDictionary = self->_bundleInstallTypeDictionary;
  if (bundleInstallTypeDictionary)
  {
    goto LABEL_38;
  }

  path = [plistCopy path];
  v55 = 0;
  v10 = [NSData dataWithContentsOfFile:path options:0 error:&v55];
  v11 = v55;
  v12 = MBGetDefaultLog();
  v13 = v12;
  if (!v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v59 = path;
      v60 = 2114;
      v61 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to load the demoted apps plist at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to load the demoted apps plist at %{public}@: %{public}@", path, v11);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 length];
    *buf = 138543618;
    v59 = path;
    v60 = 2048;
    v61 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found demoted apps plist at %{public}@ (%lu bytes)", buf, 0x16u);
    _MBLog(@"Df", "Found demoted apps plist at %{public}@ (%lu bytes)", path, [v10 length]);
  }

  v54 = 0;
  v15 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v54];
  v16 = v54;

  if (!v15)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to deserialize the demoted apps plist data: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "Failed to deserialize the demoted apps plist data: %{public}@", v16);
    }

    v11 = v16;
LABEL_12:

    v15 = 0;
    v39 = v11;
    goto LABEL_13;
  }

  v39 = v16;
LABEL_13:
  v40 = v10;
  v41 = plistCopy;
  v42 = dCopy;
  v17 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v43 = v15;
  v18 = [v15 objectForKeyedSubscript:@"IntentionalDowngrades"];
  v19 = [v18 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v45 = 0;
    v21 = *v51;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v50 + 1) + 8 * i);
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v59 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Found intentionally downgraded app %{public}@", buf, 0xCu);
          _MBLog(@"I ", "Found intentionally downgraded app %{public}@", v23);
        }

        [(NSDictionary *)v17 setObject:&off_1003E0DB0 forKeyedSubscript:v23];
      }

      v45 = &v45[v20];
      v20 = [v18 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v20);
  }

  else
  {
    v45 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = [v43 objectForKeyedSubscript:@"AutomaticDowngrades"];
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v47;
    do
    {
      v44 = v28;
      for (j = 0; j != v27; ++j)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v59 = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Found automatically downgraded app %{public}@", buf, 0xCu);
          _MBLog(@"I ", "Found automatically downgraded app %{public}@", v31);
        }

        [(NSDictionary *)v17 setObject:&off_1003E0DC8 forKeyedSubscript:v31];
      }

      v28 = &v44[v27];
      v27 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v33 = self->_bundleInstallTypeDictionary;
  self->_bundleInstallTypeDictionary = v17;

  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v59 = v45;
    v60 = 2048;
    v61 = v28;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found %lu intentionally demoted apps and %lu automatically demoted apps to restore", buf, 0x16u);
    _MBLog(@"Df", "Found %lu intentionally demoted apps and %lu automatically demoted apps to restore", v45, v28);
  }

  bundleInstallTypeDictionary = self->_bundleInstallTypeDictionary;
  plistCopy = v41;
  dCopy = v42;
LABEL_38:
  v35 = [(NSDictionary *)bundleInstallTypeDictionary objectForKeyedSubscript:dCopy];
  v36 = v35;
  if (v35)
  {
    unsignedIntValue = [v35 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 2;
  }

  return unsignedIntValue;
}

- (BOOL)_configurePlaceholderIPA:(id)a personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated installType:(unint64_t)type
{
  separatedCopy = separated;
  aCopy = a;
  identifierCopy = identifier;
  v12 = +[NSFileManager defaultManager];
  lastPathComponent = [aCopy lastPathComponent];
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v70 = aCopy;
    v71 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Installing app placeholder at %@, installType:%lu", buf, 0x16u);
    _MBLog(@"Df", "Installing app placeholder at %@, installType:%lu", aCopy, type);
  }

  [aCopy stringByAppendingPathComponent:@"Payload"];
  v59 = v68[1] = 0;
  v15 = [v12 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v16 = 0;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if ([v16 code] != 516 || (objc_msgSend(v17, "domain"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", NSCocoaErrorDomain), v42, (v43 & 1) == 0))
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v70 = v59;
        v71 = 2114;
        typeCopy = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to create payload directory at %{public}@: %{public}@", buf, 0x16u);
        _MBLog(@"E ", "Failed to create payload directory at %{public}@: %{public}@", v59, v17);
      }

      goto LABEL_40;
    }
  }

  selfCopy = self;

  v68[0] = 0;
  v18 = [v12 contentsOfDirectoryAtPath:aCopy error:v68];
  v19 = v68[0];
  v20 = v19;
  if (!v18)
  {
    v17 = v19;
    v44 = MBGetDefaultLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v70 = aCopy;
      v71 = 2114;
      typeCopy = v17;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to enumerate the files inside the placeholder app at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to enumerate the files inside the placeholder app at %{public}@: %{public}@", aCopy, v17);
    }

    v18 = 0;
    goto LABEL_40;
  }

  if (![v18 count])
  {
    v17 = v20;
    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v70 = aCopy;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Couldn't find any files inside the placeholder app at %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Couldn't find any files inside the placeholder app at %{public}@", aCopy, v49);
    }

LABEL_39:

LABEL_40:
    v41 = 0;
    goto LABEL_41;
  }

  v51 = separatedCopy;
  typeCopy2 = type;
  v53 = lastPathComponent;
  v54 = identifierCopy;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v18 = v18;
  v60 = [v18 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v60)
  {
    v21 = *v65;
    v57 = aCopy;
    v58 = v18;
    v56 = *v65;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v64 + 1) + 8 * v22);
        lowercaseString = [v24 lowercaseString];
        v26 = [lowercaseString hasSuffix:@".app"];

        if (v26)
        {
          v27 = [aCopy stringByAppendingPathComponent:v24];
          v28 = [v59 stringByAppendingPathComponent:v24];
          v29 = [v27 stringByAppendingPathComponent:@"Info.plist"];
          v30 = [v12 contentsAtPath:v29];
          if (v30)
          {
            v31 = [NSPropertyListSerialization propertyListWithData:v30 options:1 format:0 error:0];
            [v31 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsRestore"];
            [v31 writeToFile:v29 atomically:1];
          }

          v63 = v23;
          v32 = v12;
          v33 = [v12 moveItemAtPath:v27 toPath:v28 error:&v63];
          v34 = v63;

          v35 = MBGetDefaultLog();
          v36 = v35;
          if (v33)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v70 = v27;
              v71 = 2114;
              typeCopy = v28;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Moved %{public}@ to %{public}@", buf, 0x16u);
              _MBLog(@"Df", "Moved %{public}@ to %{public}@", v27, v28, v50);
            }
          }

          else if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v70 = v27;
            v71 = 2114;
            typeCopy = v28;
            v73 = 2114;
            v74 = v34;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ to %{public}@: %{public}@", buf, 0x20u);
            _MBLog(@"E ", "Failed to move %{public}@ to %{public}@: %{public}@", v27, v28, v34);
          }

          v20 = v34;
          v23 = v34;
          aCopy = v57;
          v18 = v58;
          v12 = v32;
          v21 = v56;
        }

        else
        {
          v20 = v23;
        }

        v22 = v22 + 1;
      }

      while (v60 != v22);
      v60 = [v18 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v60);
  }

  lastPathComponent = v53;
  [AITransactionLog logStep:1 byParty:6 phase:1 success:1 forBundleID:v53 description:@"Starting placeholder install"];
  v62 = v20;
  identifierCopy = v54;
  v37 = [(RestorePostProcess *)selfCopy _createInstallCoordinatorForPlaceholderAtPath:aCopy bundleID:v53 personaIdentifier:v54 isDataSeparated:v51 installType:typeCopy2 error:&v62];
  v38 = v62;
  v39 = v20;
  v40 = v38;

  if ((v37 & 1) == 0)
  {
    v46 = MBGetDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v70 = v53;
      v71 = 2112;
      typeCopy = aCopy;
      v73 = 2112;
      v74 = v40;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to install the placeholder for %@ at %@: %@", buf, 0x20u);
      _MBLog(@"E ", "Failed to install the placeholder for %@ at %@: %@", v53, aCopy, v40);
    }

    [AITransactionLog logStep:1 byParty:6 phase:2 success:0 forBundleID:v53 description:@"Placeholder install failed"];
    v61 = v40;
    v47 = [v12 removeItemAtPath:aCopy error:&v61];
    v17 = v61;

    if (v47)
    {
      goto LABEL_40;
    }

    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v70 = v53;
      v71 = 2112;
      typeCopy = aCopy;
      v73 = 2112;
      v74 = v17;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to remove the placeholder for %@ at %@: %@", buf, 0x20u);
      _MBLog(@"E ", "Failed to remove the placeholder for %@ at %@: %@", v53, aCopy, v17);
    }

    goto LABEL_39;
  }

  v41 = 1;
  [AITransactionLog logStep:1 byParty:6 phase:2 success:1 forBundleID:v53 description:@"Placeholder install succeeded"];
  v17 = v40;
LABEL_41:

  return v41;
}

- (id)_placeholderAtPath:(id)path bundleID:(id)d installType:(unint64_t)type error:(id *)error
{
  pathCopy = path;
  v10 = [pathCopy stringByAppendingPathComponent:d];
  v11 = [v10 stringByAppendingPathExtension:@"ipa"];

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  v14 = MBGetDefaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IX: Restoring IPA-based app placeholder %@", buf, 0xCu);
      _MBLog(@"I ", "IX: Restoring IPA-based app placeholder %@", v11);
    }

    v16 = [NSURL fileURLWithPath:v11];
    v17 = [IXPlaceholder placeholderFromSerializedPlaceholder:v16 client:2 installType:type error:error];
  }

  else
  {
    if (v15)
    {
      *buf = 138412290;
      v21 = pathCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IX: Restoring pre-expanded app placeholder %@", buf, 0xCu);
      _MBLog(@"I ", "IX: Restoring pre-expanded app placeholder %@", pathCopy);
    }

    v16 = [NSURL fileURLWithPath:pathCopy];
    v17 = [IXPlaceholder placeholderForInstallable:v16 client:2 installType:type metadata:0 error:error];
  }

  v18 = v17;

  return v18;
}

- (id)_installCoordinatorForPlaceholder:(id)placeholder bundleID:(id)d installType:(unint64_t)type personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated error:(id *)error
{
  separatedCopy = separated;
  placeholderCopy = placeholder;
  dCopy = d;
  identifierCopy = identifier;
  if (!error)
  {
    __assert_rtn("[RestorePostProcess _installCoordinatorForPlaceholder:bundleID:installType:personaIdentifier:isDataSeparated:error:]", "RestorePostProcess.m", 322, "error");
  }

  v16 = identifierCopy;
  v17 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:dCopy personaUniqueString:identifierCopy];
  if (type - 7 > 1)
  {
    if (type == 2)
    {
      v34 = 0;
      v18 = [IXRestoringAppInstallCoordinator coordinatorForAppWithIdentity:v17 withClientID:2 createIfNotExisting:1 created:&v34 error:error];
      if (v18)
      {
        v19 = [placeholderCopy metadataWithError:error];
        if (!v19)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = *error;
            *buf = 138412802;
            typeCopy = dCopy;
            v37 = 2112;
            v38 = placeholderCopy;
            v39 = 2112;
            v40 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "IX: No placeholder metadata for %@:%@: %@", buf, 0x20u);
            _MBLog(@"I ", "IX: No placeholder metadata for %@:%@: %@", dCopy, placeholderCopy, *error);
          }
        }

        if (separatedCopy)
        {
          v22 = 23;
        }

        else
        {
          v22 = 1;
        }

        distributorInfo = [v19 distributorInfo];
        distributorIsThirdParty = [distributorInfo distributorIsThirdParty];

        if (distributorIsThirdParty)
        {
          v25 = 28;
        }

        else
        {
          v25 = v22;
        }

        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = IXStringForClientID();
          *buf = 138412802;
          typeCopy = dCopy;
          v37 = 2112;
          v38 = v16;
          v39 = 2112;
          v40 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "IX: Setting app asset DRI for %@(persona %@) as %@", buf, 0x20u);

          v28 = IXStringForClientID();
          _MBLog(@"I ", "IX: Setting app asset DRI for %@(persona %@) as %@", dCopy, v16, v28);
        }

        if (([v18 setAppAssetPromiseResponsibleClient:v25 error:error] & 1) == 0)
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = *error;
            *buf = 138412546;
            typeCopy = dCopy;
            v37 = 2112;
            v38 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "IX: Failed to set app asset DRI for  %@: %@", buf, 0x16u);
            _MBLog(@"E ", "IX: Failed to set app asset DRI for  %@: %@", dCopy, *error);
          }
        }

        v31 = v18;
      }
    }

    else
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "IX: Did not create InstallCoordinator for unknown install type (%lu)", buf, 0xCu);
        _MBLog(@"E ", "IX: Did not create InstallCoordinator for unknown install type (%lu)", type);
      }

      v18 = 0;
    }
  }

  else
  {
    buf[0] = 0;
    v18 = [IXRestoringDemotedAppInstallCoordinator coordinatorForAppWithIdentity:v17 withClientID:2 createIfNotExisting:1 created:buf error:error];
  }

  return v18;
}

- (BOOL)_createInstallCoordinatorForPlaceholderAtPath:(id)path bundleID:(id)d personaIdentifier:(id)identifier isDataSeparated:(BOOL)separated installType:(unint64_t)type error:(id *)error
{
  separatedCopy = separated;
  pathCopy = path;
  dCopy = d;
  identifierCopy = identifier;
  if (!error)
  {
    __assert_rtn("[RestorePostProcess _createInstallCoordinatorForPlaceholderAtPath:bundleID:personaIdentifier:isDataSeparated:installType:error:]", "RestorePostProcess.m", 371, "error");
  }

  v17 = identifierCopy;
  v48 = 0;
  v18 = [(RestorePostProcess *)self _placeholderAtPath:pathCopy bundleID:dCopy installType:type error:&v48];
  v19 = v48;
  v20 = v19;
  if (v18)
  {
    v47 = v19;
    v21 = [(RestorePostProcess *)self _installCoordinatorForPlaceholder:v18 bundleID:dCopy installType:type personaIdentifier:v17 isDataSeparated:separatedCopy error:&v47];
    v22 = v47;

    v23 = MBGetDefaultLog();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v50 = dCopy;
        v51 = 2112;
        v52 = v17;
        v53 = 2112;
        v54 = pathCopy;
        v55 = 2112;
        v56 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "IX: Created the install coordinator for %@(persona %@) at %@: %@", buf, 0x2Au);
        _MBLog(@"Df", "IX: Created the install coordinator for %@(persona %@) at %@: %@", dCopy, v17, pathCopy, v21);
      }

      [v21 setObserver:self];
      v46 = v22;
      v25 = [v18 setConfigurationCompleteWithError:&v46];
      v26 = v46;

      if ((v25 & 1) == 0)
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v50 = dCopy;
          v51 = 2112;
          v52 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "IX: Failed to configure the placeholder for %@: %@", buf, 0x16u);
          _MBLog(@"E ", "IX: Failed to configure the placeholder for %@: %@", dCopy, v26);
        }
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v50 = dCopy;
        v51 = 2112;
        v52 = v17;
        v53 = 2112;
        v54 = pathCopy;
        v55 = 2112;
        v56 = v18;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "IX: Configured the placeholder for %@(persona %@) at %@: %@", buf, 0x2Au);
        _MBLog(@"Df", "IX: Configured the placeholder for %@(persona %@) at %@: %@", dCopy, v17, pathCopy, v18);
      }

      os_unfair_lock_lock(&self->_placeholderInstallationLock);
      appInstallCoordinators = [(RestorePostProcess *)self appInstallCoordinators];
      [appInstallCoordinators setObject:v21 forKeyedSubscript:dCopy];

      placeholderInstallationGroup = [(RestorePostProcess *)self placeholderInstallationGroup];
      dispatch_group_enter(placeholderInstallationGroup);

      appInstallCoordinators2 = [(RestorePostProcess *)self appInstallCoordinators];
      v32 = [appInstallCoordinators2 count];

      os_unfair_lock_unlock(&self->_placeholderInstallationLock);
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v50 = dCopy;
        v51 = 2048;
        v52 = v32;
        v53 = 2112;
        v54 = v21;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "IX: Added %@ to list of install coordinators (%lu): %@", buf, 0x20u);
        _MBLog(@"Df", "IX: Added %@ to list of install coordinators (%lu): %@", dCopy, v32, v21);
      }

      v45 = v26;
      v34 = [v21 setPlaceholderPromise:v18 error:&v45];
      v35 = v45;

      if (v34)
      {
        v36 = 1;
        v22 = v35;
      }

      else
      {
        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v50 = v21;
          v51 = 2112;
          v52 = v35;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "IX: Failed to set the placeholder promise for %@: %@", buf, 0x16u);
          _MBLog(@"E ", "IX: Failed to set the placeholder promise for %@: %@", v21, v35);
        }

        pathCopy = [MBError errorWithCode:1 format:@"Couldn't set placeholder promise on InstallCoordinator for bundleID %@ at path %@", dCopy, pathCopy];
        v44 = v35;
        v40 = [v21 cancelForReason:pathCopy client:2 error:&v44];
        v22 = v44;

        if ((v40 & 1) == 0)
        {
          v41 = MBGetDefaultLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v50 = dCopy;
            v51 = 2112;
            v52 = v22;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "IX: Failed to cancel the coordinator for %@: %@", buf, 0x16u);
            _MBLog(@"E ", "IX: Failed to cancel the coordinator for %@: %@", dCopy, v22);
          }
        }

        v42 = pathCopy;
        *error = pathCopy;

        v36 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v50 = dCopy;
        v51 = 2112;
        v52 = pathCopy;
        v53 = 2112;
        v54 = v22;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "IX: Failed to create the install coordinator for %@ at path %@: %@", buf, 0x20u);
        _MBLog(@"E ", "IX: Failed to create the install coordinator for %@ at path %@: %@", dCopy, pathCopy, v22);
      }

      [MBError errorWithCode:1 format:@"Couldn't create the install coordinator for %@ at path %@", dCopy, pathCopy];
      *error = v36 = 0;
    }

    v20 = v22;
  }

  else
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = dCopy;
      v51 = 2112;
      v52 = v20;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "IX: Failed to create the placeholder bundleID %@: %@", buf, 0x16u);
      _MBLog(@"E ", "IX: Failed to create the placeholder bundleID %@: %@", dCopy, v20);
    }

    [MBError errorWithCode:1 format:@"Failed to create the placeholder for %@ at path %@", dCopy, pathCopy];
    *error = v36 = 0;
  }

  return v36;
}

- (void)_installedPlaceholderWithBundleID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  if (!dCopy)
  {
    __assert_rtn("[RestorePostProcess _installedPlaceholderWithBundleID:error:]", "RestorePostProcess.m", 424, "bundleID");
  }

  v8 = errorCopy;
  os_unfair_lock_lock(&self->_placeholderInstallationLock);
  appInstallCoordinators = [(RestorePostProcess *)self appInstallCoordinators];
  v10 = [appInstallCoordinators objectForKeyedSubscript:dCopy];

  if (v10)
  {
    placeholderInstallationGroup = [(RestorePostProcess *)self placeholderInstallationGroup];
    dispatch_group_leave(placeholderInstallationGroup);

    appInstallCoordinators2 = [(RestorePostProcess *)self appInstallCoordinators];
    [appInstallCoordinators2 removeObjectForKey:dCopy];

    self->_progress = self->_progress + 1.0;
    appInstallCoordinators3 = [(RestorePostProcess *)self appInstallCoordinators];
    v14 = [appInstallCoordinators3 count];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "IX: %@ not found in list of app coordinators", buf, 0xCu);
      _MBLog(@"E ", "IX: %@ not found in list of app coordinators", dCopy);
    }

    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_placeholderInstallationLock);
  v16 = MBGetDefaultLog();
  v17 = v16;
  if (v8)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = dCopy;
      v20 = 2048;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "IX: Failed to install placeholder for %@ (%lu): %@", buf, 0x20u);
      _MBLog(@"E ", "IX: Failed to install placeholder for %@ (%lu): %@", dCopy, v14, v8);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = dCopy;
    v20 = 2048;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "IX: Installed placeholder for %@ (%lu)", buf, 0x16u);
    _MBLog(@"Df", "IX: Installed placeholder for %@ (%lu)", dCopy, v14);
  }
}

- (void)coordinatorDidInstallPlaceholder:(id)placeholder forApplicationRecord:(id)record
{
  if (placeholder)
  {
    identity = [placeholder identity];
    bundleID = [identity bundleID];

    if (bundleID)
    {
      [(RestorePostProcess *)self _installedPlaceholderWithBundleID:bundleID error:0];
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "IX: -coordinatorDidInstallPlaceholder: called with nil bundleID", v8, 2u);
        _MBLog(@"E ", "IX: -coordinatorDidInstallPlaceholder: called with nil bundleID");
      }

      bundleID = 0;
    }
  }

  else
  {
    bundleID = MBGetDefaultLog();
    if (os_log_type_enabled(bundleID, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_ERROR, "IX: -coordinatorDidInstallPlaceholder: called with nil coordinator", buf, 2u);
      _MBLog(@"E ", "IX: -coordinatorDidInstallPlaceholder: called with nil coordinator");
    }
  }
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  bundleID = [coordinator bundleID];
  v9 = bundleID;
  if (!coordinator)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = IXStringForClientID();
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IX: -coordinator:canceledWithReason:client: called with nil coordinator (%@)", buf, 0xCu);

      v12 = IXStringForClientID();
      _MBLog(@"E ", "IX: -coordinator:canceledWithReason:client: called with nil coordinator (%@)", v12);
LABEL_8:
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!bundleID)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = IXStringForClientID();
      *buf = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "IX: -coordinator:canceledWithReason:client: called with nil bundleID (%@)", buf, 0xCu);

      v12 = IXStringForClientID();
      _MBLog(@"E ", "IX: -coordinator:canceledWithReason:client: called with nil bundleID (%@)", v12);
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(RestorePostProcess *)self _installedPlaceholderWithBundleID:bundleID error:reasonCopy];
LABEL_10:
}

- (void)_registerSafeHarborsAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v29 = pathCopy;
  v28 = [[MBMobileInstallation alloc] initWithSafeHarborDir:pathCopy];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registering safe harbors", buf, 2u);
    _MBLog(@"Df", "Registering safe harbors");
  }

  v35 = 0;
  v6 = [v4 contentsOfDirectoryAtPath:pathCopy error:&v35];
  v7 = v35;
  if (v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v25 = v6;
      v26 = v4;
      v11 = *v32;
      obj = v8;
      do
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v29 stringByAppendingPathComponent:*(*(&v31 + 1) + 8 * v12)];
          v15 = [MBApp safeHarborWithPath:v14];
          if (!v15)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v37 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error loading safe harbor at %@", buf, 0xCu);
              _MBLog(@"E ", "Error loading safe harbor at %@", v14);
            }
          }

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            bundleID = [v15 bundleID];
            *buf = 138412546;
            v37 = bundleID;
            v38 = 2112;
            v39 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Registering safe harbor for %@ at %@", buf, 0x16u);

            bundleID2 = [v15 bundleID];
            _MBLog(@"Df", "Registering safe harbor for %@ at %@", bundleID2, v14);
          }

          LODWORD(v17) = [v15 containerType];
          if ([v15 containerType])
          {
            v17 = v17;
          }

          else
          {
            v17 = 1;
          }

          bundleID3 = [v15 bundleID];
          v30 = v13;
          v21 = [(MBMobileInstallation *)v28 registerSafeHarborWithIdentifier:bundleID3 path:v14 type:v17 error:&v30];
          v7 = v30;

          if ((v21 & 1) == 0)
          {
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              bundleID4 = [v15 bundleID];
              *buf = 138412802;
              v37 = bundleID4;
              v38 = 2112;
              v39 = v14;
              v40 = 2112;
              v41 = v7;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Couldn't install safe harbor for %@ at %@ (already registered?): %@", buf, 0x20u);

              bundleID5 = [v15 bundleID];
              _MBLog(@"Df", "Couldn't install safe harbor for %@ at %@ (already registered?): %@", bundleID5, v14, v7);
            }
          }

          v12 = v12 + 1;
          v13 = v7;
        }

        while (v10 != v12);
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v10);
      v6 = v25;
      v4 = v26;
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = pathCopy;
      v38 = 2112;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Couldn't find any safe harbors at %@: %@", buf, 0x16u);
      _MBLog(@"Df", "Couldn't find any safe harbors at %@: %@", pathCopy, v7);
    }
  }
}

- (BOOL)performMigrationWithConfig:(id)config error:(id *)error
{
  configCopy = config;
  context = [(RestorePostProcess *)self context];
  [context objectForKeyedSubscript:@"Reason"];
  v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  didRestoreFromBackup = [(RestorePostProcess *)self didRestoreFromBackup];
  didRestoreFromCloudBackup = [(RestorePostProcess *)self didRestoreFromCloudBackup];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (didRestoreFromBackup)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (didRestoreFromCloudBackup)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *buf = 138413314;
    v36 = v8;
    v37 = 2112;
    v38 = configCopy;
    v39 = 2080;
    v40 = v12;
    v41 = 2080;
    v42 = v13;
    v43 = 2048;
    userDataDisposition = [(RestorePostProcess *)self userDataDisposition];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating, reason:%@, %@, didRestoreFromBackup:%s, didRestoreFromCloudBackup:%s, userDataDisposition:0x%lx", buf, 0x34u);
    _MBLog(@"Df", "Migrating, reason:%@, %@, didRestoreFromBackup:%s, didRestoreFromCloudBackup:%s, userDataDisposition:0x%lx", *&v8, configCopy, v12, v13, [(RestorePostProcess *)self userDataDisposition]);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = +[MBCKManager sharedInstance];
  makeLockdownEncryptionInfoConsistentWithKeychain(v16);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NewCarrierNotification", 0, 0, 0);
  if ((didRestoreFromCloudBackup & 1) != 0 || [configCopy isDataSeparated])
  {
    placeholderRestoreDirectory = [configCopy placeholderRestoreDirectory];
    personaID = [configCopy personaID];
    isDataSeparated = [configCopy isDataSeparated];
    demotedAppsPlist = [configCopy demotedAppsPlist];
    [(RestorePostProcess *)self _registerPlaceholdersForBackgroundRestore:placeholderRestoreDirectory personaIdentifier:personaID isDataSeparated:isDataSeparated demotedAppsPlist:demotedAppsPlist];
  }

  _MBLogFlushDeprecated();
  if ([configCopy shouldRegisterSafeHarbors])
  {
    safeHarborDirectory = [configCopy safeHarborDirectory];
    [(RestorePostProcess *)self _registerSafeHarborsAtPath:safeHarborDirectory];

    _MBLogFlushDeprecated();
  }

  _MBLogFlushDeprecated();
  if ((-[RestorePostProcess shouldPreserveSettingsAfterRestore](self, "shouldPreserveSettingsAfterRestore") & 1) == 0 && [configCopy shouldResetTetheredSyncAnchors])
  {
    [(RestorePostProcess *)self _resetTetheredSyncAnchors];
  }

  if (![configCopy shouldPrepareForBackgroundRestore])
  {
    goto LABEL_21;
  }

  account = [configCopy account];
  if (!account)
  {
    __assert_rtn("[RestorePostProcess performMigrationWithConfig:error:]", "RestorePostProcess.m", 557, "config.account");
  }

  account2 = [configCopy account];
  v34 = 0;
  v25 = [v16 prepareForBackgroundRestoreWithAccount:account2 error:&v34];
  v26 = COERCE_DOUBLE(v34);

  if (v25)
  {

LABEL_21:
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v36 = v28 - v15;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Migrated in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog(@"Df", "Migrated in %0.3f s", v29 - v15);
    }

    self->_progress = self->_progress + 1.0;
    v30 = 1;
    goto LABEL_29;
  }

  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to prepare for background restore in-process: %@", buf, 0xCu);
    _MBLog(@"E ", "Failed to prepare for background restore in-process: %@", *&v26);
  }

  if (error)
  {
    v32 = *&v26;
    *error = v26;
  }

  v30 = 0;
LABEL_29:

  return v30;
}

- (BOOL)performMigration
{
  v3 = objc_autoreleasePoolPush();
  MBLogEnableFileLogging();
  if (([(RestorePostProcess *)self didUpgrade]& 1) == 0)
  {
    didRestoreFromBackup = [(RestorePostProcess *)self didRestoreFromBackup];
    didRestoreFromCloudBackup = [(RestorePostProcess *)self didRestoreFromCloudBackup];
    if ((didRestoreFromBackup & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping migration, didRestoreFromBackup:%d", buf, 8u);
        _MBLog(@"Df", "Skipping migration, didRestoreFromBackup:%d", 0);
      }

      v4 = 1;
      goto LABEL_37;
    }

    v7 = didRestoreFromCloudBackup;
    restoredBackupDeviceName = [(RestorePostProcess *)self restoredBackupDeviceName];
    [MBLockdown setDeviceName:restoredBackupDeviceName];

    v9 = [(RestorePostProcess *)self userDataDisposition]& 0x20;
    if (v9 | [(RestorePostProcess *)self userDataDisposition]& 0x40)
    {
      v10 = objc_opt_new();
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Restoring previous settings enabled for mega backup", buf, 2u);
        _MBLog(@"Df", "Restoring previous settings enabled for mega backup");
      }

      v30 = 0;
      v12 = [v10 restorePreviousSettingsEnabledForMegaBackup:&v30];
      v13 = v30;
      if ((v12 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to restore previous settings enabled for mega backup: %@", buf, 0xCu);
          _MBLog(@"E ", "Failed to restore previous settings enabled for mega backup: %@", v13);
        }
      }
    }

    if (v7)
    {
      v15 = objc_alloc_init(MBManager);
      personalPersonaIdentifier = [v15 personalPersonaIdentifier];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = personalPersonaIdentifier;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "personalPersonaIdentifier: %{public}@", buf, 0xCu);
        _MBLog(@"Df", "personalPersonaIdentifier: %{public}@", personalPersonaIdentifier);
      }

      if (!personalPersonaIdentifier)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to fetch the personal persona identifier", buf, 2u);
          _MBLog(@"E ", "Failed to fetch the personal persona identifier");
        }

        v4 = 0;
        goto LABEL_36;
      }

      v15 = personalPersonaIdentifier;
    }

    else
    {
      v15 = 0;
    }

    v29 = 0;
    v18 = [[_TtC7backupd14MigratorConfig alloc] initWithPersonaID:v15 didRestoreFromBackup:1 didRestoreFromCloudBackup:v7 error:&v29];
    v19 = v29;
    v20 = v19;
    if (v18)
    {
      v28 = v19;
      v4 = [(RestorePostProcess *)self performMigrationWithConfig:v18 error:&v28];
      v21 = v28;

      if (!v4)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to perform migration with error: %{public}@", buf, 0xCu);
          _MBLog(@"E ", "Failed to perform migration with error: %{public}@", v21);
        }
      }

      _MBLogFlushDeprecated();
      v20 = v21;
    }

    else if (-[NSObject code](v19, "code") == 22 && (-[NSObject domain](v20, "domain"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 isEqual:NSPOSIXErrorDomain], v23, v24))
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Skipping migration for non-restore: %@", buf, 0xCu);
        _MBLog(@"Df", "Skipping migration for non-restore: %@", v20);
      }

      v4 = 1;
    }

    else
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to create MigratorConfig for backup restore: %{public}@", buf, 0xCu);
        _MBLog(@"E ", "Failed to create MigratorConfig for backup restore: %{public}@", v20);
      }

      v4 = 0;
    }

LABEL_36:
LABEL_37:

    goto LABEL_38;
  }

  v4 = 1;
LABEL_38:
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (float)estimatedDuration
{
  if (self->_estimatedDuration == 0.0)
  {
    if ([(RestorePostProcess *)self didRestoreFromBackup])
    {
      currentPlaceholderRestoreDirectory = [(RestorePostProcess *)self currentPlaceholderRestoreDirectory];

      if (currentPlaceholderRestoreDirectory)
      {
        v4 = +[NSFileManager defaultManager];
        currentPlaceholderRestoreDirectory2 = [(RestorePostProcess *)self currentPlaceholderRestoreDirectory];
        v6 = [v4 contentsOfDirectoryAtPath:currentPlaceholderRestoreDirectory2 error:0];

        self->_estimatedDuration = [v6 count] + 1.0;
      }
    }
  }

  return self->_estimatedDuration;
}

- (float)migrationProgress
{
  progress = self->_progress;
  [(RestorePostProcess *)self estimatedDuration];
  return progress / v3;
}

@end