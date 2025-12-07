@interface AAUICustodianRecoveryApprovalController
+ (id)approvalControllerWithPresenter:(id)presenter recoverySessionID:(id)d telemetryFlowID:(id)iD;
- (id)_actionsForRecoveryCodeAlert:(id)alert completion:(id)completion;
- (void)_promptForRecoveryCodeWithCompletion:(id)completion;
- (void)_sendAnalyticsEventWithSelectedOffer:(id)offer;
- (void)_validateRecoveryCode:(id)code withCompletion:(id)completion;
- (void)dealloc;
- (void)validateRecoveryCodeWithCompletion:(id)completion;
@end

@implementation AAUICustodianRecoveryApprovalController

+ (id)approvalControllerWithPresenter:(id)presenter recoverySessionID:(id)d telemetryFlowID:(id)iD
{
  v20 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  dCopy = d;
  iDCopy = iD;
  v10 = _AAUILogSystem(iDCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = dCopy;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Creating Custodian Recovery Approval Controller with Session ID: %@", &v18, 0xCu);
  }

  v11 = objc_alloc_init(objc_opt_class());
  v12 = v11[1];
  v11[1] = dCopy;
  v13 = dCopy;

  v14 = v11[2];
  v11[2] = iDCopy;
  v15 = iDCopy;

  v16 = v11[4];
  v11[4] = presenterCopy;

  return v11;
}

- (void)dealloc
{
  v3 = _AAUILogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "AAUICustodianRecoveryApprovalController dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AAUICustodianRecoveryApprovalController;
  [(AAUICustodianRecoveryApprovalController *)&v4 dealloc];
}

- (void)validateRecoveryCodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Custodian recovery approval validation was requested", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AAUICustodianRecoveryApprovalController_validateRecoveryCodeWithCompletion___block_invoke;
  v7[3] = &unk_1E820B758;
  v8 = completionCopy;
  v6 = completionCopy;
  [(AAUICustodianRecoveryApprovalController *)self _promptForRecoveryCodeWithCompletion:v7];
}

void __78__AAUICustodianRecoveryApprovalController_validateRecoveryCodeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 custodianUUID];

  v9 = _AAUILogSystem(v8);
  v10 = v9;
  if (v6 || !v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__AAUICustodianRecoveryApprovalController_validateRecoveryCodeWithCompletion___block_invoke_cold_1();
    }

    v11 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Successfully validated custodian recovery code with context: %@", &v12, 0xCu);
    }

    v11 = *(*(a1 + 32) + 16);
  }

  v11();
}

- (void)_validateRecoveryCode:(id)code withCompletion:(id)completion
{
  v6 = MEMORY[0x1E698B868];
  completionCopy = completion;
  codeCopy = code;
  v10 = objc_alloc_init(v6);
  [v10 setRecoverySessionID:self->_recoverySessionID];
  [v10 setRecoveryCode:codeCopy];

  [v10 setTelemetryFlowID:self->_telemetryFlowID];
  v9 = objc_alloc_init(MEMORY[0x1E698B850]);
  [v9 validateCustodianRecoveryCodeWithContext:v10 completion:completionCopy];
}

- (void)_sendAnalyticsEventWithSelectedOffer:(id)offer
{
  v3 = MEMORY[0x1E6985DB0];
  v4 = *MEMORY[0x1E698BA68];
  telemetryFlowID = self->_telemetryFlowID;
  offerCopy = offer;
  v8 = [v3 analyticsEventWithName:v4 altDSID:0 flowID:telemetryFlowID];
  [v8 setObject:offerCopy forKeyedSubscript:*MEMORY[0x1E6997820]];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v8];
}

