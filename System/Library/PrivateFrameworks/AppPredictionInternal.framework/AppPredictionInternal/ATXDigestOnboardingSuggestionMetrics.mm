@interface ATXDigestOnboardingSuggestionMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingSuggestionMetrics

- (id)coreAnalyticsDictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"sessionUUID";
  sessionUUID = [(ATXDigestOnboardingSuggestionMetrics *)self sessionUUID];
  null = sessionUUID;
  if (!sessionUUID)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v12[0] = null;
  v11[1] = @"suggestionOutcome";
  outcome = [(ATXDigestOnboardingSuggestionMetrics *)self outcome];
  null2 = outcome;
  if (!outcome)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v12[1] = null2;
  v11[2] = @"timeToResolution";
  v7 = MEMORY[0x277CCABB0];
  [(ATXDigestOnboardingSuggestionMetrics *)self timeToResolution];
  v8 = [v7 numberWithDouble:?];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (!outcome)
  {
  }

  if (!sessionUUID)
  {
  }

  return v9;
}

@end