@interface POAgentProcess
- (BOOL)verifyAgentEntitlement;
- (BOOL)verifyLoginUserEntitlement;
- (BOOL)verifyPasswordChangeEntitlement;
- (POAgentProcess)initWithAuthenticationProcess:(id)process;
- (POAgentProcess)initWithXPCConnection:(id)connection authenticationProcess:(id)process;
- (POAuthPluginProcess)systemAuthPluginProcess;
- (void)_saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion;
- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed completion:(id)completion;
- (void)connectionInvalidated;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion;
- (void)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion;
- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion;
- (void)screenDidUnlockWithCredentialContext:(id)context smartCardContext:(id)cardContext biometricContext:(id)biometricContext tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock completion:(id)completion;
- (void)updateLocalAccountPassword:(id)password passwordContext:(id)context completion:(id)completion;
- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion;
- (void)updateRegistrationState:(id)state failed:(BOOL)failed completion:(id)completion;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
@end

@implementation POAgentProcess

- (POAgentProcess)initWithXPCConnection:(id)connection authenticationProcess:(id)process
{
  connectionCopy = connection;
  processCopy = process;
  v8 = PO_LOG_POAgentProcess(processCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(POAgentProcess *)connectionCopy initWithXPCConnection:v8 authenticationProcess:?];
  }

  v9 = objc_alloc_init(PODirectoryServices);
  v10 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
  v21.receiver = self;
  v21.super_class = POAgentProcess;
  v11 = [(POAgentCoreProcess *)&v21 initWithXPCConnection:connectionCopy identifierProvider:v9 jwksStroageProvider:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_xpcConnection, connectionCopy);
    objc_storeStrong(&v11->_process, process);
    objc_storeStrong(&v11->_directoryServices, v9);
    v12 = objc_alloc_init(MEMORY[0x277D3D210]);
    keyWrap = v11->_keyWrap;
    v11->_keyWrap = v12;

    v14 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v11->_keychainHelper;
    v11->_keychainHelper = v14;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v11->_distributedNotificationCenter;
    v11->_distributedNotificationCenter = defaultCenter;
  }

  if ([(POAgentProcess *)v11 verifyAgentEntitlement]|| [(POAgentProcess *)v11 verifyLoginUserEntitlement]|| [(POAgentProcess *)v11 verifyPasswordChangeEntitlement])
  {
    v18 = v11;
  }

  else
  {
    v20 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    v18 = 0;
  }

  return v18;
}

id __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1002 description:@"missing required entitlement"];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (POAgentProcess)initWithAuthenticationProcess:(id)process
{
  processCopy = process;
  v5 = PO_LOG_POAgentProcess(processCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POAgentProcess *)self initWithAuthenticationProcess:v5];
  }

  v6 = [(POAgentProcess *)self initWithXPCConnection:0 authenticationProcess:processCopy];
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
    [POAgentProcess verifyAgentEntitlement];
  }

  if (verifyAgentEntitlement_agentEntitlement)
  {
LABEL_6:
    v5 = 1;
  }

  else
  {
    v6 = PO_LOG_POAgentProcess(bOOLValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentProcess verifyAgentEntitlement];
    }

    v5 = 0;
  }

  return v5;
}

void __40__POAgentProcess_verifyAgentEntitlement__block_invoke()
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
    v6 = PO_LOG_POAgentProcess(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentProcess verifyAgentEntitlement];
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
    v6 = PO_LOG_POAgentProcess(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [POAgentProcess verifyAgentEntitlement];
    }

    v5 = 0;
  }

  return v5;
}

