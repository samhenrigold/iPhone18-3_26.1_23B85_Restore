@interface BKSTouchAnnotationController
+ (id)sharedInstance;
@end

@implementation BKSTouchAnnotationController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6747 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6747, &__block_literal_global_6748);
  }

  v3 = sharedInstance_controller;

  return v3;
}

uint64_t __46__BKSTouchAnnotationController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BKSTouchAnnotationController);
  v1 = sharedInstance_controller;
  sharedInstance_controller = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end