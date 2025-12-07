@interface AAUISignInFlowController
- (AAUISignInFlowController)init;
- (UIViewController)presentingViewController;
- (id)_appleAccountType;
- (id)_messageForErrorAlert:(int64_t)alert;
- (id)_titleForError:(id)error account:(id)account;
- (void)_hasActivationLockSupportedWatchWithCompletion:(id)completion;
- (void)_presentExistingAccountAlert:(id)alert;
- (void)_presentUnableToSaveAccountAlert;
- (void)_presentValidationErrorAlert:(id)alert forAccount:(id)account completion:(id)completion;
- (void)_promptToEnableFindMyIfPossibleWithAccount:(id)account completion:(id)completion;
- (void)_saveAccount:(id)account withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion;
- (void)_showGenericTermsUIforAccount:(id)account completion:(id)completion;
- (void)_stashLoginResponseWithAuthenticationResults:(id)results completion:(id)completion;
- (void)_updateAppleAccountIfNecessary:(id)necessary withAltDSID:(id)d rawPassword:(id)password;
- (void)_validateCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion;
- (void)_verifyLoginResponseForiCloudAccount:(id)account withSuccess:(BOOL)success response:(id)response error:(id)error completion:(id)completion;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)prewarmOperationsWithCompletion:(id)completion;
- (void)signInOperationManager:(id)manager didSaveAccount:(id)account error:(id)error;
- (void)signInWithIDMSAuthenticationResults:(id)results completion:(id)completion;
@end

@implementation AAUISignInFlowController

- (AAUISignInFlowController)init
{
  v10.receiver = self;
  v10.super_class = AAUISignInFlowController;
  v2 = [(AAUISignInFlowController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cdpContextsByAccountID = v2->_cdpContextsByAccountID;
    v2->_cdpContextsByAccountID = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cdpContextsByAccountIDLock = v2->_cdpContextsByAccountIDLock;
    v2->_cdpContextsByAccountIDLock = v7;
  }

  return v2;
}

- (void)signInWithIDMSAuthenticationResults:(id)results completion:(id)completion
{
  v116[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v81 = _os_activity_create(&dword_1C5355000, "appleaccountui/signin-with-IDMSauthresults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v81, &state);
  v8 = objc_alloc_init(MEMORY[0x1E69DF078]);
  isEnterprisePersona = [v8 isEnterprisePersona];
  v84 = v8;
  if (isEnterprisePersona)
  {
    userPersonaUniqueString = [v8 userPersonaUniqueString];
    v11 = _AAUILogSystem(userPersonaUniqueString);
    v87 = userPersonaUniqueString;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInFlowController signInWithIDMSAuthenticationResults:userPersonaUniqueString completion:v11];
    }
  }

  else
  {
    v11 = _AAUILogSystem(isEnterprisePersona);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInFlowController signInWithIDMSAuthenticationResults:completion:];
    }

    v87 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke;
  aBlock[3] = &unk_1E820C898;
  v79 = completionCopy;
  v101 = v79;
  v88 = _Block_copy(aBlock);
  v86 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v80 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  stringValue = [v80 stringValue];
  v85 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v83 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v89 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  v90 = stringValue;
  v13 = _AAUISignpostLogSystem(v89);
  v14 = _AAUISignpostCreate(v13);
  v82 = v15;
  v16 = v14;

  v18 = _AAUISignpostLogSystem(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "GetLocalAppleAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = _AAUISignpostLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v104 = v16;
    _os_log_impl(&dword_1C5355000, v21, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GetLocalAppleAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  if (v90)
  {
    v22 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:?];
  }

  else
  {
    v22 = 0;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(*MEMORY[0x1E698BAE8], *MEMORY[0x1E698B7D0], 0);
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  aa_dataSeparatedAccounts = [(ACAccountStore *)self->_accountStore aa_dataSeparatedAccounts];
  v26 = [aa_dataSeparatedAccounts count];

  if (v22)
  {
    v28 = _AAUILogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v104 = v90;
      _os_log_impl(&dword_1C5355000, v28, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: found an existing account with DSID %@.", buf, 0xCu);
    }

    v29 = [(AAUISignInFlowController *)self _updateAppleAccountIfNecessary:v22 withAltDSID:v85 rawPassword:v89];
    if (aa_primaryAppleAccount)
    {
      v30 = _AAUILogSystem(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v104 = v22;
        _os_log_impl(&dword_1C5355000, v30, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: cannot promote existing account %@.", buf, 0xCu);
      }

      v31 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9002];
      v32 = MEMORY[0x1E696ABC0];
      v115 = *MEMORY[0x1E696A578];
      v116[0] = v31;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
      v34 = [v32 errorWithDomain:@"AAUISignInErrors" code:-9002 userInfo:v33];
    }

    else
    {
      if (!v87)
      {
        v69 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69597A0]];
        v31 = v69;
        if (!v69 || ([MEMORY[0x1E698B940] findEnterprisePersonaIdentifier], v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v31, "isEqualToString:", v70), v70, !v71))
        {
          v78 = _AAUILogSystem(v69);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v104 = v22;
            _os_log_impl(&dword_1C5355000, v78, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: promoting existing account %@ to primary.", buf, 0xCu);
          }

          [v22 aa_setAccountClass:*MEMORY[0x1E698B760]];
          [v22 setAccountDescription:@"iCloud"];
          v44 = 0;
          goto LABEL_36;
        }

        v72 = _AAUILogSystem(v69);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v104 = v22;
          _os_log_impl(&dword_1C5355000, v72, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: cannot promote existing data separated account %@.", buf, 0xCu);
        }

        v33 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9011];
        v73 = MEMORY[0x1E696ABC0];
        v111 = *MEMORY[0x1E696A578];
        v112 = v33;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v44 = [v73 errorWithDomain:@"AAUISignInErrors" code:-9011 userInfo:v74];

LABEL_35:
LABEL_36:

        goto LABEL_37;
      }

      v40 = _AAUILogSystem(v29);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v104 = v90;
        _os_log_impl(&dword_1C5355000, v40, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: found an existing account with DSID %@, but we're running in the enterprise persona.", buf, 0xCu);
      }

      v31 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9010];
      v41 = MEMORY[0x1E696ABC0];
      v113 = *MEMORY[0x1E696A578];
      v114 = v31;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v34 = [v41 errorWithDomain:@"AAUISignInErrors" code:-9010 userInfo:v33];
    }

