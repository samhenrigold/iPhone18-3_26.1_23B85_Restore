@interface FAAgeRangeController
- (FAAgeRangeController)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)dealloc;
- (void)deleteAgeRangesWith:(id)with completion:(id)completion;
- (void)fetchAgeRangesWith:(id)with completion:(id)completion;
- (void)fetchAgeWithCompletionHandler:(id)handler;
- (void)fetchAltDSIDWithCompletionHandler:(id)handler;
- (void)fetchFamilyCircleWithCompletionHandler:(id)handler;
- (void)fetchPrivacyVersionForAltDSID:(id)d completion:(id)completion;
- (void)globalStateForAltDSID:(id)d completion:(id)completion;
- (void)postAgeRangeNotificationWith:(id)with lowerAgeBound:(id)bound upperAgeBound:(id)ageBound completion:(id)completion;
- (void)requestAgeRangeWith:(id)with userAgeOverride:(id)override altDSID:(id)d bundleID:(id)iD appName:(id)name attestedAtOverrideInDays:(id)days completion:(id)completion;
- (void)saveAgeRangeGlobalState:(int)state forAltDSID:(id)d cacheDuration:(id)duration privacyVersion:(id)version completion:(id)completion;
- (void)saveAgeRangeWith:(id)with completion:(id)completion;
- (void)setGlobalStateForAltDSID:(int)d forAltDSID:(id)iD privacyVersion:(id)version completion:(id)completion;
- (void)shouldPromptAgeRangeWith:(id)with bundleID:(id)d appName:(id)name privacyVersion:(id)version userAgeOverride:(id)override attestedAtOverrideInDays:(id)days completion:(id)completion;
- (void)updateAgeRangeWith:(id)with completion:(id)completion;
@end

@implementation FAAgeRangeController

