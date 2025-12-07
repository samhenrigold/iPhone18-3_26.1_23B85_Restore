@interface FMDAccountStoreFMIP
- (FMDAccountStoreFMIP)init;
- (id)_accountFromBackedUpDictionary:(id)dictionary andNotBackedUpDictionary:(id)upDictionary;
- (id)_backedUpDictionaryFromAccount:(id)account;
- (id)_notBackedUpDictionaryFromAccount:(id)account;
- (id)_stateChangeCriteriaForAccount:(id)account;
- (id)accountsFileURL;
- (id)accountsNotBackedUpFileURL;
- (id)deprecatedAccountsFileURL;
- (id)deprecatedAccountsNotBackedUpFileURL;
- (id)loadAccount;
- (void)_checkOSVersionHistoryUsingBackedUpVersion:(id)version nonBackedUpVersion:(id)upVersion;
- (void)_loadTestAccount;
- (void)_saveChanges;
- (void)_saveDictionaryForAccount:(id)account;
- (void)migrateAccountsFiles;
- (void)saveAccount:(id)account;
@end

@implementation FMDAccountStoreFMIP

- (FMDAccountStoreFMIP)init
{
  v18.receiver = self;
  v18.super_class = FMDAccountStoreFMIP;
  v2 = [(FMDAccountStoreFMIP *)&v18 init];
  if (v2)
  {
    v3 = [FMDataArchiver alloc];
    accountsFileURL = [(FMDAccountStoreFMIP *)v2 accountsFileURL];
    v5 = [v3 initWithFileURL:accountsFileURL];
    [(FMDAccountStoreFMIP *)v2 setBackedUpDataArchiver:v5];

    backedUpDataArchiver = [(FMDAccountStoreFMIP *)v2 backedUpDataArchiver];
    [backedUpDataArchiver setDataProtectionClass:4];

    backedUpDataArchiver2 = [(FMDAccountStoreFMIP *)v2 backedUpDataArchiver];
    [backedUpDataArchiver2 setBackedUp:1];

    backedUpDataArchiver3 = [(FMDAccountStoreFMIP *)v2 backedUpDataArchiver];
    [backedUpDataArchiver3 setCreateDirectories:1];

    v9 = [FMDataArchiver alloc];
    accountsNotBackedUpFileURL = [(FMDAccountStoreFMIP *)v2 accountsNotBackedUpFileURL];
    v11 = [v9 initWithFileURL:accountsNotBackedUpFileURL];
    [(FMDAccountStoreFMIP *)v2 setNotBackedUpDataArchiver:v11];

    notBackedUpDataArchiver = [(FMDAccountStoreFMIP *)v2 notBackedUpDataArchiver];
    [notBackedUpDataArchiver setDataProtectionClass:4];

    notBackedUpDataArchiver2 = [(FMDAccountStoreFMIP *)v2 notBackedUpDataArchiver];
    [notBackedUpDataArchiver2 setBackedUp:0];

    notBackedUpDataArchiver3 = [(FMDAccountStoreFMIP *)v2 notBackedUpDataArchiver];
    [notBackedUpDataArchiver3 setCreateDirectories:1];

    v15 = objc_alloc_init(FMStateCapture);
    [(FMDAccountStoreFMIP *)v2 setStateCapture:v15];

    stateCapture = [(FMDAccountStoreFMIP *)v2 stateCapture];
    [stateCapture setStateCaptureBlock:&stru_1002CF3D8];
  }

  return v2;
}

