@interface MSDAccountManagerHelper
- (ACAccount)iCloudAccount;
- (ACAccount)iTunesAccount;
- (BOOL)_isAllowListedAccount:(id)account withAuthResults:(id)results;
- (BOOL)forceiCloudKeychainToSyncWithServerAndError:(id *)error;
- (BOOL)performiCloudAccountSignInWithContext:(id)context outError:(id *)error;
- (BOOL)performiCloudAccountSignOutWithContext:(id)context outError:(id *)error;
- (BOOL)performiTunesAccountSignInWithContext:(id)context outError:(id *)error;
- (BOOL)performiTunesAccountSignOutWithContext:(id)context outError:(id *)error;
- (MSDAccountManagerHelper)init;
- (id)_createTempAppleAccountFromAuthResults:(id)results;
- (id)fetchiTunesiCloudAccountsInfo;
- (id)generateiCloudAccountRecoveryKeyWithError:(id *)error;
- (id)getIdentityServicesID;
- (id)getListOfCloudPairedDevices;
- (void)_acceptiCloudTermsWithAuthResults:(id)results completionHandler:(id)handler;
- (void)_authenticateAccountWithContext:(id)context forService:(int64_t)service completionHandler:(id)handler;
- (void)_configureiCloudAccountFeatures:(id)features completionHandler:(id)handler;
- (void)_disableFindMyServiceUsingContext:(id)context completionHandler:(id)handler;
- (void)_enableFindMyServiceAndSendLastLocation:(BOOL)location completionHandler:(id)handler;
- (void)_forceIDSToSyncWithServer;
- (void)_forceiCloudKeychainToSyncWithServerAndCompletion:(id)completion;
- (void)_markiCloudAccountAsManagedAccount:(BOOL)account completionHandler:(id)handler;
- (void)_signInToAppleIDWithContext:(id)context forServices:(id)services usingAuthResults:(id)results completionHandler:(id)handler;
- (void)_signOutAppleIDForServices:(id)services completionHandler:(id)handler;
- (void)_waitForIDSOperationToQuiesceForAccount:(id)account forSignOut:(BOOL)out;
- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion;
@end

@implementation MSDAccountManagerHelper

- (MSDAccountManagerHelper)init
{
  v8.receiver = self;
  v8.super_class = MSDAccountManagerHelper;
  v2 = [(MSDAccountManagerHelper *)&v8 init];
  if (v2)
  {
    v3 = +[ACAccountStore defaultStore];
    [(MSDAccountManagerHelper *)v2 setAccountStore:v3];

    v4 = [AIDAServiceOwnersManager alloc];
    accountStore = [(MSDAccountManagerHelper *)v2 accountStore];
    v6 = [v4 initWithAccountStore:accountStore];
    [(MSDAccountManagerHelper *)v2 setServiceOwnersManager:v6];
  }

  return v2;
}

- (ACAccount)iCloudAccount
{
  serviceOwnersManager = [(MSDAccountManagerHelper *)self serviceOwnersManager];
  v3 = [serviceOwnersManager accountForService:AIDAServiceTypeCloud];

  return v3;
}

- (ACAccount)iTunesAccount
{
  serviceOwnersManager = [(MSDAccountManagerHelper *)self serviceOwnersManager];
  v3 = [serviceOwnersManager accountForService:AIDAServiceTypeStore];

  return v3;
}

- (id)fetchiTunesiCloudAccountsInfo
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
  if (!iCloudAccount)
  {
    goto LABEL_10;
  }

  initForPrimaryiCloudAccount = [[MSDCDPStateController alloc] initForPrimaryiCloudAccount];
  username = [iCloudAccount username];
  [v3 setObject:username forKey:@"iCloud"];

  if (![initForPrimaryiCloudAccount isCDPEnabled])
  {
    v10 = &off_10017AE88;
LABEL_6:
    [v3 setObject:v10 forKey:@"iCloudCDPState"];
    goto LABEL_7;
  }

  v16 = 0;
  v7 = [initForPrimaryiCloudAccount isRecoveryKeyAvailable:&v16];
  v8 = v16;
  if (!v8)
  {
    if (v7)
    {
      v10 = &off_10017AE58;
    }

    else
    {
      v10 = &off_10017AE70;
    }

    goto LABEL_6;
  }

  v9 = v8;
  [v3 setObject:&off_10017AE40 forKey:@"iCloudCDPState"];

LABEL_7:
  if (([initForPrimaryiCloudAccount isCDPManateeAvailable] & 1) == 0)
  {
    [v3 setObject:&__kCFBooleanTrue forKey:@"iCloudCDPRepairNeeded"];
  }

LABEL_10:
  iTunesAccount = [(MSDAccountManagerHelper *)self iTunesAccount];
  v12 = iTunesAccount;
  if (iTunesAccount)
  {
    username2 = [iTunesAccount username];
    [v3 setObject:username2 forKey:@"iTunes"];
  }

  v14 = [NSDictionary dictionaryWithDictionary:v3];

  return v14;
}

