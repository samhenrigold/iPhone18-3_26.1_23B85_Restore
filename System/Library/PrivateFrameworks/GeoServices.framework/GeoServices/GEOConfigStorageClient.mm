@interface GEOConfigStorageClient
+ (GEOConfigStorageClient)shared;
- (id)_init;
@end

@implementation GEOConfigStorageClient

+ (GEOConfigStorageClient)shared
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__GEOConfigStorageClient_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken_77064 != -1)
  {
    dispatch_once(&shared_onceToken_77064, block);
  }

  v2 = shared_instance;

  return v2;
}

void __32__GEOConfigStorageClient_shared__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = shared_instance;
  shared_instance = v1;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = GEOConfigStorageClient;
  return [(GEOConfigStorageClient *)&v3 init];
}

@end