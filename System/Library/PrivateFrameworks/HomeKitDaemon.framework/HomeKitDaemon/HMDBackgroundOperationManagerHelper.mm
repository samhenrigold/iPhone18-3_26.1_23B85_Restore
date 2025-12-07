@interface HMDBackgroundOperationManagerHelper
+ (BOOL)checkAndRaiseFaultIfHH2KeyIsMissing;
+ (BOOL)didAuditTimeExpiredOnThisAccessory:(id)accessory;
+ (BOOL)didAuditTimeExpiredOnThisAirPlayAccessory:(id)accessory;
+ (BOOL)shouldWeAuditFromLastAudit:(id)audit;
+ (id)auditAllowedAccessToRestrictedGuest:(id)guest forAccessories:(id)accessories shouldRemoveScheduledOperations:(BOOL)operations parentFlow:(id)flow;
+ (id)auditProhibitedAccessToRestrictedGuest:(id)guest forAccessories:(id)accessories shouldRemoveScheduledOperations:(BOOL)operations parentFlow:(id)flow;
+ (id)homeManager;
+ (id)logCategory;
+ (void)_scheduleRemovePairingForAccessory:(id)accessory usingPairingIdentity:(id)identity;
+ (void)addPairingOnAllAccessoriesOfHome:(id)home forSharedUser:(id)user;
+ (void)auditAllRestrictedGuestAccessoriesForHome:(id)home;
+ (void)auditSharedUserEntriesInDatabase:(id)database;
+ (void)auditSharedUserEntriesInDatabaseForAccessory:(id)accessory;
+ (void)auditSharedUserEntriesInDatabaseForHome:(id)home withCompletionHandler:(id)handler;
+ (void)dumpUsers:(id)users usingTag:(id)tag;
+ (void)makeSureToCreateBackUpOfHH2KeysIfNecessary:(id)necessary;
+ (void)removeAllScheduledOperationsForGuest:(id)guest forAccessoryUUID:(id)d;
+ (void)removeAllUsersFromAccessory:(id)accessory withCompletionHandler:(id)handler;
+ (void)removeAllUsersFromAirPlayAccessory:(id)accessory withCompletionHandler:(id)handler;
+ (void)removeAllUsersFromHAPAccessory:(id)accessory withCompletionHandler:(id)handler;
+ (void)removeAllUsersFromMatterAccessory:(id)accessory withCompletionHandler:(id)handler;
+ (void)removePairingOnAllAccessoriesOfHome:(id)home forSharedUser:(id)user;
+ (void)scheduleAddPairingForAccessory:(id)accessory forSharedUser:(id)user;
+ (void)scheduleAddPairingForAccessory:(id)accessory sharedUser:(id)user;
+ (void)scheduleFullAuditForAccessory:(id)accessory;
+ (void)scheduleRemovePairingForAccessory:(id)accessory forSharedUser:(id)user;
+ (void)scheduleRemovePairingForAccessory:(id)accessory sharedUser:(id)user;
@end

@implementation HMDBackgroundOperationManagerHelper

+ (id)logCategory
{
  if (logCategory__hmf_once_t128 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t128, &__block_literal_global_98_250753);
  }

  v3 = logCategory__hmf_once_v129;

  return v3;
}

void __50__HMDBackgroundOperationManagerHelper_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v129;
  logCategory__hmf_once_v129 = v0;
}

+ (void)removeAllScheduledOperationsForGuest:(id)guest forAccessoryUUID:(id)d
{
  v13[2] = *MEMORY[0x277D85DE8];
  guestCopy = guest;
  dCopy = d;
  if ([guestCopy isRestrictedGuest])
  {
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    homeManager = [self homeManager];
    bgOpsManager = [homeManager bgOpsManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__HMDBackgroundOperationManagerHelper_removeAllScheduledOperationsForGuest_forAccessoryUUID___block_invoke;
    v11[3] = &unk_278685618;
    v12 = guestCopy;
    [bgOpsManager removeOperationsForAccessoryIdentifier:dCopy operationKind:v8 withBlock:v11];
  }
}

uint64_t __93__HMDBackgroundOperationManagerHelper_removeAllScheduledOperationsForGuest_forAccessoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v5;
  if ((v5 || (v9 = v8) != 0) && ([v9 guestUUID], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [*(a1 + 32) uuid];
    v13 = HMFEqualObjects();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)auditProhibitedAccessToRestrictedGuest:(id)guest forAccessories:(id)accessories shouldRemoveScheduledOperations:(BOOL)operations parentFlow:(id)flow
{
  operationsCopy = operations;
  guestCopy = guest;
  accessoriesCopy = accessories;
  flowCopy = flow;
  home = [guestCopy home];
  if (operationsCopy)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke;
    v30[3] = &unk_278685550;
    v31 = guestCopy;
    [accessoriesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  }

  v14 = MEMORY[0x277D0F7C0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2;
  v25[3] = &unk_2786855A0;
  v26 = home;
  v27 = flowCopy;
  v28 = guestCopy;
  selfCopy = self;
  v15 = guestCopy;
  v16 = flowCopy;
  v17 = home;
  v18 = [accessoriesCopy na_map:v25];
  v19 = [v14 allSettled:v18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_94;
  v23[3] = &unk_2786868A0;
  v24 = accessoriesCopy;
  v20 = accessoriesCopy;
  v21 = [v19 then:v23];

  return v21;
}

id __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() findAccessoryUsing:v3 fromHome:*(a1 + 32)];
  v5 = v4;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 56);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      *buf = 138543874;
      v46 = v24;
      v47 = 2112;
      v48 = v3;
      v49 = 2112;
      v50 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory with UUID : %@ in home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = MEMORY[0x277D0F7C0];
    v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2020];
    v20 = [v26 futureWithError:v9];
    goto LABEL_15;
  }

  v6 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ((isKindOfClass & 1) == 0 || ([v6 supportsAnyInPersonAccess] & 1) == 0)
  {
    v20 = [MEMORY[0x277D0F7C0] futureWithNoValue];
LABEL_15:
    v19 = v20;
    goto LABEL_16;
  }

  v38 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v36 = HMFGetLogIdentifier();
    v35 = [v38 UUID];
    v13 = [*(a1 + 40) UUID];
    v14 = [v6 shortDescription];
    [*(a1 + 48) shortDescription];
    v15 = v37 = v10;
    *buf = 138544386;
    v46 = v36;
    v47 = 2112;
    v48 = v35;
    v49 = 2112;
    v50 = v13;
    v51 = 2112;
    v52 = v14;
    v53 = 2112;
    v54 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] auditProhibitedAccessToRestrictedGuest with accessory: %@ and restricted guest:%@", buf, 0x34u);

    v10 = v37;
  }

  objc_autoreleasePoolPop(v10);
  v16 = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v6 restrictedGuest:*(a1 + 48)];
  if (v16)
  {
    v17 = [*(a1 + 56) homeManager];
    v18 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v16 executeOperationWithHomeManager:v17 flow:v38];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_92;
    v39[3] = &unk_2786855F0;
    v44 = *(a1 + 56);
    v40 = v38;
    v41 = v3;
    v42 = *(a1 + 48);
    v43 = v16;
    v19 = [v18 then:v39];
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 56);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v38 UUID];
      v33 = [*(a1 + 48) uuid];
      *buf = 138544130;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v3;
      v51 = 2112;
      v52 = v33;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create audit prohibited accessory restricted guest operation for accessory: %@ and restricted guest: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277D0F7C0];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v19 = [v34 futureWithError:v17];
  }

LABEL_16:

  return v19;
}

uint64_t __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_95;
  v12 = &unk_2786855C8;
  v13 = v6;
  v14 = *(a1 + 32);
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];

  v7 = objc_msgSend_copy(v6, v9, v10, v11, v12, v13);
  return 1;
}

void __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_95(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

uint64_t __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_92(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 64);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) UUID];
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) uuid];
      v26 = 138544130;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Audit Prohibited restricted guest operation for accessory: %@ and restricted guest: %@ failed.", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    if ([v3 shouldReschedule])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 64);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 32) UUID];
        v17 = *(a1 + 40);
        v18 = [*(a1 + 48) uuid];
        v26 = 138544130;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resulted in an unexpected failure, will schedule work for accessory: %@ and guest %@.", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      v19 = [*(a1 + 64) homeManager];
      v20 = [v19 bgOpsManager];
      [v20 addOperation:*(a1 + 56)];
    }

    v21 = [v3 error];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

