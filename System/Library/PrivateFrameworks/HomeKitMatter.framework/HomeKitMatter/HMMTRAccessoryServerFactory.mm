@interface HMMTRAccessoryServerFactory
+ (id)createHMMTRHAPServiceCommon:(id)common characteristics:(id)characteristics serviceLabelIndex:(id)index serviceInstanceID:(id)d endpointID:(id)iD nodeID:(id)nodeID topology:(id)topology clusterIDCharacteristicMap:(id)self0 linkedServices:(id)self1;
+ (id)createHMMTRHAPServiceLabelServiceWithEndpointID:(id)d nodeID:(id)iD;
+ (id)createInfoService:(id)service model:(id)model manufacturer:(id)manufacturer serialNumber:(id)number instanceID:(unint64_t)d endpointID:(id)iD nodeID:(id)nodeID legacyInstanceIDAssignment:(BOOL)self0;
+ (id)instanceIDForCharacteristicType:(id)type serviceType:(id)serviceType endpointID:(id)d nodeID:(id)iD;
+ (id)logCategory;
- (HAPKeyStore)keystore;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRAccessoryServerFactory)initWithKeystore:(id)keystore browser:(id)browser;
- (id)vendAccessoryServerWithNodeID:(id)d setupCode:(id)code discriminator:(id)discriminator category:(id)category vendorID:(id)iD productID:(id)productID serialNumber:(id)number firmwareRevision:(id)self0;
@end

@implementation HMMTRAccessoryServerFactory

- (HAPKeyStore)keystore
{
  WeakRetained = objc_loadWeakRetained(&self->_keystore);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (id)vendAccessoryServerWithNodeID:(id)d setupCode:(id)code discriminator:(id)discriminator category:(id)category vendorID:(id)iD productID:(id)productID serialNumber:(id)number firmwareRevision:(id)self0
{
  v93 = *MEMORY[0x277D85DE8];
  dCopy = d;
  codeCopy = code;
  discriminatorCopy = discriminator;
  categoryCopy = category;
  iDCopy = iD;
  productIDCopy = productID;
  numberCopy = number;
  v21 = productIDCopy;
  revisionCopy = revision;
  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138544642;
    v82 = v25;
    v83 = 2112;
    v84 = dCopy;
    v85 = 2112;
    v86 = categoryCopy;
    v87 = 2112;
    v88 = iDCopy;
    v89 = 2112;
    v90 = v21;
    v91 = 2112;
    v92 = numberCopy;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@vendAccessoryServerWithNodeID - nodeID: %@, category: %@, vid: %@, pid %@, serial %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v22);
  v76 = v21;
  v77 = numberCopy;
  v74 = iDCopy;
  if (!iDCopy)
  {
    v78 = categoryCopy;
    deviceTypeID2 = 0;
    v28 = 0;
    v21 = 0;
LABEL_19:
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v82 = v42;
      v83 = 2112;
      v84 = @"Matter Accessory";
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@No product label information available so using default name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    label2 = @"Matter Accessory";
    goto LABEL_22;
  }

  browser = [(HMMTRAccessoryServerFactory *)selfCopy browser];
  vendorMetadataStore = [browser vendorMetadataStore];
  v28 = [vendorMetadataStore retrieveVendorMetadataForVendorID:iDCopy productID:v21];

  if (!v21)
  {
    v78 = categoryCopy;
    deviceTypeID2 = 0;
    goto LABEL_19;
  }

  v29 = [v28 productWithID:v21];
  categoryNumber = [v29 categoryNumber];

  if (!categoryCopy && categoryNumber)
  {
    categoryCopy = [v29 categoryNumber];
  }

  deviceTypeID = [v29 deviceTypeID];

  if (deviceTypeID)
  {
    deviceTypeID2 = [v29 deviceTypeID];
  }

  else
  {
    deviceTypeID2 = 0;
  }

  label = [v29 label];

  v78 = categoryCopy;
  if (!label)
  {
    v21 = v29;
    goto LABEL_19;
  }

  v21 = v29;
  label2 = [v29 label];
  v34 = objc_autoreleasePoolPush();
  v35 = selfCopy;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    name = [v28 name];
    *buf = 138543874;
    v82 = v37;
    v83 = 2112;
    v84 = label2;
    v85 = 2112;
    v86 = name;
    _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Using metadata product label: %@ and vendor name: %@", buf, 0x20u);

    iDCopy = v74;
  }

  objc_autoreleasePoolPop(v34);
  if (!label2)
  {
    goto LABEL_19;
  }

