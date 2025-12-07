@interface GEORequestCounter
+ (id)sharedCounter;
@end

@implementation GEORequestCounter

+ (id)sharedCounter
{
  if (sharedCounter_s_onceToken != -1)
  {
    dispatch_once(&sharedCounter_s_onceToken, &__block_literal_global_475);
  }

  v3 = _singleton;

  return v3;
}

@end