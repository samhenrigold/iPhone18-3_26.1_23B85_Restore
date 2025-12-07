@interface MSDAccountManager
+ (id)sharedInstance;
- (BOOL)_checkCloudPairedDevices:(id)devices;
- (BOOL)_iCloudAccountSignedIn;
- (BOOL)_setupiCloudAccountWithSettings:(id)settings outError:(id *)error;
- (BOOL)_setupiTunesAccountWithSettings:(id)settings outError:(id *)error;
- (BOOL)_signIniCloudAccount:(id)account password:(id)password features:(id)features recoveryKey:(id)key resetCDP:(BOOL)p outError:(id *)error;
- (BOOL)_signIniTunesAccount:(id)account password:(id)password outError:(id *)error;
- (BOOL)_signOutiCloudAccountWithPassword:(id)password outError:(id *)error;
- (BOOL)_signOutiTunesAccount:(id *)account;
- (BOOL)_trySetupAccountsWithContinuity:(BOOL)continuity retryAfter:(id *)after withError:(id *)error;
- (BOOL)removeAccounts:(id *)accounts;
- (BOOL)setupAccounts:(id *)accounts;
- (BOOL)setupContinuityAccounts:(id *)accounts;
- (BOOL)setupContinuityLinking:(id *)linking;
- (MSDAccountManager)init;
- (id)cloudPairedDevices;
- (id)existingAccounts;
- (void)_forceiCloudKeychainToSyncWithServer;
- (void)_syncAppsWithiCloud;
- (void)disallowAccountModification;
- (void)setupTrustedPeerChangeNotificationObserver;
@end

@implementation MSDAccountManager

+ (id)sharedInstance
{
  if (qword_1001A5870 != -1)
  {
    sub_1000D8118();
  }

  v3 = qword_1001A5868;

  return v3;
}

- (MSDAccountManager)init
{
  v6.receiver = self;
  v6.super_class = MSDAccountManager;
  v2 = [(MSDAccountManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MSDAccountManagerHelper);
    [(MSDAccountManager *)v2 setAccountManagerHelper:v3];

    [(MSDAccountManager *)v2 setPeerChangeToken:0xFFFFFFFFLL];
    v4 = +[NSMutableArray array];
    [(MSDAccountManager *)v2 setCloudPairedDeviceList:v4];
  }

  return v2;
}

- (void)disallowAccountModification
{
  v2 = sub_100063A54(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling AppleID options in Settings!", v4, 2u);
  }

  v3 = +[MCProfileConnection sharedConnection];
  [v3 setBoolValue:0 forSetting:MCFeatureAccountModificationAllowed];
}

- (void)setupTrustedPeerChangeNotificationObserver
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to observe trusted peer change!", v7, 2u);
  }

  v4 = notify_register_dispatch("com.apple.security.octagon.peer-changed", &self->_peerChangeToken, &_dispatch_main_q, &stru_10016B460);
  if (v4)
  {
    v5 = v4;
    v6 = sub_100063A54(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000D812C(v5, v6);
    }
  }
}

- (id)existingAccounts
{
  v3 = +[MSDTargetDevice sharedInstance];
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  fetchiTunesiCloudAccountsInfo = [accountManagerHelper fetchiTunesiCloudAccountsInfo];

  if (fetchiTunesiCloudAccountsInfo)
  {
    [v4 addEntriesFromDictionary:fetchiTunesiCloudAccountsInfo];
  }

  iCloudAccountRecoveryKey = [v3 iCloudAccountRecoveryKey];
  if (iCloudAccountRecoveryKey)
  {
    [v4 setObject:iCloudAccountRecoveryKey forKey:@"iCloudRecoveryKey"];
  }

  if ([v3 iCloudAccountSyncNeeded])
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"iCloudSyncNeeded"];
  }

  v8 = [v4 copy];

  return v8;
}

