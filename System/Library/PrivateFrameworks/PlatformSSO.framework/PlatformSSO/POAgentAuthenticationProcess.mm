@interface POAgentAuthenticationProcess
- (BOOL)_doLoginWithPasswordContext:(id)context tokenId:(id)id;
- (BOOL)_doRefreshWithPasswordContext:(id)context tokenId:(id)id;
- (BOOL)handleUserNeedsReauthenticationAfterDelay:(double)delay;
- (BOOL)isCurrentSSOExtension:(id)extension;
- (BOOL)performLoginForCurrentUserWithPasswordContext:(id)context tokenId:(id)id forceLogin:(BOOL)login;
- (POAgentAuthenticationProcess)initWithConfigurationHost:(id)host;
- (POAgentAuthenticationProcessKerberosDelegate)kerberosDelegate;
- (id)createPasswordChangedNotificationWithAccountName:(id)name extensionIdentifier:(id)identifier;
- (id)createSignInNotificationWithAccountName:(id)name extensionIdentifier:(id)identifier;
- (id)initForAgentWithDelegate:(id)delegate configurationHost:(id)host;
- (unint64_t)handleKeyRequestSync;
- (unint64_t)handleTokenBindingWithPasswordContext:(id)context;
- (unint64_t)requestUserPasswordChangePreference;
- (void)_doUnlockForTokenWithCredentialContext:(id)context atLogin:(BOOL)login;
- (void)_handleConfigurationChanged:(BOOL)changed startup:(BOOL)startup;
- (void)_handleLoginResult:(unint64_t)result authenticationContext:(id)context tokens:(id)tokens passwordContext:(id)passwordContext tokenId:(id)id tokenHash:(id)hash;
- (void)_performStartupSteps;
- (void)checkIfGroupNamesNeedUpdate;
- (void)checkIfGroupNamesNeedUpdateForRegistrationManager:(id)manager;
- (void)checkIfPlatformSSOIsActive;
- (void)configurationChanged;
- (void)configurationChanged:(id)changed;
- (void)dealloc;
- (void)doUnlockForPasswordWithCredentialContext:(id)context atLogin:(BOOL)login;
- (void)doUnlockForSmartCardWithCredentialContext:(id)context tokenId:(id)id atLogin:(BOOL)login;
- (void)doUnlockForTokenLoginWithCredentialContext:(id)context atLogin:(BOOL)login;
- (void)doUnlockForTokenUnlockWithCredentialContext:(id)context atLogin:(BOOL)login;
- (void)doUnlockWithEmptyCredentialContext:(id)context atLogin:(BOOL)login;
- (void)exchangeTGTForStatus:(id)status;
- (void)handleAgentStartup;
- (void)handleChecksAfterSuccessfulLoginWithPasswordContext:(id)context;
- (void)handleConfigurationChanged:(BOOL)changed;
- (void)handleConfigurationChanged:(BOOL)changed startup:(BOOL)startup;
- (void)handleEncryptionKeyRotation;
- (void)handleKerberosMappingForTokens:(id)tokens extensionIdentifier:(id)identifier userConfiguration:(id)configuration;
- (void)handleKerberosMappingForTokens:(id)tokens loginConfiguration:(id)configuration userConfiguration:(id)userConfiguration;
- (void)handleKeyRequestSync;
- (void)handleKeyRequestWithCompletion:(id)completion;
- (void)handleKeyUpdatesWithPasswordContext:(id)context;
- (void)handleNetworkChange;
- (void)handlePendingSSOTokensWithSharedData:(id)data;
- (void)handlePreviousRefreshTokens;
- (void)handleRemovingSSOTokens;
- (void)handleScreenLock;
- (void)handleScreenUnlock;
- (void)handleScreenUnlockWithCredentialContext:(id)context tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock afterBuddy:(BOOL)buddy;
- (void)handleUnfinishedTGTExchanges;
- (void)notifyKerberosDelegateTGTDidBegin;
- (void)notifyKerberosDelegateTGTDidComplete;
- (void)postAuthenticationNotification:(unint64_t)notification;
- (void)requestUserAuthenticationSyncPassword:(BOOL)password completion:(id)completion;
- (void)requestUserAuthenticationWithUserInfo:(id)info forceLogin:(BOOL)login;
- (void)requestUserAuthenticationWithWindow:(id)window completion:(id)completion;
- (void)requestUserPasswordChangePreference;
- (void)sendPasswordChangedNotification;
- (void)setupNotificationCategories;
- (void)setupTimerForAuthentication;
- (void)showAlertMessage:(id)message messageText:(id)text completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)waitForScreenUnlockithCompletion:(id)completion;
- (void)waitForShieldLoweredWithCompletion:(id)completion;
@end

@implementation POAgentAuthenticationProcess

- (id)initForAgentWithDelegate:(id)delegate configurationHost:(id)host
{
  delegateCopy = delegate;
  hostCopy = host;
  v8 = PO_LOG_POAgentAuthenticationProcess(hostCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess initForAgentWithDelegate:configurationHost:];
  }

  v9 = [(POAgentAuthenticationProcess *)self initWithConfigurationHost:hostCopy];
  if (v9)
  {
    objc_storeWeak(&v9->_kerberosDelegate, delegateCopy);
    v10 = objc_alloc_init(MEMORY[0x277D3D208]);
    keyBag = v9->_keyBag;
    v9->_keyBag = v10;

    [(POKeyBag *)v9->_keyBag startObservingKeyBagLockStatusChanges];
    v12 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.PlatformSSO.notifications"];
    userNotificationCenter = v9->_userNotificationCenter;
    v9->_userNotificationCenter = v12;

    [(UNUserNotificationCenter *)v9->_userNotificationCenter setDelegate:v9];
    [(UNUserNotificationCenter *)v9->_userNotificationCenter setWantsNotificationResponsesDelivered];
    [(POAgentAuthenticationProcess *)v9 setupNotificationCategories];
    v14 = NSUserName();
    userName = v9->_userName;
    v9->_userName = v14;

    v16 = [[PORegistrationManager alloc] initWithAgentAuthenticationProcess:v9 userNotificationCenter:v9->_userNotificationCenter configurationHost:v9->_configurationHost];
    registrationManager = v9->_registrationManager;
    v9->_registrationManager = v16;
  }

  return v9;
}

- (POAgentAuthenticationProcess)initWithConfigurationHost:(id)host
{
  hostCopy = host;
  v6 = PO_LOG_POAgentAuthenticationProcess(hostCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess initWithConfigurationHost:];
  }

  v35.receiver = self;
  v35.super_class = POAgentAuthenticationProcess;
  v7 = [(POAgentAuthenticationProcess *)&v35 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D3D1C0]);
    v9 = *(v7 + 5);
    *(v7 + 5) = v8;

    [*(v7 + 5) setWaitForConnectivity:1];
    v10 = +[POConfigurationManager sharedInstance];
    v11 = *(v7 + 4);
    *(v7 + 4) = v10;

    v12 = objc_alloc_init(MEMORY[0x277D3D210]);
    v13 = *(v7 + 9);
    *(v7 + 9) = v12;

    objc_storeStrong(v7 + 7, host);
    v14 = objc_alloc_init(POKerberosHelper);
    v15 = *(v7 + 3);
    *(v7 + 3) = v14;

    v16 = NSUserName();
    v17 = *(v7 + 19);
    *(v7 + 19) = v16;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *(v7 + 11);
    *(v7 + 11) = defaultCenter;

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    v21 = *(v7 + 12);
    *(v7 + 12) = defaultCenter2;

    v22 = objc_alloc_init(PODirectoryServices);
    v23 = *(v7 + 13);
    *(v7 + 13) = v22;

    *(v7 + 9) = 0;
    v7[11] = 0;
    v24 = [objc_alloc(MEMORY[0x277D3D238]) initWithIdentifierProvider:*(v7 + 13)];
    v25 = *(v7 + 14);
    *(v7 + 14) = v24;

    v26 = objc_alloc_init(MEMORY[0x277D3D218]);
    v27 = *(v7 + 15);
    *(v7 + 15) = v26;

    v28 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
    v29 = *(v7 + 6);
    *(v7 + 6) = v28;

    v30 = dispatch_queue_create("com.apple.AppSSOAgent.PlatformSSO.login", 0);
    v31 = *(v7 + 21);
    *(v7 + 21) = v30;

    v32 = dispatch_queue_create("com.apple.AppSSOAgent.PlatformSSO.configuration", 0);
    v33 = *(v7 + 22);
    *(v7 + 22) = v32;

    *(v7 + 6) = 0;
  }

  return v7;
}

- (void)dealloc
{
  authenticationTimer = [(POAgentAuthenticationProcess *)self authenticationTimer];

  if (authenticationTimer)
  {
    authenticationTimer2 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [authenticationTimer2 invalidate];

    [(POAgentAuthenticationProcess *)self setAuthenticationTimer:0];
  }

  distributedNotificationCenter = [(POAgentAuthenticationProcess *)self distributedNotificationCenter];
  [distributedNotificationCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = POAgentAuthenticationProcess;
  [(POAgentAuthenticationProcess *)&v6 dealloc];
}

- (void)handleScreenUnlockWithCredentialContext:(id)context tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock afterBuddy:(BOOL)buddy
{
  unlockCopy = unlock;
  loginCopy = login;
  contextCopy = context;
  idCopy = id;
  v14 = PO_LOG_POAgentAuthenticationProcess(idCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:];
  }

  v15 = [contextCopy isCredentialSet:-3];
  v16 = v15;
  if (v15)
  {
    v17 = PO_LOG_POAgentAuthenticationProcess(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:];
    }

LABEL_9:
    v19 = v16 ^ 1;

    goto LABEL_11;
  }

  v18 = [contextCopy isCredentialSet:-9];
  if (v18)
  {
    v17 = PO_LOG_POAgentAuthenticationProcess(v18);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:];
    }

    goto LABEL_9;
  }

  v19 = 0;
LABEL_11:
  v20 = [MEMORY[0x277D3D238] tokenIsAccessKey:idCopy];
  v21 = v20;
  if (v20)
  {
    v22 = PO_LOG_POAgentAuthenticationProcess(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:];
    }
  }

  if (loginCopy && !buddy)
  {
    [(POAgentAuthenticationProcess *)self handlePreviousRefreshTokens];
  }

  if ((v16 | v21) == 1)
  {
    [(POAgentAuthenticationProcess *)self doUnlockForSmartCardWithCredentialContext:contextCopy tokenId:idCopy atLogin:loginCopy];
  }

  else if (v19)
  {
    if (unlockCopy && (-[POAgentAuthenticationProcess configurationManager](self, "configurationManager"), v23 = objc_claimAutoreleasedReturnValue(), [v23 currentUserConfiguration], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "loginType"), v24, v23, v25 == 1))
    {
      if (loginCopy)
      {
        [(POAgentAuthenticationProcess *)self doUnlockForTokenLoginWithCredentialContext:contextCopy atLogin:1];
      }

      else
      {
        [(POAgentAuthenticationProcess *)self doUnlockForTokenUnlockWithCredentialContext:contextCopy atLogin:0];
      }
    }

    else
    {
      [(POAgentAuthenticationProcess *)self doUnlockForPasswordWithCredentialContext:contextCopy atLogin:loginCopy];
    }
  }

  else if (loginCopy)
  {
    [(POAgentAuthenticationProcess *)self doUnlockWithEmptyCredentialContext:0 atLogin:1];
  }

  else
  {
    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __111__POAgentAuthenticationProcess_handleScreenUnlockWithCredentialContext_tokenId_atLogin_tokenUnlock_afterBuddy___block_invoke;
    v26[3] = &unk_279A3A788;
    objc_copyWeak(&v28, &location);
    v27 = contextCopy;
    v29 = 0;
    [(POAgentAuthenticationProcess *)self waitForScreenUnlockithCompletion:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __111__POAgentAuthenticationProcess_handleScreenUnlockWithCredentialContext_tokenId_atLogin_tokenUnlock_afterBuddy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained doUnlockWithEmptyCredentialContext:*(a1 + 32) atLogin:*(a1 + 48)];
}

- (void)doUnlockForSmartCardWithCredentialContext:(id)context tokenId:(id)id atLogin:(BOOL)login
{
  contextCopy = context;
  idCopy = id;
  v9 = PO_LOG_POAgentAuthenticationProcess(idCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForSmartCardWithCredentialContext:tokenId:atLogin:];
  }

  loginQueue = [(POAgentAuthenticationProcess *)self loginQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke;
  block[3] = &unk_279A3A7B0;
  block[4] = self;
  v14 = idCopy;
  v15 = contextCopy;
  v11 = contextCopy;
  v12 = idCopy;
  dispatch_async(loginQueue, block);
}

void __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyBag];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke_2;
  v4[3] = &unk_279A3A7B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 waitForKeyBagUnlockWithCompletion:v4];
}

void __90__POAgentAuthenticationProcess_doUnlockForSmartCardWithCredentialContext_tokenId_atLogin___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataUsingEncoding:4];
  [v2 handlePendingSSOTokensWithSharedData:v3];

  [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:*(a1 + 48) tokenId:*(a1 + 40) forceLogin:0];
  [*(a1 + 32) handleUnfinishedTGTExchanges];
  if (([*(a1 + 32) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 32), "configurationManager"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "currentUserConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isNewUser"), v5, v4, v6))
  {
    v7 = *(a1 + 32);

    [v7 handleConfigurationChanged:0];
  }
}

- (void)doUnlockForPasswordWithCredentialContext:(id)context atLogin:(BOOL)login
{
  contextCopy = context;
  v6 = PO_LOG_POAgentAuthenticationProcess(contextCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForPasswordWithCredentialContext:atLogin:];
  }

  loginQueue = [(POAgentAuthenticationProcess *)self loginQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A7D8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(loginQueue, v9);
}

void __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userNotificationCenter];
  v13[0] = @"com.apple.PlatformSSO.passwordchanged";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v2 removePendingNotificationRequestsWithIdentifiers:v3];

  v4 = [*(a1 + 32) userNotificationCenter];
  v12 = @"com.apple.PlatformSSO.passwordchanged";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v4 removeDeliveredNotificationsWithIdentifiers:v5];

  v6 = [*(a1 + 32) keyBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_2;
  v9[3] = &unk_279A3A7D8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v6 waitForKeyBagUnlockWithCompletion:v9];
}

void __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v2 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = [*(a1 + 40) keyWrap];
    v6 = [v5 wrapBlob:v3];
    v7 = [*(a1 + 40) configurationManager];
    v8 = [v7 currentUserConfiguration];
    [v8 set_credential:v6];

    v9 = [*(a1 + 40) configurationManager];
    LOBYTE(v6) = [v9 saveCurrentUserConfigurationAndSyncToPreboot:0];

    if ((v6 & 1) == 0)
    {
      v10 = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_3();
    }

    [*(a1 + 40) handlePendingSSOTokensWithSharedData:v3];
    memset_s([v3 mutableBytes], objc_msgSend(v3, "length"), 0, objc_msgSend(v3, "length"));
  }

  else
  {
    v11 = __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_58();
  }

  [*(a1 + 40) performLoginForCurrentUserWithPasswordContext:*(a1 + 32) tokenId:0 forceLogin:0];
  [*(a1 + 40) handleUnfinishedTGTExchanges];
  if (([*(a1 + 40) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 40), "configurationManager"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "currentUserConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isNewUser"), v13, v12, v14))
  {
    [*(a1 + 40) handleConfigurationChanged:0];
  }
}

id __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_3()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after password unlock."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __81__POAgentAuthenticationProcess_doUnlockForPasswordWithCredentialContext_atLogin___block_invoke_58()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find credential after password unlock."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)doUnlockForTokenUnlockWithCredentialContext:(id)context atLogin:(BOOL)login
{
  contextCopy = context;
  v7 = PO_LOG_POAgentAuthenticationProcess(contextCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForTokenUnlockWithCredentialContext:atLogin:];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__POAgentAuthenticationProcess_doUnlockForTokenUnlockWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A788;
  objc_copyWeak(&v11, &location);
  v8 = contextCopy;
  v10 = v8;
  loginCopy = login;
  [(POAgentAuthenticationProcess *)self waitForScreenUnlockithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __84__POAgentAuthenticationProcess_doUnlockForTokenUnlockWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doUnlockForTokenWithCredentialContext:*(a1 + 32) atLogin:*(a1 + 48)];
}

- (void)doUnlockForTokenLoginWithCredentialContext:(id)context atLogin:(BOOL)login
{
  contextCopy = context;
  v7 = PO_LOG_POAgentAuthenticationProcess(contextCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockForTokenLoginWithCredentialContext:atLogin:];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__POAgentAuthenticationProcess_doUnlockForTokenLoginWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A788;
  objc_copyWeak(&v11, &location);
  v8 = contextCopy;
  v10 = v8;
  loginCopy = login;
  [(POAgentAuthenticationProcess *)self waitForShieldLoweredWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __83__POAgentAuthenticationProcess_doUnlockForTokenLoginWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _doUnlockForTokenWithCredentialContext:*(a1 + 32) atLogin:*(a1 + 48)];
}

- (void)_doUnlockForTokenWithCredentialContext:(id)context atLogin:(BOOL)login
{
  contextCopy = context;
  v6 = PO_LOG_POAgentAuthenticationProcess(contextCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess _doUnlockForTokenWithCredentialContext:atLogin:];
  }

  loginQueue = [(POAgentAuthenticationProcess *)self loginQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A7D8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(loginQueue, v9);
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userNotificationCenter];
  v13[0] = @"com.apple.PlatformSSO.passwordchanged";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v2 removePendingNotificationRequestsWithIdentifiers:v3];

  v4 = [*(a1 + 32) userNotificationCenter];
  v12 = @"com.apple.PlatformSSO.passwordchanged";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v4 removeDeliveredNotificationsWithIdentifiers:v5];

  v6 = [*(a1 + 32) keyBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2;
  v9[3] = &unk_279A3A7D8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v6 waitForKeyBagUnlockWithCompletion:v9];
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = 0;
  v3 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v2 error:&v18];
  v4 = v18;
  v5 = v4;
  if (!v3)
  {
    v4 = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_3();
  }

  v6 = PO_LOG_POAgentAuthenticationProcess(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2_cold_1();
  }

  v7 = [[POAgentProcess alloc] initWithAuthenticationProcess:*(a1 + 40)];
  v8 = dispatch_semaphore_create(0);
  v9 = NSUserName();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70;
  v14[3] = &unk_279A3A800;
  v11 = a1 + 32;
  v10 = *(a1 + 32);
  v14[4] = *(v11 + 8);
  v15 = v3;
  v16 = v10;
  v17 = v8;
  v12 = v8;
  v13 = v3;
  [(POAgentProcess *)v7 updateLocalAccountPassword:v9 passwordContext:v10 completion:v14];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

