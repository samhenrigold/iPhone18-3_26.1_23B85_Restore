@interface SOKerberosExtensionProcess
- (BOOL)checkSourceAppACLWithContext:(id)context;
- (SOKerberosExtensionProcess)init;
- (id)createContextForRequest:(id)request;
- (id)kerberosForRealm:(id)realm;
- (id)mapKnownPasswordErrorToString:(id)string;
- (id)settingsForContext:(id)context includeSiteCodeCache:(BOOL)cache;
- (void)attemptKerberosWithContext:(id)context andDelegate:(id)delegate;
- (void)beginAuthorizationWithRequest:(id)request;
- (void)cancelAuthorizationWithRequest:(id)request;
- (void)completeRequestWithHTTPResponseFromContext:(id)context;
- (void)completeRequestWithToken:(id)token andContext:(id)context;
- (void)destroyCredentialsWithContext:(id)context;
- (void)handleAddKeychainCreds:(id)creds;
- (void)handleGetRealmInfo:(id)info;
- (void)handleGetSiteCode:(id)code;
- (void)handleKerberosOperations:(id)operations andDelegate:(id)delegate;
- (void)handleLogout:(id)logout removeRealm:(BOOL)realm;
- (void)handleLogoutWithContext:(id)context removeRealm:(BOOL)realm;
- (void)handleMigration;
- (void)handleRemoveRealm:(id)realm;
- (void)handleResetKeychainChoice:(id)choice;
- (void)removeSettingFile:(int)file;
- (void)saveValuesAfterSuccessfulAuthentication:(id)authentication;
@end

@implementation SOKerberosExtensionProcess

- (SOKerberosExtensionProcess)init
{
  v12.receiver = self;
  v12.super_class = SOKerberosExtensionProcess;
  v2 = [(SOKerberosExtensionProcess *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    kerberosByRealm = v2->_kerberosByRealm;
    v2->_kerberosByRealm = v3;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    requestContextMapping = v2->_requestContextMapping;
    v2->_requestContextMapping = weakToWeakObjectsMapTable;

    v7 = objc_alloc_init(SOKerberosHelper);
    kerberosHelper = v2->_kerberosHelper;
    v2->_kerberosHelper = v7;

    v9 = objc_alloc_init(SOKeychainHelper);
    keychainHelper = v2->_keychainHelper;
    v2->_keychainHelper = v9;
  }

  return v2;
}

- (void)handleMigration
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOKerberosExtensionProcess_handleMigration__block_invoke;
  block[3] = &unk_278C93018;
  block[4] = self;
  if (handleMigration_onceToken != -1)
  {
    dispatch_once(&handleMigration_onceToken, block);
  }
}

void __45__SOKerberosExtensionProcess_handleMigration__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"com.apple.AppSSOKerberos.version"];
  v4 = v3;
  if (v3)
  {
    v3 = [v3 intValue];
    v5 = v3;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = SO_LOG_SOKerberosExtensionProcess(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __45__SOKerberosExtensionProcess_handleMigration__block_invoke_cold_1(a1, v5, v6);
  }

  if (v5 <= 0)
  {
    [*(a1 + 32) removeSettingFile:v5];
    [v2 setObject:&unk_28520B9B8 forKey:@"com.apple.AppSSOKerberos.version"];
  }
}

- (void)removeSettingFile:(int)file
{
  if (file <= 0)
  {
    v3 = SO_LOG_SOKerberosExtensionProcess(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess removeSettingFile:];
    }

    v4 = [SOKerberosFileManager documentsDirectoryURLForFileName:@"realmSettings.plist"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v4 error:0];
  }
}

- (void)beginAuthorizationWithRequest:(id)request
{
  requestCopy = request;
  v5 = SO_LOG_SOKerberosExtensionProcess(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SOKerberosExtensionProcess *)requestCopy beginAuthorizationWithRequest:v5];
  }

  [(SOKerberosExtensionProcess *)self handleMigration];
  requestedOperation = [requestCopy requestedOperation];
  if (![requestedOperation isEqualToString:@"logout"])
  {
    requestedOperation2 = [requestCopy requestedOperation];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v8 = getASAuthorizationOperationLogoutSymbolLoc_ptr;
    v32 = getASAuthorizationOperationLogoutSymbolLoc_ptr;
    if (!getASAuthorizationOperationLogoutSymbolLoc_ptr)
    {
      v9 = AuthenticationServicesLibrary();
      v30[3] = dlsym(v9, "ASAuthorizationOperationLogout");
      getASAuthorizationOperationLogoutSymbolLoc_ptr = v30[3];
      v8 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (v8)
    {
      v10 = [requestedOperation2 isEqualToString:*v8];

      if (v10)
      {
        goto LABEL_9;
      }

      requestedOperation3 = [requestCopy requestedOperation];
      v15 = [requestedOperation3 isEqualToString:@"get_site_code"];

      if (v15)
      {
        [(SOKerberosExtensionProcess *)self handleGetSiteCode:requestCopy];
        goto LABEL_11;
      }

      requestedOperation4 = [requestCopy requestedOperation];
      v17 = [requestedOperation4 isEqualToString:@"remove_realm"];

      if (v17)
      {
        [(SOKerberosExtensionProcess *)self handleRemoveRealm:requestCopy];
        goto LABEL_11;
      }

      requestedOperation5 = [requestCopy requestedOperation];
      v19 = [requestedOperation5 isEqualToString:@"reset_keychain_preference"];

      if (v19)
      {
        [(SOKerberosExtensionProcess *)self handleResetKeychainChoice:requestCopy];
        goto LABEL_11;
      }

      requestedOperation6 = [requestCopy requestedOperation];
      v21 = [requestedOperation6 isEqualToString:@"get_realm_info"];

      if (v21)
      {
        [(SOKerberosExtensionProcess *)self handleGetRealmInfo:requestCopy];
        goto LABEL_11;
      }

      requestedOperation7 = [requestCopy requestedOperation];
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v23 = getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr;
      v32 = getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr;
      if (!getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr)
      {
        v24 = AuthenticationServicesLibrary();
        v30[3] = dlsym(v24, "ASAuthorizationProviderAuthorizationOperationConfigurationRemoved");
        getASAuthorizationProviderAuthorizationOperationConfigurationRemovedSymbolLoc_ptr = v30[3];
        v23 = v30[3];
      }

      _Block_object_dispose(&v29, 8);
      if (v23)
      {
        v25 = [requestedOperation7 isEqualToString:*v23];

        if (!v25)
        {
          invalidKerberosOperation = [MEMORY[0x277CCA9B8] invalidKerberosOperation];
          [requestCopy completeWithError:invalidKerberosOperation];

          goto LABEL_11;
        }

        selfCopy2 = self;
        v12 = requestCopy;
        v13 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      [SOKerberosExtensionProcess beginAuthorizationWithRequest:];
    }

    [SOKerberosExtensionProcess beginAuthorizationWithRequest:];
    v28 = v27;
    _Block_object_dispose(&v29, 8);
    _Unwind_Resume(v28);
  }

LABEL_9:
  selfCopy2 = self;
  v12 = requestCopy;
  v13 = 0;
LABEL_10:
  [(SOKerberosExtensionProcess *)selfCopy2 handleLogout:v12 removeRealm:v13];
LABEL_11:
}

- (void)cancelAuthorizationWithRequest:(id)request
{
  requestCopy = request;
  v5 = SO_LOG_SOKerberosExtensionProcess(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess cancelAuthorizationWithRequest:];
  }

  v7 = SO_LOG_SOKerberosExtensionProcess(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess cancelAuthorizationWithRequest:?];
  }

  requestContextMapping = [(SOKerberosExtensionProcess *)self requestContextMapping];
  v9 = [requestContextMapping objectForKey:requestCopy];

  if (v9)
  {
    v11 = SO_LOG_SOKerberosExtensionProcess(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess cancelAuthorizationWithRequest:];
    }

    [v9 cancelRequest:1];
  }
}

