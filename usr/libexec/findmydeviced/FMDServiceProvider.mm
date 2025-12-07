@interface FMDServiceProvider
- (BOOL)_handleSecureLocationsPush:(id)push completion:(id)completion;
- (BOOL)_isValidIntentAccountId:(id)id;
- (BOOL)enqueueRequest:(id)request;
- (BOOL)enqueueRequest:(id)request account:(id)account;
- (BOOL)enqueueRequest:(id)request forAccessory:(id)accessory;
- (BOOL)isActivationLocked;
- (BOOL)supportsAccessory:(id)accessory;
- (FMDAccount)account;
- (FMDServiceProvider)init;
- (id)apsToken;
- (id)futureForCommandId:(id)id;
- (id)newLocationManager;
- (id)serverInteractionControllerForAccessory:(id)accessory;
- (id)serverInteractionControllerForAccount:(id)account;
- (id)urlForRequestType:(id)type;
- (unint64_t)_accountSecurityLevel;
- (unsigned)authInvalidError;
- (unsigned)essentialServerInfoMissingError;
- (void)_accountDidChangeFrom:(id)from to:(id)to;
- (void)_handleAccessoryDidPairNotification:(id)notification;
- (void)_handleLocateIntent:(id)intent serverContext:(id)context;
- (void)_handlePushWithoutIntents:(id)intents;
- (void)_handleQCIntent:(id)intent serverContext:(id)context;
- (void)_handleSoundIntent:(id)intent serverContext:(id)context;
- (void)_sendStartupRegister;
- (void)accessoryDidPair:(id)pair;
- (void)accessoryDidUnpair:(id)unpair;
- (void)accessoryDidUpdate:(id)update;
- (void)accountAdded;
- (void)accountInfoDidChange;
- (void)accountRemoveRequestedWithCompletion:(id)completion;
- (void)activationLockAuthInfo:(id)info;
- (void)clearFutures;
- (void)dealloc;
- (void)deregisterCommonNotifications;
- (void)deviceNameChanged:(id)changed;
- (void)didReceiveAPSMessage:(id)message;
- (void)didReceiveAPSToken:(id)token;
- (void)didReceiveAuthFailureForRequest:(id)request;
- (void)didReceiveServerAlertForRequest:(id)request;
- (void)locationServicesStateChanged:(id)changed;
- (void)makeProviderActive;
- (void)makeProviderInactive;
- (void)petForUserWithCompletion:(id)completion;
- (void)queueAccessoryActionsIfNeeded:(id)needed;
- (void)registerAccessory:(id)accessory completion:(id)completion;
- (void)registerCommonNotifications;
- (void)registerDeviceWithCause:(id)cause force:(BOOL)force;
- (void)reinitializeProviderWithAccount:(id)account;
- (void)removeAccount:(id)account completion:(id)completion;
- (void)removeAccountPreferences;
- (void)removeFutureForCommandId:(id)id;
- (void)searchPartyBeaconsChanged:(id)changed;
- (void)setAccount:(id)account;
- (void)setFuture:(id)future commandId:(id)id;
- (void)showAlertFromServerResponse:(id)response;
- (void)start;
- (void)startLocationMonitoringIfNeeded;
- (void)supportedAccessoryRegistryDidUpdateSupportedAccessories:(id)accessories;
- (void)tryToFetchAuthToken;
- (void)unregisterAccessory:(id)accessory completion:(id)completion;
- (void)updateAccount:(id)account;
@end

@implementation FMDServiceProvider

- (id)newLocationManager
{
  v2 = +[FMDLocationManagerFactory sharedInstance];
  newLocationManager = [v2 newLocationManager];

  return newLocationManager;
}

- (FMDServiceProvider)init
{
  v15.receiver = self;
  v15.super_class = FMDServiceProvider;
  v2 = [(FMDServiceProvider *)&v15 init];
  if (v2)
  {
    v3 = +[FMDOperationManager sharedManager];
    v4 = dispatch_queue_create("FMDServiceProvider", 0);
    [(FMDServiceProvider *)v2 setSerialQueue:v4];

    v5 = objc_alloc_init(FMDDirectServerChannel);
    v16[0] = v5;
    v6 = objc_alloc_init(FMDCadmiumServerChannel);
    v16[1] = v6;
    v7 = [NSArray arrayWithObjects:v16 count:2];

    v8 = [[FMDServerInteractionController alloc] initWithChannels:v7 delegate:v2];
    [(FMDServiceProvider *)v2 setServerInteractionController:v8];

    v9 = +[NSMutableDictionary dictionary];
    [(FMDServiceProvider *)v2 setServerInteractionControllerByAccessory:v9];

    v10 = [NSMutableDictionary dictionaryWithCapacity:2];
    [(FMDServiceProvider *)v2 setServerInteractionControllerByAccount:v10];

    v11 = [[FMReadWriteLock alloc] initWithLockName:@"serviceProvider-accountLock"];
    [(FMDServiceProvider *)v2 setAccountReadWriteLock:v11];

    v12 = +[ActionManager sharedManager];
    if (_os_feature_enabled_impl())
    {
      v13 = objc_alloc_init(_TtC13findmydeviced19FindMyLocateWrapper);
      [(FMDServiceProvider *)v2 setFindMyLocate:v13];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(FMDServiceProvider *)self removeObserver:self forKeyPath:@"account"];
  v3.receiver = self;
  v3.super_class = FMDServiceProvider;
  [(FMDServiceProvider *)&v3 dealloc];
}

- (void)start
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    v20 = 138412290;
    v21 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", &v20, 0xCu);
  }

  accountStore = [(FMDServiceProvider *)self accountStore];
  loadAccount = [accountStore loadAccount];
  [(FMDServiceProvider *)self setAccount:loadAccount];

  if (+[FMDPreferencesMgr wipeState])
  {
    v7 = [[WipeAction alloc] initWithProvider:self];
    v8 = +[ActionManager sharedManager];
    v9 = [v8 enqueueAction:v7];
  }

  else
  {
    account = [(FMDServiceProvider *)self account];

    if (account)
    {
      v12 = sub_100002880(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [(FMDServiceProvider *)self account];
        username = [account2 username];
        v20 = 138412290;
        v21 = username;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found FMIP account %@...", &v20, 0xCu);
      }

      [(FMDServiceProvider *)self accountAdded];
    }
  }

  account3 = [(FMDServiceProvider *)self account];

  if (!account3)
  {
    v17 = sub_100002880(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No FMIP account", &v20, 2u);
    }

    v18 = +[FMDDaemon sharedInstance];
    v19 = [v18 apsHandlerForEnvironment:@"production"];

    [v19 registerDelegate:self forTopic:@"com.apple.mobileme.fmip"];
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  account = [(FMDServiceProvider *)self account];
  accountReadWriteLock = [(FMDServiceProvider *)self accountReadWriteLock];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001CBF14;
  v9[3] = &unk_1002CDD98;
  v9[4] = self;
  v10 = accountCopy;
  v11 = account;
  v7 = account;
  v8 = accountCopy;
  [accountReadWriteLock performWithWriteLock:v9];
}

- (FMDAccount)account
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB54;
  v11 = sub_100002B74;
  v12 = 0;
  accountReadWriteLock = [(FMDServiceProvider *)self accountReadWriteLock];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001CC078;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  [accountReadWriteLock performWithReadLock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updateAccount:(id)account
{
  accountCopy = account;
  account = [(FMDServiceProvider *)self account];
  if (account)
  {
    authId = [accountCopy authId];
    authId2 = [account authId];
    v8 = [authId isEqualToString:authId2];

    if ((v8 & 1) == 0)
    {
      v10 = sub_100002880(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022E41C(account, accountCopy);
      }
    }

    if ([account activityState] != 2)
    {
      account2 = [(FMDServiceProvider *)self account];
      [account2 copyInfoFromAccount:accountCopy];

      accountStore = [(FMDServiceProvider *)self accountStore];
      account3 = [(FMDServiceProvider *)self account];
      [accountStore saveAccount:account3];

      [(FMDServiceProvider *)self accountInfoDidChange];
    }
  }

  else
  {
    v14 = sub_100002880(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateAccount is adding a new account", v17, 2u);
    }

    [(FMDServiceProvider *)self setAccount:accountCopy];
    accountStore2 = [(FMDServiceProvider *)self accountStore];
    [accountStore2 saveAccount:accountCopy];

    v16 = +[FMDStartupRegisterManager sharedInstance];
    [v16 eventDidOccur:0];

    [(FMDServiceProvider *)self accountAdded];
  }
}

- (void)removeAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  account = [(FMDServiceProvider *)self account];

  if (account)
  {
    account2 = [(FMDServiceProvider *)self account];
    [account2 copyInfoFromAccount:accountCopy];

    accountStore = [(FMDServiceProvider *)self accountStore];
    account3 = [(FMDServiceProvider *)self account];
    [accountStore saveAccount:account3];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001CC468;
    v17[3] = &unk_1002D0B98;
    v17[4] = self;
    v18 = accountCopy;
    v19 = completionCopy;
    [(FMDServiceProvider *)self accountRemoveRequestedWithCompletion:v17];
  }

  else
  {
    v13 = sub_100002880(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022E4C8(accountCopy);
    }

    v14 = kFMDErrorDomain;
    v20 = NSLocalizedDescriptionKey;
    v21 = @"No existing account found";
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [NSError errorWithDomain:v14 code:-1 userInfo:v15];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v16);
    }
  }
}

