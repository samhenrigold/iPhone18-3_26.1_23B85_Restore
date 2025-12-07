@interface HMDAuditAllowedAccessoryForRestrictedGuestOperation
+ (id)logCategory;
- (BOOL)_anyModificationsFailedExcludingAlreadyExistsError:(id)error responseError:(id *)responseError;
- (BOOL)mainWithError:(id *)error;
- (HMDAuditAllowedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest;
- (NSUUID)guestUUID;
- (id)_auditHAPAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow;
- (id)_auditMatterAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow;
- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow;
- (id)loadConfiguredCredentialsOnMatterAccessory:(id)accessory forUser:(id)user inHome:(id)home flow:(id)flow;
- (id)logIdentifier;
@end

@implementation HMDAuditAllowedAccessoryForRestrictedGuestOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)_anyModificationsFailedExcludingAlreadyExistsError:(id)error responseError:(id *)responseError
{
  errorCopy = error;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__119069;
  v14 = __Block_byref_object_dispose__119070;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __120__HMDAuditAllowedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingAlreadyExistsError_responseError___block_invoke;
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

void __120__HMDAuditAllowedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingAlreadyExistsError_responseError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 error];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 error];
    if ([v8 code] == 2602)
    {
      v9 = [v15 error];
      v10 = [v9 domain];
      v11 = [v10 isEqualToString:*MEMORY[0x277CCFD28]];

      if (v11)
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
  v100 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  homeCopy = home;
  flowCopy = flow;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    shortDescription = [guestCopy shortDescription];
    [accessoryCopy shortDescription];
    v19 = guestCopy;
    v20 = accessoryCopy;
    v22 = v21 = flowCopy;
    *buf = 138544130;
    *&buf[4] = v16;
    v94 = 2112;
    v95 = uUID;
    v96 = 2112;
    v97 = shortDescription;
    v98 = 2112;
    v99 = v22;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add restricted guest [%@] from the HAP accessory [%@]", buf, 0x2Au);

    flowCopy = v21;
    accessoryCopy = v20;
    guestCopy = v19;
  }

  objc_autoreleasePoolPop(v13);
  v23 = objc_opt_new();
  restrictedGuestAccessSettings = [guestCopy restrictedGuestAccessSettings];
  schedule = [restrictedGuestAccessSettings schedule];

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (schedule)
  {
    if (v29)
    {
      v30 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      [guestCopy description];
      v75 = v27;
      v32 = v23;
      v33 = guestCopy;
      v35 = v34 = flowCopy;
      shortDescription2 = [accessoryCopy shortDescription];
      *buf = 138544130;
      *&buf[4] = v30;
      v94 = 2112;
      v95 = uUID2;
      v96 = 2112;
      v97 = v35;
      v98 = 2112;
      v99 = shortDescription2;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restricted Guest [%@] schedule is restricted so no credentials should be on the HAP accessory [%@]. Attempting to remove.", buf, 0x2Au);

      flowCopy = v34;
      guestCopy = v33;
      v23 = v32;
      v27 = v75;
    }

    objc_autoreleasePoolPop(v26);
    [v23 setCredentialsRemoved:1];
    array = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:accessoryCopy restrictedGuest:guestCopy];
    v38 = homeCopy;
    homeManager = [homeCopy homeManager];
    v40 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)array executeOperationWithHomeManager:homeManager flow:flowCopy];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_103;
    v79[3] = &unk_278678BC0;
    v80 = v23;
    v41 = [v40 then:v79];
  }

  else
  {
    v38 = homeCopy;
    if (v29)
    {
      v42 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543618;
      *&buf[4] = v42;
      v94 = 2112;
      v95 = uUID3;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Schedule is unrestricted, attempt to add credentials", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    array = [MEMORY[0x277CBEB18] array];
    if ([accessoryCopy supportsAccessCode])
    {
      accessCode = [guestCopy accessCode];

      if (accessCode)
      {
        v76 = v23;
        v45 = objc_autoreleasePoolPush();
        v46 = v27;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v73 = v45;
          v49 = v48 = flowCopy;
          uUID4 = [v48 UUID];
          *buf = 138543618;
          *&buf[4] = v49;
          v94 = 2112;
          v95 = uUID4;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding access codes if not on the accessory already", buf, 0x16u);

          flowCopy = v48;
          v45 = v73;
        }

        v68 = v46;
        objc_autoreleasePoolPop(v45);
        accessCodeManager = [homeCopy accessCodeManager];
        v51 = objc_alloc(MEMORY[0x277CD1648]);
        accessCode2 = [guestCopy accessCode];
        v70 = [v51 initWithStringValue:accessCode2];
        uuid = [guestCopy uuid];
        uuid2 = [accessoryCopy uuid];
        v92 = uuid2;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        v53 = [accessCodeManager addNewAccessCode:v70 forUserWithUUID:uuid toAccessoriesWithUUIDs:v52 withRetries:1 flow:flowCopy];
        [v53 hmfFuture];
        v55 = v54 = flowCopy;
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke;
        v90[3] = &unk_278678B98;
        v90[4] = v68;
        v91 = v54;
        v56 = [v55 then:v90];
        [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)array addObject:v56];

        flowCopy = v54;
        v23 = v76;
      }
    }

    if ([accessoryCopy supportsWalletKey])
    {
      v57 = objc_autoreleasePoolPush();
      v58 = v27;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v77 = v23;
        v61 = guestCopy;
        v62 = accessoryCopy;
        v64 = v63 = flowCopy;
        *buf = 138543618;
        *&buf[4] = v60;
        v94 = 2112;
        v95 = v64;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting add pairing key audit", buf, 0x16u);

        flowCopy = v63;
        accessoryCopy = v62;
        guestCopy = v61;
        v23 = v77;
      }

      objc_autoreleasePoolPop(v57);
      *buf = 0;
      v65 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)array addObject:v65];

      v66 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_95;
      block[3] = &unk_2786891E0;
      v86 = accessoryCopy;
      v87 = flowCopy;
      v88 = *buf;
      v89 = v58;
      dispatch_async(v66, block);
    }

    homeManager = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation awaitForAllSettledFutures:array];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_100;
    v83[3] = &unk_278689CB0;
    v84 = v23;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_102;
    v81[3] = &unk_278689CD8;
    v82 = v84;
    v41 = [homeManager then:v83 orRecover:v81];

    v40 = v84;
  }

  return v41;
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v20 = 0;
  v5 = [v4 _anyModificationsFailedExcludingAlreadyExistsError:v3 responseError:&v20];
  v6 = v20;
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
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] At least one modification response had an error [%@] that isn't HMErrorCodePrivateAccessCodeDuplicate, so operation did not succeed.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = v6;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v18 = 2;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code has been added to the accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = 1;
  }

  return v18;
}