- (BOOL)performiCloudAccountSignInWithContext:(id)context outError:(id *)error
{
  contextCopy = context;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_10000D254;
  v69 = sub_10000D264;
  v70 = dispatch_semaphore_create(0);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_10000D254;
  v63 = sub_10000D264;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_10000D254;
  v57 = sub_10000D264;
  v58 = 0;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10000D26C;
  v52[3] = &unk_100169E18;
  v52[4] = &v59;
  v52[5] = &v53;
  v52[6] = &v65;
  [(MSDAccountManagerHelper *)self _authenticateAccountWithContext:contextCopy forService:1 completionHandler:v52];
  v6 = v66[5];
  v7 = dispatch_time(0, 200000000000);
  v8 = dispatch_semaphore_wait(v6, v7);
  if (v8)
  {
    v43 = sub_100063A54(v8);
    sub_1000C5DF0(v43);

    sub_1000C13D8(error, 3727741043, @"Failed to authenticate account with server.", @"Operation timed out");
    v14 = 0;
    v10 = 0;
LABEL_41:
    v41 = 0;
    goto LABEL_23;
  }

  v9 = v54[5];
  if (v9)
  {
    localizedDescription = [v9 localizedDescription];
    sub_1000C13D8(error, 3727741043, @"Failed to authenticate account with server.", localizedDescription);
    v14 = 0;
    v10 = 0;
    goto LABEL_21;
  }

  v10 = [NSMutableArray arrayWithObject:AIDAServiceTypeCloud];
  features = [contextCopy features];
  v12 = [features objectForKey:@"com.apple.mobilestoredemo.FaceTime"];

  if (v12 && [v12 BOOLValue])
  {
    [v10 addObject:AIDAServiceTypeFaceTime];
  }

  features2 = [contextCopy features];
  v14 = [features2 objectForKey:@"com.apple.mobilestoredemo.iMessage"];

  if (v14 && [v14 BOOLValue])
  {
    [v10 addObject:AIDAServiceTypeMessages];
  }

  v15 = v60[5];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10000D310;
  v51[3] = &unk_100169E40;
  v51[4] = &v53;
  v51[5] = &v65;
  [(MSDAccountManagerHelper *)self _signInToAppleIDWithContext:contextCopy forServices:v10 usingAuthResults:v15 completionHandler:v51];
  v16 = v66[5];
  v17 = dispatch_time(0, 200000000000);
  v18 = dispatch_semaphore_wait(v16, v17);
  if (v18)
  {
    v44 = sub_100063A54(v18);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5E48();
    }

    v45 = 3727741046;
    v46 = @"Failed to sign in account service.";
    goto LABEL_40;
  }

  v19 = v54[5];
  if (v19)
  {
    if (![v19 aa_isAASignInErrorWithCode:-8010])
    {
      localizedDescription = [v54[5] localizedDescription];
      sub_1000C13D8(error, 3727741046, @"Failed to sign in account service.", localizedDescription);
      goto LABEL_21;
    }

    v20 = v60[5];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10000D378;
    v50[3] = &unk_100169E40;
    v50[4] = &v53;
    v50[5] = &v65;
    [(MSDAccountManagerHelper *)self _acceptiCloudTermsWithAuthResults:v20 completionHandler:v50];
    v21 = v66[5];
    v22 = dispatch_time(0, 200000000000);
    v23 = dispatch_semaphore_wait(v21, v22);
    if (v23)
    {
      v44 = sub_100063A54(v23);
      v45 = 3727741048;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5E48();
      }

      v46 = @"Failed to accept account terms.";
      goto LABEL_40;
    }

    v24 = v54[5];
    if (v24)
    {
      localizedDescription = [v24 localizedDescription];
      sub_1000C13D8(error, 3727741048, @"Failed to accept account terms.", localizedDescription);
      goto LABEL_21;
    }
  }

  features3 = [contextCopy features];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10000D3E0;
  v49[3] = &unk_100169E40;
  v49[4] = &v53;
  v49[5] = &v65;
  [(MSDAccountManagerHelper *)self _configureiCloudAccountFeatures:features3 completionHandler:v49];

  v26 = v66[5];
  v27 = dispatch_time(0, 200000000000);
  v28 = dispatch_semaphore_wait(v26, v27);
  if (v28)
  {
    v44 = sub_100063A54(v28);
    v45 = 3727741049;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5E7C();
    }

    v46 = @"Failed to configure account features.";
LABEL_40:

    sub_1000C13D8(error, v45, v46, @"Operation timed out");
    goto LABEL_41;
  }

  v29 = v54[5];
  if (v29)
  {
    localizedDescription = [v29 localizedDescription];
    sub_1000C13D8(error, 3727741049, @"Failed to configure account features.", localizedDescription);
    goto LABEL_21;
  }

  features4 = [contextCopy features];
  v31 = [features4 objectForKey:@"com.apple.mobilestoredemo.FindMyiPhone"];
  bOOLValue = [v31 BOOLValue];

  features5 = [contextCopy features];
  v34 = [features5 objectForKey:@"com.apple.mobilestoredemo.SendLastLocation"];
  bOOLValue2 = [v34 BOOLValue];

  if (bOOLValue)
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10000D448;
    v48[3] = &unk_100169E40;
    v48[4] = &v53;
    v48[5] = &v65;
    [(MSDAccountManagerHelper *)self _enableFindMyServiceAndSendLastLocation:bOOLValue2 completionHandler:v48];
    v36 = v66[5];
    v37 = dispatch_time(0, 200000000000);
    v38 = dispatch_semaphore_wait(v36, v37);
    if (!v38)
    {
      v39 = v54[5];
      if (!v39)
      {
        goto LABEL_19;
      }

      localizedDescription = [v39 localizedDescription];
      sub_1000C13D8(error, 3727741042, @"Cannot turn on Find My iPhone.", localizedDescription);
LABEL_21:
      v41 = 0;
      goto LABEL_22;
    }

    v44 = sub_100063A54(v38);
    v45 = 3727741042;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5EB0();
    }

    v46 = @"Cannot turn on Find My iPhone.";
    goto LABEL_40;
  }

