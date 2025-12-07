@interface GEOPlaceDataRequester
+ (id)sharedInstance;
@end

@implementation GEOPlaceDataRequester

+ (id)sharedInstance
{
  if (sharedInstance_once_85671 != -1)
  {
    dispatch_once(&sharedInstance_once_85671, &__block_literal_global_50_85672);
  }

  v3 = sharedInstance_singleton_85673;

  return v3;
}

@end