+ (id)auditAllowedAccessToRestrictedGuest:(id)guest forAccessories:(id)accessories shouldRemoveScheduledOperations:(BOOL)operations parentFlow:(id)flow
{
  operationsCopy = operations;
  guestCopy = guest;
  accessoriesCopy = accessories;
  flowCopy = flow;
  home = [guestCopy home];
  if (operationsCopy)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke;
    v30[3] = &unk_278685550;
    v31 = guestCopy;
    [accessoriesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  }

  v14 = MEMORY[0x277D0F7C0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2;
  v25[3] = &unk_2786855A0;
  v26 = home;
  v27 = flowCopy;
  v28 = guestCopy;
  selfCopy = self;
  v15 = guestCopy;
  v16 = flowCopy;
  v17 = home;
  v18 = [accessoriesCopy na_map:v25];
  v19 = [v14 allSettled:v18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_87;
  v23[3] = &unk_2786868A0;
  v24 = accessoriesCopy;
  v20 = accessoriesCopy;
  v21 = [v19 then:v23];

  return v21;
}

id __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() findAccessoryUsing:v3 fromHome:*(a1 + 32)];
  v5 = v4;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 56);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      *buf = 138543874;
      v46 = v24;
      v47 = 2112;
      v48 = v3;
      v49 = 2112;
      v50 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory with UUID : %@ in home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = MEMORY[0x277D0F7C0];
    v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2020];
    v20 = [v26 futureWithError:v9];
    goto LABEL_15;
  }

  v6 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ((isKindOfClass & 1) == 0 || ([v6 supportsAnyInPersonAccess] & 1) == 0)
  {
    v20 = [MEMORY[0x277D0F7C0] futureWithNoValue];
LABEL_15:
    v19 = v20;
    goto LABEL_16;
  }

  v38 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v36 = HMFGetLogIdentifier();
    v35 = [v38 UUID];
    v13 = [*(a1 + 40) UUID];
    v14 = [v6 shortDescription];
    [*(a1 + 48) shortDescription];
    v15 = v37 = v10;
    *buf = 138544386;
    v46 = v36;
    v47 = 2112;
    v48 = v35;
    v49 = 2112;
    v50 = v13;
    v51 = 2112;
    v52 = v14;
    v53 = 2112;
    v54 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] auditAllowedAccessToRestrictedGuest with accessory: %@ and restricted guest:%@", buf, 0x34u);

    v10 = v37;
  }

  objc_autoreleasePoolPop(v10);
  v16 = [[HMDAuditAllowedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v6 restrictedGuest:*(a1 + 48)];
  if (v16)
  {
    v17 = [*(a1 + 56) homeManager];
    v18 = [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v16 executeOperationWithHomeManager:v17 flow:v38];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_84;
    v39[3] = &unk_278685578;
    v44 = *(a1 + 56);
    v40 = v38;
    v41 = v3;
    v42 = *(a1 + 48);
    v43 = v16;
    v19 = [v18 then:v39];
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 56);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v38 UUID];
      v33 = [*(a1 + 48) uuid];
      *buf = 138544130;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v3;
      v51 = 2112;
      v52 = v33;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create audit allowed accessory restricted guest operation for accessory: %@ and restricted guest: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277D0F7C0];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v19 = [v34 futureWithError:v17];
  }

LABEL_16:

  return v19;
}

uint64_t __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_89;
  v12 = &unk_2786855C8;
  v13 = v6;
  v14 = *(a1 + 32);
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];

  v7 = objc_msgSend_copy(v6, v9, v10, v11, v12, v13);
  return 1;
}

void __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_89(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

uint64_t __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_84(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    [v3 credentialsRemoved];
    v9 = HMFBooleanToString();
    v10 = *(a1 + 40);
    v33 = 138544130;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Audit allowed accessory operation had an end state for credentials to be removed as %@ for accessory: %@", &v33, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [v3 error];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 64);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) UUID];
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) uuid];
      v33 = 138544130;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Audit Allowed restricted guest operation for accessory: %@ and restricted guest: %@ failed.", &v33, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if ([v3 shouldReschedule])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 64);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 32) UUID];
        v24 = *(a1 + 40);
        v25 = [*(a1 + 48) uuid];
        v33 = 138544130;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        v37 = 2112;
        v38 = v24;
        v39 = 2112;
        v40 = v25;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resulted in an unexpected failure, will schedule work for accessory: %@ and guest %@.", &v33, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
      v26 = [*(a1 + 64) homeManager];
      v27 = [v26 bgOpsManager];
      [v27 addOperation:*(a1 + 56)];
    }

    v28 = [v3 error];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  return v31;
}

+ (void)auditAllRestrictedGuestAccessoriesForHome:(id)home
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  restrictedGuests = [homeCopy restrictedGuests];
  hmf_isEmpty = [restrictedGuests hmf_isEmpty];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (hmf_isEmpty)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@The home does not have any restricted guests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = homeCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting the full audit for accessories which are restricted for the home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    backingStore = [homeCopy backingStore];
    context = [backingStore context];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__HMDBackgroundOperationManagerHelper_auditAllRestrictedGuestAccessoriesForHome___block_invoke;
    v15[3] = &unk_2786852B8;
    v16 = homeCopy;
    v17 = buf;
    v18 = selfCopy;
    [context performBlockWithPinnedQueryGeneration:v15];

    _Block_object_dispose(buf, 8);
  }
}

void __81__HMDBackgroundOperationManagerHelper_auditAllRestrictedGuestAccessoriesForHome___block_invoke(uint64_t a1)
{
  v1 = a1;
  v123[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v123[0] = objc_opt_class();
    v123[1] = objc_opt_class();
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
    v4 = [*(v1 + 32) homeManager];
    v91 = [v4 bgOpsManager];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = [v3 accessories];
    v5 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
    if (!v5)
    {
      goto LABEL_57;
    }

    v7 = v5;
    v8 = *v109;
    *&v6 = 138544130;
    v85 = v6;
    v95 = v1;
    v90 = v3;
    v86 = *v109;
    while (1)
    {
      v9 = 0;
      v88 = v7;
      do
      {
        if (*v109 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v108 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        if ([v10 hasRGCapableService])
        {
          v11 = [v10 lastPairingAuditTimeForRG];
          if (!v11 || (v12 = v11, [v10 lastPairingAuditTimeForRG], v13 = v10, v14 = v9, v15 = objc_claimAutoreleasedReturnValue(), v16 = +[HMDBackgroundOperationManagerHelper shouldWeAuditFromLastAudit:](HMDBackgroundOperationManagerHelper, "shouldWeAuditFromLastAudit:", v15), v15, v9 = v14, v10 = v13, v12, v16))
          {
            v93 = v9;
            v17 = [v10 modelID];
            [v91 removeOperationsForAccessoryIdentifier:v17 operationKind:v87];

            v96 = [MEMORY[0x277CBEB18] array];
            v18 = [v10 modelID];
            v19 = [HMDBackgroundOperationManager findAccessoryUsing:v18 fromHome:*(v1 + 32)];

            v99 = v19;
            if (v19)
            {
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v89 = v10;
              v20 = [v10 allowedGuests];
              v21 = [v20 countByEnumeratingWithState:&v104 objects:v121 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v105;
                v97 = *v105;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v105 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(v1 + 32);
                    v26 = [*(*(&v104 + 1) + 8 * i) modelID];
                    v27 = [v25 userWithUUID:v26];

                    if (v27 && [v27 isRestrictedGuest])
                    {
                      v28 = objc_autoreleasePoolPush();
                      v29 = *(v1 + 48);
                      v30 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                      {
                        v31 = HMFGetLogIdentifier();
                        [v27 uuid];
                        v33 = v32 = v20;
                        v34 = [v99 uuid];
                        *buf = 138543874;
                        v113 = v31;
                        v114 = 2112;
                        v115 = v33;
                        v116 = 2112;
                        v117 = v34;
                        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Making sure guest's %@ credentials is on accessory %@", buf, 0x20u);

                        v20 = v32;
                        v23 = v97;

                        v1 = v95;
                      }

                      objc_autoreleasePoolPop(v28);
                      v35 = [[HMDAuditAllowedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v99 restrictedGuest:v27];
                      if (v35)
                      {
                        [v96 addObject:v35];
                      }
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v104 objects:v121 count:16];
                }

                while (v22);
              }

              v36 = [v90 guests];
              v37 = [v36 asSet];
              v38 = [v89 allowedGuests];
              v39 = [v38 asSet];
              v40 = [v37 na_setByRemovingObjectsFromSet:v39];

              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v98 = v40;
              v41 = [v98 countByEnumeratingWithState:&v100 objects:v120 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v101;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v101 != v43)
                    {
                      objc_enumerationMutation(v98);
                    }

                    v45 = *(v1 + 32);
                    v46 = [*(*(&v100 + 1) + 8 * j) modelID];
                    v47 = [v45 userWithUUID:v46];

                    if (v47 && [v47 isRestrictedGuest])
                    {
                      v48 = objc_autoreleasePoolPush();
                      v49 = *(v1 + 48);
                      v50 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                      {
                        v51 = HMFGetLogIdentifier();
                        v52 = [v47 uuid];
                        v53 = [v99 uuid];
                        *buf = 138543874;
                        v113 = v51;
                        v114 = 2112;
                        v115 = v52;
                        v116 = 2112;
                        v117 = v53;
                        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Making sure guest's %@ credentials isn't on accessory %@", buf, 0x20u);

                        v1 = v95;
                      }

                      objc_autoreleasePoolPop(v48);
                      v54 = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v99 restrictedGuest:v47];
                      if (v54)
                      {
                        [v96 addObject:v54];
                      }
                    }
                  }

                  v42 = [v98 countByEnumeratingWithState:&v100 objects:v120 count:16];
                }

                while (v42);
              }

              v55 = [[HMDPersistAuditAccessoryResultOperation alloc] initForRestrictedGuestWithAccessory:v99];
              if (v55)
              {
                [v96 addObject:v55];
                v56 = objc_msgSend_copy(v96);
                v57 = [v91 scheduleOperationsWithDependenciesOnEachOtherFromArray:v56];

                v58 = objc_autoreleasePoolPush();
                v59 = *(v1 + 48);
                v60 = HMFGetOSLogHandle();
                v61 = v60;
                v9 = v93;
                if (v57)
                {
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                  {
                    v62 = HMFGetLogIdentifier();
                    v63 = [v99 uuid];
                    v64 = [v99 identifier];
                    *buf = v85;
                    v113 = v62;
                    v114 = 2112;
                    v115 = v96;
                    v116 = 2112;
                    v117 = v63;
                    v118 = 2112;
                    v119 = v64;
                    v65 = v61;
                    v66 = OS_LOG_TYPE_INFO;
                    v67 = "%{public}@[RG] Successfully added the operations to the BGOperationManager : %@ for accessory: %@/%@";
                    goto LABEL_51;
                  }
                }

                else if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v62 = HMFGetLogIdentifier();
                  v63 = [v99 uuid];
                  v64 = [v99 identifier];
                  *buf = v85;
                  v113 = v62;
                  v114 = 2112;
                  v115 = v96;
                  v116 = 2112;
                  v117 = v63;
                  v118 = 2112;
                  v119 = v64;
                  v65 = v61;
                  v66 = OS_LOG_TYPE_ERROR;
                  v67 = "%{public}@[RG] Unable to schedule all the audit operations : %@ for accessory: %@/%@. Removing them";
LABEL_51:
                  _os_log_impl(&dword_229538000, v65, v66, v67, buf, 0x2Au);

                  v1 = v95;
                }

                objc_autoreleasePoolPop(v58);
                *(*(*(v1 + 40) + 8) + 24) = 1;
              }

              else
              {
                v75 = objc_autoreleasePoolPush();
                v76 = *(v1 + 48);
                v77 = HMFGetOSLogHandle();
                v9 = v93;
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  v78 = HMFGetLogIdentifier();
                  v79 = [v99 shortDescription];
                  *buf = 138543618;
                  v113 = v78;
                  v114 = 2112;
                  v115 = v79;
                  _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit pairing operation for accessory: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v75);
              }

              v3 = v90;

              v7 = v88;
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              v69 = *(v1 + 48);
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                v72 = v10;
                v73 = v71;
                v74 = [v72 debugDescription];
                *buf = 138543618;
                v113 = v73;
                v114 = 2112;
                v115 = v74;
                _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@Strange: Couldn't find the accessory in the memory but exist in working store : %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v68);
              v7 = v88;
              v9 = v93;
            }

            v8 = v86;
          }
        }

        objc_autoreleasePoolPop(context);
        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
      if (!v7)
      {
LABEL_57:

        if (*(*(*(v1 + 40) + 8) + 24) == 1)
        {
          [v91 evaluateOperations];
        }

        goto LABEL_63;
      }
    }
  }

  v80 = objc_autoreleasePoolPush();
  v81 = *(v1 + 48);
  v82 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    v83 = HMFGetLogIdentifier();
    v84 = [*(v1 + 32) uuid];
    *buf = 138543618;
    v113 = v83;
    v114 = 2112;
    v115 = v84;
    _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_ERROR, "%{public}@Could not start audit for home as it was not found inside working store: %@", buf, 0x16u);

    v3 = 0;
  }

  objc_autoreleasePoolPop(v80);
