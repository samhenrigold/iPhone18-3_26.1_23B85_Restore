@interface AASignInFlowController
- (AASignInFlowController)init;
- (AASignInFlowController)initWithAccountStore:(id)store;
- (AASignInFlowController)initWithAccountStore:(id)store dataclassManager:(id)manager;
- (AASignInFlowControllerDelegate)delegate;
- (BOOL)_delegateRequiresTerms;
- (BOOL)_delegateWantsToBackgroundDataclassEnablement;
- (BOOL)_delegateWantsToSkipDataclassEnablement;
- (BOOL)_isAccountImprovementProgramEnabled;
- (BOOL)_newSignInFlow;
- (BOOL)_newSignInReauth;
- (BOOL)_shouldEnableDataclassesForAccount:(id)account;
- (BOOL)_shouldStashLoginResponse;
- (CDPStateUIProvider)cdpUIProvider;
- (id)_aaErrorForErrorCode:(int64_t)code withUnderlyingError:(id)error;
- (id)_aaMessageForErrorCode:(int64_t)code;
- (id)_dataclassActionsForPostCDPSaveForAccount:(id)account;
- (id)_dataclassActionsForPreflightSaveForAccount:(id)account;
- (id)_nameForCloudService;
- (id)_onqueue_createCDPContextWithAuthResults:(id)results;
- (id)_onqueue_createNewAppleAccountWithAuthResults:(id)results accountCreationError:(id *)error;
- (id)_onqueue_updateOrCreateAppleAccountForAuthResults:(id)results accountCreationError:(id *)error;
- (id)_titleForSignInFailureAlert;
- (id)_titleForVerificationFailureAlert;
- (id)_userPersonaUniqueString;
- (id)dataclassManager;
- (unint64_t)_findMyActivationAction;
- (void)_addKeysAndEnrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion;
- (void)_backgroundSaveAccount:(id)account withDataclassEnablement:(BOOL)enablement completion:(id)completion;
- (void)_cacheLoginResponse:(id)response forAccount:(id)account completion:(id)completion;
- (void)_delegate_presentAccountCreationError:(id)error completion:(id)completion;
- (void)_delegate_presentAccountPrivacyOptInForAccount:(id)account userActionCompletion:(id)completion;
- (void)_delegate_presentDataclassActionsForAccount:(id)account completion:(id)completion;
- (void)_delegate_presentGenericTermsUIforAccount:(id)account authResults:(id)results serverError:(id)error completion:(id)completion;
- (void)_delegate_presentProgressViewForAccount:(id)account completion:(id)completion;
- (void)_delegate_presentValidationAlertForError:(id)error forAccount:(id)account completion:(id)completion;
- (void)_enableFindMyIfPossibleWithAccount:(id)account completion:(id)completion;
- (void)_enrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion;
- (void)_isAccountImprovementProgramEnabled;
- (void)_loginAndUpdateiCloudWithAuthResults:(id)results iCloudAccount:(id)account withCompletion:(id)completion;
- (void)_onqueue_addKeysAndEnrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion;
- (void)_onqueue_delegate_enableFindMyWithCompletion:(id)completion;
- (void)_onqueue_delegate_saveAccount:(id)account withDataclassEnablement:(BOOL)enablement completion:(id)completion;
- (void)_onqueue_enableFindMyIfPossibleWithAccount:(id)account completion:(id)completion;
- (void)_onqueue_enrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion;
- (void)_onqueue_legacyRegisterAndVerifyLoginForiCloudAccount:(id)account authResults:(id)results withCompletion:(id)completion;
- (void)_onqueue_prepareExistingAppleAccountForSignIn:(id)in withAuthResults:(id)results accountCreationError:(id *)error;
- (void)_onqueue_registerAndVerifyLoginForiCloudAccount:(id)account authResults:(id)results withCompletion:(id)completion;
- (void)_onqueue_saveAccount:(id)account withAuthResults:(id)results withCDPEnablement:(BOOL)enablement withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion;
- (void)_onqueue_saveAccount:(id)account withDataclassEnablement:(BOOL)enablement completion:(id)completion;
- (void)_onqueue_saveTermsWithAuthResults:(id)results account:(id)account;
- (void)_onqueue_signInWithIDMSAuthenticationResults:(id)results completion:(id)completion;
- (void)_onqueue_updateAppleAccount:(id)account withAuthenticationResults:(id)results;
- (void)_onqueue_updateAppleAccountIfNecessary:(id)necessary withAltDSID:(id)d rawPassword:(id)password;
- (void)_onqueue_validateAndEnrollCDPStateForAccount:(id)account withAuthResults:(id)results completion:(id)completion;
- (void)_onqueue_verifyLoginResponseForiCloudAccount:(id)account withAuthResults:(id)results withSuccess:(BOOL)success error:(id)error completion:(id)completion;
- (void)_preflightSaveWithAuthResults:(id)results account:(id)account withCompletion:(id)completion;
- (void)_registerAndVerifyLoginForiCloudAccount:(id)account authResults:(id)results withCompletion:(id)completion;
- (void)_saveAccount:(id)account withAuthResults:(id)results withCDPEnablement:(BOOL)enablement withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion;
- (void)_stashLoginResponseWithAuthenticationResults:(id)results appleAccount:(id)account;
- (void)_userPersonaUniqueString;
- (void)_validateAndEnrollCDPStateForAccount:(id)account withAuthResults:(id)results completion:(id)completion;
- (void)_verifyLoginResponseForiCloudAccount:(id)account withAuthResults:(id)results withSuccess:(BOOL)success error:(id)error completion:(id)completion;
- (void)prewarmOperationsWithCompletion:(id)completion;
- (void)signInWithIDMSAuthenticationResults:(id)results completion:(id)completion;
@end

@implementation AASignInFlowController

- (AASignInFlowController)init
{
  v3 = objc_opt_new();
  v4 = [(AASignInFlowController *)self initWithAccountStore:v3];

  return v4;
}

- (AASignInFlowController)initWithAccountStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = AASignInFlowController;
  v6 = [(AASignInFlowController *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.AppleAccount.sign-in-flow-controller-ui", v7);
    uiQueue = v6->_uiQueue;
    v6->_uiQueue = v9;

    v11 = dispatch_queue_create("com.apple.AppleAccount.sign-in-flow-controller-utility", v8);
    utilityQueue = v6->_utilityQueue;
    v6->_utilityQueue = v11;

    objc_storeStrong(&v6->_accountStore, store);
  }

  return v6;
}

- (AASignInFlowController)initWithAccountStore:(id)store dataclassManager:(id)manager
{
  managerCopy = manager;
  v8 = [(AASignInFlowController *)self initWithAccountStore:store];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dataclassManager, manager);
  }

  return v9;
}

- (void)signInWithIDMSAuthenticationResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "appleaccount/signin-with-IDMSauthresults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (!completionCopy)
  {
    v10 = _AALogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AASignInFlowController signInWithIDMSAuthenticationResults:completion:];
    }
  }

  uiQueue = self->_uiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AASignInFlowController_signInWithIDMSAuthenticationResults_completion___block_invoke;
  block[3] = &unk_1E7C9A898;
  block[4] = self;
  v17 = resultsCopy;
  v18 = completionCopy;
  v12 = uiQueue;
  v13 = completionCopy;
  v14 = resultsCopy;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v12, v15);

  os_activity_scope_leave(&state);
}

- (void)_registerAndVerifyLoginForiCloudAccount:(id)account authResults:(id)results withCompletion:(id)completion
{
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__AASignInFlowController__registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = accountCopy;
  v19 = resultsCopy;
  v20 = completionCopy;
  v12 = uiQueue;
  v13 = completionCopy;
  v14 = resultsCopy;
  v15 = accountCopy;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_verifyLoginResponseForiCloudAccount:(id)account withAuthResults:(id)results withSuccess:(BOOL)success error:(id)error completion:(id)completion
{
  accountCopy = account;
  resultsCopy = results;
  errorCopy = error;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__AASignInFlowController__verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke;
  v23[3] = &unk_1E7C9A8E8;
  v23[4] = self;
  v24 = accountCopy;
  successCopy = success;
  v25 = resultsCopy;
  v26 = errorCopy;
  v27 = completionCopy;
  v17 = uiQueue;
  v18 = completionCopy;
  v19 = errorCopy;
  v20 = resultsCopy;
  v21 = accountCopy;
  v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v23);
  dispatch_async(v17, v22);
}

- (void)_validateAndEnrollCDPStateForAccount:(id)account withAuthResults:(id)results completion:(id)completion
{
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__AASignInFlowController__validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = accountCopy;
  v19 = resultsCopy;
  v20 = completionCopy;
  v12 = uiQueue;
  v13 = completionCopy;
  v14 = resultsCopy;
  v15 = accountCopy;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_addKeysAndEnrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__AASignInFlowController__addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = accountCopy;
  v19 = contextCopy;
  v20 = completionCopy;
  v12 = uiQueue;
  v13 = completionCopy;
  v14 = contextCopy;
  v15 = accountCopy;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_enrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__AASignInFlowController__enrollCDPStateForAccount_withCDPContext_completion___block_invoke;
  v17[3] = &unk_1E7C9A8C0;
  v17[4] = self;
  v18 = accountCopy;
  v19 = contextCopy;
  v20 = completionCopy;
  v12 = uiQueue;
  v13 = completionCopy;
  v14 = contextCopy;
  v15 = accountCopy;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v17);
  dispatch_async(v12, v16);
}