- (void)handleKerberosOperations:(id)operations andDelegate:(id)delegate
{
  operationsCopy = operations;
  delegateCopy = delegate;
  v8 = SO_LOG_SOKerberosExtensionProcess(delegateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
  }

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm = [operationsCopy realm];
  uppercaseString = [realm uppercaseString];
  v12 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v12)
  {
    v14 = SO_LOG_SOKerberosExtensionProcess(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
    }

    v15 = [SOKerberosAuthentication alloc];
    realm2 = [operationsCopy realm];
    uppercaseString2 = [realm2 uppercaseString];
    v18 = [(SOKerberosAuthentication *)v15 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    realm3 = [operationsCopy realm];
    uppercaseString3 = [realm3 uppercaseString];
    [kerberosByRealm2 setObject:v18 forKeyedSubscript:uppercaseString3];
  }

  v22 = [(SOKerberosExtensionProcess *)self createContextForRequest:operationsCopy];
  v23 = [(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:v22];
  if (v23)
  {
    extensionData = [v22 extensionData];
    if ([extensionData usePlatformSSOTGT])
    {
      currentSettings = [v22 currentSettings];
      if ([currentSettings platformSSOLoginInProgress])
      {
        currentSettings2 = [v22 currentSettings];
        platformSSOLoginSemaphore = [currentSettings2 platformSSOLoginSemaphore];

        if (!platformSSOLoginSemaphore || ([v22 currentSettings], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "platformSSOLoginSemaphore"), v29 = objc_claimAutoreleasedReturnValue(), v30 = dispatch_time(0, 120000000000), v31 = dispatch_semaphore_wait(v29, v30), v29, v28, !v31))
        {
LABEL_20:
          forceLoginViewController = [v22 forceLoginViewController];
          if (forceLoginViewController)
          {
            v36 = SO_LOG_SOKerberosExtensionProcess(forceLoginViewController);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
            }

            [delegateCopy handleResult:2 context:v22 error:0];
          }

          else
          {
            [(SOKerberosExtensionProcess *)self attemptKerberosWithContext:v22 andDelegate:delegateCopy];
          }

          goto LABEL_25;
        }

        v33 = SO_LOG_SOKerberosExtensionProcess(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess handleKerberosOperations:operationsCopy andDelegate:?];
        }

        extensionData = [v22 currentSettings];
        [extensionData setPlatformSSOLoginInProgress:0];
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  v34 = SO_LOG_SOKerberosExtensionProcess(v23);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
  }

  [v22 completeRequestWithDoNotHandle];
LABEL_25:
}

- (void)handleGetSiteCode:(id)code
{
  v73 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = SO_LOG_SOKerberosExtensionProcess(codeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetSiteCode:codeCopy];
  }

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm = [codeCopy realm];
  uppercaseString = [realm uppercaseString];
  v9 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v9)
  {
    v11 = SO_LOG_SOKerberosExtensionProcess(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:codeCopy andDelegate:?];
    }

    v12 = [SOKerberosAuthentication alloc];
    realm2 = [codeCopy realm];
    uppercaseString2 = [realm2 uppercaseString];
    v15 = [(SOKerberosAuthentication *)v12 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    realm3 = [codeCopy realm];
    uppercaseString3 = [realm3 uppercaseString];
    [kerberosByRealm2 setObject:v15 forKeyedSubscript:uppercaseString3];
  }

  kerberosByRealm3 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm4 = [codeCopy realm];
  uppercaseString4 = [realm4 uppercaseString];
  v22 = [kerberosByRealm3 objectForKeyedSubscript:uppercaseString4];

  v23 = [(SOKerberosExtensionProcess *)self createContextForRequest:codeCopy];
  extensionData = [v23 extensionData];
  LODWORD(realm4) = [extensionData useSiteAutoDiscovery];

  if (realm4)
  {
    networkIdentity = [v23 networkIdentity];
    [networkIdentity determineNetworkFingerprint];

    httpHeaders = [codeCopy httpHeaders];
    v27 = [httpHeaders objectForKey:@"force"];
    v28 = [v27 isEqualToString:@"1"];

    if (v28)
    {
      v30 = SO_LOG_SOKerberosExtensionProcess(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }

      v31 = dispatch_group_create();
      [v22 determineSiteCodeUsingContext:v23];
      v32 = dispatch_time(0, 15000000000);
      v33 = dispatch_group_wait(v31, v32);
      if (v33 >= 1)
      {
        v34 = SO_LOG_SOKerberosExtensionProcess(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess handleGetSiteCode:];
        }
      }
    }

    httpHeaders2 = [codeCopy httpHeaders];
    v36 = [httpHeaders2 objectForKey:@"verbose"];
    v37 = [v36 isEqualToString:@"1"];

    if (v37)
    {
      v61 = v23;
      v38 = [SOKerberosRealmSettings alloc];
      realm5 = [codeCopy realm];
      siteCode = [(SOKerberosRealmSettings *)v38 initWithRealm:realm5];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      dumpSiteCodeCache = [(SOKerberosRealmSettings *)siteCode dumpSiteCodeCache];
      v42 = [dumpSiteCodeCache countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v63;
        v45 = &stru_285206D08;
        v46 = &stru_285206D08;
        do
        {
          v47 = 0;
          v48 = v45;
          do
          {
            if (*v63 != v44)
            {
              objc_enumerationMutation(dumpSiteCodeCache);
            }

            v49 = [*(*(&v62 + 1) + 8 * v47) description];
            v50 = [(__CFString *)v46 stringByAppendingString:v49];

            v45 = [v48 stringByAppendingString:v50];

            ++v47;
            v48 = v45;
            v46 = @"\n";
          }

          while (v43 != v47);
          v43 = [dumpSiteCodeCache countByEnumeratingWithState:&v62 objects:v72 count:16];
          v46 = @"\n";
        }

        while (v43);
      }

      else
      {
        v45 = &stru_285206D08;
      }

      v70 = @"site_code_cache";
      v71 = v45;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      [codeCopy completeWithHTTPAuthorizationHeaders:v58];

      v60 = SO_LOG_SOKerberosExtensionProcess(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess handleGetSiteCode:];
      }

      v23 = v61;
      goto LABEL_36;
    }

    callerBundleIdentifier = [codeCopy callerBundleIdentifier];
    networkIdentity2 = [v23 networkIdentity];
    networkFingerprint = [networkIdentity2 networkFingerprint];
    siteCode = [v22 retrieveCachedSiteCodeFromCacheForBundleIdentifier:callerBundleIdentifier networkFingerprint:networkFingerprint];
  }

  else
  {
    siteCode = [v23 siteCode];
  }

  code = [(SOKerberosRealmSettings *)siteCode code];

  if (code)
  {
    v68 = @"site_code";
    code2 = [(SOKerberosRealmSettings *)siteCode code];
    v69 = code2;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    [codeCopy completeWithHTTPAuthorizationHeaders:v56];
  }

  else
  {
    v66 = @"site_code";
    v67 = @"no site code";
    code2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    [codeCopy completeWithHTTPAuthorizationHeaders:code2];
  }

  v45 = SO_LOG_SOKerberosExtensionProcess(v57);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetSiteCode:];
  }

