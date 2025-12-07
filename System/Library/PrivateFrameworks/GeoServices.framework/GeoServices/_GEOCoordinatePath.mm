@interface _GEOCoordinatePath
- (id).cxx_construct;
@end

@implementation _GEOCoordinatePath

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  return self;
}

@end