@interface AACustodianController
- (AACustodianController)initWithDaemonConnectionProvider:(id)provider analyticsReporter:(id)reporter;
- (AACustodianController)initWithDaemonXPCEndpoint:(id)endpoint;
- (BOOL)cancelCustodianRecoveryWithSessionID:(id)d error:(id *)error;
- (void)_retryingGenerateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion;
- (void)_retryingValidateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion;
- (void)availableRecoveryFactorsWithCompletion:(id)completion;
- (void)cancelCustodianRecoveryWithContext:(id)context completion:(id)completion;
- (void)displayInvitationUIWithUUID:(id)d completion:(id)completion;
- (void)displayTrustedContactFlowWithModel:(id)model completion:(id)completion;
- (void)fetchCachedTrustedContactsWithCompletion:(id)completion;
- (void)fetchCustodianHealthStatusWithCompletion:(id)completion;
- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)d completion:(id)completion;
- (void)fetchCustodianRecoveryConfigurationWithCompletion:(id)completion;
- (void)fetchCustodianRecoveryKeysWithContext:(id)context completion:(id)completion;
- (void)fetchCustodianRecoveryKeysWithSessionID:(id)d completion:(id)completion;
- (void)fetchCustodianshipInfoWithCompletion:(id)completion;
- (void)fetchCustodianshipInfoWithUUID:(id)d completion:(id)completion;
- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)d completion:(id)completion;
- (void)fetchSuggestedCustodiansWithCompletion:(id)completion;
- (void)fetchTrustedContactsWithCompletion:(id)completion;
- (void)fetchTrustedContactsWithRequest:(id)request completion:(id)completion;
- (void)generateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion;
- (void)preflightCustodianRecoveryWithCompletion:(id)completion;
- (void)pullTrustedContactsFromCloudKitWithCompletion:(id)completion;
- (void)reSendCustodianInvitationWithCustodianID:(id)d completion:(id)completion;
- (void)removeCustodian:(id)custodian completion:(id)completion;
- (void)removeCustodianWithContext:(id)context completion:(id)completion;
- (void)repairCustodians:(id)custodians completion:(id)completion;
- (void)respondToCustodianRequestWithResponse:(id)response completion:(id)completion;
- (void)setupCustodianshipWithContext:(id)context completion:(id)completion;
- (void)startCustodianRecoveryWithContext:(id)context completion:(id)completion;
- (void)startHealthCheckWithCompletion:(id)completion;
- (void)startManateeMigrationWithCompletion:(id)completion;
- (void)stopBeingCustodian:(id)custodian completion:(id)completion;
- (void)stopBeingCustodianWithContext:(id)context completion:(id)completion;
- (void)validateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion;
@end

@implementation AACustodianController

- (AACustodianController)initWithDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[AACustodianDaemonConnection alloc] initWithListenerEndpoint:endpointCopy];

  v6 = [(AACustodianController *)self initWithDaemonConnectionProvider:v5 analyticsReporter:0];
  return v6;
}

- (AACustodianController)initWithDaemonConnectionProvider:(id)provider analyticsReporter:(id)reporter
{
  providerCopy = provider;
  reporterCopy = reporter;
  v14.receiver = self;
  v14.super_class = AACustodianController;
  v9 = [(AACustodianController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonConnection, provider);
    if (reporterCopy)
    {
      v11 = reporterCopy;
    }

    else
    {
      v11 = +[AAAnalyticsRTCReporter reporter];
    }

    analyticsReporter = v10->_analyticsReporter;
    v10->_analyticsReporter = v11;
  }

  return v10;
}

