@interface HMDDurationEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message;
+ (id)properties;
@end

@implementation HMDDurationEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message
{
  messageCopy = message;
  dCopy = d;
  homeCopy = home;
  dictionaryCopy = dictionary;
  v13 = [HMDEventModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy];

  v14 = [dictionaryCopy hmf_numberForKey:*MEMORY[0x277CD2280]];

  [v13 setDuration:v14];

  return v13;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDDurationEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_263743 != -1)
  {
    dispatch_once(&properties_onceToken_263743, block);
  }

  v2 = properties__properties_263744;

  return v2;
}

void __35__HMDDurationEventModel_properties__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___HMDDurationEventModel;
  v2 = objc_msgSendSuper2(&v8, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_263744;
  properties__properties_263744 = v3;

  v5 = properties__properties_263744;
  v9 = @"duration";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 addEntriesFromDictionary:v7];
}

@end