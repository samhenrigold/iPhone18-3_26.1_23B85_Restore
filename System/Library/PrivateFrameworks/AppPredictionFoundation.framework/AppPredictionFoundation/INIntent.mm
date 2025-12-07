@interface INIntent
@end

@implementation INIntent

void __43__INIntent_HelperService__atx_indexingHash__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_intents_helper(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__INIntent_HelperService__atx_indexingHash__block_invoke_12_cold_1();
    }

    a2 = [*(a1 + 32) _indexingHash];
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_intents_helper(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_11_cold_1();
    }

    v10 = [*(a1 + 32) _subtitle];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _titleWithLocalizer:0 fromBundleURL:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_28397E650;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
}

void __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_intents_helper(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __53__INIntent_HelperService__atx_titleWithoutLocalizing__block_invoke_8_cold_1();
    }

    v10 = [*(a1 + 32) _titleWithLocalizer:0 fromBundleURL:0];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_28397E650;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _title];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_intents_helper(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __61__INIntent_HelperService__atx_titleWithEfficientLocalization__block_invoke_10_cold_1();
    }

    v10 = [*(a1 + 32) _title];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__INIntent_HelperService__atx_subtitleWithEfficientLocalization__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _subtitle];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __43__INIntent_HelperService__atx_indexingHash__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__INIntent_HelperService__atx_indexingHash__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _indexingHash];
}

void __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _codableDescription];
  *(*(*(a1 + 40) + 8) + 24) = [v5 isEligibleForWidgets];
}

void __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_intents_helper(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__INIntent_HelperService__atx_isEligibleForWidgets__block_invoke_14_cold_1();
    }

    v8 = [*(a1 + 32) _codableDescription];
    *(*(*(a1 + 40) + 8) + 24) = [v8 isEligibleForWidgets];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _supportsBackgroundExecution];
}

void __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = __atxlog_handle_intents_helper(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__INIntent_HelperService__atx_supportsBackgroundExecution__block_invoke_16_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _supportsBackgroundExecution];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_intents_helper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_cold_1();
  }

  v5 = INIntentCreate();
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_intents_helper(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__INIntent_HelperService__atx_createIntentWithIntentType_intentData___block_invoke_17_cold_1();
    }

    v10 = INIntentCreate();
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

void __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_intents_helper(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_cold_1();
  }
}

void __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_intents_helper(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __70__INIntent_HelperService__atx_createEventIntentWithStartDate_endDate___block_invoke_19_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

@end