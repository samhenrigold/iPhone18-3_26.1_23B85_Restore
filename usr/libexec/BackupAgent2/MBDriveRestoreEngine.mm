@interface MBDriveRestoreEngine
+ (id)restoreEngineWithSettingsContext:(id)context debugContext:(id)debugContext;
- (BOOL)_shouldRestoreContentWithFile:(id)file quiet:(BOOL)quiet;
- (BOOL)encrypted;
- (BOOL)isRestoringToSameDevice;
- (BOOL)shouldVerifyDigests;
- (MBDriveRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext;
- (MBKeyBag)keybag;
- (MBManifest)manifest;
- (id)_annotate;
- (id)_checkCompatibility;
- (id)_cleanup;
- (id)_moveRestoreDirs;
- (id)_preconditions;
- (id)_prepare;
- (id)_prepareCopyBackup;
- (id)_prepareEncryption;
- (id)_prepareFreeSpace;
- (id)_prepareProgress;
- (id)_restore;
- (id)_restoreContent;
- (id)_restoreDirectoryAttributes;
- (id)_restoreRegularFiles:(id)files size:(unint64_t)size;
- (id)_resume;
- (id)_resumeAfterFailureMoving;
- (id)_resumeAfterFailureRemoving;
- (id)_resumeAfterFailureUploading;
- (id)_resumeAfterSuccess;
- (id)_setUp;
- (id)_temporaryPathForFile:(id)file;
- (id)endWithError:(id)error;
- (id)fileForTemporaryPath:(id)path;
- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error;
- (id)restore;
@end

@implementation MBDriveRestoreEngine

+ (id)restoreEngineWithSettingsContext:(id)context debugContext:(id)debugContext
{
  debugContextCopy = debugContext;
  contextCopy = context;
  v7 = [[MBDriveRestoreEngine alloc] initWithSettingsContext:contextCopy debugContext:debugContextCopy];

  return v7;
}

- (MBDriveRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext
{
  contextCopy = context;
  v33 = 0;
  debugContextCopy = debugContext;
  v8 = [MBPersona personalPersonaWithError:&v33];
  v9 = v33;
  v10 = v9;
  if (!v8)
  {
    sub_10009D0D8(v9);
  }

  v11 = [[MBDomainManager alloc] initWithPersona:v8];
  v32.receiver = self;
  v32.super_class = MBDriveRestoreEngine;
  v12 = [(MBEngine *)&v32 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:v11];

  if (v12)
  {
    settingsContext = [(MBDriveRestoreEngine *)v12 settingsContext];
    if ([settingsContext isDeviceTransfer])
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    v12->_engineType = v14;

    v15 = objc_alloc_init(MBProgress);
    progress = v12->_progress;
    v12->_progress = v15;

    v17 = [[MBDriveScript alloc] initWithProgress:v12->_progress];
    script = v12->_script;
    v12->_script = v17;

    v19 = [MBProgressDrive alloc];
    v20 = v12->_script;
    settingsContext2 = [(MBDriveRestoreEngine *)v12 settingsContext];
    drive = [settingsContext2 drive];
    v23 = [(MBProgressDrive *)v19 initWithScript:v20 delegate:drive];
    drive = v12->_drive;
    v12->_drive = &v23->super;

    v25 = [[MBBackupHelper alloc] initWithSettingsContext:contextCopy domainManager:v12->super._domainManager];
    backupHelper = v12->_backupHelper;
    v12->_backupHelper = v25;

    v27 = objc_alloc_init(NSMutableDictionary);
    regularFileIDsByInodeNumber = v12->_regularFileIDsByInodeNumber;
    v12->_regularFileIDsByInodeNumber = v27;

    v29 = objc_alloc_init(NSMutableSet);
    restoredAppBundleIDs = v12->_restoredAppBundleIDs;
    v12->_restoredAppBundleIDs = v29;

    [(MBDomainManager *)v11 setDelegate:v12];
  }

  return v12;
}

- (BOOL)isRestoringToSameDevice
{
  if (![(MBEngine *)self isRestoreEngine])
  {
    sub_10009D164();
  }

  properties = [(MBDriveRestoreEngine *)self properties];

  if (!properties)
  {
    sub_10009D1D0();
  }

  properties2 = [(MBDriveRestoreEngine *)self properties];
  deviceID = [properties2 deviceID];
  v6 = MBDeviceUDID_Legacy();
  v7 = [deviceID isEqualToString:v6];

  return v7;
}

- (BOOL)encrypted
{
  manifest = self->_manifest;
  if (!manifest)
  {
    sub_10009D23C();
    manifest = v6;
  }

  properties = [(MBManifestLike *)manifest properties];
  encrypted = [properties encrypted];

  return encrypted;
}

- (BOOL)shouldVerifyDigests
{
  v2 = [(MBDebugContext *)self->super._debugContext valueForName:@"VerifyDigests"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (MBManifest)manifest
{
  manifest = self->_manifest;
  if (manifest)
  {
  }

  else
  {
    sub_10009D2AC();
    manifest = v5;
  }

  return manifest;
}

- (MBKeyBag)keybag
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  keybag = [settingsContext keybag];

  if (!keybag)
  {
    sub_10009D31C();
  }

  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  keybag2 = [settingsContext2 keybag];

  return keybag2;
}

- (id)restore
{
  v3 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
    [settingsContext sourceIdentifier];
    v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138412290;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting restore from %@", buf, 0xCu);

    settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
    sourceIdentifier = [settingsContext2 sourceIdentifier];
    _MBLog(@"Df", "Starting restore from %@", sourceIdentifier);
  }

  MBLogDeviceProperties();
  settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
  [settingsContext3 log];

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    debugContext = self->super._debugContext;
    *buf = 138412290;
    v31 = *&debugContext;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "DebugContext: %@", buf, 0xCu);
    _MBLog(@"I ", "DebugContext: %@", self->super._debugContext);
  }

  _restore = [(MBDriveRestoreEngine *)self _restore];
  v15 = MBGetDefaultLog();
  v16 = v15;
  if (_restore)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MBError loggableDescriptionForError:_restore];
      v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v18 = [MBError descriptionForError:_restore];
      *buf = 138543618;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Restore error - %{public}@, %@", buf, 0x16u);

      v19 = [MBError loggableDescriptionForError:_restore];
      v20 = [MBError descriptionForError:_restore];
      _MBLog(@"E ", "Restore error - %{public}@, %@", v19, v20);
    }

    _cleanup = [(MBDriveRestoreEngine *)self _cleanup];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v31 = v22 - v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Finished restore in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog(@"Df", "Finished restore in %0.3f s", v23 - v5);
    }

    _restore = [(MBDriveRestoreEngine *)self _cleanup];
    if (_restore)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [MBError loggableDescriptionForError:_restore];
        v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v26 = [MBError descriptionForError:_restore];
        *buf = 138543618;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Restore error - %{public}@, %@", buf, 0x16u);

        v27 = [MBError loggableDescriptionForError:_restore];
        v28 = [MBError descriptionForError:_restore];
        _MBLog(@"E ", "Restore error - %{public}@, %@", v27, v28);
      }
    }
  }

  objc_autoreleasePoolPop(v3);

  return _restore;
}

