@interface APBrokerManagerCallAuthenticationCallback
@end

@implementation APBrokerManagerCallAuthenticationCallback

void ___APBrokerManagerCallAuthenticationCallback_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  _Block_release(v3);
}

@end