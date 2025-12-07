@interface HMDAddAccessoryPairingOperation
+ (id)logCategory;
- (BOOL)addPairingToAirPlayAccessory:(id)accessory newPairingIdentity:(id)identity isOwner:(BOOL)owner error:(id *)error;
- (BOOL)addPairingToHAPAccessory:(id)accessory newPairingIdentity:(id)identity permissions:(unint64_t)permissions error:(id *)error;
- (BOOL)mainWithError:(id *)error;
- (HMDAddAccessoryPairingOperation)initWithAccessory:(id)accessory newPairingIdentity:(id)identity asOwner:(BOOL)owner asAdmin:(BOOL)admin shouldUpdateKeyChainEntry:(BOOL)entry userData:(id)data;
- (HMDAddAccessoryPairingOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier newPairingIdentity:(id)identity homeUUIDWhereAccessoryWasPaired:(id)paired asOwner:(BOOL)owner asAdmin:(BOOL)admin shouldUpdateKeyChainEntry:(BOOL)entry userData:(id)self0;
- (id)logIdentifier;
- (void)associateNewControllerKeyWithAccessory:(id)accessory controllerKeyIdentifierToAssociate:(id)associate permissions:(unint64_t)permissions withCompletion:(id)completion;
@end

@implementation HMDAddAccessoryPairingOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)addPairingToAirPlayAccessory:(id)accessory newPairingIdentity:(id)identity isOwner:(BOOL)owner error:(id *)error
{
  ownerCopy = owner;
  v48 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identityCopy = identity;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__144420;
  v40 = __Block_byref_object_dispose__144421;
  v41 = 0;
  objc_initWeak(&location, accessoryCopy);
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __97__HMDAddAccessoryPairingOperation_addPairingToAirPlayAccessory_newPairingIdentity_isOwner_error___block_invoke;
  v29 = &unk_27867B170;
  objc_copyWeak(&v34, &location);
  selfCopy = self;
  v13 = identityCopy;
  v31 = v13;
  v33 = &v36;
  v14 = v12;
  v32 = v14;
  [accessoryCopy addUserPairingIdentity:v13 isOwner:ownerCopy completionHandler:&v26];
  v15 = dispatch_time(0, 120000000000);
  if (!dispatch_group_wait(v14, v15))
  {
    v23 = v37[5];
    if (!v23)
    {
      v24 = 1;
      goto LABEL_12;
    }

    if (error)
    {
      v22 = v23;
      goto LABEL_9;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_12;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    identifier = [v13 identifier];
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    v43 = v19;
    v44 = 2112;
    v45 = identifier;
    v46 = 2112;
    v47 = shortDescription;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not add new pairing %@ to accessory %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  if (!error)
  {
    goto LABEL_10;
  }

  v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
LABEL_9:
  v24 = 0;
  *error = v22;
LABEL_12:

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v36, 8);

  return v24;
}

void __97__HMDAddAccessoryPairingOperation_addPairingToAirPlayAccessory_newPairingIdentity_isOwner_error___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) identifier];
      v11 = [WeakRetained shortDescription];
      v19 = 138544130;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v3;
      v12 = "%{public}@Unable to add new pairing %@ to accessory %@ with error: %@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 42;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v19, v15);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 40) identifier];
    v11 = [WeakRetained shortDescription];
    v19 = 138543874;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v12 = "%{public}@Successfully added new pairing %@ to accessory %@.";
    v13 = v8;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v3;
  v18 = v3;

  dispatch_group_leave(*(a1 + 48));
}

- (BOOL)addPairingToHAPAccessory:(id)accessory newPairingIdentity:(id)identity permissions:(unint64_t)permissions error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identityCopy = identity;
  v12 = dispatch_get_global_queue(-32768, 0);
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__144420;
  v47 = __Block_byref_object_dispose__144421;
  v48 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke;
  aBlock[3] = &unk_27867B120;
  aBlock[4] = self;
  v14 = identityCopy;
  v38 = v14;
  v15 = accessoryCopy;
  v39 = v15;
  v16 = v13;
  v41 = &v43;
  permissionsCopy = permissions;
  v40 = v16;
  v17 = _Block_copy(aBlock);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_55;
  v33[3] = &unk_27867B148;
  v18 = v14;
  v34 = v18;
  v19 = v12;
  v35 = v19;
  v20 = v17;
  v36 = v20;
  [v15 performOperation:5 linkType:0 operationBlock:v33 errorBlock:v20];
  v21 = dispatch_time(0, 120000000000);
  if (!dispatch_group_wait(v16, v21))
  {
    v28 = v44[5];
    if (!v28)
    {
      v29 = 1;
      goto LABEL_12;
    }

    if (error)
    {
      v27 = v28;
      goto LABEL_9;
    }

LABEL_10:
    v29 = 0;
    goto LABEL_12;
  }

  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    errorCopy = error;
    v24 = HMFGetLogIdentifier();
    identifier = [v18 identifier];
    shortDescription = [v15 shortDescription];
    *buf = 138543874;
    v50 = v24;
    v51 = 2112;
    v52 = identifier;
    v53 = 2112;
    v54 = shortDescription;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not add new pairing %@ to accessory %@", buf, 0x20u);

    error = errorCopy;
  }

  objc_autoreleasePoolPop(context);
  if (!error)
  {
    goto LABEL_10;
  }

  v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
