@interface IPv4InterfaceAddressesChanged
@end

@implementation IPv4InterfaceAddressesChanged

void __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke(uint64_t a1, const void *a2)
{
  v4 = APSCFStringToSockAddr();
  if (v4)
  {
    __carPlayHelperSession_IPv4InterfaceAddressesChanged_block_invoke_cold_1(v4);
  }

  else
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), a2);
  }
}

@end