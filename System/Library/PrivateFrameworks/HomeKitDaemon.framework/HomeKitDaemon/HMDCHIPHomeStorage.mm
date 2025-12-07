@interface HMDCHIPHomeStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateUsingHomeModel:(id)model;
- (HMDCHIPHomeStorage)initWithCoder:(id)coder;
- (NSDictionary)debugDictionaryRepresentation;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateHomeModel:(id)model;
@end

@implementation HMDCHIPHomeStorage

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  fabricID = [(HMDCHIPHomeStorage *)self fabricID];

  if (fabricID)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    fabricID2 = [(HMDCHIPHomeStorage *)self fabricID];
    v7 = [v5 initWithName:@"Fabric ID" value:fabricID2];
    [array addObject:v7];
  }

  lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];

  if (lastNodeID)
  {
    v9 = objc_alloc(MEMORY[0x277D0F778]);
    lastNodeID2 = [(HMDCHIPHomeStorage *)self lastNodeID];
    v11 = [v9 initWithName:@"Last Node ID" value:lastNodeID2];
    [array addObject:v11];
  }

  rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];

  if (rootCertificate)
  {
    v13 = objc_alloc(MEMORY[0x277D0F778]);
    rootCertificate2 = [(HMDCHIPHomeStorage *)self rootCertificate];
    v15 = [v13 initWithName:@"Root Certificate" value:rootCertificate2];
    [array addObject:v15];
  }

  operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];

  if (operationalCertificate)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    operationalCertificate2 = [(HMDCHIPHomeStorage *)self operationalCertificate];
    v19 = [v17 initWithName:@"Operational Certificate" value:operationalCertificate2];
    [array addObject:v19];
  }

  intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];

  if (intermediateCertificate)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    intermediateCertificate2 = [(HMDCHIPHomeStorage *)self intermediateCertificate];
    v23 = [v21 initWithName:@"Intermediate Certificate" value:intermediateCertificate2];
    [array addObject:v23];
  }

  keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
  v25 = [keyValueStore count];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277D0F778]);
    v27 = MEMORY[0x277CCABB0];
    keyValueStore2 = [(HMDCHIPHomeStorage *)self keyValueStore];
    v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(keyValueStore2, "count")}];
    v30 = [v26 initWithName:@"Key-Value Store Count" value:v29];
    [array addObject:v30];
  }

  v31 = objc_msgSend_copy(array);

  return v31;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  fabricID = [(HMDCHIPHomeStorage *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", fabricID];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
  {
    fabricID = [(HMDCHIPHomeStorage *)self fabricID];
    [coderCopy encodeObject:fabricID forKey:@"HMCFS.fabricID"];

    fabricID2 = [(HMDCHIPHomeStorage *)self fabricID];
    [coderCopy encodeObject:fabricID2 forKey:@"HMCFS.fabricIndex"];

    lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];
    [coderCopy encodeObject:lastNodeID forKey:@"HMCFS.lastNodeID"];

    rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];
    [coderCopy encodeObject:rootCertificate forKey:@"HMCFS.rootCertificate"];

    operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];
    [coderCopy encodeObject:operationalCertificate forKey:@"HMCFS.operationalCertificate"];

    keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
    [coderCopy encodeObject:keyValueStore forKey:@"HMCFS.keyValueStore"];

    if ([coderCopy hmd_isForLocalStore])
    {
      intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];
      [coderCopy encodeObject:intermediateCertificate forKey:@"HMCFS.intermediateCertificate"];
    }
  }
}

- (HMDCHIPHomeStorage)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDCHIPHomeStorage *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.fabricID"];
  [(HMDCHIPHomeStorage *)v5 setFabricID:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.lastNodeID"];
  [(HMDCHIPHomeStorage *)v5 setLastNodeID:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.rootCertificate"];
  [(HMDCHIPHomeStorage *)v5 setRootCertificate:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.operationalCertificate"];
  [(HMDCHIPHomeStorage *)v5 setOperationalCertificate:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCFS.intermediateCertificate"];
  [(HMDCHIPHomeStorage *)v5 setIntermediateCertificate:v10];

  v11 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:3];
  v13 = [v11 setWithArray:{v12, v16, v17}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"HMCFS.keyValueStore"];

  [(HMDCHIPHomeStorage *)v5 setKeyValueStore:v14];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMDCHIPHomeStorage allocWithZone:?]];
  fabricID = [(HMDCHIPHomeStorage *)self fabricID];
  [(HMDCHIPHomeStorage *)v4 setFabricID:fabricID];

  lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];
  [(HMDCHIPHomeStorage *)v4 setLastNodeID:lastNodeID];

  rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];
  [(HMDCHIPHomeStorage *)v4 setRootCertificate:rootCertificate];

  operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];
  [(HMDCHIPHomeStorage *)v4 setOperationalCertificate:operationalCertificate];

  intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  [(HMDCHIPHomeStorage *)v4 setIntermediateCertificate:intermediateCertificate];

  keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
  [(HMDCHIPHomeStorage *)v4 setKeyValueStore:keyValueStore];

  return v4;
}

