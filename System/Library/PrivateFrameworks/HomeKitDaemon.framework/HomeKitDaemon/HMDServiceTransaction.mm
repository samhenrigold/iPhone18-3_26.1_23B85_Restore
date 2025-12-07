@interface HMDServiceTransaction
+ (id)cd_createMKFCharacteristicFromDictionary:(id)dictionary context:(id)context;
+ (id)cd_modelTypeForCharacteristicFormat:(id)format;
+ (id)properties;
- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDServiceTransaction

+ (id)properties
{
  if (properties_onceToken_113723 != -1)
  {
    dispatch_once(&properties_onceToken_113723, &__block_literal_global_565);
  }

  v3 = properties__properties_113724;

  return v3;
}

void __35__HMDServiceTransaction_properties__block_invoke()
{
  v24[21] = *MEMORY[0x277D85DE8];
  v23[0] = @"instanceID";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[0] = v22;
  v23[1] = @"name";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[1] = v21;
  v23[2] = @"providedName";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[2] = v20;
  v23[3] = @"serviceType";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[3] = v19;
  v23[4] = @"associatedServiceType";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[4] = v18;
  v23[5] = @"serviceSubtype";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[5] = v17;
  v23[6] = @"labelIndex";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[6] = v16;
  v23[7] = @"labelNamespace";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[7] = v15;
  v23[8] = @"configurationState";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[8] = v14;
  v23[9] = @"linkedServices";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[9] = v13;
  v23[10] = @"hidden";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[10] = v12;
  v23[11] = @"primary";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[11] = v11;
  v23[12] = @"characteristics";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[12] = v0;
  v23[13] = @"expectedConfiguredName";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[13] = v1;
  v23[14] = @"lastKnownDiscoveryMode";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[14] = v2;
  v23[15] = @"lastKnownOperatingState";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[15] = v3;
  v23[16] = @"lastKnownOperatingStateAbnormalReasons";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[16] = v4;
  v23[17] = @"mediaSourceIdentifier";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[17] = v5;
  v23[18] = @"mediaSourceDisplayOrder";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[18] = v6;
  v23[19] = @"serviceProperties";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[19] = v7;
  v23[20] = @"matterEndpointID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v24[20] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:21];
  v10 = properties__properties_113724;
  properties__properties_113724 = v9;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"serviceType"])
  {
    v11 = @"serviceType";
LABEL_7:
    v12 = [(HMDBackingStoreModelObject *)self cd_uuidValueFromStringModelObjectField:v11];
LABEL_8:
    v13 = v12;
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"serviceSubtype"])
  {
    v11 = @"serviceSubtype";
    goto LABEL_7;
  }

  if ([fieldCopy isEqualToString:@"associatedServiceType"])
  {
    v11 = @"associatedServiceType";
    goto LABEL_7;
  }

  if (![fieldCopy isEqualToString:@"characteristics_"])
  {
    v35.receiver = self;
    v35.super_class = HMDServiceTransaction;
    v12 = [(HMDBackingStoreModelObject *)&v35 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
    goto LABEL_8;
  }

  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"characteristics"])
  {
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = managedObject;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (!v17)
    {
      _HMFPreconditionFailure();
    }

    v18 = MEMORY[0x277CBEB58];
    characteristics = [(HMDServiceTransaction *)self characteristics];
    v20 = [v18 setWithCapacity:{objc_msgSend(characteristics, "count")}];

    characteristics2 = [(HMDServiceTransaction *)self characteristics];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __90__HMDServiceTransaction_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
    v38[3] = &unk_278689DE8;
    v22 = v17;
    v39 = v22;
    v23 = contextCopy;
    v40 = v23;
    selfCopy = self;
    v24 = v20;
    v42 = v24;
    [characteristics2 hmf_enumerateWithAutoreleasePoolUsingBlock:v38];

    characteristics3 = [v22 characteristics];
    v26 = [characteristics3 mutableCopy];

    [v26 minusSet:v24];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __90__HMDServiceTransaction_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke_2;
    v36[3] = &unk_278686720;
    v37 = v23;
    [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v36];
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v34 = v27;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
      [v22 modelID];
      v32 = v33 = v22;
      *buf = 138543874;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Converted %@ characteristics into MKFCharacteristic for MKFService: %@", buf, 0x20u);

      v22 = v33;
      v27 = v34;
    }

    objc_autoreleasePoolPop(v27);
    v13 = objc_msgSend_copy(v24);
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

