@interface HKHRCardioFitnessWatchSettings
+ (id)hiddenSettings;
- (HKHRCardioFitnessWatchSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled statusText:(id)text footer:(id)footer;
@end

@implementation HKHRCardioFitnessWatchSettings

- (HKHRCardioFitnessWatchSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled statusText:(id)text footer:(id)footer
{
  enabledCopy = enabled;
  visibleCopy = visible;
  textCopy = text;
  footerCopy = footer;
  v16.receiver = self;
  v16.super_class = HKHRCardioFitnessWatchSettings;
  v12 = [(HKHRCardioFitnessWatchSettings *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(HKHRCardioFitnessWatchSettings *)v12 setSettingVisible:visibleCopy];
    [(HKHRCardioFitnessWatchSettings *)v13 setSettingEnabled:enabledCopy];
    [(HKHRCardioFitnessWatchSettings *)v13 setStatusText:textCopy];
    [(HKHRCardioFitnessWatchSettings *)v13 setFooter:footerCopy];
    v14 = v13;
  }

  return v13;
}

+ (id)hiddenSettings
{
  v2 = [HKHRCardioFitnessWatchSettings alloc];
  v3 = +[_HKHeartSettingsUtilities cardioFitnessUnavailableDetailText];
  v4 = [(HKHRCardioFitnessWatchSettings *)v2 initWithSettingVisible:0 settingEnabled:0 statusText:v3 footer:0];

  return v4;
}

@end