LABEL_36:
}

- (void)handleRemoveRealm:(id)realm
{
  realmCopy = realm;
  v4 = SO_LOG_SOKerberosExtensionProcess(realmCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleRemoveRealm:realmCopy];
  }

  v5 = [SOKerberosRealmSettings alloc];
  realm = [realmCopy realm];
  v7 = [(SOKerberosRealmSettings *)v5 initWithRealm:realm];
  [(SOKerberosRealmSettings *)v7 removeAllValues];

  v8 = SO_LOG_SOKerberosExtensionProcess([realmCopy complete]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleRemoveRealm:];
  }
}

- (void)handleLogoutWithContext:(id)context removeRealm:(BOOL)realm
{
  realmCopy = realm;
  contextCopy = context;
  objc_sync_enter(0);
  impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

  if (impersonationBundleIdentifier)
  {
    [contextCopy impersonationBundleIdentifier];
  }

  else
  {
    [contextCopy callerBundleIdentifier];
  }
  v8 = ;
  HeimCredSetImpersonateBundle();

  kerberosHelper = [(SOKerberosExtensionProcess *)self kerberosHelper];
  credentialUUID = [contextCopy credentialUUID];
  [kerberosHelper destroyCredential:credentialUUID];

  HeimCredSetImpersonateBundle();
  objc_sync_exit(0);
  currentSettings = [contextCopy currentSettings];
  [currentSettings setUserPrincipalName:0];

  currentSettings2 = [contextCopy currentSettings];
  [currentSettings2 setUserName:0];

  [contextCopy setCredentialUUID:0];
  [contextCopy setUserNameIsReadOnly:0];
  [contextCopy setUserName:0];
  currentSettings3 = [contextCopy currentSettings];
  [currentSettings3 setCredentialUUID:0];

  currentSettings4 = [contextCopy currentSettings];
  [currentSettings4 setPkinitPersistentRef:0];

  currentSettings5 = [contextCopy currentSettings];
  [currentSettings5 setSmartCardTokenID:0];

  currentSettings6 = [contextCopy currentSettings];
  [currentSettings6 setDateLastLogin:0];

  currentSettings7 = [contextCopy currentSettings];
  [currentSettings7 setDateNextPacRefresh:0];

  currentSettings8 = [contextCopy currentSettings];
  [currentSettings8 setDatePasswordLastChangedAtLogin:0];

  currentSettings9 = [contextCopy currentSettings];
  [currentSettings9 setDatePasswordLastChanged:0];

  currentSettings10 = [contextCopy currentSettings];
  [currentSettings10 setDatePasswordExpires:0];

  currentSettings11 = [contextCopy currentSettings];
  [currentSettings11 setPasswordNeverExpires:0];

  currentSettings12 = [contextCopy currentSettings];
  [currentSettings12 setNetworkHomeDirectory:0];

  currentSettings13 = [contextCopy currentSettings];
  [currentSettings13 setDateADPasswordCanChange:0];

  currentSettings14 = [contextCopy currentSettings];
  [currentSettings14 setDateLocalPasswordLastChanged:0];

  currentSettings15 = [contextCopy currentSettings];
  [currentSettings15 setDateExpirationChecked:0];

  currentSettings16 = [contextCopy currentSettings];
  [currentSettings16 setDateExpirationNotificationSent:0];

  currentSettings17 = [contextCopy currentSettings];
  [currentSettings17 setUserCancelledLogin:0];

  currentSettings18 = [contextCopy currentSettings];
  [currentSettings18 setDateLoginCancelled:0];

  currentSettings19 = [contextCopy currentSettings];
  [currentSettings19 setPasswordChangeInProgress:0];

  keychainHelper = [(SOKerberosExtensionProcess *)self keychainHelper];
  serviceName = [contextCopy serviceName];
  [keychainHelper removeCredentialsFromKeychainWithService:serviceName];

  extensionUserData = [contextCopy extensionUserData];
  [extensionUserData setUserSetKeychainChoice:0];

  extensionUserData2 = [contextCopy extensionUserData];
  [extensionUserData2 setUseKeychain:1];

  if (realmCopy)
  {
    v35 = SO_LOG_SOKerberosExtensionProcess(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleLogoutWithContext:contextCopy removeRealm:?];
    }

    currentSettings20 = [contextCopy currentSettings];
    [currentSettings20 removeAllValues];

    realm = [contextCopy realm];
    v42 = 0;
    v38 = [SOKerberosHeimdalPluginSettings deleteSettingsForRealm:realm error:&v42];
    v39 = v42;

    if (!v38)
    {
      v41 = SO_LOG_SOKerberosExtensionProcess(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosExtensionProcess handleLogoutWithContext:removeRealm:];
      }
    }
  }

  else
  {
    [SOKerberosAuthentication saveValuesForPlugins:contextCopy];
  }
}

- (void)handleLogout:(id)logout removeRealm:(BOOL)realm
{
  realmCopy = realm;
  logoutCopy = logout;
  v7 = SO_LOG_SOKerberosExtensionProcess(logoutCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleLogout:logoutCopy removeRealm:?];
  }

  v8 = [(SOKerberosExtensionProcess *)self createContextForRequest:logoutCopy];
  v9 = [(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:v8];
  if (v9)
  {
    [(SOKerberosExtensionProcess *)self handleLogoutWithContext:v8 removeRealm:realmCopy];
    v10 = SO_LOG_SOKerberosExtensionProcess([v8 completeRequest]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleLogout:removeRealm:];
    }
  }

  else
  {
    v11 = SO_LOG_SOKerberosExtensionProcess(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
    }

    [v8 completeRequestWithDoNotHandle];
  }
}