void __90__HMDServiceTransaction_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(id *a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD2138]];
  v4 = [a1[4] pr_findCharacteristicWithInstanceID:v3];
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

  if (v6)
  {
    [v6 pr_updateWithDictionary:v10];
    v7 = [v6 managedObjectContext];

    if (!v7)
    {
      [a1[5] insertObject:v6];
    }
  }

  else
  {
    v4 = [objc_opt_class() cd_createMKFCharacteristicFromDictionary:v10 context:a1[5]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v9 setService:a1[4]];
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  [a1[7] addObject:v4];

LABEL_12:
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"primary"] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"hidden"))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:@"instanceID"])
  {
    instanceID = [objectCopy instanceID];
    uUIDString = HAPInstanceIDFromValue();
LABEL_11:
    v11 = uUIDString;
LABEL_12:

    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:@"serviceType"])
  {
    serviceSubtype = objc_msgSend_serviceType(objectCopy);
LABEL_10:
    instanceID = serviceSubtype;
    uUIDString = [serviceSubtype UUIDString];
    goto LABEL_11;
  }

  if ([fieldCopy isEqualToString:@"serviceSubtype"])
  {
    serviceSubtype = [objectCopy serviceSubtype];
    goto LABEL_10;
  }

  if ([fieldCopy isEqualToString:@"associatedServiceType"])
  {
    instanceID = [objectCopy associatedServiceType];
    uUIDString2 = [instanceID UUIDString];
    v17 = uUIDString2;
    v18 = *MEMORY[0x277CBEEE8];
    if (uUIDString2)
    {
      v18 = uUIDString2;
    }

    v11 = v18;

    goto LABEL_12;
  }

  if ([fieldCopy isEqualToString:@"characteristics"])
  {
    v19 = MEMORY[0x277CBEB18];
    characteristics = [objectCopy characteristics];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(characteristics, "count")}];

    characteristics2 = [objectCopy characteristics];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __115__HMDServiceTransaction_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v25[3] = &unk_278686720;
    v26 = v21;
    v23 = v21;
    [characteristics2 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

    v11 = objc_msgSend_copy(v23);
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMDServiceTransaction;
    v11 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

LABEL_13:

  return v11;
}

void __115__HMDServiceTransaction_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pr_dictionaryRepresentation];
  [v2 addObject:v3];
}

- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HMDServiceTransaction;
  v7 = [(HMDBackingStoreModelObject *)&v11 cd_updateManagedObjectInContext:contextCopy error:error];
  if (v7)
  {
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    if ([managedObject hasPersistentChangedValues])
    {
      accessory = [managedObject accessory];
      [accessory maybeFixUpCharacteristicWriteActionsInContext:contextCopy];
    }
  }

  return v7;
}

+ (id)cd_createMKFCharacteristicFromDictionary:(id)dictionary context:(id)context
{
  v5 = *MEMORY[0x277CD2148];
  contextCopy = context;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:@"metadataFormat"];
  v10 = v9;
  v11 = @"unknown";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [objc_opt_class() cd_modelTypeForCharacteristicFormat:v12];

  v14 = [(objc_class *)[HMCContext managedObjectClassFromProtocol:?]];
  v15 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v14 insertIntoManagedObjectContext:contextCopy];

  v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2138]];
  [v15 setInstanceID:v16];

  [v15 pr_updateWithDictionary:dictionaryCopy];
  v17 = v15;
  if ([v17 conformsToProtocol:&unk_283EEC2D0])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

+ (id)cd_modelTypeForCharacteristicFormat:(id)format
{
  v3 = HAPCharacteristicFormatFromString();
  v4 = &unk_283EEC2D0;
  if ((v3 - 1) <= 0xE)
  {
    v5 = *off_278686740[v3 - 1];

    v4 = v5;
  }

  return v4;
}

@end