@interface NSBundle
@end

@implementation NSBundle

void __42__NSBundle_GeoServicesBundle____geoBundle__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = __geoBundle_bundle;
  __geoBundle_bundle = v2;
}

@end