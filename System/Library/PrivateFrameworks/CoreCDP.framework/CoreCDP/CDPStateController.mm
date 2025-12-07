@interface CDPStateController
- (BOOL)deleteRecoveryKeyWithError:(id *)error;
- (BOOL)isDeviceEscrowRecordRecoverable:(id *)recoverable;
- (BOOL)isManateeAvailable:(id *)available;
- (BOOL)isRecoveryKeyAvailableWithError:(id *)error;
- (BOOL)isWalrusRecoveryKeyAvailableWithError:(id *)error;
- (BOOL)shouldPerformAuthenticatedRepairWithOptionForceFetch:(BOOL)fetch error:(id *)error;
- (BOOL)shouldPerformRepairWithOptionForceFetch:(BOOL)fetch error:(id *)error;
- (BOOL)shouldPerformSilentEscrowRecordRepairUsingCache:(BOOL)cache error:(id *)error;
- (BOOL)updateLastSilentEscrowRecordRepairAttemptDate:(id)date error:(id *)error;
- (BOOL)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError:(id *)error;
- (CDPStateController)init;
- (id)generateRandomRecoveryKey:(id *)key;
- (void)_handleCloudDataProtectionStateWithCompletion:(id)completion;
- (void)anyRecoveryKeysAreOctagonDistrustedWithCompletion:(id)completion;
- (void)attemptToEscrowPreRecord:(id)record completion:(id)completion;
- (void)authenticateAndDeleteRecoveryKeyWithCompletion:(id)completion;
- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:(id)completion;
- (void)deleteRecoveryKey:(id)key;
- (void)deviceEscrowRecordRecoverableWithContext:(id)context completion:(id)completion;
- (void)fetchEscrowRecordDevicesWithContext:(id)context usingCache:(BOOL)cache completion:(id)completion;
- (void)finishCyrusFlowAfterTermsAgreementWithContext:(id)context;
- (void)finishOfflineLocalSecretChangeWithCompletion:(id)completion;
- (void)generateEscrowRecordReportUsingCache:(BOOL)cache completion:(id)completion;
- (void)generateNewRecoveryKey:(id)key;
- (void)handleCloudDataProtectionStateWithCompletion:(id)completion;
- (void)handleURLActionWithInfo:(id)info completion:(id)completion;
- (void)isRecoveryKeyAvailableWithCompletion:(id)completion;
- (void)isWalrusRecoveryKeyAvailableWithCompletion:(id)completion;
- (void)localSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion;
- (void)performEscrowRecordCheckWithContext:(id)context isBackground:(BOOL)background completion:(id)completion;
- (void)performSilentEscrowRecordRepairWithCompletion:(id)completion;
- (void)recoverAndSynchronizeWithSquirrel:(id)squirrel;
- (void)recoverWithSquirrel:(id)squirrel;
- (void)repairCloudDataProtectionStateWithCompletion:(id)completion;
- (void)setKeyChainSyncCompatibilityState:(unint64_t)state withAltDSID:(id)d;
- (void)shouldPerformRepairWithOptionForceFetch:(BOOL)fetch completion:(id)completion;
- (void)shouldPerformSilentEscrowRecordRepairUsingCache:(BOOL)cache completion:(id)completion;
- (void)startCircleApplicationApprovalServer:(id)server;
- (void)startCircleApplicationApprovalServerSkipEscrowFetches:(id)fetches;
- (void)startSilentEscrowRecordRepairWithCompletion:(id)completion;
- (void)verifyRecoveryKey:(id)key;
@end

@implementation CDPStateController

- (CDPStateController)init
{
  v3.receiver = self;
  v3.super_class = CDPStateController;
  return [(CDPController *)&v3 init];
}

- (BOOL)isManateeAvailable:(id *)available
{
  v5 = _os_activity_create(&dword_1DED99000, "cdp/manatee-availability", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _CDPLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Requesting manatee state...", buf, 2u);
  }

  v8 = [CDPManateeStateController alloc];
  context = [(CDPController *)self context];
  v10 = [(CDPManateeStateController *)v8 initWithContext:context];

  v18 = 0;
  v11 = [(CDPManateeStateController *)v10 isManateeAvailable:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    v14 = _CDPLogSystem(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Manatee is available", buf, 2u);
    }
  }

  else
  {
    v15 = _CDPLogSystem(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPStateController isManateeAvailable:];
    }

    if (available)
    {
      v16 = v13;
      *available = v13;
    }
  }

  os_activity_scope_leave(&state);
  return v11;
}

- (void)handleCloudDataProtectionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke;
  v12[3] = &unk_1E869DF28;
  v12[4] = self;
  v12[5] = v15;
  v12[6] = v13;
  v5 = MEMORY[0x1E12CA380](v12);
  v6 = [objc_alloc(MEMORY[0x1E6985E78]) initWithMaxRetries:2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke_2_30;
  v8[3] = &unk_1E869DF98;
  v7 = completionCopy;
  v9 = v7;
  v10 = v15;
  v11 = v13;
  [v6 scheduleTask:v5 shouldRetry:&__block_literal_global_11 completionHandler:v8];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
}

void __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke_2;
  v6[3] = &unk_1E869DF00;
  v8 = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 _handleCloudDataProtectionStateWithCompletion:v6];
}

uint64_t __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke_2(void *a1, char a2, char a3)
{
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  return (*(a1[4] + 16))();
}

void __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke_2_30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke_3;
  v8[3] = &unk_1E869DF70;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __67__CDPStateController_handleCloudDataProtectionStateWithCompletion___block_invoke_3(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24), a1[4]);
  }

  return result;
}

- (void)_handleCloudDataProtectionStateWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1DED99000, "cdp/statemachine-handle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _CDPSignpostLogSystem(v6);
  v8 = _CDPSignpostCreate(v7);
  v10 = v9;

  v12 = _CDPSignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HandleCloudDataProtectionState", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _CDPSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: HandleCloudDataProtectionState  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  selfCopy = self;
  v39 = selfCopy;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__CDPStateController__handleCloudDataProtectionStateWithCompletion___block_invoke;
  v29[3] = &unk_1E869DFC0;
  v32 = v8;
  v33 = v10;
  p_buf = &buf;
  v17 = completionCopy;
  v30 = v17;
  v18 = MEMORY[0x1E12CA380](v29);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__CDPStateController__handleCloudDataProtectionStateWithCompletion___block_invoke_33;
  v27[3] = &unk_1E869D588;
  v20 = v18;
  v28 = v20;
  v21 = [daemonConn daemonWithErrorHandler:v27];

  v23 = _CDPLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "Requesting start of CDP state machine...", v26, 2u);
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v21 handleCloudDataProtectionStateWithContext:context uiProvider:uiProviderProxy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __68__CDPStateController__handleCloudDataProtectionStateWithCompletion___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v9 = _CDPSignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v21 = 67240192;
    *v22 = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v10, OS_SIGNPOST_INTERVAL_END, v11, "HandleCloudDataProtectionState", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v21, 8u);
  }

  v13 = _CDPSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = [v7 code];
    v21 = 134218496;
    *v22 = v15;
    *&v22[8] = 2048;
    *v23 = v14;
    *&v23[8] = 1026;
    v24 = v16;
    _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: HandleCloudDataProtectionState  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v21, 0x1Cu);
  }

  v17 = *(a1[5] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = a1[4];
  if (v19)
  {
    v19 = (*(v19 + 16))(v19, a2, a3, v7);
  }

  v20 = _CDPLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109634;
    *v22 = a2;
    *&v22[4] = 1024;
    *&v22[6] = a3;
    *v23 = 2112;
    *&v23[2] = v7;
    _os_log_impl(&dword_1DED99000, v20, OS_LOG_TYPE_DEFAULT, "State machine completed shouldCompleteSignIn=%{BOOL}d cloudDataProtectionEnabled=%{BOOL}d error=%@", &v21, 0x18u);
  }
}

