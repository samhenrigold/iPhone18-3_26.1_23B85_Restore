@interface MSDHOperations
+ (id)sharedInstance;
- (BOOL)cloneFile:(id)file to:(id)to expectingHash:(id)hash correctOwnership:(BOOL)ownership;
- (BOOL)collectDemoLogsToFolder:(id)folder ofType:(unint64_t)type;
- (BOOL)createDeviceManifestForComponent:(id)component ofType:(id)type withRootPath:(id)path userHomePath:(id)homePath andSavePath:(id)savePath;
- (BOOL)deleteNvram:(id)nvram;
- (BOOL)destroyWorkContainerInUserHome;
- (BOOL)disableLaunchdServicesForWatch;
- (BOOL)fileExistsAtPath:(id)path;
- (BOOL)generateLogsForPredicate:(id)predicate toFile:(id)file;
- (BOOL)generateSysdiagnose:(id)sysdiagnose;
- (BOOL)manageDataVolume:(id)volume;
- (BOOL)manageDemoVolume:(id)volume;
- (BOOL)manageUserVolume:(id)volume forUser:(id)user;
- (BOOL)migratePreferencesFile;
- (BOOL)moveStagingToFinal:(id)final finalPath:(id)path;
- (BOOL)moveUserHomeStagingToFinal:(id)final finalPath:(id)path;
- (BOOL)prepareDirectory:(id)directory writableByNonRoot:(BOOL)root;
- (BOOL)prepareWorkContainerInUserHome:(BOOL)home;
- (BOOL)preserveBluetoothFileToShelter:(id)shelter;
- (BOOL)preserveSecondPartyAppDataToShelter:(id)shelter withReturnErrorMsg:(id *)msg;
- (BOOL)reboot;
- (BOOL)removeDirectory:(id)directory;
- (BOOL)restartBluetooth;
- (BOOL)restoreAppDataAttributesUnder:(id)under containerType:(id)type identifier:(id)identifier manifestUID:(id)d deviceUID:(id)iD;
- (BOOL)restoreBackupAttributesUnder:(id)under range:(_NSRange)range manifestUID:(id)d deviceUID:(id)iD;
- (BOOL)runPreflightChecksOnSecondPartyAppData:(id)data withReturnErrorMsg:(id *)msg;
- (BOOL)setComputerNameAndHostname:(id)hostname encoding:(unsigned int)encoding;
- (BOOL)setPreferencesForKey:(id)key withValue:(id)value forApplication:(id)application andUser:(id)user;
- (BOOL)switchToBackupFolder;
- (BOOL)touchFile:(id)file fileAttributes:(id)attributes;
- (BOOL)updateSignedManifest;
- (BOOL)writeDictionary:(id)dictionary toFile:(id)file;
- (BOOL)writeNVRam:(id)ram withValue:(id)value;
- (MSDHOperations)init;
- (MSDSignedManifest)signedManifest;
- (id)getPathInUserHomeDirectory:(id)directory;
- (id)readPlistFile:(id)file;
- (void)dealloc;
@end

@implementation MSDHOperations

+ (id)sharedInstance
{
  if (qword_10005BF48 != -1)
  {
    sub_10002F0B8();
  }

  v3 = qword_10005BF40;

  return v3;
}

- (MSDHOperations)init
{
  v6.receiver = self;
  v6.super_class = MSDHOperations;
  v2 = [(MSDHOperations *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(MSDHOperations *)self setSignedManifest:0];
  v3.receiver = self;
  v3.super_class = MSDHOperations;
  [(MSDHOperations *)&v3 dealloc];
}

- (MSDSignedManifest)signedManifest
{
  signedManifest = self->_signedManifest;
  if (!signedManifest)
  {
    [(MSDHOperations *)self updateSignedManifest];
    signedManifest = self->_signedManifest;
  }

  return signedManifest;
}

- (BOOL)updateSignedManifest
{
  v3 = os_transaction_create();
  [(MSDHOperations *)self setTransaction:v3];

  v5 = sub_100021268(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315138;
    *&v11[4] = "[MSDHOperations updateSignedManifest]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - Loading signed manifest.", v11, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/Manifest.signed.plist"];

  if ((v7 & 1) == 0)
  {
    sub_10002F0CC(v11);
LABEL_9:

    return 0;
  }

  v8 = [MSDSignedManifestFactory createSignedManifestFromManifestFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/Manifest.signed.plist"];
  signedManifest = self->_signedManifest;
  self->_signedManifest = v8;

  if (!self->_signedManifest)
  {
    sub_10002F174(v11);
    goto LABEL_9;
  }

  return 1;
}

- (BOOL)prepareDirectory:(id)directory writableByNonRoot:(BOOL)root
{
  rootCopy = root;
  directoryCopy = directory;
  v6 = +[NSFileManager defaultManager];
  if ([v6 fileExistsAtPath:directoryCopy])
  {
    v7 = 0;
    if (rootCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v22 = 0;
  v16 = [v6 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v22];
  v17 = v22;
  v9 = v17;
  if ((v16 & 1) == 0)
  {
    v15 = sub_100021268(v17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002F21C();
    }

    goto LABEL_17;
  }

  v7 = v17;
  if (!rootCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  v21 = v7;
  v8 = [v6 attributesOfItemAtPath:directoryCopy error:&v21];
  v9 = v21;

  if (!v8)
  {
    v15 = sub_100021268(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002F36C();
    }

LABEL_17:
    v12 = 0;
LABEL_18:

    v18 = 0;
    v7 = v9;
    goto LABEL_12;
  }

  v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v8 filePosixPermissions] | 0x3Fu);
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:v11, NSFilePosixPermissions, 0];

  v20 = v9;
  v13 = [v6 setAttributes:v12 ofItemAtPath:directoryCopy error:&v20];
  v7 = v20;

  if ((v13 & 1) == 0)
  {
    v15 = sub_100021268(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002F2C4();
    }

    v9 = v7;
    goto LABEL_18;
  }

LABEL_11:
  v18 = 1;
LABEL_12:

  return v18;
}

- (BOOL)removeDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:directoryCopy])
  {
    v5 = [v4 removeItemAtPath:directoryCopy error:0];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)createDeviceManifestForComponent:(id)component ofType:(id)type withRootPath:(id)path userHomePath:(id)homePath andSavePath:(id)savePath
{
  componentCopy = component;
  typeCopy = type;
  pathCopy = path;
  homePathCopy = homePath;
  savePathCopy = savePath;
  signedManifest = [(MSDHOperations *)self signedManifest];

  if (!signedManifest)
  {
    v29 = sub_100021268(v18);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10002F524();
    }

    goto LABEL_11;
  }

  signedManifest2 = [(MSDHOperations *)self signedManifest];
  v20 = [signedManifest2 getManifestDataFromSection:typeCopy forIdentifier:componentCopy];

  if (!v20)
  {
    v29 = sub_100021268(v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10002F494();
    }

LABEL_11:
    v20 = 0;
    v22 = 0;
    v23 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v22 = [[MSDManifest alloc] initWithDictionary:v20 andUserHomePath:homePathCopy];
  [(MSDManifest *)v22 setRootPath:pathCopy];
  v23 = objc_alloc_init(MSDManifest);
  [(MSDManifest *)v23 setRootPath:pathCopy];
  v24 = [(MSDManifest *)v23 addFilesUsingSourceManifest:v22];
  if ((v24 & 1) == 0)
  {
    v29 = sub_100021268(v24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10002F414();
    }

    goto LABEL_14;
  }

  dict = [(MSDManifest *)v23 dict];
  v26 = [(MSDHOperations *)self writeDictionary:dict toFile:savePathCopy];

  if ((v26 & 1) == 0)
  {
LABEL_15:
    v27 = 0;
    goto LABEL_6;
  }

  v27 = 1;
LABEL_6:

  return v27;
}

- (BOOL)writeDictionary:(id)dictionary toFile:(id)file
{
  dictionaryCopy = dictionary;
  v6 = [NSOutputStream outputStreamToFileAtPath:file append:0];
  [v6 open];
  v10 = 0;
  v7 = [NSPropertyListSerialization writePropertyList:dictionaryCopy toStream:v6 format:200 options:0 error:&v10];

  v8 = v10;
  [v6 close];

  if (v7 <= 0)
  {
    sub_10002F5A4(v8);
  }

  return v7 > 0;
}

- (BOOL)fileExistsAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:pathCopy];

  return v5;
}

