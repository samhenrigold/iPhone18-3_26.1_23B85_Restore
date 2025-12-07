@interface PORegistrationManager
- (BOOL)createOrRepairDeviceConfigurationWithError:(id *)error;
- (BOOL)createOrRepairUserConfigurationWithError:(id *)error;
- (BOOL)handleUserAuthorizationForRegistration;
- (BOOL)handleUserAuthorizationNeededForAccountDisplayName:(id)name bundleIdentifier:(id)identifier;
- (BOOL)reloadSSOExtensionIfNeeded;
- (POAgentAuthenticationProcess)process;
- (POAuthPluginProcess)systemAuthPluginProcess;
- (POAuthPluginProcess)userAuthPluginProcess;
- (PORegistrationManager)initWithAgentAuthenticationProcess:(id)process userNotificationCenter:(id)center configurationHost:(id)host;
- (id)createRegistrationNotificationWithAccountName:(id)name;
- (id)createRegistrationUpdateNotificationWithAccountName:(id)name;
- (id)loadSSOExtensionWithExtensionBundleIdentifier:(id)identifier;
- (id)retrieveProfilePicture;
- (id)saveSSOTokens:(id)tokens toKeychainUsingContext:(id)context tokenId:(id)id;
- (int)ssoMethodToUse:(id)use profile:(id)profile;
- (int64_t)registrationState;
- (unint64_t)requestSmartCardForBinding:(BOOL)binding window:(id)window tokenId:(id *)id tokenHash:(id *)hash wrapTokenHash:(id *)tokenHash pinContext:(id *)context;
- (void)_startDeviceRegistrationWithCompletionHandler:(id)handler;
- (void)_startUserRegistrationWithCompletionHandler:(id)handler;
- (void)_updateRegistrationState:(id)state failed:(BOOL)failed;
- (void)cleanupUserConfigAfterMigrationToShared;
- (void)completeLegacyUserRegistration;
- (void)continueDeviceRegistration:(id)registration;
- (void)continueUserRegistration:(id)registration;
- (void)createContextForUserCredential;
- (void)createUserConfigurationForBuddyUser;
- (void)exitDeviceRegistration:(id)registration;
- (void)exitRegistration:(id)registration;
- (void)exitUserRegistration:(id)registration;
- (void)failDeviceRegistrationBeforeAuthorization;
- (void)failDeviceRegistrationPostRegistrationWithUserInteractionAllowed:(BOOL)allowed;
- (void)failUserRegistrationBeforeAuthorization;
- (void)findExistingSmartCardBinding;
- (void)finishRegistrationWithRetry;
- (void)finishRegistrationWithStatus:(BOOL)status message:(id)message;
- (void)handleAuthorizationForNewUsers;
- (void)handleDeviceAndUserRegistrationForRepair:(BOOL)repair;
- (void)handleDeviceAndUserRegistrationForRepair:(BOOL)repair newPasswordUser:(BOOL)user newSmartCardUser:(BOOL)cardUser notified:(BOOL)notified profile:(id)profile;
- (void)handleDeviceRegistrationNotification;
- (void)handleRegistrationViewControllerWithCompletion:(id)completion;
- (void)handleRemovingRegistrationForExtension:(id)extension alreadyDeleted:(BOOL)deleted;
- (void)handleUserCredentialNeededAtLogin:(BOOL)login smartCard:(BOOL)card accountDisplayName:(id)name bundleIdentifier:(id)identifier returningContext:(id *)context;
- (void)handleUserRegistrationForUser:(id)user repair:(BOOL)repair;
- (void)handleUserRegistrationForUser:(id)user repair:(BOOL)repair newPasswordUser:(BOOL)passwordUser newSmartCardUser:(BOOL)cardUser notified:(BOOL)notified profile:(id)profile;
- (void)handleUserRegistrationNotification;
- (void)notifyDeviceRegistrationDidChange;
- (void)notifyUserRegistrationDidChange;
- (void)promptUserForRegistration;
- (void)requestDidCompleteWithError:(id)error;
- (void)requestUserAuthenticationSyncPassword:(BOOL)password completion:(id)completion;
- (void)resetRegistrationWithCompletion:(id)completion;
- (void)retrieveProfilePicture;
- (void)setupDeviceRegistrationOptions;
- (void)setupUserRegistrationOptions;
- (void)showAlertMessage:(id)message messageText:(id)text completion:(id)completion;
- (void)showAlertWithError:(id)error completion:(id)completion;
- (void)storeCredentialAndUpdatePasswordHint;
- (void)updateRegistrationState:(int64_t)state failed:(BOOL)failed;
- (void)windowDidClose;
@end

@implementation PORegistrationManager

- (PORegistrationManager)initWithAgentAuthenticationProcess:(id)process userNotificationCenter:(id)center configurationHost:(id)host
{
  processCopy = process;
  centerCopy = center;
  hostCopy = host;
  v30.receiver = self;
  v30.super_class = PORegistrationManager;
  v11 = [(PORegistrationManager *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_process, processCopy);
    v13 = +[POConfigurationManager sharedInstance];
    configurationManager = v12->_configurationManager;
    v12->_configurationManager = v13;

    v15 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
    jwksStorageProvider = v12->_jwksStorageProvider;
    v12->_jwksStorageProvider = v15;

    v17 = objc_alloc_init(PODirectoryServices);
    directoryServices = v12->_directoryServices;
    v12->_directoryServices = v17;

    v19 = [objc_alloc(MEMORY[0x277D3D238]) initWithIdentifierProvider:v12->_directoryServices];
    tokenHelper = v12->_tokenHelper;
    v12->_tokenHelper = v19;

    v21 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v12->_keychainHelper;
    v12->_keychainHelper = v21;

    v23 = objc_alloc_init(MEMORY[0x277D3D1C0]);
    authenticationProcess = v12->_authenticationProcess;
    v12->_authenticationProcess = v23;

    v25 = objc_alloc_init(MEMORY[0x277D3D210]);
    keyWrap = v12->_keyWrap;
    v12->_keyWrap = v25;

    objc_storeStrong(&v12->_userNotificationCenter, center);
    mEMORY[0x277CEBEE8] = [MEMORY[0x277CEBEE8] sharedInstance];
    extensionManager = v12->_extensionManager;
    v12->_extensionManager = mEMORY[0x277CEBEE8];

    objc_storeStrong(&v12->_configurationHost, host);
  }

  return v12;
}

- (int64_t)registrationState
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  state = [registrationContext state];

  return state;
}

- (POAuthPluginProcess)userAuthPluginProcess
{
  userAuthPluginProcess = self->_userAuthPluginProcess;
  if (!userAuthPluginProcess)
  {
    v4 = [[POAuthPluginProcess alloc] initWithUid:0 forLogin:0];
    v5 = self->_userAuthPluginProcess;
    self->_userAuthPluginProcess = v4;

    userAuthPluginProcess = self->_userAuthPluginProcess;
  }

  v6 = userAuthPluginProcess;

  return v6;
}

- (POAuthPluginProcess)systemAuthPluginProcess
{
  systemAuthPluginProcess = self->_systemAuthPluginProcess;
  if (!systemAuthPluginProcess)
  {
    v4 = [[POAuthPluginProcess alloc] initWithUid:92 forLogin:1];
    v5 = self->_systemAuthPluginProcess;
    self->_systemAuthPluginProcess = v4;

    systemAuthPluginProcess = self->_systemAuthPluginProcess;
  }

  v6 = systemAuthPluginProcess;

  return v6;
}

- (void)updateRegistrationState:(int64_t)state failed:(BOOL)failed
{
  failedCopy = failed;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [(PORegistrationManager *)self _updateRegistrationState:v6 failed:failedCopy];
}

- (void)_updateRegistrationState:(id)state failed:(BOOL)failed
{
  failedCopy = failed;
  stateCopy = state;
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext isBuddyFlow])
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    isRunningInBuddy = [registrationContext2 isRunningInBuddy];

    if (isRunningInBuddy)
    {
      goto LABEL_7;
    }

    registrationContext = [(PORegistrationManager *)self userAuthPluginProcess];
    if (stateCopy)
    {
      [registrationContext updateRegistrationState:objc_msgSend(stateCopy failed:{"integerValue"), failedCopy}];
    }

    else
    {
      [registrationContext updateRegistrationStateFailed:failedCopy];
    }
  }

LABEL_7:
  [(PORegistrationManager *)self setRegistrationFailed:failedCopy];
  if (!failedCopy)
  {
    process = [(PORegistrationManager *)self process];
    [process setPlatformSSOActive:1];
  }

  v10 = stateCopy;
  if (stateCopy)
  {
    integerValue = [stateCopy integerValue];
    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    [registrationContext3 setState:integerValue];

    v10 = stateCopy;
  }
}

- (void)continueDeviceRegistration:(id)registration
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PORegistrationManager_continueDeviceRegistration___block_invoke;
  block[3] = &unk_279A3A060;
  block[4] = self;
  dispatch_async(v4, block);
}

void __52__PORegistrationManager_continueDeviceRegistration___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __52__PORegistrationManager_continueDeviceRegistration___block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)continueUserRegistration:(id)registration
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PORegistrationManager_continueUserRegistration___block_invoke;
  block[3] = &unk_279A3A060;
  block[4] = self;
  dispatch_async(v4, block);
}

void __50__PORegistrationManager_continueUserRegistration___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__PORegistrationManager_continueUserRegistration___block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)exitDeviceRegistration:(id)registration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self failDeviceRegistrationBeforeAuthorization];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)exitUserRegistration:(id)registration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self failUserRegistrationBeforeAuthorization];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)exitRegistration:(id)registration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)handleUserCredentialNeededAtLogin:(BOOL)login smartCard:(BOOL)card accountDisplayName:(id)name bundleIdentifier:(id)identifier returningContext:(id *)context
{
  v8 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager handleUserCredentialNeededAtLogin:smartCard:accountDisplayName:bundleIdentifier:returningContext:];
  }

  if (context)
  {
    *context = 0;
  }
}

- (BOOL)handleUserAuthorizationNeededForAccountDisplayName:(id)name bundleIdentifier:(id)identifier
{
  v4 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager handleUserAuthorizationNeededForAccountDisplayName:bundleIdentifier:];
  }

  return 1;
}

- (BOOL)handleUserAuthorizationForRegistration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  authorizationProvided = [registrationContext authorizationProvided];

  if (authorizationProvided)
  {
    v6 = PO_LOG_PORegistrationManager(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_INFO, "Authorization already provided.", buf, 2u);
    }

    return 1;
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  userIsPlatformSSOUser = [registrationContext2 userIsPlatformSSOUser];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  v12 = registrationContext3;
  if ((userIsPlatformSSOUser & 1) == 0)
  {
    profile = [registrationContext3 profile];
    accountDisplayName = [profile accountDisplayName];
    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    extensionIdentifier = [registrationContext4 extensionIdentifier];
    v19 = [(PORegistrationManager *)self handleUserAuthorizationNeededForAccountDisplayName:accountDisplayName bundleIdentifier:extensionIdentifier];

    if (!v19)
    {
      v22 = PO_LOG_PORegistrationManager(v20);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
LABEL_16:

        return 0;
      }

      *buf = 0;
LABEL_15:
      _os_log_impl(&dword_25E831000, v22, OS_LOG_TYPE_INFO, "Authorization not provided, starting over.", buf, 2u);
      goto LABEL_16;
    }

