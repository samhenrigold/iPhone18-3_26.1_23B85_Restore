@interface CALNModuleProvider
+ (NSArray)modules;
@end

@implementation CALNModuleProvider

+ (NSArray)modules
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(CALNNotificationServerModule);
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end