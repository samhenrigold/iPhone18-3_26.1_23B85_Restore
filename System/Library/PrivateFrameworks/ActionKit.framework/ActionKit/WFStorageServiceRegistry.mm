@interface WFStorageServiceRegistry
+ (id)sharedRegistry;
+ (void)registerStorageServiceClass:(Class)class;
- (NSArray)storageServices;
- (NSSet)objectRepresentationClasses;
- (WFStorageServiceRegistry)init;
- (id)storageServiceWithName:(id)name;
@end

@implementation WFStorageServiceRegistry

- (id)storageServiceWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    registeredServices = [(WFStorageServiceRegistry *)self registeredServices];
    v6 = [registeredServices countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(registeredServices);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          serviceName = [objc_opt_class() serviceName];
          v11 = [serviceName isEqualToString:nameCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [registeredServices countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)objectRepresentationClasses
{
  storageServices = [(WFStorageServiceRegistry *)self storageServices];
  v3 = [storageServices if_compactMap:&__block_literal_global_190_22396];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

- (NSArray)storageServices
{
  v25 = *MEMORY[0x277D85DE8];
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v4 = [workflowUserDefaults objectForKey:@"WFStorageServicesAllowedServices"];
  v5 = objc_opt_class();
  v6 = v4;
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v18 = "WFEnforceClass";
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v5;
      v9 = v22;
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if ([v7 containsObject:@"WFiCloudStorageService"])
  {
    v10 = [v7 arrayByAddingObject:@"WFDefaultFileStorageService"];

    v7 = v10;
  }

  registeredServices = [(WFStorageServiceRegistry *)self registeredServices];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__WFStorageServiceRegistry_storageServices__block_invoke;
  v15[3] = &unk_278C1E058;
  v16 = v7;
  v12 = v7;
  v13 = [registeredServices if_objectsPassingTest:v15];

  return v13;
}

uint64_t __43__WFStorageServiceRegistry_storageServices__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 containsObject:v4];

  return v5;
}

- (WFStorageServiceRegistry)init
{
  v17[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = WFStorageServiceRegistry;
  v2 = [(WFStorageServiceRegistry *)&v14 init];
  if (v2)
  {
    workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
    v16 = @"WFStorageServicesAllowedServices";
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v15[0] = v5;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [workflowUserDefaults registerDefaults:v9];

    v10 = [registeredStorageServiceClasses if_map:&__block_literal_global_180];
    registeredServices = v2->_registeredServices;
    v2->_registeredServices = v10;

    v12 = v2;
  }

  return v2;
}

id __32__WFStorageServiceRegistry_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WFStorageServiceRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRegistry_onceToken != -1)
  {
    dispatch_once(&sharedRegistry_onceToken, block);
  }

  v2 = sharedRegistry_sharedRegistry;

  return v2;
}

void __42__WFStorageServiceRegistry_sharedRegistry__block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerAllActionKitStorageServiceClasses];
  v1 = objc_opt_new();
  v2 = sharedRegistry_sharedRegistry;
  sharedRegistry_sharedRegistry = v1;
}

+ (void)registerStorageServiceClass:(Class)class
{
  if (registerStorageServiceClass__onceToken != -1)
  {
    dispatch_once(&registerStorageServiceClass__onceToken, &__block_literal_global_22420);
  }

  v4 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  v5 = registeredStorageServiceClasses;
  if (v4)
  {

    [v5 insertObject:class atIndex:0];
  }

  else
  {

    [v5 addObject:class];
  }
}

void __56__WFStorageServiceRegistry_registerStorageServiceClass___block_invoke()
{
  v0 = objc_opt_new();
  v1 = registeredStorageServiceClasses;
  registeredStorageServiceClasses = v0;
}

@end