- (void)setupCustodianshipWithContext:(id)context completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/set-up-custodianship", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SetupCustodianship", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetupCustodianship  enableTelemetry=YES ", &buf, 0xCu);
  }

  v19 = self->_analyticsReporter;
  v20 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v23 = [v20 analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.newCustodian" altDSID:altDSID flowID:telemetryFlowID];

  [v23 setObject:&unk_1F2F24B20 forKeyedSubscript:@"contextType"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v53 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4A0;
  p_buf = &buf;
  v25 = v23;
  v40 = v25;
  v26 = v19;
  v41 = v26;
  v44 = v11;
  v45 = v13;
  v27 = completionCopy;
  v42 = v27;
  v28 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35;
  v37[3] = &unk_1E7C9B078;
  v30 = v28;
  v38 = v30;
  v31 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v37];
  v32 = _AALogSystem(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [contextCopy debugDescription];
    *v47 = 138412290;
    v48 = v33;
    _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Setting up custodianship: %@", v47, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37;
  v35[3] = &unk_1E7C9B4C8;
  v34 = v30;
  v36 = v34;
  [v31 setupCustodianshipWithContext:contextCopy completion:v35];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v21 = 67240192;
    LODWORD(v22) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SetupCustodianship", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = *(a1 + 64);
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v21 = 134218496;
    v22 = v17;
    v23 = 2048;
    v24 = v16;
    v25 = 1026;
    v26 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetupCustodianship  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v5, v6);
  }
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_35_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_setupCustodianshipWithContext_completion___block_invoke_37_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)respondToCustodianRequestWithResponse:(id)response completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-invitation-response", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RespondToCustodianRequest", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RespondToCustodianRequest  enableTelemetry=YES ", &buf, 0xCu);
  }

  v19 = self->_analyticsReporter;
  v20 = MEMORY[0x1E6985DB0];
  altDSID = [responseCopy altDSID];
  telemetryFlowID = [responseCopy telemetryFlowID];
  v23 = [v20 analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.respondToInvite" altDSID:altDSID flowID:telemetryFlowID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v51 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4F0;
  p_buf = &buf;
  v25 = v23;
  v40 = v25;
  v26 = v19;
  v41 = v26;
  v44 = v11;
  v45 = v13;
  v27 = completionCopy;
  v42 = v27;
  v28 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38;
  v37[3] = &unk_1E7C9B078;
  v30 = v28;
  v38 = v30;
  v31 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v37];
  v32 = _AALogSystem(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Responding to a custodian request.", v36, 2u);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39;
  v34[3] = &unk_1E7C9B078;
  v33 = v30;
  v35 = v33;
  [v31 respondToInviteWithContext:responseCopy completion:v34];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RespondToCustodianRequest", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = *(a1 + 64);
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RespondToCustodianRequest  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_38_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__AACustodianController_respondToCustodianRequestWithResponse_completion___block_invoke_39_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Responded to the custodian request successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeCustodian:(id)custodian completion:(id)completion
{
  completionCopy = completion;
  custodianCopy = custodian;
  v11 = [[AACustodianUpdateRequestContext alloc] initWithCustodianID:custodianCopy];

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];
  aa_altDSID = [primaryAuthKitAccount aa_altDSID];
  [(AACustodianUpdateRequestContext *)v11 setAltDSID:aa_altDSID];

  [(AACustodianController *)self removeCustodianWithContext:v11 completion:completionCopy];
}

- (void)removeCustodianWithContext:(id)context completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v37 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-remove", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v37, &state);
  v9 = _AASignpostLogSystem(v8);
  v10 = _AASignpostCreate(v9);
  v12 = v11;
  v38 = completionCopy;

  v14 = _AASignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RemoveCustodian", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _AASignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RemoveCustodian  enableTelemetry=YES ", &buf, 0xCu);
  }

  v18 = @"com.apple.appleaccount.custodian.remove";
  v19 = self->_analyticsReporter;
  v20 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v23 = [v20 analyticsEventWithName:v18 altDSID:altDSID flowID:telemetryFlowID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__2;
  v57 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v58 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__AACustodianController_removeCustodianWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4F0;
  p_buf = &buf;
  v25 = v23;
  v45 = v25;
  v26 = v19;
  v46 = v26;
  v49 = v10;
  v50 = v12;
  v27 = v38;
  v47 = v27;
  v28 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42;
  v42[3] = &unk_1E7C9B078;
  v30 = v28;
  v43 = v30;
  v31 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v42];
  v32 = _AALogSystem(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    custodianID = [contextCopy custodianID];
    uUIDString = [custodianID UUIDString];
    *v52 = 138412290;
    v53 = uUIDString;
    _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Removing custodian with ID %@.", v52, 0xCu);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43;
  v39[3] = &unk_1E7C9B518;
  v35 = contextCopy;
  v40 = v35;
  v36 = v30;
  v41 = v36;
  [v31 removeCustodianWithContext:v35 completion:v39];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RemoveCustodian", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = *(a1 + 64);
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RemoveCustodian  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_42_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__AACustodianController_removeCustodianWithContext_completion___block_invoke_43_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) custodianID];
    v7 = [v6 UUIDString];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Custodian %@ removed successfully.", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)stopBeingCustodian:(id)custodian completion:(id)completion
{
  completionCopy = completion;
  custodianCopy = custodian;
  v11 = [[AACustodianUpdateRequestContext alloc] initWithCustodianID:custodianCopy];

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];
  aa_altDSID = [primaryAuthKitAccount aa_altDSID];
  [(AACustodianUpdateRequestContext *)v11 setAltDSID:aa_altDSID];

  [(AACustodianController *)self stopBeingCustodianWithContext:v11 completion:completionCopy];
}

- (void)stopBeingCustodianWithContext:(id)context completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v37 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/stop-being-custodian", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v37, &state);
  v9 = _AASignpostLogSystem(v8);
  v10 = _AASignpostCreate(v9);
  v12 = v11;
  v38 = completionCopy;

  v14 = _AASignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "StopBeingCustodian", " enableTelemetry=YES ", &buf, 2u);
  }

  v17 = _AASignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StopBeingCustodian  enableTelemetry=YES ", &buf, 0xCu);
  }

  v18 = self->_analyticsReporter;
  v19 = @"com.apple.appleaccount.custodian.setup.stopBeingCustodian";
  v20 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v23 = [v20 analyticsEventWithName:v19 altDSID:altDSID flowID:telemetryFlowID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__2;
  v57 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v58 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B4F0;
  p_buf = &buf;
  v25 = v23;
  v45 = v25;
  v26 = v18;
  v46 = v26;
  v49 = v10;
  v50 = v12;
  v27 = v38;
  v47 = v27;
  v28 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44;
  v42[3] = &unk_1E7C9B078;
  v30 = v28;
  v43 = v30;
  v31 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v42];
  v32 = _AALogSystem(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    custodianID = [contextCopy custodianID];
    uUIDString = [custodianID UUIDString];
    *v52 = 138412290;
    v53 = uUIDString;
    _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Ending custodianship with ID %@.", v52, 0xCu);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45;
  v39[3] = &unk_1E7C9B518;
  v35 = contextCopy;
  v40 = v35;
  v36 = v30;
  v41 = v36;
  [v31 stopBeingCustodianWithContext:v35 completion:v39];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StopBeingCustodian", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = *(a1 + 64);
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StopBeingCustodian  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_45_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) custodianID];
    v7 = [v6 UUIDString];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Custodianship %@ has been ended.", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchCachedTrustedContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:0];
  [(AACustodianController *)self fetchTrustedContactsWithRequest:v5 completion:completionCopy];
}