- (void)connectionInvalidated
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentProcess(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[POAgentProcess connectionInvalidated]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if (![(POAgentProcess *)self verifyAgentEntitlement]&& ![(POAgentProcess *)self verifyPasswordChangeEntitlement])
  {
    v9 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v9);
LABEL_18:

    goto LABEL_19;
  }

  v8 = +[POConfigurationUtil platformSSOEnabled];
  if (v8)
  {
    v9 = [[POConfigurationManager alloc] initWithUserName:userCopy];
    v10 = PO_LOG_POAgentProcess(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(POAgentProcess *)userCopy getLoginTypeForUser:v10 completion:?];
    }

    currentUserConfiguration = [(POConfigurationManager *)v9 currentUserConfiguration];
    v12 = currentUserConfiguration;
    if (currentUserConfiguration)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, [currentUserConfiguration loginType], 0);
      }
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24;
      v15[3] = &unk_279A3A088;
      v16 = userCopy;
      v14 = __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24(v15);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v14);
      }
    }

    goto LABEL_18;
  }

  v13 = PO_LOG_POAgentProcess(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [POAgentProcess getLoginTypeForUser:completion:];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_19:
}

id __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration for user."];
  v2 = PO_LOG_POAgentProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1();
  }

  return v1;
}

- (void)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion
{
  passwordCopy = password;
  v86 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  v16 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v40 = [MEMORY[0x277CCABB0] numberWithBool:passwordCopy];
    *buf = 136316162;
    v77 = "[POAgentProcess performPasswordLogin:loginUserName:passwordContext:updateLocalAccountPassword:completion:]";
    v78 = 2114;
    v79 = loginCopy;
    v80 = 2114;
    v81 = contextCopy;
    v82 = 2114;
    v83 = v40;
    v84 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E831000, v16, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@, passwordContext = %{public}@, updateLocalAccountPassword = %{public}@ on %@", buf, 0x34u);
  }

  if ([(POAgentProcess *)self verifyAgentEntitlement])
  {
    v17 = [[POConfigurationManager alloc] initWithUserName:loginCopy];
    currentDeviceConfiguration = [(POConfigurationManager *)v17 currentDeviceConfiguration];
    if (currentDeviceConfiguration)
    {
      currentLoginConfiguration = [(POConfigurationManager *)v17 currentLoginConfiguration];
      if (currentLoginConfiguration)
      {
        v19 = [(POConfigurationManager *)v17 userConfigurationForUserName:loginCopy];
        if (v19)
        {
          v20 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy];
          v21 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v20 error:0];
          v22 = v21;
          if (v21 && (v23 = contextCopy, v24 = nameCopy, v25 = currentLoginConfiguration, v26 = v20, v27 = v21, v28 = [v21 length], v22 = v27, v20 = v26, currentLoginConfiguration = v25, nameCopy = v24, contextCopy = v23, v28))
          {
            v58 = v22;
            v52 = v20;
            v29 = PO_LOG_POAgentProcess(v28);
            v30 = os_signpost_id_generate(v29);

            v32 = PO_LOG_POAgentProcess(v31);
            v33 = v32;
            spid = v30;
            if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25E831000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v30, "PlatformSSO_PasswordAuth", " enableTelemetry=YES ", buf, 2u);
            }

            userLoginConfiguration = [v19 userLoginConfiguration];
            v57 = [currentLoginConfiguration mergedConfigurationWithUserLoginConfiguration:userLoginConfiguration];

            v56 = v19;
            if (nameCopy)
            {
              v35 = nameCopy;
            }

            else
            {
              userLoginConfiguration2 = [v19 userLoginConfiguration];
              loginUserName = [userLoginConfiguration2 loginUserName];
              v43 = loginUserName;
              if (loginUserName)
              {
                v44 = loginUserName;
              }

              else
              {
                v44 = loginCopy;
              }

              v54 = v44;

              v35 = v54;
            }

            v55 = v35;
            authenticationProcess = [(POAgentCoreProcess *)self authenticationProcess];
            v46 = [authenticationProcess createAuthenticationContextUsingLoginConfiguration:v57 deviceConfiguration:currentDeviceConfiguration userName:v35];

            [v46 setPassword:v58];
            jwksStorageProvider = [(POAgentCoreProcess *)self jwksStorageProvider];
            [v46 setJwksStorageProvider:jwksStorageProvider];

            currentRefreshToken = [(POConfigurationManager *)v17 currentRefreshToken];
            [v46 setRefreshToken:currentRefreshToken];

            authenticationProcess2 = [(POAgentCoreProcess *)self authenticationProcess];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_50;
            v60[3] = &unk_279A3A660;
            v71 = spid;
            v61 = v56;
            v62 = v17;
            v63 = loginCopy;
            v64 = v46;
            v65 = currentDeviceConfiguration;
            v70 = completionCopy;
            v20 = v52;
            v66 = v52;
            selfCopy2 = self;
            v68 = currentLoginConfiguration;
            v69 = nameCopy;
            v49 = v46;
            v36 = v58;
            v50 = v49;
            [authenticationProcess2 performPasswordLoginUsingContext:v49 completion:v60];

            v19 = v56;
            v38 = v57;
          }

          else
          {
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_46;
            v72[3] = &unk_279A3A088;
            v36 = v22;
            v73 = loginCopy;
            v37 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_46(v72);
            (*(completionCopy + 2))(completionCopy, 2, v37);

            v38 = v73;
          }
        }

        else
        {
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_43;
          v74[3] = &unk_279A3A088;
          v75 = loginCopy;
          v39 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_43(v74);
          (*(completionCopy + 2))(completionCopy, 2, v39);

          v20 = v75;
        }
      }

      else
      {
        v19 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_37();
        (*(completionCopy + 2))(completionCopy, 2, v19);
      }
    }

    else
    {
      currentLoginConfiguration = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_31();
      (*(completionCopy + 2))(completionCopy, 2, currentLoginConfiguration);
    }
  }

  else
  {
    v17 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    (*(completionCopy + 2))(completionCopy, 2, v17);
  }
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_31()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No device configuration."];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_37()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No login configuration."];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_43(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration for user."];
  v2 = PO_LOG_POAgentProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1();
  }

  return v1;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_46(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"no credential for user for login"];
  v2 = PO_LOG_POAgentProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1();
  }

  return v1;
}

