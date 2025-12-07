@interface HMDRemoveAccessoryPairingOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (HMDRemoveAccessoryPairingOperation)initWithAccessory:(id)accessory accessoryIdentifier:(id)identifier homeUUIDWhereAccessoryWasPaired:(id)paired isOwnerIdentity:(BOOL)identity identityToRemove:(id)remove userData:(id)data;
- (HMDRemoveAccessoryPairingOperation)initWithAccessory:(id)accessory isOwnerIdentity:(BOOL)identity identityToRemove:(id)remove userData:(id)data;
- (NSString)pairingIdentifierToRemove;
- (id)logIdentifier;
@end

@implementation HMDRemoveAccessoryPairingOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (NSString)pairingIdentifierToRemove
{
  userData = [(HMDBackgroundOperation *)self userData];
  v3 = [userData objectForKeyedSubscript:@"PairingIdentifierToRemove"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDRemoveAccessoryPairingOperation *)v5 mainWithError:v6, v7];
  }
}

- (BOOL)mainWithError:(id *)error
{
  v139 = *MEMORY[0x277D85DE8];
  accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  userData = [(HMDBackgroundOperation *)self userData];
  v103 = [userData objectForKeyedSubscript:@"PairingIdentifierToRemove"];

  userData2 = [(HMDBackgroundOperation *)self userData];
  v102 = [userData2 objectForKeyedSubscript:@"PairingPublicKeyToRemove"];

  userData3 = [(HMDBackgroundOperation *)self userData];
  v7 = [userData3 hmf_numberForKey:@"IsOwnerUser"];
  bOOLValue = [v7 BOOLValue];

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v10 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v13 = [v10 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = v17;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v98 = v22;
  v99 = v19;
  if (v22 | v16 | v19 && v103 && v102 && accessoryOperationStatus)
  {
    if (accessoryOperationStatus == 1)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        shortDescription = [v20 shortDescription];
        home = [v20 home];
        uuid = [home uuid];
        *buf = 138543874;
        v128 = v26;
        v129 = 2112;
        v130 = shortDescription;
        v131 = 2112;
        v132 = uuid;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Since the accessory [%@] is already added back to this home [%@], there is no way this operation can successfully run in the future as the required parameters will never be true. Hence marking this operation as finished.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v30 = 1;
      goto LABEL_58;
    }

    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      name = [v20 name];
      uuid2 = [v20 uuid];
      *buf = 138544130;
      v128 = v39;
      v129 = 2112;
      v130 = uUID;
      v131 = 2112;
      v132 = name;
      v133 = 2112;
      v134 = uuid2;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Background Operations}] Remove Accessory Pairing Operation for: %@, %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v37);
    v126 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove accessory pairing operation"];
    v43 = dispatch_get_global_queue(-32768, 0);
    v44 = dispatch_group_create();
    dispatch_group_enter(v44);
    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = __Block_byref_object_copy__285624;
    v124 = __Block_byref_object_dispose__285625;
    v125 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke;
    aBlock[3] = &unk_27868A5F8;
    aBlock[4] = selfCopy2;
    v96 = internalOnlyInitializer;
    v115 = v96;
    v94 = v103;
    v116 = v94;
    v92 = v20;
    v117 = v92;
    v119 = &v120;
    v45 = v44;
    v118 = v45;
    v95 = _Block_copy(aBlock);
    if (v16)
    {
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_84;
      v109[3] = &unk_27868A620;
      v110 = v94;
      v111 = v102;
      v112 = v43;
      v113 = v95;
      [v16 performOperation:6 linkType:0 operationBlock:v109 errorBlock:v113];

      v46 = v110;
LABEL_26:

LABEL_27:
      v93 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v43];
      if ((v16 == 0) | bOOLValue & 1 || ![v16 supportsCHIP])
      {
        goto LABEL_36;
      }

      supportsMatterWalletKey = [v16 supportsMatterWalletKey];
      if (([supportsMatterWalletKey BOOLValue] & 1) == 0)
      {
        supportsMatterAccessCode = [v16 supportsMatterAccessCode];
        if (![supportsMatterAccessCode BOOLValue])
        {
          supportsACWGProvisioning = [v16 supportsACWGProvisioning];

          if ((supportsACWGProvisioning & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_33;
        }
      }

LABEL_33:
      dispatch_group_enter(v45);
      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy2;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        uUID2 = [v96 UUID];
        *buf = 138543618;
        v128 = v52;
        v129 = 2112;
        v130 = uUID2;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing matter users with deleted creator fabric index", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      v54 = [v16 waitForDoorLockClusterObjectWithFlow:v96];
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_89;
      v106[3] = &unk_27868A6D8;
      v107 = v96;
      v108 = v50;
      v55 = [v54 inContext:v93 then:v106];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_6;
      v104[3] = &unk_27868A700;
      v105 = v45;
      v56 = [v55 inContext:v93 finally:v104];

LABEL_36:
      v57 = dispatch_time(0, 120000000000);
      if (dispatch_group_wait(v45, v57))
      {
        v58 = objc_autoreleasePoolPush();
        v59 = selfCopy2;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = v45;
          v62 = HMFGetLogIdentifier();
          uUID3 = [v96 UUID];
          shortDescription2 = [v92 shortDescription];
          *buf = 138544130;
          v128 = v62;
          v129 = 2112;
          v130 = uUID3;
          v131 = 2112;
          v132 = v94;
          v133 = 2112;
          v134 = shortDescription2;
          _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not remove accessory pairing %@ from accessory %@ as the operation timed out", buf, 0x2Au);

          v45 = v61;
        }

        objc_autoreleasePoolPop(v58);
        if (error)
        {
          v65 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
LABEL_48:
          v30 = 0;
          *error = v65;
LABEL_56:

LABEL_57:
          _Block_object_dispose(&v120, 8);

          __HMFActivityScopeLeave();
          goto LABEL_58;
        }
      }

      else
      {
        v68 = v121[5];
        if (!v68)
        {
          v30 = 1;
          goto LABEL_56;
        }

        if (error)
        {
          v65 = v68;
          goto LABEL_48;
        }
      }

      v30 = 0;
      goto LABEL_56;
    }

    if (v99)
    {
      v66 = objc_alloc(MEMORY[0x277CFEC20]);
      v67 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v102];
      v46 = [v66 initWithIdentifier:v94 publicKey:v67 privateKey:0];

      if (v46)
      {
        [v99 removeUserPairingIdentity:v46 isOwner:bOOLValue completionHandler:v95];
        goto LABEL_26;
      }

      v76 = objc_autoreleasePoolPush();
      v77 = selfCopy2;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = v45;
        v80 = HMFGetLogIdentifier();
        uUID4 = [v96 UUID];
        accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)v77 accessoryUUID];
        *buf = 138544642;
        v128 = v80;
        v129 = 2112;
        v130 = uUID4;
        v131 = 2112;
        v132 = v94;
        v133 = 2112;
        v134 = v102;
        v135 = 2112;
        v136 = accessoryUUID2;
        v137 = 2112;
        v138 = accessoryIdentifier;
        _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unable to create pairing identity from %@/%@ for operation : [%@/%@]", buf, 0x3Eu);

        v45 = v79;
      }

      objc_autoreleasePoolPop(v76);
      if (error)
      {
        v83 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_69:
        v30 = 0;
        *error = v83;
        goto LABEL_57;
      }
    }

    else
    {
      if (!v98)
      {
        goto LABEL_27;
      }

      v69 = objc_autoreleasePoolPush();
      v70 = selfCopy2;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        uUID5 = [v96 UUID];
        *buf = 138543618;
        v128 = v72;
        v129 = 2112;
        v130 = uUID5;
        _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing pairing from Matter accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v69);
      accessoryServer = [v98 accessoryServer];
      v46 = accessoryServer;
      if (accessoryServer)
      {
        [accessoryServer removePairingIdentifier:v94 pairingPublicKey:v102 completionQueue:v43 completionHandler:v95];
        goto LABEL_26;
      }

      v85 = objc_autoreleasePoolPush();
      v86 = v70;
      v87 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v88 = v45;
        v89 = HMFGetLogIdentifier();
        uUID6 = [v96 UUID];
        accessoryUUID3 = [(HMDAccessoryBackgroundOperation *)v86 accessoryUUID];
        *buf = 138544642;
        v128 = v89;
        v129 = 2112;
        v130 = uUID6;
        v131 = 2112;
        v132 = v94;
        v133 = 2112;
        v134 = v102;
        v135 = 2112;
        v136 = accessoryUUID3;
        v137 = 2112;
        v138 = accessoryIdentifier;
        _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No accessory server from to remove %@/%@ for operation : [%@/%@]", buf, 0x3Eu);

        v45 = v88;
      }

      objc_autoreleasePoolPop(v85);
      if (error)
      {
        v83 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        goto LABEL_69;
      }
    }

    v30 = 0;
    goto LABEL_57;
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    accessoryUUID4 = [(HMDAccessoryBackgroundOperation *)selfCopy3 accessoryUUID];
    *buf = 138543874;
    v128 = v34;
    v129 = 2112;
    v130 = accessoryUUID4;
    v131 = 2112;
    v132 = accessoryIdentifier;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Required parameters does not exist to properly execute this operation : [%@/%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_58:

  return v30;
}

