@interface HMDMediaSystemComponent
+ (id)accessoryForMediaSystemComponentWithDictionary:(id)dictionary home:(id)home;
+ (id)logCategory;
+ (id)mediaSystemComponentWithDictionary:(id)dictionary home:(id)home;
- (HMDAccessory)accessory;
- (HMDMediaProfile)mediaProfile;
- (HMDMediaSystemComponent)initWithCoder:(id)coder;
- (HMDMediaSystemComponent)initWithUUID:(id)d accessory:(id)accessory role:(id)role;
- (HMMediaSystemRole)role;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
- (void)setRole:(id)role;
@end

@implementation HMDMediaSystemComponent

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDMediaSystemComponent *)self uuid];
  [coderCopy encodeObject:uuid forKey:*MEMORY[0x277CD2430]];

  accessory = [(HMDMediaSystemComponent *)self accessory];
  [coderCopy encodeConditionalObject:accessory forKey:@"accessory"];

  role = [(HMDMediaSystemComponent *)self role];
  [coderCopy encodeObject:role forKey:*MEMORY[0x277CD2428]];
}

- (HMDMediaSystemComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2430]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2428]];

  v8 = [(HMDMediaSystemComponent *)self initWithUUID:v5 accessory:v6 role:v7];
  return v8;
}

- (void)setRole:(id)role
{
  roleCopy = role;
  os_unfair_lock_lock_with_options();
  role = self->_role;
  self->_role = roleCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaSystemRole)role
{
  os_unfair_lock_lock_with_options();
  v3 = self->_role;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDMediaProfile)mediaProfile
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  mediaProfile = [v5 mediaProfile];

  os_unfair_lock_unlock(&self->_lock);

  return mediaProfile;
}

- (id)serialize
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uuid = [(HMDMediaSystemComponent *)self uuid];
  uUIDString = [uuid UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD2430]];

  accessory = [(HMDMediaSystemComponent *)self accessory];
  uuid2 = [accessory uuid];
  uUIDString2 = [uuid2 UUIDString];
  [dictionary setObject:uUIDString2 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  role = [(HMDMediaSystemComponent *)self role];
  serialize = [role serialize];
  [dictionary setObject:serialize forKeyedSubscript:*MEMORY[0x277CD2428]];

  v11 = objc_msgSend_copy(dictionary);

  return v11;
}

- (id)logIdentifier
{
  uuid = [(HMDMediaSystemComponent *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDMediaSystemComponent *)self uuid];
  v5 = [v3 initWithName:@"uuid" value:uuid];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  accessory = [(HMDMediaSystemComponent *)self accessory];
  uuid2 = [accessory uuid];
  v9 = [v6 initWithName:@"accessoryUUID" value:uuid2];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  role = [(HMDMediaSystemComponent *)self role];
  [role type];
  v12 = HMMediaSystemRoleTypeAsString();
  v13 = [v10 initWithName:@"roleType" value:v12];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  return v14;
}

- (HMDMediaSystemComponent)initWithUUID:(id)d accessory:(id)accessory role:(id)role
{
  dCopy = d;
  accessoryCopy = accessory;
  roleCopy = role;
  v15.receiver = self;
  v15.super_class = HMDMediaSystemComponent;
  v12 = [(HMDMediaSystemComponent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    objc_storeWeak(&v13->_accessory, accessoryCopy);
    objc_storeStrong(&v13->_role, role);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_159357 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_159357, &__block_literal_global_159358);
  }

  v3 = logCategory__hmf_once_v5_159359;

  return v3;
}

void __38__HMDMediaSystemComponent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_159359;
  logCategory__hmf_once_v5_159359 = v0;
}

+ (id)mediaSystemComponentWithDictionary:(id)dictionary home:(id)home
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v7 = [dictionaryCopy hmf_UUIDForKey:*MEMORY[0x277CD2430]];
  if (v7)
  {
    v8 = [HMDMediaSystemComponent accessoryForMediaSystemComponentWithDictionary:dictionaryCopy home:homeCopy];
    if (v8)
    {
      v9 = [dictionaryCopy hmf_dictionaryForKey:*MEMORY[0x277CD2428]];
      v10 = [objc_alloc(MEMORY[0x277CD1C10]) initWithDictionary:v9];
      if (v10)
      {
        v11 = [[HMDMediaSystemComponent alloc] initWithUUID:v7 accessory:v8 role:v10];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v20;
          v24 = 2112;
          v25 = dictionaryCopy;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Role entry is nil - cannot create mediaSystemComponent with %@", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v11 = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v22 = 138543874;
        v23 = v17;
        v24 = 2112;
        v25 = dictionaryCopy;
        v26 = 2112;
        v27 = homeCopy;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@accessory cannot be looked up - cannot create mediaSystemComponent with %@in home %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@mediaComponentUUID is nil - cannot create mediaSystemComponent with %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

+ (id)accessoryForMediaSystemComponentWithDictionary:(id)dictionary home:(id)home
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v7 = [dictionaryCopy hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
  if (v7)
  {
    accessories = [homeCopy accessories];
    v9 = [accessories hmf_firstObjectWithUUID:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = dictionaryCopy;
      v18 = 2112;
      v19 = homeCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@accessoryUUID is nil transaction dictionary - cannot find accessory with %@in home %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

@end