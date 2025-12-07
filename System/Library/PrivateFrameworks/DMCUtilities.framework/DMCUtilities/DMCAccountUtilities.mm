@interface DMCAccountUtilities
+ (id)_appleAccountWithPersonaID:(id)d;
+ (id)accountIdentifierForAppleAccountWithPersonaID:(id)d;
+ (id)appStoreAccountIdentifierForPersona:(id)persona;
+ (id)managedAppleIDNameWithPersonaID:(id)d;
- (BOOL)_signIniCloudAccountWithAuthenticationResult:(id)result personaID:(id)d baseViewController:(id)controller outError:(id *)error;
- (BOOL)_signIniTunesAccountWithAuthenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller outError:(id *)error;
- (DMCHangDetectionQueue)signInQueue;
- (void)signInAccountsWithTypes:(id)types authenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller completionHandler:(id)handler;
- (void)signOutAllPrimaryAccounts;
@end

@implementation DMCAccountUtilities

+ (id)appStoreAccountIdentifierForPersona:(id)persona
{
  v16 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  if (personaCopy)
  {
    v4 = [DMCAccountUtilities _appleAccountWithPersonaID:personaCopy];
    v6 = v4;
    if (v4)
    {
      ams_DSID = [v4 ams_DSID];
      v9 = *DMCLogObjects(ams_DSID, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = personaCopy;
        v14 = 2114;
        v15 = ams_DSID;
        _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona FOUND persona:%{public}@ -> accountIdentifier:%{public}@", &v12, 0x16u);
      }
    }

    else
    {
      v10 = *DMCLogObjects(0, v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = personaCopy;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEFAULT, "appStoreAccountIdentifierForPersona NOT FOUND persona:%{public}@", &v12, 0xCu);
      }

      ams_DSID = 0;
    }
  }

  else
  {
    ams_DSID = 0;
  }

  return ams_DSID;
}

+ (id)managedAppleIDNameWithPersonaID:(id)d
{
  v3 = [DMCAccountUtilities _appleAccountWithPersonaID:d];
  username = [v3 username];

  return username;
}

+ (id)accountIdentifierForAppleAccountWithPersonaID:(id)d
{
  v3 = [DMCAccountUtilities _appleAccountWithPersonaID:d];
  identifier = [v3 identifier];

  return identifier;
}

+ (id)_appleAccountWithPersonaID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [defaultStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  [defaultStore accountsWithAccountType:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v16 = v5;
    v9 = *v18;
    v10 = *MEMORY[0x1E69597A0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isEqualToString:dCopy])
        {
          v14 = v12;

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v14 = 0;
LABEL_12:
    v5 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)signInAccountsWithTypes:(id)types authenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller completionHandler:(id)handler
{
  typesCopy = types;
  resultCopy = result;
  dCopy = d;
  controllerCopy = controller;
  handlerCopy = handler;
  signInQueue = [(DMCAccountUtilities *)self signInQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __136__DMCAccountUtilities_signInAccountsWithTypes_authenticationResult_personaID_canMakeAccountActive_baseViewController_completionHandler___block_invoke;
  v25[3] = &unk_1E7ADC370;
  v26 = typesCopy;
  selfCopy = self;
  v28 = resultCopy;
  v29 = dCopy;
  v30 = controllerCopy;
  v31 = handlerCopy;
  activeCopy = active;
  v20 = controllerCopy;
  v21 = dCopy;
  v22 = resultCopy;
  v23 = handlerCopy;
  v24 = typesCopy;
  [signInQueue queueBlock:v25];
}

void __136__DMCAccountUtilities_signInAccountsWithTypes_authenticationResult_personaID_canMakeAccountActive_baseViewController_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = 0;
      v7 = *v35;
      v8 = *MEMORY[0x1E69597F8];
      v9 = *MEMORY[0x1E6959930];
      v31 = *MEMORY[0x1E6959978];
      *&v4 = 138412290;
      v30 = v4;
      while (1)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if ([v11 isEqualToString:{v8, v30}])
          {
            v12 = *(a1 + 40);
            v13 = *(a1 + 48);
            v14 = *(a1 + 56);
            v15 = *(a1 + 64);
            v33 = 0;
            v6 = [v12 _signIniCloudAccountWithAuthenticationResult:v13 personaID:v14 baseViewController:v15 outError:&v33];
            v16 = v33;
LABEL_11:
            v24 = v16;
            goto LABEL_15;
          }

          v17 = [v11 isEqualToString:v9];
          if (v17)
          {
            v19 = *(a1 + 40);
            v20 = *(a1 + 48);
            v21 = *(a1 + 80);
            v22 = *(a1 + 56);
            v23 = *(a1 + 64);
            v32 = 0;
            v6 = [v19 _signIniTunesAccountWithAuthenticationResult:v20 personaID:v22 canMakeAccountActive:v21 baseViewController:v23 outError:&v32];
            v16 = v32;
            goto LABEL_11;
          }

          v25 = *DMCLogObjects(v17, v18);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v39 = v11;
            _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_ERROR, "DMCAccountUtilities: Unsupported account type: %@", buf, 0xCu);
          }

          v24 = [MEMORY[0x1E696ABC0] errorWithDomain:v31 code:4 userInfo:0];