- (BOOL)setupAccounts:(id *)accounts
{
  v5 = +[MSDGreyMatterHelper isOptedIn];
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status before iCloud account setup: %{BOOL}d", buf, 8u);
  }

  v7 = 0;
  v8 = 2;
  *&v9 = 134218498;
  v24 = v9;
  do
  {
    v10 = v7;
    v25 = v7;
    v11 = [(MSDAccountManager *)self _trySetupAccountsWithContinuity:0 retryAfter:0 withError:&v25, v24];
    v7 = v25;

    if (v11)
    {
      break;
    }

    if ([v7 code] == 3727741185)
    {
      v14 = sub_100063A54(3727741185);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Account setup cancelled. Not going to retry.";
        goto LABEL_15;
      }

LABEL_16:

      break;
    }

    code = [v7 code];
    v13 = sub_100063A54(code);
    v14 = v13;
    if (code == 3727741043)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Account authentication failure. Not going to retry.";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason = [v7 localizedFailureReason];
      code2 = [v7 code];
      *buf = v24;
      v27 = v8 - 1;
      v28 = 2114;
      v29 = localizedFailureReason;
      v30 = 2048;
      v31 = code2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to setup accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    sleep(5u);
  }

  while (v8-- >= 2 && !v11);
  v19 = +[MSDGreyMatterHelper isOptedIn];
  v20 = v19;
  v21 = sub_100063A54(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status after iCloud account setup: %{BOOL}d", buf, 8u);
  }

  if (v5 != v20)
  {
    [MSDGreyMatterHelper setIsOptedIn:v5];
  }

  if (accounts)
  {
    v22 = v7;
    *accounts = v7;
  }

  [(MSDAccountManager *)self _syncAppsWithiCloud];

  return v11;
}

- (BOOL)setupContinuityLinking:(id *)linking
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10006BD90;
  v27 = sub_10006BDA0;
  v28 = 0;
  v5 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BDA8;
  block[3] = &unk_10016B488;
  v17 = &v19;
  v18 = &v23;
  block[4] = self;
  v7 = v5;
  v16 = v7;
  dispatch_async(v6, block);

  v8 = dispatch_time(0, 3600000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  if (v9)
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000D81A4(v10);
    }

    v11 = v24;
    obj = v24[5];
    sub_1000C1390(&obj, 3727744777, @"Timed out while trying to perform continuity linking");
    objc_storeStrong(v11 + 5, obj);
    *(v20 + 24) = 0;
  }

  if (linking)
  {
    *linking = v24[5];
  }

  v12 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

- (BOOL)setupContinuityAccounts:(id *)accounts
{
  v4 = +[MSDGreyMatterHelper isOptedIn];
  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v48 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status before iCloud account setup: %{BOOL}d", buf, 8u);
  }

  v6 = 0;
  v7 = 0;
  v8 = 2;
  *&v9 = 134218498;
  v42 = v9;
  while (1)
  {
    v10 = v7;
    v11 = v6;
    v45 = v6;
    v46 = v7;
    v12 = [(MSDAccountManager *)self _trySetupAccountsWithContinuity:1 retryAfter:&v46 withError:&v45, v42];
    v7 = v46;

    v6 = v45;
    if (v12)
    {
      v14 = v7 == 0;
      goto LABEL_17;
    }

    if (!v6)
    {
      v17 = sub_100063A54(v13);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        if (v18)
        {
          intValue = [0 intValue];
          localizedFailureReason = [0 localizedFailureReason];
          code = [0 code];
          *buf = 67109890;
          *v48 = intValue;
          *&v48[4] = 1024;
          *&v48[6] = 0;
          *v49 = 2114;
          *&v49[2] = localizedFailureReason;
          LOWORD(v50[0]) = 2048;
          *(v50 + 2) = code;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unexpected result. retry = %d, rval = %d, error = %{public}@(0x%tx)", buf, 0x22u);
        }

        v44 = 0;
        sub_1000C1390(&v44, 3727744743, @"An error has occurred.");
        v13 = v44;
        v6 = v13;
        v14 = 0;
        --v8;
        goto LABEL_17;
      }

      if (v18)
      {
        intValue2 = [v7 intValue];
        *buf = 67109120;
        *v48 = intValue2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "retryAfter = %d, waiting before trying endpoint again", buf, 8u);
      }

      v13 = sleep([v7 intValue]);
      v6 = 0;
      goto LABEL_16;
    }

    if ([v6 code] == 3727741185)
    {
      v25 = sub_100063A54(3727741185);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v26 = "Account setup cancelled. Not going to retry.";
      goto LABEL_27;
    }

    code2 = [v6 code];
    if (code2 == 3727741043)
    {
      break;
    }

    --v8;
    v16 = sub_100063A54(code2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason2 = [v6 localizedFailureReason];
      code3 = [v6 code];
      *buf = v42;
      *v48 = v8;
      *&v48[8] = 2114;
      *v49 = localizedFailureReason2;
      *&v49[8] = 2048;
      v50[0] = code3;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to setup accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    v13 = sleep(5u);
LABEL_16:
    v14 = 0;
LABEL_17:
    if (v8 < 1 || v14)
    {
      goto LABEL_29;
    }
  }

  v25 = sub_100063A54(3727741043);
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_28;
  }

  *buf = 0;
  v26 = "Account authentication failure. Not going to retry.";
