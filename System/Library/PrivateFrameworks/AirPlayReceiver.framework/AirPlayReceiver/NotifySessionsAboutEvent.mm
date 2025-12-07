@interface NotifySessionsAboutEvent
@end

@implementation NotifySessionsAboutEvent

void ___NotifySessionsAboutEvent_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = APReceiverRequestProcessorCopyReceiverSession(a2);
  if (v3)
  {
    v5 = v3;
    AirPlayReceiverSessionControl(v3, v4, *(a1 + 32), *(a1 + 40), *(a1 + 48), 0);

    CFRelease(v5);
  }
}

@end