- (id)_restore
{
  _preconditions = [(MBDriveRestoreEngine *)self _preconditions];
  if (!_preconditions)
  {
    _preconditions = [(MBDriveRestoreEngine *)self _setUp];
    if (!_preconditions)
    {
      _preconditions = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsStartingRestoreWithEngine:self];
      if (!_preconditions)
      {
        _preconditions = [(MBDriveRestoreEngine *)self _resume];
        if (!_preconditions)
        {
          _preconditions = [(MBDriveRestoreEngine *)self _prepare];
          if (!_preconditions)
          {
            _preconditions = [(MBDriveRestoreEngine *)self _restoreContent];
            if (!_preconditions)
            {
              _preconditions = [(MBDriveRestoreEngine *)self _annotate];
              if (!_preconditions)
              {
                _preconditions = [(MBDriveRestoreEngine *)self _restoreDirectoryAttributes];
                if (!_preconditions)
                {
                  _preconditions = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsEndingRestoreWithEngine:self];
                  if (!_preconditions)
                  {
                    _preconditions = [(MBDriveRestoreEngine *)self _moveRestoreDirs];
                    if (!_preconditions)
                    {
                      _preconditions = [(MBDriveRestoreEngine *)self _postconditions];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return _preconditions;
}

- (id)_setUp
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_startTime = v3;
  if ([(MBDebugContext *)self->super._debugContext isFlagSet:@"SimulateCrash"])
  {
    abort();
  }

  if ((MBAcquireRestoreLock() & 1) == 0)
  {
    v30 = [MBError errorWithCode:1 format:@"Acquiring restore lock failed"];
    goto LABEL_18;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Initializing app manager", buf, 2u);
    _MBLog(@"I ", "Initializing app manager");
  }

  v5 = [MBAppManager alloc];
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  mobileInstallation = [settingsContext mobileInstallation];
  v8 = [(MBAppManager *)v5 initWithMobileInstallation:mobileInstallation];
  appManager = self->super._appManager;
  self->super._appManager = v8;

  v10 = self->super._appManager;
  persona = [(MBEngine *)self persona];
  v38 = 0;
  LOBYTE(v10) = [(MBAppManager *)v10 loadAppsWithPersona:persona safeHarbors:1 error:&v38];
  v12 = v38;

  if (v10)
  {
    persona2 = [(MBEngine *)self persona];
    v37 = v12;
    v14 = [persona2 createRestoreDirectoriesWithError:&v37];
    v15 = v37;

    if (v14)
    {
      v36 = v15;
      v16 = [MBTemporaryDirectory sharedTemporaryDirectoryIdentifiedBy:@"drive-restore-engine" error:&v36];
      v17 = v36;

      sharedTemporaryDirectory = self->_sharedTemporaryDirectory;
      self->_sharedTemporaryDirectory = v16;

      if (self->_sharedTemporaryDirectory)
      {
        v35 = v17;
        v19 = [MBTemporaryDirectory userTemporaryDirectoryForPersona:persona2 identifiedBy:@"drive-restore-engine" error:&v35];
        v12 = v35;

        userTemporaryDirectory = self->_userTemporaryDirectory;
        self->_userTemporaryDirectory = v19;

        if (self->_userTemporaryDirectory)
        {
          v21 = [MBRestorePolicy alloc];
          v34 = self->super._appManager;
          settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
          plugins = [settingsContext2 plugins];
          properties = [(MBDriveRestoreEngine *)self properties];
          buildVersion = [properties buildVersion];
          settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
          shouldRestoreSystemFiles = [settingsContext3 shouldRestoreSystemFiles];
          BYTE2(v33) = 0;
          BYTE1(v33) = [(MBEngine *)self restoresPrimaryAccount];
          LOBYTE(v33) = shouldRestoreSystemFiles;
          v28 = [MBRestorePolicy initWithPersona:v21 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona2 plugins:self serviceRestoreMode:v34 osBuildVersionOfBackup:plugins shouldRestoreSystemFiles:0 isRestoringPrimaryAccount:buildVersion shouldCreateMissingIntermediateDirectories:v33];
          restorePolicy = self->_restorePolicy;
          self->_restorePolicy = v28;

          v30 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v31 = v12;
      }

      else
      {
        v31 = v17;
      }
    }

    else
    {
      v31 = v15;
    }

    v12 = v31;
    v30 = v31;
    goto LABEL_16;
  }

  v30 = [MBError errorWithCode:1 error:v12 format:@"Error initializing app manager"];
LABEL_17:

LABEL_18:

  return v30;
}

- (id)_cleanup
{
  manifest = self->_manifest;
  if (manifest)
  {
    [(MBManifestLike *)manifest closeWithError:0];
  }

  [(MBTemporaryDirectory *)self->_sharedTemporaryDirectory dispose];
  sharedTemporaryDirectory = self->_sharedTemporaryDirectory;
  self->_sharedTemporaryDirectory = 0;

  [(MBTemporaryDirectory *)self->_userTemporaryDirectory dispose];
  userTemporaryDirectory = self->_userTemporaryDirectory;
  self->_userTemporaryDirectory = 0;

  MBReleaseRestoreLock();
  return 0;
}

- (id)_temporaryPathForFile:(id)file
{
  fileCopy = file;
  domain = [fileCopy domain];
  shouldRestoreToSharedVolume = [domain shouldRestoreToSharedVolume];
  v7 = &OBJC_IVAR___MBDriveRestoreEngine__userTemporaryDirectory;
  if (shouldRestoreToSharedVolume)
  {
    v7 = &OBJC_IVAR___MBDriveRestoreEngine__sharedTemporaryDirectory;
  }

  v8 = *(&self->super.super.isa + *v7);

  path = [v8 path];

  fileID = [fileCopy fileID];

  v11 = [fileID description];
  v12 = [path stringByAppendingPathComponent:v11];

  return v12;
}

- (id)endWithError:(id)error
{
  errorCopy = error;
  v5 = [(MBRestorePolicy *)self->_restorePolicy notifyPluginsEndedRestoreWithEngine:self error:errorCopy];
  v6 = v5;
  if (!errorCopy && v5)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MBError descriptionForError:v6];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Restore error - %@", buf, 0xCu);

      v9 = [MBError descriptionForError:v6];
      _MBLog(@"E ", "Restore error - %@", v9);
    }

    errorCopy = v6;
  }

  v10 = [MBEngine stringForEngineType:[(MBDriveRestoreEngine *)self engineType]];
  v11 = [MBEngine stringForEngineMode:[(MBDriveRestoreEngine *)self engineMode]];
  v12 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.MobileBackup", v10, v11];

  [MBTelemetry submitEngineCompletedEventName:v12 engineStarted:errorCopy engineError:self->_startTime];
  v13 = errorCopy;

  return errorCopy;
}

- (id)_preconditions
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  sourceIdentifier = [settingsContext sourceIdentifier];

  if (!sourceIdentifier)
  {
    sub_10009D388();
  }

  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  targetIdentifier = [settingsContext2 targetIdentifier];
  v7 = MBDeviceUDID_Legacy();
  v8 = [targetIdentifier isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    sub_10009D3F4();
  }

  backupHelper = self->_backupHelper;
  v49 = 0;
  v10 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v49];
  v11 = v49;
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_42;
  }

  v14 = MBDeviceClass();
  properties = [v10 properties];
  deviceClass = [properties deviceClass];

  if (deviceClass)
  {
    v17 = sub_10005E730(v14, deviceClass);
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v51 = v14;
      v52 = 2112;
      v53 = deviceClass;
      v54 = 1024;
      v55 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "currentDeviceClass: %@, sourceDeviceClass: %@ shouldRestoreSystemFiles: %d", buf, 0x1Cu);
      _MBLog(@"Df", "currentDeviceClass: %@, sourceDeviceClass: %@ shouldRestoreSystemFiles: %d", v14, deviceClass, v17);
    }

    settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
    [settingsContext3 setShouldRestoreSystemFiles:v17];
  }

  else
  {
    settingsContext3 = MBGetDefaultLog();
    if (os_log_type_enabled(settingsContext3, OS_LOG_TYPE_DEFAULT))
    {
      settingsContext4 = [(MBDriveRestoreEngine *)self settingsContext];
      shouldRestoreSystemFiles = [settingsContext4 shouldRestoreSystemFiles];
      *buf = 138412546;
      v51 = v14;
      v52 = 1024;
      LODWORD(v53) = shouldRestoreSystemFiles;
      _os_log_impl(&_mh_execute_header, settingsContext3, OS_LOG_TYPE_DEFAULT, "currentDeviceClass: %@, sourceDeviceClass not present in backup, using host provided argument for shouldRestoreSystemFiles: %d", buf, 0x12u);

      settingsContext5 = [(MBDriveRestoreEngine *)self settingsContext];
      _MBLog(@"Df", "currentDeviceClass: %@, sourceDeviceClass not present in backup, using host provided argument for shouldRestoreSystemFiles: %d", v14, [settingsContext5 shouldRestoreSystemFiles]);
    }
  }

  settingsContext6 = [(MBDriveRestoreEngine *)self settingsContext];
  shouldRestoreSystemFiles2 = [settingsContext6 shouldRestoreSystemFiles];

  if ((shouldRestoreSystemFiles2 & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not restoring system files", buf, 2u);
      _MBLog(@"Df", "Not restoring system files");
    }
  }

  v48 = 0;
  [v10 closeWithError:&v48];
  v26 = v48;
  v12 = v26;
  if (!v26)
  {
    v27 = +[MBManagedPolicy sharedPolicy];
    v47 = 0;
    v28 = [v27 checkIfDriveRestoreIsAllowed:&v47];
    v29 = v47;

    if ((v28 & 1) == 0)
    {
      v13 = v29;
LABEL_40:

      goto LABEL_41;
    }

    settingsContext7 = [(MBDriveRestoreEngine *)self settingsContext];
    manager = [settingsContext7 manager];
    v32 = manager;
    if (manager)
    {
      v33 = manager;
    }

    else
    {
      v33 = objc_alloc_init(MBManager);
    }

    v34 = v33;

    v46 = 0;
    v35 = [v34 restoreStateWithError:&v46];
    v36 = v46;
    if (v35)
    {
      state = [v35 state];
      v38 = state;
      if (state >= 7 || ((0x71u >> state) & 1) == 0)
      {
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v51) = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Restore from iTunes Backup is unavailable while an iCloud Restore is in progress (%d)", buf, 8u);
          _MBLog(@"E ", "Restore from iTunes Backup is unavailable while an iCloud Restore is in progress (%d)", v38);
        }

        v40 = @"Restore from iTunes Backup is unavailable while an iCloud Restore is in progress";
        v41 = 25;
LABEL_38:
        v13 = [MBError errorWithCode:v41 format:v40];
        goto LABEL_39;
      }
    }

    else
    {
      v42 = [MBError isError:v36 withCode:210];
      v43 = MBGetDefaultLog();
      v44 = v43;
      if ((v42 & 1) == 0)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v51 = v36;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to fetch iCloud Restore state: %{public}@", buf, 0xCu);
          _MBLog(@"E ", "Failed to fetch iCloud Restore state: %{public}@", v36);
        }

        v40 = @"Failed to determine iCloud Restore state";
        v41 = 1;
        goto LABEL_38;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "No iCloud account", buf, 2u);
        _MBLog(@"Df", "No iCloud account");
      }
    }

    v13 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v13 = v26;
LABEL_41:

LABEL_42:

  return v13;
}