- (void)_onqueue_signInWithIDMSAuthenticationResults:(id)results completion:(id)completion
{
  v78 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke;
  aBlock[3] = &unk_1E7C9A910;
  v56 = completionCopy;
  v71 = v56;
  v9 = _Block_copy(aBlock);
  objc_storeStrong(&self->_authResults, results);
  v11 = _AASignpostLogSystem(v10);
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v16 = _AASignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "GetLocalAppleAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = _AASignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v73 = v12;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GetLocalAppleAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  v69 = 0;
  v55 = [(AASignInFlowController *)self _onqueue_updateOrCreateAppleAccountForAuthResults:resultsCopy accountCreationError:&v69];
  v20 = v69;
  v21 = v20;
  if (v20)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "code")}];
  }

  else
  {
    v22 = 0;
  }

  telemetryTimeSeries = [(AASignInFlowController *)self telemetryTimeSeries];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "GetLocalAppleAccount", "errorCode"];
  [telemetryTimeSeries setObject:v22 forKeyedSubscript:v24];

  if (v21)
  {
  }

  domain = [v21 domain];
  telemetryTimeSeries2 = [(AASignInFlowController *)self telemetryTimeSeries];
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "GetLocalAppleAccount", "errorDomain"];
  [telemetryTimeSeries2 setObject:domain forKeyedSubscript:v27];

  Nanoseconds = _AASignpostGetNanoseconds(v12, v14);
  v29 = Nanoseconds;
  v30 = _AASignpostLogSystem(Nanoseconds);
  v31 = v30;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    code = [v21 code];
    *buf = 67240192;
    LODWORD(v73) = code;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v31, OS_SIGNPOST_INTERVAL_END, v12, "GetLocalAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v33 = v29 / 1000000000.0;

  v35 = _AASignpostLogSystem(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v21 code];
    *buf = 134218496;
    v73 = v12;
    v74 = 2048;
    v75 = v33;
    v76 = 1026;
    v77 = code2;
    _os_log_impl(&dword_1B6F6A000, v35, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:GetLocalAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  telemetryTimeSeries3 = [(AASignInFlowController *)self telemetryTimeSeries];
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
  [telemetryTimeSeries3 setObject:v38 forKeyedSubscript:@"GetLocalAppleAccount"];

  if (v21)
  {
    [(AASignInFlowController *)self _delegate_presentAccountCreationError:v21 completion:v9];
  }

  else
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_43;
    v65[3] = &unk_1E7C9A960;
    v68 = v9;
    v65[4] = self;
    v39 = resultsCopy;
    v66 = v39;
    v40 = v55;
    v67 = v40;
    v41 = _Block_copy(v65);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_51;
    v61[3] = &unk_1E7C9A8C0;
    v61[4] = self;
    v42 = v40;
    v62 = v42;
    v63 = v39;
    v64 = v41;
    v54 = v41;
    v43 = _Block_copy(v61);
    v44 = _AASignpostLogSystem(v43);
    v45 = _AASignpostCreate(v44);
    v47 = v46;

    v49 = _AASignpostLogSystem(v48);
    v50 = v49;
    if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v50, OS_SIGNPOST_INTERVAL_BEGIN, v45, "SignInPresentProgressView", " enableTelemetry=YES ", buf, 2u);
    }

    v52 = _AASignpostLogSystem(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v73 = v45;
      _os_log_impl(&dword_1B6F6A000, v52, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPresentProgressView  enableTelemetry=YES ", buf, 0xCu);
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52;
    v57[3] = &unk_1E7C9A988;
    v59 = v45;
    v60 = v47;
    v57[4] = self;
    v58 = v43;
    v53 = v43;
    [(AASignInFlowController *)self _delegate_presentProgressViewForAccount:v42 completion:v57];
  }
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_43(uint64_t a1, char a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = _AALogSystem([*(a1 + 32) _stashLoginResponseWithAuthenticationResults:*(a1 + 40) appleAccount:*(a1 + 48)]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully authenticated account, attempting to enable FindMy if possible...", buf, 2u);
    }

    v11 = _AASignpostLogSystem(v10);
    v12 = _AASignpostCreate(v11);
    v14 = v13;

    v16 = _AASignpostLogSystem(v15);
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignInEnableFindMy", " enableTelemetry=YES ", buf, 2u);
    }

    v19 = _AASignpostLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v12;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableFindMy  enableTelemetry=YES ", buf, 0xCu);
    }

    v20 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_44;
    v22[3] = &unk_1E7C9A938;
    v22[4] = v20;
    v26 = v12;
    v27 = v14;
    v21 = *(a1 + 48);
    v25 = *(a1 + 56);
    v28 = a2;
    v23 = v7;
    v24 = v8;
    [v20 _enableFindMyIfPossibleWithAccount:v21 completion:v22];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v5 = [*(a1 + 32) telemetryTimeSeries];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInEnableFindMy", "didEnable"];
  [v5 setObject:v4 forKeyedSubscript:v6];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v8 = Nanoseconds;
  v9 = _AASignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240192;
    LODWORD(v20) = v2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SignInEnableFindMy", " DidEnable=%{public,signpost.telemetry:number1,name=DidEnable}d ", buf, 8u);
  }

  v12 = v8 / 1000000000.0;

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 64);
    *buf = 134218496;
    v20 = v15;
    v21 = 2048;
    v22 = v12;
    v23 = 1026;
    v24 = v2;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInEnableFindMy  DidEnable=%{public,signpost.telemetry:number1,name=DidEnable}d ", buf, 0x1Cu);
  }

  v16 = [*(a1 + 32) telemetryTimeSeries];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v16 setObject:v17 forKeyedSubscript:@"SignInEnableFindMy"];

  return (*(*(a1 + 56) + 16))();
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) _termsAreRequired];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v2)
  {

    return [v3 _delegate_presentGenericTermsUIforAccount:v4 authResults:v5 serverError:0 completion:v6];
  }

  else
  {
    v8 = *(a1 + 56);

    return [v3 _registerAndVerifyLoginForiCloudAccount:v4 authResults:v5 withCompletion:{v8, v6}];
  }
}

uint64_t __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v5 = [*(a1 + 32) telemetryTimeSeries];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPresentProgressView", "didPresent"];
  [v5 setObject:v4 forKeyedSubscript:v6];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v8 = Nanoseconds;
  v9 = _AASignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240192;
    LODWORD(v22) = v2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SignInPresentProgressView", " DidPresent=%{public,signpost.telemetry:number1,name=DidPresent}d ", buf, 8u);
  }

  v12 = v8 / 1000000000.0;

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    *buf = 134218496;
    v22 = v15;
    v23 = 2048;
    v24 = v12;
    v25 = 1026;
    v26 = v2;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPresentProgressView  DidPresent=%{public,signpost.telemetry:number1,name=DidPresent}d ", buf, 0x1Cu);
  }

  v16 = [*(a1 + 32) telemetryTimeSeries];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v16 setObject:v17 forKeyedSubscript:@"SignInPresentProgressView"];

  v19 = _AALogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_onqueue_updateOrCreateAppleAccountForAuthResults:(id)results accountCreationError:(id *)error
{
  resultsCopy = results;
  v7 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  stringValue = [v7 stringValue];

  if (stringValue && ([(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:stringValue], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    self->_existingAccount = 1;
    [(AASignInFlowController *)self _onqueue_prepareExistingAppleAccountForSignIn:v9 withAuthResults:resultsCopy accountCreationError:error];
    if (!error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [(AASignInFlowController *)self _onqueue_createNewAppleAccountWithAuthResults:resultsCopy accountCreationError:error];
    if (!error)
    {
      goto LABEL_8;
    }
  }

  if (*error)
  {
    v11 = 0;
    goto LABEL_9;
  }

LABEL_8:
  [(AASignInFlowController *)self _onqueue_updateAppleAccount:v10 withAuthenticationResults:resultsCopy];
  v11 = v10;
LABEL_9:

  return v11;
}

- (void)_onqueue_prepareExistingAppleAccountForSignIn:(id)in withAuthResults:(id)results accountCreationError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  inCopy = in;
  v9 = *MEMORY[0x1E698DB40];
  resultsCopy = results;
  v11 = [resultsCopy objectForKeyedSubscript:v9];
  v12 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  [(AASignInFlowController *)self _onqueue_updateAppleAccountIfNecessary:inCopy withAltDSID:v11 rawPassword:v12];
  [(AASignInFlowController *)self _onqueue_saveTermsWithAuthResults:resultsCopy account:inCopy];

  v15 = _AALogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    aa_altDSID = [inCopy aa_altDSID];
    v26 = 138412290;
    v27 = aa_altDSID;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: found an existing account with altDSID: %{mask}@", &v26, 0xCu);
  }

  _userPersonaUniqueString = [(AASignInFlowController *)self _userPersonaUniqueString];

  if (_userPersonaUniqueString)
  {
    v19 = _AALogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      aa_altDSID2 = [inCopy aa_altDSID];
      v26 = 138412290;
      v27 = aa_altDSID2;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: found an existing account with altDSID %{mask}@, but we're running in the enterprise persona.", &v26, 0xCu);
    }

    isDataSeparatedAccount = [inCopy isDataSeparatedAccount];
    if (!isDataSeparatedAccount)
    {
      goto LABEL_18;
    }

LABEL_9:
    v22 = _AALogSystem(isDataSeparatedAccount);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _onqueue_prepareExistingAppleAccountForSignIn:withAuthResults:accountCreationError:];
    }

    if (error)
    {
      *error = [(AASignInFlowController *)self _aaErrorForErrorCode:-8012];
    }

    goto LABEL_18;
  }

  isDataSeparatedAccount = [inCopy isDataSeparatedAccount];
  if (isDataSeparatedAccount)
  {
    goto LABEL_9;
  }

  if (!aa_primaryAppleAccount)
  {
    v23 = [inCopy aa_isAccountClass:@"basic"];
    if (v23)
    {
      v24 = _AALogSystem(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = inCopy;
        _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: promoting existing account %@ to primary", &v26, 0xCu);
      }

      [inCopy aa_setAccountClass:@"primary"];
      _nameForCloudService = [(AASignInFlowController *)self _nameForCloudService];
      [inCopy setAccountDescription:_nameForCloudService];
    }
  }

LABEL_18:
}

- (id)_onqueue_createNewAppleAccountWithAuthResults:(id)results accountCreationError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v6 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v7 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  stringValue = [v7 stringValue];

  v30 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];
  v9 = _AALogSystem(v30);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: will sign in a new iCloud Account for %@", buf, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x1E6959A28]);
  aa_appleAccountType = [(ACAccountStore *)self->_accountStore aa_appleAccountType];
  v12 = [v10 initWithAccountType:aa_appleAccountType];

  [v12 setUsername:v6];
  [v12 _aa_setPersonID:stringValue];
  _userPersonaUniqueString = [(AASignInFlowController *)self _userPersonaUniqueString];
  v14 = +[AAPreferences isMultipleFullAccountsEnabled];
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];

  aa_dataSeparatedAccounts = [(ACAccountStore *)self->_accountStore aa_dataSeparatedAccounts];
  v17 = [aa_dataSeparatedAccounts count];

  v19 = _AALogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    if (v14)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (v17)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138412802;
    v32 = v21;
    v33 = 2112;
    v34 = v22;
    if (v17 != 0 && !v14)
    {
      v20 = @"YES";
    }

    v35 = 2112;
    v36 = v20;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: multiple full accounts allowed: %@, already have data separated account: %@, disallow multiple full accounts: %@", buf, 0x20u);
  }

  if (_userPersonaUniqueString == 0 || v17 == 0 || v14)
  {
    v24 = v30;
    if (_userPersonaUniqueString)
    {
      [v12 setAccountDescription:v6];
      [v12 aa_setAccountClass:@"full"];
      [v12 setObject:_userPersonaUniqueString forKeyedSubscript:*MEMORY[0x1E69597A0]];
    }

    else
    {
      if (aa_primaryAppleAccount)
      {
        [v12 setAccountDescription:v6];
        if (v14)
        {
          v26 = AAAccountClassFull;
        }

        else
        {
          v26 = AAAccountClassBasic;
        }
      }

      else
      {
        _nameForCloudService = [(AASignInFlowController *)self _nameForCloudService];
        [v12 setAccountDescription:_nameForCloudService];

        v26 = AAAccountClassPrimary;
      }

      [v12 aa_setAccountClass:*v26];
    }
  }

  else
  {
    v25 = _AALogSystem(v23);
    v24 = v30;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _onqueue_createNewAppleAccountWithAuthResults:accountCreationError:];
    }

    if (error)
    {
      *error = [(AASignInFlowController *)self _aaErrorForErrorCode:-8013];
    }
  }

  if ([v24 unsignedIntValue] == 9)
  {
    [v12 setCredentialLocation:1];
  }

  [(AASignInFlowController *)self _onqueue_saveTermsWithAuthResults:resultsCopy account:v12];

  return v12;
}

- (void)_onqueue_updateAppleAccount:(id)account withAuthenticationResults:(id)results
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  v7 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v8 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  v9 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v10 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD8]];
  v11 = [MEMORY[0x1E6959A30] credentialWithPassword:v7];
  [accountCopy setCredential:v11];
  [accountCopy _aa_setRawPassword:v8];
  [accountCopy _aa_setAltDSID:v9];
  aa_firstName = [accountCopy aa_firstName];

  if (!aa_firstName)
  {
    objc_opt_class();
    v13 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB90]];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = _AALogSystem([accountCopy aa_setFirstName:v14]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_updateAppleAccount:withAuthenticationResults:];
    }
  }

  aa_lastName = [accountCopy aa_lastName];

  if (!aa_lastName)
  {
    objc_opt_class();
    v17 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBB8]];
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = _AALogSystem([accountCopy aa_setLastName:v18]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_updateAppleAccount:withAuthenticationResults:];
    }
  }

  v20 = [resultsCopy objectForKeyedSubscript:@"appProvidedContext"];

  if (v20)
  {
    v22 = _AALogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [resultsCopy objectForKeyedSubscript:@"appProvidedContext"];
      v26 = 138412290;
      v27 = v23;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: AuthContext contains AppProvidedContext: %@", &v26, 0xCu);
    }

    v24 = [resultsCopy objectForKeyedSubscript:@"appProvidedContext"];
    [accountCopy _aa_setAppProvidedContext:v24];
  }

  if ([v10 unsignedIntValue] == 9)
  {
    v25 = 1;
LABEL_23:
    [accountCopy setCredentialLocation:v25];
    goto LABEL_24;
  }

  if (v10)
  {
    v25 = 0;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_onqueue_updateAppleAccountIfNecessary:(id)necessary withAltDSID:(id)d rawPassword:(id)password
{
  v20 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  dCopy = d;
  passwordCopy = password;
  v11 = _AALogSystem(passwordCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = necessaryCopy;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Checking to see if we should update altDSID on iCloud account %@", &v18, 0xCu);
  }

  if ([dCopy length])
  {
    aa_altDSID = [necessaryCopy aa_altDSID];
    v13 = [aa_altDSID length];

    v15 = _AALogSystem(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v16)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "iCloud account already has altDSID, ignoring...", &v18, 2u);
      }
    }

    else
    {
      if (v16)
      {
        v18 = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Updating iCloud account with altDSID: %{mask}@", &v18, 0xCu);
      }

      [necessaryCopy _aa_setRawPassword:passwordCopy];
      [necessaryCopy _aa_setAltDSID:dCopy];
      [(ACAccountStore *)self->_accountStore saveVerifiedAccount:necessaryCopy withCompletionHandler:0];
    }
  }

  else
  {
    v17 = _AALogSystem(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "No altDSID provided, nothing to do...", &v18, 2u);
    }
  }
}

