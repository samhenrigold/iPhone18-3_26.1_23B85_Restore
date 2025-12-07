@interface FMDAppleAccountManager
+ (id)sharedInstance;
- (BOOL)_isBeneficiaryAccount;
- (BOOL)isKnownFMIPAccount:(id)account;
- (BOOL)populateiCloudAccountInfoIntoAccount:(id)account;
- (FMDAppleAccountManager)init;
- (id)_currentFMDFMIPAccount;
- (id)fmipACAccount;
- (id)iCloudACAccount;
- (id)initSingleton;
- (void)dealloc;
- (void)fixFMIPAuthTokenShouldForce:(BOOL)force;
- (void)forceUserAuthForiCloudAccountForApp:(id)app message:(id)message really:(BOOL)really withCompletion:(id)completion;
- (void)setFMIPDataclass:(BOOL)dataclass;
- (void)syncFMIPAccountInfo;
@end

@implementation FMDAppleAccountManager

+ (id)sharedInstance
{
  if (qword_100314660 != -1)
  {
    sub_100229574();
  }

  v2 = qword_100314658;
  if (!qword_100314658)
  {
    v3 = sub_100002880(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMDAppleAccountManager singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_100314658;
  }

  return v2;
}

- (FMDAppleAccountManager)init
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1002295C8();
  }

  return 0;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = FMDAppleAccountManager;
  v2 = [(FMDAppleAccountManager *)&v5 init];
  if (v2)
  {
    objc_storeStrong(&qword_100314658, v2);
    v3 = objc_alloc_init(ACAccountStore);
    [(FMDAppleAccountManager *)v2 setAccountStore:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1002258DC(self, v3);
  }

  v4 = qword_100314658;
  qword_100314658 = 0;

  v5.receiver = self;
  v5.super_class = FMDAppleAccountManager;
  [(FMDAppleAccountManager *)&v5 dealloc];
}

- (void)syncFMIPAccountInfo
{
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  v4 = kAccountDataclassDeviceLocator;
  v5 = [iCloudACAccount isProvisionedForDataclass:kAccountDataclassDeviceLocator];
  v6 = v5;
  v7 = sub_100002880(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1002295FC(v6, v7);
  }

  if ((v6 & 1) == 0)
  {
    account = sub_100002880(v8);
    if (os_log_type_enabled(&account->super.super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&_mh_execute_header, &account->super.super, OS_LOG_TYPE_DEFAULT, "device locator is not provisioned. fmdd may not work", v24, 2u);
    }

    goto LABEL_22;
  }

  v9 = +[FMSystemInfo sharedInstance];
  if ([v9 isInternalBuild])
  {
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:@"/var/tmp/fmipAccountInfo.plist"];

    if (v11)
    {
      goto LABEL_23;
    }

    if (!iCloudACAccount)
    {
LABEL_12:
      v13 = +[FMDServiceProvider activeServiceProvider];
      account = [v13 account];

      if (!iCloudACAccount || [(FMDAccount *)account unregisterState])
      {
        goto LABEL_22;
      }

      v14 = objc_alloc_init(FMDFMIPAccount);
      [(FMDFMIPAccount *)v14 copyInfoFromAccount:account];
      [(FMDFMIPAccount *)v14 applyPropertiesFromACAccount:iCloudACAccount];
      v15 = +[FMDServiceProvider activeServiceProvider];
      [v15 updateAccount:v14];

LABEL_21:
LABEL_22:

      goto LABEL_23;
    }
  }

  else
  {

    if (!iCloudACAccount)
    {
      goto LABEL_12;
    }
  }

  if ([(FMDAppleAccountManager *)self isKnownFMIPAccount:iCloudACAccount])
  {
    goto LABEL_12;
  }

  v16 = [iCloudACAccount isEnabledForDataclass:v4];
  v17 = v16;
  v18 = sub_100002880(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67109120;
    v24[1] = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "isDeviceLocatorEnabled %d", v24, 8u);
  }

  if (v17)
  {
    v20 = sub_100002880(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "iCloud account has FMIP dataclass enabled but findmydeviced has no record of it. Looks like an upgrade from an older version", v24, 2u);
    }

    account = objc_alloc_init(FMDFMIPAccount);
    [(FMDFMIPAccount *)account applyPropertiesFromACAccount:iCloudACAccount];
    [(FMDFMIPAccount *)account setFmipEnableContext:1];
    v21 = +[NSDate date];
    [(FMDAccount *)account setAccountAddTime:v21];

    _currentFMDFMIPAccount = [(FMDAppleAccountManager *)self _currentFMDFMIPAccount];
    dsid = [_currentFMDFMIPAccount dsid];
    [(FMDFMIPAccount *)account setLastLoggedInDsid:dsid];

    v14 = +[FMDServiceProvider activeServiceProvider];
    [(FMDFMIPAccount *)v14 addAccount:account];
    goto LABEL_21;
  }