void __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_95(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation getPairingsFromAccessory:a1[4] flow:a1[5]];
  v3 = v2;
  if (!v2)
  {
    v11 = a1[6];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v11 rejectWithError:v12];
LABEL_16:

    goto LABEL_17;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2;
  v28[3] = &unk_2786864C8;
  v28[4] = a1[7];
  v4 = [v2 na_any:v28];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[7];
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v8)
    {
      v13 = HMFGetLogIdentifier();
      v14 = a1[4];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to add user pairing to the HAP accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v26.receiver = a1[7];
    v26.super_class = HMDAuditAllowedAccessoryForRestrictedGuestOperation;
    v27 = 0;
    v15 = objc_msgSendSuper2(&v26, sel_mainWithError_, &v27);
    v12 = v27;
    if ((v15 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1[7];
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [a1[5] UUID];
        *buf = 138543874;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pairing with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      [a1[6] rejectWithError:v12];
    }

    v21 = objc_autoreleasePoolPush();
    v22 = a1[7];
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [a1[5] UUID];
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [a1[6] fulfillWithNoValue];
    goto LABEL_16;
  }

  if (v8)
  {
    v9 = HMFGetLogIdentifier();
    v10 = [a1[4] shortDescription];
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@User's pairing is already on the Accessory: %@, nothing to add.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [a1[6] fulfillWithNoValue];
LABEL_17:
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_102(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setShouldReschedule:1];
  [*(a1 + 32) setError:v4];

  return 1;
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setShouldReschedule:{objc_msgSend(v3, "shouldReschedule")}];
  v4 = [v3 error];

  [*(a1 + 32) setError:v4];
  return 1;
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) userData];
  v5 = [v4 objectForKeyedSubscript:@"newPairingIdentifier"];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (id)loadConfiguredCredentialsOnMatterAccessory:(id)accessory forUser:(id)user inHome:(id)home flow:(id)flow
{
  v83 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userCopy = user;
  homeCopy = home;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v67 = selfCopy;
  v69 = accessoryCopy;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    shortDescription = [accessoryCopy shortDescription];
    [userCopy shortDescription];
    v21 = v20 = userCopy;
    [homeCopy name];
    v22 = flowCopy;
    v24 = v23 = homeCopy;
    *buf = 138544386;
    v74 = v17;
    v75 = 2112;
    v76 = uUID;
    v77 = 2112;
    v78 = shortDescription;
    v79 = 2112;
    v80 = v21;
    v81 = 2112;
    v82 = v24;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] loadConfiguredCredentialsOnMatterAccessory with accessory: %@, forUser: %@, inHome: %@", buf, 0x34u);

    homeCopy = v23;
    flowCopy = v22;

    userCopy = v20;
    accessoryCopy = v69;

    selfCopy = v67;
  }

  objc_autoreleasePoolPop(v14);
  accessCode = [userCopy accessCode];
  array = [MEMORY[0x277CBEB18] array];
  supportsMatterAccessCode = [accessoryCopy supportsMatterAccessCode];

  if (supportsMatterAccessCode && accessCode)
  {
    v65 = array;
    v28 = userCopy;
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v33 = v59 = v29;
      [userCopy shortDescription];
      v61 = accessCode;
      v35 = v34 = homeCopy;
      shortDescription2 = [accessoryCopy shortDescription];
      *buf = 138544130;
      v74 = v32;
      v75 = 2112;
      v76 = v33;
      v77 = 2112;
      v78 = v35;
      v79 = 2112;
      v80 = shortDescription2;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add RG's [%@] access code to accessory [%@]", buf, 0x2Au);

      homeCopy = v34;
      accessCode = v61;

      v29 = v59;
    }

    v64 = homeCopy;

    objc_autoreleasePoolPop(v29);
    accessCodeManager = [homeCopy accessCodeManager];
    v37 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:accessCode];
    v60 = v28;
    uuid = [v28 uuid];
    uuid2 = [v69 uuid];
    v72 = uuid2;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    v41 = [accessCodeManager addNewAccessCode:v37 forUserWithUUID:uuid toAccessoriesWithUUIDs:v40 withRetries:1 flow:flowCopy];
    [v41 hmfFuture];
    v43 = v42 = accessCode;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __118__HMDAuditAllowedAccessoryForRestrictedGuestOperation_loadConfiguredCredentialsOnMatterAccessory_forUser_inHome_flow___block_invoke;
    v70[3] = &unk_278678B98;
    v70[4] = v30;
    v71 = flowCopy;
    v44 = [v43 then:v70];
    array = v65;
    [v65 addObject:v44];

    accessCode = v42;
    homeCopy = v64;

    accessoryCopy = v69;
    userCopy = v60;

    selfCopy = v67;
  }

  if ([accessoryCopy supportsWalletKey])
  {
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v49 = v68 = v45;
      [userCopy shortDescription];
      v50 = v63 = accessCode;
      [accessoryCopy shortDescription];
      v66 = array;
      v52 = v51 = flowCopy;
      *buf = 138544130;
      v74 = v48;
      v75 = 2112;
      v76 = v49;
      v77 = 2112;
      v78 = v50;
      v79 = 2112;
      v80 = v52;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add or update RG's [%@] issuer key to accessory [%@]", buf, 0x2Au);

      flowCopy = v51;
      array = v66;

      accessCode = v63;
      v45 = v68;
    }

    objc_autoreleasePoolPop(v45);
    nfcReaderKeyManager = [homeCopy nfcReaderKeyManager];
    accessoryManager = [nfcReaderKeyManager accessoryManager];
    v55 = [accessoryManager addOrUpdateIssuerKeyForUser:userCopy toMatterAccessory:accessoryCopy flow:flowCopy];
    hmfFuture = [v55 hmfFuture];
    [array addObject:hmfFuture];
  }

  v57 = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation awaitForAllSettledFutures:array];

  return v57;
}

