@interface HMDAccountHandleModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccountHandleModel

+ (id)properties
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"idsURI";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = @"local";
  v7[0] = v2;
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)schemaHashRoot
{
  v2 = objc_msgSend_copy(@"538177E8-3459-4DE2-BE82-B72A8633498C", a2);

  return v2;
}

@end