void __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_50(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentProcess(v8);
  v10 = v9;
  v11 = *(a1 + 112);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E831000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_PasswordAuth", "", buf, 2u);
  }

  v12 = MEMORY[0x277D3D1B8];
  v13 = [MEMORY[0x277D3D1D0] stringForLoginType:{objc_msgSend(*(a1 + 32), "loginType")}];
  v14 = [MEMORY[0x277D3D1D0] stringForLoginResult:a2];
  [v12 analyticsForLoginType:v13 result:v14];

  if (PO_LOG_PODiagnostics_once != -1)
  {
    __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_50_cold_1();
  }

  v15 = PO_LOG_PODiagnostics_log;
  if (os_log_type_enabled(PO_LOG_PODiagnostics_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MEMORY[0x277D3D1D0];
    v17 = v15;
    v18 = [v16 stringForLoginResult:a2];
    *buf = 138543362;
    v65 = v18;
    _os_log_impl(&dword_25E831000, v17, OS_LOG_TYPE_DEFAULT, "Login Result = %{public}@", buf, 0xCu);
  }

  if (a2 <= 2)
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_40;
      }

      v20 = [*(a1 + 40) currentUserConfiguration];
      [v20 setState:2];

      if ([*(a1 + 40) saveCurrentUserConfigurationAndSyncToPreboot:1])
      {
        goto LABEL_10;
      }

      v21 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_86();
      v22 = *(*(a1 + 104) + 16);
      goto LABEL_24;
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = [MEMORY[0x277CBEAA8] date];
    [v23 updateLoginStateForUserName:v24 state:0 loginDate:v25 loginType:{objc_msgSend(*(a1 + 56), "loginType")}];

    v26 = [*(a1 + 40) currentUserConfiguration];
    [v26 setState:0];

    v27 = [MEMORY[0x277CBEAA8] date];
    v28 = [*(a1 + 40) currentUserConfiguration];
    [v28 setLastLoginDate:v27];

    v29 = SecKeyCopyPublicKey([*(a1 + 64) deviceEncryptionKey]);
    if (!v29)
    {
      v21 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_54();
      v22 = *(*(a1 + 104) + 16);
LABEL_24:
      v22();
LABEL_46:

      goto LABEL_47;
    }

    v30 = v29;
    v21 = [MEMORY[0x277D3D1E0] passwordDataFromContext:*(a1 + 72) error:0];
    v63 = 0;
    v31 = [MEMORY[0x277D3D1E0] encryptPendingSSOTokens:v8 usingPublicKey:v30 sharedData:v21 encryptedTokens:&v63];
    v32 = v63;
    memset_s([v21 mutableBytes], objc_msgSend(v21, "length"), 0, objc_msgSend(v21, "length"));
    if ((v31 & 1) == 0)
    {
      v36 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_60();
      CFRelease(v30);
LABEL_44:
      (*(*(a1 + 104) + 16))();
      goto LABEL_45;
    }

    CFRelease(v30);
    if ([*(a1 + 40) isTemporaryAccountUserName:*(a1 + 48)] & 1) != 0 || (objc_msgSend(*(a1 + 40), "saveStashedSSOTokens:forUserName:", v32, *(a1 + 48)))
    {
      v33 = getuid();
      v34 = *(a1 + 40);
      if (v33 == 92)
      {
        if (([*(a1 + 40) savePendingSSOTokens:v32 forUserName:*(a1 + 48)] & 1) == 0)
        {
          v35 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_76();
LABEL_43:
          v36 = v35;
          goto LABEL_44;
        }
      }

      else
      {
        v37 = [*(a1 + 64) extensionIdentifier];
        v62 = 0;
        v38 = [v34 setTokens:v8 extensionIdentifier:v37 returningError:&v62];
        v39 = v62;

        if (!v38)
        {
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_72;
          v60[3] = &unk_279A3A088;
          v61 = v39;
          v36 = v39;
          v54 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_72(v60);
          (*(*(a1 + 104) + 16))();

LABEL_45:
          goto LABEL_46;
        }

        v40 = [*(a1 + 80) process];
        [v40 setupTimerForAuthentication];

        v41 = [*(a1 + 80) process];
        v42 = *(a1 + 88);
        v43 = [*(a1 + 40) currentUserConfiguration];
        [v41 handleKerberosMappingForTokens:v8 loginConfiguration:v42 userConfiguration:v43];

        v44 = [*(a1 + 80) distributedNotificationCenter];
        [v44 postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
      }

      v45 = *(a1 + 96);
      if (v45)
      {
        v46 = [*(a1 + 32) userLoginConfiguration];
        v47 = [v46 loginUserName];
        v48 = [v45 isEqualToString:v47];

        if ((v48 & 1) == 0)
        {
          v49 = [*(a1 + 40) currentUserConfiguration];
          v50 = [v49 userLoginConfiguration];

          if (v50)
          {
            v51 = *(a1 + 96);
            v52 = [*(a1 + 40) currentUserConfiguration];
            v53 = [v52 userLoginConfiguration];
            [v53 setLoginUserName:v51];
          }

          else
          {
            v52 = [objc_alloc(MEMORY[0x277D3D248]) initWithLoginUserName:*(a1 + 96)];
            [*(a1 + 32) setUserLoginConfiguration:v52];
          }
        }
      }

      if ([*(a1 + 40) saveCurrentUserConfigurationAndSyncToPreboot:1])
      {
        v55 = [*(a1 + 80) process];
        [v55 handleUserAuthorizationUsing:v7 userName:*(a1 + 48) tokens:v8 configurationManager:*(a1 + 40)];

        v57 = PO_LOG_POAgentProcess(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v57, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
        }

        goto LABEL_40;
      }

      v35 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_80();
      goto LABEL_43;
    }

    v35 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_66();
    goto LABEL_43;
  }

  if ((a2 - 3) < 4)
  {
LABEL_10:
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92;
    v59[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v59[4] = a2;
    v19 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92(v59);
    (*(*(a1 + 104) + 16))();

    goto LABEL_47;
  }

LABEL_40:
  v58 = *(a1 + 104);
  if (v58)
  {
    (*(v58 + 16))(v58, 1, 0);
  }

LABEL_47:
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_54()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to get public key for encrypting tokens"];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_60()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to encrypt login tokens"];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_66()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to stash login tokens"];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_72(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save login tokens"];
  v2 = PO_LOG_POAgentProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_76()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save login tokens"];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_80()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after login success."];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_86()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after permanent failure."];
  v1 = PO_LOG_POAgentProcess(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Login failed"];
  v3 = PO_LOG_POAgentProcess(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92_cold_1(v2, a1, v3);
  }

  return v2;
}

- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion
{
  v8 = MEMORY[0x277CD4790];
  completionCopy = completion;
  dataCopy = data;
  passwordCopy = password;
  v12 = [[v8 alloc] initWithExternalizedContext:dataCopy];

  [(POAgentProcess *)self updateLocalAccountPassword:passwordCopy passwordContext:v12 completion:completionCopy];
}

- (void)updateLocalAccountPassword:(id)password passwordContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_INFO, "Checking local account", v7, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 3, 0);
  }
}

- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = [MEMORY[0x277D3D1E0] maskName:loginCopy];
    *buf = 136315906;
    v23 = "[POAgentProcess verifyPasswordLogin:passwordContext:completion:]";
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = contextCopy;
    v28 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationManager alloc];
  directoryServices = [(POAgentProcess *)self directoryServices];
  v14 = [(POConfigurationManager *)v12 initWithUserName:0 directoryServices:directoryServices sharedOnly:1];

  currentDeviceConfiguration = [(POConfigurationManager *)v14 currentDeviceConfiguration];
  if (currentDeviceConfiguration)
  {
    currentLoginConfiguration = [(POConfigurationManager *)v14 currentLoginConfiguration];
    if (currentLoginConfiguration)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __65__POAgentProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_102;
      v20[3] = &unk_279A3A688;
      v21 = completionCopy;
      v19.receiver = self;
      v19.super_class = POAgentProcess;
      [(POAgentCoreProcess *)&v19 _verifyLogin:loginCopy passwordContext:contextCopy smartCardContext:0 tokenId:0 deviceConfiguration:currentDeviceConfiguration loginConfiguration:currentLoginConfiguration forAuthorization:1 completion:v20];
      v17 = v21;
    }

    else
    {
      v17 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_37();
      (*(completionCopy + 2))(completionCopy, 2, v17);
    }
  }

  else
  {
    currentLoginConfiguration = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_31();
    (*(completionCopy + 2))(completionCopy, 2, currentLoginConfiguration);
  }
}

- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[POAgentProcess saveCredentialForUserName:passwordContext:completion:]";
    v15 = 2114;
    v16 = nameCopy;
    v17 = 2114;
    v18 = contextCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", &v13, 0x2Au);
  }

  if ([(POAgentProcess *)self verifyAgentEntitlement]|| [(POAgentProcess *)self verifyLoginUserEntitlement])
  {
    [(POAgentProcess *)self _saveCredentialForUserName:nameCopy passwordContext:contextCopy completion:completionCopy];
  }

  else
  {
    v12 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)_saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v28 = "[POAgentProcess _saveCredentialForUserName:passwordContext:completion:]";
    v29 = 2114;
    v30 = nameCopy;
    v31 = 2114;
    v32 = contextCopy;
    v33 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [[POConfigurationManager alloc] initWithUserName:nameCopy];
  v13 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy];
  v26 = 0;
  v14 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v13 error:&v26];
  v15 = v26;
  v16 = v15;
  if (v15)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke;
    v24[3] = &unk_279A3A088;
    v25 = v15;
    v17 = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke(v24);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v17);
    }
  }

  else
  {
    keyWrap = [(POAgentProcess *)self keyWrap];
    v19 = [keyWrap wrapBlob:v14];
    currentUserConfiguration = [(POConfigurationManager *)v12 currentUserConfiguration];
    [currentUserConfiguration set_credential:v19];

    memset_s([v14 mutableBytes], objc_msgSend(v14, "length"), 0, objc_msgSend(v14, "length"));
    if ([(POConfigurationManager *)v12 saveCurrentUserConfigurationAndSyncToPreboot:0])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111;
      v22[3] = &unk_279A3A088;
      v23 = nameCopy;
      v21 = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111(v22);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v21);
      }
    }
  }
}

