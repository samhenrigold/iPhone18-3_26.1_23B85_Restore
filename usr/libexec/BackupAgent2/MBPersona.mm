@interface MBPersona
+ (id)_stashFileAtURL:(id)l prefetchDirectory:(id)directory error:(id *)error;
+ (id)allPersonae;
+ (id)copyPersonalPreferencesValueForKey:(id)key class:(Class)class;
+ (id)personalPersonaWithError:(id *)error;
+ (unsigned)getPersonalBooleanValueForKey:(id)key keyExists:(char *)exists;
+ (void)removeBackupSnapshotsForAllPersonae;
+ (void)removeBackupSnapshotsForPersonalPersona;
+ (void)removeTemporaryDirectoriesForAllPersonae;
+ (void)setPersonalPreferencesValue:(id)value forKey:(id)key;
- (BOOL)_fileSystemSupportsSparseFiles:(id)files;
- (BOOL)_moveRestoreDirectoryFrom:(id)from toFinalLocation:(id)location error:(id *)error;
- (BOOL)cleanupRestoreDirectoriesWithError:(id *)error;
- (BOOL)copyPlaceholderIPAsForAppInstallationExcluding:(id)excluding error:(id *)error;
- (BOOL)createRestoreDirectoriesWithError:(id *)error;
- (BOOL)finalizeRestoreDirectoriesWithError:(id *)error;
- (BOOL)shouldRestoreFilesSparse;
- (id)copyPreferencesValueForKey:(id)key class:(Class)class;
- (id)sharedSystemContainerRestoreRootWithContainerID:(id)d;
- (id)stashAsset:(id)asset forDomain:(id)domain error:(id *)error;
- (id)systemContainerRestoreRootWithContainerID:(id)d;
- (unint64_t)_removeRestorePrefetchCacheAtPath:(id)path earliestDate:(id)date;
- (unint64_t)removeRestorePrefetchCachesOlderThanDate:(id)date;
- (unsigned)getBooleanValueForKey:(id)key keyExists:(char *)exists;
- (void)_removeTemporaryDirectories;
- (void)setPreferencesValue:(id)value forKey:(id)key;
@end

@implementation MBPersona

+ (void)setPersonalPreferencesValue:(id)value forKey:(id)key
{
  keyCopy = key;
  CFPreferencesSetValue(keyCopy, value, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
  if (!CFPreferencesSynchronize(@"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost))
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v8 = @"com.apple.MobileBackup";
      v9 = 2112;
      v10 = keyCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %{public}@ domain (%@)", buf, 0x16u);
      _MBLog(@"E ", "Failed to sync preferences for %{public}@ domain (%@)", @"com.apple.MobileBackup", keyCopy);
    }
  }
}

- (void)setPreferencesValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (!keyCopy)
  {
    sub_10009E48C();
  }

  v8 = keyCopy;
  if (![(MBPersona *)self isPersonalPersona])
  {
    preferencesDirectory = [(MBPersona *)self preferencesDirectory];
    v10 = +[NSFileManager defaultManager];
    v29 = 0;
    v11 = [v10 createDirectoryAtPath:preferencesDirectory withIntermediateDirectories:1 attributes:0 error:&v29];
    v12 = v29;

    if ((v11 & 1) == 0)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v31 = preferencesDirectory;
        v32 = 2112;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create the directory at %{public}@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to create the directory at %{public}@: %@", preferencesDirectory, v12);
      }
    }

    v14 = [preferencesDirectory stringByAppendingPathComponent:@"com.apple.MobileBackup.plist"];
    v15 = objc_opt_class();
    objc_sync_enter(v15);
    v28 = v12;
    v16 = [NSData dataWithContentsOfFile:v14 options:0 error:&v28];
    v17 = v28;

    if (v16)
    {
      v27 = 0;
      v18 = [NSPropertyListSerialization propertyListWithData:v16 options:1 format:0 error:&v27];
      v19 = v27;

      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v19;
          goto LABEL_22;
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Found unexpected class: %@", buf, 0xCu);
          _MBLog(@"E ", "Found unexpected class: %@", v18);
        }
      }

      else
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to deserialize data for the file at %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to deserialize data for the file at %@: %@", v14, v19);
        }
      }

      v17 = v19;
    }

    else
    {
      if (![MBError isNSFileNotFoundError:v17])
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to read the file at %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to read the file at %@: %@", v14, v17);
        }

        v21 = 0;
        v18 = 0;
        goto LABEL_35;
      }

      v18 = objc_opt_new();
      if (v18)
      {
LABEL_22:
        if (valueCopy)
        {
          [v18 setObject:valueCopy forKeyedSubscript:v8];
        }

        else
        {
          [v18 removeObjectForKey:v8];
        }

        v26 = 0;
        v21 = [NSPropertyListSerialization dataWithPropertyList:v18 format:200 options:0 error:&v26];
        v22 = v26;

        if (v21)
        {
          v25 = v22;
          v23 = [v21 writeToFile:v14 options:268435457 error:&v25];
          v17 = v25;

          if (v23)
          {
LABEL_36:

            objc_sync_exit(v15);
            goto LABEL_37;
          }

          v24 = MBGetDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v31 = v14;
            v32 = 2112;
            v33 = v17;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to write data at %@: %@", buf, 0x16u);
            _MBLog(@"E ", "Failed to write data at %@: %@", v14, v17);
          }
        }

        else
        {
          v24 = MBGetDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to serialize dictionary: %@", buf, 0xCu);
            _MBLog(@"E ", "Failed to serialize dictionary: %@", v22);
          }

          v21 = 0;
          v17 = v22;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v18 = objc_opt_new();
    goto LABEL_22;
  }

  [objc_opt_class() setPersonalPreferencesValue:valueCopy forKey:v8];
