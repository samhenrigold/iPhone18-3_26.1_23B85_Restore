@interface ACAccount
@end

@implementation ACAccount

void __59__ACAccount_DeviceManagementClient__dmc_accountQuotaString__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = v9;
  if (v9)
  {
    v12 = *DMCLogObjects(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Failed to retrieve quota size for account: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v14 = getAAQuotaInfoResponseClass_softClass;
    v32 = getAAQuotaInfoResponseClass_softClass;
    if (!getAAQuotaInfoResponseClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAAQuotaInfoResponseClass_block_invoke;
      v34 = &unk_1E7ADC1F0;
      v35 = &v29;
      __getAAQuotaInfoResponseClass_block_invoke(buf);
      v14 = v30[3];
    }

    v15 = v14;
    _Block_object_dispose(&v29, 8);
    v16 = [v14 alloc];
    v17 = [v8 httpResponse];
    v18 = [v8 data];
    v19 = [v16 initWithHTTPResponse:v17 data:v18];

    v20 = [v19 totalStorageInBytes];
    v21 = [v20 longLongValue];

    if (v21)
    {
      v24 = NSLocalizedFileSizeDescription();
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    else
    {
      v27 = *DMCLogObjects(v22, v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_ERROR, "Quota size for account: %{public}@ is 0!", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end