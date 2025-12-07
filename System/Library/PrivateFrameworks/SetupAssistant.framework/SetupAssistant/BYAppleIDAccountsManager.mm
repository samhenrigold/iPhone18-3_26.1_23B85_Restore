@interface BYAppleIDAccountsManager
+ (id)sharedManager;
- (AASetupAssistantService)aaService;
- (id)initForDelegateBundleIDs:(id)ds;
- (id)storedLoginContext;
- (void)attemptPostRestoreRenewForAccount:(id)account loginContext:(id)context allowFollowUp:(BOOL)up completion:(id)completion;
- (void)clearStoredLoginContext;
- (void)enableDataClassesForAccount:(id)account completion:(id)completion;
- (void)loginDelegateAccountsWithUsername:(id)username password:(id)password rawPassword:(id)rawPassword skipiTunes:(BOOL)tunes onlyAppleIDPlugin:(BOOL)plugin completion:(id)completion;
- (void)performSilentICDPUpgrade;
- (void)preloadDefaultLoginParametersWithBundleIDs:(id)ds;
- (void)repeatedlyAttemptPostRestoreRenewForAccount:(id)account loginContext:(id)context numberOfAttemptsAllowed:(unint64_t)allowed completion:(id)completion;
- (void)runPostRestoreRenewCredentialsIfNeeded;
@end

@implementation BYAppleIDAccountsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[BYAppleIDAccountsManager sharedManager];
  }

  v3 = sharedManager_instance_1;

  return v3;
}

uint64_t __41__BYAppleIDAccountsManager_sharedManager__block_invoke()
{
  sharedManager_instance_1 = objc_alloc_init(BYAppleIDAccountsManager);

  return MEMORY[0x1EEE66BB8]();
}

- (id)initForDelegateBundleIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = BYAppleIDAccountsManager;
  v5 = [(BYAppleIDAccountsManager *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getAALoginPluginManagerClass_softClass;
    v16 = getAALoginPluginManagerClass_softClass;
    if (!getAALoginPluginManagerClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getAALoginPluginManagerClass_block_invoke;
      v12[3] = &unk_1E7D02730;
      v12[4] = &v13;
      __getAALoginPluginManagerClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    sharedInstance = [v6 sharedInstance];
    appleIDLoginPluginManager = v5->_appleIDLoginPluginManager;
    v5->_appleIDLoginPluginManager = sharedInstance;

    [(AALoginPluginManager *)v5->_appleIDLoginPluginManager restrictToPluginBundleIDs:dsCopy];
    [(AALoginPluginManager *)v5->_appleIDLoginPluginManager setShouldStashLoginResponse:1];
  }

  return v5;
}

- (AASetupAssistantService)aaService
{
  aaService = self->_aaService;
  if (!aaService)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getAASetupAssistantServiceClass_softClass;
    v13 = getAASetupAssistantServiceClass_softClass;
    if (!getAASetupAssistantServiceClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAASetupAssistantServiceClass_block_invoke;
      v9[3] = &unk_1E7D02730;
      v9[4] = &v10;
      __getAASetupAssistantServiceClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_aaService;
    self->_aaService = v6;

    aaService = self->_aaService;
  }

  return aaService;
}

- (void)preloadDefaultLoginParametersWithBundleIDs:(id)ds
{
  dsCopy = ds;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke;
  v7[3] = &unk_1E7D03330;
  v7[4] = self;
  v8 = dsCopy;
  v5 = preloadDefaultLoginParametersWithBundleIDs__onceToken;
  v6 = dsCopy;
  if (v5 != -1)
  {
    dispatch_once(&preloadDefaultLoginParametersWithBundleIDs__onceToken, v7);
  }
}

void __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke_2;
  v4[3] = &unk_1E7D03330;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

id __71__BYAppleIDAccountsManager_preloadDefaultLoginParametersWithBundleIDs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _BYLoggingFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Preload default login parameters", v5, 2u);
  }

  [*(*(a1 + 32) + 8) restrictToPluginBundleIDs:*(a1 + 40)];
  [*(*(a1 + 32) + 8) setShouldSkipiTunesPlugin:0];
  return [*(*(a1 + 32) + 8) collectParametersForLoginRequest];
}