void __68__CDPStateController__handleCloudDataProtectionStateWithCompletion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__CDPStateController__handleCloudDataProtectionStateWithCompletion___block_invoke_33_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)repairCloudDataProtectionStateWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1DED99000, "cdp/statemachine-repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _CDPSignpostLogSystem(v6);
  v8 = _CDPSignpostCreate(v7);
  v10 = v9;

  v12 = _CDPSignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RepairCloudDataProtectionState", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _CDPSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RepairCloudDataProtectionState  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  selfCopy = self;
  v39 = selfCopy;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke;
  v29[3] = &unk_1E869E010;
  v32 = v8;
  v33 = v10;
  p_buf = &buf;
  v17 = completionCopy;
  v30 = v17;
  v18 = MEMORY[0x1E12CA380](v29);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_37;
  v27[3] = &unk_1E869D588;
  v20 = v18;
  v28 = v20;
  v21 = [daemonConn daemonWithErrorHandler:v27];

  v23 = _CDPLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "Requesting repair of CDP state...", v26, 2u);
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v21 repairCloudDataProtectionStateWithContext:context uiProvider:uiProviderProxy completion:v20];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v7 = _CDPSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 67240192;
    LODWORD(v23) = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RepairCloudDataProtectionState", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v11 = _CDPSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 48);
    v14 = [v5 code];
    *buf = 134218496;
    v23 = v13;
    v24 = 2048;
    v25 = v12;
    v26 = 1026;
    v27 = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RepairCloudDataProtectionState  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_35;
  block[3] = &unk_1E869DFE8;
  v21 = a2;
  v19 = v5;
  v17 = *(a1 + 32);
  v15 = v17;
  v20 = v17;
  v16 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_35(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v5 = _CDPLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v9[0] = 67109378;
    v9[1] = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "State machine repair completed didRepair=%{BOOL}d error=%@", v9, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_37_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startCircleApplicationApprovalServer:(id)server
{
  serverCopy = server;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__3;
  v20[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v21 = selfCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke;
  v17[3] = &unk_1E869E060;
  v19 = v20;
  v6 = serverCopy;
  v18 = v6;
  v7 = MEMORY[0x1E12CA380](v17);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke_3;
  v15[3] = &unk_1E869D588;
  v9 = v7;
  v16 = v9;
  v10 = [daemonConn daemonWithErrorHandler:v15];

  v12 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Requesting start of accepting sharing session...", v14, 2u);
  }

  context = [(CDPController *)selfCopy context];
  [v10 startCircleApplicationApprovalServerWithContext:context completion:v9];

  _Block_object_dispose(v20, 8);
}

void __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__CDPStateController_startCircleApplicationApprovalServer___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startCircleApplicationApprovalServerSkipEscrowFetches:(id)fetches
{
  fetchesCopy = fetches;
  v5 = _CDPLogSystem(fetchesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Requesting start of accepting sharing session, skipping escrow fetches...", v7, 2u);
  }

  context = [(CDPController *)self context];
  [context set_skipEscrowFetches:1];

  [(CDPStateController *)self startCircleApplicationApprovalServer:fetchesCopy];
}

- (void)recoverAndSynchronizeWithSquirrel:(id)squirrel
{
  squirrelCopy = squirrel;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__3;
  v21[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v22 = selfCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__CDPStateController_recoverAndSynchronizeWithSquirrel___block_invoke;
  v18[3] = &unk_1E869E060;
  v20 = v21;
  v6 = squirrelCopy;
  v19 = v6;
  v7 = MEMORY[0x1E12CA380](v18);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__CDPStateController_recoverAndSynchronizeWithSquirrel___block_invoke_3;
  v16[3] = &unk_1E869D588;
  v9 = v7;
  v17 = v9;
  v10 = [daemonConn daemonWithErrorHandler:v16];

  v12 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Requesting repair and synchronization of CDP state with Squirrel...", v15, 2u);
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v10 recoverAndSynchronizeSquirrelWithContext:context uiProvider:uiProviderProxy completion:v9];

  _Block_object_dispose(v21, 8);
}

void __56__CDPStateController_recoverAndSynchronizeWithSquirrel___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CDPStateController_recoverAndSynchronizeWithSquirrel___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __56__CDPStateController_recoverAndSynchronizeWithSquirrel___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __56__CDPStateController_recoverAndSynchronizeWithSquirrel___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_37_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)recoverWithSquirrel:(id)squirrel
{
  squirrelCopy = squirrel;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__3;
  v21[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v22 = selfCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__CDPStateController_recoverWithSquirrel___block_invoke;
  v18[3] = &unk_1E869E060;
  v20 = v21;
  v6 = squirrelCopy;
  v19 = v6;
  v7 = MEMORY[0x1E12CA380](v18);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__CDPStateController_recoverWithSquirrel___block_invoke_3;
  v16[3] = &unk_1E869D588;
  v9 = v7;
  v17 = v9;
  v10 = [daemonConn daemonWithErrorHandler:v16];

  v12 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Requesting repair of CDP state with Squirrel...", v15, 2u);
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v10 recoverSquirrelWithContext:context uiProvider:uiProviderProxy completion:v9];

  _Block_object_dispose(v21, 8);
}

void __42__CDPStateController_recoverWithSquirrel___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CDPStateController_recoverWithSquirrel___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __42__CDPStateController_recoverWithSquirrel___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __42__CDPStateController_recoverWithSquirrel___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_37_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)attemptToEscrowPreRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__3;
  v23[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v24 = selfCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke;
  v20[3] = &unk_1E869E060;
  v22 = v23;
  v9 = completionCopy;
  v21 = v9;
  v10 = MEMORY[0x1E12CA380](v20);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke_3;
  v18[3] = &unk_1E869D588;
  v12 = v10;
  v19 = v12;
  v13 = [daemonConn daemonWithErrorHandler:v18];

  v15 = _CDPLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "Informing daemon of attempting to escrow preRecord...", v17, 2u);
  }

  context = [(CDPController *)selfCopy context];
  [v13 attemptToEscrowPreRecord:recordCopy context:context completion:v12];

  _Block_object_dispose(v23, 8);
}

void __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__CDPStateController_attemptToEscrowPreRecord_completion___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)localSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion
{
  toCopy = to;
  completionCopy = completion;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__3;
  v35[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v36 = selfCopy;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke;
  v29[3] = &unk_1E869E0D8;
  v32 = &v38;
  v11 = toCopy;
  v33 = v35;
  typeCopy = type;
  v30 = v11;
  v12 = completionCopy;
  v31 = v12;
  v13 = MEMORY[0x1E12CA380](v29);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_39;
  v25[3] = &unk_1E869E100;
  v28 = v37;
  v15 = v13;
  v26 = v15;
  v16 = v12;
  v27 = v16;
  v17 = [daemonConn daemonWithErrorHandler:v25];
  v18 = v39[5];
  v39[5] = v17;

  v20 = _CDPLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1DED99000, v20, OS_LOG_TYPE_DEFAULT, "Informing daemon of local secret change...", v24, 2u);
  }

  v21 = v39[5];
  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v21 localSecretChangedTo:v11 secretType:type context:context uiProvider:uiProviderProxy completion:v15];

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
}

