@interface ANEClient
@end

@implementation ANEClient

uint64_t __30___ANEClient_sharedConnection__block_invoke()
{
  sharedConnection_client = [[_ANEClient alloc] initWithRestrictedAccessAllowed:0];

  return MEMORY[0x1EEE66BB8]();
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_cold_1(a1, v2);
  }
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6_cold_1(a1, v2);
  }
}

void __33___ANEClient_fastConnWithoutLock__block_invoke(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_cold_1(a1, v2);
  }
}

void __33___ANEClient_fastConnWithoutLock__block_invoke_10(uint64_t a1)
{
  v2 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6_cold_1(a1, v2);
  }
}

void __48___ANEClient_connectionForLoadingModel_options___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) connections];
    v8 = [v7 objectForKeyedSubscript:v11];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __44___ANEClient_connectionUsedForLoadingModel___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) connections];
    v8 = [v7 objectForKeyedSubscript:v11];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void __45___ANEClient_compileModel_options_qos_error___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(*(a1 + 56) + 8);
  v21 = *(v4 + 40);
  v5 = [_ANESandboxingHelper issueSandboxExtensionForModel:v2 error:&v21];
  objc_storeStrong((v4 + 40), v21);
  if (*(*(*(v3 + 24) + 8) + 40))
  {
    v6 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      __45___ANEClient_compileModel_options_qos_error___block_invoke_cold_1(a1, v6);
    }
  }

  else
  {
    v7 = [*(a1 + 40) conn];
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45___ANEClient_compileModel_options_qos_error___block_invoke_2;
    v14[3] = &unk_1E79BA4F8;
    v11 = *(a1 + 64);
    v18 = *(a1 + 72);
    v16 = v11;
    v12 = v8;
    v13 = *(a1 + 56);
    v15 = v12;
    v17 = v13;
    v20 = *(a1 + 88);
    v19 = *(a1 + 80);
    [v7 compileModel:v12 sandboxExtension:v5 options:v9 qos:v10 withReply:v14];
  }
}

void __45___ANEClient_compileModel_options_qos_error___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 56);
    v21 = v12;
    v22 = NSStringFromSelector(v20);
    v23 = 138413058;
    *v24 = v22;
    *&v24[8] = 1024;
    *v25 = a2;
    *&v25[4] = 2112;
    *&v25[6] = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_debug_impl(&dword_1AD246000, v21, OS_LOG_TYPE_DEBUG, "%@: success=%d : cacheURLIdentifier=%@ : err=%@", &v23, 0x26u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a2)
  {
    [*(a1 + 32) updateModelAttributes:v9 state:2];
    [*(a1 + 32) setCacheURLIdentifier:v10];
  }

  if (v11)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  [*(a1 + 32) string_id];
  kdebug_trace();
  v13 = gLogger_1;
  v14 = v13;
  v15 = *(a1 + 64);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = *(a1 + 32);
    v17 = *(*(*(a1 + 40) + 8) + 24);
    v18 = *(a1 + 72);
    v19 = [v16 string_id];
    v23 = 67109632;
    *v24 = v17;
    *&v24[4] = 1024;
    *&v24[6] = v18;
    *v25 = 2048;
    *&v25[2] = v19;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v14, OS_SIGNPOST_EVENT, v15, "_ANEF_MODEL_COMPILE", "ok:%u qos:%u model.string_id:%llu", &v23, 0x18u);
  }
}

void __46___ANEClient_doUnloadModel_options_qos_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46___ANEClient_doUnloadModel_options_qos_error___block_invoke_2;
  v8[3] = &unk_1E79BA548;
  v11 = *(a1 + 72);
  v10 = *(a1 + 56);
  v13 = v5;
  v6 = v2;
  v7 = *(a1 + 80);
  v9 = v6;
  v12 = v7;
  [v3 unloadModel:v6 options:v4 qos:v5 withReply:v8];
}

void __46___ANEClient_doUnloadModel_options_qos_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 56);
    v9 = v7;
    v10 = NSStringFromSelector(v8);
    v18 = 138412802;
    *v19 = v10;
    *&v19[8] = 1024;
    v20[0] = a2;
    LOWORD(v20[1]) = 2112;
    *(&v20[1] + 2) = v6;
    _os_log_impl(&dword_1AD246000, v9, OS_LOG_TYPE_INFO, "%@: success=%d : err=%@", &v18, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  [*(a1 + 32) string_id];
  kdebug_trace();
  v11 = gLogger_1;
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(a1 + 32);
    v15 = *(*(*(a1 + 40) + 8) + 24);
    v16 = *(a1 + 72);
    v17 = [v14 string_id];
    v18 = 67109632;
    *v19 = v15;
    *&v19[4] = 1024;
    *&v19[6] = v16;
    LOWORD(v20[0]) = 2048;
    *(v20 + 2) = v17;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v12, OS_SIGNPOST_EVENT, v13, "_ANEF_MODEL_UNLOAD", "ok:%u qos:%u model.string_id:%llu", &v18, 0x18u);
  }
}

