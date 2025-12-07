@interface NSBundle
@end

@implementation NSBundle

uint64_t __49__NSBundle_PFAdditions__podcastsFoundationBundle__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = podcastsFoundationBundle_bundle;
  podcastsFoundationBundle_bundle = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end