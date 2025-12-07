@interface MBRestorePolicy
- (BOOL)_isUnencryptedLocal;
- (BOOL)_pluginsAllowForegroundRestoreFile:(id)file;
- (BOOL)shouldAlwaysRestoreSystemSharedContainerDomain:(id)domain;
- (BOOL)shouldForegroundRestoreDomain:(id)domain;
- (BOOL)shouldRemoveAndRetryPlacingAssetsForRestorable:(id)restorable;
- (BOOL)shouldRestoreFile:(id)file markFileAsSkipped:(BOOL *)skipped error:(id *)error;
- (BOOL)shouldRestoreSystemFile:(id)file;
- (MBRestorePolicy)initWithPersona:(id)persona enginePolicyProvider:(id)provider appManager:(id)manager plugins:(id)plugins serviceRestoreMode:(id)mode osBuildVersionOfBackup:(id)backup shouldRestoreSystemFiles:(BOOL)files isRestoringPrimaryAccount:(BOOL)self0 shouldCreateMissingIntermediateDirectories:(BOOL)self1;
- (id)_localRootPathForDomain:(id)domain;
- (id)deprecated_destinationPathForiCloudRestorable:(id)restorable safeHarborDir:(id)dir;
- (id)deprecated_validateFile:(id)file debugContext:(id)context;
- (id)deriveATCPolicy;
- (id)notifyPluginsEndedRestoreWithEngine:(id)engine error:(id)error;
- (id)notifyPluginsEndingRestoreWithEngine:(id)engine;
- (id)notifyPluginsPreparingRestoreWithEngine:(id)engine;
- (id)notifyPluginsStartingRestoreWithEngine:(id)engine;
- (id)restorePathForDriveRestorable:(id)restorable;
- (id)restoreRootForDomain:(id)domain;
- (id)validateRestoreDomain:(id)domain relativePath:(id)path;
- (int)restoreType;
- (int64_t)restoreBehaviorForDomain:(id)domain error:(id *)error;
- (int64_t)restoreBehaviorForFile:(id)file withValidation:(BOOL)validation debugContext:(id)context error:(id *)error;
- (unint64_t)_enginePolicy;
- (unint64_t)foregroundStateForRestorable:(id)restorable;
@end

@implementation MBRestorePolicy

- (MBRestorePolicy)initWithPersona:(id)persona enginePolicyProvider:(id)provider appManager:(id)manager plugins:(id)plugins serviceRestoreMode:(id)mode osBuildVersionOfBackup:(id)backup shouldRestoreSystemFiles:(BOOL)files isRestoringPrimaryAccount:(BOOL)self0 shouldCreateMissingIntermediateDirectories:(BOOL)self1
{
  personaCopy = persona;
  providerCopy = provider;
  managerCopy = manager;
  pluginsCopy = plugins;
  modeCopy = mode;
  backupCopy = backup;
  if (!personaCopy)
  {
    __assert_rtn("[MBRestorePolicy initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:]", "MBRestorePolicy.m", 48, "persona");
  }

  if (!managerCopy)
  {
    __assert_rtn("[MBRestorePolicy initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:]", "MBRestorePolicy.m", 49, "appManager");
  }

  v23 = backupCopy;
  v29.receiver = self;
  v29.super_class = MBRestorePolicy;
  v24 = [(MBRestorePolicy *)&v29 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_persona, persona);
    objc_storeWeak(&v25->_enginePolicyProvider, providerCopy);
    v25->_enginePolicy = 0;
    objc_storeStrong(&v25->_appManager, manager);
    if (pluginsCopy)
    {
      v26 = pluginsCopy;
    }

    else
    {
      v26 = &__NSArray0__struct;
    }

    objc_storeStrong(&v25->_plugins, v26);
    objc_storeStrong(&v25->_serviceRestoreMode, mode);
    objc_storeStrong(&v25->_osBuildVersionOfBackup, backup);
    v25->_shouldRestoreSystemFiles = files;
    v25->_isRestoringPrimaryAccount = account;
    v25->_shouldCreateMissingIntermediateDirectories = directories;
  }

  return v25;
}

- (id)deriveATCPolicy
{
  v3 = [MBRestorePolicy alloc];
  persona = self->_persona;
  WeakRetained = objc_loadWeakRetained(&self->_enginePolicyProvider);
  BYTE2(v8) = 1;
  BYTE1(v8) = self->_isRestoringPrimaryAccount;
  LOBYTE(v8) = self->_shouldRestoreSystemFiles;
  v6 = [MBRestorePolicy initWithPersona:v3 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona plugins:WeakRetained serviceRestoreMode:self->_appManager osBuildVersionOfBackup:self->_plugins shouldRestoreSystemFiles:self->_serviceRestoreMode isRestoringPrimaryAccount:self->_osBuildVersionOfBackup shouldCreateMissingIntermediateDirectories:v8];

  return v6;
}

- (unint64_t)_enginePolicy
{
  result = self->_enginePolicy;
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(&self->_enginePolicyProvider);
    self->_enginePolicy = [WeakRetained enginePolicy];

    result = self->_enginePolicy;
    if (!result)
    {
      __assert_rtn("[MBRestorePolicy _enginePolicy]", "MBRestorePolicy.m", 83, "_enginePolicy");
    }
  }

  return result;
}

- (BOOL)_isUnencryptedLocal
{
  _isDriveEngine = [(MBRestorePolicy *)self _isDriveEngine];
  if (_isDriveEngine)
  {
    if ([(MBRestorePolicy *)self _isEncrypted])
    {
      LOBYTE(_isDriveEngine) = 0;
    }

    else
    {
      LOBYTE(_isDriveEngine) = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
    }
  }

  return _isDriveEngine;
}

- (int)restoreType
{
  serviceRestoreMode = self->_serviceRestoreMode;
  if (serviceRestoreMode && (v3 = [(MBServiceRestoreMode *)serviceRestoreMode type]- 1, v3 <= 6))
  {
    return dword_1002B9F10[v3];
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldForegroundRestoreDomain:(id)domain
{
  domainCopy = domain;
  if ([(NSSet *)self->_domainNamesToForegroundInstall containsObject:domainCopy]|| ![MBDomain isContainerizedName:domainCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [domainCopy isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];
  }

  return v5;
}

- (unint64_t)foregroundStateForRestorable:(id)restorable
{
  v8 = 0;
  v7 = 0;
  v3 = [(MBRestorePolicy *)self shouldRestoreFile:restorable markFileAsSkipped:&v8 error:&v7];
  v4 = v7;
  v5 = 0;
  if ((v3 & 1) == 0)
  {
    if (([MBError isError:v4 withCode:213]& 1) != 0)
    {
      v5 = 3;
    }

    else if (v8)
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }
  }

  return v5;
}

- (id)restoreRootForDomain:(id)domain
{
  domainCopy = domain;
  persona = [(MBRestorePolicy *)self persona];
  rootPath = [domainCopy rootPath];
  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type]== 6)
  {
    if ([domainCopy isBackupDomain])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = rootPath;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restore-policy= Restoring BackupDomain for EDS persona in-place at %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Restoring BackupDomain for EDS persona in-place at %@", rootPath);
      }

LABEL_11:

      goto LABEL_12;
    }

    if ([domainCopy isLegacyPerAppPlaceholderDomain])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = rootPath;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restore-policy= Restoring legacy placeholder for EDS persona in-place at %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Restoring legacy placeholder for EDS persona in-place at %@", rootPath);
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type])
  {
LABEL_12:
    v9 = rootPath;
    goto LABEL_15;
  }

  if (![domainCopy shouldRestoreToSharedVolume])
  {
LABEL_13:
    userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
    goto LABEL_14;
  }

  userIncompleteRestoreDirectory = [persona sharedIncompleteRestoreDirectory];
LABEL_14:
  v10 = userIncompleteRestoreDirectory;
  v9 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:rootPath];

