@interface HKHRCardioFitnessBridgeSettings
+ (id)hiddenSettings;
- (HKHRCardioFitnessBridgeSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding footer:(id)footer;
@end

@implementation HKHRCardioFitnessBridgeSettings

- (HKHRCardioFitnessBridgeSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding footer:(id)footer
{
  onboardingCopy = onboarding;
  enabledCopy = enabled;
  visibleCopy = visible;
  footerCopy = footer;
  v15.receiver = self;
  v15.super_class = HKHRCardioFitnessBridgeSettings;
  v11 = [(HKHRCardioFitnessBridgeSettings *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HKHRCardioFitnessBridgeSettings *)v11 setSettingVisible:visibleCopy];
    [(HKHRCardioFitnessBridgeSettings *)v12 setSettingEnabled:enabledCopy];
    [(HKHRCardioFitnessBridgeSettings *)v12 setShowOnboarding:onboardingCopy];
    [(HKHRCardioFitnessBridgeSettings *)v12 setFooter:footerCopy];
    v13 = v12;
  }

  return v12;
}

+ (id)hiddenSettings
{
  v2 = [[HKHRCardioFitnessBridgeSettings alloc] initWithSettingVisible:0 settingEnabled:0 showOnboarding:0 footer:0];

  return v2;
}

@end