- (void)removeAccountPreferences
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to clean prefs %@", &v6, 0xCu);
  }

  [FMPreferencesUtil removeKey:@"needsLostModeExitAuth" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"LastUpdated" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"FMIPInfo" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"LastALCompletionInfo" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"ClientLostModeInfo" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil removeKey:@"FMIPWipeLostModeInfo" inDomain:kFMDNotBackedUpPrefDomain];
  +[FMDPreferencesMgr cleanAccountKeys];
  v5 = +[FMDSPStatusUtil sharedInstance];
  [v5 clearCache];
}

- (void)reinitializeProviderWithAccount:(id)account
{
  accountCopy = account;
  [(FMDServiceProvider *)self setAccount:0];
  accountStore = [(FMDServiceProvider *)self accountStore];
  [accountStore saveAccount:0];

  [(FMDServiceProvider *)self addAccount:accountCopy];
}

- (void)accountInfoDidChange
{
  account = [(FMDServiceProvider *)self account];
  activityState = [account activityState];

  if (activityState == 1)
  {

    [(FMDServiceProvider *)self registerDeviceWithCause:@"AccountChange" force:0];
  }

  else
  {
    v6 = sub_100002880(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(FMDServiceProvider *)self fm_logID];
      v8 = 138412290;
      v9 = fm_logID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to start %@ again because account changed", &v8, 0xCu);
    }

    [(FMDServiceProvider *)self makeProviderActive];
  }
}

- (void)accountAdded
{
  [(FMDServiceProvider *)self makeProviderInactive];

  [(FMDServiceProvider *)self makeProviderActive];
}

- (void)accountRemoveRequestedWithCompletion:(id)completion
{
  completionCopy = completion;
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  allAccessories = [accessoryRegistry allAccessories];
  [allAccessories enumerateObjectsUsingBlock:&stru_1002D1068];

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  [supportedAccessoryRegistry clearSupportedAccessoryRegistry];

  [(FMDServiceProvider *)self setSupportedAccessoryRegistry:0];
  accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry2 clearAccessoryRegistry];

  [(FMDServiceProvider *)self setAccessoryRegistry:0];
  accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
  [accessoryLocationStore clearAccessoryLocationStore];

  [(FMDServiceProvider *)self setAccessoryLocationStore:0];
  [(FMDServiceProvider *)self clearFutures];
  v9 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v9 = completionCopy;
  }
}

- (void)registerAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Now Registering Accessory - %@", &v21, 0xCu);
  }

  v9 = [[FMDInternalLocalFindableAccessory alloc] initWithLocalFindableAccessory:accessoryCopy];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry updateAccessory:v9];

  v11 = [AccessoryRegisterAction alloc];
  account = [(FMDServiceProvider *)self account];
  v13 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v9];
  v14 = [(AccessoryRegisterAction *)v11 initWithAccount:account accessory:v9 cause:@"deviceDidPair" force:0 serverInteractionController:v13];

  [(AccessoryRegisterAction *)v14 setIncludeDeviceState:1];
  v15 = +[FMDOperationManager sharedManager];
  accessoryIdentifier = [(FMDInternalLocalFindableAccessory *)v9 accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  v18 = [v15 addAction:v14 forIdentifier:stringValue];

  if (v18)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v19 = [NSError alloc];
    v20 = [v19 initWithDomain:kFMDErrorDomain code:1 userInfo:0];
    (completionCopy)[2](completionCopy, v20);
  }
}

- (void)unregisterAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Now Unregistering Accessory - %@", &v11, 0xCu);
  }

  v9 = [[FMDInternalLocalFindableAccessory alloc] initWithLocalFindableAccessory:accessoryCopy];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry removeAccessory:v9];

  [(FMDServiceProvider *)self registerDeviceWithCause:@"deviceDidUnpair" force:1];
  completionCopy[2](completionCopy, 0);
}

- (BOOL)isActivationLocked
{
  v2 = +[FMDServiceProvider activeServiceProvider];
  account = [v2 account];

  lastIdentityTime = [account lastIdentityTime];

  v6 = sub_100002880(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    lastIdentityTime2 = [account lastIdentityTime];
    v9[0] = 67109376;
    v9[1] = lastIdentityTime != 0;
    v10 = 2048;
    fm_epoch = [lastIdentityTime2 fm_epoch];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "isActivationLocked returned %i, %lli", v9, 0x12u);
  }

  return lastIdentityTime != 0;
}

- (void)activationLockAuthInfo:(id)info
{
  infoCopy = info;
  account = [(FMDServiceProvider *)self account];

  if (account)
  {
    v7 = objc_alloc_init(FMDActivationLockAuthInfo);
    [v7 setIsFindMyON:1];
    [v7 setIsSignedIntoICloud:1];
    [v7 setIsActivationLockEnabled:{-[FMDServiceProvider isActivationLocked](self, "isActivationLocked")}];
    _accountSecurityLevel = [(FMDServiceProvider *)self _accountSecurityLevel];
    if (_accountSecurityLevel)
    {
      v9 = _accountSecurityLevel;
      account2 = [(FMDServiceProvider *)self account];
      adsid = [account2 adsid];

      account3 = [(FMDServiceProvider *)self account];
      dsid = [account3 dsid];

      [v7 setDsid:dsid];
      [v7 setAltDsid:adsid];
      [v7 setIsAccountHSA2:v9 == 4];
      isAccountHSA2 = [v7 isAccountHSA2];
      LODWORD(account3) = isAccountHSA2;
      v15 = sub_100002880(isAccountHSA2);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (account3)
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "account is HSA2 - requesting pet", buf, 2u);
        }

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1001CD184;
        v27[3] = &unk_1002D1090;
        v28 = v7;
        v29 = infoCopy;
        [(FMDServiceProvider *)self petForUserWithCompletion:v27];
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Account is non-HSA2. Not requesting PET - returning immediately", buf, 2u);
        }

        (*(infoCopy + 2))(infoCopy, v7, 0);
      }
    }

    else
    {
      v18 = sub_100002880(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10022E5F4(v18, v19, v20, v21, v22, v23, v24, v25);
      }

      v26 = [NSError alloc];
      adsid = [v26 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
      (*(infoCopy + 2))(infoCopy, 0, adsid);
    }
  }

  else
  {
    v17 = sub_100002880(v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No FMIP account for authinfo. Returning status as Find My OFF", buf, 2u);
    }

    v7 = objc_alloc_init(FMDActivationLockAuthInfo);
    [v7 setIsFindMyON:0];
    [v7 setPet:0];
    (*(infoCopy + 2))(infoCopy, v7, 0);
  }
}

