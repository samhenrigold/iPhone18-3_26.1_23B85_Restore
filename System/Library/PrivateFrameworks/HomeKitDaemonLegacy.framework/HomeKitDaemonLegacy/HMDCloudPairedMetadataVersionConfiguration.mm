@interface HMDCloudPairedMetadataVersionConfiguration
+ (id)logCategory;
- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)identifier diagnostics:(id)diagnostics;
- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)identifier jsonDictionary:(id)dictionary;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudPairedMetadataVersionConfiguration

- (NSDictionary)prettyJSONDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"versionConfiguration";
  diagnostics = [(HMDCloudPairedMetadataVersionConfiguration *)self diagnostics];
  v3 = [diagnostics description];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryIdentifier = [(HMDCloudPairedMetadataVersionConfiguration *)self accessoryIdentifier];
  v5 = [v3 initWithName:@"accessoryIdentifier" value:accessoryIdentifier];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  diagnostics = [(HMDCloudPairedMetadataVersionConfiguration *)self diagnostics];
  v8 = [v6 initWithName:@"diagnosticsConfiguration" value:diagnostics];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)identifier jsonDictionary:(id)dictionary
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  firmwareVersion = [(__CFString *)identifierCopy firmwareVersion];

  if (firmwareVersion)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"d"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      objc_opt_class();
      v12 = objc_opt_isKindOfClass() & 1;
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v12)
      {
        v15 = [[HMDCloudPairedMetadataDiagnostics alloc] initWithAccessoryIdentifier:identifierCopy jsonDictionary:v11];
        if (v15)
        {
          selfCopy4 = [(HMDCloudPairedMetadataVersionConfiguration *)self initWithAccessoryIdentifier:identifierCopy diagnostics:v15];
          v17 = selfCopy4;
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            v31 = 138543874;
            v32 = v29;
            v33 = 2112;
            v34 = @"d";
            v35 = 2112;
            v36 = dictionaryCopy;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", &v31, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
          v17 = 0;
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v31 = 138543874;
          v32 = v26;
          v33 = 2112;
          v34 = @"d";
          v35 = 2112;
          v36 = dictionaryCopy;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", &v31, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
        v17 = 0;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v31 = 138543874;
        v32 = v23;
        v33 = 2112;
        v34 = @"d";
        v35 = 2112;
        v36 = dictionaryCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@JSON contains no '%@' value: %@", &v31, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Version configuration must contain firmware version: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  return v17;
}

- (HMDCloudPairedMetadataVersionConfiguration)initWithAccessoryIdentifier:(id)identifier diagnostics:(id)diagnostics
{
  identifierCopy = identifier;
  diagnosticsCopy = diagnostics;
  v13.receiver = self;
  v13.super_class = HMDCloudPairedMetadataVersionConfiguration;
  v9 = [(HMDCloudPairedMetadataVersionConfiguration *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryIdentifier, identifier);
    objc_storeStrong(&v10->_diagnostics, diagnostics);
    v11 = v10;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_136705 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_136705, &__block_literal_global_136706);
  }

  v3 = logCategory__hmf_once_v1_136707;

  return v3;
}

uint64_t __57__HMDCloudPairedMetadataVersionConfiguration_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_136707;
  logCategory__hmf_once_v1_136707 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end