LABEL_22:
  v60 = label2;
  v68 = [HMMTRUtilities identifierStringWithCHIPNodeID:dCopy];
  v43 = [HMMTRAccessoryServerBuilder alloc];
  keystore = [(HMMTRAccessoryServerFactory *)selfCopy keystore];
  browser2 = [(HMMTRAccessoryServerFactory *)selfCopy browser];
  v66 = [(HMMTRAccessoryServerBuilder *)v43 initWithKeystore:keystore browser:browser2];
  v65 = [(HMMTRAccessoryServerBuilder *)v66 name:label2];
  v64 = [v65 nodeID:dCopy];
  v63 = [v64 vendorID:iDCopy];
  v72 = v28;
  name2 = [v28 name];
  v61 = [v63 vendorName:name2];
  v59 = [v61 productID:v76];
  v70 = v21;
  name3 = [v21 name];
  v45 = [v59 productName:name3];
  v46 = [v45 identifier:v68];
  v47 = [v46 manufacturer:0];
  [v47 model:0];
  v48 = v71 = dCopy;
  v49 = [v48 serialNumber:v77];
  v50 = [v49 category:v78];
  v51 = [v50 setUpPinCode:codeCopy];
  v52 = [v51 discriminator:discriminatorCopy];
  v53 = [v52 deviceTypeID:deviceTypeID2];

  v54 = [HMMTRUtilities sanitizeHAPName:v60];

  v55 = [HMMTRAccessoryServerFactory createInfoService:v54 model:0 manufacturer:0 serialNumber:0 instanceID:1 endpointID:&unk_283EE8568];
  v56 = [v53 addService:v55];

  build = [v53 build];

  return build;
}

- (HMMTRAccessoryServerFactory)initWithKeystore:(id)keystore browser:(id)browser
{
  keystoreCopy = keystore;
  browserCopy = browser;
  v11.receiver = self;
  v11.super_class = HMMTRAccessoryServerFactory;
  v8 = [(HMMTRAccessoryServerFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_keystore, keystoreCopy);
    objc_storeWeak(&v9->_browser, browserCopy);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_7462 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_7462, &__block_literal_global_7463);
  }

  v3 = logCategory__hmf_once_v5_7464;

  return v3;
}

uint64_t __42__HMMTRAccessoryServerFactory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_7464;
  logCategory__hmf_once_v5_7464 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)instanceIDForCharacteristicType:(id)type serviceType:(id)serviceType endpointID:(id)d nodeID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  serviceTypeCopy = serviceType;
  dCopy = d;
  iDCopy = iD;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  memset(data, 0, sizeof(data));
  if (typeCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:typeCopy];
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v13;
    [v13 getUUIDBytes:data];
  }

  else
  {
    *&data[0] = 0xFEFEFEFEFEFEFEFELL;
    *(&data[0] + 1) = 0xFEFEFEFEFEFEFEFELL;
  }

  CC_SHA256_Update(&c, data, 0x10u);
  if (serviceTypeCopy)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:serviceTypeCopy];
    if (v15)
    {
      v16 = v15;
      [v15 getUUIDBytes:data];

      goto LABEL_9;
    }

LABEL_12:
    _HMFPreconditionFailure();
  }

  *&data[0] = 0xEFEFEFEFEFEFEFEFLL;
  *(&data[0] + 1) = 0xEFEFEFEFEFEFEFEFLL;
LABEL_9:
  CC_SHA256_Update(&c, data, 0x10u);
  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  CC_SHA256_Update(&c, &unsignedLongLongValue, 8u);
  unsignedLongLongValue = [iDCopy unsignedLongLongValue];
  CC_SHA256_Update(&c, &unsignedLongLongValue, 8u);
  CC_SHA256_Final(data, &c);
  unsignedLongLongValue = *&data[0] & 0x7FFFFFFFFFFFFFFFLL;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];

  return v17;
}

