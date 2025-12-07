@interface HMDAuditProhibitedAccessoryForRestrictedGuestOperation
+ (id)awaitForAllSettledFutures:(id)futures;
+ (id)getPairingsFromAccessory:(id)accessory flow:(id)flow;
+ (id)logCategory;
- (BOOL)_anyModificationsFailedExcludingDoesNotExistError:(id)error responseError:(id *)responseError;
- (BOOL)mainWithError:(id *)error;
- (HMDAuditProhibitedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest;
- (NSUUID)guestUUID;
- (id)_auditHAPAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow;
- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow;
- (id)logIdentifier;
@end

@implementation HMDAuditProhibitedAccessoryForRestrictedGuestOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)_anyModificationsFailedExcludingDoesNotExistError:(id)error responseError:(id *)responseError
{
  errorCopy = error;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__155380;
  v14 = __Block_byref_object_dispose__155381;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __122__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingDoesNotExistError_responseError___block_invoke;
  v9[3] = &unk_27867BB48;
  v9[4] = &v10;
  [errorCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  v6 = v11[5];
  if (v6)
  {
    v6 = v6;
    *responseError = v6;
  }

  v7 = v6 != 0;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __122__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingDoesNotExistError_responseError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 error];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 error];
    v9 = [v8 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCFD28]])
    {
      v10 = [v15 error];
      v11 = [v10 code];

      if (v11 == 2606)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v12 = [v15 error];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }

LABEL_7:
}

- (id)_auditHAPAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow
{
  v81 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  homeCopy = home;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    [guestCopy shortDescription];
    v65 = selfCopy;
    v19 = flowCopy;
    v20 = guestCopy;
    v22 = v21 = homeCopy;
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138544130;
    *&buf[4] = v17;
    v75 = 2112;
    v76 = uUID;
    v77 = 2112;
    v78 = v22;
    v79 = 2112;
    v80 = shortDescription;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to remove restricted guest [%@] from the HAP accessory [%@]", buf, 0x2Au);

    homeCopy = v21;
    guestCopy = v20;
    flowCopy = v19;
    selfCopy = v65;
  }

  objc_autoreleasePoolPop(v14);
  array = [MEMORY[0x277CBEB18] array];
  if (![accessoryCopy supportsAccessCode])
  {
    goto LABEL_9;
  }

  accessCode = [guestCopy accessCode];

  if (!accessCode)
  {
    goto LABEL_9;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v66 = selfCopy;
    v30 = accessoryCopy;
    v31 = flowCopy;
    v32 = guestCopy;
    v34 = v33 = homeCopy;
    *buf = 138543618;
    *&buf[4] = v29;
    v75 = 2112;
    v76 = v34;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting audit access code removal", buf, 0x16u);

    homeCopy = v33;
    guestCopy = v32;
    flowCopy = v31;
    accessoryCopy = v30;
    selfCopy = v66;
  }

  objc_autoreleasePoolPop(v26);
  accessCodeManager = [homeCopy accessCodeManager];
  if (accessCodeManager)
  {
    v36 = accessCodeManager;
    accessCode2 = [guestCopy accessCode];
    v37 = [v36 removeAccessCode:accessCode2 fromHAPAccessory:accessoryCopy flow:flowCopy];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke;
    v72[3] = &unk_278683980;
    v72[4] = v27;
    v73 = flowCopy;
    v38 = [v37 flatMap:v72];
    [v38 hmfFuture];
    v39 = selfCopy;
    v40 = accessoryCopy;
    v41 = flowCopy;
    v42 = guestCopy;
    v44 = v43 = homeCopy;
    [array addObject:v44];

    homeCopy = v43;
    guestCopy = v42;
    flowCopy = v41;
    accessoryCopy = v40;
    selfCopy = v39;

LABEL_9:
    if ([accessoryCopy supportsWalletKey])
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v49 = accessoryCopy;
        v50 = flowCopy;
        v51 = guestCopy;
        v53 = v52 = homeCopy;
        *buf = 138543618;
        *&buf[4] = v48;
        v75 = 2112;
        v76 = v53;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting audit removal of pairing key", buf, 0x16u);

        homeCopy = v52;
        guestCopy = v51;
        flowCopy = v50;
        accessoryCopy = v49;
      }

      objc_autoreleasePoolPop(v45);
      *buf = 0;
      v54 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      [array addObject:v54];

      v55 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_43;
      block[3] = &unk_2786891E0;
      block[4] = v46;
      v69 = accessoryCopy;
      v70 = flowCopy;
      v71 = *buf;
      dispatch_async(v55, block);
    }

    v56 = [objc_opt_class() awaitForAllSettledFutures:array];
    goto LABEL_14;
  }

  v58 = objc_autoreleasePoolPush();
  v59 = v27;
  v60 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    v61 = HMFGetLogIdentifier();
    uUID2 = [flowCopy UUID];
    *buf = 138543618;
    *&buf[4] = v61;
    v75 = 2112;
    v76 = uUID2;
    _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot attempt to remove access code because accessCodeManager is nil", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v58);
  v63 = MEMORY[0x277D0F7C0];
  v64 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  v56 = [v63 futureWithError:v64];