id __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_3()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find credential after token unlock."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

intptr_t __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70(uint64_t a1, uint64_t a2)
{
  v4 = PO_LOG_POAgentAuthenticationProcess(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70_cold_1(a2, v4);
  }

  [*(a1 + 32) handlePendingSSOTokensWithSharedData:*(a1 + 40)];
  memset_s([*(a1 + 40) mutableBytes], objc_msgSend(*(a1 + 40), "length"), 0, objc_msgSend(*(a1 + 40), "length"));
  [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:*(a1 + 48) tokenId:0 forceLogin:0];
  [*(a1 + 32) handleUnfinishedTGTExchanges];
  if (([*(a1 + 32) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 32), "configurationManager"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "currentUserConfiguration"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isNewUser"), v6, v5, v7))
  {
    [*(a1 + 32) handleConfigurationChanged:0];
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

- (void)doUnlockWithEmptyCredentialContext:(id)context atLogin:(BOOL)login
{
  contextCopy = context;
  v6 = PO_LOG_POAgentAuthenticationProcess(contextCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess doUnlockWithEmptyCredentialContext:atLogin:];
  }

  loginQueue = [(POAgentAuthenticationProcess *)self loginQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke;
  v9[3] = &unk_279A3A7D8;
  v9[4] = self;
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(loginQueue, v9);
}

void __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyBag];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke_2;
  v4[3] = &unk_279A3A7D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 waitForKeyBagUnlockWithCompletion:v4];
}

void __75__POAgentAuthenticationProcess_doUnlockWithEmptyCredentialContext_atLogin___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:*(a1 + 40) tokenId:0 forceLogin:0];
  [*(a1 + 32) handleUnfinishedTGTExchanges];
  if (([*(a1 + 32) shouldRunConfigurationChangeWhenUnlocked] & 1) != 0 || (objc_msgSend(*(a1 + 32), "configurationManager"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "currentUserConfiguration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isNewUser"), v3, v2, v4))
  {
    v5 = *(a1 + 32);

    [v5 handleConfigurationChanged:0];
  }
}

- (void)handleAgentStartup
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSOAgentStartup", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_3;
  v10[3] = &unk_279A3A298;
  objc_copyWeak(&v11, &location);
  v2 = [*(a1 + 32) keyBag];
  [v2 setLockHandler:v10];

  v3 = [*(a1 + 32) notificationCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_configurationChanged_ name:*MEMORY[0x277CEBEF8] object:0];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:getuid()];
  v5 = [v4 stringValue];

  v6 = [*(a1 + 32) distributedNotificationCenter];
  [v6 addObserver:*(a1 + 32) selector:sel_handleScreenUnlock name:@"com.apple.screenIsUnlocked" object:v5];

  v7 = [*(a1 + 32) distributedNotificationCenter];
  [v7 addObserver:*(a1 + 32) selector:sel_handleScreenLock name:@"com.apple.screenIsLocked" object:v5];

  [*(a1 + 32) checkIfPlatformSSOIsActive];
  v8 = [*(a1 + 32) keyBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_4;
  v9[3] = &unk_279A3A060;
  v9[4] = *(a1 + 32);
  [v8 waitForKeyBagFirstUnlockOnStartupWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__POAgentAuthenticationProcess_handleAgentStartup__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEnableNetworkChanges:0];
}

- (void)_performStartupSteps
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke(uint64_t a1)
{
  v2 = PO_LOG_POAgentAuthenticationProcess(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) configurationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke_86;
  block[3] = &unk_279A3A060;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v3, block);

  v4 = [*(a1 + 32) platformSSOActive];
  v5 = *(a1 + 32);
  if (!v4)
  {
    v13 = [v5 userNotificationCenter];
    [v13 removeAllDeliveredNotifications];

    v14 = [*(a1 + 32) userNotificationCenter];
    [v14 removeAllPendingNotificationRequests];

    return;
  }

  v6 = [v5 configurationManager];
  v7 = [v6 currentDeviceConfiguration];
  if (![v7 supportsTokenUnlock])
  {
    goto LABEL_10;
  }

  v8 = [*(a1 + 32) configurationManager];
  v9 = [v8 currentUserConfiguration];
  if ([v9 loginType] != 1)
  {

    goto LABEL_10;
  }

  v10 = [*(a1 + 32) configurationManager];
  v11 = NSUserName();
  v12 = [v10 isTemporaryAccountUserName:v11];

  if ((v12 & 1) == 0)
  {
    v6 = [*(a1 + 32) tokenHelper];
    v7 = NSUserName();
    [v6 insertTokenForUser:v7];
LABEL_10:
  }

  [*(a1 + 32) setupTimerForAuthentication];
}

- (void)handleNetworkChange
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke(uint64_t a1)
{
  v2 = PO_LOG_POAgentAuthenticationProcess(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_cold_1();
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSONetworkChange", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87(uint64_t a1)
{
  v2 = [*(a1 + 32) enableNetworkChanges];
  if ((v2 & 1) == 0)
  {
    v8 = PO_LOG_POAgentAuthenticationProcess(v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_1();
    }

    goto LABEL_14;
  }

  v3 = [*(a1 + 32) platformSSOActive];
  if ((v3 & 1) == 0)
  {
    v8 = PO_LOG_POAgentAuthenticationProcess(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_2();
    }

    goto LABEL_14;
  }

  v4 = [*(a1 + 32) platformSSOAccount];
  if ((v4 & 1) == 0)
  {
    v8 = PO_LOG_POAgentAuthenticationProcess(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_3();
    }

LABEL_14:

    return;
  }

  v5 = [*(a1 + 32) keyBag];
  v6 = [v5 isUserKeybagUnlocked];

  if (v6)
  {
    [*(a1 + 32) performLoginForCurrentUserWithPasswordContext:0];
    v7 = *(a1 + 32);

    [v7 handleUnfinishedTGTExchanges];
  }
}

- (void)waitForShieldLoweredWithCompletion:(id)completion
{
  completionCopy = completion;
  shieldLoweredLock = [(POAgentAuthenticationProcess *)self shieldLoweredLock];
  objc_sync_enter(shieldLoweredLock);
  if ([(POAgentAuthenticationProcess *)self shieldLowered])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    [(POAgentAuthenticationProcess *)self set__shieldLoweredHandler:completionCopy];
  }

  objc_sync_exit(shieldLoweredLock);
}

- (void)handleScreenUnlock
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleScreenLock
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)waitForScreenUnlockithCompletion:(id)completion
{
  completionCopy = completion;
  screenUnlockLock = [(POAgentAuthenticationProcess *)self screenUnlockLock];
  objc_sync_enter(screenUnlockLock);
  if ([(POAgentAuthenticationProcess *)self screenUnlocked])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    [(POAgentAuthenticationProcess *)self set__screenUnlockHandler:completionCopy];
  }

  objc_sync_exit(screenUnlockLock);
}

- (BOOL)performLoginForCurrentUserWithPasswordContext:(id)context tokenId:(id)id forceLogin:(BOOL)login
{
  v98 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idCopy = id;
  v10 = PO_LOG_POAgentAuthenticationProcess(idCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  platformSSOActive = [(POAgentAuthenticationProcess *)selfCopy platformSSOActive];
  if ((platformSSOActive & 1) == 0)
  {
    currentUserConfiguration = PO_LOG_POAgentAuthenticationProcess(platformSSOActive);
    if (os_log_type_enabled(currentUserConfiguration, OS_LOG_TYPE_DEBUG))
    {
      __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_2();
    }

    goto LABEL_20;
  }

  platformSSOAccount = [(POAgentAuthenticationProcess *)selfCopy platformSSOAccount];
  v14 = platformSSOAccount;
  currentUserConfiguration = PO_LOG_POAgentAuthenticationProcess(platformSSOAccount);
  v16 = os_log_type_enabled(currentUserConfiguration, OS_LOG_TYPE_INFO);
  if ((v14 & 1) == 0)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, currentUserConfiguration, OS_LOG_TYPE_INFO, "not a PlatformSSO account", buf, 2u);
    }

    goto LABEL_20;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, currentUserConfiguration, OS_LOG_TYPE_INFO, "Checking Login for user", buf, 2u);
  }

  configurationManager = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  if (currentUserConfiguration)
  {
    v19 = PO_LOG_POAgentAuthenticationProcess(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSObject state](currentUserConfiguration, "state")}];
      *buf = 136315650;
      v93 = "[POAgentAuthenticationProcess performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:]";
      v94 = 2114;
      v95 = v20;
      v96 = 2112;
      v97 = selfCopy;
      _os_log_impl(&dword_25E831000, v19, OS_LOG_TYPE_DEFAULT, "%s user state = %{public}@ on %@", buf, 0x20u);
    }

    state = [currentUserConfiguration state];
    if (state == 2 || (state = [currentUserConfiguration state], state == 5))
    {
      v22 = PO_LOG_POAgentAuthenticationProcess(state);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v22, OS_LOG_TYPE_INFO, "User state is needs registration or key is invalid", buf, 2u);
      }

      goto LABEL_20;
    }

    if ([currentUserConfiguration state]== 1)
    {
      v26 = PO_LOG_POAgentAuthenticationProcess(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v26, OS_LOG_TYPE_INFO, "User state is needs authentication", buf, 2u);
      }

      login = 1;
    }

    lastLoginDate = [currentUserConfiguration lastLoginDate];
    if (lastLoginDate)
    {
      lastLoginDate2 = [currentUserConfiguration lastLoginDate];
      [lastLoginDate2 timeIntervalSinceNow];
      v30 = v29;
      configurationManager2 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
      currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
      loginFrequency = [currentDeviceConfiguration loginFrequency];
      v81 = v30 < -[loginFrequency intValue];
    }

    else
    {
      v81 = 1;
    }

    if (login || !v81)
    {
      if (login)
      {
        goto LABEL_38;
      }

      configurationManager3 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
      tokenReceived = [configurationManager3 tokenReceived];
      [tokenReceived timeIntervalSinceNow];
      v38 = v37 < -14400.0;

      if (!v38)
      {
        configurationManager4 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
        tokenExpiration = [configurationManager4 tokenExpiration];
        [tokenExpiration timeIntervalSinceNow];
        v67 = v66 < 600.0;

        if (!v67)
        {
          v88 = 0u;
          v89 = 0u;
          v87 = 0u;
          v86 = 0u;
          kerberosStatus = [currentUserConfiguration kerberosStatus];
          v70 = [kerberosStatus countByEnumeratingWithState:&v86 objects:v91 count:16];
          obj = kerberosStatus;
          if (v70)
          {
            v71 = *v87;
            while (2)
            {
              for (i = 0; i != v70; ++i)
              {
                if (*v87 != v71)
                {
                  objc_enumerationMutation(obj);
                }

                v73 = *(*(&v86 + 1) + 8 * i);
                if ([v73 importSuccessful])
                {
                  if (([v73 exchangeRequired] & 1) == 0)
                  {
                    kerberosHelper = [(POAgentAuthenticationProcess *)selfCopy kerberosHelper];
                    cacheName = [v73 cacheName];
                    v76 = [kerberosHelper checkForValidKerberosTGT:cacheName];

                    if ((v76 & 1) == 0)
                    {
                      v80 = PO_LOG_POAgentAuthenticationProcess(v77);
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_25E831000, v80, OS_LOG_TYPE_INFO, "Kerberos cache not valid", buf, 2u);
                      }

                      v40 = obj;
                      goto LABEL_37;
                    }
                  }
                }
              }

              v70 = [obj countByEnumeratingWithState:&v86 objects:v91 count:16];
              if (v70)
              {
                continue;
              }

              break;
            }
          }

          v79 = PO_LOG_POAgentAuthenticationProcess(v78);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25E831000, v79, OS_LOG_TYPE_INFO, "User does not need authentication", buf, 2u);
          }

          [(POAgentAuthenticationProcess *)selfCopy handleChecksAfterSuccessfulLoginWithPasswordContext:contextCopy];
          goto LABEL_20;
        }

        v40 = PO_LOG_POAgentAuthenticationProcess(v68);
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v41 = "Tokens expire soon";
        goto LABEL_36;
      }

      v40 = PO_LOG_POAgentAuthenticationProcess(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v41 = "Tokens issued more than 4 hours ago";
LABEL_36:
        _os_log_impl(&dword_25E831000, v40, OS_LOG_TYPE_INFO, v41, buf, 2u);
      }
    }

    else
    {
      v40 = PO_LOG_POAgentAuthenticationProcess(v34);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v41 = "Time for user authentication";
        goto LABEL_36;
      }
    }

LABEL_37:

LABEL_38:
    v42 = PO_LOG_POAgentAuthenticationProcess(v34);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v42, OS_LOG_TYPE_INFO, "Attempting authentication", buf, 2u);
    }

    authenticationProcess = [(POAgentAuthenticationProcess *)selfCopy authenticationProcess];
    waitForConnectivity = [authenticationProcess waitForConnectivity];

    lastAuthenticationAttempt = [(POAgentAuthenticationProcess *)selfCopy lastAuthenticationAttempt];
    if (lastAuthenticationAttempt)
    {
      lastAuthenticationAttempt2 = [(POAgentAuthenticationProcess *)selfCopy lastAuthenticationAttempt];
      [lastAuthenticationAttempt2 timeIntervalSinceNow];
      v48 = -180.0;
      if (!waitForConnectivity)
      {
        v48 = -2.0;
      }

      v49 = v47 > v48;

      if (v49)
      {
        v51 = PO_LOG_POAgentAuthenticationProcess(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:];
        }

        goto LABEL_20;
      }
    }

    configurationManager5 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    currentLoginConfiguration = [configurationManager5 currentLoginConfiguration];

    if (!currentLoginConfiguration)
    {
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_91;
      v85[3] = &unk_279A3A088;
      v85[4] = selfCopy;
      v61 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_91(v85);
      v24 = 0;
LABEL_65:

      goto LABEL_21;
    }

    configurationManager6 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    currentDeviceConfiguration2 = [configurationManager6 currentDeviceConfiguration];

    if (currentDeviceConfiguration2)
    {
      if ([currentDeviceConfiguration2 registrationCompleted])
      {
        if (v81 || -[NSObject loginType](currentUserConfiguration, "loginType") == 2 || ([currentLoginConfiguration refreshEndpointURL], (v56 = objc_claimAutoreleasedReturnValue()) == 0) || (-[POAgentAuthenticationProcess configurationManager](selfCopy, "configurationManager"), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "currentRefreshToken"), v58 = objc_claimAutoreleasedReturnValue(), v59 = v58 == 0, v58, v57, v56, v59))
        {
          v60 = [(POAgentAuthenticationProcess *)selfCopy _doLoginWithPasswordContext:contextCopy tokenId:idCopy];
        }

        else
        {
          v60 = [(POAgentAuthenticationProcess *)selfCopy _doRefreshWithPasswordContext:contextCopy tokenId:idCopy];
        }

        v24 = v60;
        goto LABEL_64;
      }

      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_99;
      v83[3] = &unk_279A3A088;
      v83[4] = selfCopy;
      v63 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_99(v83);
    }

    else
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_95;
      v84[3] = &unk_279A3A088;
      v84[4] = selfCopy;
      v62 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_95(v84);
    }

    v24 = 0;
LABEL_64:

    goto LABEL_65;
  }

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke;
  v90[3] = &unk_279A3A088;
  v90[4] = selfCopy;
  v23 = __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke(v90);
LABEL_20:
  v24 = 0;
LABEL_21:

  objc_sync_exit(selfCopy);
  return v24;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for user for login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_91(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for user for login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_95(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for user for login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __97__POAgentAuthenticationProcess_performLoginForCurrentUserWithPasswordContext_tokenId_forceLogin___block_invoke_99(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Registration is not complete for user for login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)_doRefreshWithPasswordContext:(id)context tokenId:(id)id
{
  contextCopy = context;
  idCopy = id;
  v8 = PO_LOG_POAgentAuthenticationProcess(idCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess _doRefreshWithPasswordContext:tokenId:];
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  if (currentUserConfiguration)
  {
    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];

    if (currentDeviceConfiguration)
    {
      configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
      currentLoginConfiguration = [configurationManager3 currentLoginConfiguration];

      v15 = currentLoginConfiguration != 0;
      if (currentLoginConfiguration)
      {
        v43 = contextCopy;
        [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
        date = [MEMORY[0x277CBEAA8] date];
        [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:date];

        v18 = PO_LOG_POAgentAuthenticationProcess(v17);
        v19 = os_signpost_id_generate(v18);

        v21 = PO_LOG_POAgentAuthenticationProcess(v20);
        v22 = v21;
        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PlatformSSO_RefreshAuth", " enableTelemetry=YES ", buf, 2u);
        }

        userLoginConfiguration = [currentUserConfiguration userLoginConfiguration];
        v24 = [currentLoginConfiguration mergedConfigurationWithUserLoginConfiguration:userLoginConfiguration];

        userLoginConfiguration2 = [currentUserConfiguration userLoginConfiguration];
        loginUserName = [userLoginConfiguration2 loginUserName];
        v27 = loginUserName;
        v44 = v19;
        if (loginUserName)
        {
          userName = loginUserName;
        }

        else
        {
          userName = [(POAgentAuthenticationProcess *)self userName];
        }

        v32 = userName;
        v41 = userName;

        authenticationProcess = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v42 = v24;
        v34 = [authenticationProcess createAuthenticationContextUsingLoginConfiguration:v24 deviceConfiguration:currentDeviceConfiguration userName:v32];

        jwksStorageProvider = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
        [v34 setJwksStorageProvider:jwksStorageProvider];

        configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentRefreshToken = [configurationManager4 currentRefreshToken];
        [v34 setRefreshToken:currentRefreshToken];

        authenticationProcess2 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_121;
        v45[3] = &unk_279A3A828;
        contextCopy = v43;
        v49 = v44;
        v45[4] = self;
        v46 = v34;
        v47 = v43;
        v48 = idCopy;
        v39 = v34;
        [authenticationProcess2 performTokenRefreshUsingContext:v39 completion:v45];
      }

      else
      {
        v31 = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_114();
      }
    }

    else
    {
      v30 = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_108();
      v15 = 0;
    }
  }

  else
  {
    v29 = __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke();
    v15 = 0;
  }

  return v15;
}

id __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for refresh."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_108()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for refresh."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_114()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for refresh."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __70__POAgentAuthenticationProcess__doRefreshWithPasswordContext_tokenId___block_invoke_121(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v18 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v18;
        v12 = *(a1 + 64);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v13 = "Success";
        v14 = buf;
        goto LABEL_24;
      case 2:
        v15 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v15;
        v12 = *(a1 + 64);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
        {
          goto LABEL_25;
        }

        v21 = 0;
        v13 = "PermanentFailure";
        v14 = &v21;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v10 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v10;
        v12 = *(a1 + 64);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_25;
        }

        v22 = 0;
        v13 = "CredentialFailure";
        v14 = &v22;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_RefreshAuth", v13, v14, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v16 = PO_LOG_POAgentAuthenticationProcess(v8);
      v11 = v16;
      v12 = *(a1 + 64);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_25;
      }

      LOWORD(v19) = 0;
      v13 = "Failed";
      v14 = &v19;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v17 = PO_LOG_POAgentAuthenticationProcess(v8);
      v11 = v17;
      v12 = *(a1 + 64);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_25;
      }

      v20 = 0;
      v13 = "Unavailable";
      v14 = &v20;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:*(a1 + 40) tokens:v9 passwordContext:*(a1 + 48) tokenId:*(a1 + 56) tokenHash:{0, v19}];
}

