@interface INSiriAuthorizationManager
@end

@implementation INSiriAuthorizationManager

void __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_12(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__54958;
  v24 = __Block_byref_object_dispose__54959;
  v25 = [_siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary objectForKeyedSubscript:a1[4]];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_13;
  v16[3] = &unk_1E7281410;
  v19 = a1[6];
  v15 = *(a1 + 2);
  v2 = v15;
  v17 = v15;
  v18 = &v20;
  v3 = MEMORY[0x193AD7780](v16);
  v4 = v21[5];
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"_INSiriAuthorizationManagerLastAuthorizationCheckDateKey"];
    v6 = [v21[5] objectForKeyedSubscript:@"_INSiriAuthorizationManagerAuthorizationStatusKey"];
    v7 = [v6 integerValue];

    [v5 timeIntervalSinceNow];
    v9 = v8;
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      *buf = 136315650;
      v27 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_18E991000, v10, OS_LOG_TYPE_INFO, "%s Found cached authorization status for appID: %@, last authorization check time interval since now: %@", buf, 0x20u);
    }

    if (v7 == 3 && v9 >= -180.0)
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v14 = a1[4];
        *buf = 136315394;
        v27 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Returning cached authorization status for appID: %@", buf, 0x16u);
      }

      *(*(a1[5] + 8) + 24) = 3;
    }

    else
    {
      v3[2](v3);
    }
  }

  else
  {
    v3[2](v3);
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_13(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
    _os_log_impl(&dword_18E991000, v2, OS_LOG_TYPE_INFO, "%s Getting raw authorization status", buf, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 56) _rawSiriAuthorizationStatusForAppID:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DF00] date];
  v9[1] = @"_INSiriAuthorizationManagerAuthorizationStatusKey";
  v10[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return [_siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
}

void __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary;
  _siriAuthorizationStatusForAppID_intentSlot__cachedAuthorizationStatusDictionary = v0;

  v2 = dispatch_queue_create("_INSiriAuthorizationManagerTCCQueue", 0);
  v3 = _siriAuthorizationStatusForAppID_intentSlot__queue;
  _siriAuthorizationStatusForAppID_intentSlot__queue = v2;

  v4 = notify_register_dispatch("com.apple.tcc.access.changed", &_siriAuthorizationStatusForAppID_intentSlot__registrationToken, _siriAuthorizationStatusForAppID_intentSlot__queue, &__block_literal_global_10_54973);
  if (v4)
  {
    v5 = v4;
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = v6;
      v9 = [v7 numberWithUnsignedInt:v5];
      v10 = 136315394;
      v11 = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_18E991000, v8, OS_LOG_TYPE_ERROR, "%s Error registering for TCC notification: %@", &v10, 0x16u);
    }
  }
}

void __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69D54D0];
  v10[0] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v2 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v2;
  v3 = TCCAccessCheckAuditToken();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke_2;
  v4[3] = &unk_1E72813A0;
  v5 = *(a1 + 32);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v1);
}

@end