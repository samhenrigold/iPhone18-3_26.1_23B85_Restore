@interface GEONavdDefaults
+ (id)sharedInstance;
@end

@implementation GEONavdDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5459[0] != -1)
  {
    dispatch_once(sharedInstance_onceToken_5459, &__block_literal_global_5460);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

@end