LABEL_15:

  return v9;
}

- (id)restorePathForDriveRestorable:(id)restorable
{
  restorableCopy = restorable;
  if (!restorableCopy)
  {
    __assert_rtn("[MBRestorePolicy restorePathForDriveRestorable:]", "MBRestorePolicy.m", 208, "restorable");
  }

  v5 = restorableCopy;
  persona = [(MBRestorePolicy *)self persona];
  domain = [v5 domain];
  if ([domain shouldRestoreToSharedVolume])
  {
    [persona sharedIncompleteRestoreDirectory];
  }

  else
  {
    [persona userIncompleteRestoreDirectory];
  }
  v8 = ;
  absolutePath = [v5 absolutePath];
  v10 = [v8 stringByAppendingPathComponent:absolutePath];

  return v10;
}

- (id)deprecated_destinationPathForiCloudRestorable:(id)restorable safeHarborDir:(id)dir
{
  restorableCopy = restorable;
  dirCopy = dir;
  if ([(MBServiceRestoreMode *)self->_serviceRestoreMode type]== 6)
  {
    domain = [restorableCopy domain];
    if (([domain isBackupDomain] & 1) != 0 || objc_msgSend(domain, "isLegacyPerAppPlaceholderDomain"))
    {
      absolutePath = [restorableCopy absolutePath];
LABEL_15:

      goto LABEL_16;
    }

    persona = [(MBRestorePolicy *)self persona];
    domain2 = persona;
    goto LABEL_12;
  }

  if ([(MBRestorePolicy *)self _isForegroundRestore])
  {
    domain = [(MBRestorePolicy *)self persona];
    domain2 = [restorableCopy domain];
    if ([domain2 shouldRestoreToSharedVolume])
    {
      sharedIncompleteRestoreDirectory = [domain sharedIncompleteRestoreDirectory];
LABEL_13:
      v13 = sharedIncompleteRestoreDirectory;
      absolutePath2 = [restorableCopy absolutePath];
      absolutePath = [v13 stringByAppendingPathComponent:absolutePath2];

      goto LABEL_14;
    }

    persona = domain;
LABEL_12:
    sharedIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
    goto LABEL_13;
  }

  if ([dirCopy length])
  {
    domain = [dirCopy stringByAppendingPathComponent:kMBSafeHarborDataDirName];
    domain2 = [restorableCopy relativePath];
    absolutePath = [domain stringByAppendingPathComponent:domain2];
LABEL_14:

    goto LABEL_15;
  }

  absolutePath = [restorableCopy absolutePath];
LABEL_16:

  return absolutePath;
}

- (BOOL)shouldRestoreSystemFile:(id)file
{
  fileCopy = file;
  domain = [fileCopy domain];
  if (([domain isPlaceholderDomain] & 1) == 0 && (-[MBServiceRestoreMode type](self->_serviceRestoreMode, "type") != 6 || (objc_msgSend(domain, "isBackupDomain") & 1) == 0) && (!objc_msgSend(domain, "isSystemSharedContainerDomain") || !-[MBRestorePolicy shouldAlwaysRestoreSystemSharedContainerDomain:](self, "shouldAlwaysRestoreSystemSharedContainerDomain:", domain)))
  {
    relativePathsOfSystemFilesToAlwaysRestore = [domain relativePathsOfSystemFilesToAlwaysRestore];
    if ([relativePathsOfSystemFilesToAlwaysRestore count])
    {
      v32 = relativePathsOfSystemFilesToAlwaysRestore;
      relativePath = [fileCopy relativePath];
      pathComponents = [relativePath pathComponents];

      v33 = pathComponents;
      v10 = [pathComponents count];
      v11 = 0;
      do
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [v33 subarrayWithRange:{0, v11}];
        v14 = [NSString pathWithComponents:v13];

        relativePathsOfSystemFilesToAlwaysRestore2 = [domain relativePathsOfSystemFilesToAlwaysRestore];
        v16 = [relativePathsOfSystemFilesToAlwaysRestore2 containsObject:v14];

        objc_autoreleasePoolPop(v12);
        if (v16)
        {

          v6 = 1;
          relativePathsOfSystemFilesToAlwaysRestore = v32;
          goto LABEL_30;
        }

        ++v11;
      }

      while (v11 <= v10);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      relativePathsOfSystemFilesToAlwaysRestore = v32;
      v17 = v32;
      v36 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v36)
      {
        selfCopy = self;
        v31 = domain;
        v18 = 0;
        obj = v17;
        v35 = *v39;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v39 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            pathComponents2 = [v20 pathComponents];
            v22 = [pathComponents2 count];
            v23 = 0;
            do
            {
              v24 = [pathComponents2 subarrayWithRange:{0, v23}];
              v25 = [NSString pathWithComponents:v24];

              relativePath2 = [fileCopy relativePath];
              v27 = [relativePath2 isEqualToString:v25];

              v18 |= v27;
              ++v23;
            }

            while (v23 <= v22);

            objc_autoreleasePoolPop(context);
          }

          v36 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v36);

        domain = v31;
        relativePathsOfSystemFilesToAlwaysRestore = v32;
        self = selfCopy;
        if (v18)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if (([domain isAppDomain] & 1) == 0 && !self->_shouldRestoreSystemFiles)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = fileCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring system file: %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Not restoring system file: %@", fileCopy);
      }

      v6 = 0;
      goto LABEL_30;
    }

LABEL_26:
    v6 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v6 = 1;
LABEL_31:

  return v6;
}

