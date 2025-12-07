@interface SCNetworkCategoryInitialize
@end

@implementation SCNetworkCategoryInitialize

uint64_t ____SCNetworkCategoryInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCNetworkCategoryTypeID = result;
  return result;
}

@end