- (void)fetchTrustedContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[AATrustedContactFetchRequest alloc] initWithContactType:0 cachePolicy:1];
  [(AACustodianController *)self fetchTrustedContactsWithRequest:v5 completion:completionCopy];
}

- (void)fetchTrustedContactsWithRequest:(id)request completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-trusted-contacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchTrustedContacts", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchTrustedContacts  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v42 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v35 = v11;
  v36 = v13;
  v20 = completionCopy;
  v33 = v20;
  v21 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48;
  v30[3] = &unk_1E7C9B078;
  v23 = v21;
  v31 = v23;
  v24 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v30];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Fetching trusted contacts.", v29, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49;
  v27[3] = &unk_1E7C9B290;
  v26 = v23;
  v28 = v26;
  [v24 fetchTrustedContactsWithRequest:requestCopy completion:v27];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v22 = 67240192;
    LODWORD(v23) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchTrustedContacts", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v22 = 134218496;
    v23 = v17;
    v24 = 2048;
    v25 = v16;
    v26 = 1026;
    v27 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchTrustedContacts  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x1Cu);
  }

  if (a1[4])
  {
    v21 = _AALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Fetched trusted contacts: %@", &v22, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_48_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__AACustodianController_fetchTrustedContactsWithRequest_completion___block_invoke_49_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianshipInfoWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-custodianship-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchCustodianshipInfo", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianshipInfo  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v39 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v32 = v8;
  v33 = v10;
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_50;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching custodianship info.", v26, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51;
  v24[3] = &unk_1E7C9B290;
  v23 = v20;
  v25 = v23;
  [v21 fetchCustodianshipInfoWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v22 = 67240192;
    LODWORD(v23) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianshipInfo", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v22 = 134218496;
    v23 = v17;
    v24 = 2048;
    v25 = v16;
    v26 = 1026;
    v27 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianshipInfo  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x1Cu);
  }

  if (a1[4])
  {
    v21 = _AALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Fetched custodianship info: %@", &v22, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianshipInfoWithUUID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-custodianship-info-with-uuid", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchCustodianshipInfoWithUUID", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianshipInfoWithUUID  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v42 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B568;
  p_buf = &buf;
  v35 = v11;
  v36 = v13;
  v20 = completionCopy;
  v33 = v20;
  v21 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_53;
  v30[3] = &unk_1E7C9B078;
  v23 = v21;
  v31 = v23;
  v24 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v30];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Fetching custodianship info.", v29, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_54;
  v27[3] = &unk_1E7C9B590;
  v26 = v23;
  v28 = v26;
  [v24 fetchCustodianshipInfoWithUUID:dCopy completion:v27];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v22 = 67240192;
    LODWORD(v23) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianshipInfoWithUUID", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v22 = 134218496;
    v23 = v17;
    v24 = 2048;
    v25 = v16;
    v26 = 1026;
    v27 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianshipInfoWithUUID  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x1Cu);
  }

  if (a1[4])
  {
    v21 = _AALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Fetched custodianship info: %@", &v22, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __67__AACustodianController_fetchCustodianshipInfoWithUUID_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __62__AACustodianController_fetchCustodianshipInfoWithCompletion___block_invoke_51_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSuggestedCustodiansWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-suggested-custodians", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchSuggestedCustodians", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchSuggestedCustodians  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v39 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v32 = v8;
  v33 = v10;
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_55;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching suggested custodians.", v26, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56;
  v24[3] = &unk_1E7C9B290;
  v23 = v20;
  v25 = v23;
  [v21 fetchSuggestedCustodiansWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v22 = 67240192;
    LODWORD(v23) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchSuggestedCustodians", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v22 = 134218496;
    v23 = v17;
    v24 = 2048;
    v25 = v16;
    v26 = 1026;
    v27 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchSuggestedCustodians  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x1Cu);
  }

  if (a1[4])
  {
    v21 = _AALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Fetched suggested custodians: %@", &v22, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__AACustodianController_fetchSuggestedCustodiansWithCompletion___block_invoke_56_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-suggested-custodians-for-upsell", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchSuggestedCustodiansForUpsell", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchSuggestedCustodiansForUpsell  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v42 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v35 = v11;
  v36 = v13;
  v20 = completionCopy;
  v33 = v20;
  v21 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_57;
  v30[3] = &unk_1E7C9B078;
  v23 = v21;
  v31 = v23;
  v24 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v30];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Fetching suggested custodians for upsell .", v29, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58;
  v27[3] = &unk_1E7C9B290;
  v26 = v23;
  v28 = v26;
  [v24 fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:dCopy completion:v27];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v22 = 67240192;
    LODWORD(v23) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchSuggestedCustodiansForUpsell", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v22 = 134218496;
    v23 = v17;
    v24 = 2048;
    v25 = v16;
    v26 = 1026;
    v27 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchSuggestedCustodiansForUpsell  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x1Cu);
  }

  if (a1[4])
  {
    v21 = _AALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Fetched suggested custodians for upsell: %@", &v22, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__AACustodianController_fetchSuggestedCustodiansForUpsellWithTelemetryFlowID_completion___block_invoke_58_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianHealthStatusWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-custodian-health", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchCustodianHealthStatus", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianHealthStatus  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v39 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B540;
  p_buf = &buf;
  v32 = v8;
  v33 = v10;
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_59;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching custodian health status.", v26, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60;
  v24[3] = &unk_1E7C9B290;
  v23 = v20;
  v25 = v23;
  [v21 fetchCustodianHealthStatusWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v22 = 67240192;
    LODWORD(v23) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianHealthStatus", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v22 = 134218496;
    v23 = v17;
    v24 = 2048;
    v25 = v16;
    v26 = 1026;
    v27 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianHealthStatus  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x1Cu);
  }

  if (a1[4])
  {
    v21 = _AALogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Fetched health info: %@", &v22, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_stopBeingCustodianWithContext_completion___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_fetchCustodianHealthStatusWithCompletion___block_invoke_60_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startCustodianRecoveryWithContext:(id)context completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/start-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "StartCustodianRecovery", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartCustodianRecovery  enableTelemetry=YES ", &buf, 0xCu);
  }

  v19 = self->_analyticsReporter;
  v20 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v23 = [v20 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.ownerCreateSession" altDSID:altDSID flowID:telemetryFlowID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v48 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B5B8;
  v25 = v23;
  v37 = v25;
  v26 = v19;
  v38 = v26;
  p_buf = &buf;
  v41 = v11;
  v42 = v13;
  v27 = completionCopy;
  v39 = v27;
  v28 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62;
  v34[3] = &unk_1E7C9B078;
  v30 = v28;
  v35 = v30;
  v31 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v34];
  v32 = _AALogSystem(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 0;
    _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Initiating custodian recovery request.", &v33, 2u);
  }

  [v31 startCustodianRecoveryWithContext:contextCopy completion:v30];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
}

