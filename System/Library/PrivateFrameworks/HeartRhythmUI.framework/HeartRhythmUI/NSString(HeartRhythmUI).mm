@interface NSString(HeartRhythmUI)
+ (id)hrui_atrialFibrillationVideoPath;
+ (id)hrui_explanationVideoPath;
+ (id)hrui_highOrLowHeartRateVideoPath;
+ (id)hrui_inconclusiveVideoPath;
+ (id)hrui_sinusRhythmVideoPath;
@end

@implementation NSString(HeartRhythmUI)

+ (id)hrui_explanationVideoPath
{
  v2 = HRHeartRhythmUIFrameworkBundle(self);
  v3 = [v2 pathForResource:@"Explanation_Loop_h264" ofType:@"mov"];

  return v3;
}

+ (id)hrui_sinusRhythmVideoPath
{
  v2 = HRHeartRhythmUIFrameworkBundle(self);
  v3 = [v2 pathForResource:@"Sinus_Rhythm_Result_Loop_h264" ofType:@"mov"];

  return v3;
}

+ (id)hrui_atrialFibrillationVideoPath
{
  v2 = HRHeartRhythmUIFrameworkBundle(self);
  v3 = [v2 pathForResource:@"Atrial_Fibrillation_Result_Loop_h264" ofType:@"mov"];

  return v3;
}

+ (id)hrui_highOrLowHeartRateVideoPath
{
  v2 = HRHeartRhythmUIFrameworkBundle(self);
  v3 = [v2 pathForResource:@"High_Low_Heart_Rate_Result_Loop_h264" ofType:@"mov"];

  return v3;
}

+ (id)hrui_inconclusiveVideoPath
{
  v2 = HRHeartRhythmUIFrameworkBundle(self);
  v3 = [v2 pathForResource:@"Inconclusive_Result_Loop_h264" ofType:@"mov"];

  return v3;
}

@end