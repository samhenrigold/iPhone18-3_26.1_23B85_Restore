@interface Invalidate
@end

@implementation Invalidate

void __queryManagerGetInfo_Invalidate_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v4 = -72233;
  }

  else
  {
    v3 = DerivedStorage;
    CFDictionaryApplyBlock();
    CFDictionaryRemoveAllValues(*(v3 + 24));
    v4 = 0;
    *(v3 + 16) = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

@end