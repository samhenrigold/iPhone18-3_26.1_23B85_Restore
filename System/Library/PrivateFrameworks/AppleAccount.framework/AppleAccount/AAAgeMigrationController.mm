@interface AAAgeMigrationController
- (AAAgeMigrationController)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)clearAgeMigrationFollowUpWithCompletion:(id)completion;
- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)context completion:(id)completion;
- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)context completion:(id)completion;
- (void)displayMisconfiguredAgePromptWithContext:(id)context completion:(id)completion;
- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)context action:(int)action completion:(id)completion;
@end

@implementation AAAgeMigrationController

- (AAAgeMigrationController)initWithDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = AAAgeMigrationController;
  v5 = [(AAAgeMigrationController *)&v9 init];
  if (v5)
  {
    v6 = [[AAAgeMigrationDaemonConnection alloc] initWithListenerEndpoint:endpointCopy];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)clearAgeMigrationFollowUpWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1B6F6A000, "age-migration/clear-child-migration-cfu", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9B050;
  v21 = v22;
  v7 = completionCopy;
  v20 = v7;
  v8 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2;
  v17[3] = &unk_1E7C9B078;
  v10 = v8;
  v18 = v10;
  v11 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v17];
  v12 = _AAAgeMigrationLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Clearing age migration CFU.", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_29;
  v14[3] = &unk_1E7C9B078;
  v13 = v10;
  v15 = v13;
  [v11 clearAgeMigrationFollowUpWithCompletion:v14];

  _Block_object_dispose(v22, 8);
  os_activity_scope_leave(&state);
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _AAAgeMigrationLogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__AAAgeMigrationController_clearAgeMigrationFollowUpWithCompletion___block_invoke_29_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)displayMisconfiguredAgePromptWithContext:(id)context completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    v9 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-age-prompt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    v11 = _AASignpostLogSystem(v10);
    v12 = _AASignpostCreate(v11);
    v14 = v13;

    v16 = _AASignpostLogSystem(v15);
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MisconfiguredAgePrompt", " enableTelemetry=YES ", &buf, 2u);
    }

    v19 = _AASignpostLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: MisconfiguredAgePrompt  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__1;
    v42 = __Block_byref_object_dispose__1;
    selfCopy = self;
    v43 = selfCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B388;
    p_buf = &buf;
    v36 = v12;
    v37 = v14;
    v34 = completionCopy;
    v21 = _Block_copy(aBlock);
    daemonConnection = selfCopy->_daemonConnection;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33;
    v31[3] = &unk_1E7C9B078;
    v23 = v21;
    v32 = v23;
    v24 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v31];
    v25 = _AAAgeMigrationLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "attempt to display misconfigured age prompt.", v30, 2u);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_34;
    v28[3] = &unk_1E7C9B3B0;
    v26 = v23;
    v29 = v26;
    [v24 displayMisconfiguredAgePromptWithContext:contextCopy completion:v28];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v27 = _AAAgeMigrationLogSystem(v8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "nothing to see here... feature is not on", &buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v21 = 67240192;
    *v22 = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "MisconfiguredAgePrompt", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v5);
    v18 = [v17 code];
    v21 = 134218496;
    *v22 = v16;
    *&v22[8] = 2048;
    *&v22[10] = v15;
    v23 = 1026;
    v24 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: MisconfiguredAgePrompt  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v20 = _AAAgeMigrationLogSystem(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109378;
      *v22 = a2;
      *&v22[4] = 2112;
      *&v22[6] = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Displayed age migration alert with user action result %i, error:%@.", &v21, 0x12u);
    }

    (*(a1[4] + 16))();
  }
}

