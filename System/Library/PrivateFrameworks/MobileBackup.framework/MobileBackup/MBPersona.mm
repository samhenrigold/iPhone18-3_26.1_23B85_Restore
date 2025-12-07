@interface MBPersona
+ (Class)personaClass;
+ (id)personaWithAttributes:(id)attributes volumeMountPoint:(id)point;
+ (id)personaWithIdentifier:(id)identifier userPersonaType:(unint64_t)type dataSeparatedPersona:(BOOL)persona volumeMountPoint:(id)point;
+ (id)personaWithUMPersona:(id)persona error:(id *)error;
- (BOOL)shouldRestoreToSharedVolume;
- (MBPersona)initWithPersonaAttributes:(id)attributes volumeMountPoint:(id)point;
- (MBPersona)initWithPersonaIdentifier:(id)identifier userPersonaType:(unint64_t)type dataSeparatedPersona:(BOOL)persona volumeMountPoint:(id)point;
- (MBPersona)initWithUMPersona:(id)persona error:(id *)error;
- (NSDictionary)restoreDepotRootsByVolume;
- (NSSet)volumesToBackUp;
- (NSString)appPlaceholderArchiveDirectory;
- (NSString)cacheDirectory;
- (NSString)demotedAppsPlistPath;
- (NSString)keyBagValidationStatePlistPath;
- (NSString)l28BackupTelemetryPlistPath;
- (NSString)personaName;
- (NSString)placeholderRestoreDirectory;
- (NSString)preferencesDirectory;
- (NSString)restoreKeyBagsPath;
- (NSString)restoreOperationLogPath;
- (NSString)restoreSnapshotsDatabaseDirectory;
- (NSString)skippedFileRecordsPlistPath;
- (NSString)snapshotDatabaseDirectory;
- (NSString)sqliteCopyDirectory;
- (NSString)systemContainersVolumeMountPoint;
- (NSString)systemDataContainerRestoreDirectory;
- (NSString)systemSharedDataContainerRestoreDirectory;
- (NSString)userIncompleteRestoreDirectory;
- (NSString)userRestoreDirectory;
- (NSString)volumeMapPlistPath;
- (_MBUser)user;
- (id)_userRestorePrefetchDirectory;
- (id)description;
- (id)restorePrefetchDirectories;
- (id)restorePrefetchDirectoryForDomain:(id)domain;
- (int64_t)accountType;
- (void)removeRestoreKeybags;
@end

@implementation MBPersona

- (NSSet)volumesToBackUp
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_volumesToBackUp)
  {
    if (-[MBPersona isPersonalPersona](selfCopy, "isPersonalPersona") && (-[MBPersona user](selfCopy, "user"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isPrimaryUser], v3, v4))
    {
      v5 = MEMORY[0x1E695DFD8];
      volumeMountPoint = [(MBPersona *)selfCopy volumeMountPoint];
      v7 = [v5 setWithObjects:{volumeMountPoint, @"/private/var", 0}];
    }

    else
    {
      v8 = MEMORY[0x1E695DFD8];
      volumeMountPoint = [(MBPersona *)selfCopy volumeMountPoint];
      v7 = [v8 setWithObjects:{volumeMountPoint, 0}];
    }

    volumesToBackUp = selfCopy->_volumesToBackUp;
    selfCopy->_volumesToBackUp = v7;
  }

  objc_sync_exit(selfCopy);

  v10 = selfCopy->_volumesToBackUp;

  return v10;
}

- (_MBUser)user
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_user;
  if (!v3)
  {
    v3 = +[_MBUser currentUser];
    objc_storeStrong(&selfCopy->_user, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MBPersona user];
  }

  return v3;
}

