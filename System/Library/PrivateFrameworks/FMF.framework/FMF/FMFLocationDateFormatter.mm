@interface FMFLocationDateFormatter
+ (id)sharedInstance;
@end

@implementation FMFLocationDateFormatter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__FMFLocationDateFormatter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_dispatch_predicate_1 != -1)
  {
    dispatch_once(&sharedInstance_dispatch_predicate_1, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __42__FMFLocationDateFormatter_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;

  v3 = sharedInstance_instance;

  return [v3 setLocalizedDateFormatFromTemplate:@"H:mm:ss"];
}

@end