LABEL_34:
    v44 = v34;
    goto LABEL_35;
  }

  v35 = _AAUILogSystem(v27);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v104 = v86;
    _os_log_impl(&dword_1C5355000, v35, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: will sign in new iCloud account for %@.", buf, 0xCu);
  }

  v36 = objc_alloc(MEMORY[0x1E6959A28]);
  _appleAccountType = [(AAUISignInFlowController *)self _appleAccountType];
  v22 = [v36 initWithAccountType:_appleAccountType];

  [v22 setUsername:v86];
  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v90];
  [v22 setAccountProperty:v38 forKey:@"personID"];

  if (v87 != 0 && v26 != 0 && AppBooleanValue == 0)
  {
    v42 = _AAUILogSystem(v39);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController signInWithIDMSAuthenticationResults:completion:];
    }

    v31 = [(AAUISignInFlowController *)self _messageForErrorAlert:-9012];
    v43 = MEMORY[0x1E696ABC0];
    v109 = *MEMORY[0x1E696A578];
    v110 = v31;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v34 = [v43 errorWithDomain:@"AAUISignInErrors" code:-9012 userInfo:v33];
    goto LABEL_34;
  }

  if (v87)
  {
    [v22 setAccountDescription:v86];
    [v22 aa_setAccountClass:*MEMORY[0x1E698B758]];
    [v22 setObject:v87 forKeyedSubscript:*MEMORY[0x1E69597A0]];
  }

  else
  {
    if (aa_primaryAppleAccount)
    {
      v75 = [v22 setAccountDescription:v86];
      if (AppBooleanValue)
      {
        v76 = _AAUILogSystem(v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          [AAUISignInFlowController signInWithIDMSAuthenticationResults:completion:];
        }

        v77 = MEMORY[0x1E698B758];
      }

      else
      {
        v77 = MEMORY[0x1E698B750];
      }
    }

    else
    {
      [v22 setAccountDescription:@"iCloud"];
      v77 = MEMORY[0x1E698B760];
    }

    [v22 aa_setAccountClass:*v77];
  }

  v44 = 0;
LABEL_37:
  Nanoseconds = _AAUISignpostGetNanoseconds(v16, v82);
  v46 = _AAUISignpostLogSystem(Nanoseconds);
  v47 = v46;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    code = [v44 code];
    *buf = 67240192;
    LODWORD(v104) = code;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v47, OS_SIGNPOST_INTERVAL_END, v16, "GetLocalAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v50 = _AAUISignpostLogSystem(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v44 code];
    *buf = 134218496;
    v104 = v16;
    v105 = 2048;
    v106 = Nanoseconds / 1000000000.0;
    v107 = 1026;
    v108 = code2;
    _os_log_impl(&dword_1C5355000, v50, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GetLocalAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  if (v44)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_76;
    block[3] = &unk_1E820B708;
    block[4] = self;
    v98 = v44;
    v99 = v88;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v52 = [MEMORY[0x1E6959A30] credentialWithPassword:v83];
    [v22 setCredential:v52];
    [v22 _aa_setRawPassword:v89];
    v53 = [v22 aa_isAccountClass:*MEMORY[0x1E698B760]];
    if (v53)
    {
      v54 = [AAUICDPHelper cdpContextForPrimaryAccountWithAuthenticationResults:resultsCopy];
      messageSession = [(AAUISignInFlowController *)self messageSession];
      [v54 setSharingChannel:messageSession];

      [v54 set_ignoreLockAssertErrors:[(AAUISignInFlowController *)self ignoreLockAssertErrors]];
      [(NSLock *)self->_cdpContextsByAccountIDLock lock];
      cdpContextsByAccountID = self->_cdpContextsByAccountID;
      identifier = [v22 identifier];
      [(NSMutableDictionary *)cdpContextsByAccountID setObject:v54 forKeyedSubscript:identifier];

      [(NSLock *)self->_cdpContextsByAccountIDLock unlock];
    }

    else
    {
      v54 = _AAUILogSystem(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v104 = v22;
        _os_log_impl(&dword_1C5355000, v54, OS_LOG_TYPE_DEFAULT, "AAUISignInFlowController: HSA 2 account %@ is secondary, so no iCDP checks will be made.", buf, 0xCu);
      }
    }

    v59 = _AAUISignpostLogSystem(v58);
    v60 = _AAUISignpostCreate(v59);
    v62 = v61;

    v64 = _AAUISignpostLogSystem(v63);
    v65 = v64;
    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v65, OS_SIGNPOST_INTERVAL_BEGIN, v60, "SignInRegisterAccount", " enableTelemetry=YES ", buf, 2u);
    }

    v67 = _AAUISignpostLogSystem(v66);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v104 = v60;
      _os_log_impl(&dword_1C5355000, v67, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInRegisterAccount  enableTelemetry=YES ", buf, 0xCu);
    }

    accountStore = self->_accountStore;
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_81;
    v91[3] = &unk_1E820C938;
    v95 = v60;
    v96 = v62;
    v91[4] = self;
    v92 = v22;
    v94 = v88;
    v93 = resultsCopy;
    [(ACAccountStore *)accountStore aa_registerAppleAccount:v92 withCompletion:v91];
  }

  os_activity_scope_leave(&state);
}

