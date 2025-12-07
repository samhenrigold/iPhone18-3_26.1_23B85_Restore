@interface HMDResidentSyncClientMergePolicy
- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error;
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error;
- (HMDResidentSyncClientMergePolicy)initWithFaultLogging:(BOOL)logging;
- (id)logIdentifier;
@end

@implementation HMDResidentSyncClientMergePolicy

- (id)logIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  v7 = *MEMORY[0x277CBE160];
  v20 = 0;
  v8 = [v7 resolveConstraintConflicts:conflictsCopy error:&v20];
  v9 = v20;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Refusing to merge constraint violations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v17;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (error)
  {
    v18 = v9;
    *error = v9;
  }

  return v8;
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = [conflictsCopy count];
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Detected %tu merge conflict(s)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = 1;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__HMDResidentSyncClientMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke;
  v28[3] = &unk_27867EAB8;
  v28[4] = selfCopy;
  v28[5] = buf;
  [conflictsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v14 = *MEMORY[0x277CBE160];
    v27 = 0;
    v13 = [v14 resolveOptimisticLockingVersionConflicts:conflictsCopy error:&v27];
    v12 = v27;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v25.receiver = selfCopy;
  v25.super_class = HMDResidentSyncClientMergePolicy;
  v26 = 0;
  v11 = [(NSMergePolicy *)&v25 resolveOptimisticLockingVersionConflicts:conflictsCopy error:&v26];
  v12 = v26;
  if (v11)
  {
    v13 = 1;
    goto LABEL_14;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *v29 = 138543362;
    v30 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@NSMergeByPropertyObjectTrumpMergePolicy failed to resolve merge conflicts", v29, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v19 = objc_autoreleasePoolPush();
  v20 = v16;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = HMFGetLogIdentifier();
    *v29 = 138543618;
    v30 = v22;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@%@", v29, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v13 = 0;
  if (error)
  {
LABEL_13:
    v23 = v12;
    *error = v12;
  }

LABEL_14:

  _Block_object_dispose(buf, 8);
  return v13;
}

void __83__HMDResidentSyncClientMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v44 = objc_autoreleasePoolPush();
  v45 = a1;
  v6 = *(a1 + 32);
  v7 = v5;
  v47 = v7;
  if (v6)
  {
    v46 = [v7 sourceObject];
    if ([v47 newVersionNumber])
    {
      if (![v46 isDeleted])
      {
        v15 = [v47 objectSnapshot];
        v16 = [v47 cachedSnapshot];
        v17 = v16;
        if (v15)
        {
          v18 = v16;
          v17 = v15;
        }

        else
        {
          v18 = [v47 persistedSnapshot];
        }

        v43 = [v46 changedValues];
        v19 = [MEMORY[0x277CBEB38] dictionary];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke;
        v64[3] = &unk_27867EAE0;
        v42 = v18;
        v65 = v42;
        v20 = v19;
        v66 = v20;
        [v17 enumerateKeysAndObjectsUsingBlock:v64];
        v21 = HMFGetOSLogHandle();
        LODWORD(v19) = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

        if (v19)
        {
          v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v43, "count")}];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke_2;
          v61[3] = &unk_27867EAE0;
          v62 = v17;
          v23 = v22;
          v63 = v23;
          [v43 enumerateKeysAndObjectsUsingBlock:v61];
          v24 = objc_autoreleasePoolPush();
          v25 = v6;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            v28 = [v46 hmd_debugIdentifier];
            *buf = 138544386;
            *&buf[4] = v27;
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2112;
            v68 = v28;
            *v69 = 2112;
            *&v69[2] = v23;
            *&v69[10] = 2112;
            *&v69[12] = v20;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Conflict %tu on %@:\nnew: %@\nconflict: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v24);
        }

        v29 = [v46 entity];
        v30 = [v29 propertiesByName];
        v57 = 0;
        v58 = &v57;
        v59 = 0x2020000000;
        v60 = 1;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke_28;
        v68 = &unk_27867EB08;
        v31 = v20;
        *v69 = v31;
        *&v69[8] = v6;
        v32 = v47;
        *&v69[16] = v32;
        v75 = a3;
        v33 = v29;
        v70 = v33;
        v34 = v30;
        v71 = v34;
        v35 = v17;
        v72 = v35;
        v36 = v42;
        v73 = v36;
        v74 = &v57;
        [v43 enumerateKeysAndObjectsUsingBlock:buf];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke_2_29;
        v48[3] = &unk_27867EB30;
        v48[4] = v6;
        v49 = v32;
        v56 = a3;
        v37 = v33;
        v50 = v37;
        v38 = v34;
        v51 = v38;
        v39 = v43;
        v52 = v39;
        v40 = v35;
        v53 = v40;
        v41 = v36;
        v54 = v41;
        v55 = &v57;
        [v31 enumerateKeysAndObjectsUsingBlock:v48];
        v14 = *(v58 + 24);

        _Block_object_dispose(&v57, 8);
        goto LABEL_18;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = v6;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138544130;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2112;
        v68 = v46;
        *v69 = 2112;
        *&v69[2] = v47;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu is on %@ that is being deleted by resident sync, could have merged but refusing instead: %@", buf, 0x2Au);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v6;
      v10 = HMFGetOSLogHandle();
      v12 = v9[32];
      if (os_log_type_enabled(v10, v12))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138544130;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2112;
        v68 = v46;
        *v69 = 2112;
        *&v69[2] = v47;
        _os_log_impl(&dword_229538000, v10, v12, "%{public}@Conflict %tu is on %@ that was deleted locally: %@", buf, 0x2Au);
      }
    }

    objc_autoreleasePoolPop(v8);
    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  *(*(*(v45 + 40) + 8) + 24) &= v14;
  objc_autoreleasePoolPop(v44);
}