LABEL_27:
  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
LABEL_28:

  v14 = 0;
LABEL_29:
  v27 = sub_100063A54(v13);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Account setup completed. Checking cloud pairing records", buf, 2u);
  }

  cloudPairedDeviceList = [(MSDAccountManager *)self cloudPairedDeviceList];
  v29 = [cloudPairedDeviceList count];

  if (v29)
  {
    cloudPairedDeviceList2 = [(MSDAccountManager *)self cloudPairedDeviceList];
    v32 = [(MSDAccountManager *)self _checkCloudPairedDevices:cloudPairedDeviceList2];

    p_superclass = (MSDS3UploadHandler + 8);
    if ((v32 & 1) == 0)
    {
      do
      {
        sleep(5u);
        cloudPairedDeviceList3 = [(MSDAccountManager *)self cloudPairedDeviceList];
        v35 = [(MSDAccountManager *)self _checkCloudPairedDevices:cloudPairedDeviceList3];
      }

      while ((v35 & 1) == 0);
    }

    v14 = 1;
  }

  else
  {
    v36 = sub_100063A54(v30);
    p_superclass = MSDS3UploadHandler.superclass;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000D8224(v36);
    }
  }

  isOptedIn = [p_superclass + 449 isOptedIn];
  v38 = isOptedIn;
  v39 = sub_100063A54(isOptedIn);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v48 = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "GreyMatter opt-in status after iCloud account setup: %{BOOL}d", buf, 8u);
  }

  if (v4 != v38)
  {
    [p_superclass + 449 setIsOptedIn:v4];
  }

  if (accounts)
  {
    v40 = v6;
    *accounts = v6;
  }

  [(MSDAccountManager *)self _syncAppsWithiCloud];

  return v14;
}