uint64_t __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_76(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [*(a1 + 32) _presentExistingAccountAlert:*(a1 + 40)];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_81(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AAUISignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 67240448;
    *v26 = a2;
    *&v26[4] = 1026;
    *&v26[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignInRegisterAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v11 = _AAUISignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = [v5 code];
    *buf = 134218752;
    *v26 = v13;
    *&v26[8] = 2048;
    v27 = v12;
    v28 = 1026;
    v29 = a2;
    v30 = 1026;
    v31 = v14;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInRegisterAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_82;
  v22[3] = &unk_1E820C910;
  v17 = *(a1 + 56);
  v21 = *(a1 + 32);
  v18 = *(a1 + 48);
  *&v19 = *(a1 + 40);
  *(&v19 + 1) = v17;
  *&v20 = v21;
  *(&v20 + 1) = v18;
  v23 = v20;
  v24 = v19;
  [v15 _verifyLoginResponseForiCloudAccount:v16 withSuccess:a2 response:0 error:v5 completion:v22];
}

void __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_82(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_2;
    v11[3] = &unk_1E820C8E8;
    v11[4] = v9;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = 1;
    v13 = v7;
    v14 = v8;
    [v9 _stashLoginResponseWithAuthenticationResults:v10 completion:v11];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Successfully authenticated account, attempting to enable FindMy if possible...", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_83;
  v6[3] = &unk_1E820C8C0;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 _promptToEnableFindMyIfPossibleWithAccount:v5 completion:v6];
}

uint64_t __75__AAUISignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke_83(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Result of enabling FindMy, didPrompt: %{public}@", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_updateAppleAccountIfNecessary:(id)necessary withAltDSID:(id)d rawPassword:(id)password
{
  v20 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  dCopy = d;
  passwordCopy = password;
  v11 = _AAUILogSystem(passwordCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = necessaryCopy;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Checking to see if we should update altDSID on iCloud account %@", &v18, 0xCu);
  }

  if ([dCopy length])
  {
    aa_altDSID = [necessaryCopy aa_altDSID];
    v13 = [aa_altDSID length];

    v15 = _AAUILogSystem(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v16)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "iCloud account already has altDSID, ignoring...", &v18, 2u);
      }
    }

    else
    {
      if (v16)
      {
        v18 = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Updating iCloud account with altDSID: %@", &v18, 0xCu);
      }

      [necessaryCopy _aa_setAltDSID:dCopy];
      [necessaryCopy _aa_setRawPassword:passwordCopy];
      [(ACAccountStore *)self->_accountStore saveVerifiedAccount:necessaryCopy withCompletionHandler:0];
    }
  }

  else
  {
    v17 = _AAUILogSystem(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "No altDSID provided, nothing to do...", &v18, 2u);
    }
  }
}

- (void)_verifyLoginResponseForiCloudAccount:(id)account withSuccess:(BOOL)success response:(id)response error:(id)error completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  errorCopy = error;
  completionCopy = completion;
  v14 = completionCopy;
  if (!success)
  {
    userInfo = [errorCopy userInfo];
    v21 = [userInfo objectForKey:*MEMORY[0x1E698BAA0]];

    v27 = _AAUILogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v21;
      _os_log_impl(&dword_1C5355000, v27, OS_LOG_TYPE_DEFAULT, "Account is not valid: handling error %@", buf, 0xCu);
    }

    if ([v21 isEqualToString:*MEMORY[0x1E698BAC0]])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke;
      block[3] = &unk_1E820B708;
      block[4] = self;
      v28 = &v39;
      v39 = accountCopy;
      v29 = &v40;
      v40 = v14;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_2;
      v34[3] = &unk_1E820BFF8;
      v34[4] = self;
      v28 = &v35;
      v35 = errorCopy;
      v29 = &v36;
      v36 = accountCopy;
      v37 = v14;
      dispatch_async(MEMORY[0x1E69E96A0], v34);
    }

    v24 = *v28;
    goto LABEL_18;
  }

  v15 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Account is valid: finish account setup", buf, 2u);
  }

  aa_password = [accountCopy aa_password];

  if (aa_password)
  {
    v18 = _AAUILogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "We have a password, setAuthenticated to NO and grab delegate tokens", buf, 2u);
    }

    [accountCopy setAuthenticated:0];
  }

  [(NSLock *)self->_cdpContextsByAccountIDLock lock];
  cdpContextsByAccountID = self->_cdpContextsByAccountID;
  identifier = [accountCopy identifier];
  v21 = [(NSMutableDictionary *)cdpContextsByAccountID objectForKeyedSubscript:identifier];

  v22 = _AAUILogSystem([(NSLock *)self->_cdpContextsByAccountIDLock unlock]);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v22, OS_LOG_TYPE_DEFAULT, "Finished auth'ing account and must validate iCDP state.", buf, 2u);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92;
    v30[3] = &unk_1E820C960;
    v31 = accountCopy;
    selfCopy = self;
    v33 = v14;
    [(AAUISignInFlowController *)self _validateCDPStateForAccount:v31 withCDPContext:v21 completion:v30];

    v24 = v31;
LABEL_18:

    goto LABEL_19;
  }

  if (v23)
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v22, OS_LOG_TYPE_DEFAULT, "Finished auth'ing without a queued CDP context. No need to validate iCDP state.", buf, 2u);
  }

  [(AAUISignInFlowController *)self _saveAccount:accountCopy withAllDataclassesEnabledIfPossibleWithCompletion:v14];
