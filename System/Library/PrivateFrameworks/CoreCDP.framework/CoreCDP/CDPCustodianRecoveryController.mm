@interface CDPCustodianRecoveryController
- (CDPCustodianRecoveryController)initWithContext:(id)context;
- (void)_fetchRecoveryInfoWithCompletion:(id)completion;
- (void)startRecoverySessionWithCompletion:(id)completion;
- (void)validateRecoveryCode:(id)code withCompletion:(id)completion;
@end

@implementation CDPCustodianRecoveryController

- (CDPCustodianRecoveryController)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CDPCustodianRecoveryController;
  v6 = [(CDPCustodianRecoveryController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(MEMORY[0x1E698B850]);
    custodianController = v7->_custodianController;
    v7->_custodianController = v8;
  }

  return v7;
}

- (void)startRecoverySessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E698B868]);
  appleID = [(CDPContext *)self->_context appleID];
  [v5 setOwnerAppleID:appleID];

  telemetryFlowID = [(CDPContext *)self->_context telemetryFlowID];
  [v5 setTelemetryFlowID:telemetryFlowID];

  altDSID = [(CDPContext *)self->_context altDSID];
  [v5 setAltDSID:altDSID];

  objc_initWeak(&location, self);
  custodianController = self->_custodianController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke;
  v11[3] = &unk_1E869DAE8;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [(AACustodianController *)custodianController startCustodianRecoveryWithContext:v5 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = _CDPLogSystem(WeakRetained);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Successfuly obtained custodian recovery session: %@", &v14, 0xCu);
    }

    if (WeakRetained)
    {
      objc_storeStrong(WeakRetained + 2, a2);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 16);
LABEL_12:
      v12();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke_cold_1(v7, v10);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v12 = *(v13 + 16);
      goto LABEL_12;
    }
  }
}

- (void)validateRecoveryCode:(id)code withCompletion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E698B868]);
  [v8 setRecoverySessionID:self->_recoverySession];
  [v8 setRecoveryCode:codeCopy];
  telemetryFlowID = [(CDPContext *)self->_context telemetryFlowID];
  [v8 setTelemetryFlowID:telemetryFlowID];

  altDSID = [(CDPContext *)self->_context altDSID];
  [v8 setAltDSID:altDSID];

  objc_initWeak(&location, self);
  custodianController = self->_custodianController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CDPCustodianRecoveryController_validateRecoveryCode_withCompletion___block_invoke;
  v13[3] = &unk_1E869DB10;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [(AACustodianController *)custodianController validateCustodianRecoveryCodeWithContext:v8 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __70__CDPCustodianRecoveryController_validateRecoveryCode_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5 && ([v5 custodianUUID], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = _CDPLogSystem(WeakRetained);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 custodianUUID];
      v12 = [v11 UUIDString];
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Successfuly validated custodian recovery code for custodian with UUID: %@", &v18, 0xCu);
    }

    v14 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __70__CDPCustodianRecoveryController_validateRecoveryCode_withCompletion___block_invoke_cold_1(v14);
    }

    [v8 _fetchRecoveryInfoWithCompletion:*(a1 + 32)];
  }

  else
  {
    v15 = _CDPLogSystem(WeakRetained);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 custodianUUID];
      v17 = [v16 UUIDString];
      v18 = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "Validation of custodian recovery code for custodian with UUID: %@ failed with error: %@", &v18, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_fetchRecoveryInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __67__CDPCustodianRecoveryController__fetchRecoveryInfoWithCompletion___block_invoke;
  v13 = &unk_1E869DB38;
  selfCopy = self;
  v5 = completionCopy;
  v15 = v5;
  v6 = MEMORY[0x1E12CA380](&v10);
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_alloc_init(MEMORY[0x1E698B868]);
    [v7 setRecoverySessionID:{self->_recoverySession, v10, v11, v12, v13, selfCopy}];
    telemetryFlowID = [(CDPContext *)self->_context telemetryFlowID];
    [v7 setTelemetryFlowID:telemetryFlowID];

    altDSID = [(CDPContext *)self->_context altDSID];
    [v7 setAltDSID:altDSID];

    [(AACustodianController *)self->_custodianController fetchCustodianRecoveryKeysWithContext:v7 completion:v6];
  }

  else
  {
    [(AACustodianController *)self->_custodianController fetchCustodianRecoveryKeysWithSessionID:self->_recoverySession completion:v6, v10, v11, v12, v13, selfCopy];
  }
}

void __67__CDPCustodianRecoveryController__fetchRecoveryInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = *(*(a1 + 32) + 16);
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Successfuly obtained recovery keys for sessionID: %@", &v18, 0xCu);
    }

    v10 = objc_opt_respondsToSelector();
    v11 = [CDPCustodianRecoveryInfo alloc];
    v12 = [v5 wrappedRKC];
    v13 = [v5 wrappingKey];
    v14 = [v5 custodianUUID];
    if (v10)
    {
      v15 = [v5 recordBuildVersion];
      v16 = [(CDPCustodianRecoveryInfo *)v11 initWithWrappedRKC:v12 wrappingKey:v13 custodianUUID:v14 recordBuildVersion:v15];
    }

    else
    {
      v16 = [(CDPCustodianRecoveryInfo *)v11 initWithWrappedRKC:v12 wrappingKey:v13 custodianUUID:v14];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v8)
    {
      v17 = *(*(a1 + 32) + 16);
      v18 = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch recovery keys for sessionID: %@ with error: %@", &v18, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __69__CDPCustodianRecoveryController_startRecoverySessionWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain recoverySession with error: %@", &v2, 0xCu);
}

@end