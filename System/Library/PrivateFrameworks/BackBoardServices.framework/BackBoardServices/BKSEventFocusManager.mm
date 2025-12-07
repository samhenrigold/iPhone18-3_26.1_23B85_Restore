@interface BKSEventFocusManager
+ (id)sharedInstance;
@end

@implementation BKSEventFocusManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13230 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13230, &__block_literal_global_13231);
  }

  v3 = sharedInstance___shared_13232;

  return v3;
}

uint64_t __38__BKSEventFocusManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BKSEventFocusManager);
  v1 = sharedInstance___shared_13232;
  sharedInstance___shared_13232 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end