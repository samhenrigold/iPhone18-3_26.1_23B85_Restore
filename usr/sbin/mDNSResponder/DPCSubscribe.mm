@interface DPCSubscribe
@end

@implementation DPCSubscribe

void ___DPCSubscribe_block_invoke(uint64_t a1, int a2)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  if (a2 == 1)
  {
    _Querier_HandleSubscriberInvalidation(*(*(*(a1 + 32) + 8) + 24));
    os_release(*(*(*(a1 + 32) + 8) + 24));
  }

  else if (a2 == 2)
  {
    _Querier_ApplyUpdate(*(*(*(a1 + 32) + 8) + 24));
  }

  KQueueUnlock("Subscriber event handler");
}

@end