- (FAAgeRangeController)initWithDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = FAAgeRangeController;
  v5 = [(FAAgeRangeController *)&v9 init];
  if (v5)
  {
    v6 = [[FAAgeRangeDaemonConnection alloc] initWithListenerEndpoint:endpointCopy];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)fetchAgeRangesWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem(completionCopy);
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v13 = _FASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FetchAgeRanges", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _FASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController fetchAgeRangesWith:completion:];
  }

  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v40 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA50D8;
  v32 = buf;
  v33 = v9;
  v34 = v11;
  v18 = completionCopy;
  v31 = v18;
  v19 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17;
  v28[3] = &unk_1E7CA46D8;
  v21 = v19;
  v29 = v21;
  v22 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v23 = _FALogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Fetching age ranges.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19;
  v25[3] = &unk_1E7CA5100;
  v24 = v21;
  v26 = v24;
  [v22 fetchAgeRangesWith:withCopy completion:v25];

  _Block_object_dispose(buf, 8);
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _FASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v20 = 67240192;
    LODWORD(v21) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchAgeRanges", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v20, 8u);
  }

  v14 = _FASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = Nanoseconds / 1000000000.0;
    v18 = a1[6];
    v19 = [v6 code];
    v20 = 134218496;
    v21 = v18;
    v22 = 2048;
    v23 = v17;
    v24 = 1026;
    v25 = v19;
    _os_log_debug_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchAgeRanges  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v20, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _FALogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1B70B0000, v16, OS_LOG_TYPE_DEFAULT, "Fetched age ranges: %@.", &v20, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deleteAgeRangesWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem(completionCopy);
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v13 = _FASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DeleteAgeRanges", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _FASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController deleteAgeRangesWith:completion:];
  }

  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v40 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5128;
  v32 = buf;
  v33 = v9;
  v34 = v11;
  v18 = completionCopy;
  v31 = v18;
  v19 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20;
  v28[3] = &unk_1E7CA46D8;
  v21 = v19;
  v29 = v21;
  v22 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v23 = _FALogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Deleting age ranges.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21;
  v25[3] = &unk_1E7CA46D8;
  v24 = v21;
  v26 = v24;
  [v22 deleteAgeRangesWith:withCopy completion:v25];

  _Block_object_dispose(buf, 8);
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _FASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v17 = 67240192;
    LODWORD(v18) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_END, v9, "DeleteAgeRanges", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v17, 8u);
  }

  v11 = _FASignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = [v3 code];
    v17 = 134218496;
    v18 = v15;
    v19 = 2048;
    v20 = v14;
    v21 = 1026;
    v22 = v16;
    _os_log_debug_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:DeleteAgeRanges  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v17, 0x1Cu);
  }

  if (a1[4])
  {
    v13 = _FALogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "Deleted age ranges with error: %@.", &v17, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveAgeRangeWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem(completionCopy);
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v13 = _FASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SaveAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _FASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController saveAgeRangeWith:completion:];
  }

  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v40 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5128;
  v32 = buf;
  v33 = v9;
  v34 = v11;
  v18 = completionCopy;
  v31 = v18;
  v19 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22;
  v28[3] = &unk_1E7CA46D8;
  v21 = v19;
  v29 = v21;
  v22 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v23 = _FALogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Saving age range.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23;
  v25[3] = &unk_1E7CA46D8;
  v24 = v21;
  v26 = v24;
  [v22 saveAgeRangeWith:withCopy completion:v25];

  _Block_object_dispose(buf, 8);
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _FASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v17 = 67240192;
    LODWORD(v18) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SaveAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v17, 8u);
  }

  v11 = _FASignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = [v3 code];
    v17 = 134218496;
    v18 = v15;
    v19 = 2048;
    v20 = v14;
    v21 = 1026;
    v22 = v16;
    _os_log_debug_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:SaveAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v17, 0x1Cu);
  }

  if (a1[4])
  {
    v13 = _FALogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "Saved age ranges with error: %@.", &v17, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateAgeRangeWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem(completionCopy);
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v13 = _FASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "UpdateAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _FASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController updateAgeRangeWith:completion:];
  }

  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v40 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5128;
  v32 = buf;
  v33 = v9;
  v34 = v11;
  v18 = completionCopy;
  v31 = v18;
  v19 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24;
  v28[3] = &unk_1E7CA46D8;
  v21 = v19;
  v29 = v21;
  v22 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v28];
  v23 = _FALogSystem(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B70B0000, v23, OS_LOG_TYPE_DEFAULT, "Updating age range.", v27, 2u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25;
  v25[3] = &unk_1E7CA46D8;
  v24 = v21;
  v26 = v24;
  [v22 updateAgeRangeWith:withCopy completion:v25];

  _Block_object_dispose(buf, 8);
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _FASignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v17 = 67240192;
    LODWORD(v18) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_END, v9, "UpdateAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v17, 8u);
  }

  v11 = _FASignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = a1[6];
    v16 = [v3 code];
    v17 = 134218496;
    v18 = v15;
    v19 = 2048;
    v20 = v14;
    v21 = 1026;
    v22 = v16;
    _os_log_debug_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:UpdateAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v17, 0x1Cu);
  }

  if (a1[4])
  {
    v13 = _FALogSystem(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "Updated age range with error: %@.", &v17, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)globalStateForAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke;
  v14[3] = &unk_1E7CA46D8;
  v8 = completionCopy;
  v15 = v8;
  dCopy = d;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26;
  v12[3] = &unk_1E7CA5150;
  v13 = v8;
  v11 = v8;
  [v10 ageRangeGlobalStateForAltDSID:dCopy completion:v12];
}

void __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _FALogSystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setGlobalStateForAltDSID:(int)d forAltDSID:(id)iD privacyVersion:(id)version completion:(id)completion
{
  v8 = *&d;
  completionCopy = completion;
  daemonConnection = self->_daemonConnection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke;
  v19[3] = &unk_1E7CA46D8;
  v12 = completionCopy;
  v20 = v12;
  versionCopy = version;
  iDCopy = iD;
  v15 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_28;
  v17[3] = &unk_1E7CA46D8;
  v18 = v12;
  v16 = v12;
  [v15 setAgeRangeGlobalState:v8 forAltDSID:iDCopy privacyVersion:versionCopy completion:v17];
}