void __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v24 = 67240192;
    LODWORD(v25) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "StartCustodianRecovery", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = *(a1 + 64);
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v24 = 134218496;
    v25 = v17;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartCustodianRecovery  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x1Cu);
  }

  v21 = _AALogSystem(v20);
  v22 = v21;
  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Custodian recovery started successfully with recovery ID: %@", &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_cold_1();
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v6);
  }
}

void __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__AACustodianController_startCustodianRecoveryWithContext_completion___block_invoke_62_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianRecoveryConfigurationWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-configuration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchCustodianRecoveryConfiguration", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianRecoveryConfiguration  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v36 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B5E0;
  p_buf = &buf;
  v29 = v8;
  v30 = v10;
  v17 = completionCopy;
  v27 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64;
  v24[3] = &unk_1E7C9B078;
  v20 = v18;
  v25 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v24];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetching custodian configuration.", v23, 2u);
  }

  [v21 fetchCustodianRecoveryConfigurationWithCompletion:v20];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
}

void __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v24 = 67240192;
    LODWORD(v25) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianRecoveryConfiguration", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v24 = 134218496;
    v25 = v17;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianRecoveryConfiguration  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x1Cu);
  }

  v21 = _AALogSystem(v20);
  v22 = v21;
  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Custodian recovery configuration fetched successfully with configuration: %@", &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_cold_1();
  }

  v23 = a1[4];
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v6);
  }
}

