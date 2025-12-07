@interface HMDObsoleteUserModel
+ (id)properties;
@end

@implementation HMDObsoleteUserModel

+ (id)properties
{
  if (properties_onceToken_162257 != -1)
  {
    dispatch_once(&properties_onceToken_162257, &__block_literal_global_162258);
  }

  v3 = properties__properties_162259;

  return v3;
}

void __34__HMDObsoleteUserModel_properties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"changeTag";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = properties__properties_162259;
  properties__properties_162259 = v1;
}

@end