LABEL_12:
    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    v7 = 1;
    [registrationContext5 setAuthorizationProvided:1];

    return v7;
  }

  credentialContext = [registrationContext3 credentialContext];

  if (!credentialContext)
  {
    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    authMethod = [registrationContext6 authMethod];

    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    v35 = registrationContext7;
    if (authMethod == 1)
    {
      profile2 = [registrationContext7 profile];
      accountDisplayName2 = [profile2 accountDisplayName];
      registrationContext8 = [(PORegistrationManager *)self registrationContext];
      extensionIdentifier2 = [registrationContext8 extensionIdentifier];
      v53 = 0;
      [(PORegistrationManager *)self handleUserCredentialNeededAtLogin:0 smartCard:0 accountDisplayName:accountDisplayName2 bundleIdentifier:extensionIdentifier2 returningContext:&v53];
      v40 = v53;

      v7 = v40 != 0;
      if (v40)
      {
LABEL_23:
        registrationContext9 = [(PORegistrationManager *)self registrationContext];
        [registrationContext9 setCredentialContext:v40];

        registrationContext10 = [(PORegistrationManager *)self registrationContext];
        [registrationContext10 setAuthorizationProvided:1];
LABEL_33:

        return v7;
      }

      registrationContext10 = PO_LOG_PORegistrationManager(v41);
      if (!os_log_type_enabled(registrationContext10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    else
    {
      if ([registrationContext7 authMethod] != 3)
      {

        goto LABEL_9;
      }

      registrationContext11 = [(PORegistrationManager *)self registrationContext];
      smartCardTokenId = [registrationContext11 smartCardTokenId];

      if (smartCardTokenId)
      {
        goto LABEL_9;
      }

      registrationContext12 = [(PORegistrationManager *)self registrationContext];
      profile3 = [registrationContext12 profile];
      accountDisplayName3 = [profile3 accountDisplayName];
      registrationContext13 = [(PORegistrationManager *)self registrationContext];
      extensionIdentifier3 = [registrationContext13 extensionIdentifier];
      v52 = 0;
      [(PORegistrationManager *)self handleUserCredentialNeededAtLogin:0 smartCard:1 accountDisplayName:accountDisplayName3 bundleIdentifier:extensionIdentifier3 returningContext:&v52];
      v40 = v52;

      v7 = v40 != 0;
      if (v40)
      {
        goto LABEL_23;
      }

      registrationContext10 = PO_LOG_PORegistrationManager(v51);
      if (!os_log_type_enabled(registrationContext10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_25E831000, registrationContext10, OS_LOG_TYPE_INFO, "Credential not provided, starting over.", buf, 2u);
    goto LABEL_33;
  }

LABEL_9:
  registrationContext14 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext14 authMethod] != 1)
  {
    registrationContext15 = [(PORegistrationManager *)self registrationContext];
    isNewPasswordUser = [registrationContext15 isNewPasswordUser];

    if (isNewPasswordUser)
    {
      return 1;
    }

    registrationContext16 = [(PORegistrationManager *)self registrationContext];
    profile4 = [registrationContext16 profile];
    accountDisplayName4 = [profile4 accountDisplayName];
    registrationContext17 = [(PORegistrationManager *)self registrationContext];
    extensionIdentifier4 = [registrationContext17 extensionIdentifier];
    v30 = [(PORegistrationManager *)self handleUserAuthorizationNeededForAccountDisplayName:accountDisplayName4 bundleIdentifier:extensionIdentifier4];

    if (!v30)
    {
      v22 = PO_LOG_PORegistrationManager(v31);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *buf = 0;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  return 1;
}

- (BOOL)reloadSSOExtensionIfNeeded
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext ssoExtension];

  if (ssoExtension)
  {
    return 1;
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  extensionIdentifier = [registrationContext2 extensionIdentifier];
  v7 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:extensionIdentifier];

  if (v7)
  {
    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    [registrationContext3 setSsoExtension:v7];

    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    ssoExtension2 = [registrationContext4 ssoExtension];
    [ssoExtension2 setDelegate:self];

    return 1;
  }

  [(PORegistrationManager *)self updateRegistrationState:5 failed:1];
  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  return 0;
}

- (void)findExistingSmartCardBinding
{
  tokenHelper = [(PORegistrationManager *)self tokenHelper];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  userName = [registrationContext userName];
  v20 = 0;
  v6 = [tokenHelper findTokenIdForSmartCardBoundUser:userName tokenHash:&v20];
  v7 = v20;
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setSmartCardTokenId:v6];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  smartCardTokenId = [registrationContext3 smartCardTokenId];
  v11 = [smartCardTokenId length];

  if (!v11)
  {
    tokenHelper2 = [(PORegistrationManager *)self tokenHelper];
    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    userName2 = [registrationContext4 userName];
    v19 = v7;
    v15 = [tokenHelper2 findTokenIdForSmartCardAMUser:userName2 tokenHash:&v19];
    v16 = v19;

    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    [registrationContext5 setSmartCardTokenId:v15];

    v7 = v16;
  }

  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  [registrationContext6 setSmartCardHash:v7];
}

- (BOOL)createOrRepairDeviceConfigurationWithError:(id *)error
{
  v104 = *MEMORY[0x277D85DE8];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];
  deviceEncryptionKey = [currentDeviceConfiguration deviceEncryptionKey];

  if (deviceEncryptionKey)
  {
    v8 = PO_LOG_PORegistrationManager(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_INFO, "Verifying device encryption key", buf, 2u);
    }

    v9 = MEMORY[0x277D3D230];
    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration2 = [configurationManager2 currentDeviceConfiguration];
    LOBYTE(v9) = [v9 verifyKey:{objc_msgSend(currentDeviceConfiguration2, "deviceEncryptionKey")}];

    v12 = v9 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  configurationManager3 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration3 = [configurationManager3 currentDeviceConfiguration];
  deviceSigningKey = [currentDeviceConfiguration3 deviceSigningKey];

  if (deviceSigningKey)
  {
    v17 = PO_LOG_PORegistrationManager(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v17, OS_LOG_TYPE_INFO, "Verifying device sigining key", buf, 2u);
    }

    v18 = MEMORY[0x277D3D230];
    configurationManager4 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration4 = [configurationManager4 currentDeviceConfiguration];
    LOBYTE(v18) = [v18 verifyKey:{objc_msgSend(currentDeviceConfiguration4, "deviceSigningKey")}];

    v21 = v18 ^ 1;
  }

  else
  {
    v21 = 0;
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (![registrationContext isRepair])
  {
    goto LABEL_16;
  }

  configurationManager5 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration5 = [configurationManager5 currentDeviceConfiguration];
  if (!currentDeviceConfiguration5)
  {

LABEL_16:
    goto LABEL_17;
  }

  v25 = currentDeviceConfiguration5;
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  v27 = [registrationContext2 deviceKeysShouldChange] | v12 | v21;

  if ((v27 & 1) == 0)
  {
    return 1;
  }

LABEL_17:
  v30 = PO_LOG_PORegistrationManager(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v101 = "[PORegistrationManager createOrRepairDeviceConfigurationWithError:]";
    v102 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v30, OS_LOG_TYPE_DEFAULT, "%s creating new device configuration on %@", buf, 0x16u);
  }

  configurationManager6 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration6 = [configurationManager6 currentDeviceConfiguration];
  v33 = currentDeviceConfiguration6;
  if (currentDeviceConfiguration6)
  {
    v34 = currentDeviceConfiguration6;
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x277D3D1E8]);
  }

  v35 = v34;

  [v35 setRegistrationCompleted:0];
  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  extensionIdentifier = [registrationContext3 extensionIdentifier];
  [v35 setExtensionIdentifier:extensionIdentifier];

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  [v35 setProtocolVersion:{objc_msgSend(registrationContext4, "protocolVersion")}];

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext5 ssoExtension];
  sdkVersionString = [ssoExtension sdkVersionString];
  [v35 setSdkVersionString:sdkVersionString];

  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  [v35 setLoginType:{objc_msgSend(registrationContext6, "authMethod")}];

  date = [MEMORY[0x277CBEAA8] date];
  [v35 setAuthGracePeriodStart:date];

  registrationContext7 = [(PORegistrationManager *)self registrationContext];
  profile = [registrationContext7 profile];
  administratorGroups = [profile administratorGroups];
  [v35 setAdministratorGroups:administratorGroups];

  registrationContext8 = [(PORegistrationManager *)self registrationContext];
  profile2 = [registrationContext8 profile];
  authorizationGroups = [profile2 authorizationGroups];
  [v35 setAuthorizationGroups:authorizationGroups];

  registrationContext9 = [(PORegistrationManager *)self registrationContext];
  profile3 = [registrationContext9 profile];
  otherGroups = [profile3 otherGroups];
  [v35 setOtherGroups:otherGroups];

  registrationContext10 = [(PORegistrationManager *)self registrationContext];
  profile4 = [registrationContext10 profile];
  [v35 updateWithProfile:profile4];

  deviceSigningKey2 = [v35 deviceSigningKey];
  if (!deviceSigningKey2 || (-[PORegistrationManager registrationContext](self, "registrationContext"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 deviceKeysShouldChange] | v21, v56, (v57 & 1) != 0))
  {
    v58 = PO_LOG_PORegistrationManager(deviceSigningKey2);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v58, OS_LOG_TYPE_INFO, "Creating new signing key", buf, 2u);
    }

    registrationContext11 = [(PORegistrationManager *)self registrationContext];
    ssoExtension2 = [registrationContext11 ssoExtension];
    v61 = [POAlgorithmUtil deviceSigningAlgorithmToUse:ssoExtension2 deviceConfiguration:v35];
    registrationContext12 = [(PORegistrationManager *)self registrationContext];
    [registrationContext12 setSigningAlgorithm:v61];

    keychainHelper = [(PORegistrationManager *)self keychainHelper];
    extensionIdentifier2 = [v35 extensionIdentifier];
    [keychainHelper _deleteCachedAttestationForExtensionIdentifier:extensionIdentifier2 key:{objc_msgSend(v35, "deviceSigningKey")}];

    v65 = MEMORY[0x277D3D230];
    registrationContext13 = [(PORegistrationManager *)self registrationContext];
    signingAlgorithm = [registrationContext13 signingAlgorithm];
    registrationContext14 = [(PORegistrationManager *)self registrationContext];
    [v35 setDeviceSigningKey:{objc_msgSend(v65, "createSEPSigningKeyForAlgorithm:shared:", signingAlgorithm, objc_msgSend(registrationContext14, "useSharedDeviceKeys"))}];

    registrationContext15 = [(PORegistrationManager *)self registrationContext];
    [v35 setSharedDeviceKeys:{objc_msgSend(registrationContext15, "useSharedDeviceKeys")}];

    registrationContext16 = [(PORegistrationManager *)self registrationContext];
    signingAlgorithm2 = [registrationContext16 signingAlgorithm];
    [v35 setSigningAlgorithm:signingAlgorithm2];

    [v35 setPendingSigningAlgorithm:0];
  }

  deviceEncryptionKey2 = [v35 deviceEncryptionKey];
  if (!deviceEncryptionKey2 || (-[PORegistrationManager registrationContext](self, "registrationContext"), v73 = objc_claimAutoreleasedReturnValue(), v74 = [v73 deviceKeysShouldChange] | v12, v73, (v74 & 1) != 0))
  {
    v75 = PO_LOG_PORegistrationManager(deviceEncryptionKey2);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v75, OS_LOG_TYPE_INFO, "Creating new encryption key", buf, 2u);
    }

    registrationContext17 = [(PORegistrationManager *)self registrationContext];
    ssoExtension3 = [registrationContext17 ssoExtension];
    v78 = [POAlgorithmUtil deviceEncryptionAlgorithmToUse:ssoExtension3 deviceConfiguration:v35];
    registrationContext18 = [(PORegistrationManager *)self registrationContext];
    [registrationContext18 setEncryptionAlgorithm:v78];

    keychainHelper2 = [(PORegistrationManager *)self keychainHelper];
    extensionIdentifier3 = [v35 extensionIdentifier];
    [keychainHelper2 _deleteCachedAttestationForExtensionIdentifier:extensionIdentifier3 key:{objc_msgSend(v35, "deviceEncryptionKey")}];

    v82 = MEMORY[0x277D3D230];
    registrationContext19 = [(PORegistrationManager *)self registrationContext];
    encryptionAlgorithm = [registrationContext19 encryptionAlgorithm];
    registrationContext20 = [(PORegistrationManager *)self registrationContext];
    [v35 setDeviceEncryptionKey:{objc_msgSend(v82, "createSEPEncryptionKeyForAlgorithm:shared:", encryptionAlgorithm, objc_msgSend(registrationContext20, "useSharedDeviceKeys"))}];

    date2 = [MEMORY[0x277CBEAA8] date];
    [v35 setLastEncryptionKeyChange:date2];

    registrationContext21 = [(PORegistrationManager *)self registrationContext];
    [v35 setSharedDeviceKeys:{objc_msgSend(registrationContext21, "useSharedDeviceKeys")}];

    registrationContext22 = [(PORegistrationManager *)self registrationContext];
    encryptionAlgorithm2 = [registrationContext22 encryptionAlgorithm];
    [v35 setEncryptionAlgorithm:encryptionAlgorithm2];

    [v35 setPendingEncryptionAlgorithm:0];
  }

  registrationContext23 = [(PORegistrationManager *)self registrationContext];
  deviceKeysShouldChange = [registrationContext23 deviceKeysShouldChange];

  if (deviceKeysShouldChange)
  {
    v93 = PO_LOG_PORegistrationManager(v92);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v93, OS_LOG_TYPE_INFO, "Keys have changed", buf, 2u);
    }

    registrationContext24 = [(PORegistrationManager *)self registrationContext];
    [registrationContext24 setDeviceKeysShouldChange:0];
  }

  configurationManager7 = [(PORegistrationManager *)self configurationManager];
  [configurationManager7 setSharedOnly:0];

  configurationManager8 = [(PORegistrationManager *)self configurationManager];
  v29 = [configurationManager8 saveDeviceConfigurationSyncAllConfigToPreboot:v35];

  if ((v29 & 1) == 0)
  {
    v97 = __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke();
    if (error)
    {
      v97 = v97;
      *error = v97;
    }
  }

  return v29;
}