- (void)destroyCredentialsWithContext:(id)context
{
  contextCopy = context;
  v5 = SO_LOG_SOKerberosExtensionProcess(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess destroyCredentialsWithContext:];
  }

  v6 = [(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:contextCopy];
  if (v6)
  {
    credentialUUID = [contextCopy credentialUUID];

    if (credentialUUID)
    {
      credentialUUID2 = [contextCopy credentialUUID];
      uUIDString = [credentialUUID2 UUIDString];

      v11 = SO_LOG_SOKerberosExtensionProcess(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess destroyCredentialsWithContext:];
      }

      objc_sync_enter(0);
      impersonationBundleIdentifier = [contextCopy impersonationBundleIdentifier];

      if (impersonationBundleIdentifier)
      {
        [contextCopy impersonationBundleIdentifier];
      }

      else
      {
        [contextCopy callerBundleIdentifier];
      }
      v13 = ;
      HeimCredSetImpersonateBundle();

      kerberosHelper = [(SOKerberosExtensionProcess *)self kerberosHelper];
      credentialUUID3 = [contextCopy credentialUUID];
      [kerberosHelper destroyCredential:credentialUUID3];

      HeimCredSetImpersonateBundle();
      objc_sync_exit(0);
    }

    else
    {
      userPrincipalName = [contextCopy userPrincipalName];
      if (userPrincipalName)
      {
        v16 = userPrincipalName;
        userPrincipalName2 = [contextCopy userPrincipalName];
        v18 = [userPrincipalName2 isEqualToString:&stru_285206D08];

        if ((v18 & 1) == 0)
        {
          v20 = SO_LOG_SOKerberosExtensionProcess(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosExtensionProcess destroyCredentialsWithContext:contextCopy];
          }

          objc_sync_enter(0);
          impersonationBundleIdentifier2 = [contextCopy impersonationBundleIdentifier];

          if (impersonationBundleIdentifier2)
          {
            [contextCopy impersonationBundleIdentifier];
          }

          else
          {
            [contextCopy callerBundleIdentifier];
          }
          v22 = ;
          HeimCredSetImpersonateBundle();

          kerberosHelper2 = [(SOKerberosExtensionProcess *)self kerberosHelper];
          userPrincipalName3 = [contextCopy userPrincipalName];
          [kerberosHelper2 destroyCredentialForUPN:userPrincipalName3];

          HeimCredSetImpersonateBundle();
          objc_sync_exit(0);
        }
      }
    }
  }

  else
  {
    v14 = SO_LOG_SOKerberosExtensionProcess(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess destroyCredentialsWithContext:];
    }

    [contextCopy completeRequestWithDoNotHandle];
  }
}

- (void)handleResetKeychainChoice:(id)choice
{
  choiceCopy = choice;
  v4 = SO_LOG_SOKerberosExtensionProcess(choiceCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleResetKeychainChoice:choiceCopy];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"useKeychain"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"userSetKeychainChoice"];

  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults3 removeObjectForKey:@"rememberKeychainChoice"];

  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults4 synchronize];

  v9 = SO_LOG_SOKerberosExtensionProcess([choiceCopy complete]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleResetKeychainChoice:];
  }
}

- (void)handleGetRealmInfo:(id)info
{
  infoCopy = info;
  v5 = SO_LOG_SOKerberosExtensionProcess(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:infoCopy];
  }

  httpHeaders = [infoCopy httpHeaders];
  v7 = [httpHeaders objectForKey:@"verbose"];
  v8 = [v7 isEqualToString:@"1"];

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm = [infoCopy realm];
  uppercaseString = [realm uppercaseString];
  v12 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v12)
  {
    v14 = SO_LOG_SOKerberosExtensionProcess(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:infoCopy andDelegate:?];
    }

    v15 = [SOKerberosAuthentication alloc];
    realm2 = [infoCopy realm];
    uppercaseString2 = [realm2 uppercaseString];
    v18 = [(SOKerberosAuthentication *)v15 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    realm3 = [infoCopy realm];
    uppercaseString3 = [realm3 uppercaseString];
    [kerberosByRealm2 setObject:v18 forKeyedSubscript:uppercaseString3];
  }

  v22 = [(SOKerberosExtensionProcess *)self createContextForRequest:infoCopy];
  extensionData = [v22 extensionData];
  useSiteAutoDiscovery = [extensionData useSiteAutoDiscovery];

  if (useSiteAutoDiscovery)
  {
    networkIdentity = [v22 networkIdentity];
    [networkIdentity determineNetworkFingerprint];
  }

  v26 = [(SOKerberosExtensionProcess *)self settingsForContext:v22 includeSiteCodeCache:v8];
  v27 = SO_LOG_SOKerberosExtensionProcess(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }

  v28 = SO_LOG_SOKerberosExtensionProcess([infoCopy completeWithHTTPAuthorizationHeaders:v26]);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }
}