- (void)_onqueue_saveTermsWithAuthResults:(id)results account:(id)account
{
  accountCopy = account;
  v6 = [results objectForKeyedSubscript:*MEMORY[0x1E698DB38]];
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_saveTermsWithAuthResults:account:];
    }

    v9 = objc_opt_new();
    [v9 saveTermsAcceptance:v7 forAccount:accountCopy];
  }
}

- (void)_cacheLoginResponse:(id)response forAccount:(id)account completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  accountCopy = account;
  responseCopy = response;
  v11 = _AASignpostLogSystem(responseCopy);
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v16 = _AASignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignInCacheLoginResponse", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = _AASignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = v12;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInCacheLoginResponse  enableTelemetry=YES ", buf, 0xCu);
  }

  v20 = objc_alloc_init(AADaemonController);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__AASignInFlowController__cacheLoginResponse_forAccount_completion___block_invoke;
  v22[3] = &unk_1E7C9A9B0;
  v24 = v12;
  v25 = v14;
  v22[4] = self;
  v23 = completionCopy;
  v21 = completionCopy;
  [(AADaemonController *)v20 cacheLoginResponse:responseCopy forAccount:accountCopy completion:v22];
}

void __68__AASignInFlowController__cacheLoginResponse_forAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "code")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) telemetryTimeSeries];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInCacheLoginResponse", "errorCode"];
  [v6 setObject:v5 forKeyedSubscript:v7];

  if (v4)
  {
  }

  v8 = [v4 domain];
  v9 = [*(a1 + 32) telemetryTimeSeries];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInCacheLoginResponse", "errorDomain"];
  [v9 setObject:v8 forKeyedSubscript:v10];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v12 = Nanoseconds;
  v13 = _AASignpostLogSystem(Nanoseconds);
  v14 = v13;
  v15 = *(a1 + 48);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67240192;
    LODWORD(v25) = [v4 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_END, v15, "SignInCacheLoginResponse", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v16 = v12 / 1000000000.0;

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 48);
    v20 = [v4 code];
    *buf = 134218496;
    v25 = v19;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = v20;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInCacheLoginResponse  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  v21 = [*(a1 + 32) telemetryTimeSeries];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  [v21 setObject:v22 forKeyedSubscript:@"SignInCacheLoginResponse"];

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, v4);
  }
}

- (void)_onqueue_registerAndVerifyLoginForiCloudAccount:(id)account authResults:(id)results withCompletion:(id)completion
{
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  v11 = +[AAPreferences shouldUseUnifiedLoginEndpoint];
  if (v11)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke;
    aBlock[3] = &unk_1E7C9AA00;
    aBlock[4] = self;
    v12 = accountCopy;
    v21 = v12;
    v13 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_76;
    v16[3] = &unk_1E7C9AA50;
    v16[4] = self;
    v17 = resultsCopy;
    v18 = v13;
    v19 = completionCopy;
    v14 = v13;
    [(AASignInFlowController *)self _loginAndUpdateiCloudWithAuthResults:v17 iCloudAccount:v12 withCompletion:v16];
  }

  else
  {
    v15 = _AALogSystem(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "[Warning] Using legacy non-unified login endpoint path for sign in (not expected)", buf, 2u);
    }

    [(AASignInFlowController *)self _onqueue_legacyRegisterAndVerifyLoginForiCloudAccount:accountCopy authResults:resultsCopy withCompletion:completionCopy];
  }
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74;
    v11[3] = &unk_1E7C9A9D8;
    v12 = v5;
    v13 = *(a1 + 40);
    v14 = v7;
    [v8 _cacheLoginResponse:v12 forAccount:v9 completion:v11];
  }

  else
  {
    v10 = _AALogSystem(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_cold_1();
    }

    v7[2](v7);
  }
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Successfully cached login response (%@) for account (%@)", &v8, 0x16u);
  }

  (*(a1[6] + 16))();
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_76(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 aa_isAARecoverableError];
  if (v12)
  {
    v13 = _AALogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "LoginAndUpdateiCloudAccount failed with recoverable error, retrying once...", buf, 2u);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77;
    v29[3] = &unk_1E7C9AA28;
    v16 = *(a1 + 48);
    v22 = *(a1 + 32);
    v17 = *(&v22 + 1);
    v18 = *(a1 + 56);
    *&v19 = v16;
    *(&v19 + 1) = v18;
    v30 = v22;
    v31 = v19;
    [v14 _loginAndUpdateiCloudWithAuthResults:v15 iCloudAccount:v9 withCompletion:v29];

    v20 = v31;
  }

  else
  {
    v21 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_2;
    v23[3] = &unk_1E7C9A8E8;
    v23[4] = *(a1 + 32);
    v24 = v9;
    v25 = *(a1 + 40);
    v28 = a2;
    v26 = v10;
    v27 = *(a1 + 56);
    (*(v21 + 16))(v21, v11, v23);

    v20 = v24;
  }
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _AALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77_cold_1();
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_78;
  v18[3] = &unk_1E7C9A8E8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v18[4] = *(a1 + 32);
  v19 = v9;
  v23 = a2;
  v20 = v13;
  v21 = v10;
  v22 = *(a1 + 56);
  v15 = *(v14 + 16);
  v16 = v10;
  v17 = v9;
  v15(v14, v11, v18);
}

- (void)_loginAndUpdateiCloudWithAuthResults:(id)results iCloudAccount:(id)account withCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  resultsCopy = results;
  v11 = _AASignpostLogSystem(resultsCopy);
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v16 = _AASignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LoginAndUpdateAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = _AASignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = v12;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginAndUpdateAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  v20 = MEMORY[0x1E6985DB0];
  v21 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v22 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];

  v23 = [v20 analyticsEventWithName:@"com.apple.appleaccount.iCloudAuthLoginAndUpdate" altDSID:v21 flowID:v22];

  v24 = +[AAiCloudLoginAccountRequester delegateParamsForAllDelegates];
  accountStore = self->_accountStore;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __92__AASignInFlowController__loginAndUpdateiCloudWithAuthResults_iCloudAccount_withCompletion___block_invoke;
  v29[3] = &unk_1E7C9AA78;
  v33 = v12;
  v34 = v14;
  v29[4] = self;
  v30 = v23;
  v31 = accountCopy;
  v32 = completionCopy;
  v26 = completionCopy;
  v27 = accountCopy;
  v28 = v23;
  [(ACAccountStore *)accountStore aa_loginAndUpdateiCloudAccount:v27 delegateParams:v24 withCompletion:v29];
}

void __92__AASignInFlowController__loginAndUpdateiCloudWithAuthResults_iCloudAccount_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "LoginAndUpdateAccount", "errorCode"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  if (v9)
  {
  }

  v13 = [v9 domain];
  v14 = [*(a1 + 32) telemetryTimeSeries];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "LoginAndUpdateAccount", "errorDomain"];
  [v14 setObject:v13 forKeyedSubscript:v15];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v17 = Nanoseconds;
  v18 = _AASignpostLogSystem(Nanoseconds);
  v19 = v18;
  v20 = *(a1 + 64);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 67240448;
    *v33 = a2;
    *&v33[4] = 1026;
    *&v33[6] = [v9 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v19, OS_SIGNPOST_INTERVAL_END, v20, "LoginAndUpdateAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v21 = v17 / 1000000000.0;

  v23 = _AASignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 64);
    v25 = [v9 code];
    *buf = 134218752;
    *v33 = v24;
    *&v33[8] = 2048;
    v34 = v21;
    v35 = 1026;
    v36 = a2;
    v37 = 1026;
    v38 = v25;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:LoginAndUpdateAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v26 = [*(a1 + 32) telemetryTimeSeries];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  [v26 setObject:v27 forKeyedSubscript:@"LoginAndUpdateAccount"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 40) setObject:v28 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v9];
  v29 = +[AAAnalyticsRTCReporter reporter];
  [v29 sendEvent:*(a1 + 40)];

  v30 = [v7 responseDictionary];
  v31 = [v30 objectForKeyedSubscript:@"serverInfo"];
  [*(a1 + 48) _aa_setTermsServerInfo:v31];

  (*(*(a1 + 56) + 16))();
}

- (void)_onqueue_legacyRegisterAndVerifyLoginForiCloudAccount:(id)account authResults:(id)results withCompletion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  v11 = _AASignpostLogSystem(completionCopy);
  v12 = _AASignpostCreate(v11);
  v14 = v13;

  v16 = _AASignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignInRegisterAccount", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = _AASignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = v12;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInRegisterAccount  enableTelemetry=YES ", buf, 0xCu);
  }

  accountStore = self->_accountStore;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __107__AASignInFlowController__onqueue_legacyRegisterAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke;
  v24[3] = &unk_1E7C9AAA0;
  v28 = v12;
  v29 = v14;
  v24[4] = self;
  v25 = accountCopy;
  v26 = resultsCopy;
  v27 = completionCopy;
  v21 = completionCopy;
  v22 = resultsCopy;
  v23 = accountCopy;
  [(ACAccountStore *)accountStore aa_registerAppleAccount:v23 withCompletion:v24];
}

void __107__AASignInFlowController__onqueue_legacyRegisterAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) telemetryTimeSeries];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInRegisterAccount", "errorCode"];
  [v8 setObject:v7 forKeyedSubscript:v9];

  if (v6)
  {
  }

  v10 = [v6 domain];
  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInRegisterAccount", "errorDomain"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v14 = Nanoseconds;
  v15 = _AASignpostLogSystem(Nanoseconds);
  v16 = v15;
  v17 = *(a1 + 64);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 67240448;
    *v26 = a2;
    *&v26[4] = 1026;
    *&v26[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_END, v17, "SignInRegisterAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v18 = v14 / 1000000000.0;

  v20 = _AASignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 64);
    v22 = [v6 code];
    *buf = 134218752;
    *v26 = v21;
    *&v26[8] = 2048;
    v27 = v18;
    v28 = 1026;
    v29 = a2;
    v30 = 1026;
    v31 = v22;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInRegisterAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v23 = [*(a1 + 32) telemetryTimeSeries];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  [v23 setObject:v24 forKeyedSubscript:@"SignInRegisterAccount"];

  [*(a1 + 32) _verifyLoginResponseForiCloudAccount:*(a1 + 40) withAuthResults:*(a1 + 48) withSuccess:a2 error:v6 completion:*(a1 + 56)];
}

