@interface UIImage(HeartRhythmUI)
+ (id)hrui_ECGAppIconImage;
+ (id)hrui_ECGOnboardingWristImage;
+ (id)hrui_atrialFibrillationDetectionIllustrationImage;
+ (id)hrui_cannotDoImage;
+ (id)hrui_heartRateIconImage;
+ (id)hrui_screenWidthImageWithName:()HeartRhythmUI;
+ (id)hrui_warningImage;
+ (id)hrui_watchIconImage;
+ (id)hrui_waveformImage;
@end

@implementation UIImage(HeartRhythmUI)

+ (id)hrui_screenWidthImageWithName:()HeartRhythmUI
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = HRHeartRhythmUIFrameworkBundle(v4);
  v6 = [v3 imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)hrui_ECGOnboardingWristImage
{
  v1 = MEMORY[0x277D755B8];
  _watchImageName = [self _watchImageName];
  v3 = [v1 hrui_screenWidthImageWithName:_watchImageName];

  return v3;
}

+ (id)hrui_cannotDoImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"cannot_do" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)hrui_warningImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"warning" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)hrui_ECGAppIconImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"ECG_app_icon_new" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)hrui_waveformImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"waveform" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)hrui_atrialFibrillationDetectionIllustrationImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"afib_detection_illustration" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)hrui_heartRateIconImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"heart_rate_icon" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)hrui_watchIconImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = HRHeartRhythmUIFrameworkBundle(self);
  v4 = [v2 imageNamed:@"watch_icon" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

@end