LABEL_19:
}

void __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AAUILogSystem([*(a1 + 32) refresh]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Validating iCDP succeeded! Proceeding with iCloud sign-in...", buf, 2u);
    }

    [*(a1 + 40) _saveAccount:*(a1 + 32) withAllDataclassesEnabledIfPossibleWithCompletion:*(a1 + 48)];
  }

  else
  {
    v8 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92_cold_1(v6, v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_93;
    block[3] = &unk_1E820B708;
    v9 = v6;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_93(uint64_t a1)
{
  if ([*(a1 + 32) shouldDisplayToUser])
  {
    v2 = [*(a1 + 32) userInfo];
    v3 = [v2 objectForKey:*MEMORY[0x1E696A578]];

    if (v3)
    {
      v4 = [*(a1 + 32) userInfo];
      v5 = [v4 objectForKey:*MEMORY[0x1E696A588]];
    }

    else
    {
      v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v3 = [v4 localizedStringForKey:@"VERIFICATION_FAILED_TITLE" value:&stru_1F447F790 table:@"Localizable"];
      v5 = 0;
    }

    v7 = [MEMORY[0x1E69DC650] alertWithTitle:v3 message:v5];
    v8 = MEMORY[0x1E69DC648];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    v11 = [v8 actionWithTitle:v10 style:1 handler:0];
    [v7 addAction:v11];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_2_106;
    v13[3] = &unk_1E820B7A8;
    v15 = *(a1 + 48);
    v14 = *(a1 + 32);
    [WeakRetained presentViewController:v7 animated:1 completion:v13];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (void)_validateCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v10 = MEMORY[0x1E6997800];
  contextCopy = context;
  v12 = [[v10 alloc] initWithContext:contextCopy];

  v13 = objc_alloc(MEMORY[0x1E6997858]);
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v15 = [v13 initWithPresentingViewController:WeakRetained];

  v16 = objc_loadWeakRetained(&self->_presentingViewController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v15 setForceInlinePresentation:1];
  }

  [v12 setUiProvider:v15];
  v18 = accountCopy;
  v19 = v18;
  v20 = v18;
  if (!self->_shouldAutomaticallySaveSignInResults)
  {
    v20 = [v18 copy];

    [(ACAccountStore *)self->_accountStore setNotificationsEnabled:0];
  }

  [v20 setEnabled:1 forDataclass:*MEMORY[0x1E6959B18]];
  [v20 setEnabled:1 forDataclass:*MEMORY[0x1E6959B20]];
  [v20 setEnabled:1 forDataclass:*MEMORY[0x1E6959B00]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke;
  aBlock[3] = &unk_1E820C988;
  aBlock[4] = self;
  v44 = completionCopy;
  v21 = completionCopy;
  v22 = _Block_copy(aBlock);
  v23 = _AAUISignpostLogSystem(v22);
  v24 = _AAUISignpostCreate(v23);
  v26 = v25;

  v28 = _AAUISignpostLogSystem(v27);
  v29 = v28;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v24, "SignInPreflightSave", " enableTelemetry=YES ", buf, 2u);
  }

  v31 = _AAUISignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v46 = v24;
    _os_log_impl(&dword_1C5355000, v31, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPreflightSave  enableTelemetry=YES ", buf, 0xCu);
  }

  accountStore = self->_accountStore;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_110;
  v36[3] = &unk_1E820CA00;
  v41 = v24;
  v42 = v26;
  v37 = v12;
  selfCopy = self;
  v39 = v20;
  v40 = v22;
  v33 = v20;
  v34 = v12;
  v35 = v22;
  [(ACAccountStore *)accountStore saveAccount:v33 withCompletionHandler:v36];
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  [v4 setNotificationsEnabled:1];
  (*(*(a1 + 40) + 16))();
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_110(uint64_t a1, int a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AAUISignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 67240448;
    *v35 = a2;
    *&v35[4] = 1026;
    *&v35[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignInPreflightSave", " DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v11 = _AAUISignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = [v5 code];
    *buf = 134218752;
    *v35 = v13;
    *&v35[8] = 2048;
    v36 = v12;
    v37 = 1026;
    v38 = a2;
    v39 = 1026;
    v40 = v14;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInPreflightSave  DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  if (a2)
  {
    v16 = _AAUISignpostLogSystem(v15);
    v17 = _AAUISignpostCreate(v16);
    v19 = v18;

    v21 = _AAUISignpostLogSystem(v20);
    v22 = v21;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SignInValidateCDP", " enableTelemetry=YES ", buf, 2u);
    }

    v24 = _AAUISignpostLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v35 = v17;
      _os_log_impl(&dword_1C5355000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInValidateCDP  enableTelemetry=YES ", buf, 0xCu);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_111;
    v29[3] = &unk_1E820C9D8;
    v32 = v17;
    v33 = v19;
    v25 = *(a1 + 32);
    v29[4] = *(a1 + 40);
    v31 = *(a1 + 56);
    v30 = *(a1 + 48);
    [v25 handleCloudDataProtectionStateWithCompletion:v29];
  }

  else
  {
    v26 = _AAUILogSystem(v15);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v35 = v5;
      _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "iCDP preflighting failed because we could not save the iCloud account! Error: %@", buf, 0xCu);
    }

    v27 = *(a1 + 56);
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9004 userInfo:0];
    (*(v27 + 16))(v27, 0, v28);
  }
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_111(uint64_t a1, int a2, int a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v9 = _AAUISignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240448;
    *v27 = a3;
    *&v27[4] = 1026;
    *&v27[6] = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SignInValidateCDP", " Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v13 = _AAUISignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = *(a1 + 56);
    v16 = [v7 code];
    *buf = 134218752;
    *v27 = v15;
    *&v27[8] = 2048;
    v28 = v14;
    v29 = 1026;
    v30 = a3;
    v31 = 1026;
    v32 = v16;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInValidateCDP  Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  if (a2 && (*(*(a1 + 32) + 56) & 1) != 0)
  {
    v17 = v7;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = v7;
    v19 = _AAUILogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "Cleaning up temporary account state created during iCDP validation.", buf, 2u);
    }

    v20 = *(a1 + 40);
    v21 = *(*(a1 + 32) + 8);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_112;
    v22[3] = &unk_1E820C9B0;
    v24 = *(a1 + 48);
    v25 = a2;
    v23 = v18;
    [v21 removeAccount:v20 withCompletionHandler:v22];
  }
}

