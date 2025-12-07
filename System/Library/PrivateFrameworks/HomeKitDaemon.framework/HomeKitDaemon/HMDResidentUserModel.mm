@interface HMDResidentUserModel
+ (id)properties;
@end

@implementation HMDResidentUserModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDResidentUserModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_2006 != -1)
  {
    dispatch_once(&properties_onceToken_2006, block);
  }

  v2 = properties__properties_2007;

  return v2;
}

void __34__HMDResidentUserModel_properties__block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDResidentUserModel;
  v2 = objc_msgSendSuper2(&v11, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_2007;
  properties__properties_2007 = v3;

  v5 = properties__properties_2007;
  v12[0] = @"device";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v6;
  v12[1] = @"configState";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v7;
  v12[2] = @"displayName";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v8;
  v12[3] = @"deviceIdentifier";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  [v5 addEntriesFromDictionary:v10];
}

@end