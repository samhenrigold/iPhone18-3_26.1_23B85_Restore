@interface HMDSoftwareUpdateModel
+ (id)properties;
@end

@implementation HMDSoftwareUpdateModel

+ (id)properties
{
  if (properties_onceToken_85292 != -1)
  {
    dispatch_once(&properties_onceToken_85292, &__block_literal_global_258_85293);
  }

  v3 = properties__properties_85294;

  return v3;
}

void __36__HMDSoftwareUpdateModel_properties__block_invoke()
{
  v10[7] = *MEMORY[0x277D85DE8];
  v9[0] = @"softwareVersion";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v0;
  v9[1] = @"displayableSoftwareVersion";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = v1;
  v9[2] = @"state";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[2] = v2;
  v9[3] = @"downloadSize";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[3] = v3;
  v9[4] = @"installDuration";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[4] = v4;
  v9[5] = @"documentationMetadata";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[5] = v5;
  v9[6] = @"releaseDate";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v8 = properties__properties_85294;
  properties__properties_85294 = v7;
}

@end