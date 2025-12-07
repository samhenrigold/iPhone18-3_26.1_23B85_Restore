@interface MAsendDownloadAsset
@end

@implementation MAsendDownloadAsset

void ___MAsendDownloadAsset_block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x19A8EC930](v3) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_int64(v4, "Result") == 13 && *(a1 + 112) == 1 && (v5 = dispatch_time(*(a1 + 96), 180000000000), v5 > dispatch_time(0, 0)))
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 67109634;
      v29 = 5;
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Daemon not ready - retrying download in %d seconds [%{public}@, %{public}@]", buf, 0x1Cu);
    }

    v9 = dispatch_time(0, 5000000000);
    v10 = getRetryXpcDelayQueue(v9);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___MAsendDownloadAsset_block_invoke_1202;
    v21[3] = &unk_1E74C98B0;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v22 = v16;
    v23 = v15;
    v27 = *(a1 + 104);
    v24 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 88);
    v25 = v17;
    v26 = v18;
    dispatch_after(v9, v10, v21);
  }

  else
  {
    v19 = *(*(a1 + 88) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    (*(*(a1 + 80) + 16))();
  }
}

void ___MAsendDownloadAsset_block_invoke_1202(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) count];
      v9 = 134217984;
      v10 = v4;
      _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_DEFAULT, "Re-registering %lu progress callbacks", &v9, 0xCu);
    }

    v5 = _getCommsManager();
    [v5 restoreProgressCallbacks:*(a1 + 32) assetType:*(a1 + 40) assetId:*(a1 + 48) withPurpose:*(a1 + 56)];
  }

  v6 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Retrying download [%{public}@, %{public}@]", &v9, 0x16u);
  }

  sendIfNecessary(*(a1 + 88), *(a1 + 64), *(a1 + 72), *(*(*(a1 + 80) + 8) + 40));
}

@end