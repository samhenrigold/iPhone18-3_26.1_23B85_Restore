@interface MRServiceClientOriginCommandCallback
@end

@implementation MRServiceClientOriginCommandCallback

void ___MRServiceClientOriginCommandCallback_block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 error];

  v4 = [v3 error];

  v5 = a1[4];
  v6 = _MRLogForCategory(0xAuLL);
  v7 = v6;
  if (!v4)
  {
    v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v16 = a1[4];
      v15 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138544130;
      v24 = @"originCommand";
      v25 = 2114;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      v29 = 2048;
      v30 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v7;
      v20 = 42;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v23 = 138543874;
      v24 = @"originCommand";
      v25 = 2114;
      v26 = v21;
      v27 = 2048;
      v28 = v22;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v7;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v23, v20);
    goto LABEL_13;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v8)
    {
      v9 = a1[5];
      v10 = [v3 error];
      v11 = a1[4];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:a1[6]];
      v23 = 138544386;
      v24 = @"originCommand";
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v11;
      v31 = 2048;
      v32 = v13;
      _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v23, 0x34u);

LABEL_13:
    }
  }

  else if (v8)
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_cold_1(a1, v3, v7);
  }

LABEL_14:

  (*(a1[7] + 16))();
}

void ___MRServiceClientOriginCommandCallback_block_invoke_54(uint64_t a1)
{
  if (MSVDeviceOSIsInternalInstall())
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_54_cold_1(a1);
  }

  v2 = *(a1 + 48);
  v3 = [MRCommandResult commandResultWithSendError:8];
  (*(v2 + 16))(v2, v3);
}

void ___MRServiceClientOriginCommandCallback_block_invoke_2(uint64_t a1)
{
  v1 = _MRLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_2_cold_1();
  }
}

void ___MRServiceClientOriginCommandCallback_block_invoke_64(uint64_t a1)
{
  v1 = _MRLogForCategory(0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_2_cold_1();
  }

  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_64_cold_2();
  }
}

void ___MRServiceClientOriginCommandCallback_block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
  if ([*(a1 + 48) disarm])
  {
    v4 = _MRLogForCategory(2uLL);
    v5 = [*(a1 + 56) hash];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2860000, v4, OS_SIGNPOST_INTERVAL_END, v6, "SendCommandOrigin", &unk_1A2BB0121, v7, 2u);
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

void ___MRServiceClientOriginCommandCallback_block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v6 = [a2 error];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  v10 = @"originCommand";
  v11 = 2114;
  v12 = v5;
  v13 = 2114;
  v14 = v6;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void ___MRServiceClientOriginCommandCallback_block_invoke_54_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRServiceClientOriginCommandCallback(MRPlayerPath *__strong, MRMediaRemoteCommand, NSDictionary *__strong, __strong MRMediaRemotePlayerPathCommandHandlerCallback, void (^__strong)(MRCommandResult *__strong))_block_invoke"}];
  [v3 handleFailureInFunction:v2 file:@"MRCommandServiceClient.m" lineNumber:196 description:{@"Completion was not called for originCommandHandler=%@<%@>", *(a1 + 32), *(a1 + 40)}];
}

void ___MRServiceClientOriginCommandCallback_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_2_8(&dword_1A2860000, v0, v1, "It has been more than <%lf> seconds since commandHandler=%@<%@> was called and still waiting for completion", v2, v3, v4, v5);
}

void ___MRServiceClientOriginCommandCallback_block_invoke_64_cold_2()
{
  OUTLINED_FUNCTION_1_17(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_20();
  _os_log_fault_impl(&dword_1A2860000, v0, OS_LOG_TYPE_FAULT, "It has been more than <%lf> seconds since commandHandler=%@<%@> was called and still waiting for completion", v1, 0x20u);
}

@end