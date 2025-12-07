@interface MBCKEncryptionManager
+ (BOOL)_findMissingEncryptionKeysFromCKCacheWithAccount:(id)account serviceManager:(id)manager;
+ (BOOL)_findMissingEncryptionKeysFromPendingSnapshotDirectoryForPersona:(id)persona;
+ (BOOL)saveRestoreKeyBagsWithAccount:(id)account device:(id)device error:(id *)error;
+ (BOOL)tearDownBackupForVolume:(id)volume error:(id *)error;
+ (id)loadRestoreKeyBagsWithAccount:(id)account error:(id *)error;
+ (id)restoreKeyBagsForDevice:(id)device;
+ (void)_exportKeychain;
+ (void)_findMissingEncryptionKeysWithAccount:(id)account serviceManager:(id)manager;
+ (void)_trackFoundEncryptionKeysForAccount:(id)account quiet:(BOOL)quiet;
+ (void)deviceIsLockingWithAccount:(id)account serviceManager:(id)manager completion:(id)completion;
+ (void)deviceIsUnlockedWithAccount:(id)account serviceManager:(id)manager;
+ (void)removeRestoreKeyBagsWithAccount:(id)account device:(id)device;
+ (void)trackMissingEncryptionKeyForAccount:(id)account;
@end

@implementation MBCKEncryptionManager

+ (void)trackMissingEncryptionKeyForAccount:(id)account
{
  accountCopy = account;
  if (!atomic_fetch_add(dword_1004217A8, 1u))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=encryption key= Asking the UEA plugin to wake backupd on next unlock", buf, 2u);
      _MBLog(@"I ", "=encryption key= Asking the UEA plugin to wake backupd on next unlock");
    }

    CFPreferencesSetValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", &__kCFBooleanTrue, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        persona = [accountCopy persona];
        *buf = 138412290;
        v13 = persona;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=encryption key= Requesting backupd to fetch encryption keys for persona %@ on net unlock", buf, 0xCu);
      }

      persona2 = [accountCopy persona];
      _MBLog(@"I ", "=encryption key= Requesting backupd to fetch encryption keys for persona %@ on net unlock", persona2);
    }

    persona3 = [accountCopy persona];
    [persona3 setPreferencesValue:&__kCFBooleanTrue forKey:@"FetchMissingKeysAtNextUnlock"];

    objc_sync_exit(selfCopy);
  }
}

+ (void)_trackFoundEncryptionKeysForAccount:(id)account quiet:(BOOL)quiet
{
  accountCopy = account;
  if (quiet)
  {
    CFPreferencesSetValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", &__kCFBooleanFalse, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=encryption key= Asking the UEA plugin to not wake backupd on next unlock", buf, 2u);
      _MBLog(@"I ", "=encryption key= Asking the UEA plugin to not wake backupd on next unlock");
    }

    CFPreferencesSetValue(@"NotifyDaemonNextTimeKeyBagIsUnlocked", &__kCFBooleanFalse, @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      persona = [accountCopy persona];
      *buf = 138412290;
      v12 = persona;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=encryption key= Requesting backupd to not fetch encryption keys for persona %@ on next unlock", buf, 0xCu);

      persona2 = [accountCopy persona];
      _MBLog(@"I ", "=encryption key= Requesting backupd to not fetch encryption keys for persona %@ on next unlock", persona2);
    }
  }

  persona3 = [accountCopy persona];
  [persona3 setPreferencesValue:&__kCFBooleanFalse forKey:@"FetchMissingKeysAtNextUnlock"];
}

+ (void)deviceIsLockingWithAccount:(id)account serviceManager:(id)manager completion:(id)completion
{
  accountCopy = account;
  managerCopy = manager;
  completionCopy = completion;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10012A024;
  v23[3] = &unk_1003BBFE8;
  v23[4] = self;
  if (qword_1004217B8 != -1)
  {
    dispatch_once(&qword_1004217B8, v23);
  }

  v11 = dispatch_group_create();
  v12 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A0D0;
  block[3] = &unk_1003BDB10;
  selfCopy = self;
  v13 = accountCopy;
  v20 = v13;
  v14 = managerCopy;
  v21 = v14;
  dispatch_group_async(v11, v12, block);

  if ([v13 isPrimaryAccount])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012A118;
    v18[3] = &unk_1003BBFE8;
    v18[4] = self;
    dispatch_group_async(v11, qword_1004217B0, v18);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10012A120;
  v16[3] = &unk_1003BCB38;
  v17 = completionCopy;
  v15 = completionCopy;
  dispatch_group_notify(v11, v12, v16);
}

