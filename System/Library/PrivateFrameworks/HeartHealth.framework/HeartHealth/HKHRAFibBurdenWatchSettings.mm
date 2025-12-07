@interface HKHRAFibBurdenWatchSettings
+ (id)hiddenSettings;
- (HKHRAFibBurdenWatchSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled statusText:(id)text footer:(id)footer;
@end

@implementation HKHRAFibBurdenWatchSettings

- (HKHRAFibBurdenWatchSettings)initWithSettingVisible:(BOOL)visible settingEnabled:(BOOL)enabled statusText:(id)text footer:(id)footer
{
  enabledCopy = enabled;
  visibleCopy = visible;
  textCopy = text;
  footerCopy = footer;
  v16.receiver = self;
  v16.super_class = HKHRAFibBurdenWatchSettings;
  v12 = [(HKHRAFibBurdenWatchSettings *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(HKHRAFibBurdenWatchSettings *)v12 setSettingVisible:visibleCopy];
    [(HKHRAFibBurdenWatchSettings *)v13 setSettingEnabled:enabledCopy];
    [(HKHRAFibBurdenWatchSettings *)v13 setStatusText:textCopy];
    [(HKHRAFibBurdenWatchSettings *)v13 setFooter:footerCopy];
    v14 = v13;
  }

  return v13;
}

+ (id)hiddenSettings
{
  v2 = [HKHRAFibBurdenWatchSettings alloc];
  v3 = +[_HKHeartSettingsUtilities aFibBurdenUnavailableDetailText];
  v4 = [(HKHRAFibBurdenWatchSettings *)v2 initWithSettingVisible:0 settingEnabled:0 statusText:v3 footer:0];

  return v4;
}

@end