+ (Class)personaClass
{
  v3 = _personaClass;
  if (_personaClass)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (id)personaWithIdentifier:(id)identifier userPersonaType:(unint64_t)type dataSeparatedPersona:(BOOL)persona volumeMountPoint:(id)point
{
  personaCopy = persona;
  pointCopy = point;
  identifierCopy = identifier;
  v11 = [objc_alloc(+[MBPersona personaClass](MBPersona "personaClass"))];

  return v11;
}

+ (id)personaWithAttributes:(id)attributes volumeMountPoint:(id)point
{
  pointCopy = point;
  attributesCopy = attributes;
  v7 = [objc_alloc(+[MBPersona personaClass](MBPersona "personaClass"))];

  return v7;
}

+ (id)personaWithUMPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  v6 = [objc_alloc(+[MBPersona personaClass](MBPersona "personaClass"))];

  return v6;
}

- (MBPersona)initWithPersonaIdentifier:(id)identifier userPersonaType:(unint64_t)type dataSeparatedPersona:(BOOL)persona volumeMountPoint:(id)point
{
  personaCopy = persona;
  identifierCopy = identifier;
  pointCopy = point;
  if (!identifierCopy)
  {
    [MBPersona initWithPersonaIdentifier:userPersonaType:dataSeparatedPersona:volumeMountPoint:];
  }

  v12 = pointCopy;
  if (!pointCopy)
  {
    [MBPersona initWithPersonaIdentifier:userPersonaType:dataSeparatedPersona:volumeMountPoint:];
  }

  v16.receiver = self;
  v16.super_class = MBPersona;
  v13 = [(MBPersona *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(MBPersona *)v13 setPersonaIdentifier:identifierCopy];
    [(MBPersona *)v14 setUserPersonaType:type];
    [(MBPersona *)v14 setIsDataSeparatedPersona:personaCopy];
    [(MBPersona *)v14 setVolumeMountPoint:v12];
  }

  return v14;
}

- (MBPersona)initWithPersonaAttributes:(id)attributes volumeMountPoint:(id)point
{
  attributesCopy = attributes;
  pointCopy = point;
  if (!attributesCopy)
  {
    [MBPersona initWithPersonaAttributes:volumeMountPoint:];
  }

  v8 = pointCopy;
  userPersonaUniqueString = [attributesCopy userPersonaUniqueString];
  v10 = -[MBPersona initWithPersonaIdentifier:userPersonaType:dataSeparatedPersona:volumeMountPoint:](self, "initWithPersonaIdentifier:userPersonaType:dataSeparatedPersona:volumeMountPoint:", userPersonaUniqueString, [attributesCopy userPersonaType], objc_msgSend(attributesCopy, "isDataSeparatedPersona"), v8);

  return v10;
}

