@interface POAgentCoreProcess
- (BOOL)verifyAgentEntitlement;
- (BOOL)verifyLoginUserEntitlement;
- (BOOL)verifyPasswordChangeEntitlement;
- (BOOL)verifySecurityEntitlement;
- (POAgentCoreProcess)initWithXPCConnection:(id)connection identifierProvider:(id)provider jwksStroageProvider:(id)stroageProvider;
- (void)_verifyLogin:(id)login passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id deviceConfiguration:(id)configuration loginConfiguration:(id)loginConfiguration forAuthorization:(BOOL)authorization completion:(id)self0;
- (void)connectionInvalidated;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)verifyAgentEntitlement;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
- (void)verifyPasswordUser:(id)user passwordContext:(id)context completion:(id)completion;
@end

@implementation POAgentCoreProcess

- (POAgentCoreProcess)initWithXPCConnection:(id)connection identifierProvider:(id)provider jwksStroageProvider:(id)stroageProvider
{
  connectionCopy = connection;
  providerCopy = provider;
  stroageProviderCopy = stroageProvider;
  v11 = PO_LOG_POAgentCoreProcess(stroageProviderCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [POAgentCoreProcess initWithXPCConnection:connectionCopy identifierProvider:self jwksStroageProvider:v11];
  }

  v22.receiver = self;
  v22.super_class = POAgentCoreProcess;
  v12 = [(POAgentCoreProcess *)&v22 init];
  if (v12)
  {
    v13 = objc_alloc_init(POAuthenticationProcess);
    authenticationProcess = v12->_authenticationProcess;
    v12->_authenticationProcess = v13;

    [(POAuthenticationProcess *)v12->_authenticationProcess setWaitForConnectivity:1];
    [(POAuthenticationProcess *)v12->_authenticationProcess setTimeoutIntervalForResource:15.0];
    objc_storeWeak(&v12->_xpcConnection, connectionCopy);
    objc_storeStrong(&v12->_userIdentifierProvider, provider);
    objc_storeStrong(&v12->_jwksStorageProvider, stroageProvider);
    v15 = [[POTokenHelper alloc] initWithIdentifierProvider:v12->_userIdentifierProvider];
    tokenHelper = v12->_tokenHelper;
    v12->_tokenHelper = v15;

    v17 = objc_alloc_init(POKeychainHelper);
    keychainHelper = v12->_keychainHelper;
    v12->_keychainHelper = v17;

    v12->_callerUid = [connectionCopy effectiveUserIdentifier];
  }

  if ([(POAgentCoreProcess *)v12 verifyAgentEntitlement]|| [(POAgentCoreProcess *)v12 verifyLoginUserEntitlement]|| [(POAgentCoreProcess *)v12 verifyPasswordChangeEntitlement]|| [(POAgentCoreProcess *)v12 verifySecurityEntitlement])
  {
    v19 = v12;
  }

  else
  {
    v21 = __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke();
    v19 = 0;
  }

  return v19;
}

id __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke()
{
  v0 = [POError errorWithCode:-1002 description:@"missing required entitlement"];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)verifyAgentEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.agent"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
    if (bOOLValue)
    {
      goto LABEL_6;
    }
  }

  if (verifyAgentEntitlement_sOnce != -1)
  {
    [POAgentCoreProcess verifyAgentEntitlement];
  }

  if (verifyAgentEntitlement_agentEntitlement)
  {
LABEL_6:
    v5 = 1;
  }

  else
  {
    v6 = PO_LOG_POAgentCoreProcess(bOOLValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v5 = 0;
  }

  return v5;
}

void __44__POAgentCoreProcess_verifyAgentEntitlement__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.platformsso.agent", 0);
    CFRelease(v1);
    if (v2)
    {
      v3 = CFGetTypeID(v2);
      if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2))
      {
        CFRelease(v2);
        verifyAgentEntitlement_agentEntitlement = 1;
      }

      else
      {

        CFRelease(v2);
      }
    }
  }
}