- (void)loginDelegateAccountsWithUsername:(id)username password:(id)password rawPassword:(id)rawPassword skipiTunes:(BOOL)tunes onlyAppleIDPlugin:(BOOL)plugin completion:(id)completion
{
  pluginCopy = plugin;
  tunesCopy = tunes;
  rawPasswordCopy = rawPassword;
  completionCopy = completion;
  passwordCopy = password;
  usernameCopy = username;
  v18 = _BYLoggingFacility(usernameCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "Login Delegate Accounts", buf, 2u);
  }

  [(AALoginPluginManager *)self->_appleIDLoginPluginManager setShouldSkipiTunesPlugin:tunesCopy];
  if (pluginCopy)
  {
    [(AALoginPluginManager *)self->_appleIDLoginPluginManager restrictToPluginBundleIDs:&unk_1F30A78C8];
  }

  kdebug_trace();
  collectParametersForLoginRequest = [(AALoginPluginManager *)self->_appleIDLoginPluginManager collectParametersForLoginRequest];
  kdebug_trace();
  aaService = [(BYAppleIDAccountsManager *)self aaService];
  [aaService setAppleID:usernameCopy];

  aaService2 = [(BYAppleIDAccountsManager *)self aaService];
  [aaService2 setPassword:passwordCopy];

  kdebug_trace();
  aaService3 = [(BYAppleIDAccountsManager *)self aaService];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke;
  v25[3] = &unk_1E7D03498;
  v25[4] = self;
  v26 = rawPasswordCopy;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = rawPasswordCopy;
  [aaService3 loginDelegatesWithParameters:collectParametersForLoginRequest completion:v25];
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2;
  block[3] = &unk_1E7D03470;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = _BYLoggingFacility(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v7 = _BYIsInternalInstall(v5, v6);
    v8 = *(a1 + 32);
    if ((v7 & 1) != 0 || !v8)
    {
      v10 = 0;
    }

    else
    {
      v9 = MEMORY[0x1E696AEC0];
      v2 = [*(a1 + 32) domain];
      v8 = [v9 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(*(a1 + 32), "code")];
      v10 = 1;
    }

    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Login delgates finished, error = %{public}@", buf, 0xCu);
    if (v10)
    {
    }
  }

  v12 = _BYLoggingFacility(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2_cold_1(a1, v12);
  }

  if (*(a1 + 40) && !*(a1 + 32))
  {
    kdebug_trace();
    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = v14[1];
    v17 = [v14 aaService];
    v18 = [v17 appleID];
    v19 = [*(a1 + 48) aaService];
    v20 = [v19 password];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_36;
    v22[3] = &unk_1E7D02C10;
    v21 = *(a1 + 56);
    v23 = *(a1 + 64);
    [v16 notifyServicesOfLoginResponse:v15 forAppleID:v18 password:v20 rawPassword:v21 completion:v22];
  }

  else
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0, *(a1 + 32));
    }
  }
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_36(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = kdebug_trace();
  v8 = _BYLoggingFacility(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (a2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (_BYIsInternalInstall(v9, v10))
    {
      v12 = 0;
      v13 = v6;
    }

    else if (v6)
    {
      v14 = MEMORY[0x1E696AEC0];
      v3 = [v6 domain];
      v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v6, "code")];
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *buf = 138543618;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Notify delegates success: %{public}@ error: %{public}@", buf, 0x16u);
    if (v12)
    {
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_43;
  block[3] = &unk_1E7D03448;
  v15 = *(a1 + 32);
  v20 = a2;
  v18 = v6;
  v19 = v15;
  v16 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)enableDataClassesForAccount:(id)account completion:(id)completion
{
  v93 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__6;
  v82 = __Block_byref_object_dispose__6;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2050000000;
  v5 = getACAccountStoreClass_softClass_0;
  v87 = getACAccountStoreClass_softClass_0;
  if (!getACAccountStoreClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getACAccountStoreClass_block_invoke_0;
    v91 = &unk_1E7D02730;
    v92 = &v84;
    __getACAccountStoreClass_block_invoke_0(buf);
    v5 = v85[3];
  }

  v6 = v5;
  _Block_object_dispose(&v84, 8);
  v83 = objc_alloc_init(v5);
  v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([accountCopy aa_isPrimaryEmailVerified])
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    provisionedDataclasses = [accountCopy provisionedDataclasses];
    v8 = [provisionedDataclasses countByEnumeratingWithState:&v74 objects:v89 count:16];
    if (!v8)
    {
      goto LABEL_46;
    }

    v9 = *v75;
    obj = provisionedDataclasses;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v75 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v74 + 1) + 8 * v10);
        v84 = 0;
        v85 = &v84;
        v86 = 0x2020000000;
        v12 = getkAccountDataclassDeviceLocatorSymbolLoc_ptr;
        v87 = getkAccountDataclassDeviceLocatorSymbolLoc_ptr;
        if (!getkAccountDataclassDeviceLocatorSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getkAccountDataclassDeviceLocatorSymbolLoc_block_invoke;
          v91 = &unk_1E7D02730;
          v92 = &v84;
          v13 = AccountsLibrary();
          v14 = dlsym(v13, "kAccountDataclassDeviceLocator");
          *(v92[1] + 24) = v14;
          getkAccountDataclassDeviceLocatorSymbolLoc_ptr = *(v92[1] + 24);
          v12 = v85[3];
        }

        _Block_object_dispose(&v84, 8);
        if (!v12)
        {
LABEL_66:
          v61 = dlerror();
          abort_report_np("%s", v61);
          goto LABEL_68;
        }

        v15 = *v12;
        v16 = [v11 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          v84 = 0;
          v85 = &v84;
          v86 = 0x2020000000;
          v17 = getkAccountDataclassCloudPhotosSymbolLoc_ptr;
          v87 = getkAccountDataclassCloudPhotosSymbolLoc_ptr;
          if (!getkAccountDataclassCloudPhotosSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkAccountDataclassCloudPhotosSymbolLoc_block_invoke;
            v91 = &unk_1E7D02730;
            v92 = &v84;
            v18 = AccountsLibrary();
            v19 = dlsym(v18, "kAccountDataclassCloudPhotos");
            *(v92[1] + 24) = v19;
            getkAccountDataclassCloudPhotosSymbolLoc_ptr = *(v92[1] + 24);
            v17 = v85[3];
          }

          _Block_object_dispose(&v84, 8);
          if (!v17)
          {
            goto LABEL_66;
          }

          v20 = *v17;
          if ([v11 isEqualToString:v20])
          {
            goto LABEL_22;
          }

          v84 = 0;
          v85 = &v84;
          v86 = 0x2020000000;
          v21 = getkAccountDataclassMediaStreamSymbolLoc_ptr;
          v87 = getkAccountDataclassMediaStreamSymbolLoc_ptr;
          if (!getkAccountDataclassMediaStreamSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkAccountDataclassMediaStreamSymbolLoc_block_invoke;
            v91 = &unk_1E7D02730;
            v92 = &v84;
            v22 = AccountsLibrary();
            v23 = dlsym(v22, "kAccountDataclassMediaStream");
            *(v92[1] + 24) = v23;
            getkAccountDataclassMediaStreamSymbolLoc_ptr = *(v92[1] + 24);
            v21 = v85[3];
          }

          _Block_object_dispose(&v84, 8);
          if (!v21)
          {
            goto LABEL_66;
          }

          v24 = *v21;
          if ([v11 isEqualToString:v24])
          {

LABEL_22:
            goto LABEL_23;
          }

          v84 = 0;
          v85 = &v84;
          v86 = 0x2020000000;
          v25 = getkAccountDataclassSharedStreamsSymbolLoc_ptr;
          v87 = getkAccountDataclassSharedStreamsSymbolLoc_ptr;
          if (!getkAccountDataclassSharedStreamsSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getkAccountDataclassSharedStreamsSymbolLoc_block_invoke;
            v91 = &unk_1E7D02730;
            v92 = &v84;
            v26 = AccountsLibrary();
            v27 = dlsym(v26, "kAccountDataclassSharedStreams");
            *(v92[1] + 24) = v27;
            getkAccountDataclassSharedStreamsSymbolLoc_ptr = *(v92[1] + 24);
            v25 = v85[3];
          }

          _Block_object_dispose(&v84, 8);
          if (!v25)
          {
            goto LABEL_66;
          }

          v28 = *v25;
          v29 = [v11 isEqualToString:v28];

          if ((v29 & 1) == 0)
          {
            v84 = 0;
            v85 = &v84;
            v86 = 0x2020000000;
            v30 = getkAccountDataclassMailSymbolLoc_ptr;
            v87 = getkAccountDataclassMailSymbolLoc_ptr;
            if (!getkAccountDataclassMailSymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getkAccountDataclassMailSymbolLoc_block_invoke;
              v91 = &unk_1E7D02730;
              v92 = &v84;
              v31 = AccountsLibrary();
              v32 = dlsym(v31, "kAccountDataclassMail");
              *(v92[1] + 24) = v32;
              getkAccountDataclassMailSymbolLoc_ptr = *(v92[1] + 24);
              v30 = v85[3];
            }

            _Block_object_dispose(&v84, 8);
            if (!v30)
            {
              goto LABEL_66;
            }

            v33 = *v30;
            v34 = [v11 isEqualToString:v33];

            if (v34)
            {
              aa_needsEmailConfiguration = [accountCopy aa_needsEmailConfiguration];
              goto LABEL_34;
            }

            v84 = 0;
            v85 = &v84;
            v86 = 0x2020000000;
            v36 = getkAccountDataclassNotesSymbolLoc_ptr;
            v87 = getkAccountDataclassNotesSymbolLoc_ptr;
            if (!getkAccountDataclassNotesSymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getkAccountDataclassNotesSymbolLoc_block_invoke;
              v91 = &unk_1E7D02730;
              v92 = &v84;
              v37 = AccountsLibrary();
              v38 = dlsym(v37, "kAccountDataclassNotes");
              *(v92[1] + 24) = v38;
              getkAccountDataclassNotesSymbolLoc_ptr = *(v92[1] + 24);
              v36 = v85[3];
            }

            _Block_object_dispose(&v84, 8);
            if (!v36)
            {
              goto LABEL_66;
            }

            v39 = *v36;
            v40 = [v11 isEqualToString:v39];

            if (!v40)
            {
              goto LABEL_43;
            }

            if (([accountCopy aa_isPrimaryAccount] & 1) != 0 || (objc_msgSend(accountCopy, "aa_needsEmailConfiguration") & 1) == 0)
            {
              if ([accountCopy aa_isPrimaryAccount])
              {
LABEL_43:
                [accountCopy setEnabled:1 forDataclass:v11];
                goto LABEL_23;
              }

              aa_needsEmailConfiguration = [accountCopy aa_isManagedAppleID];
LABEL_34:
              if (aa_needsEmailConfiguration)
              {
                goto LABEL_23;
              }

              goto LABEL_43;
            }
          }
        }

LABEL_23:
        ++v10;
      }

      while (v8 != v10);
      provisionedDataclasses = obj;
      v41 = [obj countByEnumeratingWithState:&v74 objects:v89 count:16];
      v8 = v41;
      if (!v41)
      {
LABEL_46:

        kdebug_trace();
        v42 = [v79[5] dataclassActionsForAccountSave:accountCopy];
        kdebug_trace();
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        provisionedDataclasses2 = [accountCopy provisionedDataclasses];
        v44 = [provisionedDataclasses2 countByEnumeratingWithState:&v70 objects:v88 count:16];
        if (v44)
        {
          v45 = *v71;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v71 != v45)
              {
                objc_enumerationMutation(provisionedDataclasses2);
              }

              v47 = *(*(&v70 + 1) + 8 * i);
              v48 = [v42 objectForKeyedSubscript:v47];
              if ([v48 count] == 1)
              {
                lastObject = [v48 lastObject];
                type = [lastObject type];
                if (type)
                {
                  v51 = _BYLoggingFacility(type);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    type2 = [lastObject type];
                    *buf = 134218242;
                    *&buf[4] = type2;
                    *&buf[12] = 2114;
                    *&buf[14] = v47;
                    _os_log_impl(&dword_1B862F000, v51, OS_LOG_TYPE_DEFAULT, "Setting action %lu for dataclass %{public}@", buf, 0x16u);
                  }

                  [v65 setObject:lastObject forKey:v47];
                }
              }
            }

            v44 = [provisionedDataclasses2 countByEnumeratingWithState:&v70 objects:v88 count:16];
          }

          while (v44);
        }

        v84 = 0;
        v85 = &v84;
        v86 = 0x2020000000;
        v53 = getkAccountDataclassKeyValueSymbolLoc_ptr;
        v87 = getkAccountDataclassKeyValueSymbolLoc_ptr;
        if (!getkAccountDataclassKeyValueSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getkAccountDataclassKeyValueSymbolLoc_block_invoke;
          v91 = &unk_1E7D02730;
          v92 = &v84;
          v54 = AccountsLibrary();
          v55 = dlsym(v54, "kAccountDataclassKeyValue");
          *(v92[1] + 24) = v55;
          getkAccountDataclassKeyValueSymbolLoc_ptr = *(v92[1] + 24);
          v53 = v85[3];
        }

        _Block_object_dispose(&v84, 8);
        if (v53)
        {
          v56 = *v53;
          [accountCopy setEnabled:1 forDataclass:v56];

          break;
        }

        v62 = dlerror();
        abort_report_np("%s", v62);
