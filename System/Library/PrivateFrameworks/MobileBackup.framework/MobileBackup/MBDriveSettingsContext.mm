@interface MBDriveSettingsContext
+ (id)defaultSettingsContext;
- (BOOL)shouldCopyBackup;
- (BOOL)shouldNotifySpringBoard;
- (BOOL)shouldRemoveItemsNotRestored;
- (BOOL)shouldRestoreAppWithID:(id)d;
- (BOOL)shouldRestoreSystemFiles;
- (MBDriveSettingsContext)initWithPersona:(id)persona;
- (NSString)driveBackupDatabaseIndexPath;
- (NSString)driveBackupDatabasePath;
- (NSString)driveBackupDir;
- (NSString)driveBackupInfoPath;
- (NSString)driveBackupManifestDatabasePath;
- (NSString)driveBackupPropertiesPath;
- (NSString)driveBackupStatusPath;
- (NSString)driveSnapshotDatabaseIndexPath;
- (NSString)driveSnapshotDatabasePath;
- (NSString)driveSnapshotDir;
- (NSString)driveSnapshotManifestDatabasePath;
- (NSString)driveSnapshotPropertiesPath;
- (id)copyWithZone:(_NSZone *)zone;
- (void)log;
- (void)setShouldRestoreSystemFiles:(BOOL)files;
- (void)updatePassword:(id)password;
@end

@implementation MBDriveSettingsContext

+ (id)defaultSettingsContext
{
  v7 = 0;
  v2 = [MBPersona personalPersonaWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [[MBDriveSettingsContext alloc] initWithPersona:v2];
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to fetch personal persona: %@", buf, 0xCu);
      _MBLog(@"F ", "Failed to fetch personal persona: %@", v3);
    }

    v4 = 0;
  }

  return v4;
}

- (MBDriveSettingsContext)initWithPersona:(id)persona
{
  v15.receiver = self;
  v15.super_class = MBDriveSettingsContext;
  v3 = [(MBSettingsContext *)&v15 init];
  if (v3)
  {
    v4 = MBDeviceClass();
    targetDeviceClass = v3->_targetDeviceClass;
    v3->_targetDeviceClass = v4;

    v6 = MBDefaultOptions();
    v7 = [v6 mutableCopy];
    options = v3->_options;
    v3->_options = v7;

    v9 = [[MBDriveEncryptionManager alloc] initWithSettingsContext:v3];
    encryptionManager = v3->_encryptionManager;
    v3->_encryptionManager = v9;

    v11 = MBGetCacheDir();
    deviceCacheDir = v3->_deviceCacheDir;
    v3->_deviceCacheDir = v11;

    v13 = [(NSMutableDictionary *)v3->_options objectForKeyedSubscript:@"RestorePreserveSettings"];
    -[MBSettingsContext setShouldPreserveSettings:](v3, "setShouldPreserveSettings:", [v13 BOOLValue]);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MBDriveSettingsContext;
  v5 = [(MBSettingsContext *)&v9 copyWithZone:?];
  [v5 setProtocolVersion:self->_protocolVersion];
  [v5 setTargetDeviceClass:self->_targetDeviceClass];
  [v5 setSourceIdentifier:self->_sourceIdentifier];
  [v5 setTargetIdentifier:self->_targetIdentifier];
  v6 = [(NSSet *)self->_applicationIDs mutableCopyWithZone:zone];
  [v5 setApplicationIDs:v6];

  v7 = [(NSMutableDictionary *)self->_options mutableCopyWithZone:zone];
  [v5 setOptions:v7];

  [v5 setDrive:self->_drive];
  [v5 setEncryptionManager:self->_encryptionManager];
  [v5 setDeviceCacheDir:self->_deviceCacheDir];
  return v5;
}

- (BOOL)shouldNotifySpringBoard
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RestoreShouldReboot"];
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

- (BOOL)shouldCopyBackup
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RestoreDontCopyBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setShouldRestoreSystemFiles:(BOOL)files
{
  v4 = [NSNumber numberWithBool:files];
  [(NSMutableDictionary *)self->_options setObject:v4 forKeyedSubscript:@"RestoreSystemFiles"];
}

- (BOOL)shouldRestoreSystemFiles
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RestoreSystemFiles"];
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

- (BOOL)shouldRemoveItemsNotRestored
{
  v2 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"RemoveItemsNotRestored"];
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

- (NSString)driveBackupDir
{
  sourceIdentifier = self->_sourceIdentifier;
  if (!sourceIdentifier)
  {
    sourceIdentifier = self->_targetIdentifier;
  }

  return sourceIdentifier;
}

- (NSString)driveBackupStatusPath
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Status.plist"];

  return v3;
}