- (id)_resume
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to retrieve previous backup status", buf, 2u);
    _MBLog(@"Df", "Starting to retrieve previous backup status");
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  backupHelper = self->_backupHelper;
  v38 = 0;
  v8 = [(MBBackupHelper *)backupHelper readStatusWithError:&v38];
  v9 = v38;
  status = self->_status;
  self->_status = v8;

  v11 = self->_status;
  if (!v11)
  {
LABEL_10:
    if (![MBError isError:v9 withCode:4])
    {
      v30 = [MBBackupHelper driveReadError:v9 description:@"Error reading status"];
LABEL_22:
      v31 = v30;
      goto LABEL_23;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No status exists", buf, 2u);
      _MBLog(@"I ", "No status exists");
    }

    [(MBDebugContext *)self->super._debugContext setFlag:@"StatusNotFound"];
    v23 = @"No status exists in backup";
    goto LABEL_16;
  }

  [(MBStatus *)v11 version];
  if (v12 < 2.4)
  {
    v13 = self->_status;
    if (v13)
    {
      [(MBStatus *)v13 version];
      if (v14 < 2.4)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          [(MBStatus *)self->_status version];
          v17 = v16;
          snapshotStateName = [(MBStatus *)self->_status snapshotStateName];
          *buf = 134218242;
          v40 = v17;
          v41 = 2112;
          v42 = snapshotStateName;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Status: version=%0.1f, name=%@", buf, 0x16u);

          [(MBStatus *)self->_status version];
          v20 = v19;
          snapshotStateName2 = [(MBStatus *)self->_status snapshotStateName];
          _MBLog(@"Df", "Status: version=%0.1f, name=%@", v20, snapshotStateName2);
        }

        [(MBDebugContext *)self->super._debugContext setFlag:@"OldStatusFound"];
        [(MBStatus *)self->_status version];
        backupState = v22;
        v23 = @"Unsupported backup status version: %0.1f";
        goto LABEL_20;
      }
    }

    goto LABEL_10;
  }

  debugContext = self->super._debugContext;
  backupStateName = [(MBStatus *)self->_status backupStateName];
  [(MBDebugContext *)debugContext setValue:backupStateName forName:@"BackupState"];

  v27 = self->super._debugContext;
  snapshotStateName3 = [(MBStatus *)self->_status snapshotStateName];
  [(MBDebugContext *)v27 setValue:snapshotStateName3 forName:@"SnapshotState"];

  [(MBDebugContext *)self->super._debugContext setInt:[(MBStatus *)self->_status isFullBackup] forName:@"StatusIsFullBackup"];
  if ([(MBStatus *)self->_status isBackupEmpty])
  {
    v23 = @"Backup state is empty";
LABEL_16:
    v29 = 204;
LABEL_21:
    v30 = [MBError errorWithCode:v29 format:v23, backupState];
    goto LABEL_22;
  }

  if ([(MBStatus *)self->_status isBackupOld])
  {
    v23 = @"Backup is in old format";
LABEL_20:
    v29 = 203;
    goto LABEL_21;
  }

  if (![(MBStatus *)self->_status isBackupNew])
  {
    backupState = [(MBStatus *)self->_status backupState];
    v23 = @"Invalid backup state: %d";
LABEL_30:
    v29 = 205;
    goto LABEL_21;
  }

  if ([(MBStatus *)self->_status isUploading])
  {
    _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterFailureUploading];
    goto LABEL_37;
  }

  if ([(MBStatus *)self->_status isMoving])
  {
    _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterFailureMoving];
    goto LABEL_37;
  }

  if ([(MBStatus *)self->_status isRemoving])
  {
    _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterFailureRemoving];
    goto LABEL_37;
  }

  if (![(MBStatus *)self->_status isFinished])
  {
    backupState = [(MBStatus *)self->_status snapshotState];
    v23 = @"Invalid snapshot state: %d";
    goto LABEL_30;
  }

  _resumeAfterFailureUploading = [(MBDriveRestoreEngine *)self _resumeAfterSuccess];
LABEL_37:
  v34 = _resumeAfterFailureUploading;

  if (v34)
  {
    v30 = v34;
    v9 = v30;
    goto LABEL_22;
  }

  [(MBManifestLike *)self->_manifest buildIndexFromDatabaseIfNeeded];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    *buf = 134217984;
    v40 = v35 - v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finished retrieving previous backup status in %0.3f s", buf, 0xCu);
    +[NSDate timeIntervalSinceReferenceDate];
    _MBLog(@"Df", "Finished retrieving previous backup status in %0.3f s", v36 - v6);
  }

  v31 = 0;
LABEL_23:

  objc_autoreleasePoolPop(v3);

  return v31;
}

- (id)_resumeAfterFailureUploading
{
  backupHelper = self->_backupHelper;
  v10 = 0;
  v4 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v10];
  v5 = v10;
  manifest = self->_manifest;
  self->_manifest = v4;

  if (v5)
  {
    if ([MBError isError:v5 withCode:4])
    {
      v7 = [MBError errorWithCode:204 format:@"Initial backup failed while uploading files"];
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_resumeAfterFailureMoving
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Getting contents of snapshot", buf, 2u);
    _MBLog(@"I ", "Getting contents of snapshot");
  }

  drive = self->_drive;
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  driveSnapshotDir = [settingsContext driveSnapshotDir];
  v53 = 0;
  v7 = [(MBDrive *)drive contentsOfDirectoryAtPath:driveSnapshotDir options:0 error:&v53];
  v8 = v53;
  allKeys = [v7 allKeys];
  v10 = [NSSet setWithArray:allKeys];

  if (v8)
  {
    v11 = [MBBackupHelper driveReadError:v8 description:@"Error getting contents of snapshot"];
    goto LABEL_36;
  }

  v12 = [v10 containsObject:@"Manifest.plist"];
  backupHelper = self->_backupHelper;
  if (v12)
  {
    v52 = 0;
    v14 = &v52;
    v15 = [(MBBackupHelper *)backupHelper readSnapshotPropertiesWithError:&v52];
  }

  else
  {
    v51 = 0;
    v14 = &v51;
    v15 = [(MBBackupHelper *)backupHelper readBackupPropertiesWithError:&v51];
  }

  v16 = v15;
  v17 = *v14;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    if (![v16 hasManifestDB])
    {
      v23 = [v10 containsObject:@"Manifest.mbdb"];
      v24 = self->_backupHelper;
      if (v23)
      {
        v49 = 0;
        v25 = &v49;
        v26 = [(MBBackupHelper *)v24 readSnapshotDatabaseWithError:&v49];
      }

      else
      {
        v48 = 0;
        v25 = &v48;
        v26 = [(MBBackupHelper *)v24 readBackupDatabaseWithError:&v48];
      }

      v27 = v26;
      v28 = *v25;
      v8 = v28;
      if (v28)
      {
        v11 = v28;
      }

      else
      {
        v42 = v27;
        v29 = [MBManifest manifestWithProperties:v16 database:v27 databaseIndex:0];
        manifest = self->_manifest;
        self->_manifest = v29;

        [(MBManifestLike *)self->_manifest buildIndexFromDatabaseIfNeeded];
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Determining which files remain in the snapshot", buf, 2u);
          _MBLog(@"Df", "Determining which files remain in the snapshot");
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = v10;
        v32 = v10;
        v33 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v45;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v45 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [MBFileID fileIDWithString:*(*(&v44 + 1) + 8 * i)];
              if (v37)
              {
                v38 = MBGetDefaultLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v55 = v37;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "In snapshot: %@", buf, 0xCu);
                  _MBLog(@"I ", "In snapshot: %@", v37);
                }

                databaseIndex = [(MBManifestLike *)self->_manifest databaseIndex];
                v40 = [databaseIndex setFlags:8 forFileID:v37];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v34);
        }

        v11 = 0;
        v10 = v43;
        v27 = v42;
        v8 = 0;
      }

      goto LABEL_35;
    }

    v19 = self->_backupHelper;
    v50 = 0;
    v20 = [(MBBackupHelper *)v19 readSnapshotManifestDatabaseWithError:&v50];
    v21 = v50;
    v22 = self->_manifest;
    self->_manifest = v20;

    if (!v21)
    {
      v8 = 0;
      v11 = 0;
      goto LABEL_35;
    }

    v18 = v21;
  }

  v8 = v18;
  v11 = v18;
LABEL_35:

LABEL_36:

  return v11;
}

- (id)_resumeAfterFailureRemoving
{
  backupHelper = self->_backupHelper;
  v9 = 0;
  v4 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v9];
  v5 = v9;
  manifest = self->_manifest;
  self->_manifest = v4;

  if (v5)
  {
    v7 = v5;
  }

  return v5;
}

- (id)_resumeAfterSuccess
{
  backupHelper = self->_backupHelper;
  v9 = 0;
  v4 = [(MBBackupHelper *)backupHelper readBackupManifestWithError:&v9];
  v5 = v9;
  manifest = self->_manifest;
  self->_manifest = v4;

  if (v5)
  {
    v7 = v5;
  }

  return v5;
}