- (MBPersona)initWithUMPersona:(id)persona error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  if (!personaCopy)
  {
    [MBPersona initWithUMPersona:error:];
  }

  if (!error)
  {
    [MBPersona initWithUMPersona:error:];
  }

  v7 = personaCopy;
  userPersonaUniqueString = [personaCopy userPersonaUniqueString];
  if (userPersonaUniqueString)
  {
    path = userPersonaUniqueString;
    if ([v7 isPersonalPersona])
    {
      v10 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:path];
      if (v10)
      {
        userPersonaNickName14 = v10;
        if (([(__CFString *)v10 isPersonalPersona]& 1) == 0)
        {
          [MBPersona initWithUMPersona:error:];
        }

        userPersonaUniqueString3 = path;
        path = @"/private/var/mobile";
LABEL_20:
        v16 = [(MBPersona *)self initWithPersonaAttributes:userPersonaNickName14 volumeMountPoint:path];
        userPersonaNickName7 = userPersonaNickName14;
        self = path;
        userPersonaNickName14 = userPersonaUniqueString3;
        path = v16;
LABEL_30:

        self = path;
        goto LABEL_31;
      }

      userPersonaNickName14 = @"/private/var/mobile";
      goto LABEL_22;
    }

    isDefaultPersona = [v7 isDefaultPersona];
    if ((isDefaultPersona & 1) != 0 || (isDefaultPersona = [v7 isSystemPersona], isDefaultPersona))
    {
      v18 = MBGetDefaultLog(isDefaultPersona);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        userPersonaNickName = [v7 userPersonaNickName];
        *buf = 138543874;
        v43 = path;
        v44 = 2112;
        v45 = userPersonaNickName;
        v46 = 2048;
        userPersonaType = [v7 userPersonaType];
        _os_log_impl(&dword_1DEB5D000, v18, OS_LOG_TYPE_DEBUG, "Using the personal persona for persona %{public}@ %@ (%ld)", buf, 0x20u);

        userPersonaNickName2 = [v7 userPersonaNickName];
        _MBLog(@"Db", "Using the personal persona for persona %{public}@ %@ (%ld)", path, userPersonaNickName2, [v7 userPersonaType]);
      }

      userPersonaNickName14 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];

      if (userPersonaNickName14)
      {
        isPersonalPersona = [(__CFString *)userPersonaNickName14 isPersonalPersona];
        if ((isPersonalPersona & 1) == 0)
        {
          [MBPersona initWithUMPersona:error:];
        }

        v23 = MBGetDefaultLog(isPersonalPersona);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          userPersonaNickName3 = [v7 userPersonaNickName];
          userPersonaType2 = [v7 userPersonaType];
          *buf = 138543874;
          v43 = userPersonaNickName14;
          v44 = 2112;
          v45 = userPersonaNickName3;
          v46 = 2048;
          userPersonaType = userPersonaType2;
          _os_log_impl(&dword_1DEB5D000, v23, OS_LOG_TYPE_INFO, "Using the attributes for personal persona: %{public}@ instead of %@ (%ld)", buf, 0x20u);

          userPersonaNickName4 = [v7 userPersonaNickName];
          _MBLog(@"I ", "Using the attributes for personal persona: %{public}@ instead of %@ (%ld)", userPersonaNickName14, userPersonaNickName4, [v7 userPersonaType]);
        }

        userPersonaUniqueString2 = [(__CFString *)userPersonaNickName14 userPersonaUniqueString];
        userPersonaUniqueString3 = userPersonaUniqueString2;
        path = @"/private/var/mobile";
        if (userPersonaUniqueString2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        path = 0;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:path];
      userPersonaNickName14 = v10;
      if (!v10)
      {
LABEL_22:
        v28 = MBGetDefaultLog(v10);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          userPersonaNickName5 = [v7 userPersonaNickName];
          *buf = 138543874;
          v43 = path;
          v44 = 2112;
          v45 = userPersonaNickName5;
          v46 = 2048;
          userPersonaType = [v7 userPersonaType];
          _os_log_impl(&dword_1DEB5D000, v28, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for persona %{public}@ %@ (%ld)", buf, 0x20u);

          userPersonaNickName6 = [v7 userPersonaNickName];
          _MBLog(@"E ", "Failed to fetch the attributes for persona %{public}@ %@ (%ld)", path, userPersonaNickName6, [v7 userPersonaType]);
        }

        userPersonaNickName7 = [v7 userPersonaNickName];
        [MBError errorWithCode:1 format:@"nil persona attributes for %@ persona", userPersonaNickName7];
LABEL_29:
        *error = v16 = 0;
        goto LABEL_30;
      }

      v36 = MBGetDefaultLog(v10);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v43 = path;
        v44 = 2114;
        v45 = userPersonaNickName14;
        _os_log_impl(&dword_1DEB5D000, v36, OS_LOG_TYPE_INFO, "Fetched persona attributes for persona %{public}@: %{public}@", buf, 0x16u);
        _MBLog(@"I ", "Fetched persona attributes for persona %{public}@: %{public}@", path, userPersonaNickName14);
      }

      userPersonaUniqueString3 = [(__CFString *)userPersonaNickName14 userPersonaUniqueString];

      personaLayoutPathURL = [(__CFString *)userPersonaNickName14 personaLayoutPathURL];
      path = [personaLayoutPathURL path];

      if (userPersonaUniqueString3)
      {
        if (!path)
        {
          v38 = MBGetDefaultLog(userPersonaUniqueString2);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            userPersonaNickName8 = [v7 userPersonaNickName];
            userPersonaType3 = [v7 userPersonaType];
            *buf = 138543618;
            v43 = userPersonaNickName8;
            v44 = 2048;
            v45 = userPersonaType3;
            _os_log_impl(&dword_1DEB5D000, v38, OS_LOG_TYPE_ERROR, "nil volumeMountPoint for %{public}@ persona (%ld)", buf, 0x16u);

            userPersonaNickName9 = [v7 userPersonaNickName];
            _MBLog(@"E ", "nil volumeMountPoint for %{public}@ persona (%ld)", userPersonaNickName9, [v7 userPersonaType]);
          }

          userPersonaNickName7 = [v7 userPersonaNickName];
          [MBError errorWithCode:1 format:@"nil volume mount point for %@ persona", userPersonaNickName7];
          *error = v16 = 0;
          path = userPersonaUniqueString3;
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

    v31 = MBGetDefaultLog(userPersonaUniqueString2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      userPersonaNickName10 = [v7 userPersonaNickName];
      userPersonaType4 = [v7 userPersonaType];
      *buf = 138543618;
      v43 = userPersonaNickName10;
      v44 = 2048;
      v45 = userPersonaType4;
      _os_log_impl(&dword_1DEB5D000, v31, OS_LOG_TYPE_ERROR, "nil personaIdentifier for %{public}@ persona (%ld)", buf, 0x16u);

      userPersonaNickName11 = [v7 userPersonaNickName];
      _MBLog(@"E ", "nil personaIdentifier for %{public}@ persona (%ld)", userPersonaNickName11, [v7 userPersonaType]);
    }

    userPersonaNickName7 = [v7 userPersonaNickName];
    [MBError errorWithCode:1 format:@"nil persona identifier for %@ persona", userPersonaNickName7];
    goto LABEL_29;
  }

  v13 = MBGetDefaultLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    userPersonaNickName12 = [v7 userPersonaNickName];
    *buf = 138543362;
    v43 = userPersonaNickName12;
    _os_log_impl(&dword_1DEB5D000, v13, OS_LOG_TYPE_ERROR, "nil personaIdentifier for %{public}@ persona", buf, 0xCu);

    userPersonaNickName13 = [v7 userPersonaNickName];
    _MBLog(@"E ", "nil personaIdentifier for %{public}@ persona", userPersonaNickName13);
  }

  userPersonaNickName14 = [v7 userPersonaNickName];
  [MBError errorWithCode:1 format:@"nil persona identifier for %@ persona", userPersonaNickName14];
  *error = v16 = 0;