- (void)_onqueue_verifyLoginResponseForiCloudAccount:(id)account withAuthResults:(id)results withSuccess:(BOOL)success error:(id)error completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  errorCopy = error;
  completionCopy = completion;
  v16 = completionCopy;
  if (success)
  {
    v17 = _AALogSystem(completionCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Account is valid: finish account setup", buf, 2u);
    }

    aa_password = [accountCopy aa_password];

    if (aa_password)
    {
      v20 = _AALogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "We have a password, setAuthenticated to NO and grab delegate tokens", buf, 2u);
      }

      [accountCopy setAuthenticated:0];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke;
    aBlock[3] = &unk_1E7C9AB68;
    aBlock[4] = self;
    v21 = accountCopy;
    v44 = v21;
    v45 = resultsCopy;
    v22 = v16;
    v47 = v22;
    successCopy = success;
    v46 = errorCopy;
    v23 = _Block_copy(aBlock);
    if (+[AAFeatureFlags isBetterSignOutEnabled](AAFeatureFlags, "isBetterSignOutEnabled") && (v24 = [v21 aa_isAccountClass:@"primary"], (v24 & 1) != 0))
    {
      v25 = _AASignpostLogSystem(v24);
      v26 = _AASignpostCreate(v25);
      v38 = v27;
      v28 = v26;

      v30 = _AASignpostLogSystem(v29);
      v31 = v30;
      if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v28, "SignInPresentDataclassActionsSheet", " enableTelemetry=YES ", buf, 2u);
      }

      v33 = _AASignpostLogSystem(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v50 = v28;
        _os_log_impl(&dword_1B6F6A000, v33, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPresentDataclassActionsSheet  enableTelemetry=YES ", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109;
      v39[3] = &unk_1E7C9AB90;
      objc_copyWeak(v42, buf);
      v42[1] = v28;
      v42[2] = v38;
      v40 = v22;
      v41 = v23;
      [(AASignInFlowController *)self _delegate_presentDataclassActionsForAccount:v21 completion:v39];

      objc_destroyWeak(v42);
      objc_destroyWeak(buf);
    }

    else
    {
      v23[2](v23);
    }
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v35 = [userInfo objectForKey:@"localizedError"];

    v37 = _AALogSystem(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v35;
      _os_log_impl(&dword_1B6F6A000, v37, OS_LOG_TYPE_DEFAULT, "Account is not valid: handling error %@", buf, 0xCu);
    }

    if ([v35 isEqualToString:@"MOBILEME_TERMS_OF_SERVICE_UPDATE"])
    {
      [(AASignInFlowController *)self _delegate_presentGenericTermsUIforAccount:accountCopy authResults:resultsCopy serverError:errorCopy completion:v16];
    }

    else
    {
      [(AASignInFlowController *)self _delegate_presentValidationAlertForError:errorCopy forAccount:accountCopy completion:v16];
    }
  }
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) delegate];
    v4 = [v3 skipCDPEnablement];

    if (v4)
    {
      v6 = _AALogSystem(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) aa_altDSID];
        *buf = 138412290;
        v40 = v7;
        _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Skipping iCDP state machine for %{mask}@ because delegate said to.", buf, 0xCu);
      }

LABEL_14:

      v27 = _AALogSystem(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Finished auth'ing account and skipping iCDP state validation.", buf, 2u);
      }

      [*(a1 + 32) _onqueue_saveAccount:*(a1 + 40) withAuthResults:*(a1 + 48) withCDPEnablement:0 withAllDataclassesEnabledIfPossibleWithCompletion:*(a1 + 64)];
      return;
    }
  }

  else
  {
  }

  v8 = [*(a1 + 40) aa_isAccountClass:@"primary"];
  v9 = v8;
  v6 = _AALogSystem(v8);
  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v10)
    {
      v25 = [*(a1 + 40) aa_altDSID];
      *buf = 138412290;
      v40 = v25;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account for %{mask}@ is secondary and MultiUserManatee is off, no iCDP setup will be attempted.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v11 = [*(a1 + 40) aa_altDSID];
    *buf = 138412290;
    v40 = v11;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account for %{mask}@ is primary, proceeding with iCDP setup.", buf, 0xCu);
  }

  v13 = _AALogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Finished auth'ing account and must validate iCDP state.", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_98;
  aBlock[3] = &unk_1E7C9AB18;
  v28 = *(a1 + 32);
  v14 = *(a1 + 40);
  v38 = *(a1 + 72);
  v15 = *(a1 + 56);
  v16 = (a1 + 64);
  v17 = *(a1 + 64);
  *&v18 = v15;
  *(&v18 + 1) = v17;
  v36 = v28;
  v37 = v18;
  v19 = _Block_copy(aBlock);
  v20 = *(a1 + 32);
  v22 = *(a1 + 40);
  v21 = (a1 + 40);
  v23 = v21[1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2;
  v29[3] = &unk_1E7C9AB40;
  objc_copyWeak(&v34, buf);
  v32 = *v16;
  v30 = *v21;
  v31 = v21[1];
  v24 = v19;
  v33 = v24;
  [v20 _onqueue_validateAndEnrollCDPStateForAccount:v22 withAuthResults:v23 completion:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_98(uint64_t a1, char a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _AASignpostLogSystem(v8);
  v10 = _AASignpostCreate(v9);
  v12 = v11;

  v14 = _AASignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SignInPresentPrivacyOptIn", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _AASignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = v10;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPresentPrivacyOptIn  enableTelemetry=YES ", buf, 0xCu);
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99;
  v23[3] = &unk_1E7C9AAF0;
  v30 = *(a1 + 64);
  v23[4] = v18;
  v28 = v10;
  v29 = v12;
  v24 = *(a1 + 48);
  v20 = *(a1 + 56);
  v26 = v8;
  v27 = v20;
  v31 = a2;
  v25 = v7;
  v21 = v8;
  v22 = v7;
  [v18 _delegate_presentAccountPrivacyOptInForAccount:v19 userActionCompletion:v23];
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 88)];
  v6 = [*(a1 + 32) telemetryTimeSeries];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPresentPrivacyOptIn", "success"];
  [v6 setObject:v5 forKeyedSubscript:v7];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v9 = Nanoseconds;
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(a1 + 88);
    *buf = 67240192;
    LODWORD(v31) = v13;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SignInPresentPrivacyOptIn", " Success=%{public,signpost.telemetry:number1,name=Success}d ", buf, 8u);
  }

  v14 = v9 / 1000000000.0;

  v16 = _AASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 72);
    v18 = *(a1 + 88);
    *buf = 134218496;
    v31 = v17;
    v32 = 2048;
    v33 = v14;
    v34 = 1026;
    v35 = v18;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPresentPrivacyOptIn  Success=%{public,signpost.telemetry:number1,name=Success}d ", buf, 0x1Cu);
  }

  v19 = [*(a1 + 32) telemetryTimeSeries];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v19 setObject:v20 forKeyedSubscript:@"SignInPresentPrivacyOptIn"];

  v21 = *(a1 + 40);
  v23 = _AALogSystem(v22);
  v24 = v23;
  if (v21)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_1();
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_2();
  }

  if (*(a1 + 64))
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_106;
      block[3] = &unk_1E7C9AAC8;
      v28 = *(a1 + 64);
      v29 = *(a1 + 89);
      v26 = *(a1 + 48);
      v27 = *(a1 + 56);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = _AALogSystem([*(a1 + 32) refresh]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Validating iCDP succeeded! Proceeding with iCloud sign-in...", v14, 2u);
      }

      if ([v7 _isAccountImprovementProgramEnabled])
      {
        v9 = *(a1 + 56);
      }

      else
      {
        v9 = *(a1 + 48);
      }

      [v7 _saveAccount:*(a1 + 32) withAuthResults:*(a1 + 40) withCDPEnablement:1 withAllDataclassesEnabledIfPossibleWithCompletion:v9];
      goto LABEL_21;
    }

    v12 = _AALogSystem(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_1();
    }

    if ([v5 shouldDisplayToUser])
    {
      [v7 _delegate_presentValidationAlertForError:v5 forAccount:*(a1 + 32) completion:*(a1 + 48)];
      goto LABEL_21;
    }

    v11 = *(a1 + 48);
LABEL_18:
    if (v5)
    {
      (*(v11 + 16))(v11, 0, 0, v5);
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
      (*(v11 + 16))(v11, 0, 0, v13);
    }

    goto LABEL_21;
  }

  v10 = _AALogSystem(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_2();
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_21:
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10 = WeakRetained[14];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPresentDataclassActionsSheet", "didSelectDataclassAction"];
  [v10 setObject:v9 forKeyedSubscript:v11];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v13 = Nanoseconds;
  v14 = _AASignpostLogSystem(Nanoseconds);
  v15 = v14;
  v16 = *(a1 + 56);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 67240192;
    LODWORD(v27) = a2;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_END, v16, "SignInPresentDataclassActionsSheet", " DidPerformDataclassAction=%{public,signpost.telemetry:number1,name=DidPerformDataclassAction}d ", buf, 8u);
  }

  v17 = v13 / 1000000000.0;

  v19 = _AASignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 56);
    *buf = 134218496;
    v27 = v20;
    v28 = 2048;
    v29 = v17;
    v30 = 1026;
    v31 = a2;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPresentDataclassActionsSheet  DidPerformDataclassAction=%{public,signpost.telemetry:number1,name=DidPerformDataclassAction}d ", buf, 0x1Cu);
  }

  v21 = WeakRetained[14];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v21 setObject:v22 forKeyedSubscript:@"SignInPresentDataclassActionsSheet"];

  if ((a2 & 1) != 0 || (v23 = [v7 aa_isAAErrorWithCode:-1], !v23))
  {
    v25 = _AALogSystem(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_2();
    }

    WeakRetained[11] = a3;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v24 = _AALogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_onqueue_validateAndEnrollCDPStateForAccount:(id)account withAuthResults:(id)results completion:(id)completion
{
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  v11 = accountCopy;
  v12 = v11;
  if (self->_shouldAutomaticallySaveSignInResults)
  {
    if (self->_existingAccount)
    {
      v13 = _AALogSystem(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Skipping warmup flag as account already exists.", buf, 2u);
      }
    }

    else
    {
      [v11 setWarmingUp:1];
    }

    v14 = v12;
  }

  else
  {
    [(ACAccountStore *)self->_accountStore setNotificationsEnabled:0];
    v14 = [v12 copy];
  }

  [v14 setEnabled:1 forDataclass:*MEMORY[0x1E6959B18]];
  v15 = *MEMORY[0x1E6959B20];
  if ([v14 isProvisionedForDataclass:*MEMORY[0x1E6959B20]] && (objc_msgSend(v14, "aa_serverDisabledDataclass:", v15) & 1) == 0)
  {
    [v14 setEnabled:1 forDataclass:v15];
  }

  [v14 setEnabled:1 forDataclass:*MEMORY[0x1E6959B00]];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke;
  v19[3] = &unk_1E7C9ABE0;
  v19[4] = self;
  v20 = resultsCopy;
  v21 = v14;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = v14;
  v18 = resultsCopy;
  [(AASignInFlowController *)self _preflightSaveWithAuthResults:v18 account:v17 withCompletion:v19];
}

void __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 aa_isAARecoverableError];
  if ((v5 & 1) != 0 || (v5 = [v4 aa_isXPCError], v5))
  {
    v6 = _AALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "PreflightSave failed with recoverable / xpc error, retrying once...", buf, 2u);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116;
    v10[3] = &unk_1E7C9ABB8;
    v9 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v7 _preflightSaveWithAuthResults:v8 account:v9 withCompletion:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_preflightSaveWithAuthResults:(id)results account:(id)account withCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  accountCopy = account;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9AC08;
  aBlock[4] = self;
  v11 = completionCopy;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  v13 = _AASignpostLogSystem(v12);
  v14 = _AASignpostCreate(v13);
  v32 = v15;

  v17 = _AASignpostLogSystem(v16);
  v18 = v17;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SignInPreflightSave", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = _AASignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = v14;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInPreflightSave  enableTelemetry=YES ", buf, 0xCu);
  }

  v21 = MEMORY[0x1E6985DB0];
  v22 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v23 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
  v24 = [v21 analyticsEventWithName:@"com.apple.appleaccount.iCloudAuthPreflightSave" altDSID:v22 flowID:v23];

  if (+[AAFeatureFlags isBetterSignOutEnabled](AAFeatureFlags, "isBetterSignOutEnabled") && [accountCopy aa_isAccountClass:@"primary"])
  {
    v25 = [(AASignInFlowController *)self _dataclassActionsForPreflightSaveForAccount:accountCopy];
    v26 = _AALogSystem(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _preflightSaveWithAuthResults:account:withCompletion:];
    }
  }

  else
  {
    v25 = 0;
  }

  accountStore = self->_accountStore;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117;
  v33[3] = &unk_1E7C9AC30;
  v38 = v14;
  v39 = v32;
  v33[4] = self;
  v34 = v24;
  v36 = accountCopy;
  v37 = v12;
  v35 = resultsCopy;
  v28 = accountCopy;
  v29 = resultsCopy;
  v30 = v12;
  v31 = v24;
  [(ACAccountStore *)accountStore saveAccount:v28 withDataclassActions:v25 completion:v33];
}