id __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new device configuration during device registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setupDeviceRegistrationOptions
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  isRepair = [registrationContext isRepair];

  if (isRepair)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  useSharedDeviceKeys = [registrationContext2 useSharedDeviceKeys];

  if (useSharedDeviceKeys)
  {
    v5 |= 4uLL;
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  migratingDeviceKeys = [registrationContext3 migratingDeviceKeys];

  if (migratingDeviceKeys)
  {
    v5 |= 8uLL;
  }

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  isBuddyFlow = [registrationContext4 isBuddyFlow];

  if (isBuddyFlow)
  {
    v12 = v5 | 0x40;
  }

  else
  {
    v12 = v5;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  [registrationContext5 setOptions:v12];
}

- (void)failDeviceRegistrationBeforeAuthorization
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PORegistrationManager failDeviceRegistrationBeforeAuthorization]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setRetry:1];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setState:5];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  [registrationContext3 setAuthorizationProvided:0];

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  registrationUI = [registrationContext4 registrationUI];

  if (!registrationUI)
  {
    [(PORegistrationManager *)self promptUserForRegistration];
  }

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
}

- (void)notifyDeviceRegistrationDidChange
{
  distributedNotificationCenter = [(PORegistrationManager *)self distributedNotificationCenter];
  [distributedNotificationCenter postNotificationName:@"com.apple.platformSSO.DeviceRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)notifyUserRegistrationDidChange
{
  distributedNotificationCenter = [(PORegistrationManager *)self distributedNotificationCenter];
  [distributedNotificationCenter postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)handleAuthorizationForNewUsers
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (([registrationContext isNewPasswordUser] & 1) == 0)
  {

LABEL_6:
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    isNewSmartCardUser = [registrationContext2 isNewSmartCardUser];

    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    v19 = registrationContext3;
    if (isNewSmartCardUser)
    {
      [registrationContext3 setAuthorizationProvided:1];
    }

    else if ([registrationContext3 isNewPasswordUser])
    {
      registrationContext4 = [(PORegistrationManager *)self registrationContext];
      [registrationContext4 authMethod];
    }

    goto LABEL_10;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  authMethod = [registrationContext5 authMethod];

  if (authMethod != 1)
  {
    goto LABEL_6;
  }

  keyWrap = [(PORegistrationManager *)self keyWrap];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  _credential = [currentUserConfiguration _credential];
  v19 = [keyWrap unwrapBlob:_credential];

  v10 = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x277CD4790]);
  [v11 setCredential:v19 type:-9];
  v12 = v19;
  memset_s([v19 mutableBytes], objc_msgSend(v19, "length"), 0, objc_msgSend(v19, "length"));
  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  [registrationContext6 setCredentialContext:v11];

  registrationContext7 = [(PORegistrationManager *)self registrationContext];
  [registrationContext7 setAuthorizationProvided:1];

LABEL_10:
  v10 = v19;
LABEL_11:
}

- (void)setupUserRegistrationOptions
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  userNotified = [registrationContext userNotified];

  v5 = userNotified;
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  isRepair = [registrationContext2 isRepair];

  if (isRepair)
  {
    v5 |= 2uLL;
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  useSharedDeviceKeys = [registrationContext3 useSharedDeviceKeys];

  if (useSharedDeviceKeys)
  {
    v5 |= 4uLL;
  }

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  migratingDeviceKeys = [registrationContext4 migratingDeviceKeys];

  if (migratingDeviceKeys)
  {
    v5 |= 8uLL;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  userSEPKeyInvalid = [registrationContext5 userSEPKeyInvalid];

  if (userSEPKeyInvalid)
  {
    v5 |= 0x20uLL;
  }

  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  isBuddyFlow = [registrationContext6 isBuddyFlow];

  if (isBuddyFlow)
  {
    v16 = v5 | 0x40;
  }

  else
  {
    v16 = v5;
  }

  registrationContext7 = [(PORegistrationManager *)self registrationContext];
  [registrationContext7 setOptions:v16];
}

- (BOOL)createOrRepairUserConfigurationWithError:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  if (!currentUserConfiguration)
  {
    goto LABEL_10;
  }

  v7 = currentUserConfiguration;
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext authMethod] != 2)
  {

LABEL_10:
    goto LABEL_11;
  }

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration2 = [configurationManager2 currentUserConfiguration];
  sepKey = [currentUserConfiguration2 sepKey];

  if (!sepKey)
  {
LABEL_11:
    v18 = 1;
    goto LABEL_12;
  }

  v13 = PO_LOG_PORegistrationManager(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_INFO, "Verifying user key", buf, 2u);
  }

  v14 = objc_alloc_init(MEMORY[0x277CD4790]);
  [v14 setInteractionNotAllowed:1];
  configurationManager3 = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration3 = [configurationManager3 currentUserConfiguration];
  v17 = [currentUserConfiguration3 sepKeyWithContext:v14];

  v18 = [MEMORY[0x277D3D230] verifyKey:v17];
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_12:
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  if (([registrationContext2 isBuddyFlow] & 1) == 0)
  {
    configurationManager4 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration4 = [configurationManager4 currentUserConfiguration];
    if (currentUserConfiguration4)
    {
      v22 = currentUserConfiguration4;
      configurationManager5 = [(PORegistrationManager *)self configurationManager];
      currentUserConfiguration5 = [configurationManager5 currentUserConfiguration];
      _setupContext = [currentUserConfiguration5 _setupContext];
      if (_setupContext)
      {
      }

      else
      {
        [(PORegistrationManager *)self configurationManager];
        v86 = v18;
        v28 = v27 = error;
        currentUserConfiguration6 = [v28 currentUserConfiguration];
        _loginContext = [currentUserConfiguration6 _loginContext];

        error = v27;
        v18 = v86;

        if (!_loginContext)
        {
          goto LABEL_22;
        }
      }

      v31 = PO_LOG_PORegistrationManager(v26);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v31, OS_LOG_TYPE_INFO, "Cleaning up contexts", buf, 2u);
      }

      configurationManager6 = [(PORegistrationManager *)self configurationManager];
      registrationContext2 = [configurationManager6 currentUserConfiguration];

      [registrationContext2 set_setupContext:0];
      [registrationContext2 set_loginContext:0];
      configurationManager7 = [(PORegistrationManager *)self configurationManager];
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      userName = [registrationContext3 userName];
      v36 = [configurationManager7 saveUserConfiguration:registrationContext2 forUserName:userName syncToPreboot:0];

      if ((v36 & 1) == 0)
      {
        v72 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke();
        if (!error)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    else
    {
    }
  }

