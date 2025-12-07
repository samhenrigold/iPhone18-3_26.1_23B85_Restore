@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@- INS %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_30(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isInserted] & 1) == 0 && (objc_msgSend(v3, "isDeleted") & 1) == 0)
  {
    v4 = [v3 changedValues];
    v5 = [v4 allKeys];
    v6 = [v5 sortedArrayUsingSelector:sel_compare_];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 componentsJoinedByString:{@", "}];
      v12 = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = v3;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@- UPD %@: %{public}@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_34(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 entity];
  v6 = [v5 relationshipsByName];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_2;
  v16[3] = &unk_27867D4D8;
  v7 = v4;
  v17 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];

  v8 = [v7 count];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v7 sortedArrayUsingSelector:sel_compare_];
      v15 = [v14 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v3;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@- DEL %@ (cascades along %{public}@))", buf, 0x20u);

LABEL_6:
    }
  }

  else if (v12)
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@- DEL %@", buf, 0x16u);
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v9);
}

void __73__NSManagedObjectContext_HomeKitDaemon__hmd_logPendingChangesWithReason___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 deleteRule] == 2)
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end