void __82__AAUISignInFlowController__validateCDPStateForAccount_withCDPContext_completion___block_invoke_112(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Failed to clean up after iCDP! Error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_saveAccount:(id)account withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_shouldAutomaticallySaveSignInResults)
  {
    if (self->_pendingCompletion)
    {
      v9 = _AAUILogSystem(completionCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _saveAccount:withAllDataclassesEnabledIfPossibleWithCompletion:];
      }

      v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (v8)[2](v8, 0, 0, v10);
    }

    else
    {
      presentingViewController = [(AAUISignInFlowController *)self presentingViewController];
      if (presentingViewController)
      {
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy__8;
        v38 = __Block_byref_object_dispose__8;
        v39 = [[AAUISignInOperationManager alloc] initWithPresentingViewController:presentingViewController];
        v12 = _AAUISignpostLogSystem([v35[5] setDelegate:self]);
        v13 = _AAUISignpostCreate(v12);
        v15 = v14;

        v17 = _AAUISignpostLogSystem(v16);
        v18 = v17;
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5355000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SignInEnableDataclasses", " enableTelemetry=YES ", buf, 2u);
        }

        v20 = _AAUISignpostLogSystem(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v41 = v13;
          _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableDataclasses  enableTelemetry=YES ", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __91__AAUISignInFlowController__saveAccount_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
        v29 = &unk_1E820CA28;
        v33[1] = v13;
        v33[2] = v15;
        v31 = v8;
        v21 = accountCopy;
        v30 = v21;
        objc_copyWeak(v33, buf);
        v32 = &v34;
        v22 = _Block_copy(&v26);
        pendingCompletion = self->_pendingCompletion;
        self->_pendingCompletion = v22;

        [v35[5] signInAccount:v21 enablingDataclasses:{1, v26, v27, v28, v29}];
        objc_destroyWeak(v33);

        objc_destroyWeak(buf);
        _Block_object_dispose(&v34, 8);
      }

      else
      {
        v24 = _AAUILogSystem(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [AAUISignInFlowController _saveAccount:withAllDataclassesEnabledIfPossibleWithCompletion:];
        }

        v25 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
        (v8)[2](v8, 0, 0, v25);
      }
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, accountCopy, 0);
  }
}

void __91__AAUISignInFlowController__saveAccount_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v8 = _AAUISignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v24 = 67240448;
    *v25 = a2;
    *&v25[4] = 1026;
    *&v25[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SignInEnableDataclasses", " DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0xEu);
  }

  v12 = _AAUISignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = *(a1 + 64);
    v15 = [v6 code];
    v24 = 134218752;
    *v25 = v14;
    *&v25[8] = 2048;
    v26 = v13;
    v27 = 1026;
    v28 = a2;
    v29 = 1026;
    v30 = v15;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInEnableDataclasses  DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x22u);
  }

  v17 = _AAUILogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (a2)
    {
      v18 = @"YES";
    }

    v24 = 138412546;
    *v25 = v18;
    *&v25[8] = 2112;
    v26 = *&v6;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "iCloud account save completed with success: %@, error: %@", &v24, 0x16u);
  }

  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _presentUnableToSaveAccountAlert];
    v20 = *(a1 + 40);
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9004 userInfo:0];
    (*(v20 + 16))(v20, 0, 0, v21);
  }

  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = 0;
}

