@interface IDSService
@end

@implementation IDSService

void __55__IDSService_MRAdditions__mr_sharedIDSCompanionService__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(MEMORY[0x1E69A48A8]);
  v4 = [objc_opt_class() mr_companionServiceName];
  v2 = [v1 initWithService:v4];
  v3 = mr_sharedIDSCompanionService___service;
  mr_sharedIDSCompanionService___service = v2;
}

void __46__IDSService_MRAdditions__mr_sharedIDSService__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(MEMORY[0x1E69A48A8]);
  v4 = [objc_opt_class() mr_serviceName];
  v2 = [v1 initWithService:v4];
  v3 = mr_sharedIDSService___service;
  mr_sharedIDSService___service = v2;
}

@end