LABEL_63:
}

+ (void)makeSureToCreateBackUpOfHH2KeysIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (+[HMDAuditHH2KeysForBackupOperation shouldWeScheduleHH2KeyBackupOperation])
  {
    v3 = [HMDAuditHH2KeysForBackupOperation alloc];
    v4 = [(HMDBackgroundOperation *)v3 initWithUserData:MEMORY[0x277CBEC10]];
    [necessaryCopy addOperation:v4];
    [necessaryCopy evaluateOperations];
  }
}

+ (BOOL)checkAndRaiseFaultIfHH2KeyIsMissing
{
  v13 = *MEMORY[0x277D85DE8];
  homeManager = [self homeManager];
  bgOpsManager = [homeManager bgOpsManager];
  getHH2ControllerKey = [bgOpsManager getHH2ControllerKey];

  if (!getHH2ControllerKey)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Missing HH2 Controller Key. Please Debug!!!", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  return getHH2ControllerKey == 0;
}

+ (BOOL)shouldWeAuditFromLastAudit:(id)audit
{
  v3 = MEMORY[0x277CBEAA8];
  auditCopy = audit;
  date = [v3 date];
  [date timeIntervalSinceDate:auditCopy];
  v7 = v6;

  return v7 >= 604800.0;
}

+ (void)removeAllUsersFromAirPlayAccessory:(id)accessory withCompletionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  aBlock = handler;
  v7 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  home = [v9 home];
  v11 = home;
  if (v9)
  {
    v12 = home == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      shortDescription = [v9 shortDescription];
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = shortDescription;
      *&buf[22] = 2112;
      v51 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid instance of airplay accessory: %@ or Home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = _Block_copy(aBlock);
    v20 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    users = [home users];
    v20 = [users na_filter:&__block_literal_global_68_250799];

    v21 = [v20 count];
    if (v21)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v51 = __Block_byref_object_copy__250801;
      v52 = __Block_byref_object_dispose__250802;
      v53 = 0;
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v49[3] = 0;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_69;
      v41[3] = &unk_278685490;
      v45 = v49;
      v46 = buf;
      selfCopy2 = self;
      v48 = v21;
      v22 = v7;
      v42 = v22;
      v43 = v11;
      v44 = aBlock;
      v23 = _Block_copy(v41);
      v24 = [v20 sortedArrayUsingComparator:&__block_literal_global_74_250803];
      reverseObjectEnumerator = [v24 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_70;
      v36[3] = &unk_278685508;
      selfCopy3 = self;
      v37 = v22;
      v38 = v9;
      v27 = v23;
      v39 = v27;
      [allObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v36];

      _Block_object_dispose(v49, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        shortDescription2 = [v9 shortDescription];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = shortDescription2;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No admin users exist on this home. Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = _Block_copy(aBlock);
      v34 = v33;
      if (v33)
      {
        (*(v33 + 2))(v33);
      }
    }
  }
}

void __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if (v4)
  {
    v5 = *(*(a1 + 64) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 72);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
    v14 = [*(a1 + 32) shortDescription];
    v34 = 138544386;
    v35 = v11;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removed accessory pairing finished with error: %@, pairingsRemoved: (%@/%@), accessory: %@", &v34, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 80))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 72);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
      v20 = MEMORY[0x277CCABB0];
      v21 = [*(a1 + 40) users];
      v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v23 = [*(a1 + 32) shortDescription];
      v34 = 138544130;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Removed all pairings (%@/%@) from accessory %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v24 = _Block_copy(*(a1 + 48));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 72);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 32) shortDescription];
        v31 = *(*(*(a1 + 64) + 8) + 40);
        v34 = 138543874;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Since we could not remove all the pairings from the accessory: %@, let's schedule database audit on the database: %@", &v34, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = *(a1 + 72);
      v33 = [*(a1 + 40) homeManager];
      [v32 auditSharedUserEntriesInDatabase:v33];
    }
  }
}

void __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_70(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 56);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) shortDescription];
    v9 = [v3 pairingIdentity];
    v10 = [v9 identifier];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to perform remove pairing operation of accessory: %@ for user:  %@ / %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) removeUser:v3 completionHandler:*(a1 + 48)];
}

+ (BOOL)didAuditTimeExpiredOnThisAirPlayAccessory:(id)accessory
{
  accessoryCopy = accessory;
  lastPairingAuditTime = [accessoryCopy lastPairingAuditTime];

  if (lastPairingAuditTime)
  {
    lastPairingAuditTime2 = [accessoryCopy lastPairingAuditTime];
    v6 = [HMDBackgroundOperationManagerHelper shouldWeAuditFromLastAudit:lastPairingAuditTime2];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (void)removeAllUsersFromHAPAccessory:(id)accessory withCompletionHandler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  handlerCopy = handler;
  v8 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  bridge = [v10 bridge];

  if (bridge)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      shortDescription = [v10 shortDescription];
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = shortDescription;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = _Block_copy(handlerCopy);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }

  else
  {
    home = [v10 home];
    v18 = home;
    if (v10)
    {
      v20 = home == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        shortDescription2 = [v10 shortDescription];
        *buf = 138543874;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = shortDescription2;
        *&buf[22] = 2112;
        v60 = v18;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid instance of accessory: %@ or Home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = _Block_copy(handlerCopy);
      v28 = v26;
      if (v26)
      {
        (*(v26 + 2))(v26);
      }
    }

    else
    {
      users = [home users];
      v28 = [users na_filter:&__block_literal_global_61_250816];

      v29 = [v28 count];
      if (v29)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v60 = __Block_byref_object_copy__250801;
        v61 = __Block_byref_object_dispose__250802;
        v62 = 0;
        v58[0] = 0;
        v58[1] = v58;
        v58[2] = 0x2020000000;
        v58[3] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_62;
        aBlock[3] = &unk_278685490;
        v54 = v58;
        v55 = buf;
        selfCopy3 = self;
        v57 = v29;
        v30 = v8;
        v51 = v30;
        v31 = v18;
        v52 = v31;
        v53 = handlerCopy;
        v41 = _Block_copy(aBlock);
        v32 = [v28 sortedArrayUsingComparator:&__block_literal_global_74_250803];
        reverseObjectEnumerator = [v32 reverseObjectEnumerator];
        contexta = [reverseObjectEnumerator allObjects];

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_64;
        v44[3] = &unk_2786854E0;
        selfCopy4 = self;
        v45 = v30;
        v46 = v10;
        v47 = v31;
        v34 = v41;
        v48 = v34;
        [contexta hmf_enumerateWithAutoreleasePoolUsingBlock:v44];

        _Block_object_dispose(v58, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        context = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          shortDescription3 = [v10 shortDescription];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = shortDescription3;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@No admin users exist on this home. Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v39 = _Block_copy(handlerCopy);
        v40 = v39;
        if (v39)
        {
          (*(v39 + 2))(v39);
        }
      }
    }
  }
}