void __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__AACustodianController_fetchCustodianRecoveryConfigurationWithCompletion___block_invoke_64_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/generate-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "GenerateCustodianRecoveryCode", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: GenerateCustodianRecoveryCode  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v48 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B608;
  p_buf = &buf;
  v41 = v11;
  v42 = v13;
  v20 = contextCopy;
  v38 = v20;
  v21 = completionCopy;
  v39 = v21;
  v22 = _Block_copy(aBlock);
  objc_initWeak(&location, selfCopy);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_65;
  v33[3] = &unk_1E7C9B630;
  objc_copyWeak(&v35, &location);
  v23 = v20;
  v34 = v23;
  v24 = _Block_copy(v33);
  v25 = [objc_alloc(MEMORY[0x1E6985E78]) initWithMaxRetries:1];
  v26 = _AALogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Scheduling recovery code generation through retry scheduler", v32, 2u);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_68;
  v29[3] = &unk_1E7C9B658;
  v27 = v22;
  v31 = v27;
  v28 = v25;
  v30 = v28;
  [v28 scheduleTask:v24 shouldRetry:0 completionHandler:v29];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v26 = 67240192;
    LODWORD(v27) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "GenerateCustodianRecoveryCode", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v26, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = *(a1 + 56);
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v26 = 134218496;
    v27 = v17;
    v28 = 2048;
    v29 = v16;
    v30 = 1026;
    v31 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: GenerateCustodianRecoveryCode  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v26, 0x1Cu);
  }

  v21 = _AALogSystem(v20);
  v22 = v21;
  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 32) custodianUUID];
      v24 = [v23 UUIDString];
      v26 = 138412290;
      v27 = v24;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Custodian recovery code was generated successfully for custodian: %@", &v26, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v5, v6);
  }
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _retryingGenerateCustodianRecoveryCodeWithContext:*(a1 + 32) completion:v3];
  }

  else
  {
    v6 = _AALogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Cannot call daemon to generate custodian recovery code as custodian controller is deallocated", v7, 2u);
    }
  }
}

void __77__AACustodianController_generateCustodianRecoveryCodeWithContext_completion___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = a3;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  (*(v6 + 16))(v6, v8, v7);
}

- (void)_retryingGenerateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v11 = [v8 analyticsEventWithName:@"com.apple.appleaccount.custodian.generate" altDSID:altDSID flowID:telemetryFlowID];

  v12 = self->_analyticsReporter;
  daemonConnection = self->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke;
  v27[3] = &unk_1E7C9A9D8;
  v14 = v11;
  v28 = v14;
  v15 = v12;
  v29 = v15;
  v16 = completionCopy;
  v30 = v16;
  v17 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v18 = _AALogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Calling daemon to generate custodian recovery code", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_71;
  v22[3] = &unk_1E7C9B680;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  [v17 generateCustodianRecoveryCodeWithContext:contextCopy completion:v22];
}

void __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

void __86__AACustodianController__retryingGenerateCustodianRecoveryCodeWithContext_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)validateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/validate-code", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ValidateCustodianRecoveryCode", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ValidateCustodianRecoveryCode  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v46 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B6A8;
  p_buf = &buf;
  v39 = v11;
  v40 = v13;
  v20 = completionCopy;
  v37 = v20;
  v21 = _Block_copy(aBlock);
  objc_initWeak(&location, selfCopy);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_73;
  v32[3] = &unk_1E7C9B630;
  objc_copyWeak(&v34, &location);
  v22 = contextCopy;
  v33 = v22;
  v23 = _Block_copy(v32);
  v24 = [objc_alloc(MEMORY[0x1E6985E78]) initWithMaxRetries:1];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Scheduling validate recovery code through retry scheduler", v31, 2u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_74;
  v28[3] = &unk_1E7C9B658;
  v26 = v21;
  v30 = v26;
  v27 = v24;
  v29 = v27;
  [v27 scheduleTask:v23 shouldRetry:0 completionHandler:v28];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v24 = 67240192;
    LODWORD(v25) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "ValidateCustodianRecoveryCode", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v24 = 134218496;
    v25 = v17;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ValidateCustodianRecoveryCode  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x1Cu);
  }

  v21 = _AALogSystem(v20);
  v22 = v21;
  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Custodian code verification successful with context: %@", &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  v23 = a1[4];
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v6);
  }
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _retryingValidateCustodianRecoveryCodeWithContext:*(a1 + 32) completion:v3];
  }

  else
  {
    v6 = _AALogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Cannot call daemon to generate custodian recovery code as custodian controller is deallocated", v7, 2u);
    }
  }
}

void __77__AACustodianController_validateCustodianRecoveryCodeWithContext_completion___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = a3;
  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  (*(v6 + 16))(v6, v8, v7);
}

- (void)_retryingValidateCustodianRecoveryCodeWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = _AALogSystem(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Calling daemon to verify custodian recovery code", buf, 2u);
  }

  v9 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v12 = [v9 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.ownerValidateCode" altDSID:altDSID flowID:telemetryFlowID];

  v13 = self->_analyticsReporter;
  daemonConnection = self->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke;
  v26[3] = &unk_1E7C9A9D8;
  v15 = v12;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = completionCopy;
  v29 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_76;
  v22[3] = &unk_1E7C9B6D0;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  [v18 validateCustodianRecoveryCodeWithContext:contextCopy completion:v22];
}

void __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_cold_1();
  }

  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

void __86__AACustodianController__retryingValidateCustodianRecoveryCodeWithContext_completion___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)fetchCustodianRecoveryKeysWithSessionID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = objc_alloc_init(AACustodianRecoveryRequestContext);
  [(AACustodianRecoveryRequestContext *)v8 setRecoverySessionID:dCopy];

  [(AACustodianController *)self fetchCustodianRecoveryKeysWithContext:v8 completion:completionCopy];
}

