@interface HMDAccessoryTransaction
+ (id)cd_getMKFAccessoryFromAccessory:(id)accessory;
+ (id)cd_getMKFAccessoryFromAccessoryUUID:(id)d;
+ (id)cd_getMKFRoom:(id)room;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDAccessoryTransaction

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"productData"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"productDataV2"])
    {
      productDataV2 = [(HMDAccessoryTransaction *)self productDataV2];
      roomUUID = productDataV2;
      v13 = *MEMORY[0x277CBEEE8];
      if (productDataV2)
      {
        v13 = productDataV2;
      }

      defaultRoom = v13;
      goto LABEL_31;
    }

LABEL_24:
    defaultRoom = 0;
    goto LABEL_34;
  }

  if ([fieldCopy isEqualToString:@"room"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"roomUUID"])
    {
      goto LABEL_24;
    }

    roomUUID = [(HMDAccessoryTransaction *)self roomUUID];

    if (roomUUID)
    {
      v15 = objc_alloc(MEMORY[0x277CCAD78]);
      roomUUID2 = [(HMDAccessoryTransaction *)self roomUUID];
      roomUUID = [v15 initWithUUIDString:roomUUID2];

      if (roomUUID)
      {
        defaultRoom = [objc_opt_class() cd_getMKFRoom:roomUUID];
        if (defaultRoom)
        {
LABEL_31:

          goto LABEL_34;
        }
      }
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v20;
      v44 = 2112;
      v45 = roomUUID;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find the room with UUID (%@). Using default Room.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    parentUUID = [(HMDBackingStoreModelObject *)selfCopy parentUUID];
    v41 = 0;
    v22 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:parentUUID ofModelType:objc_opt_class() error:&v41];
    v23 = v41;

    if (!v22 || v23)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        [(HMDBackingStoreModelObject *)v33 parentUUID];
        v36 = v38 = v32;
        *buf = 138543874;
        v43 = v35;
        v44 = 2112;
        v45 = v36;
        v46 = 2112;
        v47 = v23;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to find NSManagedObject for home with UUID %@: %@", buf, 0x20u);

        v32 = v38;
      }

      objc_autoreleasePoolPop(v32);
      defaultRoom = 0;
    }

    else
    {
      defaultRoom = [v22 defaultRoom];
    }

LABEL_30:
    goto LABEL_31;
  }

  if ([fieldCopy isEqualToString:@"hostAccessory"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"hostAccessoryUUID"])
    {
      goto LABEL_24;
    }

    hostAccessoryUUID = [(HMDAccessoryTransaction *)self hostAccessoryUUID];

    if (hostAccessoryUUID)
    {
      v25 = objc_alloc(MEMORY[0x277CCAD78]);
      hostAccessoryUUID2 = [(HMDAccessoryTransaction *)self hostAccessoryUUID];
      roomUUID = [v25 initWithUUIDString:hostAccessoryUUID2];

      if (roomUUID)
      {
        v40 = 0;
        defaultRoom = [HMDBackingStore cdlsFetchManagedObjectWithUUID:roomUUID ofManagedObjectType:objc_opt_class() error:&v40];
        v23 = v40;
        if (!defaultRoom)
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543874;
            v43 = v30;
            v44 = 2112;
            v45 = roomUUID;
            v46 = 2112;
            v47 = v23;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFAccessory for host accessory with UUID %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
        }

        goto LABEL_30;
      }
    }

    null = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v39.receiver = self;
    v39.super_class = HMDAccessoryTransaction;
    null = [(HMDBackingStoreModelObject *)&v39 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  defaultRoom = null;
LABEL_34:

  return defaultRoom;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"blocked"])
  {
    v11 = 0;
    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"productDataV2"])
  {
    productData = [objectCopy productData];
    v13 = productData;
    v14 = *MEMORY[0x277CBEEE8];
    if (productData)
    {
      v14 = productData;
    }

    v11 = v14;
LABEL_14:

    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"roomUUID"])
  {
    room = [objectCopy room];
LABEL_11:
    v13 = room;
    modelID = [room modelID];
    uUIDString = [modelID UUIDString];
    v18 = uUIDString;
    v19 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v19 = uUIDString;
    }

    v11 = v19;

    goto LABEL_14;
  }

  if ([fieldCopy isEqualToString:@"hostAccessoryUUID"])
  {
    room = [objectCopy hostAccessory];
    goto LABEL_11;
  }

  v21.receiver = self;
  v21.super_class = HMDAccessoryTransaction;
  v11 = [(HMDBackingStoreModelObject *)&v21 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_15:

  return v11;
}

