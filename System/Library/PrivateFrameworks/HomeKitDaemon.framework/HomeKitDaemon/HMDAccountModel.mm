@interface HMDAccountModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccountModel

+ (id)properties
{
  if (properties_onceToken_92571 != -1)
  {
    dispatch_once(&properties_onceToken_92571, &__block_literal_global_551);
  }

  v3 = properties__properties_92572;

  return v3;
}

void __29__HMDAccountModel_properties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"identifier";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = properties__properties_92572;
  properties__properties_92572 = v1;
}

+ (id)schemaHashRoot
{
  v2 = objc_msgSend_copy(@"95E13552-1E95-4C7E-B2EE-3A010CB17DE9", a2);

  return v2;
}

@end