void __37___ANEClient_compiledModelExistsFor___block_invoke(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 56);
    v15 = v9;
    v16 = NSStringFromSelector(v14);
    v17 = 138413058;
    v18 = v16;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@: success=%d : cacheURLIdentifier=%@ : err=%@", &v17, 0x26u);
  }

  [*(a1 + 32) setCacheURLIdentifier:v7];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  [*(a1 + 32) string_id];
  kdebug_trace();
  v10 = gLogger_1;
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = [*(a1 + 32) string_id];
    v17 = 134218240;
    v18 = v13;
    v19 = 1024;
    v20 = a2;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v11, OS_SIGNPOST_EVENT, v12, "_ANEF_COMPILED_MODEL_EXISTS", "model.string_id:%llu success:%u", &v17, 0x12u);
  }
}

void __33___ANEClient_purgeCompiledModel___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 56);
    v14 = v7;
    v15 = NSStringFromSelector(v13);
    v16 = 138412802;
    v17 = v15;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_1AD246000, v14, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v16, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  [*(a1 + 32) string_id];
  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [*(a1 + 32) string_id];
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v16 = 134218240;
    v17 = v11;
    v18 = 1024;
    v19 = v12;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v10, "_ANEF_PURGE_COMPILED_MODEL", "model.string_id:%llu ok:%u", &v16, 0x12u);
  }
}

void __46___ANEClient_compiledModelExistsMatchingHash___block_invoke(void *a1, unsigned int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[6];
    v12 = v7;
    v13 = NSStringFromSelector(v11);
    v14 = 138412802;
    *v15 = v13;
    *&v15[8] = 1024;
    v16 = a2;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_1AD246000, v12, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v14, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  v10 = a1[7];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v14 = 67109376;
    *v15 = 0;
    *&v15[4] = 1024;
    *&v15[6] = a2;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v10, "_ANEF_COMPILED_MODEL_EXISTS", "%u success:%u", &v14, 0xEu);
  }
}

void __45___ANEClient_purgeCompiledModelMatchingHash___block_invoke(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[6];
    v13 = v7;
    v14 = NSStringFromSelector(v12);
    v15 = 138412802;
    *v16 = v14;
    *&v16[8] = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v6;
    _os_log_debug_impl(&dword_1AD246000, v13, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v15, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  v10 = a1[7];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = *(*(a1[4] + 8) + 24);
    v15 = 67109376;
    *v16 = 0;
    *&v16[4] = 1024;
    *&v16[6] = v11;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v10, "_ANEF_PURGE_COMPILED_MODEL", "%u ok:%u", &v15, 0xEu);
  }
}

uint64_t __37___ANEClient_sharedPrivateConnection__block_invoke()
{
  sharedPrivateConnection_client = [[_ANEClient alloc] initWithRestrictedAccessAllowed:1];

  return MEMORY[0x1EEE66BB8]();
}

void __31___ANEClient_beginRealTimeTask__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = NSStringFromSelector(v7);
    v10 = 138412802;
    v11 = v9;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v10, 0x1Cu);
  }
}

void __29___ANEClient_endRealTimeTask__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = NSStringFromSelector(v7);
    v10 = 138412802;
    v11 = v9;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v10, 0x1Cu);
  }
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:kANEFModelHasCacheURLIdentifierKey[0]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = 0;
LABEL_6:
    v8 = [*(a1 + 48) connectionForLoadingModel:*(a1 + 40) options:*(a1 + 32)];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 88);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2;
    v12[3] = &unk_1E79BA638;
    v15 = *(a1 + 72);
    v13 = v9;
    v14 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v17 = *(a1 + 88);
    v16 = *(a1 + 80);
    [v8 loadModel:v13 sandboxExtension:v4 options:v10 qos:v11 withReply:v12];

    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  v18 = *(v6 + 40);
  v4 = [_ANESandboxingHelper issueSandboxExtensionForModel:v5 error:&v18];
  objc_storeStrong((v6 + 40), v18);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    goto LABEL_6;
  }

  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
  {
    __45___ANEClient_compileModel_options_qos_error___block_invoke_cold_1(a1, v7);
  }