void __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_62(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if (v4)
  {
    v5 = *(*(a1 + 64) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 72);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
    v14 = [*(a1 + 32) shortDescription];
    v34 = 138544386;
    v35 = v11;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove accessory pairing finished with error: %@, pairingsRemoved: (%@/%@), accessory: %@", &v34, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 80))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 72);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
      v20 = MEMORY[0x277CCABB0];
      v21 = [*(a1 + 40) users];
      v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v23 = [*(a1 + 32) shortDescription];
      v34 = 138544130;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Removed all pairings (%@/%@) from accessory %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v24 = _Block_copy(*(a1 + 48));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 72);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 32) shortDescription];
        v31 = *(*(*(a1 + 64) + 8) + 40);
        v34 = 138543874;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Since we could not remove all the pairings from the accessory: %@, let's schedule database audit on the database: %@", &v34, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = *(a1 + 72);
      v33 = [*(a1 + 40) homeManager];
      [v32 auditSharedUserEntriesInDatabase:v33];
    }
  }
}

void __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) shortDescription];
    v9 = [v3 pairingIdentity];
    v10 = [v9 identifier];
    *buf = 138544130;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to perform remove pairing operation of accessory: %@ for user:  %@ / %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_65;
  v14[3] = &unk_2786854B8;
  v19 = *(a1 + 64);
  v15 = v3;
  v11 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v12 = *(a1 + 56);
  v13 = v3;
  [v11 performOperation:6 linkType:0 operationBlock:v14 errorBlock:v12];
}

void __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) pairingIdentity];
    v9 = [v8 identifier];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) shortDescription];
    v26 = 138544130;
    v27 = v7;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairing %@ for user : %@ from accessory: %@", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v12 = [v3 server];
  if ([*(a1 + 32) isCurrentUser])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 64);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) pairingIdentity];
      v18 = [v17 identifier];
      v19 = [*(a1 + 40) shortDescription];
      v26 = 138543874;
      v27 = v16;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairing for current user: %@ from accessory: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = [*(a1 + 48) workQueue];
    [v12 removePairingForCurrentControllerOnQueue:v20 completion:*(a1 + 56)];
  }

  else
  {
    v20 = [*(a1 + 32) pairingIdentity];
    v21 = [v20 identifier];
    v22 = [*(a1 + 32) pairingIdentity];
    v23 = [v22 publicKey];
    v24 = [v23 data];
    v25 = [*(a1 + 48) workQueue];
    [v12 removePairingIdentifier:v21 pairingPublicKey:v24 completionQueue:v25 completionHandler:*(a1 + 56)];
  }
}

+ (void)removeAllUsersFromMatterAccessory:(id)accessory withCompletionHandler:(id)handler
{
  v62 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  handlerCopy = handler;
  home = [accessoryCopy home];
  featuresDataSource = [home featuresDataSource];
  isRVCEnabled = [featuresDataSource isRVCEnabled];

  if (isRVCEnabled)
  {
    v11 = accessoryCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (home && v11 && (isKindOfClass & 1) != 0)
    {
      accessoryServer = [v11 accessoryServer];
      if (accessoryServer)
      {
        users = [home users];
        v14 = [users na_filter:&__block_literal_global_250829];

        if ([v14 count])
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v61) = 0;
          v15 = dispatch_group_create();
          v16 = [v14 sortedArrayUsingComparator:&__block_literal_global_74_250803];
          reverseObjectEnumerator = [v16 reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_54;
          v53[3] = &unk_278685440;
          v18 = v15;
          v54 = v18;
          selfCopy = self;
          v19 = v11;
          v55 = v19;
          v56 = accessoryServer;
          v20 = home;
          v57 = v20;
          v58 = buf;
          [allObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v53];
          workQueue = [v20 workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_59;
          block[3] = &unk_278685468;
          v51 = buf;
          selfCopy2 = self;
          v48 = v19;
          v49 = v20;
          v50 = handlerCopy;
          dispatch_group_notify(v18, workQueue, block);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            shortDescription = [v11 shortDescription];
            *buf = 138543618;
            *&buf[4] = v41;
            *&buf[12] = 2112;
            *&buf[14] = shortDescription;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@No admin users exist on this home. Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          v43 = _Block_copy(handlerCopy);
          v44 = v43;
          if (v43)
          {
            (*(v43 + 2))(v43);
          }
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          shortDescription2 = [v11 shortDescription];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = shortDescription2;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@No accessory server found for accessory: %@. Scheduling database audit", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        homeManager = [home homeManager];
        [selfCopy4 auditSharedUserEntriesInDatabase:homeManager];

        v37 = _Block_copy(handlerCopy);
        v14 = v37;
        if (v37)
        {
          (*(v37 + 2))(v37);
        }
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        shortDescription3 = [v11 shortDescription];
        *buf = 138543874;
        *&buf[4] = v27;
        *&buf[12] = 2112;
        *&buf[14] = shortDescription3;
        *&buf[22] = 2112;
        v61 = home;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid instance of accessory: %@ or Home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v29 = _Block_copy(handlerCopy);
      v30 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29);
      }
    }
  }

  else
  {
    v22 = _Block_copy(handlerCopy);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22);
    }
  }
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  if ([v3 isCurrentUser])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 72);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v3 pairingIdentity];
      v9 = [v8 identifier];
      v10 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v33 = v7;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairing for current user: %@ from accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = *(a1 + 48);
    v12 = [*(a1 + 56) workQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_55;
    v28[3] = &unk_278685418;
    v31[2] = *(a1 + 72);
    v13 = &v29;
    v14 = &v30;
    v29 = *(a1 + 40);
    v30 = v3;
    v31[1] = *(a1 + 64);
    v15 = v31;
    v31[0] = *(a1 + 32);
    v16 = v3;
    [v11 removePairingForCurrentControllerOnQueue:v12 completion:v28];
  }

  else
  {
    v23 = *(a1 + 48);
    v12 = [v3 pairingIdentity];
    v22 = [v12 identifier];
    v17 = [v3 pairingIdentity];
    v18 = [v17 publicKey];
    v19 = [v18 data];
    v20 = [*(a1 + 56) workQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_57;
    v24[3] = &unk_278685418;
    v27[2] = *(a1 + 72);
    v13 = &v25;
    v14 = &v26;
    v25 = *(a1 + 40);
    v26 = v3;
    v27[1] = *(a1 + 64);
    v15 = v27;
    v27[0] = *(a1 + 32);
    v21 = v3;
    [v23 removePairingIdentifier:v22 pairingPublicKey:v19 completionQueue:v20 completionHandler:v24];
  }
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_59(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 64);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 32) shortDescription];
      v11 = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Since we could not remove all the pairings from the accessory: %@, let's schedule database audit on the database", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 64);
    v8 = [*(a1 + 40) homeManager];
    [v7 auditSharedUserEntriesInDatabase:v8];
  }

  v9 = _Block_copy(*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 64);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) shortDescription];
      v9 = [*(a1 + 40) shortDescription];
      v10 = 138544130;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing from accessory: %@ for user %@ with error: %@", &v10, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_57(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 64);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) shortDescription];
      v9 = [*(a1 + 40) shortDescription];
      v10 = 138544130;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing from accessory: %@ for user %@ with error: %@", &v10, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

+ (void)removeAllUsersFromAccessory:(id)accessory withCompletionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = accessoryCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = accessoryCopy;
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

  if (v15)
  {
    [HMDBackgroundOperationManagerHelper removeAllUsersFromMatterAccessory:v15 withCompletionHandler:handlerCopy];
  }

  else if (v9)
  {
    if ([v9 supportsAccessCode] & 1) != 0 || (objc_msgSend(v9, "supportsWalletKey"))
    {
      home = [v9 home];
      v29 = dispatch_get_global_queue(25, 0);
      v28 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v29];
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        [v13 uuid];
        v21 = v27 = home;
        *buf = 138543618;
        v36 = v20;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing Matter users from accessory: %@", buf, 0x16u);

        home = v27;
      }

      objc_autoreleasePoolPop(v17);
      v22 = [home removeUsersFromAccessory:v9];
      ignoreOutcome = [v22 ignoreOutcome];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __89__HMDBackgroundOperationManagerHelper_removeAllUsersFromAccessory_withCompletionHandler___block_invoke;
      v30[3] = &unk_2786853D0;
      v34 = selfCopy;
      v31 = v13;
      v32 = v9;
      v33 = handlerCopy;
      v24 = [ignoreOutcome inContext:v28 then:v30];
    }

    else
    {
      [HMDBackgroundOperationManagerHelper removeAllUsersFromHAPAccessory:v9 withCompletionHandler:handlerCopy];
    }
  }

  else if (v12)
  {
    [HMDBackgroundOperationManagerHelper removeAllUsersFromAirPlayAccessory:v12 withCompletionHandler:handlerCopy];
  }

  else
  {
    v25 = _Block_copy(handlerCopy);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25);
    }
  }
}

