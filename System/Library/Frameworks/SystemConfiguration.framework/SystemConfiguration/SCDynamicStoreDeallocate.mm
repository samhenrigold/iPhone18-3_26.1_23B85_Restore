@interface SCDynamicStoreDeallocate
@end

@implementation SCDynamicStoreDeallocate

void ____SCDynamicStoreDeallocate_block_invoke(uint64_t a1)
{
  v2 = _sc_store_sessions;
  v3 = *(a1 + 32);

  CFSetRemoveValue(v2, v3);
}

@end