+ (void)deviceIsUnlockedWithAccount:(id)account serviceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager deviceIsUnlockedWithAccount:serviceManager:]", "MBCKEncryptionManager.m", 100, "account");
  }

  v8 = managerCopy;
  v9 = atomic_exchange(dword_1004217A8, 0);
  if (v9 || (buf[0] = 0, objc_opt_class(), v10 = objc_claimAutoreleasedReturnValue(), objc_sync_enter(v10), [accountCopy persona], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "getBooleanValueForKey:keyExists:", @"FetchMissingKeysAtNextUnlock", buf), v11, objc_sync_exit(v10), v10, buf[0]) && v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v20 = v9;
      v21 = 2112;
      v22 = @"FetchMissingKeysAtNextUnlock";
      v23 = 1024;
      v24 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=encryption key= Forcing missing encryption keys lookup, count:%lu, %@:%d", buf, 0x1Cu);
      _MBLog(@"I ", "=encryption key= Forcing missing encryption keys lookup, count:%lu, %@:%d", v9, @"FetchMissingKeysAtNextUnlock", 0);
    }

    v14 = dispatch_get_global_queue(9, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012A3B4;
    block[3] = &unk_1003BDB10;
    selfCopy = self;
    v16 = accountCopy;
    v17 = v8;
    dispatch_sync(v14, block);
  }
}

+ (void)_findMissingEncryptionKeysWithAccount:(id)account serviceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  persona = [accountCopy persona];
  v8 = [self _findMissingEncryptionKeysFromPendingSnapshotDirectoryForPersona:persona];
  v9 = [self _findMissingEncryptionKeysFromCKCacheWithAccount:accountCopy serviceManager:managerCopy];
  v10 = objc_opt_class();
  objc_sync_enter(v10);
  if (v8 && v9)
  {
    [objc_opt_class() _trackFoundEncryptionKeysForAccount:accountCopy quiet:1];
  }

  else
  {
    [objc_opt_class() trackMissingEncryptionKeyForAccount:accountCopy];
  }

  objc_sync_exit(v10);
}

