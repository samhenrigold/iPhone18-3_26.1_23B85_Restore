@interface ANEVirtualClient
@end

@implementation ANEVirtualClient

uint64_t __37___ANEVirtualClient_sharedConnection__block_invoke()
{
  +[_ANEVirtualClient sharedConnection]::client = [[_ANEVirtualClient alloc] initWithSingletonAccess];

  return MEMORY[0x1EEE66BB8]();
}

void __112___ANEVirtualClient_transferFileToHostWithPath_withChunkSize_withUUID_withModelInputPath_overWriteFileNameWith___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 48) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v4 = *(v2 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 56) = 0;
  }
}

void __76___ANEVirtualClient_loadModelNewInstance_options_modelInstParams_qos_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[6];
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 48) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v4 = v2[7];
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 56) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v5 = v2[8];
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 64) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v6 = v2[9];
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 72) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v7 = v2[10];
  if (v7)
  {
    CFRelease(v7);
    *(*(*(a1 + 32) + 8) + 80) = 0;
  }
}

void __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [*(a1 + 32) signaledValue];
  v6 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
  if (v5 == 4097)
  {
    if (v6)
    {
      __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_cold_2();
    }

    v7 = [*(a1 + 40) completionHandler];
    v7[2](v7, 1, 0);
    v8 = v4;
  }

  else
  {
    if (v6)
    {
      __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_cold_1();
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = +[_ANEStrings errorDomainVirtIO];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Failed to match value in success handler";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v9 errorWithDomain:v10 code:0 userInfo:v11];

    v12 = [*(a1 + 40) completionHandler];
    (v12)[2](v12, 0, v8);

    v7 = v4;
  }
}

void __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_82(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = [*(a1 + 32) signaledValue];
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v13;
    _os_log_debug_impl(&dword_1AD246000, v6, OS_LOG_TYPE_DEBUG, "notifyListener failure. Sending error on completion handler: event:%p, value:%llx signaledValue %llx ", buf, 0x20u);
  }

  if ([*(a1 + 32) signaledValue] == -536870186)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x: Program Inference timeout", 3758097110];
    v8 = [_ANEErrors timeoutErrorForMethod:v7];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llx", objc_msgSend(*(a1 + 32), "signaledValue")];
    v9 = MEMORY[0x1E696ABC0];
    v10 = +[_ANEStrings errorDomainVirtIO];
    v14 = *MEMORY[0x1E696A578];
    v15 = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [v9 errorWithDomain:v10 code:0 userInfo:v11];
  }

  v12 = [*(a1 + 40) completionHandler];
  (v12)[2](v12, 0, v8);
}

void __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v10 = 0;
  v8 = [v2 doEvaluateWithModel:v3 options:v4 request:v5 qos:v7 completionEvent:v6 error:&v10];
  v9 = v10;
  *(*(*(a1 + 72) + 8) + 24) = v8;
}

void *__65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) doEvaluateWithModel:*(a1 + 40) options:*(a1 + 48) request:*(a1 + 56) qos:*(a1 + 80) completionEvent:0 error:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void __83___ANEVirtualClient_doEvaluateWithModel_options_request_qos_completionEvent_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[6];
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 48) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v4 = v2[7];
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 56) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v5 = v2[8];
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 64) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v6 = v2[9];
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 72) = 0;
  }
}

void __65___ANEVirtualClient_validateNetworkCreateMLIR_validation_params___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 48) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v4 = *(v2 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 56) = 0;
  }
}

void __73___ANEVirtualClient_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v9 = 0;
  v6 = [v2 doMapIOSurfacesWithModel:v3 request:v4 cacheInference:v5 error:&v9];
  v7 = v9;
  *(*(*(a1 + 56) + 8) + 24) = v6;
  v8 = [*(a1 + 48) completionHandler];
  (v8)[2](v8, *(*(*(a1 + 56) + 8) + 24), v7);
}

void *__73___ANEVirtualClient_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) doMapIOSurfacesWithModel:*(a1 + 40) request:*(a1 + 48) cacheInference:*(a1 + 72) error:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __68___ANEVirtualClient_sessionHintWithModel_hint_options_report_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[6];
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 48) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v4 = v2[8];
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 64) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  v5 = v2[7];
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 56) = 0;
  }
}

void __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end