- (id)readPlistFile:(id)file
{
  fileCopy = file;
  v4 = [NSURL fileURLWithPath:fileCopy];
  v8 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4 error:&v8];
  v6 = v8;

  if (!v5)
  {
    sub_10002F64C(fileCopy, v6);
  }

  return v5;
}

- (BOOL)touchFile:(id)file fileAttributes:(id)attributes
{
  fileCopy = file;
  attributesCopy = attributes;
  v7 = +[NSFileManager defaultManager];
  v8 = v7;
  if (!fileCopy)
  {
    v12 = sub_100021268(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10002F770();
    }

    goto LABEL_9;
  }

  v9 = [v7 createFileAtPath:fileCopy contents:0 attributes:attributesCopy];
  if ((v9 & 1) == 0)
  {
    v12 = sub_100021268(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10002F700();
    }

LABEL_9:

    v10 = 0;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_4:

  return v10;
}

- (BOOL)cloneFile:(id)file to:(id)to expectingHash:(id)hash correctOwnership:(BOOL)ownership
{
  ownershipCopy = ownership;
  hashCopy = hash;
  toCopy = to;
  fileCopy = file;
  v12 = +[NSFileManager defaultManager];
  LOBYTE(ownershipCopy) = [v12 cloneFile:fileCopy to:toCopy expectingHash:hashCopy correctOwnership:ownershipCopy];

  return ownershipCopy;
}

- (BOOL)deleteNvram:(id)nvram
{
  nvramCopy = nvram;
  mainPort = 0;
  v4 = IOMasterPort(bootstrap_port, &mainPort);
  if (v4)
  {
    sub_10002F7AC(v4);
LABEL_9:
    v8 = 0;
    goto LABEL_6;
  }

  v5 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!v5)
  {
    sub_10002F864(v5);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = IORegistryEntrySetCFProperty(v5, @"IONVRAM-DELETE-PROPERTY", nvramCopy);
  v8 = v7 == 0;
  if (v7)
  {
    sub_10002F808(v7);
  }

  IOObjectRelease(v6);
LABEL_6:

  return v8;
}

- (BOOL)writeNVRam:(id)ram withValue:(id)value
{
  ramCopy = ram;
  valueCopy = value;
  mainPort = 0;
  v7 = 0;
  if ([(__CFString *)ramCopy isEqualToString:@"ownership-warning"])
  {
    v8 = IOMasterPort(bootstrap_port, &mainPort);
    if (v8)
    {
      sub_10002F7AC(v8);
    }

    else
    {
      v9 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
      if (v9)
      {
        v10 = v9;
        v11 = IORegistryEntrySetCFProperty(v9, ramCopy, [valueCopy dataUsingEncoding:4]);
        if (v11)
        {
          v14 = sub_100021268(v11);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10002F8C0();
          }
        }

        else
        {
          v12 = IORegistryEntrySetCFProperty(v10, @"IONVRAM-SYNCNOW-PROPERTY", ramCopy);
          if (!v12)
          {
            v7 = 1;
LABEL_7:
            IOObjectRelease(v10);
            goto LABEL_8;
          }

          v14 = sub_100021268(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10002F8FC();
          }
        }

        v7 = 0;
        goto LABEL_7;
      }

      sub_10002F864(v9);
    }

    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (BOOL)manageDataVolume:(id)volume
{
  volumeCopy = volume;
  v4 = +[MSDHVolumeManager sharedInstance];
  if ([volumeCopy isEqualToString:@"CreateSnapshot"])
  {
    goto LABEL_2;
  }

  if ([volumeCopy isEqualToString:@"DeleteSnapshot"])
  {
    v5 = @"DeleteSnapshot";
    goto LABEL_5;
  }

  if ([volumeCopy isEqualToString:@"RevertSnapshot"])
  {
    if ([v4 manageSnapshot:@"RevertSnapshot" forVolumeAt:@"/private/var"])
    {
      v8 = objc_alloc_init(MSDHSnapshottedDataSaver);
      [(MSDHSnapshottedDataSaver *)v8 rescueDataToShelterFromSnapshottedVolumes];

      v6 = 1;
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (![volumeCopy isEqualToString:@"CommitSnapshot"])
  {
    if ([volumeCopy isEqualToString:@"MountSnapshot"])
    {
      v9 = +[NSFileManager defaultManager];
      v18 = 0;
      v10 = [v9 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" withIntermediateDirectories:1 attributes:0 error:&v18];
      v11 = v18;
      v12 = v11;
      if (v10)
      {
        v6 = [v4 mountSnapshotAt:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" forVolumeAt:@"/private/var"];
      }

      else
      {
        sub_10002F9F0(v11);
        v6 = 0;
      }
    }

    else
    {
      v13 = [volumeCopy isEqualToString:@"UnmountSnapshot"];
      if (!v13)
      {
        v16 = sub_100021268(v13);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = volumeCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unknown volume operation: %{public}@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      v9 = +[NSFileManager defaultManager];
      v6 = [v4 unmountSnapshotAt:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var"];
      v17 = 0;
      v14 = [v9 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.snapshot" error:&v17];
      v15 = v17;
      v12 = v15;
      if ((v14 & 1) == 0)
      {
        sub_10002F938(v15);
      }
    }

    goto LABEL_6;
  }

  if (![v4 manageSnapshot:@"DeleteSnapshot" forVolumeAt:@"/private/var"])
  {
LABEL_23:
    v6 = 0;
    goto LABEL_6;
  }

LABEL_2:
  v5 = @"CreateSnapshot";
LABEL_5:
  v6 = [v4 manageSnapshot:v5 forVolumeAt:@"/private/var"];
LABEL_6:

  return v6;
}

- (BOOL)manageDemoVolume:(id)volume
{
  volumeCopy = volume;
  v4 = +[MSDHVolumeManager sharedInstance];
  if ([volumeCopy isEqualToString:@"Setup"])
  {
    setupDemoVolume = [v4 setupDemoVolume];
LABEL_5:
    v7 = setupDemoVolume;
    goto LABEL_9;
  }

  v6 = [volumeCopy isEqualToString:@"Delete"];
  if (v6)
  {
    setupDemoVolume = [v4 deleteDemoVolume];
    goto LABEL_5;
  }

  v8 = sub_100021268(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown volume operation: %{public}@", &v10, 0xCu);
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)manageUserVolume:(id)volume forUser:(id)user
{
  volumeCopy = volume;
  userCopy = user;
  v7 = +[MSDHVolumeManager sharedInstance];
  v8 = v7;
  if (!userCopy)
  {
    userHomePath = sub_100021268(v7);
    if (os_log_type_enabled(userHomePath, OS_LOG_TYPE_ERROR))
    {
      sub_10002FBB0();
    }

    goto LABEL_23;
  }

  if (([(__CFString *)volumeCopy isEqualToString:@"CreateSnapshot"]& 1) == 0 && ([(__CFString *)volumeCopy isEqualToString:@"DeleteSnapshot"]& 1) == 0 && ![(__CFString *)volumeCopy isEqualToString:@"RevertSnapshot"])
  {
    if ([(__CFString *)volumeCopy isEqualToString:@"CommitSnapshot"])
    {
      userHomePath = [v8 userHomePath];
      if (userHomePath)
      {
        if ([v8 manageSnapshot:@"DeleteSnapshot" forVolumeAt:userHomePath])
        {
          v11 = @"CreateSnapshot";
          v10 = v8;
          goto LABEL_7;
        }

LABEL_23:
        v12 = 0;
        goto LABEL_8;
      }

LABEL_26:
      sub_10002FB18(userCopy);
      goto LABEL_23;
    }

    if ([(__CFString *)volumeCopy isEqualToString:@"MountSnapshot"])
    {
      userHomePath = [v8 userHomePath];
      if (userHomePath)
      {
        v14 = [@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" stringByAppendingPathComponent:userCopy];
        v15 = [v8 mountSnapshotAt:v14 forVolumeAt:userHomePath];
LABEL_19:
        v12 = v15;
LABEL_20:

        goto LABEL_8;
      }

      v14 = sub_100021268(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        sub_10002FAA8();
      }
    }

    else
    {
      v16 = [(__CFString *)volumeCopy isEqualToString:@"UnmountSnapshot"];
      if (!v16)
      {
        userHomePath = sub_100021268(v16);
        if (os_log_type_enabled(userHomePath, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138543362;
          v18 = volumeCopy;
          _os_log_impl(&_mh_execute_header, userHomePath, OS_LOG_TYPE_DEFAULT, "Unknown volume operation: %{public}@", &v17, 0xCu);
        }

        goto LABEL_23;
      }

      userHomePath = [v8 userHomePath];
      if (userHomePath)
      {
        v14 = [@"/private/var/mnt/com.apple.mobilestoredemo.snapshot/private/var" stringByAppendingPathComponent:userCopy];
        v15 = [v8 unmountSnapshotAt:v14];
        goto LABEL_19;
      }

      v14 = sub_100021268(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
    goto LABEL_20;
  }

  userHomePath = [v8 userHomePath];
  if (!userHomePath)
  {
    goto LABEL_26;
  }

  v10 = v8;
  v11 = volumeCopy;
LABEL_7:
  v12 = [v10 manageSnapshot:v11 forVolumeAt:userHomePath];
LABEL_8:

  return v12;
}

- (BOOL)prepareWorkContainerInUserHome:(BOOL)home
{
  homeCopy = home;
  if (home)
  {
    userHomePath = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata";
  }

  else
  {
    v6 = +[MSDHVolumeManager sharedInstance];
    userHomePath = [v6 userHomePath];
  }

  v7 = [(__CFString *)userHomePath stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v40 = [v7 stringByAppendingPathComponent:@"/MSD_staging"];
  v39 = [v7 stringByAppendingPathComponent:@"/MSD_secondary_staging"];
  v38 = [v7 stringByAppendingPathComponent:@"/MSD_stashed_staging"];
  v37 = [v7 stringByAppendingPathComponent:@"/.backup"];
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v41 = +[NSFileManager defaultManager];
  v61[0] = NSFileOwnerAccountName;
  v61[1] = NSFileGroupOwnerAccountName;
  v62[0] = @"mobile";
  v62[1] = @"mobile";
  v61[2] = NSFilePosixPermissions;
  v10 = [NSNumber numberWithShort:448];
  v62[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];

  v13 = sub_100021268(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[MSDHOperations prepareWorkContainerInUserHome:]";
    v59 = 2114;
    v60 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: %{public}@", buf, 0x16u);
  }

  v36 = v7;
  if (homeCopy)
  {
    v56[0] = v7;
    v14 = v39;
    v56[1] = v40;
    v56[2] = v39;
    v15 = v38;
    v56[3] = v38;
    v16 = [NSArray arrayWithObjects:v56 count:4];
    [v8 addObjectsFromArray:v16];

    v55 = v40;
    v17 = &v55;
  }

  else
  {
    v54[0] = v7;
    v14 = v39;
    v54[1] = v40;
    v54[2] = v39;
    v15 = v37;
    v54[3] = v37;
    v18 = [NSArray arrayWithObjects:v54 count:4];
    [v8 addObjectsFromArray:v18];

    v53 = v40;
    v17 = &v53;
  }

  v17[1] = v14;
  v17[2] = v15;
  v19 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  [v9 addObjectsFromArray:v19];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(MSDHOperations *)self removeDirectory:*(*(&v47 + 1) + 8 * i)];
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v22);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = v8;
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v35 = userHomePath;
    v28 = 0;
    v29 = *v44;
    while (2)
    {
      v30 = 0;
      v31 = v28;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v43 + 1) + 8 * v30);
        v42 = v31;
        v33 = [v41 createDirectoryAtPath:v32 withIntermediateDirectories:1 attributes:v11 error:{&v42, v35, v36}];
        v28 = v42;

        if ((v33 & 1) == 0)
        {
          sub_10002FBEC(v32, v28);
          goto LABEL_27;
        }

        v30 = v30 + 1;
        v31 = v28;
      }

      while (v27 != v30);
      v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

LABEL_27:

    userHomePath = v35;
    v14 = v39;
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

- (BOOL)destroyWorkContainerInUserHome
{
  v3 = +[MSDHVolumeManager sharedInstance];
  userHomePath = [v3 userHomePath];

  v5 = [userHomePath stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v7 = [(MSDHOperations *)self removeDirectory:v5];
  if ((v7 & 1) == 0)
  {
    v11 = sub_100021268(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [(MSDHOperations *)self removeDirectory:v6];
  if ((v8 & 1) == 0)
  {
    v11 = sub_100021268(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_10002FCA0();
    }

LABEL_9:

    v9 = 0;
    goto LABEL_4;
  }

  v9 = 1;
LABEL_4:

  return v9;
}

- (BOOL)moveUserHomeStagingToFinal:(id)final finalPath:(id)path
{
  pathCopy = path;
  finalCopy = final;
  v8 = +[NSFileManager defaultManager];
  v9 = +[MSDHVolumeManager sharedInstance];
  userHomePath = [v9 userHomePath];

  v11 = [finalCopy stringByAppendingPathComponent:userHomePath];

  v38 = 0;
  v12 = [v8 attributesOfItemAtPath:v11 error:&v38];
  v13 = v38;
  v14 = v13;
  if (v12)
  {
    fileType = [v12 fileType];
    v16 = [fileType isEqualToString:NSFileTypeSymbolicLink];

    if (v16)
    {
      v18 = [(MSDHOperations *)self getPathInUserHomeDirectory:pathCopy];
      v37 = v14;
      v19 = [v8 destinationOfSymbolicLinkAtPath:v11 error:&v37];
      v20 = v37;

      v22 = sub_100021268(v21);
      v23 = v22;
      if (v19)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = v11;
          v41 = 2114;
          v42 = v19;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found valid wormhole in staging from %{public}@ to %{public}@", buf, 0x16u);
        }

        v24 = [(MSDHOperations *)self moveStagingToFinal:v19 finalPath:v18];
        if (!v24)
        {
          goto LABEL_28;
        }

        v25 = sub_100021268(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = v11;
          v41 = 2114;
          v42 = v18;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating new wormhole in staging from %{public}@ to %{public}@", buf, 0x16u);
        }

        v36 = v20;
        v26 = [v8 removeItemAtPath:v11 error:&v36];
        v27 = v36;

        if (v26)
        {
          v35 = v27;
          v29 = [v8 createSymbolicLinkAtPath:v11 withDestinationPath:v18 error:&v35];
          v20 = v35;

          if (v29)
          {

            v31 = 1;
LABEL_12:
            v14 = v20;
            goto LABEL_16;
          }

          v23 = sub_100021268(v30);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v20 localizedDescription];
            *buf = 138543874;
            v40 = v11;
            v41 = 2114;
            v42 = v18;
            v43 = 2114;
            v44 = localizedDescription;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Cannot create symlink from %{public}@ to %{public}@ - %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v23 = sub_100021268(v28);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10002FD10();
          }

          v20 = v27;
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10002FDA4();
      }

LABEL_28:
      v31 = 0;
      goto LABEL_12;
    }

    v18 = sub_100021268(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      fileType2 = [v12 fileType];
      *buf = 138543618;
      v40 = v11;
      v41 = 2114;
      v42 = fileType2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Wormhole in staging %{public}@ has unexpected file type - %{public}@", buf, 0x16u);
    }

    v31 = 1;
  }

  else
  {
    v18 = sub_100021268(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE38();
    }

    v31 = 0;
  }

LABEL_16:

  return v31;
}

- (BOOL)disableLaunchdServicesForWatch
{
  v2 = [NSArray arrayWithObjects:@"com.apple.atc", @"com.apple.eventkitsyncd", @"com.apple.imautomatichistorydeletionagent", 0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        [v7 UTF8String];
        service_enabled = launch_get_service_enabled();
        if (service_enabled)
        {
          v9 = service_enabled;
          v10 = sub_100021268(service_enabled);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v17 = v7;
            v18 = 1024;
            v19 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get status for launchd service '%{public}@' with error - %d", buf, 0x12u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v4);
  }

  return 1;
}

- (BOOL)moveStagingToFinal:(id)final finalPath:(id)path
{
  finalCopy = final;
  pathCopy = path;
  v7 = finalCopy;
  v41 = pathCopy;
  v50 = 0;
  v8 = +[NSFileManager defaultManager];
  v9 = sub_100021268(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v53 = "[MSDHOperations moveStagingToFinal:finalPath:]";
    v54 = 2114;
    v55 = finalCopy;
    v56 = 2114;
    v57 = v41;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - stagingPath:  %{public}@ - finalPath:  %{public}@", buf, 0x20u);
  }

  v10 = [v8 fileExistsAtPath:finalCopy isDirectory:&v50];
  if (!v10 || (v50 & 1) == 0)
  {
    obj = sub_100021268(v10);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_10002FECC();
    }

    v29 = 0;
    goto LABEL_36;
  }

  v11 = [v8 fileExistsAtPath:v41];
  v39 = finalCopy;
  if (v11)
  {
    [v8 enumeratorAtPath:finalCopy];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v12 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v40 = 0;
      v14 = *v47;
      v38 = v8;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [v7 stringByAppendingPathComponent:v16];
          if ([v8 fileExistsAtPath:v18])
          {
            v19 = [v41 stringByAppendingPathComponent:v16];
            stringByDeletingLastPathComponent = [v19 stringByDeletingLastPathComponent];
            if (([v8 fileExistsAtPath:v19] & 1) == 0)
            {
              v21 = [v8 fileExistsAtPath:stringByDeletingLastPathComponent];
              if (v21)
              {
                v22 = sub_100021268(v21);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543618;
                  v53 = v18;
                  v54 = 2114;
                  v55 = v19;
                  _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Moving %{public}@ to %{public}@", buf, 0x16u);
                }

                v45 = v40;
                v23 = [v8 moveItemAtPath:v18 toPath:v19 error:&v45];
                v24 = v45;

                if ((v23 & 1) == 0)
                {
                  v34 = sub_100021268(v25);
                  v29 = v24;
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    localizedDescription = [v24 localizedDescription];
                    *buf = 138543874;
                    v53 = v18;
                    v54 = 2114;
                    v55 = v19;
                    v56 = 2114;
                    v57 = localizedDescription;
                    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Cannot move %{public}@ to %{public}@ - %{public}@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v17);
                  v35 = obj;
                  v8 = v38;
                  v7 = v39;
                  goto LABEL_35;
                }

                v40 = v24;
                v8 = v38;
                v7 = v39;
              }
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v40 = 0;
    }

    v44 = v40;
    v31 = [v8 removeItemAtPath:v7 error:&v44];
    v29 = v44;

    if (v31)
    {
      v30 = 1;
LABEL_29:
      v7 = v39;
LABEL_30:

      goto LABEL_31;
    }

    v35 = sub_100021268(v32);
    v7 = v39;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10002FF3C();
    }

LABEL_35:

    goto LABEL_36;
  }

  v26 = sub_100021268(v11);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v53 = finalCopy;
    v54 = 2114;
    v55 = v41;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ to %{public}@", buf, 0x16u);
  }

  v43 = 0;
  v27 = [v8 moveItemAtPath:finalCopy toPath:v41 error:&v43];
  v28 = v43;
  v29 = v28;
  if ((v27 & 1) == 0)
  {
    obj = sub_100021268(v28);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      goto LABEL_29;
    }

    localizedDescription2 = [v29 localizedDescription];
    *buf = 138543874;
    v53 = finalCopy;
    v54 = 2114;
    v55 = v41;
    v56 = 2114;
    v57 = localizedDescription2;
    _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Could not move %{public}@ to %{public}@ with error - %{public}@", buf, 0x20u);

    v7 = finalCopy;
LABEL_36:
    v30 = 0;
    goto LABEL_30;
  }

  v30 = 1;
  v7 = finalCopy;
LABEL_31:

  return v30;
}

- (BOOL)switchToBackupFolder
{
  v2 = sub_100021268(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = @"/private/var/.backup";
    v34 = 2114;
    v35 = @"/private/var/backup";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Renaming %{public}@ to %{public}@...", buf, 0x16u);
  }

  fileSystemRepresentation = [@"/private/var/.backup" fileSystemRepresentation];
  fileSystemRepresentation2 = [@"/private/var/backup" fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v5);
  if (!v6)
  {
    v7 = +[NSFileManager defaultManager];
    v9 = +[MSDHVolumeManager sharedInstance];
    userHomePath = [v9 userHomePath];

    v11 = [userHomePath stringByAppendingPathComponent:@"/backup"];
    v12 = [v11 stringByAppendingPathComponent:userHomePath];
    v13 = [@"/private/var/backup" stringByAppendingPathComponent:userHomePath];
    v31 = 0;
    v14 = [v7 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v31];
    v15 = v31;
    v16 = v15;
    if ((v14 & 1) == 0)
    {
      v21 = sub_100021268(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100030058();
      }

      v17 = 0;
      goto LABEL_21;
    }

    v30 = v15;
    v17 = [v7 destinationOfSymbolicLinkAtPath:v13 error:&v30];
    v18 = v30;

    v20 = sub_100021268(v19);
    v21 = v20;
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v33 = v17;
        v34 = 2114;
        v35 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Renaming %{public}@ to %{public}@...", buf, 0x16u);
      }

      fileSystemRepresentation3 = [(__CFString *)v17 fileSystemRepresentation];
      fileSystemRepresentation4 = [(__CFString *)v12 fileSystemRepresentation];
      rename(fileSystemRepresentation3, fileSystemRepresentation4, v24);
      if (!v25)
      {
        v29 = v18;
        v27 = [v7 removeItemAtPath:v13 error:&v29];
        v16 = v29;

        if (v27)
        {
          v8 = 1;
          goto LABEL_22;
        }

        v21 = sub_100021268(v28);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100030174();
        }

LABEL_21:

        v8 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v21 = sub_100021268(v25);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000300EC();
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100030208();
      }

      v17 = 0;
    }

    v16 = v18;
    goto LABEL_21;
  }

  v7 = sub_100021268(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002FFD0();
  }

  v8 = 0;
LABEL_23:

  return v8;
}

- (BOOL)reboot
{
  v2 = reboot3();
  if (v2)
  {
    v3 = sub_100021268(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003029C();
    }
  }

  return 0;
}

- (BOOL)restoreBackupAttributesUnder:(id)under range:(_NSRange)range manifestUID:(id)d deviceUID:(id)iD
{
  length = range.length;
  location = range.location;
  underCopy = under;
  iDCopy = iD;
  dCopy = d;
  v14 = [[MSDHFileMetadataRestore alloc] initWithManifestUID:dCopy deviceUID:iDCopy];

  if (!v14)
  {
    v23 = sub_100021268(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10003040C();
    }

    goto LABEL_13;
  }

  signedManifest = [(MSDHOperations *)self signedManifest];

  if (!signedManifest)
  {
    v23 = sub_100021268(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10003038C();
    }

    goto LABEL_13;
  }

  signedManifest2 = [(MSDHOperations *)self signedManifest];
  v19 = [signedManifest2 mergedBackupManifest:{location, length}];

  if (!v19)
  {
    v23 = sub_100021268(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100030310();
    }

LABEL_13:

    v19 = 0;
    goto LABEL_14;
  }

  if (![(MSDHFileMetadataRestore *)v14 restoreAttributesUnder:underCopy fromManifestData:v19])
  {
LABEL_14:
    v21 = 0;
    goto LABEL_6;
  }

  v21 = 1;
LABEL_6:

  return v21;
}

- (BOOL)restoreAppDataAttributesUnder:(id)under containerType:(id)type identifier:(id)identifier manifestUID:(id)d deviceUID:(id)iD
{
  underCopy = under;
  typeCopy = type;
  identifierCopy = identifier;
  iDCopy = iD;
  dCopy = d;
  v17 = [[MSDHFileMetadataRestore alloc] initWithManifestUID:dCopy deviceUID:iDCopy];

  if (!v17)
  {
    v22 = sub_100021268(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100030544();
    }

    goto LABEL_12;
  }

  signedManifest = [(MSDHOperations *)self signedManifest];

  if (!signedManifest)
  {
    v22 = sub_100021268(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000304C4();
    }

    goto LABEL_12;
  }

  signedManifest2 = [(MSDHOperations *)self signedManifest];
  v22 = [signedManifest2 getManifestDataFromSection:typeCopy forIdentifier:identifierCopy];

  if (!v22)
  {
    v22 = sub_100021268(v23);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100030448();
    }

LABEL_12:
    v24 = 0;
    goto LABEL_5;
  }

  v24 = [(MSDHFileMetadataRestore *)v17 restoreAttributesUnder:underCopy fromManifestData:v22];
LABEL_5:

  return v24;
}

- (BOOL)collectDemoLogsToFolder:(id)folder ofType:(unint64_t)type
{
  folderCopy = folder;
  v7 = +[NSFileManager defaultManager];
  v8 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:folderCopy];

  if ([v7 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"])
  {
    v38 = 0;
    v9 = [v7 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz" error:&v38];
    v10 = v38;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      v18 = sub_100021268(v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100030580();
      }

      goto LABEL_43;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if ([v7 fileExistsAtPath:v8])
  {
    v37 = v12;
    v13 = [v7 removeItemAtPath:v8 error:&v37];
    v11 = v37;

    if ((v13 & 1) == 0)
    {
      v18 = sub_100021268(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000305BC();
      }

      goto LABEL_43;
    }

    v12 = v11;
  }

  v36 = v12;
  v15 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v36];
  v11 = v36;

  if ((v15 & 1) == 0)
  {
    v18 = sub_100021268(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000305F8();
    }

    goto LABEL_43;
  }

  v17 = MGCopyAnswer();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 objectForKey:kMGQDiskUsageAmountDataAvailable];
    if ([v7 fileExistsAtPath:@"/var/logs/demod/demod-finish-demo-restore.log"])
    {
      v20 = [v8 stringByAppendingPathComponent:@"demod-finish-demo-restore.log"];
      v35 = v11;
      v21 = [v7 copyItemAtPath:@"/var/logs/demod/demod-finish-demo-restore.log" toPath:v20 error:&v35];
      v22 = v35;

      if ((v21 & 1) == 0)
      {
        sub_100030634(v19);
        v33 = 0;
        v11 = v22;
        goto LABEL_24;
      }

      v11 = v22;
    }

    if (type == 1)
    {
      if (v19 && [v19 longLongValue] > 524288000)
      {
        if ([(MSDHOperations *)self generateSysdiagnose:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata"])
        {
          v23 = 0;
LABEL_23:
          v39[0] = NSFileOwnerAccountName;
          v39[1] = NSFileGroupOwnerAccountName;
          v40[0] = @"mobile";
          v40[1] = @"mobile";
          v39[2] = NSFilePosixPermissions;
          v31 = [NSNumber numberWithShort:448];
          v40[2] = v31;
          v32 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];

          [v7 changeFileAttributes:v32 atPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"];
          v33 = 1;
          v18 = v32;
          goto LABEL_24;
        }

        sub_100030884(v19);
        goto LABEL_43;
      }
    }

    else if (v19 && [v19 longLongValue] > 52428800)
    {
      v24 = [v8 stringByAppendingPathComponent:@"demod.log"];
      v25 = [(MSDHOperations *)self generateLogsForPredicate:@"subsystem == 'com.apple.MobileStoreDemo'" toFile:v24];

      if (v25)
      {
        v26 = [v8 stringByAppendingPathComponent:@"demoloop.log"];
        v27 = [(MSDHOperations *)self generateLogsForPredicate:@"subsystem == 'com.apple.ist.dcota'" toFile:v26];

        if (v27)
        {
          v23 = objc_alloc_init(MSDFileArchiver);
          v28 = [NSURL URLWithString:v8];
          v29 = [NSURL URLWithString:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/DekotaLogs.tar.gz"];
          v30 = [(MSDFileArchiver *)v23 compressContent:v28 toPath:v29];

          if (v30)
          {
            goto LABEL_23;
          }

          sub_100030760(v23, v19);
        }

        else
        {
          sub_1000306FC(v19);
        }
      }

      else
      {
        sub_100030698(v19);
      }

      goto LABEL_43;
    }

    sub_1000307E4(v19);
LABEL_43:
    v33 = 0;
    goto LABEL_24;
  }

  v18 = sub_100021268(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1000308E8();
  }

  v33 = 1;
LABEL_24:

  if ([v7 fileExistsAtPath:v8])
  {
    [v7 removeItemAtPath:v8 error:0];
  }

  return v33;
}

- (BOOL)generateLogsForPredicate:(id)predicate toFile:(id)file
{
  predicateCopy = predicate;
  fileCopy = file;
  v7 = +[NSFileManager defaultManager];
  v8 = +[OSLogEventStore localStore];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10001B870;
  v40 = sub_10001B880;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v9 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10001B870;
  v30 = sub_10001B880;
  v31 = 0;
  [v7 createFileAtPath:fileCopy contents:0 attributes:0];
  v10 = [NSFileHandle fileHandleForWritingAtPath:fileCopy];
  v11 = v27[5];
  v27[5] = v10;

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B888;
  v20[3] = &unk_100051098;
  v23 = &v36;
  v12 = predicateCopy;
  v21 = v12;
  v24 = &v32;
  v13 = v9;
  v22 = v13;
  v25 = &v26;
  [v8 prepareWithCompletionHandler:v20];
  v14 = dispatch_time(0, 600000000000);
  v15 = dispatch_semaphore_wait(v13, v14);
  if (v15)
  {
    v16 = sub_100021268(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request to collect MobileStoreDemo logs timed out.", v19, 2u);
    }

    [v37[5] invalidate];
  }

  [v27[5] closeFile];
  v17 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v17;
}

- (BOOL)preserveBluetoothFileToShelter:(id)shelter
{
  shelterCopy = shelter;
  v4 = +[NSFileManager defaultManager];
  v5 = sub_100021268(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = shelterCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, ">>> Copying item from '%{public}@'", buf, 0xCu);
  }

  v6 = [v4 fileExistsAtPath:shelterCopy];
  if (v6)
  {
    v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" stringByAppendingPathComponent:shelterCopy];
    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
    v16 = 0;
    v9 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
    v10 = v16;
    if (v9)
    {
      v11 = [v4 cloneFile:shelterCopy to:v7 expectingHash:0 correctOwnership:0];
      if (v11)
      {
        v12 = [MSDXattr setContentRoot:v7];

        goto LABEL_7;
      }

      v14 = sub_100021268(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        *buf = 138543874;
        v18 = shelterCopy;
        v19 = 2114;
        v20 = v7;
        v21 = 2114;
        v22 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to copy item from %{public}@ to %{public}@ with error - %{public}@", buf, 0x20u);
      }
    }

    else
    {
      sub_100030994(stringByDeletingLastPathComponent, v10, v7);
    }

    v12 = 0;
    goto LABEL_7;
  }

  v10 = sub_100021268(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100030924();
  }

  v12 = 1;
LABEL_7:

  return v12;
}

- (BOOL)runPreflightChecksOnSecondPartyAppData:(id)data withReturnErrorMsg:(id *)msg
{
  dataCopy = data;
  v21 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = objc_alloc_init(MSDHSnapshottedDataSaver);
  if (![v6 fileExistsAtPath:dataCopy isDirectory:&v21] || (v21 & 1) == 0)
  {
    [NSString stringWithFormat:@"App data folder does not exist or is not a folder:  %@", dataCopy, v19, v20];
    goto LABEL_9;
  }

  v8 = [(MSDHSnapshottedDataSaver *)v7 getFileSizeForItemAtPath:dataCopy];
  v9 = sub_100021268(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100030A5C();
  }

  if (v8 == -1)
  {
    [NSString stringWithFormat:@"Failed to calculate size of source data:  %@", dataCopy, v19, v20];
    goto LABEL_9;
  }

  if (v8 > 0x280000000)
  {
    [NSString stringWithFormat:@"Size of source data:  %lld at:  %@ exceeds max size of:  %llu", v8, dataCopy, 0x280000000];
    0x280000000 = LABEL_9:;
    v11 = 0x280000000;
    v12 = 0;
    goto LABEL_10;
  }

  if (![(MSDHSnapshottedDataSaver *)v7 canDeviceHaveEnoughSpaceForItemDomainWithSize:v8])
  {
    [NSString stringWithFormat:@"Device does not have enough space to preserve data - Data size:  %lld", v8, v19, v20];
    goto LABEL_9;
  }

  0x280000000 = [v6 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter"];
  if (0x280000000)
  {
    0x280000000 = [(MSDHSnapshottedDataSaver *)v7 getFileSizeForItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter"];
    if (0x280000000 == -1)
    {
      v12 = 0;
      v11 = @"Failed to calculate current size of second party app data shelter.";
      goto LABEL_10;
    }

    v16 = 0x280000000;
    v17 = sub_100021268(0x280000000);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100030AC4();
    }

    v12 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter" stringByAppendingPathComponent:dataCopy];
    0x280000000 = [v6 fileExistsAtPath:v12];
    if (0x280000000)
    {
      0x280000000 = [(MSDHSnapshottedDataSaver *)v7 getFileSizeForItemAtPath:v12];
      if (0x280000000 == -1)
      {
        v11 = @"Failed to calculate size of existing second party app data";
        goto LABEL_10;
      }

      v16 -= 0x280000000;
    }
  }

  else
  {
    v16 = 0;
    v12 = 0;
  }

  v18 = sub_100021268(0x280000000);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100030B2C();
  }

  if (v8 + v16 <= 0x280000000)
  {
    v14 = 1;
    goto LABEL_16;
  }

  0x280000000 = [NSString stringWithFormat:@"The current size of the second-party data shelter is %llu.  Saving this data of size %lld bytes will cause it to exceed the data cap of %lld bytes.", v16, v8, 0x280000000];
  v11 = 0x280000000;
LABEL_10:
  if (msg && v11)
  {
    0x280000000 = v11;
    *msg = v11;
  }

  v13 = sub_100021268(0x280000000);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100030B94();
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (BOOL)preserveSecondPartyAppDataToShelter:(id)shelter withReturnErrorMsg:(id *)msg
{
  shelterCopy = shelter;
  v7 = +[NSFileManager defaultManager];
  v30 = 0;
  v8 = [(MSDHOperations *)self runPreflightChecksOnSecondPartyAppData:shelterCopy withReturnErrorMsg:&v30];
  v9 = v30;
  if (!v8)
  {
    v10 = 0;
    stringByDeletingLastPathComponent = 0;
    v20 = 0;
    goto LABEL_16;
  }

  v10 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/SecondPartyAppDataShelter" stringByAppendingPathComponent:shelterCopy];
  if ([v7 fileExistsAtPath:v10])
  {
    v29 = 0;
    v11 = [v7 removeItemAtPath:v10 error:&v29];
    v12 = v29;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      localizedDescription = [v12 localizedDescription];
      v19 = [NSString stringWithFormat:@"Failed to delete destination folder in persitent storage - Error:  %@", localizedDescription];

      stringByDeletingLastPathComponent = 0;
      goto LABEL_14;
    }

    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
  if ([v7 fileExistsAtPath:v10])
  {
    v13 = v14;
LABEL_9:
    if ([v7 cloneFile:shelterCopy to:v10 expectingHash:0 correctOwnership:0])
    {
      if ([MSDXattr setContentRoot:v10])
      {
        v17 = 1;
        goto LABEL_28;
      }

      sub_100030C68(buf);
    }

    else
    {
      sub_100030C04(shelterCopy, buf);
    }

    v19 = *buf;
    goto LABEL_15;
  }

  v28 = v14;
  v16 = [v7 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v28];
  v13 = v28;

  if (v16)
  {
    goto LABEL_9;
  }

  localizedDescription = [v13 localizedDescription];
  v19 = [NSString stringWithFormat:@"Failed to create parent destination folder in persistent storage - Error:  %@", localizedDescription];

LABEL_14:
  v9 = localizedDescription;
LABEL_15:

  v9 = v19;
  v20 = v13;
LABEL_16:
  v21 = [v7 fileExistsAtPath:v10];
  if (v21)
  {
    v27 = v20;
    v22 = [v7 removeItemAtPath:v10 error:&v27];
    v13 = v27;

    if ((v22 & 1) == 0)
    {
      v23 = sub_100021268(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription2 = [v13 localizedDescription];
        *buf = 138412546;
        *&buf[4] = v10;
        v32 = 2112;
        v33 = localizedDescription2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to remove folder:  %@ - Error:  %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = v20;
  }

  if (msg && v9)
  {
    v21 = v9;
    *msg = v9;
  }

  v25 = sub_100021268(v21);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100030B94();
  }

  v17 = 0;
LABEL_28:

  return v17;
}

- (BOOL)restartBluetooth
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_10005BF50;
  v8 = off_10005BF50;
  if (!off_10005BF50)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10001CBB0;
    v4[3] = &unk_1000510C0;
    v4[4] = &v5;
    sub_10001CBB0(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_100030D5C();
    goto LABEL_7;
  }

  v2 = v2(@"bluetoothd", 0, @"Restarting bluetoothd to restore bluetooth pairing record for DeKOTA devices.");
  if (v2)
  {
LABEL_7:
    sub_100030CC0(v2);
  }

  return v2 == 0;
}

- (BOOL)setComputerNameAndHostname:(id)hostname encoding:(unsigned int)encoding
{
  hostnameCopy = hostname;
  v6 = sub_100021268(hostnameCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 136315650;
    *&v14[4] = "[MSDHOperations setComputerNameAndHostname:encoding:]";
    v15 = 2114;
    v16 = hostnameCopy;
    v17 = 1026;
    encodingCopy = encoding;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - computerName:  %{public}@ - encoding:  0x%{public}x", v14, 0x1Cu);
  }

  v7 = SCPreferencesCreate(0, @"demod_helper:setComputerName", 0);
  if (!v7)
  {
    sub_1000310A0(0);
LABEL_18:
    v12 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  if (!SCPreferencesSetComputerName(v7, hostnameCopy, encoding))
  {
    sub_100031008(v14);
LABEL_17:

    CFRelease(v8);
    goto LABEL_18;
  }

  v9 = _CSCopyLocalHostnameForComputerName();
  v10 = sub_100021268(v9);
  v11 = v10;
  if (!v9)
  {
    sub_100030FB0(v10, v14);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100030D80();
  }

  if (!SCPreferencesSetLocalHostName(v8, v9))
  {
    sub_100030F18(v14);
LABEL_22:

    v12 = 0;
    goto LABEL_12;
  }

  if (!SCPreferencesCommitChanges(v8))
  {
    sub_100030E80(v14);
    goto LABEL_22;
  }

  if (!SCPreferencesApplyChanges(v8))
  {
    sub_100030DE8(v14);
    goto LABEL_22;
  }

  v12 = 1;
LABEL_12:
  CFRelease(v8);
  CFRelease(v9);
LABEL_13:

  return v12;
}

- (id)getPathInUserHomeDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[MSDHVolumeManager sharedInstance];
  userHomePath = [v4 userHomePath];

  if ([directoryCopy hasPrefix:@"/var/MSDWorkContainer"])
  {
    v6 = [userHomePath stringByAppendingPathComponent:@"/.MSDWorkContainer"];
    v7 = @"/var/MSDWorkContainer";
LABEL_5:
    lastPathComponent = [directoryCopy substringFromIndex:{-[__CFString length](v7, "length")}];
    goto LABEL_7;
  }

  if ([directoryCopy hasPrefix:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer"])
  {
    v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
    v7 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer";
    goto LABEL_5;
  }

  v6 = [userHomePath stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  lastPathComponent = [directoryCopy lastPathComponent];
LABEL_7:
  v9 = lastPathComponent;
  v10 = [v6 stringByAppendingPathComponent:lastPathComponent];

  return v10;
}

- (BOOL)setPreferencesForKey:(id)key withValue:(id)value forApplication:(id)application andUser:(id)user
{
  userCopy = user;
  applicationCopy = application;
  CFPreferencesSetValue(key, value, applicationCopy, userCopy, kCFPreferencesAnyHost);
  v11 = CFPreferencesSynchronize(applicationCopy, userCopy, kCFPreferencesAnyHost);

  if (!v11)
  {
    sub_100031138(v12);
  }

  return v11 != 0;
}

- (BOOL)generateSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  v13[0] = @"baseDirectory";
  v13[1] = @"archiveName";
  v14[0] = sysdiagnoseCopy;
  v14[1] = @"DekotaLogs";
  v13[2] = @"shouldCreateTarBall";
  v14[2] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = 0;
  v5 = [Libsysdiagnose sysdiagnoseWithMetadata:v4 withError:&v10];
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100021268(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Collected sysdiagnose log with error %@", buf, 0xCu);
    }
  }

  return v7 == 0;
}

- (BOOL)migratePreferencesFile
{
  v2 = +[NSFileManager defaultManager];
  v3 = [@"/var/root/Library/Preferences/" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo.plist"];
  v4 = [@"/var/mobile/Library/Preferences/" stringByAppendingPathComponent:@"com.apple.MobileStoreDemo.plist"];
  if (![v2 fileExistsAtPath:v3] || (objc_msgSend(v2, "fileExistsAtPath:", v4) & 1) != 0)
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v17 = 0;
  v5 = [v2 moveItemAtPath:v3 toPath:v4 error:&v17];
  v6 = v17;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v14 = sub_100021268(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v3;
      v22 = 2114;
      v23 = v4;
      sub_100005E70(&_mh_execute_header, v14, v15, "Couldn't move %{public}@ to %{public}@", buf);
    }

    v8 = 0;
    goto LABEL_14;
  }

  v18[0] = NSFileOwnerAccountName;
  v18[1] = NSFileGroupOwnerAccountName;
  v19[0] = @"mobile";
  v19[1] = @"mobile";
  v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = v7;
  v9 = [v2 setAttributes:v8 ofItemAtPath:v4 error:&v16];
  v10 = v16;

  if ((v9 & 1) == 0)
  {
    v14 = sub_100021268(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Couldn't change ownership for %{public}@", buf, 0xCu);
    }

    v7 = v10;
LABEL_14:

    v12 = 0;
    v10 = v7;
    goto LABEL_6;
  }

  v12 = 1;
LABEL_6:

  return v12;
}

@end