- (BOOL)verifySecurityEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.security"];

  if (v3 && (v4 = [v3 BOOLValue], (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = PO_LOG_POAgentCoreProcess(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)verifyLoginUserEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.loginuser"];

  if (v3 && (v4 = [v3 BOOLValue], (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = PO_LOG_POAgentCoreProcess(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)verifyPasswordChangeEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.passwordchange"];

  if (v3 && (v4 = [v3 BOOLValue], (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = PO_LOG_POAgentCoreProcess(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v5 = 0;
  }

  return v5;
}

- (void)connectionInvalidated
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentCoreProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[POAgentCoreProcess connectionInvalidated]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if (![(POAgentCoreProcess *)self verifyAgentEntitlement]&& ![(POAgentCoreProcess *)self verifyPasswordChangeEntitlement])
  {
    v11 = __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke();
    completionCopy[2](completionCopy, 0, v11);
LABEL_18:

    goto LABEL_19;
  }

  v8 = +[POCoreConfigurationUtil platformSSOEnabled];
  if (v8)
  {
    v9 = [POConfigurationCoreManager alloc];
    userIdentifierProvider = [(POAgentCoreProcess *)self userIdentifierProvider];
    v11 = [(POConfigurationCoreManager *)v9 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:0];

    v13 = PO_LOG_POAgentCoreProcess(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(POAgentCoreProcess *)userCopy getLoginTypeForUser:v13 completion:?];
    }

    currentUserConfiguration = [(POConfigurationCoreManager *)v11 currentUserConfiguration];
    v15 = currentUserConfiguration;
    if (currentUserConfiguration)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, [currentUserConfiguration loginType], 0);
      }
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __53__POAgentCoreProcess_getLoginTypeForUser_completion___block_invoke_24;
      v18[3] = &unk_279A3DC48;
      v19 = userCopy;
      v17 = __53__POAgentCoreProcess_getLoginTypeForUser_completion___block_invoke_24(v18);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v17);
      }
    }

    goto LABEL_18;
  }

  v16 = PO_LOG_POAgentCoreProcess(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [POAgentCoreProcess getLoginTypeForUser:completion:];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_19:
}

id __53__POAgentCoreProcess_getLoginTypeForUser_completion___block_invoke_24(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 description:@"No user configuration for user."];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentCoreProcess(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = [POCredentialUtil maskName:loginCopy];
    *buf = 136315906;
    v31 = "[POAgentCoreProcess verifyPasswordLogin:passwordContext:completion:]";
    v32 = 2114;
    v33 = v22;
    v34 = 2114;
    v35 = contextCopy;
    v36 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationCoreManager alloc];
  userIdentifierProvider = [(POAgentCoreProcess *)self userIdentifierProvider];
  v14 = [(POConfigurationCoreManager *)v12 initWithUserName:0 identifierProvider:userIdentifierProvider sharedOnly:1];

  currentDeviceConfiguration = [(POConfigurationCoreManager *)v14 currentDeviceConfiguration];
  if (currentDeviceConfiguration)
  {
    currentLoginConfiguration = [(POConfigurationCoreManager *)v14 currentLoginConfiguration];
    if (currentLoginConfiguration)
    {
      v17 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy];
      v18 = [POCredentialUtil passwordDataFromContext:v17 error:0];
      v19 = v18;
      if (v18 && [v18 length])
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_45;
        v24[3] = &unk_279A3E3E0;
        v27 = completionCopy;
        v25 = currentDeviceConfiguration;
        v26 = v17;
        LOBYTE(v23) = 1;
        v20 = &v27;
        [(POAgentCoreProcess *)self _verifyLogin:loginCopy passwordContext:contextCopy smartCardContext:0 tokenId:0 deviceConfiguration:v25 loginConfiguration:currentLoginConfiguration forAuthorization:v23 completion:v24];

        v21 = v25;
      }

      else
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_41;
        v28[3] = &unk_279A3DC48;
        v20 = &v29;
        v29 = loginCopy;
        v21 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_41(v28);
        (*(completionCopy + 2))(completionCopy, 2, v21);
      }
    }

    else
    {
      v17 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_34();
      (*(completionCopy + 2))(completionCopy, 2, v17);
    }
  }

  else
  {
    currentLoginConfiguration = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, currentLoginConfiguration);
  }
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"No device configuration."];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_34()
{
  v0 = [POError errorWithCode:-1004 description:@"No login configuration."];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_41(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"no credential for user for login"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

void __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_45(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a3;
  v11 = a7;
  if (a2 == 1)
  {
    v12 = SecKeyCopyPublicKey([*(a1 + 32) deviceEncryptionKey]);
    if (v12)
    {
      v13 = v12;
      v14 = [POCredentialUtil passwordDataFromContext:*(a1 + 40) error:0];
      v18 = 0;
      v15 = [POCredentialUtil encryptPendingSSOTokens:v10 usingPublicKey:v13 sharedData:v14 encryptedTokens:&v18];
      v16 = v18;
      memset_s([v14 mutableBytes], objc_msgSend(v14, "length"), 0, objc_msgSend(v14, "length"));
      if (v15)
      {
        CFRelease(v13);
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v17 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_51();
        CFRelease(v13);
        (*(*(a1 + 48) + 16))();

        v16 = v17;
      }
    }

    else
    {
      v14 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_2();
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to get public key for encrypting tokens"];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_51()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to encrypt login tokens"];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)verifyPasswordUser:(id)user passwordContext:(id)context completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  userCopy = user;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentCoreProcess(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = [POCredentialUtil maskName:userCopy];
    *buf = 136315906;
    v36 = "[POAgentCoreProcess verifyPasswordUser:passwordContext:completion:]";
    v37 = 2114;
    v38 = v22;
    v39 = 2114;
    v40 = contextCopy;
    v41 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationCoreManager alloc];
  userIdentifierProvider = [(POAgentCoreProcess *)self userIdentifierProvider];
  v14 = [(POConfigurationCoreManager *)v12 initWithUserName:userCopy identifierProvider:userIdentifierProvider sharedOnly:1];

  currentDeviceConfiguration = [(POConfigurationCoreManager *)v14 currentDeviceConfiguration];
  if (currentDeviceConfiguration)
  {
    currentLoginConfiguration = [(POConfigurationCoreManager *)v14 currentLoginConfiguration];
    if (currentLoginConfiguration)
    {
      currentUserConfiguration = [(POConfigurationCoreManager *)v14 currentUserConfiguration];
      if (currentUserConfiguration)
      {
        v18 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy];
        v19 = [POCredentialUtil passwordDataFromContext:v18 error:0];
        v20 = v19;
        if (v19 && [v19 length])
        {
          userLoginConfiguration = [currentUserConfiguration userLoginConfiguration];
          loginUserName = [userLoginConfiguration loginUserName];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_73;
          v27[3] = &unk_279A3E408;
          v26 = &v32;
          v32 = completionCopy;
          v28 = v14;
          v29 = userCopy;
          v30 = currentDeviceConfiguration;
          v31 = v18;
          LOBYTE(v23) = 1;
          [(POAgentCoreProcess *)self _verifyLogin:loginUserName passwordContext:contextCopy smartCardContext:0 tokenId:0 deviceConfiguration:v30 loginConfiguration:currentLoginConfiguration forAuthorization:v23 completion:v27];

          v21 = v28;
        }

        else
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_69;
          v33[3] = &unk_279A3DC48;
          v26 = &v34;
          v34 = userCopy;
          v21 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_69(v33);
          (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, v21);
        }
      }

      else
      {
        v18 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_63();
        (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, v18);
      }
    }

    else
    {
      currentUserConfiguration = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_34();
      (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, currentUserConfiguration);
    }
  }

  else
  {
    currentLoginConfiguration = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, currentLoginConfiguration);
  }
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_63()
{
  v0 = [POError errorWithCode:-1004 description:@"No user configuration."];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_69(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"no credential for user"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

void __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_73(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a2 == 1)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [MEMORY[0x277CBEAA8] date];
    [v18 updateLoginStateForUserName:v19 state:0 loginDate:v20 loginType:1];

    v21 = SecKeyCopyPublicKey([*(a1 + 48) deviceEncryptionKey]);
    if (!v21)
    {
      v23 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_2();
      (*(*(a1 + 64) + 16))();
LABEL_14:

      goto LABEL_15;
    }

    v22 = v21;
    v30 = v15;
    v31 = v14;
    v23 = [POCredentialUtil passwordDataFromContext:*(a1 + 56) error:0];
    v32 = 0;
    v24 = [POCredentialUtil encryptPendingSSOTokens:v13 usingPublicKey:v22 sharedData:v23 encryptedTokens:&v32];
    v25 = v32;
    memset_s([v23 mutableBytes], objc_msgSend(v23, "length"), 0, objc_msgSend(v23, "length"));
    if (v24)
    {
      CFRelease(v22);
      v26 = v25;
      if ([*(a1 + 32) savePendingSSOTokens:v25 forUserName:*(a1 + 40)])
      {
        v15 = v30;
        v14 = v31;
        if ([*(a1 + 32) isTemporaryAccountUserName:*(a1 + 40)] & 1) != 0 || (objc_msgSend(*(a1 + 32), "saveStashedSSOTokens:forUserName:", v26, *(a1 + 40)))
        {
          (*(*(a1 + 64) + 16))();
        }

        else
        {
          v29 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_86();
          (*(*(a1 + 64) + 16))();
        }

        goto LABEL_13;
      }

      v28 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_80();
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v27 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_51();
      CFRelease(v22);
      (*(*(a1 + 64) + 16))();

      v26 = v25;
    }

    v15 = v30;
    v14 = v31;
LABEL_13:

    goto LABEL_14;
  }

  (*(*(a1 + 64) + 16))();
LABEL_15:
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_80()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to save login tokens"];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_86()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to stash login tokens"];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_verifyLogin:(id)login passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id deviceConfiguration:(id)configuration loginConfiguration:(id)loginConfiguration forAuthorization:(BOOL)authorization completion:(id)self0
{
  v122 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  contextCopy = context;
  cardContextCopy = cardContext;
  idCopy = id;
  configurationCopy = configuration;
  loginConfigurationCopy = loginConfiguration;
  completionCopy = completion;
  v23 = PO_LOG_POAgentCoreProcess(completionCopy);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [POCredentialUtil maskName:loginCopy];
    v74 = loginCopy;
    v65 = loginConfigurationCopy;
    v67 = v66 = configurationCopy;
    *buf = 136316418;
    *&buf[4] = "[POAgentCoreProcess _verifyLogin:passwordContext:smartCardContext:tokenId:deviceConfiguration:loginConfiguration:forAuthorization:completion:]";
    v112 = 2114;
    v113 = v67;
    v114 = 2114;
    v115 = contextCopy;
    v116 = 2114;
    v117 = cardContextCopy;
    v118 = 2114;
    v119 = idCopy;
    v120 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E8B1000, v23, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@, smartcardContext = %{public}@, tokenId = %{public}@ on %@", buf, 0x3Eu);

    configurationCopy = v66;
    loginConfigurationCopy = v65;
    loginCopy = v74;
  }

  if ([(POAgentCoreProcess *)self verifyAgentEntitlement])
  {
    v24 = objc_alloc_init(POAuthenticationProcess);
    v85 = cardContextCopy;
    if (!contextCopy || cardContextCopy)
    {
      v37 = [POTokenHelper tokenIsAccessKey:idCopy];
      if (v37)
      {
        v78 = loginConfigurationCopy;
        v38 = PO_LOG_POAgentCoreProcess(v37);
        v39 = os_signpost_id_generate(v38);

        v41 = PO_LOG_POAgentCoreProcess(v40);
        v42 = v41;
        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E8B1000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v39, "PlatformSSO_AccessKeyAuth", " enableTelemetry=YES ", buf, 2u);
        }

        v71 = v39;

        *buf = 92;
        v43 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:cardContextCopy userSession:buf];
        v104 = 0;
        v75 = [objc_alloc(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:v43];
        v44 = [v75 dataForKey:26 error:&v104];
        v45 = v104;
        [v43 invalidate];
        v81 = configurationCopy;
        if (v44)
        {
          v84 = v45;
          v46 = [(POAuthenticationProcess *)v24 createAuthenticationContextUsingLoginConfiguration:v78 deviceConfiguration:configurationCopy userName:loginCopy resumeData:v44];
          jwksStorageProvider = [(POAgentCoreProcess *)self jwksStorageProvider];
          [v46 setJwksStorageProvider:jwksStorageProvider];

          [v46 addRequiredScope:@"profile"];
          if (authorization)
          {
            additionalAuthorizationScopes = [v78 additionalAuthorizationScopes];
            [v46 addRequiredScope:additionalAuthorizationScopes];
          }

          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_115;
          v98[3] = &unk_279A3E430;
          v101 = v71;
          v99 = v24;
          v100 = completionCopy;
          [(POAuthenticationProcess *)v99 completeAccessTokenLoginUsingContext:v46 completion:v98];

          v45 = v84;
        }

        else
        {
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_111;
          v102[3] = &unk_279A3DC48;
          v103 = v45;
          v68 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_111(v102);
          (*(completionCopy + 2))(completionCopy, 3, 0, 0, 0, 0, v68);

          v46 = v103;
        }

        loginConfigurationCopy = v78;
        configurationCopy = v81;
        goto LABEL_43;
      }

      if (!cardContextCopy || !idCopy)
      {
        v45 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_133();
        (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, v45);
        goto LABEL_43;
      }

      v97 = 0;
      v79 = objc_alloc_init(MEMORY[0x277CD4790]);
      [v79 setInteractionNotAllowed:1];
      v96 = 0;
      v76 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:cardContextCopy userSession:&v97];
      v50 = [POCredentialUtil passwordDataFromContext:"passwordDataFromContext:error:" error:?];
      v83 = 0;
      if (v50)
      {
        v82 = configurationCopy;
        [v79 setCredential:v50 type:-3];
        v72 = v50;
        memset_s([v50 mutableBytes], objc_msgSend(v50, "length"), 0, objc_msgSend(v50, "length"));
        *buf = 0;
        v93 = 0;
        tokenHelper = [(POAgentCoreProcess *)self tokenHelper];
        v52 = [tokenHelper retrieveCertAndKeyForTokenId:idCopy context:v79 certificate:&v93 privateKey:buf];

        v73 = loginCopy;
        if (v52 & 1) != 0 || (-[POAgentCoreProcess keychainHelper](self, "keychainHelper"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 retrieveCertAndKeyForTokenId:idCopy context:v79 forSigning:1 hash:0 certificate:&v93 privateKey:buf], v54, (v55))
        {
          v56 = PO_LOG_POAgentCoreProcess(v53);
          v57 = os_signpost_id_generate(v56);

          v59 = PO_LOG_POAgentCoreProcess(v58);
          v60 = v59;
          if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
          {
            *v90 = 0;
            _os_signpost_emit_with_name_impl(&dword_25E8B1000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v57, "PlatformSSO_SmartCardAuth", " enableTelemetry=YES ", v90, 2u);
          }

          v61 = loginConfigurationCopy;
          v62 = [(POAuthenticationProcess *)v24 createAuthenticationContextUsingLoginConfiguration:loginConfigurationCopy deviceConfiguration:v82 userName:v73];
          [v62 setEmbeddedAssertionSigningKey:*buf];
          [v62 setEmbeddedAssertionCertificate:v93];
          jwksStorageProvider2 = [(POAgentCoreProcess *)self jwksStorageProvider];
          [v62 setJwksStorageProvider:jwksStorageProvider2];

          [v62 addRequiredScope:@"profile"];
          if (authorization)
          {
            additionalAuthorizationScopes2 = [v61 additionalAuthorizationScopes];
            [v62 addRequiredScope:additionalAuthorizationScopes2];
          }

          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_128;
          v86[3] = &unk_279A3E430;
          v89 = v57;
          v87 = v24;
          v88 = completionCopy;
          [(POAuthenticationProcess *)v87 performSmartCardLoginUsingContext:v62 completion:v86];
        }

        else
        {
          v61 = loginConfigurationCopy;
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_124;
          v91[3] = &unk_279A3DC48;
          v92 = idCopy;
          v70 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_124(v91);
          (*(completionCopy + 2))(completionCopy, 3, 0, 0, 0, 0, v70);

          v62 = v92;
        }

        configurationCopy = v82;
        v45 = v83;

        loginConfigurationCopy = v61;
        loginCopy = v73;
        goto LABEL_43;
      }

      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_120;
      v94[3] = &unk_279A3DC48;
      v95 = loginCopy;
      v69 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_120(v94);
      (*(completionCopy + 2))(completionCopy, 3, 0, 0, 0, 0, v69);
    }

    else
    {
      v77 = idCopy;
      v25 = loginConfigurationCopy;
      v83 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy];
      v26 = [POCredentialUtil passwordDataFromContext:"passwordDataFromContext:error:" error:?];
      v27 = v26;
      if (v26 && (v28 = [v26 length]) != 0)
      {
        v80 = configurationCopy;
        v29 = PO_LOG_POAgentCoreProcess(v28);
        v30 = os_signpost_id_generate(v29);

        v32 = PO_LOG_POAgentCoreProcess(v31);
        v33 = v32;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E8B1000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v30, "PlatformSSO_PasswordAuth", " enableTelemetry=YES ", buf, 2u);
        }

        v34 = [(POAuthenticationProcess *)v24 createAuthenticationContextUsingLoginConfiguration:v25 deviceConfiguration:v80 userName:loginCopy];
        [v34 setPassword:v27];
        jwksStorageProvider3 = [(POAgentCoreProcess *)self jwksStorageProvider];
        [v34 setJwksStorageProvider:jwksStorageProvider3];

        [v34 addRequiredScope:@"profile"];
        if (authorization)
        {
          additionalAuthorizationScopes3 = [v25 additionalAuthorizationScopes];
          [v34 addRequiredScope:additionalAuthorizationScopes3];
        }

        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_101;
        v105[3] = &unk_279A3E430;
        v108 = v30;
        v106 = v24;
        v107 = completionCopy;
        [(POAuthenticationProcess *)v106 performPasswordLoginUsingContext:v34 completion:v105];

        configurationCopy = v80;
      }

      else
      {
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94;
        v109[3] = &unk_279A3DC48;
        v110 = loginCopy;
        v49 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94(v109);
        (*(completionCopy + 2))(completionCopy, 3, 0, 0, 0, 0, v49);
      }

      loginConfigurationCopy = v25;
      idCopy = v77;
    }

    v45 = v83;
