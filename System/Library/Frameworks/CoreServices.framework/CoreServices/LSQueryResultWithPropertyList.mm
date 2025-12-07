@interface LSQueryResultWithPropertyList
@end

@implementation LSQueryResultWithPropertyList

void __70___LSQueryResultWithPropertyList_propertyListWithClass_valuesOfClass___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (!_NSIsNSString() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    *a4 = 1;
  }
}

@end