LABEL_14:

  return v56;
}

id __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = 0;
  v5 = [v4 _anyModificationsFailedExcludingDoesNotExistError:v3 responseError:&v18];
  v6 = v18;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] At least one modification response had an error [%@] that isn't HMErrorCodePrivateAccessCodeIdentifierDoesNotExist, so operation did not succeed.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277D2C900] futureWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code has been removed on accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v16 = v13;

  return v16;
}

void __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_43(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() getPairingsFromAccessory:a1[5] flow:a1[6]];
  v3 = v2;
  if (!v2)
  {
    v24 = a1[7];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v24 rejectWithError:v13];
LABEL_13:

    goto LABEL_17;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2;
  v30[3] = &unk_2786864C8;
  v30[4] = a1[4];
  v4 = [v2 na_any:v30];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[6] UUID];
      v11 = a1[5];
      *buf = 138543874;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to remove restricted guest pairing from the HAP accessory : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v28.receiver = a1[4];
    v28.super_class = HMDAuditProhibitedAccessoryForRestrictedGuestOperation;
    v29 = 0;
    v12 = objc_msgSendSuper2(&v28, sel_mainWithError_, &v29);
    v13 = v29;
    if ((v12 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1[4];
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [a1[6] UUID];
        *buf = 138543874;
        v32 = v17;
        v33 = 2112;
        v34 = v18;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove pairing with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      [a1[7] rejectWithError:v13];
    }

    v19 = objc_autoreleasePoolPush();
    v20 = a1[4];
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [a1[6] UUID];
      *buf = 138543618;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully removed pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [a1[7] fulfillWithNoValue];
    goto LABEL_13;
  }

  if (v8)
  {
    v25 = HMFGetLogIdentifier();
    v26 = [a1[6] UUID];
    v27 = [a1[5] shortDescription];
    *buf = 138543874;
    v32 = v25;
    v33 = 2112;
    v34 = v26;
    v35 = 2112;
    v36 = v27;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restricted guest's pairing is not on the Accessory: %@, nothing to remove.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [a1[7] fulfillWithNoValue];
LABEL_17:
}

uint64_t __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) pairingIdentifierToRemove];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow
{
  v120 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  flowCopy = flow;
  [(HMDBackgroundOperation *)self setHomeManager:managerCopy];
  v8 = objc_opt_new();
  userData = [(HMDBackgroundOperation *)self userData];
  v10 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v103 = v10;
  v11 = [objc_opt_class() findUserWithUUID:v10 fromHomeManager:managerCopy];
  v12 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v14 = [v12 findAccessoryUsing:accessoryUUID homeManager:managerCopy];

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  if (v17)
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || accessoryOperationStatus == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v25 = v91 = flowCopy;
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      v96 = v17;
      v26 = v15;
      v27 = managerCopy;
      v28 = v8;
      v30 = v29 = v11;
      *buf = 138543874;
      v113 = v24;
      v114 = 2112;
      v115 = v25;
      v116 = 2112;
      v117 = v30;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Required parameters does not exist to properly execute this operation : [%@]", buf, 0x20u);

      v11 = v29;
      v8 = v28;
      managerCopy = v27;
      v15 = v26;
      v17 = v96;

      flowCopy = v91;
    }

    objc_autoreleasePoolPop(v21);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v8 setError:v31];

    [v8 setShouldReschedule:1];
    goto LABEL_32;
  }

  if (accessoryOperationStatus == 1)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      [v15 shortDescription];
      v36 = v92 = flowCopy;
      [v11 shortDescription];
      v97 = v17;
      v38 = v37 = v11;
      *buf = 138543874;
      v113 = v35;
      v114 = 2112;
      v115 = v36;
      v116 = 2112;
      v117 = v38;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@For the accessory [%@] with user [%@], this operation can never successfully run in the future. Hence marking this operation as finished.", buf, 0x20u);

      v11 = v37;
      v17 = v97;

      flowCopy = v92;
    }

    objc_autoreleasePoolPop(v32);
    v39 = MEMORY[0x277CCA9B8];
    v40 = 20;