uint64_t __89__HMDBackgroundOperationManagerHelper_removeAllUsersFromAccessory_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 56);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) uuid];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Finished removing Matter users from accessory: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [HMDBackgroundOperationManagerHelper removeAllUsersFromHAPAccessory:*(a1 + 40) withCompletionHandler:*(a1 + 48)];

  return 1;
}

+ (BOOL)didAuditTimeExpiredOnThisAccessory:(id)accessory
{
  accessoryCopy = accessory;
  lastPairingAuditTime = [accessoryCopy lastPairingAuditTime];

  if (lastPairingAuditTime)
  {
    lastPairingAuditTime2 = [accessoryCopy lastPairingAuditTime];
    v6 = [HMDBackgroundOperationManagerHelper shouldWeAuditFromLastAudit:lastPairingAuditTime2];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (void)_scheduleRemovePairingForAccessory:(id)accessory usingPairingIdentity:(id)identity
{
  v40 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identityCopy = identity;
  castIfHAPAccessory = [accessoryCopy castIfHAPAccessory];
  v9 = castIfHAPAccessory;
  if (castIfHAPAccessory && isBridgedAccessory(castIfHAPAccessory))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      uniqueIdentifier = [v9 uniqueIdentifier];
      v32 = 138543618;
      v33 = v13;
      v34 = 2112;
      v35 = uniqueIdentifier;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(c) Not scheduling remove pairing operation for accessory: %@", &v32, 0x16u);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  identifier = [accessoryCopy identifier];

  if (identifier)
  {
    v16 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
    modelID = [accessoryCopy modelID];
    identifier2 = [accessoryCopy identifier];
    home = [accessoryCopy home];
    modelID2 = [home modelID];
    v21 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v16 initWithAccessoryUUID:modelID accessoryIdentifier:identifier2 isOwnerIdentity:0 forSharedUser:0 sharedUserPairingIdentity:identityCopy homeUUIDWhereAccessoryWasPaired:modelID2];

    if (v21)
    {
      homeManager = [self homeManager];
      bgOpsManager = [homeManager bgOpsManager];
      [bgOpsManager addOperation:v21];

      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v27;
        v34 = 2112;
        v35 = v21;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@(c) Scheduled remove pairing operation for pairing identity : %@", &v32, 0x16u);
LABEL_15:
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        modelID3 = [accessoryCopy modelID];
        identifier3 = [accessoryCopy identifier];
        v32 = 138544130;
        v33 = v27;
        v34 = 2112;
        v35 = identityCopy;
        v36 = 2112;
        v37 = modelID3;
        v38 = 2112;
        v39 = identifier3;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@(c) Failed to create remove pairing operation for pairing identity : %@, %@/%@", &v32, 0x2Au);

        goto LABEL_15;
      }
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_17;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    uniqueIdentifier = [accessoryCopy modelID];
    identifier4 = [accessoryCopy identifier];
    v32 = 138543874;
    v33 = v13;
    v34 = 2112;
    v35 = uniqueIdentifier;
    v36 = 2112;
    v37 = identifier4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(c) Cannot remove pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@", &v32, 0x20u);

    goto LABEL_11;
  }

LABEL_12:

  objc_autoreleasePoolPop(v10);
LABEL_17:
}

+ (void)scheduleRemovePairingForAccessory:(id)accessory sharedUser:(id)user
{
  v45 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userCopy = user;
  castIfHAPAccessory = [accessoryCopy castIfHAPAccessory];
  v9 = castIfHAPAccessory;
  if (castIfHAPAccessory && isBridgedAccessory(castIfHAPAccessory))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      uniqueIdentifier = [v9 uniqueIdentifier];
      *buf = 138543874;
      v40 = v13;
      v41 = 2112;
      v42 = uniqueIdentifier;
      v43 = 2112;
      v44 = userCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(b) Not scheduling remove pairing operation for accessory: %@ and shared user: %@", buf, 0x20u);
LABEL_12:

LABEL_15:
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  identifier = [accessoryCopy identifier];

  if (identifier)
  {
    if (([(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy isAllowedToAddOrRemoveHAPPairingsOnAccessory]& 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v13;
        v41 = 2112;
        v42 = userCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(b) Cannot remove pairing for user as not allowed by policy: %@", buf, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v37 = v9;
    v16 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
    modelID = [accessoryCopy modelID];
    identifier2 = [accessoryCopy identifier];
    isOwner = [(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy isOwner];
    uuid = [(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy uuid];
    v38 = userCopy;
    pairingIdentity = [(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy pairingIdentity];
    home = [accessoryCopy home];
    modelID2 = [home modelID];
    v24 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v16 initWithAccessoryUUID:modelID accessoryIdentifier:identifier2 isOwnerIdentity:isOwner forSharedUser:uuid sharedUserPairingIdentity:pairingIdentity homeUUIDWhereAccessoryWasPaired:modelID2];

    if (v24)
    {
      homeManager = [self homeManager];
      bgOpsManager = [homeManager bgOpsManager];
      [bgOpsManager addOperation:v24];

      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v40 = v30;
        v41 = 2112;
        userCopy = v38;
        v42 = v38;
        v43 = 2112;
        v44 = v24;
        v31 = "%{public}@(b) Scheduled remove pairing operation for shared user : %@, %@";
        v32 = v29;
        v33 = OS_LOG_TYPE_INFO;
        v34 = 32;
LABEL_19:
        _os_log_impl(&dword_229538000, v32, v33, v31, buf, v34);

LABEL_21:
        v9 = v37;

        objc_autoreleasePoolPop(v27);
        goto LABEL_22;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v30;
        v41 = 2112;
        userCopy = v38;
        v42 = v38;
        v31 = "%{public}@(b) Failed to create remove pairing operation for shared user : %@";
        v32 = v29;
        v33 = OS_LOG_TYPE_ERROR;
        v34 = 22;
        goto LABEL_19;
      }
    }

    userCopy = v38;
    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    uniqueIdentifier = [accessoryCopy modelID];
    identifier3 = [accessoryCopy identifier];
    *buf = 138543874;
    v40 = v13;
    v41 = 2112;
    v42 = uniqueIdentifier;
    v43 = 2112;
    v44 = identifier3;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(b) Cannot remove pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@", buf, 0x20u);

    goto LABEL_12;
  }

LABEL_16:

  objc_autoreleasePoolPop(v10);
LABEL_22:
}

+ (void)scheduleRemovePairingForAccessory:(id)accessory forSharedUser:(id)user
{
  v48 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userCopy = user;
  castIfHAPAccessory = [accessoryCopy castIfHAPAccessory];
  v9 = castIfHAPAccessory;
  if (!castIfHAPAccessory || !isBridgedAccessory(castIfHAPAccessory))
  {
    identifier = [accessoryCopy identifier];

    if (identifier)
    {
      if ([HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:userCopy])
      {
        v38 = v9;
        pairingIdentity = [(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy pairingIdentity];
        v17 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
        modelID = [accessoryCopy modelID];
        identifier2 = [accessoryCopy identifier];
        isOwner = [(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy isOwner];
        v39 = userCopy;
        modelID2 = [(HMDRemoveAccessoryPairingSharedUserOperation *)userCopy modelID];
        home = [accessoryCopy home];
        modelID3 = [home modelID];
        v24 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v17 initWithAccessoryUUID:modelID accessoryIdentifier:identifier2 isOwnerIdentity:isOwner forSharedUser:modelID2 sharedUserPairingIdentity:pairingIdentity homeUUIDWhereAccessoryWasPaired:modelID3];

        if (v24)
        {
          homeManager = [self homeManager];
          bgOpsManager = [homeManager bgOpsManager];
          [bgOpsManager addOperation:v24];

          v27 = objc_autoreleasePoolPush();
          selfCopy = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543874;
            v41 = v30;
            v42 = 2112;
            userCopy = v39;
            v43 = v39;
            v44 = 2112;
            v45 = v24;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@(a) Scheduled remove pairing operation for shared user : %@, %@", buf, 0x20u);
LABEL_19:

LABEL_21:
            v9 = v38;

            objc_autoreleasePoolPop(v27);
            goto LABEL_22;
          }
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            modelID4 = [accessoryCopy modelID];
            identifier3 = [accessoryCopy identifier];
            *buf = 138544130;
            v41 = v30;
            v42 = 2112;
            userCopy = v39;
            v43 = v39;
            v44 = 2112;
            v45 = modelID4;
            v46 = 2112;
            v47 = identifier3;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@(a) Failed to create remove pairing operation for shared user : %@, %@/%@", buf, 0x2Au);

            goto LABEL_19;
          }
        }

        userCopy = v39;
        goto LABEL_21;
      }

      v10 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v13 = HMFGetLogIdentifier();
      modelID5 = [accessoryCopy debugDescription];
      identifier4 = [(HMFObject *)userCopy debugDescription];
      *buf = 138543874;
      v41 = v13;
      v42 = 2112;
      v43 = modelID5;
      v44 = 2112;
      v45 = identifier4;
      v32 = "%{public}@(a) Not allowed to remove pairing for mkfAccessory: %@, shared user: %@";
      v33 = v12;
      v34 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v13 = HMFGetLogIdentifier();
      modelID5 = [accessoryCopy modelID];
      identifier4 = [accessoryCopy identifier];
      *buf = 138543874;
      v41 = v13;
      v42 = 2112;
      v43 = modelID5;
      v44 = 2112;
      v45 = identifier4;
      v32 = "%{public}@(a) Cannot remove pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@";
      v33 = v12;
      v34 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_229538000, v33, v34, v32, buf, 0x20u);

    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    modelID5 = [v9 uniqueIdentifier];
    *buf = 138543874;
    v41 = v13;
    v42 = 2112;
    v43 = modelID5;
    v44 = 2112;
    v45 = userCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@(a) Not scheduling remove pairing operation for accessory: %@ and shared user: %@", buf, 0x20u);
LABEL_15:
  }

LABEL_16:

  objc_autoreleasePoolPop(v10);
LABEL_22:
}

+ (void)scheduleAddPairingForAccessory:(id)accessory sharedUser:(id)user
{
  v54 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userCopy = user;
  v8 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10 || ([v10 bridge], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (([userCopy isOwner] & 1) != 0 || objc_msgSend(userCopy, "isPending"))
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v15;
      v46 = 2112;
      v47 = userCopy;
      v18 = "%{public}@(b) Failed to create add pairing operation for user: %@";
      v19 = v14;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_229538000, v19, v20, v18, buf, 0x16u);
      goto LABEL_13;
    }

    if (([userCopy isAllowedToAddOrRemoveHAPPairingsOnAccessory] & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v15;
      v46 = 2112;
      v47 = userCopy;
      v18 = "%{public}@(b) Not allowed to add pairing for this user : %@";
      v19 = v14;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    v43 = [HMDAddAccessoryPairingSharedUserOperation alloc];
    uuid = [v8 uuid];
    identifier = [v8 identifier];
    uuid2 = [userCopy uuid];
    pairingIdentity = [userCopy pairingIdentity];
    isAdministrator = [userCopy isAdministrator];
    home = [userCopy home];
    uuid3 = [home uuid];
    v26 = uuid2;
    v27 = [(HMDAddAccessoryPairingSharedUserOperation *)v43 initWithAccessoryUUID:uuid accessoryIdentifier:identifier forSharedUser:uuid2 sharedUserPairingIdentity:pairingIdentity asOwner:0 asSharedAdmin:isAdministrator homeUUIDWhereAccessoryWasPaired:uuid3];

    if (v27)
    {
      homeManager = [self homeManager];
      bgOpsManager = [homeManager bgOpsManager];
      [bgOpsManager addOperation:v27];

      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        [userCopy isAdministrator];
        v34 = HMFBooleanToString();
        shortDescription = [v8 shortDescription];
        *buf = 138544386;
        v45 = v33;
        v46 = 2112;
        v47 = userCopy;
        v48 = 2112;
        v49 = v27;
        v50 = 2112;
        v51 = v34;
        v52 = 2112;
        v53 = shortDescription;
        v36 = "%{public}@(b) Scheduled add pairing operation for shared user : %@, %@, asSharedAdmin: %@, accessory: %@";
        v37 = v32;
        v38 = OS_LOG_TYPE_INFO;
        v39 = 52;
LABEL_24:
        _os_log_impl(&dword_229538000, v37, v38, v36, buf, v39);
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        [userCopy isAdministrator];
        v34 = HMFBooleanToString();
        shortDescription = [v8 shortDescription];
        *buf = 138544130;
        v45 = v33;
        v46 = 2112;
        v47 = userCopy;
        v48 = 2112;
        v49 = v34;
        v50 = 2112;
        v51 = shortDescription;
        v36 = "%{public}@(b) Failed to create add pairing operation for shared user : %@, asSharedAdmin: %@, accessory: %@";
        v37 = v32;
        v38 = OS_LOG_TYPE_ERROR;
        v39 = 42;
        goto LABEL_24;
      }
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_15;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    [userCopy isAdministrator];
    v16 = HMFBooleanToString();
    shortDescription2 = [v10 shortDescription];
    *buf = 138544130;
    v45 = v15;
    v46 = 2112;
    v47 = userCopy;
    v48 = 2112;
    v49 = v16;
    v50 = 2112;
    v51 = shortDescription2;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@(b) Not scheduling add pairing operation for shared user: %@, asSharedAdmin: %@, accessory: %@", buf, 0x2Au);

LABEL_13:
  }

LABEL_14:

  objc_autoreleasePoolPop(v12);
LABEL_15:
}

+ (void)scheduleAddPairingForAccessory:(id)accessory forSharedUser:(id)user
{
  v61 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userCopy = user;
  castIfHAPAccessory = [accessoryCopy castIfHAPAccessory];
  v9 = castIfHAPAccessory;
  if (castIfHAPAccessory && isBridgedAccessory(castIfHAPAccessory))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      uniqueIdentifier = [v9 uniqueIdentifier];
      *buf = 138543874;
      v54 = v13;
      v55 = 2112;
      v56 = uniqueIdentifier;
      v57 = 2112;
      v58 = userCopy;
      v15 = "%{public}@(a) Not scheduling add pairing operation for accessory: %@ and user: %@";
LABEL_17:
      v41 = v12;
      v42 = OS_LOG_TYPE_ERROR;
      v43 = 32;
LABEL_18:
      _os_log_impl(&dword_229538000, v41, v42, v15, buf, v43);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  privilege = [(HMDAddAccessoryPairingSharedUserOperation *)userCopy privilege];
  unsignedIntegerValue = [privilege unsignedIntegerValue];

  privilege2 = [(HMDAddAccessoryPairingSharedUserOperation *)userCopy privilege];
  if (!privilege2 || unsignedIntegerValue == 2)
  {
  }

  else
  {

    if (unsignedIntegerValue != 3)
    {
      identifier = [accessoryCopy identifier];

      if (!identifier)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v12 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v13 = HMFGetLogIdentifier();
        uniqueIdentifier = [accessoryCopy modelID];
        identifier2 = [accessoryCopy identifier];
        *buf = 138543874;
        v54 = v13;
        v55 = 2112;
        v56 = uniqueIdentifier;
        v57 = 2112;
        v58 = identifier2;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(a) Cannot add pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@", buf, 0x20u);

        goto LABEL_19;
      }

      if (![HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:userCopy])
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v12 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v13 = HMFGetLogIdentifier();
        uniqueIdentifier = [(HMDAddAccessoryPairingSharedUserOperation *)userCopy modelID];
        *buf = 138543618;
        v54 = v13;
        v55 = 2112;
        v56 = uniqueIdentifier;
        v15 = "%{public}@(a) Cannot create add pairing operation for user:%@ as not allowed by policy";
        v41 = v12;
        v42 = OS_LOG_TYPE_INFO;
        v43 = 22;
        goto LABEL_18;
      }

      pairingIdentity = [(HMDAddAccessoryPairingSharedUserOperation *)userCopy pairingIdentity];
      if (!pairingIdentity)
      {
        v45 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543618;
          v54 = v48;
          v55 = 2114;
          v56 = userCopy;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_FAULT, "%{public}@(a) Cannot create add pairing operation for user %{public}@ with no pairingIdentity", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        goto LABEL_33;
      }

      v51 = [HMDAddAccessoryPairingSharedUserOperation alloc];
      modelID = [accessoryCopy modelID];
      identifier3 = [accessoryCopy identifier];
      modelID2 = [(HMDAddAccessoryPairingSharedUserOperation *)userCopy modelID];
      home = [accessoryCopy home];
      modelID3 = [home modelID];
      v26 = pairingIdentity;
      v27 = modelID3;
      v50 = modelID3;
      v28 = v51;
      v52 = v26;
      v29 = [HMDAddAccessoryPairingSharedUserOperation initWithAccessoryUUID:v28 accessoryIdentifier:"initWithAccessoryUUID:accessoryIdentifier:forSharedUser:sharedUserPairingIdentity:asOwner:asSharedAdmin:homeUUIDWhereAccessoryWasPaired:" forSharedUser:modelID sharedUserPairingIdentity:identifier3 asOwner:modelID2 asSharedAdmin:v50 homeUUIDWhereAccessoryWasPaired:?];

      if (v29)
      {
        homeManager = [self homeManager];
        bgOpsManager = [homeManager bgOpsManager];
        [bgOpsManager addOperation:v29];

        v32 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          v36 = HMFBooleanToString();
          *buf = 138544130;
          v54 = v35;
          v55 = 2112;
          v56 = userCopy;
          v57 = 2112;
          v58 = v29;
          v59 = 2112;
          v60 = v36;
          v37 = "%{public}@(a) Scheduled add pairing operation for shared user : %@, %@, asSharedAdmin: %@";
          v38 = v34;
          v39 = OS_LOG_TYPE_INFO;
          v40 = 42;
LABEL_31:
          _os_log_impl(&dword_229538000, v38, v39, v37, buf, v40);
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = HMFBooleanToString();
          *buf = 138543874;
          v54 = v35;
          v55 = 2112;
          v56 = userCopy;
          v57 = 2112;
          v58 = v36;
          v37 = "%{public}@(a) Failed to create add pairing operation for shared user : %@, asSharedAdmin: %@";
          v38 = v34;
          v39 = OS_LOG_TYPE_ERROR;
          v40 = 32;
          goto LABEL_31;
        }
      }

      pairingIdentity = v52;

      objc_autoreleasePoolPop(v32);
LABEL_33:

      goto LABEL_21;
    }
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    uniqueIdentifier = [(HMDAddAccessoryPairingSharedUserOperation *)userCopy privilege];
    *buf = 138543874;
    v54 = v13;
    v55 = 2112;
    v56 = userCopy;
    v57 = 2112;
    v58 = uniqueIdentifier;
    v15 = "%{public}@(a) Cannot create add pairing operation for user: %@ with privilege: %@";
    goto LABEL_17;
  }

LABEL_20:

  objc_autoreleasePoolPop(v10);
LABEL_21:
}

+ (void)scheduleFullAuditForAccessory:(id)accessory
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([self checkAndRaiseFaultIfHH2KeyIsMissing])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      modelID = [accessoryCopy modelID];
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = modelID;
      v10 = "%{public}@Cannot audit shared user entries in Database for accessory : %@ due to missing HH2 key";
LABEL_9:
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, v10, &v25, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  identifier = [accessoryCopy identifier];

  if (!identifier)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      modelID = [accessoryCopy debugDescription];
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = modelID;
      v10 = "%{public}@Cannot audit the accessory with nil identifier. Ignoring audit for : %@";
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v5);
    goto LABEL_15;
  }

  v12 = [HMDAuditAccessoryPairingOperation alloc];
  modelID2 = [accessoryCopy modelID];
  identifier2 = [accessoryCopy identifier];
  home = [accessoryCopy home];
  modelID3 = [home modelID];
  v17 = [(HMDAuditAccessoryPairingOperation *)v12 initWithAccessoryUUID:modelID2 accessoryIdentifier:identifier2 homeUUIDWhereAccessoryWasPaired:modelID3];

  if (v17)
  {
    homeManager = [self homeManager];
    bgOpsManager = [homeManager bgOpsManager];
    [bgOpsManager addOperation:v17];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      modelID4 = [accessoryCopy modelID];
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = modelID4;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit pairing operation for : %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

LABEL_15:
}