LABEL_15:
          v26 = v24;
          if (v24 || (v6 & 1) == 0)
          {
            goto LABEL_25;
          }

          v6 = 1;
        }

        v5 = [v2 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (!v5)
        {
          v26 = 0;
          goto LABEL_25;
        }
      }
    }

    v26 = 0;
    v6 = 0;
LABEL_25:

    v29 = *(a1 + 72);
    if (v29)
    {
      (*(v29 + 16))(v29, v6 & 1, v26);
    }
  }

  else
  {
    v27 = *(a1 + 72);
    if (v27)
    {
      v28 = *(v27 + 16);

      v28();
    }
  }
}

- (BOOL)_signIniCloudAccountWithAuthenticationResult:(id)result personaID:(id)d baseViewController:(id)controller outError:(id *)error
{
  resultCopy = result;
  dCopy = d;
  controllerCopy = controller;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke;
  v23[3] = &unk_1E7ADC398;
  v13 = resultCopy;
  v24 = v13;
  v14 = controllerCopy;
  v25 = v14;
  selfCopy = self;
  v27 = &v29;
  v28 = &v33;
  v15 = MEMORY[0x1B2731A20](v23);
  v17 = v15;
  if (dCopy)
  {
    v18 = *DMCLogObjects(v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_DEBUG, "DMCAccountUtilities: Has enterprise persona, will sign in iCloud under enterprise persona", v22, 2u);
    }

    v19 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v17];
  }

  else
  {
    (*(v15 + 16))(v15);
  }

  if (error)
  {
    *error = v34[5];
  }

  v20 = *(v30 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v20;
}

void __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    v3 = +[DMCPersonaHelper currentPersonaID];
    v4 = +[DMCPersonaHelper currentPersonaTypeString];
    *buf = 136315906;
    *&buf[4] = "[DMCAccountUtilities _signIniCloudAccountWithAuthenticationResult:personaID:baseViewController:outError:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 132;
    *&buf[18] = 2114;
    *&buf[20] = v3;
    *&buf[28] = 2114;
    *&buf[30] = v4;
    _os_log_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc_init(DMCAIDAMutableServiceContextClass(v2));
  [v5 setAuthenticationResults:*(a1 + 32)];
  [v5 setViewController:*(a1 + 40)];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v6 = getCDPUIControllerClass_softClass;
  v21 = getCDPUIControllerClass_softClass;
  if (!getCDPUIControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCDPUIControllerClass_block_invoke;
    *&buf[24] = &unk_1E7ADC1F0;
    *&buf[32] = &v18;
    __getCDPUIControllerClass_block_invoke(buf);
    v6 = v19[3];
  }

  v7 = v6;
  _Block_object_dispose(&v18, 8);
  v8 = [[v6 alloc] initWithPresentingViewController:*(a1 + 40)];
  [v8 setForceInlinePresentation:1];
  [v5 setCdpUiProvider:v8];
  v9 = objc_alloc(DMCAIDAServiceOwnersManagerClass([*(a1 + 48) setCdpUIController:v8]));
  v10 = [MEMORY[0x1E6959A48] defaultStore];
  v11 = [v9 initWithAccountStore:v10];

  v12 = dispatch_semaphore_create(0);
  v13 = DMCAIDAServiceTypeCloud();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke_21;
  v15[3] = &unk_1E7ADC280;
  v17 = *(a1 + 56);
  v16 = v12;
  v14 = v12;
  [v11 signInService:v13 withContext:v5 completion:v15];

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
}

