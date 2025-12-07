@interface HMDActionSetModel
+ (id)properties;
@end

@implementation HMDActionSetModel

+ (id)properties
{
  if (properties_onceToken_22020 != -1)
  {
    dispatch_once(&properties_onceToken_22020, &__block_literal_global_460);
  }

  v3 = properties__properties_22021;

  return v3;
}

void __31__HMDActionSetModel_properties__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[0] = v0;
  v5[1] = @"type";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v5[2] = @"lastExecutionDate";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = properties__properties_22021;
  properties__properties_22021 = v3;
}

@end