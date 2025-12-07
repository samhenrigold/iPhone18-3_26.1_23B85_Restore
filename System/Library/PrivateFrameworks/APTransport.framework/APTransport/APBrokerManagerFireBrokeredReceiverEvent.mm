@interface APBrokerManagerFireBrokeredReceiverEvent
@end

@implementation APBrokerManagerFireBrokeredReceiverEvent

void ___APBrokerManagerFireBrokeredReceiverEvent_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_13_1();
  if (v1 == v2)
  {
    (*(a1 + 40))(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 32));
  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

@end