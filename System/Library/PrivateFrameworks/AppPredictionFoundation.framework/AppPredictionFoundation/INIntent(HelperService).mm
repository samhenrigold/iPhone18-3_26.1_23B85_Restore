@interface INIntent(HelperService)
+ (id)atx_createEventIntentWithStartDate:()HelperService endDate:;
+ (id)atx_createIntentWithIntentType:()HelperService intentData:;
- (__CFString)atx_titleWithoutLocalizing;
- (id)atx_subtitleWithEfficientLocalization;
- (id)atx_titleWithEfficientLocalization;
- (uint64_t)atx_indexingHash;
- (uint64_t)atx_isEligibleForWidgets;
- (uint64_t)atx_supportsBackgroundExecution;
- (uint64_t)atx_titleLengthWithoutLocalizing;
- (void)atx_isEligibleForWidgets;
- (void)atx_subtitleWithEfficientLocalization;
- (void)atx_supportsBackgroundExecution;
- (void)atx_titleWithEfficientLocalization;
- (void)atx_titleWithoutLocalizing;
@end

@implementation INIntent(HelperService)

- (uint64_t)atx_indexingHash
{
  if (shouldDenyConnectionForCurrentProcess())
  {

    return [self _indexingHash];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__INIntent_HelperService__atx_indexingHash__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = self;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__INIntent_HelperService__atx_indexingHash__block_invoke_12;
    v7[3] = &unk_27858FE08;
    v7[4] = self;
    v7[5] = &v9;
    [v4 indexingHashForIntent:self withReply:v7];

    v5 = __atxlog_handle_intents_helper([v3 invalidate]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [INIntent(HelperService) atx_indexingHash];
    }

    v6 = v10[3];
    _Block_object_dispose(&v9, 8);

    return v6;
  }
}

- (id)atx_subtitleWithEfficientLocalization
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    _subtitle = [self _subtitle];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__1;
    v13 = __Block_byref_object_dispose__1;
    v14 = &stru_28397E650;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = self;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11;
    v7[3] = &unk_27858FDE0;
    v7[4] = self;
    v7[5] = &v9;
    [v4 subtitleForIntent:self withReply:v7];

    v5 = __atxlog_handle_intents_helper([v3 invalidate]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [INIntent(HelperService) atx_subtitleWithEfficientLocalization];
    }

    _subtitle = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return _subtitle;
}

- (uint64_t)atx_titleLengthWithoutLocalizing
{
  atx_titleWithoutLocalizing = [self atx_titleWithoutLocalizing];
  v2 = [atx_titleWithoutLocalizing length];

  return v2;
}

- (__CFString)atx_titleWithoutLocalizing
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    v2 = [self _titleWithLocalizer:0 fromBundleURL:0];
    v3 = v2;
    v4 = &stru_28397E650;
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  else
  {
    v3 = prepareXPCConnection();
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1;
    v15 = __Block_byref_object_dispose__1;
    v16 = &stru_28397E650;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke;
    v10[3] = &unk_27858FDB8;
    v10[4] = self;
    v10[5] = &v11;
    v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8;
    v9[3] = &unk_27858FDE0;
    v9[4] = self;
    v9[5] = &v11;
    [v6 titleForIntentNoLocalization:self withReply:v9];

    v7 = __atxlog_handle_intents_helper([v3 invalidate]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [INIntent(HelperService) atx_titleWithoutLocalizing];
    }

    v5 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

- (id)atx_titleWithEfficientLocalization
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    _title = [self _title];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__1;
    v13 = __Block_byref_object_dispose__1;
    v14 = &stru_28397E650;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = self;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10;
    v7[3] = &unk_27858FDE0;
    v7[4] = self;
    v7[5] = &v9;
    [v4 titleForIntent:self withReply:v7];

    v5 = __atxlog_handle_intents_helper([v3 invalidate]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [INIntent(HelperService) atx_titleWithEfficientLocalization];
    }

    _title = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return _title;
}