+ (id)createHMMTRHAPServiceLabelServiceWithEndpointID:(id)d nodeID:(id)iD
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFEBA0];
  iDCopy = iD;
  dCopy = d;
  getSharedInstance = [v6 getSharedInstance];
  v10 = [getSharedInstance getDefaultCharacteristicProperties:@"000000CD-0000-1000-8000-0026BB765291"];
  integerValue = [v10 integerValue];

  v12 = [getSharedInstance getDefaultCharacteristicMetadata:@"000000CD-0000-1000-8000-0026BB765291"];
  hap_validatedAndNormalizedUUIDString = [@"000000CC-0000-1000-8000-0026BB765291" hap_validatedAndNormalizedUUIDString];
  v14 = [self instanceIDForCharacteristicType:@"000000CD-0000-1000-8000-0026BB765291" serviceType:hap_validatedAndNormalizedUUIDString endpointID:dCopy nodeID:iDCopy];
  v15 = [objc_alloc(MEMORY[0x277CFEA68]) initWithType:@"000000CD-0000-1000-8000-0026BB765291" instanceID:v14 value:&unk_283EE8550 stateNumber:0 properties:integerValue & 0xFFEF eventNotificationsEnabled:0 metadata:v12];
  v16 = [getSharedInstance getDefaultServiceProperties:@"000000CC-0000-1000-8000-0026BB765291"];
  integerValue2 = [v16 integerValue];

  v18 = [self instanceIDForCharacteristicType:0 serviceType:hap_validatedAndNormalizedUUIDString endpointID:dCopy nodeID:iDCopy];

  v19 = [HMMTRHAPService alloc];
  v23[0] = v15;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v21 = [(HMMTRHAPService *)v19 initWithType:@"000000CC-0000-1000-8000-0026BB765291" instanceID:v18 parsedCharacteristics:v20 serviceProperties:integerValue2 linkedServices:MEMORY[0x277CBEBF8] endpoint:dCopy];

  return v21;
}

+ (id)createHMMTRHAPServiceCommon:(id)common characteristics:(id)characteristics serviceLabelIndex:(id)index serviceInstanceID:(id)d endpointID:(id)iD nodeID:(id)nodeID topology:(id)topology clusterIDCharacteristicMap:(id)self0 linkedServices:(id)self1
{
  commonCopy = common;
  characteristicsCopy = characteristics;
  indexCopy = index;
  dCopy = d;
  iDCopy = iD;
  nodeIDCopy = nodeID;
  topologyCopy = topology;
  mapCopy = map;
  servicesCopy = services;
  getSharedInstance = [MEMORY[0x277CFEBA0] getSharedInstance];
  array = [MEMORY[0x277CBEB18] array];
  v52 = dCopy;
  if ([characteristicsCopy count])
  {
    v19 = 0;
    do
    {
      v20 = [characteristicsCopy objectAtIndexedSubscript:v19];
      v21 = [getSharedInstance getDefaultCharacteristicMetadata:v20];
      v22 = +[HMMTRProtocolMap protocolMap];
      [v22 updateMetadataForCharacteristic:v20 metadata:v21 endpointID:iDCopy topology:topologyCopy clusterIDCharacteristicMap:mapCopy];

      v23 = [getSharedInstance getDefaultCharacteristicProperties:v20];
      integerValue = [v23 integerValue];

      if (dCopy)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{++v19 + objc_msgSend(dCopy, "unsignedLongLongValue")}];
      }

      else
      {
        hap_validatedAndNormalizedUUIDString = [commonCopy hap_validatedAndNormalizedUUIDString];
        v25 = [self instanceIDForCharacteristicType:v20 serviceType:hap_validatedAndNormalizedUUIDString endpointID:iDCopy nodeID:nodeIDCopy];

        ++v19;
      }

      v27 = integerValue & 0xFFEF;
      v28 = objc_alloc(MEMORY[0x277CFEA68]);
      constraints = [v21 constraints];
      minimumValue = [constraints minimumValue];
      v31 = [v28 initWithType:v20 instanceID:v25 value:minimumValue stateNumber:0 properties:v27 eventNotificationsEnabled:1 metadata:v21];

      [array addObject:v31];
      dCopy = v52;
    }

    while (v19 < [characteristicsCopy count]);
  }

  if (indexCopy)
  {
    v32 = [getSharedInstance getDefaultCharacteristicProperties:@"000000CB-0000-1000-8000-0026BB765291"];
    integerValue2 = [v32 integerValue];

    v34 = [getSharedInstance getDefaultCharacteristicMetadata:@"000000CB-0000-1000-8000-0026BB765291"];
    hap_validatedAndNormalizedUUIDString2 = [commonCopy hap_validatedAndNormalizedUUIDString];
    v36 = [self instanceIDForCharacteristicType:@"000000CB-0000-1000-8000-0026BB765291" serviceType:hap_validatedAndNormalizedUUIDString2 endpointID:iDCopy nodeID:nodeIDCopy];
    v37 = objc_alloc(MEMORY[0x277CFEA68]);
    v38 = integerValue2 & 0xFFEF;
    dCopy = v52;
    v39 = [v37 initWithType:@"000000CB-0000-1000-8000-0026BB765291" instanceID:v36 value:indexCopy stateNumber:0 properties:v38 eventNotificationsEnabled:0 metadata:v34];
    [array addObject:v39];
  }

  v40 = [getSharedInstance getDefaultServiceProperties:commonCopy];
  integerValue3 = [v40 integerValue];

  if (dCopy)
  {
    v42 = dCopy;
    v43 = iDCopy;
  }

  else
  {
    hap_validatedAndNormalizedUUIDString3 = [commonCopy hap_validatedAndNormalizedUUIDString];
    v43 = iDCopy;
    v42 = [self instanceIDForCharacteristicType:0 serviceType:hap_validatedAndNormalizedUUIDString3 endpointID:iDCopy nodeID:nodeIDCopy];
  }

  v45 = [[HMMTRHAPService alloc] initWithType:commonCopy instanceID:v42 parsedCharacteristics:array serviceProperties:integerValue3 linkedServices:servicesCopy endpoint:v43];

  return v45;
}

