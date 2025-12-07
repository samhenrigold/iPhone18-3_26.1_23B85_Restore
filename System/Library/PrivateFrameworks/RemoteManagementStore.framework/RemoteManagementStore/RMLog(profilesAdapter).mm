@interface RMLog(profilesAdapter)
+ (id)profilesAdapter;
@end

@implementation RMLog(profilesAdapter)

+ (id)profilesAdapter
{
  if (profilesAdapter_onceToken != -1)
  {
    +[RMLog(profilesAdapter) profilesAdapter];
  }

  v2 = profilesAdapter_result;

  return v2;
}

@end