- (id)loadAccount
{
  if ([(FMDAccountStoreFMIP *)self initialized])
  {
    goto LABEL_34;
  }

  [(FMDAccountStoreFMIP *)self migrateAccountsFiles];
  v3 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist"];
  if (!v3)
  {
    v4 = sub_100002880(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100229B24();
    }

    backedUpDataArchiver = [(FMDAccountStoreFMIP *)self backedUpDataArchiver];
    v6 = [NSSet setWithObject:objc_opt_class()];
    v44 = 0;
    v3 = [backedUpDataArchiver readDictionaryAndClasses:v6 error:&v44];
    v7 = v44;

    if (!v3 || v7)
    {
      v9 = sub_100002880(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100229B58();
      }

      v10 = +[FMDEventLoggerGeneral sharedInstance];
      [v10 sendError:v7 forEventName:@"FMDAccountStoreFMIPFailedReadEventName"];
    }
  }

  v11 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist"];
  if (!v11)
  {
    v12 = sub_100002880(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100229BC0();
    }

    notBackedUpDataArchiver = [(FMDAccountStoreFMIP *)self notBackedUpDataArchiver];
    v14 = [NSSet setWithObject:objc_opt_class()];
    v43 = 0;
    v11 = [notBackedUpDataArchiver readDictionaryAndClasses:v14 error:&v43];
    v15 = v43;

    if (!v11 || v15)
    {
      v17 = sub_100002880(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100229BF4();
      }

      v18 = +[FMDEventLoggerGeneral sharedInstance];
      [v18 sendError:v15 forEventName:@"FMDAccountStoreFMIPFailedReadEventName"];
    }
  }

  v19 = [(FMDAccountStoreFMIP *)self _accountFromBackedUpDictionary:v3 andNotBackedUpDictionary:v11];
  [(FMDAccountStoreFMIP *)self setAccount:v19];

  account = [(FMDAccountStoreFMIP *)self account];

  if (account)
  {
    v21 = [v3 objectForKeyedSubscript:off_100312DD0];
    v22 = [v11 objectForKeyedSubscript:off_100312DD0];
    [(FMDAccountStoreFMIP *)self _checkOSVersionHistoryUsingBackedUpVersion:v21 nonBackedUpVersion:v22];
  }

  v23 = +[FMSystemInfo sharedInstance];
  if (([v23 isInternalBuild] & 1) == 0)
  {

    goto LABEL_26;
  }

  v24 = +[NSFileManager defaultManager];
  v25 = [v24 fileExistsAtPath:@"/var/tmp/fmipAccountInfo.plist"];

  if (!v25)
  {
LABEL_26:
    account2 = [(FMDAccountStoreFMIP *)self account];

    if (account2)
    {
      v27 = +[FMDAppleAccountManager sharedInstance];
      account3 = [(FMDAccountStoreFMIP *)self account];
      v29 = [v27 populateiCloudAccountInfoIntoAccount:account3];

      if ((v29 & 1) == 0)
      {
        v31 = sub_100002880(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_100229C5C(self, v31);
        }

        [(FMDAccountStoreFMIP *)self setAccount:0];
        [(FMDAccountStoreFMIP *)self _saveChanges];
      }
    }

    goto LABEL_31;
  }

  [(FMDAccountStoreFMIP *)self _loadTestAccount];
LABEL_31:
  account4 = [(FMDAccountStoreFMIP *)self account];
  v33 = [(FMDAccountStoreFMIP *)self _stateChangeCriteriaForAccount:account4];
  [(FMDAccountStoreFMIP *)self setFmipStateChangeCriteria:v33];

  account5 = [(FMDAccountStoreFMIP *)self account];
  -[FMDAccountStoreFMIP setOldLowBatteryState:](self, "setOldLowBatteryState:", [account5 lowBatteryLocateEnabled]);

  v36 = sub_100002880(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    account6 = [(FMDAccountStoreFMIP *)self account];
    username = [account6 username];
    *buf = 138412290;
    v46 = username;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Loaded FMIP account for user %@ from the store", buf, 0xCu);
  }

  [(FMDAccountStoreFMIP *)self setInitialized:1];
  v39 = +[FMDFMIPSharedStateManager sharedInstance];
  account7 = [(FMDAccountStoreFMIP *)self account];
  [v39 setFMiPActive:account7 != 0];

LABEL_34:
  account8 = [(FMDAccountStoreFMIP *)self account];

  return account8;
}