LABEL_22:
  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext4 authMethod] == 2)
  {
    configurationManager8 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration7 = [configurationManager8 currentUserConfiguration];
    v40 = [currentUserConfiguration7 sepKey] == 0;
  }

  else
  {
    v40 = 0;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  if (([registrationContext5 isRepair] & 1) == 0)
  {

LABEL_29:
    v49 = PO_LOG_PORegistrationManager(v47);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v88 = "[PORegistrationManager createOrRepairUserConfigurationWithError:]";
      v89 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25E831000, v49, OS_LOG_TYPE_DEFAULT, "%s creating new user configuration on %@", buf, 0x16u);
    }

    configurationManager9 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration8 = [configurationManager9 currentUserConfiguration];
    v52 = currentUserConfiguration8;
    if (currentUserConfiguration8)
    {
      v53 = currentUserConfiguration8;
    }

    else
    {
      v53 = objc_alloc_init(MEMORY[0x277D3D240]);
    }

    registrationContext2 = v53;

    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    [registrationContext2 setLoginType:{objc_msgSend(registrationContext6, "authMethod")}];

    [registrationContext2 setState:2];
    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    authMethod = [registrationContext7 authMethod];

    if (authMethod != 2)
    {
LABEL_51:
      configurationManager10 = [(PORegistrationManager *)self configurationManager];
      registrationContext8 = [(PORegistrationManager *)self registrationContext];
      userName2 = [registrationContext8 userName];
      v48 = 1;
      v84 = [configurationManager10 saveUserConfiguration:registrationContext2 forUserName:userName2 syncToPreboot:1];

      if (v84)
      {
LABEL_55:

        return v48;
      }

      v72 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_44();
      if (!error)
      {
LABEL_54:

        v48 = 0;
        goto LABEL_55;
      }

LABEL_53:
      v72 = v72;
      *error = v72;
      goto LABEL_54;
    }

    registrationContext9 = [(PORegistrationManager *)self registrationContext];
    ssoExtension = [registrationContext9 ssoExtension];
    v59 = [POAlgorithmUtil userSigningAlgorithmToUse:ssoExtension userConfiguration:registrationContext2];
    registrationContext10 = [(PORegistrationManager *)self registrationContext];
    [registrationContext10 setUserSigningAlgorithm:v59];

    configurationManager11 = [(PORegistrationManager *)self configurationManager];
    currentLoginConfiguration = [configurationManager11 currentLoginConfiguration];
    userSEPKeyBiometricPolicy = [currentLoginConfiguration userSEPKeyBiometricPolicy];

    v65 = PO_LOG_PORegistrationManager(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      [(PORegistrationManager *)userSEPKeyBiometricPolicy createOrRepairUserConfigurationWithError:v65];
    }

    if (!userSEPKeyBiometricPolicy)
    {
      goto LABEL_41;
    }

    v66 = objc_alloc_init(MEMORY[0x277CD4790]);
    v67 = [v66 canEvaluatePolicy:1 error:0];

    if ((v67 & 1) == 0)
    {
      v72 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_38();
      if (!error)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (userSEPKeyBiometricPolicy)
    {
      v73 = MEMORY[0x277D3D230];
      registrationContext11 = [(PORegistrationManager *)self registrationContext];
      userSigningAlgorithm = [registrationContext11 userSigningAlgorithm];
      v74 = v73;
      v75 = userSigningAlgorithm;
      v76 = 1;
    }

    else
    {
      if ((userSEPKeyBiometricPolicy & 2) == 0)
      {
LABEL_41:
        v68 = MEMORY[0x277D3D230];
        registrationContext11 = [(PORegistrationManager *)self registrationContext];
        userSigningAlgorithm = [registrationContext11 userSigningAlgorithm];
        v71 = [v68 createUserSEPSigningKeyForAlgorithm:userSigningAlgorithm];
        goto LABEL_49;
      }

      v77 = MEMORY[0x277D3D230];
      registrationContext11 = [(PORegistrationManager *)self registrationContext];
      userSigningAlgorithm = [registrationContext11 userSigningAlgorithm];
      v74 = v77;
      v75 = userSigningAlgorithm;
      v76 = 0;
    }

    v71 = [v74 createUserSEPSigningKeyForAlgorithm:v75 userPresence:1 currentSet:v76];
LABEL_49:
    [registrationContext2 setSepKey:v71];

    registrationContext12 = [(PORegistrationManager *)self registrationContext];
    userSigningAlgorithm2 = [registrationContext12 userSigningAlgorithm];
    [registrationContext2 setSigningAlgorithm:userSigningAlgorithm2];

    [registrationContext2 setPendingSigningAlgorithm:0];
    if ((v18 & 1) == 0)
    {
      registrationContext13 = [(PORegistrationManager *)self registrationContext];
      [registrationContext13 setOptions:{objc_msgSend(registrationContext13, "options") | 0x20}];
    }

    goto LABEL_51;
  }

  configurationManager12 = [(PORegistrationManager *)self configurationManager];
  registrationContext14 = [(PORegistrationManager *)self registrationContext];
  userName3 = [registrationContext14 userName];
  v45 = [configurationManager12 userConfigurationForUserName:userName3];
  v46 = (v45 == 0) | ~v18 | v40;

  if (v46)
  {
    goto LABEL_29;
  }

  return 1;
}

id __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new user configuration after cleanup."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_38()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1006 description:@"Failed to create key during user registration because touchID or watch is not available."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_44()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new user configuration during user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)createUserConfigurationForBuddyUser
{
  v3 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_INFO, "Creating setup user configuration", v8, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D3D240]);
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [v4 setLoginType:{objc_msgSend(registrationContext, "authMethod")}];

  [v4 setState:2];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  LOBYTE(registrationContext) = [configurationManager saveUserConfiguration:v4 forUserName:@"_mbsetupuser" syncToPreboot:0];

  if ((registrationContext & 1) == 0)
  {
    v7 = __60__PORegistrationManager_createUserConfigurationForBuddyUser__block_invoke();
  }
}

id __60__PORegistrationManager_createUserConfigurationForBuddyUser__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save setup user configuration during user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)cleanupUserConfigAfterMigrationToShared
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  options = [registrationContext options];

  if ((options & 8) != 0)
  {
    configurationManager = [(PORegistrationManager *)self configurationManager];
    removeUserDeviceConfiguration = [configurationManager removeUserDeviceConfiguration];

    if ((removeUserDeviceConfiguration & 1) == 0)
    {
      v7 = __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke();
    }

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    removeUserLoginConfiguration = [configurationManager2 removeUserLoginConfiguration];

    if ((removeUserLoginConfiguration & 1) == 0)
    {
      v10 = __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke_63();
    }
  }
}

id __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove user device configuration after successful user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke_63()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove user login configuration after successful user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)storeCredentialAndUpdatePasswordHint
{
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  v5 = MEMORY[0x277D3D1E0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  credentialContext = [registrationContext credentialContext];
  v17 = 0;
  v8 = [v5 passwordDataFromContext:credentialContext error:&v17];
  v9 = v17;

  if (v8)
  {
    keyWrap = [(PORegistrationManager *)self keyWrap];
    v11 = [keyWrap wrapBlob:v8];
    [currentUserConfiguration set_credential:v11];

    memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    LOBYTE(keyWrap) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:0];

    if ((keyWrap & 1) == 0)
    {
      v13 = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke_73();
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke;
    v15[3] = &unk_279A3A088;
    v16 = v9;
    v14 = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke(v15);
  }
}

id __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to find user credential after successful user registration."];
  v2 = PO_LOG_PORegistrationManager(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke_73()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)completeLegacyUserRegistration
{
  v26 = *MEMORY[0x277D85DE8];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext isNewPasswordUser])
  {
    v4 = 0;
  }

  else
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    isNewSmartCardUser = [registrationContext2 isNewSmartCardUser];

    v4 = isNewSmartCardUser ^ 1u;
  }

  v8 = PO_LOG_PORegistrationManager(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PORegistrationManager completeLegacyUserRegistration]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s calling registrationDidComplete on %@", buf, 0x16u);
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext3 ssoExtension];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke;
  v21[3] = &unk_279A3A060;
  v21[4] = self;
  [ssoExtension registrationDidCompleteWithCompletion:v21];

  [(PORegistrationManager *)self updateRegistrationState:1 failed:0];
  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  [currentUserConfiguration setState:v4];

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(configurationManager) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((configurationManager & 1) == 0)
  {
    v14 = __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke_2();
  }

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  isRepair = [registrationContext4 isRepair];

  process = [(PORegistrationManager *)self process];
  v18 = process;
  if (isRepair)
  {
    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    credentialContext = [registrationContext5 credentialContext];
    [v18 performLoginForCurrentUserWithPasswordContext:credentialContext];
  }

  else
  {
    [process performLoginForCurrentUserWithPasswordContext:0];
  }
}

void __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v3 = [v2 ssoExtension];
  [v3 unload];

  v4 = [*(a1 + 32) registrationContext];
  v5 = [v4 registrationUI];

  if (!v5)
  {
    v6 = *(a1 + 32);

    [v6 setRegistrationContext:0];
  }
}

id __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke_2()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful SDK 13 user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)createContextForUserCredential
{
  v10 = objc_alloc_init(MEMORY[0x277CD4790]);
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setCredentialContext:v10];

  keyWrap = [(PORegistrationManager *)self keyWrap];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  _credential = [currentUserConfiguration _credential];
  v8 = [keyWrap unwrapBlob:_credential];

  if (v8)
  {
    [v10 setCredential:v8 type:-9];
    memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
  }

  else
  {
    v9 = __55__PORegistrationManager_createContextForUserCredential__block_invoke();
    [(PORegistrationManager *)self finishRegistrationWithRetry];
  }
}

id __55__PORegistrationManager_createContextForUserCredential__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find user credential after successful authentication during user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)failUserRegistrationBeforeAuthorization
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[PORegistrationManager failUserRegistrationBeforeAuthorization]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setRetry:1];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setState:8];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  [registrationContext3 setAuthorizationProvided:0];

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  registrationUI = [registrationContext4 registrationUI];

  if (!registrationUI)
  {
    [(PORegistrationManager *)self promptUserForRegistration];
  }

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
}

- (void)finishRegistrationWithStatus:(BOOL)status message:(id)message
{
  statusCopy = status;
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = PO_LOG_PORegistrationManager(messageCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:statusCopy];
    *buf = 136315650;
    v26 = "[PORegistrationManager finishRegistrationWithStatus:message:]";
    v27 = 2114;
    v28 = v8;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s success = %{public}@ on %@", buf, 0x20u);
  }

  v9 = messageCopy;
  v10 = v9;
  if (!v9)
  {
    v10 = 0;
    if (!statusCopy)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v11 localizedStringForKey:@"REGISTRATION_FAILED_NO_RETRY_TEXT" value:&stru_287080C08 table:0];
    }
  }

  v12 = statusCopy ^ 1;
  [(PORegistrationManager *)self updateRegistrationStateFailed:v12];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext ssoExtension];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__PORegistrationManager_finishRegistrationWithStatus_message___block_invoke;
  v24[3] = &unk_279A3A060;
  v24[4] = self;
  [ssoExtension registrationDidCompleteWithCompletion:v24];

  if ((v12 & 1) == 0)
  {
    [(PORegistrationManager *)self updateRegistrationState:1 failed:0];
    configurationManager = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration = [configurationManager currentUserConfiguration];
    [currentUserConfiguration setState:0];

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    LOBYTE(currentUserConfiguration) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:1];

    if ((currentUserConfiguration & 1) == 0)
    {
      v18 = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke_73();
    }
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext2 state] != 6)
  {
    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext3 state] != 7)
    {
      registrationContext4 = [(PORegistrationManager *)self registrationContext];
      if ([registrationContext4 state] != 8)
      {
        registrationContext5 = [(PORegistrationManager *)self registrationContext];
        state = [registrationContext5 state];

        if (state != 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_15:
  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
LABEL_16:
}

void __62__PORegistrationManager_finishRegistrationWithStatus_message___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v1 = [v2 ssoExtension];
  [v1 unload];
}

- (void)finishRegistrationWithRetry
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[PORegistrationManager finishRegistrationWithRetry]";
    v16 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setRetry:1];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setState:8];

  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  [currentUserConfiguration setState:2];

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(currentUserConfiguration) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:1];

  if ((currentUserConfiguration & 1) == 0)
  {
    v9 = __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke();
  }

  v10 = PO_LOG_PORegistrationManager(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[PORegistrationManager finishRegistrationWithRetry]";
    v16 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s calling registrationDidComplete on %@", buf, 0x16u);
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext3 ssoExtension];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke_103;
  v13[3] = &unk_279A3A060;
  v13[4] = self;
  [ssoExtension registrationDidCompleteWithCompletion:v13];

  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
}

id __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after failed user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleDeviceAndUserRegistrationForRepair:(BOOL)repair
{
  repairCopy = repair;
  v10 = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PORegistrationManager handleDeviceAndUserRegistrationForRepair:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  [(PORegistrationManager *)self handleDeviceAndUserRegistrationForRepair:repairCopy newPasswordUser:0 newSmartCardUser:0 notified:0 profile:0];
}

