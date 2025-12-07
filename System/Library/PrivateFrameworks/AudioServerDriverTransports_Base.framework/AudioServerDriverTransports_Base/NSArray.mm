@interface NSArray
@end

@implementation NSArray

uint64_t __47__NSArray_ASDTUtils__asdtNumericSortAscending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32) == 1)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
    a3 = a2;
  }

  return [v3 compare:a3];
}

@end