id __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Credential not found when saving credential for user"];
  v2 = PO_LOG_POAgentProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user credential."];
  v2 = PO_LOG_POAgentProcess(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1();
  }

  return v1;
}

- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[POAgentProcess passwordDidChangeForUsername:passwordContext:completion:]";
    v15 = 2114;
    v16 = usernameCopy;
    v17 = 2114;
    v18 = contextCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", &v13, 0x2Au);
  }

  if ([(POAgentProcess *)self verifyPasswordChangeEntitlement])
  {
    [(POAgentProcess *)self _saveCredentialForUserName:usernameCopy passwordContext:contextCopy completion:completionCopy];
  }

  else
  {
    v12 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)screenDidUnlockWithCredentialContext:(id)context smartCardContext:(id)cardContext biometricContext:(id)biometricContext tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock completion:(id)completion
{
  unlockCopy = unlock;
  loginCopy = login;
  v57 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  cardContextCopy = cardContext;
  biometricContextCopy = biometricContext;
  idCopy = id;
  completionCopy = completion;
  v20 = PO_LOG_POAgentProcess(completionCopy);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v44 = "[POAgentProcess screenDidUnlockWithCredentialContext:smartCardContext:biometricContext:tokenId:atLogin:tokenUnlock:completion:]";
    v45 = 1026;
    v46 = getuid();
    v47 = 2114;
    v48 = idCopy;
    v49 = 2114;
    v50 = contextCopy;
    v51 = 2114;
    v52 = cardContextCopy;
    v53 = 2114;
    v54 = biometricContextCopy;
    v55 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v20, OS_LOG_TYPE_DEFAULT, "%s uid = %{public}d, tokenId = %{public}@, context = %{public}@, sccontext = %{public}@, bcontext = %{public}@ on %@", buf, 0x44u);
  }

  if ([(POAgentProcess *)self verifyAgentEntitlement])
  {
    *buf = 0;
    v21 = objc_alloc_init(MEMORY[0x277CD4790]);
    v39 = unlockCopy;
    v40 = loginCopy;
    if (contextCopy)
    {
      v37 = cardContextCopy;
      v38 = biometricContextCopy;
      v22 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy userSession:buf];
      v42 = 0;
      v23 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v22 error:&v42];
      v24 = v42;
      v25 = v24;
      if (v23)
      {
        v26 = v21;
        [v21 setCredential:v23 type:-9];
        mutableBytes = [v23 mutableBytes];
        v28 = [v23 length];
        v29 = [v23 length];
        v30 = mutableBytes;
        v31 = v28;
LABEL_11:
        memset_s(v30, v31, 0, v29);
LABEL_19:
        [v22 invalidate];

        v21 = v26;
        cardContextCopy = v37;
        biometricContextCopy = v38;
        goto LABEL_20;
      }

      v26 = v21;
      v35 = PO_LOG_POAgentProcess(v24);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [POAgentProcess screenDidUnlockWithCredentialContext:smartCardContext:biometricContext:tokenId:atLogin:tokenUnlock:completion:];
      }
    }

    else
    {
      if (!cardContextCopy)
      {
        if (!biometricContextCopy)
        {
          v25 = 0;
          goto LABEL_21;
        }

        v25 = 0;
        v22 = v21;
        v21 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:biometricContextCopy userSession:buf];
LABEL_20:

        unlockCopy = v39;
LABEL_21:
        process = [(POAgentProcess *)self process];
        [process handleScreenUnlockWithCredentialContext:v21 tokenId:idCopy atLogin:v40 tokenUnlock:unlockCopy afterBuddy:0];

        completionCopy[2](completionCopy, 0);
        goto LABEL_22;
      }

      v38 = biometricContextCopy;
      v37 = cardContextCopy;
      v22 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:cardContextCopy userSession:buf];
      v41 = 0;
      v23 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v22 error:&v41];
      v32 = v41;
      v25 = v32;
      if (v23)
      {
        v26 = v21;
        [v21 setCredential:v23 type:-3];
        mutableBytes2 = [v23 mutableBytes];
        v34 = [v23 length];
        v29 = [v23 length];
        v30 = mutableBytes2;
        v31 = v34;
        goto LABEL_11;
      }

      v26 = v21;
      v35 = PO_LOG_POAgentProcess(v32);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [POAgentProcess screenDidUnlockWithCredentialContext:smartCardContext:biometricContext:tokenId:atLogin:tokenUnlock:completion:];
      }
    }

    goto LABEL_19;
  }

  v25 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
  (completionCopy)[2](completionCopy, v25);
