@interface HMMTRUtilities
+ (BOOL)compareUnorderedUniqueNumberArray:(id)array withArray:(id)withArray;
+ (BOOL)supportedLinkLayerTypesContainsEthernet:(id)ethernet;
+ (BOOL)supportedLinkLayerTypesContainsThread:(id)thread;
+ (BOOL)supportedLinkLayerTypesContainsWiFi:(id)fi;
+ (id)__baseClusterValueForAttributeDeviceListFromReadValue:(id)value forIdentify:(id)identify;
+ (id)_pathOfMTRClusterReadValue:(id)value;
+ (id)dateToMatterEpoch:(id)epoch withTimeZone:(id)zone;
+ (id)encodeObject:(id)object;
+ (id)hmmtrPairingsFromMTRClusterReadValue:(id)value vendorMetadataStore:(id)store;
+ (id)hmmtr_shortTypeFromUUID:(id)d;
+ (id)identifierStringWithCHIPNodeID:(id)d;
+ (id)matterEpochToDate:(id)date;
+ (id)mtrAuthModeAsString:(id)string;
+ (id)mtrBaseClusterValueFromMTRClusterReadResultValue:(id)value clusterIdentifier:(id)identifier attributeIdentifier:(id)attributeIdentifier forIdentify:(id)identify;
+ (id)mtrBaseClusterValueFromMTRClusterReportValue:(id)value;
+ (id)mtrPrivilegeAsString:(id)string;
+ (id)sanitizeHAPName:(id)name;
+ (id)setupIDFromSetupCode:(id)code discriminator:(id)discriminator;
+ (id)vendorNameForVendorID:(id)d vendorMetadataStore:(id)store;
+ (void)parseCaseAuthenticatedTag:(id)tag identifier:(unsigned __int16 *)identifier version:(unsigned __int16 *)version;
+ (void)printAccessControlList:(id)list;
@end

@implementation HMMTRUtilities

+ (BOOL)supportedLinkLayerTypesContainsThread:(id)thread
{
  if (thread)
  {
    return ([thread unsignedIntValue] >> 4) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)supportedLinkLayerTypesContainsEthernet:(id)ethernet
{
  if (ethernet)
  {
    return ([ethernet unsignedIntValue] >> 2) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)supportedLinkLayerTypesContainsWiFi:(id)fi
{
  if (fi)
  {
    return ([fi unsignedIntValue] >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (id)matterEpochToDate:(id)date
{
  dateCopy = date;
  if ([dateCopy longLongValue] <= 0)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    if ([dateCopy longLongValue] < 0xFFFFFFFFLL)
    {
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{(objc_msgSend(dateCopy, "longLongValue") + 946684800)}];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantFuture];
    }
    distantPast = ;
  }

  v5 = distantPast;

  return v5;
}

+ (id)dateToMatterEpoch:(id)epoch withTimeZone:(id)zone
{
  epochCopy = epoch;
  v6 = [zone secondsFromGMTForDate:epochCopy];
  v7 = MEMORY[0x277CCABB0];
  [epochCopy timeIntervalSince1970];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9 + v6 + -946684800.0];
  longLongValue = [v10 longLongValue];

  if (longLongValue < 1)
  {
    v12 = &unk_283EE8970;
  }

  else if (longLongValue <= 0xFFFFFFFE)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:longLongValue];
  }

  else
  {
    v12 = &unk_283EE8988;
  }

  return v12;
}

+ (id)sanitizeHAPName:(id)name
{
  v3 = MEMORY[0x277CCAB50];
  nameCopy = name;
  alphanumericCharacterSet = [v3 alphanumericCharacterSet];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [alphanumericCharacterSet formUnionWithCharacterSet:whitespaceCharacterSet];

  [alphanumericCharacterSet addCharactersInString:{@".’', -&#"}];
  invertedSet = [alphanumericCharacterSet invertedSet];
  v8 = [nameCopy componentsSeparatedByCharactersInSet:invertedSet];

  v9 = [v8 componentsJoinedByString:&stru_283ED2308];

  return v9;
}