- (id)_prepare
{
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to prepare for restore", buf, 2u);
    _MBLog(@"Df", "Starting to prepare for restore");
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  _checkCompatibility = [(MBDriveRestoreEngine *)self _checkCompatibility];
  if (_checkCompatibility || ([(MBDriveRestoreEngine *)self _prepareEncryption], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBRestorePolicy *)self->_restorePolicy notifyPluginsPreparingRestoreWithEngine:self], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareProgress], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareFreeSpace], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0) || ([(MBDriveRestoreEngine *)self _prepareCopyBackup], (_checkCompatibility = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = _checkCompatibility;
    v9 = v8;
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v14 = v11 - v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished preparing for restore in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog(@"Df", "Finished preparing for restore in %0.3f s", v12 - v6);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)_checkCompatibility
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  sourceIdentifier = [settingsContext sourceIdentifier];

  v5 = [sourceIdentifier stringByAppendingPathComponent:@"Info.plist"];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = @"Info.plist";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loading %{public}@ at %@", buf, 0x16u);
    _MBLog(@"Df", "Loading %{public}@ at %@", @"Info.plist", v5);
  }

  drive = self->_drive;
  v19 = 0;
  v8 = [MBInfo infoWithDrive:drive path:v5 error:&v19];
  v9 = v19;
  if (v8)
  {
    productVersion = [v8 productVersion];
    properties = [(MBManifestLike *)self->_manifest properties];
    requiredProductVersion = [properties requiredProductVersion];

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = @"Info.plist";
      v22 = 2114;
      v23 = productVersion;
      v24 = 2114;
      v25 = requiredProductVersion;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@ - productVersion:%{public}@, requiredProductVersion:%{public}@", buf, 0x20u);
      _MBLog(@"Df", "Loaded %{public}@ - productVersion:%{public}@, requiredProductVersion:%{public}@", @"Info.plist", productVersion, requiredProductVersion);
    }

    if (productVersion && (MBProductVersion(), v14 = objc_claimAutoreleasedReturnValue(), v15 = MBIsRestoreCompatible(), v14, (v15 & 1) == 0))
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Refusing to restore from an incompatible backup", buf, 2u);
        _MBLog(@"E ", "Refusing to restore from an incompatible backup");
      }

      v16 = [MBError errorWithCode:203 format:@"Backup is from an incompatible OS version"];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    productVersion = MBGetDefaultLog();
    if (os_log_type_enabled(productVersion, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = @"Info.plist";
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, productVersion, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ at %@: %@", buf, 0x20u);
      _MBLog(@"E ", "Failed to fetch %{public}@ at %@: %@", @"Info.plist", v5, v9);
    }

    v16 = 0;
  }

  return v16;
}

- (id)_prepareEncryption
{
  properties = [(MBManifestLike *)self->_manifest properties];
  encrypted = [properties encrypted];

  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  password = [settingsContext password];

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    if (encrypted)
    {
      sub_10009D4DC();
    }

    if (password)
    {
      sub_10009D4B0();
    }

    goto LABEL_10;
  }

  if (!encrypted)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  manifest = self->_manifest;
  v39 = 0;
  v8 = [(MBManifestLike *)manifest setupEncryptionWithPassword:password withError:&v39];
  v9 = v39;
  if ((v8 & 1) == 0)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to setup manifest encryption: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to setup manifest encryption: %@", v9);
    }

    v11 = v9;
    v12 = v11;
    goto LABEL_35;
  }

LABEL_11:
  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  keybag = [settingsContext2 keybag];

  if (!keybag)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Decoding and unlocking backup keybag from manifest", buf, 2u);
      _MBLog(@"Df", "Decoding and unlocking backup keybag from manifest");
    }

    properties2 = [(MBManifestLike *)self->_manifest properties];
    keybagData = [properties2 keybagData];

    if (keybagData)
    {
      v37 = v9;
      v21 = [MBKeyBag unlockedKeyBagWithData:keybagData password:password error:&v37];
      v12 = v37;

      settingsContext3 = [(MBDriveRestoreEngine *)self settingsContext];
      [settingsContext3 setKeybag:v21];

      settingsContext4 = [(MBDriveRestoreEngine *)self settingsContext];
      keybag2 = [settingsContext4 keybag];

      if (keybag2)
      {

        goto LABEL_22;
      }

      if ([MBError isError:v12 withCode:207])
      {
        v34 = @"Invalid password when restoring encrypted backup";
        v35 = 207;
      }

      else
      {
        v34 = @"Error decoding keybag";
        v35 = 1;
      }

      v31 = [MBError errorWithCode:v35 error:v12 format:v34];
    }

    else
    {
      v31 = [MBError errorWithCode:205 format:@"No keybag in manifest"];
      v12 = v9;
    }

    goto LABEL_39;
  }

  settingsContext5 = [(MBDriveRestoreEngine *)self settingsContext];
  keybag3 = [settingsContext5 keybag];
  isUnlocked = [keybag3 isUnlocked];

  if ((isUnlocked & 1) == 0)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unlocking backup keybag from manifest", buf, 2u);
      _MBLog(@"Df", "Unlocking backup keybag from manifest");
    }

    settingsContext6 = [(MBDriveRestoreEngine *)self settingsContext];
    keybag4 = [settingsContext6 keybag];
    v38 = v9;
    v28 = [keybag4 unlockWithPassword:password error:&v38];
    v12 = v38;

    if (v28)
    {
      goto LABEL_22;
    }

    if ([MBError isError:v12 withCode:207])
    {
      v32 = @"Invalid password when restoring encrypted backup";
      v33 = 207;
    }

    else
    {
      v32 = @"Error decoding keybag";
      v33 = 1;
    }

    v11 = [MBError errorWithCode:v33 error:v12 format:v32];
LABEL_35:
    v31 = v11;
    goto LABEL_39;
  }

  v12 = v9;
LABEL_22:
  v29 = MBGetDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (encrypted)
    {
      v30 = @"encrypted";
    }

    else
    {
      v30 = @"unencrypted";
    }

    *buf = 138412290;
    v41 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Backup is %@", buf, 0xCu);
    _MBLog(@"Df", "Backup is %@", v30);
  }

  [(MBDebugContext *)self->super._debugContext setBool:[(MBDriveRestoreEngine *)self encrypted] forName:@"IsEncrypted"];
  v31 = 0;
LABEL_39:

  return v31;
}

- (id)_prepareProgress
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Calculating expected duration", buf, 2u);
    _MBLog(@"I ", "Calculating expected duration");
  }

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_10003140C;
  v44[4] = sub_10003141C;
  v45 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  manifest = self->_manifest;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100031424;
  v23[3] = &unk_1000FD868;
  v23[4] = self;
  v23[5] = v44;
  v23[6] = &v40;
  v23[7] = &v36;
  v23[8] = &v32;
  v23[9] = &v28;
  v23[10] = &v24;
  v23[11] = a2;
  v6 = [(MBManifestLike *)manifest enumerateFiles:v23];
  v7 = v41[3];
  if (v7)
  {
    script = self->_script;
    v9 = [MBDriveOperation operationToDownloadFilesWithCount:v7 size:v37[3]];
    [(MBDriveScript *)script addOperation:v9];

    ++v33[3];
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v33[3];
      v13 = v25[3];
      v14 = v29[3];
      totalDownloadCount = self->_totalDownloadCount;
      [(MBProgress *)self->_progress total];
      *buf = 134219008;
      v47 = v12;
      v48 = 2048;
      v49 = v13;
      v50 = 2048;
      v51 = v14;
      v52 = 2048;
      v53 = totalDownloadCount;
      v54 = 2048;
      v55 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Enqueued batches (%lld) of total files (%lld), hard links (%llu), total download (%lld). Expected duration: %0.3f s", buf, 0x34u);
    }

    v17 = v33[3];
    v18 = v25[3];
    v19 = v29[3];
    v20 = self->_totalDownloadCount;
    [(MBProgress *)self->_progress total];
    _MBLog(@"Df", "Enqueued batches (%lld) of total files (%lld), hard links (%llu), total download (%lld). Expected duration: %0.3f s", v17, v18, v19, v20, v21);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);

  return 0;
}

- (id)_prepareFreeSpace
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking free disk space", buf, 2u);
    _MBLog(@"I ", "Checking free disk space");
  }

  v4 = MBFreeDiskSpace();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v11 = v4;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Free disk space on device: %llu (%{bytes}llu)", buf, 0x16u);
    _MBLog(@"Df", "Free disk space on device: %llu (%{bytes}llu)", v4, v4);
  }

  if ([(MBEngine *)self isDeviceTransferEngine]|| v4 >= self->_totalDownloadSize)
  {
    v8 = 0;
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      totalDownloadSize = self->_totalDownloadSize;
      *buf = 134218752;
      v11 = v4;
      v12 = 2048;
      v13 = v4;
      v14 = 2048;
      v15 = totalDownloadSize;
      v16 = 2048;
      v17 = totalDownloadSize;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Insufficient free disk space on device to restore: %llu (%{bytes}llu) < %llu (%{bytes}llu)", buf, 0x2Au);
      _MBLog(@"E ", "Insufficient free disk space on device to restore: %llu (%{bytes}llu) < %llu (%{bytes}llu)", v4, v4, self->_totalDownloadSize, self->_totalDownloadSize);
    }

    v8 = [MBError errorWithCode:106 format:@"Insufficient free disk space on device to restore (%llu < %llu)", v4, self->_totalDownloadSize];
  }

  return v8;
}

