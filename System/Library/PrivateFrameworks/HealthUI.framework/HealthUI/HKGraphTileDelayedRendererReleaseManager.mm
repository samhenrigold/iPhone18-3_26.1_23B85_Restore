@interface HKGraphTileDelayedRendererReleaseManager
@end

@implementation HKGraphTileDelayedRendererReleaseManager

uint64_t __54___HKGraphTileDelayedRendererReleaseManager_singleton__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = singleton_singletonDelayedRendererReleaseManager;
  singleton_singletonDelayedRendererReleaseManager = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end