void __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  [v4 setNotificationsEnabled:1];
  (*(*(a1 + 40) + 16))();
}

void __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) telemetryTimeSeries];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPreflightSave", "errorCode"];
  [v8 setObject:v7 forKeyedSubscript:v9];

  if (v6)
  {
  }

  v10 = [v6 domain];
  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInPreflightSave", "errorDomain"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v14 = Nanoseconds;
  v15 = _AASignpostLogSystem(Nanoseconds);
  v16 = v15;
  v17 = *(a1 + 72);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 67240448;
    *v34 = a2;
    *&v34[4] = 1026;
    *&v34[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_END, v17, "SignInPreflightSave", " DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v18 = v14 / 1000000000.0;

  v20 = _AASignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 72);
    v22 = [v6 code];
    *buf = 134218752;
    *v34 = v21;
    *&v34[8] = 2048;
    v35 = v18;
    v36 = 1026;
    v37 = a2;
    v38 = 1026;
    v39 = v22;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInPreflightSave  DidSave=%{public,signpost.telemetry:number1,name=DidSave}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v23 = [*(a1 + 32) telemetryTimeSeries];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  [v23 setObject:v24 forKeyedSubscript:@"SignInPreflightSave"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 40) setObject:v25 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v6];
  v26 = +[AAAnalyticsRTCReporter reporter];
  [v26 sendEvent:*(a1 + 40)];

  if (a2)
  {
    v28 = [*(a1 + 32) _onqueue_createCDPContextWithAuthResults:*(a1 + 48)];
    if (v28)
    {
      [*(a1 + 32) _addKeysAndEnrollCDPStateForAccount:*(a1 + 56) withCDPContext:v28 completion:*(a1 + 64)];
    }

    else
    {
      v30 = _AALogSystem(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117_cold_1();
      }

      v31 = *(a1 + 64);
      v32 = [*(a1 + 32) _aaErrorForErrorCode:-17];
      (*(v31 + 16))(v31, 0, v32);
    }
  }

  else
  {
    v29 = _AALogSystem(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v34 = v6;
      _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "iCDP preflighting failed because we could not save the iCloud account! Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_onqueue_addKeysAndEnrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  v11 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AASignInFlowController _onqueue_addKeysAndEnrollCDPStateForAccount:v11 withCDPContext:? completion:?];
  }

  v12 = [(NSDictionary *)self->_authResults valueForKey:*MEMORY[0x1E698DB60]];
  v13 = v12;
  if (v12)
  {
    v14 = _AALogSystem(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Looks to be a login from custodian recovery flows. Fetching recovery keys for CDP flows", buf, 2u);
    }

    v15 = objc_alloc_init(AACustodianController);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke;
    v16[3] = &unk_1E7C9AC58;
    v17 = contextCopy;
    selfCopy = self;
    v19 = accountCopy;
    v20 = completionCopy;
    [(AACustodianController *)v15 fetchCustodianRecoveryKeysWithSessionID:v13 completion:v16];
  }

  else
  {
    [(AASignInFlowController *)self _onqueue_enrollCDPStateForAccount:accountCopy withCDPContext:contextCopy completion:completionCopy];
  }
}

void __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [getCDPCustodianRecoveryInfoClass() instancesRespondToSelector:sel_recordBuildVersion];
    v9 = objc_alloc(getCDPCustodianRecoveryInfoClass());
    v10 = [v5 wrappedRKC];
    v11 = [v5 wrappingKey];
    v12 = [v5 custodianUUID];
    if (v8)
    {
      v13 = [v5 recordBuildVersion];
      v14 = [v9 initWithWrappedRKC:v10 wrappingKey:v11 custodianUUID:v12 recordBuildVersion:v13];
    }

    else
    {
      v14 = [v9 initWithWrappedRKC:v10 wrappingKey:v11 custodianUUID:v12];
    }

    [*(a1 + 32) setCustodianRecoveryInfo:v14];
    [*(a1 + 32) setType:11];
  }

  else
  {
    v15 = _AALogSystem(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1();
    }
  }

  [*(a1 + 40) _enrollCDPStateForAccount:*(a1 + 48) withCDPContext:*(a1 + 32) completion:*(a1 + 56)];
}

- (id)_dataclassActionsForPreflightSaveForAccount:(id)account
{
  accountCopy = account;
  v5 = _AALogSystem(accountCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AASignInFlowController _dataclassActionsForPreflightSaveForAccount:];
  }

  dataclassActionsStore = self->_dataclassActionsStore;
  if (self->_userSelectedDataclassAction == 1)
  {
    [(AADataclassActionsStore *)dataclassActionsStore deleteActionForKeychainDataclassForAddingAccount:accountCopy];
  }

  else
  {
    [(AADataclassActionsStore *)dataclassActionsStore mergeActionForKeychainDataclassForAddingAccount:accountCopy];
  }
  v7 = ;

  return v7;
}

- (id)_dataclassActionsForPostCDPSaveForAccount:(id)account
{
  accountCopy = account;
  dataclassActionsStore = self->_dataclassActionsStore;
  if (self->_userSelectedDataclassAction == 1)
  {
    [(AADataclassActionsStore *)dataclassActionsStore deleteLocalDataActionsForAddingAccount:accountCopy];
  }

  else
  {
    [(AADataclassActionsStore *)dataclassActionsStore mergeLocalDataIntoSyncDataActionsForAddingAccount:accountCopy];
  }
  v6 = ;

  return v6;
}

- (void)_onqueue_enrollCDPStateForAccount:(id)account withCDPContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  contextCopy = context;
  completionCopy = completion;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v11 = getCDPStateControllerClass_softClass;
  v42 = getCDPStateControllerClass_softClass;
  if (!getCDPStateControllerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v44 = __getCDPStateControllerClass_block_invoke;
    v45 = &unk_1E7C9AE88;
    v46 = &v39;
    __getCDPStateControllerClass_block_invoke(&buf);
    v11 = v40[3];
  }

  v12 = v11;
  _Block_object_dispose(&v39, 8);
  v13 = [[v11 alloc] initWithContext:contextCopy];
  WeakRetained = objc_loadWeakRetained(&self->_cdpUIProvider);
  v15 = WeakRetained == 0;

  if (v15)
  {
    v17 = _AALogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _onqueue_enrollCDPStateForAccount:withCDPContext:completion:];
    }
  }

  else
  {
    v17 = objc_loadWeakRetained(&self->_cdpUIProvider);
    [v13 setUiProvider:v17];
  }

  v19 = _AASignpostLogSystem(v18);
  v20 = _AASignpostCreate(v19);
  v22 = v21;

  v24 = _AASignpostLogSystem(v23);
  v25 = v24;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v20, "SignInValidateCDP", " enableTelemetry=YES ", &buf, 2u);
  }

  v27 = _AASignpostLogSystem(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInValidateCDP  enableTelemetry=YES ", &buf, 0xCu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke;
  v32[3] = &unk_1E7C9ACA8;
  v32[4] = self;
  v33 = v13;
  v37 = v20;
  v38 = v22;
  v35 = accountCopy;
  v36 = completionCopy;
  v34 = contextCopy;
  v28 = accountCopy;
  v29 = completionCopy;
  v30 = contextCopy;
  v31 = v13;
  [v31 handleCloudDataProtectionStateWithCompletion:v32];
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v47 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 40) context];
  v8 = [v7 sharingChannel];
  v9 = [v6 numberWithInt:v8 != 0];
  v10 = [*(a1 + 32) telemetryTimeSeries];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "hasSharingChannel"];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v13 = [*(a1 + 32) telemetryTimeSeries];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "shouldCompleteSignIn"];
  [v13 setObject:v12 forKeyedSubscript:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v16 = [*(a1 + 32) telemetryTimeSeries];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "cloudDataProtectionEnabled"];
  [v16 setObject:v15 forKeyedSubscript:v17];

  if (v47)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v47, "code")}];
  }

  else
  {
    v18 = 0;
  }

  v19 = [*(a1 + 32) telemetryTimeSeries];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "errorCode"];
  [v19 setObject:v18 forKeyedSubscript:v20];

  if (v47)
  {
  }

  v21 = [v47 domain];
  v22 = [*(a1 + 32) telemetryTimeSeries];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInValidateCDP", "errorDomain"];
  [v22 setObject:v21 forKeyedSubscript:v23];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v25 = Nanoseconds;
  v26 = _AASignpostLogSystem(Nanoseconds);
  v27 = v26;
  v28 = *(a1 + 72);
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 67240448;
    *v53 = a3;
    *&v53[4] = 1026;
    *&v53[6] = [v47 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v27, OS_SIGNPOST_INTERVAL_END, v28, "SignInValidateCDP", " Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v29 = v25 / 1000000000.0;

  v31 = _AASignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 72);
    v33 = [v47 code];
    *buf = 134218752;
    *v53 = v32;
    *&v53[8] = 2048;
    v54 = v29;
    v55 = 1026;
    v56 = a3;
    v57 = 1026;
    v58 = v33;
    _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInValidateCDP  Enabled=%{public,signpost.telemetry:number1,name=Enabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v34 = [*(a1 + 32) telemetryTimeSeries];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
  [v34 setObject:v35 forKeyedSubscript:@"SignInValidateCDP"];

  v36 = objc_opt_respondsToSelector();
  if (v36)
  {
    v37 = [*(a1 + 48) telemetryTimeSeries];
    v38 = _AALogSystem(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_2();
    }

    if (v37)
    {
      v39 = [*(a1 + 32) telemetryTimeSeries];
      [v39 addEntriesFromDictionary:v37];
    }
  }

  else
  {
    v37 = _AALogSystem(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1();
    }
  }

  if (a2 && (*(*(a1 + 32) + 56) & 1) != 0)
  {
    v40 = v47;
    v41 = *(a1 + 64);
    if (v41)
    {
      (*(v41 + 16))(v41, 1, v40);
    }
  }

  else
  {
    v42 = v47;
    v43 = _AALogSystem(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v43, OS_LOG_TYPE_DEFAULT, "Cleaning up temporary account state created during iCDP validation.", buf, 2u);
    }

    v44 = *(*(a1 + 32) + 8);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_135;
    v48[3] = &unk_1E7C9AC80;
    v45 = *(a1 + 56);
    v50 = *(a1 + 64);
    v51 = a2;
    v49 = v42;
    [v44 removeAccount:v45 withCompletionHandler:v48];
  }
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_135(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _AALogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Failed to clean up after iCDP! Error: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 48), *(a1 + 32));
  }
}

