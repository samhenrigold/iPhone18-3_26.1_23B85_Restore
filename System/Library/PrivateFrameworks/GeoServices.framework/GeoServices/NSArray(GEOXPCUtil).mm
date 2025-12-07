@interface NSArray(GEOXPCUtil)
- (uint64_t)_geo_newXPCObject;
@end

@implementation NSArray(GEOXPCUtil)

- (uint64_t)_geo_newXPCObject
{
  v1 = _NSArraySafeEncodingCopy(self, 0, 1u);
  if (v1)
  {
    v2 = _CFXPCCreateXPCObjectFromCFObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end