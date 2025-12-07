@interface StopSuppressingLikelyDestinations
@end

@implementation StopSuppressingLikelyDestinations

uint64_t __routingSessionManagerResilientRemote_StopSuppressingLikelyDestinations_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a2);
}

@end