LABEL_37:
}

- (id)copyPreferencesValueForKey:(id)key class:(Class)class
{
  keyCopy = key;
  if (!keyCopy)
  {
    sub_10009E4B8();
  }

  v6 = keyCopy;
  if (![(MBPersona *)self isPersonalPersona])
  {
    preferencesDirectory = [(MBPersona *)self preferencesDirectory];
    v9 = [preferencesDirectory stringByAppendingPathComponent:@"com.apple.MobileBackup.plist"];

    v18 = 0;
    v10 = [NSData dataWithContentsOfFile:v9 options:0 error:&v18];
    v11 = v18;
    if (v10)
    {
      v17 = 0;
      v12 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v17];
      v13 = v17;

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_19:
          v11 = v13;
LABEL_20:
          v7 = [v12 objectForKeyedSubscript:v6];

          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }

        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found unexpected class: %@", buf, 0xCu);
          _MBLog(@"E ", "Found unexpected class: %@", v12);
        }
      }

      else
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v9;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize the file at %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to deserialize the file at %@: %@", v9, v13);
        }
      }
    }

    else
    {
      if ([MBError isNSFileNotFoundError:v11])
      {
        v12 = 0;
        goto LABEL_20;
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to read the file at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to read the file at %@: %@", v9, v11);
      }

      v13 = v11;
    }

    v12 = 0;
    goto LABEL_19;
  }

  v7 = [objc_opt_class() _copyPersonalPreferencesValueForKey:v6];
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid class for %{public}@ key: %@", buf, 0x16u);
      _MBLog(@"E ", "Invalid class for %{public}@ key: %@", v6, v7);
    }

    v7 = 0;
  }

LABEL_25:

  return v7;
}

+ (id)copyPersonalPreferencesValueForKey:(id)key class:(Class)class
{
  keyCopy = key;
  v5 = [objc_opt_class() _copyPersonalPreferencesValueForKey:keyCopy];
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v9 = keyCopy;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid class for %{public}@ key: %@", buf, 0x16u);
      _MBLog(@"E ", "Invalid class for %{public}@ key: %@", keyCopy, v5);
    }

    v5 = 0;
  }

  return v5;
}

+ (unsigned)getPersonalBooleanValueForKey:(id)key keyExists:(char *)exists
{
  keyCopy = key;
  v6 = objc_opt_class();
  v7 = [v6 copyPersonalPreferencesValueForKey:keyCopy class:objc_opt_class()];

  if (v7)
  {
    if (exists)
    {
      *exists = 1;
    }

    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
    if (exists)
    {
      *exists = 0;
    }
  }

  return bOOLValue;
}

- (unsigned)getBooleanValueForKey:(id)key keyExists:(char *)exists
{
  keyCopy = key;
  v7 = [(MBPersona *)self copyPreferencesValueForKey:keyCopy class:objc_opt_class()];

  if (v7)
  {
    if (exists)
    {
      *exists = 1;
    }

    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
    if (exists)
    {
      *exists = 0;
    }
  }

  return bOOLValue;
}

+ (id)personalPersonaWithError:(id *)error
{
  v4 = [UMUserPersonaAttributes personaAttributesForPersonaType:0 withError:error];
  if (v4)
  {
    v5 = [MBPersona personaWithAttributes:v4 volumeMountPoint:@"/private/var/mobile"];
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "nil personaAttributes for %ld persona", buf, 0xCu);
      _MBLog(@"E ", "nil personaAttributes for %ld persona", 0);
    }

    if (error)
    {
      [MBError errorWithCode:1 format:@"nil personaAttributes"];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)allPersonae
{
  v2 = objc_opt_new();
  v13 = 0;
  v3 = [MBPersona personalPersonaWithError:&v13];
  v4 = v13;
  if (v3)
  {
    [v2 addObject:v3];
  }

  v5 = [UMUserPersonaAttributes personaAttributesForPersonaType:2];
  v6 = v5;
  if (v5)
  {
    personaLayoutPathURL = [v5 personaLayoutPathURL];
    path = [personaLayoutPathURL path];

    if (path)
    {
      v9 = [MBPersona personaWithAttributes:v6 volumeMountPoint:path];
      [v2 addObject:v9];
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        userPersonaUniqueString = [v6 userPersonaUniqueString];
        *buf = 134218242;
        v15 = 2;
        v16 = 2114;
        v17 = userPersonaUniqueString;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "nil volumeMountPoint for %ld persona (%{public}@)", buf, 0x16u);

        userPersonaUniqueString2 = [v6 userPersonaUniqueString];
        _MBLog(@"E ", "nil volumeMountPoint for %ld persona (%{public}@)", 2, userPersonaUniqueString2);
      }
    }
  }

  return v2;
}

