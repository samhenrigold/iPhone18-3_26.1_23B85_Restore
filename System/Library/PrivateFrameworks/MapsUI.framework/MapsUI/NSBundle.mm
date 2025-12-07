@interface NSBundle
@end

@implementation NSBundle

uint64_t __39__NSBundle_MapsUIExtras___mapsuiBundle__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = _mapsuiBundle_bundle;
  _mapsuiBundle_bundle = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end