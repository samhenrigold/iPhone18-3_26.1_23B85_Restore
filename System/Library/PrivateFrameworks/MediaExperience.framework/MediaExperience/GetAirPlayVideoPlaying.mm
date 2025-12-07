@interface GetAirPlayVideoPlaying
@end

@implementation GetAirPlayVideoPlaying

uint64_t __routingSessionManagerResilientRemote_GetAirPlayVideoPlaying_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a2, v3);
}

@end