- (id)_prepareCopyBackup
{
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  shouldCopyBackup = [settingsContext shouldCopyBackup];

  v5 = MBGetDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (!shouldCopyBackup)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Not copying backup", buf, 2u);
      _MBLog(@"I ", "Not copying backup");
    }

    [(MBDriveScript *)self->_script beginPerforming];
    v14 = 0;
    goto LABEL_14;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Copying backup", buf, 2u);
    _MBLog(@"I ", "Copying backup");
  }

  settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
  targetIdentifier = [settingsContext2 targetIdentifier];

  [targetIdentifier stringByAppendingPathComponent:@"Info.plist"];
  v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v69 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Decoding %@", buf, 0xCu);
    _MBLog(@"I ", "Decoding %@", *&v9);
  }

  drive = self->_drive;
  v67 = 0;
  v12 = [MBInfo infoWithDrive:drive path:*&v9 error:&v67];
  v13 = v67;
  if (v13)
  {
    v14 = v13;
    if ([MBError isError:v13 withCode:4])
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No backup info exists", buf, 2u);
        _MBLog(@"I ", "No backup info exists");
      }

      [(MBDriveScript *)self->_script beginPerforming];
      v16 = 0;
    }

    else
    {
      v16 = [MBBackupHelper driveReadError:v14 description:@"Error decoding backup info"];
    }

    goto LABEL_49;
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Determining backup usage", buf, 2u);
    _MBLog(@"I ", "Determining backup usage");
  }

  v65 = 0;
  v66 = 0.0;
  v18 = self->_drive;
  v64 = 0;
  v19 = [(MBDrive *)v18 usageOfDirectoryAtPath:targetIdentifier count:&v66 size:&v65 options:0 error:&v64];
  v20 = v64;
  if ((v19 & 1) == 0)
  {
    v16 = [MBBackupHelper driveReadError:v20 description:@"Error determining backup usage"];

    v14 = v20;
    goto LABEL_49;
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Checking free disk space on drive", buf, 2u);
    _MBLog(@"I ", "Checking free disk space on drive");
  }

  v62 = v20;
  *&v63 = 0.0;
  v22 = [(MBDrive *)self->_drive freeSpace:&v63 error:&v62];
  v14 = v62;

  v23 = MBGetDefaultLog();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v69 = *&v63;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{bytes}llu of free disk space on drive", buf, 0xCu);
      _MBLog(@"I ", "%{bytes}llu of free disk space on drive", v63);
    }

    v25 = v65;
    if (v63 < v65 + 0x8000000)
    {
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v69 = *&v63;
        v70 = 2048;
        v71 = v65;
        v72 = 1024;
        v73 = 0x8000000;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Skipping copying backup because there is not enough free disk space on the drive (%{bytes}llu < %{bytes}llu + %{bytes}d)", buf, 0x1Cu);
        _MBLog(@"Df", "Skipping copying backup because there is not enough free disk space on the drive (%{bytes}llu < %{bytes}llu + %{bytes}d)", v63, v65, 0x8000000);
      }

      [(MBDriveScript *)self->_script beginPerforming];
LABEL_14:
      v16 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [MBError descriptionForError:v14];
      v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v69 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error getting free space of drive: %@", buf, 0xCu);

      v28 = [MBError descriptionForError:v14];
      _MBLog(@"Df", "Error getting free space of drive: %@", v28);
    }

    v25 = v65;
  }

  script = self->_script;
  v30 = [MBDriveOperation operationToC0pyItemWithCount:*&v66 size:v25];
  [(MBDriveScript *)script insertOperation:v30 atIndex:0];

  v31 = self->_script;
  v32 = [MBDriveOperation operationToUploadFileWithSize:0];
  [(MBDriveScript *)v31 insertOperation:v32 atIndex:1];

  [(MBDriveScript *)self->_script beginPerforming];
  v33 = +[NSDate date];
  v34 = objc_alloc_init(NSDateFormatter);
  [v34 setDateFormat:@"yyyyMMdd-HHmmss"];
  v35 = [v34 stringFromDate:v33];
  [NSString stringWithFormat:@"%@-%@", targetIdentifier, v35];
  v59 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v36 = MBGetDefaultLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v69 = v59;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Naming backup copy %@", buf, 0xCu);
    _MBLog(@"I ", "Naming backup copy %@", *&v59);
  }

  v37 = MBGetDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v69 = v66;
    v70 = 2048;
    v71 = v65;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Starting to copy backup with %ld files of size %{bytes}llu", buf, 0x16u);
    _MBLog(@"Df", "Starting to copy backup with %ld files of size %{bytes}llu", *&v66, v65);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v39 = v38;
  v40 = self->_drive;
  v61 = v14;
  v41 = [(MBDrive *)v40 copyItemAtPath:targetIdentifier toPath:*&v59 options:0 error:&v61];
  v42 = v61;

  if (v41)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v44 = v43;
    v45 = MBGetDefaultLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v44 - v39;
      *buf = 134218240;
      v69 = v46;
      v70 = 2048;
      v71 = (v65 / v46);
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Finished copying backup in %0.3f s at %{bytes}llu/s", buf, 0x16u);
      _MBLog(@"Df", "Finished copying backup in %0.3f s at %{bytes}llu/s", *&v46, (v65 / v46));
    }

    v58 = v42;

    v47 = MBGetDefaultLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Updating backup info", buf, 2u);
      _MBLog(@"I ", "Updating backup info");
    }

    [v12 setTargetIdentifier:*&v59];
    v48 = objc_alloc_init(NSDateFormatter);

    v49 = MBLocale();
    [v48 setLocale:v49];

    [v48 setDateStyle:2];
    [v48 setTimeStyle:1];
    displayName = [v12 displayName];
    v51 = [v48 stringFromDate:v33];
    v52 = [NSString stringWithFormat:@"%@ - %@", displayName, v51];
    [v12 setDisplayName:v52];

    [*&v59 stringByAppendingPathComponent:@"Info.plist"];
    v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v54 = MBGetDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = v53;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Writing %@", buf, 0xCu);
      _MBLog(@"I ", "Writing %@", *&v53);
    }

    v55 = self->_drive;
    v16 = v58;
    v60 = v58;
    v56 = [v12 writeToDrive:v55 path:*&v53 error:&v60];
    v14 = v60;

    if ((v56 & 1) == 0)
    {
      v16 = [MBBackupHelper driveWriteError:v14 description:@"Error writing updated backup info"];
    }

    v34 = v48;
  }

  else
  {
    v16 = [MBBackupHelper driveWriteError:v42 description:@"Error copying backup"];
    v56 = 0;
    v14 = v42;
  }

  if (v56)
  {
    goto LABEL_14;
  }

LABEL_49:

  return v16;
}

- (id)_restoreContent
{
  v4 = objc_autoreleasePoolPush();
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    totalDownloadCount = self->_totalDownloadCount;
    totalDownloadSize = self->_totalDownloadSize;
    *buf = 134218240;
    *&buf[4] = totalDownloadCount;
    *&buf[12] = 2048;
    *&buf[14] = totalDownloadSize;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to restore %lu files of size %{bytes}llu", buf, 0x16u);
    _MBLog(@"Df", "Starting to restore %lu files of size %{bytes}llu", self->_totalDownloadCount, self->_totalDownloadSize);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v9 = v8;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = sub_10003140C;
  v59 = sub_10003141C;
  v60 = [NSMutableArray arrayWithCapacity:0];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10003140C;
  v31 = sub_10003141C;
  v32 = 0;
  manifest = self->_manifest;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100032A58;
  v26[3] = &unk_1000FD868;
  v26[4] = self;
  v26[5] = &v27;
  v26[6] = buf;
  v26[7] = &v45;
  v26[8] = &v41;
  v26[9] = &v37;
  v26[10] = &v33;
  v26[11] = a2;
  v11 = [(MBManifestLike *)manifest enumerateFiles:v26];
  v12 = v28[5];
  if (v12)
  {
    v13 = v12;
    goto LABEL_13;
  }

  if ([*(*&buf[8] + 40) count])
  {
    v13 = [(MBDriveRestoreEngine *)self _restoreRegularFiles:*(*&buf[8] + 40) size:v46[3]];
    if (v13)
    {
      goto LABEL_13;
    }

    v14 = [*(*&buf[8] + 40) count];
    v42[3] += v14;
    ++*(v38 + 3);
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v38[3];
    v17 = v42[3];
    v18 = self->_totalDownloadSize;
    v19 = v34[3];
    *v49 = 134218752;
    v50 = v16;
    v51 = 2048;
    v52 = v17;
    v53 = 2048;
    v54 = v19;
    v55 = 2048;
    v56 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Restored batches (%lld) of total files (%lld), hard links (%llu) of total %lld bytes", v49, 0x2Au);
    _MBLog(@"Df", "Restored batches (%lld) of total files (%lld), hard links (%llu) of total %lld bytes", *(v38 + 3), v42[3], v34[3], self->_totalDownloadSize);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21 - v9;
    v24 = (self->_totalDownloadSize / v23);
    *v49 = 134218240;
    v50 = v23;
    v51 = 2048;
    v52 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Finished restoring files in %0.3f s at %{bytes}llu/s", v49, 0x16u);
    _MBLog(@"Df", "Finished restoring files in %0.3f s at %{bytes}llu/s", *&v23, (self->_totalDownloadSize / v23));
  }

  v13 = 0;
LABEL_13:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v4);

  return v13;
}

