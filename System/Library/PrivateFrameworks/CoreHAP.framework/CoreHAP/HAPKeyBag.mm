@interface HAPKeyBag
+ (id)logCategory;
- (BOOL)associateControllerIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEmpty;
- (BOOL)isValidIndex:(int64_t)index;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store controllerKeyList:(id)list;
- (HAPKeyStore)keyStore;
- (id)_populateBagWithPairingIdentitiesForAccessory:(id)accessory fromStore:(id)store;
- (id)currentIdentity;
- (id)logIdentifier;
- (id)nextIdentity;
- (int64_t)getCurrentIndexInBag;
- (unint64_t)totalIdentities;
- (void)refreshKeys;
- (void)setCurrentIndexInBag:(int64_t)bag;
@end

@implementation HAPKeyBag

- (HAPKeyStore)keyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_keyStore);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPKeyBag getCurrentIndexInBag](self, "getCurrentIndexInBag")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPKeyBag totalIdentities](self, "totalIdentities")}];
  v8 = [v3 stringWithFormat:@"%@ %@ (%@/%@)", v4, accessoryIdentifier, v6, v7];

  return v8;
}

- (unint64_t)totalIdentities
{
  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  v3 = [availableKeysToTry count];

  return v3;
}

- (BOOL)isEmpty
{
  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  hmf_isEmpty = [availableKeysToTry hmf_isEmpty];

  return hmf_isEmpty;
}

- (id)currentIdentity
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HAPKeyBag *)self currentIndexInBag]== -1)
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
  }

  if ([(HAPKeyBag *)self isValidIndex:[(HAPKeyBag *)self currentIndexInBag]])
  {
    availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
    v4 = [availableKeysToTry objectAtIndex:{-[HAPKeyBag currentIndexInBag](self, "currentIndexInBag")}];

    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Current Identity [%@]", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nextIdentity
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HAPKeyBag *)self isEmpty])
  {
    currentIdentity = 0;
  }

  else
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
    currentIdentity = [(HAPKeyBag *)self currentIdentity];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPKeyBag currentIndexInBag](selfCopy, "currentIndexInBag")}];
      v9 = MEMORY[0x277CCABB0];
      availableKeysToTry = [(HAPKeyBag *)selfCopy availableKeysToTry];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(availableKeysToTry, "count")}];
      v13 = 138544130;
      v14 = v7;
      v15 = 2112;
      v16 = currentIdentity;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching Identity [%@] at index : %@, total keys: [%@]", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  return currentIdentity;
}

- (BOOL)isValidIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  v5 = [availableKeysToTry count] > index;

  return v5;
}

- (void)setCurrentIndexInBag:(int64_t)bag
{
  os_unfair_lock_lock_with_options();
  self->_currentIndexInBag = bag;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)getCurrentIndexInBag
{
  os_unfair_lock_lock_with_options();
  currentIndexInBag = self->_currentIndexInBag;
  os_unfair_lock_unlock(&self->_lock);
  return currentIndexInBag;
}

- (id)_populateBagWithPairingIdentitiesForAccessory:(id)accessory fromStore:(id)store
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  storeCopy = store;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CBEB18];
  allAccessoryPairingKeys = [storeCopy allAccessoryPairingKeys];
  v11 = allAccessoryPairingKeys;
  if (allAccessoryPairingKeys)
  {
    v12 = allAccessoryPairingKeys;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v9 arrayWithArray:v12];

  v14 = [storeCopy getAssociatedControllerKeyForAccessory:accessoryCopy];
  if (v14 || ([storeCopy readControllerPairingKeyForAccessory:accessoryCopy error:0], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [v13 removeObject:v14];
    [v13 insertObject:v15 atIndex:0];
  }

  if ([v13 hmf_isEmpty])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@This is strange. We do not have any controller keys in the key chain.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = [v13 copy];

  objc_autoreleasePoolPop(v8);

  return v20;
}