- (void)fetchCustodianRecoveryKeysWithContext:(id)context completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-keys", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchCustodianRecoveryKeys", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianRecoveryKeys  enableTelemetry=YES ", &buf, 0xCu);
  }

  v19 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v22 = [v19 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.ownerFetchCustodianRecoveryKeys" altDSID:altDSID flowID:telemetryFlowID];

  v23 = self->_analyticsReporter;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v48 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B6F8;
  v25 = v22;
  v37 = v25;
  v26 = v23;
  v38 = v26;
  p_buf = &buf;
  v41 = v11;
  v42 = v13;
  v27 = completionCopy;
  v39 = v27;
  v28 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78;
  v34[3] = &unk_1E7C9B078;
  v30 = v28;
  v35 = v30;
  v31 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v34];
  v32 = _AALogSystem(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 0;
    _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "Calling daemon service to fetch custodian recovery keys", &v33, 2u);
  }

  [v31 fetchCustodianRecoveryKeysWithContext:contextCopy completion:v30];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
}

void __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) updateTaskResultWithError:v6];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v24 = 67240192;
    LODWORD(v25) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianRecoveryKeys", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = *(a1 + 64);
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v24 = 134218496;
    v25 = v17;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianRecoveryKeys  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x1Cu);
  }

  v21 = _AALogSystem(v20);
  v22 = v21;
  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetched recovery keys successfully with keys: %@", &v24, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_cold_1();
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v6);
  }
}

void __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)cancelCustodianRecoveryWithSessionID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = objc_alloc_init(AACustodianRecoveryRequestContext);
  [(AACustodianRecoveryRequestContext *)v6 setRecoverySessionID:dCopy];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__AACustodianController_cancelCustodianRecoveryWithSessionID_error___block_invoke;
  v8[3] = &unk_1E7C9B720;
  v8[4] = &v9;
  [(AACustodianController *)self cancelCustodianRecoveryWithContext:v6 completion:v8];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return self;
}

- (void)cancelCustodianRecoveryWithContext:(id)context completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-cancel-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CancelCustodianRecovery", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v45 = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CancelCustodianRecovery  enableTelemetry=YES ", buf, 0xCu);
  }

  v19 = MEMORY[0x1E6985DB0];
  altDSID = [contextCopy altDSID];
  telemetryFlowID = [contextCopy telemetryFlowID];
  v22 = [v19 analyticsEventWithName:@"com.apple.appleaccount.custodian.recovery.cancel" altDSID:altDSID flowID:telemetryFlowID];

  v23 = self->_analyticsReporter;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B748;
  v24 = v22;
  v38 = v24;
  v25 = v23;
  v39 = v25;
  v41 = v11;
  v42 = v13;
  v26 = completionCopy;
  v40 = v26;
  v27 = _Block_copy(aBlock);
  daemonConnection = self->_daemonConnection;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke_79;
  v35[3] = &unk_1E7C9B078;
  v29 = v27;
  v36 = v29;
  v30 = [(AACustodianDaemonConnectionProviding *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v35];
  v31 = _AALogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "Calling daemon service to cancel custodian recovery", buf, 2u);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke_80;
  v33[3] = &unk_1E7C9B078;
  v32 = v29;
  v34 = v32;
  [v30 cancelCustodianRecoveryWithContext:contextCopy completion:v33];

  os_activity_scope_leave(&state);
}

void __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) updateTaskResultWithError:v3];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v5 = _AASignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = _AAErrorUnderlyingError(v3);
    v17 = 67240192;
    LODWORD(v18) = [v8 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CancelCustodianRecovery", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v10 = _AASignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = *(a1 + 56);
    v13 = _AAErrorUnderlyingError(v3);
    v14 = [v13 code];
    v17 = 134218496;
    v18 = v12;
    v19 = 2048;
    v20 = v11;
    v21 = 1026;
    v22 = v14;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CancelCustodianRecovery  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  v16 = _AALogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Custodian recovery canceled with error: %@", &v17, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

void __71__AACustodianController_cancelCustodianRecoveryWithContext_completion___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)d completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/fetch-recovery-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchCustodianPasswordResetInfo", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchCustodianPasswordResetInfo  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v41 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B770;
  p_buf = &buf;
  v34 = v11;
  v35 = v13;
  v20 = dCopy;
  v31 = v20;
  v21 = completionCopy;
  v32 = v21;
  v22 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_82;
  v28[3] = &unk_1E7C9B078;
  v24 = v22;
  v29 = v24;
  v25 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v26 = _AALogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Calling daemon service to fetch custodian recovery token", v27, 2u);
  }

  [v25 fetchCustodianPasswordResetInformationWithSessionID:v20 completion:v24];
  _Block_object_dispose(&buf, 8);

  os_activity_scope_leave(&state);
}

void __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[7], a1[8]);
  v10 = _AASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[7];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = _AAErrorUnderlyingError(v6);
    v25 = 67240192;
    LODWORD(v26) = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchCustodianPasswordResetInfo", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v25, 8u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[7];
    v18 = _AAErrorUnderlyingError(v6);
    v19 = [v18 code];
    v25 = 134218496;
    v26 = v17;
    v27 = 2048;
    v28 = v16;
    v29 = 1026;
    v30 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchCustodianPasswordResetInfo  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v25, 0x1Cu);
  }

  v21 = _AALogSystem(v20);
  v22 = v21;
  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[4];
      v25 = 138412290;
      v26 = v23;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Fetched recovery token successfully for sessionID: %@", &v25, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_cold_1();
  }

  v24 = a1[5];
  if (v24)
  {
    (*(v24 + 16))(v24, v5, v6);
  }
}

