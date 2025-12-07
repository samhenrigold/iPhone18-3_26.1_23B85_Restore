@interface MPCQueueControllerRegistry
@end

@implementation MPCQueueControllerRegistry

uint64_t __37___MPCQueueControllerRegistry_shared__block_invoke()
{
  v0 = objc_alloc_init(_MPCQueueControllerRegistry);
  v1 = shared___shared;
  shared___shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end