- (BOOL)removeAccounts:(id *)accounts
{
  v6 = 0;
  v7 = 1;
  *&v3 = 134218498;
  v19 = v3;
  while (1)
  {
    v8 = v6;
    v21 = v6;
    v9 = [(MSDAccountManager *)self _signOutiCloudAccountWithPassword:0 outError:&v21, v19];
    v6 = v21;

    if (v9)
    {
      break;
    }

LABEL_5:
    v13 = sub_100063A54(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason = [v6 localizedFailureReason];
      code = [v6 code];
      *buf = v19;
      v23 = v7;
      v24 = 2114;
      v25 = localizedFailureReason;
      v26 = 2048;
      v27 = code;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove accounts (retryCount = %td): %{public}@(0x%tx)", buf, 0x20u);
    }

    if (--v7 == -1)
    {
      v16 = 0;
      v12 = v6;
      if (!accounts)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v20 = v6;
  v11 = [(MSDAccountManager *)self _signOutiTunesAccount:&v20];
  v12 = v20;

  if ((v11 & 1) == 0)
  {
    v6 = v12;
    goto LABEL_5;
  }

  v16 = 1;
  if (accounts)
  {
LABEL_9:
    v17 = v12;
    *accounts = v12;
  }

LABEL_10:

  return v16;
}

- (id)cloudPairedDevices
{
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  getListOfCloudPairedDevices = [accountManagerHelper getListOfCloudPairedDevices];

  return getListOfCloudPairedDevices;
}

- (BOOL)_iCloudAccountSignedIn
{
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  fetchiTunesiCloudAccountsInfo = [accountManagerHelper fetchiTunesiCloudAccountsInfo];

  if (fetchiTunesiCloudAccountsInfo)
  {
    v4 = [fetchiTunesiCloudAccountsInfo objectForKey:@"iCloud"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_trySetupAccountsWithContinuity:(BOOL)continuity retryAfter:(id *)after withError:(id *)error
{
  continuityCopy = continuity;
  v7 = +[MSDTargetDevice sharedInstance];
  v8 = +[MSDProgressUpdater sharedInstance];
  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start setting up accounts with Continuity support.", buf, 2u);
  }

  [v8 updateStage:20];
  if (([v7 allowAccountSetup] & 1) == 0)
  {
    v33 = v7;
    sub_1000D8268(buf);
    LOBYTE(v35) = 0;
    v80 = 0;
    v81 = 0;
    retryAfter = 0;
    continuityDict = 0;
    v36 = 0;
    v37 = 0;
    v77 = 0;
    v38 = 0;
    v39 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v68 = 0;
    v17 = *buf;
    goto LABEL_86;
  }

  [v7 saveiCloudAccountSyncNeeded:0];
  if (os_variant_has_internal_content())
  {
    v10 = +[MSDTestPreferences sharedInstance];
    mockAccountSettingsFile = [v10 mockAccountSettingsFile];

    if (mockAccountSettingsFile)
    {
      v13 = sub_100063A54(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = mockAccountSettingsFile;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loading account settings from file: %{public}@", buf, 0xCu);
      }

      v14 = [NSDictionary alloc];
      v15 = [NSURL fileURLWithPath:mockAccountSettingsFile];
      v90 = 0;
      v16 = [v14 initWithContentsOfURL:v15 error:&v90];
      v17 = v90;

      v19 = sub_100063A54(v18);
      v20 = v19;
      continuityDict = v16;
      if (v16)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Account settings successfully loaded: %{public}@", buf, 0xCu);
        }

        retryAfter = [v16 objectForKey:@"RetryAfter"];

        v81 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v79 = 0;
        goto LABEL_30;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000D82EC(v17);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  if (continuityCopy)
  {
    v24 = objc_alloc_init(MSDGetContinuitySettingsRequest);
    existingAccounts = [(MSDAccountManager *)self existingAccounts];
    [(MSDGetContinuitySettingsRequest *)v24 setExistingAccounts:existingAccounts];

    accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
    getIdentityServicesID = [accountManagerHelper getIdentityServicesID];
    [(MSDGetContinuitySettingsRequest *)v24 setIdentityServicesID:getIdentityServicesID];

    v28 = +[MSDServerRequestHandler sharedInstance];
    v79 = v24;
    v29 = [v28 handleRequestSync:v24];
    v21 = 0;
    v22 = 0;
    v23 = v29;
  }

  else
  {
    v22 = objc_alloc_init(MSDGetAccountSettingsRequest);
    existingAccounts2 = [(MSDAccountManager *)self existingAccounts];
    [(MSDGetAccountSettingsRequest *)v22 setExistingAccounts:existingAccounts2];

    v28 = +[MSDServerRequestHandler sharedInstance];
    v29 = [v28 handleRequestSync:v22];
    v23 = 0;
    v79 = 0;
    v21 = v29;
  }

  error = [v29 error];
  if (error)
  {
    v32 = error;
    if ([error code] == 3727741185)
    {
      v82 = v21;
      v83 = v23;
      v84 = v22;
      v33 = v7;
      v34 = v32;

      LOBYTE(v35) = 0;
      retryAfter = 0;
      continuityDict = 0;
      v36 = 0;
      v37 = 0;
      v77 = 0;
      v38 = 0;
      v80 = 0;
      v81 = v34;
      v39 = 0;
      v17 = v34;
LABEL_85:
      v68 = v79;
LABEL_86:
      if (error)
      {
        v74 = v17;
        *error = v17;
      }

      v67 = v77;
      goto LABEL_89;
    }

    v40 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];

    v17 = v40;
    error = v32;
  }

  v81 = error;
  if (v17)
  {
    v82 = v21;
    v83 = v23;
    v84 = v22;
    retryAfter = 0;
    v33 = v7;
    LOBYTE(v35) = 0;
    v36 = 0;
    v37 = 0;
    v77 = 0;
    v38 = 0;
    v80 = 0;
    v39 = 0;
    continuityDict = 0;
    goto LABEL_85;
  }

  if (continuityCopy)
  {
    continuityDict = [v23 continuityDict];
    retryAfter = [v23 retryAfter];
  }

  else
  {
    [v21 accountSettings];
    continuityDict = retryAfter = 0;
  }

  v17 = 0;
LABEL_30:
  has_internal_content = os_variant_has_internal_content();
  v42 = has_internal_content;
  v43 = sub_100063A54(has_internal_content);
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
  if (v42)
  {
    if (v44)
    {
      *buf = 138543362;
      *&buf[4] = continuityDict;
      v45 = "Got account settings from hub: %{public}@";
      v46 = v43;
      v47 = 12;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
    }
  }

  else if (v44)
  {
    *buf = 0;
    v45 = "Got account settings from hub";
    v46 = v43;
    v47 = 2;
    goto LABEL_35;
  }

  v83 = v23;
  v84 = v22;
  v82 = v21;
  if (continuityCopy && !retryAfter)
  {
    v49 = sub_100063A54(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "List of cloud paired devices received", buf, 2u);
    }

    v50 = [continuityDict objectForKey:@"IdentityServicesIDsList"];
    v36 = v50;
    if (v50)
    {
      v51 = [v50 count];
      if (v51)
      {
        if (after)
        {
          *after = 0;
        }

        v52 = sub_100063A54(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Setting local cloud paired device list to : %{public}@", buf, 0xCu);
        }

        [(MSDAccountManager *)self setCloudPairedDeviceList:v36];
        v77 = 0;
        v80 = 0;
        v53 = 0;
        goto LABEL_79;
      }
    }

    v56 = v8;
    v62 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response."];

    v35 = 0;
    v77 = 0;
    v80 = 0;
    v53 = 0;
    if (after)
    {
      *after = 0;
    }

LABEL_77:
    v17 = v62;
    v8 = v56;
LABEL_81:
    v39 = v53;
    v33 = v7;
    existingAccounts3 = [(MSDAccountManager *)self existingAccounts];
    if (existingAccounts3)
    {
      v38 = existingAccounts3;
      v70 = v8;
      v71 = [existingAccounts3 objectForKey:@"Account"];
      v72 = [v38 objectForKey:@"Account"];
      v37 = [NSDictionary dictionaryWithObjectsAndKeys:v71, @"iCloudAccount", v72, @"iTunesAccount", 0];

      v8 = v70;
    }

    else
    {
      v37 = 0;
      v38 = &__NSDictionary0__struct;
    }

    bundleInProgress = [v8 bundleInProgress];
    [bundleInProgress updateComponentProgress:@"Accounts" withResult:v35 withAdditionalInfo:v37];

    goto LABEL_85;
  }

  v54 = [continuityDict objectForKey:@"iCloud"];
  v55 = [continuityDict objectForKey:@"iTunes"];
  if (v54 | v55)
  {
    v53 = v55;
    if (after && continuityCopy)
    {
      v55 = retryAfter;
      *after = v55;
    }

    v56 = v8;
    v35 = sub_100063A54(v55);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Signing out existing iCloud account.", buf, 2u);
    }

    [v54 objectForKey:@"PwdForExistingAccount"];
    v77 = v89[1] = v17;
    LODWORD(v35) = [MSDAccountManager _signOutiCloudAccountWithPassword:"_signOutiCloudAccountWithPassword:outError:" outError:?];
    v57 = v17;

    v80 = v54;
    if (v35)
    {
      v35 = sub_100063A54(v58);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Signing out existing iTunes account.", buf, 2u);
      }

      v89[0] = v57;
      LODWORD(v35) = [(MSDAccountManager *)self _signOutiTunesAccount:v89];
      v17 = v89[0];

      if (!v35)
      {
        v39 = v53;
        v33 = v7;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        goto LABEL_94;
      }

      v60 = sub_100063A54(v59);
      v8 = v56;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Wait for some extra time to make sure accounts complete signout.", buf, 2u);
      }

      sleep(0xAu);
      if (!v54)
      {
        goto LABEL_62;
      }

      v88 = v17;
      LODWORD(v35) = [(MSDAccountManager *)self _setupiCloudAccountWithSettings:v54 outError:&v88];
      v57 = v88;

      if (v35)
      {
        v17 = v57;
        v8 = v56;
LABEL_62:
        if (!v53)
        {
          v36 = 0;
LABEL_79:
          v35 = 1;
          goto LABEL_81;
        }

        v87 = v17;
        v61 = [(MSDAccountManager *)self _setupiTunesAccountWithSettings:v53 outError:&v87];
        v62 = v87;

        v36 = 0;
        if (v61)
        {
          v35 = 1;
          goto LABEL_77;
        }

        v39 = v53;
        v33 = v7;
        LOBYTE(v35) = 0;
        v17 = v62;
        v37 = 0;
        v38 = 0;
        goto LABEL_94;
      }
    }

    v39 = v53;
    v33 = v7;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v17 = v57;
LABEL_94:
    v8 = v56;
    goto LABEL_85;
  }

  v35 = sub_100063A54(v55);
  v63 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (continuityCopy)
  {
    if (v63)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No iCloud or iTunes account settings provided. Skip setting up any account.", buf, 2u);
    }

    v65 = sub_100063A54(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      intValue = [retryAfter intValue];
      *buf = 67109120;
      *&buf[4] = intValue;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Waiting %d sec before trying endpoint again", buf, 8u);
    }

    v35 = 0;
    v36 = 0;
    v77 = 0;
    v80 = 0;
    if (after)
    {
      *after = retryAfter;
    }

    v53 = 0;
    goto LABEL_81;
  }

  v33 = v7;
  if (v63)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No iCloud or iTunes account settings provided. Skip setting up any account.", buf, 2u);
  }

  [(MSDAccountManager *)self _forceiCloudKeychainToSyncWithServer];
  v36 = 0;
  v37 = 0;
  v67 = 0;
  v38 = 0;
  v80 = 0;
  v39 = 0;
  LOBYTE(v35) = 1;
  v68 = v79;