+ (void)printAccessControlList:(id)list
{
  v48 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = list;
  v30 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v30)
  {
    v29 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v36 + 1) + 8 * v3);
        v5 = objc_autoreleasePoolPush();
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = HMFGetLogIdentifier();
          privilege = [v4 privilege];
          v9 = [HMMTRUtilities mtrPrivilegeAsString:privilege];
          *buf = 138543618;
          v41 = v7;
          v42 = 2112;
          v43 = v9;
          _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Privilege: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v5);
        v10 = objc_autoreleasePoolPush();
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          authMode = [v4 authMode];
          v14 = [HMMTRUtilities mtrAuthModeAsString:authMode];
          *buf = 138543618;
          v41 = v12;
          v42 = 2112;
          v43 = v14;
          _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@AuthMode: %@", buf, 0x16u);
        }

        v31 = v3;

        objc_autoreleasePoolPop(v10);
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v17;
          _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@    Subjects:", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        subjects = [v4 subjects];
        v19 = [subjects countByEnumeratingWithState:&v32 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(subjects);
              }

              v23 = *(*(&v32 + 1) + 8 * i);
              v24 = objc_autoreleasePoolPush();
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = HMFGetLogIdentifier();
                integerValue = [v23 integerValue];
                *buf = 138543874;
                v41 = v26;
                v42 = 2112;
                v43 = v23;
                v44 = 1024;
                v45 = integerValue;
                _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@    %@ (0x%016X)", buf, 0x1Cu);
              }

              objc_autoreleasePoolPop(v24);
            }

            v20 = [subjects countByEnumeratingWithState:&v32 objects:v46 count:16];
          }

          while (v20);
        }

        v3 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v30);
  }
}

+ (id)mtrAuthModeAsString:(id)string
{
  stringCopy = string;
  if ([stringCopy integerValue] == 1)
  {
    v4 = @"PASE";
  }

  else if ([stringCopy integerValue] == 2)
  {
    v4 = @"CASE";
  }

  else if ([stringCopy integerValue] == 3)
  {
    v4 = @"Group";
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

+ (id)mtrPrivilegeAsString:(id)string
{
  stringCopy = string;
  if ([stringCopy integerValue] == 5)
  {
    v4 = @"Administrator";
  }

  else if ([stringCopy integerValue] == 3)
  {
    v4 = @"Operate";
  }

  else if ([stringCopy integerValue] == 4)
  {
    v4 = @"Manage";
  }

  else if ([stringCopy integerValue] == 1)
  {
    v4 = @"View";
  }

  else if ([stringCopy integerValue] == 2)
  {
    v4 = @"ProxyView";
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

+ (void)parseCaseAuthenticatedTag:(id)tag identifier:(unsigned __int16 *)identifier version:(unsigned __int16 *)version
{
  tagCopy = tag;
  *identifier = [tagCopy unsignedIntValue] >> 16;
  LOWORD(identifier) = [tagCopy unsignedIntValue];

  *version = identifier;
}

+ (id)hmmtrPairingsFromMTRClusterReadValue:(id)value vendorMetadataStore:(id)store
{
  valueCopy = value;
  storeCopy = store;
  v7 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD5188]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 isEqual:*MEMORY[0x277CD50B0]];
  v11 = 0;
  if (v10)
  {
    v12 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke;
    v17[3] = &unk_2786EF1A0;
    v18 = storeCopy;
    v15 = [v14 na_map:v17];

    v11 = [v15 na_filter:&__block_literal_global_96];
  }

  return v11;
}

HMMTRPairing *__75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 isEqual:*MEMORY[0x277CD5180]];
  v13 = 0;
  if (v12)
  {
    v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    v17 = [v16 na_filter:&__block_literal_global_9984];
    v18 = [v17 na_map:&__block_literal_global_39];
    v19 = [v18 firstObject];

    v20 = [v16 na_filter:&__block_literal_global_46];
    v21 = [v20 na_map:&__block_literal_global_51];
    v22 = [v21 firstObject];

    v23 = [v16 na_filter:&__block_literal_global_57];
    v24 = [v23 na_map:&__block_literal_global_63];
    v25 = [v24 firstObject];

    v26 = [v16 na_filter:&__block_literal_global_69];
    v27 = [v26 na_map:&__block_literal_global_75];
    v28 = [v27 firstObject];

    v29 = [v16 na_filter:&__block_literal_global_82_9985];

    v30 = [v29 na_map:&__block_literal_global_87];
    v31 = [v30 firstObject];

    v13 = 0;
    if (v19 && v22 && v25 && v28 && v31)
    {
      v32 = [HMMTRUtilities vendorNameForVendorID:v31 vendorMetadataStore:*(a1 + 32)];
      v13 = [[HMMTRPairing alloc] initWithNodeID:v19 fabricID:v22 fabricLabel:v25 rootPublicKey:v28 vendorID:v31 vendorName:v32];
    }
  }

  return v13;
}

