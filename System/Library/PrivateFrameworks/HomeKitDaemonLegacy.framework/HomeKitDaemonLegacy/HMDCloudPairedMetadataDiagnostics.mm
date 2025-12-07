@interface HMDCloudPairedMetadataDiagnostics
+ (id)logCategory;
- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)identifier jsonDictionary:(id)dictionary;
- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)identifier privacyPolicyURL:(id)l uploadDestination:(id)destination consentVersion:(unint64_t)version uploadType:(unint64_t)type;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudPairedMetadataDiagnostics

- (NSDictionary)prettyJSONDictionary
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"privacyPolicyURL";
  privacyPolicyURL = [(HMDCloudPairedMetadataDiagnostics *)self privacyPolicyURL];
  v4 = [privacyPolicyURL description];
  v12[0] = v4;
  v11[1] = @"uploadDestination";
  uploadDestination = [(HMDCloudPairedMetadataDiagnostics *)self uploadDestination];
  v6 = [uploadDestination description];
  v12[1] = v6;
  v11[2] = @"consentVersion";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics consentVersion](self, "consentVersion")}];
  v12[2] = v7;
  v11[3] = @"uploadType";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics uploadType](self, "uploadType")}];
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  privacyPolicyURL = [(HMDCloudPairedMetadataDiagnostics *)self privacyPolicyURL];
  v5 = [v3 initWithName:@"privacyPolicyURL" value:privacyPolicyURL];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  uploadDestination = [(HMDCloudPairedMetadataDiagnostics *)self uploadDestination];
  v8 = [v6 initWithName:@"uploadDestination" value:uploadDestination];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics consentVersion](self, "consentVersion")}];
  v11 = [v9 initWithName:@"consentVersion" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudPairedMetadataDiagnostics uploadType](self, "uploadType")}];
  v14 = [v12 initWithName:@"uploadType" value:v13];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)identifier privacyPolicyURL:(id)l uploadDestination:(id)destination consentVersion:(unint64_t)version uploadType:(unint64_t)type
{
  identifierCopy = identifier;
  lCopy = l;
  destinationCopy = destination;
  v20.receiver = self;
  v20.super_class = HMDCloudPairedMetadataDiagnostics;
  v16 = [(HMDCloudPairedMetadataDiagnostics *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_accessoryIdentifier, identifier);
    objc_storeStrong(&v17->_privacyPolicyURL, l);
    objc_storeStrong(&v17->_uploadDestination, destination);
    v17->_consentVersion = version;
    v17->_uploadType = type;
    v18 = v17;
  }

  return v17;
}

- (HMDCloudPairedMetadataDiagnostics)initWithAccessoryIdentifier:(id)identifier jsonDictionary:(id)dictionary
{
  *&v38[13] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  firmwareVersion = [identifierCopy firmwareVersion];

  if (firmwareVersion)
  {
    v34 = 0;
    v9 = decodeStringFromJSONDictionary(dictionaryCopy, @"p", 1, &v34);
    v10 = v34;
    if (!v9)
    {
      selfCopy = 0;
LABEL_19:

      goto LABEL_20;
    }

    v33 = 0;
    v11 = decodeStringFromJSONDictionary(dictionaryCopy, @"d", 1, &v33);
    v12 = v33;
    if (!v11)
    {
      selfCopy = 0;
LABEL_18:

      goto LABEL_19;
    }

    v32 = 0;
    v13 = decodeUnsignedIntegerFromJSONDictionary(dictionaryCopy, @"c", 1, 0xFFuLL, &v32);
    v14 = v32;
    v15 = v14;
    if (v13)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      v31 = v15;
      v17 = decodeUnsignedIntegerFromJSONDictionary(dictionaryCopy, @"t", 1, 0xFFuLL, &v31);
      v18 = v31;

      if (v17)
      {
        unsignedIntegerValue2 = [v18 unsignedIntegerValue];
        if (!unsignedIntegerValue2)
        {
          v29 = [MEMORY[0x277CBEBC0] URLWithString:v10];
          v30 = [MEMORY[0x277CBEBC0] URLWithString:v12];
          self = [(HMDCloudPairedMetadataDiagnostics *)self initWithAccessoryIdentifier:identifierCopy privacyPolicyURL:v29 uploadDestination:v30 consentVersion:unsignedIntegerValue uploadType:0];

          selfCopy = self;
          goto LABEL_17;
        }

        v20 = unsignedIntegerValue2;
        v21 = objc_autoreleasePoolPush();
        self = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543874;
          v36 = v23;
          v37 = 1024;
          *v38 = v20;
          v38[2] = 2112;
          *&v38[3] = identifierCopy;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid uploadType: %u received in JSON for accessory: %@", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v21);
      }

      selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
      v18 = v14;
    }

LABEL_17:

    goto LABEL_18;
  }

  v25 = objc_autoreleasePoolPush();
  self = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v27;
    v37 = 2112;
    *v38 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Version configuration must contain firmware version: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_121987 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_121987, &__block_literal_global_121988);
  }

  v3 = logCategory__hmf_once_v1_121989;

  return v3;
}

uint64_t __48__HMDCloudPairedMetadataDiagnostics_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_121989;
  logCategory__hmf_once_v1_121989 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end