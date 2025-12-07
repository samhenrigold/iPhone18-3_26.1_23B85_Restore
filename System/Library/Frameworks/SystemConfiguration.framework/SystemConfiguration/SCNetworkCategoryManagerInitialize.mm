@interface SCNetworkCategoryManagerInitialize
@end

@implementation SCNetworkCategoryManagerInitialize

uint64_t ____SCNetworkCategoryManagerInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCNetworkCategoryManagerTypeID = result;
  return result;
}

@end