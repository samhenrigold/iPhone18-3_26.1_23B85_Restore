@interface HMDCharacteristicEventBaseModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d className:(Class)name message:(id)message checkForSupport:(BOOL)support outCharateristic:(id *)charateristic;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDCharacteristicEventBaseModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"service"])
  {
    v11 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"accessory"];
    v12 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"serviceID"];
    if (v11 || v12)
    {
      if (!v11 || !v12)
      {
        v19 = _HMFPreconditionFailure();
        return [(HMDCharacteristicEventBaseModel *)v19 cd_generateValueForModelObjectFromManagedObject:v20 modelObjectField:v21 modelFieldInfo:v22, v23];
      }

      accessory = [(HMDCharacteristicEventBaseModel *)self accessory];
      serviceID = [(HMDCharacteristicEventBaseModel *)self serviceID];
      v16 = serviceID;
      if (accessory && serviceID)
      {
        null = [HMDHAPAccessoryTransaction cd_getMKFServiceFromAccessoryUUID:accessory serviceInstanceId:serviceID];
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v13 = null;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMDCharacteristicEventBaseModel;
    v13 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"accessory"])
  {
    service = [objectCopy service];
    accessory = [service accessory];
    modelID = [accessory modelID];
    uUIDString = [modelID UUIDString];
    v15 = uUIDString;
    v16 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v16 = uUIDString;
    }

    v17 = v16;

LABEL_9:
LABEL_10:

    goto LABEL_11;
  }

  if ([fieldCopy isEqualToString:@"serviceID"])
  {
    service = [objectCopy service];
    accessory = [service instanceID];
    v18 = HAPInstanceIDFromValue();
    modelID = v18;
    v19 = *MEMORY[0x277CBEEE8];
    if (v18)
    {
      v19 = v18;
    }

    v17 = v19;
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"characteristicID"])
  {
    service = [objectCopy characteristicID];
    v21 = HAPInstanceIDFromValue();
    accessory = v21;
    v22 = *MEMORY[0x277CBEEE8];
    if (v21)
    {
      v22 = v21;
    }

    v17 = v22;
    goto LABEL_10;
  }

  v23.receiver = self;
  v23.super_class = HMDCharacteristicEventBaseModel;
  v17 = [(HMDBackingStoreModelObject *)&v23 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_11:

  return v17;
}

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d className:(Class)name message:(id)message checkForSupport:(BOOL)support outCharateristic:(id *)charateristic
{
  supportCopy = support;
  dictionaryCopy = dictionary;
  homeCopy = home;
  dCopy = d;
  messageCopy = message;
  v17 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD25F8]];
  v18 = HAPInstanceIDFromValue();

  v19 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD2140]];
  v20 = HAPInstanceIDFromValue();

  v21 = [dictionaryCopy hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
  v34 = 0;
  LOBYTE(v31) = 1;
  v22 = [HMDCharacteristicEventBase lookForCharacteristicByAccessoryUUID:v21 serviceID:v18 characteristicID:v20 inHome:homeCopy checkForSupport:supportCopy outError:&v34 shouldLog:v31];
  v23 = v34;
  v24 = 0;
  if (!v23)
  {
    v32 = v18;
    if (charateristic)
    {
      v25 = v22;
      *charateristic = v22;
    }

    v24 = [HMDEventModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:name message:messageCopy];
    [v21 UUIDString];
    v26 = homeCopy;
    v27 = messageCopy;
    v29 = v28 = dCopy;
    [v24 setAccessory:v29];

    dCopy = v28;
    messageCopy = v27;
    homeCopy = v26;
    v18 = v32;
    [v24 setServiceID:v32];
    [v24 setCharacteristicID:v20];
  }

  return v24;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDCharacteristicEventBaseModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_194020 != -1)
  {
    dispatch_once(&properties_onceToken_194020, block);
  }

  v2 = properties__properties_194021;

  return v2;
}

void __45__HMDCharacteristicEventBaseModel_properties__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMDCharacteristicEventBaseModel;
  v2 = objc_msgSendSuper2(&v10, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_194021;
  properties__properties_194021 = v3;

  v5 = properties__properties_194021;
  v11[0] = @"accessory";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v6;
  v11[1] = @"serviceID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v7;
  v11[2] = @"characteristicID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v5 addEntriesFromDictionary:v9];
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

  serviceID = [(HMDCharacteristicEventBaseModel *)self serviceID];

  if (serviceID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    accessory = [(HMDCharacteristicEventBaseModel *)self accessory];
    v9 = [v7 initWithUUIDString:accessory];
    serviceID2 = [(HMDCharacteristicEventBaseModel *)self serviceID];
    v11 = [HMDService generateUUIDWithAccessoryUUID:v9 serviceID:serviceID2];

    [v3 addObject:v11];
  }

  return v3;
}

@end