- (void)_promptForRecoveryCodeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.appleAccount.recoveryContactCodeEntryLanding" altDSID:0 flowID:self->_telemetryFlowID];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(AAUICodeEntryContext);
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  [(AAUICodeEntryContext *)v7 setPromptTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  [(AAUICodeEntryContext *)v7 setPromptMessage:v11];

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CUSTODIAN_RECOVERY_CODE_PROMPT_ESCAPE_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  [(AAUICodeEntryContext *)v7 setEscapeTitle:v13];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke;
  v24[3] = &unk_1E820B780;
  v24[4] = self;
  v14 = completionCopy;
  v25 = v14;
  [(AAUICodeEntryContext *)v7 setEscapeAction:v24];
  [v6 addObject:*MEMORY[0x1E6997848]];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55;
  v22[3] = &unk_1E820B780;
  v22[4] = self;
  v15 = v14;
  v23 = v15;
  [(AAUICodeEntryContext *)v7 setCancelEntryAction:v22];
  [v6 addObject:*MEMORY[0x1E698BB28]];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_56;
  v20[3] = &unk_1E820B7F8;
  v20[4] = self;
  v21 = v15;
  v16 = v15;
  [(AAUICodeEntryContext *)v7 setCodeEnteredAction:v20];
  [v6 addObject:*MEMORY[0x1E6997840]];
  aaf_arrayAsCommaSeperatedString = [v6 aaf_arrayAsCommaSeperatedString];
  [v5 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x1E6997818]];

  v18 = [[AAUICodeEntryViewController alloc] initWithContext:v7];
  [(UIViewController *)self->_presenter presentViewController:v18 animated:1 completion:0];
  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v5];
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke(uint64_t a1)
{
  inited = objc_initWeak(&location, *(a1 + 32));
  v3 = _AAUILogSystem(inited);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: User elected for escape action!", v7, 2u);
  }

  v4 = objc_loadWeakRetained(&location);
  [v4 _sendAnalyticsEventWithSelectedOffer:*MEMORY[0x1E6997848]];

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B770] code:-9007 userInfo:0];
  (*(v5 + 16))(v5, 0, v6);

  objc_destroyWeak(&location);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55(uint64_t a1)
{
  inited = objc_initWeak(&location, *(a1 + 32));
  v3 = _AAUILogSystem(inited);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55_cold_1();
  }

  v4 = objc_loadWeakRetained(&location);
  [v4 _sendAnalyticsEventWithSelectedOffer:*MEMORY[0x1E698BB28]];

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B770] code:-9003 userInfo:0];
  (*(v5 + 16))(v5, 0, v6);

  objc_destroyWeak(&location);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AAUILogSystem([*(a1 + 32) _sendAnalyticsEventWithSelectedOffer:*MEMORY[0x1E6997840]]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: Code Entered: %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57;
  v10[3] = &unk_1E820B7D0;
  v11 = v6;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v6;
  [v8 _validateRecoveryCode:v5 withCompletion:v10];
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57_cold_1();
    }

    v9 = [v7 aa_isAACustodianRecoveryErrorWithCode:-9002];
    v10 = *(*(a1 + 32) + 16);
    if (v9)
    {
      v10();
      goto LABEL_13;
    }

    v10();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58;
    block[3] = &unk_1E820B7A8;
    v18 = *(a1 + 40);
    v17 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v11 = v18;
LABEL_9:

    goto LABEL_13;
  }

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_59;
    v13[3] = &unk_1E820B780;
    v14 = v5;
    v15 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v13);

    v11 = v14;
    goto LABEL_9;
  }

  v12 = _AAUILogSystem(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57_cold_2();
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
}

uint64_t __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58(uint64_t a1, uint64_t a2)
{
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_59(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Custodian Recovery Code Attempt: Code validation success! Custodian with context: %@", &v6, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_actionsForRecoveryCodeAlert:(id)alert completion:(id)completion
{
  alertCopy = alert;
  completionCopy = completion;
  v7 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke;
  v15[3] = &unk_1E820B820;
  v8 = completionCopy;
  v16 = v8;
  [v7 setAk_cancelAction:v15];
  objc_initWeak(&location, alertCopy);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_63;
  v11[3] = &unk_1E820B848;
  objc_copyWeak(&v13, &location);
  v9 = v8;
  v12 = v9;
  [v7 setCodeEnteredAction:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B770] code:-9003 userInfo:0];
  (*(v4 + 16))(v4, 0, v5);
}

void __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_63(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AAUILogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "User entered recovery code %@.", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setPasscodeFieldDisabled:1];
  }

  (*(*(a1 + 32) + 16))();
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_55_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_57_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__AAUICustodianRecoveryApprovalController__promptForRecoveryCodeWithCompletion___block_invoke_58_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__AAUICustodianRecoveryApprovalController__actionsForRecoveryCodeAlert_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end