- (unint64_t)hash
{
  fabricID = [(HMDCHIPHomeStorage *)self fabricID];
  v4 = [fabricID hash];

  lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];
  v6 = [lastNodeID hash] ^ v4;

  rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];
  v8 = [rootCertificate hash];

  operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];
  v10 = v6 ^ v8 ^ [operationalCertificate hash];

  intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  v12 = [intermediateCertificate hash];

  keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
  v14 = v12 ^ [keyValueStore hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (v6 && (-[HMDCHIPHomeStorage fabricID](self, "fabricID"), v7 = objc_claimAutoreleasedReturnValue(), [v6 fabricID], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9) && (-[HMDCHIPHomeStorage lastNodeID](self, "lastNodeID"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastNodeID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, v12) && (-[HMDCHIPHomeStorage rootCertificate](self, "rootCertificate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "rootCertificate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = HMFEqualObjects(), v14, v13, v15) && (-[HMDCHIPHomeStorage operationalCertificate](self, "operationalCertificate"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "operationalCertificate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = HMFEqualObjects(), v17, v16, v18) && (-[HMDCHIPHomeStorage intermediateCertificate](self, "intermediateCertificate"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "intermediateCertificate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = HMFEqualObjects(), v20, v19, v21))
  {
    keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
    keyValueStore2 = [v6 keyValueStore];
    v24 = HMFEqualObjects();
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)updateHomeModel:(id)model
{
  modelCopy = model;
  fabricID = [(HMDCHIPHomeStorage *)self fabricID];
  if (fabricID)
  {
    [modelCopy setChipFabricID:fabricID];
  }

  fabricID2 = [(HMDCHIPHomeStorage *)self fabricID];
  if (fabricID2)
  {
    [modelCopy setChipFabricIndex:fabricID2];
  }

  lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];
  if (lastNodeID)
  {
    [modelCopy setChipLastNodeID:lastNodeID];
  }

  rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];
  if (rootCertificate)
  {
    [modelCopy setChipRootCertificate:rootCertificate];
  }

  operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];
  if (operationalCertificate)
  {
    [modelCopy setChipOperationalCertificate:operationalCertificate];
  }

  intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  if (intermediateCertificate)
  {
    [modelCopy setChipIntermediateCertificate:intermediateCertificate];
  }

  keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
  if (keyValueStore)
  {
    [modelCopy setChipKeyValueStore:keyValueStore];
  }
}

- (BOOL)updateUsingHomeModel:(id)model
{
  v72 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  setProperties = [modelCopy setProperties];
  if (![setProperties containsObject:@"chipFabricID"])
  {

    goto LABEL_7;
  }

  fabricID = [(HMDCHIPHomeStorage *)self fabricID];
  chipFabricID = [modelCopy chipFabricID];
  v8 = HMFEqualObjects();

  if (v8)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    fabricID2 = [(HMDCHIPHomeStorage *)selfCopy fabricID];
    chipFabricID2 = [modelCopy chipFabricID];
    v66 = 138543874;
    v67 = v12;
    v68 = 2112;
    v69 = fabricID2;
    v70 = 2112;
    v71 = chipFabricID2;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating storage fabric ID from %@ to %@", &v66, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  chipFabricID3 = [modelCopy chipFabricID];
  [(HMDCHIPHomeStorage *)selfCopy setFabricID:chipFabricID3];

  v16 = 1;
LABEL_8:
  setProperties2 = [modelCopy setProperties];
  if ([setProperties2 containsObject:@"chipLastNodeID"])
  {
    lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];
    chipLastNodeID = [modelCopy chipLastNodeID];
    v20 = HMFEqualObjects();

    if (v20)
    {
      goto LABEL_14;
    }

    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      lastNodeID2 = [(HMDCHIPHomeStorage *)selfCopy2 lastNodeID];
      chipLastNodeID2 = [modelCopy chipLastNodeID];
      v66 = 138543874;
      v67 = v24;
      v68 = 2112;
      v69 = lastNodeID2;
      v70 = 2112;
      v71 = chipLastNodeID2;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating storage last node ID from %@ to %@", &v66, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    setProperties2 = [modelCopy chipLastNodeID];
    [(HMDCHIPHomeStorage *)selfCopy2 setLastNodeID:setProperties2];
    v16 = 1;
  }

LABEL_14:
  setProperties3 = [modelCopy setProperties];
  if ([setProperties3 containsObject:@"chipRootCertificate"])
  {
    rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];
    chipRootCertificate = [modelCopy chipRootCertificate];
    v30 = HMFEqualObjects();

    if (v30)
    {
      goto LABEL_20;
    }

    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      rootCertificate2 = [(HMDCHIPHomeStorage *)selfCopy3 rootCertificate];
      chipRootCertificate2 = [modelCopy chipRootCertificate];
      v66 = 138543874;
      v67 = v34;
      v68 = 2112;
      v69 = rootCertificate2;
      v70 = 2112;
      v71 = chipRootCertificate2;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating storage root certificate from %@ to %@", &v66, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    setProperties3 = [modelCopy chipRootCertificate];
    [(HMDCHIPHomeStorage *)selfCopy3 setRootCertificate:setProperties3];
    v16 = 1;
  }