- (id)_onqueue_createCDPContextWithAuthResults:(id)results
{
  resultsCopy = results;
  delegate = [(AASignInFlowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    cdpContext = [delegate2 cdpContext];

    if (cdpContext)
    {
      delegate3 = [(AASignInFlowController *)self delegate];
      cdpContext2 = [delegate3 cdpContext];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getCDPContextClass_softClass;
  v18 = getCDPContextClass_softClass;
  if (!getCDPContextClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getCDPContextClass_block_invoke;
    v14[3] = &unk_1E7C9AE88;
    v14[4] = &v15;
    __getCDPContextClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  cdpContext2 = [[v10 alloc] initWithAuthenticationResults:resultsCopy];
  messageSession = [(AASignInFlowController *)self messageSession];
  [cdpContext2 setSharingChannel:messageSession];

  [cdpContext2 set_ignoreLockAssertErrors:{-[AASignInFlowController ignoreLockAssertErrors](self, "ignoreLockAssertErrors")}];
LABEL_8:

  return cdpContext2;
}

- (void)_enableFindMyIfPossibleWithAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AASignInFlowController__enableFindMyIfPossibleWithAccount_completion___block_invoke;
  block[3] = &unk_1E7C9A898;
  block[4] = self;
  v14 = accountCopy;
  v15 = completionCopy;
  v9 = uiQueue;
  v10 = completionCopy;
  v11 = accountCopy;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v9, v12);
}

- (void)_onqueue_enableFindMyIfPossibleWithAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  isVirtualMachine = [MEMORY[0x1E6985DD8] isVirtualMachine];
  if (isVirtualMachine)
  {
    v9 = _AALogSystem(isVirtualMachine);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v10 = "Device is a virtual machine, not enabling FindMy...";
      v11 = &v27;
LABEL_19:
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }
  }

  else
  {
    v12 = [(AASignInFlowController *)self _shouldEnableDataclassesForAccount:accountCopy];
    _findMyActivationAction = [(AASignInFlowController *)self _findMyActivationAction];
    if (_findMyActivationAction == 2 || !v12)
    {
      v9 = _AALogSystem(_findMyActivationAction);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v10 = "Activation lock action explicitly disabled, not enabling FindMy...";
        v11 = &v26;
        goto LABEL_19;
      }
    }

    else
    {
      shouldAutomaticallySaveSignInResults = [(AASignInFlowController *)self shouldAutomaticallySaveSignInResults];
      if (shouldAutomaticallySaveSignInResults)
      {
        v15 = [accountCopy aa_isAccountClass:@"primary"];
        if (v15 && (v15 = [accountCopy aa_isPrimaryEmailVerified], (v15 & 1) != 0))
        {
          v16 = *MEMORY[0x1E6959B08];
          v17 = [accountCopy isProvisionedForDataclass:*MEMORY[0x1E6959B08]];
          if ((v17 & 1) == 0)
          {
            v9 = _AALogSystem(v17);
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            v23 = 0;
            v10 = "Account is not provisioned for FindMy...";
            v11 = &v23;
            goto LABEL_19;
          }

          dataclassManager = [(AASignInFlowController *)self dataclassManager];
          userDefaultsDisabledDataclasses = [dataclassManager userDefaultsDisabledDataclasses];
          v20 = [userDefaultsDisabledDataclasses containsObject:v16];

          if (!v20)
          {
            [(AASignInFlowController *)self _onqueue_delegate_enableFindMyWithCompletion:completionCopy];
            goto LABEL_21;
          }

          v9 = _AALogSystem(v21);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 0;
            v10 = "Find My dataclass is disabled in user defaults.";
            v11 = &v22;
            goto LABEL_19;
          }
        }

        else
        {
          v9 = _AALogSystem(v15);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v10 = "Account is not a primary with email verified...";
            v11 = buf;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v9 = _AALogSystem(shouldAutomaticallySaveSignInResults);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 0;
          v10 = "Automatic sign in result save disabled, not enabling FindMy...";
          v11 = &v25;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:

  completionCopy[2](completionCopy, 0);
LABEL_21:
}

- (id)dataclassManager
{
  dataclassManager = self->_dataclassManager;
  if (dataclassManager)
  {
    v3 = dataclassManager;
  }

  else
  {
    v3 = +[AADataclassManager sharedManager];
  }

  return v3;
}

- (void)_saveAccount:(id)account withAuthResults:(id)results withCDPEnablement:(BOOL)enablement withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion
{
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  uiQueue = self->_uiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__AASignInFlowController__saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
  block[3] = &unk_1E7C9ACD0;
  block[4] = self;
  v20 = accountCopy;
  enablementCopy = enablement;
  v21 = resultsCopy;
  v22 = completionCopy;
  v14 = uiQueue;
  v15 = completionCopy;
  v16 = resultsCopy;
  v17 = accountCopy;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v14, v18);
}

- (void)_backgroundSaveAccount:(id)account withDataclassEnablement:(BOOL)enablement completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  utilityQueue = self->_utilityQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__AASignInFlowController__backgroundSaveAccount_withDataclassEnablement_completion___block_invoke;
  v15[3] = &unk_1E7C9ACF8;
  v15[4] = self;
  v16 = accountCopy;
  enablementCopy = enablement;
  v17 = completionCopy;
  v11 = utilityQueue;
  v12 = completionCopy;
  v13 = accountCopy;
  v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_DEFAULT, 0, v15);
  dispatch_async(v11, v14);
}

- (void)_onqueue_saveAccount:(id)account withAuthResults:(id)results withCDPEnablement:(BOOL)enablement withAllDataclassesEnabledIfPossibleWithCompletion:(id)completion
{
  enablementCopy = enablement;
  v64 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  completionCopy = completion;
  v13 = completionCopy;
  if (self->_shouldAutomaticallySaveSignInResults)
  {
    if (self->_pendingSignIn)
    {
      v14 = _AALogSystem(completionCopy);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AASignInFlowController _onqueue_saveAccount:withAuthResults:withCDPEnablement:withAllDataclassesEnabledIfPossibleWithCompletion:];
      }

      v15 = [(AASignInFlowController *)self _aaErrorForErrorCode:-8004];
      (v13)[2](v13, 0, 0, v15);
    }

    else
    {
      self->_pendingSignIn = 1;
      [accountCopy refresh];
      isWarmingUp = [accountCopy isWarmingUp];
      if (isWarmingUp)
      {
        v17 = _AALogSystem(isWarmingUp);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Account is no longer warming up.", buf, 2u);
        }

        [accountCopy setWarmingUp:0];
      }

      v18 = enablementCopy && [(AASignInFlowController *)self _delegateWantsToBackgroundDataclassEnablement];
      _newSignInFlow = [(AASignInFlowController *)self _shouldEnableDataclassesForAccount:accountCopy];
      if (_newSignInFlow)
      {
        _newSignInFlow = [accountCopy aa_isAccountClass:@"primary"];
        if (_newSignInFlow)
        {
          _newSignInFlow = [(AASignInFlowController *)self _newSignInFlow];
          v20 = _newSignInFlow ^ 1;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = _AALogSystem(_newSignInFlow);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v61 = enablementCopy;
        *&v61[4] = 1024;
        *&v61[6] = v18;
        v62 = 1024;
        v63 = v20;
        _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Saving account - isEnablingCDP: %{BOOL}d, wantsBackgroundDataclassEnablement %{BOOL}d, dataclassEnablement: %{BOOL}d", buf, 0x14u);
      }

      v22 = MEMORY[0x1E6985DB0];
      v23 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
      v24 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
      v25 = [v22 analyticsEventWithName:@"com.apple.appleaccount.iCloudAccountAdd" altDSID:v23 flowID:v24];

      if (v18)
      {
        v27 = _AALogSystem(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v61 = v20;
          _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Kicking off accounts save with dataclass enablement (%{BOOL}d) in the background.", buf, 8u);
        }

        v29 = _AASignpostLogSystem(v28);
        v30 = _AASignpostCreate(v29);
        v32 = v31;

        v34 = _AASignpostLogSystem(v33);
        v35 = v34;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v30, "SignInEnableDataclasses", " enableTelemetry=YES ", buf, 2u);
        }

        v37 = _AASignpostLogSystem(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v61 = v30;
          _os_log_impl(&dword_1B6F6A000, v37, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableDataclasses  enableTelemetry=YES ", buf, 0xCu);
        }

        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke;
        v55[3] = &unk_1E7C9AD20;
        v58 = v30;
        v59 = v32;
        v56 = v25;
        selfCopy = self;
        v38 = v25;
        [(AASignInFlowController *)self _backgroundSaveAccount:accountCopy withDataclassEnablement:v20 completion:v55];
        (v13)[2](v13, 1, accountCopy, 0);
        v39 = v56;
      }

      else
      {
        v40 = _AASignpostLogSystem(v26);
        v41 = _AASignpostCreate(v40);
        v43 = v42;

        v45 = _AASignpostLogSystem(v44);
        v46 = v45;
        if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v41, "SignInEnableDataclasses", " enableTelemetry=YES ", buf, 2u);
        }

        v48 = _AASignpostLogSystem(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v61 = v41;
          _os_log_impl(&dword_1B6F6A000, v48, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInEnableDataclasses  enableTelemetry=YES ", buf, 0xCu);
        }

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke_141;
        v50[3] = &unk_1E7C9AD48;
        v53 = v41;
        v54 = v43;
        v50[4] = self;
        v51 = v25;
        v52 = v13;
        v49 = v25;
        [(AASignInFlowController *)self _onqueue_delegate_saveAccount:accountCopy withDataclassEnablement:v20 completion:v50];

        v39 = v51;
      }
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, accountCopy, 0);
  }
}

void __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  v8 = +[AAAnalyticsRTCReporter reporter];
  [v8 sendEvent:*(a1 + 32)];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v17 = 67240448;
    *v18 = a2;
    *&v18[4] = 1026;
    *&v18[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SignInEnableDataclasses", " Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0xEu);
  }

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v16 = [v6 code];
    v17 = 134218752;
    *v18 = v15;
    *&v18[8] = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = a2;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInEnableDataclasses  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x22u);
  }
}

void __131__AASignInFlowController__onqueue_saveAccount_withAuthResults_withCDPEnablement_withAllDataclassesEnabledIfPossibleWithCompletion___block_invoke_141(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) telemetryTimeSeries];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInEnableDataclasses", "errorCode"];
  [v11 setObject:v10 forKeyedSubscript:v12];

  if (v9)
  {
  }

  v13 = [v9 domain];
  v14 = [*(a1 + 32) telemetryTimeSeries];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "SignInEnableDataclasses", "errorDomain"];
  [v14 setObject:v13 forKeyedSubscript:v15];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v17 = Nanoseconds;
  v18 = _AASignpostLogSystem(Nanoseconds);
  v19 = v18;
  v20 = *(a1 + 56);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 67240448;
    *v34 = a2;
    *&v34[4] = 1026;
    *&v34[6] = [v9 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v19, OS_SIGNPOST_INTERVAL_END, v20, "SignInEnableDataclasses", " Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v21 = v17 / 1000000000.0;

  v23 = _AASignpostLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 56);
    v25 = [v9 code];
    *buf = 134218752;
    *v34 = v24;
    *&v34[8] = 2048;
    v35 = v21;
    v36 = 1026;
    v37 = a2;
    v38 = 1026;
    v39 = v25;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInEnableDataclasses  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  v26 = [*(a1 + 32) telemetryTimeSeries];
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  [v26 setObject:v27 forKeyedSubscript:@"SignInEnableDataclasses"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [*(a1 + 40) setObject:v28 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v9];
  v29 = +[AAAnalyticsRTCReporter reporter];
  [v29 sendEvent:*(a1 + 40)];

  *(*(a1 + 32) + 24) = 0;
  v31 = _AALogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = @"NO";
    if (a2)
    {
      v32 = @"YES";
    }

    *buf = 138412546;
    *v34 = v32;
    *&v34[8] = 2112;
    v35 = *&v9;
    _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "iCloud account save completed with success: %@, error: %@", buf, 0x16u);
  }

  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _delegate_presentAccountCreationError:v9 completion:*(a1 + 48)];
  }
}

