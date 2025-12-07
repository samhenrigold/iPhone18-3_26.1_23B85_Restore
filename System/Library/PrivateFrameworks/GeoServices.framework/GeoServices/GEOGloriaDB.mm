@interface GEOGloriaDB
- (id).cxx_construct;
@end

@implementation GEOGloriaDB

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = -1;
  *(self + 32) = -1;
  return self;
}

@end