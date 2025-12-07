@interface HMDCharacteristicEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message checkForSupport:(BOOL)support error:(id *)error;
+ (id)properties;
@end

@implementation HMDCharacteristicEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message checkForSupport:(BOOL)support error:(id *)error
{
  supportCopy = support;
  messageCopy = message;
  dCopy = d;
  homeCopy = home;
  dictionaryCopy = dictionary;
  v26 = 0;
  v17 = [HMDCharacteristicEventBaseModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy checkForSupport:supportCopy outCharateristic:&v26];

  v18 = v26;
  v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  v25 = v19;
  v20 = [v18 validateValueForNotify:v19 outValue:&v25];
  v21 = v25;
  if (v20)
  {
    if (error)
    {
      v22 = v20;
      v23 = 0;
      *error = v20;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    [v17 setEventValue:v21];
    v23 = v17;
  }

  return v23;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDCharacteristicEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_149617 != -1)
  {
    dispatch_once(&properties_onceToken_149617, block);
  }

  v2 = properties__properties_149618;

  return v2;
}

void __41__HMDCharacteristicEventModel_properties__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___HMDCharacteristicEventModel;
  v2 = objc_msgSendSuper2(&v8, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_149618;
  properties__properties_149618 = v3;

  v5 = properties__properties_149618;
  v9 = @"eventValue";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 addEntriesFromDictionary:v7];
}

@end