- (void)handleDeviceAndUserRegistrationForRepair:(BOOL)repair newPasswordUser:(BOOL)user newSmartCardUser:(BOOL)cardUser notified:(BOOL)notified profile:(id)profile
{
  notifiedCopy = notified;
  cardUserCopy = cardUser;
  userCopy = user;
  repairCopy = repair;
  v106 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v13 = PO_LOG_PORegistrationManager(profileCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v103 = "[PORegistrationManager handleDeviceAndUserRegistrationForRepair:newPasswordUser:newSmartCardUser:notified:profile:]";
    v104 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  configurationManager = [(PORegistrationManager *)self configurationManager];
  v15 = NSUserName();
  v16 = [configurationManager isTemporaryAccountUserName:v15];

  if (v16)
  {
    v18 = PO_LOG_PORegistrationManager(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v18, OS_LOG_TYPE_INFO, "Not running registration for the temporary user.", buf, 2u);
    }

    goto LABEL_45;
  }

  userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
  v101 = @"com.apple.PlatformSSO.registration";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v20];

  userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
  v100 = @"com.apple.PlatformSSO.registration";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
  [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v22];

  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (registrationContext)
  {
    v24 = registrationContext;
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext2 state] == 5)
    {
LABEL_13:

      goto LABEL_14;
    }

    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext3 state] == 3)
    {
LABEL_12:

      goto LABEL_13;
    }

    v96 = repairCopy;
    v27 = userCopy;
    v28 = cardUserCopy;
    v29 = notifiedCopy;
    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext4 state] == 8)
    {

      notifiedCopy = v29;
      cardUserCopy = v28;
      userCopy = v27;
      repairCopy = v96;
      goto LABEL_12;
    }

    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    state = [registrationContext5 state];

    notifiedCopy = v29;
    cardUserCopy = v28;
    userCopy = v27;
    repairCopy = v96;
    if (state != 6)
    {
      v35 = PO_LOG_PORegistrationManager(v91);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v92 = MEMORY[0x277CCABB0];
        registrationContext6 = [(PORegistrationManager *)self registrationContext];
        v94 = [v92 numberWithInteger:{objc_msgSend(registrationContext6, "state")}];
        *buf = 138543362;
        v103 = v94;
        _os_log_impl(&dword_25E831000, v35, OS_LOG_TYPE_INFO, "registration already in progress: %{public}@", buf, 0xCu);
      }

      goto LABEL_44;
    }
  }

LABEL_14:
  if (!profileCopy)
  {
    v31 = [POProfile alloc];
    configurationHost = [(PORegistrationManager *)self configurationHost];
    validatedProfileForPlatformSSO = [configurationHost validatedProfileForPlatformSSO];
    profileCopy = [(POProfile *)v31 initWithProfile:validatedProfileForPlatformSSO];

    if (!profileCopy)
    {
      v71 = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke();
      return;
    }
  }

  extensionBundleIdentifier = [(POProfile *)profileCopy extensionBundleIdentifier];
  v35 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:extensionBundleIdentifier];

  if (!v35)
  {
    v38 = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_111();
    goto LABEL_44;
  }

  v36 = [(PORegistrationManager *)self ssoMethodToUse:v35 profile:profileCopy];
  if (v36 != 1000)
  {
    v39 = v36;
    v97 = notifiedCopy;
    v40 = PO_LOG_PORegistrationManager(v36);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [PORegistrationManager handleDeviceAndUserRegistrationForRepair:newPasswordUser:newSmartCardUser:notified:profile:];
    }

    v41 = objc_alloc_init(PORegistrationContext);
    [(PORegistrationManager *)self setRegistrationContext:v41];

    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    [registrationContext7 setState:4];

    extensionBundleIdentifier2 = [(POProfile *)profileCopy extensionBundleIdentifier];
    registrationContext8 = [(PORegistrationManager *)self registrationContext];
    [registrationContext8 setExtensionIdentifier:extensionBundleIdentifier2];

    registrationToken = [(POProfile *)profileCopy registrationToken];
    registrationContext9 = [(PORegistrationManager *)self registrationContext];
    [registrationContext9 setRegistrationToken:registrationToken];

    containerAppBundleIdentifier = [v35 containerAppBundleIdentifier];
    registrationContext10 = [(PORegistrationManager *)self registrationContext];
    [registrationContext10 setContainerAppBundleIdentifier:containerAppBundleIdentifier];

    registrationContext11 = [(PORegistrationManager *)self registrationContext];
    [registrationContext11 setAuthMethod:v39];

    v50 = NSUserName();
    registrationContext12 = [(PORegistrationManager *)self registrationContext];
    [registrationContext12 setUserName:v50];

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    v53 = NSUserName();
    v54 = [configurationManager2 isPlatformSSOUserName:v53];
    registrationContext13 = [(PORegistrationManager *)self registrationContext];
    [registrationContext13 setUserIsPlatformSSOUser:v54];

    registrationContext14 = [(PORegistrationManager *)self registrationContext];
    [registrationContext14 setRepair:repairCopy];

    registrationContext15 = [(PORegistrationManager *)self registrationContext];
    [registrationContext15 setNewPasswordUser:userCopy];

    registrationContext16 = [(PORegistrationManager *)self registrationContext];
    [registrationContext16 setNewSmartCardUser:cardUserCopy];

    registrationContext17 = [(PORegistrationManager *)self registrationContext];
    [registrationContext17 setUserNotified:v97];

    registrationContext18 = [(PORegistrationManager *)self registrationContext];
    [registrationContext18 setSsoExtension:v35];

    registrationContext19 = [(PORegistrationManager *)self registrationContext];
    ssoExtension = [registrationContext19 ssoExtension];
    [ssoExtension setDelegate:self];

    useSharedDeviceKeys = [(POProfile *)profileCopy useSharedDeviceKeys];
    registrationContext20 = [(PORegistrationManager *)self registrationContext];
    [registrationContext20 setUseSharedDeviceKeys:useSharedDeviceKeys];

    protocolVersion = [v35 protocolVersion];
    registrationContext21 = [(PORegistrationManager *)self registrationContext];
    [registrationContext21 setProtocolVersion:protocolVersion];

    registrationContext22 = [(PORegistrationManager *)self registrationContext];
    [registrationContext22 setProfile:profileCopy];

    configurationManager3 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration = [configurationManager3 currentUserConfiguration];
    if (currentUserConfiguration)
    {
      userCopy = [(PORegistrationManager *)self configurationManager];
      repairCopy = [userCopy currentUserConfiguration];
      v70 = [repairCopy state] == 5;
    }

    else
    {
      v70 = 0;
    }

    registrationContext23 = [(PORegistrationManager *)self registrationContext];
    [registrationContext23 setUserSEPKeyInvalid:v70];

    if (currentUserConfiguration)
    {
    }

    configurationManager4 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration = [configurationManager4 currentDeviceConfiguration];

    if (currentDeviceConfiguration)
    {
      useSharedDeviceKeys2 = [(POProfile *)profileCopy useSharedDeviceKeys];
      configurationManager5 = [(PORegistrationManager *)self configurationManager];
      currentDeviceConfiguration2 = [configurationManager5 currentDeviceConfiguration];
      sharedDeviceKeys = [currentDeviceConfiguration2 sharedDeviceKeys];
      registrationContext24 = [(PORegistrationManager *)self registrationContext];
      [registrationContext24 setDeviceKeysShouldChange:useSharedDeviceKeys2 ^ sharedDeviceKeys];
    }

    else
    {
      configurationManager5 = [(PORegistrationManager *)self registrationContext];
      [configurationManager5 setDeviceKeysShouldChange:1];
    }

    registrationContext25 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext25 useSharedDeviceKeys])
    {
      configurationManager6 = [(PORegistrationManager *)self configurationManager];
      userDeviceConfiguration = [configurationManager6 userDeviceConfiguration];

      if (!userDeviceConfiguration)
      {
LABEL_35:
        registrationContext26 = [(PORegistrationManager *)self registrationContext];
        userNotified = [registrationContext26 userNotified];

        if (userNotified)
        {
          activity_block[0] = MEMORY[0x277D85DD0];
          activity_block[1] = 3221225472;
          activity_block[2] = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_124;
          activity_block[3] = &unk_279A3A060;
          activity_block[4] = self;
          _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
        }

        else
        {
          registrationContext27 = [(PORegistrationManager *)self registrationContext];
          registrationToken2 = [registrationContext27 registrationToken];

          registrationContext28 = [(PORegistrationManager *)self registrationContext];
          v88 = registrationContext28;
          if (registrationToken2)
          {
            [registrationContext28 setState:4];

            v89 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_2;
            block[3] = &unk_279A3A060;
            block[4] = self;
            dispatch_async(v89, block);
          }

          else
          {
            [registrationContext28 setState:3];

            [(PORegistrationManager *)self promptUserForRegistration];
          }
        }

        [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
        goto LABEL_44;
      }

      registrationContext25 = [(PORegistrationManager *)self registrationContext];
      [registrationContext25 setMigratingDeviceKeys:1];
    }

    goto LABEL_35;
  }

  v37 = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_117();
LABEL_44:

LABEL_45:
}

id __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in device registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_111()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found in device registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_117()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No supported authentication methods in device registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_124(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:4];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

