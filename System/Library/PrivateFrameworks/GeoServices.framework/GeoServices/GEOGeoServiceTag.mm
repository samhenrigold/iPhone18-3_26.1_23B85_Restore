@interface GEOGeoServiceTag
+ (id)defaultTag;
@end

@implementation GEOGeoServiceTag

+ (id)defaultTag
{
  v2 = objc_alloc_init(GEOGeoServiceTag);
  [(GEOGeoServiceTag *)v2 setServiceType:18];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(GEOGeoServiceTag *)v2 setTag:uUIDString];

  return v2;
}

@end