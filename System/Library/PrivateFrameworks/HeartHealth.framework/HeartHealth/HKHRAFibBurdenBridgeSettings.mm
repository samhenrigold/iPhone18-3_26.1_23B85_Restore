@interface HKHRAFibBurdenBridgeSettings
+ (id)hiddenSettings;
- (HKHRAFibBurdenBridgeSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding footer:(id)footer;
@end

@implementation HKHRAFibBurdenBridgeSettings

- (HKHRAFibBurdenBridgeSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled showOnboarding:(BOOL)onboarding footer:(id)footer
{
  onboardingCopy = onboarding;
  enabledCopy = enabled;
  visibleCopy = visible;
  footerCopy = footer;
  v15.receiver = self;
  v15.super_class = HKHRAFibBurdenBridgeSettings;
  v11 = [(HKHRAFibBurdenBridgeSettings *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HKHRAFibBurdenBridgeSettings *)v11 setSettingVisible:visibleCopy];
    [(HKHRAFibBurdenBridgeSettings *)v12 setSettingEnabled:enabledCopy];
    [(HKHRAFibBurdenBridgeSettings *)v12 setShowOnboarding:onboardingCopy];
    [(HKHRAFibBurdenBridgeSettings *)v12 setFooter:footerCopy];
    v13 = v12;
  }

  return v12;
}

+ (id)hiddenSettings
{
  v2 = [[HKHRAFibBurdenBridgeSettings alloc] initWithSettingVisible:0 settingEnabled:0 showOnboarding:0 footer:0];

  return v2;
}

@end