void *__75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_85(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v6 forIdentify:@"fabricDescriptor.vendorID"];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_2_80(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isEqual:&unk_283EE8958];
  return v8;
}

void *__75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_72(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v6 forIdentify:@"fabricDescriptor.rootPublicKey"];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_2_67(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isEqual:&unk_283EE8940];
  return v8;
}

void *__75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v6 forIdentify:@"fabricDescriptor.label"];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_2_55(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isEqual:&unk_283EE8928];
  return v8;
}

void *__75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v6 forIdentify:@"fabricDescriptor.fabricID"];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_2_44(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isEqual:&unk_283EE8910];
  return v8;
}

void *__75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v6 forIdentify:@"fabricDescriptor.nodeID"];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __75__HMMTRUtilities_hmmtrPairingsFromMTRClusterReadValue_vendorMetadataStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isEqual:&unk_283EE88F8];
  return v8;
}

+ (id)vendorNameForVendorID:(id)d vendorMetadataStore:(id)store
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  storeCopy = store;
  if ([dCopy unsignedShortValue] == 65522)
  {
    v8 = @"Chai";
  }

  else if ([dCopy unsignedShortValue] == 65521)
  {
    v8 = @"Matter Test";
  }

  else
  {
    v9 = [storeCopy retrieveVendorMetadataForVendorID:dCopy productID:0];
    v10 = v9;
    if (v9)
    {
      name = [v9 name];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = dCopy;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Cannot find vendor name for vendorID %@, returning vendorID as vendor name.", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      name = [dCopy stringValue];
    }

    v8 = name;
  }

  return v8;
}

