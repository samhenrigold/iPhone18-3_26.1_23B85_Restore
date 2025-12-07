@interface NSBundle
@end

@implementation NSBundle

void __34__NSBundle_SharingUI__sfui_bundle__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = sfui_bundle_frameworkBundle;
  sfui_bundle_frameworkBundle = v2;
}

@end