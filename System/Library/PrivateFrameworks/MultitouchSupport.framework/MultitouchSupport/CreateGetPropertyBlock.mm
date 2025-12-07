@interface CreateGetPropertyBlock
@end

@implementation CreateGetPropertyBlock

id __mt_CreateGetPropertyBlock_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v22 = 0;
  v23 = 0;
  v5 = [v4 getProperty:v3 property:&v23 options:0 error:&v22];
  v6 = v23;
  v8 = v22;
  v9 = *(a1 + 40);
  if (v5)
  {
    if (v9)
    {
      if (*(v9 + 133) == 1)
      {
        mt_CachePropertiesForDevice(v9);
      }

      v10 = MTLoggingFramework(v9, v7);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      v11 = [v6 length];
      v12 = *(*(a1 + 40) + 64);
      *buf = 138543874;
      v25 = v3;
      v26 = 1024;
      *v27 = v11;
      *&v27[4] = 2048;
      *&v27[6] = v12;
      v13 = "Getting property '%{public}@' from bootloader: %u bytes (deviceID 0x%llX)";
      v14 = v10;
      v15 = 28;
    }

    else
    {
      v10 = MTLoggingFramework(0, v7);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      v21 = [v6 length];
      *buf = 138543618;
      v25 = v3;
      v26 = 1024;
      *v27 = v21;
      v13 = "Getting property '%{public}@' from bootloader: %u bytes";
      v14 = v10;
      v15 = 18;
    }

    _os_log_impl(&dword_25AD59000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
LABEL_8:

    v16 = v6;
    goto LABEL_16;
  }

  if (v9)
  {
    if (*(v9 + 133) == 1)
    {
      mt_CachePropertiesForDevice(v9);
    }

    v17 = MTLoggingFramework(v9, v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 localizedDescription];
      v19 = *(*(a1 + 40) + 64);
      *buf = 138543874;
      v25 = v3;
      v26 = 2114;
      *v27 = v18;
      *&v27[8] = 2048;
      *&v27[10] = v19;
      _os_log_impl(&dword_25AD59000, v17, OS_LOG_TYPE_ERROR, "Error getting property '%{public}@' from bootloader: %{public}@ (deviceID 0x%llX)", buf, 0x20u);
    }
  }

  else
  {
    __mt_CreateGetPropertyBlock_block_invoke_cold_1(v3, v8);
  }

  v16 = 0;
LABEL_16:

  return v16;
}

void __mt_CreateGetPropertyBlock_block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = MTLoggingFramework(a1, a2);
  if (OUTLINED_FUNCTION_1(v4))
  {
    v10 = [a2 localizedDescription];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

@end