- (void)saveAccount:(id)account
{
  accountCopy = account;
  if (accountCopy || ([(FMDAccountStoreFMIP *)self account], v4 = objc_claimAutoreleasedReturnValue(), v4, v6 = 0, v4))
  {
    [(FMDAccountStoreFMIP *)self setAccount:accountCopy];
    _saveChanges = [(FMDAccountStoreFMIP *)self _saveChanges];
    v6 = accountCopy;
  }

  _objc_release_x1(_saveChanges, v6);
}

- (void)_loadTestAccount
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = @"/var/tmp/fmipAccountInfo.plist";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using test account info from %@", &v22, 0xCu);
  }

  account = [(FMDAccountStoreFMIP *)self account];

  if (!account)
  {
    v5 = objc_alloc_init(FMDFMIPAccount);
    [(FMDAccountStoreFMIP *)self setAccount:v5];

    v6 = +[NSDate date];
    account2 = [(FMDAccountStoreFMIP *)self account];
    [account2 setAccountAddTime:v6];
  }

  v8 = [NSDictionary dictionaryWithContentsOfFile:@"/var/tmp/fmipAccountInfo.plist"];
  v9 = [v8 objectForKeyedSubscript:off_100313398];
  account3 = [(FMDAccountStoreFMIP *)self account];
  [account3 setUsername:v9];

  v11 = [v8 objectForKeyedSubscript:off_1003133A0];
  account4 = [(FMDAccountStoreFMIP *)self account];
  [account4 setDsid:v11];

  v13 = [v8 objectForKeyedSubscript:off_1003133B0];
  account5 = [(FMDAccountStoreFMIP *)self account];
  [account5 setFmipAuthToken:v13];

  v15 = [v8 objectForKeyedSubscript:off_1003133C8];
  account6 = [(FMDAccountStoreFMIP *)self account];
  [account6 setServerHost:v15];

  v17 = [v8 objectForKeyedSubscript:off_1003133D0];
  account7 = [(FMDAccountStoreFMIP *)self account];
  [account7 setServerProtocolScheme:v17];

  v19 = [v8 objectForKeyedSubscript:off_1003133D8];
  account8 = [(FMDAccountStoreFMIP *)self account];
  [account8 setApsEnvironment:v19];

  account9 = [(FMDAccountStoreFMIP *)self account];
  [account9 setFmipEnableContext:2];

  [(FMDAccountStoreFMIP *)self _saveChanges];
}