+ (void)removeBackupSnapshotsForAllPersonae
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = sub_100078244();
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [MBFileSystemManager unmount:*(*(&v19 + 1) + 8 * v6) error:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = +[MBPersona allPersonae];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        volumesToBackUp = [v12 volumesToBackUp];
        [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:volumesToBackUp withPrefix:@"com.apple.mobilebackup" error:0];

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

+ (void)removeBackupSnapshotsForPersonalPersona
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = sub_100078244();
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [MBFileSystemManager unmount:*(*(&v8 + 1) + 8 * v6) error:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [NSSet setWithObjects:@"/private/var/mobile", @"/private/var", 0, v8];
  [MBFileSystemManager deleteAllSnapshotsAcrossVolumes:v7 withPrefix:@"com.apple.mobilebackup" error:0];
}

- (void)_removeTemporaryDirectories
{
  isPersonalPersona = [(MBPersona *)self isPersonalPersona];
  if (isPersonalPersona)
  {

    sub_100029350(isPersonalPersona);
  }

  else
  {
    volumeMountPoint = [(MBPersona *)self volumeMountPoint];
    if (!volumeMountPoint)
    {
      sub_10009EBEC();
    }

    v18 = volumeMountPoint;
    v5 = [volumeMountPoint stringByAppendingPathComponent:@"tmp"];
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 enumeratorAtPath:v5];

    nextObject = [v7 nextObject];
    if (nextObject)
    {
      v9 = nextObject;
      do
      {
        v10 = objc_autoreleasePoolPush();
        if ([v9 hasPrefix:@"backupd-"])
        {
          v11 = [v5 stringByAppendingPathComponent:v9];
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing temporary directory at %{public}@", buf, 0xCu);
            _MBLog(@"Df", "Removing temporary directory at %{public}@", v11);
          }

          v13 = +[NSFileManager defaultManager];
          v19 = 0;
          v14 = [v13 removeItemAtPath:v11 error:&v19];
          v15 = v19;

          if ((v14 & 1) == 0)
          {
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v21 = v11;
              v22 = 2114;
              v23 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to remove the temporary directory at %{public}@: %{public}@", buf, 0x16u);
              _MBLog(@"E ", "Failed to remove the temporary directory at %{public}@: %{public}@", v11, v15);
            }
          }
        }

        objc_autoreleasePoolPop(v10);
        nextObject2 = [v7 nextObject];

        v9 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

+ (void)removeTemporaryDirectoriesForAllPersonae
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[MBPersona allPersonae];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [v7 _removeTemporaryDirectories];
        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)systemContainerRestoreRootWithContainerID:(id)d
{
  dCopy = d;
  sub_10009436C(dCopy);
  systemDataContainerRestoreDirectory = [(MBPersona *)self systemDataContainerRestoreDirectory];
  v6 = [systemDataContainerRestoreDirectory stringByAppendingPathComponent:dCopy];

  return v6;
}

- (id)sharedSystemContainerRestoreRootWithContainerID:(id)d
{
  dCopy = d;
  sub_10009436C(dCopy);
  systemSharedDataContainerRestoreDirectory = [(MBPersona *)self systemSharedDataContainerRestoreDirectory];
  v6 = [systemSharedDataContainerRestoreDirectory stringByAppendingPathComponent:dCopy];

  return v6;
}

- (id)stashAsset:(id)asset forDomain:(id)domain error:(id *)error
{
  assetCopy = asset;
  v9 = [(MBPersona *)self restorePrefetchDirectoryForDomain:domain];
  v10 = [objc_opt_class() _stashFileAtURL:assetCopy prefetchDirectory:v9 error:error];

  if (v10)
  {
    path = [v10 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

+ (id)_stashFileAtURL:(id)l prefetchDirectory:(id)directory error:(id *)error
{
  lCopy = l;
  directoryCopy = directory;
  if (!lCopy)
  {
    sub_1000A0F24();
  }

  v9 = directoryCopy;
  if (!directoryCopy)
  {
    sub_1000A0EF8();
  }

  if (!error)
  {
    sub_1000A0ECC();
  }

  v10 = [MBFileOperation createPathInDirectory:directoryCopy fileName:0];
  v11 = [[NSURL alloc] initFileURLWithPath:v10];
  v12 = +[NSFileManager defaultManager];
  v31 = 0;
  v13 = [v12 moveItemAtURL:lCopy toURL:v11 error:&v31];
  v14 = v31;

  if (v13)
  {
    v15 = v11;
  }

  else
  {
    path = [lCopy path];
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412802;
      *&buf.st_mode = path;
      WORD2(buf.st_ino) = 2112;
      *(&buf.st_ino + 6) = v10;
      HIWORD(buf.st_gid) = 2112;
      *&buf.st_rdev = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@: %@", &buf, 0x20u);
      _MBLog(@"E ", "Failed to move %@ to %@: %@", path, v10, v14);
    }

    v18 = v14;
    *error = v14;
    memset(&buf, 0, sizeof(buf));
    v19 = lstat([path fileSystemRepresentation], &buf);
    v20 = MBGetDefaultLog();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = *__error();
        *v32 = 138412546;
        v33 = path;
        v34 = 1024;
        v35 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "lstat failed at %@: %{errno}d", v32, 0x12u);
        v29 = *__error();
        _MBLog(@"E ", "lstat failed at %@: %{errno}d", path, v29);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v32 = 138412290;
      v33 = path;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found source file at %@", v32, 0xCu);
      _MBLog(@"I ", "Found source file at %@", path, v28);
    }

    v23 = lstat([v10 fileSystemRepresentation], &buf);
    v24 = MBGetDefaultLog();
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = *__error();
        *v32 = 138412546;
        v33 = v10;
        v34 = 1024;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "lstat failed at %@: %{errno}d", v32, 0x12u);
        v30 = *__error();
        _MBLog(@"E ", "lstat failed at %@: %{errno}d", v10, v30);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v32 = 138412290;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Found destination file at %@", v32, 0xCu);
      _MBLog(@"I ", "Found destination file at %@", v10, v28);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)shouldRestoreFilesSparse
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@: persona:%@", buf, 0x16u);

    v6 = NSStringFromSelector(a2);
    _MBLog(@"Db", "%@: persona:%@", v6, self);
  }

  volumeMountPoint = [(MBPersona *)self volumeMountPoint];
  if (qword_10011E4F0 != -1)
  {
    sub_1000A0F50();
  }

  os_unfair_lock_lock(&dword_10011E4F8);
  v8 = [qword_10011E4E8 objectForKeyedSubscript:volumeMountPoint];
  if (!v8)
  {
    v19 = 0;
    v9 = [(MBPersona *)self getBooleanValueForKey:@"RestoreFilesSparse" keyExists:&v19];
    v10 = [(MBPersona *)self _fileSystemSupportsSparseFiles:volumeMountPoint];
    v11 = 0;
    if (v10)
    {
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v19 == 0;
      }

      v11 = v12;
    }

    v13 = [NSNumber numberWithInt:v11];
    [qword_10011E4E8 setObject:v13 forKeyedSubscript:volumeMountPoint];
    v8 = v13;
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if ([v8 BOOLValue])
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      *buf = 136315138;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "shouldRestoreFilesSparse=%s", buf, 0xCu);
      if ([v8 BOOLValue])
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      _MBLog(@"Df", "shouldRestoreFilesSparse=%s", v16);
    }
  }

  os_unfair_lock_unlock(&dword_10011E4F8);
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)_fileSystemSupportsSparseFiles:(id)files
{
  filesCopy = files;
  v4 = open([filesCopy fileSystemRepresentation], 0);
  if (v4 < 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *v17 = 138412546;
      *&v17[4] = filesCopy;
      *&v17[12] = 1024;
      *&v17[14] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d while checking if FS supports sparse files", v17, 0x12u);
      v9 = __error();
      _MBLog(@"E ", "Unable to open %@: %{errno}d while checking if FS supports sparse files", filesCopy, *v9);
    }
  }

  else
  {
    v5 = v4;
    v14 = 0;
    v13 = xmmword_1000B7498;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    if (!fgetattrlist(v4, &v13, v17, 0x24uLL, 0))
    {
      v11 = *&v17[4] & *&v17[20];
      close(v5);
      v10 = (v11 >> 6) & 1;
      goto LABEL_11;
    }

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = filesCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Couldn't get attr list for filesystem path %@ while checking if it can support sparse files", buf, 0xCu);
      _MBLog(@"E ", "Couldn't get attr list for filesystem path %@ while checking if it can support sparse files", filesCopy);
    }

    close(v5);
  }

  LOBYTE(v10) = 0;
