@interface GEOThrottlerRequester
+ (GEOThrottlerRequester)sharedRequester;
@end

@implementation GEOThrottlerRequester

+ (GEOThrottlerRequester)sharedRequester
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__GEOThrottlerRequester_sharedRequester__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRequester_onceToken_181752 != -1)
  {
    dispatch_once(&sharedRequester_onceToken_181752, block);
  }

  v2 = sharedRequester_shared;

  return v2;
}

@end