uint64_t __118__HMDAuditAllowedAccessoryForRestrictedGuestOperation_loadConfiguredCredentialsOnMatterAccessory_forUser_inHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v20 = 0;
  v5 = [v4 _anyModificationsFailedExcludingAlreadyExistsError:v3 responseError:&v20];
  v6 = v20;
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
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] At least one modification response had an error [%@] that isn't HMErrorCodePrivateAccessCodeDuplicate, so operation did not succeed.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = v6;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v18 = 2;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code has been added to the accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = 1;
  }

  return v18;
}

- (id)_auditMatterAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow
{
  v52 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  homeCopy = home;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v17 = v32 = homeCopy;
    uUID = [flowCopy UUID];
    shortDescription = [guestCopy shortDescription];
    shortDescription2 = [MEMORY[0x277CFE9F8] shortDescription];
    *buf = 138544130;
    v45 = v17;
    v46 = 2112;
    v47 = uUID;
    v48 = 2112;
    v49 = shortDescription;
    v50 = 2112;
    v51 = shortDescription2;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add restricted guest [%@] to matter accessory [%@]", buf, 0x2Au);

    homeCopy = v32;
  }

  objc_autoreleasePoolPop(v14);
  v21 = objc_opt_new();
  v22 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke;
  v37[3] = &unk_278678B48;
  v38 = accessoryCopy;
  v39 = guestCopy;
  v40 = homeCopy;
  v41 = flowCopy;
  v42 = selfCopy;
  v23 = v21;
  v43 = v23;
  v24 = accessoryCopy;
  v25 = guestCopy;
  v26 = homeCopy;
  v27 = flowCopy;
  v28 = [v22 then:v37];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_86;
  v35[3] = &unk_278678B70;
  v36 = v23;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_88;
  v33[3] = &unk_278689CD8;
  v34 = v36;
  v29 = v36;
  v30 = [v28 then:v35 orRecover:v33];

  return v30;
}

