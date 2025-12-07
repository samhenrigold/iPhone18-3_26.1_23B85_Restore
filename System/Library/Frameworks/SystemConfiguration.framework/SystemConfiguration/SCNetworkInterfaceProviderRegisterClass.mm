@interface SCNetworkInterfaceProviderRegisterClass
@end

@implementation SCNetworkInterfaceProviderRegisterClass

uint64_t ____SCNetworkInterfaceProviderRegisterClass_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSCNetworkInterfaceProviderTypeID = result;
  return result;
}

@end