- (BOOL)_shouldRestoreContentWithFile:(id)file quiet:(BOOL)quiet
{
  fileCopy = file;
  domain = [fileCopy domain];
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  if ([settingsContext shouldRestoreSystemFiles])
  {
  }

  else
  {
    isAppDomain = [domain isAppDomain];

    if ((isAppDomain & 1) == 0)
    {
      v9 = fileCopy;
      if ([domain isSystemSharedContainerDomain] && -[MBRestorePolicy shouldAlwaysRestoreSystemSharedContainerDomain:](self->_restorePolicy, "shouldAlwaysRestoreSystemSharedContainerDomain:", domain))
      {
        v16 = 1;
        goto LABEL_94;
      }

      relativePath = [fileCopy relativePath];
      pathComponents = [relativePath pathComponents];

      v46 = [pathComponents count];
      v47 = 0;
      do
      {
        v48 = objc_autoreleasePoolPush();
        v49 = [pathComponents subarrayWithRange:0, v47];
        v50 = [NSString pathWithComponents:v49];

        relativePathsOfSystemFilesToAlwaysRestore = [domain relativePathsOfSystemFilesToAlwaysRestore];
        v52 = [relativePathsOfSystemFilesToAlwaysRestore containsObject:v50];

        objc_autoreleasePoolPop(v48);
        if (v52)
        {
          v16 = 1;
          goto LABEL_93;
        }

        ++v47;
      }

      while (v47 <= v46);
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      relativePathsOfSystemFilesToAlwaysRestore2 = [domain relativePathsOfSystemFilesToAlwaysRestore];
      v82 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v95 objects:v105 count:16];
      v83 = pathComponents;
      if (v82)
      {
        v53 = *v96;
        v86 = domain;
        v81 = *v96;
        do
        {
          v54 = 0;
          do
          {
            if (*v96 != v53)
            {
              objc_enumerationMutation(relativePathsOfSystemFilesToAlwaysRestore2);
            }

            v55 = v54;
            pathComponents2 = [*(*(&v95 + 1) + 8 * v54) pathComponents];
            v57 = [pathComponents2 count];
            v58 = 0;
            do
            {
              v59 = [pathComponents2 subarrayWithRange:{0, v58}];
              v60 = [NSString pathWithComponents:v59];

              relativePath2 = [fileCopy relativePath];
              v62 = [relativePath2 isEqualToString:v60];

              if (v62)
              {
                v16 = 1;
                goto LABEL_69;
              }

              ++v58;
            }

            while (v58 <= v57);

            v54 = v55 + 1;
            pathComponents = v83;
            domain = v86;
            v53 = v81;
          }

          while (v54 != v82);
          v82 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v95 objects:v105 count:16];
        }

        while (v82);
      }

      if (!quiet)
      {
        relativePathsOfSystemFilesToAlwaysRestore2 = MBGetDefaultLog();
        if (os_log_type_enabled(relativePathsOfSystemFilesToAlwaysRestore2, OS_LOG_TYPE_INFO))
        {
          v86 = domain;
          v63 = objc_msgSend_absolutePath(fileCopy);
          *buf = 138412290;
          v102 = v63;
          _os_log_impl(&_mh_execute_header, relativePathsOfSystemFilesToAlwaysRestore2, OS_LOG_TYPE_INFO, "Not restoring because it's a system file: %@", buf, 0xCu);

          pathComponents2 = objc_msgSend_absolutePath(fileCopy);
          _MBLog(@"I ", "Not restoring because it's a system file: %@", pathComponents2);
          v16 = 0;
LABEL_69:

          pathComponents = v83;
          goto LABEL_91;
        }

LABEL_66:
        v16 = 0;
        goto LABEL_92;
      }

LABEL_67:
      v16 = 0;
      goto LABEL_93;
    }
  }

  v9 = fileCopy;
  if ([domain isUninstalledAppDomain])
  {
    if (!quiet)
    {
      pathComponents = MBGetDefaultLog();
      if (os_log_type_enabled(pathComponents, OS_LOG_TYPE_INFO))
      {
        containerID = [domain containerID];
        [fileCopy relativePath];
        v13 = v12 = domain;
        *buf = 138412546;
        v102 = containerID;
        v103 = 2112;
        v104 = v13;
        _os_log_impl(&_mh_execute_header, pathComponents, OS_LOG_TYPE_INFO, "Not restoring because the app %@ isn't being restored: %@", buf, 0x16u);

        relativePathsOfSystemFilesToAlwaysRestore2 = [v12 containerID];
        relativePath3 = [fileCopy relativePath];
        _MBLog(@"I ", "Not restoring because the app %@ isn't being restored: %@", relativePathsOfSystemFilesToAlwaysRestore2, relativePath3);

        domain = v12;
        goto LABEL_66;
      }

      goto LABEL_67;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_94;
  }

  if ([domain isLegacyPerAppPlaceholderDomain])
  {
    if (!quiet)
    {
      pathComponents = MBGetDefaultLog();
      if (os_log_type_enabled(pathComponents, OS_LOG_TYPE_INFO))
      {
        v64 = objc_msgSend_absolutePath(fileCopy);
        *buf = 138412290;
        v102 = v64;
        _os_log_impl(&_mh_execute_header, pathComponents, OS_LOG_TYPE_INFO, "Not restoring because it's a placeholder app file: %@", buf, 0xCu);

        relativePathsOfSystemFilesToAlwaysRestore2 = objc_msgSend_absolutePath(fileCopy);
        _MBLog(@"I ", "Not restoring because it's a placeholder app file: %@", relativePathsOfSystemFilesToAlwaysRestore2);
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    goto LABEL_10;
  }

  quietCopy = quiet;
  properties = [(MBDriveRestoreEngine *)self properties];
  hasCorruptSQLiteDBs = [properties hasCorruptSQLiteDBs];

  if (hasCorruptSQLiteDBs)
  {
    relativePath4 = [fileCopy relativePath];
    pathComponents = [relativePath4 pathExtension];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    relativePathsOfSystemFilesToAlwaysRestore2 = MBSQLitePathExtensions();
    v20 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v91 objects:v100 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v92;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v92 != v22)
          {
            objc_enumerationMutation(relativePathsOfSystemFilesToAlwaysRestore2);
          }

          if ([pathComponents isEqualToString:*(*(&v91 + 1) + 8 * i)])
          {
            v65 = domain;
            v66 = MBGetDefaultLog();
            v9 = fileCopy;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              v67 = objc_msgSend_absolutePath(fileCopy);
              *buf = 138412290;
              v102 = v67;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "Not restoring %@ because sqlite databases are corrupt in this backup", buf, 0xCu);

              v68 = objc_msgSend_absolutePath(fileCopy);
              _MBLog(@"I ", "Not restoring %@ because sqlite databases are corrupt in this backup", v68);
            }

            v16 = 0;
            domain = v65;
            goto LABEL_92;
          }
        }

        v21 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v91 objects:v100 count:16];
      }

      while (v21);
    }
  }

  v86 = domain;
  v9 = fileCopy;
  relativePath5 = [fileCopy relativePath];
  pathComponents3 = [relativePath5 pathComponents];

  v26 = [pathComponents3 count];
  v27 = 0;
  while (1)
  {
    pathComponents = pathComponents3;
    v28 = [pathComponents3 subarrayWithRange:0, v27];
    relativePathsOfSystemFilesToAlwaysRestore2 = [NSString pathWithComponents:v28];

    relativePathsNotToRestore = [v86 relativePathsNotToRestore];
    v30 = [relativePathsNotToRestore containsObject:relativePathsOfSystemFilesToAlwaysRestore2];

    if (v30)
    {
      if (quietCopy)
      {
        goto LABEL_90;
      }

      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = objc_msgSend_absolutePath(fileCopy);
        *buf = 138412290;
        v102 = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring: %@", buf, 0xCu);

        v71 = objc_msgSend_absolutePath(fileCopy);
        _MBLog(@"I ", "Not restoring: %@", v71);
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    if (![(MBDriveRestoreEngine *)self isRestoringToSameDevice])
    {
      relativePathsNotToMigrate = [v86 relativePathsNotToMigrate];
      v32 = [relativePathsNotToMigrate containsObject:relativePathsOfSystemFilesToAlwaysRestore2];

      if (v32)
      {
        if (quietCopy)
        {
          goto LABEL_90;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v72 = objc_msgSend_absolutePath(fileCopy);
          *buf = 138412290;
          v102 = v72;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a migrate: %@", buf, 0xCu);

          v71 = objc_msgSend_absolutePath(fileCopy);
          _MBLog(@"I ", "Not restoring because this is a migrate: %@", v71);
          goto LABEL_85;
        }

LABEL_89:

        goto LABEL_90;
      }
    }

    if (![(MBEngine *)self isDeviceTransferEngine])
    {
      relativePathsNotToRestoreFromLocal = [v86 relativePathsNotToRestoreFromLocal];
      v34 = [relativePathsNotToRestoreFromLocal containsObject:relativePathsOfSystemFilesToAlwaysRestore2];

      if (v34)
      {
        if (quietCopy)
        {
          goto LABEL_90;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v73 = objc_msgSend_absolutePath(fileCopy);
          *buf = 138412290;
          v102 = v73;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a local restore: %@", buf, 0xCu);

          v71 = objc_msgSend_absolutePath(fileCopy);
          _MBLog(@"I ", "Not restoring because this is a local restore: %@", v71);
LABEL_85:
        }

        goto LABEL_89;
      }
    }

    if (v27 < v26 && [fileCopy isSymbolicLink])
    {
      v35 = [pathComponents objectAtIndexedSubscript:v27];
      if (([v35 isEqualToString:@".."] & 1) == 0)
      {

        goto LABEL_36;
      }

      shouldRestoreRelativeSymlinks = [v86 shouldRestoreRelativeSymlinks];

      if ((shouldRestoreRelativeSymlinks & 1) == 0)
      {
        break;
      }
    }

LABEL_36:

    ++v27;
    pathComponents3 = pathComponents;
    if (v27 > v26)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
      relativePathsOfSystemFilesToAlwaysRestore2 = [settingsContext2 plugins];

      v38 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (!v38)
      {
        v16 = 1;
        goto LABEL_91;
      }

      v39 = v38;
      v40 = *v88;
LABEL_39:
      v41 = 0;
      while (1)
      {
        if (*v88 != v40)
        {
          objc_enumerationMutation(relativePathsOfSystemFilesToAlwaysRestore2);
        }

        v42 = *(*(&v87 + 1) + 8 * v41);
        if (objc_opt_respondsToSelector())
        {
          restorePolicy = self->_restorePolicy;
          v44 = objc_msgSend_absolutePath(fileCopy);
          LOBYTE(restorePolicy) = [v42 shouldRestoreContentWithPolicy:restorePolicy atPath:v44];

          if ((restorePolicy & 1) == 0)
          {
            break;
          }
        }

        if (v39 == ++v41)
        {
          v39 = [relativePathsOfSystemFilesToAlwaysRestore2 countByEnumeratingWithState:&v87 objects:v99 count:16];
          v16 = 1;
          if (v39)
          {
            goto LABEL_39;
          }

          goto LABEL_78;
        }
      }

      if (quietCopy)
      {
        v16 = 0;
LABEL_78:
        v9 = fileCopy;
        goto LABEL_91;
      }

      v69 = MBGetDefaultLog();
      v9 = fileCopy;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v74 = objc_opt_class();
        Name = class_getName(v74);
        v76 = objc_msgSend_absolutePath(fileCopy);
        *buf = 136446466;
        v102 = Name;
        v103 = 2112;
        v104 = v76;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because it was refused by plugin %{public}s: %@", buf, 0x16u);

        v77 = objc_opt_class();
        v78 = class_getName(v77);
        v79 = objc_msgSend_absolutePath(fileCopy);
        _MBLog(@"I ", "Not restoring because it was refused by plugin %{public}s: %@", v78, v79);
      }

      goto LABEL_89;
    }
  }

  if (!quietCopy)
  {
    v69 = MBGetDefaultLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Not restoring because this is a relative symbolic link in a prohibited domain", buf, 2u);
      _MBLog(@"I ", "Not restoring because this is a relative symbolic link in a prohibited domain");
    }

    goto LABEL_89;
  }

