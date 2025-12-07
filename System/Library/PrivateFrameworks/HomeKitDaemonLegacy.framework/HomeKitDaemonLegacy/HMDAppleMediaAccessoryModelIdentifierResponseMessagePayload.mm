@interface HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithModelIdentifier:(id)identifier;
- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload

- (unint64_t)hash
{
  modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v3 = [modelIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
      modelIdentifier2 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v6 modelIdentifier];
      v9 = [modelIdentifier hmf_isEqualToUUID:modelIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v5 = [v3 initWithName:@"modelIdentifier" value:modelIdentifier];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)payloadCopy
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCF0B8];
  modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  uUIDString = [modelIdentifier UUIDString];
  v7[0] = uUIDString;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithPayload:(id)payload
{
  v16 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:*MEMORY[0x277CCF0B8]];
  if (v5)
  {
    selfCopy = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self initWithModelIdentifier:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = payloadCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive message due to no model identifier in payload: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v12.receiver = self;
    v12.super_class = HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload;
    v7 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_modelIdentifier, identifier);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_51971 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_51971, &__block_literal_global_51972);
  }

  v3 = logCategory__hmf_once_v2_51973;

  return v3;
}

uint64_t __74__HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_51973;
  logCategory__hmf_once_v2_51973 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end