- (void)_onqueue_saveAccount:(id)account withDataclassEnablement:(BOOL)enablement completion:(id)completion
{
  enablementCopy = enablement;
  accountCopy = account;
  completionCopy = completion;
  if (!self->_signInOperationHelper)
  {
    v10 = objc_alloc_init(AASignInOperationHelper);
    signInOperationHelper = self->_signInOperationHelper;
    self->_signInOperationHelper = v10;
  }

  if (-[AASignInFlowController _shouldEnableDataclassesForAccount:](self, "_shouldEnableDataclassesForAccount:", accountCopy) && +[AAFeatureFlags isBetterSignOutEnabled](AAFeatureFlags, "isBetterSignOutEnabled") && [accountCopy aa_isAccountClass:@"primary"])
  {
    v12 = [(AASignInFlowController *)self _dataclassActionsForPostCDPSaveForAccount:accountCopy];
    v13 = _AALogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _onqueue_saveAccount:withDataclassEnablement:completion:];
    }

    v14 = self->_signInOperationHelper;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__AASignInFlowController__onqueue_saveAccount_withDataclassEnablement_completion___block_invoke;
    v21[3] = &unk_1E7C9AD70;
    v22 = accountCopy;
    v23 = completionCopy;
    v15 = accountCopy;
    v16 = completionCopy;
    [(AASignInOperationHelper *)v14 signInAccount:v15 withDataclassActions:v12 completion:v21];
  }

  else
  {
    v17 = self->_signInOperationHelper;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__AASignInFlowController__onqueue_saveAccount_withDataclassEnablement_completion___block_invoke_2;
    v18[3] = &unk_1E7C9AD70;
    v19 = accountCopy;
    v20 = completionCopy;
    v16 = accountCopy;
    v12 = completionCopy;
    [(AASignInOperationHelper *)v17 signInAccount:v16 enablingDataclasses:enablementCopy completion:v18];

    v15 = v20;
  }
}

uint64_t __82__AASignInFlowController__onqueue_saveAccount_withDataclassEnablement_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    return (*(v4 + 16))(v4, 1, *(a1 + 32), 0);
  }

  else
  {
    return (*(v4 + 16))(v4, a2, 0, a3);
  }
}

uint64_t __82__AASignInFlowController__onqueue_saveAccount_withDataclassEnablement_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    return (*(v4 + 16))(v4, 1, *(a1 + 32), 0);
  }

  else
  {
    return (*(v4 + 16))(v4, a2, 0, a3);
  }
}

- (void)_delegate_presentAccountCreationError:(id)error completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  _titleForSignInFailureAlert = [(AASignInFlowController *)self _titleForSignInFailureAlert];
  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v12 = _AALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v22 = errorCopy;
    v23 = 2112;
    v24 = _titleForSignInFailureAlert;
    v25 = 2112;
    v26 = v10;
    _os_log_error_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_ERROR, "AASignInFlowController: Sign in - account creation failed with error: %@, title: %@, message: %@", buf, 0x20u);
  }

  delegate = [(AASignInFlowController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke;
    block[3] = &unk_1E7C9ADC0;
    block[4] = self;
    v17 = _titleForSignInFailureAlert;
    v18 = v10;
    v20 = completionCopy;
    v19 = errorCopy;
    v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, errorCopy);
  }
}

void __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2;
  v6[3] = &unk_1E7C9AD98;
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 signInFlowController:v3 showAlertWithTitle:v4 message:v5 completion:v6];
}

uint64_t __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _AALogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_delegate_presentGenericTermsUIforAccount:(id)account authResults:(id)results serverError:(id)error completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  errorCopy = error;
  completionCopy = completion;
  v14 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = accountCopy;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account needs terms: %@", buf, 0xCu);
  }

  delegate = [(AASignInFlowController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke;
    v21[3] = &unk_1E7C9A8C0;
    v22 = resultsCopy;
    v23 = accountCopy;
    selfCopy = self;
    v25 = completionCopy;
    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v21);
    dispatch_async(MEMORY[0x1E69E96A0], v18);

    v19 = v22;
  }

  else
  {
    v20 = _AALogSystem(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AASignInFlowController _delegate_presentGenericTermsUIforAccount:authResults:serverError:completion:];
    }

    v19 = [(AASignInFlowController *)self _aaErrorForErrorCode:-8010 withUnderlyingError:errorCopy];
    (*(completionCopy + 2))(completionCopy, 0, 0, v19);
  }
}

void __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = _AASignpostLogSystem(a1);
  v3 = _AASignpostCreate(v2);
  v5 = v4;

  v7 = _AASignpostLogSystem(v6);
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v3, "TermsAcceptance", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _AASignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v3;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TermsAcceptance  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = [a1[4] objectForKeyedSubscript:@"appProvidedContext"];
  v12 = v11;
  if (v11)
  {
    v13 = _AALogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Auth results contains an app provided context to add to the Apple Account: %@", buf, 0xCu);
    }

    [a1[5] _aa_setAppProvidedContext:v12];
  }

  v14 = [a1[6] delegate];
  v16 = a1[5];
  v15 = a1[6];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke_151;
  v17[3] = &unk_1E7C9AD48;
  v17[4] = v15;
  v20 = v3;
  v21 = v5;
  v18 = a1[4];
  v19 = a1[7];
  [v14 signInFlowController:v15 presentGenericTermsUIForAccount:v16 completion:v17];
}

void __103__AASignInFlowController__delegate_presentGenericTermsUIforAccount_authResults_serverError_completion___block_invoke_151(uint64_t a1, int a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _AALogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v33 = v10;
    v34 = 2112;
    v35 = *&v8;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AASignInFlowController: Account accepted terms: %@, error: %@", buf, 0x16u);
  }

  if (v8)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 32) telemetryTimeSeries];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "TermsAcceptance", "errorCode"];
  [v12 setObject:v11 forKeyedSubscript:v13];

  if (v8)
  {
  }

  v14 = [v8 domain];
  v15 = [*(a1 + 32) telemetryTimeSeries];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%s", "TermsAcceptance", "errorDomain"];
  [v15 setObject:v14 forKeyedSubscript:v16];

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v18 = Nanoseconds;
  v19 = _AASignpostLogSystem(Nanoseconds);
  v20 = v19;
  v21 = *(a1 + 56);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v22 = [v8 code];
    *buf = 67240192;
    LODWORD(v33) = v22;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v20, OS_SIGNPOST_INTERVAL_END, v21, "TermsAcceptance", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v23 = v18 / 1000000000.0;

  v25 = _AASignpostLogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 56);
    v27 = [v8 code];
    *buf = 134218496;
    v33 = v26;
    v34 = 2048;
    v35 = v23;
    v36 = 1026;
    v37 = v27;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:TermsAcceptance  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  v28 = [*(a1 + 32) telemetryTimeSeries];
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
  [v28 setObject:v29 forKeyedSubscript:@"TermsAcceptance"];

  if (a2)
  {
    [*(a1 + 32) _registerAndVerifyLoginForiCloudAccount:v7 authResults:*(a1 + 40) withCompletion:*(a1 + 48)];
  }

  else
  {
    v30 = *(a1 + 48);
    if (v8)
    {
      (*(v30 + 16))(v30, 0, 0, v8);
    }

    else
    {
      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:-8006 userInfo:0];
      (*(v30 + 16))(v30, 0, 0, v31);
    }
  }
}

- (void)_delegate_presentValidationAlertForError:(id)error forAccount:(id)account completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKey:*MEMORY[0x1E696A578]];
  v11 = v10;
  if (v10)
  {
    _titleForVerificationFailureAlert = v10;
  }

  else
  {
    _titleForVerificationFailureAlert = [(AASignInFlowController *)self _titleForVerificationFailureAlert];
  }

  v13 = _titleForVerificationFailureAlert;

  userInfo2 = [errorCopy userInfo];
  v15 = [userInfo2 objectForKey:*MEMORY[0x1E696A588]];

  v17 = _AALogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v27 = errorCopy;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v15;
    _os_log_error_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_ERROR, "AASignInFlowController: Sign in - validation failed with error: %@, title: %@, message: %@", buf, 0x20u);
  }

  delegate = [(AASignInFlowController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke;
    block[3] = &unk_1E7C9ADC0;
    block[4] = self;
    v22 = v13;
    v23 = v15;
    v25 = completionCopy;
    v24 = errorCopy;
    v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, errorCopy);
  }
}

void __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2;
  v6[3] = &unk_1E7C9AD98;
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 signInFlowController:v3 showAlertWithTitle:v4 message:v5 completion:v6];
}

uint64_t __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _AALogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_delegate_presentProgressViewForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    delegate = [(AASignInFlowController *)self delegate];
    v10 = objc_opt_respondsToSelector();
    v11 = v10;
    v12 = _AALogSystem(v10);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [AASignInFlowController _delegate_presentProgressViewForAccount:completion:];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77__AASignInFlowController__delegate_presentProgressViewForAccount_completion___block_invoke;
      v16[3] = &unk_1E7C9A8C0;
      v17 = delegate;
      selfCopy = self;
      v19 = accountCopy;
      v20 = completionCopy;
      v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v16);
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AASignInFlowController _delegate_presentProgressViewForAccount:completion:];
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0);
      }
    }
  }

  else
  {
    v15 = _AALogSystem(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _delegate_presentProgressViewForAccount:completion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_delegate_presentDataclassActionsForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v8 = [[AADataclassActionsStore alloc] initWithAccount:accountCopy];
  dataclassActionsStore = self->_dataclassActionsStore;
  self->_dataclassActionsStore = v8;

  v10 = objc_alloc_init(AASignedOutAccountKeychain);
  v31 = 0;
  v11 = [(AASignedOutAccountKeychain *)v10 fetchLastSignedOutAccountAltDSID:&v31];
  v12 = v31;
  v13 = v12;
  if (v12)
  {
    v14 = _AALogSystem(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
  }

  else
  {
    aa_altDSID = [accountCopy aa_altDSID];
    v16 = [aa_altDSID isEqualToString:v11];

    v18 = _AALogSystem(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v19)
      {
        [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
      }

      (*(completionCopy + 2))(completionCopy, 1, 2, 0);
    }

    else
    {
      if (v19)
      {
        [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
      }

      delegate = [(AASignInFlowController *)self delegate];
      v21 = objc_opt_respondsToSelector();
      v22 = v21;
      v23 = _AALogSystem(v21);
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __81__AASignInFlowController__delegate_presentDataclassActionsForAccount_completion___block_invoke;
        block[3] = &unk_1E7C9A8C0;
        v27 = delegate;
        selfCopy = self;
        v29 = accountCopy;
        v30 = completionCopy;
        v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, block);
        dispatch_async(MEMORY[0x1E69E96A0], v25);
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [AASignInFlowController _delegate_presentDataclassActionsForAccount:completion:];
        }

        (*(completionCopy + 2))(completionCopy, 1, 0, 0);
      }
    }
  }
}

- (void)_delegate_presentAccountPrivacyOptInForAccount:(id)account userActionCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignInFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  v11 = _AALogSystem(v9);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __94__AASignInFlowController__delegate_presentAccountPrivacyOptInForAccount_userActionCompletion___block_invoke;
    v15[3] = &unk_1E7C9A8C0;
    v16 = delegate;
    selfCopy = self;
    v18 = accountCopy;
    v19 = completionCopy;
    v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INTERACTIVE, 0, v15);
    dispatch_async(MEMORY[0x1E69E96A0], v13);

    v14 = v16;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [AASignInFlowController _delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:];
  }

  if (completionCopy)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:-8016 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v14);
LABEL_9:
  }
}

- (void)_onqueue_delegate_saveAccount:(id)account withDataclassEnablement:(BOOL)enablement completion:(id)completion
{
  enablementCopy = enablement;
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignInFlowController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && enablementCopy)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    [delegate2 signInFlowController:self saveAccount:accountCopy withAllDataclassesEnabledIfPossibleWithCompletion:completionCopy];
  }

  else
  {
    [(AASignInFlowController *)self _onqueue_saveAccount:accountCopy withDataclassEnablement:enablementCopy completion:completionCopy];
  }
}

