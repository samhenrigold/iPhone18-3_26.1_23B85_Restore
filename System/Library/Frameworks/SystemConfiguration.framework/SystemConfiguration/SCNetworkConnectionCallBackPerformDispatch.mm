@interface SCNetworkConnectionCallBackPerformDispatch
@end

@implementation SCNetworkConnectionCallBackPerformDispatch

void ____SCNetworkConnectionCallBackPerformDispatch_block_invoke(uint64_t a1)
{
  __SCNetworkConnectionNotify(*(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

@end