- (BOOL)_doLoginWithPasswordContext:(id)context tokenId:(id)id
{
  v231 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idCopy = id;
  v8 = PO_LOG_POAgentAuthenticationProcess(idCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  if (currentUserConfiguration)
  {
    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];

    if (!currentDeviceConfiguration)
    {
      v225[0] = MEMORY[0x277D85DD0];
      v225[1] = 3221225472;
      v225[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_126;
      v225[3] = &unk_279A3A088;
      v225[4] = self;
      v36 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_126(v225);
      LOBYTE(v35) = 0;
LABEL_49:

      goto LABEL_50;
    }

    configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentLoginConfiguration = [configurationManager3 currentLoginConfiguration];

    if (!currentLoginConfiguration)
    {
      v224[0] = MEMORY[0x277D85DD0];
      v224[1] = 3221225472;
      v224[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_130;
      v224[3] = &unk_279A3A088;
      v224[4] = self;
      v37 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_130(v224);
      goto LABEL_21;
    }

    v14 = PO_LOG_POAgentAuthenticationProcess(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(currentUserConfiguration, "loginType")}];
      *buf = 136315650;
      *&buf[4] = "[POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:]";
      *&buf[12] = 2114;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25E831000, v14, OS_LOG_TYPE_DEFAULT, "%s loginType = %{public}@ on %@", buf, 0x20u);
    }

    if ([currentUserConfiguration loginType] == 1)
    {
      v16 = PO_LOG_POAgentAuthenticationProcess(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Password authentication", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      selfCopy = __Block_byref_object_copy__3;
      v229 = __Block_byref_object_dispose__3;
      v230 = [MEMORY[0x277D3D1E0] passwordDataFromContext:contextCopy error:0];
      if (*(*&buf[8] + 40) || (-[POAgentAuthenticationProcess keyWrap](self, "keyWrap"), v17 = objc_claimAutoreleasedReturnValue(), [currentUserConfiguration _credential], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "unwrapBlob:", v18), v19 = objc_claimAutoreleasedReturnValue(), v20 = *(*&buf[8] + 40), *(*&buf[8] + 40) = v19, v20, v18, v17, *(*&buf[8] + 40)))
      {
        [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
        date = [MEMORY[0x277CBEAA8] date];
        [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:date];

        v23 = PO_LOG_POAgentAuthenticationProcess(v22);
        v24 = os_signpost_id_generate(v23);

        v26 = PO_LOG_POAgentAuthenticationProcess(v25);
        v27 = v26;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *v200 = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PlatformSSO_PasswordAuth", " enableTelemetry=YES ", v200, 2u);
        }

        userLoginConfiguration = [currentUserConfiguration userLoginConfiguration];
        v29 = [currentLoginConfiguration mergedConfigurationWithUserLoginConfiguration:userLoginConfiguration];

        userLoginConfiguration2 = [currentUserConfiguration userLoginConfiguration];
        loginUserName = [userLoginConfiguration2 loginUserName];
        v32 = loginUserName;
        if (loginUserName)
        {
          userName = loginUserName;
        }

        else
        {
          userName = [(POAgentAuthenticationProcess *)self userName];
        }

        v55 = userName;

        authenticationProcess = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v57 = [authenticationProcess createAuthenticationContextUsingLoginConfiguration:v29 deviceConfiguration:currentDeviceConfiguration userName:v55];

        [v57 setPassword:*(*&buf[8] + 40)];
        jwksStorageProvider = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
        [v57 setJwksStorageProvider:jwksStorageProvider];

        configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentRefreshToken = [configurationManager4 currentRefreshToken];
        [v57 setRefreshToken:currentRefreshToken];

        authenticationProcess2 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v218[0] = MEMORY[0x277D85DD0];
        v218[1] = 3221225472;
        v218[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_138;
        v218[3] = &unk_279A3A850;
        v221 = buf;
        v222 = v24;
        v218[4] = self;
        v219 = contextCopy;
        v220 = idCopy;
        [authenticationProcess2 performPasswordLoginUsingContext:v57 completion:v218];

        _Block_object_dispose(buf, 8);
LABEL_47:
        LOBYTE(v35) = 1;
        goto LABEL_48;
      }

      v223[0] = MEMORY[0x277D85DD0];
      v223[1] = 3221225472;
      v223[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_134;
      v223[3] = &unk_279A3A088;
      v223[4] = self;
      v72 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_134(v223);
      [(POAgentAuthenticationProcess *)self handleUserNeedsReauthenticationAfterDelay:1.0];
      _Block_object_dispose(buf, 8);

LABEL_21:
      LOBYTE(v35) = 0;
LABEL_48:

      goto LABEL_49;
    }

    if ([currentUserConfiguration loginType] == 2)
    {
      [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
      v188 = SecKeyCopyAttributes([currentUserConfiguration sepKey]);
      v38 = [(__CFDictionary *)v188 objectForKeyedSubscript:*MEMORY[0x277CDBEC0]];

      if (!v38 || ![MEMORY[0x277D3D230] checkIfBiometricConstraintsForSigning:v38])
      {
        v190 = 0;
LABEL_34:
        date2 = [MEMORY[0x277CBEAA8] date];
        [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:date2];

        v44 = PO_LOG_POAgentAuthenticationProcess(v43);
        v45 = os_signpost_id_generate(v44);

        v47 = PO_LOG_POAgentAuthenticationProcess(v46);
        v48 = v47;
        if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v45, "PlatformSSO_UserSEPKeyAuth", " enableTelemetry=YES ", buf, 2u);
        }

        userLoginConfiguration3 = [currentUserConfiguration userLoginConfiguration];
        v50 = [currentLoginConfiguration mergedConfigurationWithUserLoginConfiguration:userLoginConfiguration3];

        userLoginConfiguration4 = [currentUserConfiguration userLoginConfiguration];
        loginUserName2 = [userLoginConfiguration4 loginUserName];
        v53 = loginUserName2;
        if (loginUserName2)
        {
          userName2 = loginUserName2;
        }

        else
        {
          userName2 = [(POAgentAuthenticationProcess *)self userName];
        }

        v63 = userName2;

        authenticationProcess3 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v65 = [authenticationProcess3 createAuthenticationContextUsingLoginConfiguration:v50 deviceConfiguration:currentDeviceConfiguration userName:v63];

        jwksStorageProvider2 = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
        [v65 setJwksStorageProvider:jwksStorageProvider2];

        configurationManager5 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentRefreshToken2 = [configurationManager5 currentRefreshToken];
        [v65 setRefreshToken:currentRefreshToken2];

        [v65 setEmbeddedAssertionSigningKey:{objc_msgSend(currentUserConfiguration, "sepKeyWithContext:", v190)}];
        [v65 setEmbeddedAssertionCertificate:{objc_msgSend(currentUserConfiguration, "sepKeyCertificate")}];
        signingAlgorithm = [currentUserConfiguration signingAlgorithm];
        [v65 setUserSepSigningAlgorithm:signingAlgorithm];

        authenticationProcess4 = [(POAgentAuthenticationProcess *)self authenticationProcess];
        v206[0] = MEMORY[0x277D85DD0];
        v206[1] = 3221225472;
        v206[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_184;
        v206[3] = &unk_279A3A8C0;
        v209 = v45;
        v206[4] = self;
        v207 = contextCopy;
        v208 = idCopy;
        [authenticationProcess4 performSEPKeyLoginUsingContext:v65 completion:v206];

        goto LABEL_47;
      }

      userSEPKeyBiometricPolicy = [currentLoginConfiguration userSEPKeyBiometricPolicy];
      if (contextCopy && (userSEPKeyBiometricPolicy & 4) != 0)
      {
        v40 = PO_LOG_POAgentAuthenticationProcess(userSEPKeyBiometricPolicy);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
        }

        v190 = contextCopy;
        goto LABEL_34;
      }

      v190 = objc_alloc_init(MEMORY[0x277CD4790]);
      accountDisplayName = [currentDeviceConfiguration accountDisplayName];
      v87 = [accountDisplayName length] == 0;

      if (v87)
      {
        accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
        v105 = [accountDisplayName2 length] == 0;

        v106 = MEMORY[0x277CCACA8];
        v187 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v107 = [v187 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        if (v105)
        {
          v149 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v150 = [v149 localizedStringForKey:@"IDENTITY_PROVIDER_TEXT" value:&stru_287080C08 table:0];
          v150 = [v106 localizedStringWithFormat:v107, v150];
          [v190 setLocalizedReason:v150];

          accountDisplayName4 = 0;
        }

        else
        {
          accountDisplayName3 = [currentLoginConfiguration accountDisplayName];
          v108 = [v106 localizedStringWithFormat:v107, accountDisplayName3];
          [v190 setLocalizedReason:v108];

          accountDisplayName4 = [currentLoginConfiguration accountDisplayName];
        }
      }

      else
      {
        v88 = MEMORY[0x277CCACA8];
        v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v90 = [v89 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        accountDisplayName5 = [currentDeviceConfiguration accountDisplayName];
        v92 = [v88 localizedStringWithFormat:v90, accountDisplayName5];
        [v190 setLocalizedReason:v92];

        accountDisplayName4 = [currentDeviceConfiguration accountDisplayName];
      }

      v152 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v153 = [v152 localizedStringForKey:@"DEFAULT_LOGIN_PROMPT_NAME" value:&stru_287080C08 table:0];
      [v190 setOptionCallerName:v153];

      v154 = MEMORY[0x277CCA8D8];
      extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];
      v156 = [v154 bundleWithIdentifier:extensionIdentifier];
      bundlePath = [v156 bundlePath];
      [v190 setOptionCallerIconPath:bundlePath];

      [v190 setInteractionNotAllowed:0];
      if (([currentLoginConfiguration userSEPKeyBiometricPolicy] & 8) != 0)
      {
        if (!accountDisplayName4 || [accountDisplayName4 length] >= 0x13)
        {
          v158 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v159 = [v158 localizedStringForKey:@"IDENTITY_PROVIDER_TEXT" value:&stru_287080C08 table:0];

          accountDisplayName4 = v159;
        }

        v160 = MEMORY[0x277CCACA8];
        v161 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v162 = [v161 localizedStringForKey:@"CUSTOM_FALLBACK_BUTTON_TEXT" value:&stru_287080C08 table:0];
        v186 = [v160 localizedStringWithFormat:v162, accountDisplayName4];
        [v190 setLocalizedFallbackTitle:v186];

        [v190 setOptionFallbackVisible:MEMORY[0x277CBEC38]];
      }

      v164 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      selfCopy = __Block_byref_object_copy__3;
      v229 = __Block_byref_object_dispose__3;
      v230 = 0;
      v165 = 10;
      v35 = 0x277CCA000uLL;
      while (1)
      {
        v166 = *&buf[8];
        obj = *(*&buf[8] + 40);
        v167 = [v190 evaluateAccessControl:v38 operation:3 options:MEMORY[0x277CBEC10] error:&obj];
        objc_storeStrong((v166 + 40), obj);

        v169 = PO_LOG_POAgentAuthenticationProcess(v168);
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:v200 tokenId:&v200[1]];
        }

        if ([*(*&buf[8] + 40) code] == -1004)
        {
          v170 = PO_LOG_POAgentAuthenticationProcess(-1004);
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
          {
            [POAgentAuthenticationProcess _doLoginWithPasswordContext:v216 tokenId:&v216[1]];
          }

          [MEMORY[0x277CCACC8] sleepForTimeInterval:2.0];
        }

        code = [*(*&buf[8] + 40) code];
        if (code != -4)
        {
          break;
        }

        v172 = PO_LOG_POAgentAuthenticationProcess(-4);
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:v215 tokenId:?];
        }

        [MEMORY[0x277CCACC8] sleepForTimeInterval:5.0];
        v164 = v167;
        if (!--v165)
        {
          goto LABEL_122;
        }
      }

      v35 = *(*&buf[8] + 40);
      v172 = PO_LOG_POAgentAuthenticationProcess(code);
      v173 = os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG);
      if (v35)
      {
        if (v173)
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
        }
      }

      else if (v173)
      {
        [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
      }

LABEL_122:
      if (!v167)
      {
        v213[0] = MEMORY[0x277D85DD0];
        v213[1] = 3221225472;
        v213[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_159;
        v213[3] = &unk_279A3A450;
        v213[4] = buf;
        v174 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_159(v213);
        userSEPKeyBiometricPolicy2 = [currentLoginConfiguration userSEPKeyBiometricPolicy];
        code2 = [*(*&buf[8] + 40) code];
        v177 = userSEPKeyBiometricPolicy2 & 8;
        if (code2 == -1)
        {
          userSEPKeyBiometricPolicy2 = [*(*&buf[8] + 40) userInfo];
          v172 = [userSEPKeyBiometricPolicy2 objectForKeyedSubscript:@"Subcode"];
          if ([v172 intValue]== 6)
          {

LABEL_128:
            v179 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v180 = [v179 localizedStringForKey:@"BIOMETRIC_CHANGED_TEXT" value:&stru_287080C08 table:0];

            v181 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v182 = [v181 localizedStringForKey:@"DEFAULT_REGISTRATION_REQUIRED_TEXT" value:&stru_287080C08 table:0];

            v210[0] = MEMORY[0x277D85DD0];
            v210[1] = 3221225472;
            v210[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_172;
            v210[3] = &unk_279A3A898;
            v212 = v177 >> 3;
            v210[4] = self;
            v211 = currentUserConfiguration;
            [(POAgentAuthenticationProcess *)self showAlertMessage:v180 messageText:v182 completion:v210];

LABEL_131:
            LOBYTE(v35) = 0;
            goto LABEL_133;
          }
        }

        code3 = [*(*&buf[8] + 40) code];
        if (code2 == -1)
        {
          v183 = code3 == -7;

          if (v183)
          {
            goto LABEL_128;
          }
        }

        else if (code3 == -7)
        {
          goto LABEL_128;
        }

        if (!v177)
        {
          goto LABEL_131;
        }

        [(POAgentAuthenticationProcess *)self requestUserAuthenticationSyncPassword:0 completion:&__block_literal_global_183];
        LOBYTE(v35) = 1;
      }

LABEL_133:

      _Block_object_dispose(buf, 8);
      if (!v167)
      {

        goto LABEL_48;
      }

      goto LABEL_34;
    }

    if ([currentUserConfiguration loginType] != 3)
    {
      if ([currentUserConfiguration loginType] == 4)
      {
        v62 = PO_LOG_POAgentAuthenticationProcess(4);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v62, OS_LOG_TYPE_INFO, "Prompting user for access key authentication", buf, 2u);
        }
      }

      goto LABEL_47;
    }

    if (idCopy)
    {
      smartCardTokenId = idCopy;
    }

    else
    {
      smartCardTokenId = [currentUserConfiguration smartCardTokenId];
      if (!smartCardTokenId)
      {
        goto LABEL_60;
      }
    }

    tokenHelper = [(POAgentAuthenticationProcess *)self tokenHelper];
    v74 = [tokenHelper waitForTokenAvailable:smartCardTokenId];

    if (v74)
    {
LABEL_54:
      v76 = PO_LOG_POAgentAuthenticationProcess(v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
      }

      tokenHelper2 = [(POAgentAuthenticationProcess *)self tokenHelper];
      userName3 = [(POAgentAuthenticationProcess *)self userName];
      v202 = 0;
      v191 = [tokenHelper2 findTokenIdForSmartCardBoundUser:userName3 tokenHash:&v202];
      v189 = v202;

      if (![v191 length])
      {
        v79 = PO_LOG_POAgentAuthenticationProcess(0);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          [POAgentAuthenticationProcess _doLoginWithPasswordContext:tokenId:];
        }

        tokenHelper3 = [(POAgentAuthenticationProcess *)self tokenHelper];
        userName4 = [(POAgentAuthenticationProcess *)self userName];
        v201 = v189;
        v82 = [tokenHelper3 findTokenIdForSmartCardAMUser:userName4 tokenHash:&v201];
        v83 = v201;

        v189 = v83;
        v191 = v82;
      }