LABEL_68:
        __break(1u);
      }
    }
  }

  v57 = kdebug_trace();
  v58 = _BYLoggingFacility(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v58, OS_LOG_TYPE_DEFAULT, "Saving Account...", buf, 2u);
  }

  v59 = v79[5];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke;
  v67[3] = &unk_1E7D034E8;
  v60 = completionCopy;
  v68 = v60;
  v69 = &v78;
  [v59 saveAccount:accountCopy withDataclassActions:v65 completion:v67];

  _Block_object_dispose(&v78, 8);
}

void __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  kdebug_trace();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke_2;
  v9[3] = &unk_1E7D034C0;
  v13 = a2;
  v10 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __67__BYAppleIDAccountsManager_enableDataClassesForAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _BYLoggingFacility(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = _BYIsInternalInstall(v5, v6);
    v9 = *(a1 + 32);
    if ((v8 & 1) != 0 || !v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v2 = [*(a1 + 32) domain];
      v9 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(*(a1 + 32), "code")];
      v11 = 1;
    }

    *buf = 67109378;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Enable dataclasses for account success = %d, error = %{public}@", buf, 0x12u);
    if (v11)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

- (void)runPostRestoreRenewCredentialsIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    isAuthenticated = [aa_primaryAppleAccount isAuthenticated];
    if (isAuthenticated)
    {
      storedLoginContext = _BYLoggingFacility(isAuthenticated);
      if (os_log_type_enabled(storedLoginContext, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Post-restore renew unneccessary: primary account already authenticated";
LABEL_7:
        _os_log_impl(&dword_1B862F000, storedLoginContext, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    storedLoginContext = [(BYAppleIDAccountsManager *)self storedLoginContext];
    appleID = [storedLoginContext appleID];
    if (appleID)
    {
      v10 = appleID;
      rawPassword = [storedLoginContext rawPassword];
      if (rawPassword)
      {

LABEL_12:
        v13 = _BYLoggingFacility(appleID);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v17 = 3;
          _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "Primary account is not authenticated; attempting %ld renews...", buf, 0xCu);
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __66__BYAppleIDAccountsManager_runPostRestoreRenewCredentialsIfNeeded__block_invoke;
        v15[3] = &unk_1E7D027A8;
        v15[4] = self;
        [(BYAppleIDAccountsManager *)self repeatedlyAttemptPostRestoreRenewForAccount:aa_primaryAppleAccount loginContext:storedLoginContext numberOfAttemptsAllowed:3 completion:v15];
        goto LABEL_18;
      }

      continuationKey = [storedLoginContext continuationKey];

      if (continuationKey)
      {
        goto LABEL_12;
      }
    }

    v14 = _BYLoggingFacility(appleID);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Unable to perform post-restore renew: login context has no data", buf, 2u);
    }

    goto LABEL_18;
  }

  storedLoginContext = _BYLoggingFacility(v5);
  if (os_log_type_enabled(storedLoginContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "Unable to perform post-restore renew; no primary account!";
    goto LABEL_7;
  }

LABEL_18:
}

- (void)repeatedlyAttemptPostRestoreRenewForAccount:(id)account loginContext:(id)context numberOfAttemptsAllowed:(unint64_t)allowed completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  v13 = completionCopy;
  if (allowed)
  {
    v14 = _BYLoggingFacility(completionCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Attempting post-restore renew...", buf, 2u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __120__BYAppleIDAccountsManager_repeatedlyAttemptPostRestoreRenewForAccount_loginContext_numberOfAttemptsAllowed_completion___block_invoke;
    v15[3] = &unk_1E7D03538;
    v18 = v13;
    allowedCopy = allowed;
    v15[4] = self;
    v16 = accountCopy;
    v17 = contextCopy;
    [(BYAppleIDAccountsManager *)self attemptPostRestoreRenewForAccount:v16 loginContext:v17 allowFollowUp:allowed == 1 completion:v15];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __120__BYAppleIDAccountsManager_repeatedlyAttemptPostRestoreRenewForAccount_loginContext_numberOfAttemptsAllowed_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6959A48] defaultStore];
  v7 = [v6 aa_primaryAppleAccount];

  v8 = [v7 isAuthenticated];
  if (!v8)
  {
    v11 = *(a1 + 64);
    v12 = v11 != 0;
    v13 = v11 - 1;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = _BYLoggingFacility(v8);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a2 || v5)
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      *buf = 134218242;
      v37 = a2;
      v38 = 2112;
      v39 = v5;
      v17 = "Renew failed (%ld): %@";
      v18 = v15;
      v19 = 22;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      *buf = 0;
      v17 = "Renew succeeded, but we're not authenticated";
      v18 = v15;
      v19 = 2;
    }

    _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_16:

    v21 = _BYLoggingFacility(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v14 == 1)
    {
      if (v22)
      {
        *buf = 0;
        v23 = "Waiting for retry (1 attempt remaining)...";
        v24 = v21;
        v25 = 2;
LABEL_21:
        _os_log_impl(&dword_1B862F000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }

    else if (v22)
    {
      *buf = 134217984;
      v37 = v14;
      v23 = "Waiting for retry (%ld attempts remaining)...";
      v24 = v21;
      v25 = 12;
      goto LABEL_21;
    }

    v26 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__BYAppleIDAccountsManager_repeatedlyAttemptPostRestoreRenewForAccount_loginContext_numberOfAttemptsAllowed_completion___block_invoke_48;
    block[3] = &unk_1E7D03510;
    v31 = *(a1 + 32);
    v27 = *(&v31 + 1);
    v28 = *(a1 + 48);
    v35 = v14;
    v29 = *(a1 + 56);
    *&v30 = v28;
    *(&v30 + 1) = v29;
    v33 = v31;
    v34 = v30;
    dispatch_after(v26, MEMORY[0x1E69E96A0], block);

    goto LABEL_23;
  }

  v9 = _BYLoggingFacility(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Account is now authenticated!", buf, 2u);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))();
  }

LABEL_23:
}