void __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_2(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_3;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)handleUserRegistrationForUser:(id)user repair:(BOOL)repair
{
  repairCopy = repair;
  v12 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = PO_LOG_PORegistrationManager(userCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PORegistrationManager handleUserRegistrationForUser:repair:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  [(PORegistrationManager *)self handleUserRegistrationForUser:userCopy repair:repairCopy newPasswordUser:0 newSmartCardUser:0 notified:0 profile:0];
}

- (void)handleUserRegistrationForUser:(id)user repair:(BOOL)repair newPasswordUser:(BOOL)passwordUser newSmartCardUser:(BOOL)cardUser notified:(BOOL)notified profile:(id)profile
{
  notifiedCopy = notified;
  cardUserCopy = cardUser;
  passwordUserCopy = passwordUser;
  repairCopy = repair;
  v106 = *MEMORY[0x277D85DE8];
  userCopy = user;
  profileCopy = profile;
  v15 = PO_LOG_PORegistrationManager(profileCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:passwordUserCopy];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:cardUserCopy];
    *buf = 136315906;
    v99 = "[PORegistrationManager handleUserRegistrationForUser:repair:newPasswordUser:newSmartCardUser:notified:profile:]";
    v100 = 2114;
    v101 = v16;
    v102 = 2114;
    v103 = v17;
    v104 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_DEFAULT, "%s New Password User = %{public}@, New SmartCard User = %{public}@ on %@", buf, 0x2Au);
  }

  configurationManager = [(PORegistrationManager *)self configurationManager];
  v19 = NSUserName();
  v20 = [configurationManager isTemporaryAccountUserName:v19];

  if (v20)
  {
    v22 = PO_LOG_PORegistrationManager(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v22, OS_LOG_TYPE_INFO, "Not running registration for the temporary user.", buf, 2u);
    }

    goto LABEL_43;
  }

  userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
  v97 = @"com.apple.PlatformSSO.registration";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v24];

  userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
  v96 = @"com.apple.PlatformSSO.registration";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
  [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v26];

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
  registrationCompleted = [currentDeviceConfiguration registrationCompleted];

  if ((registrationCompleted & 1) == 0)
  {
    v33 = __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke();
LABEL_43:

    goto LABEL_44;
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (registrationContext)
  {
    v31 = registrationContext;
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext2 state] == 8)
    {
    }

    else
    {
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      state = [registrationContext3 state];

      if (state != 6)
      {
        v79 = PO_LOG_PORegistrationManager(v36);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v80 = MEMORY[0x277CCABB0];
          registrationContext4 = [(PORegistrationManager *)self registrationContext];
          v82 = [v80 numberWithInteger:{objc_msgSend(registrationContext4, "state")}];
          *buf = 138543362;
          v99 = v82;
          _os_log_impl(&dword_25E831000, v79, OS_LOG_TYPE_INFO, "User registration already in progress: %{public}@", buf, 0xCu);
        }

        goto LABEL_43;
      }
    }
  }

  if (profileCopy || (v37 = [POProfile alloc], -[PORegistrationManager configurationHost](self, "configurationHost"), v38 = objc_claimAutoreleasedReturnValue(), [v38 validatedProfileForPlatformSSO], v39 = objc_claimAutoreleasedReturnValue(), profileCopy = -[POProfile initWithProfile:](v37, "initWithProfile:", v39), v39, v38, profileCopy))
  {
    extensionBundleIdentifier = [(POProfile *)profileCopy extensionBundleIdentifier];
    currentUserConfiguration2 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:extensionBundleIdentifier];

    if (!currentUserConfiguration2)
    {
      v44 = __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_138();
      goto LABEL_42;
    }

    v42 = [(PORegistrationManager *)self ssoMethodToUse:currentUserConfiguration2 profile:profileCopy];
    if (v42 == 1000)
    {
      v43 = __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_144();
LABEL_42:

      goto LABEL_43;
    }

    configurationManager5 = v42;
    v46 = PO_LOG_PORegistrationManager(v42);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [PORegistrationManager handleDeviceAndUserRegistrationForRepair:newPasswordUser:newSmartCardUser:notified:profile:];
    }

    v47 = objc_alloc_init(PORegistrationContext);
    [(PORegistrationManager *)self setRegistrationContext:v47];

    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    [registrationContext5 setState:7];

    extensionBundleIdentifier2 = [(POProfile *)profileCopy extensionBundleIdentifier];
    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    [registrationContext6 setExtensionIdentifier:extensionBundleIdentifier2];

    registrationToken = [(POProfile *)profileCopy registrationToken];
    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    [registrationContext7 setRegistrationToken:registrationToken];

    containerAppBundleIdentifier = [currentUserConfiguration2 containerAppBundleIdentifier];
    registrationContext8 = [(PORegistrationManager *)self registrationContext];
    [registrationContext8 setContainerAppBundleIdentifier:containerAppBundleIdentifier];

    registrationContext9 = [(PORegistrationManager *)self registrationContext];
    [registrationContext9 setAuthMethod:configurationManager5];

    registrationContext10 = [(PORegistrationManager *)self registrationContext];
    [registrationContext10 setRepair:repairCopy];

    registrationContext11 = [(PORegistrationManager *)self registrationContext];
    [registrationContext11 setNewPasswordUser:passwordUserCopy];

    registrationContext12 = [(PORegistrationManager *)self registrationContext];
    [registrationContext12 setNewSmartCardUser:cardUserCopy];

    registrationContext13 = [(PORegistrationManager *)self registrationContext];
    [registrationContext13 setUserNotified:notifiedCopy];

    registrationContext14 = [(PORegistrationManager *)self registrationContext];
    [registrationContext14 setLoginUserName:userCopy];

    v61 = NSUserName();
    registrationContext15 = [(PORegistrationManager *)self registrationContext];
    [registrationContext15 setUserName:v61];

    configurationManager3 = [(PORegistrationManager *)self configurationManager];
    v64 = NSUserName();
    v65 = [configurationManager3 isPlatformSSOUserName:v64];
    registrationContext16 = [(PORegistrationManager *)self registrationContext];
    [registrationContext16 setUserIsPlatformSSOUser:v65];

    registrationContext17 = [(PORegistrationManager *)self registrationContext];
    [registrationContext17 setState:6];

    registrationContext18 = [(PORegistrationManager *)self registrationContext];
    [registrationContext18 setSsoExtension:currentUserConfiguration2];

    registrationContext19 = [(PORegistrationManager *)self registrationContext];
    ssoExtension = [registrationContext19 ssoExtension];
    [ssoExtension setDelegate:self];

    useSharedDeviceKeys = [(POProfile *)profileCopy useSharedDeviceKeys];
    registrationContext20 = [(PORegistrationManager *)self registrationContext];
    [registrationContext20 setUseSharedDeviceKeys:useSharedDeviceKeys];

    v92 = currentUserConfiguration2;
    protocolVersion = [currentUserConfiguration2 protocolVersion];
    registrationContext21 = [(PORegistrationManager *)self registrationContext];
    [registrationContext21 setProtocolVersion:protocolVersion];

    registrationContext22 = [(PORegistrationManager *)self registrationContext];
    [registrationContext22 setProfile:profileCopy];

    configurationManager4 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration = [configurationManager4 currentUserConfiguration];
    if (currentUserConfiguration)
    {
      configurationManager5 = [(PORegistrationManager *)self configurationManager];
      currentUserConfiguration2 = [configurationManager5 currentUserConfiguration];
      v78 = [currentUserConfiguration2 state] == 5;
    }

    else
    {
      v78 = 0;
    }

    registrationContext23 = [(PORegistrationManager *)self registrationContext];
    [registrationContext23 setUserSEPKeyInvalid:v78];

    if (currentUserConfiguration)
    {
    }

    registrationContext24 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext24 useSharedDeviceKeys])
    {
      configurationManager6 = [(PORegistrationManager *)self configurationManager];
      userDeviceConfiguration = [configurationManager6 userDeviceConfiguration];

      currentUserConfiguration2 = v92;
      if (!userDeviceConfiguration)
      {
        goto LABEL_35;
      }

      registrationContext24 = [(PORegistrationManager *)self registrationContext];
      [registrationContext24 setMigratingDeviceKeys:1];
    }

    else
    {
      currentUserConfiguration2 = v92;
    }

LABEL_35:
    registrationContext25 = [(PORegistrationManager *)self registrationContext];
    userNotified = [registrationContext25 userNotified];

    if (userNotified)
    {
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_150;
      v95[3] = &unk_279A3A060;
      v95[4] = self;
      v90 = v95;
    }

    else
    {
      if (!passwordUserCopy && !cardUserCopy)
      {
        registrationContext26 = [(PORegistrationManager *)self registrationContext];
        [registrationContext26 setState:6];

        [(PORegistrationManager *)self promptUserForRegistration];
        goto LABEL_42;
      }

      activity_block[0] = MEMORY[0x277D85DD0];
      activity_block[1] = 3221225472;
      activity_block[2] = __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_2;
      activity_block[3] = &unk_279A3A060;
      activity_block[4] = self;
      v90 = activity_block;
    }

    _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, v90);
    goto LABEL_42;
  }

  v83 = __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_132();
LABEL_44:
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Device registration not complete in user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_132()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_138()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found in user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_144()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No supported authentication methods in user registration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_150(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:7];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (void)promptUserForRegistration
{
  v34[1] = *MEMORY[0x277D85DE8];
  registrationContext = [(PORegistrationManager *)self registrationContext];

  if (registrationContext)
  {
    configurationManager = [(PORegistrationManager *)self configurationManager];
    currentLoginConfiguration = [configurationManager currentLoginConfiguration];

    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext2 isRepair])
    {
    }

    else
    {
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      migratingDeviceKeys = [registrationContext3 migratingDeviceKeys];

      if (!migratingDeviceKeys)
      {
        configurationManager2 = [(PORegistrationManager *)self configurationManager];
        currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
        accountDisplayName = [currentDeviceConfiguration accountDisplayName];
        accountDisplayName2 = accountDisplayName;
        if (!accountDisplayName)
        {
          accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
        }

        v14 = [(PORegistrationManager *)self createRegistrationNotificationWithAccountName:accountDisplayName2];
        goto LABEL_13;
      }
    }

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
    accountDisplayName = [currentDeviceConfiguration accountDisplayName];
    accountDisplayName2 = accountDisplayName;
    if (!accountDisplayName)
    {
      accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
    }

    v14 = [(PORegistrationManager *)self createRegistrationUpdateNotificationWithAccountName:accountDisplayName2];
LABEL_13:
    v15 = v14;
    if (!accountDisplayName)
    {
    }

    userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
    v34[0] = @"com.apple.PlatformSSO.registration";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v17];

    userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
    v33 = @"com.apple.PlatformSSO.registration";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v19];

    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    LODWORD(v19) = [registrationContext4 isRetry];

    if (v19)
    {
      v21 = 600.0;
      v22 = 1;
    }

    else
    {
      v21 = 1.0;
      v22 = 0;
    }

    v23 = [MEMORY[0x277CE2020] triggerWithTimeInterval:v22 repeats:v21];
    v24 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.PlatformSSO.registration" content:v15 trigger:v23 destinations:5];
    v25 = PO_LOG_PORegistrationManager(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&dword_25E831000, v25, OS_LOG_TYPE_INFO, "Sending registration notification", v32, 2u);
    }

    userNotificationCenter3 = [(PORegistrationManager *)self userNotificationCenter];
    [userNotificationCenter3 addNotificationRequest:v24 withCompletionHandler:&__block_literal_global_155];

    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    ssoExtension = [registrationContext5 ssoExtension];
    [ssoExtension close];

    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    ssoExtension2 = [registrationContext6 ssoExtension];
    [ssoExtension2 unload];

    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    [registrationContext7 setSsoExtension:0];

    goto LABEL_21;
  }

  currentLoginConfiguration = PO_LOG_PORegistrationManager(v4);
  if (os_log_type_enabled(currentLoginConfiguration, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager promptUserForRegistration];
  }

LABEL_21:
}

void __50__PORegistrationManager_promptUserForRegistration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__PORegistrationManager_promptUserForRegistration__block_invoke_2;
    v5[3] = &unk_279A3A088;
    v6 = v2;
    v4 = __50__PORegistrationManager_promptUserForRegistration__block_invoke_2(v5);
  }
}

id __50__PORegistrationManager_promptUserForRegistration__block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error sending local notification for registration."];
  v2 = PO_LOG_PORegistrationManager(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)resetRegistrationWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_PORegistrationManager(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[PORegistrationManager resetRegistrationWithCompletion:]";
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
  v16 = @"com.apple.PlatformSSO.registration";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v7];

  userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
  v15 = @"com.apple.PlatformSSO.registration";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v9];

  [(PORegistrationManager *)self updateRegistrationStateFailed:0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext ssoExtension];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 registrationUI];

  [(PORegistrationManager *)self setRegistrationContext:0];
  if (ssoExtension)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__PORegistrationManager_resetRegistrationWithCompletion___block_invoke;
    v13[3] = &unk_279A3A0D0;
    v13[4] = self;
    v14 = completionCopy;
    [ssoExtension registrationDidCancelWithCompletion:v13];
  }

  else
  {
    [(PORegistrationManager *)self notifyUserRegistrationDidChange];
    [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
    completionCopy[2](completionCopy);
  }
}

