@interface AASignOutFlowController
- (AASignOutFlowController)initWithContext:(id)context;
- (AASignOutFlowControllerDelegate)delegate;
- (void)_delegate_disableFindMyDeviceForAccount:(id)account completion:(id)completion;
- (void)_delegate_performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)_delegate_presentError:(id)error withTitle:(id)title;
- (void)_delegate_signOutAccount:(id)account completion:(id)completion;
- (void)_delegate_startSignOutFlowForAccount:(id)account completion:(id)completion;
- (void)_disableDeviceLocatorForAccount:(id)account completion:(id)completion;
- (void)_performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)_preflightSignOutOfAccount:(id)account completion:(id)completion;
- (void)_signOutAppleAccount:(id)account completion:(id)completion;
- (void)_startSignOutOfferFlow:(id)flow completion:(id)completion;
- (void)sendTelemetryEventSignoutFinish:(id)finish account:(id)account didSucceed:(BOOL)succeed error:(id)error;
- (void)sendTelemetryEventSignoutStart:(id)start;
- (void)signOutAppleAccount:(id)account completion:(id)completion;
@end

@implementation AASignOutFlowController

- (AASignOutFlowController)initWithContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = AASignOutFlowController;
  v5 = [(AASignOutFlowController *)&v20 init];
  if (v5)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = defaultStore;

    v8 = objc_alloc_init(AASignedOutAccountKeychain);
    signedOutAccountKeychain = v5->_signedOutAccountKeychain;
    v5->_signedOutAccountKeychain = v8;

    if (contextCopy)
    {
      authenticationResults = [contextCopy authenticationResults];
      v11 = [authenticationResults objectForKeyedSubscript:*MEMORY[0x1E698DBE0]];
      p_telemetryFlowID = &v5->telemetryFlowID;
      telemetryFlowID = v5->telemetryFlowID;
      v5->telemetryFlowID = v11;

      if (!v5->telemetryFlowID)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v16 = *p_telemetryFlowID;
        *p_telemetryFlowID = uUIDString;

        v18 = _AASignOutLogSystem(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(AASignOutFlowController *)&v5->telemetryFlowID initWithContext:v18];
        }
      }
    }
  }

  return v5;
}

- (void)signOutAppleAccount:(id)account completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  if (!accountCopy)
  {
    [AASignOutFlowController signOutAppleAccount:a2 completion:self];
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v11 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (v11)
  {
    v13 = _os_activity_create(&dword_1B6F6A000, "appleaccount/signOutAppleAccount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    v15 = _AASignOutLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Will begin sign out of account: %@", buf, 0xCu);
    }

    v17 = _AASignpostLogSystem(v16);
    v18 = _AASignpostCreate(v17);
    v20 = v19;

    v22 = _AASignpostLogSystem(v21);
    v23 = v22;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SignOutAppleAccount", " enableTelemetry=YES ", buf, 2u);
    }

    v25 = _AASignpostLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = v18;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutAppleAccount  enableTelemetry=YES ", buf, 0xCu);
    }

    [(AASignOutFlowController *)self sendTelemetryEventSignoutStart:accountCopy];
    objc_initWeak(buf, self);
    v26 = dispatch_get_global_queue(25, 0);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke;
    v28[3] = &unk_1E7C9AF88;
    objc_copyWeak(v32, buf);
    v29 = accountCopy;
    selfCopy = self;
    v31 = completionCopy;
    v32[1] = v18;
    v32[2] = v20;
    dispatch_async(v26, v28);

    objc_destroyWeak(v32);
    objc_destroyWeak(buf);
    os_activity_scope_leave(&state);
  }

  else
  {
    v27 = _AASignOutLogSystem(v12);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Attempting to sign out non-AppleAccount, bailing!", &state, 2u);
    }

    v13 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4404];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E6985DB0];
    v4 = [*(a1 + 32) aida_alternateDSID];
    v5 = [v3 analyticsEventWithName:@"com.apple.appleaccount.signOutFinish" altDSID:v4 flowID:*(*(a1 + 40) + 16)];

    v6 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_2;
    v10[3] = &unk_1E7C9AF60;
    v14 = *(a1 + 48);
    v10[4] = WeakRetained;
    v7 = *(a1 + 32);
    v15 = *(a1 + 64);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v5;
    v9 = v5;
    [WeakRetained _startSignOutOfferFlow:v6 completion:v10];
  }

  else
  {
    v9 = _AASignOutLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_cold_1(v9);
    }
  }
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _AASignOutLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: SignOut start failed to completed with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42;
    v11[3] = &unk_1E7C9AF38;
    v10 = *(a1 + 32);
    v7 = *(&v10 + 1);
    v15 = *(a1 + 72);
    v9 = *(a1 + 48);
    v8 = *(&v9 + 1);
    v13 = v9;
    v12 = v10;
    v14 = *(a1 + 64);
    [v10 _preflightSignOutOfAccount:v7 completion:v11];
  }
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42(uint64_t a1, int a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v35 = v7;
    v36 = 2112;
    v37 = *&v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Sign out preflight completed with success: %@ and error: %@", buf, 0x16u);
  }

  if (a2)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49;
    v27[3] = &unk_1E7C9AF10;
    v27[4] = v10;
    v28 = v9;
    v33 = *(a1 + 72);
    v11 = v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v29 = v11;
    v30 = v12;
    v31 = v13;
    v32 = *(a1 + 64);
    [v10 _signOutAppleAccount:v28 completion:v27];
  }

  else
  {
    v14 = _AASignOutLogSystem(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_42_cold_1();
    }

    Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
    v16 = _AASignpostLogSystem(Nanoseconds);
    v17 = v16;
    v18 = *(a1 + 72);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = [v5 code];
      *buf = 67240192;
      LODWORD(v35) = v19;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_END, v18, "SignOutAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
    }

    v21 = _AASignpostLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = Nanoseconds / 1000000000.0;
      v23 = *(a1 + 72);
      v24 = [v5 code];
      *buf = 134218496;
      v35 = v23;
      v36 = 2048;
      v37 = v22;
      v38 = 1026;
      v39 = v24;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
    }

    [*(a1 + 48) sendTelemetryEventSignoutFinish:*(a1 + 56) account:*(a1 + 40) didSucceed:0 error:v5];
    v25 = *(a1 + 64);
    if (v25)
    {
      if (v5)
      {
        (*(v25 + 16))(v25, 0, v5);
      }

      else
      {
        v26 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
        (*(v25 + 16))(v25, 0, v26);
      }
    }
  }
}