LABEL_31:

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  personaIdentifier = self->_personaIdentifier;
  user = [(MBPersona *)self user];
  v8 = [v3 stringWithFormat:@"<%s: %p id=%@, user=%@>", Name, self, personaIdentifier, user];;

  return v8;
}

- (NSString)personaName
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"Personal";
  }

  else if ([(MBPersona *)self isEnterprisePersona])
  {
    v3 = @"EDS";
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    personaIdentifier = [(MBPersona *)self personaIdentifier];
    v3 = [v4 stringWithFormat:@"UNEXPECTED %@", personaIdentifier];
  }

  return v3;
}

- (BOOL)shouldRestoreToSharedVolume
{
  isPersonalPersona = [(MBPersona *)self isPersonalPersona];
  if (isPersonalPersona)
  {
    user = [(MBPersona *)self user];
    isPrimaryUser = [user isPrimaryUser];

    LOBYTE(isPersonalPersona) = isPrimaryUser;
  }

  return isPersonalPersona;
}

- (NSString)cacheDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = MBGetCacheDir();
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
    v3 = [volumeMountPoint stringByAppendingPathComponent:@"Backup/Caches"];
  }

  if (!v3)
  {
    [MBPersona cacheDirectory];
  }

  return v3;
}

- (NSString)preferencesDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Preferences";
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
    v3 = [volumeMountPoint stringByAppendingPathComponent:@"Backup/Preferences"];

    if (!v3)
    {
      [MBPersona preferencesDirectory];
    }
  }

  return v3;
}

- (NSString)sqliteCopyDirectory
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"sqlcache"];

  if (!v3)
  {
    [MBPersona sqliteCopyDirectory];
  }

  return v3;
}