+ (BOOL)_findMissingEncryptionKeysFromPendingSnapshotDirectoryForPersona:(id)persona
{
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  v4 = [snapshotDatabaseDirectory stringByAppendingPathComponent:@"pending"];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v42 = 0;
    v7 = [MBFileOperation symbolicLinkTargetWithPath:v4 error:&v42];
    v8 = v42;
    if (v7)
    {
      if (MBSnapshotDirectoryExists(snapshotDatabaseDirectory, v7))
      {
        v41 = 0;
        v39 = snapshotDatabaseDirectory;
        v40 = v7;
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=encryption key= Finding missed encryption keys for pending commitID: %@", buf, 0xCu);
          _MBLog(@"Df", "=encryption key= Finding missed encryption keys for pending commitID: %@", v40);
        }

        v44 = 0;
        v10 = [MBMissedEncryptionKeysDB openDatabaseIn:v39 commitID:v40 readOnly:1 error:&v44];
        v11 = v44;
        if (v10)
        {
          v43 = v11;
          v12 = [MBMissedEncryptionKeysDB openDatabaseIn:v39 commitID:v40 readOnly:0 error:&v43];
          v13 = v43;

          if (v12)
          {
            v38 = v13;
            v14 = [v12 countMissedEncryptionKeysWithError:&v41];
            if (v14 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = 0;
            }

            else
            {
              v21 = v10;
              v22 = v12;
              v35 = v40;
              v36 = +[NSDate now];
              v33 = v14;
              v50 = 0;
              v51 = &v50;
              v52 = 0x2020000000;
              v53 = 0;
              v46 = 0;
              v47 = &v46;
              v48 = 0x2020000000;
              v49 = 0;
              v45 = 0;
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_10012DE70;
              v65 = &unk_1003BF648;
              v12 = v22;
              v66 = v12;
              v67 = &v46;
              v68 = &v50;
              v34 = v21;
              LOBYTE(v22) = [v21 enumerateInodesMissingEncryptionKeys:&v45 block:buf];
              v37 = v45;
              v13 = v38;
              if (v22)
              {

                [v36 timeIntervalSinceNow];
                v24 = -v23;
                if (v51[3] + v47[3] >= v14)
                {
                  v25 = MBGetDefaultLog();
                  v15 = 1;
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v30 = v51[3];
                    v31 = v47[3];
                    *v54 = 134219010;
                    v55 = v30;
                    v56 = 2048;
                    v57 = v33;
                    v58 = 2048;
                    v59 = v31;
                    v60 = 2112;
                    v61 = v35;
                    v62 = 2048;
                    v63 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=encryption key= Found %llu/%llu encryption keys (%llu deleted) for pending commitID %@ in %.2fs", v54, 0x34u);
                    _MBLog(@"I ", "=encryption key= Found %llu/%llu encryption keys (%llu deleted) for pending commitID %@ in %.2fs", v51[3], v33, v47[3], v35, *&v24);
                  }
                }

                else
                {
                  v25 = MBGetDefaultLog();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = v51[3];
                    v27 = v47[3];
                    *v54 = 134219010;
                    v55 = v26;
                    v56 = 2048;
                    v57 = v14;
                    v58 = 2048;
                    v59 = v27;
                    v60 = 2112;
                    v61 = v35;
                    v62 = 2048;
                    v63 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "=encryption key= Partially found %llu/%llu encryption keys (%llu deleted) for pending commitID %@ in %.2fs", v54, 0x34u);
                    _MBLog(@"I ", "=encryption key= Partially found %llu/%llu encryption keys (%llu deleted) for pending commitID %@ in %.2fs", v51[3], v14, v47[3], v35, *&v24);
                  }

                  v15 = 0;
                }
              }

              else
              {
                v28 = MBGetDefaultLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *v54 = 138412290;
                  v55 = v37;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=encryption key= Error enumerating missed encryption keys: %@", v54, 0xCu);
                  _MBLog(@"E ", "=encryption key= Error enumerating missed encryption keys: %@", v37);
                }

                v29 = v37;
                v15 = 0;
                v41 = v37;
                v25 = v66;
              }

              _Block_object_dispose(&v46, 8);
              _Block_object_dispose(&v50, 8);
            }
          }

          else
          {
            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=encryption key= Failed to open r/w missed encryption keys db: %@", buf, 0xCu);
              _MBLog(@"E ", "=encryption key= Failed to open r/w missed encryption keys db: %@", v13);
            }

            v20 = v13;
            v12 = 0;
            v15 = 0;
            v41 = v13;
          }
        }

        else
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=encryption key= Failed to open r/o missed encryption keys db: %@", buf, 0xCu);
            _MBLog(@"E ", "=encryption key= Failed to open r/o missed encryption keys db: %@", v11);
          }

          v18 = v11;
          v12 = 0;
          v15 = 0;
          v41 = v11;
          v13 = v11;
        }

        if (v10)
        {
          [v10 close:0];
        }

        if (v12)
        {
          [v12 close:0];
        }

        goto LABEL_41;
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = snapshotDatabaseDirectory;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "=encryption key= Snapshot directory for commitID %@ does not exist under %@", buf, 0x16u);
        _MBLog(@"F ", "=encryption key= Snapshot directory for commitID %@ does not exist under %@", v7, snapshotDatabaseDirectory);
      }
    }

    else
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *&buf[4] = v4;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "=encryption key= Failed to resolve symlink target at %@: %@", buf, 0x16u);
        _MBLog(@"F ", "=encryption key= Failed to resolve symlink target at %@: %@", v4, v8);
      }
    }

    v15 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v8 = MBGetDefaultLog();
  v15 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=encryption key= Pending snapshot directory does not exist at %{public}@", buf, 0xCu);
    _MBLog(@"I ", "=encryption key= Pending snapshot directory does not exist at %{public}@", v4);
  }