- (void)_saveChanges
{
  account = [(FMDAccountStoreFMIP *)self account];

  if (!account)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist"];

    if (v5)
    {
      v7 = sub_100002880(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100229CF0();
      }

      v8 = +[NSFileManager defaultManager];
      v57 = 0;
      [v8 removeItemAtPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist" error:&v57];
      v9 = v57;

      if (v9)
      {
        fm_isFileNotFoundError = [v9 fm_isFileNotFoundError];
        if ((fm_isFileNotFoundError & 1) == 0)
        {
          v11 = sub_100002880(fm_isFileNotFoundError);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100229D24();
          }
        }
      }
    }

    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist"];

    if (v13)
    {
      v15 = sub_100002880(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100229D98();
      }

      v16 = +[NSFileManager defaultManager];
      v56 = 0;
      [v16 removeItemAtPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist" error:&v56];
      v17 = v56;

      if (v17)
      {
        fm_isFileNotFoundError2 = [v17 fm_isFileNotFoundError];
        if ((fm_isFileNotFoundError2 & 1) == 0)
        {
          v19 = sub_100002880(fm_isFileNotFoundError2);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_100229DCC();
          }
        }
      }
    }

    v20 = +[NSFileManager defaultManager];
    accountsFileURL = [(FMDAccountStoreFMIP *)self accountsFileURL];
    v55 = 0;
    [v20 removeItemAtURL:accountsFileURL error:&v55];
    v22 = v55;

    if (v22)
    {
      fm_isFileNotFoundError3 = [v22 fm_isFileNotFoundError];
      if ((fm_isFileNotFoundError3 & 1) == 0)
      {
        v24 = sub_100002880(fm_isFileNotFoundError3);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100229E40();
        }
      }
    }

    v25 = +[NSFileManager defaultManager];
    accountsNotBackedUpFileURL = [(FMDAccountStoreFMIP *)self accountsNotBackedUpFileURL];
    v54 = v22;
    [v25 removeItemAtURL:accountsNotBackedUpFileURL error:&v54];
    v27 = v54;

    if (v27)
    {
      fm_isFileNotFoundError4 = [v27 fm_isFileNotFoundError];
      if ((fm_isFileNotFoundError4 & 1) == 0)
      {
        v29 = sub_100002880(fm_isFileNotFoundError4);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_100229EA8();
        }
      }
    }
  }

  account2 = [(FMDAccountStoreFMIP *)self account];

  if (account2)
  {
    account3 = [(FMDAccountStoreFMIP *)self account];
    [(FMDAccountStoreFMIP *)self _saveDictionaryForAccount:account3];
  }

  v32 = +[FMDFMIPSharedStateManager sharedInstance];
  account4 = [(FMDAccountStoreFMIP *)self account];
  [v32 setFMiPActive:account4 != 0];

  v34 = +[FMDAppleAccountManager sharedInstance];
  [v34 setFMIPDataclass:0];

  account5 = [(FMDAccountStoreFMIP *)self account];
  v36 = [(FMDAccountStoreFMIP *)self _stateChangeCriteriaForAccount:account5];

  v38 = sub_100002880(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_100229F10(self);
  }

  fmipStateChangeCriteria = [(FMDAccountStoreFMIP *)self fmipStateChangeCriteria];
  v40 = [v36 isEqualToDictionary:fmipStateChangeCriteria];

  if ((v40 & 1) == 0)
  {
    v42 = sub_100002880(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Sending FMIP state change notification", v53, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kFMIPStateDidChangeNotification, 0, 0, 1u);
    v44 = +[NSNotificationCenter defaultCenter];
    [v44 postNotificationName:@"FMIPStateChangeLocalNotification" object:0];
  }

  [(FMDAccountStoreFMIP *)self setFmipStateChangeCriteria:v36];
  oldLowBatteryState = [(FMDAccountStoreFMIP *)self oldLowBatteryState];
  account6 = [(FMDAccountStoreFMIP *)self account];
  lowBatteryLocateEnabled = [account6 lowBatteryLocateEnabled];

  if (oldLowBatteryState != lowBatteryLocateEnabled)
  {
    v49 = sub_100002880(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Posting FMDFMIPLowBatteryLocateStateDidChangeLocalNotification", v53, 2u);
    }

    v50 = +[NSNotificationCenter defaultCenter];
    [v50 postNotificationName:@"FMDFMIPLowBatteryLocateStateDidChangeLocalNotification" object:0];

    v51 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v51, kFMIPLowBatteryLocateStateDidChangeNotification, 0, 0, 1u);
    account7 = [(FMDAccountStoreFMIP *)self account];
    -[FMDAccountStoreFMIP setOldLowBatteryState:](self, "setOldLowBatteryState:", [account7 lowBatteryLocateEnabled]);
  }
}

- (void)_checkOSVersionHistoryUsingBackedUpVersion:(id)version nonBackedUpVersion:(id)upVersion
{
  versionCopy = version;
  v7 = +[FMDSystemConfig sharedInstance];
  productVersion = [v7 productVersion];

  if (versionCopy)
  {
    if ([versionCopy isEqualToString:productVersion])
    {
      goto LABEL_16;
    }

    v9 = upVersion ? @"u" : @"b";
    v10 = [(__CFString *)v9 stringByAppendingString:versionCopy];
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = @"old";
  }

  account = [(FMDAccountStoreFMIP *)self account];
  versionHistory = [account versionHistory];

  if ([versionHistory count])
  {
    lastObject = [versionHistory lastObject];
    v14 = [(__CFString *)v10 isEqualToString:lastObject];

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [versionHistory arrayByAddingObject:v10];
      if ([v15 count] >= 0x15)
      {
        v16 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];

        v15 = v16;
      }
    }
  }

  else
  {
    v18 = v10;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
  }

  account2 = [(FMDAccountStoreFMIP *)self account];
  [account2 setVersionHistory:v15];

  [(FMDAccountStoreFMIP *)self _saveChanges];