void __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  v7 = [*(a1 + 40) aa_altDSID];
  v25 = 0;
  [v6 setLastSignedOutAccountAltDSID:v7 error:&v25];
  v8 = v25;

  if (v8)
  {
    v10 = _AASignOutLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __58__AASignOutFlowController_signOutAppleAccount_completion___block_invoke_49_cold_1();
    }
  }

  v11 = _AASignOutLogSystem(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = @"NO";
    *buf = 138412802;
    if (a2)
    {
      v13 = @"YES";
    }

    v27 = v12;
    v28 = 2112;
    v29 = *&v13;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Sign out of account (%@) completed with success: %@ and error: %@", buf, 0x20u);
  }

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 80), *(a1 + 88));
  v15 = _AASignpostLogSystem(Nanoseconds);
  v16 = v15;
  v17 = *(a1 + 80);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v18 = [*(a1 + 48) code];
    *buf = 67240192;
    LODWORD(v27) = v18;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_END, v17, "SignOutAppleAccount", " Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 8u);
  }

  v20 = _AASignpostLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = Nanoseconds / 1000000000.0;
    v22 = *(a1 + 80);
    v23 = [*(a1 + 48) code];
    *buf = 134218496;
    v27 = v22;
    v28 = 2048;
    v29 = v21;
    v30 = 1026;
    LODWORD(v31) = v23;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutAppleAccount  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x1Cu);
  }

  [*(a1 + 56) sendTelemetryEventSignoutFinish:*(a1 + 64) account:*(a1 + 40) didSucceed:a2 error:v5];
  v24 = *(a1 + 72);
  if (v24)
  {
    (*(v24 + 16))(v24, a2, v5);
  }
}

- (void)_startSignOutOfferFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  v8 = +[AADeviceInfo hasiCloudSignOutRestriction];
  if ((v8 & 1) != 0 || (v8 = [flowCopy aa_isRemotelyManaged], v8))
  {
    v9 = _AASignOutLogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _startSignOutOfferFlow:flowCopy completion:?];
    }

    v10 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4406];
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    v11 = +[AAFeatureFlags isBetterSignOutEnabled];
    if (v11 && (v11 = [flowCopy aa_isAccountClass:@"primary"], v11))
    {
      [(AASignOutFlowController *)self _delegate_startSignOutFlowForAccount:flowCopy completion:completionCopy];
    }

    else
    {
      v12 = _AASignOutLogSystem(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 0;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "SignOutRedesign feature flag turned off. Not showing the Erase/Sign out offer. Continuing with Sign Out.", v13, 2u);
      }

      completionCopy[2](completionCopy, 1, 0);
    }
  }
}

- (void)_preflightSignOutOfAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke;
  v10[3] = &unk_1E7C9AFD8;
  v10[4] = self;
  v11 = accountCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = accountCopy;
  [(AASignOutFlowController *)self _performWalrusValidationForAccount:v9 completion:v10];
}