void __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (([v5 isEqual:v6] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ --> %@", v5, v6];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

void __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v11 = v8;
  if (v8)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ --> %@", v8, v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6, v10];
  }
  v9 = ;

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
}

void __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke_28(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setObject:0 forKeyedSubscript:v4];
  v5 = *(a1 + 40);
  v6 = *(a1 + 96);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v97 = v4;
  if (!v5)
  {
    goto LABEL_57;
  }

  v16 = +[MKFResidentSyncMetadata entity];
  v17 = [v12 isEqual:v16];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v5;
    v20 = HMFGetOSLogHandle();
    v21 = v19[32];
    if (os_log_type_enabled(v20, v21))
    {
      v22 = HMFGetLogIdentifier();
      v23 = v6;
      v24 = v13;
      v25 = v15;
      v26 = v22;
      *buf = 138544130;
      v99 = v22;
      v100 = 2048;
      v101 = v23;
      v102 = 2114;
      v103 = v97;
      v104 = 2112;
      v105 = v11;
      _os_log_impl(&dword_229538000, v20, v21, "%{public}@Conflict %tu on %{public}@ that should only be modified by resident sync, overwriting: %@", buf, 0x2Au);

      v15 = v25;
      v13 = v24;
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_43;
  }

  v95 = v6;
  v27 = [v13 objectForKeyedSubscript:v97];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v96 = v15;
  if (!v29)
  {
    v92 = v14;
    v34 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    if (v36)
    {
      v89 = v36;
      if ([v97 isEqualToString:@"residentSyncMetadata"])
      {
        v37 = +[_MKFHome entity];
        v38 = [v12 isEqual:v37];

        if (v38)
        {
          context = objc_autoreleasePoolPush();
          v39 = v5;
          v40 = HMFGetOSLogHandle();
          v41 = *(v39 + 32);
          if (os_log_type_enabled(v40, v41))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            v99 = v42;
            v100 = 2048;
            v101 = v95;
            v102 = 2114;
            v103 = v97;
            _os_log_impl(&dword_229538000, v40, v41, "%{public}@Conflict %tu is on '%{public}@' that should only be modified by resident sync, overwriting", buf, 0x20u);
          }

          v43 = v89;
          v14 = v92;
          v44 = v40;
          v45 = context;
LABEL_41:

          objc_autoreleasePoolPop(v45);
          goto LABEL_42;
        }
      }

      v51 = isRelationshipIncludedInResidentSync(v89);
      v52 = [v89 isToMany];
      v53 = v52;
      if (v51)
      {
        if (v52)
        {
          v45 = objc_autoreleasePoolPush();
          v54 = v5;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543874;
            v99 = v55;
            v100 = 2048;
            v101 = v95;
            v102 = 2114;
            v103 = v97;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu is on to-many relationship '%{public}@' that is included in resident sync, allowing", buf, 0x20u);
          }

          v43 = v89;
          v14 = v92;
          goto LABEL_41;
        }

        v68 = v92;
        v69 = [v92 objectForKeyedSubscript:v97];
        v84 = [v96 objectForKeyedSubscript:v97];
        contextc = v69;
        LODWORD(v69) = [v69 isEqual:?];
        v82 = objc_autoreleasePoolPush();
        v70 = v5;
        v71 = HMFGetOSLogHandle();
        v81 = v69;
        if (v69)
        {
          v72 = v71;
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            goto LABEL_62;
          }

          v73 = HMFGetLogIdentifier();
          *buf = 138543874;
          v99 = v73;
          v100 = 2048;
          v101 = v95;
          v102 = 2114;
          v103 = v97;
          v74 = "%{public}@Conflict %tu on to-one relationship '%{public}@' that is only modified by resident sync, allowing";
          v75 = v72;
          v76 = OS_LOG_TYPE_INFO;
          v77 = 32;
        }

        else
        {
          v80 = *(v70 + 32);
          v72 = v71;
          if (!os_log_type_enabled(v71, v70[32]))
          {
            goto LABEL_62;
          }

          v73 = HMFGetLogIdentifier();
          *buf = 138544130;
          v99 = v73;
          v100 = 2048;
          v101 = v95;
          v102 = 2114;
          v103 = v97;
          v104 = 2112;
          v105 = v11;
          v74 = "%{public}@Conflict %tu on to-one relationship '%{public}@' that should only be modified by resident sync: %@";
          v75 = v72;
          v76 = v80;
          v77 = 42;
        }

        _os_log_impl(&dword_229538000, v75, v76, v74, buf, v77);

        v68 = v92;