void __88__AACustodianController_fetchCustodianPasswordResetInformationWithSessionID_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__AACustodianController_fetchCustodianRecoveryKeysWithContext_completion___block_invoke_78_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startHealthCheckWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-health-check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StartHealthCheck", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartHealthCheck  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v39 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__AACustodianController_startHealthCheckWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v32 = v8;
  v33 = v10;
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Starting health check", v26, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84;
  v24[3] = &unk_1E7C9B078;
  v23 = v20;
  v25 = v23;
  [v21 startHealthCheckWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StartHealthCheck", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartHealthCheck  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_83_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _AALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__AACustodianController_startHealthCheckWithCompletion___block_invoke_84_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startManateeMigrationWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/start-manatee-migration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "StartManateeMigration", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: StartManateeMigration  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v39 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v32 = v8;
  v33 = v10;
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Calling out to remote custodian service to start Manatee migration.", v26, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86;
  v24[3] = &unk_1E7C9B078;
  v23 = v20;
  v25 = v23;
  [v21 startManateeMigrationWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v19 = 67240192;
    LODWORD(v20) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "StartManateeMigration", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v19, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v19 = 134218496;
    v20 = v14;
    v21 = 2048;
    v22 = v13;
    v23 = 1026;
    v24 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: StartManateeMigration  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v19, 0x1Cu);
  }

  if (a1[4])
  {
    v18 = _AALogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Manatee migration completed", &v19, 2u);
    }

    (*(a1[4] + 16))();
  }
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_85_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _AALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__AACustodianController_startManateeMigrationWithCompletion___block_invoke_86_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)pullTrustedContactsFromCloudKitWithCompletion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/pull-trusted-contacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PullTrustedContacts", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PullTrustedContacts  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v31 = v8;
  v32 = v10;
  v17 = completionCopy;
  v29 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87;
  v26[3] = &unk_1E7C9B078;
  v20 = v18;
  v27 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [AACustodianController pullTrustedContactsFromCloudKitWithCompletion:v22];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_88;
  v24[3] = &unk_1E7C9B078;
  v23 = v20;
  v25 = v23;
  [v21 pullTrustedContactsFromCloudKitWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v21 = 67240192;
    LODWORD(v22) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PullTrustedContacts", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v21 = 134218496;
    v22 = v14;
    v23 = 2048;
    v24 = v13;
    v25 = 1026;
    v26 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PullTrustedContacts  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  v18 = _AALogSystem(v17);
  v19 = v18;
  if (v3)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_cold_2(v19);
  }

  v20 = a1[4];
  if (v20)
  {
    (*(v20 + 16))(v20, v3);
  }
}

void __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__AACustodianController_pullTrustedContactsFromCloudKitWithCompletion___block_invoke_87_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)displayTrustedContactFlowWithModel:(id)model completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/display-trusted-contact-flow-ui", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "DisplayTrustedContactFlow", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisplayTrustedContactFlow  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v42 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v35 = v11;
  v36 = v13;
  v20 = completionCopy;
  v33 = v20;
  v21 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89;
  v30[3] = &unk_1E7C9B078;
  v23 = v21;
  v31 = v23;
  v24 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v30];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Displaying trusted contact flow from view service.", v29, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90;
  v27[3] = &unk_1E7C9B078;
  v26 = v23;
  v28 = v26;
  [v24 displayTrustedContactFlowWithModel:modelCopy completion:v27];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "DisplayTrustedContactFlow", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisplayTrustedContactFlow  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_89_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__AACustodianController_displayTrustedContactFlowWithModel_completion___block_invoke_90_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Displayed trusted contact flow UI successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)displayInvitationUIWithUUID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/display-invitation-ui", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "DisplayInvitationUI", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisplayInvitationUI  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v42 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v35 = v11;
  v36 = v13;
  v20 = completionCopy;
  v33 = v20;
  v21 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91;
  v30[3] = &unk_1E7C9B078;
  v23 = v21;
  v31 = v23;
  v24 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v30];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Displaying invitation UI from view service.", v29, 2u);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92;
  v27[3] = &unk_1E7C9B078;
  v26 = v23;
  v28 = v26;
  [v24 displayCustodianInviteWithUUID:dCopy completion:v27];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "DisplayInvitationUI", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisplayInvitationUI  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_91_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__AACustodianController_displayInvitationUIWithUUID_completion___block_invoke_92_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Displayed invitation UI successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)reSendCustodianInvitationWithCustodianID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/resend-invite", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = self->_analyticsReporter;
  v10 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.appleaccount.custodian.setup.resendInvitation" altDSID:0 flowID:0];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v29 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B798;
  v12 = v10;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v27 = v28;
  v14 = completionCopy;
  v26 = v14;
  v15 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2;
  v21[3] = &unk_1E7C9B078;
  v17 = v15;
  v22 = v17;
  v18 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v21];
  v19 = _AALogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Calling daemon service to resend invitation.", &v20, 2u);
  }

  [v18 reSendCustodianInvitationWithCustodianID:dCopy completion:v17];
  _Block_object_dispose(v28, 8);

  os_activity_scope_leave(&state);
}