LABEL_42:

  return v15 & 1;
}

+ (BOOL)_findMissingEncryptionKeysFromCKCacheWithAccount:(id)account serviceManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager _findMissingEncryptionKeysFromCKCacheWithAccount:serviceManager:]", "MBCKEncryptionManager.m", 165, "account");
  }

  v7 = managerCopy;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = accountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=encryption key= Finding missing encryption keys from MBCKCache for:%@", &buf, 0xCu);
    _MBLog(@"I ", "=encryption key= Finding missing encryption keys from MBCKCache for:%@", accountCopy);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = sub_10012B1F4;
  v46 = sub_10012B204;
  v47 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10012B1F4;
  v31 = sub_10012B204;
  v32 = 0;
  obj = 0;
  v9 = [v7 openCacheWithAccount:accountCopy accessType:2 error:&obj];
  objc_storeStrong(&v32, obj);
  if (v9)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10012B20C;
    v19 = &unk_1003BF620;
    v22 = &v33;
    v23 = &v27;
    p_buf = &buf;
    v20 = v7;
    v21 = accountCopy;
    v25 = &v37;
    v10 = [v9 enumerateFilesMissingEncryptionKeys:&v16];
    if (*(v38 + 24) == 1)
    {
      [*(*(&buf + 1) + 40) flush];
    }

    v11 = v28[5];
    if (v11)
    {
      v12 = v11;

      v10 = v12;
    }

    else if (!v10)
    {
LABEL_14:
      v13 = *(v34 + 24);

      goto LABEL_15;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v41 = 138412290;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=encryption key= Failed to enumerate files missing encryption keys: %@", v41, 0xCu);
      _MBLog(@"E ", "=encryption key= Failed to enumerate files missing encryption keys: %@", v10, v16, v17, v18, v19, v20);
    }

    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&buf, 8);

  return v13 & 1;
}

+ (void)_exportKeychain
{
  v7 = 0;
  v2 = [MBKeychainPlugin exportKeychainForCKBackupEngine:0 error:&v7];
  v3 = v7;
  if ((v2 & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MBError descriptionForError:v3];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=encryption key= Error exporting keychain: %@", buf, 0xCu);

      v6 = [MBError descriptionForError:v3];
      _MBLog(@"Df", "=encryption key= Error exporting keychain: %@", v6);
    }
  }
}

+ (BOOL)tearDownBackupForVolume:(id)volume error:(id *)error
{
  volumeCopy = volume;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=encryption key= Tearing down backup keybag", buf, 2u);
    _MBLog(@"Df", "=encryption key= Tearing down backup keybag");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=encryption key= Unregistering keybag for %@", buf, 0xCu);
    _MBLog(@"Df", "=encryption key= Unregistering keybag for %@", volumeCopy);
  }

  v12 = 0;
  v8 = [MBKeyBag unregisterOTAKeyBagForVolume:volumeCopy error:&v12];
  v9 = v12;
  if (v8)
  {
    +[MBKeychainPlugin removeServiceKeychainBackup];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = volumeCopy;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=encryption key= Failed to unregister OTA keybag for %@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "=encryption key= Failed to unregister OTA keybag for %@: %{public}@", volumeCopy, v9);
    }

    if (error)
    {
      *error = [MBError errorWithCode:1 error:v9 format:@"Error unregistering keybag"];
    }
  }

  return v8;
}

+ (id)loadRestoreKeyBagsWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager loadRestoreKeyBagsWithAccount:error:]", "MBCKEncryptionManager.m", 267, "account");
  }

  v6 = accountCopy;
  persona = [accountCopy persona];
  restoreKeyBagsPath = [persona restoreKeyBagsPath];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = restoreKeyBagsPath;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=encryption key= Loading restore keybags at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "=encryption key= Loading restore keybags at %{public}@", restoreKeyBagsPath);
  }

  v46 = 0;
  v10 = [NSData dataWithContentsOfFile:restoreKeyBagsPath options:0 error:&v46];
  v11 = v46;
  if (v10)
  {
    v45 = 0;
    v12 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v45];
    v13 = v45;

    if (v12)
    {
      v35 = v13;
      v36 = v10;
      v37 = restoreKeyBagsPath;
      v38 = v6;
      v40 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v34 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v15)
      {
        v16 = v15;
        v39 = *v42;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            v19 = [[NSData alloc] initWithBase64EncodedString:v18 options:0];
            v20 = [MBKeychainManager fetchKeybagSecretForUUID:v18 error:error];
            if (!v20)
            {

              v30 = 0;
              restoreKeyBagsPath = v37;
              v6 = v38;
              v13 = v35;
              v10 = v36;
              v12 = v34;
              v28 = v40;
              goto LABEL_24;
            }

            v21 = v20;
            errorCopy = error;
            v23 = [v14 objectForKeyedSubscript:v18];
            v24 = [v23 mutableCopy];

            [v24 setObject:v19 forKeyedSubscript:@"keybagUUID"];
            [v24 setObject:v21 forKeyedSubscript:@"secret"];
            v25 = [[MBCKKeyBag alloc] initWithDictionary:v24 device:0];
            [v40 setObject:v25 forKeyedSubscript:v18];
            v26 = MBGetDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v49 = v18;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=encryption key= Loaded secret for keybag %{public}@", buf, 0xCu);
              _MBLog(@"Df", "=encryption key= Loaded secret for keybag %{public}@", v18);
            }

            error = errorCopy;
          }

          v16 = [v14 countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v27 = MBGetDefaultLog();
      v28 = v40;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v40 count];
        *buf = 134217984;
        v49 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=encryption key= Loaded %ld keybag secrets from the keychain", buf, 0xCu);
        _MBLog(@"Df", "=encryption key= Loaded %ld keybag secrets from the keychain", [v40 count]);
      }

      v30 = v40;
      restoreKeyBagsPath = v37;
      v6 = v38;
      v13 = v35;
      v10 = v36;
      v12 = v34;
LABEL_24:
    }

    else
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v13;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=encryption key= Failed to deserialize the restore keybags: %{public}@", buf, 0xCu);
        _MBLog(@"E ", "=encryption key= Failed to deserialize the restore keybags: %{public}@", v13);
      }

      v30 = 0;
      if (error && v13)
      {
        [MBError errorWithCode:1 error:v13 format:@"Error deserializing restore keybag plist"];
        *error = v30 = 0;
      }
    }
  }

  else
  {
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = restoreKeyBagsPath;
      v50 = 2114;
      v51 = v11;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=encryption key= Failed to load the restore keybags from %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "=encryption key= Failed to load the restore keybags from %{public}@: %{public}@", restoreKeyBagsPath, v11);
    }

    if (error)
    {
      [MBError errorForNSError:v11 path:restoreKeyBagsPath format:@"Error reading restore keybag file"];
      *error = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    v13 = v11;
  }

  return v30;
}

