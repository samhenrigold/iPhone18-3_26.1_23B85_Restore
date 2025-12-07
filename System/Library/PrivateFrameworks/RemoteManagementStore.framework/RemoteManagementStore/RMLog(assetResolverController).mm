@interface RMLog(assetResolverController)
+ (id)assetResolverController;
@end

@implementation RMLog(assetResolverController)

+ (id)assetResolverController
{
  if (assetResolverController_onceToken != -1)
  {
    +[RMLog(assetResolverController) assetResolverController];
  }

  v2 = assetResolverController_result;

  return v2;
}

@end