void __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) updateTaskResultWithError:?];
  [*(a1 + 40) sendEvent:*(a1 + 32)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__AACustodianController_reSendCustodianInvitationWithCustodianID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)availableRecoveryFactorsWithCompletion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [(AACustodianController *)a2 availableRecoveryFactorsWithCompletion:?];
  }

  v6 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/available-recovery-factors", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v8 = _AASignpostLogSystem(v7);
  v9 = _AASignpostCreate(v8);
  v11 = v10;

  v13 = _AASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FetchAvailableRecoveryFactors", " enableTelemetry=YES ", &buf, 2u);
  }

  v16 = _AASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchAvailableRecoveryFactors  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v40 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B7C0;
  p_buf = &buf;
  v33 = v9;
  v34 = v11;
  v18 = completionCopy;
  v31 = v18;
  v19 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104;
  v28[3] = &unk_1E7C9B078;
  v21 = v19;
  v29 = v21;
  v22 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v23 = _AALogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "Fetching available recovery factors", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105;
  v25[3] = &unk_1E7C9B7E8;
  v24 = v21;
  v26 = v24;
  [v22 availableRecoveryFactorsWithCompletion:v25];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v9 = _AASignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError(v5);
    v20 = 67240192;
    LODWORD(v21) = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchAvailableRecoveryFactors", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 8u);
  }

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v5);
    v18 = [v17 code];
    v20 = 134218496;
    v21 = v16;
    v22 = 2048;
    v23 = v15;
    v24 = 1026;
    v25 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchAvailableRecoveryFactors  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v20, 0x1Cu);
  }

  v19 = a1[4];
  if (v19)
  {
    (*(v19 + 16))(v19, a2, v5);
  }
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_104_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _AALogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__AACustodianController_availableRecoveryFactorsWithCompletion___block_invoke_105_cold_1();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

- (void)repairCustodians:(id)custodians completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  custodiansCopy = custodians;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/custodian-repair", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = _AASignpostLogSystem(v9);
  v11 = _AASignpostCreate(v10);
  v13 = v12;

  v15 = _AASignpostLogSystem(v14);
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RepairCustodians", " enableTelemetry=YES ", &buf, 2u);
  }

  v18 = _AASignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RepairCustodians  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2;
  v42 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v43 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__AACustodianController_repairCustodians_completion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v34 = v11;
  v35 = v13;
  v20 = completionCopy;
  v32 = v20;
  v21 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__AACustodianController_repairCustodians_completion___block_invoke_106;
  v29[3] = &unk_1E7C9B078;
  v23 = v21;
  v30 = v23;
  v24 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v29];
  v25 = _AALogSystem(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138412290;
    v38 = custodiansCopy;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Repairing custodians %@", v37, 0xCu);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__AACustodianController_repairCustodians_completion___block_invoke_107;
  v27[3] = &unk_1E7C9B078;
  v26 = v23;
  v28 = v26;
  [v24 repairCustodians:custodiansCopy completion:v27];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __53__AACustodianController_repairCustodians_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RepairCustodians", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RepairCustodians  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __53__AACustodianController_repairCustodians_completion___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__AACustodianController_repairCustodians_completion___block_invoke_106_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__AACustodianController_repairCustodians_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__AACustodianController_repairCustodians_completion___block_invoke_107_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Custodians repaired successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)preflightCustodianRecoveryWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "custodian-appleaccount/preflight-custodian-recovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = _AASignpostLogSystem(v6);
  v8 = _AASignpostCreate(v7);
  v10 = v9;

  v12 = _AASignpostLogSystem(v11);
  v13 = v12;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PreflightCustodianRecovery", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _AASignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PreflightCustodianRecovery  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v39 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B3D8;
  p_buf = &buf;
  v32 = v8;
  v33 = v10;
  v17 = completionCopy;
  v30 = v17;
  v18 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108;
  v27[3] = &unk_1E7C9B078;
  v20 = v18;
  v28 = v20;
  v21 = [(AACustodianDaemonConnectionProviding *)daemonConnection remoteObjectProxyWithErrorHandler:v27];
  v22 = _AALogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "Starting Preflight custodian recovery in CustodianController", v26, 2u);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109;
  v24[3] = &unk_1E7C9B078;
  v23 = v20;
  v25 = v23;
  [v21 preflightCustodianRecoveryWithCompletion:v24];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _AASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _AASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError(v3);
    v18 = 67240192;
    LODWORD(v19) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PreflightCustodianRecovery", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 8u);
  }

  v12 = _AASignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = _AAErrorUnderlyingError(v3);
    v16 = [v15 code];
    v18 = 134218496;
    v19 = v14;
    v20 = 2048;
    v21 = v13;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PreflightCustodianRecovery  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x1Cu);
  }

  v17 = a1[4];
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_108_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__AACustodianController_preflightCustodianRecoveryWithCompletion___block_invoke_109_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Preflight custodian recovery successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)availableRecoveryFactorsWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AACustodianController.m" lineNumber:840 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end