- (id)settingsForContext:(id)context includeSiteCodeCache:(BOOL)cache
{
  cacheCopy = cache;
  v74 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [SOKerberosRealmSettings alloc];
  realm = [contextCopy realm];
  v9 = [(SOKerberosRealmSettings *)v7 initWithRealm:realm];

  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  realm2 = [contextCopy realm];
  uppercaseString = [realm2 uppercaseString];
  v13 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  v14 = objc_opt_new();
  realm3 = [contextCopy realm];

  if (realm3)
  {
    realm4 = [contextCopy realm];
    [v14 setObject:realm4 forKeyedSubscript:@"realm"];
  }

  userPrincipalName = [(SOKerberosRealmSettings *)v9 userPrincipalName];

  if (userPrincipalName)
  {
    userPrincipalName2 = [(SOKerberosRealmSettings *)v9 userPrincipalName];
    [v14 setObject:userPrincipalName2 forKeyedSubscript:@"upn"];
  }

  userName = [(SOKerberosRealmSettings *)v9 userName];

  if (userName)
  {
    userName2 = [(SOKerberosRealmSettings *)v9 userName];
    [v14 setObject:userName2 forKeyedSubscript:@"user_name"];
  }

  credentialUUID = [(SOKerberosRealmSettings *)v9 credentialUUID];

  if (credentialUUID)
  {
    credentialUUID2 = [(SOKerberosRealmSettings *)v9 credentialUUID];
    uUIDString = [credentialUUID2 UUIDString];
    [v14 setObject:uUIDString forKeyedSubscript:@"gss_cred_uuid"];
  }

  extensionData = [contextCopy extensionData];
  useSiteAutoDiscovery = [extensionData useSiteAutoDiscovery];

  v68 = v13;
  if (useSiteAutoDiscovery)
  {
    callerBundleIdentifier = [contextCopy callerBundleIdentifier];
    networkIdentity = [contextCopy networkIdentity];
    networkFingerprint = [networkIdentity networkFingerprint];
    v29 = [v13 retrieveCachedSiteCodeFromCacheForBundleIdentifier:callerBundleIdentifier networkFingerprint:networkFingerprint];

    code = [v29 code];

    if (code)
    {
      code2 = [v29 code];
      [v14 setObject:code2 forKeyedSubscript:@"site_code"];

      if (!cacheCopy)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [v14 setObject:@"no site code" forKeyedSubscript:@"site_code"];
      if (!cacheCopy)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    v66 = v29;
    v67 = contextCopy;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    dumpSiteCodeCache = [(SOKerberosRealmSettings *)v9 dumpSiteCodeCache];
    v36 = [dumpSiteCodeCache countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v70;
      v39 = &stru_285206D08;
      v40 = &stru_285206D08;
      do
      {
        v41 = 0;
        v42 = v39;
        do
        {
          if (*v70 != v38)
          {
            objc_enumerationMutation(dumpSiteCodeCache);
          }

          v43 = [*(*(&v69 + 1) + 8 * v41) description];
          v44 = [(__CFString *)v40 stringByAppendingString:v43];

          v39 = [(__CFString *)v42 stringByAppendingString:v44];

          ++v41;
          v42 = v39;
          v40 = @"\n";
        }

        while (v37 != v41);
        v37 = [dumpSiteCodeCache countByEnumeratingWithState:&v69 objects:v73 count:16];
        v40 = @"\n";
      }

      while (v37);
    }

    else
    {
      v39 = &stru_285206D08;
    }

    [v14 setObject:v39 forKeyedSubscript:@"site_code_cache"];
    v29 = v66;
    contextCopy = v67;
    goto LABEL_27;
  }

  siteCode = [contextCopy siteCode];

  if (siteCode)
  {
    siteCode2 = [contextCopy siteCode];
    code3 = [siteCode2 code];
    [v14 setObject:code3 forKeyedSubscript:@"site_code"];
  }

  else
  {
    [v14 setObject:@"no site code" forKeyedSubscript:@"site_code"];
  }

LABEL_28:
  v45 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v45 setFormatOptions:1907];
  dateLastLogin = [(SOKerberosRealmSettings *)v9 dateLastLogin];

  if (dateLastLogin)
  {
    dateLastLogin2 = [(SOKerberosRealmSettings *)v9 dateLastLogin];
    v48 = [v45 stringFromDate:dateLastLogin2];

    [v14 setObject:v48 forKeyedSubscript:@"login_date"];
  }

  datePasswordLastChanged = [(SOKerberosRealmSettings *)v9 datePasswordLastChanged];
  if (datePasswordLastChanged)
  {
    v50 = datePasswordLastChanged;
    dateExpirationChecked = [(SOKerberosRealmSettings *)v9 dateExpirationChecked];

    if (dateExpirationChecked)
    {
      datePasswordLastChanged2 = [(SOKerberosRealmSettings *)v9 datePasswordLastChanged];
      v53 = [v45 stringFromDate:datePasswordLastChanged2];
      [v14 setObject:v53 forKeyedSubscript:@"password_changed_date"];
    }
  }

  dateLocalPasswordLastChanged = [(SOKerberosRealmSettings *)v9 dateLocalPasswordLastChanged];

  if (dateLocalPasswordLastChanged)
  {
    dateLocalPasswordLastChanged2 = [(SOKerberosRealmSettings *)v9 dateLocalPasswordLastChanged];
    v56 = [v45 stringFromDate:dateLocalPasswordLastChanged2];
    [v14 setObject:v56 forKeyedSubscript:@"local_password_changed_date"];
  }

  datePasswordExpires = [(SOKerberosRealmSettings *)v9 datePasswordExpires];

  if (datePasswordExpires)
  {
    datePasswordExpires2 = [(SOKerberosRealmSettings *)v9 datePasswordExpires];
    v59 = [v45 stringFromDate:datePasswordExpires2];
    [v14 setObject:v59 forKeyedSubscript:@"password_expires_date"];
  }

  networkHomeDirectory = [(SOKerberosRealmSettings *)v9 networkHomeDirectory];

  if (networkHomeDirectory)
  {
    networkHomeDirectory2 = [(SOKerberosRealmSettings *)v9 networkHomeDirectory];
    [v14 setObject:networkHomeDirectory2 forKeyedSubscript:@"home_directory"];
  }

  if ([(SOKerberosRealmSettings *)v9 delayUserSetupCleared])
  {
    if ([(SOKerberosRealmSettings *)v9 delayUserSetupCleared])
    {
      v62 = @"1";
    }

    else
    {
      v62 = @"0";
    }

    [v14 setObject:v62 forKeyedSubscript:@"delayUserSetupCleared"];
  }

  if ([(SOKerberosRealmSettings *)v9 networkAvailable])
  {
    if ([(SOKerberosRealmSettings *)v9 networkAvailable])
    {
      v63 = @"1";
    }

    else
    {
      v63 = @"0";
    }

    [v14 setObject:v63 forKeyedSubscript:@"networkAvailable"];
  }

  if ([(SOKerberosRealmSettings *)v9 userCancelledLogin])
  {
    if ([(SOKerberosRealmSettings *)v9 userCancelledLogin])
    {
      v64 = @"1";
    }

    else
    {
      v64 = @"0";
    }

    [v14 setObject:v64 forKeyedSubscript:@"userCancelledLogin"];
  }

  return v14;
}

- (BOOL)checkSourceAppACLWithContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  extensionData = [contextCopy extensionData];
  credentialBundleIdACL = [extensionData credentialBundleIdACL];
  if (credentialBundleIdACL)
  {
  }

  else
  {
    extensionData2 = [contextCopy extensionData];
    includeManagedAppsInBundleIdACL = [extensionData2 includeManagedAppsInBundleIdACL];

    if (!includeManagedAppsInBundleIdACL)
    {
LABEL_20:
      LOBYTE(v12) = 1;
      goto LABEL_25;
    }
  }

  v9 = SO_LOG_SOKerberosExtensionProcess(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess checkSourceAppACLWithContext:contextCopy];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  extensionData3 = [contextCopy extensionData];
  credentialBundleIdACL2 = [extensionData3 credentialBundleIdACL];

  v12 = [credentialBundleIdACL2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(credentialBundleIdACL2);
        }

        lowercaseString = [*(*(&v25 + 1) + 8 * i) lowercaseString];
        callerBundleIdentifier = [contextCopy callerBundleIdentifier];
        lowercaseString2 = [callerBundleIdentifier lowercaseString];
        v18 = [lowercaseString isEqualToString:lowercaseString2];

        if (v18)
        {
          v12 = SO_LOG_SOKerberosExtensionProcess(v19);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SOKerberosExtensionProcess checkSourceAppACLWithContext:];
          }

          LODWORD(v12) = 1;
          goto LABEL_18;
        }
      }

      v12 = [credentialBundleIdACL2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  extensionData4 = [contextCopy extensionData];
  if ([extensionData4 includeManagedAppsInBundleIdACL])
  {
    isManagedApp = [contextCopy isManagedApp];

    if ((v12 | isManagedApp))
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_20;
    }
  }

  v23 = SO_LOG_SOKerberosExtensionProcess(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
  }