- (void)_onqueue_delegate_enableFindMyWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(AASignInFlowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    _findMyActivationAction = [(AASignInFlowController *)self _findMyActivationAction];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke;
    v11[3] = &unk_1E7C9A780;
    v12 = completionCopy;
    [delegate2 signInFlowController:self enableFindMyWithAction:_findMyActivationAction completion:v11];
  }

  else
  {
    v10 = _AALogSystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AASignInFlowController *)self _onqueue_delegate_enableFindMyWithCompletion:v10];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _AALogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)_nameForCloudService
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SERVICE_TYPE_ICLOUD" value:0 table:@"Localizable"];

  return v3;
}

- (id)_titleForSignInFailureAlert
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_titleForVerificationFailureAlert
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"VERIFICATION_FAILED_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_aaErrorForErrorCode:(int64_t)code withUnderlyingError:(id)error
{
  errorCopy = error;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(AASignInFlowController *)self _aaMessageForErrorCode:code];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

  if (errorCopy)
  {
    [dictionary setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:code userInfo:dictionary];

  return v9;
}

- (id)_aaMessageForErrorCode:(int64_t)code
{
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:@"UNABLE_TO_VALIDATE" value:0 table:@"Localizable"];

  if ([(AASignInFlowController *)self _isDuplicateAccountError:code])
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v8 = [v7 localizedStringForKey:@"ALREADY_EXISTING_ACCOUNT_DESC" value:0 table:@"Localizable"];

    v6 = v8;
  }

  return v6;
}

- (BOOL)_delegateWantsToSkipDataclassEnablement
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    skipDataclassEnablement = [delegate2 skipDataclassEnablement];

    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (skipDataclassEnablement)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Delegate wants to skip dataclass enablement: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(skipDataclassEnablement) = 0;
  }

  return skipDataclassEnablement;
}

- (BOOL)_delegateWantsToBackgroundDataclassEnablement
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    backgroundDataclassEnablement = [delegate2 backgroundDataclassEnablement];

    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (backgroundDataclassEnablement)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Delegate wants to background dataclass enablement: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(backgroundDataclassEnablement) = 0;
  }

  return backgroundDataclassEnablement;
}

- (BOOL)_delegateRequiresTerms
{
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(AASignInFlowController *)self delegate];
  requiredTerms = [delegate2 requiredTerms];
  v7 = [requiredTerms count] != 0;

  return v7;
}

- (unint64_t)_findMyActivationAction
{
  v12 = *MEMORY[0x1E69E9840];
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(AASignInFlowController *)self delegate];
  findMyActivationAction = [delegate2 findMyActivationAction];

  if (findMyActivationAction)
  {
    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = findMyActivationAction;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Delegate provided custom activation action: %lu", &v10, 0xCu);
    }
  }

  return findMyActivationAction;
}

- (BOOL)_shouldEnableDataclassesForAccount:(id)account
{
  accountCopy = account;
  if ([(AASignInFlowController *)self _delegateWantsToSkipDataclassEnablement]|| self->_existingAccount && ![(AASignInFlowController *)self _newSignInReauth])
  {
    aa_isPrimaryEmailVerified = 0;
  }

  else
  {
    aa_isPrimaryEmailVerified = [accountCopy aa_isPrimaryEmailVerified];
  }

  return aa_isPrimaryEmailVerified;
}

- (BOOL)_newSignInReauth
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    newSignInReauth = [delegate2 newSignInReauth];

    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (newSignInReauth)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Delegate indicates new sign in reauth: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(newSignInReauth) = 0;
  }

  return newSignInReauth;
}

- (BOOL)_newSignInFlow
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    newSignInFlow = [delegate2 newSignInFlow];

    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (newSignInFlow)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Delegate wants to start new sign in flow: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(newSignInFlow) = 0;
  }

  return newSignInFlow;
}

- (BOOL)_shouldStashLoginResponse
{
  v13 = *MEMORY[0x1E69E9840];
  delegate = [(AASignInFlowController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(AASignInFlowController *)self delegate];
    shouldStashLoginResponse = [delegate2 shouldStashLoginResponse];

    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (shouldStashLoginResponse)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Delegate wants to stash login response: %@", &v11, 0xCu);
    }
  }

  else
  {
    LOBYTE(shouldStashLoginResponse) = 0;
  }

  return shouldStashLoginResponse;
}

- (void)_stashLoginResponseWithAuthenticationResults:(id)results appleAccount:(id)account
{
  resultsCopy = results;
  accountCopy = account;
  if ([(AASignInFlowController *)self _shouldStashLoginResponse])
  {
    utilityQueue = self->_utilityQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__AASignInFlowController__stashLoginResponseWithAuthenticationResults_appleAccount___block_invoke;
    v11[3] = &unk_1E7C9ADE8;
    v12 = accountCopy;
    v13 = resultsCopy;
    v9 = utilityQueue;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_DEFAULT, 0, v11);
    dispatch_async(v9, v10);
  }
}

void __84__AASignInFlowController__stashLoginResponseWithAuthenticationResults_appleAccount___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = _AASignpostLogSystem(a1);
  v3 = _AASignpostCreate(v2);
  v5 = v4;

  v7 = _AASignpostLogSystem(v6);
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v3, "StashLoginResponse", " enableTelemetry=YES ", &v19, 2u);
  }

  v10 = _AASignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v3;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StashLoginResponse  enableTelemetry=YES ", &v19, 0xCu);
  }

  v11 = [*(a1 + 32) aa_cloudKitAccount];
  v12 = [v11 credential];
  v13 = [v12 token];

  [AALoginContextManager stashLoginResponseWithAuthenticationResults:*(a1 + 40) cloudKitToken:v13];
  Nanoseconds = _AASignpostGetNanoseconds(v3, v5);
  v15 = _AASignpostLogSystem(Nanoseconds);
  v16 = v15;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_END, v3, "StashLoginResponse", "", &v19, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218240;
    v20 = v3;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StashLoginResponse ", &v19, 0x16u);
  }
}

- (id)_userPersonaUniqueString
{
  v2 = objc_alloc_init(MEMORY[0x1E69DF078]);
  if (([v2 isEnterprisePersona] & 1) != 0 || (v3 = objc_msgSend(v2, "isGuestPersona"), v3))
  {
    userPersonaUniqueString = [v2 userPersonaUniqueString];
    v5 = _AALogSystem(userPersonaUniqueString);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(AASignInFlowController *)userPersonaUniqueString _userPersonaUniqueString];
    }
  }

  else
  {
    v5 = _AALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _userPersonaUniqueString];
    }

    userPersonaUniqueString = 0;
  }

  return userPersonaUniqueString;
}

- (void)prewarmOperationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[AARemoteServer sharedServer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke;
  v6[3] = &unk_1E7C9AE60;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 configurationWithCompletion:v6];
}

void __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"PREWARM" dataUsingEncoding:4];
  v5 = dispatch_group_create();
  v6 = [v3 absintheEnable];

  if ([v6 unsignedIntegerValue] == 1)
  {
    dispatch_group_enter(v5);
    v7 = +[AAAbsintheSigner sharedSigner];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E7C9AE10;
    v11 = v5;
    [v7 signatureForData:v4 completion:v10];
  }

  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AASignInFlowController_prewarmOperationsWithCompletion___block_invoke_3;
    v8[3] = &unk_1E7C9AE38;
    v9 = *(a1 + 32);
    dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v8);
  }
}

- (BOOL)_isAccountImprovementProgramEnabled
{
  mEMORY[0x1E698DD70] = [MEMORY[0x1E698DD70] sharedManager];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    mEMORY[0x1E698DD70]2 = [MEMORY[0x1E698DD70] sharedManager];
    isAccountImprovementProgramEnabled = [mEMORY[0x1E698DD70]2 isAccountImprovementProgramEnabled];

    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _isAccountImprovementProgramEnabled];
    }
  }

  else
  {
    v8 = _AALogSystem(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AASignInFlowController _isAccountImprovementProgramEnabled];
    }

    isAccountImprovementProgramEnabled = 0;
  }

  return isAccountImprovementProgramEnabled;
}

- (AASignInFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CDPStateUIProvider)cdpUIProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_cdpUIProvider);

  return WeakRetained;
}

void __82__AASignInFlowController__onqueue_signInWithIDMSAuthenticationResults_completion___block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_onqueue_prepareExistingAppleAccountForSignIn:withAuthResults:accountCreationError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_onqueue_createNewAppleAccountWithAuthResults:accountCreationError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onqueue_saveTermsWithAuthResults:account:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_74_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v4 = 2112;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_1B6F6A000, v2, OS_LOG_TYPE_ERROR, "Failed to cache login response (%@) for account (%@) with error: %@", v3, 0x20u);
}

void __101__AASignInFlowController__onqueue_registerAndVerifyLoginForiCloudAccount_authResults_withCompletion___block_invoke_77_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B6F6A000, v0, OS_LOG_TYPE_ERROR, "Delegate presented privacy opt-in view. User action success=%@, error=%@", v1, 0x16u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_99_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Delegate presented privacy opt-in view. User action success=%@, error=%@");
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __116__AASignInFlowController__onqueue_verifyLoginResponseForiCloudAccount_withAuthResults_withSuccess_error_completion___block_invoke_109_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __98__AASignInFlowController__onqueue_validateAndEnrollCDPStateForAccount_withAuthResults_completion___block_invoke_116_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_preflightSaveWithAuthResults:account:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __79__AASignInFlowController__preflightSaveWithAuthResults_account_withCompletion___block_invoke_117_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onqueue_addKeysAndEnrollCDPStateForAccount:(uint64_t)a1 withCDPContext:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 16) allKeys];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Looking for custodian sessionID in authentication results: %{private}@", v4, 0xCu);
}

void __96__AASignInFlowController__onqueue_addKeysAndEnrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_dataclassActionsForPreflightSaveForAccount:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_onqueue_enrollCDPStateForAccount:withCDPContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__AASignInFlowController__onqueue_enrollCDPStateForAccount_withCDPContext_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "CDPContext (%@) is providing specialized time series: %@");
}

- (void)_onqueue_saveAccount:withAuthResults:withCDPEnablement:withAllDataclassesEnabledIfPossibleWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onqueue_saveAccount:withDataclassEnablement:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__AASignInFlowController__delegate_presentAccountCreationError_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_presentGenericTermsUIforAccount:authResults:serverError:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__AASignInFlowController__delegate_presentValidationAlertForError_forAccount_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_presentProgressViewForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_presentProgressViewForAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_presentProgressViewForAccount:completion:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "AASignInFlowController: Requesting delegate (%@) to present progress view for account (%@)");
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "AASignInFlowController: Requesting delegate (%@) to present dataclass actions view for account (%@)");
}

- (void)_delegate_presentDataclassActionsForAccount:completion:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_presentAccountPrivacyOptInForAccount:userActionCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "AASignInFlowController: Requesting delegate (%@) to present account privacy opt-in for account (%@)");
}

- (void)_onqueue_delegate_enableFindMyWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AASignInFlowController: Delegate (%@) does not respond to selector, FindMy enable failed.", v4, 0xCu);
}

void __71__AASignInFlowController__onqueue_delegate_enableFindMyWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_userPersonaUniqueString
{
  v13 = *MEMORY[0x1E69E9840];
  userPersonaNickName = [a2 userPersonaNickName];
  v7 = 138543874;
  selfCopy = self;
  v9 = 2112;
  v10 = userPersonaNickName;
  v11 = 2048;
  userPersonaType = [a2 userPersonaType];
  _os_log_debug_impl(&dword_1B6F6A000, a3, OS_LOG_TYPE_DEBUG, "Data separated persona detected. {uniqueString=%{public}@, nickname=%@, type=%ld}", &v7, 0x20u);
}

- (void)_isAccountImprovementProgramEnabled
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end