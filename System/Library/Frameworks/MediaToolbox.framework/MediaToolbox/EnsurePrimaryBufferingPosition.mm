@interface EnsurePrimaryBufferingPosition
@end

@implementation EnsurePrimaryBufferingPosition

void __fpic_EnsurePrimaryBufferingPosition_block_invoke(void *result)
{
  if (!*(result[5] + 1147))
  {
    CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent(result[6]);
    if (CurrentlyPlayingEvent)
    {
      v3 = CurrentlyPlayingEvent;
      v4 = (*(result[5] + 136))(result[6], result[7], 1, NAN);
      v5 = result[5];
      *(v5 + 1147) = v4;
      if (v4)
      {
        if ((*(v5 + 1052) & 1) == 0)
        {
          v6 = (*(v5 + 88))(result[6], result[7], v3);
          FigPlayerInterstitialEventGetSnapOptions(v6);
          fpic_ApplyResumptionOffset();
          *(*(result[4] + 8) + 24) = v7;
        }
      }
    }
  }
}

@end