LABEL_19:
  localizedDescription = [contextCopy username];
  [(MSDAccountManagerHelper *)self _waitForIDSOperationToQuiesceForAccount:localizedDescription forSignOut:0];
  v41 = 1;
LABEL_22:

LABEL_23:
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  return v41;
}

- (BOOL)performiTunesAccountSignInWithContext:(id)context outError:(id *)error
{
  contextCopy = context;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10000D254;
  v42 = sub_10000D264;
  v43 = dispatch_semaphore_create(0);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000D254;
  v36 = sub_10000D264;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10000D254;
  v30 = sub_10000D264;
  v31 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000D8E4;
  v25[3] = &unk_100169E18;
  v25[4] = &v32;
  v25[5] = &v26;
  v25[6] = &v38;
  [(MSDAccountManagerHelper *)self _authenticateAccountWithContext:contextCopy forService:2 completionHandler:v25];
  v7 = v39[5];
  v8 = dispatch_time(0, 200000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  if (v9)
  {
    v20 = sub_100063A54(v9);
    v21 = 3727741043;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5EE4();
    }

    v22 = @"Failed to authenticate account with server.";
    goto LABEL_14;
  }

  v10 = v27[5];
  if (v10)
  {
    localizedDescription = [v10 localizedDescription];
    sub_1000C13D8(error, 3727741043, @"Failed to authenticate account with server.", localizedDescription);
LABEL_16:

    goto LABEL_17;
  }

  v44 = AIDAServiceTypeStore;
  v11 = [NSArray arrayWithObjects:&v44 count:1];
  v12 = v33[5];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000D988;
  v24[3] = &unk_100169E40;
  v24[4] = &v26;
  v24[5] = &v38;
  [(MSDAccountManagerHelper *)self _signInToAppleIDWithContext:contextCopy forServices:v11 usingAuthResults:v12 completionHandler:v24];

  v13 = v39[5];
  v14 = dispatch_time(0, 200000000000);
  v15 = dispatch_semaphore_wait(v13, v14);
  if (v15)
  {
    v20 = sub_100063A54(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5F18();
    }

    v21 = 3727741046;
    v22 = @"Failed to sign in account service.";
LABEL_14:

    sub_1000C13D8(error, v21, v22, @"Operation timed out");
LABEL_17:
    v17 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v16 = v27[5];
  if (v16)
  {
    localizedDescription = [v16 localizedDescription];
    sub_1000C13D8(error, 3727741046, @"Failed to sign in account service.", localizedDescription);
    goto LABEL_16;
  }

  v17 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.MobileStore"];
  [v17 setBool:1 forKey:@"SKUIFamilySetupDisplayed"];
  [v17 synchronize];
  v18 = 1;
LABEL_6:
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v18;
}

- (BOOL)performiCloudAccountSignOutWithContext:(id)context outError:(id *)error
{
  contextCopy = context;
  iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
  username = [iCloudAccount username];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_10000D254;
  v35 = sub_10000D264;
  v36 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10000D254;
  v29 = sub_10000D264;
  v30 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000DD60;
  v24[3] = &unk_100169E40;
  v24[4] = &v25;
  v24[5] = &v31;
  [(MSDAccountManagerHelper *)self _disableFindMyServiceUsingContext:contextCopy completionHandler:v24];
  v9 = v32[5];
  v10 = dispatch_time(0, 200000000000);
  v11 = dispatch_semaphore_wait(v9, v10);
  if (v11)
  {
    v19 = sub_100063A54(v11);
    v20 = 3727741042;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5F4C();
    }

    v21 = @"Cannot turn off Find My iPhone.";
    goto LABEL_14;
  }

  v12 = v26[5];
  if (v12)
  {
    localizedDescription = [v12 localizedDescription];
    sub_1000C13D8(error, 3727741042, @"Cannot turn off Find My iPhone.", localizedDescription);
LABEL_16:

    goto LABEL_17;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000DDC8;
  v23[3] = &unk_100169E40;
  v23[4] = &v25;
  v23[5] = &v31;
  [(MSDAccountManagerHelper *)self _signOutAppleIDForServices:0 completionHandler:v23];
  v13 = v32[5];
  v14 = dispatch_time(0, 200000000000);
  v15 = dispatch_semaphore_wait(v13, v14);
  if (v15)
  {
    v19 = sub_100063A54(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5F80();
    }

    v20 = 3727741047;
    v21 = @"Failed to sign out account service.";
LABEL_14:

    sub_1000C13D8(error, v20, v21, @"Operation timed out");
LABEL_17:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = v26[5];
  if (v16)
  {
    localizedDescription = [v16 localizedDescription];
    sub_1000C13D8(error, 3727741047, @"Failed to sign out account service.", localizedDescription);
    goto LABEL_16;
  }

  v17 = 1;
  [(MSDAccountManagerHelper *)self _waitForIDSOperationToQuiesceForAccount:username forSignOut:1];
LABEL_6:
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v17;
}

- (BOOL)performiTunesAccountSignOutWithContext:(id)context outError:(id *)error
{
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000D254;
  v26 = sub_10000D264;
  v27 = dispatch_semaphore_create(0);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000D254;
  v20 = sub_10000D264;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E048;
  v15[3] = &unk_100169E40;
  v15[4] = &v16;
  v15[5] = &v22;
  [(MSDAccountManagerHelper *)self _signOutAppleIDForServices:0 completionHandler:v15];
  v7 = v23[5];
  v8 = dispatch_time(0, 200000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  if (v9)
  {
    v13 = sub_100063A54(v9);
    sub_1000C5FB4(v13);

    sub_1000C13D8(error, 3727741047, @"Failed to sign out account service.", @"Operation timed out");
LABEL_7:
    v11 = 0;
    goto LABEL_4;
  }

  v10 = v17[5];
  if (v10)
  {
    localizedDescription = [v10 localizedDescription];
    sub_1000C13D8(error, 3727741047, @"Failed to sign out account service.", localizedDescription);

    goto LABEL_7;
  }

  v11 = 1;
LABEL_4:
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v11;
}

- (id)generateiCloudAccountRecoveryKeyWithError:(id *)error
{
  initForPrimaryiCloudAccount = [[MSDCDPStateController alloc] initForPrimaryiCloudAccount];
  v5 = initForPrimaryiCloudAccount;
  if (!initForPrimaryiCloudAccount)
  {
    v12 = sub_100063A54(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000C600C();
    }

    sub_1000C1390(error, 3727741051, @"Failed to setup recovery key for iCloud account.");
    goto LABEL_11;
  }

  v6 = [initForPrimaryiCloudAccount isRecoveryKeyAvailable:0];
  if (v6)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iCloud account already has recovery key created before!", buf, 2u);
    }
  }

  v14 = 0;
  v8 = [v5 generateRecoveryKeyWithError:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = v9;
    localizedDescription = [v9 localizedDescription];
    sub_1000C13D8(error, 3727741051, @"Failed to setup recovery key for iCloud account.", localizedDescription);

LABEL_11:
    v8 = 0;
  }

  return v8;
}

- (BOOL)forceiCloudKeychainToSyncWithServerAndError:(id *)error
{
  v5 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10000D254;
  v24 = sub_10000D264;
  v25 = 0;
  [(MSDAccountManagerHelper *)self _forceIDSToSyncWithServer];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000E3E8;
  v17 = &unk_100169E68;
  v19 = &v20;
  v6 = v5;
  v18 = v6;
  [(MSDAccountManagerHelper *)self _forceiCloudKeychainToSyncWithServerAndCompletion:&v14];
  v7 = dispatch_time(0, 200000000000);
  v8 = dispatch_semaphore_wait(v6, v7);
  if (v8)
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6040();
    }

    sub_1000C13D8(error, 3727741050, @"Failed to synchronize account data with server.", @"Operation timed out");
  }

  else
  {
    v10 = v21[5];
    if (!v10)
    {
      v12 = 1;
      goto LABEL_8;
    }

    localizedDescription = [v10 localizedDescription];
    sub_1000C13D8(error, 3727741050, @"Failed to synchronize account data with server.", localizedDescription);
  }

  v12 = 0;
