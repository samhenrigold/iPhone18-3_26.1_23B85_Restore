@interface GEOAltitudeManifestReserved
- (id).cxx_construct;
@end

@implementation GEOAltitudeManifestReserved

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end