LABEL_22:
}

- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed completion:(id)completion
{
  removedCopy = removed;
  extensionCopy = extension;
  completionCopy = completion;
  if ([(POAgentProcess *)self verifyAgentEntitlement])
  {
    if (removedCopy)
    {
      process = [(POAgentProcess *)self process];
      [process configurationRemovedForExtension:extensionCopy];
    }

    process2 = [(POAgentProcess *)self process];
    [process2 configurationChanged];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v11 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v11);

    completionCopy = v11;
  }
}

- (void)updateRegistrationState:(id)state failed:(BOOL)failed completion:(id)completion
{
  failedCopy = failed;
  stateCopy = state;
  completionCopy = completion;
  if ([(POAgentProcess *)self verifyAgentEntitlement])
  {
    process = [(POAgentProcess *)self process];
    registrationManager = [process registrationManager];
    [registrationManager setRegistrationFailed:failedCopy];

    if (stateCopy)
    {
      integerValue = [stateCopy integerValue];
      process2 = [(POAgentProcess *)self process];
      registrationManager2 = [process2 registrationManager];
      registrationContext = [registrationManager2 registrationContext];
      [registrationContext setState:integerValue];
    }

    if (!failedCopy)
    {
      process3 = [(POAgentProcess *)self process];
      [process3 setPlatformSSOActive:1];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    (completionCopy)[2](completionCopy, v16);
  }
}

- (void)initWithXPCConnection:(NSObject *)a3 authenticationProcess:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 136315650;
  v6 = "[POAgentProcess initWithXPCConnection:authenticationProcess:]";
  v7 = 1026;
  v8 = [a1 auditSessionIdentifier];
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_25E831000, a3, OS_LOG_TYPE_DEBUG, "%s asid= %{public}d on %@", &v5, 0x1Cu);
}

- (void)initWithAuthenticationProcess:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POAgentProcess initWithAuthenticationProcess:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

- (void)getLoginTypeForUser:(os_log_t)log completion:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[POAgentProcess getLoginTypeForUser:completion:]";
  v5 = 2114;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@ on %@", &v3, 0x20u);
}

void __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1(&dword_25E831000, v0, v1, "%{public}@, %{public}@");
}

void __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 32)];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_25E831000, a3, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", &v6, 0x16u);
}

@end