LABEL_8:

  _Block_object_dispose(&v20, 8);
  return v12;
}

- (void)_authenticateAccountWithContext:(id)context forService:(int64_t)service completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  username = [contextCopy username];
  password = [contextCopy password];
  v12 = sub_100063A54(password);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = username;
    v22 = 2048;
    serviceCopy = service;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Authenticating account: %{public}@ for service: %ld", buf, 0x16u);
  }

  if (handlerCopy)
  {
    v13 = objc_alloc_init(AKAppleIDAuthenticationContext);
    [v13 setUsername:username];
    [v13 setIsUsernameEditable:0];
    [v13 _setPassword:password];
    [v13 setServiceType:service];
    [v13 setAuthenticationType:0];
    recoveryKey = [contextCopy recoveryKey];
    [v13 _setMasterKey:recoveryKey];

    v15 = objc_alloc_init(AKAppleIDAuthenticationController);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000E664;
    v16[3] = &unk_100169E90;
    v16[4] = self;
    v17 = username;
    v18 = password;
    v19 = handlerCopy;
    [v15 authenticateWithContext:v13 completion:v16];
  }
}

- (void)_signInToAppleIDWithContext:(id)context forServices:(id)services usingAuthResults:(id)results completionHandler:(id)handler
{
  contextCopy = context;
  servicesCopy = services;
  resultsCopy = results;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000D254;
  v31 = sub_10000D264;
  v32 = 0;
  v14 = sub_100063A54(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = servicesCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Signing in to Apple ID for services: %{public}@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v15 = objc_alloc_init(MSDCDPFakeUIProvider);
    v16 = v28[5];
    v28[5] = v15;

    localSecret = [contextCopy localSecret];
    [v28[5] setLocalSecret:localSecret];

    recoveryKey = [contextCopy recoveryKey];
    [v28[5] setRecoveryKey:recoveryKey];

    v19 = objc_alloc_init(AIDAMutableServiceContext);
    [v19 setAuthenticationResults:resultsCopy];
    [v19 setCdpUiProvider:v28[5]];
    v20 = [[CDPContext alloc] initWithAuthenticationResults:resultsCopy];
    [(MSDAccountManagerHelper *)self setCdpContext:v20];

    if ([contextCopy resetCDP])
    {
      cdpContext = [(MSDAccountManagerHelper *)self cdpContext];
      [cdpContext set_forceReset:1];
    }

    v33 = AIDAServiceTypeCloud;
    selfCopy = self;
    v22 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v33 count:1];
    [v19 setSignInContexts:v22];

    serviceOwnersManager = [(MSDAccountManagerHelper *)self serviceOwnersManager];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000EB20;
    v24[3] = &unk_100169EB8;
    v25 = handlerCopy;
    v26 = &v27;
    [serviceOwnersManager signInToServices:servicesCopy usingContext:v19 completion:v24];
  }

  _Block_object_dispose(&v27, 8);
}