uint64_t __57__PORegistrationManager_resetRegistrationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyUserRegistrationDidChange];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)handleDeviceRegistrationNotification
{
  registrationContext = [(PORegistrationManager *)self registrationContext];

  if (registrationContext)
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    [registrationContext2 setUserNotified:1];

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __61__PORegistrationManager_handleDeviceRegistrationNotification__block_invoke;
    activity_block[3] = &unk_279A3A060;
    activity_block[4] = self;
    _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    process = [(PORegistrationManager *)self process];
    [process handleConfigurationChanged:1];
  }
}

uint64_t __61__PORegistrationManager_handleDeviceRegistrationNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:4];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (void)handleUserRegistrationNotification
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (registrationContext && (v4 = registrationContext, -[PORegistrationManager registrationContext](self, "registrationContext"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v4, v6 != 1))
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    [registrationContext2 setUserNotified:1];

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __59__PORegistrationManager_handleUserRegistrationNotification__block_invoke;
    activity_block[3] = &unk_279A3A060;
    activity_block[4] = self;
    _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    process = [(PORegistrationManager *)self process];
    [process handleConfigurationChanged:1];
  }
}

uint64_t __59__PORegistrationManager_handleUserRegistrationNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:7];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (int)ssoMethodToUse:(id)use profile:(id)profile
{
  useCopy = use;
  profileCopy = profile;
  authenticationMethod2 = 1000;
  if ([profileCopy authenticationMethod] != 1000)
  {
    supportedGrantTypes = [useCopy supportedGrantTypes];
    if (supportedGrantTypes)
    {
      v9 = supportedGrantTypes;
      if (supportedGrantTypes)
      {
        authenticationMethod = [profileCopy authenticationMethod];
        if (authenticationMethod == 1)
        {
          goto LABEL_7;
        }
      }

      if ((v9 & 2) != 0)
      {
        authenticationMethod = [profileCopy authenticationMethod];
        if (authenticationMethod == 2)
        {
LABEL_7:
          authenticationMethod2 = authenticationMethod;
          goto LABEL_14;
        }

        if ([profileCopy authenticationMethod] == 3)
        {
          authenticationMethod2 = 3;
        }

        else
        {
          authenticationMethod2 = 1000;
        }
      }
    }

    else
    {
      authenticationMethods = [useCopy authenticationMethods];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(profileCopy, "authenticationMethod")}];
      v13 = [authenticationMethods containsObject:v12];

      if (v13)
      {
        authenticationMethod2 = [profileCopy authenticationMethod];
      }
    }
  }

LABEL_14:

  return authenticationMethod2;
}

- (id)loadSSOExtensionWithExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [POExtension alloc];
  extensionManager = [(PORegistrationManager *)self extensionManager];
  v7 = [(POExtension *)v5 initWithExtensionBundleIdentifier:identifierCopy extensionManager:extensionManager delegate:self];

  return v7;
}

- (void)handleRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  registrationContext = [(PORegistrationManager *)self registrationContext];

  if (!registrationContext)
  {
    v10 = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke();
    v11 = v10;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v10);

      goto LABEL_9;
    }
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  options = [registrationContext2 options];

  if (options)
  {
LABEL_8:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_171;
    block[3] = &unk_279A3A0F8;
    v13 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_9;
  }

  v8 = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_165();
  v9 = v8;
  if (!completionCopy)
  {

    goto LABEL_8;
  }

  completionCopy[2](completionCopy, 0, v8);

LABEL_9:
}

id __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Registration not in progress when presenting registration view controller."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_165()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"User interaction not allowed when presenting registration view controller."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleRemovingRegistrationForExtension:(id)extension alreadyDeleted:(BOOL)deleted
{
  v42 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v7 = PO_LOG_PORegistrationManager(extensionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[PORegistrationManager handleRemovingRegistrationForExtension:alreadyDeleted:]";
    v40 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (!deleted)
  {
    v32 = extensionCopy;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    configurationManager = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration = [configurationManager currentUserConfiguration];
    kerberosStatus = [currentUserConfiguration kerberosStatus];

    v11 = [kerberosStatus countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(kerberosStatus);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          v16 = PO_LOG_PORegistrationManager(v11);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            cacheName = [v15 cacheName];
            *buf = 138543362;
            v39 = cacheName;
            _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Removing kerberos tickets for cache: %{public}@", buf, 0xCu);
          }

          process = [(PORegistrationManager *)self process];
          kerberosHelper = [process kerberosHelper];
          cacheName2 = [v15 cacheName];
          [kerberosHelper destroyCredentialForUUID:cacheName2];

          ++v14;
        }

        while (v12 != v14);
        v11 = [kerberosStatus countByEnumeratingWithState:&v33 objects:v37 count:16];
        v12 = v11;
      }

      while (v11);
    }

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    resetStoredConfiguration = [configurationManager2 resetStoredConfiguration];

    extensionCopy = v32;
    if ((resetStoredConfiguration & 1) == 0)
    {
      v23 = __79__PORegistrationManager_handleRemovingRegistrationForExtension_alreadyDeleted___block_invoke();
    }
  }

  configurationManager3 = [(PORegistrationManager *)self configurationManager];
  [configurationManager3 setTokens:0 extensionIdentifier:extensionCopy returningError:0];

  keychainHelper = [(PORegistrationManager *)self keychainHelper];
  [keychainHelper _deleteAllCachedAttestations];

  process2 = [(PORegistrationManager *)self process];
  [process2 setupTimerForAuthentication];

  configurationManager4 = [(PORegistrationManager *)self configurationManager];
  [configurationManager4 setSharedOnly:0];

  userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
  [userNotificationCenter removeAllDeliveredNotifications];

  userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
  [userNotificationCenter2 removeAllPendingNotificationRequests];

  process3 = [(PORegistrationManager *)self process];
  [process3 setPlatformSSOActive:0];

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self setRegistrationContext:0];
  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
}

id __79__PORegistrationManager_handleRemovingRegistrationForExtension_alreadyDeleted___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove Platform SSO configuration folder when removing configuration."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)requestUserAuthenticationSyncPassword:(BOOL)password completion:(id)completion
{
  passwordCopy = password;
  completionCopy = completion;
  process = [(PORegistrationManager *)self process];
  [process requestUserAuthenticationSyncPassword:passwordCopy completion:completionCopy];
}

- (unint64_t)requestSmartCardForBinding:(BOOL)binding window:(id)window tokenId:(id *)id tokenHash:(id *)hash wrapTokenHash:(id *)tokenHash pinContext:(id *)context
{
  v8 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager requestSmartCardForBinding:window:tokenId:tokenHash:wrapTokenHash:pinContext:];
  }

  return 0;
}

- (id)saveSSOTokens:(id)tokens toKeychainUsingContext:(id)context tokenId:(id)id
{
  tokensCopy = tokens;
  contextCopy = context;
  idCopy = id;
  v10 = PO_LOG_PORegistrationManager(idCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_INFO, "Saving SSO tokens to keychain", buf, 2u);
  }

  v11 = +[POConfigurationManager sharedInstance];
  v12 = v11;
  v13 = MEMORY[0x277D3D1E0];
  if (idCopy)
  {
    v29 = contextCopy;
    currentDeviceConfiguration = [v11 currentDeviceConfiguration];
    deviceEncryptionKey = [currentDeviceConfiguration deviceEncryptionKey];
    v16 = [idCopy dataUsingEncoding:4];
    v17 = [v13 decryptPendingSSOTokens:tokensCopy UsingPrivateKey:deviceEncryptionKey sharedData:v16];

    v18 = 0;
  }

  else
  {
    v33 = 0;
    currentDeviceConfiguration = [MEMORY[0x277D3D1E0] passwordDataFromContext:contextCopy error:&v33];
    v18 = v33;
    if (!currentDeviceConfiguration)
    {
      v28 = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke();
      v17 = 0;
      goto LABEL_10;
    }

    v29 = contextCopy;
    v19 = MEMORY[0x277D3D1E0];
    currentDeviceConfiguration2 = [v12 currentDeviceConfiguration];
    v17 = [v19 decryptPendingSSOTokens:tokensCopy UsingPrivateKey:objc_msgSend(currentDeviceConfiguration2 sharedData:{"deviceEncryptionKey"), currentDeviceConfiguration}];

    memset_s([currentDeviceConfiguration mutableBytes], objc_msgSend(currentDeviceConfiguration, "length"), 0, objc_msgSend(currentDeviceConfiguration, "length"));
  }

  v21 = v18;

  v22 = NSUserName();
  currentDeviceConfiguration3 = [v12 currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration3 extensionIdentifier];
  v32 = v18;
  v25 = [v12 setTokens:v17 user:v22 extensionIdentifier:extensionIdentifier returningError:&v32];
  v18 = v32;

  if ((v25 & 1) == 0)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke_182;
    v30[3] = &unk_279A3A088;
    v18 = v18;
    v31 = v18;
    v26 = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke_182(v30);
  }

  contextCopy = v29;
LABEL_10:

  return v17;
}

id __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find credential after setup authentication"];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke_182(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save SSO tokens."];
  v2 = PO_LOG_PORegistrationManager(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (id)retrieveProfilePicture
{
  v3 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager retrieveProfilePicture];
  }

  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];

  if (!currentDeviceConfiguration)
  {
    v20 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke();
LABEL_14:
    v19 = 0;
    goto LABEL_19;
  }

  synchronizeProfilePicture = [currentDeviceConfiguration synchronizeProfilePicture];
  v7 = synchronizeProfilePicture;
  v8 = PO_LOG_PORegistrationManager(synchronizeProfilePicture);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if ((v7 & 1) == 0)
  {
    if (v9)
    {
      [PORegistrationManager retrieveProfilePicture];
    }

    goto LABEL_14;
  }

  if (v9)
  {
    [PORegistrationManager retrieveProfilePicture];
  }

  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];
  v11 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:extensionIdentifier];

  if (v11)
  {
    v12 = [POProfile alloc];
    configurationHost = [(PORegistrationManager *)self configurationHost];
    platformSSOProfile = [configurationHost platformSSOProfile];
    v15 = [(POProfile *)v12 initWithProfile:platformSSOProfile];

    if (v15)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy_;
      v35 = __Block_byref_object_dispose_;
      v36 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy_;
      v29 = __Block_byref_object_dispose_;
      v30 = dispatch_semaphore_create(0);
      extensionData = [(POProfile *)v15 extensionData];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_203;
      v24[3] = &unk_279A3A120;
      v24[4] = &v25;
      v24[5] = &v31;
      [v11 profilePictureForUserUsingExtensionData:extensionData completion:v24];

      v17 = v26[5];
      v18 = dispatch_time(0, (60.0 * 1000000000.0));
      dispatch_semaphore_wait(v17, v18);
      v19 = v32[5];
      _Block_object_dispose(&v25, 8);

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      v22 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_197();
      v19 = 0;
    }
  }

  else
  {
    v21 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_191();
    v19 = 0;
  }

LABEL_19:

  return v19;
}

id __47__PORegistrationManager_retrieveProfilePicture__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for profile pic sync."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __47__PORegistrationManager_retrieveProfilePicture__block_invoke_191()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found for profile pic sync."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __47__PORegistrationManager_retrieveProfilePicture__block_invoke_197()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in profile pic sync."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __47__PORegistrationManager_retrieveProfilePicture__block_invoke_203(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = PO_LOG_PORegistrationManager(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_INFO, "No profile picture data.", v6, 2u);
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
}

