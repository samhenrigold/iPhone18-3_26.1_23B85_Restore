@interface SBSHomeScreenService(ATXSingleton)
+ (id)atx_sharedInstance;
@end

@implementation SBSHomeScreenService(ATXSingleton)

+ (id)atx_sharedInstance
{
  if (atx_sharedInstance_onceToken != -1)
  {
    +[SBSHomeScreenService(ATXSingleton) atx_sharedInstance];
  }

  v2 = atx_sharedInstance_service;

  return v2;
}

@end