+ (id)mtrBaseClusterValueFromMTRClusterReadResultValue:(id)value clusterIdentifier:(id)identifier attributeIdentifier:(id)attributeIdentifier forIdentify:(id)identify
{
  v74 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifierCopy = identifier;
  attributeIdentifierCopy = attributeIdentifier;
  identifyCopy = identify;
  if (valueCopy)
  {
    v14 = *MEMORY[0x277CD5188];
    v15 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = *MEMORY[0x277CD50B0];
    v61 = identifierCopy;
    v64 = attributeIdentifierCopy;
    if ([v17 isEqual:*MEMORY[0x277CD50B0]])
    {
      v55 = *MEMORY[0x277CD51A0];
      v19 = [valueCopy objectForKeyedSubscript:?];
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

      v56 = v21;
      if (v21)
      {
        v54 = v17;
        v63 = identifyCopy;
        v62 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        obj = v21;
        v22 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v22)
        {
          v23 = v22;
          v60 = *v66;
          v59 = *MEMORY[0x277CD50D8];
          v57 = *MEMORY[0x277CD5180];
          v53 = valueCopy;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v66 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v65 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v26 = objc_autoreleasePoolPush();
                selfCopy = self;
                v28 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  v29 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v71 = v29;
                  v72 = 2112;
                  v73 = v63;
                  _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Array element is not a dictionary %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v26);
                identifierCopy = v61;
              }

              v30 = [v25 objectForKeyedSubscript:{v59, v53}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v30;
              }

              else
              {
                v31 = 0;
              }

              v32 = v31;

              if (!v32)
              {
                v48 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v50 = HMFGetOSLogHandle();
                identifyCopy = v63;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v51 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v71 = v51;
                  v72 = 2112;
                  v73 = v63;
                  _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_ERROR, "%{public}@Array element data missing from array type %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v48);
                valueCopy = v53;
                identifierCopy = v61;
                attributeIdentifierCopy = v64;
                goto LABEL_52;
              }

              v33 = [v32 objectForKeyedSubscript:v14];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = v33;
              }

              else
              {
                v34 = 0;
              }

              v35 = v34;

              if (([v35 isEqual:v18] & 1) != 0 || objc_msgSend(v35, "isEqual:", v57))
              {
                attributeIdentifierCopy = v64;
                if (!identifierCopy || (v36 = [identifierCopy isEqual:&unk_283EE88C8], !v64) || !v36 || !objc_msgSend(v64, "isEqual:", &unk_283EE88E0))
                {

                  valueCopy = v53;
                  identifyCopy = v63;
LABEL_52:
                  v17 = v54;

                  v39 = 0;
                  v38 = v62;
                  goto LABEL_53;
                }

                v37 = [self __baseClusterValueForAttributeDeviceListFromReadValue:v32 forIdentify:v63];
                [v62 addObjectsFromArray:v37];
              }

              else
              {
                v37 = [v32 objectForKeyedSubscript:v55];
                [v62 addObject:v37];
                attributeIdentifierCopy = v64;
              }
            }

            v23 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
            valueCopy = v53;
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v38 = v62;
        v39 = v62;
        identifyCopy = v63;
        v17 = v54;
LABEL_53:
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v47;
          v72 = 2112;
          v73 = identifyCopy;
          _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Array missing from array type %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v39 = 0;
        identifierCopy = v61;
      }
    }

    else if ([v17 isEqual:*MEMORY[0x277CD5160]])
    {
      v39 = 0;
    }

    else if ([v17 isEqual:*MEMORY[0x277CD5180]])
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v43;
        v72 = 2112;
        v73 = identifyCopy;
        _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unexpected structure type value %@", buf, 0x16u);

        attributeIdentifierCopy = v64;
      }

      objc_autoreleasePoolPop(v40);
      v39 = 0;
      identifierCopy = v61;
    }

    else
    {
      v39 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

+ (id)__baseClusterValueForAttributeDeviceListFromReadValue:(id)value forIdentify:(id)identify
{
  v50 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifyCopy = identify;
  v6 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD5188]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if ([v8 isEqual:*MEMORY[0x277CD5180]])
  {
    v9 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v37 = v8;
      v38 = valueCopy;
      v12 = objc_opt_new();
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v36 = v11;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v42;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            if (!v20)
            {
              v21 = objc_autoreleasePoolPush();
              selfCopy = self;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v24 = v16;
                v26 = v25 = v12;
                *buf = 138543618;
                v47 = v26;
                v48 = 2112;
                v49 = identifyCopy;
                _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Structure Value does not contain a dictionary %@", buf, 0x16u);

                v12 = v25;
                v16 = v24;
              }

              objc_autoreleasePoolPop(v21);
            }

            [v12 addObject:v20];
          }

          v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v15);
      }

      v8 = v37;
      valueCopy = v38;
      v11 = v36;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v34;
        v48 = 2112;
        v49 = identifyCopy;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Element data data array missing from array type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v12 = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v30;
      v48 = 2112;
      v49 = identifyCopy;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Dictionary element is not a structure type %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v12 = 0;
  }

  return v12;
}