LABEL_89:

  return v35;
}

- (BOOL)_setupiCloudAccountWithSettings:(id)settings outError:(id *)error
{
  settingsCopy = settings;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D8374();
    v15 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  v7 = [settingsCopy objectForKey:@"Account"];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1000D8428();
      v15 = 0;
      v10 = 0;
      v12 = 0;
      v11 = 0;
      v9 = 0;
      goto LABEL_18;
    }

    v9 = [settingsCopy objectForKey:@"Password"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [settingsCopy objectForKey:@"Features"];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [settingsCopy objectForKey:@"RecoveryKey"];
          if (v11)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_1000D84DC(error);
              v15 = 0;
              v12 = 0;
              goto LABEL_18;
            }
          }

          v12 = [settingsCopy objectForKey:@"CDPResetNeeded"];
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_1000D8588(error);
              goto LABEL_26;
            }
          }

          v13 = -[MSDAccountManager _signIniCloudAccount:password:features:recoveryKey:resetCDP:outError:](self, "_signIniCloudAccount:password:features:recoveryKey:resetCDP:outError:", v8, v9, v10, v11, [v12 BOOLValue], error);
          if ((v13 & 1) == 0)
          {
            sub_1000D8634(v13);
LABEL_26:
            v15 = 0;
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      sub_1000D86D0(error);
      v15 = 0;
    }

    else
    {
      sub_1000D877C(error);
      v15 = 0;
      v10 = 0;
    }

    v12 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v14 = sub_100063A54(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No iCloud account information in settings. iCloud account setup skipped.", v17, 2u);
  }

  v10 = 0;
  v12 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0;