+ (BOOL)saveRestoreKeyBagsWithAccount:(id)account device:(id)device error:(id *)error
{
  accountCopy = account;
  deviceCopy = device;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager saveRestoreKeyBagsWithAccount:device:error:]", "MBCKEncryptionManager.m", 310, "account");
  }

  v10 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager saveRestoreKeyBagsWithAccount:device:error:]", "MBCKEncryptionManager.m", 311, "device");
  }

  errorCopy = error;
  [self removeRestoreKeyBagsWithAccount:accountCopy device:deviceCopy];
  v67 = accountCopy;
  persona = [accountCopy persona];
  restoreKeyBagsPath = [persona restoreKeyBagsPath];

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v87 = restoreKeyBagsPath;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=encryption key= Saving restore keybags at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "=encryption key= Saving restore keybags at %{public}@", restoreKeyBagsPath);
  }

  v68 = restoreKeyBagsPath;

  v14 = [NSMutableDictionary alloc];
  keybagManager = [v10 keybagManager];
  keybagsByUUIDString = [keybagManager keybagsByUUIDString];
  v72 = [v14 initWithCapacity:{objc_msgSend(keybagsByUUIDString, "count")}];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v71 = v10;
  keybagManager2 = [v10 keybagManager];
  keybagsByUUIDString2 = [keybagManager2 keybagsByUUIDString];

  v19 = [keybagsByUUIDString2 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v82;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(keybagsByUUIDString2);
        }

        v23 = *(*(&v81 + 1) + 8 * i);
        keybagManager3 = [v71 keybagManager];
        keybagsByUUIDString3 = [keybagManager3 keybagsByUUIDString];
        v26 = [keybagsByUUIDString3 objectForKeyedSubscript:v23];

        v90 = @"keybagData";
        keybagData = [v26 keybagData];
        v91 = keybagData;
        v28 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];

        [v72 setObject:v28 forKeyedSubscript:v23];
      }

      v20 = [keybagsByUUIDString2 countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v20);
  }

  v80 = 0;
  v29 = [NSPropertyListSerialization dataWithPropertyList:v72 format:100 options:0 error:&v80];
  v30 = v80;
  if (v29)
  {
    v31 = v68;
    stringByDeletingLastPathComponent = [v68 stringByDeletingLastPathComponent];
    v33 = +[NSFileManager defaultManager];
    v79 = v30;
    v34 = [v33 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v79];
    v35 = v79;

    if ((v34 & 1) == 0)
    {
      v58 = MBGetDefaultLog();
      v37 = v71;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v87 = stringByDeletingLastPathComponent;
        v88 = 2114;
        v89 = v35;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "=encryption key= Failed create the directory at %{public}@: %{public}@", buf, 0x16u);
        _MBLog(@"E ", "=encryption key= Failed create the directory at %{public}@: %{public}@", stringByDeletingLastPathComponent, v35);
      }

      if (errorCopy)
      {
        [MBError errorForNSError:v35 path:stringByDeletingLastPathComponent format:@"Error creating restore keybag dir"];
        *errorCopy = v56 = 0;
      }

      else
      {
        v56 = 0;
      }

      v30 = v35;
      goto LABEL_56;
    }

    v78 = v35;
    v36 = [v29 writeToFile:v68 options:1073741825 error:&v78];
    v30 = v78;

    v37 = v71;
    if ((v36 & 1) == 0)
    {
      v59 = MBGetDefaultLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v87 = v68;
        v88 = 2114;
        v89 = v30;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=encryption key= Failed serialize restore keybags plist at %{public}@: %{public}@", buf, 0x16u);
        _MBLog(@"E ", "=encryption key= Failed serialize restore keybags plist at %{public}@: %{public}@", v68, v30);
      }

      if (errorCopy)
      {
        [MBError errorWithCode:100 error:v30 path:v68 format:@"Error writing restore keybag plist"];
        *errorCopy = v56 = 0;
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_56;
    }

    v69 = +[NSMutableArray array];
    keybagManager4 = [v71 keybagManager];
    keybagsByUUIDString4 = [keybagManager4 keybagsByUUIDString];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v40 = keybagsByUUIDString4;
    v41 = [v40 countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (v41)
    {
      v42 = v41;
      obj = v40;
      v63 = v30;
      v64 = stringByDeletingLastPathComponent;
      v65 = v29;
      v43 = 1;
      v44 = *v75;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v75 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v74 + 1) + 8 * j);
          v47 = MBGetDefaultLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v87 = v46;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=encryption key= Saving secret for keybag %{public}@ into keychain", buf, 0xCu);
            _MBLog(@"Df", "=encryption key= Saving secret for keybag %{public}@ into keychain", v46);
          }

          keybagManager5 = [v71 keybagManager];
          keybagsByUUIDString5 = [keybagManager5 keybagsByUUIDString];
          v50 = [keybagsByUUIDString5 objectForKeyedSubscript:v46];

          secret = [v50 secret];
          v73 = 0;
          v52 = [MBKeychainManager addKeybagSecret:secret forUUID:v46 error:&v73];
          v53 = v73;

          if ((v52 & 1) == 0)
          {
            v54 = MBGetDefaultLog();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v87 = v46;
              v88 = 2114;
              v89 = v53;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=encryption key= Failed to save secret for keybag %{public}@ into keychain: %{public}@", buf, 0x16u);
              _MBLog(@"E ", "=encryption key= Failed to save secret for keybag %{public}@ into keychain: %{public}@", v46, v53);
            }

            if (v53)
            {
              [MBError errorWithCode:1 error:v53 format:@"Failed to save secret for keybag %@ into keychain", v46];
            }

            else
            {
              [MBError errorWithCode:1 format:@"Failed to save secret for keybag %@ into keychain", v46];
            }
            v55 = ;
            [v69 addObject:v55];

            v43 = 0;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
      }

      while (v42);
      v40 = obj;

      if (!((errorCopy == 0) | v43 & 1))
      {
        [MBError errorWithErrors:v69];
        *errorCopy = v56 = 0;
        stringByDeletingLastPathComponent = v64;
        v29 = v65;
        v30 = v63;
        v31 = v68;
        goto LABEL_55;
      }

      stringByDeletingLastPathComponent = v64;
      v29 = v65;
      v30 = v63;
      v31 = v68;
      if ((v43 & 1) == 0)
      {
        v56 = 0;
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }
    }

    else
    {
    }

    v60 = MBGetDefaultLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [v40 count];
      *buf = 134217984;
      v87 = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=encryption key= Saved %ld keybag secrets into keychain", buf, 0xCu);
      _MBLog(@"Df", "=encryption key= Saved %ld keybag secrets into keychain", [v40 count]);
    }

    v56 = 1;
    goto LABEL_55;
  }

  v57 = MBGetDefaultLog();
  v31 = v68;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v87 = v30;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "=encryption key= Failed serialize restore keybags plist: %{public}@", buf, 0xCu);
    _MBLog(@"E ", "=encryption key= Failed serialize restore keybags plist: %{public}@", v30);
  }

  v37 = v71;
  if (errorCopy)
  {
    [MBError errorForNSError:v30 path:v68 format:@"Error serializing restore keybag plist"];
    *errorCopy = v56 = 0;
  }

  else
  {
    v56 = 0;
  }