LABEL_63:
      if (contextCopy)
      {
        v185 = contextCopy;
      }

      else
      {
        v185 = objc_alloc_init(MEMORY[0x277CD4790]);
      }

      accountDisplayName6 = [currentDeviceConfiguration accountDisplayName];
      v95 = [accountDisplayName6 length] == 0;

      if (v95)
      {
        accountDisplayName7 = [currentLoginConfiguration accountDisplayName];
        v102 = [accountDisplayName7 length] == 0;

        v103 = MEMORY[0x277CCACA8];
        v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v98 = [v97 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        if (v102)
        {
          accountDisplayName8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v100 = [accountDisplayName8 localizedStringForKey:@"IDENTITY_PROVIDER_TEXT" value:&stru_287080C08 table:0];
          v100 = [v103 localizedStringWithFormat:v98, v100];
          [v185 setOptionAuthenticationTitle:v100];
        }

        else
        {
          accountDisplayName8 = [currentLoginConfiguration accountDisplayName];
          v100 = [v103 localizedStringWithFormat:v98, accountDisplayName8];
          [v185 setOptionAuthenticationTitle:v100];
        }
      }

      else
      {
        v96 = MEMORY[0x277CCACA8];
        v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v98 = [v97 localizedStringForKey:@"SMARTCARD_LOGIN_REASON_TEXT" value:&stru_287080C08 table:0];
        accountDisplayName8 = [currentDeviceConfiguration accountDisplayName];
        v100 = [v96 localizedStringWithFormat:v98, accountDisplayName8];
        [v185 setOptionAuthenticationTitle:v100];
      }

      v112 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v113 = [v112 localizedStringForKey:@"DEFAULT_LOGIN_PROMPT_NAME" value:&stru_287080C08 table:0];
      [v185 setOptionCallerName:v113];

      v114 = MEMORY[0x277CCA8D8];
      extensionIdentifier2 = [currentDeviceConfiguration extensionIdentifier];
      v116 = [v114 bundleWithIdentifier:extensionIdentifier2];
      bundlePath2 = [v116 bundlePath];
      [v185 setOptionCallerIconPath:bundlePath2];

      *buf = 0;
      *v200 = 0;
      keychainHelper = [(POAgentAuthenticationProcess *)self keychainHelper];
      LOBYTE(v114) = [keychainHelper retrieveCertAndKeyForTokenId:v191 context:v185 forSigning:1 hash:v189 certificate:v200 privateKey:buf];

      if (v114)
      {
        goto LABEL_81;
      }

      v132 = PO_LOG_POAgentAuthenticationProcess(v119);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
      {
        *v216 = 0;
        _os_log_impl(&dword_25E831000, v132, OS_LOG_TYPE_INFO, "Smartcard not found.", v216, 2u);
      }

      registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
      v199 = v189;
      v134 = [registrationManager requestSmartCardForBinding:1 window:0 tokenId:0 tokenHash:&v199 wrapTokenHash:0 pinContext:0];
      v135 = v199;

      if (v134 == 1)
      {
        keychainHelper2 = [(POAgentAuthenticationProcess *)self keychainHelper];
        v138 = [keychainHelper2 retrieveCertAndKeyForTokenId:v191 context:v185 forSigning:1 hash:v135 certificate:v200 privateKey:buf];

        if (v138)
        {
          v189 = v135;
LABEL_81:
          [(POAgentAuthenticationProcess *)self notifyKerberosDelegateTGTDidBegin];
          date3 = [MEMORY[0x277CBEAA8] date];
          [(POAgentAuthenticationProcess *)self setLastAuthenticationAttempt:date3];

          v122 = PO_LOG_POAgentAuthenticationProcess(v121);
          v123 = os_signpost_id_generate(v122);

          v125 = PO_LOG_POAgentAuthenticationProcess(v124);
          v126 = v125;
          if (v123 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v125))
          {
            *v216 = 0;
            _os_signpost_emit_with_name_impl(&dword_25E831000, v126, OS_SIGNPOST_INTERVAL_BEGIN, v123, "PlatformSSO_SmartCard", " enableTelemetry=YES ", v216, 2u);
          }

          userLoginConfiguration5 = [currentUserConfiguration userLoginConfiguration];
          v184 = [currentLoginConfiguration mergedConfigurationWithUserLoginConfiguration:userLoginConfiguration5];

          userLoginConfiguration6 = [currentUserConfiguration userLoginConfiguration];
          loginUserName3 = [userLoginConfiguration6 loginUserName];
          v130 = loginUserName3;
          if (loginUserName3)
          {
            userName5 = loginUserName3;
          }

          else
          {
            userName5 = [(POAgentAuthenticationProcess *)self userName];
          }

          v140 = userName5;

          authenticationProcess5 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v142 = [authenticationProcess5 createAuthenticationContextUsingLoginConfiguration:v184 deviceConfiguration:currentDeviceConfiguration userName:v140];

          jwksStorageProvider3 = [(POAgentAuthenticationProcess *)self jwksStorageProvider];
          [v142 setJwksStorageProvider:jwksStorageProvider3];

          configurationManager6 = [(POAgentAuthenticationProcess *)self configurationManager];
          currentRefreshToken3 = [configurationManager6 currentRefreshToken];
          [v142 setRefreshToken:currentRefreshToken3];

          [v142 setEmbeddedAssertionSigningKey:*buf];
          [v142 setEmbeddedAssertionCertificate:*v200];
          authenticationProcess6 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v194[0] = MEMORY[0x277D85DD0];
          v194[1] = 3221225472;
          v194[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_195;
          v194[3] = &unk_279A3A828;
          v198 = v123;
          v194[4] = self;
          v195 = contextCopy;
          v196 = idCopy;
          v197 = v189;
          v147 = v189;
          [authenticationProcess6 performSmartCardLoginUsingContext:v142 completion:v194];

          goto LABEL_47;
        }

        v148 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_189();
      }

      else
      {
        v139 = PO_LOG_POAgentAuthenticationProcess(v136);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
        {
          *v216 = 0;
          _os_log_impl(&dword_25E831000, v139, OS_LOG_TYPE_INFO, "Smartcard dialog cancelled", v216, 2u);
        }
      }

      goto LABEL_21;
    }

LABEL_60:
    registrationManager2 = [(POAgentAuthenticationProcess *)self registrationManager];
    v204 = 0;
    v205 = smartCardTokenId;
    v85 = [registrationManager2 requestSmartCardForBinding:1 window:0 tokenId:&v205 tokenHash:&v204 wrapTokenHash:0 pinContext:0];
    v191 = v205;

    v189 = v204;
    if (v85 == 1)
    {
      smartCardTokenId = v191;
      if (v191)
      {
        if (v189)
        {
          goto LABEL_63;
        }

        goto LABEL_54;
      }

      v203[0] = MEMORY[0x277D85DD0];
      v203[1] = 3221225472;
      v203[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_185;
      v203[3] = &unk_279A3A088;
      v203[4] = self;
      v110 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_185(v203);
      v191 = 0;
    }

    else
    {
      v93 = PO_LOG_POAgentAuthenticationProcess(v75);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v93, OS_LOG_TYPE_INFO, "Smartcard dialog cancelled", buf, 2u);
      }
    }

    goto LABEL_21;
  }

  v226[0] = MEMORY[0x277D85DD0];
  v226[1] = 3221225472;
  v226[2] = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke;
  v226[3] = &unk_279A3A088;
  v226[4] = self;
  v34 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke(v226);
  LOBYTE(v35) = 0;
LABEL_50:

  return v35 & 1;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for user for password login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_126(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for user for password login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_130(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for user for password login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_134(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No credential for user for password login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_138(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v20 = PO_LOG_POAgentAuthenticationProcess(v11);
        v13 = v20;
        v14 = *(a1 + 64);
        if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v20))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v15 = "Success";
        v16 = buf;
        goto LABEL_24;
      case 2:
        v17 = PO_LOG_POAgentAuthenticationProcess(v11);
        v13 = v17;
        v14 = *(a1 + 64);
        if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
        {
          goto LABEL_25;
        }

        v23 = 0;
        v15 = "PermanentFailure";
        v16 = &v23;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v12 = PO_LOG_POAgentAuthenticationProcess(v11);
        v13 = v12;
        v14 = *(a1 + 64);
        if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v12))
        {
          goto LABEL_25;
        }

        v24 = 0;
        v15 = "CredentialFailure";
        v16 = &v24;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PlatformSSO_PasswordAuth", v15, v16, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v18 = PO_LOG_POAgentAuthenticationProcess(v11);
      v13 = v18;
      v14 = *(a1 + 64);
      if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
      {
        goto LABEL_25;
      }

      LOWORD(v21) = 0;
      v15 = "Failed";
      v16 = &v21;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v19 = PO_LOG_POAgentAuthenticationProcess(v11);
      v13 = v19;
      v14 = *(a1 + 64);
      if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v19))
      {
        goto LABEL_25;
      }

      v22 = 0;
      v15 = "Unavailable";
      v16 = &v22;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:v7 tokens:v8 passwordContext:*(a1 + 40) tokenId:*(a1 + 48) tokenHash:{0, v21}];
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_159(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"Error evaluating context for User Secure Enclave Key authentication"];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_172(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) requestUserAuthenticationSyncPassword:0 completion:&__block_literal_global_175];
  }

  v2 = [*(a1 + 32) configurationManager];
  v3 = [v2 currentUserConfiguration];
  [v3 setState:5];

  v4 = [*(a1 + 32) configurationManager];
  LOBYTE(v3) = [v4 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((v3 & 1) == 0)
  {
    v5 = __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_3();
  }

  v8 = [*(a1 + 32) registrationManager];
  v6 = [*(a1 + 40) userLoginConfiguration];
  v7 = [v6 loginUserName];
  [v8 handleUserRegistrationForUser:v7 repair:1];
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_3()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after biometric failure."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_184(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v18 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v18;
        v12 = *(a1 + 56);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v13 = "Success";
        v14 = buf;
        goto LABEL_24;
      case 2:
        v15 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v15;
        v12 = *(a1 + 56);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
        {
          goto LABEL_25;
        }

        v21 = 0;
        v13 = "PermanentFailure";
        v14 = &v21;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v10 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v10;
        v12 = *(a1 + 56);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_25;
        }

        v22 = 0;
        v13 = "CredentialFailure";
        v14 = &v22;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_UserSEPKeyAuth", v13, v14, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v16 = PO_LOG_POAgentAuthenticationProcess(v8);
      v11 = v16;
      v12 = *(a1 + 56);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_25;
      }

      LOWORD(v19) = 0;
      v13 = "Failed";
      v14 = &v19;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v17 = PO_LOG_POAgentAuthenticationProcess(v8);
      v11 = v17;
      v12 = *(a1 + 56);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_25;
      }

      v20 = 0;
      v13 = "Unavailable";
      v14 = &v20;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:v7 tokens:v9 passwordContext:*(a1 + 40) tokenId:*(a1 + 48) tokenHash:{0, v19}];
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_185(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No SmartCard to use for SmartCard login."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_189()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Failed to retrieve certificate and key from SmartCard for SmartCard login."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__doLoginWithPasswordContext_tokenId___block_invoke_195(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        goto LABEL_15;
      case 1:
        v18 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v18;
        v12 = *(a1 + 64);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v13 = "Success";
        v14 = buf;
        goto LABEL_24;
      case 2:
        v15 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v15;
        v12 = *(a1 + 64);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v15))
        {
          goto LABEL_25;
        }

        v21 = 0;
        v13 = "PermanentFailure";
        v14 = &v21;
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        v10 = PO_LOG_POAgentAuthenticationProcess(v8);
        v11 = v10;
        v12 = *(a1 + 64);
        if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v10))
        {
          goto LABEL_25;
        }

        v22 = 0;
        v13 = "CredentialFailure";
        v14 = &v22;
LABEL_24:
        _os_signpost_emit_with_name_impl(&dword_25E831000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PlatformSSO_SmartCard", v13, v14, 2u);
LABEL_25:

        goto LABEL_26;
      }

LABEL_15:
      v16 = PO_LOG_POAgentAuthenticationProcess(v8);
      v11 = v16;
      v12 = *(a1 + 64);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
      {
        goto LABEL_25;
      }

      LOWORD(v19) = 0;
      v13 = "Failed";
      v14 = &v19;
      goto LABEL_24;
    }

    if (a2 == 5)
    {
      v17 = PO_LOG_POAgentAuthenticationProcess(v8);
      v11 = v17;
      v12 = *(a1 + 64);
      if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
      {
        goto LABEL_25;
      }

      v20 = 0;
      v13 = "Unavailable";
      v14 = &v20;
      goto LABEL_24;
    }

    if (a2 == 6)
    {
      goto LABEL_15;
    }
  }

LABEL_26:
  [*(a1 + 32) _handleLoginResult:a2 authenticationContext:v7 tokens:v9 passwordContext:*(a1 + 40) tokenId:*(a1 + 48) tokenHash:{*(a1 + 56), v19}];
}

- (void)_handleLoginResult:(unint64_t)result authenticationContext:(id)context tokens:(id)tokens passwordContext:(id)passwordContext tokenId:(id)id tokenHash:(id)hash
{
  v89 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tokensCopy = tokens;
  passwordContextCopy = passwordContext;
  idCopy = id;
  hashCopy = hash;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (PO_LOG_PODiagnostics_once_0 != -1)
  {
    [POAgentAuthenticationProcess _handleLoginResult:authenticationContext:tokens:passwordContext:tokenId:tokenHash:];
  }

  v20 = PO_LOG_PODiagnostics_log_0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277D3D1D0] stringForLoginResult:result];
    *buf = 138543362;
    v88 = v21;
    _os_log_impl(&dword_25E831000, v20, OS_LOG_TYPE_DEFAULT, "Login Result = %{public}@", buf, 0xCu);
  }

  v22 = MEMORY[0x277D3D1B8];
  v23 = [MEMORY[0x277D3D1D0] stringForLoginType:{objc_msgSend(contextCopy, "loginType")}];
  v24 = [MEMORY[0x277D3D1D0] stringForLoginResult:result];
  [v22 analyticsForLoginType:v23 result:v24];

  [(POAgentAuthenticationProcess *)selfCopy setLastAuthenticationAttempt:0];
  v25 = [(POAgentAuthenticationProcess *)selfCopy setEnableNetworkChanges:0];
  if (result > 2)
  {
    if (result > 4)
    {
      if (result == 5)
      {
        v31 = PO_LOG_POAgentAuthenticationProcess(v25);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v31, OS_LOG_TYPE_INFO, "Authentication failed because network is unavailable", buf, 2u);
        }

        [(POAgentAuthenticationProcess *)selfCopy setEnableNetworkChanges:1];
        configurationManager = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
        currentUserConfiguration = [configurationManager currentUserConfiguration];
        [currentUserConfiguration setState:1];

        configurationManager2 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
        LOBYTE(currentUserConfiguration) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:0];

        if ((currentUserConfiguration & 1) == 0)
        {
          v35 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_226();
        }

        result = 5;
        goto LABEL_52;
      }

      if (result != 6)
      {
LABEL_52:
        [(POAgentAuthenticationProcess *)selfCopy notifyKerberosDelegateTGTDidComplete];
        [(POAgentAuthenticationProcess *)selfCopy postAuthenticationNotification:result];
        goto LABEL_53;
      }
    }

    else if (result != 3)
    {
      v26 = PO_LOG_POAgentAuthenticationProcess(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v26, OS_LOG_TYPE_INFO, "Authentication failed with invalid credential", buf, 2u);
      }

      if ([contextCopy loginType] == 100)
      {
        [(POAgentAuthenticationProcess *)selfCopy _doLoginWithPasswordContext:passwordContextCopy tokenId:idCopy];
      }

      else if ([contextCopy loginType] == 2 || objc_msgSend(contextCopy, "loginType") == 3)
      {
        configurationManager3 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
        currentUserConfiguration2 = [configurationManager3 currentUserConfiguration];
        [currentUserConfiguration2 setState:5];

        configurationManager4 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
        LOBYTE(currentUserConfiguration2) = [configurationManager4 saveCurrentUserConfigurationAndSyncToPreboot:1];

        if ((currentUserConfiguration2 & 1) == 0)
        {
          v53 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_220();
          [(POAgentAuthenticationProcess *)selfCopy postAuthenticationNotification:4];
        }

        registrationManager = [(POAgentAuthenticationProcess *)selfCopy registrationManager];
        userName = [contextCopy userName];
        [registrationManager handleUserRegistrationForUser:userName repair:1 newPasswordUser:0 newSmartCardUser:0 notified:0 profile:0];
      }

      else
      {
        [(POAgentAuthenticationProcess *)selfCopy handleUserNeedsReauthenticationAfterDelay:1.0];
      }

      result = 4;
      goto LABEL_52;
    }

LABEL_20:
    v29 = PO_LOG_POAgentAuthenticationProcess(v25);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v29, OS_LOG_TYPE_INFO, "Authentication failed", buf, 2u);
    }

    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_232;
    v83[3] = &unk_279A3A088;
    v83[4] = selfCopy;
    v30 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_232(v83);
    if ([contextCopy loginType] == 100)
    {
      [(POAgentAuthenticationProcess *)selfCopy _doLoginWithPasswordContext:passwordContextCopy tokenId:idCopy];
    }

    goto LABEL_52;
  }

  if (!result)
  {
    goto LABEL_20;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v27 = PO_LOG_POAgentAuthenticationProcess(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v27, OS_LOG_TYPE_INFO, "Authentication failed and needs repair", buf, 2u);
      }

      registrationManager2 = [(POAgentAuthenticationProcess *)selfCopy registrationManager];
      [registrationManager2 handleDeviceAndUserRegistrationForRepair:1];

      result = 2;
    }

    goto LABEL_52;
  }

  configurationManager5 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
  v37 = NSUserName();
  date = [MEMORY[0x277CBEAA8] date];
  [configurationManager5 updateLoginStateForUserName:v37 state:0 loginDate:date loginType:{objc_msgSend(contextCopy, "loginType")}];

  configurationManager6 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
  currentUserConfiguration3 = [configurationManager6 currentUserConfiguration];
  [currentUserConfiguration3 setState:0];

  date2 = [MEMORY[0x277CBEAA8] date];
  configurationManager7 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
  currentUserConfiguration4 = [configurationManager7 currentUserConfiguration];
  [currentUserConfiguration4 setLastLoginDate:date2];

  configurationManager8 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
  deviceConfiguration = [contextCopy deviceConfiguration];
  extensionIdentifier = [deviceConfiguration extensionIdentifier];
  v84 = 0;
  v47 = [configurationManager8 setTokens:tokensCopy extensionIdentifier:extensionIdentifier returningError:&v84];
  v82 = v84;

  if (v47)
  {
    configurationManager9 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    v49 = NSUserName();
    if ([configurationManager9 isTemporaryAccountUserName:v49])
    {
    }

    else
    {
      configurationManager10 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
      v58 = NSUserName();
      v81 = [configurationManager10 saveStashedSSOTokens:tokensCopy forUserName:v58];

      if ((v81 & 1) == 0)
      {
        v59 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_202();
      }
    }

    userNotificationCenter = [(POAgentAuthenticationProcess *)selfCopy userNotificationCenter];
    v86 = @"com.apple.PlatformSSO.authentication";
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v61];

    userNotificationCenter2 = [(POAgentAuthenticationProcess *)selfCopy userNotificationCenter];
    v85 = @"com.apple.PlatformSSO.authentication";
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v63];

    [(POAgentAuthenticationProcess *)selfCopy setupTimerForAuthentication];
    loginConfiguration = [contextCopy loginConfiguration];
    configurationManager11 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    currentUserConfiguration5 = [configurationManager11 currentUserConfiguration];
    [(POAgentAuthenticationProcess *)selfCopy handleKerberosMappingForTokens:tokensCopy loginConfiguration:loginConfiguration userConfiguration:currentUserConfiguration5];

    if ([contextCopy loginType] == 3)
    {
      configurationManager12 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
      currentUserConfiguration6 = [configurationManager12 currentUserConfiguration];
      [currentUserConfiguration6 setSmartCardTokenId:idCopy];

      configurationManager13 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
      currentUserConfiguration7 = [configurationManager13 currentUserConfiguration];
      [currentUserConfiguration7 setSmartCardHash:hashCopy];
    }

    configurationManager14 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    v72 = [configurationManager14 saveCurrentUserConfigurationAndSyncToPreboot:1];

    if (v72)
    {
      result = 1;
    }

    else
    {
      v73 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_208();
      result = 3;
    }

    configurationManager15 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    v75 = NSUserName();
    v76 = [configurationManager15 savePendingSSOTokens:0 forUserName:v75];

    if ((v76 & 1) == 0)
    {
      v77 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_214();
    }

    v78 = NSUserName();
    configurationManager16 = [(POAgentAuthenticationProcess *)selfCopy configurationManager];
    [(POAgentAuthenticationProcess *)selfCopy handleUserAuthorizationUsing:contextCopy userName:v78 tokens:tokensCopy configurationManager:configurationManager16];

    [(POAgentAuthenticationProcess *)selfCopy handleChecksAfterSuccessfulLoginWithPasswordContext:passwordContextCopy];
    v80 = PO_LOG_POAgentAuthenticationProcess([(POAgentAuthenticationProcess *)selfCopy handleEncryptionKeyRotation]);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v80, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
    }

    goto LABEL_52;
  }

  v56 = __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke();
  [(POAgentAuthenticationProcess *)selfCopy postAuthenticationNotification:3];