- (BOOL)shouldRestoreFile:(id)file markFileAsSkipped:(BOOL *)skipped error:(id *)error
{
  fileCopy = file;
  if (skipped)
  {
    *skipped = 0;
  }

  v9 = objc_autoreleasePoolPush();
  domain = [fileCopy domain];
  if (!domain)
  {
    __assert_rtn("[MBRestorePolicy shouldRestoreFile:markFileAsSkipped:error:]", "MBRestorePolicy.m", 294, "domain");
  }

  v11 = domain;
  rootPath = [domain rootPath];
  if ([rootPath hasPrefix:@"/private"])
  {
    rootPath2 = [v11 rootPath];
    v14 = [rootPath2 hasPrefix:@"/private/var/PersonaVolumes"];

    if ((v14 & 1) == 0)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = fileCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring (invalid path prefix): %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Not restoring (invalid path prefix): %@", fileCopy);
      }

      rootPath3 = [v11 rootPath];
      rootPath4 = [v11 rootPath];
      v18 = [MBError errorWithCode:205 path:rootPath3 format:@"Domain %@ has an invalid root path: %@", v11, rootPath4];
LABEL_9:

      goto LABEL_21;
    }
  }

  else
  {
  }

  rootPath5 = [v11 rootPath];
  relativePath = [fileCopy relativePath];
  rootPath3 = [rootPath5 stringByAppendingPathComponent:relativePath];

  if (strlen([rootPath3 fileSystemRepresentation]) >= 0x3E6)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      name = [v11 name];
      *buf = 138412546;
      v73 = name;
      v74 = 2112;
      v75 = rootPath3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring (file name too long): %@:%@", buf, 0x16u);

      name2 = [v11 name];
      _MBLog(@"I ", "=restore-policy= Not restoring (file name too long): %@:%@", name2, rootPath3);
    }

    if (skipped)
    {
      *skipped = 1;
    }

    v18 = [MBError errorWithCode:107 path:rootPath3 format:@"Cannot restore file with path name that is too long"];
    goto LABEL_21;
  }

  v71 = 0;
  v24 = [(MBRestorePolicy *)self restoreBehaviorForFile:fileCopy debugContext:0 error:&v71];
  v25 = v71;
  v18 = v25;
  if (v24 == -1)
  {
LABEL_21:

    objc_autoreleasePoolPop(v9);
LABEL_22:
    if (error)
    {
      v26 = v18;
      v27 = 0;
      *error = v18;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_25;
  }

  if (v24 == 1)
  {
    if (skipped)
    {
      *skipped = 1;
    }

    goto LABEL_21;
  }

  v68 = v25;
  if (_os_feature_enabled_impl())
  {
    if ([(MBRestorePolicy *)self _isForegroundRestore])
    {
      domain2 = [fileCopy domain];
      name3 = [domain2 name];
      v31 = [name3 isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

      if (v31)
      {
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v73 = fileCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "=restore-policy= Not restoring in foreground because file is in LocalStorage domain: %@", buf, 0xCu);
          _MBLog(@"Db", "=restore-policy= Not restoring in foreground because file is in LocalStorage domain: %@", fileCopy);
        }

        rootPath4 = [fileCopy relativePath];
        v18 = [MBError errorWithCode:213 path:rootPath4 format:@"Not restoring in foreground because file is in LocalStorage domain"];

        goto LABEL_9;
      }
    }
  }

  v65 = rootPath3;
  v66 = v9;
  errorCopy = error;
  v69 = fileCopy;
  relativePath2 = [fileCopy relativePath];
  pathComponents = [relativePath2 pathComponents];

  v70 = pathComponents;
  v35 = [pathComponents count];
  v36 = 0;
  do
  {
    v37 = objc_autoreleasePoolPush();
    v38 = [pathComponents subarrayWithRange:{0, v36}];
    v39 = [NSString pathWithComponents:v38];

    relativePathsNotToRestore = [v11 relativePathsNotToRestore];
    v41 = [relativePathsNotToRestore containsObject:v39];

    if (v41)
    {
      error = errorCopy;
      if (skipped)
      {
        *skipped = 1;
      }

      v54 = MBGetDefaultLog();
      fileCopy = v69;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = v69;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring: %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Not restoring: %@", v69);
      }

      v53 = 1;
LABEL_66:

      objc_autoreleasePoolPop(v37);
      v27 = 0;
      v46 = v66;
      goto LABEL_67;
    }

    if (-[MBRestorePolicy _isForegroundRestore](self, "_isForegroundRestore") && ([v69 type] & 0xF000) == 0x8000)
    {
      relativePathsToBackgroundRestore = [v11 relativePathsToBackgroundRestore];
      if ([relativePathsToBackgroundRestore containsObject:v39])
      {
        shouldRestoreSystemFiles = self->_shouldRestoreSystemFiles;

        if (shouldRestoreSystemFiles)
        {
          v56 = MBGetDefaultLog();
          v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
          fileCopy = v69;
          if (v57)
          {
            *buf = 138412290;
            v73 = v69;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "=restore-policy= Ignoring file since it needs to be restored in the background: %@", buf, 0xCu);
            _MBLog(@"Db", "=restore-policy= Ignoring file since it needs to be restored in the background: %@", v69);
          }

          v58 = [MBError errorWithCode:213 format:@"Domain policy requires file must be restored in the background"];

          v53 = 6;
          v68 = v58;
          error = errorCopy;
          goto LABEL_66;
        }
      }

      else
      {
      }
    }

    if (![(MBRestorePolicy *)self isRestoringToSameDevice])
    {
      relativePathsNotToMigrate = [v11 relativePathsNotToMigrate];
      v45 = [relativePathsNotToMigrate containsObject:v39];

      if (v45)
      {
        v55 = MBGetDefaultLog();
        fileCopy = v69;
        error = errorCopy;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v69;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because this is a migrate: %@", buf, 0xCu);
          _MBLog(@"I ", "=restore-policy= Not restoring because this is a migrate: %@", v69);
        }

        v53 = 1;
        if (skipped)
        {
          *skipped = 1;
        }

        goto LABEL_66;
      }
    }

    objc_autoreleasePoolPop(v37);
    ++v36;
  }

  while (v36 <= v35);
  fileCopy = v69;
  error = errorCopy;
  if ([(MBRestorePolicy *)self shouldRestoreSystemFile:v69])
  {
    v46 = v66;
    if (![(MBRestorePolicy *)self _isForegroundRestore])
    {
      goto LABEL_70;
    }

    if ([v11 isAppDomain])
    {
      appManager = self->_appManager;
      containerID = [v11 containerID];
      v49 = [(MBAppManager *)appManager appWithIdentifier:containerID];

      if (([v49 isSystemApp] & 1) != 0 || (objc_msgSend(v11, "name"), v50 = objc_claimAutoreleasedReturnValue(), v51 = -[MBRestorePolicy shouldForegroundRestoreDomain:](self, "shouldForegroundRestoreDomain:", v50), v50, v51))
      {
        v52 = MBGetDefaultLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v73 = v69;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "=restore-policy= Restoring system app in the foreground: %@", buf, 0xCu);
          _MBLog(@"Db", "=restore-policy= Restoring system app in the foreground: %@", v69);
        }

        goto LABEL_50;
      }

      if ([v11 isLegacyPerAppPlaceholderDomain])
      {
        v52 = MBGetDefaultLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v73 = v69;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "=restore-policy= Restoring app placeholder file in the foreground: %@", buf, 0xCu);
          _MBLog(@"Db", "=restore-policy= Restoring app placeholder file in the foreground: %@", v69);
        }

LABEL_50:
        v53 = 1;
        v27 = 1;
      }

      else
      {
        if ([v11 isPluginAppDomain])
        {
          v60 = MBGetDefaultLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v73 = v69;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "=restore-policy= Restoring app plugin file in the background: %@", buf, 0xCu);
            _MBLog(@"I ", "=restore-policy= Restoring app plugin file in the background: %@", v69);
          }

          v61 = @"App plug-in file must be restored in the background";
        }

        else
        {
          isGroupAppDomain = [v11 isGroupAppDomain];
          v63 = MBGetDefaultLog();
          v64 = os_log_type_enabled(v63, OS_LOG_TYPE_INFO);
          if (isGroupAppDomain)
          {
            if (v64)
            {
              *buf = 138412290;
              v73 = v69;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "=restore-policy= Restoring group container file in the background: %@", buf, 0xCu);
              _MBLog(@"I ", "=restore-policy= Restoring group container file in the background: %@", v69);
            }

            v61 = @"Group container file must be restored in the background";
          }

          else
          {
            if (v64)
            {
              *buf = 138412290;
              v73 = v69;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "=restore-policy= Restoring app file in the background: %@", buf, 0xCu);
              _MBLog(@"I ", "=restore-policy= Restoring app file in the background: %@", v69);
            }

            v61 = @"App file must be restored in the background";
          }
        }

        [MBError errorWithCode:213 format:v61];
        v27 = 0;
        v52 = v68;
        v68 = v53 = 6;
      }

      goto LABEL_67;
    }

    if (![(MBRestorePolicy *)self _pluginsAllowForegroundRestoreFile:v69])
    {
      v59 = [MBError errorWithCode:213 format:@"Plug-in requested file must be restored in the background"];

      v27 = 0;
      v53 = 6;
      v68 = v59;
    }

    else
    {
LABEL_70:
      v53 = 1;
      v27 = 1;
    }
  }

  else
  {
    v53 = 1;
    v46 = v66;
    v27 = 0;
    if (skipped)
    {
      *skipped = 1;
    }
  }

LABEL_67:

  objc_autoreleasePoolPop(v46);
  v18 = v68;
  if (v53 == 6)
  {
    goto LABEL_22;
  }

LABEL_25:

  return v27;
}