LABEL_11:

  return v10;
}

- (BOOL)createRestoreDirectoriesWithError:(id *)error
{
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v30 = v7;
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: persona:%@", buf, 0x16u);

    v8 = NSStringFromSelector(a2);
    _MBLog(@"Db", "%@: persona:%@", v8, self);
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    userIncompleteRestoreDirectory = [(MBPersona *)self userIncompleteRestoreDirectory];
    *buf = 138412290;
    v30 = userIncompleteRestoreDirectory;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating user incomplete restore directory: %@", buf, 0xCu);

    userIncompleteRestoreDirectory2 = [(MBPersona *)self userIncompleteRestoreDirectory];
    _MBLog(@"I ", "Creating user incomplete restore directory: %@", userIncompleteRestoreDirectory2);
  }

  userIncompleteRestoreDirectory3 = [(MBPersona *)self userIncompleteRestoreDirectory];
  v28 = 0;
  v13 = sub_1000951B0(userIncompleteRestoreDirectory3, 2, &v28);
  v14 = v28;

  if (v13)
  {
    shouldRestoreToSharedVolume = [(MBPersona *)self shouldRestoreToSharedVolume];
    v16 = MBGetDefaultLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (shouldRestoreToSharedVolume)
    {
      if (v17)
      {
        sharedIncompleteRestoreDirectory = [(MBPersona *)self sharedIncompleteRestoreDirectory];
        *buf = 138412290;
        v30 = sharedIncompleteRestoreDirectory;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Creating shared incomplete restore directory: %@", buf, 0xCu);

        sharedIncompleteRestoreDirectory2 = [(MBPersona *)self sharedIncompleteRestoreDirectory];
        _MBLog(@"I ", "Creating shared incomplete restore directory: %@", sharedIncompleteRestoreDirectory2);
      }

      sharedIncompleteRestoreDirectory3 = [(MBPersona *)self sharedIncompleteRestoreDirectory];
      v27 = v14;
      v21 = 1;
      v22 = sub_1000951B0(sharedIncompleteRestoreDirectory3, 1, &v27);
      v23 = v27;

      if ((v22 & 1) == 0)
      {
        if (error)
        {
          [MBError errorWithCode:102 error:v23 format:@"Error creating incomplete shared restore directory"];
          *error = v21 = 0;
        }

        else
        {
          v21 = 0;
        }
      }

      v14 = v23;
    }

    else
    {
      if (v17)
      {
        sharedIncompleteRestoreDirectory4 = [(MBPersona *)self sharedIncompleteRestoreDirectory];
        *buf = 138412290;
        v30 = sharedIncompleteRestoreDirectory4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Skipping shared creating incomplete restore directory: %@", buf, 0xCu);

        sharedIncompleteRestoreDirectory5 = [(MBPersona *)self sharedIncompleteRestoreDirectory];
        _MBLog(@"I ", "Skipping shared creating incomplete restore directory: %@", sharedIncompleteRestoreDirectory5);
      }

      v21 = 1;
    }
  }

  else if (error)
  {
    [MBError errorWithCode:102 error:v14 format:@"Error creating incomplete user restore directory"];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)cleanupRestoreDirectoriesWithError:(id *)error
{
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: persona:%@", buf, 0x16u);

    v8 = NSStringFromSelector(a2);
    _MBLog(@"Db", "%@: persona:%@", v8, self);
  }

  v9 = +[NSFileManager defaultManager];
  userRestoreDirectory = [(MBPersona *)self userRestoreDirectory];
  v11 = [v9 mb_moveToTmpDirThenRemoveItemAtPath:userRestoreDirectory error:error];

  if (v11)
  {
    if ([(MBPersona *)self shouldRestoreToSharedVolume])
    {
      sharedRestoreDirectory = [(MBPersona *)self sharedRestoreDirectory];
      v13 = [v9 mb_moveToTmpDirThenRemoveItemAtPath:sharedRestoreDirectory error:error];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)removeRestorePrefetchCachesOlderThanDate:(id)date
{
  dateCopy = date;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: persona:%@", buf, 0x16u);

    v8 = NSStringFromSelector(a2);
    _MBLog(@"Db", "%@: persona:%@", v8, self);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  restorePrefetchDirectories = [(MBPersona *)self restorePrefetchDirectories];
  v10 = [restorePrefetchDirectories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(restorePrefetchDirectories);
        }

        v12 += [(MBPersona *)self _removeRestorePrefetchCacheAtPath:*(*(&v16 + 1) + 8 * i) earliestDate:dateCopy];
      }

      v11 = [restorePrefetchDirectories countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)_removeRestorePrefetchCacheAtPath:(id)path earliestDate:(id)date
{
  pathCopy = path;
  dateCopy = date;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = pathCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing the prefetch directory at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Removing the prefetch directory at %{public}@", pathCopy);
  }

  v7 = +[NSFileManager defaultManager];
  if (([v7 fileExistsAtPath:pathCopy] & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = pathCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No prefetch directory found at %{public}@", buf, 0xCu);
      _MBLog(@"Df", "No prefetch directory found at %{public}@", pathCopy);
    }

    goto LABEL_24;
  }

  v40 = pathCopy;
  v42 = v7;
  if (!dateCopy)
  {
    v48 = 0;
    v23 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:pathCopy identifiedBy:@"prefetch-dir-cleanup" error:&v48];
    v24 = v48;
    if (v23)
    {
      makeTemporaryFilePath = [v23 makeTemporaryFilePath];
      v46 = v24;
      v26 = [v42 moveItemAtPath:pathCopy toPath:makeTemporaryFilePath error:&v46];
      v8 = v46;

      if (v26)
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v50 = pathCopy;
          v51 = 2114;
          v52 = makeTemporaryFilePath;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Moved prefetch directory from %{public}@ -> %{public}@", buf, 0x16u);
          _MBLog(@"I ", "Moved prefetch directory from %{public}@ -> %{public}@", pathCopy, makeTemporaryFilePath);
        }

        [v23 dispose];
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v50 = pathCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Removed prefetch directory at %{public}@", buf, 0xCu);
          _MBLog(@"Df", "Removed prefetch directory at %{public}@", pathCopy);
        }

        v22 = 0;
        v7 = v42;
        goto LABEL_34;
      }

      v33 = MBIsInternalInstall();
      v34 = MBGetDefaultLog();
      v35 = v34;
      if (v33)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543874;
          v50 = pathCopy;
          v51 = 2114;
          v52 = makeTemporaryFilePath;
          v53 = 2112;
          v54 = v8;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "Failed to move prefetch directory from %{public}@ -> %{public}@: %@", buf, 0x20u);
          v36 = @"F ";
