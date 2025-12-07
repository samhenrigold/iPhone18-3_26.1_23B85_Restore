@interface ReportStartupTimeIncludingInterstitial
@end

@implementation ReportStartupTimeIncludingInterstitial

void __fpic_ReportStartupTimeIncludingInterstitial_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 160))
  {
    OUTLINED_FUNCTION_158_3(a1);
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_2_166();
    if (v2)
    {
      if (!*(*(v1 + 32) + 1196) && fpic_GetFirstCurrentItem() == *(v1 + 56) && FigCFDictionaryGetValueIfPresent())
      {
        FigPlaybackItemGetFigBaseObject();
        v4 = v3;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v5)
        {
          v5(v4, @"TimestampInterstitialReadyToPlay", 0);
        }
      }
    }
  }
}

@end