- (BOOL)_pluginsAllowForegroundRestoreFile:(id)file
{
  fileCopy = file;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_plugins;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v5)
  {
    v13 = 1;
    goto LABEL_33;
  }

  v6 = v5;
  v29 = fileCopy;
  v7 = *v31;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v30 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        absolutePath = [v29 absolutePath];
        v11 = [v9 shouldRestoreContentWithPolicy:self atPath:absolutePath];

        if ((v11 & 1) == 0)
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            Name = class_getName(v14);
            *buf = 136446466;
            v35 = Name;
            v36 = 2112;
            fileCopy = v29;
            v37 = v29;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);
            v16 = objc_opt_class();
            v17 = class_getName(v16);
            _MBLog(@"I ", "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", v17, v29);
          }

          else
          {
            fileCopy = v29;
          }

          goto LABEL_32;
        }
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v12 = 0;
          goto LABEL_18;
        }

LABEL_14:
        v12 = [MBFileInfo fileInfoWithRestorable:v29];
LABEL_15:
        if (([v9 shouldRestoreContentWithPolicy:self fileInfo:v12] & 1) == 0)
        {
          v21 = MBGetDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = objc_opt_class();
            v24 = class_getName(v23);
            *buf = 136446466;
            v35 = v24;
            v36 = 2112;
            fileCopy = v29;
            v37 = v29;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);
            v20 = "=restore-policy= Not restoring because it was refused by plugin %{public}s: %@";
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        goto LABEL_18;
      }

      v12 = [MBFileInfo fileInfoWithRestorable:v29];
      if ([v9 shouldBackgroundRestoreContentWithPolicy:self fileInfo:v12])
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = class_getName(v18);
          *buf = 136446466;
          v35 = v19;
          v36 = 2112;
          fileCopy = v29;
          v37 = v29;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restore-policy= Restoring system file in the background (requested by plugin %{public}s: %@", buf, 0x16u);
          v20 = "=restore-policy= Restoring system file in the background (requested by plugin %{public}s: %@";
LABEL_28:
          v25 = objc_opt_class();
          v26 = class_getName(v25);
          _MBLog(@"I ", v20, v26, fileCopy);
LABEL_30:

LABEL_32:
          v13 = 0;
          goto LABEL_33;
        }

LABEL_29:
        fileCopy = v29;
        goto LABEL_30;
      }

      if (objc_opt_respondsToSelector())
      {
        if (!v12)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_18:
    }

    v6 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  v13 = 1;
  fileCopy = v29;
LABEL_33:

  return v13;
}

- (int64_t)restoreBehaviorForDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  if ([domainCopy isPlaceholderDomain] & 1) != 0 || -[MBServiceRestoreMode type](self->_serviceRestoreMode, "type") == 6 && (objc_msgSend(domainCopy, "isBackupDomain"))
  {
LABEL_2:
    integerValue = 0;
    goto LABEL_53;
  }

  if (!self->_shouldRestoreSystemFiles && ([domainCopy isAppDomain] & 1) == 0)
  {
    relativePathsOfSystemFilesToAlwaysRestore = [domainCopy relativePathsOfSystemFilesToAlwaysRestore];

    if (!relativePathsOfSystemFilesToAlwaysRestore)
    {
      if (![(MBRestorePolicy *)self shouldAlwaysRestoreSystemSharedContainerDomain:domainCopy])
      {
        v11 = MBGetDefaultLog();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        name = [domainCopy name];
        *buf = 138412290;
        v45 = name;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring system domain: %@", buf, 0xCu);

        name2 = [domainCopy name];
        _MBLog(@"Df", "=restore-policy= Not restoring system domain: %@", name2);
        goto LABEL_12;
      }

      goto LABEL_2;
    }
  }

  if ([(MBRestorePolicy *)self _isDriveEngine])
  {
    containerID = [domainCopy containerID];
    v10 = [containerID isEqualToString:@"systemgroup.com.apple.mobilegestaltcache"];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        integerValue = 1;
        goto LABEL_53;
      }

      name3 = [domainCopy name];
      *buf = 138543362;
      v45 = name3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring mobile gestalt cache: %{public}@", buf, 0xCu);

      name2 = [domainCopy name];
      _MBLog(@"Df", "=restore-policy= Not restoring mobile gestalt cache: %{public}@", name2);
LABEL_12:

      goto LABEL_13;
    }
  }

  rootPath = [domainCopy rootPath];
  if (([rootPath hasPrefix:@"/private"] & 1) == 0)
  {

LABEL_20:
    cachedDomainRestoreBehaviors = self->_cachedDomainRestoreBehaviors;
    name4 = [domainCopy name];
    v21 = [(NSMutableDictionary *)cachedDomainRestoreBehaviors objectForKeyedSubscript:name4];

    if (v21)
    {
      integerValue = [v21 integerValue];
LABEL_52:

      goto LABEL_53;
    }

    v22 = [(MBRestorePolicy *)self _localRootPathForDomain:domainCopy];
    v23 = [NSURL fileURLWithPath:v22];

    v43 = 0;
    v42 = 0;
    v24 = [v23 getResourceValue:&v43 forKey:NSURLIsExcludedFromBackupKey error:&v42];
    v25 = v43;
    v26 = v42;
    if (v24 && [v25 BOOLValue])
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = domainCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain (attribute set locally): %@", buf, 0xCu);
        _MBLog(@"Df", "=restore-policy= Not restoring domain (attribute set locally): %@", domainCopy);
      }

      v28 = self->_cachedDomainRestoreBehaviors;
      name5 = [domainCopy name];
      [(NSMutableDictionary *)v28 setObject:&off_1003E0E10 forKeyedSubscript:name5];

      goto LABEL_43;
    }

    _isMegaBackup = [(MBRestorePolicy *)self _isMegaBackup];
    if ([(MBRestorePolicy *)self _isUnencryptedLocal])
    {
      error = 0;
      propertyValueTypeRefPtr = 0;
      v31 = _kCFURLIsExcludedFromUnencryptedBackupKey;
      if (CFURLCopyResourcePropertyForKey(v23, _kCFURLIsExcludedFromUnencryptedBackupKey, &propertyValueTypeRefPtr, &error))
      {
        v32 = propertyValueTypeRefPtr;
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
          if (v32 == kCFBooleanTrue)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = domainCopy;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain from unencrypted iTunes backup (attribute set locally): %@", buf, 0xCu);
              _MBLog(@"Df", "=restore-policy= Not restoring domain from unencrypted iTunes backup (attribute set locally): %@", domainCopy);
            }

LABEL_42:

LABEL_43:
            integerValue = 1;
LABEL_51:

            goto LABEL_52;
          }
        }

        goto LABEL_50;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_47:
        *buf = 138543618;
        v45 = v31;
        v46 = 2112;
        errorCopy = error;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
        _MBLog(@"E ", "=restore-policy= Error fetching value for property %{public}@: %@", v31, error);
      }
    }

    else
    {
      if (_isMegaBackup & 1 | ![(MBRestorePolicy *)self _isCloudKitEngine])
      {
        goto LABEL_50;
      }

      error = 0;
      propertyValueTypeRefPtr = 0;
      v31 = _kCFURLIsExcludedFromCloudBackupKey;
      if (CFURLCopyResourcePropertyForKey(v23, _kCFURLIsExcludedFromCloudBackupKey, &propertyValueTypeRefPtr, &error))
      {
        v35 = propertyValueTypeRefPtr;
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
          if (v35 == kCFBooleanTrue)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = domainCopy;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring domain from iCloud (attribute set locally): %@", buf, 0xCu);
              _MBLog(@"Df", "=restore-policy= Not restoring domain from iCloud (attribute set locally): %@", domainCopy);
            }

            goto LABEL_42;
          }
        }

LABEL_50:
        v37 = self->_cachedDomainRestoreBehaviors;
        name6 = [domainCopy name];
        [(NSMutableDictionary *)v37 setObject:&off_1003E0E28 forKeyedSubscript:name6];

        integerValue = 0;
        goto LABEL_51;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_50;
  }

  rootPath2 = [domainCopy rootPath];
  v16 = [rootPath2 hasPrefix:@"/private/var/PersonaVolumes"];

  if (v16)
  {
    goto LABEL_20;
  }

  if (error)
  {
    rootPath3 = [domainCopy rootPath];
    rootPath4 = [domainCopy rootPath];
    *error = [MBError errorWithCode:205 path:rootPath3 format:@"Domain %@ has an invalid root path: %@", domainCopy, rootPath4];
  }

  integerValue = -1;
