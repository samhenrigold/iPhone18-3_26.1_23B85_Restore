@interface BYFindMyManager
- (BOOL)isFindMyEnabled;
@end

@implementation BYFindMyManager

- (BOOL)isFindMyEnabled
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = _BYLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Will fetch Find My state.", buf, 2u);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v4 = getFMDFMIPManagerClass_softClass;
  v27 = getFMDFMIPManagerClass_softClass;
  if (!getFMDFMIPManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getFMDFMIPManagerClass_block_invoke;
    v22 = &unk_1E7D02730;
    v23 = &v24;
    __getFMDFMIPManagerClass_block_invoke(buf);
    v4 = v25[3];
  }

  v5 = v4;
  _Block_object_dispose(&v24, 8);
  sharedInstance = [v4 sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__BYFindMyManager_isFindMyEnabled__block_invoke;
  v12[3] = &unk_1E7D028F0;
  v14 = &v15;
  v7 = v2;
  v13 = v7;
  [sharedInstance fmipStateWithCompletion:v12];

  v8 = dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v9 = _BYLoggingFacility(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Did finish waiting for Find My state.", buf, 2u);
  }

  v10 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __34__BYFindMyManager_isFindMyEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _BYLoggingFacility(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_1(v5, v6);
    }
  }

  else
  {
    if (v7)
    {
      __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_2(a2, v6);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2 == 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v4 = a1;
  v9 = *MEMORY[0x1E69E9840];
  v5 = _BYIsInternalInstall(a1, a2);
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    v2 = [v4 domain];
    v4 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v4, "code")];
  }

  *buf = 138543362;
  v8 = v4;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch Find My state: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }
}

void __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Did fetch Find My state %lu", &v2, 0xCu);
}

@end