@interface KSRequestThrottle
@end

@implementation KSRequestThrottle

_DWORD *__34___KSRequestThrottle_postRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  result = *(a1 + 32);
  if (!result[8])
  {

    return [result _launch];
  }

  return result;
}

void __29___KSRequestThrottle__launch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29___KSRequestThrottle__launch__block_invoke_2;
    v7[3] = &unk_2797F7250;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void __29___KSRequestThrottle__launch__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_25;
  }

  v4 = WeakRetained + 32;
  v5 = (*(*(WeakRetained + 1) + 16))();
  v6 = *(v3 + 2);
  if (v6 <= v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [*(a1 + 32) BOOLValue];
  v9 = *(a1 + 32);
  if (!v9 && *(v3 + 2) <= v7)
  {
    if (!*(v3 + 6))
    {
LABEL_24:
      *(v3 + 8) = 0;
      v15 = *(v3 + 3);
      *(v3 + 3) = 0;

      goto LABEL_25;
    }

    v13 = KSCategory(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __29___KSRequestThrottle__launch__block_invoke_2_cold_1();
    }

    v9 = *(a1 + 32);
LABEL_18:
    if (v9 && *v4 && *(v3 + 6))
    {
      v14 = KSCategory(v8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __29___KSRequestThrottle__launch__block_invoke_2_cold_3(v3 + 6, v3 + 8, v14);
      }
    }

    goto LABEL_24;
  }

  if (v8)
  {
    goto LABEL_18;
  }

  if (*(v3 + 6) && (*v4 & 0x7F) == 0)
  {
    v10 = KSCategory(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __29___KSRequestThrottle__launch__block_invoke_2_cold_2();
    }
  }

  v11 = dispatch_time(0, (v7 * 1000000000.0));
  v12 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29___KSRequestThrottle__launch__block_invoke_22;
  block[3] = &unk_2797F7140;
  objc_copyWeak(&v17, (a1 + 40));
  dispatch_after(v11, v12, block);

  objc_destroyWeak(&v17);
LABEL_25:
}

void __29___KSRequestThrottle__launch__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _launch];
}

void __29___KSRequestThrottle__launch__block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2557E2000, v0, OS_LOG_TYPE_ERROR, "%s  Throttle(%@): giving up", v1, 0x16u);
}

void __29___KSRequestThrottle__launch__block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2557E2000, v0, OS_LOG_TYPE_ERROR, "%s  Throttle(%@): 128 attempts counted", v1, 0x16u);
}

void __29___KSRequestThrottle__launch__block_invoke_2_cold_3(uint64_t *a1, int *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 136315650;
  v6 = "[_KSRequestThrottle _launch]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  Throttle(%@): success after %i tries", &v5, 0x1Cu);
}

@end