LABEL_17:
  v15 = 1;
LABEL_18:

  return v15;
}

- (BOOL)_setupiTunesAccountWithSettings:(id)settings outError:(id *)error
{
  settingsCopy = settings;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D8828();
    v12 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v7 = [settingsCopy objectForKey:@"Account"];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1000D88DC();
      v12 = 0;
      v9 = 0;
      goto LABEL_12;
    }

    v9 = [settingsCopy objectForKey:@"Password"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_1000D8A2C(error);
      goto LABEL_14;
    }

    v10 = [(MSDAccountManager *)self _signIniTunesAccount:v8 password:v9 outError:error];
    if ((v10 & 1) == 0)
    {
      sub_1000D8990(v10);
LABEL_14:
      v12 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = sub_100063A54(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No iTunes account information in settings. iTunes account setup skipped.", v14, 2u);
    }

    v9 = 0;
    v8 = 0;
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)_signIniTunesAccount:(id)account password:(id)password outError:(id *)error
{
  passwordCopy = password;
  accountCopy = account;
  v10 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v10 setUsername:accountCopy];

  [(MSDAccountContext *)v10 setPassword:passwordCopy];
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(error) = [accountManagerHelper performiTunesAccountSignInWithContext:v10 outError:error];

  return error;
}

- (BOOL)_signOutiTunesAccount:(id *)account
{
  v5 = objc_alloc_init(MSDAccountContext);
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(account) = [accountManagerHelper performiTunesAccountSignOutWithContext:v5 outError:account];

  return account;
}

