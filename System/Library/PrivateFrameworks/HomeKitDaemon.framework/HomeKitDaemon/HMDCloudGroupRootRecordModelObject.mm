@interface HMDCloudGroupRootRecordModelObject
+ (id)properties;
@end

@implementation HMDCloudGroupRootRecordModelObject

+ (id)properties
{
  if (properties_onceToken_17485 != -1)
  {
    dispatch_once(&properties_onceToken_17485, &__block_literal_global_77_17486);
  }

  v3 = properties__properties_17487;

  return v3;
}

void __48__HMDCloudGroupRootRecordModelObject_properties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"objectIDToRecordNameMap";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = properties__properties_17487;
  properties__properties_17487 = v1;
}

@end