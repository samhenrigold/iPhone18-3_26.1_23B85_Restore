@interface SCDynamicStoreReconnect
@end

@implementation SCDynamicStoreReconnect

uint64_t ____SCDynamicStoreReconnect_block_invoke(uint64_t a1)
{
  result = __SCDynamicStoreAddSession(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end