LABEL_43:

    cardContextCopy = v85;
    goto LABEL_44;
  }

  v24 = __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke();
  (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, v24);
LABEL_44:
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Missing password credential for user."];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94_cold_1();
  }

  return v1;
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_101(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentCoreProcess(v8);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_PasswordAuth", "", buf, 2u);
  }

  v12 = [POConstantCoreUtil stringForLoginType:1];
  v13 = [POConstantCoreUtil stringForLoginResult:a2];
  [POAnalytics analyticsForLoginType:v12 result:v13];

  if ((a2 - 2) >= 5 && a2)
  {
    if (a2 == 1)
    {
      v19 = PO_LOG_POAgentCoreProcess(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v19, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
      }

      v20 = a1[4];
      v21 = [v7 loginConfiguration];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      [v20 extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:v21 tokens:v8 returningGroups:&v26 identifier:&v25 refreshToken:&v24];
      v18 = v26;
      v17 = v25;
      v16 = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v22 = a1[5];
    if (v22)
    {
      (*(v22 + 16))(v22, 1, v8, v17, v18, v16, 0);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104;
    v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v23[4] = a2;
    v15 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104(v23);
    (*(a1[5] + 16))();

    v16 = 0;
    v17 = 0;
    v18 = 0;
  }
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Password login failed"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v1;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_111(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 underlyingError:*(a1 + 32) description:@"Failed to retrieve auth data"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_115(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentCoreProcess(v8);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_AccessKeyAuth", "", buf, 2u);
  }

  v12 = [POConstantCoreUtil stringForLoginType:4];
  v13 = [POConstantCoreUtil stringForLoginResult:a2];
  [POAnalytics analyticsForLoginType:v12 result:v13];

  if ((a2 - 2) >= 5 && a2)
  {
    if (a2 == 1)
    {
      v19 = PO_LOG_POAgentCoreProcess(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v19, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
      }

      v20 = a1[4];
      v21 = [v7 loginConfiguration];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      [v20 extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:v21 tokens:v8 returningGroups:&v26 identifier:&v25 refreshToken:&v24];
      v18 = v26;
      v17 = v25;
      v16 = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v22 = a1[5];
    if (v22)
    {
      (*(v22 + 16))(v22, 1, v8, v17, v18, v16, 0);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_116;
    v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v23[4] = a2;
    v15 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_116(v23);
    (*(a1[5] + 16))();

    v16 = 0;
    v17 = 0;
    v18 = 0;
  }
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_116(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Access key login failed"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v1;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_120(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Missing SmartCard credential for user"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94_cold_1();
  }

  return v1;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_124(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to find smartcard."];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1();
  }

  return v1;
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_128(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentCoreProcess(v8);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_SmartCardAuth", "", buf, 2u);
  }

  v12 = [POConstantCoreUtil stringForLoginType:1];
  v13 = [POConstantCoreUtil stringForLoginResult:a2];
  [POAnalytics analyticsForLoginType:v12 result:v13];

  if ((a2 - 2) >= 5 && a2)
  {
    if (a2 == 1)
    {
      v19 = PO_LOG_POAgentCoreProcess(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v19, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
      }

      v20 = a1[4];
      v21 = [v7 loginConfiguration];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      [v20 extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:v21 tokens:v8 returningGroups:&v26 identifier:&v25 refreshToken:&v24];
      v18 = v26;
      v17 = v25;
      v16 = v24;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v22 = a1[5];
    if (v22)
    {
      (*(v22 + 16))(v22, 1, v8, v17, v18, v16, 0);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_129;
    v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v23[4] = a2;
    v15 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_129(v23);
    (*(a1[5] + 16))();

    v16 = 0;
    v17 = 0;
    v18 = 0;
  }
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_129(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"SmartCard login failed"];
  v2 = PO_LOG_POAgentCoreProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v1;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_133()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid login request."];
  v1 = PO_LOG_POAgentCoreProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)initWithXPCConnection:(void *)a1 identifierProvider:(uint64_t)a2 jwksStroageProvider:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 136315906;
  v7 = "[POAgentCoreProcess initWithXPCConnection:identifierProvider:jwksStroageProvider:]";
  v8 = 1026;
  v9 = [a1 auditSessionIdentifier];
  v10 = 1026;
  v11 = [a1 effectiveUserIdentifier];
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_DEBUG, "%s asid= %{public}d, euid= %{public}d on %@", &v6, 0x22u);
}

- (void)verifyAgentEntitlement
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getLoginTypeForUser:(os_log_t)log completion:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[POAgentCoreProcess getLoginTypeForUser:completion:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_25E8B1000, log, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@ on %@", &v3, 0x20u);
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [POCredentialUtil maskName:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7);
}

@end