LABEL_7:
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v36 = a7;
  v16 = a8;
  v17 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    aSelectora = *(a1 + 56);
    v32 = v17;
    aSelector = NSStringFromSelector(aSelectora);
    v33 = *(a1 + 32);
    *buf = 138414082;
    *v38 = aSelector;
    *&v38[8] = 2048;
    *v39 = v33;
    *&v39[8] = 1024;
    v40 = a2;
    v41 = 2048;
    v42 = a4;
    v43 = 2048;
    v44 = a5;
    v45 = 1024;
    v46 = a6;
    v47 = 2112;
    v48 = v36;
    v49 = 2112;
    v50 = v16;
    _os_log_debug_impl(&dword_1AD246000, v32, OS_LOG_TYPE_DEBUG, "%@: model[%p] : success=%d : progamHandle=0x%llx : intermediateBufferHandle=%llu : queueDepth=%d : modelCacheIdentifier=%@ : err=%@", buf, 0x4Au);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v19 = (a1 + 32);
  v18 = *(a1 + 32);
  if (!a2)
  {
    [v18 updateModelAttributes:v15 state:5];
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_11:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
    goto LABEL_12;
  }

  [v18 updateModelAttributes:v15 state:3 programHandle:a4 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setCacheURLIdentifier:v36];
  v20 = [_ANEDeviceController controllerWithProgramHandle:a4];
  v21 = [_ANEProgramForEvaluation programWithController:v20 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setProgram:v21];

  v22 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_1(a1 + 32, v22);
  }

  v23 = [_ANEProgramIOSurfacesMapper mapperWithController:v20, aSelector];
  [*v19 setMapper:v23];

  v24 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_2(a1 + 32, v24);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_12:
  [*(a1 + 32) string_id];
  kdebug_trace();
  v25 = gLogger_1;
  v26 = v25;
  v27 = *(a1 + 64);
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    v28 = *(a1 + 32);
    v29 = *(*(*(a1 + 40) + 8) + 24);
    v30 = *(a1 + 72);
    v31 = [v28 string_id];
    *buf = 67109632;
    *v38 = v29;
    *&v38[4] = 1024;
    *&v38[6] = v30;
    *v39 = 2048;
    *&v39[2] = v31;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v26, OS_SIGNPOST_EVENT, v27, "_ANEF_MODEL_LOAD", "ok:%u qos:%u model.string_id:%llu", buf, 0x18u);
  }
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:kANEFBaseModelIdentifierKey[0]];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = [*(a1 + 40) procedureArray];
  v25 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v25)
  {
    v4 = *v41;
    v27 = v3;
    v28 = v2;
    v24 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v26 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v7 = [v6 weightArray];
        v8 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v37;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v36 + 1) + 8 * i);
              v13 = [v12 weightURL];
              v14 = [v13 path];
              v15 = *(*(a1 + 64) + 8);
              obj = *(v15 + 40);
              v16 = [_ANESandboxingHelper issueSandboxExtensionForPath:v14 error:&obj];
              objc_storeStrong((v15 + 40), obj);
              [v12 setSandboxExtension:v16];

              if (*(*(*(a1 + 64) + 8) + 40))
              {
                v17 = gLogger_1;
                if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
                {
                  __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_1(a1, v17);
                }

                v3 = v27;
                v2 = v28;
                goto LABEL_20;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v26 + 1;
        v3 = v27;
        v2 = v28;
        v4 = v24;
      }

      while (v26 + 1 != v25);
      v25 = [v27 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v25);
  }

