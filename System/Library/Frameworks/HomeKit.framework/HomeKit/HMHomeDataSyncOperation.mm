@interface HMHomeDataSyncOperation
@end

@implementation HMHomeDataSyncOperation

uint64_t __40____HMHomeDataSyncOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_53189;
  logCategory__hmf_once_v8_53189 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __33____HMHomeDataSyncOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = WeakRetained;
      v11 = HMFGetOSLogHandle();
      v12 = v11;
      if (v6)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v25 = v13;
          _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Processing sync response", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        v14 = [v10 isRefresh];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __33____HMHomeDataSyncOperation_main__block_invoke_6;
        v22[3] = &unk_1E754E2F8;
        objc_copyWeak(&v23, (a1 + 32));
        [v8 __processSyncResponse:v6 refreshRequested:v14 completionHandler:v22];
        objc_destroyWeak(&v23);
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v25 = v20;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Sync operation failed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        if ([v5 isHMError])
        {
          v21 = [v5 userInfo];
          [v8 _updateStatusWithPayload:v21];
        }

        [v10 cancelWithError:v5];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Manager was deallocated before fetch response was handled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [v16 cancelWithError:v19];
    }
  }
}

void __33____HMHomeDataSyncOperation_main__block_invoke_6(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to process sync response: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 cancelWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully processed sync response", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [v6 finish];
  }
}

@end