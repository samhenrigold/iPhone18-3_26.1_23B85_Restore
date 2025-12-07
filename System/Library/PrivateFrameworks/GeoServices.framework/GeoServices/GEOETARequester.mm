@interface GEOETARequester
+ (id)sharedRequester;
@end

@implementation GEOETARequester

+ (id)sharedRequester
{
  if (sharedRequester_once_76372 != -1)
  {
    dispatch_once(&sharedRequester_once_76372, &__block_literal_global_76373);
  }

  v3 = sharedRequester__singleton_76374;

  return v3;
}

@end