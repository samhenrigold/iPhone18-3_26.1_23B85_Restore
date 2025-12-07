@interface NETRBClientGetDynamicStoreKey
@end

@implementation NETRBClientGetDynamicStoreKey

uint64_t ___NETRBClientGetDynamicStoreKey_block_invoke(uint64_t a1)
{
  result = __NETRBClientValidateClient(*(a1 + 40));
  if (result)
  {
    return NETRBErrorLog("invalid client %p", *(a1 + 40));
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

@end