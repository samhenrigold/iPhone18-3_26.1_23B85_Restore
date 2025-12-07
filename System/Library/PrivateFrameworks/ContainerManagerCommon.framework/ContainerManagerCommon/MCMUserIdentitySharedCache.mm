@interface MCMUserIdentitySharedCache
+ (id)sharedInstance;
@end

@implementation MCMUserIdentitySharedCache

+ (id)sharedInstance
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__MCMUserIdentitySharedCache_sharedInstance__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  if (sharedInstance_onceToken_10329 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10329, v4);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __44__MCMUserIdentitySharedCache_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end