void __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__AAAgeMigrationController_displayMisconfiguredAgePromptWithContext_completion___block_invoke_33_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)context completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    v9 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-clear-user-acknowledge-cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    v11 = _AASignpostLogSystem(v10);
    v12 = _AASignpostCreate(v11);
    v14 = v13;

    v16 = _AASignpostLogSystem(v15);
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ClearUserAcknowledgeCache", " enableTelemetry=YES ", &buf, 2u);
    }

    v19 = _AASignpostLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: ClearUserAcknowledgeCache  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__1;
    v42 = __Block_byref_object_dispose__1;
    selfCopy = self;
    v43 = selfCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B3D8;
    p_buf = &buf;
    v36 = v12;
    v37 = v14;
    v34 = completionCopy;
    v21 = _Block_copy(aBlock);
    daemonConnection = selfCopy->_daemonConnection;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35;
    v31[3] = &unk_1E7C9B078;
    v23 = v21;
    v32 = v23;
    v24 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v31];
    v25 = _AAAgeMigrationLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Clearing user acknowledge prompt cache.", v30, 2u);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_36;
    v28[3] = &unk_1E7C9B078;
    v26 = v23;
    v29 = v26;
    [v24 clearUserAcknowledgeMisconfiguredAgedPromptWithContext:contextCopy completion:v28];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v27 = _AAAgeMigrationLogSystem(v8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Nothing to see here... feature is not on", &buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ClearUserAcknowledgeCache", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v19, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: ClearUserAcknowledgeCache  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v19, 0x1Cu);
  }

  if (a1[4])
  {
    v18 = _AAAgeMigrationLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Returned with error:%@.", &v19, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__AAAgeMigrationController_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_35_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)context completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    v9 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-fetch-user-acknowledge-cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    v11 = _AASignpostLogSystem(v10);
    v12 = _AASignpostCreate(v11);
    v14 = v13;

    v16 = _AASignpostLogSystem(v15);
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchUserAcknowledgeCache", " enableTelemetry=YES ", &buf, 2u);
    }

    v19 = _AASignpostLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchUserAcknowledgeCache  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__1;
    v42 = __Block_byref_object_dispose__1;
    selfCopy = self;
    v43 = selfCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B400;
    p_buf = &buf;
    v36 = v12;
    v37 = v14;
    v34 = completionCopy;
    v21 = _Block_copy(aBlock);
    daemonConnection = selfCopy->_daemonConnection;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38;
    v31[3] = &unk_1E7C9B078;
    v23 = v21;
    v32 = v23;
    v24 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v31];
    v25 = _AAAgeMigrationLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Clearing user acknowledge prompt cache.", v30, 2u);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_39;
    v28[3] = &unk_1E7C9ABB8;
    v26 = v23;
    v29 = v26;
    [v24 didUserAcknowledgeMisconfiguredAgedPromptWithContext:contextCopy completion:v28];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v27 = _AAAgeMigrationLogSystem(v8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Nothing to see here... feature is not on", &buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v21 = 67240192;
    *v22 = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchUserAcknowledgeCache", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 8u);
  }

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = a1[6];
    v17 = _AAErrorUnderlyingError(v5);
    v18 = [v17 code];
    v21 = 134218496;
    *v22 = v16;
    *&v22[8] = 2048;
    *&v22[10] = v15;
    v23 = 1026;
    v24 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchUserAcknowledgeCache  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v21, 0x1Cu);
  }

  if (a1[4])
  {
    v20 = _AAAgeMigrationLogSystem(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109378;
      *v22 = a2;
      *&v22[4] = 2112;
      *&v22[6] = v5;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Fetched user acknowledge cache returned result: %i, error:%@.", &v21, 0x12u);
    }

    (*(a1[4] + 16))();
  }
}

void __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__AAAgeMigrationController_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion___block_invoke_38_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(id)context action:(int)action completion:(id)completion
{
  v6 = *&action;
  v46 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v10 = _os_feature_enabled_impl();
  if (v10)
  {
    v11 = _os_activity_create(&dword_1B6F6A000, "age-migration/misconfigured-cache-user-acknowledgement", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v11, &state);
    v13 = _AASignpostLogSystem(v12);
    v14 = _AASignpostCreate(v13);
    v16 = v15;

    v18 = _AASignpostLogSystem(v17);
    v19 = v18;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CacheUserAcknowledgement", " enableTelemetry=YES ", &buf, 2u);
    }

    v21 = _AASignpostLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CacheUserAcknowledgement  enableTelemetry=YES ", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__1;
    v44 = __Block_byref_object_dispose__1;
    selfCopy = self;
    v45 = selfCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke;
    aBlock[3] = &unk_1E7C9B3D8;
    p_buf = &buf;
    v38 = v14;
    v39 = v16;
    v36 = completionCopy;
    v23 = _Block_copy(aBlock);
    daemonConnection = selfCopy->_daemonConnection;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_40;
    v33[3] = &unk_1E7C9B078;
    v25 = v23;
    v34 = v25;
    v26 = [(AAAgeMigrationDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v33];
    v27 = _AAAgeMigrationLogSystem(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Clearing user acknowledge prompt cache.", v32, 2u);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_41;
    v30[3] = &unk_1E7C9B078;
    v28 = v25;
    v31 = v28;
    [v26 saveUserAcknowledgeMisconfiguredAgedPromptWithContext:contextCopy action:v6 completion:v30];

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  else
  {
    v29 = _AAAgeMigrationLogSystem(v10);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Nothing to see here... feature is not on", &buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke(void *a1, void *a2)
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
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CacheUserAcknowledgement", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v19, 8u);
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
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CacheUserAcknowledgement  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v19, 0x1Cu);
  }

  if (a1[4])
  {
    v18 = _AAAgeMigrationLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Returned with error:%@.", &v19, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAAgeMigrationLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__AAAgeMigrationController_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion___block_invoke_40_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

@end