LABEL_57:

  return v56;
}

+ (id)restoreKeyBagsForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keybagManager = [deviceCopy keybagManager];
  keybagsByUUIDString = [keybagManager keybagsByUUIDString];

  v7 = [keybagsByUUIDString countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(keybagsByUUIDString);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        keybagManager2 = [deviceCopy keybagManager];
        keybagsByUUIDString2 = [keybagManager2 keybagsByUUIDString];
        v14 = [keybagsByUUIDString2 objectForKeyedSubscript:v11];

        [v4 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [keybagsByUUIDString countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (void)removeRestoreKeyBagsWithAccount:(id)account device:(id)device
{
  accountCopy = account;
  deviceCopy = device;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKEncryptionManager removeRestoreKeyBagsWithAccount:device:]", "MBCKEncryptionManager.m", 388, "account");
  }

  v21 = deviceCopy;
  v22 = accountCopy;
  keybagManager = [deviceCopy keybagManager];
  keybagsByUUIDString = [keybagManager keybagsByUUIDString];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = [keybagsByUUIDString count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=encryption key= Removing secrets for %ld keybags", buf, 0xCu);
    _MBLog(@"Df", "=encryption key= Removing secrets for %ld keybags", [keybagsByUUIDString count]);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = keybagsByUUIDString;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=encryption key= Removing the secret for keybag %{public}@", buf, 0xCu);
          _MBLog(@"Df", "=encryption key= Removing the secret for keybag %{public}@", v15);
        }

        v23 = 0;
        v17 = [MBKeychainManager removeKeybagSecretForUUID:v15 error:&v23];
        v18 = v23;
        if ((v17 & 1) == 0)
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v29 = v15;
            v30 = 2114;
            v31 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=encryption key= Failed to remove the secret for keybag %{public}@: %{public}@", buf, 0x16u);
            _MBLog(@"E ", "=encryption key= Failed to remove the secret for keybag %{public}@: %{public}@", v15, v18);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v12);
  }

  persona = [v22 persona];
  [persona removeRestoreKeybags];
}

@end