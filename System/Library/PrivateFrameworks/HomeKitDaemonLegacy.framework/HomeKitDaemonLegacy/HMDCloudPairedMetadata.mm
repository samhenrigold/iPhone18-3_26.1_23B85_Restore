@interface HMDCloudPairedMetadata
+ (id)__decodeVersionConfigurationWithVersionString:(id)string versionConfigurationValue:(id)value baseAccessoryIdentifier:(id)identifier;
+ (id)_decodeVersionConfigurationsFromJSONDictionary:(id)dictionary baseAccessoryIdentifier:(id)identifier allowUnzippedData:(BOOL)data;
+ (id)logCategory;
- (HMDCloudPairedMetadata)initWithBaseAccessoryIdentifier:(id)identifier data:(id)data allowUnzippedData:(BOOL)unzippedData;
- (HMDCloudPairedMetadata)initWithBaseAccessoryIdentifier:(id)identifier versionConfigurations:(id)configurations;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudPairedMetadata

- (NSDictionary)prettyJSONDictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  versionConfigurations = [(HMDCloudPairedMetadata *)self versionConfigurations];
  v5 = [versionConfigurations countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(versionConfigurations);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        accessoryIdentifier = [v9 accessoryIdentifier];
        firmwareVersion = [accessoryIdentifier firmwareVersion];
        versionString = [firmwareVersion versionString];

        prettyJSONDictionary = [v9 prettyJSONDictionary];
        [dictionary setObject:prettyJSONDictionary forKeyedSubscript:versionString];
      }

      v6 = [versionConfigurations countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v21 = @"versionConfigurations";
  v14 = objc_msgSend_copy(dictionary);
  v22 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  return v15;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  versionConfigurations = [(HMDCloudPairedMetadata *)self versionConfigurations];
  v5 = [v3 initWithName:@"VersionConfigurations" value:versionConfigurations];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (HMDCloudPairedMetadata)initWithBaseAccessoryIdentifier:(id)identifier data:(id)data allowUnzippedData:(BOOL)unzippedData
{
  unzippedDataCopy = unzippedData;
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  v27 = 0;
  v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v27];
  v11 = v27;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v18 = v10;
    objc_opt_class();
    v19 = objc_opt_isKindOfClass() & 1;
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v19)
    {
      v22 = [objc_opt_class() _decodeVersionConfigurationsFromJSONDictionary:v18 baseAccessoryIdentifier:identifierCopy allowUnzippedData:unzippedDataCopy];
      if (v22)
      {
        self = [(HMDCloudPairedMetadata *)self initWithBaseAccessoryIdentifier:identifierCopy versionConfigurations:v22];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      self = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@JSON is not a dictionary: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      selfCopy = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    self = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v16;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse JSON: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDCloudPairedMetadata)initWithBaseAccessoryIdentifier:(id)identifier versionConfigurations:(id)configurations
{
  identifierCopy = identifier;
  configurationsCopy = configurations;
  v13.receiver = self;
  v13.super_class = HMDCloudPairedMetadata;
  v9 = [(HMDCloudPairedMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseAccessoryIdentifier, identifier);
    objc_storeStrong(&v10->_versionConfigurations, configurations);
    v11 = v10;
  }

  return v10;
}

+ (id)_decodeVersionConfigurationsFromJSONDictionary:(id)dictionary baseAccessoryIdentifier:(id)identifier allowUnzippedData:(BOOL)data
{
  dataCopy = data;
  v54 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (dataCopy)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"v"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;
    v12 = v11;

    if (v12)
    {
      goto LABEL_6;
    }
  }

  v49 = 0;
  v16 = decodeStringFromJSONDictionary(dictionaryCopy, @"v", 1, &v49);
  v17 = v49;
  v18 = v17;
  if ((v16 & 1) == 0)
  {

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v17 options:0];
  if (!v19)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v51 = dictionaryCopy;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not valid base64: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    goto LABEL_26;
  }

  v20 = v19;
  hmd_uncompressedData = [v19 hmd_uncompressedData];
  if (!hmd_uncompressedData)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v51 = dictionaryCopy;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not compressed properly: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_26;
  }

  v48 = 0;
  v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:hmd_uncompressedData options:0 error:&v48];
  v42 = v48;
  if (v22)
  {
    v10 = v22;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v24 = v10;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (isKindOfClass)
    {
      v26 = 1;
      goto LABEL_36;
    }

    context = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v51 = dictionaryCopy;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@JSON contains a '%@' value that is not a dictionary: %@", buf, 0x20u);
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v51 = dictionaryCopy;
      v52 = 2112;
      v53 = v42;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not valid JSON: %@: %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(context);
  v26 = 0;
  v10 = 0;
LABEL_36:

  if (v26)
  {
LABEL_6:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v51) = 0;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count", context)}];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __115__HMDCloudPairedMetadata__decodeVersionConfigurationsFromJSONDictionary_baseAccessoryIdentifier_allowUnzippedData___block_invoke;
    v43[3] = &unk_279730FB8;
    selfCopy5 = self;
    v44 = identifierCopy;
    v46 = buf;
    v14 = v13;
    v45 = v14;
    [v10 enumerateKeysAndObjectsUsingBlock:v43];
    if (*(*&buf[8] + 24))
    {
      v15 = 0;
    }

    else
    {
      v15 = objc_msgSend_copy(v14);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:

  return v15;
}

void __115__HMDCloudPairedMetadata__decodeVersionConfigurationsFromJSONDictionary_baseAccessoryIdentifier_allowUnzippedData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v10 = [objc_opt_class() __decodeVersionConfigurationWithVersionString:v8 versionConfigurationValue:v7 baseAccessoryIdentifier:*(a1 + 32)];

  v9 = v10;
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
    v9 = v10;
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (id)__decodeVersionConfigurationWithVersionString:(id)string versionConfigurationValue:(id)value baseAccessoryIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  valueCopy = value;
  identifierCopy = identifier;
  v11 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:stringCopy];
  if (v11)
  {
    v12 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
      productGroup = [identifierCopy productGroup];
      productNumber = [identifierCopy productNumber];
      v18 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v15 initWithProductGroup:productGroup productNumber:productNumber firmwareVersion:v11];

      v19 = [[HMDCloudPairedMetadataVersionConfiguration alloc] initWithAccessoryIdentifier:v18 jsonDictionary:v14];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543874;
        v30 = v27;
        v31 = 2112;
        v32 = stringCopy;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Version configuration for version '%@' is not a dictionary: %@", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = stringCopy;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Version configuration contains an invalid version string: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_127468 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_127468, &__block_literal_global_127469);
  }

  v3 = logCategory__hmf_once_v1_127470;

  return v3;
}

uint64_t __37__HMDCloudPairedMetadata_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_127470;
  logCategory__hmf_once_v1_127470 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end