LABEL_31:
    v71 = [v39 hmErrorWithCode:v40];
    [v8 setError:v71];

LABEL_32:
    v59 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
    goto LABEL_33;
  }

  if (([v17 supportsAnyInPersonAccess] & 1) == 0)
  {
    v61 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v65 = v94 = flowCopy;
      [v15 shortDescription];
      v100 = v17;
      v66 = v15;
      v67 = managerCopy;
      v68 = v8;
      v70 = v69 = v11;
      *buf = 138543874;
      v113 = v64;
      v114 = 2112;
      v115 = v65;
      v116 = 2112;
      v117 = v70;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory [%@] does not support features that enforce access directly. Hence marking this operation as finished.", buf, 0x20u);

      v11 = v69;
      v8 = v68;
      managerCopy = v67;
      v15 = v66;
      v17 = v100;

      flowCopy = v94;
    }

    objc_autoreleasePoolPop(v61);
    v39 = MEMORY[0x277CCA9B8];
    v40 = 48;
    goto LABEL_31;
  }

  home = [v17 home];
  if (home)
  {
    isRestrictedGuest = [v11 isRestrictedGuest];
    v42 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v44 = HMFGetOSLogHandle();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
    if (isRestrictedGuest)
    {
      if (v45)
      {
        v46 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v47 = v89 = v42;
        [v17 shortDescription];
        v48 = v93 = flowCopy;
        [v11 shortDescription];
        v98 = v17;
        v50 = v49 = v11;
        *buf = 138544130;
        v113 = v46;
        v114 = 2112;
        v115 = v47;
        v116 = 2112;
        v117 = v48;
        v118 = 2112;
        v119 = v50;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All checks are completed, now attempting to audit prohibited accessory [%@] with restricted guest [%@]", buf, 0x2Au);

        v11 = v49;
        v17 = v98;

        flowCopy = v93;
        v42 = v89;
      }

      objc_autoreleasePoolPop(v42);
      if ([v17 supportsCHIP])
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy4;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v99 = v11;
          v56 = v55 = flowCopy;
          *buf = 138543874;
          v113 = v54;
          v114 = 2112;
          v115 = v56;
          v116 = 2112;
          v117 = v17;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Going to remove restricted guest from the matter accessory : %@", buf, 0x20u);

          flowCopy = v55;
          v11 = v99;
        }

        objc_autoreleasePoolPop(v51);
        v57 = home;
        v58 = [home removeUser:v11 fromAccessory:v17];
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_38;
        v106[3] = &unk_278689CB0;
        v107 = v8;
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2_39;
        v104[3] = &unk_278689CD8;
        v105 = v107;
        v59 = [v58 then:v106 orRecover:v104];

        v60 = v107;
      }

      else
      {
        v57 = home;
        v58 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)selfCopy4 _auditHAPAccessory:v17 forRestrictedGuest:v11 inHome:home flow:flowCopy];
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke;
        v110[3] = &unk_278689CB0;
        v111 = v8;
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2;
        v108[3] = &unk_278689CD8;
        v109 = v111;
        v59 = [v58 then:v110 orRecover:v108];

        v60 = v111;
      }

      goto LABEL_45;
    }

    if (v45)
    {
      v84 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v102 = v17;
      v85 = v11;
      v87 = v86 = flowCopy;
      *buf = 138543874;
      v113 = v84;
      v114 = 2112;
      v115 = v87;
      v116 = 2112;
      v117 = v85;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot proceed with removing the user as it is not restricted guest. : %@", buf, 0x20u);

      flowCopy = v86;
      v11 = v85;
      v17 = v102;
    }

    objc_autoreleasePoolPop(v42);
    v88 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v8 setError:v88];
  }

  else
  {
    v73 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v75 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v77 = v95 = flowCopy;
      [v15 shortDescription];
      v101 = v17;
      v78 = v15;
      v79 = managerCopy;
      v80 = v8;
      v82 = v81 = v11;
      *buf = 138543874;
      v113 = v76;
      v114 = 2112;
      v115 = v77;
      v116 = 2112;
      v117 = v82;
      _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory [%@] does not have a home", buf, 0x20u);

      v11 = v81;
      v8 = v80;
      managerCopy = v79;
      v15 = v78;
      v17 = v101;

      flowCopy = v95;
    }

    objc_autoreleasePoolPop(v73);
    v83 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 setError:v83];

    [v8 setShouldReschedule:1];
  }

  v59 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
  v57 = home;
