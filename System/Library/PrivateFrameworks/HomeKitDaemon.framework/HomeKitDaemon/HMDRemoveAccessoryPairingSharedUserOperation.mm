@interface HMDRemoveAccessoryPairingSharedUserOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (HMDRemoveAccessoryPairingSharedUserOperation)initWithAccessory:(id)accessory isOwnerIdentity:(BOOL)identity sharedUser:(id)user;
- (HMDRemoveAccessoryPairingSharedUserOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier isOwnerIdentity:(BOOL)identity forSharedUser:(id)user sharedUserPairingIdentity:(id)pairingIdentity homeUUIDWhereAccessoryWasPaired:(id)paired;
- (id)logIdentifier;
@end

@implementation HMDRemoveAccessoryPairingSharedUserOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)mainWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = HMDRemoveAccessoryPairingSharedUserOperation;
  v5 = [(HMDRemoveAccessoryPairingOperation *)&v33 mainWithError:?];
  userData = [(HMDBackgroundOperation *)self userData];
  v7 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      accessoryUUID = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v35 = accessoryUUID;
      LOWORD(v36) = 2112;
      *(&v36 + 2) = accessoryIdentifier;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully removed pairing for the shared user: %@ on the accessory : %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__266419;
    *&v36 = __Block_byref_object_dispose__266420;
    *(&v36 + 1) = 0;
    v15 = +[HMDCoreData sharedInstance];
    homeUUID = [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
    v17 = [v15 contextWithHomeUUID:homeUUID];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke;
    v24[3] = &unk_278687D38;
    v24[4] = selfCopy;
    v27 = buf;
    v25 = v7;
    v28 = &v29;
    v18 = v17;
    v26 = v18;
    [v18 unsafeSynchronousBlock:v24];
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v19 = *(v30 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v35 = accessoryUUID2;
      LOWORD(v36) = 2112;
      *(&v36 + 2) = accessoryIdentifier2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove pairing for shared user : %@ for accessory: %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v19 = 0;
  }

  return v19 & 1;
}

void __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryUUID];
  v3 = [HMCContext findAccessoryWithModelID:v2];

  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  v6 = v5 != 0;
  if (v4 | v5)
  {
    if (!*(a1 + 40) || ([HMCContext findUserWithModelID:?], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v18 = [*(a1 + 32) pairingIdentifierToRemove];
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v43 = v3;
        v22 = v44 = v18;
        v23 = v19;
        v24 = *(a1 + 40);
        v25 = [v4 pairingsToRemove];
        *buf = 138544130;
        v51 = v22;
        v52 = 2112;
        v53 = v24;
        v19 = v23;
        v54 = 2112;
        v55 = v44;
        v56 = 2112;
        v57 = v25;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Unable to find the mkfUser with model id: %@, %@, [%@]", buf, 0x2Au);

        v3 = v43;
        v18 = v44;
      }

      objc_autoreleasePoolPop(v19);
      if (v4)
      {
        v26 = [v4 pairingsToRemove];
        v6 = 1;
      }

      else
      {
        v26 = [v5 pairingsToRemove];
      }

      v27 = [v26 mutableCopy];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke_30;
      v47[3] = &unk_278687D10;
      v28 = v18;
      v48 = v28;
      v29 = v27;
      v49 = v29;
      [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v47];
      if (v6)
      {
        if (v4)
        {
          v30 = v4;
        }

        else
        {
          v30 = v5;
        }

        [v30 setPairingsToRemove:v29];
      }

      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 32);
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v34 = v45 = v31;
        *buf = 138543874;
        v51 = v34;
        v52 = 2112;
        v53 = v28;
        v54 = 2112;
        v55 = v29;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Removed pairing : [%@], new list: %@", buf, 0x20u);

        v31 = v45;
      }

      objc_autoreleasePoolPop(v31);
      v8 = 0;
      goto LABEL_25;
    }

    v8 = v7;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      if (!v5)
      {
LABEL_25:
        v35 = *(a1 + 48);
        v36 = *(*(a1 + 56) + 8);
        obj = *(v36 + 40);
        v37 = [v35 save:&obj];
        objc_storeStrong((v36 + 40), obj);
        *(*(*(a1 + 64) + 8) + 24) = v37;
        if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
        {
          v38 = objc_autoreleasePoolPush();
          v39 = *(a1 + 32);
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = HMFGetLogIdentifier();
            v42 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138543874;
            v51 = v41;
            v52 = 2112;
            v53 = v3;
            v54 = 2112;
            v55 = v42;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to save after removing user pairings on the accessory : %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
        }

        goto LABEL_30;
      }

      v9 = v5;
    }

    [v9 removePairedUsersObject:v8];
    goto LABEL_25;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [*(a1 + 32) accessoryUUID];
    v15 = [*(a1 + 32) accessoryIdentifier];
    *buf = 138543874;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfHAPAccessory or mkfAirPlayAccessory with model id: %@/%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v17 = *(*(a1 + 56) + 8);
  v8 = *(v17 + 40);
  *(v17 + 40) = v16;
