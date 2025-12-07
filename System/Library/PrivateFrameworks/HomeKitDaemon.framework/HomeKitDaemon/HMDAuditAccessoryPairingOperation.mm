@interface HMDAuditAccessoryPairingOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (HMDAuditAccessoryPairingOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier homeUUIDWhereAccessoryWasPaired:(id)paired;
- (id)getPairingsFromAccessory:(id)accessory;
- (id)getPairingsFromAirPlayAccessory:(id)accessory;
- (id)logIdentifier;
- (id)usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved:(id)removed;
- (void)auditPairings:(id)pairings forAccessory:(id)accessory;
- (void)scheduleAuditOperations:(id)operations;
@end

@implementation HMDAuditAccessoryPairingOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (id)usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved:(id)removed
{
  users = [removed users];
  v4 = [users na_filter:&__block_literal_global_171242];

  v5 = [MEMORY[0x277CBEB58] setWithArray:v4];

  return v5;
}

uint64_t __85__HMDAuditAccessoryPairingOperation_usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOwner])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isAllowedToAddOrRemoveHAPPairingsOnAccessory];
  }

  return v3;
}

- (id)getPairingsFromAirPlayAccessory:(id)accessory
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543618;
    v33 = v8;
    v34 = 2112;
    v35 = shortDescription;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Get pairings from accessory : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  array = [MEMORY[0x277CBEB18] array];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __69__HMDAuditAccessoryPairingOperation_getPairingsFromAirPlayAccessory___block_invoke;
  v27 = &unk_278684EF8;
  v28 = selfCopy;
  v12 = accessoryCopy;
  v29 = v12;
  v13 = array;
  v30 = v13;
  v14 = v10;
  v31 = v14;
  [v12 pairingsWithCompletionHandler:&v24];
  v15 = dispatch_time(0, 120000000000);
  if (dispatch_group_wait(v14, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription2 = [v12 shortDescription];
      *buf = 138543618;
      v33 = v19;
      v34 = 2112;
      v35 = shortDescription2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Timed out while getting list of pairings from the accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = v31;
  v22 = v13;

  return v13;
}

void __69__HMDAuditAccessoryPairingOperation_getPairingsFromAirPlayAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) shortDescription];
    v13 = 138544130;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@AirPlay list pairing operation finished with: %@ for accessory: %@, error: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 48);
  if (v12)
  {
    [v12 addObjectsFromArray:v5];
  }

  dispatch_group_leave(*(a1 + 56));
}

- (id)getPairingsFromAccessory:(id)accessory
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = shortDescription;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Get pairings from accessory : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  array = [MEMORY[0x277CBEB18] array];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke;
  v27[3] = &unk_27867CCF0;
  v27[4] = selfCopy;
  v28 = accessoryCopy;
  v29 = v10;
  v12 = array;
  v30 = v12;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_30;
  v24[3] = &unk_278688D58;
  v24[4] = selfCopy;
  v13 = v28;
  v25 = v13;
  v14 = v29;
  v26 = v14;
  [v13 performOperation:7 linkType:0 operationBlock:v27 errorBlock:v24];
  v15 = dispatch_time(0, 120000000000);
  if (dispatch_group_wait(v14, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription2 = [v13 shortDescription];
      *buf = 138543618;
      v32 = v19;
      v33 = 2112;
      v34 = shortDescription2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Timed out while getting list of pairings from the accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = v26;
  v22 = v12;

  return v12;
}

void __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 server];
  if (v4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_27;
    v16[3] = &unk_278684EF8;
    v15 = *(a1 + 2);
    v6 = *(&v15 + 1);
    v7 = a1[7];
    v8 = a1[6];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v17 = v15;
    v18 = v9;
    [v4 listPairingsWithCompletionQueue:v5 completionHandler:v16];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[4];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] shortDescription];
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to list pairing as there is no accessory server for accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_group_leave(a1[6]);
  }
}

void __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_30(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to list pairings for accessory : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 48));
}

void __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) shortDescription];
    v12 = 138544130;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@HAP list pairing operation finished with: %@ for accessory: %@, error: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 48) addObjectsFromArray:v5];
  dispatch_group_leave(*(a1 + 56));
}