LABEL_51:
          _MBLog(v36, "Failed to move prefetch directory from %{public}@ -> %{public}@: %@", pathCopy, makeTemporaryFilePath, v8);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v50 = pathCopy;
        v51 = 2114;
        v52 = makeTemporaryFilePath;
        v53 = 2112;
        v54 = v8;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to move prefetch directory from %{public}@ -> %{public}@: %@", buf, 0x20u);
        v36 = @"E ";
        goto LABEL_51;
      }

      v22 = 0;
      v7 = v42;
      goto LABEL_53;
    }

    v29 = MBIsInternalInstall();
    v30 = MBGetDefaultLog();
    v31 = v30;
    if (v29)
    {
      pathCopy = v40;
      v7 = v42;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_45;
      }

      *buf = 138412290;
      v50 = v24;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Failed to create temporary directory %@", buf, 0xCu);
      v32 = @"F ";
    }

    else
    {
      pathCopy = v40;
      v7 = v42;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      *buf = 138412290;
      v50 = v24;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to create temporary directory %@", buf, 0xCu);
      v32 = @"E ";
    }

    _MBLog(v32, "Failed to create temporary directory %@", v24);
LABEL_45:

    v47 = v24;
    v37 = [v7 removeItemAtPath:pathCopy error:&v47];
    v8 = v47;

    if ((v37 & 1) == 0)
    {
      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v50 = pathCopy;
        v51 = 2112;
        v52 = v8;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove %{public}@: %@", pathCopy, v8);
      }
    }