void __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) UUID];
      v10 = *(a1 + 48);
      v11 = [*(a1 + 56) shortDescription];
      v20 = 138544386;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v3;
      v12 = "%{public}@[Flow: %@] Unable to remove pairing %@ from accessory %@ with error: %@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 52;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v20, v15);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    v16 = *(a1 + 48);
    v11 = [*(a1 + 56) shortDescription];
    v20 = 138544130;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v11;
    v12 = "%{public}@[Flow: %@] Successfully removed pairing %@ from accessory %@";
    v13 = v7;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 42;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v3;
  v19 = v3;

  dispatch_group_leave(*(a1 + 64));
}

void __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_84(void *a1, void *a2)
{
  v3 = [a2 server];
  [v3 removePairingIdentifier:a1[4] pairingPublicKey:a1[5] completionQueue:a1[6] completionHandler:a1[7]];
}

uint64_t __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_2;
  v9[3] = &unk_27868A6B0;
  v4 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v5 = [v3 removeUsersCreatedByOurFabricWithFlow:v4 notInUserUniqueIDs:v9];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_6(v8);
  }
}

id __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__285624;
  v12 = __Block_byref_object_dispose__285625;
  v13 = [MEMORY[0x277CBEB98] set];
  v2 = +[HMDCoreData sharedInstance];
  v3 = [*(a1 + 32) homeUUID];
  v4 = [v2 contextWithHomeUUID:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_3;
  v7[3] = &unk_27868A688;
  v7[4] = *(a1 + 32);
  v7[5] = &v8;
  [v4 unsafeSynchronousBlock:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) homeUUID];
  v11 = [HMCContext findHomeWithModelID:v2];

  v3 = [v11 homeMembers];
  v4 = [v3 na_map:&__block_literal_global_285641];

  v5 = [v11 guestAccessCodes];
  v6 = [v5 na_map:&__block_literal_global_96_285642];

  v7 = [MEMORY[0x277CBEB58] set];
  [v7 addObjectsFromArray:v4];
  [v7 addObjectsFromArray:v6];
  v8 = objc_msgSend_copy(v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (HMDRemoveAccessoryPairingOperation)initWithAccessory:(id)accessory accessoryIdentifier:(id)identifier homeUUIDWhereAccessoryWasPaired:(id)paired isOwnerIdentity:(BOOL)identity identityToRemove:(id)remove userData:(id)data
{
  identityCopy = identity;
  v34 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identifierCopy = identifier;
  pairedCopy = paired;
  removeCopy = remove;
  dataCopy = data;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!identifierCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!removeCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
LABEL_14:
    _HMFPreconditionFailure();
  }

  v19 = dataCopy;
  if (!dataCopy)
  {
    goto LABEL_14;
  }

  if (pairedCopy)
  {
    v20 = [dataCopy mutableCopy];
    identifier = [removeCopy identifier];
    [v20 setObject:identifier forKeyedSubscript:@"PairingIdentifierToRemove"];

    publicKey = [removeCopy publicKey];
    data = [publicKey data];
    [v20 setObject:data forKeyedSubscript:@"PairingPublicKeyToRemove"];

    v24 = [MEMORY[0x277CCABB0] numberWithBool:identityCopy];
    [v20 setObject:v24 forKeyedSubscript:@"IsOwnerUser"];

    v31.receiver = self;
    v31.super_class = HMDRemoveAccessoryPairingOperation;
    selfCopy = [(HMDAccessoryBackgroundOperation *)&v31 initWithAccessoryUUID:accessoryCopy accessoryIdentifier:identifierCopy homeUUIDWhereAccessoryWasPaired:pairedCopy userData:v20];

    v26 = selfCopy;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create remove accessory pairing operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  return v26;
}

- (HMDRemoveAccessoryPairingOperation)initWithAccessory:(id)accessory isOwnerIdentity:(BOOL)identity identityToRemove:(id)remove userData:(id)data
{
  identityCopy = identity;
  accessoryCopy = accessory;
  removeCopy = remove;
  dataCopy = data;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!removeCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v13 = dataCopy;
  if (dataCopy)
  {
    uuid = [accessoryCopy uuid];
    identifier = [accessoryCopy identifier];
    home = [accessoryCopy home];
    uuid2 = [home uuid];
    v18 = [(HMDRemoveAccessoryPairingOperation *)self initWithAccessory:uuid accessoryIdentifier:identifier homeUUIDWhereAccessoryWasPaired:uuid2 isOwnerIdentity:identityCopy identityToRemove:removeCopy userData:v13];

    return v18;
  }

LABEL_7:
  v20 = _HMFPreconditionFailure();
  return [(HMDRemoveAccessoryPairingOperation *)v20 initWithAccessory:v21 isOwnerIdentity:v22 identityToRemove:v23, v24];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_285682 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_285682, &__block_literal_global_106_285683);
  }

  v3 = logCategory__hmf_once_v19_285684;

  return v3;
}

void __49__HMDRemoveAccessoryPairingOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_285684;
  logCategory__hmf_once_v19_285684 = v0;
}

@end