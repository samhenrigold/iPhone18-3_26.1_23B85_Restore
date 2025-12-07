@interface GEOMapDataSubscriptionManager
+ (GEOMapDataSubscriptionManager)sharedManager;
@end

@implementation GEOMapDataSubscriptionManager

+ (GEOMapDataSubscriptionManager)sharedManager
{
  if (sharedManager_once_139845 != -1)
  {
    dispatch_once(&sharedManager_once_139845, &__block_literal_global_139846);
  }

  v3 = _sSingleton;

  return v3;
}

@end