- (NSString)appPlaceholderArchiveDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Caches/Backup/placeholders";
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
    v3 = [volumeMountPoint stringByAppendingPathComponent:@"Backup/Caches/placeholders"];

    if (!v3)
    {
      [MBPersona appPlaceholderArchiveDirectory];
    }
  }

  return v3;
}

- (NSString)userRestoreDirectory
{
  isPersonalPersona = [(MBPersona *)self isPersonalPersona];
  volumeMountPoint = [(MBPersona *)self volumeMountPoint];
  v5 = volumeMountPoint;
  if (isPersonalPersona)
  {
    v6 = @"backup";
  }

  else
  {
    v6 = @"Backup/backup";
  }

  v7 = [volumeMountPoint stringByAppendingPathComponent:v6];

  if (!v7)
  {
    [MBPersona userRestoreDirectory];
  }

  return v7;
}

- (NSString)userIncompleteRestoreDirectory
{
  isPersonalPersona = [(MBPersona *)self isPersonalPersona];
  volumeMountPoint = [(MBPersona *)self volumeMountPoint];
  v5 = volumeMountPoint;
  if (isPersonalPersona)
  {
    v6 = @".backup.i";
  }

  else
  {
    v6 = @"Backup/.backup.i";
  }

  v7 = [volumeMountPoint stringByAppendingPathComponent:v6];

  if (!v7)
  {
    [MBPersona userIncompleteRestoreDirectory];
  }

  return v7;
}

- (NSString)placeholderRestoreDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Backup/AppPlaceholders";
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
    v3 = [volumeMountPoint stringByAppendingPathComponent:@"Backup/AppPlaceholders"];

    if (!v3)
    {
      [MBPersona placeholderRestoreDirectory];
    }
  }

  return v3;
}

- (NSString)demotedAppsPlistPath
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist";
  }

  else
  {
    preferencesDirectory = [(MBPersona *)self preferencesDirectory];
    v3 = [preferencesDirectory stringByAppendingPathComponent:@"com.apple.MobileBackup.DemotedApps.plist"];

    if (!v3)
    {
      [MBPersona demotedAppsPlistPath];
    }
  }

  return v3;
}

- (NSString)volumeMapPlistPath
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"volume_map.plist"];

  return v3;
}

- (NSString)keyBagValidationStatePlistPath
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"keybag_validation.plist"];

  return v3;
}

- (id)_userRestorePrefetchDirectory
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Caches/Backup/prefetch";
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
    v3 = [volumeMountPoint stringByAppendingPathComponent:@"Backup/Caches/prefetch"];

    if (!v3)
    {
      [MBPersona _userRestorePrefetchDirectory];
    }
  }

  return v3;
}

- (id)restorePrefetchDirectoryForDomain:(id)domain
{
  if ([domain shouldRestoreToSharedVolume])
  {
    _userRestorePrefetchDirectory = @"/var/root/Library/Caches/Backup/prefetch";
  }

  else
  {
    _userRestorePrefetchDirectory = [(MBPersona *)self _userRestorePrefetchDirectory];
  }

  return _userRestorePrefetchDirectory;
}

- (id)restorePrefetchDirectories
{
  _userRestorePrefetchDirectory = [(MBPersona *)self _userRestorePrefetchDirectory];
  if ([(MBPersona *)self shouldRestoreToSharedVolume])
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{_userRestorePrefetchDirectory, @"/var/root/Library/Caches/Backup/prefetch", 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObject:_userRestorePrefetchDirectory];
  }
  v4 = ;

  return v4;
}

- (NSString)snapshotDatabaseDirectory
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"snapshots"];

  return v3;
}

- (NSString)restoreSnapshotsDatabaseDirectory
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"restore_snapshots"];

  return v3;
}

- (NSString)restoreOperationLogPath
{
  v2 = MEMORY[0x1E696AEC0];
  personaIdentifier = [(MBPersona *)self personaIdentifier];
  v4 = [v2 stringWithFormat:@"RestoreOperationLog-%@.log", personaIdentifier];

  v7 = MBGetLogDir(v5, v6);
  v8 = [v7 stringByAppendingPathComponent:v4];

  return v8;
}

- (NSString)l28BackupTelemetryPlistPath
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"l28BackupTelemetry.plist"];

  return v3;
}