- (void)petForUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(AKAppleIDAuthenticationController);
  if (v5)
  {
    v6 = objc_alloc_init(AKAppleIDAuthenticationContext);
    if (v6)
    {
      account = [(FMDServiceProvider *)self account];
      adsid = [account adsid];

      [v6 setAltDSID:adsid];
      [v6 setAuthenticationType:1];
      [v6 setIsUsernameEditable:0];
      [v6 setServiceType:1];
      [v6 setShouldSkipSettingsLaunchAlert:1];
      [v6 setShouldPromptForPasswordOnly:1];
      [v6 setShouldUpdatePersistentServiceTokens:0];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001CD520;
      v13[3] = &unk_1002CF5F0;
      v14 = completionCopy;
      [v5 authenticateWithContext:v6 completion:v13];
    }

    else
    {
      v11 = sub_100002880(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authContext", buf, 2u);
      }

      v12 = [NSError alloc];
      adsid = [v12 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, adsid);
    }
  }

  else
  {
    v9 = sub_100002880(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authController", buf, 2u);
    }

    v10 = [NSError alloc];
    v6 = [v10 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

- (unint64_t)_accountSecurityLevel
{
  account = [(FMDServiceProvider *)self account];
  adsid = [account adsid];

  if (adsid)
  {
    v5 = +[AKAccountManager sharedInstance];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 authKitAccountWithAltDSID:adsid];
      if (v7)
      {
        v8 = [v6 securityLevelForAccount:v7];
        v9 = sub_100002880(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "securityLevel %lu", &v18, 0xCu);
        }
      }

      else
      {
        v9 = sub_100002880(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to retrieve account", &v18, 2u);
        }

        v8 = 0;
      }
    }

    else
    {
      v7 = sub_100002880(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to instantiate accountManager", &v18, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = sub_100002880(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022E62C(v6, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  return v8;
}

- (void)makeProviderActive
{
  account = [(FMDServiceProvider *)self account];
  v4 = account;
  if (!account)
  {
    goto LABEL_36;
  }

  activityState = [account activityState];
  if (activityState == 1)
  {
    goto LABEL_36;
  }

  v6 = sub_100002880(activityState);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    *buf = 138412290;
    v75 = fm_logID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#start Making %@ active...", buf, 0xCu);
  }

  v9 = sub_100002880(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    username = [v4 username];
    *buf = 138412290;
    v75 = username;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#start Found account: %@", buf, 0xCu);
  }

  willMakeProviderActive = [(FMDServiceProvider *)self willMakeProviderActive];
  if (willMakeProviderActive)
  {
    [(FMDServiceProvider *)self setWaitingToMakeProviderActive:0];
    v12 = +[NSMutableArray array];
    v13 = +[NSMutableDictionary dictionary];
    [(FMDServiceProvider *)self setFuturesByCommandId:v13];

    v14 = [[FMDSupportedAccessoryRegistry alloc] initWithDelegate:self];
    [(FMDServiceProvider *)self setSupportedAccessoryRegistry:v14];

    v15 = [[FMDAccessoryRegistry alloc] initWithSupportDelete:self];
    [(FMDServiceProvider *)self setAccessoryRegistry:v15];

    v16 = [FMDAccessoryRegistryDelegateAdaptor alloc];
    accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
    v18 = [(FMDAccessoryRegistryDelegateAdaptor *)v16 initWithAccessoryRegistry:accessoryRegistry];
    [(FMDServiceProvider *)self setAccessoryRegistryDelegateAdaptor:v18];

    v19 = objc_alloc_init(FMDBluetoothManager);
    [(FMDServiceProvider *)self setBluetoothManager:v19];

    supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
    bluetoothManager = [(FMDServiceProvider *)self bluetoothManager];
    [bluetoothManager setSupportedAccessoryRegistry:supportedAccessoryRegistry];

    accessoryRegistryDelegateAdaptor = [(FMDServiceProvider *)self accessoryRegistryDelegateAdaptor];
    bluetoothManager2 = [(FMDServiceProvider *)self bluetoothManager];
    [bluetoothManager2 setDelegate:accessoryRegistryDelegateAdaptor];

    bluetoothManager3 = [(FMDServiceProvider *)self bluetoothManager];
    [v12 addObject:bluetoothManager3];

    v25 = [FMPreferencesUtil BOOLForKey:@"DisableFindkit" inDomain:kFMDNotBackedUpPrefDomain];
    LOBYTE(bluetoothManager2) = v25;
    v26 = sub_10000BE38(v25);
    v27 = os_log_type_enabled(&v26->super, OS_LOG_TYPE_DEFAULT);
    if (bluetoothManager2)
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v26->super, OS_LOG_TYPE_DEFAULT, "Findkit Disabled", buf, 2u);
      }
    }

    else
    {
      if (v27)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v26->super, OS_LOG_TYPE_DEFAULT, "Findkit Enabled", buf, 2u);
      }

      v30 = +[FMDExtConfigurationRegistry sharedInstance];
      v26 = objc_alloc_init(FMDExtAccessoryManager);
      accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
      [(FMDExtAccessoryManager *)v26 setAccessoryRegistry:accessoryRegistry2];

      [(FMDServiceProvider *)self setExtAccessoryManager:v26];
      extAccessoryManager = [(FMDServiceProvider *)self extAccessoryManager];
      [v12 addObject:extAccessoryManager];

      [(FMDExtAccessoryManager *)v26 startMonitoring];
    }

    v33 = [FMDAccessoryLocationStore alloc];
    supportedAccessoryRegistry2 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
    accessoryRegistry3 = [(FMDServiceProvider *)self accessoryRegistry];
    v36 = [(FMDAccessoryLocationStore *)v33 initWithSupportedAccessoryRegistry:supportedAccessoryRegistry2 accessoryRegistry:accessoryRegistry3];
    [(FMDServiceProvider *)self setAccessoryLocationStore:v36];

    accessoryRegistry4 = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry4 registerDelegate:self];

    accessoryRegistry5 = [(FMDServiceProvider *)self accessoryRegistry];
    accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
    [accessoryRegistry5 registerDelegate:accessoryLocationStore];

    accessoryRegistryDelegateAdaptor2 = [(FMDServiceProvider *)self accessoryRegistryDelegateAdaptor];
    v41 = [FMDCompanionRegistryFactory companionRegistryWithDelegate:accessoryRegistryDelegateAdaptor2];

    [v12 addObject:v41];
    accessoryRegistry6 = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry6 addDataSources:v12];

    v43 = +[FMSystemInfo sharedInstance];
    if ([v43 isInternalBuild])
    {
      v44 = [FMPreferencesUtil BOOLForKey:@"AlertOnAccessoryConnect" inDomain:kFMDNotBackedUpPrefDomain];

      if (!v44)
      {
LABEL_21:
        v46 = +[FMDDaemon sharedInstance];
        apsEnvironmentConstant = [v4 apsEnvironmentConstant];
        v48 = [v46 apsHandlerForEnvironment:apsEnvironmentConstant];

        [v48 registerDelegate:self forTopic:@"com.apple.mobileme.fmip"];
        apsToken = [v48 apsToken];

        if (apsToken)
        {
          [(FMDServiceProvider *)self _sendStartupRegister];
        }

        else
        {
          v51 = sub_100002880(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "No APS token yet", buf, 2u);
          }

          v52 = +[FMSystemInfo sharedInstance];
          isInternalBuild = [v52 isInternalBuild];

          if (isInternalBuild)
          {
            objc_initWeak(buf, self);
            v54 = dispatch_time(0, 5000000000);
            v68 = _NSConcreteStackBlock;
            v69 = 3221225472;
            v70 = sub_1001CE020;
            v71 = &unk_1002CD288;
            objc_copyWeak(&v73, buf);
            v72 = v48;
            dispatch_after(v54, &_dispatch_main_q, &v68);

            objc_destroyWeak(&v73);
            objc_destroyWeak(buf);
          }
        }

        [(FMDServiceProvider *)self didMakeProviderActive:v68];
        account2 = [(FMDServiceProvider *)self account];
        [account2 setActivityState:1];

        authInvalidError = [(FMDServiceProvider *)self authInvalidError];
        if (authInvalidError != 1196379972)
        {
          v57 = authInvalidError;
          v58 = sub_100002880(authInvalidError);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            serviceName = [(FMDServiceProvider *)self serviceName];
            username2 = [v4 username];
            v61 = [NSString stringWithFourCC:v57];
            *buf = 138412802;
            v75 = serviceName;
            v76 = 2112;
            v77 = username2;
            v78 = 2112;
            v79 = v61;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: Account %@ is invalid due to '%@'", buf, 0x20u);
          }

          v62 = +[FMSystemInfo sharedInstance];
          isInternalBuild2 = [v62 isInternalBuild];

          if (isInternalBuild2)
          {
            v65 = sub_100002880(v64);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              serviceName2 = [(FMDServiceProvider *)self serviceName];
              *buf = 138412290;
              v75 = serviceName2;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%@ is not functional as authentication credentials are not available.", buf, 0xCu);
            }
          }

          [(FMDServiceProvider *)self tryToFetchAuthToken];
        }

        v67 = +[FMDSPStatusUtil sharedInstance];
        [v67 setStatsChangeHandler:&stru_1002D10B0];
        [v67 refreshBeaconStats];

        goto LABEL_36;
      }

      v43 = +[FMDInternalAccessoryConnectionMonitor sharedMonitor];
      accessoryRegistry7 = [(FMDServiceProvider *)self accessoryRegistry];
      [accessoryRegistry7 registerDelegate:v43];
    }

    goto LABEL_21;
  }

  v28 = sub_100002880(willMakeProviderActive);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID2 = [(FMDServiceProvider *)self fm_logID];
    *buf = 138412290;
    v75 = fm_logID2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Not making %@ active now", buf, 0xCu);
  }

  [(FMDServiceProvider *)self setWaitingToMakeProviderActive:1];
