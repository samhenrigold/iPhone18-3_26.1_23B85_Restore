@interface StartSessionForHighConfidenceDestination
@end

@implementation StartSessionForHighConfidenceDestination

uint64_t __routingSessionManagerResilientRemote_StartSessionForHighConfidenceDestination_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

@end