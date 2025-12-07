@interface SCNetworkSettingsInitialize
@end

@implementation SCNetworkSettingsInitialize

uint64_t ____SCNetworkSettingsInitialize_block_invoke()
{
  __kSCNSManagerTypeID = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  __kSCNSServiceTypeID = result;
  return result;
}

@end