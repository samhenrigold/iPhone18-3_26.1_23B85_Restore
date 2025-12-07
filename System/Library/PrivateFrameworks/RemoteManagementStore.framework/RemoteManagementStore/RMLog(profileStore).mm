@interface RMLog(profileStore)
+ (id)profileStore;
@end

@implementation RMLog(profileStore)

+ (id)profileStore
{
  if (profileStore_onceToken != -1)
  {
    +[RMLog(profileStore) profileStore];
  }

  v2 = profileStore_result;

  return v2;
}

@end