- (id)_createTempAppleAccountFromAuthResults:(id)results
{
  resultsCopy = results;
  v5 = [ACAccount alloc];
  accountStore = [(MSDAccountManagerHelper *)self accountStore];
  aa_appleAccountType = [accountStore aa_appleAccountType];
  v8 = [v5 initWithAccountType:aa_appleAccountType];

  v9 = [resultsCopy objectForKeyedSubscript:AKAuthenticationUsernameKey];
  v10 = [resultsCopy objectForKeyedSubscript:AKAuthenticationDSIDKey];
  stringValue = [v10 stringValue];

  [v8 setUsername:v9];
  [v8 setAccountProperty:stringValue forKey:@"personID"];
  v12 = [resultsCopy objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v13 = [resultsCopy objectForKeyedSubscript:AKAuthenticationRawPasswordKey];

  v14 = [ACAccountCredential credentialWithPassword:v12];
  [v8 setCredential:v14];
  [v8 _aa_setRawPassword:v13];

  return v8;
}

- (void)_acceptiCloudTermsWithAuthResults:(id)results completionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  v8 = [NSSet setWithObjects:AATermsEntryDevice, AATermsEntryWarranty, AATermsEntryPrivacy, AATermsEntryiCloud, AATermsEntryiTunes, AATermsEntryGameCenter, 0];
  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepting iCloud terms...", buf, 2u);
  }

  if (handlerCopy)
  {
    v10 = [(MSDAccountManagerHelper *)self _createTempAppleAccountFromAuthResults:resultsCopy];
    if (v10)
    {
      v11 = v10;
      v12 = [[AAiCloudTermsStringRequest alloc] initWithAccount:v10 termsEntries:v8 preferPassword:1];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000F090;
      v15[3] = &unk_100169F08;
      v16 = v11;
      v17 = handlerCopy;
      v13 = v11;
      [v12 performRequestWithHandler:v15];
    }

    else
    {
      v14 = sub_100063A54(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6170();
      }

      v12 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred."];
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }
}

- (void)_signOutAppleIDForServices:(id)services completionHandler:(id)handler
{
  servicesCopy = services;
  handlerCopy = handler;
  v8 = sub_100063A54(handlerCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (servicesCopy)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v24 = servicesCopy;
    v10 = "Signing out Apple ID for services: %{public}@";
    v11 = v8;
    v12 = 12;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "Signing out Apple ID for ALL services.";
    v11 = v8;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  if (handlerCopy)
  {
    v13 = objc_alloc_init(AIDAMutableServiceContext);
    v21 = AIDAServiceTypeCloud;
    selfCopy = self;
    v14 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v21 count:1];
    [v13 setSignOutContexts:v14];

    serviceOwnersManager = [(MSDAccountManagerHelper *)self serviceOwnersManager];
    if (servicesCopy)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000F574;
      v19[3] = &unk_100169F30;
      v16 = &v20;
      v20 = handlerCopy;
      [serviceOwnersManager signOutOfServices:servicesCopy usingContext:v13 completion:v19];
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000F734;
      v17[3] = &unk_100169F58;
      v16 = &v18;
      v18 = handlerCopy;
      [serviceOwnersManager signOutOfAllServicesUsingContext:v13 completion:v17];
    }
  }
}

