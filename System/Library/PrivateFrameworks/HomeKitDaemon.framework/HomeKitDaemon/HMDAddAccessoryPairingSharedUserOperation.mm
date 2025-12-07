@interface HMDAddAccessoryPairingSharedUserOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)error;
- (HMDAddAccessoryPairingSharedUserOperation)initWithAccessory:(id)accessory forSharedUser:(id)user sharedUserPairingIdentity:(id)identity asOwner:(BOOL)owner asSharedAdmin:(BOOL)admin;
- (HMDAddAccessoryPairingSharedUserOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier forSharedUser:(id)user sharedUserPairingIdentity:(id)identity asOwner:(BOOL)owner asSharedAdmin:(BOOL)admin homeUUIDWhereAccessoryWasPaired:(id)paired;
- (id)attributeDescriptions;
- (id)logIdentifier;
@end

@implementation HMDAddAccessoryPairingSharedUserOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDAddAccessoryPairingSharedUserOperation;
  attributeDescriptions = [(HMDAccessoryBackgroundOperation *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  userData = [(HMDBackgroundOperation *)self userData];
  v6 = [userData objectForKey:@"sharedUserUUIDKey"];
  v7 = [v4 initWithName:@"sharedUserUUID" value:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [attributeDescriptions arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (BOOL)mainWithError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HMDAddAccessoryPairingSharedUserOperation;
  v5 = [(HMDAddAccessoryPairingOperation *)&v34 mainWithError:?];
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
      v36 = accessoryUUID;
      *v37 = 2112;
      *&v37[2] = accessoryIdentifier;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully added pairing for the shared user: %@ on the accessory : %@/%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__256343;
    *v37 = __Block_byref_object_dispose__256344;
    *&v37[8] = 0;
    v15 = +[HMDCoreData sharedInstance];
    homeUUID = [(HMDAccessoryBackgroundOperation *)selfCopy homeUUID];
    v17 = [v15 contextWithHomeUUID:homeUUID];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__HMDAddAccessoryPairingSharedUserOperation_mainWithError___block_invoke;
    v25[3] = &unk_278687D38;
    v25[4] = selfCopy;
    v28 = buf;
    v26 = v7;
    v29 = &v30;
    v18 = v17;
    v27 = v18;
    [v18 unsafeSynchronousBlock:v25];
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v19 = *(v31 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      accessoryIdentifier2 = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      v23 = *error;
      *buf = 138544386;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v36 = accessoryUUID2;
      *v37 = 2112;
      *&v37[2] = accessoryIdentifier2;
      *&v37[10] = 2112;
      *&v37[12] = v23;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to add pairing for shared user : %@ for accessory: %@/%@, error: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
    v19 = 0;
  }

  return v19 & 1;
}

void __59__HMDAddAccessoryPairingSharedUserOperation_mainWithError___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryUUID];
  v3 = [HMCContext findAccessoryWithModelID:v2];

  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  if (v4 | v3)
  {
    v6 = [HMCContext findUserWithModelID:*(a1 + 40)];
    if (v6)
    {
      v7 = v6;
      v8 = v4;
      if (v4 || (v8 = v5) != 0)
      {
        [v8 addPairedUsersObject:v7];
      }

      v9 = *(a1 + 48);
      v10 = *(*(a1 + 56) + 8);
      obj = *(v10 + 40);
      v11 = [v9 save:&obj];
      objc_storeStrong((v10 + 40), obj);
      *(*(*(a1 + 64) + 8) + 24) = v11;
      if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 56) + 8) + 40))
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 32);
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          v16 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138543874;
          v35 = v15;
          v36 = 2112;
          v37 = v3;
          v38 = 2112;
          v39 = v16;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to save after adding user pairings on accessory : %@, %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 40);
        *buf = 138543618;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfUser with model id: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v31 = *(*(a1 + 56) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v7 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 32) accessoryUUID];
      v22 = [*(a1 + 32) accessoryIdentifier];
      *buf = 138543874;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the mkfHAPAccessory or mkfAccessory with model id: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v24 = *(*(a1 + 56) + 8);
    v7 = *(v24 + 40);
    *(v24 + 40) = v23;
  }
}

- (HMDAddAccessoryPairingSharedUserOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier forSharedUser:(id)user sharedUserPairingIdentity:(id)identity asOwner:(BOOL)owner asSharedAdmin:(BOOL)admin homeUUIDWhereAccessoryWasPaired:(id)paired
{
  adminCopy = admin;
  ownerCopy = owner;
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  userCopy = user;
  identityCopy = identity;
  pairedCopy = paired;
  if (!dCopy)
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

  if (!userCopy)
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

  v20 = pairedCopy;
  if (pairedCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:userCopy forKeyedSubscript:@"sharedUserUUIDKey"];
    v28.receiver = self;
    v28.super_class = HMDAddAccessoryPairingSharedUserOperation;
    selfCopy = [(HMDAddAccessoryPairingOperation *)&v28 initWithAccessoryUUID:dCopy accessoryIdentifier:identifierCopy newPairingIdentity:identityCopy homeUUIDWhereAccessoryWasPaired:v20 asOwner:ownerCopy asAdmin:adminCopy shouldUpdateKeyChainEntry:0 userData:dictionary];

    v23 = selfCopy;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create add accessory pairing shared user operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v23 = 0;
  }

  return v23;
}

- (HMDAddAccessoryPairingSharedUserOperation)initWithAccessory:(id)accessory forSharedUser:(id)user sharedUserPairingIdentity:(id)identity asOwner:(BOOL)owner asSharedAdmin:(BOOL)admin
{
  adminCopy = admin;
  ownerCopy = owner;
  accessoryCopy = accessory;
  userCopy = user;
  identityCopy = identity;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!userCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v15 = identityCopy;
  if (identityCopy)
  {
    uuid = [accessoryCopy uuid];
    identifier = [accessoryCopy identifier];
    uuid2 = [userCopy uuid];
    home = [accessoryCopy home];
    uuid3 = [home uuid];
    v21 = adminCopy;
    v22 = uuid3;
    v23 = [(HMDAddAccessoryPairingSharedUserOperation *)self initWithAccessoryUUID:uuid accessoryIdentifier:identifier forSharedUser:uuid2 sharedUserPairingIdentity:v15 asOwner:ownerCopy asSharedAdmin:v21 homeUUIDWhereAccessoryWasPaired:uuid3];

    return v23;
  }

LABEL_7:
  v25 = _HMFPreconditionFailure();
  return +[(HMDAddAccessoryPairingSharedUserOperation *)v25];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_256374 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_256374, &__block_literal_global_256375);
  }

  v3 = logCategory__hmf_once_v7_256376;

  return v3;
}

void __56__HMDAddAccessoryPairingSharedUserOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_256376;
  logCategory__hmf_once_v7_256376 = v0;
}

@end