LABEL_45:

LABEL_33:

  return v59;
}

uint64_t __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  [*(a1 + 32) setShouldReschedule:1];

  return 1;
}

uint64_t __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2_39(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  [*(a1 + 32) setShouldReschedule:1];

  return 1;
}

- (NSUUID)guestUUID
{
  userData = [(HMDBackgroundOperation *)self userData];
  v3 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v5 mainWithError:v6, v7];
  }
}

- (BOOL)mainWithError:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    accessoryUUID = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
    userData = [(HMDBackgroundOperation *)selfCopy userData];
    v12 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];
    *buf = 138544130;
    v55 = v8;
    v56 = 2112;
    v57 = uUID;
    v58 = 2112;
    v59 = accessoryUUID;
    v60 = 2112;
    v61 = v12;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Restricted Guest}] Performing audit for prohibited accessory [%@] for restricted guest [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  v14 = dispatch_get_global_queue(21, 0);
  v15 = [v13 initWithQueue:v14];

  v16 = MEMORY[0x277D0F7C0];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __72__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke;
  v52[3] = &unk_2786898D8;
  v52[4] = selfCopy;
  v17 = internalOnlyInitializer;
  v53 = v17;
  v18 = [v16 inContext:v15 perform:v52];
  v50 = 0;
  v51 = 0;
  v19 = [v18 waitForResult:&v51 orError:&v50 withTimeout:1.2e11];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v48 = v18;
    v24 = v23 = v15;
    uUID2 = [v17 UUID];
    accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)v21 accessoryUUID];
    v27 = HMFBooleanToString();
    *buf = 138544386;
    v55 = v24;
    v56 = 2112;
    v57 = uUID2;
    v58 = 2112;
    v59 = accessoryUUID2;
    v60 = 2112;
    v61 = v27;
    v62 = 2112;
    v63 = v50;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Finished removing the restricted guest from [%@] resulted in outcome: [%@] with error: [%@]", buf, 0x34u);

    v15 = v23;
    v18 = v48;
  }

  objc_autoreleasePoolPop(v20);
  if ((v19 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v21;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID3 = [v17 UUID];
      *buf = 138543618;
      v55 = v38;
      v56 = 2112;
      v57 = uUID3;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation timed out", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    errorCopy2 = error;
    if (error)
    {
      v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      goto LABEL_15;
    }

LABEL_16:
    LOBYTE(v40) = 0;
    goto LABEL_24;
  }

  if (v50)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      uUID4 = [v17 UUID];
      *buf = 138543874;
      v55 = v31;
      v56 = 2112;
      v57 = uUID4;
      v58 = 2112;
      v59 = v50;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation should not have resulted in a rejected promise. File a radar. Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    errorCopy2 = error;
    if (error)
    {
      v34 = v50;
LABEL_15:
      LOBYTE(v40) = 0;
      *errorCopy2 = v34;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  error = [v51 error];

  if (error)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v21;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID5 = [v17 UUID];
      *buf = 138543874;
      v55 = v45;
      v56 = 2112;
      v57 = uUID5;
      v58 = 2112;
      v59 = v50;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    if (error)
    {
      *error = v50;
    }

    v40 = [v51 shouldReschedule] ^ 1;
  }

  else
  {
    LOBYTE(v40) = 1;
  }

LABEL_24:

  return v40;
}

