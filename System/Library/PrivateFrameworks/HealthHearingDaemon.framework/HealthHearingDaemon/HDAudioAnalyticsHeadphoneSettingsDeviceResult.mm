@interface HDAudioAnalyticsHeadphoneSettingsDeviceResult
+ (id)optInSettingsWithHasHAENEnabled:(BOOL)enabled hasMeasureLevelsEnabled:(BOOL)levelsEnabled hasIncludeOtherHeadphonesEnabled:(BOOL)headphonesEnabled;
+ (id)requiredSettingsWithSaveForEightDays:(BOOL)days;
- (HDAudioAnalyticsHeadphoneSettingsDeviceResult)initWithHAENRequired:(BOOL)required hasHAENEnabled:(id)enabled hasMeasureLevelsEnabled:(id)levelsEnabled hasIncludeOtherHeadphonesEnabled:(id)headphonesEnabled haeRetention:(id)retention;
@end

@implementation HDAudioAnalyticsHeadphoneSettingsDeviceResult

+ (id)requiredSettingsWithSaveForEightDays:(BOOL)days
{
  daysCopy = days;
  v4 = [self alloc];
  if (daysCopy)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  v6 = [v4 initWithHAENRequired:1 hasHAENEnabled:0 hasMeasureLevelsEnabled:0 hasIncludeOtherHeadphonesEnabled:0 haeRetention:v5];

  return v6;
}

+ (id)optInSettingsWithHasHAENEnabled:(BOOL)enabled hasMeasureLevelsEnabled:(BOOL)levelsEnabled hasIncludeOtherHeadphonesEnabled:(BOOL)headphonesEnabled
{
  headphonesEnabledCopy = headphonesEnabled;
  levelsEnabledCopy = levelsEnabled;
  enabledCopy = enabled;
  v8 = [self alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:levelsEnabledCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:headphonesEnabledCopy];
  v12 = [v8 initWithHAENRequired:0 hasHAENEnabled:v9 hasMeasureLevelsEnabled:v10 hasIncludeOtherHeadphonesEnabled:v11 haeRetention:0];

  return v12;
}

- (HDAudioAnalyticsHeadphoneSettingsDeviceResult)initWithHAENRequired:(BOOL)required hasHAENEnabled:(id)enabled hasMeasureLevelsEnabled:(id)levelsEnabled hasIncludeOtherHeadphonesEnabled:(id)headphonesEnabled haeRetention:(id)retention
{
  requiredCopy = required;
  enabledCopy = enabled;
  levelsEnabledCopy = levelsEnabled;
  headphonesEnabledCopy = headphonesEnabled;
  retentionCopy = retention;
  v22.receiver = self;
  v22.super_class = HDAudioAnalyticsHeadphoneSettingsDeviceResult;
  v17 = [(HDAudioAnalyticsHeadphoneSettingsDeviceResult *)&v22 init];
  if (v17)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:requiredCopy];
    hasHAENRequired = v17->_hasHAENRequired;
    v17->_hasHAENRequired = v18;

    objc_storeStrong(&v17->_hasHAENEnabled, enabled);
    objc_storeStrong(&v17->_hasMeasureLevelsEnabled, levelsEnabled);
    objc_storeStrong(&v17->_hasIncludeOtherHeadphonesEnabled, headphonesEnabled);
    objc_storeStrong(&v17->_haeRetention, retention);
    v20 = v17;
  }

  return v17;
}

@end