void __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = _AASignpostLogSystem(a1);
    v4 = _AASignpostCreate(v3);
    v6 = v5;

    v8 = _AASignpostLogSystem(v7);
    v9 = v8;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v4, "DisableFindMyDevice", " enableTelemetry=YES ", buf, 2u);
    }

    v11 = _AASignpostLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v4;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisableFindMyDevice  enableTelemetry=YES ", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke_54;
    v15[3] = &unk_1E7C9AFB0;
    v17 = v4;
    v18 = v6;
    v16 = *(a1 + 48);
    [v12 _disableDeviceLocatorForAccount:v13 completion:v15];
  }

  else
  {
    v14 = *(*(a1 + 48) + 16);

    v14();
  }
}

void __65__AASignOutFlowController__preflightSignOutOfAccount_completion___block_invoke_54(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Nanoseconds = _AASignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _AASignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v14 = 67240192;
    LODWORD(v15) = [v4 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v7, OS_SIGNPOST_INTERVAL_END, v8, "DisableFindMyDevice", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 8u);
  }

  v10 = _AASignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v4 code];
    v14 = 134218496;
    v15 = v12;
    v16 = 2048;
    v17 = v11;
    v18 = 1026;
    v19 = v13;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisableFindMyDevice  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 0x1Cu);
  }

  (*(a1[4] + 16))();
}

- (void)_performWalrusValidationForAccount:(id)account completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  v11 = [accountCopy aa_isAccountClass:@"primary"];
  if (v10 && (v11 & 1) != 0)
  {
    [(AASignOutFlowController *)self _delegate_performWalrusValidationForAccount:accountCopy completion:completionCopy];
  }

  else
  {
    v12 = _AASignOutLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Walrus validation is not necessary for non-primary/non-apple account: %@", &v13, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_signOutAppleAccount:(id)account completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  accountCopy = account;
  v8 = _AASignpostLogSystem(accountCopy);
  v9 = _AASignpostCreate(v8);
  v11 = v10;

  v13 = _AASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SignOutAppleAccountDelegate", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _AASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v9;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutAppleAccountDelegate  enableTelemetry=YES ", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__AASignOutFlowController__signOutAppleAccount_completion___block_invoke;
  v18[3] = &unk_1E7C9AFB0;
  v20 = v9;
  v21 = v11;
  v19 = completionCopy;
  v17 = completionCopy;
  [(AASignOutFlowController *)self _delegate_signOutAccount:accountCopy completion:v18];
}

void __59__AASignOutFlowController__signOutAppleAccount_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Nanoseconds = _AASignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _AASignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v14 = 67240192;
    LODWORD(v15) = [v4 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SignOutAppleAccountDelegate", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 8u);
  }

  v10 = _AASignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v4 code];
    v14 = 134218496;
    v15 = v12;
    v16 = 2048;
    v17 = v11;
    v18 = 1026;
    v19 = v13;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutAppleAccountDelegate  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v14, 0x1Cu);
  }

  (*(a1[4] + 16))();
}

- (void)_disableDeviceLocatorForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if ((v10 & 1) == 0)
  {
    v13 = _AASignOutLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v14 = "Attempting to sign out non-AppleAccount, all clear!";
      v15 = &v17;
LABEL_8:
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    }

LABEL_9:

    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_10;
  }

  v12 = [accountCopy aa_isAccountClass:@"primary"];
  if ((v12 & 1) == 0)
  {
    v13 = _AASignOutLogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v14 = "Attempting to sign out secondary account, all clear!";
      v15 = &v16;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(AASignOutFlowController *)self _delegate_disableFindMyDeviceForAccount:accountCopy completion:completionCopy];
LABEL_10:
}

- (void)_delegate_presentError:(id)error withTitle:(id)title
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  titleCopy = title;
  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  v11 = _AASignOutLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v20 = errorCopy;
    v21 = 2112;
    v22 = titleCopy;
    v23 = 2112;
    v24 = v9;
    _os_log_error_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_ERROR, "AASignOutFlowController: Will show alert for error: %@, title: %@, message: %@", buf, 0x20u);
  }

  delegate = [(AASignOutFlowController *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke;
    block[3] = &unk_1E7C9B020;
    block[4] = self;
    v17 = titleCopy;
    v18 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v15 = _AASignOutLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_presentError:? withTitle:?];
    }
  }
}

void __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 signOutFlowController:*(a1 + 32) showAlertWithTitle:*(a1 + 40) message:*(a1 + 48) completion:&__block_literal_global_1];
}

