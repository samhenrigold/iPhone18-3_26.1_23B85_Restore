@interface SCNetworkServiceInitialize
@end

@implementation SCNetworkServiceInitialize

uint64_t ____SCNetworkServiceInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCNetworkServiceTypeID = result;
  return result;
}

@end