@interface ATXLockscreenWidgetSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenWidgetSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v17[7] = *MEMORY[0x277D85DE8];
  v16[0] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenWidgetSuggestionMetric *)self extensionBundleId];
  v4 = extensionBundleId;
  if (!extensionBundleId)
  {
    extensionBundleId = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = extensionBundleId;
  v16[1] = @"family";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetSuggestionMetric family](self, "family", extensionBundleId)}];
  v17[1] = v5;
  v16[2] = @"kind";
  kind = [(ATXLockscreenWidgetSuggestionMetric *)self kind];
  null = kind;
  if (!kind)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = null;
  v16[3] = @"reason";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetSuggestionMetric reason](self, "reason")}];
  v17[3] = v8;
  v16[4] = @"outcome";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenWidgetSuggestionMetric outcome](self, "outcome")}];
  v17[4] = v9;
  v16[5] = @"sessionId";
  sessionId = [(ATXLockscreenWidgetSuggestionMetric *)self sessionId];
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v17[5] = null2;
  v16[6] = @"numEngaged";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenWidgetSuggestionMetric numEngaged](self, "numEngaged")}];
  v17[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];

  if (!sessionId)
  {
  }

  if (!kind)
  {
  }

  if (!v4)
  {
  }

  return v13;
}

@end