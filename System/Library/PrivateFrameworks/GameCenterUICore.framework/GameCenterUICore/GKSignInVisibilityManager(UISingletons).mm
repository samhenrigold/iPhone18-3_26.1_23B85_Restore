@interface GKSignInVisibilityManager(UISingletons)
+ (id)shared;
+ (id)sharedWithoutPersistence;
@end

@implementation GKSignInVisibilityManager(UISingletons)

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[GKSignInVisibilityManager(UISingletons) shared];
  }

  v2 = shared_sharedInstance_0;

  return v2;
}

+ (id)sharedWithoutPersistence
{
  if (sharedWithoutPersistence_onceToken != -1)
  {
    +[GKSignInVisibilityManager(UISingletons) sharedWithoutPersistence];
  }

  v2 = sharedWithoutPersistence_sharedInstance;

  return v2;
}

@end