uint64_t __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] restrictedGuestAccessSettings];
  v6 = [v5 schedule];
  LODWORD(v4) = [v4 supportsConfiguredSchedule:v6];

  if (!v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[8];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[7] UUID];
      v15 = a1[4];
      *buf = 138543874;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to remove user from the matter accessory : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [a1[9] setCredentialsRemoved:1];
    v16 = [a1[6] removeUser:a1[5] fromAccessory:a1[4]];
    if (v16)
    {
      v7 = v16;

      goto LABEL_8;
    }

LABEL_9:
    _HMFPreconditionFailure();
  }

  v7 = [a1[6] auditOrAddRestrictedGuest:a1[5] onAccessory:a1[4] flow:a1[7]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2;
  v18[3] = &unk_278678B20;
  v18[4] = a1[8];
  v19 = a1[4];
  v20 = a1[5];
  v21 = a1[6];
  v22 = a1[7];
  v8 = [v7 then:v18];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;

LABEL_8:
  return 3;
}

uint64_t __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_88(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  [*(a1 + 32) setShouldReschedule:1];

  return 1;
}

uint64_t __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loadConfiguredCredentialsOnMatterAccessory:*(a1 + 40) forUser:*(a1 + 48) inHome:*(a1 + 56) flow:*(a1 + 64)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v7 executeOperationWithHomeManager:v8 flow:v9, v10];
  }
}

- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow
{
  v111 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  flowCopy = flow;
  [(HMDBackgroundOperation *)self setHomeManager:managerCopy];
  v8 = objc_opt_new();
  userData = [(HMDBackgroundOperation *)self userData];
  v10 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v11 = [objc_opt_class() findUserWithUUID:v10 fromHomeManager:managerCopy];
  v12 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v14 = [v12 findAccessoryUsing:accessoryUUID homeManager:managerCopy];

  v15 = v14;
  v16 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  if (v18)
  {
    v20 = v11 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20 || accessoryOperationStatus == 0;
  v102 = v18;
  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v26 = v97 = v10;
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      contexta = v8;
      v92 = managerCopy;
      v28 = v27 = flowCopy;
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      v29 = v15;
      v31 = v30 = v16;
      *buf = 138544130;
      v104 = v25;
      v105 = 2112;
      v106 = v26;
      v107 = 2112;
      v108 = v28;
      v109 = 2112;
      v110 = v31;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Required parameters does not exist to properly execute this operation : [%@/%@]", buf, 0x2Au);

      v16 = v30;
      v15 = v29;

      flowCopy = v27;
      v8 = contexta;
      managerCopy = v92;

      v10 = v97;
    }

    objc_autoreleasePoolPop(v22);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v8 setError:v32];

    [v8 setShouldReschedule:1];
    goto LABEL_30;
  }

  if (accessoryOperationStatus == 1)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v37 = v98 = v10;
      [v15 shortDescription];
      contextb = v8;
      v93 = managerCopy;
      v39 = v38 = flowCopy;
      [v16 shortDescription];
      v40 = v15;
      v42 = v41 = v16;
      *buf = 138544130;
      v104 = v36;
      v105 = 2112;
      v106 = v37;
      v107 = 2112;
      v108 = v39;
      v109 = 2112;
      v110 = v42;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] For the accessory [%@] with user [%@], this operation can never successfully run in the future. Hence marking this operation as finished.", buf, 0x2Au);

      v16 = v41;
      v15 = v40;

      flowCopy = v38;
      v8 = contextb;
      managerCopy = v93;

      v10 = v98;
    }

    objc_autoreleasePoolPop(v33);
    v43 = MEMORY[0x277CCA9B8];
    v44 = 23;