LABEL_36:
}

- (void)makeProviderInactive
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDServiceProvider *)self fm_logID];
    v21 = 138412290;
    v22 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Making %@ inactive...", &v21, 0xCu);
  }

  account = [(FMDServiceProvider *)self account];
  account2 = [(FMDServiceProvider *)self account];
  [account2 setActivityState:2];

  [(FMDServiceProvider *)self willMakeProviderInactive];
  serverInteractionController = [(FMDServiceProvider *)self serverInteractionController];
  [serverInteractionController cancelAllRequests];

  v8 = +[ActionManager sharedManager];
  [v8 cancelAllActions];

  standardLocator = [(FMDServiceProvider *)self standardLocator];
  if (standardLocator)
  {
    v10 = standardLocator;
    standardLocator2 = [(FMDServiceProvider *)self standardLocator];
    locatorRunning = [standardLocator2 locatorRunning];

    if (locatorRunning)
    {
      v14 = sub_100002880(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Stopping standard locate...", &v21, 2u);
      }

      standardLocator3 = [(FMDServiceProvider *)self standardLocator];
      [standardLocator3 stopLocator];

      standardLocator4 = [(FMDServiceProvider *)self standardLocator];
      [standardLocator4 setStoppedLocatorBlock:0];
    }
  }

  [(FMDServiceProvider *)self setStandardLocator:0];
  v17 = +[FMDDaemon sharedInstance];
  apsEnvironmentConstant = [account apsEnvironmentConstant];
  v19 = [v17 apsHandlerForEnvironment:apsEnvironmentConstant];

  [v19 deregisterDelegate:self];
  v20 = +[FMDSPStatusUtil sharedInstance];
  [v20 setStatsChangeHandler:0];
  [v20 cancelRefresh];
  [(FMDServiceProvider *)self didMakeProviderInactive];
}

- (void)_sendStartupRegister
{
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CE484;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)queueAccessoryActionsIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = sub_100002880(neededCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider checking if we need to QC for accessory", &v18, 2u);
  }

  if (!neededCopy)
  {
    v14 = sub_100002880(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider Skipping QC due to nil accessory.", &v18, 2u);
    }

    goto LABEL_10;
  }

  commandContext = [neededCopy commandContext];
  pendingAction = [commandContext pendingAction];

  if (pendingAction)
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = neededCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider QC required for %@", &v18, 0xCu);
    }

    v11 = [AccessoryAction alloc];
    account = [(FMDServiceProvider *)self account];
    v13 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:neededCopy];
    v14 = [(AccessoryAction *)v11 initWithAccount:account accessory:neededCopy requiresConnectivity:1 serverInteractionController:v13];

    accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry registerDelegate:v14];

    v16 = +[ActionManager sharedManager];
    v17 = [v16 enqueueAction:v14];

LABEL_10:
  }
}

- (void)registerCommonNotifications
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"deviceNameChanged:" name:@"FMDDeviceNameChangedNotification" object:0];
  [v4 addObserver:self selector:"passcodeStateChanged:" name:@"FMDPasscodeStateChangedNotification" object:0];
  [v4 addObserver:self selector:"allowPasscodeModificationChanged:" name:@"FMDAllowPasscodeModificationChangedNotification" object:0];
  [v4 addObserver:self selector:"locationServicesStateChanged:" name:@"FMDLocationServicesStateChangedNotification" object:0];
  [v4 addObserver:self selector:"localeChanged:" name:@"FMDLocaleChangedNotification" object:0];
  [v4 addObserver:self selector:"searchPartyBeaconsChanged:" name:@"kFMDDeviceSPSelfBeaconChangeNotification" object:0];
  [v4 addObserver:self selector:"_handleAccessoryDidPairNotification:" name:@"kFMDAccessoryDidPairLocalNotification" object:0];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [v4 addObserver:accessoryRegistry selector:"refetchBauuids:" name:@"kFMDAccessoryDidPairLocalNotification" object:0];
}

- (void)deregisterCommonNotifications
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"FMDDeviceNameChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDPasscodeStateChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDAllowPasscodeModificationChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDLocationServicesStateChangedNotification" object:0];
  [v4 removeObserver:self name:@"FMDLocaleChangedNotification" object:0];
  [v4 removeObserver:self name:@"kFMDDeviceSPSelfBeaconChangeNotification" object:0];
  [v4 removeObserver:self name:@"kFMDAccessoryDidPairLocalNotification" object:0];
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [v4 removeObserver:accessoryRegistry name:@"kFMDAccessoryDidPairLocalNotification" object:0];
}

