@interface GEOTileLoaderInternal
- (id).cxx_construct;
@end

@implementation GEOTileLoaderInternal

- (id).cxx_construct
{
  *(self + 1) = self + 8;
  *(self + 2) = self + 8;
  *(self + 3) = 0;
  *(self + 6) = 0;
  *(self + 7) = self + 56;
  *(self + 8) = self + 56;
  *(self + 9) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end