- (NSString)systemDataContainerRestoreDirectory
{
  if (_os_feature_enabled_impl())
  {
    return @"/var/root/Library/Backup/SystemContainers/Data";
  }

  else
  {
    return @"/var/mobile/Library/Backup/SystemContainers/Data";
  }
}

- (NSString)systemSharedDataContainerRestoreDirectory
{
  if (_os_feature_enabled_impl())
  {
    return @"/var/root/Library/Backup/SystemContainers/Shared";
  }

  else
  {
    return @"/var/mobile/Library/Backup/SystemContainers/Shared";
  }
}

- (NSString)systemContainersVolumeMountPoint
{
  if (_os_feature_enabled_impl())
  {
    volumeMountPoint = @"/private/var";
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
  }

  return volumeMountPoint;
}

- (NSString)restoreKeyBagsPath
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    v3 = @"/var/mobile/Library/Backup/RestoreKeyBag.plist";
  }

  else
  {
    cacheDirectory = [(MBPersona *)self cacheDirectory];
    v3 = [cacheDirectory stringByAppendingPathComponent:@"RestoreKeyBag.plist"];

    if (!v3)
    {
      [MBPersona restoreKeyBagsPath];
    }
  }

  return v3;
}

- (NSString)skippedFileRecordsPlistPath
{
  cacheDirectory = [(MBPersona *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"com.apple.MobileBackup.SkippedFileRecords.plist"];

  return v3;
}

- (void)removeRestoreKeybags
{
  v14 = *MEMORY[0x1E69E9840];
  restoreKeyBagsPath = [(MBPersona *)self restoreKeyBagsPath];
  v3 = MBGetDefaultLog(restoreKeyBagsPath);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = restoreKeyBagsPath;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "Removing the restore keybags at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Removing the restore keybags at %{public}@", restoreKeyBagsPath);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v5 = [defaultManager removeItemAtPath:restoreKeyBagsPath error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v8 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = restoreKeyBagsPath;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_ERROR, "Failed to remove the restore keybags at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to remove the restore keybags at %{public}@: %{public}@", restoreKeyBagsPath, v6);
    }
  }
}

- (NSDictionary)restoreDepotRootsByVolume
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  restoreDepotRootsByVolume = selfCopy->_restoreDepotRootsByVolume;
  if (restoreDepotRootsByVolume)
  {
    goto LABEL_2;
  }

  if ([(MBPersona *)selfCopy isPersonalPersona])
  {
    user = [(MBPersona *)selfCopy user];
    isPrimaryUser = [user isPrimaryUser];

    if (isPrimaryUser)
    {
      v7 = selfCopy->_restoreDepotRootsByVolume;
      selfCopy->_restoreDepotRootsByVolume = &unk_1F59DC7F0;

      restoreDepotRootsByVolume = selfCopy->_restoreDepotRootsByVolume;
LABEL_2:
      v4 = restoreDepotRootsByVolume;
      goto LABEL_7;
    }
  }

  volumeMountPoint = [(MBPersona *)selfCopy volumeMountPoint];
  cacheDirectory = [(MBPersona *)selfCopy cacheDirectory];
  v10 = [cacheDirectory stringByAppendingPathComponent:@"restore_depot"];

  v14 = volumeMountPoint;
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = selfCopy->_restoreDepotRootsByVolume;
  selfCopy->_restoreDepotRootsByVolume = v11;

  v4 = selfCopy->_restoreDepotRootsByVolume;
LABEL_7:
  objc_sync_exit(selfCopy);

  return v4;
}

- (int64_t)accountType
{
  if ([(MBPersona *)self isPersonalPersona])
  {
    user = [(MBPersona *)self user];
    isPrimaryUser = [user isPrimaryUser];

    if (isPrimaryUser)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if ([(MBPersona *)self isDataSeparatedPersona])
  {
    return 2;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MBPersona accountType]"];
    [currentHandler handleFailureInFunction:v7 file:@"MBPersona.m" lineNumber:438 description:@"Unexpected call"];

    return 0;
  }
}

@end