HMDAuditProhibitedAccessoryForRestrictedGuestOperation *__72__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 homeManager];
  v4 = [v2 executeOperationWithHomeManager:v3 flow:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v7 initWithAccessory:v8 restrictedGuest:v9, v10];
  }
}

- (HMDAuditProhibitedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest
{
  v31 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  uuid = [accessoryCopy uuid];
  identifier = [accessoryCopy identifier];
  home = [accessoryCopy home];

  if (home)
  {
    home2 = [accessoryCopy home];
    uuid2 = [home2 uuid];
    pairingIdentity = [guestCopy pairingIdentity];
    v23 = @"sharedUserUUIDKey";
    uuid3 = [guestCopy uuid];
    v24 = uuid3;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22.receiver = self;
    v22.super_class = HMDAuditProhibitedAccessoryForRestrictedGuestOperation;
    selfCopy = [(HMDRemoveAccessoryPairingOperation *)&v22 initWithAccessory:uuid accessoryIdentifier:identifier homeUUIDWhereAccessoryWasPaired:uuid2 isOwnerIdentity:0 identityToRemove:pairingIdentity userData:v15];

    v17 = selfCopy;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = uuid;
      v29 = 2112;
      v30 = identifier;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create add accessory pairing operation for accessory: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32_155430 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32_155430, &__block_literal_global_59_155431);
  }

  v3 = logCategory__hmf_once_v33_155432;

  return v3;
}

void __69__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v33_155432;
  logCategory__hmf_once_v33_155432 = v0;
}

+ (id)awaitForAllSettledFutures:(id)futures
{
  v3 = [MEMORY[0x277D0F7C0] allSettled:futures];
  v4 = [v3 then:&__block_literal_global_155437];

  return v4;
}

uint64_t __84__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_awaitForAllSettledFutures___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 na_firstObjectPassingTest:&__block_literal_global_57_155439];
  v3 = v2;
  if (v2)
  {
    v2;
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __84__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_awaitForAllSettledFutures___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)getPairingsFromAccessory:(id)accessory flow:(id)flow
{
  v53 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = uUID;
    *&buf[22] = 2112;
    v50 = shortDescription;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Get pairings from accessory : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__155380;
  v51 = __Block_byref_object_dispose__155381;
  array = [MEMORY[0x277CBEB18] array];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke;
  v37[3] = &unk_27867BB98;
  v42 = selfCopy;
  v38 = flowCopy;
  v39 = accessoryCopy;
  v40 = v14;
  v41 = buf;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_52;
  v31 = &unk_278685418;
  v36 = selfCopy;
  v15 = v38;
  v32 = v15;
  v16 = v39;
  v33 = v16;
  v35 = buf;
  v17 = v40;
  v34 = v17;
  [v16 performOperation:7 linkType:0 operationBlock:v37 errorBlock:&v28];
  v18 = dispatch_time(0, 120000000000);
  if (dispatch_group_wait(v17, v18))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [v15 UUID];
      shortDescription2 = [v16 shortDescription];
      *v43 = 138543874;
      v44 = v22;
      v45 = 2112;
      v46 = uUID2;
      v47 = 2112;
      v48 = shortDescription2;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Timed out while getting list of pairings from the accessory : %@", v43, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = 0;
  }

  v26 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v26;
}

void __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 server];
  if (v4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_49;
    v15[3] = &unk_27867BB70;
    v19 = *(a1 + 64);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v14 = *(a1 + 48);
    v6 = v14;
    v18 = v14;
    [v4 listPairingsWithCompletionQueue:v5 completionHandler:v15];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 64);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) UUID];
      v12 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to list pairing as there is no accessory server for accessory : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    dispatch_group_leave(*(a1 + 48));
    v13 = *(*(a1 + 56) + 8);
    v5 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_52(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v9 = [*(a1 + 40) shortDescription];
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to list pairings for accessory : %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  dispatch_group_leave(*(a1 + 48));
}

void __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 64);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) UUID];
    v12 = [*(a1 + 40) shortDescription];
    v13 = 138544386;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HAP list pairing operation finished with: %@ for accessory: %@, error: %@", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v5];
  dispatch_group_leave(*(a1 + 48));
}

@end