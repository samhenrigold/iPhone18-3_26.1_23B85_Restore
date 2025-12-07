@interface HMDCloudGroupRootRecordModelObject
+ (id)properties;
@end

@implementation HMDCloudGroupRootRecordModelObject

+ (id)properties
{
  if (properties_onceToken_59109 != -1)
  {
    dispatch_once(&properties_onceToken_59109, &__block_literal_global_59110);
  }

  v3 = properties__properties_59111;

  return v3;
}

void __48__HMDCloudGroupRootRecordModelObject_properties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"objectIDToRecordNameMap";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = properties__properties_59111;
  properties__properties_59111 = v1;
}

@end