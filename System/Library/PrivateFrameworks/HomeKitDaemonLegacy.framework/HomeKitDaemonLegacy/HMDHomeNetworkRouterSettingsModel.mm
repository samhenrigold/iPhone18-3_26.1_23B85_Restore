@interface HMDHomeNetworkRouterSettingsModel
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)modelNamespace;
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDHomeNetworkRouterSettingsModel

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  activeNetworkRouterAccessoryUUID = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];

  if (activeNetworkRouterAccessoryUUID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    activeNetworkRouterAccessoryUUID2 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];
    v9 = [v7 initWithUUIDString:activeNetworkRouterAccessoryUUID2];
    [v3 addObject:v9];
  }

  v10 = objc_msgSend_copy(v3);

  return v10;
}

+ (id)properties
{
  if (properties_onceToken_300 != -1)
  {
    dispatch_once(&properties_onceToken_300, &__block_literal_global_303_81568);
  }

  v3 = properties__properties_301;

  return v3;
}

void __47__HMDHomeNetworkRouterSettingsModel_properties__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6[0] = @"activeNetworkRouterAccessoryUUID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"activeNetworkRouterInitialSetupNeededUUID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"minimumNetworkRouterSupportHomeKitVersion";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v6[3] = @"minHomeKitVersionForAccessoryNetworkProtectionChange";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = properties__properties_301;
  properties__properties_301 = v4;
}

+ (id)defaultModelForHomeUUID:(id)d
{
  dCopy = d;
  v5 = [HMDHomeNetworkRouterSettingsModel alloc];
  v6 = [self modelIDForHomeUUID:dCopy];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:dCopy];

  return v7;
}

+ (id)modelIDForHomeUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [v3 dataWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = MEMORY[0x277CCAD78];
  modelNamespace = [objc_opt_class() modelNamespace];
  v8 = [v6 hmf_UUIDWithNamespace:modelNamespace data:v5];

  return v8;
}

+ (id)modelNamespace
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F71A2DE4-C7D9-411D-B156-88C2E88A9673"];

  return v2;
}

@end