void __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_28_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveAgeRangeGlobalState:(int)state forAltDSID:(id)d cacheDuration:(id)duration privacyVersion:(id)version completion:(id)completion
{
  v10 = *&state;
  completionCopy = completion;
  daemonConnection = self->_daemonConnection;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke;
  v22[3] = &unk_1E7CA46D8;
  v14 = completionCopy;
  v23 = v14;
  versionCopy = version;
  durationCopy = duration;
  dCopy = d;
  v18 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke_29;
  v20[3] = &unk_1E7CA46D8;
  v21 = v14;
  v19 = v14;
  [v18 saveAgeRangeGlobalState:v10 forAltDSID:dCopy cacheDuration:durationCopy privacyVersion:versionCopy completion:v20];
}

void __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)shouldPromptAgeRangeWith:(id)with bundleID:(id)d appName:(id)name privacyVersion:(id)version userAgeOverride:(id)override attestedAtOverrideInDays:(id)days completion:(id)completion
{
  withCopy = with;
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  overrideCopy = override;
  daysCopy = days;
  completionCopy = completion;
  v20 = _FASignpostLogSystem(completionCopy);
  v21 = _FASignpostCreate(v20);
  v23 = v22;

  v25 = _FASignpostLogSystem(v24);
  v26 = v25;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RequestAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v28 = _FASignpostLogSystem(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController shouldPromptAgeRangeWith:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:completion:];
  }

  *buf = 0;
  v50 = buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__2;
  v53 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v54 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5178;
  v46 = buf;
  v47 = v21;
  v48 = v23;
  v30 = completionCopy;
  v45 = v30;
  v31 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31;
  v42[3] = &unk_1E7CA46D8;
  v33 = v31;
  v43 = v33;
  v34 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v42];
  v35 = _FALogSystem(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 0;
    _os_log_impl(&dword_1B70B0000, v35, OS_LOG_TYPE_DEFAULT, "Requesting shouldPromptAgeRange", v41, 2u);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32;
  v39[3] = &unk_1E7CA51A0;
  v36 = v33;
  v40 = v36;
  [v34 shouldPromptAgeRangeWith:withCopy bundleID:dCopy appName:nameCopy privacyVersion:versionCopy userAgeOverride:overrideCopy attestedAtOverrideInDays:daysCopy completion:v39];

  _Block_object_dispose(buf, 8);
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _FASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v20 = 67240192;
    LODWORD(v21) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_END, v12, "RequestAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v20, 8u);
  }

  v14 = _FASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = Nanoseconds / 1000000000.0;
    v18 = a1[6];
    v19 = [v6 code];
    v20 = 134218496;
    v21 = v18;
    v22 = 2048;
    v23 = v17;
    v24 = 1026;
    v25 = v19;
    _os_log_debug_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:RequestAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v20, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _FALogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = v5;
      _os_log_impl(&dword_1B70B0000, v16, OS_LOG_TYPE_DEFAULT, "shouldPromptAgeRange with response: %ld.", &v20, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v3 = _FALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController dealloc];
  }

  v4.receiver = self;
  v4.super_class = FAAgeRangeController;
  [(FAAgeRangeController *)&v4 dealloc];
}

