@interface HMDCharacteristicThresholdRangeEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message checkForSupport:(BOOL)support;
+ (id)properties;
@end

@implementation HMDCharacteristicThresholdRangeEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message checkForSupport:(BOOL)support
{
  supportCopy = support;
  messageCopy = message;
  dCopy = d;
  homeCopy = home;
  dictionaryCopy = dictionary;
  v15 = [HMDCharacteristicEventBaseModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy checkForSupport:supportCopy outCharateristic:0];

  v16 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD21A0]];
  [v15 setMin:v16];

  v17 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD2198]];

  [v15 setMax:v17];

  return v15;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDCharacteristicThresholdRangeEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_108757 != -1)
  {
    dispatch_once(&properties_onceToken_108757, block);
  }

  v2 = properties__properties_108758;

  return v2;
}

void __55__HMDCharacteristicThresholdRangeEventModel_properties__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDCharacteristicThresholdRangeEventModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_108758;
  properties__properties_108758 = v3;

  v5 = properties__properties_108758;
  v10[0] = @"min";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = @"max";
  v11[0] = v6;
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v5 addEntriesFromDictionary:v8];
}

@end