@interface MSDBluetoothHelper
+ (id)sharedInstance;
- (BOOL)preserveBTFiles;
- (BOOL)preserveBTPairingRecord;
- (BOOL)shouldRestoreBluetoothPairingRecord;
- (id)getKeychainInfoToSave:(id)save;
- (void)removeBluetoothPairingRecordIfNeeded;
- (void)restoreBTPairingRecordIfNeeded;
@end

@implementation MSDBluetoothHelper

+ (id)sharedInstance
{
  if (qword_1001A5670 != -1)
  {
    sub_1000CCCBC();
  }

  v3 = qword_1001A5668;

  return v3;
}

- (BOOL)preserveBTPairingRecord
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "About to preserve bluetooth pairing records to ensure these pairings persist.", buf, 2u);
  }

  preserveBTFiles = [(MSDBluetoothHelper *)self preserveBTFiles];
  if ((preserveBTFiles & 1) == 0)
  {
    v15 = sub_100063A54(preserveBTFiles);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCCD0();
    }

    v8 = 0;
    goto LABEL_21;
  }

  v5 = +[MSDPlatform sharedInstance];
  macOS = [v5 macOS];

  if (macOS)
  {
    v8 = 0;
LABEL_14:
    v19 = 1;
    goto LABEL_15;
  }

  v9 = sub_100063A54(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving bluetooth pairing info stored in system keychain.", buf, 2u);
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];

  if (v11)
  {
    v12 = +[NSFileManager defaultManager];
    v26 = 0;
    v13 = [v12 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain" error:&v26];
    v8 = v26;

    if ((v13 & 1) == 0)
    {
      v15 = sub_100063A54(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000CCD10();
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = +[MSDCryptoHandler sharedInstance];
  v17 = [v16 preserveAndEncryptKeychainItemsForKey:@"com.appl.mobilestoredemo.bluetooth." toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];

  if (v17)
  {
    goto LABEL_14;
  }

  v15 = sub_100063A54(v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000CCD80();
  }

LABEL_21:

  v21 = +[NSFileManager defaultManager];
  v22 = [v21 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter"];

  if (v22)
  {
    v23 = +[NSFileManager defaultManager];
    v25 = v8;
    [v23 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" error:&v25];
    v24 = v25;

    v19 = 0;
    v8 = v24;
  }

  else
  {
    v19 = 0;
  }

LABEL_15:

  return v19;
}

- (void)restoreBTPairingRecordIfNeeded
{
  shouldRestoreBluetoothPairingRecord = [(MSDBluetoothHelper *)self shouldRestoreBluetoothPairingRecord];
  if ((shouldRestoreBluetoothPairingRecord & 1) == 0)
  {
    sub_1000CCDC0(shouldRestoreBluetoothPairingRecord);
    return;
  }

  v4 = +[MSDPlatform sharedInstance];
  macOS = [v4 macOS];

  if ((macOS & 1) == 0)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restoring bluetooth pairing information to system keychain.", buf, 2u);
    }

    v8 = +[MSDCryptoHandler sharedInstance];
    v9 = [v8 restoreAndDecryptKeychainItemsForKey:@"com.appl.mobilestoredemo.bluetooth." fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];

    v11 = sub_100063A54(v10);
    v12 = v11;
    if ((v9 & 1) == 0)
    {
      sub_1000CCE1C(v11);
      return;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Done restoring bluetooth keychain items.", v14, 2u);
    }

    v13 = +[MSDHelperAgent sharedInstance];
    [v13 restartBluetooth];
  }

  [(MSDBluetoothHelper *)self removeBluetoothPairingRecordIfNeeded];
}

- (BOOL)preserveBTFiles
{
  v55[1] = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = 0;
  if ([v2 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter"])
  {
    v55[0] = 0;
    v4 = [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" error:v55];
    v5 = v55[0];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      v11 = sub_100063A54(v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CCE70();
      }

      goto LABEL_27;
    }
  }

  v6 = v3;
  v54 = v3;
  v7 = [v2 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" withIntermediateDirectories:1 attributes:0 error:&v54];
  v3 = v54;

  if ((v7 & 1) == 0)
  {
    v11 = sub_100063A54(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CCEE0();
    }

LABEL_27:
    v40 = 0;
    goto LABEL_28;
  }

  v9 = +[MSDPlatform sharedInstance];
  macOS = [v9 macOS];

  v48 = v3;
  if (macOS)
  {
    v11 = 0;
    v12 = &off_10017BBF8;
  }

  else
  {
    v11 = [NSString stringWithCString:container_system_group_path_for_identifier() encoding:4];
    v46 = [v11 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.paired.db"];
    v57[0] = v46;
    v13 = [v11 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.paired.db-shm"];
    v57[1] = v13;
    v14 = [v11 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.paired.db-wal"];
    v57[2] = v14;
    v15 = [v11 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.other.db"];
    v57[3] = v15;
    v16 = [v11 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.other.db-shm"];
    v57[4] = v16;
    v17 = [v11 stringByAppendingPathComponent:@"Library/Database/com.apple.MobileBluetooth.ledevices.other.db-wal"];
    v57[5] = v17;
    v18 = [v11 stringByAppendingPathComponent:@"Library/Preferences/com.apple.MobileBluetooth.devices.plist"];
    v57[6] = v18;
    v19 = [v11 stringByAppendingPathComponent:@"Library/Preferences/com.apple.BTMagic.plist"];
    v57[7] = v19;
    v12 = [NSArray arrayWithObjects:v57 count:8];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v12;
  v20 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v43 = v11;
  v22 = 0;
  v47 = *v51;
  p_cache = &OBJC_METACLASS___MSDPlatform.cache;
  while (2)
  {
    v24 = 0;
    v25 = v22;
    do
    {
      if (*v51 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v50 + 1) + 8 * v24);

      stringByDeletingLastPathComponent = [v22 stringByDeletingLastPathComponent];
      v27 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" stringByAppendingPathComponent:stringByDeletingLastPathComponent];
      v28 = [v2 fileExistsAtPath:v27];

      if ((v28 & 1) == 0)
      {
        v29 = v2;
        v30 = p_cache;
        v31 = v21;
        stringByDeletingLastPathComponent2 = [v22 stringByDeletingLastPathComponent];
        v33 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" stringByAppendingPathComponent:stringByDeletingLastPathComponent2];
        v49 = v48;
        v34 = v29;
        v45 = [v29 createDirectoryAtPath:v33 withIntermediateDirectories:1 attributes:0 error:&v49];
        v3 = v49;

        if ((v45 & 1) == 0)
        {
          v41 = sub_100063A54(v35);
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v2 = v34;
            v11 = v43;
            goto LABEL_26;
          }

          sub_1000CCF50();
          v2 = v34;
LABEL_23:
          v11 = v43;
LABEL_26:

          goto LABEL_27;
        }

        v48 = v3;
        v36 = v34;
        v21 = v31;
        p_cache = v30;
        v2 = v36;
      }

      sharedInstance = [p_cache + 223 sharedInstance];
      v38 = [sharedInstance preserveBluetoothFileToShelter:v22];

      if ((v38 & 1) == 0)
      {
        v41 = sub_100063A54(v39);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_1000CCFD4();
        }

        v3 = v48;
        goto LABEL_23;
      }

      v24 = v24 + 1;
      v25 = v22;
    }

    while (v21 != v24);
    v21 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

  v11 = v43;
LABEL_19:

  v40 = 1;
  v3 = v48;
LABEL_28:

  return v40;
}

- (BOOL)shouldRestoreBluetoothPairingRecord
{
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v2 isContentFrozen])
  {
    getSavedRequest = [v2 getSavedRequest];
    if ([getSavedRequest isEqualToString:@"RevertSnapshot"])
    {
      v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain"];
  }

  return v5;
}

- (void)removeBluetoothPairingRecordIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v2 = +[NSFileManager defaultManager];
  if (([v3 isContentFrozen] & 1) == 0)
  {
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.btkeychain" error:0];
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/BluetoothShelter" error:0];
  }
}

- (id)getKeychainInfoToSave:(id)save
{
  saveCopy = save;
  v32[0] = kSecAttrService;
  v32[1] = kSecAttrAccount;
  v32[2] = kSecAttrLabel;
  v32[3] = kSecValueData;
  v4 = [NSArray arrayWithObjects:v32 count:4];
  v21 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = saveCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v27;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = objc_alloc_init(NSMutableDictionary);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              if ([v4 containsObject:v15])
              {
                v16 = [v10 objectForKey:v15];
                [v9 setObject:v16 forKey:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        [v21 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = [NSPropertyListSerialization dataFromPropertyList:v21 format:200 errorDescription:0];

  return v17;
}

@end