- (void)scheduleAuditOperations:(id)operations
{
  v25 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  bgOpsManager = [(HMDBackgroundOperation *)self bgOpsManager];
  v6 = [bgOpsManager scheduleOperationsWithDependenciesOnEachOtherFromArray:operationsCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      accessoryUUID = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      v17 = 138544130;
      v18 = v11;
      v19 = 2112;
      v20 = operationsCopy;
      v21 = 2112;
      v22 = accessoryUUID;
      v23 = 2112;
      v24 = accessoryIdentifier;
      v14 = "%{public}@Successfully added the operations to the BGOperationManager : %@ for accessory: %@/%@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v15, v16, v14, &v17, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    accessoryUUID = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
    accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
    v17 = 138544130;
    v18 = v11;
    v19 = 2112;
    v20 = operationsCopy;
    v21 = 2112;
    v22 = accessoryUUID;
    v23 = 2112;
    v24 = accessoryIdentifier;
    v14 = "%{public}@Unable to schedule all the audit operations : %@ for accessory: %@/%@. Removing them";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)auditPairings:(id)pairings forAccessory:(id)accessory
{
  v83 = *MEMORY[0x277D85DE8];
  pairingsCopy = pairings;
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138544130;
    v76 = v12;
    v77 = 2112;
    v78 = pairingsCopy;
    v79 = 2112;
    v80 = shortDescription;
    v81 = 2112;
    v82 = home;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to audit HAP pairings: %@ on Accessory %@ for home: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (home)
  {
    bgOpsManager = [(HMDBackgroundOperation *)selfCopy bgOpsManager];
    v14 = [MEMORY[0x277CBEB58] setWithCapacity:{-[HMDPersistAuditAccessoryResultOperation count](pairingsCopy, "count")}];
    v15 = [MEMORY[0x277CBEB58] set];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke;
    v71[3] = &unk_278686590;
    v16 = home;
    v72 = v16;
    v17 = v15;
    v73 = v17;
    v18 = v14;
    v74 = v18;
    [(HMDPersistAuditAccessoryResultOperation *)pairingsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v71];
    v19 = [(HMDAuditAccessoryPairingOperation *)selfCopy usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved:v16];
    v59 = v18;
    [(HMDPersistAuditAccessoryResultOperation *)v19 minusSet:v18];
    v61 = pairingsCopy;
    if (![(HMDPersistAuditAccessoryResultOperation *)v19 hmf_isEmpty]|| ![(HMDPersistAuditAccessoryResultOperation *)v17 hmf_isEmpty])
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        shortDescription2 = [accessoryCopy shortDescription];
        *buf = 138543874;
        v76 = v33;
        v77 = 2112;
        v78 = v19;
        v79 = 2112;
        v80 = shortDescription2;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Going to add pairings [%@] on accessory [%@]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v35 = objc_autoreleasePoolPush();
      v36 = v31;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        shortDescription3 = [accessoryCopy shortDescription];
        *buf = 138543874;
        v76 = v38;
        v77 = 2112;
        v78 = v17;
        v79 = 2112;
        v80 = shortDescription3;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairings [%@] from accessory [%@]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDPersistAuditAccessoryResultOperation count](v17, "count") + -[HMDPersistAuditAccessoryResultOperation count](v19, "count")}];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_20;
      v67[3] = &unk_27867CCA0;
      v41 = accessoryCopy;
      v68 = v41;
      v69 = v36;
      v42 = v40;
      v70 = v42;
      [(HMDPersistAuditAccessoryResultOperation *)v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v67];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_24;
      v62[3] = &unk_27867CCC8;
      v43 = v41;
      v63 = v43;
      v64 = v16;
      v65 = v36;
      v21 = v42;
      v66 = v21;
      [(HMDPersistAuditAccessoryResultOperation *)v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v62];
      v44 = [HMDPersistAuditAccessoryResultOperation alloc];
      v45 = [(HMDAccessoryBackgroundOperation *)v44 initWithAccessory:v43 userData:MEMORY[0x277CBEC10]];
      if (v45)
      {
        [(HMDPersistAuditAccessoryResultOperation *)v21 addObject:v45];
        v46 = objc_msgSend_copy(v21);
        [(HMDAuditAccessoryPairingOperation *)v36 scheduleAuditOperations:v46];
      }

      else
      {
        v52 = objc_autoreleasePoolPush();
        v53 = v36;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v58 = v52;
          shortDescription4 = [v43 shortDescription];
          *buf = 138543618;
          v76 = v55;
          v77 = 2112;
          v78 = shortDescription4;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit pairing operation for accessory: %@", buf, 0x16u);

          v52 = v58;
        }

        objc_autoreleasePoolPop(v52);
      }

      v22 = bgOpsManager;
      goto LABEL_26;
    }

    v20 = [HMDPersistAuditAccessoryResultOperation alloc];
    v21 = [(HMDAccessoryBackgroundOperation *)v20 initWithAccessory:accessoryCopy userData:MEMORY[0x277CBEC10]];
    if (v21)
    {
      v22 = bgOpsManager;
      [bgOpsManager addOperation:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v76 = v26;
        v77 = 2112;
        v78 = v21;
        v27 = "%{public}@Added audit finished operation for accessory : %@";
        v28 = v25;
        v29 = OS_LOG_TYPE_INFO;
LABEL_24:
        _os_log_impl(&dword_229538000, v28, v29, v27, buf, 0x16u);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v57 = selfCopy;
      v25 = HMFGetOSLogHandle();
      v22 = bgOpsManager;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v76 = v26;
        v77 = 2112;
        v78 = 0;
        v27 = "%{public}@Cannot create audit finished operation for accessory : %@";
        v28 = v25;
        v29 = OS_LOG_TYPE_ERROR;
        goto LABEL_24;
      }
    }

    objc_autoreleasePoolPop(v23);
