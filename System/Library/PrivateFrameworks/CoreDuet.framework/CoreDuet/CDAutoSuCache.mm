@interface CDAutoSuCache
@end

@implementation CDAutoSuCache

uint64_t __29___CDAutoSuCache_sharedCache__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedCache_sharedInstance;
  sharedCache_sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end