LABEL_53:
  objc_sync_exit(selfCopy);
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save SSO tokens after authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_202()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to stash SSO tokens after successful authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_208()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_214()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to clear SSO tokens after successful authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_220()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after credential failure."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_226()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after authentication unavailable."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __114__POAgentAuthenticationProcess__handleLoginResult_authenticationContext_tokens_passwordContext_tokenId_tokenHash___block_invoke_232(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to authenticate user."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

- (void)handleEncryptionKeyRotation
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_242()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_248()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension has changed for key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_254()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found for key rotation."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = PO_LOG_POAgentAuthenticationProcess(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_1();
    }

    goto LABEL_7;
  }

  if (a2 == 10)
  {
    v2 = PO_LOG_POAgentAuthenticationProcess(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_2();
    }

LABEL_7:

    return;
  }

  v4 = [*(a1 + 32) configurationManager];
  v8 = [v4 currentDeviceConfiguration];

  [v8 setDeviceEncryptionKey:*(a1 + 48)];
  [v8 setEncryptionAlgorithm:*(a1 + 40)];
  v5 = [MEMORY[0x277CBEAA8] date];
  [v8 setLastEncryptionKeyChange:v5];

  v6 = [*(a1 + 32) configurationManager];
  LOBYTE(v5) = [v6 saveDeviceConfiguration:v8];

  if ((v5 & 1) == 0)
  {
    v7 = __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_261();
  }
}

id __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_261()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new device configuration during key rotation"];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleKeyUpdatesWithPasswordContext:(id)context
{
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleKeyUpdatesWithPasswordContext:];
  }
}

- (void)checkIfGroupNamesNeedUpdate
{
  registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
  [(POAgentAuthenticationProcess *)self checkIfGroupNamesNeedUpdateForRegistrationManager:registrationManager];
}

- (void)checkIfGroupNamesNeedUpdateForRegistrationManager:(id)manager
{
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess checkIfGroupNamesNeedUpdateForRegistrationManager:];
  }
}

- (void)handleChecksAfterSuccessfulLoginWithPasswordContext:(id)context
{
  [(POAgentAuthenticationProcess *)self handleKeyUpdatesWithPasswordContext:context];
  [(POAgentAuthenticationProcess *)self checkIfGroupNamesNeedUpdate];

  [(POAgentAuthenticationProcess *)self checkIfProfilePictureNeedsUpdate];
}

- (void)requestUserAuthenticationWithUserInfo:(id)info forceLogin:(BOOL)login
{
  loginCopy = login;
  infoCopy = info;
  v7 = PO_LOG_POAgentAuthenticationProcess(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserAuthenticationWithUserInfo:forceLogin:];
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  loginType = [currentUserConfiguration loginType];

  if (loginType == 1)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__POAgentAuthenticationProcess_requestUserAuthenticationWithUserInfo_forceLogin___block_invoke;
    v12[3] = &unk_279A3A910;
    v12[4] = self;
    v13 = infoCopy;
    [(POAgentAuthenticationProcess *)self requestUserAuthenticationSyncPassword:1 completion:v12];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CD4790]);
    [(POAgentAuthenticationProcess *)self performLoginForCurrentUserWithPasswordContext:v11 tokenId:0 forceLogin:loginCopy];
  }
}

void __81__POAgentAuthenticationProcess_requestUserAuthenticationWithUserInfo_forceLogin___block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 <= 6)
  {
    if (((1 << a2) & 0x59) != 0)
    {
      if (*(a1 + 40))
      {
        v3 = *(a1 + 32);

        [v3 handleUserNeedsReauthenticationAfterDelay:1.0];
      }
    }

    else if (a2 == 2)
    {
      v4 = [*(a1 + 32) registrationManager];
      [v4 handleDeviceAndUserRegistrationForRepair:1];
    }
  }
}

- (void)requestUserAuthenticationSyncPassword:(BOOL)password completion:(id)completion
{
  v4 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserAuthenticationSyncPassword:completion:];
  }
}

- (void)showAlertMessage:(id)message messageText:(id)text completion:(id)completion
{
  completionCopy = completion;
  v6 = PO_LOG_POAgentAuthenticationProcess(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess showAlertMessage:messageText:completion:];
  }

  completionCopy[2](completionCopy, 3);
}

- (unint64_t)handleKeyRequestSync
{
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleKeyRequestSync];
  }

  v4 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__POAgentAuthenticationProcess_handleKeyRequestSync__block_invoke;
  v8[3] = &unk_279A3A938;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(POAgentAuthenticationProcess *)self handleKeyRequestWithCompletion:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)handleKeyRequestWithCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_POAgentAuthenticationProcess(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[POAgentAuthenticationProcess handleKeyRequestWithCompletion:]";
    v42 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];

  if (currentDeviceConfiguration && ([currentDeviceConfiguration registrationCompleted] & 1) != 0)
  {
    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentLoginConfiguration = [configurationManager2 currentLoginConfiguration];

    if (currentLoginConfiguration)
    {
      configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
      currentUserConfiguration = [configurationManager3 currentUserConfiguration];

      if (currentUserConfiguration)
      {
        configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentRefreshToken = [configurationManager4 currentRefreshToken];

        if (currentRefreshToken)
        {
          v15 = PO_LOG_POAgentAuthenticationProcess(v14);
          v16 = os_signpost_id_generate(v15);

          v18 = PO_LOG_POAgentAuthenticationProcess(v17);
          v19 = v18;
          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25E831000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PlatformSSO_KeyRequest", " enableTelemetry=YES ", buf, 2u);
          }

          v34 = v16;

          userLoginConfiguration = [currentUserConfiguration userLoginConfiguration];
          v21 = [currentLoginConfiguration mergedConfigurationWithUserLoginConfiguration:userLoginConfiguration];

          userLoginConfiguration2 = [currentUserConfiguration userLoginConfiguration];
          loginUserName = [userLoginConfiguration2 loginUserName];
          v24 = loginUserName;
          if (loginUserName)
          {
            userName = loginUserName;
          }

          else
          {
            userName = [(POAgentAuthenticationProcess *)self userName];
          }

          v30 = userName;

          authenticationProcess = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v32 = [authenticationProcess createAuthenticationContextUsingLoginConfiguration:v21 deviceConfiguration:currentDeviceConfiguration userName:v30];

          [v32 setRefreshToken:currentRefreshToken];
          authenticationProcess2 = [(POAgentAuthenticationProcess *)self authenticationProcess];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_287;
          v35[3] = &unk_279A3A960;
          v37 = v34;
          v35[4] = self;
          v36 = completionCopy;
          [authenticationProcess2 performKeyRequestUsingContext:v32 completion:v35];
        }

        else
        {
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_283;
          v38[3] = &unk_279A3A088;
          v38[4] = self;
          v29 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_283(v38);
          (*(completionCopy + 2))(completionCopy, 3);
        }
      }

      else
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_279;
        v39[3] = &unk_279A3A088;
        v39[4] = self;
        v28 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_279(v39);
        (*(completionCopy + 2))(completionCopy, 3);
      }
    }

    else
    {
      v27 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_273();
      (*(completionCopy + 2))(completionCopy, 3);
    }
  }

  else
  {
    v26 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 3);
  }
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration or registration not complete during key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_273()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration during key request."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_279(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration during key request."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_283(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No refresh token for user during key request."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

void __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_287(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      if (a2 == 5)
      {
        v31 = PO_LOG_POAgentAuthenticationProcess(v14);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v31, OS_LOG_TYPE_INFO, "Key request failed because network is unavailable", buf, 2u);
        }

        v33 = PO_LOG_POAgentAuthenticationProcess(v32);
        v34 = v33;
        v35 = *(a1 + 48);
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E831000, v34, OS_SIGNPOST_INTERVAL_END, v35, "PlatformSSO_KeyRequest", "Unavailable", buf, 2u);
        }

        goto LABEL_22;
      }

      if (a2 != 6)
      {
LABEL_22:
        (*(*(a1 + 40) + 16))();
        goto LABEL_23;
      }
    }

LABEL_16:
    v25 = PO_LOG_POAgentAuthenticationProcess(v14);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v25, OS_LOG_TYPE_INFO, "Key request failed", buf, 2u);
    }

    v27 = PO_LOG_POAgentAuthenticationProcess(v26);
    v28 = v27;
    v29 = *(a1 + 48);
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25E831000, v28, OS_SIGNPOST_INTERVAL_END, v29, "PlatformSSO_KeyRequest", "Failed", buf, 2u);
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_301;
    v63[3] = &unk_279A3A088;
    v63[4] = *(a1 + 32);
    v30 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_301(v63);
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v16 = PO_LOG_POAgentAuthenticationProcess(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Authentication failed and needs repair", buf, 2u);
      }

      v18 = PO_LOG_POAgentAuthenticationProcess(v17);
      v19 = v18;
      v20 = *(a1 + 48);
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25E831000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PlatformSSO_KeyRequest", "PermanentFailure", buf, 2u);
      }

      v21 = [*(a1 + 32) configurationManager];
      v22 = [v21 currentUserConfiguration];
      [v22 setState:2];

      v23 = [*(a1 + 32) configurationManager];
      LOBYTE(v22) = [v23 saveCurrentUserConfigurationAndSyncToPreboot:1];

      if ((v22 & 1) == 0)
      {
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_297;
        v64[3] = &unk_279A3A088;
        v64[4] = *(a1 + 32);
        v24 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_297(v64);
      }
    }

    goto LABEL_22;
  }

  v36 = PO_LOG_POAgentAuthenticationProcess(v14);
  v37 = v36;
  v38 = *(a1 + 48);
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E831000, v37, OS_SIGNPOST_INTERVAL_END, v38, "PlatformSSO_KeyRequest", "Success", buf, 2u);
  }

  v39 = [MEMORY[0x277D3D230] certificateForData:v13];
  v40 = SecCertificateCopyKey(v39);
  *buf = 0;
  v41 = MEMORY[0x277D3D250];
  v42 = NSUserName();
  v68 = 0;
  v69 = 0;
  LOBYTE(v41) = [v41 createUnlockKeyWithPublicKey:v40 userName:v42 returningCertificate:buf hash:&v69 encryptedData:&v68];
  v62 = v69;
  v60 = v68;

  if (v41)
  {
    if (v40)
    {
      CFRelease(v40);
    }

    v43 = [*(a1 + 32) configurationManager];
    v44 = [v43 currentUserConfiguration];
    [v44 setUserDecryptionKeyHash:v62];

    v45 = *buf;
    v46 = [*(a1 + 32) configurationManager];
    v47 = [v46 currentUserConfiguration];
    [v47 setUserDecryptionCertificate:v45];

    v48 = [*(a1 + 32) configurationManager];
    v49 = [v48 currentUserConfiguration];
    [v49 setUserDecryptionContext:v15];

    v50 = [*(a1 + 32) configurationManager];
    v51 = [v50 currentUserConfiguration];
    [v51 setUserUnlockData:v61];

    v52 = [*(a1 + 32) configurationManager];
    v53 = [v52 currentUserConfiguration];
    [v53 setUserUnlockHash:v12];

    v54 = [*(a1 + 32) configurationManager];
    v55 = [v54 currentUserConfiguration];
    [v55 setUserUnlockCertificate:v39];

    v56 = [*(a1 + 32) configurationManager];
    LOBYTE(v55) = [v56 saveCurrentUserConfigurationAndSyncToPreboot:1];

    if ((v55 & 1) == 0)
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_293;
      v66[3] = &unk_279A3A088;
      v66[4] = *(a1 + 32);
      v57 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_293(v66);
    }

    v58 = PO_LOG_POAgentAuthenticationProcess(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *v65 = 0;
      _os_log_impl(&dword_25E831000, v58, OS_LOG_TYPE_INFO, "Key request completed successfully", v65, 2u);
    }

    goto LABEL_22;
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_289;
  v67[3] = &unk_279A3A088;
  v67[4] = *(a1 + 32);
  v59 = __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_289(v67);
  (*(*(a1 + 40) + 16))();

LABEL_23:
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_289(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to create unlock key."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_293(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful key request."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_297(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after failed key request."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

id __63__POAgentAuthenticationProcess_handleKeyRequestWithCompletion___block_invoke_301(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed key request."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v1;
}

- (unint64_t)handleTokenBindingWithPasswordContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[POAgentAuthenticationProcess handleTokenBindingWithPasswordContext:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  return 1;
}

- (void)postAuthenticationNotification:(unint64_t)notification
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess postAuthenticationNotification:];
  }

  notificationCenter = [(POAgentAuthenticationProcess *)self notificationCenter];
  v10 = @"authenticationResult";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:notification];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [notificationCenter postNotificationName:@"com.apple.PlatformSSO.authenticationCompleted" object:0 userInfo:v8];

  distributedNotificationCenter = [(POAgentAuthenticationProcess *)self distributedNotificationCenter];
  [distributedNotificationCenter postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)checkIfPlatformSSOIsActive
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)configurationChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = PO_LOG_POAgentAuthenticationProcess(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[POAgentAuthenticationProcess configurationChanged:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v11, 0x16u);
  }

  userInfo = [changedCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"reason"];
  integerValue = [v7 integerValue];
  v9 = PO_LOG_POAgentAuthenticationProcess(integerValue);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (integerValue == 2)
  {
    if (v10)
    {
      [POAgentAuthenticationProcess configurationChanged:];
    }
  }

  else
  {
    if (v10)
    {
      [POAgentAuthenticationProcess configurationChanged:];
    }

    [(POAgentAuthenticationProcess *)self configurationChanged];
  }
}

- (void)configurationChanged
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[POAgentAuthenticationProcess configurationChanged]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__POAgentAuthenticationProcess_configurationChanged__block_invoke;
  block[3] = &unk_279A3A060;
  block[4] = self;
  dispatch_async(v4, block);
}

void __52__POAgentAuthenticationProcess_configurationChanged__block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __52__POAgentAuthenticationProcess_configurationChanged__block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "configurationChanged", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __52__POAgentAuthenticationProcess_configurationChanged__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) keyBag];
  v3 = [v2 isUserKeybagUnlocked];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 handleConfigurationChanged:0];
  }

  else
  {

    return [v4 setShouldRunConfigurationChangeWhenUnlocked:1];
  }
}

- (void)handleConfigurationChanged:(BOOL)changed
{
  configurationQueue = [(POAgentAuthenticationProcess *)self configurationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__POAgentAuthenticationProcess_handleConfigurationChanged___block_invoke;
  v6[3] = &unk_279A3A988;
  v6[4] = self;
  changedCopy = changed;
  dispatch_async(configurationQueue, v6);
}

- (void)handleConfigurationChanged:(BOOL)changed startup:(BOOL)startup
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v43 = "[POAgentAuthenticationProcess handleConfigurationChanged:startup:]";
    v44 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v8 = PO_LOG_POAgentAuthenticationProcess(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_INFO, "Configuration changed", buf, 2u);
  }

  [(POAgentAuthenticationProcess *)self setShouldRunConfigurationChangeWhenUnlocked:0];
  platformSSOActiveLock = [(POAgentAuthenticationProcess *)self platformSSOActiveLock];
  objc_sync_enter(platformSSOActiveLock);
  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];

  if (!currentDeviceConfiguration)
  {
    v13 = PO_LOG_POAgentAuthenticationProcess(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleConfigurationChanged:startup:];
    }
  }

  configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager2 currentUserConfiguration];

  if (!currentUserConfiguration)
  {
    v17 = PO_LOG_POAgentAuthenticationProcess(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [POAgentAuthenticationProcess handleConfigurationChanged:startup:];
    }
  }

  configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentLoginConfiguration = [configurationManager3 currentLoginConfiguration];

  if (currentLoginConfiguration)
  {
    goto LABEL_17;
  }

  v21 = PO_LOG_POAgentAuthenticationProcess(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleConfigurationChanged:startup:];
  }

  if (currentDeviceConfiguration != 0 || currentUserConfiguration != 0)
  {
LABEL_17:
    [(POAgentAuthenticationProcess *)self setPlatformSSOActive:1];
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];
  if (extensionIdentifier || (-[POAgentAuthenticationProcess registrationManager](self, "registrationManager"), v24 = objc_claimAutoreleasedReturnValue(), [v24 registrationContext], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "extensionIdentifier"), extensionIdentifier = objc_claimAutoreleasedReturnValue(), v25, v24, extensionIdentifier))
  {
    configurationHost = [(POAgentAuthenticationProcess *)self configurationHost];
    v27 = [configurationHost hasAnyMDMProfileForExtension:extensionIdentifier];

    if (((v22 | v27) & 1) == 0)
    {
      v29 = PO_LOG_POAgentAuthenticationProcess(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v29, OS_LOG_TYPE_INFO, "Removing registration", buf, 2u);
      }

      registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
      [registrationManager handleRemovingRegistrationForExtension:extensionIdentifier alreadyDeleted:0];

      currentLoginConfiguration = 0;
      currentUserConfiguration = 0;
      currentDeviceConfiguration = 0;
    }
  }

  objc_sync_exit(platformSSOActiveLock);
  v31 = [POProfile alloc];
  configurationHost2 = [(POAgentAuthenticationProcess *)self configurationHost];
  platformSSOProfile = [configurationHost2 platformSSOProfile];
  v34 = [(POProfile *)v31 initWithProfile:platformSSOProfile];

  if (v34)
  {
    configurationHost3 = [(POAgentAuthenticationProcess *)self configurationHost];
    extensionBundleIdentifier = [(POProfile *)v34 extensionBundleIdentifier];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_315;
    v39[3] = &unk_279A3A9D8;
    v39[4] = self;
    changedCopy = changed;
    startupCopy = startup;
    [configurationHost3 isConfigurationActiveForExtensionIdentifier:extensionBundleIdentifier runningAsAgent:1 completion:v39];
  }

  else
  {
    v37 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke();
  }
}