- (void)_markiCloudAccountAsManagedAccount:(BOOL)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  v7 = sub_100063A54(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = accountCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting managed account state for iCloud account to: %{BOOL}d", buf, 8u);
  }

  if (handlerCopy)
  {
    iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
    if (iCloudAccount)
    {
      v9 = iCloudAccount;
      if (accountCopy)
      {
        v10 = @"DeKOTA";
      }

      else
      {
        v10 = 0;
      }

      [iCloudAccount setObject:v10 forKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
      accountStore = [(MSDAccountManagerHelper *)self accountStore];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000F9E4;
      v13[3] = &unk_100169F58;
      v14 = handlerCopy;
      [accountStore saveAccount:v9 withCompletionHandler:v13];
    }

    else
    {
      v11 = sub_100063A54(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No iCloud account found on device.", buf, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)_configureiCloudAccountFeatures:(id)features completionHandler:(id)handler
{
  featuresCopy = features;
  handlerCopy = handler;
  v8 = sub_100063A54(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = featuresCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Configuring iCloud account features: %{public}@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
    if (iCloudAccount)
    {
      v10 = iCloudAccount;
      if (featuresCopy)
      {
        iCloudAccount = [featuresCopy count];
        if (iCloudAccount)
        {
          selfCopy = self;
          v31 = handlerCopy;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v32 = featuresCopy;
          v11 = featuresCopy;
          v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (!v12)
          {
            goto LABEL_29;
          }

          v13 = v12;
          v14 = *v39;
          v33 = ACAccountDataclassSiri;
          while (1)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v38 + 1) + 8 * i);
              v17 = [v11 objectForKey:{v16, selfCopy}];
              bOOLValue = [v17 BOOLValue];
              v19 = bOOLValue;
              v20 = sub_100063A54(bOOLValue);
              v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              if (v19)
              {
                if (v21)
                {
                  *buf = 138543362;
                  v44 = v16;
                  v22 = v20;
                  v23 = ">> Enabling iCloud account feature: %{public}@";
LABEL_17:
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
                }
              }

              else if (v21)
              {
                *buf = 138543362;
                v44 = v16;
                v22 = v20;
                v23 = ">> Disabling iCloud account feature: %{public}@";
                goto LABEL_17;
              }

              if (([v16 isEqualToString:@"com.apple.mobilestoredemo.FindMyiPhone"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"com.apple.mobilestoredemo.SendLastLocation") & 1) == 0)
              {
                v24 = [v10 isProvisionedForDataclass:v16];
                if (v24)
                {
                  if ([v16 isEqualToString:v33])
                  {
                    v25 = +[AFPreferences sharedPreferences];
                    [v25 setCloudSyncEnabled:{objc_msgSend(v17, "BOOLValue")}];
                  }

                  [v10 setEnabled:objc_msgSend(v17 forDataclass:{"BOOLValue"), v16}];
                }

                else
                {
                  v26 = sub_100063A54(v24);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000C640C(&v36, v37, v26);
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (!v13)
            {
LABEL_29:

              accountStore = [(MSDAccountManagerHelper *)selfCopy accountStore];
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_10000FEC8;
              v34[3] = &unk_100169F58;
              handlerCopy = v31;
              v35 = v31;
              [accountStore saveAccount:v10 withCompletionHandler:v34];

              featuresCopy = v32;
              goto LABEL_36;
            }
          }
        }
      }

      v28 = sub_100063A54(iCloudAccount);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No iCloud account features provided. Skip configuring anything!", buf, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    else
    {
      v29 = sub_100063A54(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000C644C();
      }

      v10 = [NSError errorDomainMSDWithCode:3727744768 message:@"An error has occurred."];
      (*(handlerCopy + 2))(handlerCopy, v10);
    }

LABEL_36:
  }
}

- (void)_enableFindMyServiceAndSendLastLocation:(BOOL)location completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[AAUIDeviceLocatorService sharedInstance];
  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling 'Find My' service...", buf, 2u);
  }

  if (handlerCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100010088;
    v8[3] = &unk_100169FA8;
    v9 = handlerCopy;
    locationCopy = location;
    [v6 enableInContext:3 completion:v8];
  }
}

- (void)_disableFindMyServiceUsingContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = +[AAUIDeviceLocatorService sharedInstance];
  iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
  v10 = sub_100063A54(iCloudAccount);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    username = [iCloudAccount username];
    *buf = 138543362;
    v31[0] = username;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking 'Find My' service state for iCloud account: %{public}@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    if (iCloudAccount)
    {
      username2 = [iCloudAccount username];
      [contextCopy setUsername:username2];

      *&v13 = 67109376;
      v25 = v13;
      while (1)
      {
        isStateKnown = [v8 isStateKnown];
        if (isStateKnown)
        {
          isStateKnown = [v8 isChangingState];
          if (!isStateKnown)
          {
            break;
          }
        }

        v15 = sub_100063A54(isStateKnown);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          isStateKnown2 = [v8 isStateKnown];
          isChangingState = [v8 isChangingState];
          *buf = v25;
          LODWORD(v31[0]) = isStateKnown2;
          WORD2(v31[0]) = 1024;
          *(v31 + 6) = isChangingState;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wait until 'Find My' service state is known (isStateKnown = %{BOOL}d) or finished changing (isChaningState = %{BOOL}d).", buf, 0xEu);
        }

        sleep(1u);
      }

      isStateKnown3 = [v8 isStateKnown];
      if (!isStateKnown3 || (isStateKnown3 = [v8 isEnabled], (isStateKnown3 & 1) != 0))
      {
        v19 = sub_100063A54(isStateKnown3);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "'Find My' service is still enabled. Disabling it now!", buf, 2u);
        }

        password = [contextCopy password];

        if (password)
        {
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10001068C;
          v26[3] = &unk_10016A020;
          v29 = handlerCopy;
          v27 = iCloudAccount;
          v28 = v8;
          [(MSDAccountManagerHelper *)self _authenticateAccountWithContext:contextCopy forService:0 completionHandler:v26];
        }

        else
        {
          v22 = sub_100063A54(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000C65CC();
          }

          v23 = [NSError errorDomainMSDWithCode:3727744512 message:@"Unexpected server response." reason:@"No password for existing account."];
          (*(handlerCopy + 2))(handlerCopy, v23);
        }

        goto LABEL_24;
      }

      v24 = sub_100063A54(isStateKnown3);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "'Find My' service is already disabled.", buf, 2u);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_24:
}

