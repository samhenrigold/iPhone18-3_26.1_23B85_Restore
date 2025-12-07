@interface FBScene(UIOpaqueHitTesting)
- (uint64_t)ui_hitTestsAsOpaque;
- (void)ui_setHitTestsAsOpaque:()UIOpaqueHitTesting;
@end

@implementation FBScene(UIOpaqueHitTesting)

- (uint64_t)ui_hitTestsAsOpaque
{
  v2 = objc_opt_class();

  return [self conformsToExtension:v2];
}

- (void)ui_setHitTestsAsOpaque:()UIOpaqueHitTesting
{
  result = [self ui_hitTestsAsOpaque];
  if (result != a3)
  {
    v6 = objc_opt_class();
    if (a3)
    {

      return [self addExtension:v6];
    }

    else
    {

      return [self removeExtension:v6];
    }
  }

  return result;
}

@end