+ (id)createInfoService:(id)service model:(id)model manufacturer:(id)manufacturer serialNumber:(id)number instanceID:(unint64_t)d endpointID:(id)iD nodeID:(id)nodeID legacyInstanceIDAssignment:(BOOL)self0
{
  v103 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  modelCopy = model;
  manufacturerCopy = manufacturer;
  numberCopy = number;
  iDCopy = iD;
  nodeIDCopy = nodeID;
  getSharedInstance = [MEMORY[0x277CFEBA0] getSharedInstance];
  v20 = [getSharedInstance getDefaultCharacteristicMetadata:@"00000023-0000-1000-8000-0026BB765291"];
  v21 = [getSharedInstance getDefaultCharacteristicProperties:@"00000023-0000-1000-8000-0026BB765291"];
  integerValue = [v21 integerValue];

  selfCopy = self;
  v97 = iDCopy;
  v98 = nodeIDCopy;
  dCopy = d;
  if (assignment)
  {
    unsignedLongLongValue = d + 1;
  }

  else
  {
    v24 = [self instanceIDForCharacteristicType:@"00000023-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:iDCopy nodeID:nodeIDCopy];
    unsignedLongLongValue = [v24 unsignedLongLongValue];
  }

  v25 = objc_alloc(MEMORY[0x277CFEA68]);
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue];
  v27 = [v25 initWithType:@"00000023-0000-1000-8000-0026BB765291" instanceID:v26 value:serviceCopy stateNumber:0 properties:integerValue eventNotificationsEnabled:1 metadata:v20];

  v28 = [getSharedInstance getDefaultCharacteristicMetadata:@"00000021-0000-1000-8000-0026BB765291"];

  v29 = [getSharedInstance getDefaultCharacteristicProperties:@"00000021-0000-1000-8000-0026BB765291"];
  integerValue2 = [v29 integerValue];

  if (assignment)
  {
    unsignedLongLongValue2 = unsignedLongLongValue + 1;
  }

  else
  {
    v32 = [selfCopy instanceIDForCharacteristicType:@"00000021-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    unsignedLongLongValue2 = [v32 unsignedLongLongValue];
  }

  v33 = objc_alloc(MEMORY[0x277CFEA68]);
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue2];
  v87 = [v33 initWithType:@"00000021-0000-1000-8000-0026BB765291" instanceID:v34 value:modelCopy stateNumber:0 properties:integerValue2 eventNotificationsEnabled:1 metadata:v28];

  v35 = [getSharedInstance getDefaultCharacteristicMetadata:@"00000020-0000-1000-8000-0026BB765291"];

  v36 = [getSharedInstance getDefaultCharacteristicProperties:@"00000020-0000-1000-8000-0026BB765291"];
  integerValue3 = [v36 integerValue];

  if (assignment)
  {
    unsignedLongLongValue3 = unsignedLongLongValue2 + 1;
  }

  else
  {
    v39 = [selfCopy instanceIDForCharacteristicType:@"00000020-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    unsignedLongLongValue3 = [v39 unsignedLongLongValue];
  }

  v40 = objc_alloc(MEMORY[0x277CFEA68]);
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue3];
  v92 = [v40 initWithType:@"00000020-0000-1000-8000-0026BB765291" instanceID:v41 value:manufacturerCopy stateNumber:0 properties:integerValue3 eventNotificationsEnabled:1 metadata:v35];

  v42 = [getSharedInstance getDefaultCharacteristicMetadata:@"00000014-0000-1000-8000-0026BB765291"];

  v43 = [getSharedInstance getDefaultCharacteristicProperties:@"00000014-0000-1000-8000-0026BB765291"];
  integerValue4 = [v43 integerValue];

  if (assignment)
  {
    unsignedLongLongValue4 = unsignedLongLongValue3 + 1;
  }

  else
  {
    v46 = [selfCopy instanceIDForCharacteristicType:@"00000014-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    unsignedLongLongValue4 = [v46 unsignedLongLongValue];
  }

  v47 = objc_alloc(MEMORY[0x277CFEA68]);
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue4];
  v91 = [v47 initWithType:@"00000014-0000-1000-8000-0026BB765291" instanceID:v48 value:@"false" stateNumber:0 properties:integerValue4 eventNotificationsEnabled:1 metadata:v42];

  v49 = [getSharedInstance getDefaultCharacteristicMetadata:@"00000030-0000-1000-8000-0026BB765291"];

  v50 = [getSharedInstance getDefaultCharacteristicProperties:@"00000030-0000-1000-8000-0026BB765291"];
  integerValue5 = [v50 integerValue];

  v86 = serviceCopy;
  if (assignment)
  {
    unsignedLongLongValue5 = unsignedLongLongValue4 + 1;
  }

  else
  {
    v53 = [selfCopy instanceIDForCharacteristicType:@"00000030-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    unsignedLongLongValue5 = [v53 unsignedLongLongValue];
  }

  v54 = objc_alloc(MEMORY[0x277CFEA68]);
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue5];
  v90 = [v54 initWithType:@"00000030-0000-1000-8000-0026BB765291" instanceID:v55 value:numberCopy stateNumber:0 properties:integerValue5 eventNotificationsEnabled:1 metadata:v49];

  v56 = [getSharedInstance getDefaultCharacteristicMetadata:@"00000052-0000-1000-8000-0026BB765291"];

  v57 = [getSharedInstance getDefaultCharacteristicProperties:@"00000052-0000-1000-8000-0026BB765291"];
  integerValue6 = [v57 integerValue];

  if (assignment)
  {
    unsignedLongLongValue6 = unsignedLongLongValue5 + 1;
    v60 = selfCopy;
  }

  else
  {
    v60 = selfCopy;
    v61 = [selfCopy instanceIDForCharacteristicType:@"00000052-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    unsignedLongLongValue6 = [v61 unsignedLongLongValue];
  }

  v62 = objc_alloc(MEMORY[0x277CFEA68]);
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue6];
  v88 = [v62 initWithType:@"00000052-0000-1000-8000-0026BB765291" instanceID:v63 value:0 stateNumber:0 properties:integerValue6 eventNotificationsEnabled:1 metadata:v56];

  v89 = [getSharedInstance getDefaultCharacteristicMetadata:@"0000026D-0000-1000-8000-0026BB765291"];

  v64 = [getSharedInstance getDefaultCharacteristicProperties:@"0000026D-0000-1000-8000-0026BB765291"];
  integerValue7 = [v64 integerValue];

  if (assignment)
  {
    unsignedLongLongValue7 = unsignedLongLongValue6 + 1;
  }

  else
  {
    v67 = [v60 instanceIDForCharacteristicType:@"0000026D-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    unsignedLongLongValue7 = [v67 unsignedLongLongValue];
  }

  v68 = v87;
  v69 = objc_alloc(MEMORY[0x277CFEA68]);
  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:unsignedLongLongValue7];
  v71 = [v69 initWithType:@"0000026D-0000-1000-8000-0026BB765291" instanceID:v70 value:&unk_283EE8568 stateNumber:0 properties:integerValue7 eventNotificationsEnabled:1 metadata:v89];

  dCopy2 = d;
  if (assignment && unsignedLongLongValue7 >= d + 9)
  {
    v73 = objc_autoreleasePoolPush();
    v74 = v60;
    v75 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      *buf = 138543618;
      v100 = v76;
      v101 = 2048;
      v102 = unsignedLongLongValue7;
      _os_log_impl(&dword_22AEAE000, v75, OS_LOG_TYPE_ERROR, "%{public}@Instance ID overflowed into next range: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v73);
    dCopy2 = dCopy;
    v68 = v87;
  }

  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:{v27, v68, v92, v91, v90, v88, v71, 0}];
  v78 = [getSharedInstance getDefaultServiceProperties:@"0000003E-0000-1000-8000-0026BB765291"];
  integerValue8 = [v78 integerValue];

  if (!assignment)
  {
    v80 = [selfCopy instanceIDForCharacteristicType:0 serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v97 nodeID:v98];
    dCopy2 = [v80 unsignedLongLongValue];
  }

  v81 = [HMMTRHAPService alloc];
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
  v83 = [(HMMTRHAPService *)v81 initWithType:@"0000003E-0000-1000-8000-0026BB765291" instanceID:v82 parsedCharacteristics:v77 serviceProperties:integerValue8 linkedServices:MEMORY[0x277CBEBF8] endpoint:v97];

  return v83;
}

@end