void __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_2;
  block[3] = &unk_1E869E0B0;
  v14 = v5;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v17 = *(a1 + 64);
  *&v7 = v11;
  *(&v7 + 1) = *(a1 + 56);
  v12 = v7;
  v8 = *(a1 + 40);
  *&v9 = v6;
  *(&v9 + 1) = v8;
  v15 = v9;
  v16 = v12;
  v18 = a2;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _CDPLogSystem(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_2_cold_1();
    }

    v3 = *(*(*(a1 + 56) + 8) + 40);
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    v6 = [*(*(*(a1 + 64) + 8) + 40) context];
    v7 = [*(*(*(a1 + 64) + 8) + 40) uiProviderProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_38;
    v13[3] = &unk_1E869E088;
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v14 = v8;
    v16 = v9;
    v15 = *(a1 + 48);
    [v3 localSecretChangedTo:v4 secretType:v5 context:v6 uiProvider:v7 completion:v13];
  }

  else if (*(a1 + 48))
  {
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    v12 = *(*(a1 + 48) + 16);

    v12();
  }
}

void __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_38(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1[4];
  v7 = _CDPLogSystem(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_38_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(a1[6] + 8) + 40) uiProviderProxy];
    v10 = [*(*(a1[6] + 8) + 40) context];
    v14[0] = 67109634;
    v14[1] = a2;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Local Secret Updated after retry: %{BOOL}d. UIProxy: %@. Context: %@", v14, 0x1Cu);
  }

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = a1[5];
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }
}

void __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_39(void *a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_39_cold_1();
  }

  if (*(*(a1[6] + 8) + 24))
  {
    v5 = a1[5];
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }

  else
  {
    (*(a1[4] + 16))();
    ++*(*(a1[6] + 8) + 24);
  }
}

- (void)finishOfflineLocalSecretChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__3;
  v21[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v22 = selfCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__CDPStateController_finishOfflineLocalSecretChangeWithCompletion___block_invoke;
  v18[3] = &unk_1E869E060;
  v20 = v21;
  v6 = completionCopy;
  v19 = v6;
  v7 = MEMORY[0x1E12CA380](v18);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__CDPStateController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_3;
  v16[3] = &unk_1E869D588;
  v9 = v7;
  v17 = v9;
  v10 = [daemonConn daemonWithErrorHandler:v16];

  v12 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to finish offline local secret change...", v15, 2u);
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v10 finishOfflineLocalSecretChangeWithContext:context uiProvider:uiProviderProxy completion:v9];

  _Block_object_dispose(v21, 8);
}

void __67__CDPStateController_finishOfflineLocalSecretChangeWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CDPStateController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__CDPStateController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __67__CDPStateController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_39_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)finishCyrusFlowAfterTermsAgreementWithContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3;
  v24[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v25 = selfCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke;
  v21[3] = &unk_1E869E060;
  v23 = v24;
  v6 = contextCopy;
  v22 = v6;
  v7 = MEMORY[0x1E12CA380](v21);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke_3;
  v19[3] = &unk_1E869D588;
  v9 = v7;
  v20 = v9;
  v10 = [daemonConn daemonWithErrorHandler:v19];

  v12 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    context = [(CDPController *)selfCopy context];
    altDSID = [context altDSID];
    context2 = [(CDPController *)selfCopy context];
    type = [context2 type];
    *buf = 138740227;
    v27 = altDSID;
    v28 = 2048;
    v29 = type;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to finish secure terms flow for %{sensitive}@ with type %ld", buf, 0x16u);
  }

  context3 = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v10 finishCyrusFlowAfterTermsAgreementWithContext:context3 uiProvider:uiProviderProxy completion:v9];

  _Block_object_dispose(v24, 8);
}

void __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__CDPStateController_finishCyrusFlowAfterTermsAgreementWithContext___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)shouldPerformRepairWithOptionForceFetch:(BOOL)fetch error:(id *)error
{
  fetchCopy = fetch;
  v7 = _os_activity_create(&dword_1DED99000, "cdp: repair state check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CDPStateController_shouldPerformRepairWithOptionForceFetch_error___block_invoke;
  v14[3] = &unk_1E869D758;
  v14[4] = &v19;
  v9 = [daemonConn synchronousDaemonWithErrorHandler:v14];

  context = [(CDPController *)self context];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CDPStateController_shouldPerformRepairWithOptionForceFetch_error___block_invoke_40;
  v13[3] = &unk_1E869DAA0;
  v13[4] = &v19;
  v13[5] = &v15;
  [v9 shouldPerformRepairForContext:context forceFetch:fetchCopy completion:v13];

  if (error)
  {
    *error = v20[5];
  }

  v11 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  os_activity_scope_leave(&state);
  return v11;
}

void __68__CDPStateController_shouldPerformRepairWithOptionForceFetch_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __68__CDPStateController_shouldPerformRepairWithOptionForceFetch_error___block_invoke_cold_1();
  }
}

void __68__CDPStateController_shouldPerformRepairWithOptionForceFetch_error___block_invoke_40(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)shouldPerformRepairWithOptionForceFetch:(BOOL)fetch completion:(id)completion
{
  fetchCopy = fetch;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/should-perform-repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__3;
  v23[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v24 = selfCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke;
  v20[3] = &unk_1E869E060;
  v22 = v23;
  v9 = completionCopy;
  v21 = v9;
  v10 = MEMORY[0x1E12CA380](v20);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke_2;
  v18[3] = &unk_1E869D588;
  v12 = v10;
  v19 = v12;
  v13 = [daemonConn daemonWithErrorHandler:v18];

  v15 = _CDPLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "Requesting to check if repair should be performed on the CDP state", v17, 2u);
  }

  context = [(CDPController *)selfCopy context];
  [v13 shouldPerformRepairForContext:context forceFetch:fetchCopy completion:v12];

  _Block_object_dispose(v23, 8);
  os_activity_scope_leave(&state);
}

void __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)shouldPerformAuthenticatedRepairWithOptionForceFetch:(BOOL)fetch error:(id *)error
{
  fetchCopy = fetch;
  v7 = _os_activity_create(&dword_1DED99000, "cdp: authenticated repair state check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CDPStateController_shouldPerformAuthenticatedRepairWithOptionForceFetch_error___block_invoke;
  v14[3] = &unk_1E869D758;
  v14[4] = &v19;
  v9 = [daemonConn synchronousDaemonWithErrorHandler:v14];

  context = [(CDPController *)self context];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CDPStateController_shouldPerformAuthenticatedRepairWithOptionForceFetch_error___block_invoke_41;
  v13[3] = &unk_1E869DAA0;
  v13[4] = &v19;
  v13[5] = &v15;
  [v9 shouldPerformAuthenticatedRepairForContext:context forceFetch:fetchCopy completion:v13];

  if (error)
  {
    *error = v20[5];
  }

  v11 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  os_activity_scope_leave(&state);
  return v11;
}

void __81__CDPStateController_shouldPerformAuthenticatedRepairWithOptionForceFetch_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__CDPStateController_shouldPerformAuthenticatedRepairWithOptionForceFetch_error___block_invoke_cold_1();
  }
}

