@interface AXQSMenuHelper
+ (id)sharedInstance;
@end

@implementation AXQSMenuHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXQSMenuHelper sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __32__AXQSMenuHelper_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXQSMenuHelper);
  v1 = sharedInstance__shared_0;
  sharedInstance__shared_0 = v0;

  return MEMORY[0x2A1C71028](v0, v1);
}

@end