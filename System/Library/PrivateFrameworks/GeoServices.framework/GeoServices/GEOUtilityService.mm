@interface GEOUtilityService
+ (GEOUtilityService)sharedService;
- (void)sendHeartbeat;
@end

@implementation GEOUtilityService

+ (GEOUtilityService)sharedService
{
  if (sharedService_once != -1)
  {
    dispatch_once(&sharedService_once, &__block_literal_global_50824);
  }

  v3 = sharedService__singleton;

  return v3;
}

void __34__GEOUtilityService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(GEOUtilityService);
  v1 = sharedService__singleton;
  sharedService__singleton = v0;
}

- (void)sendHeartbeat
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [GEOXPCConnection createServerConnectionFor:18 debugIdentifier:@"Utilities" eventHandler:0];
  v4 = @"message";
  v5[0] = @"utility.heartbeat";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 sendDictionary:v3];
}

@end