@interface HMDHAPAccessoryTransaction
+ (id)properties;
- (NSSet)chipPairings;
- (id)dependentUUIDs;
- (void)setChipPairings:(id)pairings;
@end

@implementation HMDHAPAccessoryTransaction

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDHAPAccessoryTransaction_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_49209 != -1)
  {
    dispatch_once(&properties_onceToken_49209, block);
  }

  v2 = properties__properties_49210;

  return v2;
}

void __40__HMDHAPAccessoryTransaction_properties__block_invoke(uint64_t a1)
{
  v45[33] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v42.receiver = *(a1 + 32);
  v42.super_class = &OBJC_METACLASS___HMDHAPAccessoryTransaction;
  v2 = objc_msgSendSuper2(&v42, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_49210;
  properties__properties_49210 = v3;

  v34 = properties__properties_49210;
  v44[0] = @"uniqueIdentifier";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[0] = v41;
  v44[1] = @"bridgeUUID";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[1] = v40;
  v44[2] = @"paired";
  v39 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v45[2] = v39;
  v44[3] = @"accessoryFlags";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[3] = v38;
  v44[4] = @"certificationStatus";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[4] = v37;
  v44[5] = @"pairingUsername";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[5] = v36;
  v44[6] = @"publicKey";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[6] = v35;
  v44[7] = @"transportInformation";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[7] = v33;
  v44[8] = @"communicationProtocol";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[8] = v32;
  v44[9] = @"accessorySetupHash";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[9] = v31;
  v44[10] = @"broadcastKey";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[10] = v30;
  v44[11] = @"keyUpdatedStateNumber";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[11] = v29;
  v44[12] = @"keyUpdatedTime";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[12] = v28;
  v44[13] = @"targetUUIDs";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[13] = v27;
  v44[14] = @"hardwareSupport";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[14] = v26;
  v44[15] = @"connectivityInfo";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[15] = v25;
  v44[16] = @"wiFiTransportCapabilities";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[16] = v24;
  v44[17] = @"sleepInterval";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[17] = v23;
  v44[18] = @"hasOnboardedForNaturalLighting";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[18] = v22;
  v44[19] = @"initialServiceTypeUUIDs";
  v5 = objc_opt_class();
  v43 = objc_opt_class();
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v5 additionalDecodeClasses:v21];
  v45[19] = v20;
  v44[20] = @"needsOnboarding";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[20] = v19;
  v44[21] = @"suspendedState";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[21] = v18;
  v44[22] = @"preferredMediaUserUUID";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[22] = v17;
  v44[23] = @"preferredUserSelectionType";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[23] = v16;
  v44[24] = @"chipNodeID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[24] = v6;
  v44[25] = @"chipVendorID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[25] = v7;
  v44[26] = @"chipProductID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[26] = v8;
  v44[27] = @"chipAttributeDatabase";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[27] = v9;
  v44[28] = @"chipPairingsData";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[28] = v10;
  v44[29] = @"chipWEDSupport";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[29] = v11;
  v44[30] = @"chipExtendedMACAddress";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[30] = v12;
  v44[31] = @"matterSoftwareVersionNumber";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[31] = v13;
  v44[32] = @"supportedLinkLayerTypes";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v45[32] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:33];
  [v34 addEntriesFromDictionary:v15];
}

- (void)setChipPairings:(id)pairings
{
  v18 = *MEMORY[0x277D85DE8];
  pairingsCopy = pairings;
  if (pairingsCopy)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:pairingsCopy requiringSecureCoding:1 error:&v11];
    v6 = v11;
    if (v5)
    {
      [(HMDHAPAccessoryTransaction *)self setChipPairingsData:v5];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543874;
        v13 = v10;
        v14 = 2112;
        v15 = pairingsCopy;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize pairings %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    [(HMDHAPAccessoryTransaction *)self setChipPairingsData:0];
  }
}

- (NSSet)chipPairings
{
  v21[2] = *MEMORY[0x277D85DE8];
  chipPairingsData = [(HMDHAPAccessoryTransaction *)self chipPairingsData];
  if (chipPairingsData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v7 = [v5 setWithArray:v6];
    v16 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:chipPairingsData error:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize pairings from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dependentUUIDs
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = HMDHAPAccessoryTransaction;
  dependentUUIDs = [(HMDAccessoryTransaction *)&v33 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  bridgeUUID = [(HMDHAPAccessoryTransaction *)selfCopy bridgeUUID];

  if (bridgeUUID)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    bridgeUUID2 = [(HMDHAPAccessoryTransaction *)selfCopy bridgeUUID];
    v8 = [v6 initWithUUIDString:bridgeUUID2];
    [v4 addObject:v8];
  }

  targetUUIDs = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
  v10 = [targetUUIDs count];

  if (v10)
  {
    v26 = v4;
    v11 = MEMORY[0x277CBEB18];
    targetUUIDs2 = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
    v28 = [v11 arrayWithCapacity:{objc_msgSend(targetUUIDs2, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
    v13 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    v14 = 0x277CCA000uLL;
    if (v13)
    {
      v15 = v13;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [objc_alloc(*(v14 + 3448)) initWithUUIDString:v18];
          if (v19)
          {
            [v28 addObject:v19];
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            v21 = selfCopy;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v24 = v23 = selfCopy;
              *buf = 138543618;
              v35 = v24;
              v36 = 2112;
              v37 = v18;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@UUID string not well-formed: %@", buf, 0x16u);

              selfCopy = v23;
              v14 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v15);
    }

    v4 = v26;
    [v26 addObjectsFromArray:v28];
  }

  return v4;
}

@end