LABEL_26:

    pairingsCopy = v61;
    goto LABEL_27;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = selfCopy;
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = HMFGetLogIdentifier();
    shortDescription5 = [accessoryCopy shortDescription];
    *buf = 138543618;
    v76 = v50;
    v77 = 2112;
    v78 = shortDescription5;
    _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Cannot process audit HAP pairings operation as home is nil : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v47);
LABEL_27:
}

void __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) userWithPairingIdentity:?];
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = v3;
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = v6;
  }

  [v4 addObject:v5];
}

void __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_20(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isPending] & 1) != 0 || (v4 = [HMDAddAccessoryPairingSharedUserOperation alloc], v5 = a1[4], objc_msgSend(v3, "pairingIdentity"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[HMDAddAccessoryPairingSharedUserOperation initWithAccessory:forSharedUser:sharedUserPairingIdentity:asOwner:asSharedAdmin:](v4, "initWithAccessory:forSharedUser:sharedUserPairingIdentity:asOwner:asSharedAdmin:", v5, v3, v6, objc_msgSend(v3, "isOwner"), objc_msgSend(v3, "isAdministrator")), v6, !v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v3 shortDescription];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "privilege")}];
      v14 = [v3 pairingIdentity];
      v15 = [a1[4] shortDescription];
      v16 = 138544386;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create add pairing operation for pairing identity : %@ (Pv: %@)/%@ of accessory: %@", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    [a1[6] addObject:v7];
  }
}

void __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_24(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
  v5 = [a1[4] uuid];
  v6 = [a1[4] identifier];
  v7 = [a1[5] uuid];
  v8 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v4 initWithAccessoryUUID:v5 accessoryIdentifier:v6 isOwnerIdentity:0 forSharedUser:0 sharedUserPairingIdentity:v3 homeUUIDWhereAccessoryWasPaired:v7];

  if (v8)
  {
    [a1[7] addObject:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[6];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[4] shortDescription];
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remove pairing operation for pairing identity : %@ of accessory: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (BOOL)mainWithError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v7 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v9 = [v7 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v12 | v15)
  {
    v16 = accessoryOperationStatus == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  if (v16)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = v28 = v17;
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      v23 = v30 = error;
      [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
      v24 = v29 = v18;
      *buf = 138544130;
      v32 = v21;
      v33 = 2112;
      v34 = accessoryUUID2;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to run audit operation on accessory : %@/%@, for Home: %@", buf, 0x2Au);

      v18 = v29;
      error = v30;

      v17 = v28;
    }

    objc_autoreleasePoolPop(v18);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    }
  }

  else if (accessoryOperationStatus != 1)
  {
    if (v12)
    {
      v25 = [(HMDAuditAccessoryPairingOperation *)self getPairingsFromAccessory:v12];
    }

    else
    {
      if (!v15)
      {
        v26 = 0;
        goto LABEL_25;
      }

      v25 = [(HMDAuditAccessoryPairingOperation *)self getPairingsFromAirPlayAccessory:v15];
    }

    v26 = v25;
LABEL_25:
    [(HMDAuditAccessoryPairingOperation *)self auditPairings:v26 forAccessory:v13];
  }

  return v17 ^ 1;
}

- (HMDAuditAccessoryPairingOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier homeUUIDWhereAccessoryWasPaired:(id)paired
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  pairedCopy = paired;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  if (!identifierCopy)
  {
    goto LABEL_10;
  }

  v11 = pairedCopy;
  if (pairedCopy)
  {
    v18.receiver = self;
    v18.super_class = HMDAuditAccessoryPairingOperation;
    selfCopy = [(HMDAccessoryBackgroundOperation *)&v18 initWithAccessoryUUID:dCopy accessoryIdentifier:identifierCopy homeUUIDWhereAccessoryWasPaired:pairedCopy userData:MEMORY[0x277CBEC10]];
    v13 = selfCopy;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = dCopy;
      v23 = 2112;
      v24 = identifierCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create audit accessory pairing operation for %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_171291 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_171291, &__block_literal_global_35_171292);
  }

  v3 = logCategory__hmf_once_v25_171293;

  return v3;
}

void __48__HMDAuditAccessoryPairingOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_171293;
  logCategory__hmf_once_v25_171293 = v0;
}

@end