+ (void)dumpUsers:(id)users usingTag:(id)tag
{
  tagCopy = tag;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDBackgroundOperationManagerHelper_dumpUsers_usingTag___block_invoke;
  v8[3] = &unk_2786853A8;
  v9 = tagCopy;
  selfCopy = self;
  v7 = tagCopy;
  [users hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __58__HMDBackgroundOperationManagerHelper_dumpUsers_usingTag___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v9 = [v3 userID];
    v10 = [v3 privilege];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ : %@ (%@)", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
}

+ (void)auditSharedUserEntriesInDatabaseForHome:(id)home withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  handlerCopy = handler;
  checkAndRaiseFaultIfHH2KeyIsMissing = [self checkAndRaiseFaultIfHH2KeyIsMissing];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!checkAndRaiseFaultIfHH2KeyIsMissing)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = homeCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Going to audit shared user entries in database for home : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v17 = +[HMDCoreData sharedInstance];
    uuid = [homeCopy uuid];
    v14 = [v17 contextWithHomeUUID:uuid];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke;
    v19[3] = &unk_278687360;
    v20 = homeCopy;
    v22 = selfCopy;
    v21 = handlerCopy;
    [v14 performBlockWithPinnedQueryGeneration:v19];

    v15 = v20;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v13;
    v25 = 2112;
    v26 = homeCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot trigger audit for shared users for %@ due to missing HH2 controller key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = _Block_copy(handlerCopy);
  if (v14)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v14)[2](v14, v15);