id __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No validated Platform SSO Profiles in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_315(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ([v5 code] == -14)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_2;
    v17[3] = &unk_279A3A088;
    v18 = v5;
    v6 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_2(v17);
    v7 = v18;
LABEL_5:

    goto LABEL_13;
  }

  v8 = [v5 code];
  if (v8 == -13)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_319;
    v15[3] = &unk_279A3A088;
    v16 = v5;
    v9 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_319(v15);
    v7 = v16;
    goto LABEL_5;
  }

  v10 = PO_LOG_POAgentAuthenticationProcess(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_INFO, "SSO is ready for configuration", buf, 2u);
    }

    v10 = [*(a1 + 32) configurationQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_323;
    v12[3] = &unk_279A3A9B0;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 40);
    dispatch_async(v10, v12);
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_INFO, "SSO is not ready for configuration", buf, 2u);
  }

LABEL_13:
}

id __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"SSO Extension missing in configuration changed."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke_319(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"Not configured for Platform SSO in configuration changed."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)_handleConfigurationChanged:(BOOL)changed startup:(BOOL)startup
{
  startupCopy = startup;
  v7 = [POProfile alloc];
  configurationHost = [(POAgentAuthenticationProcess *)self configurationHost];
  validatedProfileForPlatformSSO = [configurationHost validatedProfileForPlatformSSO];
  v10 = [(POProfile *)v7 initWithProfile:validatedProfileForPlatformSSO];

  if (v10)
  {
    registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
    extensionBundleIdentifier = [(POProfile *)v10 extensionBundleIdentifier];
    v13 = [registrationManager loadSSOExtensionWithExtensionBundleIdentifier:extensionBundleIdentifier];

    if (!v13)
    {
      v18 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_327();
      goto LABEL_9;
    }

    if (([v13 canPerformRegistration] & 1) == 0)
    {
      v19 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_333();
      goto LABEL_9;
    }

    registrationManager2 = [(POAgentAuthenticationProcess *)self registrationManager];
    v15 = [registrationManager2 ssoMethodToUse:v13 profile:v10];

    if (v15 == 1000)
    {
      v16 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_339();
LABEL_9:

      goto LABEL_10;
    }

    if (![(POProfile *)v10 useSharedDeviceKeys]&& ([(POProfile *)v10 createUsersEnabled]|| [(POProfile *)v10 authorizationEnabled]))
    {
      v26 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_345();
      goto LABEL_9;
    }

    platformSSOActiveLock = [(POAgentAuthenticationProcess *)self platformSSOActiveLock];
    objc_sync_enter(platformSSOActiveLock);
    [(POAgentAuthenticationProcess *)self setPlatformSSOActive:1];
    objc_sync_exit(platformSSOActiveLock);

    configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
    v22 = NSUserName();
    v23 = [configurationManager isTemporaryAccountUserName:v22];

    if (v23)
    {
      v25 = PO_LOG_POAgentAuthenticationProcess(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v25, OS_LOG_TYPE_INFO, "Not running registration for the temporary user.", buf, 2u);
      }

      goto LABEL_9;
    }

    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];

    configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentUserConfiguration = [configurationManager3 currentUserConfiguration];

    configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentLoginConfiguration = [configurationManager4 currentLoginConfiguration];

    if (currentDeviceConfiguration)
    {
      v32 = [POAlgorithmUtil deviceSigningAlgorithmToUse:v13 deviceConfiguration:currentDeviceConfiguration];
      signingAlgorithm = [currentDeviceConfiguration signingAlgorithm];
      v77 = v32;
      LOBYTE(v32) = [v32 isEqualToNumber:signingAlgorithm];

      if ((v32 & 1) == 0)
      {
        [currentDeviceConfiguration setPendingSigningAlgorithm:v77];
      }

      v34 = [POAlgorithmUtil deviceEncryptionAlgorithmToUse:v13 deviceConfiguration:currentDeviceConfiguration];
      encryptionAlgorithm = [currentDeviceConfiguration encryptionAlgorithm];
      v36 = [v34 isEqualToNumber:encryptionAlgorithm];

      if ((v36 & 1) == 0)
      {
        [currentDeviceConfiguration setPendingEncryptionAlgorithm:v34];
      }

      [currentDeviceConfiguration updateWithProfile:v10];
      sdkVersionString = [v13 sdkVersionString];
      [currentDeviceConfiguration setSdkVersionString:sdkVersionString];

      [currentDeviceConfiguration setProtocolVersion:{objc_msgSend(v13, "protocolVersion")}];
      [currentDeviceConfiguration setLoginType:v15];
      fileVaultPolicy = [currentDeviceConfiguration fileVaultPolicy];
      if (fileVaultPolicy != -[POProfile fileVaultPolicy](v10, "fileVaultPolicy") && (-[POProfile fileVaultPolicy](v10, "fileVaultPolicy") & 8) != 0 || (v39 = [currentDeviceConfiguration loginPolicy], v39 != -[POProfile loginPolicy](v10, "loginPolicy")) && (-[POProfile loginPolicy](v10, "loginPolicy") & 8) != 0 || (v40 = objc_msgSend(currentDeviceConfiguration, "unlockPolicy"), v40 != -[POProfile unlockPolicy](v10, "unlockPolicy")) && (-[POProfile unlockPolicy](v10, "unlockPolicy") & 8) != 0)
      {
        date = [MEMORY[0x277CBEAA8] date];
        [currentDeviceConfiguration setAuthGracePeriodStart:date];
      }

      configurationManager5 = [(POAgentAuthenticationProcess *)self configurationManager];
      v43 = [configurationManager5 saveDeviceConfigurationSyncAllConfigToPreboot:currentDeviceConfiguration];

      if ((v43 & 1) == 0)
      {
        v44 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_352();
      }
    }

    v82 = currentDeviceConfiguration;
    v45 = currentUserConfiguration;
    if (currentUserConfiguration)
    {
      if ([currentUserConfiguration loginType] == 2)
      {
        configurationManager6 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentUserConfiguration2 = [configurationManager6 currentUserConfiguration];
        v78 = [POAlgorithmUtil userSigningAlgorithmToUse:v13 userConfiguration:currentUserConfiguration2];

        configurationManager7 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentUserConfiguration3 = [configurationManager7 currentUserConfiguration];
        signingAlgorithm2 = [currentUserConfiguration3 signingAlgorithm];
        v51 = [v78 isEqualToNumber:signingAlgorithm2];

        if ((v51 & 1) == 0)
        {
          configurationManager8 = [(POAgentAuthenticationProcess *)self configurationManager];
          currentUserConfiguration4 = [configurationManager8 currentUserConfiguration];
          [currentUserConfiguration4 setPendingSigningAlgorithm:v78];

          configurationManager9 = [(POAgentAuthenticationProcess *)self configurationManager];
          LOBYTE(currentUserConfiguration4) = [configurationManager9 saveCurrentUserConfigurationAndSyncToPreboot:1];

          if ((currentUserConfiguration4 & 1) == 0)
          {
            v70 = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_358();

            v64 = currentLoginConfiguration;
            v45 = currentUserConfiguration;
            goto LABEL_74;
          }
        }

        v45 = currentUserConfiguration;
      }

      v55 = [v45 state] == 4 && v15 == 1;
      v56 = v55;
      state = [v45 state];
      state2 = [v45 state];
      v59 = state2 == 7 && v15 == 2;
      v60 = state == 6 && v15 == 3;
      v61 = v60;
      if (v60)
      {
        v62 = 1;
      }

      else
      {
        v62 = v56;
      }
    }

    else
    {
      v61 = 0;
      v62 = 0;
      LOBYTE(v56) = 0;
      v59 = 0;
    }

    if (startupCopy && ((v62 | v59) & 1) != 0)
    {
      v63 = PO_LOG_POAgentAuthenticationProcess(state2);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v63, OS_LOG_TYPE_INFO, "Delaying registration checks for new users during startup.", buf, 2u);
      }

      v64 = currentLoginConfiguration;
      goto LABEL_74;
    }

    v64 = currentLoginConfiguration;
    if (!v82 || !currentLoginConfiguration || ![v82 registrationCompleted])
    {
      goto LABEL_72;
    }

    v76 = v61;
    extensionIdentifier = [v82 extensionIdentifier];
    extensionBundleIdentifier2 = [(POProfile *)v10 extensionBundleIdentifier];
    v79 = extensionIdentifier;
    if (![extensionIdentifier isEqualToString:extensionBundleIdentifier2] || (v67 = -[POProfile useSharedDeviceKeys](v10, "useSharedDeviceKeys"), v67 != objc_msgSend(v82, "sharedDeviceKeys")))
    {

      v64 = currentLoginConfiguration;
      v45 = currentUserConfiguration;
      v61 = v76;
LABEL_72:
      registrationManager3 = [(POAgentAuthenticationProcess *)self registrationManager];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_364;
      v89[3] = &unk_279A3AA00;
      v89[4] = self;
      v91 = v56;
      v92 = v61;
      changedCopy = changed;
      v90 = v10;
      [registrationManager3 resetRegistrationWithCompletion:v89];

      v69 = v90;
LABEL_73:

LABEL_74:
      goto LABEL_9;
    }

    if ([v82 sharedDeviceKeys])
    {

      v64 = currentLoginConfiguration;
      v45 = currentUserConfiguration;
      v61 = v76;
    }

    else
    {
      v45 = currentUserConfiguration;
      state3 = [currentUserConfiguration state];

      v55 = state3 == 2;
      v64 = currentLoginConfiguration;
      v61 = v76;
      if (v55)
      {
        goto LABEL_72;
      }
    }

    if (v45 && [v45 loginType] == v15)
    {
      if ([v82 sharedDeviceKeys])
      {
        configurationManager10 = [(POAgentAuthenticationProcess *)self configurationManager];
        userDeviceConfiguration = [configurationManager10 userDeviceConfiguration];
        if (userDeviceConfiguration || [currentUserConfiguration state] == 2)
        {

          v45 = currentUserConfiguration;
        }

        else
        {
          v74 = ([currentUserConfiguration state] == 5) | v62;

          v45 = currentUserConfiguration;
          if ((v74 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else if ([v45 state] != 2 && !((objc_msgSend(v45, "state") == 5) | v62 & 1))
      {
        goto LABEL_74;
      }
    }

    registrationManager4 = [(POAgentAuthenticationProcess *)self registrationManager];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_3;
    v83[3] = &unk_279A3AA28;
    v83[4] = self;
    v84 = v45;
    v86 = v56;
    v87 = v61;
    changedCopy2 = changed;
    v85 = v10;
    [registrationManager4 resetRegistrationWithCompletion:v83];

    v69 = v84;
    goto LABEL_73;
  }

  v17 = __67__POAgentAuthenticationProcess_handleConfigurationChanged_startup___block_invoke();
LABEL_10:
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_327()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_333()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension does not implement registration protocol in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_339()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No supported authentication methods in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_345()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Shared device keys required for creating or authorizing users in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_352()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed save device configuration with profile changes in configuration changed."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_358()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new user configuration during user registration."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_364(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_2;
  block[3] = &unk_279A3AA00;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v5 = v3;
  dispatch_async(v2, block);
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationManager];
  [v2 handleDeviceAndUserRegistrationForRepair:0 newPasswordUser:*(a1 + 48) newSmartCardUser:*(a1 + 49) notified:*(a1 + 50) profile:*(a1 + 40)];
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_4;
  v4[3] = &unk_279A3AA28;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v6 = *(a1 + 48);
  dispatch_async(v2, v4);
}

void __68__POAgentAuthenticationProcess__handleConfigurationChanged_startup___block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) registrationManager];
  v2 = [*(a1 + 40) userLoginConfiguration];
  v3 = [v2 loginUserName];
  [v4 handleUserRegistrationForUser:v3 repair:0 newPasswordUser:*(a1 + 56) newSmartCardUser:*(a1 + 57) notified:*(a1 + 58) profile:*(a1 + 48)];
}

- (BOOL)handleUserNeedsReauthenticationAfterDelay:(double)delay
{
  v60[1] = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handleUserNeedsReauthenticationAfterDelay:];
  }

  registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
  registrationContext = [registrationManager registrationContext];
  if (!registrationContext)
  {

LABEL_7:
    v14 = NSUserName();
    if ([(POAgentAuthenticationProcess *)self platformSSOAccount])
    {
      configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
      currentUserConfiguration = [configurationManager currentUserConfiguration];

      if (currentUserConfiguration)
      {
        configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentUserConfiguration2 = [configurationManager2 currentUserConfiguration];
        [currentUserConfiguration2 setState:1];

        configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
        LOBYTE(currentUserConfiguration2) = [configurationManager3 saveCurrentUserConfigurationAndSyncToPreboot:0];

        if (currentUserConfiguration2)
        {
          configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
          currentUserConfiguration3 = [configurationManager4 currentUserConfiguration];
          loginType = [currentUserConfiguration3 loginType];

          if (loginType == 1)
          {
            configurationManager5 = [(POAgentAuthenticationProcess *)self configurationManager];
            currentLoginConfiguration = [configurationManager5 currentLoginConfiguration];

            v13 = currentLoginConfiguration != 0;
            if (currentLoginConfiguration)
            {
              configurationManager6 = [(POAgentAuthenticationProcess *)self configurationManager];
              currentDeviceConfiguration = [configurationManager6 currentDeviceConfiguration];
              accountDisplayName = [currentDeviceConfiguration accountDisplayName];
              accountDisplayName2 = accountDisplayName;
              if (!accountDisplayName)
              {
                accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
              }

              v51 = currentLoginConfiguration;
              configurationManager7 = [(POAgentAuthenticationProcess *)self configurationManager];
              currentDeviceConfiguration2 = [configurationManager7 currentDeviceConfiguration];
              extensionIdentifier = [currentDeviceConfiguration2 extensionIdentifier];
              v50 = [(POAgentAuthenticationProcess *)self createSignInNotificationWithAccountName:accountDisplayName2 extensionIdentifier:extensionIdentifier];

              if (!accountDisplayName)
              {
              }

              userNotificationCenter = [(POAgentAuthenticationProcess *)self userNotificationCenter];
              v60[0] = @"com.apple.PlatformSSO.authentication";
              v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
              [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v34];

              userNotificationCenter2 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
              v59 = @"com.apple.PlatformSSO.authentication";
              v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
              [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v36];

              v37 = MEMORY[0x277CE1FC0];
              v38 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:delay];
              v39 = [v37 requestWithIdentifier:@"com.apple.PlatformSSO.authentication" content:v50 trigger:v38 destinations:5];

              v41 = PO_LOG_POAgentAuthenticationProcess(v40);
              v42 = v50;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_25E831000, v41, OS_LOG_TYPE_INFO, "Sending login notification", buf, 2u);
              }

              userNotificationCenter3 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
              v52[0] = MEMORY[0x277D85DD0];
              v52[1] = 3221225472;
              v52[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_392;
              v52[3] = &unk_279A3AA78;
              v53 = v14;
              [userNotificationCenter3 addNotificationRequest:v39 withCompletionHandler:v52];

              currentLoginConfiguration = v51;
            }

            else
            {
              v54[0] = MEMORY[0x277D85DD0];
              v54[1] = 3221225472;
              v54[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_386;
              v54[3] = &unk_279A3A088;
              v55 = v14;
              v49 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_386(v54);
              v42 = v55;
            }
          }

          else
          {
            v48 = PO_LOG_POAgentAuthenticationProcess(v23);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25E831000, v48, OS_LOG_TYPE_INFO, "Not a password user", buf, 2u);
            }

            [(POAgentAuthenticationProcess *)self performLoginForCurrentUserWithPasswordContext:0];
            v13 = 1;
          }

          goto LABEL_23;
        }

        v46 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_380();
      }

      else
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376;
        v57[3] = &unk_279A3A088;
        v58 = v14;
        v45 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376(v57);
      }
    }

    else
    {
      v44 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_370();
    }

    v13 = 0;
LABEL_23:

    return v13;
  }

  v8 = registrationContext;
  registrationManager2 = [(POAgentAuthenticationProcess *)self registrationManager];
  registrationContext2 = [registrationManager2 registrationContext];
  state = [registrationContext2 state];

  if (state == 1)
  {
    goto LABEL_7;
  }

  v12 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke();
  return 0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No user authentication during registration."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_370()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Not a PlatformSSO account during authentication notification."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No user configuration for user for authentication notification."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1();
  }

  return v1;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_380()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration before authentication notification."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_386(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No login configuration for user for authentication notification."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1();
  }

  return v1;
}

void __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_392(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2;
    v6[3] = &unk_279A3AA50;
    v7 = v3;
    v8 = *(a1 + 32);
    v5 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2(v6);
  }
}

id __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error sending authentication notification."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_2_cold_1();
  }

  return v1;
}

- (unint64_t)requestUserPasswordChangePreference
{
  v2 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserPasswordChangePreference];
  }

  return 0;
}

- (void)sendPasswordChangedNotification
{
  v23[1] = *MEMORY[0x277D85DE8];
  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentLoginConfiguration = [configurationManager currentLoginConfiguration];

  configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
  accountDisplayName = [currentDeviceConfiguration accountDisplayName];
  accountDisplayName2 = accountDisplayName;
  if (!accountDisplayName)
  {
    accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
  }

  configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration2 = [configurationManager3 currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration2 extensionIdentifier];
  v12 = [(POAgentAuthenticationProcess *)self createPasswordChangedNotificationWithAccountName:accountDisplayName2 extensionIdentifier:extensionIdentifier];

  if (!accountDisplayName)
  {
  }

  userNotificationCenter = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  v23[0] = @"com.apple.PlatformSSO.passwordchanged";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [userNotificationCenter removePendingNotificationRequestsWithIdentifiers:v14];

  userNotificationCenter2 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  v22 = @"com.apple.PlatformSSO.passwordchanged";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [userNotificationCenter2 removeDeliveredNotificationsWithIdentifiers:v16];

  v17 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:1.0];
  v18 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.PlatformSSO.passwordchanged" content:v12 trigger:v17 destinations:5];
  v19 = PO_LOG_POAgentAuthenticationProcess(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&dword_25E831000, v19, OS_LOG_TYPE_INFO, "Sending password changed notification", v21, 2u);
  }

  userNotificationCenter3 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  [userNotificationCenter3 addNotificationRequest:v18 withCompletionHandler:&__block_literal_global_398];
}

