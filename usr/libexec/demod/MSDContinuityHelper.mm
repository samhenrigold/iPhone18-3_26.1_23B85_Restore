@interface MSDContinuityHelper
+ (id)sharedInstance;
- (BOOL)preserveContinuityPairingRecord;
- (BOOL)shouldRestoreRapportPairingRecord;
- (BOOL)shouldRestoreUCBPairingRecord;
- (void)removeRapportPairingIfNeeded;
- (void)removeUCBPairingIfNeeded;
- (void)restoreContinuityPairingRecordIfNeeded;
@end

@implementation MSDContinuityHelper

+ (id)sharedInstance
{
  if (qword_1001A5600 != -1)
  {
    sub_1000CAA9C();
  }

  v3 = qword_1001A55F8;

  return v3;
}

- (BOOL)preserveContinuityPairingRecord
{
  v2 = sub_100063A54(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving continuity pairing info stored in keychain.", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];

  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v25 = 0;
    v6 = [v5 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain" error:&v25];
    v7 = v25;

    if ((v6 & 1) == 0)
    {
      v15 = sub_100063A54(v8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000CAAB0(v7);
      }

      goto LABEL_22;
    }

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];

  if (v11)
  {
    v12 = +[NSFileManager defaultManager];
    v24 = v9;
    v13 = [v12 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain" error:&v24];
    v7 = v24;

    if ((v13 & 1) == 0)
    {
      v15 = sub_100063A54(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000CAAB0(v7);
      }

LABEL_22:

      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = v9;
  }

  v16 = +[MSDCryptoHandler sharedInstance];
  v17 = [v16 preserveAndEncryptKeychainItemsForKey:@"com.apple.rapport" toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];

  if ((v17 & 1) == 0)
  {
    v15 = sub_100063A54(v18);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAB40(v15);
    }

    goto LABEL_22;
  }

  v19 = +[MSDCryptoHandler sharedInstance];
  v20 = [v19 preserveAndEncryptKeychainItemsForKey:@"com.apple.continuity.encryption" toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];

  if ((v20 & 1) == 0)
  {
    v15 = sub_100063A54(v21);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CAB84(v15);
    }

    goto LABEL_22;
  }

  v22 = 1;
LABEL_15:

  return v22;
}

- (void)restoreContinuityPairingRecordIfNeeded
{
  shouldRestoreRapportPairingRecord = [(MSDContinuityHelper *)self shouldRestoreRapportPairingRecord];
  v4 = shouldRestoreRapportPairingRecord;
  v5 = sub_100063A54(shouldRestoreRapportPairingRecord);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restoring rapport pairing information to keychain.", buf, 2u);
    }

    v7 = +[MSDCryptoHandler sharedInstance];
    v8 = [v7 restoreAndDecryptKeychainItemsForKey:@"com.apple.rapport" fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];

    if (v8)
    {
      [(MSDContinuityHelper *)self removeRapportPairingIfNeeded];
      shouldRestoreUCBPairingRecord = [(MSDContinuityHelper *)self shouldRestoreUCBPairingRecord];
      v11 = shouldRestoreUCBPairingRecord;
      v12 = sub_100063A54(shouldRestoreUCBPairingRecord);
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Restoring UCB pairing information to keychain.", v17, 2u);
        }

        v14 = +[MSDCryptoHandler sharedInstance];
        v15 = [v14 restoreAndDecryptKeychainItemsForKey:@"com.apple.continuity.encryption" fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];

        if (v15)
        {
          [(MSDContinuityHelper *)self removeUCBPairingIfNeeded];
        }

        else
        {
          sub_1000CAC1C(v16);
        }
      }

      else
      {
        sub_1000CAC78(v12);
      }
    }

    else
    {
      sub_1000CAC1C(v9);
    }
  }

  else
  {
    sub_1000CABC8(v5);
  }
}

- (BOOL)shouldRestoreRapportPairingRecord
{
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v2 isContentFrozen])
  {
    getSavedRequest = [v2 getSavedRequest];
    if ([getSavedRequest isEqualToString:@"RevertSnapshot"])
    {
      v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain"];
  }

  return v5;
}

- (BOOL)shouldRestoreUCBPairingRecord
{
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = +[NSFileManager defaultManager];
  if ([v2 isContentFrozen])
  {
    getSavedRequest = [v2 getSavedRequest];
    if ([getSavedRequest isEqualToString:@"RevertSnapshot"])
    {
      v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain"];
  }

  return v5;
}

- (void)removeRapportPairingIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v2 = +[NSFileManager defaultManager];
  if (([v3 isContentFrozen] & 1) == 0)
  {
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.rapportkeychain" error:0];
  }
}

- (void)removeUCBPairingIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v2 = +[NSFileManager defaultManager];
  if (([v3 isContentFrozen] & 1) == 0)
  {
    [v2 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ucbkeychain" error:0];
  }
}

@end