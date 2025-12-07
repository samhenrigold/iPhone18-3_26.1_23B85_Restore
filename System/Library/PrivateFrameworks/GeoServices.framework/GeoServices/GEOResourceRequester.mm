@interface GEOResourceRequester
+ (GEOResourceRequester)sharedRequester;
@end

@implementation GEOResourceRequester

+ (GEOResourceRequester)sharedRequester
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__GEOResourceRequester_sharedRequester__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRequester_onceToken_132267 != -1)
  {
    dispatch_once(&sharedRequester_onceToken_132267, block);
  }

  v2 = sharedRequester__shared;

  return v2;
}

void __39__GEOResourceRequester_sharedRequester__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!_proxyClass_132268)
  {
    [*(a1 + 32) setProxyClass:objc_opt_class()];
  }

  v3 = objc_alloc(*(a1 + 32));
  v6 = objc_alloc_init(_proxyClass_132268);
  v4 = [v3 initWithProxy:v6];
  v5 = sharedRequester__shared;
  sharedRequester__shared = v4;
}

@end