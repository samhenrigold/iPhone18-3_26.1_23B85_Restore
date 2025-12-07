@interface NSDictionary(GEOXPCUtil)
- (uint64_t)_geo_newXPCObject;
@end

@implementation NSDictionary(GEOXPCUtil)

- (uint64_t)_geo_newXPCObject
{
  v1 = _NSDictionarySafeEncodingCopy(self, 0, 1);
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