- (id)urlForRequestType:(id)type
{
  typeCopy = type;
  v5 = +[FMDServerConfig sharedInstance];
  v6 = [v5 urlTemplateForRequestType:typeCopy];

  if (v6)
  {
    v8 = +[FMDSystemConfig sharedInstance];
    deviceUDID = [v8 deviceUDID];

    v10 = objc_alloc_init(RequestTemplateURL);
    account = [(FMDServiceProvider *)self account];
    v12 = [(RequestTemplateURL *)v10 urlFromTemplate:v6 account:account udid:deviceUDID];
  }

  else
  {
    v13 = sub_100002880(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = typeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did not find a url template for request type : %@", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)serverInteractionControllerForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryIdentifier = [accessoryCopy accessoryIdentifier];
  if (accessoryIdentifier)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_10000AB54;
    v16 = sub_100002B74;
    v17 = 0;
    serialQueue = [(FMDServiceProvider *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CEDAC;
    block[3] = &unk_1002CDA70;
    p_buf = &buf;
    block[4] = self;
    v11 = accessoryIdentifier;
    dispatch_sync(serialQueue, block);

    v7 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = sub_100002880(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to get serverInteractionController by accessory since accessoryIdentifier was nil. Accessory: %@.", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)serverInteractionControllerForAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy && ([accountCopy authId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_10000AB54;
    v18 = sub_100002B74;
    v19 = 0;
    serialQueue = [(FMDServiceProvider *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CF0C8;
    block[3] = &unk_1002CDA70;
    v13 = buf;
    block[4] = self;
    v12 = v5;
    dispatch_sync(serialQueue, block);

    v8 = *(v15 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = sub_100002880(accountCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unable to get serverinteractioncontroller by account since account or authID (DSID) was nil", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)registerDeviceWithCause:(id)cause force:(BOOL)force
{
  forceCopy = force;
  causeCopy = cause;
  v9 = [[RegisterAction alloc] initWithReason:causeCopy force:forceCopy provider:self];

  v7 = +[ActionManager sharedManager];
  v8 = [v7 enqueueAction:v9];
}

- (unsigned)essentialServerInfoMissingError
{
  authInvalidError = [(FMDServiceProvider *)self authInvalidError];
  if (authInvalidError == 1196379972)
  {
    v4 = +[FMDDaemon sharedInstance];
    account = [(FMDServiceProvider *)self account];
    apsEnvironmentConstant = [account apsEnvironmentConstant];
    v7 = [v4 apsHandlerForEnvironment:apsEnvironmentConstant];

    apsToken = [v7 apsToken];

    if (apsToken)
    {
      authInvalidError = 1196379972;
    }

    else
    {
      authInvalidError = 1480675411;
    }
  }

  return authInvalidError;
}

- (unsigned)authInvalidError
{
  account = [(FMDServiceProvider *)self account];

  if (!account)
  {
    return 1480672067;
  }

  account2 = [(FMDServiceProvider *)self account];
  username = [account2 username];
  v6 = [username length];

  if (!v6)
  {
    return 1481986898;
  }

  account3 = [(FMDServiceProvider *)self account];
  authToken = [account3 authToken];
  v9 = [authToken length];

  if (!v9)
  {
    return 1481920331;
  }

  account4 = [(FMDServiceProvider *)self account];
  authId = [account4 authId];
  v12 = [authId length];

  if (v12)
  {
    return 1196379972;
  }

  else
  {
    return 1482639684;
  }
}

- (void)tryToFetchAuthToken
{
  account = [(FMDServiceProvider *)self account];
  authToken = [account authToken];
  [authToken length];
}

- (void)showAlertFromServerResponse:(id)response
{
  responseCopy = response;
  v4 = sub_100002880(responseCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10022E664();
  }

  v5 = [responseCopy objectForKeyedSubscript:@"title"];
  v6 = [responseCopy objectForKeyedSubscript:@"text"];
  v7 = [responseCopy objectForKeyedSubscript:@"okButtonTitle"];
  v8 = [responseCopy objectForKeyedSubscript:@"okButtonURL"];
  v9 = [responseCopy objectForKeyedSubscript:@"okButtonAction"];
  v10 = [responseCopy objectForKeyedSubscript:@"cancelButtonTitle"];
  v11 = [responseCopy objectForKeyedSubscript:@"cancelButtonURL"];
  v12 = [responseCopy objectForKeyedSubscript:@"cancelButtonAction"];
  v13 = [responseCopy objectForKeyedSubscript:@"delay"];
  [v13 doubleValue];
  v15 = v14;

  if (v5)
  {
    v34 = v8;
    v16 = v7;
    v17 = +[FMDPreferencesMgr accessibilityFontSizeEnabled];
    v18 = objc_alloc_init(FMAlert);
    [v18 setCategory:2];
    if (v17)
    {
      fm_stringByReplacingNonBreakingSpaces = [v5 fm_stringByReplacingNonBreakingSpaces];
      [v18 setMsgTitle:fm_stringByReplacingNonBreakingSpaces];

      fm_stringByReplacingNonBreakingSpaces2 = [v6 fm_stringByReplacingNonBreakingSpaces];
      [v18 setMsgText:fm_stringByReplacingNonBreakingSpaces2];
    }

    else
    {
      [v18 setMsgTitle:v5];
      [v18 setMsgText:v6];
    }

    [v18 setShowMsgInLockScreen:1];
    [v18 setDismissMsgOnUnlock:0];
    [v18 setDismissMsgOnLock:0];
    v7 = v16;
    [v18 setDefaultButtonTitle:v16];
    if (v34)
    {
      v21 = v9 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v9 = @"open-url";
    }

    if (v11)
    {
      v22 = v12 == 0;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v12 = @"open-url";
    }

    if (v9)
    {
      v23 = [(FMDServiceProvider *)self alertActionInfoForAction:v9 andURL:?];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1001CFA58;
      v40[3] = &unk_1002CD478;
      v41 = v9;
      v42 = v23;
      v24 = v23;
      [v18 setDefaultButtonAction:v40];

      v7 = v16;
    }

    [v18 setAlternateButtonTitle:v10];
    if (v12)
    {
      v25 = [(FMDServiceProvider *)self alertActionInfoForAction:v12 andURL:v11];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1001CFB10;
      v37[3] = &unk_1002CD478;
      v38 = v12;
      v39 = v25;
      v26 = v25;
      [v18 setAlternateButtonAction:v37];
    }

    defaultButtonTitle = [v18 defaultButtonTitle];
    if (!defaultButtonTitle)
    {
      alternateButtonTitle = [v18 alternateButtonTitle];

      if (alternateButtonTitle)
      {
        goto LABEL_24;
      }

      defaultButtonTitle = [@"FMD_DEFAULT_ALERT_BUTTON" fmd_localizedString];
      [v18 setDefaultButtonTitle:defaultButtonTitle];
    }

LABEL_24:
    if (v15 <= 0.0)
    {
      v32 = +[FMAlertManager sharedInstance];
      [v32 activateAlert:v18];
    }

    else
    {
      v30 = sub_100002880(v28);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v44 = v15;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Showing alert after %.2f seconds...", buf, 0xCu);
      }

      v31 = dispatch_time(0, (v15 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001CFBC8;
      block[3] = &unk_1002CD4C8;
      v36 = v18;
      dispatch_after(v31, &_dispatch_main_q, block);
      v32 = v36;
    }

    v8 = v34;
  }
}

- (void)didReceiveAuthFailureForRequest:(id)request
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(FMDServiceProvider *)self serviceName];
    account = [(FMDServiceProvider *)self account];
    username = [account username];
    v8 = 138412546;
    v9 = serviceName;
    v10 = 2112;
    v11 = username;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ - Auth failure received for account %@", &v8, 0x16u);
  }
}

- (void)didReceiveServerAlertForRequest:(id)request
{
  requestCopy = request;
  alertFromServerResponse = [requestCopy alertFromServerResponse];

  if (alertFromServerResponse)
  {
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E6CC(requestCopy, v7);
    }

    alertFromServerResponse2 = [requestCopy alertFromServerResponse];
    [(FMDServiceProvider *)self showAlertFromServerResponse:alertFromServerResponse2];
  }
}

- (void)deviceNameChanged:(id)changed
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Register for device name change", v5, 2u);
  }

  [(FMDServiceProvider *)self registerDeviceWithCause:@"DeviceNameChanged" force:0];
}

- (void)locationServicesStateChanged:(id)changed
{
  [(FMDServiceProvider *)self registerDeviceWithCause:@"LocationServicesStateChanged" force:0];
  v4 = +[FMDSystemConfig sharedInstance];
  isLocationServicesEnabled = [v4 isLocationServicesEnabled];

  if ((isLocationServicesEnabled & 1) == 0)
  {
    accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
    [accessoryLocationStore clearAccessoryLocationStore];
  }
}

- (void)searchPartyBeaconsChanged:(id)changed
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Register for search Party Beacons Changed", buf, 2u);
  }

  v5 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFFD4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)_handleAccessoryDidPairNotification:(id)notification
{
  v4 = sub_100002880(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_handleAccessoryDidPairNotification", v6, 2u);
  }

  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  [accessoryRegistry reloadData];
}

- (void)accessoryDidUpdate:(id)update
{
  updateCopy = update;
  category = [updateCopy category];
  if (category == 1 || (category = [updateCopy category], category == 3))
  {
    v6 = sub_10017DA30(category);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10022E780();
    }

    v7 = [AccessoryRegisterAction alloc];
    account = [(FMDServiceProvider *)self account];
    v9 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:updateCopy];
    v10 = [(AccessoryRegisterAction *)v7 initWithAccount:account accessory:updateCopy cause:@"accessoryRegistryUpdate" force:0 serverInteractionController:v9];

    [(AccessoryRegisterAction *)v10 setIncludeDeviceState:1];
    v11 = +[FMDOperationManager sharedManager];
    accessoryIdentifier = [updateCopy accessoryIdentifier];
    stringValue = [accessoryIdentifier stringValue];
    [v11 addAction:v10 forIdentifier:stringValue];
  }
}

- (void)accessoryDidPair:(id)pair
{
  pairCopy = pair;
  v5 = sub_100002880(pairCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = pairCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory did pair : sending a register: %@", &v14, 0xCu);
  }

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  [supportedAccessoryRegistry resetSupportedAccessoriesVersion];

  [(FMDServiceProvider *)self registerDeviceWithCause:@"deviceDidPair" force:0];
  [AccessoryRegisterAction cleanupContextForAccessory:pairCopy];
  v7 = [pairCopy conformsToProtocol:&OBJC_PROTOCOL___FMDAudioAccessory];
  v8 = v7;
  v9 = sub_100002880(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Accessory did pair", &v14, 2u);
    }

    supportedAccessoryRegistry2 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
    accessoryRegistry2 = [supportedAccessoryRegistry2 assetsForAccessory:pairCopy];

    accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry updateAccessory:pairCopy assets:accessoryRegistry2];
  }

  else
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Internal Accessory did pair", &v14, 2u);
    }

    accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
    [accessoryRegistry2 forceUpdateAccessory:pairCopy];
  }
}

- (void)accessoryDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  v5 = sub_100002880(unpairCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory did un-pair : sending a register.", v7, 2u);
  }

  [(FMDServiceProvider *)self registerDeviceWithCause:@"deviceDidUnpair" force:0];
  commandContext = [unpairCopy commandContext];
  [commandContext cleanupContexts];

  [AccessoryRegisterAction cleanupContextForAccessory:unpairCopy];
}

- (BOOL)supportsAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = sub_100002880(accessoryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10022E7E8();
  }

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  v7 = [supportedAccessoryRegistry isAccessorySupported:accessoryCopy];

  return v7;
}

- (void)supportedAccessoryRegistryDidUpdateSupportedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  allAccessories = [accessoryRegistry allAccessories];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D0598;
  v8[3] = &unk_1002D10D8;
  v9 = accessoriesCopy;
  selfCopy = self;
  v7 = accessoriesCopy;
  [allAccessories enumerateObjectsUsingBlock:v8];
}

