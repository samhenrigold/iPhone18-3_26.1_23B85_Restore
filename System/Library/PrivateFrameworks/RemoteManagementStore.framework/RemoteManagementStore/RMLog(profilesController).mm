@interface RMLog(profilesController)
+ (id)profilesController;
@end

@implementation RMLog(profilesController)

+ (id)profilesController
{
  if (profilesController_onceToken != -1)
  {
    +[RMLog(profilesController) profilesController];
  }

  v2 = profilesController_result;

  return v2;
}

@end