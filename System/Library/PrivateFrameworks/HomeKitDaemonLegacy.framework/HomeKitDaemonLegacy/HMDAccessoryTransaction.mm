@interface HMDAccessoryTransaction
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDAccessoryTransaction

+ (id)properties
{
  if (properties_onceToken != -1)
  {
    dispatch_once(&properties_onceToken, &__block_literal_global);
  }

  v3 = properties__properties;

  return v3;
}

void __37__HMDAccessoryTransaction_properties__block_invoke()
{
  v40[37] = *MEMORY[0x277D85DE8];
  v39[0] = @"name";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[0] = v38;
  v39[1] = @"configuredName";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[1] = v37;
  v39[2] = @"identifier";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[2] = v36;
  v39[3] = @"providedName";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[3] = v35;
  v39[4] = @"accessoryCategory";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[4] = v34;
  v39[5] = @"roomUUID";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[5] = v33;
  v39[6] = @"hostAccessoryUUID";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[6] = v32;
  v39[7] = @"primary";
  v31 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v40[7] = v31;
  v39[8] = @"model";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[8] = v30;
  v39[9] = @"manufacturer";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[9] = v29;
  v39[10] = @"firmwareVersion";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[10] = v28;
  v39[11] = @"displayableFirmwareVersion";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[11] = v27;
  v39[12] = @"serialNumber";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[12] = v26;
  v39[13] = @"productData";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[13] = v25;
  v39[14] = @"productDataV2";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[14] = v24;
  v39[15] = @"networkClientIdentifier";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[15] = v23;
  v39[16] = @"networkRouterUUID";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[16] = v22;
  v39[17] = @"targetNetworkProtectionMode";
  v21 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v40[17] = v21;
  v39[18] = @"currentNetworkProtectionMode";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[18] = v20;
  v39[19] = @"networkClientLAN";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[19] = v19;
  v39[20] = @"networkClientProfileFingerprint";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[20] = v18;
  v39[21] = @"wiFiUniquePreSharedKey";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[21] = v17;
  v39[22] = @"wiFiCredentialType";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[22] = v16;
  v39[23] = @"pendingConfigurationIdentifier";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[23] = v15;
  v39[24] = @"blocked";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[24] = v14;
  v39[25] = @"appliedFirewallWANRules";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[25] = v13;
  v39[26] = @"lastNetworkAccessViolationOccurrenceSince1970";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[26] = v12;
  v39[27] = @"lastNetworkAccessViolationResetSince1970";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[27] = v11;
  v39[28] = @"suspendCapable";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[28] = v0;
  v39[29] = @"lastSeenDate";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[29] = v1;
  v39[30] = @"lowBattery";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[30] = v2;
  v39[31] = @"primaryProfileVersion";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[31] = v3;
  v39[32] = @"initialManufacturer";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[32] = v4;
  v39[33] = @"initialModel";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[33] = v5;
  v39[34] = @"initialCategoryIdentifier";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[34] = v6;
  v39[35] = @"sharedAdminAddedTimestamp";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[35] = v7;
  v39[36] = @"pairingsAuditedTimestamp";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v40[36] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:37];
  v10 = properties__properties;
  properties__properties = v9;
}

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  roomUUID = [(HMDAccessoryTransaction *)self roomUUID];

  if (roomUUID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    roomUUID2 = [(HMDAccessoryTransaction *)self roomUUID];
    v9 = [v7 initWithUUIDString:roomUUID2];
    [v3 addObject:v9];
  }

  hostAccessoryUUID = [(HMDAccessoryTransaction *)self hostAccessoryUUID];

  if (hostAccessoryUUID)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    hostAccessoryUUID2 = [(HMDAccessoryTransaction *)self hostAccessoryUUID];
    v13 = [v11 initWithUUIDString:hostAccessoryUUID2];
    [v3 addObject:v13];
  }

  return v3;
}

@end