- (BOOL)enqueueRequest:(id)request
{
  requestCopy = request;
  account = [(FMDServiceProvider *)self account];
  LOBYTE(self) = [(FMDServiceProvider *)self enqueueRequest:requestCopy account:account];

  return self;
}

- (BOOL)enqueueRequest:(id)request account:(id)account
{
  requestCopy = request;
  accountCopy = account;
  v8 = accountCopy;
  if (accountCopy)
  {
    authId = [accountCopy authId];
    account = [(FMDServiceProvider *)self account];
    authId2 = [account authId];
    v12 = [authId localizedCaseInsensitiveCompare:authId2];

    if (v12)
    {
      [(FMDServiceProvider *)self serverInteractionControllerForAccount:v8];
    }

    else
    {
      [(FMDServiceProvider *)self serverInteractionController];
    }
    v16 = ;
    v15 = [v16 enqueueRequest:requestCopy];
  }

  else
  {
    v13 = sub_100002880(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [requestCopy fm_logID];
      v18 = 138412290;
      v19 = fm_logID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not sending request %@ to server since there is no account. This seems like a stray request that escaped the deinitialization process", &v18, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)enqueueRequest:(id)request forAccessory:(id)accessory
{
  requestCopy = request;
  accessoryCopy = accessory;
  account = [(FMDServiceProvider *)self account];

  if (!account)
  {
    v12 = sub_100002880(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [requestCopy fm_logID];
      v16 = 138412290;
      v17 = fm_logID;
      v14 = "Not sending request %@ to server since there is no account. This seems like a stray request that escaped the deinitialization process";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
    }

LABEL_9:

    v11 = 0;
    goto LABEL_10;
  }

  if (!accessoryCopy)
  {
    v12 = sub_100002880(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [requestCopy fm_logID];
      v16 = 138412290;
      v17 = fm_logID;
      v14 = "Not sending request %@ to server since there is no accessory. This seems like a stray request that escaped the deinitialization process";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:accessoryCopy];
  v11 = [v10 enqueueRequest:requestCopy];

LABEL_10:
  return v11;
}

- (void)didReceiveAPSMessage:(id)message
{
  messageCopy = message;
  v5 = sub_100002880(messageCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v65 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Push message received %@", buf, 0xCu);
  }

  v6 = [messageCopy objectForKey:@"fmipIntents"];
  v7 = [messageCopy objectForKey:@"fmipAccessoryIntents"];
  v8 = [messageCopy objectForKey:@"fmipId"];
  v57 = [messageCopy objectForKeyedSubscript:@"serverContext"];
  v9 = +[FMSystemInfo sharedInstance];
  if ([v9 isInternalBuild])
  {
    v10 = +[FMDPreferencesMgr disablePush];

    if (v10)
    {
      v12 = sub_100002880(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pushes are disabled", buf, 2u);
      }

LABEL_14:

      goto LABEL_65;
    }
  }

  else
  {
  }

  if (![(FMDServiceProvider *)self _handleSecureLocationsPush:messageCopy completion:0])
  {
    account = [(FMDServiceProvider *)self account];

    if (!account)
    {
      v12 = sub_100002880(v14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10022E8BC(v12, v17, v18, v19, v20, v21, v22, v23);
      }

      goto LABEL_14;
    }

    v15 = +[FMSystemInfo sharedInstance];
    if ([v15 isInternalBuild])
    {
      v16 = +[FMDPreferencesMgr disableIntents];
    }

    else
    {
      v16 = 0;
    }

    if (v6 | v7 && v16)
    {
      v25 = sub_100002880(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Intents are disabled", buf, 2u);
      }
    }

    if (((v6 | v7) == 0) | v16 & 1)
    {
      [(FMDServiceProvider *)self _handlePushWithoutIntents:v57];
    }

    else
    {
      v26 = [(FMDServiceProvider *)self _isValidIntentAccountId:v8];
      v27 = v26;
      v28 = sub_100002880(v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v65 = v27;
        *&v65[4] = 2112;
        *&v65[6] = v8;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "isValidIntentAccount %d for intentAccountId %@", buf, 0x12u);
      }

      if (v27)
      {
        v58 = +[NSMutableSet set];
        if (v7)
        {
          v52 = v8;
          v53 = v7;
          v54 = v6;
          v55 = messageCopy;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = v7;
          v29 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v60;
            do
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v60 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v59 + 1) + 8 * i);
                v34 = [v33 objectForKey:@"id"];
                v35 = [v33 objectForKey:@"type"];
                if ([v35 isEqualToString:@"SND"])
                {
                  [(FMDServiceProvider *)self _handleSoundIntent:v33 serverContext:v57];
                }

                else if ([v35 isEqualToString:@"LOC"])
                {
                  [(FMDServiceProvider *)self _handleLocateIntent:v33 serverContext:v57];
                }

                else if ([v35 isEqualToString:@"QC"])
                {
                  [(FMDServiceProvider *)self _handleQCIntent:v33 serverContext:v57];
                }

                [v58 addObject:v34];
              }

              v30 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
            }

            while (v30);
          }

          v6 = v54;
          messageCopy = v55;
          v8 = v52;
          v7 = v53;
        }

        if (v6)
        {
          v36 = [v6 objectForKey:@"SND"];
          v37 = v36;
          if (v36)
          {
            v38 = [v36 objectForKey:@"id"];
            v39 = [v58 containsObject:v38];
            if (v39)
            {
              v40 = sub_100002880(v39);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                sub_10022E850();
              }
            }

            else
            {
              [(FMDServiceProvider *)self _handleSoundIntent:v37 serverContext:v57];
            }
          }

          selfCopy = self;
          v42 = [v6 objectForKey:@"LOC"];
          v43 = v42;
          if (v42)
          {
            v44 = [v42 objectForKey:@"id"];
            v45 = [v58 containsObject:v44];
            if (v45)
            {
              v46 = sub_100002880(v45);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                sub_10022E850();
              }
            }

            else
            {
              [(FMDServiceProvider *)selfCopy _handleLocateIntent:v43 serverContext:v57];
            }
          }

          v47 = [v6 objectForKey:@"QC"];
          v48 = v47;
          if (v47)
          {
            v49 = [v47 objectForKey:@"id"];
            v50 = [v58 containsObject:v49];
            if (v50)
            {
              v51 = sub_100002880(v50);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                sub_10022E850();
              }
            }

            else
            {
              [(FMDServiceProvider *)selfCopy _handleQCIntent:v48 serverContext:v57];
            }
          }
        }
      }
    }
  }

LABEL_65:
}

- (void)didReceiveAPSToken:(id)token
{
  if ([(FMDServiceProvider *)self completedStartupRegister])
  {

    [(FMDServiceProvider *)self registerDeviceWithCause:@"APSTokenReceived" force:0];
  }

  else
  {

    [(FMDServiceProvider *)self _sendStartupRegister];
  }
}

- (void)_handlePushWithoutIntents:(id)intents
{
  intentsCopy = intents;
  v5 = sub_100002880(intentsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = intentsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling push without intent %@", buf, 0xCu);
  }

  essentialServerInfoMissingError = [(FMDServiceProvider *)self essentialServerInfoMissingError];
  if (essentialServerInfoMissingError == 1196379972)
  {
    v7 = [FMDActingRequestDecorator alloc];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001D1380;
    v23[3] = &unk_1002CD580;
    v23[4] = self;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1001D13FC;
    v21 = &unk_1002CD580;
    v22 = intentsCopy;
    v8 = [(FMDActingRequestDecorator *)v7 initWithDeviceContextGenerator:&stru_1002D10F8 deviceInfoGenerator:v23 serverContextGenerator:&v18 requestHeaderGenerator:0];
    v9 = [QCAction alloc];
    v10 = [(FMDServiceProvider *)self account:v18];
    serverInteractionController = [(FMDServiceProvider *)self serverInteractionController];
    v12 = [(QCAction *)v9 initWithAccount:v10 shutdownActivityPending:0 serverInteractionController:serverInteractionController];

    [(QCAction *)v12 setRequestDecorator:v8];
    v13 = +[ActionManager sharedManager];
    v14 = [v13 enqueueAction:v12];
  }

  else
  {
    v15 = essentialServerInfoMissingError;
    v16 = sub_100002880(essentialServerInfoMissingError);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [NSString stringWithFourCC:v15];
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring APS message since some essential server info is missing - '%@'", buf, 0xCu);
    }

    [(FMDServiceProvider *)self tryToFetchAuthToken];
  }
}