- (void)attemptPostRestoreRenewForAccount:(id)account loginContext:(id)context allowFollowUp:(BOOL)up completion:(id)completion
{
  upCopy = up;
  v22[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  rawPassword = [contextCopy rawPassword];

  if (rawPassword)
  {
    rawPassword2 = [contextCopy rawPassword];
    [accountCopy _aa_setRawPassword:rawPassword2];
  }

  v14 = *MEMORY[0x1E6959AA8];
  v21[0] = *MEMORY[0x1E6959AA0];
  v21[1] = v14;
  v22[0] = MEMORY[0x1E695E118];
  v22[1] = MEMORY[0x1E695E118];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v16 = [v15 mutableCopy];

  if (upCopy)
  {
    v18 = _BYLoggingFacility(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "Posting a followup for post-restore auth assistance", v20, 2u);
    }

    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AARenewShouldPostFollowUp"];
  }

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  [defaultStore renewCredentialsForAccount:accountCopy options:v16 completion:completionCopy];
}

- (void)performSilentICDPUpgrade
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = getCDPContextClass_softClass;
  v20 = getCDPContextClass_softClass;
  if (!getCDPContextClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getCDPContextClass_block_invoke;
    v14 = &unk_1E7D02730;
    v15 = &v17;
    __getCDPContextClass_block_invoke(buf);
    v2 = *(v18 + 24);
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  contextForPrimaryAccount = [v2 contextForPrimaryAccount];
  v5 = contextForPrimaryAccount;
  if (contextForPrimaryAccount)
  {
    v6 = _BYLoggingFacility(contextForPrimaryAccount);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Will perform silent ICDP upgrade", buf, 2u);
    }

    *buf = 0;
    v12 = buf;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__6;
    v16 = os_transaction_create();
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v7 = getCDPStateControllerClass_softClass;
    v25 = getCDPStateControllerClass_softClass;
    if (!getCDPStateControllerClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getCDPStateControllerClass_block_invoke;
      v20 = &unk_1E7D02730;
      v21 = &v22;
      __getCDPStateControllerClass_block_invoke(&v17);
      v7 = v23[3];
    }

    v8 = v7;
    _Block_object_dispose(&v22, 8);
    v9 = [[v7 alloc] initWithContext:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__BYAppleIDAccountsManager_performSilentICDPUpgrade__block_invoke;
    v10[3] = &unk_1E7D03560;
    v10[4] = buf;
    [v9 handleCloudDataProtectionStateWithCompletion:v10];

    _Block_object_dispose(buf, 8);
  }
}