LABEL_9:
  v29 = 0;
  *error = v27;
LABEL_12:

  _Block_object_dispose(&v43, 8);
  return v29;
}

void __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) identifier];
      v9 = [*(a1 + 48) shortDescription];
      *buf = 138544130;
      v35 = v7;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v41 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to add new pairing %@ to accessory %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v10 = [*(a1 + 32) userData];
    v11 = [v10 hmf_BOOLForKey:@"shouldUpdateKeyChainEntry"];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) identifier];
      v17 = [*(a1 + 48) shortDescription];
      v18 = v17;
      v19 = @"Will not";
      *buf = 138544130;
      v35 = v15;
      if (v11)
      {
        v19 = @"Will";
      }

      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      v40 = 2112;
      v41 = v19;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully added new pairing %@ to accessory %@. %@ update the keychain entry", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v11)
    {
      dispatch_group_enter(*(a1 + 56));
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) identifier];
      v23 = *(a1 + 72);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_53;
      v30[3] = &unk_27867B0F8;
      v24 = *(a1 + 40);
      v30[4] = *(a1 + 32);
      v31 = v24;
      v32 = *(a1 + 48);
      v29 = *(a1 + 56);
      v25 = v29;
      v33 = v29;
      [v21 associateNewControllerKeyWithAccessory:v20 controllerKeyIdentifierToAssociate:v22 permissions:v23 withCompletion:v30];
    }
  }

  v26 = *(*(a1 + 64) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v3;
  v28 = v3;

  dispatch_group_leave(*(a1 + 56));
}

void __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_55(void *a1, void *a2)
{
  v3 = [a2 server];
  [v3 addPairing:a1[4] completionQueue:a1[5] completionHandler:a1[6]];
}

void __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_53(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) identifier];
      v9 = [*(a1 + 48) identifier];
      v13 = 138544130;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not store new pairing identity [%@] for accessory [%@] to keychain. [%@]", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
  v12 = v3;

  dispatch_group_leave(*(a1 + 56));
}

- (void)associateNewControllerKeyWithAccessory:(id)accessory controllerKeyIdentifierToAssociate:(id)associate permissions:(unint64_t)permissions withCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  associateCopy = associate;
  completionCopy = completion;
  v13 = objc_alloc(MEMORY[0x277CFEC20]);
  identifier = [accessoryCopy identifier];
  v15 = objc_alloc(MEMORY[0x277D0F8B0]);
  publicKey = [accessoryCopy publicKey];
  v17 = [v15 initWithPairingKeyData:publicKey];
  v18 = [v13 initWithIdentifier:identifier controllerKeyIdentifier:associateCopy publicKey:v17 privateKey:0 permissions:permissions];

  v25 = 0;
  [accessoryCopy associateControllerKeyWithAccessory:v18 error:&v25];
  v19 = v25;
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    v27 = v23;
    v28 = 2112;
    v29 = shortDescription;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating new pairing identity to key chain finished for accessory: %@ with error : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  completionCopy[2](completionCopy, v19);
}