LABEL_90:
  v16 = 0;
LABEL_91:
  domain = v86;
LABEL_92:

LABEL_93:
LABEL_94:

  return v16;
}

- (id)_restoreRegularFiles:(id)files size:(unint64_t)size
{
  filesCopy = files;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v149 = [filesCopy count];
    v150 = 2048;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Downloading %lu files of size %{bytes}llu", buf, 0x16u);
    _MBLog(@"I ", "Downloading %lu files of size %{bytes}llu", [filesCopy count], size);
  }

  v126 = [NSMutableDictionary dictionaryWithCapacity:0];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = filesCopy;
  v8 = [obj countByEnumeratingWithState:&v143 objects:v160 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v144;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v144 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v143 + 1) + 8 * i);
        databaseIndex = [(MBManifestLike *)self->_manifest databaseIndex];
        fileID = [v12 fileID];
        v15 = [databaseIndex flagsForFileID:fileID error:0];

        settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
        v17 = settingsContext;
        if ((v15 & 8) != 0)
        {
          [settingsContext driveSnapshotDir];
        }

        else
        {
          [settingsContext driveBackupDir];
        }
        v18 = ;

        nonRedirectedDomain = [v12 nonRedirectedDomain];
        relativePath = [v12 relativePath];
        v21 = [MBFileID fileIDWithDomain:nonRedirectedDomain relativePath:relativePath];

        properties = [(MBManifestLike *)self->_manifest properties];
        if ([properties hasManifestDB])
        {
          [v21 filenameWithPrefix];
        }

        else
        {
          [v21 filename];
        }
        v23 = ;

        v24 = [v18 stringByAppendingPathComponent:v23];
        v25 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v12];
        [v126 setObject:v25 forKeyedSubscript:v24];
      }

      v9 = [obj countByEnumeratingWithState:&v143 objects:v160 count:16];
    }

    while (v9);
  }

  v158 = @"FileHandleFactory";
  selfCopy = self;
  v26 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v158 count:1];
  drive = self->_drive;
  v141 = 0;
  v142 = 0;
  v28 = [(MBDrive *)drive downloadFilesAtPaths:v126 options:v26 results:&v142 error:&v141];
  v29 = v142;
  v30 = v141;
  if ((v28 & 1) == 0)
  {
    if (![MBError isError:v30 withCode:2])
    {
      v59 = [MBBackupHelper driveReadError:v30 description:@"Error downloading files"];
      goto LABEL_91;
    }

    v109 = v30;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v60 = v29;
    v61 = [v60 countByEnumeratingWithState:&v137 objects:v157 count:16];
    if (v61)
    {
      v62 = v61;
      v112 = v29;
      v63 = 0;
      v64 = *v138;
      do
      {
        for (j = 0; j != v62; j = j + 1)
        {
          if (*v138 != v64)
          {
            objc_enumerationMutation(v60);
          }

          v66 = *(*(&v137 + 1) + 8 * j);
          v67 = [v60 objectForKeyedSubscript:v66];
          if (([MBError isError:v67 withCode:105]& 1) != 0)
          {
            v63 = 1;
          }

          else
          {
            v68 = MBGetDefaultLog();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v149 = v66;
              v150 = 2112;
              sizeCopy = v67;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Error downloading %@: %@", buf, 0x16u);
              _MBLog(@"E ", "Error downloading %@: %@", v66, v67);
            }
          }
        }

        v62 = [v60 countByEnumeratingWithState:&v137 objects:v157 count:16];
      }

      while (v62);

      v29 = v112;
      if (v63)
      {
        v69 = @"No space left on device";
        v70 = 106;
LABEL_94:
        v104 = [MBError errorWithCode:v70 format:v69];
        v30 = v109;
        goto LABEL_106;
      }
    }

    else
    {
    }

    v69 = @"Multiple errors downloading files";
    v70 = 205;
    goto LABEL_94;
  }

  if ([(MBEngine *)self isDeviceTransferEngine]&& [(MBDriveRestoreEngine *)self shouldVerifyDigests])
  {
    v108 = v30;
    v111 = v29;
    v114 = v26;
    v136 = 0u;
    v134 = 0u;
    v135 = 0u;
    v133 = 0u;
    v31 = obj;
    v32 = [v31 countByEnumeratingWithState:&v133 objects:v156 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v134;
      v119 = v31;
      context = *v134;
      do
      {
        v35 = 0;
        v117 = v33;
        do
        {
          if (*v134 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v133 + 1) + 8 * v35);
          domain = [v36 domain];
          shouldDigest = [domain shouldDigest];

          if (shouldDigest)
          {
            digest = [v36 digest];
            if (digest)
            {
              v40 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v36];
              v41 = +[MBDigest sha256];
              v132 = 0;
              v42 = [v41 digestForFileAtPath:v40 error:&v132];
              v123 = v132;
              if (v42)
              {
                v43 = [(std::__fs::filesystem::path *)v42 isEqualToData:digest];
                v44 = MBGetDefaultLog();
                v45 = v44;
                if (v43)
                {
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    v46 = objc_msgSend_absolutePath(v36);
                    *buf = 138412290;
                    v149 = v46;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Digest matches: %@", buf, 0xCu);

                    v47 = objc_msgSend_absolutePath(v36);
                    _MBLog(@"Db", "Digest matches: %@", v47);
                  }
                }

                else
                {
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    v54 = objc_msgSend_absolutePath(v36);
                    fileID2 = [v36 fileID];
                    *buf = 138413058;
                    v149 = v42;
                    v150 = 2112;
                    sizeCopy = digest;
                    v152 = 2112;
                    v153 = v54;
                    v154 = 2112;
                    v155 = fileID2;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "File SHA256 digest does not match manifest (%@ vs %@): %@ (%@)", buf, 0x2Au);

                    v56 = objc_msgSend_absolutePath(v36);
                    [v36 fileID];
                    v58 = v57 = v41;
                    _MBLog(@"E ", "File SHA256 digest does not match manifest (%@ vs %@): %@ (%@)", v42, digest, v56, v58);

                    v41 = v57;
                  }

                  [(MBDriveRestoreEngine *)self digestDidNotMatchForFile:v36];
                }

                v33 = v117;
                v31 = v119;
              }

              else
              {
                v53 = MBGetDefaultLog();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v149 = v40;
                  v150 = 2112;
                  sizeCopy = v123;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to compute the SHA1 digest for %@: %@", buf, 0x16u);
                  v31 = v119;
                  _MBLog(@"E ", "Failed to compute the SHA1 digest for %@: %@", v40, v123);
                }

                [(MBDriveRestoreEngine *)self digestDidNotMatchForFile:v36];
              }

              v34 = context;
            }

            else
            {
              v48 = MBGetDefaultLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v49 = objc_msgSend_absolutePath(v36);
                fileID3 = [v36 fileID];
                *buf = 138412546;
                v149 = v49;
                v150 = 2112;
                sizeCopy = fileID3;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Digest missing from file: %@ (%@)", buf, 0x16u);

                v51 = objc_msgSend_absolutePath(v36);
                fileID4 = [v36 fileID];
                _MBLog(@"E ", "Digest missing from file: %@ (%@)", v51, fileID4);
              }

              [(MBDriveRestoreEngine *)self digestDidNotMatchForFile:v36];
            }
          }

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v133 objects:v156 count:16];
      }

      while (v33);
    }

    v29 = v111;
    v26 = v114;
    v30 = v108;
  }

  if (self->_digestDidNotMatchForSomeFiles)
  {
    v59 = [MBError errorWithCode:205 format:@"Digest didn't match for some files"];
LABEL_91:
    v104 = v59;
    goto LABEL_106;
  }

  v113 = v29;
  v115 = v26;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v116 = obj;
  v118 = [v116 countByEnumeratingWithState:&v128 objects:v147 count:16];
  if (v118)
  {
    v120 = *v129;
    while (2)
    {
      for (k = 0; k != v118; k = k + 1)
      {
        v72 = v30;
        if (*v129 != v120)
        {
          objc_enumerationMutation(v116);
        }

        v73 = *(*(&v128 + 1) + 8 * k);
        contexta = objc_autoreleasePoolPush();
        v124 = [(MBDriveRestoreEngine *)self _temporaryPathForFile:v73];
        fileSystemRepresentation = [(std::__fs::filesystem::path *)v124 fileSystemRepresentation];
        v75 = [(MBRestorePolicy *)self->_restorePolicy restorePathForDriveRestorable:v73];
        restorePolicy = self->_restorePolicy;
        domain2 = [v73 domain];
        relativePath2 = [v73 relativePath];
        v79 = [(MBRestorePolicy *)restorePolicy validateRestoreDomain:domain2 relativePath:relativePath2];

        if (v79)
        {
          v30 = v79;
          v104 = v30;
          v29 = v113;
          v26 = v115;
          v102 = contexta;
          v92 = v75;
LABEL_105:

          objc_autoreleasePoolPop(v102);
          goto LABEL_106;
        }

        v80 = v75;
        fileSystemRepresentation2 = [v75 fileSystemRepresentation];
        v82 = MBGetDefaultLog();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = [v73 description];
          fileID5 = [v73 fileID];
          *buf = 138412546;
          v149 = v83;
          v150 = 2112;
          sizeCopy = fileID5;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "Restoring regular file: %@ (%@)", buf, 0x16u);

          v85 = [v73 description];
          fileID6 = [v73 fileID];
          _MBLog(@"I ", "Restoring regular file: %@ (%@)", v85, fileID6);
        }

        v87 = [MBRestorableOperation restore:v73 regularFileAtPath:v124 settingAttributes:1];
        if (v87)
        {
          v30 = v87;
          v104 = v30;
          v29 = v113;
          v26 = v115;
          v102 = contexta;
          v92 = v80;
          goto LABEL_105;
        }

        v89 = fileSystemRepresentation;
        rename(fileSystemRepresentation, fileSystemRepresentation2, v88);
        if (v90)
        {
          v91 = *__error();
          v92 = v80;
          if (v91 == 92 || v91 == 63)
          {
            v99 = MBGetDefaultLog();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v149 = v124;
              v150 = 2112;
              sizeCopy = v80;
              v152 = 1024;
              LODWORD(v153) = v91;
              _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Skipped rename from %@ to %@: %{errno}d", buf, 0x1Cu);
              _MBLog(@"E ", "Skipped rename from %@ to %@: %{errno}d", v124, v80, v91);
            }

            v30 = 0;
          }

          else
          {
            if (v91 != 21)
            {
              v103 = MBGetDefaultLog();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v149 = v89;
                v150 = 2080;
                sizeCopy = fileSystemRepresentation2;
                v152 = 1024;
                LODWORD(v153) = v91;
                _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "rename from %s to %s failed: %{errno}d", buf, 0x1Cu);
                _MBLog(@"E ", "rename from %s to %s failed: %{errno}d", v89, fileSystemRepresentation2, v91);
              }

              v104 = NSStringFromSelector(a2);
              v104 = [MBError posixErrorWithCode:v91 path:v80 format:@"%@ rename error", v104];

              v30 = 0;
              goto LABEL_101;
            }

            v93 = MBGetDefaultLog();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Removing existing directory", buf, 2u);
              _MBLog(@"I ", "Removing existing directory");
            }

            v94 = +[NSFileManager defaultManager];
            v127 = 0;
            v95 = [v94 removeItemAtPath:v80 error:&v127];
            v96 = v127;

            if ((v95 & 1) == 0)
            {
              v30 = v96;
              v104 = [MBError errorWithCode:102 error:v96 path:v80 format:@"Error removing directory item while restoring regular file"];
LABEL_101:
              v29 = v113;
              v26 = v115;
              v102 = contexta;
              goto LABEL_105;
            }

            rename(v89, fileSystemRepresentation2, v97);
            if (v98)
            {
              v105 = MBGetDefaultLog();
              v29 = v113;
              v26 = v115;
              v30 = v96;
              v102 = contexta;
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v149 = v89;
                v150 = 2080;
                sizeCopy = fileSystemRepresentation2;
                v152 = 1024;
                LODWORD(v153) = 21;
                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "rename from %s to %s failed: %{errno}d", buf, 0x1Cu);
                _MBLog(@"E ", "rename from %s to %s failed: %{errno}d", v89, fileSystemRepresentation2, 21);
              }

              v106 = NSStringFromSelector(a2);
              v104 = [MBError posixErrorWithCode:21 path:v92 format:@"%@ rename error", v106];

              goto LABEL_105;
            }

            v30 = v96;
          }
        }

        else
        {
          v30 = 0;
          v92 = v80;
        }

        v100 = MBGetDefaultLog();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v149 = v89;
          v150 = 2080;
          sizeCopy = fileSystemRepresentation2;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Renamed %s to %s", buf, 0x16u);
          _MBLog(@"I ", "Renamed %s to %s", v89, fileSystemRepresentation2);
        }

        objc_autoreleasePoolPop(contexta);
      }

      v118 = [v116 countByEnumeratingWithState:&v128 objects:v147 count:16];
      if (v118)
      {
        continue;
      }

      break;
    }
  }

  v104 = 0;
  v29 = v113;
  v26 = v115;