void __52__BYAppleIDAccountsManager_performSilentICDPUpgrade__block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = _BYLoggingFacility(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (_BYIsInternalInstall(v10, v11))
    {
      v12 = 0;
      v13 = v8;
    }

    else if (v8)
    {
      v14 = MEMORY[0x1E696AEC0];
      v4 = [v8 domain];
      v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", v4, objc_msgSend(v8, "code")];
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *buf = 67109634;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Did perform silent ICDP upgrade: shouldCompleteSignIn %d cloudDataProtectionEnabled %d error %{public}@", buf, 0x18u);
    if (v12)
    {
    }
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
}

- (id)storedLoginContext
{
  storedLoginContext = self->_storedLoginContext;
  if (!storedLoginContext)
  {
    sharedStorage = [getAALoginContextTransientStorageClass() sharedStorage];
    storedContext = [sharedStorage storedContext];
    v6 = self->_storedLoginContext;
    self->_storedLoginContext = storedContext;

    storedLoginContext = self->_storedLoginContext;
  }

  return storedLoginContext;
}

- (void)clearStoredLoginContext
{
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Clearing stored login context", v6, 2u);
  }

  sharedStorage = [getAALoginContextTransientStorageClass() sharedStorage];
  [sharedStorage clear];

  storedLoginContext = self->_storedLoginContext;
  self->_storedLoginContext = 0;
}

void __123__BYAppleIDAccountsManager_loginDelegateAccountsWithUsername_password_rawPassword_skipiTunes_onlyAppleIDPlugin_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) status];
  v5 = [*(a1 + 40) statusMessage];
  v6 = [*(a1 + 40) responseParameters];
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "loginResponse: %@, %@, %@", &v7, 0x20u);
}

@end