void __81__CDPStateController_shouldPerformAuthenticatedRepairWithOptionForceFetch_error___block_invoke_41(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)generateEscrowRecordReportUsingCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/generate-escrow-record-report", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _CDPSignpostLogSystem(v8);
  v10 = _CDPSignpostCreate(v9);
  v12 = v11;

  v14 = _CDPSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 67240192;
    LODWORD(v34) = cacheCopy;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "GenerateEscrowRecordReport", " enableTelemetry=YES  UseCache=%{public,signpost.telemetry:number2,name=UseCache}d ", buf, 8u);
  }

  v17 = _CDPSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v34 = v10;
    v35 = 1026;
    v36 = cacheCopy;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GenerateEscrowRecordReport  enableTelemetry=YES  UseCache=%{public,signpost.telemetry:number2,name=UseCache}d ", buf, 0x12u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __70__CDPStateController_generateEscrowRecordReportUsingCache_completion___block_invoke;
  v28[3] = &unk_1E869E128;
  v28[4] = self;
  v30 = v10;
  v31 = v12;
  v18 = completionCopy;
  v29 = v18;
  v19 = MEMORY[0x1E12CA380](v28);
  daemonConn = [(CDPController *)self daemonConn];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70__CDPStateController_generateEscrowRecordReportUsingCache_completion___block_invoke_43;
  v26[3] = &unk_1E869D588;
  v21 = v19;
  v27 = v21;
  v22 = [daemonConn synchronousDaemonWithErrorHandler:v26];

  v24 = _CDPLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v34) = cacheCopy;
    _os_log_impl(&dword_1DED99000, v24, OS_LOG_TYPE_DEFAULT, "Generating escrow record report (usingCache: %{BOOL}d)", buf, 8u);
  }

  context = [(CDPController *)self context];
  [v22 generateEscrowRecordStatusReportForContext:context usingCache:cacheCopy withCompletion:v21];

  os_activity_scope_leave(&state);
}

void __70__CDPStateController_generateEscrowRecordReportUsingCache_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v8 = _CDPSignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[6];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v19 = 67240192;
    LODWORD(v20) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_END, v10, "GenerateEscrowRecordReport", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 8u);
  }

  v12 = _CDPSignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = [v6 code];
    v19 = 134218496;
    v20 = v14;
    v21 = 2048;
    v22 = v13;
    v23 = 1026;
    v24 = v15;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateEscrowRecordReport  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 0x1Cu);
  }

  if (v6)
  {
    v17 = _CDPLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __70__CDPStateController_generateEscrowRecordReportUsingCache_completion___block_invoke_cold_1();
    }
  }

  v18 = a1[5];
  if (v18)
  {
    (*(v18 + 16))(v18, v5, v6);
  }
}

- (void)authenticateAndGenerateNewRecoveryKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__3;
  v22[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v23 = selfCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke;
  v19[3] = &unk_1E869E060;
  v21 = v22;
  v6 = completionCopy;
  v20 = v6;
  v7 = MEMORY[0x1E12CA380](v19);
  v8 = _os_activity_create(&dword_1DED99000, "cdp/authenticate-and-generate-rk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_45;
  v16[3] = &unk_1E869D588;
  v10 = v7;
  v17 = v10;
  v11 = [daemonConn daemonWithErrorHandler:v16];

  v13 = _CDPLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController authenticateAndGenerateNewRecoveryKeyWithCompletion:];
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v11 authenticateAndGenerateNewRecoveryKeyWithContext:context uiProvider:uiProviderProxy completion:v10];

  os_activity_scope_leave(&state);
  _Block_object_dispose(v22, 8);
}

void __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v5 = _CDPLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_2_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_45_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generateNewRecoveryKey:(id)key
{
  keyCopy = key;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__3;
  v28[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v29 = selfCopy;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__3;
  v26[4] = __Block_byref_object_dispose__3;
  v27 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __45__CDPStateController_generateNewRecoveryKey___block_invoke;
  v22[3] = &unk_1E869E150;
  v24 = v26;
  v25 = v28;
  v6 = keyCopy;
  v23 = v6;
  v7 = MEMORY[0x1E12CA380](v22);
  v8 = _os_activity_create(&dword_1DED99000, "cdp/generate-rk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __45__CDPStateController_generateNewRecoveryKey___block_invoke_3;
  v19 = &unk_1E869D588;
  v10 = v7;
  v20 = v10;
  v11 = [daemonConn daemonWithErrorHandler:&v16];

  v13 = _CDPLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController generateNewRecoveryKey:];
  }

  v14 = [(CDPController *)selfCopy context:v16];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v11 generateNewRecoveryKeyWithContext:v14 uiProvider:uiProviderProxy completion:v10];

  os_activity_scope_leave(&state);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
}

void __45__CDPStateController_generateNewRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(*(*(a1 + 40) + 8) + 40) reportRecoveryKeyTaskFinishedWithSuccess:a2 error:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__CDPStateController_generateNewRecoveryKey___block_invoke_2;
  v8[3] = &unk_1E869E038;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __45__CDPStateController_generateNewRecoveryKey___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __45__CDPStateController_generateNewRecoveryKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__CDPStateController_generateNewRecoveryKey___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)authenticateAndDeleteRecoveryKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__3;
  v22[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v23 = selfCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke;
  v19[3] = &unk_1E869E060;
  v21 = v22;
  v6 = completionCopy;
  v20 = v6;
  v7 = MEMORY[0x1E12CA380](v19);
  v8 = _os_activity_create(&dword_1DED99000, "cdp/authenticate-and-delete-rk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_47;
  v16[3] = &unk_1E869D588;
  v10 = v7;
  v17 = v10;
  v11 = [daemonConn daemonWithErrorHandler:v16];

  v13 = _CDPLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController authenticateAndDeleteRecoveryKeyWithCompletion:];
  }

  context = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v11 authenticateAndDeleteRecoveryKeyWithContext:context uiProvider:uiProviderProxy completion:v10];

  os_activity_scope_leave(&state);
  _Block_object_dispose(v22, 8);
}

void __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v5 = _CDPLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_2_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__CDPStateController_authenticateAndDeleteRecoveryKeyWithCompletion___block_invoke_47_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deleteRecoveryKey:(id)key
{
  keyCopy = key;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__3;
  v28[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v29 = selfCopy;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__3;
  v26[4] = __Block_byref_object_dispose__3;
  v27 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__CDPStateController_deleteRecoveryKey___block_invoke;
  v22[3] = &unk_1E869E150;
  v24 = v26;
  v25 = v28;
  v6 = keyCopy;
  v23 = v6;
  v7 = MEMORY[0x1E12CA380](v22);
  v8 = _os_activity_create(&dword_1DED99000, "cdp/delete-rk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __40__CDPStateController_deleteRecoveryKey___block_invoke_3;
  v19 = &unk_1E869D588;
  v10 = v7;
  v20 = v10;
  v11 = [daemonConn daemonWithErrorHandler:&v16];

  v13 = _CDPLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController deleteRecoveryKey:];
  }

  v14 = [(CDPController *)selfCopy context:v16];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v11 deleteRecoveryKeyWithContext:v14 uiProvider:uiProviderProxy completion:v10];

  os_activity_scope_leave(&state);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
}