- (void)refreshKeys
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];

  if (!accessoryIdentifier)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  keyStore = [(HAPKeyBag *)self keyStore];

  if (!keyStore)
  {
    goto LABEL_10;
  }

  accessoryIdentifier2 = [(HAPKeyBag *)self accessoryIdentifier];
  keyStore2 = [(HAPKeyBag *)self keyStore];
  v7 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:accessoryIdentifier2 fromStore:keyStore2];

  os_unfair_lock_lock_with_options();
  if (HMFEqualObjects())
  {
    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = [v7 copy];
    availableKeysToTry = self->_availableKeysToTry;
    self->_availableKeysToTry = v8;

    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      accessoryIdentifier3 = [(HAPKeyBag *)selfCopy accessoryIdentifier];
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = accessoryIdentifier3;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Refreshed key bag for accessory [%@] with identities: [%@]", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store controllerKeyList:(id)list
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeCopy = store;
  listCopy = list;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
  }

  v12 = listCopy;
  v26.receiver = self;
  v26.super_class = HAPKeyBag;
  v13 = [(HAPKeyBag *)&v26 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryIdentifier, identifier);
    objc_storeWeak(&v14->_keyStore, storeCopy);
    v14->_currentIndexInBag = -1;
    v15 = [v12 copy];
    availableKeysToTry = v14->_availableKeysToTry;
    v14->_availableKeysToTry = v15;

    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v25 = v17;
      accessoryIdentifier = v14->_accessoryIdentifier;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v14->_availableKeysToTry, "count")}];
      firstObject = [(NSArray *)v14->_availableKeysToTry firstObject];
      *buf = 138544130;
      v28 = v20;
      v29 = 2112;
      v30 = accessoryIdentifier;
      v17 = v25;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = firstObject;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Initialized key bag for accessory [%@] with %@ keys and primary identity: [%@]", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
  }

  return v14;
}

- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  if (identifierCopy)
  {
    v8 = storeCopy;
    v9 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:identifierCopy fromStore:storeCopy];
    v10 = [(HAPKeyBag *)self initWithAccessoryIdentifier:identifierCopy keyStore:v8 controllerKeyList:v9];

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HAPKeyBag *)v12];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __24__HAPKeyBag_logCategory__block_invoke()
{
  logCategory__hmf_once_v9 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)associateControllerIdentifier:(id)identifier error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyStore = [(HAPKeyBag *)self keyStore];
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];
  v40 = 0;
  v9 = [keyStore readPublicKeyForAccessoryName:accessoryIdentifier registeredWithHomeKit:0 error:&v40];
  v10 = v40;

  if (v9 && !v10)
  {
    if (identifierCopy)
    {
      keyStore2 = [(HAPKeyBag *)self keyStore];
      accessoryIdentifier2 = [(HAPKeyBag *)self accessoryIdentifier];
      v39 = 0;
      v13 = [keyStore2 isAccessoryAssociatedWithControllerKey:accessoryIdentifier2 controllerID:&v39];
      v14 = v39;

      if (v13 && [identifierCopy isEqualToString:v14])
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          accessoryIdentifier3 = [(HAPKeyBag *)selfCopy accessoryIdentifier];
          *buf = 138543874;
          v42 = v18;
          v43 = 2112;
          v44 = identifierCopy;
          v45 = 2112;
          v46 = accessoryIdentifier3;
          _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Controller key %@ is already associated for accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        v10 = 0;
        v20 = 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    v26 = [HAPPairingIdentity alloc];
    accessoryIdentifier4 = [(HAPKeyBag *)self accessoryIdentifier];
    v28 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v9];
    v29 = [(HAPPairingIdentity *)v26 initWithIdentifier:accessoryIdentifier4 controllerKeyIdentifier:identifierCopy publicKey:v28 privateKey:0 permissions:0];

    keyStore3 = [(HAPKeyBag *)self keyStore];
    v38 = 0;
    v20 = [keyStore3 establishRelationshipBetweenAccessoryAndControllerKey:v29 error:&v38];
    v10 = v38;

    if ((v20 & 1) == 0)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v37 = v14;
        *buf = 138543618;
        v42 = v34;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to establish relationship between accessory and controller key: %@", buf, 0x16u);

        v14 = v37;
      }

      objc_autoreleasePoolPop(v31);
      if (error)
      {
        v35 = v10;
        *error = v10;
      }
    }

    goto LABEL_21;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v24;
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch accessory public key for accessory with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  if (error)
  {
    v25 = v10;
    v20 = 0;
    *error = v10;
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  return v20;
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@PV failed with error: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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

    if (v12 && ([v12 domain], v13 = objc_claimAutoreleasedReturnValue(), v14 = HMFEqualObjects(), v13, v14) && objc_msgSend(v12, "code") == -6754)
    {
      [(HAPKeyBag *)selfCopy associateControllerIdentifier:0 error:0];
      nextIdentity = [(HAPKeyBag *)selfCopy nextIdentity];
      v16 = nextIdentity != 0;
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (nextIdentity)
      {
        if (v20)
        {
          v21 = HMFGetLogIdentifier();
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPKeyBag getCurrentIndexInBag](v18, "getCurrentIndexInBag")}];
          v25 = 138543874;
          v26 = v21;
          v27 = 2112;
          v28 = v22;
          v29 = 2112;
          v30 = nextIdentity;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Going to retry PV with next pairing Identity [%@]: %@", &v25, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
      }

      else
      {
        if (v20)
        {
          v24 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v24;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Not retrying PV as exhausted all the keys from the key bag.", &v25, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [(HAPKeyBag *)v18 refreshKeys];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end