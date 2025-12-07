@interface TIStatisticsProactiveTracker
@end

@implementation TIStatisticsProactiveTracker

uint64_t __47___TIStatisticsProactiveTracker_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end