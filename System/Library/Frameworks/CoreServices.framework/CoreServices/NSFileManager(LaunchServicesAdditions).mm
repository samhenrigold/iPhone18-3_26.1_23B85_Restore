@interface NSFileManager(LaunchServicesAdditions)
+ (id)_LS_frameworkFileManager;
@end

@implementation NSFileManager(LaunchServicesAdditions)

+ (id)_LS_frameworkFileManager
{
  if (_LS_frameworkFileManager_onceToken != -1)
  {
    +[NSFileManager(LaunchServicesAdditions) _LS_frameworkFileManager];
  }

  v2 = _LS_frameworkFileManager_manager;

  return v2;
}

@end