- (void)postAgeRangeNotificationWith:(id)with lowerAgeBound:(id)bound upperAgeBound:(id)ageBound completion:(id)completion
{
  withCopy = with;
  boundCopy = bound;
  ageBoundCopy = ageBound;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__2;
  v30[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v31 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke;
  aBlock[3] = &unk_1E7CA51C8;
  v29 = v30;
  v15 = completionCopy;
  v28 = v15;
  v16 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_35;
  v25[3] = &unk_1E7CA46D8;
  v18 = v16;
  v26 = v18;
  v19 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v20 = _FALogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v20, OS_LOG_TYPE_DEFAULT, "Posting age range notification...", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36;
  v22[3] = &unk_1E7CA46D8;
  v21 = v18;
  v23 = v21;
  [v19 postAgeRangeNotification:withCopy lowerAgeBound:boundCopy upperAgeBound:ageBoundCopy completion:v22];

  _Block_object_dispose(v30, 8);
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (*(a1 + 32))
  {
    v7 = _FALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Posted age range notification with error: %@.", &v8, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _FALogSystem(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchFamilyCircleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7CA51F0;
  v20 = v21;
  v6 = handlerCopy;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38;
  v16[3] = &unk_1E7CA46D8;
  v9 = v7;
  v17 = v9;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
  v11 = _FALogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Fetching family circle", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39;
  v13[3] = &unk_1E7CA4928;
  v12 = v9;
  v14 = v12;
  [v10 fetchFamilyCircleWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v10 = _FALogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "fetchFamilyCircle with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAltDSIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7CA5218;
  v20 = v21;
  v6 = handlerCopy;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41;
  v16[3] = &unk_1E7CA46D8;
  v9 = v7;
  v17 = v9;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
  v11 = _FALogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Fetching altDSID for account", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42;
  v13[3] = &unk_1E7CA5240;
  v12 = v9;
  v14 = v12;
  [v10 fetchAltDSIDWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v10 = _FALogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "fetchAltDSID with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAgeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7CA5268;
  v20 = v21;
  v6 = handlerCopy;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44;
  v16[3] = &unk_1E7CA46D8;
  v9 = v7;
  v17 = v9;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
  v11 = _FALogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Fetching age for account", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45;
  v13[3] = &unk_1E7CA5290;
  v12 = v9;
  v14 = v12;
  [v10 fetchAgeWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v10 = _FALogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "fetchAge with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPrivacyVersionForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v25 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5268;
  v23 = v24;
  v9 = completionCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46;
  v19[3] = &unk_1E7CA46D8;
  v12 = v10;
  v20 = v12;
  v13 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v19];
  v14 = _FALogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEFAULT, "Fetching privacy version for account", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47;
  v16[3] = &unk_1E7CA5290;
  v15 = v12;
  v17 = v15;
  [v13 fetchPrivacyVersionForAltDSID:dCopy completion:v16];

  _Block_object_dispose(v24, 8);
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v10 = _FALogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "fetchPrivacyVersion with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestAgeRangeWith:(id)with userAgeOverride:(id)override altDSID:(id)d bundleID:(id)iD appName:(id)name attestedAtOverrideInDays:(id)days completion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  withCopy = with;
  overrideCopy = override;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  daysCopy = days;
  completionCopy = completion;
  v20 = _FASignpostLogSystem(completionCopy);
  v21 = _FASignpostCreate(v20);
  v23 = v22;

  v25 = _FASignpostLogSystem(v24);
  v26 = v25;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RequestAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v28 = _FASignpostLogSystem(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController shouldPromptAgeRangeWith:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:completion:];
  }

  *buf = 0;
  v50 = buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__2;
  v53 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v54 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke;
  aBlock[3] = &unk_1E7CA52B8;
  v46 = buf;
  v47 = v21;
  v30 = nameCopy;
  v48 = v23;
  v31 = completionCopy;
  v45 = v31;
  v32 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49;
  v42[3] = &unk_1E7CA46D8;
  v34 = v32;
  v43 = v34;
  v35 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v42];
  v36 = _FALogSystem(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *v55 = 138412802;
    v56 = withCopy;
    v57 = 2112;
    v58 = iDCopy;
    v59 = 2112;
    v60 = v30;
    _os_log_impl(&dword_1B70B0000, v36, OS_LOG_TYPE_DEFAULT, "Requesting age range from daemon with parameters: ages=%@, bundleID=%@, appName=%@", v55, 0x20u);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50;
  v40[3] = &unk_1E7CA52E0;
  v37 = v34;
  v41 = v37;
  [v35 requestAgeRangeWith:withCopy userAgeOverride:overrideCopy altDSID:dCopy bundleID:iDCopy appName:v30 attestedAtOverrideInDays:daysCopy completion:v40];

  _Block_object_dispose(buf, 8);
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _FASignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v20 = 67240192;
    LODWORD(v21) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_END, v12, "RequestAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v20, 8u);
  }

  v14 = _FASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = Nanoseconds / 1000000000.0;
    v18 = a1[6];
    v19 = [v6 code];
    v20 = 134218496;
    v21 = v18;
    v22 = 2048;
    v23 = v17;
    v24 = 1026;
    v25 = v19;
    _os_log_debug_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:RequestAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v20, 0x1Cu);
  }

  if (a1[4])
  {
    v16 = _FALogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1B70B0000, v16, OS_LOG_TYPE_DEFAULT, "requestAgeRange with response: %@.", &v20, 0xCu);
    }

    (*(a1[4] + 16))();
  }
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

@end