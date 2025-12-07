@interface ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest
- (ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest)init;
@end

@implementation ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest

- (ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest)init
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11[0] = v3;
  v4 = objc_opt_new();
  v11[1] = v4;
  v5 = objc_opt_new();
  v11[2] = v5;
  v6 = objc_opt_new();
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  v10.receiver = self;
  v10.super_class = ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest;
  v8 = [(ATXOneHotCategoricalFeatureCross *)&v10 initWithFeatures:v7];

  return v8;
}

@end