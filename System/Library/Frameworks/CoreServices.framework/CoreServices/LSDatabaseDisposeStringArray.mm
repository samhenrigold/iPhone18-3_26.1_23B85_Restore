@interface LSDatabaseDisposeStringArray
@end

@implementation LSDatabaseDisposeStringArray

uint64_t ___LSDatabaseDisposeStringArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);

  return _CSStringRelease();
}

@end