LABEL_24:
    v22 = 0;
    goto LABEL_53;
  }

  v8 = [v7 enumeratorAtPath:pathCopy];
  v9 = objc_autoreleasePoolPush();
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v41 = 0;
    do
    {
      v12 = [pathCopy stringByAppendingPathComponent:nextObject2];
      v45 = 0;
      v13 = [v7 attributesOfItemAtPath:v12 error:&v45];
      v14 = v45;
      if (v13)
      {
        v15 = [v13 objectForKeyedSubscript:NSFileCreationDate];
        if (v15 && [dateCopy compare:v15] == -1)
        {
          v17 = v14;
        }

        else
        {
          v44 = v14;
          v16 = [v7 removeItemAtPath:v12 error:&v44];
          v17 = v44;

          if (v16)
          {
            v18 = [v13 objectForKeyedSubscript:NSFileSize];
            unsignedLongLongValue = [v18 unsignedLongLongValue];

            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v50 = v12;
              v51 = 2048;
              v52 = unsignedLongLongValue;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Removed %@: %llu bytes", buf, 0x16u);
              _MBLog(@"I ", "Removed %@: %llu bytes", v12, unsignedLongLongValue);
            }

            v41 += unsignedLongLongValue;
          }

          else
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v50 = v12;
              v51 = 2112;
              v52 = v17;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to remove %@: %@", v12, v17);
            }
          }

          pathCopy = v40;
        }

        v14 = v17;
        v7 = v42;
      }

      objc_autoreleasePoolPop(v9);
      v9 = objc_autoreleasePoolPush();
      nextObject2 = [v8 nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v41 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v22 = v41;
LABEL_34:

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v50 = pathCopy;
    v51 = 2048;
    v52 = v22;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ (%llu bytes)", buf, 0x16u);
    _MBLog(@"Df", "Removed %{public}@ (%llu bytes)", pathCopy, v22);
  }

LABEL_53:

  return v22;
}

- (BOOL)finalizeRestoreDirectoriesWithError:(id *)error
{
  if (!error)
  {
    sub_1000A0F78();
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v47 = v7;
    v48 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@: persona:%@", buf, 0x16u);

    v8 = NSStringFromSelector(a2);
    _MBLog(@"Db", "%@: persona:%@", v8, self);
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    userIncompleteRestoreDirectory = [(MBPersona *)self userIncompleteRestoreDirectory];
    userRestoreDirectory = [(MBPersona *)self userRestoreDirectory];
    *buf = 138412546;
    v47 = userIncompleteRestoreDirectory;
    v48 = 2112;
    selfCopy = userRestoreDirectory;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Moving user restore directory into place: %@ -> %@", buf, 0x16u);

    userIncompleteRestoreDirectory2 = [(MBPersona *)self userIncompleteRestoreDirectory];
    userRestoreDirectory2 = [(MBPersona *)self userRestoreDirectory];
    _MBLog(@"I ", "Moving user restore directory into place: %@ -> %@", userIncompleteRestoreDirectory2, userRestoreDirectory2);
  }

  userIncompleteRestoreDirectory3 = [(MBPersona *)self userIncompleteRestoreDirectory];
  userRestoreDirectory3 = [(MBPersona *)self userRestoreDirectory];
  v16 = [(MBPersona *)self _moveRestoreDirectoryFrom:userIncompleteRestoreDirectory3 toFinalLocation:userRestoreDirectory3 error:error];

  if (!v16)
  {
    return 0;
  }

  if ([(MBPersona *)self shouldRestoreToSharedVolume])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      sharedIncompleteRestoreDirectory = [(MBPersona *)self sharedIncompleteRestoreDirectory];
      sharedRestoreDirectory = [(MBPersona *)self sharedRestoreDirectory];
      *buf = 138412546;
      v47 = sharedIncompleteRestoreDirectory;
      v48 = 2112;
      selfCopy = sharedRestoreDirectory;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Moving shared restore directory into place: %@ -> %@", buf, 0x16u);

      sharedIncompleteRestoreDirectory2 = [(MBPersona *)self sharedIncompleteRestoreDirectory];
      sharedRestoreDirectory2 = [(MBPersona *)self sharedRestoreDirectory];
      _MBLog(@"I ", "Moving shared restore directory into place: %@ -> %@", sharedIncompleteRestoreDirectory2, sharedRestoreDirectory2);
    }

    sharedIncompleteRestoreDirectory3 = [(MBPersona *)self sharedIncompleteRestoreDirectory];
    sharedRestoreDirectory3 = [(MBPersona *)self sharedRestoreDirectory];
    v24 = [(MBPersona *)self _moveRestoreDirectoryFrom:sharedIncompleteRestoreDirectory3 toFinalLocation:sharedRestoreDirectory3 error:error];

    if (!v24)
    {
      return 0;
    }
  }

  v25 = +[MBBehaviorOptions sharedOptions];
  plistPath = [v25 plistPath];

  if (MBIsInternalInstall())
  {
    v27 = +[NSFileManager defaultManager];
    v28 = [v27 fileExistsAtPath:plistPath];

    if (v28)
    {
      userRestoreDirectory4 = [(MBPersona *)self userRestoreDirectory];
      v30 = [userRestoreDirectory4 stringByAppendingPathComponent:plistPath];

      v31 = +[NSFileManager defaultManager];
      v32 = [v31 fileExistsAtPath:v30];

      if (v32)
      {
        v33 = MBGetDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v30;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Removing existing MBBehaviorOptions plist in backup %@", buf, 0xCu);
          _MBLog(@"Df", "Removing existing MBBehaviorOptions plist in backup %@", v30);
        }

        v34 = +[NSFileManager defaultManager];
        v45 = 0;
        v35 = [v34 removeItemAtPath:v30 error:&v45];
        v36 = v45;

        if ((v35 & 1) == 0)
        {
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v36;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to remove existing MBBehaviorOptions plist: %@", buf, 0xCu);
            _MBLog(@"E ", "Failed to remove existing MBBehaviorOptions plist: %@", v36);
          }
        }
      }

      else
      {
        v36 = 0;
      }

      v39 = MBGetDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v47 = plistPath;
        v48 = 2112;
        selfCopy = v30;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Moving local MBBehaviorOptions plist from %@ -> %@", buf, 0x16u);
        _MBLog(@"Df", "Moving local MBBehaviorOptions plist from %@ -> %@", plistPath, v30);
      }

      v40 = +[NSFileManager defaultManager];
      v44 = v36;
      v41 = [v40 moveItemAtPath:plistPath toPath:v30 error:&v44];
      v42 = v44;

      if ((v41 & 1) == 0)
      {
        v43 = MBGetDefaultLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v47 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to move MBBehaviorOptions plist: %@", buf, 0xCu);
          _MBLog(@"E ", "Failed to move MBBehaviorOptions plist: %@", v42);
        }
      }
    }
  }

  return 1;
}

