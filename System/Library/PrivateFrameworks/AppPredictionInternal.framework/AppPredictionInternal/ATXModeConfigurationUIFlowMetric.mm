@interface ATXModeConfigurationUIFlowMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXModeConfigurationUIFlowMetric

- (id)coreAnalyticsDictionary
{
  v26[15] = *MEMORY[0x277D85DE8];
  v25[0] = @"stableModeID";
  modeUUID = [(ATXModeConfigurationUIFlowMetric *)self modeUUID];
  if (modeUUID)
  {
    modeUUID2 = [(ATXModeConfigurationUIFlowMetric *)self modeUUID];
    null = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    modeUUID2 = null;
  }

  v17 = null;
  v26[0] = null;
  v25[1] = @"modeSemanticType";
  modeSemanticType = [(ATXModeConfigurationUIFlowMetric *)self modeSemanticType];
  v5 = modeSemanticType;
  if (!modeSemanticType)
  {
    modeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v16 = modeSemanticType;
  v26[1] = modeSemanticType;
  v25[2] = @"modeConfigurationUI";
  modeConfigurationUI = [(ATXModeConfigurationUIFlowMetric *)self modeConfigurationUI];
  v26[2] = modeConfigurationUI;
  v25[3] = @"numAppsAdded";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numAppsAdded](self, "numAppsAdded")}];
  v26[3] = v21;
  v25[4] = @"numAppsRemoved";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numAppsRemoved](self, "numAppsRemoved")}];
  v26[4] = v20;
  v25[5] = @"numAppsSuggested";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numAppsSuggested](self, "numAppsSuggested")}];
  v26[5] = v19;
  v25[6] = @"numExistingAllowedApps";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numExistingAllowedApps](self, "numExistingAllowedApps")}];
  v26[6] = v18;
  v25[7] = @"numSuggestedAppsAdded";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedAppsAdded](self, "numSuggestedAppsAdded")}];
  v26[7] = v6;
  v25[8] = @"numSuggestedAppsRemoved";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedAppsRemoved](self, "numSuggestedAppsRemoved")}];
  v26[8] = v7;
  v25[9] = @"numContactsAdded";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numContactsAdded](self, "numContactsAdded")}];
  v26[9] = v8;
  v25[10] = @"numContactsRemoved";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numContactsRemoved](self, "numContactsRemoved")}];
  v26[10] = v9;
  v25[11] = @"numContactsSuggested";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numContactsSuggested](self, "numContactsSuggested")}];
  v26[11] = v10;
  v25[12] = @"numExistingAllowedContacts";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numExistingAllowedContacts](self, "numExistingAllowedContacts")}];
  v26[12] = v11;
  v25[13] = @"numSuggestedContactsAdded";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedContactsAdded](self, "numSuggestedContactsAdded")}];
  v26[13] = v12;
  v25[14] = @"numSuggestedContactsRemoved";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedContactsRemoved](self, "numSuggestedContactsRemoved")}];
  v26[14] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:15];

  if (!v5)
  {
  }

  if (modeUUID)
  {
  }

  return v14;
}

@end