LABEL_62:

        objc_autoreleasePoolPop(v82);
        if (v81)
        {
          return;
        }

LABEL_58:
        *(*(*(a1 + 88) + 8) + 24) = 0;
        return;
      }

      v83 = v34;
      contextb = objc_autoreleasePoolPush();
      v60 = v5;
      v61 = HMFGetOSLogHandle();
      v62 = v61;
      if (v53)
      {
        v43 = v89;
        v44 = v61;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v63 = HMFGetLogIdentifier();
          *buf = 138543874;
          v99 = v63;
          v100 = 2048;
          v101 = v95;
          v102 = 2114;
          v103 = v97;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu is on to-many relationship '%{public}@' that is not included in resident sync, allowing", buf, 0x20u);
        }

        v14 = v92;
        v34 = v83;
        v45 = contextb;
        goto LABEL_41;
      }

      v78 = *(v60 + 32);
      if (os_log_type_enabled(v61, v60[32]))
      {
        v79 = HMFGetLogIdentifier();
        *buf = 138544130;
        v99 = v79;
        v100 = 2048;
        v101 = v95;
        v102 = 2114;
        v103 = v97;
        v104 = 2112;
        v105 = v11;
        _os_log_impl(&dword_229538000, v62, v78, "%{public}@Conflict %tu on to-one relationship '%{public}@' that is not included in resident sync: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(contextb);
      v36 = v89;
    }

    v14 = v92;
LABEL_56:

    v15 = v96;
LABEL_57:

    goto LABEL_58;
  }

  if (![v97 isEqualToString:@"writerTimestamp"])
  {
    if (isAttributeIncludedInResidentSync(v29))
    {
      v46 = [v14 objectForKeyedSubscript:v97];
      v90 = [v15 objectForKeyedSubscript:v97];
      v93 = v46;
      LODWORD(v46) = [v46 isEqual:?];
      contexta = objc_autoreleasePoolPush();
      v47 = v5;
      v48 = HMFGetOSLogHandle();
      v49 = v48;
      if (v46)
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543874;
          v99 = v50;
          v100 = 2048;
          v101 = v95;
          v102 = 2114;
          v103 = v97;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu on attribute '%{public}@' that is only modified by resident sync, allowing", buf, 0x20u);
        }

        objc_autoreleasePoolPop(contexta);
        goto LABEL_14;
      }

      v64 = *(v47 + 32);
      if (os_log_type_enabled(v48, v47[32]))
      {
        v65 = HMFGetLogIdentifier();
        v66 = v64;
        v67 = v65;
        *buf = 138544130;
        v99 = v65;
        v100 = 2048;
        v101 = v95;
        v102 = 2114;
        v103 = v97;
        v104 = 2112;
        v105 = v11;
        _os_log_impl(&dword_229538000, v49, v66, "%{public}@Conflict %tu on attribute '%{public}@' that should only be modified by resident sync: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(contexta);
    }

    else
    {
      v91 = objc_autoreleasePoolPush();
      v56 = v5;
      v57 = HMFGetOSLogHandle();
      v58 = v56[32];
      if (os_log_type_enabled(v57, v58))
      {
        HMFGetLogIdentifier();
        v59 = v94 = v14;
        *buf = 138544130;
        v99 = v59;
        v100 = 2048;
        v101 = v95;
        v102 = 2114;
        v103 = v97;
        v104 = 2112;
        v105 = v11;
        _os_log_impl(&dword_229538000, v57, v58, "%{public}@Conflict %tu on attribute '%{public}@' that resident sync should not have modified: %@", buf, 0x2Au);

        v14 = v94;
      }

      objc_autoreleasePoolPop(v91);
    }

    goto LABEL_56;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = v5;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543874;
    v99 = v33;
    v100 = 2048;
    v101 = v95;
    v102 = 2114;
    v103 = v97;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu on attribute '%{public}@', overwriting", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_14:

LABEL_42:
LABEL_43:
}