LABEL_9:
  }
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v4 = [v3 accessories];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_28;
    v18 = &unk_278685308;
    v20 = *(a1 + 48);
    v19 = v3;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];

    v5 = [*(a1 + 32) homeManager];
    v6 = [v5 bgOpsManager];
    [v6 evaluateOperations];

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    v8 = v19;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 48);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    if (v14)
    {
      (*(v14 + 16))(v14, v8);
    }
  }
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  if (v5 | v4 && (!v4 || (isBridgedAccessory(v4) & 1) == 0))
  {
    v6 = [v4 communicationProtocol];
    v7 = [v6 unsignedIntValue];

    if (v7 != 3)
    {
      v8 = [v4 needsPairingAudit];
      if ([v8 BOOLValue])
      {

LABEL_9:
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [v4 needsPairingAudit];
          [v14 BOOLValue];
          v15 = HMFBooleanToString();
          *buf = 138543874;
          v69 = v13;
          v70 = 2112;
          v71 = v4;
          v72 = 2112;
          v73 = v15;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Accessory needs full audit: [%@] [needsAudit: %@]", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        v16 = *(a1 + 40);
        v17 = v4;
LABEL_20:
        [v16 scheduleFullAuditForAccessory:v17];
        goto LABEL_21;
      }

      if (v4)
      {
        v9 = [*(a1 + 40) didAuditTimeExpiredOnThisAccessory:v4];

        if (v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      v18 = [v5 needsPairingAudit];
      if ([v18 BOOLValue])
      {

LABEL_17:
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 40);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v5 needsPairingAudit];
          [v24 BOOLValue];
          v25 = HMFBooleanToString();
          *buf = 138543874;
          v69 = v23;
          v70 = 2112;
          v71 = v5;
          v72 = 2112;
          v73 = v25;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Accessory needs full audit: [%@] [needsAudit: %@]", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        v16 = *(a1 + 40);
        v17 = v5;
        goto LABEL_20;
      }

      if (v5)
      {
        v19 = [*(a1 + 40) didAuditTimeExpiredOnThisAirPlayAccessory:v5];

        if (v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v26 = objc_autoreleasePoolPush();
      v27 = MEMORY[0x277CBEB58];
      v28 = [*(a1 + 32) users];
      v55 = [v27 setWithArray:v28];

      if (v4 | v5)
      {
        if (v4)
        {
          v29 = v4;
        }

        else
        {
          v29 = v5;
        }

        v30 = MEMORY[0x277CBEB58];
        v31 = [v29 pairedUsers];
        v32 = [v30 setWithArray:v31];
      }

      else
      {
        v32 = 0;
      }

      [*(a1 + 40) dumpUsers:v55 usingTag:@"Home users list"];
      [*(a1 + 40) dumpUsers:v32 usingTag:@"paired users list"];
      v33 = [v55 mutableCopy];
      [v33 minusSet:v32];
      [*(a1 + 40) dumpUsers:v33 usingTag:@"Users to add"];
      v34 = [v32 mutableCopy];
      [v34 minusSet:v55];
      [*(a1 + 40) dumpUsers:v34 usingTag:@"Users to remove"];
      if ([v33 count] || objc_msgSend(v34, "count"))
      {
        if (![v33 isEqualToSet:v34])
        {
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_42;
          v64[3] = &unk_278685358;
          v43 = v4;
          v44 = *(a1 + 40);
          v65 = v43;
          v67 = v44;
          v54 = v26;
          v45 = v5;
          v66 = v45;
          [v33 hmf_enumerateWithAutoreleasePoolUsingBlock:v64];
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_2;
          v60[3] = &unk_278685358;
          v46 = v43;
          v47 = *(a1 + 40);
          v61 = v46;
          v63 = v47;
          v48 = v45;
          v62 = v48;
          [v34 hmf_enumerateWithAutoreleasePoolUsingBlock:v60];
          v49 = [v46 pairingsToRemove];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_3;
          v56[3] = &unk_278685380;
          v50 = v46;
          v51 = *(a1 + 40);
          v57 = v50;
          v59 = v51;
          v52 = v48;
          v26 = v54;
          v58 = v52;
          [v49 hmf_enumerateWithAutoreleasePoolUsingBlock:v56];

LABEL_39:
          objc_autoreleasePoolPop(v26);
          goto LABEL_21;
        }

        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 40);
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v53 = v35;
          v39 = v38 = v26;
          *buf = 138543874;
          v69 = v39;
          v70 = 2112;
          v71 = v33;
          v72 = 2112;
          v73 = v34;
          v40 = "%{public}@Users to add & remove cannot be same : [Add: %@] [Remove: %@]";
          v41 = v37;
          v42 = OS_LOG_TYPE_ERROR;
LABEL_37:
          _os_log_impl(&dword_229538000, v41, v42, v40, buf, 0x20u);

          v26 = v38;
          v35 = v53;
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 40);
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v53 = v35;
          v39 = v38 = v26;
          *buf = 138543874;
          v69 = v39;
          v70 = 2112;
          v71 = v33;
          v72 = 2112;
          v73 = v34;
          v40 = "%{public}@No users to add & remove : [Add: %@] [Remove: %@]";
          v41 = v37;
          v42 = OS_LOG_TYPE_INFO;
          goto LABEL_37;
        }
      }

      objc_autoreleasePoolPop(v35);
      goto LABEL_39;
    }
  }

LABEL_21:
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:?])
  {
    v3 = *(a1 + 32);
    if (v3 || (v3 = *(a1 + 40)) != 0)
    {
      [*(a1 + 48) scheduleAddPairingForAccessory:v3 forSharedUser:v4];
    }
  }
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:?])
  {
    v3 = *(a1 + 32);
    if (v3 || (v3 = *(a1 + 40)) != 0)
    {
      [*(a1 + 48) scheduleRemovePairingForAccessory:v3 forSharedUser:v4];
    }
  }
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 || (v4 = *(a1 + 40)) != 0)
  {
    v5 = v3;
    [*(a1 + 48) _scheduleRemovePairingForAccessory:v4 usingPairingIdentity:v3];
    v3 = v5;
  }
}

