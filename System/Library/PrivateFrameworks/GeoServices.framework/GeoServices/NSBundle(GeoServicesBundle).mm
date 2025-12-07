@interface NSBundle(GeoServicesBundle)
+ (id)__geoBundle;
@end

@implementation NSBundle(GeoServicesBundle)

+ (id)__geoBundle
{
  if (__geoBundle_onceToken != -1)
  {
    dispatch_once(&__geoBundle_onceToken, &__block_literal_global_129850);
  }

  v1 = __geoBundle_bundle;

  return v1;
}

@end