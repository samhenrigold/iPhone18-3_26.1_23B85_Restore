@interface HMDRoomModel
+ (id)properties;
@end

@implementation HMDRoomModel

+ (id)properties
{
  if (properties_onceToken_103195 != -1)
  {
    dispatch_once(&properties_onceToken_103195, &__block_literal_global_195);
  }

  v3 = properties__properties_103196;

  return v3;
}

void __26__HMDRoomModel_properties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = properties__properties_103196;
  properties__properties_103196 = v1;
}

@end