LABEL_20:

  if (v2 || !*(*(*(a1 + 64) + 8) + 40))
  {
    v18 = [*(a1 + 48) connectionForLoadingModel:*(a1 + 56) options:*(a1 + 32)];
    v19 = *(a1 + 56);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 96);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_29;
    v29[3] = &unk_1E79BA638;
    v32 = *(a1 + 80);
    v30 = v19;
    v31 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v34 = *(a1 + 96);
    v33 = *(a1 + 88);
    [v18 loadModelNewInstance:v30 options:v20 modelInstParams:v21 qos:v22 withReply:v29];
  }

  else
  {
    v23 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_2(a1, v23);
    }
  }
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_29(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v36 = a7;
  v16 = a8;
  v17 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    aSelectora = *(a1 + 56);
    v32 = v17;
    aSelector = NSStringFromSelector(aSelectora);
    v33 = *(a1 + 32);
    *buf = 138414082;
    *v38 = aSelector;
    *&v38[8] = 2048;
    *v39 = v33;
    *&v39[8] = 1024;
    v40 = a2;
    v41 = 2048;
    v42 = a4;
    v43 = 2048;
    v44 = a5;
    v45 = 1024;
    v46 = a6;
    v47 = 2112;
    v48 = v36;
    v49 = 2112;
    v50 = v16;
    _os_log_debug_impl(&dword_1AD246000, v32, OS_LOG_TYPE_DEBUG, "%@: model[%p] : success=%d : progamHandle=0x%llx : intermediateBufferHandle=%llu : queueDepth=%d : modelCacheIdentifier=%@ : err=%@", buf, 0x4Au);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v19 = (a1 + 32);
  v18 = *(a1 + 32);
  if (!a2)
  {
    [v18 updateModelAttributes:v15 state:5];
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_11:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
    goto LABEL_12;
  }

  [v18 updateModelAttributes:v15 state:3 programHandle:a4 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setCacheURLIdentifier:v36];
  v20 = [_ANEDeviceController controllerWithProgramHandle:a4];
  v21 = [_ANEProgramForEvaluation programWithController:v20 intermediateBufferHandle:a5 queueDepth:a6];
  [*v19 setProgram:v21];

  v22 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_1(a1 + 32, v22);
  }

  v23 = [_ANEProgramIOSurfacesMapper mapperWithController:v20, aSelector];
  [*v19 setMapper:v23];

  v24 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_2(a1 + 32, v24);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_12:
  [*(a1 + 32) string_id];
  kdebug_trace();
  v25 = gLogger_1;
  v26 = v25;
  v27 = *(a1 + 64);
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    v28 = *(a1 + 32);
    v29 = *(*(*(a1 + 40) + 8) + 24);
    v30 = *(a1 + 72);
    v31 = [v28 string_id];
    *buf = 67109632;
    *v38 = v29;
    *&v38[4] = 1024;
    *&v38[6] = v30;
    *v39 = 2048;
    *&v39[2] = v31;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v26, OS_SIGNPOST_EVENT, v27, "_ANEF_ADAPTER_LOAD", "ok:%u qos:%u model.string_id:%llu", buf, 0x18u);
  }
}

uint64_t __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 96);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke_2;
  v8[3] = &unk_1E79BA5E8;
  v9 = *(a1 + 64);
  v6 = *(a1 + 88);
  v10 = *(a1 + 80);
  v11 = v6;
  return [v2 prepareChainingWithModel:v1 options:v3 chainingReq:v4 qos:v5 withReply:v8];
}

void __71___ANEClient_doPrepareChainingWithModel_options_chainingReq_qos_error___block_invoke_2(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[6];
    v13 = v7;
    v14 = NSStringFromSelector(v12);
    v15 = 138412802;
    v16 = v14;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1AD246000, v13, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v15, 0x1Cu);
  }

  *(*(a1[4] + 8) + 24) = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  v10 = a1[7];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = *(*(a1[4] + 8) + 24);
    v15 = 67109120;
    LODWORD(v16) = v11;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v10, "_ANEF_PREPARE_CHAINING", "ok:%u", &v15, 8u);
  }
}

void __19___ANEClient_echo___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = NSStringFromSelector(v7);
    v10 = 138412802;
    v11 = v9;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", &v10, 0x1Cu);
  }
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_0(a1, a2);
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v5, v6, "%@: interruptHandler", v7, v8, v9, v10);
}

void __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_0(a1, a2);
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v5, v6, "%@: invalidationHandler", v7, v8, v9, v10);
}

void __45___ANEClient_compileModel_options_qos_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_4_0();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v6, v7, "%@: Failed to issue sandbox extension model=%@", v8, v9, v10, v11);
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18(a1, a2);
  v3 = [OUTLINED_FUNCTION_8_0() program];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v4, v5, "evaluateOnlyProgramForModel p=%@", v6, v7, v8, v9);
}

void __44___ANEClient_doLoadModel_options_qos_error___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_18(a1, a2);
  v3 = [OUTLINED_FUNCTION_8_0() mapper];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v4, v5, "mapperForModel p=%@", v6, v7, v8, v9);
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_4_0();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v6, v7, "%@: issueSandboxExtensionForPath error=%@", v8, v9, v10, v11);
}

void __71___ANEClient_doLoadModelNewInstance_options_modelInstParams_qos_error___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_4_0();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v6, v7, "%@: Failed to issue sandbox extension model=%@", v8, v9, v10, v11);
}

@end