LABEL_23:
}

- (id)iCloudACAccount
{
  accountStore = [(FMDAppleAccountManager *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (id)fmipACAccount
{
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  if ([(FMDAppleAccountManager *)self isKnownFMIPAccount:iCloudACAccount])
  {
    v4 = iCloudACAccount;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isKnownFMIPAccount:(id)account
{
  accountCopy = account;
  _currentFMDFMIPAccount = [(FMDAppleAccountManager *)self _currentFMDFMIPAccount];
  aa_personID = [accountCopy aa_personID];

  dsid = [_currentFMDFMIPAccount dsid];
  v8 = [aa_personID isEqualToString:dsid];

  return v8;
}

- (id)_currentFMDFMIPAccount
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  account = [v2 account];

  return account;
}

- (BOOL)populateiCloudAccountInfoIntoAccount:(id)account
{
  accountCopy = account;
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  v6 = iCloudACAccount;
  if (!iCloudACAccount)
  {
    v12 = sub_100002880(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1002296AC();
    }

    goto LABEL_10;
  }

  aa_personID = [iCloudACAccount aa_personID];
  dsid = [accountCopy dsid];
  if (![aa_personID isEqualToString:dsid])
  {

LABEL_8:
    v12 = sub_100002880(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100229678();
    }

LABEL_10:

    v11 = 0;
    goto LABEL_11;
  }

  _isBeneficiaryAccount = [(FMDAppleAccountManager *)self _isBeneficiaryAccount];

  if (_isBeneficiaryAccount)
  {
    goto LABEL_8;
  }

  [accountCopy applyPropertiesFromACAccount:v6];
  v11 = 1;
LABEL_11:

  return v11;
}

- (void)forceUserAuthForiCloudAccountForApp:(id)app message:(id)message really:(BOOL)really withCompletion:(id)completion
{
  reallyCopy = really;
  completionCopy = completion;
  messageCopy = message;
  appCopy = app;
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  v14 = sub_100002880(iCloudACAccount);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    aa_personID = [iCloudACAccount aa_personID];
    *buf = 138412290;
    v24 = aa_personID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "forcing user auth of account %@", buf, 0xCu);
  }

  if (reallyCopy)
  {
    [iCloudACAccount aa_setPassword:0];
  }

  v16 = +[NSMutableDictionary dictionary];
  [v16 fm_safelyMapKey:kACRenewCredentialsShouldForceKey toObject:&__kCFBooleanTrue];
  [v16 fm_safelyMapKey:kACRenewCredentialsProxiedAppBundleIDKey toObject:appCopy];

  [v16 fm_safelyMapKey:@"AARenewShouldForceInteraction" toObject:&__kCFBooleanTrue];
  [v16 fm_safelyMapKey:kACRenewCredentialsReasonStringKey toObject:messageCopy];

  accountStore = [(FMDAppleAccountManager *)self accountStore];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100165C3C;
  v20[3] = &unk_1002CF1D0;
  v21 = iCloudACAccount;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = iCloudACAccount;
  [accountStore renewCredentialsForAccount:v19 options:v16 completion:v20];
}

- (void)fixFMIPAuthTokenShouldForce:(BOOL)force
{
  forceCopy = force;
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  v7 = [(FMDAppleAccountManager *)self isKnownFMIPAccount:iCloudACAccount];
  if (v7)
  {
    aa_fmipAccount = [iCloudACAccount aa_fmipAccount];
    accountStore = [(FMDAppleAccountManager *)self accountStore];
    v34 = 0;
    v10 = [accountStore credentialForAccount:aa_fmipAccount error:&v34];
    v11 = v34;

    oauthToken = [v10 oauthToken];

    if (!oauthToken && v11)
    {
      v14 = sub_100002880(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Token not available due to error : %@", buf, 0xCu);
      }

      domain = [v11 domain];
      if ([domain isEqualToString:ACErrorKeychainDomain])
      {
        code = [v11 code];

        if (code == -34019)
        {
          account = sub_100002880(v17);
          if (os_log_type_enabled(account, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, account, OS_LOG_TYPE_DEFAULT, "No token available because keychain upgrade is pending. Will wait for that to complete", buf, 2u);
          }

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    v30 = forceCopy;
    v31 = v11;
    v19 = +[FMDServiceProvider activeServiceProvider];
    account = [v19 account];

    token = [v10 token];
    if (!token)
    {
      fmipAuthToken = [account fmipAuthToken];
      if (!fmipAuthToken)
      {
        goto LABEL_17;
      }
    }

    token2 = [v10 token];
    fmipAuthToken2 = [account fmipAuthToken];
    v23 = [token2 isEqualToString:fmipAuthToken2];

    if (token)
    {

      if (v23)
      {
LABEL_17:
        aa_personID = [iCloudACAccount aa_personID];
        v26 = sub_100002880(aa_personID);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requesting renewal of account credentials...", buf, 2u);
        }

        accountStore2 = [(FMDAppleAccountManager *)self accountStore];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10016617C;
        v32[3] = &unk_1002CF1F8;
        v33 = aa_personID;
        v28 = aa_personID;
        [accountStore2 renewCredentialsForAccount:iCloudACAccount force:v30 reason:0 completion:v32];

LABEL_24:
        v11 = v31;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_17;
      }
    }

    v29 = sub_100002880(v24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Accounts has a different token, trying to use the new token via sync account info.", buf, 2u);
    }

    [(FMDAppleAccountManager *)self syncFMIPAccountInfo];
    goto LABEL_24;
  }

  aa_fmipAccount = sub_100002880(v7);
  if (os_log_type_enabled(aa_fmipAccount, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, aa_fmipAccount, OS_LOG_TYPE_DEFAULT, "Couldn't find an active FMiP account", buf, 2u);
  }

LABEL_26:
}

- (void)setFMIPDataclass:(BOOL)dataclass
{
  dataclassCopy = dataclass;
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  v6 = iCloudACAccount;
  if (iCloudACAccount)
  {
    v7 = kAccountDataclassDeviceLocator;
    if ([iCloudACAccount isEnabledForDataclass:kAccountDataclassDeviceLocator] != dataclassCopy)
    {
      [v6 setEnabled:dataclassCopy forDataclass:v7];
      accountStore = [(FMDAppleAccountManager *)self accountStore];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100166380;
      v9[3] = &unk_1002CF220;
      v10 = v6;
      [accountStore saveVerifiedAccount:v10 withCompletionHandler:v9];
    }
  }
}

- (BOOL)_isBeneficiaryAccount
{
  iCloudACAccount = [(FMDAppleAccountManager *)self iCloudACAccount];
  aa_altDSID = [iCloudACAccount aa_altDSID];

  if (aa_altDSID)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:aa_altDSID];

    v6 = +[AKAccountManager sharedInstance];
    v7 = [v6 isBeneficiaryForAccount:v5];

    v9 = sub_100002880(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isBeneficiaryAccount %d", v11, 8u);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end