LABEL_106:

  return v104;
}

- (id)_annotate
{
  v3 = objc_autoreleasePoolPush();
  settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
  shouldRemoveItemsNotRestored = [settingsContext shouldRemoveItemsNotRestored];

  v6 = MBGetDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (shouldRemoveItemsNotRestored)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Annotating", buf, 2u);
      _MBLog(@"I ", "Annotating");
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v9 = v8;
    persona = [(MBEngine *)self persona];
    engineType = self->_engineType;
    backupPolicy = [(MBEngine *)self backupPolicy];
    settingsContext2 = [(MBDriveRestoreEngine *)self settingsContext];
    v6 = +[MBRestoreDirectoryAnnotator restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:](MBRestoreDirectoryAnnotator, "restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:", persona, engineType, backupPolicy, [settingsContext2 shouldRestoreSystemFiles], -[MBDriveRestoreEngine encrypted](self, "encrypted"));

    allDomains = [(MBDomainManager *)self->super._domainManager allDomains];
    v15 = [v6 annotateDomains:allDomains];

    if (v15)
    {
      v16 = v15;

      objc_autoreleasePoolPop(v3);
      goto LABEL_12;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      +[NSDate timeIntervalSinceReferenceDate];
      *buf = 134217984;
      v22 = v18 - v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Annotated in %0.3f s", buf, 0xCu);
      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog(@"Df", "Annotated in %0.3f s", v19 - v9);
    }
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not annotating", buf, 2u);
    _MBLog(@"I ", "Not annotating");
  }

  objc_autoreleasePoolPop(v3);
  v16 = 0;
LABEL_12:

  return v16;
}

- (id)_restoreDirectoryAttributes
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003140C;
  v21 = sub_10003141C;
  v22 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to restore directory modification times", buf, 2u);
    _MBLog(@"Df", "Starting to restore directory modification times");
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  manifest = self->_manifest;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100035A50;
  v16[3] = &unk_1000FD670;
  v16[4] = self;
  v16[5] = &v17;
  v8 = [(MBManifestLike *)manifest enumerateFiles:v16];
  v9 = v18[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        +[NSDate timeIntervalSinceReferenceDate];
        *buf = 134217984;
        v24 = v13 - v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Finished restoring directory modification times in %0.3f s", buf, 0xCu);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      _MBLog(@"Df", "Finished restoring directory modification times in %0.3f s", v14 - v6);
    }
  }

  objc_autoreleasePoolPop(v3);
  _Block_object_dispose(&v17, 8);

  return v9;
}

- (id)_moveRestoreDirs
{
  persona = [(MBEngine *)self persona];
  v6 = 0;
  [persona finalizeRestoreDirectoriesWithError:&v6];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (id)fileForTemporaryPath:(id)path
{
  pathCopy = path;
  lastPathComponent = [pathCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v7 = [MBFileID fileIDWithString:stringByDeletingPathExtension];

  if (!v7)
  {
    sub_10009D620();
  }

  v8 = [(MBManifestLike *)self->_manifest fetchFileWithID:v7 error:0];
  if (!v8)
  {
    sub_10009D698();
  }

  return v8;
}

- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v8 = *&flags;
  pathCopy = path;
  v11 = [(MBDriveRestoreEngine *)self fileForTemporaryPath:pathCopy];
  if ([(MBDriveRestoreEngine *)self encrypted])
  {
    settingsContext = [(MBDriveRestoreEngine *)self settingsContext];
    keybag = [settingsContext keybag];
    encryptionKey = [v11 encryptionKey];
    v15 = [MBEncryptedFileHandle encryptedFileHandleForRestoreWithPath:pathCopy keybag:keybag key:encryptionKey error:error];

    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = [MBBasicFileHandle basicFileHandleWithPath:pathCopy flags:v8 mode:modeCopy error:error];
    if (!v16)
    {
LABEL_9:
      v22 = 0;
      goto LABEL_12;
    }

    v15 = v16;
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      protectionClass = [v11 protectionClass];
      v19 = objc_msgSend_absolutePath(v11);
      *buf = 67109378;
      v25 = protectionClass;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Setting protection class to %d: %@", buf, 0x12u);

      protectionClass2 = [v11 protectionClass];
      v21 = objc_msgSend_absolutePath(v11);
      _MBLog(@"I ", "Setting protection class to %d: %@", protectionClass2, v21);
    }

    if (!+[MBProtectionClassUtils setWithFD:value:error:](MBProtectionClassUtils, "setWithFD:value:error:", [v15 fd], objc_msgSend(v11, "protectionClass"), error))
    {
      [v15 closeWithError:0];
      v22 = 0;
      goto LABEL_11;
    }
  }

  v22 = [[MBRestoreFileHandle alloc] initWithEngine:self fileHandle:v15 file:v11];
LABEL_11:

LABEL_12:

  return v22;
}

@end