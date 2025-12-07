@interface SCNetworkProtocolInitialize
@end

@implementation SCNetworkProtocolInitialize

uint64_t ____SCNetworkProtocolInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCNetworkProtocolTypeID = result;
  return result;
}

@end