- (uint64_t)atx_isEligibleForWidgets
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    _codableDescription = [self _codableDescription];
    isEligibleForWidgets = [_codableDescription isEligibleForWidgets];
  }

  else
  {
    _codableDescription = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x2020000000;
    v11 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = self;
    v8[5] = &v9;
    v4 = [_codableDescription synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14;
    v7[3] = &unk_27858FE30;
    v7[4] = self;
    v7[5] = &v9;
    [v4 eligibleForWidgetsForIntent:self withReply:v7];

    v5 = __atxlog_handle_intents_helper([_codableDescription invalidate]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_isEligibleForWidgets];
    }

    isEligibleForWidgets = *(v10[0] + 24);
    _Block_object_dispose(&v9, 8);
  }

  return isEligibleForWidgets;
}

- (uint64_t)atx_supportsBackgroundExecution
{
  if (shouldDenyConnectionForCurrentProcess())
  {

    return [self _supportsBackgroundExecution];
  }

  else
  {
    v3 = prepareXPCConnection();
    v9 = 0;
    v10[0] = &v9;
    v10[1] = 0x2020000000;
    v11 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke;
    v8[3] = &unk_27858FDB8;
    v8[4] = self;
    v8[5] = &v9;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16;
    v7[3] = &unk_27858FE30;
    v7[4] = self;
    v7[5] = &v9;
    [v4 supportsBackgroundExecutionForIntent:self withReply:v7];

    v5 = __atxlog_handle_intents_helper([v3 invalidate]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(INIntent(HelperService) *)v10 atx_supportsBackgroundExecution];
    }

    v6 = *(v10[0] + 24);
    _Block_object_dispose(&v9, 8);

    return v6;
  }
}

+ (id)atx_createIntentWithIntentType:()HelperService intentData:
{
  v5 = a3;
  v6 = a4;
  if (shouldDenyConnectionForCurrentProcess())
  {
    v7 = INIntentCreate();
  }

  else
  {
    v8 = prepareXPCConnection();
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__1;
    v29 = __Block_byref_object_dispose__1;
    v30 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke;
    v21[3] = &unk_27858FE58;
    v24 = &v25;
    v9 = v5;
    v22 = v9;
    v10 = v6;
    v23 = v10;
    v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v21];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17;
    v17 = &unk_27858FE80;
    v20 = &v25;
    v18 = v9;
    v19 = v10;
    [v11 createIntentWithIntentType:v18 intentData:v19 withReply:&v14];

    v12 = __atxlog_handle_intents_helper([v8 invalidate]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[INIntent(HelperService) atx_createIntentWithIntentType:intentData:];
    }

    v7 = v26[5];
    _Block_object_dispose(&v25, 8);
  }

  return v7;
}

+ (id)atx_createEventIntentWithStartDate:()HelperService endDate:
{
  v5 = a3;
  v6 = a4;
  if (shouldDenyConnectionForCurrentProcess())
  {
    v7 = 0;
  }

  else
  {
    v8 = prepareXPCConnection();
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19;
    v12[3] = &unk_27858FEC8;
    v12[4] = &v13;
    [v9 createEventIntentWithStartDate:v5 endDate:v6 withReply:v12];

    v10 = __atxlog_handle_intents_helper([v8 invalidate]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[INIntent(HelperService) atx_createEventIntentWithStartDate:endDate:];
    }

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return v7;
}

- (void)atx_titleWithoutLocalizing
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v0, v1, "atx_titleWithoutLocalizing returning: %@", v2, v3, v4, v5);
}

- (void)atx_titleWithEfficientLocalization
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v0, v1, "atx_titleWithEfficientLocalization returning: %@", v2, v3, v4, v5);
}

- (void)atx_subtitleWithEfficientLocalization
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v0, v1, "atx_subtitleWithEfficientLocalization returning: %@", v2, v3, v4, v5);
}

- (void)atx_isEligibleForWidgets
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_226368000, a2, OS_LOG_TYPE_DEBUG, "atx_isEligibleForWidgets returning: %u", v3, 8u);
}

- (void)atx_supportsBackgroundExecution
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_226368000, a2, OS_LOG_TYPE_DEBUG, "atx_supportsBackgroundExecution returning: %u", v3, 8u);
}

+ (void)atx_createIntentWithIntentType:()HelperService intentData:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v0, v1, "createdIntentWithIntentType returning: %@", v2, v3, v4, v5);
}

+ (void)atx_createEventIntentWithStartDate:()HelperService endDate:.cold.1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_226368000, v0, v1, "createEventIntentWithCurrentDate returning: %@", v2, v3, v4, v5);
}

@end