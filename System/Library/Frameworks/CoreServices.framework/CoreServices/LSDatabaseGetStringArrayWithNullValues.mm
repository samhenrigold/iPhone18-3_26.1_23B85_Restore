@interface LSDatabaseGetStringArrayWithNullValues
@end

@implementation LSDatabaseGetStringArrayWithNullValues

void ___LSDatabaseGetStringArrayWithNullValues_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v6 = _CSStringCopyCFString();
  [*(a1 + 32) addPointer:?];
  if (!v6)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      *v5 = 1;
    }
  }
}

@end