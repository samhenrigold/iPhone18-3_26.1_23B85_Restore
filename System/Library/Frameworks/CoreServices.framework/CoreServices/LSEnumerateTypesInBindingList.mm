@interface LSEnumerateTypesInBindingList
@end

@implementation LSEnumerateTypesInBindingList

void ___LSEnumerateTypesInBindingList_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  *(*(a1[5] + 8) + 24) = 1;
  [(_LSDatabase *)*v4 store];
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    (*(a1[4] + 16))();
  }
}

@end