void __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke_2;
    v5[3] = &unk_279A3A088;
    v6 = v2;
    v4 = __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke_2(v5);
  }
}

id __63__POAgentAuthenticationProcess_sendPasswordChangedNotification__block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error sending local notification for password changed."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)handleKerberosMappingForTokens:(id)tokens extensionIdentifier:(id)identifier userConfiguration:(id)configuration
{
  tokensCopy = tokens;
  configurationCopy = configuration;
  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentLoginConfiguration = [configurationManager currentLoginConfiguration];

  if (currentLoginConfiguration)
  {
    [(POAgentAuthenticationProcess *)self handleKerberosMappingForTokens:tokensCopy loginConfiguration:currentLoginConfiguration userConfiguration:configurationCopy];
  }

  else
  {
    v10 = __101__POAgentAuthenticationProcess_handleKerberosMappingForTokens_extensionIdentifier_userConfiguration___block_invoke();
  }
}

id __101__POAgentAuthenticationProcess_handleKerberosMappingForTokens_extensionIdentifier_userConfiguration___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No login configuration when handling kerberos mapping."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)exchangeTGTForStatus:(id)status
{
  v31 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  kerberosDelegate = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  realm = [statusCopy realm];
  v7 = [kerberosDelegate isRealmConfiguredForKerberosExtension:realm];

  kerberosDelegate2 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  realm2 = [statusCopy realm];
  [kerberosDelegate2 triggerVPNForRealm:realm2];

  if (v7)
  {
    kerberosDelegate3 = [(POAgentAuthenticationProcess *)self kerberosDelegate];
    realm3 = [statusCopy realm];
    v13 = [kerberosDelegate3 isNetworkConnectedForRealm:realm3];
  }

  else
  {
    v13 = 1;
  }

  v14 = PO_LOG_POAgentAuthenticationProcess(v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    v23 = 136315906;
    v24 = "[POAgentAuthenticationProcess exchangeTGTForStatus:]";
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = v16;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v14, OS_LOG_TYPE_DEFAULT, "%s kerberos extension = %{public}@, isNetworkConnected = %{public}@ on %@", &v23, 0x2Au);
  }

  if (v13)
  {
    v18 = PO_LOG_POAgentAuthenticationProcess(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      realm4 = [statusCopy realm];
      v23 = 138543362;
      v24 = realm4;
      _os_log_impl(&dword_25E831000, v18, OS_LOG_TYPE_INFO, "Exchanging TGT for realm: %{public}@", &v23, 0xCu);
    }

    kerberosHelper = [(POAgentAuthenticationProcess *)self kerberosHelper];
    [kerberosHelper exchangeKerberosTGTForEntry:statusCopy];
  }

  v21 = PO_LOG_POAgentAuthenticationProcess(v17);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    realm5 = [statusCopy realm];
    v23 = 138543362;
    v24 = realm5;
    _os_log_impl(&dword_25E831000, v21, OS_LOG_TYPE_INFO, "Successfully imported Kerberos ticket for realm: %{public}@", &v23, 0xCu);
  }
}

- (void)handleKerberosMappingForTokens:(id)tokens loginConfiguration:(id)configuration userConfiguration:(id)userConfiguration
{
  v96 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  configurationCopy = configuration;
  userConfigurationCopy = userConfiguration;
  v10 = PO_LOG_POAgentAuthenticationProcess(userConfigurationCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v93 = "[POAgentAuthenticationProcess handleKerberosMappingForTokens:loginConfiguration:userConfiguration:]";
    v94 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v11 = 0x277CCA000uLL;
  v90 = 0;
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokensCopy options:16 error:&v90];
  v13 = v90;
  if (v13)
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke;
    v88[3] = &unk_279A3A088;
    v14 = v13;
    v89 = v14;
    v15 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke(v88);
    v16 = v89;
  }

  else
  {
    v66 = userConfigurationCopy;
    v68 = tokensCopy;
    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v67 = configurationCopy;
    obj = [configurationCopy kerberosTicketMappings];
    v17 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v17)
    {
      v18 = v17;
      v74 = 0;
      v75 = *v85;
      v70 = v12;
      do
      {
        v19 = 0;
        v72 = v18;
        do
        {
          if (*v85 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v84 + 1) + 8 * v19);
          v21 = PO_LOG_POAgentAuthenticationProcess(v17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            ticketKeyPath = [v20 ticketKeyPath];
            *buf = 138543362;
            v93 = ticketKeyPath;
            _os_log_impl(&dword_25E831000, v21, OS_LOG_TYPE_INFO, "Mapping Kerberos TGT for %{public}@", buf, 0xCu);
          }

          ticketKeyPath2 = [v20 ticketKeyPath];
          v24 = [v12 valueForKeyPath:ticketKeyPath2];

          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = *(v11 + 2720);
              v27 = [v24 dataUsingEncoding:4];
              v81 = v74;
              v28 = [v26 JSONObjectWithData:v27 options:16 error:&v81];
              v29 = v81;

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v28;

                v24 = v30;
              }

              v18 = v72;

              v74 = v29;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v24;
              v31 = objc_alloc_init(POKerberosEntry);
              ticketKeyPath3 = [v20 ticketKeyPath];
              [(POKerberosEntry *)v31 setTicketKeyPath:ticketKeyPath3];

              messageBufferKeyName = [v20 messageBufferKeyName];
              v34 = [v24 objectForKeyedSubscript:messageBufferKeyName];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v34 options:0];
                [(POKerberosEntry *)v31 setMessageBuffer:v35];
              }

              realmKeyName = [v20 realmKeyName];
              v37 = [v24 objectForKeyedSubscript:realmKeyName];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(POKerberosEntry *)v31 setRealm:v37];
              }

              serviceNameKeyName = [v20 serviceNameKeyName];
              v39 = [v24 objectForKeyedSubscript:serviceNameKeyName];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(POKerberosEntry *)v31 setServiceName:v39];
              }

              clientNameKeyName = [v20 clientNameKeyName];
              v41 = [v24 objectForKeyedSubscript:clientNameKeyName];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(POKerberosEntry *)v31 setClientName:v41];
              }

              encryptionKeyTypeKeyName = [v20 encryptionKeyTypeKeyName];
              v43 = [v24 objectForKeyedSubscript:encryptionKeyTypeKeyName];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                -[POKerberosEntry setEncryptionKeyType:](v31, "setEncryptionKeyType:", [v43 intValue]);
              }

              sessionKeyKeyName = [v20 sessionKeyKeyName];
              v45 = [v24 objectForKeyedSubscript:sessionKeyKeyName];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v45 options:0];
                [(POKerberosEntry *)v31 setSessionKey:v46];
              }

              hasAllRequiredValues = [(POKerberosEntry *)v31 hasAllRequiredValues];
              if (hasAllRequiredValues)
              {
                v48 = PO_LOG_POAgentAuthenticationProcess(hasAllRequiredValues);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                {
                  realm = [(POKerberosEntry *)v31 realm];
                  *buf = 138543362;
                  v93 = realm;
                  _os_log_impl(&dword_25E831000, v48, OS_LOG_TYPE_INFO, "Importing Kerberos TGT for %{public}@", buf, 0xCu);
                }

                kerberosHelper = [(POAgentAuthenticationProcess *)self kerberosHelper];
                v79 = 0;
                v51 = [kerberosHelper importKerberosEntry:v31 error:&v79];
                v52 = v79;

                [v69 addObject:v51];
                if (([v51 importSuccessful] & 1) == 0)
                {
                  v76[0] = MEMORY[0x277D85DD0];
                  v76[1] = 3221225472;
                  v76[2] = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418;
                  v76[3] = &unk_279A3AA50;
                  v77 = v52;
                  v78 = v20;
                  v53 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418(v76);
                }

                exchangeRequired = [v51 exchangeRequired];
                v12 = v70;
                if (exchangeRequired)
                {
                  v55 = PO_LOG_POAgentAuthenticationProcess(exchangeRequired);
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                  {
                    realm2 = [(POKerberosEntry *)v31 realm];
                    *buf = 138543362;
                    v93 = realm2;
                    _os_log_impl(&dword_25E831000, v55, OS_LOG_TYPE_INFO, "Exchanging Kerberos TGT for %{public}@", buf, 0xCu);

                    v12 = v70;
                  }

                  [(POAgentAuthenticationProcess *)self exchangeTGTForStatus:v51];
                }

                if ([v51 failedToConnect])
                {
                  [(POAgentAuthenticationProcess *)self setEnableNetworkChanges:1];
                }

                exchangeRequired2 = [v51 exchangeRequired];
                if ((exchangeRequired2 & 1) == 0)
                {
                  v58 = PO_LOG_POAgentAuthenticationProcess(exchangeRequired2);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                  {
                    realm3 = [v51 realm];
                    *buf = 138543362;
                    v93 = realm3;
                    _os_log_impl(&dword_25E831000, v58, OS_LOG_TYPE_INFO, "Notifying TGT delegate for realm: %{public}@", buf, 0xCu);
                  }

                  kerberosDelegate = [(POAgentAuthenticationProcess *)self kerberosDelegate];
                  realm4 = [v51 realm];
                  v62 = [v51 upn];
                  cacheName = [v51 cacheName];
                  [kerberosDelegate TGTReceivedForRealm:realm4 upn:v62 cache:cacheName];

                  v12 = v70;
                  v18 = v72;
                }
              }

              else
              {
                v65 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_422();
              }

              v11 = 0x277CCA000;
            }

            else
            {
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v80[2] = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412;
              v80[3] = &unk_279A3A088;
              v80[4] = v20;
              v64 = __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412(v80);
            }
          }

          else
          {
            v24 = PO_LOG_POAgentAuthenticationProcess(v25);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [POAgentAuthenticationProcess handleKerberosMappingForTokens:v83 loginConfiguration:? userConfiguration:?];
            }
          }

          ++v19;
        }

        while (v18 != v19);
        v17 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
        v18 = v17;
      }

      while (v17);
    }

    else
    {
      v74 = 0;
    }

    userConfigurationCopy = v66;
    v16 = v69;
    [v66 setKerberosStatus:v69];
    configurationCopy = v67;
    tokensCopy = v68;
    v14 = v74;
  }
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing mapping when handling kerberos mapping."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Ticket key path not NSDictionary when handling kerberos mapping."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412_cold_1();
  }

  return v1;
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to import kerberos ticketmapping when handling kerberos mapping."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418_cold_1();
  }

  return v1;
}

id __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_422()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Kerberos mapping is missing all required values when handling kerberos mapping."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handlePreviousRefreshTokens
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[POAgentAuthenticationProcess handlePreviousRefreshTokens]";
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v24, 0x16u);
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentLoginConfiguration = [configurationManager currentLoginConfiguration];
  if (![currentLoginConfiguration includePreviousRefreshTokenInLoginRequest])
  {
    goto LABEL_13;
  }

  configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentRefreshToken = [configurationManager2 currentRefreshToken];
  if (!currentRefreshToken)
  {

LABEL_13:
    goto LABEL_14;
  }

  v8 = currentRefreshToken;
  configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
  tokenExpiration = [configurationManager3 tokenExpiration];
  [tokenExpiration timeIntervalSinceNow];
  v12 = v11;

  if (v12 <= 0.0)
  {
LABEL_14:
    [(POAgentAuthenticationProcess *)self handleRemovingSSOTokens];
    return;
  }

  v14 = PO_LOG_POAgentAuthenticationProcess(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_25E831000, v14, OS_LOG_TYPE_INFO, "Using previous refresh token after login", &v24, 2u);
  }

  configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager4 currentUserConfiguration];
  [currentUserConfiguration setState:1];

  configurationManager5 = [(POAgentAuthenticationProcess *)self configurationManager];
  v18 = NSUserName();
  v19 = [configurationManager5 savePendingSSOTokens:0 forUserName:v18];

  if ((v19 & 1) == 0)
  {
    v20 = __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke();
  }

  configurationManager6 = [(POAgentAuthenticationProcess *)self configurationManager];
  v22 = [configurationManager6 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((v22 & 1) == 0)
  {
    v23 = __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke_433();
  }
}

id __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to clear pending SSO tokens."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke_433()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after clearing tokens."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleRemovingSSOTokens
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[POAgentAuthenticationProcess handleRemovingSSOTokens]";
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];

  if (extensionIdentifier)
  {
    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentDeviceConfiguration2 = [configurationManager3 currentDeviceConfiguration];
    extensionIdentifier2 = [currentDeviceConfiguration2 extensionIdentifier];
    v16 = 0;
    v11 = [configurationManager2 setTokens:0 extensionIdentifier:extensionIdentifier2 returningError:&v16];
    v12 = v16;

    if ((v11 & 1) == 0)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__POAgentAuthenticationProcess_handleRemovingSSOTokens__block_invoke;
      v14[3] = &unk_279A3A088;
      v12 = v12;
      v15 = v12;
      v13 = __55__POAgentAuthenticationProcess_handleRemovingSSOTokens__block_invoke(v14);
    }
  }

  else
  {
    v12 = 0;
  }
}

id __55__POAgentAuthenticationProcess_handleRemovingSSOTokens__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to remove SSO tokens."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)handlePendingSSOTokensWithSharedData:(id)data
{
  v57 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = PO_LOG_POAgentAuthenticationProcess(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v54 = "[POAgentAuthenticationProcess handlePendingSSOTokensWithSharedData:]";
    v55 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  v7 = NSUserName();
  v8 = [configurationManager retrievePendingSSOTokensForUserName:v7];

  if (v8)
  {
    v10 = MEMORY[0x277D3D1E0];
    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
    v13 = [v10 decryptPendingSSOTokens:v8 UsingPrivateKey:objc_msgSend(currentDeviceConfiguration sharedData:{"deviceEncryptionKey"), dataCopy}];

    if (!v13)
    {
      registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
      registrationContext = [registrationManager registrationContext];
      if ([registrationContext migratingDeviceKeys])
      {
        configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
        userDeviceConfiguration = [configurationManager3 userDeviceConfiguration];

        if (!userDeviceConfiguration)
        {
          v13 = 0;
          goto LABEL_14;
        }

        v19 = PO_LOG_POAgentAuthenticationProcess(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v19, OS_LOG_TYPE_INFO, "Handling Pending SSO During Migration", buf, 2u);
        }

        v20 = MEMORY[0x277D3D1E0];
        registrationManager = [(POAgentAuthenticationProcess *)self configurationManager];
        registrationContext = [registrationManager userDeviceConfiguration];
        v13 = [v20 decryptPendingSSOTokens:v8 UsingPrivateKey:objc_msgSend(registrationContext sharedData:{"deviceEncryptionKey"), dataCopy}];
      }

      else
      {
        v13 = 0;
      }
    }

LABEL_14:
    configurationManager4 = [(POAgentAuthenticationProcess *)self configurationManager];
    configurationManager5 = [(POAgentAuthenticationProcess *)self configurationManager];
    currentDeviceConfiguration2 = [configurationManager5 currentDeviceConfiguration];
    extensionIdentifier = [currentDeviceConfiguration2 extensionIdentifier];
    v50 = 0;
    v25 = [configurationManager4 setTokens:v13 extensionIdentifier:extensionIdentifier returningError:&v50];
    v26 = v50;

    if (v25)
    {
      setupTimerForAuthentication = [(POAgentAuthenticationProcess *)self setupTimerForAuthentication];
      if (v13)
      {
        v28 = PO_LOG_POAgentAuthenticationProcess(setupTimerForAuthentication);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v28, OS_LOG_TYPE_INFO, "Pending SSO Tokens Saved", buf, 2u);
        }

        configurationManager6 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentUserConfiguration = [configurationManager6 currentUserConfiguration];
        state = [currentUserConfiguration state];

        if (state == 1)
        {
          configurationManager7 = [(POAgentAuthenticationProcess *)self configurationManager];
          currentUserConfiguration2 = [configurationManager7 currentUserConfiguration];
          [currentUserConfiguration2 setState:0];

          configurationManager8 = [(POAgentAuthenticationProcess *)self configurationManager];
          LOBYTE(currentUserConfiguration2) = [configurationManager8 saveCurrentUserConfigurationAndSyncToPreboot:0];

          if ((currentUserConfiguration2 & 1) == 0)
          {
            v35 = __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke_445();
          }
        }

        configurationManager9 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentLoginConfiguration = [configurationManager9 currentLoginConfiguration];
        configurationManager10 = [(POAgentAuthenticationProcess *)self configurationManager];
        currentUserConfiguration3 = [configurationManager10 currentUserConfiguration];
        [(POAgentAuthenticationProcess *)self handleKerberosMappingForTokens:v13 loginConfiguration:currentLoginConfiguration userConfiguration:currentUserConfiguration3];

        configurationManager11 = [(POAgentAuthenticationProcess *)self configurationManager];
        v41 = NSUserName();
        LOBYTE(configurationManager10) = [configurationManager11 savePendingSSOTokens:0 forUserName:v41];

        if (configurationManager10)
        {
          userNotificationCenter = [(POAgentAuthenticationProcess *)self userNotificationCenter];
          v52 = @"com.apple.PlatformSSO.authentication";
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
          [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v43];

          userNotificationCenter2 = [(POAgentAuthenticationProcess *)self userNotificationCenter];
          v51 = @"com.apple.PlatformSSO.authentication";
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
          [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v45];
        }

        else
        {
          v47 = __59__POAgentAuthenticationProcess_handlePreviousRefreshTokens__block_invoke();
        }
      }
    }

    else
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke;
      v48[3] = &unk_279A3A088;
      v49 = v26;
      v46 = __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke(v48);
    }

    goto LABEL_26;
  }

  v13 = PO_LOG_POAgentAuthenticationProcess(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess handlePendingSSOTokensWithSharedData:];
  }

LABEL_26:
}