void __106__DMCAccountUtilities__signIniCloudAccountWithAuthenticationResult_personaID_baseViewController_outError___block_invoke_21(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = *DMCLogObjects(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: Signing in iCloud account finished with result: %d, error: %{public}@", v11, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_signIniTunesAccountWithAuthenticationResult:(id)result personaID:(id)d canMakeAccountActive:(BOOL)active baseViewController:(id)controller outError:(id *)error
{
  resultCopy = result;
  dCopy = d;
  controllerCopy = controller;
  v13 = DMCAKAuthenticationUsernameKey();
  v30 = [resultCopy objectForKeyedSubscript:v13];

  v14 = DMCAKAuthenticationPasswordKey();
  v15 = [resultCopy objectForKeyedSubscript:v14];

  v16 = DMCAKAuthenticationAlternateDSIDKey();
  v17 = [resultCopy objectForKeyedSubscript:v16];

  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  v20 = ams_activeiTunesAccount;
  if (ams_activeiTunesAccount && ([ams_activeiTunesAccount dmc_altDSID], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v17), v21, v22))
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6959978] code:5 userInfo:0];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__1;
    v49 = __Block_byref_object_dispose__1;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke;
    v33[3] = &unk_1E7ADC3E8;
    activeCopy = active;
    v34 = controllerCopy;
    v35 = v30;
    v36 = v17;
    v37 = v15;
    v38 = &v41;
    v39 = &v45;
    v24 = MEMORY[0x1B2731A20](v33);
    v26 = v24;
    if (dCopy)
    {
      v27 = *DMCLogObjects(v24, v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_DEBUG, "DMCAccountUtilities: Has enterprise persona, will sign in iTunes under enterprise persona", buf, 2u);
      }

      v28 = [DMCPersonaHelper performBlockUnderPersona:dCopy block:v26, v30];
    }

    else
    {
      (*(v24 + 16))(v24);
    }

    if (error)
    {
      *error = v46[5];
    }

    v23 = *(v42 + 24);

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
  }

  return v23 & 1;
}

void __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    v3 = +[DMCPersonaHelper currentPersonaID];
    v4 = +[DMCPersonaHelper currentPersonaTypeString];
    *buf = 136315906;
    *v21 = "[DMCAccountUtilities _signIniTunesAccountWithAuthenticationResult:personaID:canMakeAccountActive:baseViewController:outError:]_block_invoke";
    *&v21[8] = 1024;
    *&v21[10] = 188;
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc_init(DMCAMSAuthenticateOptionsClass(v2));
  [v5 setAuthenticationType:0];
  v6 = [objc_alloc(DMCAMSUIAuthenticateTaskClass(objc_msgSend(v5 setCanMakeAccountActive:{*(a1 + 80)))), "initWithAccount:presentingViewController:options:", 0, *(a1 + 32), v5}];
  [v6 setUsername:*(a1 + 40)];
  [v6 setAltDSID:*(a1 + 48)];
  [v6 setPassword:*(a1 + 56)];
  v7 = [v6 performAuthentication];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[DMCPersonaHelper currentPersonaID];
    v9 = +[DMCPersonaHelper currentPersonaTypeString];
    *buf = 136315906;
    *v21 = "[DMCAccountUtilities _signIniTunesAccountWithAuthenticationResult:personaID:canMakeAccountActive:baseViewController:outError:]_block_invoke";
    *&v21[8] = 1024;
    *&v21[10] = 198;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", buf, 0x26u);
  }

  v10 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke_23;
  v17[3] = &unk_1E7ADC3C0;
  v19 = *(a1 + 64);
  v11 = v10;
  v18 = v11;
  [v7 resultWithCompletion:v17];
  v12 = dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *DMCLogObjects(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(*(a1 + 64) + 8) + 24);
    v16 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 67109378;
    *v21 = v15;
    *&v21[4] = 2114;
    *&v21[6] = v16;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: Signing in iTunes account finished with result: %d, error: %{public}@", buf, 0x12u);
  }
}

