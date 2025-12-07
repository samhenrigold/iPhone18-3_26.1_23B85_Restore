@interface SBSHomeScreenService
@end

@implementation SBSHomeScreenService

uint64_t __56__SBSHomeScreenService_ATXSingleton__atx_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = atx_sharedInstance_service;
  atx_sharedInstance_service = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end