id __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save pending SSO tokens."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __69__POAgentAuthenticationProcess_handlePendingSSOTokensWithSharedData___block_invoke_445()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after saving pending SSO tokens."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleUnfinishedTGTExchanges
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[POAgentAuthenticationProcess handleUnfinishedTGTExchanges]";
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  if (currentUserConfiguration)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    kerberosStatus = [currentUserConfiguration kerberosStatus];
    v7 = [kerberosStatus countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v27 = currentUserConfiguration;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(kerberosStatus);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          exchangeRequired = [v12 exchangeRequired];
          if (exchangeRequired)
          {
            v14 = PO_LOG_POAgentAuthenticationProcess(exchangeRequired);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              realm = [v12 realm];
              *buf = 138543362;
              v34 = realm;
              _os_log_impl(&dword_25E831000, v14, OS_LOG_TYPE_INFO, "Exchanging Kerberos TGT for %{public}@", buf, 0xCu);
            }

            [(POAgentAuthenticationProcess *)self exchangeTGTForStatus:v12];
            if ([v12 failedToConnect])
            {
              [(POAgentAuthenticationProcess *)self setEnableNetworkChanges:1];
            }

            exchangeRequired2 = [v12 exchangeRequired];
            if ((exchangeRequired2 & 1) == 0)
            {
              v17 = PO_LOG_POAgentAuthenticationProcess(exchangeRequired2);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                realm2 = [v12 realm];
                *buf = 138543362;
                v34 = realm2;
                _os_log_impl(&dword_25E831000, v17, OS_LOG_TYPE_INFO, "Notifying TGT delegate for realm: %{public}@", buf, 0xCu);
              }

              kerberosDelegate = [(POAgentAuthenticationProcess *)self kerberosDelegate];
              realm3 = [v12 realm];
              v21 = [v12 upn];
              cacheName = [v12 cacheName];
              [kerberosDelegate TGTReceivedForRealm:realm3 upn:v21 cache:cacheName];

              v9 = 1;
            }
          }
        }

        v8 = [kerberosStatus countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);

      currentUserConfiguration = v27;
      if (v9)
      {
        configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
        v24 = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:0];

        if ((v24 & 1) == 0)
        {
          v25 = __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke_459();
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke();
  }
}

id __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration when handling unfinished TGT exchanges."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POAgentAuthenticationProcess_handleUnfinishedTGTExchanges__block_invoke_459()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration when handling unfinished TGT exchanges."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)notifyKerberosDelegateTGTDidBegin
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POAgentAuthenticationProcess notifyKerberosDelegateTGTDidBegin]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  kerberosDelegate = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  [kerberosDelegate TGTRequestDidBegin];
}

- (void)notifyKerberosDelegateTGTDidComplete
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POAgentAuthenticationProcess notifyKerberosDelegateTGTDidComplete]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  kerberosDelegate = [(POAgentAuthenticationProcess *)self kerberosDelegate];
  [kerberosDelegate TGTRequestDidComplete];
}

- (void)setupTimerForAuthentication
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentAuthenticationProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = "[POAgentAuthenticationProcess setupTimerForAuthentication]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v22, 0x16u);
  }

  authenticationTimerLock = [(POAgentAuthenticationProcess *)self authenticationTimerLock];
  objc_sync_enter(authenticationTimerLock);
  authenticationTimer = [(POAgentAuthenticationProcess *)self authenticationTimer];

  if (authenticationTimer)
  {
    authenticationTimer2 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [authenticationTimer2 invalidate];

    [(POAgentAuthenticationProcess *)self setAuthenticationTimer:0];
  }

  objc_sync_exit(authenticationTimerLock);

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  if (currentUserConfiguration)
  {
    configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
    tokenReceived = [configurationManager2 tokenReceived];

    [tokenReceived timeIntervalSinceNow];
    if (v11 >= -14400.0)
    {
      tokenExpiration = [tokenReceived dateByAddingTimeInterval:14400.0];
      if (!tokenExpiration)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      configurationManager3 = [(POAgentAuthenticationProcess *)self configurationManager];
      tokenExpiration = [configurationManager3 tokenExpiration];

      if (!tokenExpiration)
      {
        goto LABEL_14;
      }
    }

    authenticationTimerLock2 = [(POAgentAuthenticationProcess *)self authenticationTimerLock];
    v16 = objc_sync_enter(authenticationTimerLock2);
    v17 = PO_LOG_POAgentAuthenticationProcess(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 138543362;
      v23 = tokenExpiration;
      _os_log_impl(&dword_25E831000, v17, OS_LOG_TYPE_INFO, "Refresh token timer set: %{public}@", &v22, 0xCu);
    }

    v18 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:tokenExpiration interval:self target:sel_performLoginForCurrentUserWithPasswordContext_ selector:0 userInfo:0 repeats:0.0];
    [(POAgentAuthenticationProcess *)self setAuthenticationTimer:v18];

    authenticationTimer3 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [authenticationTimer3 setTolerance:300.0];

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    authenticationTimer4 = [(POAgentAuthenticationProcess *)self authenticationTimer];
    [currentRunLoop addTimer:authenticationTimer4 forMode:*MEMORY[0x277CBE640]];

    objc_sync_exit(authenticationTimerLock2);
    goto LABEL_14;
  }

  v14 = __59__POAgentAuthenticationProcess_setupTimerForAuthentication__block_invoke();
LABEL_15:
}

id __59__POAgentAuthenticationProcess_setupTimerForAuthentication__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration when handling setting up authentication timer."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)isCurrentSSOExtension:(id)extension
{
  extensionCopy = extension;
  v5 = PO_LOG_POAgentAuthenticationProcess(extensionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess isCurrentSSOExtension:];
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];

  if (!currentDeviceConfiguration)
  {
    v13 = __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke();
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  configurationManager2 = [(POAgentAuthenticationProcess *)self configurationManager];
  currentDeviceConfiguration2 = [configurationManager2 currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration2 extensionIdentifier];
  v11 = [extensionIdentifier isEqualToString:extensionCopy];

  if ((v11 & 1) == 0)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke_479;
    v16[3] = &unk_279A3A088;
    v17 = extensionCopy;
    v14 = __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke_479(v16);

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:

  return v12;
}

id __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration when checking sso extension."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __54__POAgentAuthenticationProcess_isCurrentSSOExtension___block_invoke_479(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Caller is not current extension when checking sso extension."];
  v2 = PO_LOG_POAgentAuthenticationProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1();
  }

  return v1;
}

- (void)requestUserAuthenticationWithWindow:(id)window completion:(id)completion
{
  completionCopy = completion;
  v6 = PO_LOG_POAgentAuthenticationProcess(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess requestUserAuthenticationWithWindow:completion:];
  }

  registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
  registrationContext = [registrationManager registrationContext];
  if (registrationContext)
  {
    v9 = registrationContext;
    registrationManager2 = [(POAgentAuthenticationProcess *)self registrationManager];
    registrationContext2 = [registrationManager2 registrationContext];
    state = [registrationContext2 state];

    if (state != 1)
    {
      v13 = __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke();
LABEL_11:
      v18 = 6;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (![(POAgentAuthenticationProcess *)self platformSSOAccount])
  {
    v19 = __79__POAgentAuthenticationProcess_requestUserAuthenticationWithWindow_completion___block_invoke_485();
    goto LABEL_11;
  }

  configurationManager = [(POAgentAuthenticationProcess *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  loginType = [currentUserConfiguration loginType];

  if (loginType == 1)
  {
    v18 = 3;
  }

  else
  {
    v20 = PO_LOG_POAgentAuthenticationProcess(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_25E831000, v20, OS_LOG_TYPE_INFO, "Not a password user", v21, 2u);
    }

    v18 = 0;
  }

LABEL_15:
  completionCopy[2](completionCopy, v18);
}

id __79__POAgentAuthenticationProcess_requestUserAuthenticationWithWindow_completion___block_invoke_485()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Not a PlatformSSO account for user authentication."];
  v1 = PO_LOG_POAgentAuthenticationProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (id)createSignInNotificationWithAccountName:(id)name extensionIdentifier:(id)identifier
{
  v24[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  registrationManager = [(POAgentAuthenticationProcess *)self registrationManager];
  v9 = [registrationManager loadSSOExtensionWithExtensionBundleIdentifier:identifierCopy];

  v10 = objc_alloc_init(MEMORY[0x277CE1F60]);
  if (nameCopy)
  {
    v11 = nameCopy;
  }

  else
  {
    v11 = &stru_287080C08;
  }

  v23[0] = @"account_name";
  v23[1] = @"extension_identifier";
  v24[0] = v11;
  v24[1] = identifierCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v10 setUserInfo:v12];

  [v10 setShouldBackgroundDefaultAction:1];
  v13 = MEMORY[0x277CE1FB0];
  containerAppBundleIdentifier = [v9 containerAppBundleIdentifier];
  v15 = [v13 iconForApplicationIdentifier:containerAppBundleIdentifier];
  [v10 setIcon:v15];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"NOTIFICATION_SIGNIN_TITLE" value:&stru_287080C08 table:0];
  [v10 setTitle:v17];

  if ([(__CFString *)nameCopy length])
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CUSTOM_NOTIFICATION_SIGNIN_BODY" value:&stru_287080C08 table:0];
    nameCopy = [v18 localizedStringWithFormat:v20, nameCopy];
    [v10 setBody:nameCopy];
  }

  else
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"DEFAULT_NOTIFICATION_SIGNIN_BODY" value:&stru_287080C08 table:0];
    [v10 setBody:v20];
  }

  [v10 setCategoryIdentifier:@"LOGIN_USER"];
  [v10 setInterruptionLevel:2];
  [v10 setShouldPreventNotificationDismissalAfterDefaultAction:1];

  return v10;
}

- (id)createPasswordChangedNotificationWithAccountName:(id)name extensionIdentifier:(id)identifier
{
  nameCopy = name;
  v6 = MEMORY[0x277CE1F60];
  identifierCopy = identifier;
  v8 = objc_alloc_init(v6);
  [v8 setShouldBackgroundDefaultAction:1];
  v21 = 0;
  v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v21];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [v9 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];

    v12 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:bundleIdentifier];
    [v8 setIcon:v12];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"NOTIFICATION_PASSWORDCHANGED_TITLE" value:&stru_287080C08 table:0];
  [v8 setTitle:v14];

  if ([nameCopy length])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CUSTOM_NOTIFICATION_PASSWORDCHANGED_BODY" value:&stru_287080C08 table:0];
    nameCopy = [v15 localizedStringWithFormat:v17, nameCopy];
    [v8 setBody:nameCopy];
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"DEFAULT_NOTIFICATION_PASSWORDCHANGED_BODY" value:&stru_287080C08 table:0];
    [v8 setBody:v17];
  }

  [v8 setInterruptionLevel:2];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:180.0];
  [v8 setExpirationDate:v19];

  return v8;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = PO_LOG_POAgentAuthenticationProcess(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POAgentAuthenticationProcess userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
  }

  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_279A3AAA0;
  v14 = responseCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = responseCopy;
  dispatch_async(v10, block);
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = PO_LOG_POAgentAuthenticationProcess(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) actionIdentifier];
    v4 = [*(a1 + 32) notification];
    v5 = [v4 request];
    v6 = [v5 content];
    v7 = [v6 categoryIdentifier];
    *buf = 138543618;
    v79 = v3;
    v80 = 2114;
    v81 = v7;
    _os_log_impl(&dword_25E831000, v2, OS_LOG_TYPE_INFO, "%{public}@, %{public}@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) notification];
  v9 = [v8 request];
  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  v12 = [v11 isEqualToString:@"LOGIN_USER"];
  v13 = MEMORY[0x277CE20F0];
  if (v12)
  {
    v14 = [*(a1 + 32) actionIdentifier];
    if ([v14 isEqualToString:*MEMORY[0x277CE20E8]])
    {
    }

    else
    {
      v15 = [*(a1 + 32) actionIdentifier];
      v16 = [v15 isEqualToString:@"LOGIN"];

      if (!v16)
      {
LABEL_8:
        v22 = [*(a1 + 32) actionIdentifier];
        v23 = [v22 isEqualToString:*v13];

        if (v23)
        {
          v24 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_513;
          block[3] = &unk_279A3A060;
          block[4] = *(a1 + 40);
          dispatch_async(v24, block);
        }

        v25 = [*(a1 + 40) userNotificationCenter];
        v26 = [*(a1 + 32) notification];
        v27 = [v26 request];
        v28 = [v27 identifier];
        v77 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
        [v25 removeDeliveredNotificationsWithIdentifiers:v29];

        v30 = [*(a1 + 40) userNotificationCenter];
        v31 = [*(a1 + 32) notification];
        v32 = [v31 request];
        v33 = [v32 identifier];
        v76 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
        [v30 removePendingNotificationRequestsWithIdentifiers:v34];

        goto LABEL_11;
      }
    }

    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) notification];
    v19 = [v18 request];
    v20 = [v19 content];
    v21 = [v20 userInfo];
    [v17 requestUserAuthenticationWithUserInfo:v21 forceLogin:0];

    goto LABEL_8;
  }

LABEL_11:
  if ([v11 isEqualToString:@"REGISTER_DEVICE"])
  {
    v35 = [*(a1 + 32) actionIdentifier];
    v36 = [v35 isEqualToString:*v13];

    v37 = dispatch_get_global_queue(0, 0);
    v38 = v37;
    if (v36)
    {
      v39 = v69;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v40 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_3;
    }

    else
    {
      v39 = v70;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v40 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
    }

    v39[2] = v40;
    v39[3] = &unk_279A3A060;
    v39[4] = *(a1 + 40);
    dispatch_async(v37, v39);

    v41 = [*(a1 + 40) userNotificationCenter];
    v42 = [*(a1 + 32) notification];
    v43 = [v42 request];
    v44 = [v43 identifier];
    v75 = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [v41 removeDeliveredNotificationsWithIdentifiers:v45];

    v46 = [*(a1 + 40) userNotificationCenter];
    v47 = [*(a1 + 32) notification];
    v48 = [v47 request];
    v49 = [v48 identifier];
    v74 = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    [v46 removePendingNotificationRequestsWithIdentifiers:v50];
  }

  if ([v11 isEqualToString:@"REGISTER_USER"])
  {
    v51 = [*(a1 + 32) actionIdentifier];
    v52 = [v51 isEqualToString:*v13];

    v53 = dispatch_get_global_queue(0, 0);
    v54 = v53;
    if (v52)
    {
      v55 = v67;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v56 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_5;
    }

    else
    {
      v55 = v68;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v56 = __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_4;
    }

    v55[2] = v56;
    v55[3] = &unk_279A3A060;
    v55[4] = *(a1 + 40);
    dispatch_async(v53, v55);

    v57 = [*(a1 + 40) userNotificationCenter];
    v58 = [*(a1 + 32) notification];
    v59 = [v58 request];
    v60 = [v59 identifier];
    v73 = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    [v57 removeDeliveredNotificationsWithIdentifiers:v61];

    v62 = [*(a1 + 40) userNotificationCenter];
    v63 = [*(a1 + 32) notification];
    v64 = [v63 request];
    v65 = [v64 identifier];
    v72 = v65;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    [v62 removePendingNotificationRequestsWithIdentifiers:v66];
  }

  (*(*(a1 + 48) + 16))();
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationManager];
  [v1 handleDeviceRegistrationNotification];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationManager];
  v3 = [v2 registrationContext];
  [v3 setRetry:1];

  v4 = [*(a1 + 32) registrationManager];
  [v4 promptUserForRegistration];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationManager];
  [v1 handleUserRegistrationNotification];
}

void __108__POAgentAuthenticationProcess_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationManager];
  v3 = [v2 registrationContext];
  [v3 setRetry:1];

  v4 = [*(a1 + 32) registrationManager];
  [v4 promptUserForRegistration];
}

- (void)setupNotificationCategories
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE1F80];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_SIGNIN_BUTTON" value:&stru_287080C08 table:0];
  v6 = [v3 actionWithIdentifier:@"LOGIN" title:v5 options:1];

  v7 = MEMORY[0x277CE1F80];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_REGISTER_BUTTON" value:&stru_287080C08 table:0];
  v10 = [v7 actionWithIdentifier:@"REGISTER" title:v9 options:65537];

  v11 = MEMORY[0x277CE1F98];
  v28[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v13 = MEMORY[0x277CBEBF8];
  v14 = [v11 categoryWithIdentifier:@"LOGIN_USER" actions:v12 intentIdentifiers:MEMORY[0x277CBEBF8] options:5];

  v15 = MEMORY[0x277CE1F98];
  v27 = v10;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v17 = [v15 categoryWithIdentifier:@"REGISTER_USER" actions:v16 intentIdentifiers:v13 options:5];

  v18 = MEMORY[0x277CE1F98];
  v26 = v10;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v20 = [v18 categoryWithIdentifier:@"REGISTER_DEVICE" actions:v19 intentIdentifiers:v13 options:5];

  userNotificationCenter = [(POAgentAuthenticationProcess *)self userNotificationCenter];
  v22 = MEMORY[0x277CBEB98];
  v25[0] = v14;
  v25[1] = v17;
  v25[2] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v24 = [v22 setWithArray:v23];
  [userNotificationCenter setNotificationCategories:v24];
}

- (POAgentAuthenticationProcessKerberosDelegate)kerberosDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_kerberosDelegate);

  return WeakRetained;
}

- (void)initForAgentWithDelegate:configurationHost:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithConfigurationHost:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleScreenUnlockWithCredentialContext:tokenId:atLogin:tokenUnlock:afterBuddy:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)doUnlockForSmartCardWithCredentialContext:tokenId:atLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)doUnlockForPasswordWithCredentialContext:atLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)doUnlockForTokenUnlockWithCredentialContext:atLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)doUnlockForTokenLoginWithCredentialContext:atLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_doUnlockForTokenWithCredentialContext:atLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__POAgentAuthenticationProcess__doUnlockForTokenWithCredentialContext_atLogin___block_invoke_70_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3D1D0] stringForLoginResult:a1];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "Password update result: %{public}@", v4, 0xCu);
}

- (void)doUnlockWithEmptyCredentialContext:atLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__POAgentAuthenticationProcess__performStartupSteps__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__POAgentAuthenticationProcess_handleNetworkChange__block_invoke_87_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)performLoginForCurrentUserWithPasswordContext:tokenId:forceLogin:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doRefreshWithPasswordContext:tokenId:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.7()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_doLoginWithPasswordContext:tokenId:.cold.9()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__POAgentAuthenticationProcess_handleEncryptionKeyRotation__block_invoke_260_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleKeyUpdatesWithPasswordContext:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkIfGroupNamesNeedUpdateForRegistrationManager:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestUserAuthenticationWithUserInfo:forceLogin:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestUserAuthenticationSyncPassword:completion:.cold.1()
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

- (void)handleKeyRequestSync
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)postAuthenticationNotification:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)configurationChanged:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)configurationChanged:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleConfigurationChanged:startup:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleConfigurationChanged:startup:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleConfigurationChanged:startup:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleUserNeedsReauthenticationAfterDelay:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestUserPasswordChangePreference
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_412_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [OUTLINED_FUNCTION_9(v0 v1)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v3, v4, "%{public}@, %{public}@", v5, v6, v7, v8);
}

void __100__POAgentAuthenticationProcess_handleKerberosMappingForTokens_loginConfiguration_userConfiguration___block_invoke_418_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [*(v0 + 40) ticketKeyPath];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

- (void)handlePendingSSOTokensWithSharedData:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isCurrentSSOExtension:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)requestUserAuthenticationWithWindow:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end