- (BOOL)_signOutiCloudAccountWithPassword:(id)password outError:(id *)error
{
  passwordCopy = password;
  v7 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v7 setPassword:passwordCopy];

  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  LOBYTE(error) = [accountManagerHelper performiCloudAccountSignOutWithContext:v7 outError:error];

  return error;
}

- (void)_forceiCloudKeychainToSyncWithServer
{
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  [accountManagerHelper forceiCloudKeychainToSyncWithServerAndError:0];
}

- (BOOL)_checkCloudPairedDevices:(id)devices
{
  devicesCopy = devices;
  cloudPairedDevices = [(MSDAccountManager *)self cloudPairedDevices];
  v6 = cloudPairedDevices;
  if (!devicesCopy)
  {
    sub_1000D8BC8(cloudPairedDevices);
LABEL_17:
    v13 = 0;
    goto LABEL_14;
  }

  if (!cloudPairedDevices)
  {
    sub_1000D8B70(0);
    goto LABEL_17;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = devicesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v6 containsObject:{v12, v15}] & 1) == 0)
        {
          sub_1000D8AD8(v12);
          v13 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

LABEL_14:
  return v13;
}

- (void)_syncAppsWithiCloud
{
  v19 = SBSOpenApplicationOptionKeyPreventDismissalOfTransientOverlays;
  v20 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  _iCloudAccountSignedIn = [(MSDAccountManager *)self _iCloudAccountSignedIn];
  if (_iCloudAccountSignedIn)
  {
    v5 = +[MSDAppSwitcherManager sharedInstance];
    [v5 stashSwitcherModelToPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/emptyAppSwitcherModel.plist" overwrite:1];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [&off_10017BDA8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(&off_10017BDA8);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          [MSDAppLauncherTerminator launchApp:v10 withOptions:v3 outError:0];
          sleep(0x3Cu);
          [MSDAppLauncherTerminator terminateApp:v10 outError:0];
        }

        v7 = [&off_10017BDA8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v11 = +[MSDAppSwitcherManager sharedInstance];
    [v11 loadStashedSwitcherModelFromPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/emptyAppSwitcherModel.plist"];
  }

  else
  {
    v11 = sub_100063A54(_iCloudAccountSignedIn);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[MSDAccountManager _syncAppsWithiCloud]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s - No iCloud account logged in. Not synching any apps", buf, 0xCu);
    }
  }
}

- (BOOL)_signIniCloudAccount:(id)account password:(id)password features:(id)features recoveryKey:(id)key resetCDP:(BOOL)p outError:(id *)error
{
  pCopy = p;
  keyCopy = key;
  featuresCopy = features;
  passwordCopy = password;
  accountCopy = account;
  v18 = +[MSDTargetDevice sharedInstance];
  v19 = +[MSDMailProcessor sharedInstance];
  v20 = objc_alloc_init(MSDAccountContext);
  [(MSDAccountContext *)v20 setUsername:accountCopy];

  [(MSDAccountContext *)v20 setPassword:passwordCopy];
  [(MSDAccountContext *)v20 setRecoveryKey:keyCopy];
  [(MSDAccountContext *)v20 setResetCDP:pCopy];
  [(MSDAccountContext *)v20 setFeatures:featuresCopy];

  [(MSDAccountContext *)v20 setLocalSecret:@"123456"];
  if (([v18 createTemporaryPasscodeIfNeeded] & 1) == 0)
  {
    sub_1000C1390(error, 3727741045, @"Failed to setup device local secret.");
    goto LABEL_18;
  }

  [v18 unlockDeviceKeybagIfNeeded];
  [v18 acquireDeviceKeybagAssertionIfNeeded];
  accountManagerHelper = [(MSDAccountManager *)self accountManagerHelper];
  v22 = [accountManagerHelper performiCloudAccountSignInWithContext:v20 outError:error];

  if (!v22)
  {
LABEL_18:
    v37 = 0;
    getIdentityServicesID = 0;
    goto LABEL_11;
  }

  accountManagerHelper2 = [(MSDAccountManager *)self accountManagerHelper];
  getIdentityServicesID = [accountManagerHelper2 getIdentityServicesID];

  v25 = +[MSDPreferencesFile sharedInstance];
  [v25 setObject:getIdentityServicesID forKey:@"IdentityServicesID"];

  if (pCopy)
  {
    v27 = sub_100063A54(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Received CDP reset request. Generate new recovery key for iCloud account!", v39, 2u);
    }

    accountManagerHelper3 = [(MSDAccountManager *)self accountManagerHelper];
    v29 = [accountManagerHelper3 generateiCloudAccountRecoveryKeyWithError:error];

    if (!v29)
    {
      v37 = 0;
      goto LABEL_16;
    }

    has_internal_content = os_variant_has_internal_content();
    v31 = has_internal_content;
    v32 = sub_100063A54(has_internal_content);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *v39 = 138543362;
        *&v39[4] = v29;
        v34 = "New recovery key generated: %{public}@";
        v35 = v32;
        v36 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v34, v39, v36);
      }
    }

    else if (v33)
    {
      *v39 = 141558274;
      *&v39[4] = 1752392040;
      *&v39[12] = 2112;
      *&v39[14] = v29;
      v34 = "New recovery key generated: %{mask.hash}@";
      v35 = v32;
      v36 = 22;
      goto LABEL_14;
    }

    [v18 saveiCloudAccountRecoveryKey:v29];
    [v19 sendImmediateDeviceInfoPing];
    v37 = 1;
    goto LABEL_16;
  }

  v37 = 1;
LABEL_11:
  v29 = keyCopy;
LABEL_16:
  [v18 removeTemporaryPasscodeIfNeeded];
  [(MSDAccountManager *)self _forceiCloudKeychainToSyncWithServer];

  return v37;
}

@end