- (void)_handleLocateIntent:(id)intent serverContext:(id)context
{
  intentCopy = intent;
  contextCopy = context;
  v8 = [intentCopy objectForKey:@"id"];
  v9 = v8;
  if (v8)
  {
    v10 = sub_100002880(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Locate command intent found", &v26, 2u);
    }

    v11 = [intentCopy objectForKey:@"udid"];
    fm_nullToNil = [v11 fm_nullToNil];

    if ([fm_nullToNil length])
    {
      v13 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
      v15 = [accessoryRegistry accessoryForIdentifier:v13];

      if (v15)
      {
        commandContext = [v15 commandContext];
        [commandContext setPendingActionIntent:intentCopy];

        v18 = sub_100002880(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412546;
          v27 = v15;
          v28 = 2112;
          v29 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found accessory %@ from push for id %@", &v26, 0x16u);
        }

        v19 = [AccessoryAction alloc];
        account = [(FMDServiceProvider *)self account];
        v21 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v15];
        v22 = [(AccessoryAction *)v19 initWithAccount:account accessory:v15 requiresConnectivity:0 serverInteractionController:v21];

        accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
        [accessoryRegistry2 registerDelegate:v22];

        v24 = +[ActionManager sharedManager];
        v25 = [v24 enqueueAction:v22];
      }
    }

    else
    {
      [(FMDServiceProvider *)self _handlePushWithoutIntents:contextCopy];
    }
  }
}

- (void)_handleQCIntent:(id)intent serverContext:(id)context
{
  intentCopy = intent;
  contextCopy = context;
  v8 = [intentCopy objectForKey:@"id"];
  v9 = [intentCopy objectForKey:@"udid"];
  fm_nullToNil = [v9 fm_nullToNil];

  v11 = [intentCopy objectForKey:@"waitForConnect"];
  bOOLValue = [v11 BOOLValue];

  if (v8)
  {
    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "QC intent found", buf, 2u);
    }

    if ([fm_nullToNil length])
    {
      v15 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
      v17 = [accessoryRegistry accessoryForIdentifier:v15];

      if (v17)
      {
        v28 = bOOLValue;
        commandContext = [v17 commandContext];
        [commandContext setPendingActionIntent:intentCopy];

        v20 = sub_100002880(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v30 = v17;
          v31 = 2112;
          v32 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found accessory %@ from push for id %@", buf, 0x16u);
        }

        v21 = [AccessoryAction alloc];
        account = [(FMDServiceProvider *)self account];
        v23 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v17];
        v24 = [(AccessoryAction *)v21 initWithAccount:account accessory:v17 requiresConnectivity:v28 serverInteractionController:v23];

        accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
        [accessoryRegistry2 registerDelegate:v24];

        v26 = +[ActionManager sharedManager];
        v27 = [v26 enqueueAction:v24];
      }
    }

    else
    {
      [(FMDServiceProvider *)self _handlePushWithoutIntents:contextCopy];
    }
  }
}

- (id)futureForCommandId:(id)id
{
  idCopy = id;
  futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
  v6 = [futuresByCommandId objectForKeyedSubscript:idCopy];

  return v6;
}

- (void)setFuture:(id)future commandId:(id)id
{
  if (future && id)
  {
    idCopy = id;
    futureCopy = future;
    futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
    [futuresByCommandId setObject:futureCopy forKeyedSubscript:idCopy];
  }
}

- (void)removeFutureForCommandId:(id)id
{
  if (id)
  {
    idCopy = id;
    futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
    [futuresByCommandId removeObjectForKey:idCopy];
  }
}

- (void)clearFutures
{
  futuresByCommandId = [(FMDServiceProvider *)self futuresByCommandId];
  [futuresByCommandId removeAllObjects];
}

- (void)_handleSoundIntent:(id)intent serverContext:(id)context
{
  intentCopy = intent;
  v6 = [intentCopy objectForKey:@"id"];
  v7 = [intentCopy objectForKey:@"maxDurationInSeconds"];
  v8 = [intentCopy objectForKey:@"udid"];
  fm_nullToNil = [v8 fm_nullToNil];

  if (v6)
  {
    v11 = sub_100002880(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v7 doubleValue];
      *buf = 134217984;
      v76 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Play sound intent found, playing sound for %f seconds...", buf, 0xCu);
    }

    if ([fm_nullToNil length])
    {
      v13 = [intentCopy objectForKey:@"rampUpDurationInSeconds"];
      v14 = [intentCopy objectForKey:@"rampDownDurationInSeconds"];
      v71 = [intentCopy objectForKey:@"channels"];
      v15 = [intentCopy objectForKey:@"userConfirmedSafetyWarning"];
      bOOLValue = [v15 BOOLValue];

      v16 = [intentCopy objectForKey:@"forceConnection"];
      bOOLValue2 = [v16 BOOLValue];

      v17 = [intentCopy objectForKeyedSubscript:@"scanDurationInSeconds"];
      v74 = [intentCopy objectForKey:@"intentEpochTime"];
      v73 = [intentCopy objectForKey:@"intentExpiryInSeconds"];
      v72 = [intentCopy objectForKey:@"delayIntervalInSeconds"];
      v70 = [intentCopy objectForKey:@"inEarDetectionTimeout"];
      v18 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
      v69 = v18;
      v20 = [accessoryRegistry accessoryForIdentifier:v18];

      v22 = sub_100002880(v21);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        v68 = v7;
        if (v23)
        {
          *buf = 138412546;
          v76 = v20;
          v77 = 2112;
          v78 = fm_nullToNil;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found accessory %@ from push for id %@", buf, 0x16u);
        }

        commandContext = [v20 commandContext];
        [commandContext setPendingActionIntent:intentCopy];

        supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
        [supportedAccessoryRegistry downloadAssetsIfNeededForAccessory:v20];

        supportedAccessoryRegistry2 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
        v62 = [supportedAccessoryRegistry2 defaultTimeoutAudioSafetyStatusForAccessory:v20];

        v22 = +[NSDate fm_dateFromEpoch:](NSDate, "fm_dateFromEpoch:", [v74 integerValue]);
        v66 = v17;
        v67 = v14;
        v65 = v13;
        if (!v73 || ([v73 doubleValue], v27 <= 0.0) || (objc_msgSend(v73, "doubleValue"), -[NSObject dateByAddingTimeInterval:](v22, "dateByAddingTimeInterval:"), v28 = objc_claimAutoreleasedReturnValue(), +[NSDate date](NSDate, "date"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "timeIntervalSinceReferenceDate"), v31 = v30, objc_msgSend(v28, "timeIntervalSinceReferenceDate"), v33 = v32, v29, v28, v31 < v33))
        {
          v34 = [(FMDServiceProvider *)self futureForCommandId:v6];

          if (v34)
          {
            v36 = sub_100002880(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "FMDServiceProvider handling for command id has already started", buf, 2u);
            }
          }

          else
          {
            [(FMDServiceProvider *)self clearFutures];
            v61 = objc_alloc_init(FMFuture);
            [(FMDServiceProvider *)self setFuture:v61 commandId:v6];
            supportedAccessoryRegistry3 = [(FMDServiceProvider *)self supportedAccessoryRegistry];
            v39 = [supportedAccessoryRegistry3 playbackChannelNamesForAccessory:v20 commandChannels:v71];

            v40 = [FMDAccessoryPlaySoundAction alloc];
            [(FMDServiceProvider *)self accessoryRegistry];
            v42 = v41 = v13;
            v43 = [(FMDAccessoryPlaySoundAction *)v40 initWithAccessory:v20 accessoryRegistry:v42 channels:v39];

            [(FMDAccessoryPlaySoundAction *)v43 setDuration:v68];
            [(FMDAccessoryPlaySoundAction *)v43 setTimeout:v66];
            v44 = v41;
            v36 = v61;
            [(FMDAccessoryPlaySoundAction *)v43 setRampUpDuration:v44];
            [(FMDAccessoryPlaySoundAction *)v43 setRampDownDuration:v67];
            [(FMDAccessoryPlaySoundAction *)v43 setDefaultAudioSafetyStatus:v62];
            [(FMDAccessoryPlaySoundAction *)v43 setFuture:v61];
            [(FMDAccessoryPlaySoundAction *)v43 setForceConnection:bOOLValue2];
            [(FMDAccessoryPlaySoundAction *)v43 setBypassInEarCheck:bOOLValue];
            [(FMDAccessoryPlaySoundAction *)v43 setInEarDetectionTimeout:v70];
            bluetoothManager = [(FMDServiceProvider *)self bluetoothManager];
            [(FMDAccessoryPlaySoundAction *)v43 setBluetoothManager:bluetoothManager];

            accessoryRegistry2 = [(FMDServiceProvider *)self accessoryRegistry];
            [accessoryRegistry2 registerDelegate:v43];

            v47 = +[ActionManager sharedManager];
            v48 = [v47 enqueueAction:v43];

            v71 = v39;
          }
        }

        v49 = [AccessoryAction alloc];
        account = [(FMDServiceProvider *)self account];
        v51 = [(FMDServiceProvider *)self serverInteractionControllerForAccessory:v20];
        v52 = [(AccessoryAction *)v49 initWithAccount:account accessory:v20 requiresConnectivity:0 serverInteractionController:v51];

        accessoryRegistry3 = [(FMDServiceProvider *)self accessoryRegistry];
        [accessoryRegistry3 registerDelegate:v52];

        [v72 doubleValue];
        if (v54 <= 0.0)
        {
          v57 = +[ActionManager sharedManager];
          v60 = [(TimedWaitAction *)v57 enqueueAction:v52];
        }

        else
        {
          v55 = [TimedWaitAction alloc];
          [v72 doubleValue];
          v56 = [NSDate dateWithTimeIntervalSinceNow:?];
          v57 = [(TimedWaitAction *)v55 initWithAction:v52 executeAt:v56];

          v58 = +[ActionManager sharedManager];
          v59 = [v58 enqueueAction:v57];
        }

        v14 = v67;
        v7 = v68;
        v13 = v65;

        v17 = v66;
      }

      else if (v23)
      {
        *buf = 138412290;
        v76 = fm_nullToNil;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No accessory found with id %@. Ignoring the push", buf, 0xCu);
      }
    }

    else
    {
      v37 = +[FMDStartupRegisterManager sharedInstance];
      [v37 eventDidOccur:4];

      v13 = [NSString stringWithFormat:@"command-%@-id", @"message"];
      [FMPreferencesUtil setString:v6 forKey:v13 inDomain:kFMDPrefDomain];
      [FMPreferencesUtil setString:v6 forKey:@"lastCommandId" inDomain:kFMDNotBackedUpPrefDomain];
    }
  }
}