void __40__CDPStateController_deleteRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(*(*(a1 + 40) + 8) + 40) reportRecoveryKeyTaskFinishedWithSuccess:a2 error:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CDPStateController_deleteRecoveryKey___block_invoke_2;
  v8[3] = &unk_1E869E038;
  v11 = *(a1 + 48);
  v6 = *(a1 + 32);
  v12 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __40__CDPStateController_deleteRecoveryKey___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __40__CDPStateController_deleteRecoveryKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__CDPStateController_deleteRecoveryKey___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)verifyRecoveryKey:(id)key
{
  keyCopy = key;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__3;
  v28[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v29 = selfCopy;
  v6 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__CDPStateController_verifyRecoveryKey___block_invoke;
  v24[3] = &unk_1E869E088;
  v7 = v6;
  v25 = v7;
  v27 = v28;
  v8 = keyCopy;
  v26 = v8;
  v9 = MEMORY[0x1E12CA380](v24);
  v10 = _os_activity_create(&dword_1DED99000, "cdp/verify-rk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __40__CDPStateController_verifyRecoveryKey___block_invoke_3;
  v21 = &unk_1E869D588;
  v12 = v9;
  v22 = v12;
  v13 = [daemonConn daemonWithErrorHandler:&v18];

  v15 = _CDPLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController verifyRecoveryKey:];
  }

  v16 = [(CDPController *)selfCopy context:v18];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  [v13 verifyRecoveryKeyWithContext:v16 uiProvider:uiProviderProxy completion:v12];

  os_activity_scope_leave(&state);
  _Block_object_dispose(v28, 8);
}

void __40__CDPStateController_verifyRecoveryKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) reportRecoveryKeyTaskFinishedWithSuccess:a2 error:v5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CDPStateController_verifyRecoveryKey___block_invoke_2;
  block[3] = &unk_1E869E038;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __40__CDPStateController_verifyRecoveryKey___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __40__CDPStateController_verifyRecoveryKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__CDPStateController_verifyRecoveryKey___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)deleteRecoveryKeyWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__CDPStateController_deleteRecoveryKeyWithError___block_invoke;
  v16[3] = &unk_1E869D758;
  v16[4] = &v17;
  v6 = [daemonConn synchronousDaemonWithErrorHandler:v16];

  v7 = _os_activity_create(&dword_1DED99000, "cdp/delete-rk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _CDPLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController deleteRecoveryKey:];
  }

  context = [(CDPController *)self context];
  uiProviderProxy = [(CDPController *)self uiProviderProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__CDPStateController_deleteRecoveryKeyWithError___block_invoke_50;
  v14[3] = &unk_1E869DAA0;
  v14[4] = &v23;
  v14[5] = &v17;
  [v6 deleteRecoveryKeyWithContext:context uiProvider:uiProviderProxy completion:v14];

  v12 = *(v24 + 24);
  if (error && (v24[3] & 1) == 0)
  {
    *error = v18[5];
    v12 = *(v24 + 24);
  }

  os_activity_scope_leave(&state);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v12 & 1;
}

void __49__CDPStateController_deleteRecoveryKeyWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__CDPStateController_deleteRecoveryKey___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)isRecoveryKeyAvailableWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__CDPStateController_isRecoveryKeyAvailableWithError___block_invoke;
  v16[3] = &unk_1E869D758;
  v16[4] = &v17;
  v5 = [daemonConn synchronousDaemonWithErrorHandler:v16];

  v6 = _os_activity_create(&dword_1DED99000, "cdp/rk-availability", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v8 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController isRecoveryKeyAvailableWithError:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CDPStateController_isRecoveryKeyAvailableWithError___block_invoke_51;
  v14[3] = &unk_1E869DAA0;
  v14[4] = &v23;
  v14[5] = &v17;
  [v5 isRecoveryKeyAvailableWithCompletion:v14];
  v9 = v18[5];
  if (v9)
  {
    if (error)
    {
      v9 = v9;
      *error = v9;
    }

    v10 = _CDPLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPStateController isRecoveryKeyAvailableWithError:];
    }
  }

  else
  {
    v10 = _CDPLogSystem(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v24 + 24);
      *buf = 67109120;
      v28 = v11;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Recovery key availability - %{BOOL}d", buf, 8u);
    }
  }

  v12 = *(v24 + 24);
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v12 & 1;
}

void __54__CDPStateController_isRecoveryKeyAvailableWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__CDPStateController_isRecoveryKeyAvailableWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)isRecoveryKeyAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke;
  v15[3] = &unk_1E869E060;
  v17 = v18;
  v5 = completionCopy;
  v16 = v5;
  v6 = MEMORY[0x1E12CA380](v15);
  v7 = _os_activity_create(&dword_1DED99000, "cdp/rk-availability", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke_2;
  v12[3] = &unk_1E869D588;
  v9 = v5;
  v13 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v12];
  v11 = _CDPLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController isRecoveryKeyAvailableWithError:];
  }

  [v10 isRecoveryKeyAvailableWithCompletion:v6];
  os_activity_scope_leave(&state);

  _Block_object_dispose(v18, 8);
}

void __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a2;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Recovery key availability - %{BOOL}d", buf, 8u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke_52;
  block[3] = &unk_1E869E038;
  v10 = *(a1 + 32);
  v8 = v10;
  v13 = v10;
  v14 = a2;
  v12 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke_52(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__CDPStateController_isRecoveryKeyAvailableWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isWalrusRecoveryKeyAvailableWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__CDPStateController_isWalrusRecoveryKeyAvailableWithError___block_invoke;
  v16[3] = &unk_1E869D758;
  v16[4] = &v17;
  v5 = [daemonConn synchronousDaemonWithErrorHandler:v16];

  v6 = _os_activity_create(&dword_1DED99000, "cdp/walrus-rk-availability", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v8 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController isWalrusRecoveryKeyAvailableWithError:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CDPStateController_isWalrusRecoveryKeyAvailableWithError___block_invoke_54;
  v14[3] = &unk_1E869DAA0;
  v14[4] = &v23;
  v14[5] = &v17;
  [v5 isWalrusRecoveryKeyAvailableWithCompletion:v14];
  v9 = v18[5];
  if (v9)
  {
    if (error)
    {
      v9 = v9;
      *error = v9;
    }

    v10 = _CDPLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPStateController isWalrusRecoveryKeyAvailableWithError:];
    }
  }

  else
  {
    v10 = _CDPLogSystem(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v24 + 24);
      *buf = 67109120;
      v28 = v11;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Walrus Recovery key availability - %{BOOL}d", buf, 8u);
    }
  }

  v12 = *(v24 + 24);
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v12 & 1;
}

void __60__CDPStateController_isWalrusRecoveryKeyAvailableWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__CDPStateController_isWalrusRecoveryKeyAvailableWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)isWalrusRecoveryKeyAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke;
  v15[3] = &unk_1E869E060;
  v17 = v18;
  v5 = completionCopy;
  v16 = v5;
  v6 = MEMORY[0x1E12CA380](v15);
  v7 = _os_activity_create(&dword_1DED99000, "cdp/walrus-rk-availability", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke_2;
  v12[3] = &unk_1E869D588;
  v9 = v5;
  v13 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v12];
  v11 = _CDPLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController isWalrusRecoveryKeyAvailableWithError:];
  }

  [v10 isWalrusRecoveryKeyAvailableWithCompletion:v6];
  os_activity_scope_leave(&state);

  _Block_object_dispose(v18, 8);
}

void __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a2;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Walrus Recovery key availability - %{BOOL}d", buf, 8u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke_55;
  block[3] = &unk_1E869E038;
  v10 = *(a1 + 32);
  v8 = v10;
  v13 = v10;
  v14 = a2;
  v12 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke_55(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__CDPStateController_isWalrusRecoveryKeyAvailableWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError:(id *)error
{
  v5 = _os_activity_create(&dword_1DED99000, "cdp/verify-rk-observing-systems-have-matching-state", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__CDPStateController_verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError___block_invoke;
  v15[3] = &unk_1E869D758;
  v15[4] = &v20;
  v7 = [daemonConn synchronousDaemonWithErrorHandler:v15];

  v9 = _CDPLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "Verifying all systems agree on RK state", buf, 2u);
  }

  context = [(CDPController *)self context];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__CDPStateController_verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError___block_invoke_56;
  v13[3] = &unk_1E869DAA0;
  v13[4] = &v20;
  v13[5] = &v16;
  [v7 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:context completion:v13];

  if (error)
  {
    *error = v21[5];
  }

  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  os_activity_scope_leave(&state);
  return v11;
}