- (void)_stashLoginResponseWithAuthenticationResults:(id)results completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (self->_shouldStashLoginResponse)
  {
    completionCopy = completion;
    v7 = _AAUISignpostLogSystem(completionCopy);
    v8 = _AAUISignpostCreate(v7);
    v41 = v9;

    v11 = _AAUISignpostLogSystem(v10);
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StashLoginResponse", " enableTelemetry=YES ", buf, 2u);
    }

    v14 = _AAUISignpostLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = v8;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StashLoginResponse  enableTelemetry=YES ", buf, 0xCu);
    }

    v16 = _AAUILogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
    }

    completionCopy2 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
    if (!completionCopy2)
    {
      v18 = _AAUILogSystem(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v19 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
    if (!v19)
    {
      v20 = _AAUILogSystem(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v21 = [objc_alloc(MEMORY[0x1E698B988]) initWithAppleID:completionCopy2 altDSID:v19];
    v22 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
    if (v22)
    {
      [v21 setDSID:v22];
      v23 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBA0]];

      if (v23)
      {
        [v21 setBeneficiaryLogin:1];
      }
    }

    else
    {
      v25 = _AAUILogSystem(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v26 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
    if (v26)
    {
      [v21 setRawPassword:v26];
    }

    else
    {
      v27 = _AAUILogSystem(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [AAUISignInFlowController _stashLoginResponseWithAuthenticationResults:completion:];
      }
    }

    v28 = [(ACAccountStore *)self->_accountStore aa_authKitAccountForAltDSID:v19];
    v29 = v28;
    if (v28)
    {
      credential = [v28 credential];
      v31 = _AAUILogSystem(credential);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v29;
        _os_log_impl(&dword_1C5355000, v31, OS_LOG_TYPE_DEFAULT, "Trying to add CK and PRK for %@ to login context...", buf, 0xCu);
      }

      v32 = [credential credentialItemForKey:*MEMORY[0x1E6959950]];
      [v21 setContinuationKey:v32];

      v33 = [credential credentialItemForKey:*MEMORY[0x1E69599E0]];
      [v21 setPasswordResetKey:v33];
    }

    else
    {
      credential = _AAUILogSystem(0);
      if (os_log_type_enabled(credential, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v19;
        _os_log_impl(&dword_1C5355000, credential, OS_LOG_TYPE_DEFAULT, "No AuthKit account to grab CK and PRK from for altDSID: %@", buf, 0xCu);
      }
    }

    mEMORY[0x1E698B8F8] = [MEMORY[0x1E698B8F8] sharedManager];
    [mEMORY[0x1E698B8F8] setStashedContext:v21];

    mEMORY[0x1E698B8F8]2 = [MEMORY[0x1E698B8F8] sharedManager];
    [mEMORY[0x1E698B8F8]2 persistStashedContext];

    Nanoseconds = _AAUISignpostGetNanoseconds(v8, v41);
    v37 = _AAUISignpostLogSystem(Nanoseconds);
    v38 = v37;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5355000, v38, OS_SIGNPOST_INTERVAL_END, v8, "StashLoginResponse", "", buf, 2u);
    }

    v40 = _AAUISignpostLogSystem(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v44 = v8;
      v45 = 2048;
      v46 = Nanoseconds / 1000000000.0;
      _os_log_impl(&dword_1C5355000, v40, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StashLoginResponse ", buf, 0x16u);
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v24 = *(completion + 2);
    completionCopy2 = completion;
    v24();
  }
}

- (void)_promptToEnableFindMyIfPossibleWithAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  if ([(AAUISignInFlowController *)self activationAction]== 2)
  {
    v8 = _AAUILogSystem(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Activation lock explicitly disabled, not enabling FindMy...";
LABEL_14:
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  shouldAutomaticallySaveSignInResults = [(AAUISignInFlowController *)self shouldAutomaticallySaveSignInResults];
  if ((shouldAutomaticallySaveSignInResults & 1) == 0)
  {
    v8 = _AAUILogSystem(shouldAutomaticallySaveSignInResults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Automatic sign in result save disabled, not enabling FindMy...";
      goto LABEL_14;
    }

LABEL_15:

    completionCopy[2](completionCopy, 0);
    goto LABEL_16;
  }

  v11 = [accountCopy aa_isAccountClass:*MEMORY[0x1E698B760]];
  if (!v11 || (v11 = [accountCopy aa_isPrimaryEmailVerified], (v11 & 1) == 0))
  {
    v8 = _AAUILogSystem(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Account is not a primary with email verified...";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = [accountCopy isProvisionedForDataclass:*MEMORY[0x1E6959B08]];
  if ((v12 & 1) == 0)
  {
    v8 = _AAUILogSystem(v12);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v9 = "Account is not provisioned for FindMy...";
    goto LABEL_14;
  }

  presentingViewController = [(AAUISignInFlowController *)self presentingViewController];
  if (presentingViewController)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke;
    v15[3] = &unk_1E820CAC0;
    v15[4] = self;
    v17 = completionCopy;
    v16 = presentingViewController;
    [(AAUISignInFlowController *)self _hasActivationLockSupportedWatchWithCompletion:v15];
  }

  else
  {
    v14 = _AAUILogSystem(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController _promptToEnableFindMyIfPossibleWithAccount:completion:];
    }

    completionCopy[2](completionCopy, 0);
  }

LABEL_16:
}

void __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_2;
  aBlock[3] = &__block_descriptor_33_e5_v8__0l;
  v15 = a2;
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_119;
  v9[3] = &unk_1E820CA98;
  v9[4] = *(a1 + 32);
  v12 = v6;
  v13 = *(a1 + 48);
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Enabling FindMy for newly added account, hasWatch: %{public}@.", &v7, 0xCu);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = [MEMORY[0x1E699C848] sharedInstance];
    [v5 userNotifiedOfActivationLockForAllPairedDevices];
  }

  v6 = +[AAUIDeviceLocatorService sharedInstance];
  [v6 enableInContext:3];
}

void __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_119(uint64_t a1)
{
  if ([*(a1 + 32) activationAction] == 1)
  {
    (*(*(a1 + 56) + 16))();
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_TITLE"];
    v5 = [v3 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];

    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

    v8 = [MEMORY[0x1E69DC650] alertWithTitle:v5 message:*(a1 + 40)];
    v9 = MEMORY[0x1E69DC648];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__AAUISignInFlowController__promptToEnableFindMyIfPossibleWithAccount_completion___block_invoke_2_124;
    v14[3] = &unk_1E820CA70;
    v15 = *(a1 + 64);
    v10 = [v9 actionWithTitle:v7 style:0 handler:v14];
    [v8 addAction:v10];

    v12 = _AAUILogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Presenting activation lock enable alert...", v13, 2u);
    }

    [*(a1 + 48) presentViewController:v8 animated:1 completion:*(a1 + 56)];
  }
}

