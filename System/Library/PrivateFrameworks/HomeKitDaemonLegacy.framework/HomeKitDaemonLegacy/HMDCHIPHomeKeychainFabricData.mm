@interface HMDCHIPHomeKeychainFabricData
+ (id)logCategory;
- (BOOL)storeFabricData:(id)data dataVersion:(id)version;
- (BOOL)storeFabricData:(id)data dataVersion:(id)version creationTime:(id)time;
- (HMDCHIPHomeKeychainFabricData)initWithHomeUUID:(id)d iCloudIdentifier:(id)identifier;
- (NSArray)fabricDataItems;
- (id)logIdentifier;
- (id)rcacFromFabricData:(id)data;
- (id)unarchiveKeyItemValue:(id)value;
@end

@implementation HMDCHIPHomeKeychainFabricData

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  homeUUID = [(HMDCHIPHomeKeychainFabricData *)self homeUUID];
  v4 = [v2 stringWithFormat:@"%@", homeUUID];

  return v4;
}

- (id)rcacFromFabricData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  rootCert = [dataCopy rootCert];

  if (!rootCert)
  {
    _HMFPreconditionFailure();
  }

  rootCert2 = [dataCopy rootCert];

  if (rootCert2)
  {
    v7 = MEMORY[0x277CD5230];
    rootCert3 = [dataCopy rootCert];
    v9 = [v7 convertX509Certificate:rootCert3];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v9];
      subject = [v10 subject];
      rootCACertificateID = [subject rootCACertificateID];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        rootCert4 = [dataCopy rootCert];
        shortDescription = [rootCert4 shortDescription];
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = shortDescription;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Corrupt fabricData rootCert %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      rootCACertificateID = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = dataCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@fabricData didn't contain rootCert to extract RCAC from: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    rootCACertificateID = 0;
  }

  return rootCACertificateID;
}

- (id)unarchiveKeyItemValue:(id)value
{
  v22[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = MEMORY[0x277CCAAC8];
  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v7 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v9 = [v7 setWithArray:v8];
  v17 = 0;
  v10 = [v5 unarchivedDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 fromData:valueCopy error:&v17];
  v11 = v17;

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive item value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  return v10;
}

- (NSArray)fabricDataItems
{
  v21 = *MEMORY[0x277D85DE8];
  systemKeychainStore = [(HMDCHIPHomeKeychainFabricData *)self systemKeychainStore];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCHIPHomeKeychainFabricData signedOut](self, "signedOut") ^ 1}];
  v18 = 0;
  v5 = [systemKeychainStore allKeychainItemsForType:&unk_286628798 identifier:0 syncable:v4 error:&v18];
  v6 = v18;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to get keychain items", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke;
    v17[3] = &unk_27972A888;
    v17[4] = self;
    v12 = [v5 na_map:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke_2;
    v16[3] = &unk_279733028;
    v16[4] = self;
    v13 = [v12 na_filter:v16];

    v14 = [v13 na_map:&__block_literal_global_99089];
    array = [v14 na_filter:&__block_literal_global_114_99090];
  }

  return array;
}

id __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 valueData];
  v6 = [v4 unarchiveKeyItemValue:v5];

  if (v6)
  {
    v7 = [v6 mutableCopy];
    v8 = [v3 account];
    [v7 setObject:v8 forKeyedSubscript:@"uuid"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"homeUUID"];
    v6 = [*(a1 + 32) homeUUID];
    v7 = [v6 UUIDString];
    if ([v5 isEqual:v7])
    {
      v8 = [v4 objectForKeyedSubscript:@"iCloudID"];
      v9 = [*(a1 + 32) iCloudIdentifier];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

HMDCHIPHomeKeychainFabricDataItem *__48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCHIPHomeKeychainFabricDataItem alloc] initWithKeyItemValueDictionary:v2];

  return v3;
}

