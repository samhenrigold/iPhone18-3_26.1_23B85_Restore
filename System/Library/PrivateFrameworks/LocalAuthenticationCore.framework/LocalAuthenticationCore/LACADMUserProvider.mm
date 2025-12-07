@interface LACADMUserProvider
+ (LACADMUserProvider)sharedInstance;
@end

@implementation LACADMUserProvider

+ (LACADMUserProvider)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[LACADMUserProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_16;

  return v3;
}

uint64_t __36__LACADMUserProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACADMUserProvider);
  v1 = sharedInstance_sharedInstance_16;
  sharedInstance_sharedInstance_16 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end