- (void)_hasActivationLockSupportedWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AAUISignInFlowController__hasActivationLockSupportedWatchWithCompletion___block_invoke;
  aBlock[3] = &unk_1E820CAE8;
  v5 = completionCopy;
  aBlock[4] = self;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
  getActivePairedDevice = [mEMORY[0x1E69B36C0] getActivePairedDevice];

  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v10 = [getActivePairedDevice supportsCapability:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__AAUISignInFlowController__hasActivationLockSupportedWatchWithCompletion___block_invoke_2;
    v11[3] = &unk_1E820CB10;
    v12 = v6;
    [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __75__AAUISignInFlowController__hasActivationLockSupportedWatchWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (a2)
    {
      v4 = [v6 localizedStringForKey:@"DEVICE_LOCATOR_MESSAGE_WATCH_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
      (*(v2 + 16))(v2, 1, v4);
    }

    else
    {
      v4 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_MESSAGE_REBRAND"];
      v5 = [v6 localizedStringForKey:v4 value:&stru_1F447F790 table:@"Localizable"];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)_presentUnableToSaveAccountAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SAVE_FAILED_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  v11 = [v3 alertWithTitle:v5 message:0];

  v6 = MEMORY[0x1E69DC648];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v9 = [v6 actionWithTitle:v8 style:1 handler:0];
  [v11 addAction:v9];

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

- (void)_showGenericTermsUIforAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    if (self->_pendingCompletion)
    {
      v10 = _AAUILogSystem(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Error! A pending completion for sign-in already exists and we are about to overwrite it!", v21, 2u);
      }
    }

    v11 = _Block_copy(completionCopy);
    pendingCompletion = self->_pendingCompletion;
    self->_pendingCompletion = v11;

    v13 = objc_loadWeakRetained(&self->_presentingViewController);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = objc_loadWeakRetained(&self->_presentingViewController);
    v16 = v15;
    if (isKindOfClass)
    {
      topViewController = [v15 topViewController];

      v16 = topViewController;
    }

    v18 = [[AAUIGenericTermsRemoteUI alloc] initWithAccount:accountCopy inStore:self->_accountStore];
    genericTermsRemoteUI = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v18;

    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI presentFromViewController:v16 modal:1];
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9005 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v20);
  }
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  iCopy = i;
  genericTermsRemoteUI = self->_genericTermsRemoteUI;
  self->_genericTermsRemoteUI = 0;

  v8 = _Block_copy(self->_pendingCompletion);
  pendingCompletion = self->_pendingCompletion;
  self->_pendingCompletion = 0;

  if (success)
  {
    accountStore = self->_accountStore;
    account = [iCopy account];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AAUISignInFlowController_genericTermsRemoteUI_didFinishWithSuccess___block_invoke;
    v13[3] = &unk_1E820C960;
    v13[4] = self;
    v14 = iCopy;
    v15 = v8;
    [(ACAccountStore *)accountStore aa_registerAppleAccount:account withCompletion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AAUISignInErrors" code:-9006 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v12);
  }
}

void __70__AAUISignInFlowController_genericTermsRemoteUI_didFinishWithSuccess___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = [v6 account];
  [v5 _verifyLoginResponseForiCloudAccount:v8 withSuccess:a2 response:0 error:v7 completion:a1[6]];
}

- (void)_presentValidationErrorAlert:(id)alert forAccount:(id)account completion:(id)completion
{
  alertCopy = alert;
  accountCopy = account;
  completionCopy = completion;
  userInfo = [alertCopy userInfo];
  v12 = userInfo;
  v56 = completionCopy;
  if (userInfo)
  {
    v13 = [userInfo objectForKey:*MEMORY[0x1E698BAA0]];
  }

  else
  {
    v13 = 0;
  }

  userInfo2 = [alertCopy userInfo];
  v15 = [userInfo2 objectForKey:*MEMORY[0x1E698BAD0]];

  v55 = v15;
  if (v15)
  {
    localizedDescription = [v15 objectForKey:*MEMORY[0x1E698BAA8]];
    v17 = [v15 objectForKey:*MEMORY[0x1E698BAD8]];
    v15 = [v15 objectForKey:*MEMORY[0x1E698BA98]];
    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    localizedDescription = 0;
  }

  v17 = [(AAUISignInFlowController *)self _titleForError:alertCopy account:accountCopy];
LABEL_9:
  v57 = v17;
  if (!localizedDescription)
  {
    v18 = *MEMORY[0x1E698BAB8];
    if ([v13 isEqualToString:*MEMORY[0x1E698BAB8]])
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_REBRAND", v18];
      v20 = MEMORY[0x1E696AEC0];
      v52 = v12;
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v21 localizedStringForKey:v19 value:&stru_1F447F790 table:@"Localizable"];
      v23 = v22 = v13;
      [accountCopy username];
      v25 = v24 = self;
      localizedDescription = [v20 stringWithFormat:v23, v25];

      self = v24;
      v17 = v57;

      v13 = v22;
      v12 = v52;
    }

    else
    {
      localizedDescription = [alertCopy localizedDescription];
    }
  }

  v26 = [MEMORY[0x1E69DC650] alertWithTitle:v17 message:localizedDescription];
  if ([alertCopy code] == 403 && objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E698BAC8]))
  {
    v49 = MEMORY[0x1E69DC648];
    [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = v53 = v12;
    [v27 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    v28 = v48 = v13;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke;
    v66[3] = &unk_1E820CB38;
    v54 = &v68;
    v29 = v56;
    v30 = v56;
    v68 = v30;
    selfCopy = self;
    v31 = alertCopy;
    v67 = v31;
    [v49 actionWithTitle:v28 style:0 handler:v66];
    v32 = v50 = accountCopy;
    [v26 addAction:v32];

    v33 = MEMORY[0x1E69DC648];
    v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"LEARN_MORE" value:&stru_1F447F790 table:@"Localizable"];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_151;
    v63[3] = &unk_1E820CB38;
    v64 = v31;
    v65 = v30;
    v36 = v31;
    self = selfCopy;
    v37 = v30;
    v38 = v33;
    v13 = v48;
    v39 = [v38 actionWithTitle:v35 style:1 handler:v63];
    [v26 addAction:v39];

    accountCopy = v50;
    v12 = v53;

    v40 = v67;
  }

  else
  {
    if (!v15)
    {
      v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [v41 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    }

    v42 = MEMORY[0x1E69DC648];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_3;
    v58[3] = &unk_1E820CB60;
    v54 = v59;
    v59[0] = v13;
    v59[1] = self;
    v43 = accountCopy;
    v29 = v56;
    v61 = alertCopy;
    v62 = v56;
    v60 = v43;
    v44 = alertCopy;
    v45 = v56;
    v46 = [v42 actionWithTitle:v15 style:1 handler:v58];
    [v26 addAction:v46];

    v40 = v60;
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v26 animated:1 completion:0];
}

uint64_t __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "User dismissed Unsupported Device alert.", v5, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_151(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DDA98];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.me.com/findmyiphone/account"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_2;
  v4[3] = &unk_1E820CAE8;
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 openURL:v3 withCompletionHandler:v4];
}

