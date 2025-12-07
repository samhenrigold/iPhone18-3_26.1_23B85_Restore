@interface SCNetworkSetInitialize
@end

@implementation SCNetworkSetInitialize

uint64_t ____SCNetworkSetInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCNetworkSetTypeID = result;
  return result;
}

@end