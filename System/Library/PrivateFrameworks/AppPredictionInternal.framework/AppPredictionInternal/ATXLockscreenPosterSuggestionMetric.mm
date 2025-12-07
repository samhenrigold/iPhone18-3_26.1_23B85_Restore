@interface ATXLockscreenPosterSuggestionMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenPosterSuggestionMetric

- (id)coreAnalyticsDictionary
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12[0] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenPosterSuggestionMetric *)self extensionBundleId];
  null = extensionBundleId;
  if (!extensionBundleId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"section";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenPosterSuggestionMetric section](self, "section")}];
  v13[1] = v5;
  v12[2] = @"outcome";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenPosterSuggestionMetric outcome](self, "outcome")}];
  v13[2] = v6;
  v12[3] = @"sessionId";
  sessionId = [(ATXLockscreenPosterSuggestionMetric *)self sessionId];
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[3] = null2;
  v12[4] = @"engaged";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenPosterSuggestionMetric engaged](self, "engaged")}];
  v13[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

  if (!sessionId)
  {
  }

  if (!extensionBundleId)
  {
  }

  return v10;
}

@end