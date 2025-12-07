@interface SPNVRAM
+ (BOOL)write:(id)write;
+ (id)read;
+ (void)clear;
@end

@implementation SPNVRAM

+ (void)clear
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __16__SPNVRAM_clear__block_invoke;
  v6[3] = &unk_279B587C8;
  v7 = v2;
  v4 = v2;
  [mEMORY[0x277D08F78] clearOfflineFindingInfoWithCompletion:v6];

  v5 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v4, v5);
}

void __16__SPNVRAM_clear__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_NVRAM(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __16__SPNVRAM_clear__block_invoke_cold_1();
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "NVRAM cleared.", v6, 2u);
    }
  }
}

+ (id)read
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v4 = LogCategory_NVRAM(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Beginning read of keys from NVRAM.", buf, 2u);
  }

  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __15__SPNVRAM_read__block_invoke;
  v18 = &unk_279B587F0;
  v6 = v2;
  v19 = v6;
  v20 = &v21;
  [mEMORY[0x277D08F78] fetchOfflineFindingInfoWithCompletion:&v15];

  v7 = dispatch_time(0, 30000000000);
  v8 = dispatch_group_wait(v6, v7);
  v9 = LogCategory_NVRAM(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v22[5];
    v11 = [v10 length];
    v12 = @"(not-nil)";
    if (!v10)
    {
      v12 = @"(nil)";
    }

    *buf = 138543618;
    v28 = v12;
    v29 = 2048;
    v30 = v11;
    _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "Done waiting to read keys from NVRAM returnValue %{public}@ %lu", buf, 0x16u);
  }

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __15__SPNVRAM_read__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = LogCategory_NVRAM(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __15__SPNVRAM_read__block_invoke_cold_1();
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = LogCategory_NVRAM(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = [v6 length];
      _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "Read %lu bytes from NVRAM.", &v13, 0xCu);
    }

    v9 = LogCategory_NVRAM(v12);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __15__SPNVRAM_read__block_invoke_cold_2(v6, v9);
    }
  }

  else
  {
    v9 = LogCategory_NVRAM(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "No key data received from NVRAM", &v13, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (BOOL)write:(id)write
{
  v24 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v6 = LogCategory_NVRAM(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [writeCopy length];
    *buf = 134217984;
    v23 = v7;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Writing %lu bytes to NVRAM.", buf, 0xCu);
  }

  v9 = LogCategory_NVRAM(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    fm_hexString = [writeCopy fm_hexString];
    [(SPNVRAM *)fm_hexString write:buf, v9];
  }

  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __17__SPNVRAM_write___block_invoke;
  v15[3] = &unk_279B58818;
  v17 = &v18;
  v12 = v4;
  v16 = v12;
  [mEMORY[0x277D08F78] storeOfflineFindingInfo:writeCopy completion:v15];

  v13 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v12, v13);
  LOBYTE(mEMORY[0x277D08F78]) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return mEMORY[0x277D08F78] & 1;
}

void __17__SPNVRAM_write___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if (v3)
  {
    *(v5 + 24) = 0;
    v6 = LogCategory_NVRAM(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __17__SPNVRAM_write___block_invoke_cold_1();
    }
  }

  else
  {
    *(v5 + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __15__SPNVRAM_read__block_invoke_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 fm_hexString];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2643D0000, a2, OS_LOG_TYPE_DEBUG, "Read NVRAM data: %@", v4, 0xCu);
}

+ (void)write:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2643D0000, log, OS_LOG_TYPE_DEBUG, "Writing NVRAM data: %@", buf, 0xCu);
}

@end