- (void)windowDidClose
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    registrationContext = [(PORegistrationManager *)self registrationContext];
    v6 = [v4 numberWithInteger:{objc_msgSend(registrationContext, "state")}];
    v7 = MEMORY[0x277CCABB0];
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    v9 = [v7 numberWithInt:{objc_msgSend(registrationContext2, "failureCount")}];
    v11 = 136315906;
    v12 = "[PORegistrationManager windowDidClose]";
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s state = %{public}@, failureCount = %{public}@ on %@", &v11, 0x2Au);
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  [registrationContext3 state];
}

- (void)requestDidCompleteWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = PO_LOG_PORegistrationManager(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    registrationContext = [(PORegistrationManager *)self registrationContext];
    v8 = [v6 numberWithInteger:{objc_msgSend(registrationContext, "state")}];
    v9 = MEMORY[0x277CCABB0];
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    v11 = [v9 numberWithInt:{objc_msgSend(registrationContext2, "failureCount")}];
    *buf = 136315906;
    v24 = "[PORegistrationManager requestDidCompleteWithError:]";
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v11;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s state = %{public}@, failureCount = %{public}@ on %@", buf, 0x2Au);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  registrationContext3 = [(PORegistrationManager *)selfCopy2 registrationContext];
  ssoExtension = [registrationContext3 ssoExtension];
  v15 = ssoExtension == 0;

  if (v15)
  {
    objc_sync_exit(selfCopy2);
  }

  else
  {
    registrationContext4 = [(PORegistrationManager *)selfCopy2 registrationContext];
    ssoExtension2 = [registrationContext4 ssoExtension];
    [ssoExtension2 unload];

    registrationContext5 = [(PORegistrationManager *)selfCopy2 registrationContext];
    [registrationContext5 setSsoExtension:0];

    objc_sync_exit(selfCopy2);
    registrationContext6 = [(PORegistrationManager *)selfCopy2 registrationContext];
    LOBYTE(ssoExtension2) = [registrationContext6 state] == 1;

    if ((ssoExtension2 & 1) == 0)
    {
      registrationContext7 = [(PORegistrationManager *)selfCopy2 registrationContext];
      isBuddyFlow = [registrationContext7 isBuddyFlow];

      if ((isBuddyFlow & 1) == 0)
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke;
        v22[3] = &unk_279A3A148;
        v22[4] = selfCopy2;
        [(PORegistrationManager *)selfCopy2 showAlertWithError:errorCopy completion:v22];
      }
    }
  }
}

void __53__PORegistrationManager_requestDidCompleteWithError___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationContext];
  [v2 setFailureCount:{objc_msgSend(v2, "failureCount") + 1}];

  v3 = [*(a1 + 32) registrationContext];
  v4 = [v3 failureCount];

  v5 = *(a1 + 32);
  if (v4 >= 2)
  {
    [v5 updateRegistrationStateFailed:1];
    v6 = [*(a1 + 32) registrationContext];
    if ([v6 isRetry])
    {
    }

    else
    {
      v12 = [*(a1 + 32) registrationContext];
      v13 = [v12 state];

      if (v13 == 4)
      {
        v15 = PO_LOG_PORegistrationManager(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          *buf = 136315394;
          v38 = "[PORegistrationManager requestDidCompleteWithError:]_block_invoke";
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_DEFAULT, "%s removing login configuration on %@", buf, 0x16u);
        }

        v17 = [*(a1 + 32) configurationManager];
        v18 = [v17 removeLoginConfiguration];

        if ((v18 & 1) == 0)
        {
          v19 = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_205();
        }

        goto LABEL_21;
      }
    }

    v20 = [*(a1 + 32) registrationContext];
    if ([v20 isRetry])
    {
    }

    else
    {
      v23 = [*(a1 + 32) registrationContext];
      v24 = [v23 state];

      if (v24 == 7)
      {
        v26 = PO_LOG_PORegistrationManager(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          *buf = 136315394;
          v38 = "[PORegistrationManager requestDidCompleteWithError:]_block_invoke";
          v39 = 2112;
          v40 = v27;
          _os_log_impl(&dword_25E831000, v26, OS_LOG_TYPE_DEFAULT, "%s removing user configuration on %@", buf, 0x16u);
        }

        v28 = [*(a1 + 32) configurationManager];
        v29 = [v28 currentUserConfiguration];
        [v29 setState:2];

        v30 = [*(a1 + 32) configurationManager];
        LOBYTE(v29) = [v30 saveCurrentUserConfigurationAndSyncToPreboot:1];

        if ((v29 & 1) == 0)
        {
          v31 = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_211();
        }
      }
    }

LABEL_21:
    v32 = [*(a1 + 32) registrationContext];
    v33 = [v32 registrationUI];

    if (!v33)
    {
      [*(a1 + 32) setRegistrationContext:0];
    }

    [*(a1 + 32) notifyUserRegistrationDidChange];
    [*(a1 + 32) notifyDeviceRegistrationDidChange];
    return;
  }

  v7 = [v5 registrationContext];
  v8 = [v7 state];

  if (v8 == 4)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10 = v9;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_217;
    v36[3] = &unk_279A3A060;
    v36[4] = *(a1 + 32);
    v11 = v36;
LABEL_15:
    dispatch_async(v9, v11);

    return;
  }

  v21 = [*(a1 + 32) registrationContext];
  v22 = [v21 state];

  if (v22 == 7)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10 = v9;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_4;
    v35[3] = &unk_279A3A060;
    v35[4] = *(a1 + 32);
    v11 = v35;
    goto LABEL_15;
  }

  [*(a1 + 32) updateRegistrationStateFailed:1];
  [*(a1 + 32) notifyUserRegistrationDidChange];
  v34 = *(a1 + 32);

  [v34 notifyDeviceRegistrationDidChange];
}

id __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_205()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove login configuration after extension crash."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_211()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove user configuration after extension crash."];
  v1 = PO_LOG_PORegistrationManager(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_217(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v3 = [v2 userNotified];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 _startDeviceRegistrationWithCompletionHandler:&__block_literal_global_219];
  }

  else
  {

    return [v4 reloadSSOExtensionIfNeeded];
  }
}

void __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_4(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_5;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v3 = [v2 userNotified];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 _startUserRegistration];
  }

  else
  {

    return [v4 reloadSSOExtensionIfNeeded];
  }
}

- (void)showAlertMessage:(id)message messageText:(id)text completion:(id)completion
{
  completionCopy = completion;
  v6 = PO_LOG_PORegistrationManager(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager showAlertMessage:messageText:completion:];
  }

  completionCopy[2](completionCopy, 3);
}

- (void)showAlertWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  v7 = PO_LOG_PORegistrationManager(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager showAlertWithError:completion:];
  }

  code = [errorCopy code];
  if (code != -3 || completionCopy)
  {
    completionCopy[2](completionCopy, 3);
  }
}

- (id)createRegistrationNotificationWithAccountName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v5 setShouldBackgroundDefaultAction:1];
  v6 = MEMORY[0x277CE1FB0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  containerAppBundleIdentifier = [registrationContext containerAppBundleIdentifier];
  v9 = [v6 iconForApplicationIdentifier:containerAppBundleIdentifier];
  [v5 setIcon:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_REGISTRATION_TITLE" value:&stru_287080C08 table:0];
  [v5 setTitle:v11];

  v12 = [nameCopy length];
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  isNewPasswordUser = [registrationContext2 isNewPasswordUser];

  if (v12)
  {
    if (isNewPasswordUser)
    {
      v15 = @"CUSTOM_NOTIFICATION_COMPLETE_REGISTRATION_BODY";
    }

    else
    {
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      authMethod = [registrationContext3 authMethod];

      if (authMethod == 1)
      {
        v15 = @"CUSTOM_PASSWORD_NOTIFICATION_REGISTRATION_BODY";
      }

      else
      {
        v15 = @"CUSTOM_NOTIFICATION_REGISTRATION_BODY";
      }
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:v15 value:&stru_287080C08 table:0];
    nameCopy = [v19 localizedStringWithFormat:v21, nameCopy];
    [v5 setBody:nameCopy];
  }

  else
  {
    if (isNewPasswordUser)
    {
      v16 = @"DEFAULT_NOTIFICATION_COMPLETE_REGISTRATION_BODY";
    }

    else
    {
      registrationContext4 = [(PORegistrationManager *)self registrationContext];
      authMethod2 = [registrationContext4 authMethod];

      if (authMethod2 == 1)
      {
        v16 = @"DEFAULT_PASSWORD_NOTIFICATION_REGISTRATION_BODY";
      }

      else
      {
        v16 = @"DEFAULT_NOTIFICATION_REGISTRATION_BODY";
      }
    }

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:v16 value:&stru_287080C08 table:0];
    [v5 setBody:v21];
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext5 isUserNotification])
  {
    v26 = @"REGISTER_USER";
  }

  else
  {
    v26 = @"REGISTER_DEVICE";
  }

  [v5 setCategoryIdentifier:v26];

  [v5 setInterruptionLevel:2];
  [v5 setShouldPreventNotificationDismissalAfterDefaultAction:1];

  return v5;
}

- (id)createRegistrationUpdateNotificationWithAccountName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v5 setShouldBackgroundDefaultAction:1];
  v6 = MEMORY[0x277CE1FB0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  containerAppBundleIdentifier = [registrationContext containerAppBundleIdentifier];
  v9 = [v6 iconForApplicationIdentifier:containerAppBundleIdentifier];
  [v5 setIcon:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_REGISTRATION_UPDATE_TITLE" value:&stru_287080C08 table:0];
  [v5 setTitle:v11];

  if ([nameCopy length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CUSTOM_NOTIFICATION_REGISTRATION_UPDATE_BODY" value:&stru_287080C08 table:0];
    nameCopy = [v12 localizedStringWithFormat:v14, nameCopy];
    [v5 setBody:nameCopy];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"DEFAULT_NOTIFICATION_REGISTRATION_UPDATE_BODY" value:&stru_287080C08 table:0];
    [v5 setBody:v14];
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext2 isUserNotification])
  {
    v17 = @"REGISTER_USER";
  }

  else
  {
    v17 = @"REGISTER_DEVICE";
  }

  [v5 setCategoryIdentifier:v17];

  [v5 setInterruptionLevel:2];
  [v5 setShouldPreventNotificationDismissalAfterDefaultAction:1];

  return v5;
}

- (POAgentAuthenticationProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

- (void)_startDeviceRegistrationWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_25E88C59C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_25E890880;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_25E890888;
  v11[5] = v10;
  selfCopy = self;
  sub_25E884D3C(0, 0, v6, &unk_25E890890, v11);
}

- (void)failDeviceRegistrationPostRegistrationWithUserInteractionAllowed:(BOOL)allowed
{
  selfCopy = self;
  sub_25E8813F4(allowed);
}

- (void)_startUserRegistrationWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_25E88C59C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_25E890830;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_25E890840;
  v11[5] = v10;
  selfCopy = self;
  sub_25E884D3C(0, 0, v6, &unk_25E890850, v11);
}

- (void)handleUserCredentialNeededAtLogin:smartCard:accountDisplayName:bundleIdentifier:returningContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleUserAuthorizationNeededForAccountDisplayName:bundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)createOrRepairUserConfigurationWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "Key policy = %{public}@", v4, 0xCu);
}

- (void)requestSmartCardForBinding:window:tokenId:tokenHash:wrapTokenHash:pinContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)retrieveProfilePicture
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)showAlertMessage:messageText:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)showAlertWithError:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end