- (BOOL)_moveRestoreDirectoryFrom:(id)from toFinalLocation:(id)location error:(id *)error
{
  fromCopy = from;
  locationCopy = location;
  if (!error)
  {
    sub_1000A0FA4();
  }

  v9 = locationCopy;
  v10 = +[NSFileManager defaultManager];
  if ([v10 fileExistsAtPath:fromCopy isDirectory:0])
  {
    if ([v10 fileExistsAtPath:v9 isDirectory:0])
    {
      v19 = 0;
      v11 = [v10 mb_moveToTmpDirThenRemoveItemAtPath:v9 error:&v19];
      v12 = v19;
      if ((v11 & 1) == 0)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v21 = v9;
          v22 = 2114;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove existing restore directory at %{public}@: %{public}@", buf, 0x16u);
          _MBLog(@"E ", "Failed to remove existing restore directory at %{public}@: %{public}@", v9, v12);
        }

        *error = [MBError errorWithCode:102 error:v12 path:v9 format:@"Failed to remove existing restore directory"];
      }
    }

    v18 = 0;
    v14 = [v10 moveItemAtPath:fromCopy toPath:v9 error:&v18];
    v15 = v18;
    if ((v14 & 1) == 0)
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = fromCopy;
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to move restore sandbox from %{public}@ into place %{public}@: %{public}@", buf, 0x20u);
        _MBLog(@"E ", "Failed to move restore sandbox from %{public}@ into place %{public}@: %{public}@", fromCopy, v9, v15);
      }

      *error = [MBError errorWithCode:101 path:v9 format:@"Failed to move restore sandbox into place"];
    }
  }

  else
  {
    v15 = MBGetDefaultLog();
    v14 = 1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = fromCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No restore sandbox at %{public}@", buf, 0xCu);
      _MBLog(@"I ", "No restore sandbox at %{public}@", fromCopy);
    }
  }

  return v14;
}