LABEL_25:
  return v12;
}

- (id)createContextForRequest:(id)request
{
  requestCopy = request;
  v5 = SO_LOG_SOKerberosExtensionProcess(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess createContextForRequest:requestCopy];
  }

  httpHeaders = [requestCopy httpHeaders];
  v7 = [SOKerberosExtensionData alloc];
  extensionData = [requestCopy extensionData];
  v9 = [(SOKerberosExtensionData *)v7 initWithDictionary:extensionData];

  if (!v9)
  {
    v11 = SO_LOG_SOKerberosExtensionProcess(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess createContextForRequest:requestCopy];
    }
  }

  v12 = [[SOKerberosContext alloc] initWithRequest:requestCopy extensionData:v9];
  siteCode = [(SOKerberosExtensionData *)v9 siteCode];
  if (siteCode)
  {
    v14 = siteCode;
    siteCode2 = [(SOKerberosExtensionData *)v9 siteCode];

    if (siteCode2 != @"no site code")
    {
      [(SOKerberosExtensionData *)v9 setUseSiteAutoDiscovery:0];
      v16 = [SOSiteCode alloc];
      siteCode3 = [(SOKerberosExtensionData *)v9 siteCode];
      v18 = [(SOSiteCode *)v16 initWithSiteCode:siteCode3 forNetworkFingerprint:@"profile"];
      [(SOKerberosContext *)v12 setSiteCode:v18];
    }
  }

  if ([(SOKerberosExtensionData *)v9 useSiteAutoDiscovery])
  {
    v19 = [SONetworkIdentity alloc];
    realm = [requestCopy realm];
    uppercaseString = [realm uppercaseString];
    callerBundleIdentifier = [(SOKerberosContext *)v12 callerBundleIdentifier];
    auditToken = [(SOKerberosContext *)v12 auditToken];
    v24 = [(SONetworkIdentity *)v19 initForRealm:uppercaseString bundleIdentifier:callerBundleIdentifier auditToken:auditToken];
    [(SOKerberosContext *)v12 setNetworkIdentity:v24];
  }

  requestedOperation = [requestCopy requestedOperation];
  if (([requestedOperation isEqualToString:@"login"] & 1) == 0)
  {
    requestedOperation2 = [requestCopy requestedOperation];
    if (([requestedOperation2 isEqualToString:@"get_credential_uuid"] & 1) == 0)
    {
      requestedOperation3 = [requestCopy requestedOperation];
      if (([requestedOperation3 isEqualToString:@"change_password"] & 1) == 0)
      {
        requestedOperation4 = [requestCopy requestedOperation];
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v29 = getASAuthorizationOperationLoginSymbolLoc_ptr;
        v61 = getASAuthorizationOperationLoginSymbolLoc_ptr;
        if (!getASAuthorizationOperationLoginSymbolLoc_ptr)
        {
          certificateRef[0] = MEMORY[0x277D85DD0];
          certificateRef[1] = 3221225472;
          certificateRef[2] = __getASAuthorizationOperationLoginSymbolLoc_block_invoke;
          certificateRef[3] = &unk_278C93090;
          v57 = &v58;
          v30 = AuthenticationServicesLibrary();
          v59[3] = dlsym(v30, "ASAuthorizationOperationLogin");
          getASAuthorizationOperationLoginSymbolLoc_ptr = *(v57[1] + 24);
          v29 = v59[3];
        }

        _Block_object_dispose(&v58, 8);
        if (!v29)
        {
          [SOKerberosExtensionProcess beginAuthorizationWithRequest:];
          v52 = v51;
          _Block_object_dispose(&v58, 8);
          _Unwind_Resume(v52);
        }

        if (([requestedOperation4 isEqualToString:*v29] & 1) == 0)
        {
          v53 = [requestCopy url];
          [v53 scheme];
          v49 = v54 = requestedOperation4;
          lowercaseString = [v49 lowercaseString];
          v55 = [lowercaseString isEqualToString:@"realm"];

          if ((v55 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }
    }
  }

LABEL_23:
  [(SOKerberosContext *)v12 setReturnCredentialOnly:1];
  v31 = [httpHeaders objectForKey:@"force"];
  v32 = [v31 isEqualToString:@"1"];

  if (v32)
  {
    [(SOKerberosContext *)v12 setForceLoginViewController:1];
  }

  v33 = [httpHeaders objectForKey:@"refresh"];
  v34 = [v33 isEqualToString:@"1"];

  if (v34)
  {
    [(SOKerberosContext *)v12 setRefreshCredential:1];
  }

LABEL_27:
  requestContextMapping = [(SOKerberosExtensionProcess *)self requestContextMapping];
  [requestContextMapping setObject:v12 forKey:requestCopy];

  userName = [(SOKerberosContext *)v12 userName];
  if (userName)
  {
  }

  else
  {
    certificateUUID = [(SOKerberosExtensionData *)v9 certificateUUID];

    if (certificateUUID)
    {
      v40 = SO_LOG_SOKerberosExtensionProcess(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [SOKerberosExtensionProcess createContextForRequest:];
      }

      keychainHelper = [(SOKerberosExtensionProcess *)self keychainHelper];
      certificateUUID2 = [(SOKerberosExtensionData *)v9 certificateUUID];
      v43 = [keychainHelper identityForUUIDString:certificateUUID2];

      if (v43)
      {
        certificateRef[0] = 0;
        SecIdentityCopyCertificate(v43, certificateRef);
        if (certificateRef[0])
        {
          v45 = SecCertificateCopyNTPrincipalNames();
          if ([v45 count])
          {
            v46 = [v45 objectAtIndex:0];
            v47 = SO_LOG_SOKerberosExtensionProcess([(SOKerberosContext *)v12 setUserName:v46]);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess createContextForRequest:];
            }
          }

          CFRelease(certificateRef[0]);
        }

        CFRelease(v43);
      }

      else
      {
        v48 = SO_LOG_SOKerberosExtensionProcess(v44);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          [SOKerberosExtensionProcess createContextForRequest:];
        }
      }
    }
  }

  return v12;
}

