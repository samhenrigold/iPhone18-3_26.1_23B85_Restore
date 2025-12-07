@interface HMDSharedHomeModel
+ (id)properties;
@end

@implementation HMDSharedHomeModel

+ (id)properties
{
  if (properties_onceToken_283 != -1)
  {
    dispatch_once(&properties_onceToken_283, &__block_literal_global_286);
  }

  v3 = properties__properties_284;

  return v3;
}

void __32__HMDSharedHomeModel_properties__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"homeData";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[1] = @"configurationVersion";
  v5[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = properties__properties_284;
  properties__properties_284 = v2;
}

@end