LABEL_53:

  return integerValue;
}

- (int64_t)restoreBehaviorForFile:(id)file withValidation:(BOOL)validation debugContext:(id)context error:(id *)error
{
  validationCopy = validation;
  fileCopy = file;
  contextCopy = context;
  domain = [(NSString *)fileCopy domain];
  v13 = [(MBRestorePolicy *)self restoreBehaviorForDomain:domain error:error];

  if (v13)
  {
    goto LABEL_77;
  }

  selfCopy = self;
  relativePathsNotToBackupToDrive = buf;
  domain2 = [(NSString *)fileCopy domain];
  relativePath = [(NSString *)fileCopy relativePath];
  v17 = [relativePath length];
  if (v17 - [@".plist.1234567" length] >= 1)
  {
    v18 = [relativePath substringFromIndex:?];
    v19 = [v18 hasPrefix:@".plist."];

    if (v19)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        p_isa = &relativePath->isa;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring up failed plist safe save: %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Not restoring up failed plist safe save: %@", relativePath);
      }

LABEL_10:

      v13 = 1;
      goto LABEL_76;
    }
  }

  pathExtension = [relativePath pathExtension];
  if ([pathExtension isEqualToString:@"dat"])
  {
    v22 = [relativePath containsString:@"binarycookies_tmp"];

    if (v22)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        p_isa = &relativePath->isa;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=restore-policy= Not restoring up temporary cookie: %@", buf, 0xCu);
        _MBLog(@"I ", "=restore-policy= Not restoring up temporary cookie: %@", relativePath);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (validationCopy)
  {
    if ((MBIsValidRelativePath() & 1) == 0)
    {
      if (error)
      {
        name = [domain2 name];
        *error = [MBError errorWithCode:205 format:@"File path is invalid: %@:%@", name, relativePath];
      }

      v13 = -1;
      goto LABEL_76;
    }

    if ([relativePath length])
    {
      rootPath = [domain2 rootPath];
      v24 = strlen([rootPath fileSystemRepresentation]);
      v25 = strlen([relativePath fileSystemRepresentation]) + v24;

      if (v25 >= 0x3E6)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          p_isa = domain2;
          v116 = 2112;
          v117 = relativePath;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restore-policy= File path is too long and will be skipped: %@:%@", buf, 0x16u);
          _MBLog(@"Df", "=restore-policy= File path is too long and will be skipped: %@:%@", domain2, relativePath);
        }

        goto LABEL_10;
      }
    }
  }

  _isMegaBackup = [(MBRestorePolicy *)selfCopy _isMegaBackup];
  _isDriveEngine = [(MBRestorePolicy *)selfCopy _isDriveEngine];
  v102 = _isMegaBackup;
  v28 = _isDriveEngine | _isMegaBackup;
  _isServiceEngine = [(MBRestorePolicy *)selfCopy _isServiceEngine];
  v106 = v28;
  v30 = v28 ^ 1;
  v93 = contextCopy;
  v94 = fileCopy;
  v101 = validationCopy;
  if (_isDriveEngine)
  {
    v103 = ![(MBRestorePolicy *)selfCopy _isDeviceTransferEngine];
  }

  else
  {
    v103 = 0;
  }

  v105 = _isServiceEngine & v30;
  _isDeviceTransferEngine = [(MBRestorePolicy *)selfCopy _isDeviceTransferEngine];
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_1001508C8;
  v112[3] = &unk_1003BFC68;
  v112[4] = selfCopy;
  v113 = v102;
  v95 = objc_retainBlock(v112);
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = sub_100150CA4;
  v111[3] = &unk_1003BFC90;
  v111[4] = selfCopy;
  v97 = objc_retainBlock(v111);
  v98 = relativePath;
  pathComponents = [relativePath pathComponents];
  [pathComponents count];
  v32 = -1;
  v104 = domain2;
  while (1)
  {
    v33 = pathComponents;
    v34 = [pathComponents subarrayWithRange:{0, v32 + 1}];
    v35 = [NSString pathWithComponents:v34];

    relativePathsNotToBackup = [domain2 relativePathsNotToBackup];
    if ([relativePathsNotToBackup containsObject:v35])
    {
      break;
    }

    if (v106)
    {
      relativePathsNotToBackupToDrive = [domain2 relativePathsNotToBackupToDrive];
      if ([relativePathsNotToBackupToDrive containsObject:v35])
      {

        break;
      }
    }

    if (v105)
    {
      validationCopy = [domain2 relativePathsNotToBackupToService];
      if ([validationCopy containsObject:v35])
      {
        v37 = 1;
        goto LABEL_43;
      }
    }

    if (v103)
    {
      _isDriveEngine = [domain2 relativePathsNotToBackupToLocal];
      if ([_isDriveEngine containsObject:v35])
      {
        v37 = 1;
LABEL_42:

        if ((v105 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    if ((v102 & 1) == 0)
    {
      if ((_isDeviceTransferEngine & 1) == 0)
      {
        v37 = 0;
LABEL_36:
        if (v103)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

LABEL_35:
      relativePathsNotToTransferDeviceToDevice = [domain2 relativePathsNotToTransferDeviceToDevice];
      v37 = [relativePathsNotToTransferDeviceToDevice containsObject:v35];

      domain2 = v104;
      if ((v102 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    relativePath = [domain2 relativePathsNotToBackupInMegaBackup];
    if ([relativePath containsObject:v35])
    {

      v37 = 1;
      goto LABEL_41;
    }

    if (_isDeviceTransferEngine)
    {
      goto LABEL_35;
    }

    v37 = 0;
LABEL_40:

LABEL_41:
    if (v103)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (v105)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v106)
    {
    }

    if (v37)
    {
      goto LABEL_72;
    }

    pathComponents = v33;
    if ([v33 count] <= ++v32)
    {
      v39 = &unk_1002B9000;
      v40 = 1;
      v41 = v95;
      if ((v106 & 1) == 0)
      {
        goto LABEL_88;
      }

      [v104 relativePathsToIgnoreExclusionsForDrive];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v42 = v110 = 0u;
      v43 = [v42 countByEnumeratingWithState:&v107 objects:v120 count:16];
      if (!v43)
      {
        v55 = v42;
        goto LABEL_87;
      }

      v44 = v43;
      v45 = *v108;
      v46 = v98;
      while (1)
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v108 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v48 = *(*(&v107 + 1) + 8 * i);
          if ([v48 hasSuffix:@"/"])
          {
            v49 = MBGetDefaultLog();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = v49;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                name2 = [v104 name];
                *buf = 138412546;
                p_isa = name2;
                v116 = 2112;
                v117 = v48;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "=restore-policy= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", buf, 0x16u);
              }

              name3 = [v104 name];
              _MBLog(@"E ", "=restore-policy= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", name3, v48);

              v46 = v98;
            }
          }

          else if ([v46 hasPrefix:v48])
          {
            v53 = [v46 length];
            v54 = [v48 length];
            if (v53 == v54 || v54 < v53 && [v46 characterAtIndex:v54]== 47)
            {

              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                v55 = v55;
                v41 = v95;
                v39 = &unk_1002B9000;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  p_isa = v94;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "=restore-policy= Skipping exclusion check for %@", buf, 0xCu);
                }

                _MBLog(@"Db", "=restore-policy= Skipping exclusion check for %@", v94);
                v40 = 0;
                pathComponents = v33;
LABEL_87:

LABEL_88:
                [pathComponents count];
                v59 = -1;
                v91 = v39[396];
                v96 = 1;
                while (2)
                {
                  v60 = objc_autoreleasePoolPush();
                  v61 = [pathComponents subarrayWithRange:{0, v59 + 1}];
                  v62 = [NSString pathWithComponents:v61];

                  if (v40)
                  {
                    v63 = [(MBRestorePolicy *)selfCopy _localRootPathForDomain:v104];
                    v64 = [v63 stringByAppendingPathComponent:v62];

                    if ((v41[2])(v41, v64))
                    {
                      if (![v64 isEqualToString:@"/var/mobile/Library/Preferences"])
                      {
                        name7 = MBGetDefaultLog();
                        if (os_log_type_enabled(name7, OS_LOG_TYPE_DEFAULT))
                        {
                          domain2 = v104;
                          name4 = [v104 name];
                          *buf = 138412802;
                          p_isa = name4;
                          v116 = 2112;
                          relativePath = v98;
                          v117 = v98;
                          v118 = 2112;
                          v119 = v62;
                          _os_log_impl(&_mh_execute_header, name7, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring file (attribute set locally): %@:%@ (%@)", buf, 0x20u);

                          name5 = [v104 name];
                          _MBLog(@"Df", "=restore-policy= Not restoring file (attribute set locally): %@:%@ (%@)", name5, v98, v62);

                          contextCopy = v93;
                          pathComponents = v33;
                        }

                        else
                        {
                          contextCopy = v93;
                          relativePath = v98;
                          pathComponents = v33;
                          domain2 = v104;
                        }

LABEL_170:

                        goto LABEL_172;
                      }

                      if ((byte_100421830 & 1) == 0)
                      {
                        byte_100421830 = 1;
                        v65 = MBGetDefaultLog();
                        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                        {
                          v66 = v65;
                          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = v91;
                            p_isa = NSURLIsExcludedFromBackupKey;
                            v116 = 2112;
                            v117 = v64;
                            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "=restore-policy= Found %@ at %@ - ignoring", buf, 0x16u);
                          }

                          _MBLog(@"Df", "=restore-policy= Found %@ at %@ - ignoring", NSURLIsExcludedFromBackupKey, v64);
                        }
                      }
                    }
                  }

                  if (!v101)
                  {
                    goto LABEL_154;
                  }

                  pathComponents = v33;
                  if ([v33 count] > v59 + 1 && (v97[2])(v97, v104, v62))
                  {
                    v64 = MBGetDefaultLog();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      domain2 = v104;
                      name6 = [v104 name];
                      *buf = v91;
                      p_isa = name6;
                      v116 = 2112;
                      relativePath = v98;
                      v117 = v98;
                      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring file (path contains a symlink): %@:%@", buf, 0x16u);

                      name7 = [v104 name];
                      _MBLog(@"Df", "=restore-policy= Not restoring file (path contains a symlink): %@:%@", name7, v98);
                      contextCopy = v93;
                      goto LABEL_170;
                    }

                    contextCopy = v93;
                    relativePath = v98;
                    domain2 = v104;
LABEL_172:

                    objc_autoreleasePoolPop(v60);
                    v13 = 1;
                    fileCopy = v94;
                    goto LABEL_75;
                  }

                  relativePathsToRestore = [v104 relativePathsToRestore];
                  if ([relativePathsToRestore containsObject:v62])
                  {
LABEL_103:

                    v96 = 0;
                    goto LABEL_155;
                  }

                  if (v105)
                  {
                    relativePathsToRestoreOnlyFromService = [v104 relativePathsToRestoreOnlyFromService];
                    v92 = relativePathsToRestoreOnlyFromService;
                    if ([relativePathsToRestoreOnlyFromService containsObject:v62])
                    {

                      goto LABEL_103;
                    }
                  }

                  relativePathsToBackupToDriveAndStandardAccount = [v104 relativePathsToBackupToDriveAndStandardAccount];
                  if ([relativePathsToBackupToDriveAndStandardAccount containsObject:v62])
                  {

                    if (v105)
                    {
                    }

                    goto LABEL_103;
                  }

                  if ([v104 isExternalConfig])
                  {
                    hasExternalConfig = [v104 hasExternalConfig];

                    if (v105)
                    {
                    }

                    if ((hasExternalConfig & 1) == 0)
                    {
                      v96 = 0;
LABEL_154:
                      pathComponents = v33;
LABEL_155:

                      objc_autoreleasePoolPop(v60);
                      if ([pathComponents count] <= ++v59)
                      {
                        if (v101)
                        {
                          fileCopy = v94;
                          v13 = 0;
                          contextCopy = v93;
                          relativePath = v98;
                          domain2 = v104;
                          if (([(NSString *)v94 type]& 0xF000) != 0x4000 && v96 == 1)
                          {
                            [v93 setFlag:@"RestorePathNotInSetOfPathsToBackup"];
                            v79 = MBGetDefaultLog();
                            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                            {
                              v80 = v79;
                              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                              {
                                name8 = [v104 name];
                                *buf = v91;
                                p_isa = name8;
                                v116 = 2112;
                                v117 = v98;
                                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring file (skipped): %@:%@", buf, 0x16u);

                                pathComponents = v33;
                              }

                              name9 = [v104 name];
                              _MBLog(@"Df", "=restore-policy= Not restoring file (skipped): %@:%@", name9, v98);
                            }

                            v13 = 1;
                          }
                        }

                        else
                        {
                          v13 = 0;
                          contextCopy = v93;
                          fileCopy = v94;
                          relativePath = v98;
                          domain2 = v104;
                        }

                        goto LABEL_75;
                      }

                      continue;
                    }
                  }

                  else
                  {

                    if (v105)
                    {
                    }
                  }

                  break;
                }

                relativePathsNotToBackup2 = [v104 relativePathsNotToBackup];
                if ([relativePathsNotToBackup2 containsObject:v62])
                {
LABEL_120:

LABEL_153:
                  v96 = 1;
                  goto LABEL_154;
                }

                if (v106)
                {
                  relativePathsNotToBackupToDrive2 = [v104 relativePathsNotToBackupToDrive];
                  v87 = relativePathsNotToBackupToDrive2;
                  if ([relativePathsNotToBackupToDrive2 containsObject:v62])
                  {

                    goto LABEL_120;
                  }
                }

                if (v105)
                {
                  relativePathsNotToBackupToService = [v104 relativePathsNotToBackupToService];
                  if ([relativePathsNotToBackupToService containsObject:v62])
                  {
                    v73 = 1;
                    goto LABEL_143;
                  }
                }

                if (v103)
                {
                  relativePathsNotToBackupToLocal = [v104 relativePathsNotToBackupToLocal];
                  if ([relativePathsNotToBackupToLocal containsObject:v62])
                  {
                    v73 = 1;
                    goto LABEL_142;
                  }
                }

                if (v102)
                {
                  relativePathsNotToBackupInMegaBackup = [v104 relativePathsNotToBackupInMegaBackup];
                  v89 = relativePathsNotToBackupInMegaBackup;
                  if ([relativePathsNotToBackupInMegaBackup containsObject:v62])
                  {

                    v73 = 1;
                    goto LABEL_141;
                  }

                  if (_isDeviceTransferEngine)
                  {
LABEL_136:
                    relativePathsNotToTransferDeviceToDevice2 = [v104 relativePathsNotToTransferDeviceToDevice];
                    v73 = [relativePathsNotToTransferDeviceToDevice2 containsObject:v62];

                    v75 = v89;
                    if ((v102 & 1) == 0)
                    {
                      goto LABEL_137;
                    }
                  }

                  else
                  {
                    v73 = 0;
                    v75 = relativePathsNotToBackupInMegaBackup;
                  }

                  v89 = v75;

LABEL_141:
                  if (v103)
                  {
LABEL_142:

                    if (v105)
                    {
LABEL_143:
                      v77 = relativePathsNotToBackupToService;
                      goto LABEL_148;
                    }

                    v75 = v89;
                    v78 = relativePathsNotToBackupToLocal;
LABEL_149:
                    v89 = v75;
                    relativePathsNotToBackupToLocal = v78;
                    goto LABEL_150;
                  }

                  v75 = v89;
                }

                else
                {
                  if (_isDeviceTransferEngine)
                  {
                    goto LABEL_136;
                  }

                  v73 = 0;
                  v75 = v89;
LABEL_137:
                  if (v103)
                  {
                    v89 = v75;
                    goto LABEL_142;
                  }
                }

                v78 = relativePathsNotToBackupToLocal;
                v77 = relativePathsNotToBackupToService;
                if (!v105)
                {
                  goto LABEL_149;
                }

                v89 = v75;
LABEL_148:
                relativePathsNotToBackupToService = v77;

LABEL_150:
                if (v106)
                {
                }

                if ((v73 & 1) == 0)
                {
                  goto LABEL_154;
                }

                goto LABEL_153;
              }

              v40 = 0;
LABEL_86:
              v41 = v95;
              pathComponents = v33;
              v39 = &unk_1002B9000;
              goto LABEL_87;
            }
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v107 objects:v120 count:16];
        if (!v44)
        {
          v40 = 1;
          v55 = v42;
          goto LABEL_86;
        }
      }
    }
  }