void __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _AASignOutLogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke_2_cold_1(a2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)_delegate_startSignOutFlowForAccount:(id)account completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v11 = _AASignOutLogSystem(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to start Sign Out/Erase flow for account: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v14 = accountCopy;
    v15 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_startSignOutFlowForAccount:? completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke_2;
  v5[3] = &unk_1E7C9ABB8;
  v6 = *(a1 + 48);
  [v2 signOutFlowController:v3 startSignOutForAccount:v4 completion:v5];
}

void __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _AASignOutLogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__AASignOutFlowController__delegate_startSignOutFlowForAccount_completion___block_invoke_2_cold_1(v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_delegate_disableFindMyDeviceForAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v11 = _AASignOutLogSystem(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to disable find my device for account: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v15 = accountCopy;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_disableFindMyDeviceForAccount:? completion:?];
    }

    v13 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke_2;
  v5[3] = &unk_1E7C9ABB8;
  v6 = *(a1 + 48);
  [v2 signOutFlowController:v3 disableFindMyDeviceForAccount:v4 completion:v5];
}

void __78__AASignOutFlowController__delegate_disableFindMyDeviceForAccount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Delegate disabled find my device with success %@ and error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_delegate_signOutAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v11 = _AASignOutLogSystem(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to sign out account: %@", buf, 0xCu);
    }

    delegate2 = [(AASignOutFlowController *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__AASignOutFlowController__delegate_signOutAccount_completion___block_invoke;
    v15[3] = &unk_1E7C9ABB8;
    v16 = completionCopy;
    [delegate2 signOutFlowController:self signOutAccount:accountCopy completion:v15];

    v14 = v16;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_signOutAccount:? completion:?];
    }

    v14 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __63__AASignOutFlowController__delegate_signOutAccount_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Delegate signOutAccount completed with success %@ and error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_delegate_performWalrusValidationForAccount:(id)account completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  delegate = [(AASignOutFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  v11 = _AASignOutLogSystem(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = accountCopy;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Calling delegate to perform walrus validation for account: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke;
    block[3] = &unk_1E7C9A898;
    block[4] = self;
    v15 = accountCopy;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AASignOutFlowController _delegate_performWalrusValidationForAccount:? completion:?];
    }

    v13 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4405];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke_2;
  v5[3] = &unk_1E7C9ABB8;
  v6 = *(a1 + 48);
  [v2 signOutFlowController:v3 performWalrusValidationForAccount:v4 completion:v5];
}

void __82__AASignOutFlowController__delegate_performWalrusValidationForAccount_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AASignOutLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AASignOutFlowController: Delegate 'performWalrusValidationForAccount:completion' completed with success %@ and error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendTelemetryEventSignoutStart:(id)start
{
  startCopy = start;
  delegate = [(AASignOutFlowController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AASignOutFlowController *)self delegate];
    [delegate2 setTelemetryFlowID:self->telemetryFlowID];
  }

  else
  {
    delegate2 = _AASignOutLogSystem(v7);
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEBUG))
    {
      [AASignOutFlowController sendTelemetryEventSignoutStart:delegate2];
    }
  }

  v9 = +[AAAnalyticsRTCReporter reporter];
  v10 = MEMORY[0x1E6985DB0];
  aida_alternateDSID = [startCopy aida_alternateDSID];

  v12 = [v10 analyticsEventWithName:@"com.apple.appleaccount.signOutStart" altDSID:aida_alternateDSID flowID:self->telemetryFlowID];
  [v9 sendEvent:v12];
}

- (void)sendTelemetryEventSignoutFinish:(id)finish account:(id)account didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  v8 = MEMORY[0x1E696AD98];
  errorCopy = error;
  finishCopy = finish;
  v11 = [v8 numberWithBool:succeedCopy];
  [finishCopy setObject:v11 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  [finishCopy populateUnderlyingErrorsStartingWithRootError:errorCopy];
  v12 = +[AAAnalyticsRTCReporter reporter];
  [v12 sendEvent:finishCopy];
}

- (AASignOutFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithContext:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Received nil telemetryFlowID from AIDAServiceContext, generated new telemetryFlowID %@", &v3, 0xCu);
}

- (void)signOutAppleAccount:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AASignOutFlowController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"account"}];
}

- (void)_startSignOutOfferFlow:(void *)a1 completion:.cold.1(void *a1)
{
  +[AADeviceInfo hasiCloudSignOutRestriction];
  [a1 aa_isRemotelyManaged];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_delegate_presentError:(void *)a1 withTitle:.cold.1(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __60__AASignOutFlowController__delegate_presentError_withTitle___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"NO";
  if (a1)
  {
    v8 = @"YES";
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a2, a3, "AASignOutFlowController: didShowAlert: %@", a5, a6, a7, a8, v9, HIDWORD(v8));
}

- (void)_delegate_startSignOutFlowForAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_delegate_disableFindMyDeviceForAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_delegate_signOutAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_delegate_performWalrusValidationForAccount:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end