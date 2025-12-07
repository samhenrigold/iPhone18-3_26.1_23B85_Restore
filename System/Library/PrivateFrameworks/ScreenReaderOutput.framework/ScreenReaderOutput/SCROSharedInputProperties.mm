@interface SCROSharedInputProperties
+ (id)sharedInstance;
@end

@implementation SCROSharedInputProperties

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SCROSharedInputProperties sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __43__SCROSharedInputProperties_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SCROSharedInputProperties);
  sharedInstance_instance = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end