LABEL_30:
}

void __62__HMDRemoveAccessoryPairingSharedUserOperation_mainWithError___block_invoke_30(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  v4 = HMFEqualObjects();

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (HMDRemoveAccessoryPairingSharedUserOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier isOwnerIdentity:(BOOL)identity forSharedUser:(id)user sharedUserPairingIdentity:(id)pairingIdentity homeUUIDWhereAccessoryWasPaired:(id)paired
{
  identityCopy = identity;
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  userCopy = user;
  pairingIdentityCopy = pairingIdentity;
  pairedCopy = paired;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!identifierCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!pairingIdentityCopy)
  {
    goto LABEL_12;
  }

  v19 = pairedCopy;
  if (pairedCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:userCopy forKeyedSubscript:@"sharedUserUUIDKey"];
    v27.receiver = self;
    v27.super_class = HMDRemoveAccessoryPairingSharedUserOperation;
    selfCopy = [(HMDRemoveAccessoryPairingOperation *)&v27 initWithAccessory:dCopy accessoryIdentifier:identifierCopy homeUUIDWhereAccessoryWasPaired:v19 isOwnerIdentity:identityCopy identityToRemove:pairingIdentityCopy userData:dictionary];

    v22 = selfCopy;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create remove accessory pairing shared user operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

- (HMDRemoveAccessoryPairingSharedUserOperation)initWithAccessory:(id)accessory isOwnerIdentity:(BOOL)identity sharedUser:(id)user
{
  identityCopy = identity;
  accessoryCopy = accessory;
  userCopy = user;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  v10 = userCopy;
  if (!userCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  pairingIdentity = [userCopy pairingIdentity];

  if (pairingIdentity)
  {
    uuid = [accessoryCopy uuid];
    identifier = [accessoryCopy identifier];
    uuid2 = [v10 uuid];
    pairingIdentity2 = [v10 pairingIdentity];
    home = [accessoryCopy home];
    uuid3 = [home uuid];
    v18 = [(HMDRemoveAccessoryPairingSharedUserOperation *)self initWithAccessoryUUID:uuid accessoryIdentifier:identifier isOwnerIdentity:identityCopy forSharedUser:uuid2 sharedUserPairingIdentity:pairingIdentity2 homeUUIDWhereAccessoryWasPaired:uuid3];

    return v18;
  }

LABEL_7:
  v20 = _HMFPreconditionFailure();
  return +[(HMDRemoveAccessoryPairingSharedUserOperation *)v20];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_266454 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_266454, &__block_literal_global_266455);
  }

  v3 = logCategory__hmf_once_v8_266456;

  return v3;
}

void __59__HMDRemoveAccessoryPairingSharedUserOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_266456;
  logCategory__hmf_once_v8_266456 = v0;
}

@end