- (BOOL)_isValidIntentAccountId:(id)id
{
  idCopy = id;
  account = [(FMDServiceProvider *)self account];
  adsid = [account adsid];

  v7 = [adsid dataUsingEncoding:4];
  CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), md);
  v8 = [NSData dataWithBytes:md length:32];
  v9 = [v8 base64EncodedStringWithOptions:0];
  v10 = sub_100002880(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = idCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Comparing ADSIDs (_isValidIntentAccountId) %@ : %@", &v13, 0x16u);
  }

  v11 = [idCopy isEqualToString:v9];
  return v11;
}

- (void)_accountDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy && !toCopy)
  {
    v6 = 1;
LABEL_4:
    v7 = +[FMDStartupRegisterManager sharedInstance];
    [v7 eventDidOccur:v6];

    goto LABEL_5;
  }

  if (fromCopy)
  {
    if (toCopy)
    {
      authId = [fromCopy authId];
      authId2 = [toCopy authId];
      v10 = [authId isEqualToString:authId2];

      if ((v10 & 1) == 0)
      {
        v11 = +[FMDStartupRegisterManager sharedInstance];
        [v11 eventDidOccur:1];

        v6 = 0;
        goto LABEL_4;
      }
    }
  }

LABEL_5:
}

- (BOOL)_handleSecureLocationsPush:(id)push completion:(id)completion
{
  pushCopy = push;
  completionCopy = completion;
  v8 = [pushCopy objectForKey:@"findmyws"];
  if (v8)
  {
    v9 = +[FMXPCTransactionManager sharedInstance];
    [v9 beginTransaction:@"MDSecureLocationsHandlePushTransaction"];

    v10 = [v8 objectForKey:@"locationPayload"];
    v11 = [v8 objectForKey:@"cmd"];
    v51 = 0;
    v12 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v51];
    v13 = v51;
    v14 = v13 == 0;
    if (v13)
    {
      v15 = _os_feature_enabled_impl();
      v16 = v15;
      v17 = sub_1000029E0(v15);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v53 = v13;
        v19 = "Error creating json data to send to FML %@";
      }

      else
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v53 = v13;
        v19 = "Error creating json data to send to searchparty %@";
      }

      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
LABEL_19:

      v28 = +[FMXPCTransactionManager sharedInstance];
      [v28 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v13);
      }

      goto LABEL_37;
    }

    if (v10)
    {
      v39 = v11;
      v21 = sub_1000029E0(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received Location Payload Push %@", buf, 0xCu);
      }

      v22 = _os_feature_enabled_impl();
      v23 = v22;
      v24 = sub_1000029E0(v22);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          *buf = 138412290;
          v53 = v12;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending processLocationPayload payload to FML %@", buf, 0xCu);
        }

        findMyLocate = [(FMDServiceProvider *)self findMyLocate];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1001D2C6C;
        v49[3] = &unk_1002CD770;
        v50 = completionCopy;
        [findMyLocate processLocationPayload:v12 completionHandler:v49];

        v27 = v50;
        goto LABEL_35;
      }

      if (v25)
      {
        *buf = 138412290;
        v53 = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending processLocationPayload payload to SearchParty %@", buf, 0xCu);
      }

      v27 = objc_alloc_init(SPSecureLocationsManager);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1001D2D64;
      v47[3] = &unk_1002CD770;
      v48 = completionCopy;
      [v27 receivedLocationPayload:v12 completion:v47];
      v35 = v48;
    }

    else
    {
      if (!v11)
      {
LABEL_36:
        [FMXPCTransactionManager sharedInstance:v39];
        v37 = v36 = v11;
        [v37 endTransaction:@"MDSecureLocationsHandlePushTransaction"];

        v11 = v36;
LABEL_37:

        goto LABEL_38;
      }

      v39 = v11;
      v29 = sub_1000029E0(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = pushCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received Location Command Push %@", buf, 0xCu);
      }

      v30 = _os_feature_enabled_impl();
      v31 = v30;
      v32 = sub_1000029E0(v30);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        if (v33)
        {
          *buf = 138412290;
          v53 = v12;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending processLocationCommandPayload payload to FML %@", buf, 0xCu);
        }

        findMyLocate2 = [(FMDServiceProvider *)self findMyLocate];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1001D2E5C;
        v45[3] = &unk_1002CD770;
        v46 = completionCopy;
        [findMyLocate2 processLocationCommandPayload:v12 completionHandler:v45];

        v27 = v46;
        goto LABEL_35;
      }

      if (v33)
      {
        *buf = 138412290;
        v53 = v12;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending processLocationCommandPayload payload to SearchParty %@", buf, 0xCu);
      }

      v27 = objc_alloc_init(SPSecureLocationsManager);
      v40 = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_1001D2F54;
      v43 = &unk_1002CD770;
      v44 = completionCopy;
      [v27 receivedLocationCommand:v12 completion:&v40];
      v35 = v44;
    }

LABEL_35:
    v11 = v39;

    goto LABEL_36;
  }

  if (completionCopy)
  {
    v20 = [NSError errorWithDomain:kFMDErrorDomain code:1 userInfo:0];
    completionCopy[2](completionCopy, v20);
  }

  v14 = 0;
LABEL_38:

  return v14;
}

- (void)startLocationMonitoringIfNeeded
{
  locationMonitor = [(FMDServiceProvider *)self locationMonitor];

  if (!locationMonitor)
  {
    v4 = objc_alloc_init(FMDSecureLocationMonitor);
    [(FMDServiceProvider *)self setLocationMonitor:v4];
  }

  locationMonitor2 = [(FMDServiceProvider *)self locationMonitor];
  [locationMonitor2 startLocationMonitorAfterRestart];
}

- (id)apsToken
{
  account = [(FMDServiceProvider *)self account];

  v4 = +[FMDDaemon sharedInstance];
  v5 = v4;
  if (account)
  {
    account2 = [(FMDServiceProvider *)self account];
    apsEnvironmentConstant = [account2 apsEnvironmentConstant];
    v8 = [v5 apsHandlerForEnvironment:apsEnvironmentConstant];

    apsToken = [v8 apsToken];
  }

  else
  {
    v10 = [v4 apsHandlerForEnvironment:@"production"];

    apsToken = [v10 apsToken];
    v11 = sub_1000029E0(apsToken);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No FMIP account. Defaulting to aps token for PROD env", v13, 2u);
    }
  }

  return apsToken;
}

@end