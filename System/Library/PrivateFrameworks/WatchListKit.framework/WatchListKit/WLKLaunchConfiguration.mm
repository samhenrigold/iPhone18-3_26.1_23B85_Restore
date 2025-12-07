@interface WLKLaunchConfiguration
+ (id)sharedInstance;
@end

@implementation WLKLaunchConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[WLKLaunchConfiguration sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __40__WLKLaunchConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WLKLaunchConfiguration);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end