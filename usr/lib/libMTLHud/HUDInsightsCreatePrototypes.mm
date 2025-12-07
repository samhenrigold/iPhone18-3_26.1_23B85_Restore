@interface HUDInsightsCreatePrototypes
@end

@implementation HUDInsightsCreatePrototypes

void __HUDInsightsCreatePrototypes_block_invoke(id a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  _HUDTargetRebindingInsightReport(0, 1);
  _HUDTargetBlitInsightReport(0, 1);
  _HUDTessellationInsightReport(0, 1);
  _HUDBarrierInsightReport(0, 1);
  _HUDCompilerStatInsightReport(v2, 1);
  _HUDGameModeInsightReport(1, v1);
  _HUDMetal3To4EfficientEncoderInsightReport(0, 1);
}

@end