void __82__CDPStateController_verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = _CDPLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __68__CDPStateController_shouldPerformRepairWithOptionForceFetch_error___block_invoke_cold_1();
  }
}

void __82__CDPStateController_verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError___block_invoke_56(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)anyRecoveryKeysAreOctagonDistrustedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1DED99000, "cdp/any-rk-ot-distrusted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke;
  v17[3] = &unk_1E869D6C8;
  v6 = completionCopy;
  v18 = v6;
  v7 = MEMORY[0x1E12CA380](v17);
  daemonConn = [(CDPController *)self daemonConn];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke_2;
  v15[3] = &unk_1E869D588;
  v9 = v7;
  v16 = v9;
  v10 = [daemonConn daemonWithErrorHandler:v15];

  v12 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Checking if any Recovery Keys are Octagon distrusted", v14, 2u);
  }

  context = [(CDPController *)self context];
  [v10 anyRecoveryKeysAreOctagonDistrustedWithContext:context completion:v9];

  os_activity_scope_leave(&state);
}

void __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = a2;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Are there any RKs distrusted in Octagon? - %{BOOL}d", buf, 8u);
  }

  if (*(a1 + 32))
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke_58;
      block[3] = &unk_1E869DBD0;
      v10 = *(a1 + 32);
      v11 = a2;
      v9 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__CDPStateController_anyRecoveryKeysAreOctagonDistrustedWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)generateRandomRecoveryKey:(id *)key
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  daemonConn = [(CDPController *)self daemonConn];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CDPStateController_generateRandomRecoveryKey___block_invoke;
  v14[3] = &unk_1E869D758;
  v14[4] = &v15;
  v6 = [daemonConn synchronousDaemonWithErrorHandler:v14];

  v8 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPStateController generateNewRecoveryKey:];
  }

  context = [(CDPController *)self context];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__CDPStateController_generateRandomRecoveryKey___block_invoke_59;
  v13[3] = &unk_1E869E178;
  v13[4] = &v21;
  v13[5] = &v15;
  [v6 generateRandomRecoveryKeyWithContext:context completion:v13];

  v10 = v22[5];
  if (key && !v10)
  {
    *key = v16[5];
    v10 = v22[5];
  }

  v11 = v10;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __48__CDPStateController_generateRandomRecoveryKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__CDPStateController_generateNewRecoveryKey___block_invoke_3_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __48__CDPStateController_generateRandomRecoveryKey___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)handleURLActionWithInfo:(id)info completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = _CDPLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = infoCopy;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Handling URL action: %@", &v10, 0xCu);
  }

  v9 = [infoCopy objectForKeyedSubscript:@"command"];
  if ([v9 isEqualToString:@"rejoin"])
  {
    [(CDPStateController *)self repairCloudDataProtectionStateWithCompletion:completionCopy];
  }

  else if ([v9 isEqualToString:@"offline-secret-change"])
  {
    [(CDPStateController *)self finishOfflineLocalSecretChangeWithCompletion:completionCopy];
  }

  else if ([v9 isEqualToString:@"regenerate"])
  {
    [(CDPStateController *)self generateNewRecoveryKey:completionCopy];
  }
}

- (void)fetchEscrowRecordDevicesWithContext:(id)context usingCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  contextCopy = context;
  completionCopy = completion;
  v10 = _os_activity_create(&dword_1DED99000, "cdp/fetch-escrow-devices", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__3;
  v25[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v26 = selfCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__CDPStateController_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke;
  v22[3] = &unk_1E869E1A0;
  v24 = v25;
  v12 = completionCopy;
  v23 = v12;
  v13 = MEMORY[0x1E12CA380](v22);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__CDPStateController_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke_3;
  v20[3] = &unk_1E869D588;
  v15 = v13;
  v21 = v15;
  v16 = [daemonConn daemonWithErrorHandler:v20];

  v18 = _CDPLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Requesting list of escrow-record associated devices", v19, 2u);
  }

  [v16 fetchEscrowRecordDevicesWithContext:contextCopy usingCache:cacheCopy completion:v15];
  _Block_object_dispose(v25, 8);

  os_activity_scope_leave(&state);
}

void __80__CDPStateController_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CDPStateController_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke_2;
  block[3] = &unk_1E869D878;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__CDPStateController_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __80__CDPStateController_fetchEscrowRecordDevicesWithContext_usingCache_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deviceEscrowRecordRecoverableWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1DED99000, "cdp/device-escrow-record-recoverable", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__3;
  v23[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v24 = selfCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__CDPStateController_deviceEscrowRecordRecoverableWithContext_completion___block_invoke;
  v20[3] = &unk_1E869E1F0;
  v22 = v23;
  v10 = completionCopy;
  v21 = v10;
  v11 = MEMORY[0x1E12CA380](v20);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__CDPStateController_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_3;
  v18[3] = &unk_1E869D588;
  v13 = v11;
  v19 = v13;
  v14 = [daemonConn daemonWithErrorHandler:v18];

  v16 = _CDPLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "Checking for the current device's ecrow record being recoverable", v17, 2u);
  }

  [v14 deviceEscrowRecordRecoverableWithContext:contextCopy completion:v13];
  _Block_object_dispose(v23, 8);

  os_activity_scope_leave(&state);
}

void __74__CDPStateController_deviceEscrowRecordRecoverableWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CDPStateController_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_2;
  v8[3] = &unk_1E869E1C8;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __74__CDPStateController_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __74__CDPStateController_deviceEscrowRecordRecoverableWithContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__CDPStateController_shouldPerformRepairWithOptionForceFetch_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isDeviceEscrowRecordRecoverable:(id *)recoverable
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DED99000, "cdp/synchronous-device-escrow-record-recoverable", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__CDPStateController_isDeviceEscrowRecordRecoverable___block_invoke;
  v13[3] = &unk_1E869E218;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = recoverable;
  v6 = MEMORY[0x1E12CA380](v13);
  daemonConn = [(CDPController *)self daemonConn];
  v8 = [daemonConn synchronousDaemonWithErrorHandler:v6];

  v10 = _CDPLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "%@: Checking current device's escrow record recoverability", buf, 0xCu);
  }

  context = [(CDPController *)self context];
  [v8 deviceEscrowRecordRecoverableWithContext:context completion:v6];

  LOBYTE(context) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  os_activity_scope_leave(&state);

  return context & 1;
}

void __54__CDPStateController_isDeviceEscrowRecordRecoverable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _CDPLogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__CDPStateController_isDeviceEscrowRecordRecoverable___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && *(a1 + 48))
  {
    v6 = v4;
    **(a1 + 48) = v4;
  }
}