+ (void)removePairingOnAllAccessoriesOfHome:(id)home forSharedUser:(id)user
{
  v37 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  if ([userCopy isAllowedToAddOrRemoveHAPPairingsOnAccessory])
  {
    if ([userCopy isOwner])
    {
      _HMFPreconditionFailure();
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v11;
      v33 = 2112;
      v34 = userCopy;
      v35 = 2112;
      v36 = homeCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Scheduling remove accessory pairing operation for shared user : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = +[HMDCoreData sharedInstance];
    uuid = [homeCopy uuid];
    v14 = [v12 contextWithHomeUUID:uuid];

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke;
    v26 = &unk_278685330;
    v15 = homeCopy;
    v27 = v15;
    v30 = selfCopy;
    v28 = userCopy;
    v29 = v14;
    v16 = v14;
    [v16 performBlockWithPinnedQueryGeneration:&v23];
    homeManager = [v15 homeManager];
    bgOpsManager = [homeManager bgOpsManager];
    [bgOpsManager evaluateOperations];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v22;
      v33 = 2112;
      v34 = homeCopy;
      v35 = 2112;
      v36 = userCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Not allowed to remove pairings for all the accessories of the home: %@, sharedUser: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v4 = [v3 accessories];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke_25;
    v25[3] = &unk_278685308;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v26 = v5;
    v27 = v6;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

    v7 = *(a1 + 48);
    v24 = 0;
    v8 = [v7 save:&v24];
    v9 = v24;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 56);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v23 = *(a1 + 32);
        *buf = 138543618;
        v29 = v14;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the pairingsToRemove on accessories for home : %@", buf, 0x16u);
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) pairingIdentity];
      v16 = [v15 identifier];
      v17 = *(a1 + 32);
      *buf = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully added [%@] to pairingsToRemove on all accessories of the home : %@", buf, 0x20u);

LABEL_11:
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_13;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 56);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [*(a1 + 32) uuid];
    *buf = 138543618;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
LABEL_13:
}

void __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke_25(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 castIfHAPAccessory];
  v4 = [v11 castIfAirPlayAccessory];
  v5 = v4;
  if (v3 | v4)
  {
    if (v3)
    {
      v6 = isBridgedAccessory(v3);
      v4 = v3;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else if (!v4)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [v4 pairingsToRemove];
    v8 = [v7 mutableCopy];

LABEL_8:
    v9 = [*(a1 + 32) pairingIdentity];
    [v8 addObject:v9];

    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }

    [v10 setPairingsToRemove:v8];
    [*(a1 + 40) scheduleRemovePairingForAccessory:v11 sharedUser:*(a1 + 32)];
  }

LABEL_12:
}

+ (void)addPairingOnAllAccessoriesOfHome:(id)home forSharedUser:(id)user
{
  v28 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  userCopy = user;
  if ([userCopy isOwner])
  {
    _HMFPreconditionFailure();
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = userCopy;
    v26 = 2112;
    v27 = homeCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Scheduling add accessory pairing operation for shared user: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  accessories = [homeCopy accessories];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __86__HMDBackgroundOperationManagerHelper_addPairingOnAllAccessoriesOfHome_forSharedUser___block_invoke;
  v19 = &unk_2786852E0;
  v20 = userCopy;
  v21 = selfCopy;
  v13 = userCopy;
  [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];

  homeManager = [homeCopy homeManager];
  bgOpsManager = [homeManager bgOpsManager];
  [bgOpsManager evaluateOperations];
}

void __86__HMDBackgroundOperationManagerHelper_addPairingOnAllAccessoriesOfHome_forSharedUser___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v8;
LABEL_15:
    [v15 scheduleAddPairingForAccessory:v17 sharedUser:v16];
    goto LABEL_16;
  }

  v9 = [v5 bridge];

  if (!v9)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v5;
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v5 shortDescription];
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Not scheduling add pairing operation for accessory: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_16:
}

+ (void)auditSharedUserEntriesInDatabaseForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([self checkAndRaiseFaultIfHH2KeyIsMissing])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      uuid = [accessoryCopy uuid];

      if (uuid)
      {
        uuid2 = [accessoryCopy uuid];
        [uuid2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v16 = *buf;
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v18 = 2096;
      v19 = &v16;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot audit shared user entries in Database for accessory : %{uuid_t}.16P due to missing HH2 key", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke;
    v13[3] = &unk_27868A0D0;
    v14 = accessoryCopy;
    selfCopy2 = self;
    v12 = [defaultScheduler performWithQualityOfService:9 block:v13];
  }
}

void __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if (([v2 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v2 shortDescription];
      v14 = [*(a1 + 32) shortDescription];
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v41 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Invalid home or this device is not a resident for home: %@. Not auditing the shared users for accessory: %@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 bridge];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) shortDescription];
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not scheduling any audit pairing operation for accessory: %@", buf, 0x16u);
    }

LABEL_8:

    objc_autoreleasePoolPop(v7);
    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v41) = 0;
  v15 = +[HMDCoreData sharedInstance];
  v16 = [v2 uuid];
  v17 = [v15 contextWithHomeUUID:v16];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke_12;
  v30[3] = &unk_2786852B8;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v31 = v18;
  v32 = buf;
  v33 = v19;
  [v17 performBlockWithPinnedQueryGeneration:v30];
  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 40);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(*&buf[8] + 24);
    v25 = [*(a1 + 32) shortDescription];
    v26 = v25;
    v27 = @"NOT ";
    *v34 = 138543874;
    v35 = v23;
    v36 = 2112;
    if (v24)
    {
      v27 = &stru_283CF9D50;
    }

    v37 = v27;
    v38 = 2112;
    v39 = v25;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@%@Going to audit pairings for accessory: %@", v34, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  if (*(*&buf[8] + 24) == 1)
  {
    v28 = [v2 homeManager];
    v29 = [v28 bgOpsManager];
    [v29 evaluateOperations];
  }

  _Block_object_dispose(buf, 8);
LABEL_19:
}

void __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke_12(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  v4 = [*(a1 + 32) uuid];
  v5 = [HMCContext findAirPlayAccessoryWithModelID:v4];

  if (v3 | v5)
  {
    if (v3)
    {
      v6 = v3;
      v7 = [v6 needsPairingAudit];
      if ([v7 BOOLValue])
      {
        v8 = 1;
      }

      else
      {
        v8 = [*(a1 + 48) didAuditTimeExpiredOnThisAccessory:v6];
      }

      *(*(*(a1 + 40) + 8) + 24) = v8;

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        [*(a1 + 32) shortDescription];
        v20 = v29 = v17;
        v21 = [v6 needsPairingAudit];
        [v21 BOOLValue];
        HMFBooleanToString();
        v22 = v31 = v16;
        v23 = [v6 lastPairingAuditTime];
        *buf = 138544130;
        v34 = v19;
        v35 = 2112;
        v36 = v20;
        v37 = 2112;
        v38 = v22;
        v39 = 2112;
        v40 = v23;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Checking shared user entries audit for accessory: %@ [needsAudit: %@ - lastPairingAuditTime: %@]", buf, 0x2Au);

        v17 = v29;
        v16 = v31;
      }
    }

    else
    {
      if (!v5)
      {
        v6 = 0;
LABEL_19:
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          [*(a1 + 48) scheduleFullAuditForAccessory:v6];
        }

        goto LABEL_22;
      }

      v6 = v5;
      v14 = [v6 needsPairingAudit];
      if ([v14 BOOLValue])
      {
        v15 = 1;
      }

      else
      {
        v15 = [*(a1 + 48) didAuditTimeExpiredOnThisAirPlayAccessory:v6];
      }

      *(*(*(a1 + 40) + 8) + 24) = v15;

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v24 = [*(a1 + 32) shortDescription];
        v30 = [v6 needsPairingAudit];
        v32 = v16;
        [v30 BOOLValue];
        v25 = HMFBooleanToString();
        v26 = [v6 lastPairingAuditTime];
        *buf = 138544130;
        v34 = v28;
        v35 = 2112;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v27 = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Checking shared user entries audit for airplay accessory: %@ [needsAudit: %@ - lastPairingAuditTime: %@]", buf, 0x2Au);

        v16 = v32;
      }
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_19;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 48);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 32) shortDescription];
    *buf = 138543618;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory model for %@ to audit", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
LABEL_22:
}

+ (void)auditSharedUserEntriesInDatabase:(id)database
{
  databaseCopy = database;
  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabase___block_invoke;
  v8[3] = &unk_27868A0D0;
  v9 = databaseCopy;
  selfCopy = self;
  v6 = databaseCopy;
  v7 = [defaultScheduler performWithQualityOfService:9 block:v8];
}

void __72__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabase___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [HMDBackgroundOperationManager findHomeWhereThisDeviceIsConfirmedPrimaryResident:*(a1 + 32)];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@This device is primary resident on home: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) auditSharedUserEntriesInDatabaseForHome:v2 withCompletionHandler:0];
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@This device is not a resident on any home. Not auditing the shared users in database", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }
}

+ (id)homeManager
{
  v2 = +[HMDMainDriver driver];
  homeManager = [v2 homeManager];

  return homeManager;
}

@end