- (void)_waitForIDSOperationToQuiesceForAccount:(id)account forSignOut:(BOOL)out
{
  outCopy = out;
  accountCopy = account;
  v5 = @"registration";
  v40 = outCopy;
  if (outCopy)
  {
    v5 = @"deregistration";
  }

  v6 = v5;
  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wait for IDS %{public}@ to quiesce...", buf, 0xCu);
  }

  if (accountCopy)
  {
    v9 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.mobilestoredemo.icloud"];
    if (v9)
    {
      v10 = v9;
      v39 = v6;
      v11 = 0;
      v12 = 0;
      v13 = 0.0;
      while (1)
      {
        v14 = v11;
        accounts = [v10 accounts];
        v11 = +[NSDate date];

        v17 = sub_100063A54(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v52 = accounts;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found IDS accounts: %{public}@", buf, 0xCu);
        }

        if (v40)
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v18 = accounts;
          v19 = [(__CFString *)v18 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (!v19)
          {
LABEL_19:

            v23 = 1;
            goto LABEL_31;
          }

          v20 = v19;
          v21 = *v48;
LABEL_13:
          v22 = 0;
          while (1)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v18);
            }

            if ([*(*(&v47 + 1) + 8 * v22) isActive])
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [(__CFString *)v18 countByEnumeratingWithState:&v47 objects:v56 count:16];
              if (v20)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v24 = accounts;
          v25 = [(__CFString *)v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v44;
            v41 = v12;
            while (2)
            {
              v28 = v11;
              v29 = v10;
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v44 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v31 = *(*(&v43 + 1) + 8 * i);
                if ([v31 isActive])
                {
                  loginID = [v31 loginID];
                  v33 = [loginID isEqualToString:accountCopy];

                  if (v33)
                  {

                    v23 = 1;
                    v10 = v29;
                    v11 = v28;
                    v12 = v41;
                    goto LABEL_31;
                  }
                }
              }

              v26 = [(__CFString *)v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
              v10 = v29;
              v11 = v28;
              v12 = v41;
              if (v26)
              {
                continue;
              }

              break;
            }
          }
        }

        sleep(5u);
        v23 = 0;
LABEL_31:
        v34 = +[NSDate date];

        [v34 timeIntervalSinceDate:v11];
        v13 = v13 + v35;

        if ((v23 & 1) == 0)
        {
          v12 = v34;
          if (v13 < 60.0)
          {
            continue;
          }
        }

        v37 = sub_100063A54(v36);
        v38 = v37;
        if (v23)
        {
          v6 = v39;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v52 = v39;
            v53 = 2048;
            v54 = v13;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "IDS %{public}@ finished after %f seconds.", buf, 0x16u);
          }
        }

        else
        {
          v6 = v39;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1000C6658();
          }
        }

        goto LABEL_43;
      }
    }

    v10 = sub_100063A54(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000C66D8();
    }
  }

  else
  {
    v10 = sub_100063A54(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No iCloud account signed in on device!", buf, 2u);
    }
  }

LABEL_43:
}

- (id)getIdentityServicesID
{
  v2 = IDSCopyLocalDeviceUniqueID();

  return v2;
}

- (id)getListOfCloudPairedDevices
{
  iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];

  if (iCloudAccount)
  {
    v4 = +[NSMutableArray array];
    v5 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.mobilestoredemo.icloud"];
    v6 = v5;
    if (v5)
    {
      v29 = v5;
      [v5 accounts];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v7 = v38 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v36;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v35 + 1) + 8 * i);
            if ([v12 isActive])
            {
              loginID = [v12 loginID];
              iCloudAccount2 = [(MSDAccountManagerHelper *)self iCloudAccount];
              [iCloudAccount2 username];
              v16 = v15 = v7;
              v17 = [loginID isEqualToString:v16];

              v7 = v15;
              if (v17)
              {
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                devices = [v12 devices];
                v19 = [devices countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v32;
                  do
                  {
                    for (j = 0; j != v20; j = j + 1)
                    {
                      if (*v32 != v21)
                      {
                        objc_enumerationMutation(devices);
                      }

                      v23 = *(*(&v31 + 1) + 8 * j);
                      nsuuid = [v23 nsuuid];
                      if (nsuuid)
                      {
                        v25 = nsuuid;
                        supportsiCloudPairing = [v23 supportsiCloudPairing];

                        if (supportsiCloudPairing)
                        {
                          uniqueID = [v23 uniqueID];
                          [v4 addObject:uniqueID];
                        }
                      }
                    }

                    v20 = [devices countByEnumeratingWithState:&v31 objects:v39 count:16];
                  }

                  while (v20);
                }

                goto LABEL_29;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      v6 = v29;
    }

    else
    {
      v7 = sub_100063A54(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000C66D8();
      }
    }
  }

  else
  {
    v6 = sub_100063A54(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6758();
    }

    v4 = 0;
  }

  return v4;
}

- (void)_forceiCloudKeychainToSyncWithServerAndCompletion:(id)completion
{
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000D254;
  v23 = sub_10000D264;
  v24 = 0;
  v5 = sub_100063A54(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forcing iCloud keychain to sync with server...", buf, 2u);
  }

  if (!completionCopy)
  {
    goto LABEL_12;
  }

  iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
  if (!iCloudAccount)
  {
    v13 = sub_100063A54(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No iCloud account signed in on device!", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
LABEL_12:
    v8 = 0;
    iCloudAccount = 0;
    goto LABEL_13;
  }

  v18 = 0;
  v7 = [CKKSControl controlObject:&v18];
  v8 = v18;
  v9 = v20[5];
  v20[5] = v7;

  if (v8)
  {
    v11 = sub_100063A54(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v8 localizedDescription];
      sub_1000C678C(localizedDescription, buf, v11);
    }

    (completionCopy)[2](completionCopy, v8);
  }

  else
  {
    v14 = v20[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100011710;
    v15[3] = &unk_10016A048;
    v16 = completionCopy;
    v17 = &v19;
    [v14 rpcFetchAndProcessChanges:0 reply:v15];

    v8 = 0;
  }

LABEL_13:

  _Block_object_dispose(&v19, 8);
}

- (void)_forceIDSToSyncWithServer
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forcing IDS to sync with server...", buf, 2u);
  }

  iCloudAccount = [(MSDAccountManagerHelper *)self iCloudAccount];
  if (iCloudAccount)
  {
    v5 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.multiplex1"];
    if (v5)
    {
      v6 = v5;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      enabledAccounts = [v5 enabledAccounts];
      Dependent = [enabledAccounts countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (Dependent)
      {
        v9 = Dependent;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(enabledAccounts);
            }

            v12 = *(*(&v14 + 1) + 8 * v11);
            v13 = sub_100063A54(Dependent);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v19 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Kicking IDS account: %{public}@", buf, 0xCu);
            }

            Dependent = IDSKickGetDependent();
            v11 = v11 + 1;
          }

          while (v9 != v11);
          Dependent = [enabledAccounts countByEnumeratingWithState:&v14 objects:v20 count:16];
          v9 = Dependent;
        }

        while (Dependent);
      }

      sleep(0xAu);
    }

    else
    {
      v6 = sub_100063A54(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000C6870();
      }
    }
  }

  else
  {
    v6 = sub_100063A54(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No iCloud account signed in on device!", buf, 2u);
    }
  }
}