LABEL_20:
  setProperties4 = [modelCopy setProperties];
  if ([setProperties4 containsObject:@"chipOperationalCertificate"])
  {
    operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];
    chipOperationalCertificate = [modelCopy chipOperationalCertificate];
    v40 = HMFEqualObjects();

    if (v40)
    {
      goto LABEL_26;
    }

    v41 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      operationalCertificate2 = [(HMDCHIPHomeStorage *)selfCopy4 operationalCertificate];
      chipOperationalCertificate2 = [modelCopy chipOperationalCertificate];
      v66 = 138543874;
      v67 = v44;
      v68 = 2112;
      v69 = operationalCertificate2;
      v70 = 2112;
      v71 = chipOperationalCertificate2;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Updating storage operational certificate from %@ to %@", &v66, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    setProperties4 = [modelCopy chipOperationalCertificate];
    [(HMDCHIPHomeStorage *)selfCopy4 setOperationalCertificate:setProperties4];
    v16 = 1;
  }

LABEL_26:
  setProperties5 = [modelCopy setProperties];
  if ([setProperties5 containsObject:@"chipIntermediateCertificate"])
  {
    intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];
    chipIntermediateCertificate = [modelCopy chipIntermediateCertificate];
    v50 = HMFEqualObjects();

    if (v50)
    {
      goto LABEL_32;
    }

    v51 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      intermediateCertificate2 = [(HMDCHIPHomeStorage *)selfCopy5 intermediateCertificate];
      chipIntermediateCertificate2 = [modelCopy chipIntermediateCertificate];
      v66 = 138543874;
      v67 = v54;
      v68 = 2112;
      v69 = intermediateCertificate2;
      v70 = 2112;
      v71 = chipIntermediateCertificate2;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Updating storage intermediate certificate from %@ to %@", &v66, 0x20u);
    }

    objc_autoreleasePoolPop(v51);
    setProperties5 = [modelCopy chipIntermediateCertificate];
    [(HMDCHIPHomeStorage *)selfCopy5 setIntermediateCertificate:setProperties5];
    v16 = 1;
  }

LABEL_32:
  setProperties6 = [modelCopy setProperties];
  if (![setProperties6 containsObject:@"chipKeyValueStore"])
  {
LABEL_37:

    goto LABEL_38;
  }

  keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
  chipKeyValueStore = [modelCopy chipKeyValueStore];
  v60 = HMFEqualObjects();

  if ((v60 & 1) == 0)
  {
    v61 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      v66 = 138543362;
      v67 = v64;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating storage key-value store", &v66, 0xCu);
    }

    objc_autoreleasePoolPop(v61);
    setProperties6 = [modelCopy chipKeyValueStore];
    [(HMDCHIPHomeStorage *)selfCopy6 setKeyValueStore:setProperties6];
    v16 = 1;
    goto LABEL_37;
  }

LABEL_38:

  return v16;
}

- (NSDictionary)debugDictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  fabricID = [(HMDCHIPHomeStorage *)self fabricID];
  [dictionary setObject:fabricID forKeyedSubscript:@"Fabric ID"];

  lastNodeID = [(HMDCHIPHomeStorage *)self lastNodeID];
  [dictionary setObject:lastNodeID forKeyedSubscript:@"Last Node ID"];

  rootCertificate = [(HMDCHIPHomeStorage *)self rootCertificate];
  [dictionary setObject:rootCertificate forKeyedSubscript:@"Root Certificate"];

  operationalCertificate = [(HMDCHIPHomeStorage *)self operationalCertificate];
  [dictionary setObject:operationalCertificate forKeyedSubscript:@"Operational Certificate"];

  intermediateCertificate = [(HMDCHIPHomeStorage *)self intermediateCertificate];
  [dictionary setObject:intermediateCertificate forKeyedSubscript:@"Intermediate Certificate"];

  keyValueStore = [(HMDCHIPHomeStorage *)self keyValueStore];
  [dictionary setObject:keyValueStore forKeyedSubscript:@"Key-Value Store"];

  v10 = objc_msgSend_copy(dictionary);

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_80343 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_80343, &__block_literal_global_80344);
  }

  v3 = logCategory__hmf_once_v8_80345;

  return v3;
}

void __33__HMDCHIPHomeStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_80345;
  logCategory__hmf_once_v8_80345 = v0;
}

@end