LABEL_16:
}

- (void)_saveDictionaryForAccount:(id)account
{
  accountCopy = account;
  v5 = [(FMDAccountStoreFMIP *)self _backedUpDictionaryFromAccount:accountCopy];
  v6 = [(FMDAccountStoreFMIP *)self _notBackedUpDictionaryFromAccount:accountCopy];

  v8 = sub_100002880(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100229FB4(v5);
  }

  v9 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:0];
  [v9 writeToFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist" atomically:1];
  backedUpDataArchiver = [(FMDAccountStoreFMIP *)self backedUpDataArchiver];
  v11 = [backedUpDataArchiver saveDictionary:v5];

  if (v11)
  {
    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }

  v14 = sub_100002880(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A0A8(v6);
  }

  v15 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:0];
  [v15 writeToFile:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist" atomically:1];
  notBackedUpDataArchiver = [(FMDAccountStoreFMIP *)self notBackedUpDataArchiver];
  v17 = [notBackedUpDataArchiver saveDictionary:v6];

  if (v17)
  {
    v19 = sub_100002880(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10022A040();
    }
  }
}

- (id)_accountFromBackedUpDictionary:(id)dictionary andNotBackedUpDictionary:(id)upDictionary
{
  upDictionaryCopy = upDictionary;
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    dictionary = objc_alloc_init(FMDFMIPAccount);
    v7 = [dictionaryCopy objectForKeyedSubscript:off_100312DA0];
    [dictionary setDsid:v7];
    v8 = [dictionaryCopy objectForKeyedSubscript:off_100312DB8];
    [dictionary setFmipEnableContext:{objc_msgSend(v8, "unsignedIntValue")}];

    v9 = [dictionaryCopy objectForKeyedSubscript:off_100312DD8];
    [dictionary setVersionHistory:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:off_100312DE0];
    [dictionary setLastLoggedInDsid:v10];

    v11 = [dictionaryCopy objectForKeyedSubscript:off_100312DF0];
    [dictionary setLowBatteryLocateEnabled:{objc_msgSend(v11, "BOOLValue")}];

    v12 = [dictionaryCopy objectForKeyedSubscript:off_100312DE8];

    [v12 doubleValue];
    v14 = v13;

    if (v14 > 0.0)
    {
      v15 = [NSDate dateWithTimeIntervalSince1970:v14];
      [dictionary setAccountAddTime:v15];
    }

    v16 = [upDictionaryCopy objectForKeyedSubscript:off_100312DA0];
    if ([v16 isEqualToString:v7])
    {
      v17 = [upDictionaryCopy objectForKeyedSubscript:off_100312DA8];
      [dictionary setLastIdentityTime:v17];

      v18 = [upDictionaryCopy objectForKeyedSubscript:off_100312DB0];
      [dictionary setUnregisterState:{objc_msgSend(v18, "unsignedIntValue")}];

      v19 = [upDictionaryCopy objectForKeyedSubscript:off_100312DC0];
      [dictionary setFmipDisableContext:{objc_msgSend(v19, "unsignedIntValue")}];

      v20 = [upDictionaryCopy objectForKeyedSubscript:off_100312DC8];
      [dictionary setLastUnregisterFailedTime:v20];
    }
  }

  return dictionary;
}