void __72__HMDResidentSyncClientMergePolicy__shouldAllowMergeWithConflict_index___block_invoke_2_29(uint64_t a1, void *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v89 = *(a1 + 96);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v90 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = a2;
  if (!v4)
  {
    goto LABEL_48;
  }

  v16 = +[MKFResidentSyncMetadata entity];
  v17 = [v10 isEqual:v16];

  if (v17)
  {
    v18 = v10;
    v19 = v15;
    context = v11;
    v86 = v18;
    v20 = v12;
    v21 = objc_autoreleasePoolPush();
    v22 = v4;
    v23 = HMFGetOSLogHandle();
    v24 = v22[32];
    v25 = v90;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138544130;
      v92 = v26;
      v93 = 2048;
      v94 = v89;
      v95 = 2114;
      v96 = v19;
      v97 = 2112;
      v98 = v90;
      _os_log_impl(&dword_229538000, v23, v24, "%{public}@Conflict %tu has local changes on %{public}@ that should only be modified by resident sync, overwriting: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_41;
  }

  [v11 objectForKeyedSubscript:v15];
  v28 = v27 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  v87 = v30;
  v88 = v27;
  if (v30)
  {
    v80 = v12;
    if ([v27 isEqualToString:@"writerTimestamp"])
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v4;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543874;
        v92 = v34;
        v93 = 2048;
        v94 = v89;
        v95 = 2114;
        v96 = v88;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu has local change on attribute '%{public}@', ignoring", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v25 = v90;
LABEL_40:

LABEL_41:
      return;
    }

    if (![v27 isEqualToString:@"location"])
    {
      goto LABEL_33;
    }

    v48 = [v12 objectForKeyedSubscript:v27];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v78 = v49;

    contextb = v13;
    v50 = [v13 objectForKeyedSubscript:v88];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;

    v53 = [v14 objectForKeyedSubscript:v88];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v55 = v54;

    if (v78)
    {
      goto LABEL_32;
    }

    v62 = v55;
    v74 = v52;
    v63 = v52;
    v64 = v62;
    v65 = v63;
    if (v64 == v63)
    {

      v73 = v64;
    }

    else
    {
      if (!v63 || !v64)
      {

        v52 = v74;
        goto LABEL_32;
      }

      v72 = [v64 jsonObject];
      [v65 jsonObject];
      v66 = v75 = v65;
      v71 = [v72 isEqualToDictionary:v66];

      v65 = v75;
      v73 = v64;

      v52 = v74;
      if (!v71)
      {
LABEL_32:

        v13 = contextb;
LABEL_33:
        v56 = isAttributeIncludedInResidentSync(v30);
        contextc = objc_autoreleasePoolPush();
        v57 = v4;
        v58 = HMFGetOSLogHandle();
        v59 = v58;
        if (!v56)
        {
          v25 = v90;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v61 = HMFGetLogIdentifier();
            *buf = 138543874;
            v92 = v61;
            v93 = 2048;
            v94 = v89;
            v95 = 2114;
            v96 = v88;
            _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu has local change on attribute '%{public}@' that is not included in resident sync, allowing", buf, 0x20u);
          }

          objc_autoreleasePoolPop(contextc);
          goto LABEL_40;
        }

        v60 = v57[32];
        if (os_log_type_enabled(v58, v60))
        {
          v79 = HMFGetLogIdentifier();
          *buf = 138544130;
          v92 = v79;
          v93 = 2048;
          v94 = v89;
          v95 = 2114;
          v96 = v88;
          v97 = 2112;
          v98 = v90;
          _os_log_impl(&dword_229538000, v59, v60, "%{public}@Conflict %tu has local change on attribute '%{public}@' that should only be modified by resident sync: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contextc);
        v12 = v80;
        goto LABEL_47;
      }
    }

    v76 = v65;
    v67 = objc_autoreleasePoolPush();
    v68 = v4;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = HMFGetLogIdentifier();
      *buf = 138543874;
      v92 = v70;
      v93 = 2048;
      v94 = v89;
      v95 = 2114;
      v96 = v88;
      _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@Conflict %tu on attribute '%{public}@', allowing since was not modified by current context and conflicting value is equal to base value", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v67);
    v25 = v90;
    v13 = contextb;
    goto LABEL_40;
  }

  v35 = v28;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37)
  {
    v81 = v12;
    contexta = v13;
    v38 = isRelationshipIncludedInResidentSync(v37);
    v77 = objc_autoreleasePoolPush();
    v39 = v4;
    v40 = HMFGetOSLogHandle();
    v41 = v40;
    if (v38)
    {
      v42 = v39[32];
      if (os_log_type_enabled(v40, v42))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138544130;
        v92 = v43;
        v93 = 2048;
        v94 = v89;
        v95 = 2114;
        v96 = v88;
        v97 = 2112;
        v98 = v90;
        v44 = "%{public}@Conflict %tu has local change on to-one relationship '%{public}@' that should only be modified by resident sync: %@";
        v45 = v41;
        v46 = v42;
        v47 = 42;
LABEL_44:
        _os_log_impl(&dword_229538000, v45, v46, v44, buf, v47);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543874;
      v92 = v43;
      v93 = 2048;
      v94 = v89;
      v95 = 2114;
      v96 = v88;
      v44 = "%{public}@Conflict %tu has local change on to-one relationship '%{public}@' that is not included in resident sync, could have safely resolved but refusing instead";
      v45 = v41;
      v46 = OS_LOG_TYPE_INFO;
      v47 = 32;
      goto LABEL_44;
    }

    objc_autoreleasePoolPop(v77);
    v12 = v81;
    v13 = contexta;
  }

LABEL_47:
  v15 = v88;
LABEL_48:

  *(*(*(a1 + 88) + 8) + 24) = 0;
}

- (HMDResidentSyncClientMergePolicy)initWithFaultLogging:(BOOL)logging
{
  loggingCopy = logging;
  v6.receiver = self;
  v6.super_class = HMDResidentSyncClientMergePolicy;
  result = [(NSMergePolicy *)&v6 initWithMergeType:2];
  if (result)
  {
    if (loggingCopy)
    {
      v5 = 17;
    }

    else
    {
      v5 = 16;
    }

    result->_faultLogType = v5;
  }

  return result;
}

@end