LABEL_72:
  v57 = MBGetDefaultLog();
  pathComponents = v33;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    p_isa = v35;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "=restore-policy= Skipping file %@", buf, 0xCu);
    _MBLog(@"Db", "=restore-policy= Skipping file %@", v35);
  }

  v13 = 1;
  contextCopy = v93;
  fileCopy = v94;
  relativePath = v98;
LABEL_75:

LABEL_76:
LABEL_77:

  return v13;
}

- (id)_localRootPathForDomain:(id)domain
{
  domainCopy = domain;
  v5 = domainCopy;
  if (!self->_appManager)
  {
    goto LABEL_9;
  }

  if ([domainCopy isSystemContainerDomain])
  {
    appManager = self->_appManager;
    name = [v5 name];
    v8 = [MBDomain containerIDWithName:name];
    v9 = [(MBAppManager *)appManager systemDataContainerWithIdentifier:v8];
    goto LABEL_6;
  }

  if (![v5 isSystemSharedContainerDomain])
  {
LABEL_9:
    rootPath = [v5 rootPath];
    goto LABEL_12;
  }

  v10 = self->_appManager;
  name = [v5 name];
  v8 = [MBDomain containerIDWithName:name];
  v9 = [(MBAppManager *)v10 systemSharedContainerWithIdentifier:v8];
LABEL_6:
  v11 = v9;

  if (v11 && ([v11 domain], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasRootPath"), v12, (v13 & 1) != 0))
  {
    domain = [v11 domain];
    rootPath = [domain rootPath];
  }

  else
  {
    rootPath = [v5 rootPath];
  }

LABEL_12:

  return rootPath;
}

- (id)deprecated_validateFile:(id)file debugContext:(id)context
{
  fileCopy = file;
  contextCopy = context;
  relativePath = [fileCopy relativePath];
  valid = MBIsValidRelativePath();

  if ((valid & 1) == 0)
  {
    domain = [fileCopy domain];
    name = [domain name];
    relativePath2 = [fileCopy relativePath];
    v15 = [MBError errorWithCode:205 format:@"File path is invalid: %@:%@", name, relativePath2];
LABEL_61:

    goto LABEL_62;
  }

  LODWORD(relativePathsNotToTransferDeviceToDevice) = [(MBRestorePolicy *)self _isMegaBackup];
  _isDriveEngine = [(MBRestorePolicy *)self _isDriveEngine];
  if ([(MBRestorePolicy *)self _isDriveEngine])
  {
    v48 = ![(MBRestorePolicy *)self _isDeviceTransferEngine];
  }

  else
  {
    v48 = 0;
  }

  _isServiceEngine = [(MBRestorePolicy *)self _isServiceEngine];
  _isDeviceTransferEngine = [(MBRestorePolicy *)self _isDeviceTransferEngine];
  domain = [fileCopy relativePath];
  name = [fileCopy domain];
  relativePath2 = [name relativePathsToRestore];
  if ([relativePath2 containsObject:domain])
  {
    v15 = 0;
    goto LABEL_61;
  }

  v34 = contextCopy;
  v17 = _isDriveEngine | relativePathsNotToTransferDeviceToDevice;
  v18 = _isServiceEngine & ((_isDriveEngine | relativePathsNotToTransferDeviceToDevice) ^ 1);
  v40 = relativePathsNotToTransferDeviceToDevice;
  while (1)
  {
    if (v18)
    {
      domain2 = [fileCopy domain];
      _isDriveEngine = [domain2 relativePathsToRestoreOnlyFromService];
      if ([_isDriveEngine containsObject:domain])
      {
        v19 = 1;
        goto LABEL_20;
      }

      domain3 = [fileCopy domain];
      relativePathsToBackupToDriveAndStandardAccount = [domain3 relativePathsToBackupToDriveAndStandardAccount];
      if ([relativePathsToBackupToDriveAndStandardAccount containsObject:domain])
      {
        v19 = 1;
LABEL_19:

LABEL_20:
        if (v19)
        {
          goto LABEL_65;
        }

        goto LABEL_21;
      }
    }

    domain4 = [fileCopy domain];
    if (![domain4 isExternalConfig])
    {

      if (!v18)
      {

        goto LABEL_21;
      }

      v19 = 0;
      goto LABEL_19;
    }

    domain5 = [fileCopy domain];
    hasExternalConfig = [domain5 hasExternalConfig];

    if (v18)
    {
      v19 = hasExternalConfig ^ 1;
      LOBYTE(relativePathsNotToTransferDeviceToDevice) = v40;
      goto LABEL_19;
    }

    LOBYTE(relativePathsNotToTransferDeviceToDevice) = v40;
    if ((hasExternalConfig & 1) == 0)
    {
LABEL_65:
      v15 = 0;
      contextCopy = v34;
      goto LABEL_62;
    }

LABEL_21:
    domain6 = [fileCopy domain];
    relativePathsNotToBackup = [domain6 relativePathsNotToBackup];
    if ([relativePathsNotToBackup containsObject:domain])
    {

      v30 = @"File path in set of paths not to back up: %@:%@";
      v31 = @"RestorePathInSetOfPathsNotToBackup";
      contextCopy = v34;
LABEL_60:
      [contextCopy setFlag:v31];
      name = [fileCopy domain];
      relativePath2 = [name name];
      relativePath3 = [fileCopy relativePath];
      v15 = [MBError errorWithCode:205 format:v30, relativePath2, relativePath3];

      goto LABEL_61;
    }

    if ((v17 & 1) == 0 || ([fileCopy domain], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "relativePathsNotToBackupToDrive"), v45 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v45, "containsObject:", domain) & 1) == 0))
    {
      if (v18)
      {
        domain7 = [fileCopy domain];
        relativePathsNotToBackupToService = [domain7 relativePathsNotToBackupToService];
        if ([relativePathsNotToBackupToService containsObject:domain])
        {
          v25 = 1;
          goto LABEL_48;
        }
      }

      if (v48)
      {
        domain8 = [fileCopy domain];
        relativePathsNotToBackupToLocal = [domain8 relativePathsNotToBackupToLocal];
        if ([relativePathsNotToBackupToLocal containsObject:domain])
        {
          v25 = 1;
          goto LABEL_47;
        }
      }

      if (relativePathsNotToTransferDeviceToDevice)
      {
        domain9 = [fileCopy domain];
        relativePathsNotToBackupInMegaBackup = [domain9 relativePathsNotToBackupInMegaBackup];
        v35 = relativePathsNotToBackupInMegaBackup;
        v36 = domain9;
        if ([relativePathsNotToBackupInMegaBackup containsObject:domain])
        {

          v25 = 1;
          goto LABEL_46;
        }

        if ((_isDeviceTransferEngine & 1) == 0)
        {
          v25 = 0;
          goto LABEL_45;
        }
      }

      else if ((_isDeviceTransferEngine & 1) == 0)
      {
        v25 = 0;
        goto LABEL_41;
      }

      domain10 = [fileCopy domain];
      relativePathsNotToTransferDeviceToDevice = [domain10 relativePathsNotToTransferDeviceToDevice];
      v25 = [relativePathsNotToTransferDeviceToDevice containsObject:domain];

      LOBYTE(relativePathsNotToTransferDeviceToDevice) = v40;
      if ((v40 & 1) == 0)
      {
LABEL_41:
        if (v48)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }

LABEL_45:

LABEL_46:
      if (v48)
      {
LABEL_47:

        if ((v18 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_42:
      if (!v18)
      {
LABEL_49:
        if ((v17 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_48:

      goto LABEL_49;
    }

    v25 = 1;
LABEL_50:

LABEL_51:
    if (v25)
    {
      contextCopy = v34;
      v30 = @"File path in set of paths not to back up: %@:%@";
      v31 = @"RestorePathInSetOfPathsNotToBackup";
      goto LABEL_60;
    }

    if (![domain length])
    {
      break;
    }

    stringByDeletingLastPathComponent = [domain stringByDeletingLastPathComponent];

    name = [fileCopy domain];
    relativePath2 = [name relativePathsToRestore];
    domain = stringByDeletingLastPathComponent;
    if ([relativePath2 containsObject:stringByDeletingLastPathComponent])
    {
      v15 = 0;
      domain = stringByDeletingLastPathComponent;
      contextCopy = v34;
      goto LABEL_61;
    }
  }

  contextCopy = v34;
  if (([fileCopy type] & 0xF000) != 0x4000 || objc_msgSend(domain, "length"))
  {
    v30 = @"File path not in set of paths to back up: %@:%@";
    v31 = @"RestorePathNotInSetOfPathsToBackup";
    goto LABEL_60;
  }

  v15 = 0;
LABEL_62:

  return v15;
}

- (id)validateRestoreDomain:(id)domain relativePath:(id)path
{
  domainCopy = domain;
  pathCopy = path;
  rootPath = [domainCopy rootPath];
  if ([rootPath hasPrefix:@"/private"])
  {
    rootPath2 = [domainCopy rootPath];
    v10 = [rootPath2 hasPrefix:@"/private/var/PersonaVolumes"];

    if ((v10 & 1) == 0)
    {
      rootPath3 = [domainCopy rootPath];
      rootPath4 = [domainCopy rootPath];
      v13 = [MBError errorWithCode:205 path:rootPath3 format:@"Domain %@ has an invalid root path: %@", domainCopy, rootPath4];

      goto LABEL_24;
    }
  }

  else
  {
  }

  rootPath5 = [domainCopy rootPath];
  v15 = [rootPath5 stringByAppendingPathComponent:pathCopy];

  if (strlen([v15 fileSystemRepresentation]) >= 0x3E6)
  {
    v13 = [MBError errorWithCode:205 path:v15 format:@"Cannot restore file with path name that is too long"];
    goto LABEL_23;
  }

  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];

  if (![stringByDeletingLastPathComponent length])
  {
    v13 = 0;
    pathCopy = stringByDeletingLastPathComponent;
    goto LABEL_23;
  }

  pathCopy = stringByDeletingLastPathComponent;
  while (1)
  {
    persona = [(MBRestorePolicy *)self persona];
    v18 = sub_100150D7C(domainCopy, persona);
    v19 = [v18 stringByAppendingPathComponent:pathCopy];

    v30 = 0;
    v29 = 0;
    [v19 mb_splitIntoBase:&v30 andRelativePath:&v29];
    memset(&v28, 0, sizeof(v28));
    v20 = fstatat(v30, v29, &v28, 32);
    v21 = *__error();
    if ((v30 & 0x80000000) == 0)
    {
      close(v30);
    }

    if (v20)
    {
      break;
    }

    if ((~v28.st_mode & 0xA000) == 0)
    {
      v13 = [MBError errorWithErrno:v21 code:205 path:v19 format:@"Restore path parent directory is a symlink"];
      goto LABEL_22;
    }

LABEL_15:
    stringByDeletingLastPathComponent2 = [pathCopy stringByDeletingLastPathComponent];

    pathCopy = stringByDeletingLastPathComponent2;
    if (![stringByDeletingLastPathComponent2 length])
    {
      v13 = 0;
      pathCopy = stringByDeletingLastPathComponent2;
      goto LABEL_23;
    }
  }

  if (v21 == 2)
  {
    goto LABEL_15;
  }

  v13 = [MBError posixErrorWithPath:v19 format:@"lstat error"];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v25 = *__error();
    *buf = 138412546;
    v32 = v19;
    v33 = 1024;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=restore-policy= lstat failed at %@: %{errno}d", buf, 0x12u);
    v26 = __error();
    _MBLog(@"E ", "=restore-policy= lstat failed at %@: %{errno}d", v19, *v26);
  }

LABEL_22:
LABEL_23:

LABEL_24:

  return v13;
}

- (BOOL)shouldAlwaysRestoreSystemSharedContainerDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isSystemSharedContainerDomain])
  {
    name = [domainCopy name];
    v5 = [name isEqualToString:@"SysSharedContainerDomain-systemgroup.com.apple.configurationprofiles"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldRemoveAndRetryPlacingAssetsForRestorable:(id)restorable
{
  restorableCopy = restorable;
  serviceRestoreMode = [(MBRestorePolicy *)self serviceRestoreMode];
  v9 = 1;
  if (([serviceRestoreMode isBackgroundFiles] & 1) != 0 || objc_msgSend(serviceRestoreMode, "isBackgroundFile"))
  {
    domain = [restorableCopy domain];
    name = [domain name];
    v8 = [name isEqualToString:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage"];

    if (v8)
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)notifyPluginsStartingRestoreWithEngine:(id)engine
{
  engineCopy = engine;
  objectEnumerator = [(NSArray *)self->_plugins objectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151AC8;
  v9[3] = &unk_1003BFCB8;
  v9[4] = self;
  v10 = engineCopy;
  v6 = engineCopy;
  v7 = MBNotifyPluginsBlock(v6, objectEnumerator, "startingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsPreparingRestoreWithEngine:(id)engine
{
  engineCopy = engine;
  objectEnumerator = [(NSArray *)self->_plugins objectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151BB0;
  v9[3] = &unk_1003BFCB8;
  v9[4] = self;
  v10 = engineCopy;
  v6 = engineCopy;
  v7 = MBNotifyPluginsBlock(v6, objectEnumerator, "preparingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsEndingRestoreWithEngine:(id)engine
{
  engineCopy = engine;
  reverseObjectEnumerator = [(NSArray *)self->_plugins reverseObjectEnumerator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151C98;
  v9[3] = &unk_1003BFCB8;
  v9[4] = self;
  v10 = engineCopy;
  v6 = engineCopy;
  v7 = MBNotifyPluginsBlock(v6, reverseObjectEnumerator, "endingRestoreWithPolicy:engine:", v9);

  return v7;
}

- (id)notifyPluginsEndedRestoreWithEngine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  reverseObjectEnumerator = [(NSArray *)self->_plugins reverseObjectEnumerator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100151DAC;
  v13[3] = &unk_1003BFCE0;
  v13[4] = self;
  v14 = engineCopy;
  v15 = errorCopy;
  v9 = errorCopy;
  v10 = engineCopy;
  v11 = MBNotifyPluginsBlock(v10, reverseObjectEnumerator, "endedRestoreWithPolicy:engine:error:", v13);

  return v11;
}

@end