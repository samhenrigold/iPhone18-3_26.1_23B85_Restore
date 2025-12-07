@interface LSDatabaseGetStringArray
@end

@implementation LSDatabaseGetStringArray

void ___LSDatabaseGetStringArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end