- (void)attemptKerberosWithContext:(id)context andDelegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v8 = SO_LOG_SOKerberosExtensionProcess(delegateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
  }

  if (([contextCopy requestCancelled] & 1) == 0)
  {
    v9 = [(SOKerberosExtensionProcess *)self checkSourceAppACLWithContext:contextCopy];
    if (v9)
    {
      userPrincipalName = [contextCopy userPrincipalName];
      if (!userPrincipalName)
      {
        [delegateCopy handleResult:2 context:contextCopy error:0];
LABEL_22:

        goto LABEL_23;
      }

      v11 = MEMORY[0x277CCACA8];
      hostName = [contextCopy hostName];
      v13 = [v11 stringWithFormat:@"HTTP@%@", hostName];
      [contextCopy setServicePrincipalName:v13];

      kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
      realm = [contextCopy realm];
      uppercaseString = [realm uppercaseString];
      v17 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

      v33 = 0;
      v34 = 0;
      v18 = [v17 attemptKerberosWithContext:contextCopy returningToken:&v34 orError:&v33];
      v19 = v34;
      v20 = v33;
      v21 = v20;
      if (v18 <= 5)
      {
        if ((v18 - 1) >= 3)
        {
          if (!v18)
          {
            v28 = SO_LOG_SOKerberosExtensionProcess(v20);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
            }

            [(SOKerberosExtensionProcess *)self completeRequestWithToken:v19 andContext:contextCopy];
            goto LABEL_21;
          }

          if (v18 == 4)
          {
            v26 = SO_LOG_SOKerberosExtensionProcess(v20);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
            }

            [(SOKerberosExtensionProcess *)self completeRequestWithHTTPResponseFromContext:contextCopy];
            goto LABEL_21;
          }

          goto LABEL_39;
        }
      }

      else
      {
        if (v18 <= 0x12)
        {
          if (((1 << v18) & 0x5BF00) != 0)
          {
            goto LABEL_19;
          }

          if (v18 == 14)
          {
            v32 = SO_LOG_SOKerberosExtensionProcess(v20);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:v21 andDelegate:?];
            }

            [contextCopy completeRequestWithError:v21];
            goto LABEL_21;
          }

          if (v18 == 17)
          {
            v22 = SO_LOG_SOKerberosExtensionProcess(v20);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:contextCopy andDelegate:?];
            }

            [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:contextCopy];
LABEL_35:
            [contextCopy completeRequestWithDoNotHandle];
            goto LABEL_21;
          }
        }

        if (v18 != 6)
        {
          if (v18 == 7)
          {
            v27 = SO_LOG_SOKerberosExtensionProcess(v20);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              [SOKerberosExtensionProcess attemptKerberosWithContext:v21 andDelegate:?];
            }

            if ([v21 code] == -116 || objc_msgSend(v21, "code") == -113)
            {
              goto LABEL_35;
            }

            v24 = delegateCopy;
            v25 = 7;
LABEL_20:
            [v24 handleResult:v25 context:contextCopy error:v21];
LABEL_21:

            goto LABEL_22;
          }

LABEL_39:
          v29 = SO_LOG_SOKerberosExtensionProcess(v20);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
          }

          unhandledKerberosResult = [MEMORY[0x277CCA9B8] unhandledKerberosResult];
          v31 = SO_LOG_SOKerberosExtensionProcess(unhandledKerberosResult);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosExtensionProcess attemptKerberosWithContext:andDelegate:];
          }

          [contextCopy completeRequestWithError:unhandledKerberosResult];
          goto LABEL_21;
        }
      }

LABEL_19:
      v24 = delegateCopy;
      v25 = v18;
      goto LABEL_20;
    }

    v23 = SO_LOG_SOKerberosExtensionProcess(v9);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosExtensionProcess handleKerberosOperations:andDelegate:];
    }

    [contextCopy completeRequestWithDoNotHandle];
  }

LABEL_23:
}

- (void)completeRequestWithToken:(id)token andContext:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tokenCopy = token;
  [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:contextCopy];
  v8 = [tokenCopy base64EncodedStringWithOptions:16];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Negotiate %@", v8];
  v10 = SO_LOG_SOKerberosExtensionProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess completeRequestWithToken:andContext:];
  }

  v12 = @"Authorization";
  v13[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [contextCopy completeRequestWithHeaders:v11];
}

- (void)completeRequestWithHTTPResponseFromContext:(id)context
{
  contextCopy = context;
  [(SOKerberosExtensionProcess *)self saveValuesAfterSuccessfulAuthentication:contextCopy];
  v5 = [(SOKerberosExtensionProcess *)self settingsForContext:contextCopy includeSiteCodeCache:0];
  v6 = SO_LOG_SOKerberosExtensionProcess(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosExtensionProcess handleGetRealmInfo:];
  }

  [contextCopy completeRequestWithHTTPResponseHeaders:v5];
}

- (void)saveValuesAfterSuccessfulAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  credentialUUID = [authenticationCopy credentialUUID];
  currentSettings = [authenticationCopy currentSettings];
  [currentSettings setCredentialUUID:credentialUUID];

  userPrincipalName = [authenticationCopy userPrincipalName];
  currentSettings2 = [authenticationCopy currentSettings];
  [currentSettings2 setUserPrincipalName:userPrincipalName];

  userName = [authenticationCopy userName];
  currentSettings3 = [authenticationCopy currentSettings];
  [currentSettings3 setUserName:userName];

  currentSettings4 = [authenticationCopy currentSettings];
  [currentSettings4 setUserCancelledLogin:0];

  currentSettings5 = [authenticationCopy currentSettings];
  [currentSettings5 setDateLoginCancelled:0];

  loginTimeStamp = [authenticationCopy loginTimeStamp];

  if (loginTimeStamp)
  {
    loginTimeStamp2 = [authenticationCopy loginTimeStamp];
    currentSettings6 = [authenticationCopy currentSettings];
    [currentSettings6 setDateLastLogin:loginTimeStamp2];
  }

  currentSettings7 = [authenticationCopy currentSettings];
  [currentSettings7 setDateUserSignedOut:0];

  currentSettings8 = [authenticationCopy currentSettings];
  [currentSettings8 setDelayUserSetupCleared:1];

  currentSettings9 = [authenticationCopy currentSettings];
  [currentSettings9 setPasswordChangeInProgress:0];

  extensionData = [authenticationCopy extensionData];
  if ([extensionData allowAutomaticLogin])
  {
    extensionUserData = [authenticationCopy extensionUserData];
    useKeychain = [extensionUserData useKeychain];

    if (!useKeychain)
    {
      goto LABEL_7;
    }

    pkinitPersistentRef = [authenticationCopy pkinitPersistentRef];
    currentSettings10 = [authenticationCopy currentSettings];
    [currentSettings10 setPkinitPersistentRef:pkinitPersistentRef];

    extensionData = [authenticationCopy certificateTokenID];
    currentSettings11 = [authenticationCopy currentSettings];
    [currentSettings11 setSmartCardTokenID:extensionData];
  }

LABEL_7:
  [(SOKerberosExtensionProcess *)self handleAddKeychainCreds:authenticationCopy];
}