- (id)_backedUpDictionaryFromAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = off_100312DA0;
    dsid = [accountCopy dsid];
    [v4 fm_safelyMapKey:v5 toObject:dsid];

    if ([accountCopy fmipEnableContext])
    {
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [accountCopy fmipEnableContext]);
      [v4 setObject:v7 forKeyedSubscript:off_100312DB8];
    }

    v8 = +[FMDSystemConfig sharedInstance];
    productVersion = [v8 productVersion];
    v10 = productVersion;
    if (productVersion)
    {
      v11 = productVersion;
    }

    else
    {
      v11 = &stru_1002DCE08;
    }

    [v4 setObject:v11 forKeyedSubscript:off_100312DD0];

    lastLoggedInDsid = [accountCopy lastLoggedInDsid];

    if (lastLoggedInDsid)
    {
      lastLoggedInDsid2 = [accountCopy lastLoggedInDsid];
      [v4 setObject:lastLoggedInDsid2 forKeyedSubscript:off_100312DE0];
    }

    versionHistory = [accountCopy versionHistory];

    if (versionHistory)
    {
      versionHistory2 = [accountCopy versionHistory];
      [v4 setObject:versionHistory2 forKeyedSubscript:off_100312DD8];
    }

    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy lowBatteryLocateEnabled]);
    [v4 setObject:v16 forKeyedSubscript:off_100312DF0];

    accountAddTime = [accountCopy accountAddTime];

    if (accountAddTime)
    {
      accountAddTime2 = [accountCopy accountAddTime];
      [accountAddTime2 timeIntervalSince1970];
      v19 = [NSNumber numberWithDouble:?];
      [v4 setObject:v19 forKeyedSubscript:off_100312DE8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_notBackedUpDictionaryFromAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = off_100312DA0;
    dsid = [accountCopy dsid];
    [v4 fm_safelyMapKey:v5 toObject:dsid];

    v7 = off_100312DA8;
    lastIdentityTime = [accountCopy lastIdentityTime];
    [v4 fm_safelyMapKey:v7 toObject:lastIdentityTime];

    v9 = off_100312DC8;
    lastUnregisterFailedTime = [accountCopy lastUnregisterFailedTime];
    [v4 fm_safelyMapKey:v9 toObject:lastUnregisterFailedTime];

    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [accountCopy unregisterState]);
    [v4 setObject:v11 forKeyedSubscript:off_100312DB0];

    if ([accountCopy fmipDisableContext])
    {
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [accountCopy fmipDisableContext]);
      [v4 setObject:v12 forKeyedSubscript:off_100312DC0];
    }

    v13 = +[FMDSystemConfig sharedInstance];
    productVersion = [v13 productVersion];
    v15 = productVersion;
    if (productVersion)
    {
      v16 = productVersion;
    }

    else
    {
      v16 = &stru_1002DCE08;
    }

    [v4 setObject:v16 forKeyedSubscript:off_100312DD0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_stateChangeCriteriaForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(NSMutableDictionary);
  dsid = [accountCopy dsid];
  [v4 fm_safelyMapKey:@"dsid" toObject:dsid];

  unregisterState = [accountCopy unregisterState];
  v7 = [NSNumber numberWithUnsignedInteger:unregisterState];
  [v4 setObject:v7 forKeyedSubscript:@"unregisterState"];

  return v4;
}

- (id)accountsFileURL
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.FMIPAccounts"];

  return v4;
}

- (id)accountsNotBackedUpFileURL
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup"];

  return v4;
}

- (void)migrateAccountsFiles
{
  deprecatedAccountsFileURL = [(FMDAccountStoreFMIP *)self deprecatedAccountsFileURL];
  accountsFileURL = [(FMDAccountStoreFMIP *)self accountsFileURL];
  v5 = +[NSFileManager defaultManager];
  [v5 fm_migrateFileFromURL:deprecatedAccountsFileURL toURL:accountsFileURL];

  deprecatedAccountsNotBackedUpFileURL = [(FMDAccountStoreFMIP *)self deprecatedAccountsNotBackedUpFileURL];

  accountsNotBackedUpFileURL = [(FMDAccountStoreFMIP *)self accountsNotBackedUpFileURL];

  v7 = +[NSFileManager defaultManager];
  [v7 fm_migrateFileFromURL:deprecatedAccountsNotBackedUpFileURL toURL:accountsNotBackedUpFileURL];
}

- (id)deprecatedAccountsFileURL
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.FMIPAccounts"];

  return v5;
}

- (id)deprecatedAccountsNotBackedUpFileURL
{
  v2 = [FMSharedFileContainer alloc];
  v3 = [v2 initWithIdentifier:off_100312B70];
  v4 = [v3 url];
  v5 = [v4 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup"];

  return v5;
}

@end