LABEL_29:
    v68 = [v43 hmErrorWithCode:v44];
    [v8 setError:v68];

LABEL_30:
    v69 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
    v57 = v102;
    goto LABEL_31;
  }

  if (([v18 supportsAnyInPersonAccess] & 1) == 0)
  {
    v58 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v60 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v95 = v16;
      v62 = v100 = v10;
      [v15 shortDescription];
      v63 = v15;
      v64 = managerCopy;
      v65 = v8;
      v67 = v66 = flowCopy;
      *buf = 138543874;
      v104 = v61;
      v105 = 2112;
      v106 = v62;
      v107 = 2112;
      v108 = v67;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory [%@] does not support features that enforce access directly. Hence marking this operation as finished.", buf, 0x20u);

      flowCopy = v66;
      v8 = v65;
      managerCopy = v64;
      v15 = v63;

      v16 = v95;
      v10 = v100;
    }

    objc_autoreleasePoolPop(v58);
    v43 = MEMORY[0x277CCA9B8];
    v44 = 48;
    goto LABEL_29;
  }

  home = [v18 home];
  if (home)
  {
    isRestrictedGuest = [v16 isRestrictedGuest];
    context = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v48 = HMFGetOSLogHandle();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
    if (isRestrictedGuest)
    {
      v94 = v16;
      if (v49)
      {
        v50 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        [v102 shortDescription];
        v52 = v99 = v10;
        [v94 shortDescription];
        v86 = v15;
        v53 = managerCopy;
        v54 = v8;
        v56 = v55 = flowCopy;
        *buf = 138544130;
        v104 = v50;
        v105 = 2112;
        v106 = uUID;
        v107 = 2112;
        v108 = v52;
        v109 = 2112;
        v110 = v56;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All checks are completed, now attempting to audit allowed accessory [%@] with restricted guest [%@]", buf, 0x2Au);

        flowCopy = v55;
        v8 = v54;
        managerCopy = v53;
        v15 = v86;

        v10 = v99;
      }

      objc_autoreleasePoolPop(context);
      v57 = v102;
      v16 = v94;
      if ([v102 supportsCHIP])
      {
        [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)selfCopy4 _auditMatterAccessory:v102 forRestrictedGuest:v94 inHome:home flow:flowCopy];
      }

      else
      {
        [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)selfCopy4 _auditHAPAccessory:v102 forRestrictedGuest:v94 inHome:home flow:flowCopy];
      }
      v69 = ;
      goto LABEL_43;
    }

    if (v49)
    {
      v82 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v87 = v15;
      v84 = v83 = v10;
      *buf = 138543874;
      v104 = v82;
      v105 = 2112;
      v106 = v84;
      v107 = 2112;
      v108 = v16;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot proceed with removing the user as it is not restricted guest. : %@", buf, 0x20u);

      v10 = v83;
      v15 = v87;
    }

    objc_autoreleasePoolPop(context);
    v85 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v8 setError:v85];
  }

  else
  {
    v71 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v74 = contextc = v71;
      [flowCopy UUID];
      v96 = v16;
      v75 = v101 = v10;
      [v15 shortDescription];
      v76 = v15;
      v77 = managerCopy;
      v78 = v8;
      v80 = v79 = flowCopy;
      *buf = 138543874;
      v104 = v74;
      v105 = 2112;
      v106 = v75;
      v107 = 2112;
      v108 = v80;
      _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory [%@] does not have a home", buf, 0x20u);

      flowCopy = v79;
      v8 = v78;
      managerCopy = v77;
      v15 = v76;

      v16 = v96;
      v10 = v101;

      v71 = contextc;
    }

    objc_autoreleasePoolPop(v71);
    v81 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 setError:v81];

    [v8 setShouldReschedule:1];
  }

  v69 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
  v57 = v102;