+ (id)cd_getMKFRoom:(id)room
{
  v21 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  v14 = 0;
  v5 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:roomCopy ofModelType:objc_opt_class() error:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = roomCopy;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to find NSManagedObject for room with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v5;
}

+ (id)cd_getMKFAccessoryFromAccessory:(id)accessory
{
  v23 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = accessoryCopy;
  v16 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:accessoryCopy ofManagedObjectType:objc_opt_class() error:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the MKFAccessory from UUID : %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  return v14;
}

+ (id)cd_getMKFAccessoryFromAccessoryUUID:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];

  v6 = [v4 cd_getMKFAccessoryFromAccessory:v5];

  return v6;
}

+ (id)properties
{
  if (properties_onceToken_281420 != -1)
  {
    dispatch_once(&properties_onceToken_281420, &__block_literal_global_281421);
  }

  v3 = properties__properties_281422;

  return v3;
}

void __37__HMDAccessoryTransaction_properties__block_invoke()
{
  v38[35] = *MEMORY[0x277D85DE8];
  v37[0] = @"name";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[0] = v36;
  v37[1] = @"configuredName";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[1] = v35;
  v37[2] = @"identifier";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[2] = v34;
  v37[3] = @"providedName";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[3] = v33;
  v37[4] = @"accessoryCategory";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[4] = v32;
  v37[5] = @"roomUUID";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[5] = v31;
  v37[6] = @"hostAccessoryUUID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[6] = v30;
  v37[7] = @"primary";
  v29 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v38[7] = v29;
  v37[8] = @"model";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[8] = v28;
  v37[9] = @"manufacturer";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[9] = v27;
  v37[10] = @"firmwareVersion";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[10] = v26;
  v37[11] = @"displayableFirmwareVersion";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[11] = v25;
  v37[12] = @"serialNumber";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[12] = v24;
  v37[13] = @"productData";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[13] = v23;
  v37[14] = @"productDataV2";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[14] = v22;
  v37[15] = @"networkClientIdentifier";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[15] = v21;
  v37[16] = @"networkRouterUUID";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[16] = v20;
  v37[17] = @"targetNetworkProtectionMode";
  v19 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v38[17] = v19;
  v37[18] = @"currentNetworkProtectionMode";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[18] = v18;
  v37[19] = @"networkClientLAN";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[19] = v17;
  v37[20] = @"networkClientProfileFingerprint";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[20] = v16;
  v37[21] = @"wiFiUniquePreSharedKey";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[21] = v15;
  v37[22] = @"wiFiCredentialType";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[22] = v14;
  v37[23] = @"pendingConfigurationIdentifier";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[23] = v13;
  v37[24] = @"blocked";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[24] = v12;
  v37[25] = @"appliedFirewallWANRules";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[25] = v11;
  v37[26] = @"lastNetworkAccessViolationOccurrenceSince1970";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[26] = v10;
  v37[27] = @"lastNetworkAccessViolationResetSince1970";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[27] = v0;
  v37[28] = @"suspendCapable";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[28] = v1;
  v37[29] = @"lastSeenDate";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[29] = v2;
  v37[30] = @"lowBattery";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[30] = v3;
  v37[31] = @"primaryProfileVersion";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[31] = v4;
  v37[32] = @"initialManufacturer";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[32] = v5;
  v37[33] = @"initialModel";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[33] = v6;
  v37[34] = @"initialCategoryIdentifier";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v38[34] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:35];
  v9 = properties__properties_281422;
  properties__properties_281422 = v8;
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