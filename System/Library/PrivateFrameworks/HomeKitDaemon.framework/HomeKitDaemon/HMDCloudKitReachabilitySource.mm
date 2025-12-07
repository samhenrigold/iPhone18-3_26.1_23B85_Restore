@interface HMDCloudKitReachabilitySource
- (int64_t)areCloudKitServersReachableWithError:(id *)error;
@end

@implementation HMDCloudKitReachabilitySource

- (int64_t)areCloudKitServersReachableWithError:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CBC220]);
  v5 = [v4 initWithContainerIdentifier:@"com.apple.homekit.config" environment:cloudKitContainerEnvironment];
  v6 = objc_opt_new();
  [v6 setUseZoneWidePCS:1];
  v7 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5 options:v6];
  v8 = dispatch_group_create();
  v9 = objc_autoreleasePoolPush();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Waiting to check whether CloudKit is reachable or not... Start", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  dispatch_group_enter(v8);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__82538;
  v68 = __Block_byref_object_dispose__82539;
  v69 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __70__HMDCloudKitReachabilitySource_areCloudKitServersReachableWithError___block_invoke;
  v43[3] = &unk_278676778;
  p_buf = &buf;
  v46 = &v57;
  v47 = &v53;
  v48 = &v49;
  v12 = v8;
  v44 = v12;
  [v7 accountInfoWithCompletionHandler:v43];
  v13 = dispatch_time(0, 60000000000);
  v14 = dispatch_group_wait(v12, v13) == 0;
  v15 = objc_autoreleasePoolPush();
  if (!v14)
  {
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v61 = 138543362;
      v62 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Fetching the CK account info operation timed out.", v61, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *v61 = 138543362;
    v62 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Waiting to check whether CloudKit is reachable or not... End", v61, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v22 = v58[3];
  if (!v22 || *(*(&buf + 1) + 40))
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *(*(&buf + 1) + 40);
      *v61 = 138543618;
      v62 = v25;
      v63 = 2112;
      v64 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@CK account fetch info resulted into error : %@", v61, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    if (error)
    {
      v18 = 0;
      *error = *(*(&buf + 1) + 40);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = 1;
  if (v22 <= 2)
  {
    if (v22 != 1)
    {
      if (v22 == 2)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *v61 = 138543362;
          v62 = v29;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@CK account status is restricted", v61, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        v18 = 2;
      }

      goto LABEL_8;
    }

    if (v54[3])
    {
      v18 = 1;
      goto LABEL_8;
    }

    v37 = objc_autoreleasePoolPush();
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *v61 = 138543362;
      v62 = v40;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@CK account status available but need to verify terms", v61, 0xCu);
    }

LABEL_39:

    objc_autoreleasePoolPop(v37);
    v18 = 5;
    goto LABEL_8;
  }

  if (v22 == 3)
  {
    v34 = objc_autoreleasePoolPush();
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *v61 = 138543362;
      v62 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@CK account status is not signed in", v61, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v18 = 3;
  }

  else
  {
    if (v22 != 4)
    {
      goto LABEL_8;
    }

    if ((v54[3] & 1) == 0)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *v61 = 138543362;
        v62 = v39;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@CK account status is invalid credentials", v61, 0xCu);
      }

      goto LABEL_39;
    }

    v30 = *(v50 + 24);
    v31 = objc_autoreleasePoolPush();
    if (v30)
    {
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *v61 = 138543362;
        v62 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@CK account status is need to verify terms", v61, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v18 = 6;
    }

    else
    {
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *v61 = 138543362;
        v62 = v42;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@CK account status is temporarily unavailable", v61, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v18 = 4;
    }
  }

LABEL_8:

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&buf, 8);

  return v18;
}

void __70__HMDCloudKitReachabilitySource_areCloudKitServersReachableWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@CK account fetch info completed with : %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  *(*(*(a1 + 48) + 8) + 24) = [v5 accountStatus];
  *(*(*(a1 + 56) + 8) + 24) = [v5 hasValidCredentials];
  *(*(*(a1 + 64) + 8) + 24) = [v5 needsToVerifyTerms];
  dispatch_group_leave(*(a1 + 32));
}

@end