- (void)handleAddKeychainCreds:(id)creds
{
  credsCopy = creds;
  extensionUserData = [credsCopy extensionUserData];
  useKeychain = [extensionUserData useKeychain];

  extensionData = [credsCopy extensionData];
  allowAutomaticLogin = [extensionData allowAutomaticLogin];

  if (([credsCopy credsCameFromKeychain] & 1) == 0 && allowAutomaticLogin && useKeychain)
  {
    keychainHelper = [(SOKerberosExtensionProcess *)self keychainHelper];
    serviceName = [credsCopy serviceName];
    userPrincipalName = [credsCopy userPrincipalName];
    password = [credsCopy password];
    extensionData2 = [credsCopy extensionData];
    [keychainHelper addCredentialsToKeychainWithService:serviceName withUsername:userPrincipalName withPassword:password requireUserPresence:{objc_msgSend(extensionData2, "requireUserPresence")}];
  }
}

- (id)mapKnownPasswordErrorToString:(id)string
{
  v29 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  userInfo = [stringCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kGSSMinorErrorCode"];

  v7 = SO_LOG_SOKerberosExtensionProcess(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v5;
    _os_log_impl(&dword_24006C000, v7, OS_LOG_TYPE_DEFAULT, "Password change error code: %@", &v27, 0xCu);
  }

  v9 = SO_LOG_SOKerberosExtensionProcess(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosExtensionProcess mapKnownPasswordErrorToString:];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLong:-1765328360];
  v11 = [v5 isEqualToNumber:v10];

  if (v11)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    userInfo2 = mainBundle;
    v14 = @"PASSWORD_CHANGE_PASSWORD_CHANGE_FAILED_OLD_PASSWORD_ALERT_TEXT";
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLong:-1765328353];
    v16 = [v5 isEqualToNumber:v15];

    if (v16)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      userInfo2 = mainBundle;
      v14 = @"PASSWORD_CHANGE_PASSWORD_CHANGE_FAILED_SERVER_ALERT_TEXT";
    }

    else
    {
      v17 = [MEMORY[0x277CCABB0] numberWithLong:-1765328228];
      v18 = [v5 isEqualToNumber:v17];

      if (v18)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        userInfo2 = mainBundle;
        v14 = @"KDC_UNREACHABLE";
      }

      else
      {
        v19 = [MEMORY[0x277CCABB0] numberWithLong:-1765328343];
        v20 = [v5 isEqualToNumber:v19];

        if (v20)
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          userInfo2 = mainBundle;
          v14 = @"REALM_CASE_MISMATCH";
        }

        else
        {
          v21 = [MEMORY[0x277CCABB0] numberWithLong:-1765328160];
          v22 = [v5 isEqualToNumber:v21];

          if (!v22)
          {
            userInfo2 = [stringCopy userInfo];
            v25 = [userInfo2 objectForKeyedSubscript:@"NSDescription"];
            if (v25)
            {
              userInfo3 = [stringCopy userInfo];
              localizedDescription = [userInfo3 objectForKeyedSubscript:@"NSDescription"];
            }

            else
            {
              localizedDescription = [stringCopy localizedDescription];
            }

            goto LABEL_16;
          }

          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          userInfo2 = mainBundle;
          v14 = @"DEFAULT_REALM_MISSING";
        }
      }
    }
  }

  localizedDescription = [mainBundle localizedStringForKey:v14 value:&stru_285206D08 table:0];
LABEL_16:

  return localizedDescription;
}

- (id)kerberosForRealm:(id)realm
{
  realmCopy = realm;
  kerberosByRealm = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  uppercaseString = [realmCopy uppercaseString];
  v7 = [kerberosByRealm objectForKeyedSubscript:uppercaseString];

  if (!v7)
  {
    v9 = SO_LOG_SOKerberosExtensionProcess(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SOKerberosExtensionProcess kerberosForRealm:];
    }

    v10 = [SOKerberosAuthentication alloc];
    uppercaseString2 = [realmCopy uppercaseString];
    v12 = [(SOKerberosAuthentication *)v10 initWithRealm:uppercaseString2];
    kerberosByRealm2 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
    uppercaseString3 = [realmCopy uppercaseString];
    [kerberosByRealm2 setObject:v12 forKeyedSubscript:uppercaseString3];
  }

  kerberosByRealm3 = [(SOKerberosExtensionProcess *)self kerberosByRealm];
  uppercaseString4 = [realmCopy uppercaseString];
  v17 = [kerberosByRealm3 objectForKeyedSubscript:uppercaseString4];

  return v17;
}

void __45__SOKerberosExtensionProcess_handleMigration__block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[SOKerberosExtensionProcess handleMigration]_block_invoke";
  v6 = 1024;
  v7 = a2;
  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "%s Stored version: %d on %@", &v4, 0x1Cu);
}

- (void)beginAuthorizationWithRequest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 realm];
  v5 = [a1 requestedOperation];
  v6 = 138412802;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "******************* beginAuthorizationWithRequest: %@, realm: %@, operation: %@", &v6, 0x20u);
}

- (void)beginAuthorizationWithRequest:.cold.2()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [SOKerberosExtensionProcess cancelAuthorizationWithRequest:];
}

- (void)cancelAuthorizationWithRequest:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cancelAuthorizationWithRequest:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 requestContextMapping];
  [v1 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)cancelAuthorizationWithRequest:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.2(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleKerberosOperations:andDelegate:.cold.3()
{
  v0 = [MEMORY[0x277CCA9B8] sourceAppNotAllowed];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(v1, v2, v3, v4, v5);
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.4(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleKerberosOperations:(void *)a1 andDelegate:.cold.5(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleGetSiteCode:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleGetSiteCode:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleGetSiteCode:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleGetSiteCode:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleRemoveRealm:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleRemoveRealm:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleLogoutWithContext:(void *)a1 removeRealm:.cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleLogout:(void *)a1 removeRealm:.cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)handleLogout:removeRealm:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)destroyCredentialsWithContext:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)destroyCredentialsWithContext:.cold.2()
{
  v0 = [MEMORY[0x277CCA9B8] sourceAppNotAllowed];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(v1, v2, v3, v4, v5);
}

- (void)destroyCredentialsWithContext:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)destroyCredentialsWithContext:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 userPrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleResetKeychainChoice:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleResetKeychainChoice:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleGetRealmInfo:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleGetRealmInfo:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleGetRealmInfo:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)checkSourceAppACLWithContext:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 callerBundleIdentifier];
  v3 = [a1 extensionData];
  v9 = [v3 credentialBundleIdACL];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)checkSourceAppACLWithContext:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createContextForRequest:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)createContextForRequest:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 extensionData];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_6(v2, v3, v4, v5, v6);
}

- (void)createContextForRequest:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createContextForRequest:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createContextForRequest:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:andDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:(void *)a1 andDelegate:.cold.3(void *a1)
{
  v1 = [a1 servicePrincipalName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)attemptKerberosWithContext:(void *)a1 andDelegate:.cold.4(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)attemptKerberosWithContext:(void *)a1 andDelegate:.cold.5(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)attemptKerberosWithContext:andDelegate:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attemptKerberosWithContext:andDelegate:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)completeRequestWithToken:andContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)kerberosForRealm:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end