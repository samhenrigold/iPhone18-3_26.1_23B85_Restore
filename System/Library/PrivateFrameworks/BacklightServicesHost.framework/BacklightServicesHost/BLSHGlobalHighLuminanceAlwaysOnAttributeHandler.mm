@interface BLSHGlobalHighLuminanceAlwaysOnAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)service provider:(id)provider;
- (id)initForService:(id)service provider:(id)provider;
@end

@implementation BLSHGlobalHighLuminanceAlwaysOnAttributeHandler

+ (id)registerHandlerForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  serviceCopy = service;
  v8 = [[self alloc] initForService:serviceCopy provider:providerCopy];

  [v8 setupService];

  return v8;
}

- (id)initForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = BLSHGlobalHighLuminanceAlwaysOnAttributeHandler;
  v8 = [(BLSHLocalCountingAssertionAttributeHandler *)&v11 initForService:service];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 6, provider);
  }

  return v9;
}

+ (id)attributeClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end