- (BOOL)mainWithError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  userData = [(HMDBackgroundOperation *)self userData];
  v5 = [userData objectForKeyedSubscript:@"newPairingIdentifier"];

  userData2 = [(HMDBackgroundOperation *)self userData];
  v7 = [userData2 objectForKeyedSubscript:@"newPairingPublicKey"];

  userData3 = [(HMDBackgroundOperation *)self userData];
  v9 = [userData3 hmf_numberForKey:@"IsOwnerUser"];
  bOOLValue = [v9 BOOLValue];

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v12 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v15 = [v12 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v18 | v21 && v5 && v7 && accessoryOperationStatus)
  {
    if (accessoryOperationStatus == 1)
    {
      contexta = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v40 = HMFGetLogIdentifier();
        shortDescription = [v19 shortDescription];
        home = [v19 home];
        uuid = [home uuid];
        *buf = 138543874;
        *&buf[4] = v40;
        v46 = 2112;
        v47 = shortDescription;
        v48 = 2112;
        v49 = uuid;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Since the accessory [%@] is already added back to this home [%@], there is no way this operation can successfully run in the future as the required parameters will never be true. Hence marking this operation as finished.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(contexta);
      v27 = 1;
    }

    else
    {
      userData4 = [(HMDBackgroundOperation *)self userData];
      v34 = [userData4 objectForKeyedSubscript:@"newPairingPermission"];
      v41 = bOOLValue;
      unsignedIntValue = [v34 unsignedIntValue];

      v36 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v7];
      v37 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v5 publicKey:v36 privateKey:0 permissions:unsignedIntValue];
      *buf = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Add accessory pairing operation"];
      if (v18)
      {
        v38 = [(HMDAddAccessoryPairingOperation *)self addPairingToHAPAccessory:v18 newPairingIdentity:v37 permissions:unsignedIntValue error:error];
      }

      else
      {
        v38 = [(HMDAddAccessoryPairingOperation *)self addPairingToAirPlayAccessory:v21 newPairingIdentity:v37 isOwner:v41 error:error];
      }

      v27 = v38;
      __HMFActivityScopeLeave();
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy2 accessoryUUID];
      *buf = 138543874;
      *&buf[4] = v31;
      v46 = 2112;
      v47 = accessoryUUID2;
      v48 = 2112;
      v49 = accessoryIdentifier;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Required parameters does not exist to properly execute this operation : [%@/%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (HMDAddAccessoryPairingOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier newPairingIdentity:(id)identity homeUUIDWhereAccessoryWasPaired:(id)paired asOwner:(BOOL)owner asAdmin:(BOOL)admin shouldUpdateKeyChainEntry:(BOOL)entry userData:(id)self0
{
  adminCopy = admin;
  ownerCopy = owner;
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  identityCopy = identity;
  pairedCopy = paired;
  dataCopy = data;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v21 = dataCopy;
  if (!dataCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!identifierCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
LABEL_14:
    _HMFPreconditionFailure();
  }

  if (!identityCopy)
  {
    goto LABEL_14;
  }

  if (pairedCopy)
  {
    v22 = [dataCopy mutableCopy];
    [identityCopy identifier];
    v23 = v35 = self;
    [v22 setObject:v23 forKeyedSubscript:@"newPairingIdentifier"];

    publicKey = [identityCopy publicKey];
    data = [publicKey data];
    [v22 setObject:data forKeyedSubscript:@"newPairingPublicKey"];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:ownerCopy];
    [v22 setObject:v26 forKeyedSubscript:@"IsOwnerUser"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:adminCopy];
    [v22 setObject:v27 forKeyedSubscript:@"newPairingPermission"];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:entry];
    [v22 setObject:v28 forKeyedSubscript:@"shouldUpdateKeyChainEntry"];

    v36.receiver = v35;
    v36.super_class = HMDAddAccessoryPairingOperation;
    selfCopy = [(HMDAccessoryBackgroundOperation *)&v36 initWithAccessoryUUID:dCopy accessoryIdentifier:identifierCopy homeUUIDWhereAccessoryWasPaired:pairedCopy userData:v22];

    v30 = selfCopy;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v33;
      v39 = 2112;
      v40 = dCopy;
      v41 = 2112;
      v42 = identifierCopy;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create add accessory pairing operation for accessory: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v30 = 0;
  }

  return v30;
}

- (HMDAddAccessoryPairingOperation)initWithAccessory:(id)accessory newPairingIdentity:(id)identity asOwner:(BOOL)owner asAdmin:(BOOL)admin shouldUpdateKeyChainEntry:(BOOL)entry userData:(id)data
{
  adminCopy = admin;
  ownerCopy = owner;
  accessoryCopy = accessory;
  identityCopy = identity;
  dataCopy = data;
  if (accessoryCopy)
  {
    if (identityCopy)
    {
      v17 = dataCopy;
      uuid = [accessoryCopy uuid];
      identifier = [accessoryCopy identifier];
      home = [accessoryCopy home];
      uuid2 = [home uuid];
      v22 = adminCopy;
      v23 = uuid2;
      LOBYTE(v33) = entry;
      v24 = [(HMDAddAccessoryPairingOperation *)self initWithAccessoryUUID:uuid accessoryIdentifier:identifier newPairingIdentity:identityCopy homeUUIDWhereAccessoryWasPaired:uuid2 asOwner:ownerCopy asAdmin:v22 shouldUpdateKeyChainEntry:v33 userData:v17];

      return v24;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v26 = _HMFPreconditionFailure();
  return [(HMDAddAccessoryPairingOperation *)v26 initWithAccessory:v27 newPairingIdentity:v28 asOwner:v29 asAdmin:v30 shouldUpdateKeyChainEntry:v31, v32];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_144487 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_144487, &__block_literal_global_144488);
  }

  v3 = logCategory__hmf_once_v17_144489;

  return v3;
}

void __46__HMDAddAccessoryPairingOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17_144489;
  logCategory__hmf_once_v17_144489 = v0;
}

@end