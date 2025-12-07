@interface NSArray
@end

@implementation NSArray

uint64_t __60__NSArray_BaseBoard__bs_enumerateObjectsOfClass_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

@end