LABEL_43:

LABEL_31:

  return v69;
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
    return [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v5 mainWithError:v6, v7];
  }
}

- (BOOL)mainWithError:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
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
    v56 = v8;
    v57 = 2112;
    v58 = uUID;
    v59 = 2112;
    v60 = accessoryUUID;
    v61 = 2112;
    v62 = v12;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Restricted Guest}] Performing audit for allowed accessory [%@] for restricted guest [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  v14 = dispatch_get_global_queue(21, 0);
  v15 = [v13 initWithQueue:v14];

  v16 = MEMORY[0x277D0F7C0];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __69__HMDAuditAllowedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke;
  v53[3] = &unk_2786898D8;
  v53[4] = selfCopy;
  v17 = internalOnlyInitializer;
  v54 = v17;
  v18 = [v16 inContext:v15 perform:v53];
  v51 = 0;
  v52 = 0;
  v19 = [v18 waitForResult:&v52 orError:&v51 withTimeout:1.2e11];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v49 = v18;
    v24 = v23 = v15;
    uUID2 = [v17 UUID];
    accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)v21 accessoryUUID];
    v27 = HMFBooleanToString();
    *buf = 138544386;
    v56 = v24;
    v57 = 2112;
    v58 = uUID2;
    v59 = 2112;
    v60 = accessoryUUID2;
    v61 = 2112;
    v62 = v27;
    v63 = 2112;
    v64 = v51;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Finished adding the user from [%@] resulted in outcome: [%@] with error: [%@]", buf, 0x34u);

    v15 = v23;
    v18 = v49;
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
      v56 = v38;
      v57 = 2112;
      v58 = uUID3;
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

  if (v51)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      uUID4 = [v17 UUID];
      *buf = 138543874;
      v56 = v31;
      v57 = 2112;
      v58 = uUID4;
      v59 = 2112;
      v60 = v51;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation should not have resulted in a rejected promise. File a radar. Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    errorCopy2 = error;
    if (error)
    {
      v34 = v51;
LABEL_15:
      LOBYTE(v40) = 0;
      *errorCopy2 = v34;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  error = [v52 error];

  if (error)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v21;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID5 = [v17 UUID];
      error2 = [v52 error];
      *buf = 138543874;
      v56 = v45;
      v57 = 2112;
      v58 = uUID5;
      v59 = 2112;
      v60 = error2;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    if (error)
    {
      *error = [v52 error];
    }

    v40 = [v52 shouldReschedule] ^ 1;
  }

  else
  {
    LOBYTE(v40) = 1;
  }

LABEL_24:

  return v40;
}

HMDAuditAllowedAccessoryForRestrictedGuestOperation *__69__HMDAuditAllowedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke(uint64_t a1)
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
    return [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v7 initWithAccessory:v8 restrictedGuest:v9, v10];
  }
}

- (HMDAuditAllowedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  uuid = [accessoryCopy uuid];
  identifier = [accessoryCopy identifier];
  home = [accessoryCopy home];

  if (home)
  {
    home2 = [accessoryCopy home];
    pairingIdentity = [guestCopy pairingIdentity];
    uuid2 = [home2 uuid];
    v24 = @"sharedUserUUIDKey";
    uuid3 = [guestCopy uuid];
    v25 = uuid3;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v23.receiver = self;
    v23.super_class = HMDAuditAllowedAccessoryForRestrictedGuestOperation;
    v22 = 0;
    selfCopy = [(HMDAddAccessoryPairingOperation *)&v23 initWithAccessoryUUID:uuid accessoryIdentifier:identifier newPairingIdentity:pairingIdentity homeUUIDWhereAccessoryWasPaired:uuid2 asOwner:0 asAdmin:0 shouldUpdateKeyChainEntry:v22 userData:v15];

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
      v27 = v20;
      v28 = 2112;
      v29 = uuid;
      v30 = 2112;
      v31 = identifier;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create add accessory pairing operation for accessory: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t35_119131 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t35_119131, &__block_literal_global_119132);
  }

  v3 = logCategory__hmf_once_v36_119133;

  return v3;
}

void __66__HMDAuditAllowedAccessoryForRestrictedGuestOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v36_119133;
  logCategory__hmf_once_v36_119133 = v0;
}

@end