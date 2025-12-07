@interface ATXNPlusOneStudyEvent
- (id)coreAnalyticsEvent;
@end

@implementation ATXNPlusOneStudyEvent

- (id)coreAnalyticsEvent
{
  v35[18] = *MEMORY[0x277D85DE8];
  v34[0] = @"extensionBundleId";
  extensionBundleId = [(ATXNPlusOneStudyEvent *)self extensionBundleId];
  v35[0] = extensionBundleId;
  v34[1] = @"widgetKind";
  widgetKind = [(ATXNPlusOneStudyEvent *)self widgetKind];
  v35[1] = widgetKind;
  v34[2] = @"widgetExistsOnScreen";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNPlusOneStudyEvent widgetExistsOnScreen](self, "widgetExistsOnScreen")}];
  v35[2] = v31;
  v34[3] = @"appPushNotificationEnabled";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNPlusOneStudyEvent appPushNotificationEnabled](self, "appPushNotificationEnabled")}];
  v35[3] = v30;
  v34[4] = @"appLaunchPopularity";
  v3 = MEMORY[0x277CCABB0];
  [(ATXNPlusOneStudyEvent *)self appLaunchPopularity];
  v29 = [v3 numberWithDouble:?];
  v35[4] = v29;
  v34[5] = @"appScreenTimeCategory";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNPlusOneStudyEvent appScreenTimeCategory](self, "appScreenTimeCategory")}];
  v35[5] = v28;
  v34[6] = @"numAppLaunchPastDay";
  v4 = MEMORY[0x277CCABB0];
  appLaunchCounts = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v26 = [v4 numberWithInteger:{objc_msgSend(appLaunchCounts, "numAppLaunchPastDay")}];
  v35[6] = v26;
  v34[7] = @"numAppLaunchPast3Day";
  v5 = MEMORY[0x277CCABB0];
  appLaunchCounts2 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v24 = [v5 numberWithInteger:{objc_msgSend(appLaunchCounts2, "numAppLaunchPast3Day")}];
  v35[7] = v24;
  v34[8] = @"numAppLaunchPast7Day";
  v6 = MEMORY[0x277CCABB0];
  appLaunchCounts3 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v22 = [v6 numberWithInteger:{objc_msgSend(appLaunchCounts3, "numAppLaunchPast7Day")}];
  v35[8] = v22;
  v34[9] = @"numAppLaunchPast14Day";
  v7 = MEMORY[0x277CCABB0];
  appLaunchCounts4 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v20 = [v7 numberWithInteger:{objc_msgSend(appLaunchCounts4, "numAppLaunchPast14Day")}];
  v35[9] = v20;
  v34[10] = @"numAppLaunchPast28Day";
  v8 = MEMORY[0x277CCABB0];
  appLaunchCounts5 = [(ATXNPlusOneStudyEvent *)self appLaunchCounts];
  v10 = [v8 numberWithInteger:{objc_msgSend(appLaunchCounts5, "numAppLaunchPast28Day")}];
  v35[10] = v10;
  v34[11] = @"suggestionCountInfoHeuristic";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountInfoHeuristicHigh](self, "suggestionCountInfoHeuristicHigh")}];
  v35[11] = v11;
  v34[12] = @"suggestionCountInfoHeuristicMED";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountInfoHeuristicMed](self, "suggestionCountInfoHeuristicMed")}];
  v35[12] = v12;
  v34[13] = @"suggestionCountInfoHeuristicLOW";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountInfoHeuristicLow](self, "suggestionCountInfoHeuristicLow")}];
  v35[13] = v13;
  v34[14] = @"suggestionCountRelevantShortcut";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountRelevantShortcut](self, "suggestionCountRelevantShortcut")}];
  v35[14] = v14;
  v34[15] = @"suggestionCountShortcutConversion";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountShortcutConversionHigh](self, "suggestionCountShortcutConversionHigh")}];
  v35[15] = v15;
  v34[16] = @"suggestionCountShortcutConversionMED";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountShortcutConversionMed](self, "suggestionCountShortcutConversionMed")}];
  v35[16] = v16;
  v34[17] = @"suggestionCountShortcutConversionLOW";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXNPlusOneStudyEvent suggestionCountShortcutConversionLow](self, "suggestionCountShortcutConversionLow")}];
  v35[17] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:18];

  return v18;
}

@end