void __127__DMCAccountUtilities__signIniTunesAccountWithAuthenticationResult_personaID_canMakeAccountActive_baseViewController_outError___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2 != 0;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;
  v9 = a2;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)signOutAllPrimaryAccounts
{
  signInQueue = [(DMCAccountUtilities *)self signInQueue];
  [signInQueue queueBlock:&__block_literal_global_0];

  signInQueue2 = [(DMCAccountUtilities *)self signInQueue];
  [signInQueue2 waitUntilAllBlocksAreFinished];
}

void __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke()
{
  v24[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6959A48] defaultStore];
  v1 = objc_alloc(DMCAIDAServiceOwnersManagerClass(v0));
  v2 = [MEMORY[0x1E6959A48] defaultStore];
  v3 = [v1 initWithAccountStore:v2];

  v5 = objc_alloc_init(DMCAIDAMutableServiceContextClass(v4));
  v6 = [v0 dmc_primaryiCloudAccount];
  v7 = dispatch_semaphore_create(0);
  v8 = DMCAIDAServiceTypeMessages();
  v24[0] = v8;
  v9 = DMCAIDAServiceTypeFaceTime();
  v24[1] = v9;
  v10 = DMCAIDAServiceTypeStore();
  v24[2] = v10;
  v11 = DMCAIDAServiceTypeGameCenter();
  v24[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_2;
  v20 = &unk_1E7ADC458;
  v21 = v3;
  v22 = v5;
  v23 = v7;
  v13 = v7;
  v14 = v5;
  v15 = v3;
  [v15 signOutOfServices:v12 usingContext:v14 completion:&v17];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v16 = [v6 dmc_altDSID];
  [v0 dmc_removeAccountsWithAltDSID:v16 asynchronous:0];
}

void __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = *DMCLogObjects(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: signOutOfServices (except Cloud) finished with success: %d, result: %{public}@", buf, 0x12u);
  }

  v8 = *(a1 + 32);
  v9 = DMCAIDAServiceTypeCloud();
  v14 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_26;
  v12[3] = &unk_1E7ADC430;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  [v8 signOutOfServices:v10 usingContext:v11 completion:v12];
}

void __48__DMCAccountUtilities_signOutAllPrimaryAccounts__block_invoke_26(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = *DMCLogObjects(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "DMCAccountUtilities: signOutOfCloud finished with success: %d, result: %{public}@", v8, 0x12u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (DMCHangDetectionQueue)signInQueue
{
  signInQueue = self->_signInQueue;
  if (!signInQueue)
  {
    v4 = [DMCHangDetectionQueue alloc];
    [DMCFeatureOverrides accountSignInTimeoutThresholdWithDefaultValue:20.0];
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(DMCHangDetectionQueue *)v4 initWithQoS:25 hangThreshold:v8 owner:v6];
    v10 = self->_signInQueue;
    self->_signInQueue = v9;

    signInQueue = self->_signInQueue;
  }

  return signInQueue;
}

@end