+ (id)mtrBaseClusterValueFromMTRClusterReportValue:(id)value
{
  v28 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    v6 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [self _pathOfMTRClusterReadValue:v5];
      v10 = [self mtrBaseClusterValueFromMTRClusterReadResultValue:v8 forIdentify:v9];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [selfCopy _pathOfMTRClusterReadValue:v5];
        v22 = 138543618;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Read value missing data key %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v22 = 138543874;
        v23 = v19;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = callStackSymbols;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@%@\nat%@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_pathOfMTRClusterReadValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    v5 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5140]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v5 = v10;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)encodeObject:(id)object
{
  v3 = MEMORY[0x277CCAAB0];
  objectCopy = object;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:objectCopy forKey:*MEMORY[0x277CCA308]];

  [v5 finishEncoding];
  encodedData = [v5 encodedData];

  return encodedData;
}

+ (BOOL)compareUnorderedUniqueNumberArray:(id)array withArray:(id)withArray
{
  v30 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  withArrayCopy = withArray;
  v8 = withArrayCopy;
  if ((arrayCopy != 0) != (withArrayCopy != 0))
  {
LABEL_2:
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  if (!(arrayCopy | withArrayCopy))
  {
    LOBYTE(v9) = 1;
    goto LABEL_9;
  }

  v10 = [arrayCopy count];
  if (v10 != [v8 count])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v21;
      v24 = 2112;
      v25 = arrayCopy;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@compareUnorderedUniqueNumberArray array %@ withArray %@ returned false", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_2;
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:arrayCopy];
  v12 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v9 = [v11 isEqual:v12];
  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v22 = 138544130;
    v23 = v16;
    v24 = 2112;
    v25 = arrayCopy;
    v26 = 2112;
    v27 = v8;
    v28 = 1024;
    v29 = v9;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@compareUnorderedUniqueNumberArray array %@ withArray %@ returned %d", &v22, 0x26u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_9:

  return v9;
}

+ (id)hmmtr_shortTypeFromUUID:(id)d
{
  dCopy = d;
  v4 = *MEMORY[0x277CFE988];
  if ([dCopy hasSuffix:*MEMORY[0x277CFE988]])
  {
    v5 = [dCopy substringToIndex:{objc_msgSend(dCopy, "length") - objc_msgSend(v4, "length")}];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"^0+" withString:&stru_283ED2308 options:1024 range:{0, objc_msgSend(v5, "length")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)setupIDFromSetupCode:(id)code discriminator:(id)discriminator
{
  v5 = MEMORY[0x277CCABB0];
  codeCopy = code;
  v7 = [v5 numberWithInt:{objc_msgSend(discriminator, "intValue") & 0xF}];
  v8 = MEMORY[0x277CCACA8];
  stringValue = [codeCopy stringValue];

  hmmtr_sha256hash = [stringValue hmmtr_sha256hash];
  stringValue2 = [v7 stringValue];
  hmmtr_sha256hash2 = [stringValue2 hmmtr_sha256hash];
  v13 = [v8 stringWithFormat:@"%@%@", hmmtr_sha256hash, hmmtr_sha256hash2];
  hmmtr_sha256hash3 = [v13 hmmtr_sha256hash];

  v15 = [hmmtr_sha256hash3 substringToIndex:4];

  return v15;
}

+ (id)identifierStringWithCHIPNodeID:(id)d
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", d];
  hmmtr_sha256hash = [v3 hmmtr_sha256hash];
  v5 = [hmmtr_sha256hash substringToIndex:12];
  v6 = [MEMORY[0x277CCAB68] stringWithString:v5];
  v7 = [v6 length];
  v8 = v7 - 2;
  if (v7 != 2)
  {
    do
    {
      [v6 insertString:@":" atIndex:v8];
      v8 -= 2;
    }

    while (v8);
  }

  return v6;
}

@end