uint64_t __79__AAUISignInFlowController__presentValidationErrorAlert_forAccount_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E698BAB8]])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);

    return [v2 _showGenericTermsUIforAccount:v3 completion:v4];
  }

  else
  {
    v6 = *(*(a1 + 64) + 16);

    return v6();
  }
}

- (id)_messageForErrorAlert:(int64_t)alert
{
  v3 = (alert + 9011) > 9 || ((1 << (alert + 51)) & 0x203) == 0;
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNABLE_TO_VALIDATE" value:&stru_1F447F790 table:@"Localizable"];
    v8 = [v4 stringWithFormat:v6];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"ALREADY_EXISTING_ACCOUNT_DESC"];
    v7 = [v5 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];
    v8 = [v4 stringWithFormat:v7, @"iCloud"];
  }

  return v8;
}

- (void)_presentExistingAccountAlert:(id)alert
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = MEMORY[0x1E696AAE8];
  alertCopy = alert;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v17 = [v4 stringWithFormat:v8];

  userInfo = [alertCopy userInfo];

  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = [MEMORY[0x1E69DC650] alertWithTitle:v17 message:v10];
  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];
  [v11 addAction:v15];

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

- (id)_titleForError:(id)error account:(id)account
{
  errorCopy = error;
  accountCopy = account;
  userInfo = [errorCopy userInfo];
  v8 = userInfo;
  if (userInfo && (v9 = *MEMORY[0x1E698BAA0], [userInfo objectForKey:*MEMORY[0x1E698BAA0]], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v8 objectForKey:v9];
  }

  else
  {
    v11 = 0;
  }

  code = [errorCopy code];
  if (code == 403)
  {
    if (!v11)
    {
LABEL_13:
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"VERIFICATION_FAILED_TITLE";
      goto LABEL_14;
    }

    if (![v11 isEqualToString:*MEMORY[0x1E698BAB0]])
    {
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = [v11 stringByAppendingString:@"_DYNAMIC_TITLE"];
      aa_displayName = [v14 localizedStringForKey:v18 value:&stru_1F447F790 table:@"Localizable"];

      goto LABEL_15;
    }

LABEL_12:
    aa_displayName = [accountCopy aa_displayName];
    goto LABEL_16;
  }

  if (code != 402)
  {
    if (code != 401)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = v13;
  v15 = @"MOBILEME_PAID_ACCOUNT_LAPSED_TITLE";
LABEL_14:
  aa_displayName = [v13 localizedStringForKey:v15 value:&stru_1F447F790 table:@"Localizable"];
LABEL_15:

LABEL_16:

  return aa_displayName;
}

- (id)_appleAccountType
{
  appleAccountType = self->_appleAccountType;
  if (!appleAccountType)
  {
    v4 = [(ACAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
    v5 = self->_appleAccountType;
    self->_appleAccountType = v4;

    appleAccountType = self->_appleAccountType;
  }

  return appleAccountType;
}

- (void)prewarmOperationsWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E698B968] = [MEMORY[0x1E698B968] sharedServer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke;
  v6[3] = &unk_1E820CBB0;
  v7 = completionCopy;
  v5 = completionCopy;
  [mEMORY[0x1E698B968] configurationWithCompletion:v6];
}

void __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"PREWARM" dataUsingEncoding:4];
  v5 = dispatch_group_create();
  v6 = [v3 absintheEnable];

  if ([v6 unsignedIntegerValue] == 1)
  {
    dispatch_group_enter(v5);
    v7 = [MEMORY[0x1E698B7F8] sharedSigner];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E820CB88;
    v11 = v5;
    [v7 signatureForData:v4 completion:v10];
  }

  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AAUISignInFlowController_prewarmOperationsWithCompletion___block_invoke_3;
    v8[3] = &unk_1E820B820;
    v9 = *(a1 + 32);
    dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v8);
  }
}

- (void)signInOperationManager:(id)manager didSaveAccount:(id)account error:(id)error
{
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, account != 0, account, error);
    v7 = self->_pendingCompletion;
    self->_pendingCompletion = 0;
  }

  else
  {
    v8 = _AAUILogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUISignInFlowController signInOperationManager:didSaveAccount:error:];
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)signInWithIDMSAuthenticationResults:(uint64_t)a1 completion:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Enterprise persona detected: %@", &v2, 0xCu);
}

void __103__AAUISignInFlowController__verifyLoginResponseForiCloudAccount_withSuccess_response_error_completion___block_invoke_92_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Validating iCDP failed with error %@! Blocking iCloud sign-in...", &v2, 0xCu);
}

@end