@interface HMDAccessorySettingConstraintModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccessorySettingConstraintModel

+ (id)properties
{
  if (properties_onceToken_43339 != -1)
  {
    dispatch_once(&properties_onceToken_43339, &__block_literal_global_43340);
  }

  v3 = properties__properties_43341;

  return v3;
}

void __48__HMDAccessorySettingConstraintModel_properties__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[1] = @"value";
  v5[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = properties__properties_43341;
  properties__properties_43341 = v2;
}

+ (id)schemaHashRoot
{
  v2 = objc_msgSend_copy(@"DAE24BE8-9E89-4F27-AFBB-B40F7C0FE2A2", a2);

  return v2;
}

@end