- (BOOL)storeFabricData:(id)data dataVersion:(id)version creationTime:(id)time
{
  v79[9] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  versionCopy = version;
  timeCopy = time;
  rootKeyPair = [dataCopy rootKeyPair];
  if (rootKeyPair && (v12 = rootKeyPair, [dataCopy residentOperationalKeyPair], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    rootKeyPair2 = [dataCopy rootKeyPair];
    v15 = SecKeyCopyExternalRepresentation([rootKeyPair2 privateKey], 0);

    if (v15)
    {
      residentOperationalKeyPair = [dataCopy residentOperationalKeyPair];
      v17 = SecKeyCopyExternalRepresentation([residentOperationalKeyPair privateKey], 0);

      if (v17)
      {
        v78[0] = @"homeUUID";
        homeUUID = [(HMDCHIPHomeKeychainFabricData *)self homeUUID];
        uUIDString = [homeUUID UUIDString];
        v79[0] = uUIDString;
        v78[1] = @"iCloudID";
        iCloudIdentifier = [(HMDCHIPHomeKeychainFabricData *)self iCloudIdentifier];
        v79[1] = iCloudIdentifier;
        v79[2] = v15;
        v70 = v17;
        v71 = v15;
        v78[2] = @"rootKey";
        v78[3] = @"opKey";
        v79[3] = v17;
        v78[4] = @"fabricID";
        fabricID = [dataCopy fabricID];
        v79[4] = fabricID;
        v78[5] = @"residentNodeID";
        residentNodeID = [dataCopy residentNodeID];
        v79[5] = residentNodeID;
        v78[6] = @"ipk";
        v23 = [dataCopy ipk];
        v79[6] = v23;
        v79[7] = versionCopy;
        v69 = versionCopy;
        v78[7] = @"version";
        v78[8] = @"createTime";
        v79[8] = timeCopy;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:9];

        v25 = [(HMDCHIPHomeKeychainFabricData *)self rcacFromFabricData:dataCopy];
        v68 = v25;
        if (v25)
        {
          v26 = v25;
          v27 = [v24 mutableCopy];
          [v27 setObject:v26 forKeyedSubscript:@"rcac"];
          v28 = objc_msgSend_copy(v27);
        }

        else
        {
          v28 = v24;
        }

        v73 = 0;
        v42 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v73];
        v43 = v73;
        v67 = v42;
        if (v42)
        {
          v66 = v28;
          v44 = objc_alloc_init(MEMORY[0x277CFEBC8]);
          [v44 setValueData:v42];
          [v44 setSyncable:{-[HMDCHIPHomeKeychainFabricData signedOut](self, "signedOut") ^ 1}];
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString2 = [uUID UUIDString];
          [v44 setAccount:uUIDString2];

          [v44 setAccessGroup:@"com.apple.hap.pairing"];
          [v44 setLabel:*MEMORY[0x277D17BB0]];
          [v44 setItemDescription:*MEMORY[0x277D17BA8]];
          [v44 setType:&unk_286628798];
          v47 = MEMORY[0x277CFEC78];
          type = [v44 type];
          v49 = [v47 viewHintForType:type];
          [v44 setViewHint:v49];

          systemKeychainStore = [(HMDCHIPHomeKeychainFabricData *)self systemKeychainStore];
          v72 = v43;
          [systemKeychainStore updateKeychainItem:v44 createIfNeeded:1 error:&v72];
          v51 = v72;

          v33 = v51 == 0;
          v52 = objc_autoreleasePoolPush();
          selfCopy = self;
          v54 = HMFGetOSLogHandle();
          v55 = v54;
          if (v51)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v57 = v56 = v52;
              *buf = 138543618;
              v75 = v57;
              v76 = 2112;
              v77 = v51;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to store fabric data: %@", buf, 0x16u);

              v52 = v56;
            }
          }

          else if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v62 = HMFGetLogIdentifier();
            [v44 account];
            v63 = v65 = v52;
            *buf = 138543618;
            v75 = v62;
            v76 = 2112;
            v77 = v63;
            _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Stored fabric data as %@", buf, 0x16u);

            v52 = v65;
          }

          objc_autoreleasePoolPop(v52);
          v15 = v71;
          v28 = v66;
        }

        else
        {
          v58 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *buf = 138543618;
            v75 = v61;
            v76 = 2112;
            v77 = v43;
            _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize fabric data to store: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v58);
          v33 = 0;
          v51 = v43;
          v15 = v71;
        }

        versionCopy = v69;

        v17 = v70;
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543362;
          v75 = v41;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data with a bad resident operational key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v38);
        v33 = 0;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v75 = v37;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data with a bad root private key", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v33 = 0;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data without key pairs", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = 0;
  }

  return v33;
}

- (BOOL)storeFabricData:(id)data dataVersion:(id)version
{
  v6 = MEMORY[0x277D0F7F0];
  versionCopy = version;
  dataCopy = data;
  v9 = objc_alloc_init(v6);
  v10 = MEMORY[0x277CCABB0];
  [v9 timeIntervalSince1970];
  v11 = [v10 numberWithDouble:?];
  LOBYTE(self) = [(HMDCHIPHomeKeychainFabricData *)self storeFabricData:dataCopy dataVersion:versionCopy creationTime:v11];

  return self;
}

- (HMDCHIPHomeKeychainFabricData)initWithHomeUUID:(id)d iCloudIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HMDCHIPHomeKeychainFabricData;
  v9 = [(HMDCHIPHomeKeychainFabricData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, d);
    objc_storeStrong(&v10->_iCloudIdentifier, identifier);
    v10->_signedOut = [identifierCopy isEqual:@"NOT-LOGGED-IN"];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_99121 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_99121, &__block_literal_global_124_99122);
  }

  v3 = logCategory__hmf_once_v20_99123;

  return v3;
}

uint64_t __44__HMDCHIPHomeKeychainFabricData_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_99123;
  logCategory__hmf_once_v20_99123 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end