- (BOOL)copyPlaceholderIPAsForAppInstallationExcluding:(id)excluding error:(id *)error
{
  excludingCopy = excluding;
  selfCopy = self;
  userIncompleteRestoreDirectory = [(MBPersona *)self userIncompleteRestoreDirectory];
  isPersonalPersona = [(MBPersona *)self isPersonalPersona];
  appPlaceholderArchiveDirectory = [(MBPersona *)self appPlaceholderArchiveDirectory];
  v7 = appPlaceholderArchiveDirectory;
  if ((isPersonalPersona & 1) == 0 && [appPlaceholderArchiveDirectory hasPrefix:@"/private"])
  {
    v8 = [v7 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v7 = v8;
  }

  v48 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:v7];

  placeholderRestoreDirectory = [(MBPersona *)selfCopy placeholderRestoreDirectory];
  v47 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:placeholderRestoreDirectory];

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v48;
    *&buf[12] = 2112;
    *&buf[14] = v47;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=restore-placeholder= Moving placeholders from %@ to %@", buf, 0x16u);
    _MBLog(@"Df", "=restore-placeholder= Moving placeholders from %@ to %@", v48, v47);
  }

  v51 = +[NSFileManager defaultManager];
  if ([v51 fileExistsAtPath:v48])
  {
    if ([v51 fileExistsAtPath:v47])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v67 = sub_100097450;
      v68 = sub_100097460;
      v69 = 0;
      v42 = [NSURL fileURLWithPath:v48];
      v65 = NSURLIsRegularFileKey;
      v11 = [NSArray arrayWithObjects:&v65 count:1];
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100097468;
      v59[3] = &unk_1000FE830;
      v59[4] = buf;
      v12 = [v51 enumeratorAtURL:v42 includingPropertiesForKeys:v11 options:1 errorHandler:v59];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v13)
      {
        v50 = *v56;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v56 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v55 + 1) + 8 * i);
            v53 = 0;
            v54 = 0;
            v16 = *&buf[8];
            v17 = [v15 getResourceValue:&v54 forKey:NSURLIsRegularFileKey error:&v53];
            v18 = v54;
            objc_storeStrong((v16 + 40), v53);
            if ((v17 & 1) == 0)
            {
              v30 = MBGetDefaultLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = *(*&buf[8] + 40);
                *v60 = 138412546;
                v61 = v15;
                v62 = 2112;
                v63 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=restore-placeholder= Failed to get NSURLIsDirectoryKey for %@: %@", v60, 0x16u);
                _MBLog(@"E ", "=restore-placeholder= Failed to get NSURLIsDirectoryKey for %@: %@", v15, *(*&buf[8] + 40));
              }

              goto LABEL_41;
            }

            path = [v15 path];
            if ([v18 BOOLValue])
            {
              lastPathComponent = [path lastPathComponent];
              pathExtension = [lastPathComponent pathExtension];
              if ([pathExtension isEqualToString:@"ipa"])
              {
                stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
                if ([excludingCopy containsObject:stringByDeletingPathExtension])
                {
                  v23 = MBGetDefaultLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *v60 = 138412546;
                    v61 = path;
                    v62 = 2112;
                    v63 = stringByDeletingPathExtension;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=restore-placeholder= Not moving restored placeholder .ipa at %@ corresponding to excluded bundleID %@", v60, 0x16u);
                    _MBLog(@"Df", "=restore-placeholder= Not moving restored placeholder .ipa at %@ corresponding to excluded bundleID %@", path, stringByDeletingPathExtension);
                  }
                }

                else
                {
                  v23 = [v47 stringByAppendingPathComponent:stringByDeletingPathExtension];
                  v24 = MBMobileFileAttributes();
                  v25 = [v51 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:v24 error:error];

                  if ((v25 & 1) == 0)
                  {

                    goto LABEL_60;
                  }

                  v26 = [v23 stringByAppendingPathComponent:lastPathComponent];
                  if (([v51 copyItemAtPath:path toPath:v26 error:error] & 1) == 0)
                  {

                    goto LABEL_60;
                  }

                  v27 = MBGetDefaultLog();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    *v60 = 138412546;
                    v61 = path;
                    v62 = 2112;
                    v63 = v26;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=restore-placeholder= Moved restored placeholder .ipa from %@ to %@", v60, 0x16u);
                    _MBLog(@"Df", "=restore-placeholder= Moved restored placeholder .ipa from %@ to %@", path, v26);
                  }
                }
              }

              else
              {
                stringByDeletingPathExtension = MBGetDefaultLog();
                if (os_log_type_enabled(stringByDeletingPathExtension, OS_LOG_TYPE_FAULT))
                {
                  *v60 = 138412290;
                  v61 = path;
                  _os_log_impl(&_mh_execute_header, stringByDeletingPathExtension, OS_LOG_TYPE_FAULT, "=restore-placeholder= Not moving non-ipa file at %@ for RestorePostProcess", v60, 0xCu);
                  _MBLog(@"F ", "=restore-placeholder= Not moving non-ipa file at %@ for RestorePostProcess", path);
                }
              }
            }

            else
            {
              lastPathComponent = MBGetDefaultLog();
              if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 138412290;
                v61 = path;
                _os_log_impl(&_mh_execute_header, lastPathComponent, OS_LOG_TYPE_DEFAULT, "=restore-placeholder= Not moving non-regular file at %@", v60, 0xCu);
                _MBLog(@"Df", "=restore-placeholder= Not moving non-regular file at %@", path);
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_41:

      v32 = *(*&buf[8] + 40);
      if (v32)
      {
        if (error)
        {
          v29 = 0;
          *error = v32;
LABEL_61:

          _Block_object_dispose(buf, 8);
          goto LABEL_62;
        }

LABEL_60:
        v29 = 0;
        goto LABEL_61;
      }

      if ([(MBPersona *)selfCopy isEnterprisePersona])
      {
        v33 = v47;
        placeholderRestoreDirectory2 = [(MBPersona *)selfCopy placeholderRestoreDirectory];
        if (([v51 mb_moveToTmpDirThenRemoveItemAtPath:placeholderRestoreDirectory2 error:error] & 1) == 0)
        {

          goto LABEL_60;
        }

        v35 = MBGetDefaultLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 138412546;
          v61 = v33;
          v62 = 2112;
          v63 = placeholderRestoreDirectory2;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=restore-placeholders= Moving EDS placeholders from %@ to %@", v60, 0x16u);
          _MBLog(@"Df", "=restore-placeholders= Moving EDS placeholders from %@ to %@", v33, placeholderRestoreDirectory2);
        }

        v52 = 0;
        v36 = [v51 moveItemAtPath:v33 toPath:placeholderRestoreDirectory2 error:&v52];
        v37 = v52;
        v38 = v37;
        if ((v36 & 1) == 0)
        {
          if (error)
          {
            v39 = v37;
            *error = v38;
          }

          v40 = MBGetDefaultLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v60 = 138412546;
            v61 = v33;
            v62 = 2112;
            v63 = placeholderRestoreDirectory2;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "=restore-placeholders= Failed to move EDS placeholders from %@ to %@", v60, 0x16u);
            _MBLog(@"Df", "=restore-placeholders= Failed to move EDS placeholders from %@ to %@", v33, placeholderRestoreDirectory2);
          }

          goto LABEL_60;
        }
      }

      v29 = 1;
      goto LABEL_61;
    }

    if (error)
    {
      [MBError errorWithCode:4 path:v47 format:@"Restore placeholders not found"];
      *error = v29 = 0;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=restore-placeholder= No placeholder dir found at: %@", buf, 0xCu);
      _MBLog(@"Df", "=restore-placeholder= No placeholder dir found at: %@", v48);
    }

    v29 = 1;
  }

LABEL_62:

  return v29;
}

@end