- (BOOL)shouldPerformSilentEscrowRecordRepairUsingCache:(BOOL)cache error:(id *)error
{
  cacheCopy = cache;
  v45 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_1DED99000, "cdp/should-perform-silent-escrow-record-repair-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _CDPSignpostLogSystem(v8);
  v10 = _CDPSignpostCreate(v9);
  v12 = v11;

  v14 = _CDPSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ShouldPerformSilentEscrowRecordRepairSync", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _CDPSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ShouldPerformSilentEscrowRecordRepairSync  enableTelemetry=YES ", &buf, 0xCu);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_error___block_invoke;
  v32[3] = &unk_1E869E240;
  v32[7] = v10;
  v32[8] = v12;
  v32[4] = self;
  v32[5] = &buf;
  v32[6] = &v33;
  v18 = MEMORY[0x1E12CA380](v32);
  daemonConn = [(CDPController *)self daemonConn];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __76__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_error___block_invoke_74;
  v30 = &unk_1E869D588;
  v20 = v18;
  v31 = v20;
  v21 = [daemonConn synchronousDaemonWithErrorHandler:&v27];

  v23 = _CDPLogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 67109120;
    v39 = cacheCopy;
    _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "Synchronously checking if silent escrow record repair should be performed (usingCache: %{BOOL}d)", v38, 8u);
  }

  v24 = [(CDPController *)self context:v27];
  [v21 shouldPerformSilentEscrowRecordRepairWithContext:v24 usingCache:cacheCopy completion:v20];

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  v25 = *(v34 + 24);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v33, 8);
  os_activity_scope_leave(&state);

  return v25 & 1;
}

void __76__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_error___block_invoke(void *a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[7], a1[8]);
  v7 = _CDPSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[7];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = [*(*(a1[5] + 8) + 40) code];
    v21 = 67240192;
    LODWORD(v22) = v10;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ShouldPerformSilentEscrowRecordRepairSync", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v21, 8u);
  }

  v12 = _CDPSignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[7];
    v15 = [*(*(a1[5] + 8) + 40) code];
    v21 = 134218496;
    v22 = v14;
    v23 = 2048;
    v24 = v13;
    v25 = 1026;
    v26 = v15;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ShouldPerformSilentEscrowRecordRepairSync  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v21, 0x1Cu);
  }

  v17 = _CDPLogSystem(v16);
  v18 = v17;
  if (v5)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __76__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_error___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109120;
    LODWORD(v22) = a2;
    _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Escrow record repair is needed: %{BOOL}d", &v21, 8u);
  }

  *(*(a1[6] + 8) + 24) = a2;
  v19 = *(a1[5] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v5;
}

- (void)shouldPerformSilentEscrowRecordRepairUsingCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  v35 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/should-perform-silent-escrow-record-repair-async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v9 = _CDPSignpostLogSystem(v8);
  v10 = _CDPSignpostCreate(v9);
  v12 = v11;

  v14 = _CDPSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ShouldPerformSilentEscrowRecordRepairAsync", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _CDPSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v10;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ShouldPerformSilentEscrowRecordRepairAsync  enableTelemetry=YES ", buf, 0xCu);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_completion___block_invoke;
  v28[3] = &unk_1E869E268;
  v28[4] = self;
  v30 = v10;
  v31 = v12;
  v18 = completionCopy;
  v29 = v18;
  v19 = MEMORY[0x1E12CA380](v28);
  daemonConn = [(CDPController *)self daemonConn];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_completion___block_invoke_75;
  v26[3] = &unk_1E869D588;
  v21 = v19;
  v27 = v21;
  v22 = [daemonConn daemonWithErrorHandler:v26];

  v24 = _CDPLogSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v34) = cacheCopy;
    _os_log_impl(&dword_1DED99000, v24, OS_LOG_TYPE_DEFAULT, "Checking if silent escrow record repair should be performed (usingCache: %{BOOL}d)", buf, 8u);
  }

  context = [(CDPController *)self context];
  [v22 shouldPerformSilentEscrowRecordRepairWithContext:context usingCache:cacheCopy completion:v21];

  os_activity_scope_leave(&state);
}

void __81__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _CDPSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v19 = 67240192;
    LODWORD(v20) = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ShouldPerformSilentEscrowRecordRepairAsync", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 8u);
  }

  v11 = _CDPSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = [v5 code];
    v19 = 134218496;
    v20 = v13;
    v21 = 2048;
    v22 = v12;
    v23 = 1026;
    v24 = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ShouldPerformSilentEscrowRecordRepairAsync  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 0x1Cu);
  }

  v16 = _CDPLogSystem(v15);
  v17 = v16;
  if (v5)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __76__CDPStateController_shouldPerformSilentEscrowRecordRepairUsingCache_error___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Should perform silent escrow record repair: %{BOOL}d", &v19, 8u);
  }

  v18 = a1[5];
  if (v18)
  {
    (*(v18 + 16))(v18, a2, v5);
  }
}

- (void)startSilentEscrowRecordRepairWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1DED99000, "cdp/start-silent-escrow-record-repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _CDPSignpostLogSystem(v6);
  v8 = _CDPSignpostCreate(v7);
  v10 = v9;

  v12 = _CDPSignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StartSilentEscrowRecordRepair", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _CDPSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v8;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartSilentEscrowRecordRepair  enableTelemetry=YES ", buf, 0xCu);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __66__CDPStateController_startSilentEscrowRecordRepairWithCompletion___block_invoke;
  v26[3] = &unk_1E869E268;
  v26[4] = self;
  v28 = v8;
  v29 = v10;
  v16 = completionCopy;
  v27 = v16;
  v17 = MEMORY[0x1E12CA380](v26);
  daemonConn = [(CDPController *)self daemonConn];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__CDPStateController_startSilentEscrowRecordRepairWithCompletion___block_invoke_76;
  v24[3] = &unk_1E869D588;
  v19 = v17;
  v25 = v19;
  v20 = [daemonConn daemonWithErrorHandler:v24];

  v22 = _CDPLogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v22, OS_LOG_TYPE_DEFAULT, "Requesting start of silent escrow record repair...", buf, 2u);
  }

  context = [(CDPController *)self context];
  [v20 startSilentEscrowRecordRepairWithContext:context completion:v19];

  os_activity_scope_leave(&state);
}

void __66__CDPStateController_startSilentEscrowRecordRepairWithCompletion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _CDPSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v19 = 67240192;
    LODWORD(v20) = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StartSilentEscrowRecordRepair", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 8u);
  }

  v11 = _CDPSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = [v5 code];
    v19 = 134218496;
    v20 = v13;
    v21 = 2048;
    v22 = v12;
    v23 = 1026;
    v24 = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartSilentEscrowRecordRepair  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 0x1Cu);
  }

  v16 = _CDPLogSystem(v15);
  v17 = v16;
  if (a2)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Successfully started silent escrow record repair", &v19, 2u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __66__CDPStateController_startSilentEscrowRecordRepairWithCompletion___block_invoke_cold_1();
  }

  v18 = a1[5];
  if (v18)
  {
    (*(v18 + 16))(v18, a2, v5);
  }
}

- (void)performSilentEscrowRecordRepairWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1DED99000, "cdp/perform-silent-escrow-record-repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _CDPSignpostLogSystem(v6);
  v8 = _CDPSignpostCreate(v7);
  v10 = v9;

  v12 = _CDPSignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PerformSilentEscrowRecordRepair", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _CDPSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v8;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PerformSilentEscrowRecordRepair  enableTelemetry=YES ", buf, 0xCu);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__CDPStateController_performSilentEscrowRecordRepairWithCompletion___block_invoke;
  v26[3] = &unk_1E869E268;
  v26[4] = self;
  v28 = v8;
  v29 = v10;
  v16 = completionCopy;
  v27 = v16;
  v17 = MEMORY[0x1E12CA380](v26);
  daemonConn = [(CDPController *)self daemonConn];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__CDPStateController_performSilentEscrowRecordRepairWithCompletion___block_invoke_77;
  v24[3] = &unk_1E869D588;
  v19 = v17;
  v25 = v19;
  v20 = [daemonConn daemonWithErrorHandler:v24];

  v22 = _CDPLogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v22, OS_LOG_TYPE_DEFAULT, "Performing silent escrow record repair...", buf, 2u);
  }

  context = [(CDPController *)self context];
  [v20 performSilentEscrowRecordRepairWithContext:context completion:v19];

  os_activity_scope_leave(&state);
}

