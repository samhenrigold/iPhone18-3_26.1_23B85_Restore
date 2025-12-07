@interface CDPRecoveryController
- (id)_sanitizedRecoveryErrorWithError:(id)error;
- (void)performRecovery:(id)recovery;
@end

@implementation CDPRecoveryController

- (void)performRecovery:(id)recovery
{
  v51 = *MEMORY[0x1E69E9840];
  recoveryCopy = recovery;
  v5 = _os_activity_create(&dword_1DED99000, "cdp: recovery flow", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v8, "NativeAccountRecovery", " enableTelemetry=YES ", &buf, 2u);
  }

  v15 = _CDPSignpostLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1DED99000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: NativeAccountRecovery  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__4;
  v49 = __Block_byref_object_dispose__4;
  selfCopy = self;
  v50 = selfCopy;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__CDPRecoveryController_performRecovery___block_invoke;
  v36[3] = &unk_1E869E348;
  v39 = v8;
  v40 = v10;
  p_buf = &buf;
  v17 = recoveryCopy;
  v37 = v17;
  v18 = MEMORY[0x1E12CA380](v36);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __41__CDPRecoveryController_performRecovery___block_invoke_2;
  v34[3] = &unk_1E869D440;
  v34[4] = selfCopy;
  v20 = v18;
  v35 = v20;
  v21 = [daemonConn daemonWithErrorHandler:v34];

  v23 = _CDPLogSystemAnalytics(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    context = [(CDPController *)selfCopy context];
    telemetryFlowID = [context telemetryFlowID];
    *v42 = 138412546;
    v43 = selfCopy;
    v44 = 2112;
    v45 = telemetryFlowID;
    _os_log_debug_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEBUG, "%@: setting context type to be CDPContextTypeAccountRecovery with flowID=%@", v42, 0x16u);
  }

  context2 = [(CDPController *)selfCopy context];
  [context2 setType:11];

  context3 = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  authProvider = [(CDPController *)selfCopy authProvider];
  v28 = [CDPAuthProviderProxy proxyWithAuthProvider:authProvider];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __41__CDPRecoveryController_performRecovery___block_invoke_29;
  v32[3] = &unk_1E869D848;
  v32[4] = selfCopy;
  v29 = v20;
  v33 = v29;
  [v21 performRecoveryWithContext:context3 uiProvider:uiProviderProxy authProvider:v28 completion:v32];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);
}

void __41__CDPRecoveryController_performRecovery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v8 = _CDPSignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240448;
    *v25 = v5 != 0;
    *&v25[4] = 1026;
    *&v25[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_END, v10, "NativeAccountRecovery", " result != nil=%{public,signpost.telemetry:number1,name=result != nil}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v12 = _CDPSignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = *(a1 + 48);
    v15 = [v6 code];
    *buf = 134218752;
    *v25 = v14;
    *&v25[8] = 2048;
    v26 = v13;
    v27 = 1026;
    v28 = v5 != 0;
    v29 = 1026;
    v30 = v15;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: NativeAccountRecovery  result != nil=%{public,signpost.telemetry:number1,name=result != nil}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CDPRecoveryController_performRecovery___block_invoke_25;
  block[3] = &unk_1E869E320;
  v19 = *(a1 + 32);
  v16 = v19;
  v23 = v19;
  v21 = v5;
  v22 = v6;
  v17 = v6;
  v18 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __41__CDPRecoveryController_performRecovery___block_invoke_25(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __41__CDPRecoveryController_performRecovery___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _sanitizedRecoveryErrorWithError:v3];
  v5 = _CDPLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __41__CDPRecoveryController_performRecovery___block_invoke_2_cold_1(v3, v5);
  }

  (*(*(a1 + 40) + 16))();
}

void __41__CDPRecoveryController_performRecovery___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _sanitizedRecoveryErrorWithError:a3];
  (*(*(a1 + 40) + 16))();
}

- (id)_sanitizedRecoveryErrorWithError:(id)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && ([errorCopy domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"CDPStateError"), v5, !v6))
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = _CDPStateError(-5200, v8);
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void __41__CDPRecoveryController_performRecovery___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error while recovering data: %@", &v2, 0xCu);
}

@end