- (BOOL)_isAllowListedAccount:(id)account withAuthResults:(id)results
{
  accountCopy = account;
  isKindOfClass = [results objectForKey:AKAuthenticationDemoAccountKey];
  v7 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) || (isKindOfClass = [v7 BOOLValue], !isKindOfClass))
  {
    v10 = sub_100063A54(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No 'demo account' flag set in IdMS auth response!", buf, 2u);
    }

    v30 = 0;
    v11 = [NSRegularExpression regularExpressionWithPattern:@"chnl_internal_[0-9]{1 options:2}@icloud.com" error:1, &v30];
    v12 = v30;
    v13 = v12;
    if (!v11)
    {
      v26 = sub_100063A54(v12);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000C68A4();
      }

      goto LABEL_44;
    }

    if (![v11 rangeOfFirstMatchInString:accountCopy options:0 range:{0, objc_msgSend(accountCopy, "length")}] && v14 == objc_msgSend(accountCopy, "length"))
    {
      v15 = [accountCopy substringWithRange:{objc_msgSend(@"chnl_internal_", "length"), objc_msgSend(accountCopy, "rangeOfString:", @"@icloud.com", "length")}];
      if ([v15 integerValue]>= 1 && [v15 integerValue]< 21)
      {
        v9 = 1;
LABEL_31:

        goto LABEL_32;
      }
    }

    v29 = v13;
    v16 = [NSRegularExpression regularExpressionWithPattern:@"(ars|channel|dekota)[0-9]+\\.[0-9]+@(icloud|me|mac)\\.com" options:1 error:&v29];
    v8 = v29;

    if (v16)
    {
      if (![v16 rangeOfFirstMatchInString:accountCopy options:0 range:{0, objc_msgSend(accountCopy, "length")}] && v18 == objc_msgSend(accountCopy, "length"))
      {
        goto LABEL_26;
      }

      v28 = v8;
      v11 = [NSRegularExpression regularExpressionWithPattern:@"chnl\\.[0-9]{7}\\.[0-9]{3}@icloud\\.com" options:1 error:&v28];
      v13 = v28;

      if (!v11)
      {
        v26 = sub_100063A54(v19);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000C68A4();
        }

        goto LABEL_44;
      }

      if (![v11 rangeOfFirstMatchInString:accountCopy options:0 range:{0, objc_msgSend(accountCopy, "length")}] && v20 == objc_msgSend(accountCopy, "length"))
      {
        v9 = 1;
LABEL_32:
        v16 = v11;
        v8 = v13;
        goto LABEL_33;
      }

      v27 = v13;
      v16 = [NSRegularExpression regularExpressionWithPattern:@"chnl\\.[a-zA-Z0-9]{4}\\.[a-zA-Z0-9]{6}@icloud\\.com" options:1 error:&v27];
      v8 = v27;

      if (v16)
      {
        v22 = [v16 rangeOfFirstMatchInString:accountCopy options:0 range:{0, objc_msgSend(accountCopy, "length")}];
        if (!v22)
        {
          v24 = v23;
          v22 = [accountCopy length];
          if (v24 == v22)
          {
LABEL_26:
            v9 = 1;
LABEL_33:

            goto LABEL_34;
          }
        }

        v11 = v16;
        v13 = v8;
LABEL_28:
        v15 = sub_100063A54(v22);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000C68D8();
        }

        v9 = 0;
        goto LABEL_31;
      }

      v26 = sub_100063A54(v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000C68A4();
      }
    }

    else
    {
      v26 = sub_100063A54(v17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000C68A4();
      }
    }

    v13 = v8;
LABEL_44:

    v11 = 0;
    goto LABEL_28;
  }

  v8 = sub_100063A54(isKindOfClass);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found 'demo account' flag in IdMS auth response!", buf, 2u);
  }

  v9 = 1;
LABEL_34:

  return v9;
}

- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100063A54(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[MSDAccountManagerHelper signOutFlowController:showAlertWithTitle:message:completion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: entered!", &v8, 0xCu);
  }

  completionCopy[2](completionCopy, 1);
}

- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100063A54(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDAccountManagerHelper signOutFlowController:performWalrusValidationForAccount:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: entered!", &v7, 0xCu);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100063A54(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[MSDAccountManagerHelper signOutFlowController:disableFindMyDeviceForAccount:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: entered!", &v7, 0xCu);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  v9 = sub_100063A54(accountCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[MSDAccountManagerHelper signOutFlowController:signOutAccount:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: entered!", buf, 0xCu);
  }

  accountStore = [(MSDAccountManagerHelper *)self accountStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001223C;
  v12[3] = &unk_100169F58;
  v13 = completionCopy;
  v11 = completionCopy;
  [accountStore removeAccount:accountCopy withDataclassActions:0 completion:v12];
}

@end