void __68__CDPStateController_performSilentEscrowRecordRepairWithCompletion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _CDPSignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v19 = 67240192;
    LODWORD(v20) = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PerformSilentEscrowRecordRepair", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 8u);
  }

  v11 = _CDPSignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[6];
    v14 = [v5 code];
    v19 = 134218496;
    v20 = v13;
    v21 = 2048;
    v22 = v12;
    v23 = 1026;
    v24 = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PerformSilentEscrowRecordRepair  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v19, 0x1Cu);
  }

  v16 = _CDPLogSystem(v15);
  v17 = v16;
  if (a2)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Successfully performed silent escrow record repair", &v19, 2u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __68__CDPStateController_performSilentEscrowRecordRepairWithCompletion___block_invoke_cold_1();
  }

  v18 = a1[5];
  if (v18)
  {
    (*(v18 + 16))(v18, a2, v5);
  }
}

- (BOOL)updateLastSilentEscrowRecordRepairAttemptDate:(id)date error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/update-last-silent-escrow-record-repair-attempt-date", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__CDPStateController_updateLastSilentEscrowRecordRepairAttemptDate_error___block_invoke;
  v20[3] = &unk_1E869E290;
  v20[4] = self;
  v8 = dateCopy;
  v21 = v8;
  v22 = &v30;
  v23 = &v24;
  v9 = MEMORY[0x1E12CA380](v20);
  daemonConn = [(CDPController *)self daemonConn];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__CDPStateController_updateLastSilentEscrowRecordRepairAttemptDate_error___block_invoke_78;
  v18[3] = &unk_1E869D588;
  v11 = v9;
  v19 = v11;
  v12 = [daemonConn synchronousDaemonWithErrorHandler:v18];

  v14 = _CDPLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Requesting update of silent escrow record repair attempt date to %@...", buf, 0xCu);
  }

  context = [(CDPController *)self context];
  [v12 updateLastSilentEscrowRecordRepairAttemptDate:v8 context:context completion:v11];

  v16 = *(v31 + 24);
  if (error && (v31[3] & 1) == 0)
  {
    *error = v25[5];
    v16 = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  os_activity_scope_leave(&state);

  return v16 & 1;
}

void __74__CDPStateController_updateLastSilentEscrowRecordRepairAttemptDate_error___block_invoke(void *a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Successfully updated last silent escrow record repair attempt date to %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __74__CDPStateController_updateLastSilentEscrowRecordRepairAttemptDate_error___block_invoke_cold_1();
  }

  *(*(a1[6] + 8) + 24) = a2;
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)setKeyChainSyncCompatibilityState:(unint64_t)state withAltDSID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = _os_activity_create(&dword_1DED99000, "cdp/sos-compatibility-state-updated", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v27.opaque[0] = 0;
  v27.opaque[1] = 0;
  os_activity_scope_enter(v7, &v27);
  v9 = _CDPSignpostLogSystem(v8);
  v10 = _CDPSignpostCreate(v9);
  v12 = v11;

  v14 = _CDPSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SetKeyChainSyncCompatibilityState", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _CDPSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v10;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetKeyChainSyncCompatibilityState  enableTelemetry=YES ", buf, 0xCu);
  }

  daemonConn = [(CDPController *)self daemonConn];
  v19 = [daemonConn daemonWithErrorHandler:&__block_literal_global_80];

  v21 = _CDPLogSystem(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v21, OS_LOG_TYPE_DEFAULT, "Requesting setKeyChainSyncCompatibilityState", buf, 2u);
  }

  [v19 setKeyChainSyncCompatibilityState:state withAltDSID:dCopy];
  Nanoseconds = _CDPSignpostGetNanoseconds(v10, v12);
  v23 = _CDPSignpostLogSystem(Nanoseconds);
  v24 = v23;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 67240192;
    LODWORD(v29) = state;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v24, OS_SIGNPOST_INTERVAL_END, v10, "SetKeyChainSyncCompatibilityState", " sosCompatibilityType=%{public,signpost.telemetry:number1,name=sosCompatibilityType}d ", buf, 8u);
  }

  v26 = _CDPSignpostLogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v29 = v10;
    v30 = 2048;
    v31 = Nanoseconds / 1000000000.0;
    v32 = 1026;
    stateCopy = state;
    _os_log_impl(&dword_1DED99000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetKeyChainSyncCompatibilityState  sosCompatibilityType=%{public,signpost.telemetry:number1,name=sosCompatibilityType}d ", buf, 0x1Cu);
  }

  os_activity_scope_leave(&v27);
}

void __68__CDPStateController_setKeyChainSyncCompatibilityState_withAltDSID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CDPLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__CDPStateController_repairCloudDataProtectionStateWithCompletion___block_invoke_37_cold_1();
  }
}

- (void)performEscrowRecordCheckWithContext:(id)context isBackground:(BOOL)background completion:(id)completion
{
  backgroundCopy = background;
  contextCopy = context;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3;
  v24[4] = __Block_byref_object_dispose__3;
  selfCopy = self;
  v25 = selfCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke;
  v21[3] = &unk_1E869E2E0;
  v23 = v24;
  v11 = completionCopy;
  v22 = v11;
  v12 = MEMORY[0x1E12CA380](v21);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_82;
  v19[3] = &unk_1E869D588;
  v14 = v12;
  v20 = v14;
  v15 = [daemonConn daemonWithErrorHandler:v19];

  v17 = _CDPLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1DED99000, v17, OS_LOG_TYPE_DEFAULT, "Performing escrow check...", v18, 2u);
  }

  [v15 escrowCheckForContext:contextCopy isBackground:backgroundCopy completion:v14];
  _Block_object_dispose(v24, 8);
}

void __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_2;
  block[3] = &unk_1E869E2B8;
  v10 = v5;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v12 = a2;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = a1[4];
  v6 = _CDPLogSystem(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Successfully performed escrow record check", v9, 2u);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[7], a1[4]);
  }

  return result;
}

void __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_82_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __65__CDPStateController_localSecretChangedTo_secretType_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Processing Local Secret Change failed: %@. Attempting one retry.", v2, v3, v4, v5);
}

void __74__CDPStateController_authenticateAndGenerateNewRecoveryKeyWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = MEMORY[0x1E12CA380](*(a1 + 40));
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0(&dword_1DED99000, v4, v5, "Calling completion %@ with result %@ and error %@", v6, v7, v8, v9);
}

- (void)isRecoveryKeyAvailableWithError:.cold.2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to fetch recovery key availability with error %@", v2, v3, v4, v5);
}

- (void)isWalrusRecoveryKeyAvailableWithError:.cold.2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to fetch walrus recovery key availability with error %@", v2, v3, v4, v5);
}

void __54__CDPStateController_isDeviceEscrowRecordRecoverable___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1DED99000, v1, OS_LOG_TYPE_ERROR, "%@: Failed to find recoverable escrow record for current device with error (%@)", v2, 0x16u);
}

void __82__CDPStateController_performEscrowRecordCheckWithContext_isBackground_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to perform escrow record check: %@", v2, v3, v4, v5);
}

@end