- (NSString)driveBackupPropertiesPath
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Manifest.plist"];

  return v3;
}

- (NSString)driveBackupDatabasePath
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Manifest.mbdb"];

  return v3;
}

- (NSString)driveBackupDatabaseIndexPath
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Manifest.mbdx"];

  return v3;
}

- (NSString)driveBackupManifestDatabasePath
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Manifest.db"];

  return v3;
}

- (NSString)driveBackupInfoPath
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Info.plist"];

  return v3;
}

- (NSString)driveSnapshotDir
{
  driveBackupDir = [(MBDriveSettingsContext *)self driveBackupDir];
  v3 = [driveBackupDir stringByAppendingPathComponent:@"Snapshot"];

  return v3;
}

- (NSString)driveSnapshotPropertiesPath
{
  driveSnapshotDir = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [driveSnapshotDir stringByAppendingPathComponent:@"Manifest.plist"];

  return v3;
}

- (NSString)driveSnapshotDatabasePath
{
  driveSnapshotDir = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [driveSnapshotDir stringByAppendingPathComponent:@"Manifest.mbdb"];

  return v3;
}

- (NSString)driveSnapshotDatabaseIndexPath
{
  driveSnapshotDir = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [driveSnapshotDir stringByAppendingPathComponent:@"Manifest.mbdx"];

  return v3;
}

- (NSString)driveSnapshotManifestDatabasePath
{
  driveSnapshotDir = [(MBDriveSettingsContext *)self driveSnapshotDir];
  v3 = [driveSnapshotDir stringByAppendingPathComponent:@"Manifest.db"];

  return v3;
}

- (BOOL)shouldRestoreAppWithID:(id)d
{
  applicationIDs = self->_applicationIDs;
  if (applicationIDs)
  {
    return [(NSSet *)applicationIDs containsObject:d];
  }

  else
  {
    return 1;
  }
}

- (void)updatePassword:(id)password
{
  options = self->_options;
  if (password)
  {
    [(NSMutableDictionary *)options setObject:password forKeyedSubscript:@"Password"];
  }

  else
  {
    [(NSMutableDictionary *)options removeObjectForKey:@"Password"];
  }
}

- (void)log
{
  v26.receiver = self;
  v26.super_class = MBDriveSettingsContext;
  [(MBSettingsContext *)&v26 log];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    targetDeviceClass = [(MBDriveSettingsContext *)self targetDeviceClass];
    *buf = 138412290;
    v28 = targetDeviceClass;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TargetDeviceClass: %@", buf, 0xCu);

    targetDeviceClass2 = [(MBDriveSettingsContext *)self targetDeviceClass];
    _MBLog(@"I ", "TargetDeviceClass: %@", targetDeviceClass2);
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    [(MBDriveSettingsContext *)self protocolVersion];
    *buf = 134217984;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ProtocolVersion: %0.1f", buf, 0xCu);
    [(MBDriveSettingsContext *)self protocolVersion];
    _MBLog(@"I ", "ProtocolVersion: %0.1f", v8);
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    sourceIdentifier = [(MBDriveSettingsContext *)self sourceIdentifier];
    *buf = 138412290;
    v28 = sourceIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SourceIdentifier: %@", buf, 0xCu);

    sourceIdentifier2 = [(MBDriveSettingsContext *)self sourceIdentifier];
    _MBLog(@"I ", "SourceIdentifier: %@", sourceIdentifier2);
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    targetIdentifier = [(MBDriveSettingsContext *)self targetIdentifier];
    *buf = 138412290;
    v28 = targetIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "TargetIdentifier: %@", buf, 0xCu);

    targetIdentifier2 = [(MBDriveSettingsContext *)self targetIdentifier];
    _MBLog(@"I ", "TargetIdentifier: %@", targetIdentifier2);
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    applicationIDs = [(MBDriveSettingsContext *)self applicationIDs];
    v17 = MBStringWithSet();
    *buf = 138412290;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "ApplicationIDs: %@", buf, 0xCu);

    applicationIDs2 = [(MBDriveSettingsContext *)self applicationIDs];
    v19 = MBStringWithSet();
    _MBLog(@"I ", "ApplicationIDs: %@", v19);
  }

  options = [(MBDriveSettingsContext *)self options];
  v21 = [options mutableCopy];

  v22 = [v21 objectForKeyedSubscript:@"Password"];

  if (v22)
  {
    [v21 setObject:@"********" forKeyedSubscript:@"Password"];
  }

  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = MBStringWithDictionary();
    *buf = 138412290;
    v28 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Options: %@", buf, 0xCu);

    v25 = MBStringWithDictionary();
    _MBLog(@"I ", "Options: %@", v25);
  }
}

@end