@interface GEOTileCacheReserved
- (id).cxx_construct;
@end

@implementation GEOTileCacheReserved

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = self + 72;
  *(self + 10) = self + 72;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  *(self + 32) = 1065353216;
  return self;
}

@end