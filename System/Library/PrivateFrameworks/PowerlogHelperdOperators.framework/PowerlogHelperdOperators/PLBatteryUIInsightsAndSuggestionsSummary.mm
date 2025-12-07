@interface PLBatteryUIInsightsAndSuggestionsSummary
- (id)getResultFromCacheForSuggestionResponseType:(int64_t)type;
- (id)result;
- (void)run;
@end

@implementation PLBatteryUIInsightsAndSuggestionsSummary

- (void)run
{
  v18 = objc_opt_new();
  v3 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:9];
  if ([v3 count])
  {
    autolockSuggestion = [(PLBatteryUIInsightsAndSuggestionsSummary *)self autolockSuggestion];
    [v18 addObject:autolockSuggestion];
  }

  v5 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:10];
  if ([v5 count])
  {
    autoBrightnessSuggestion = [(PLBatteryUIInsightsAndSuggestionsSummary *)self autoBrightnessSuggestion];
    [v18 addObject:autoBrightnessSuggestion];
  }

  v7 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:11];
  v8 = [v7 count];
  v9 = v18;
  if (v8)
  {
    reduceBrightnessSuggestion = [(PLBatteryUIInsightsAndSuggestionsSummary *)self reduceBrightnessSuggestion];
    [v18 addObject:reduceBrightnessSuggestion];

    v9 = v18;
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  suggestionSummaryResult = self->_suggestionSummaryResult;
  self->_suggestionSummaryResult = v11;

  v13 = objc_opt_new();
  v14 = [(PLBatteryUIInsightsAndSuggestionsSummary *)self getResultFromCacheForSuggestionResponseType:8];
  if ([v14 count])
  {
    recentUsageInsight = [(PLBatteryUIInsightsAndSuggestionsSummary *)self recentUsageInsight];
    [v13 addObject:recentUsageInsight];
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v13];
  insightSummaryResult = self->_insightSummaryResult;
  self->_insightSummaryResult = v16;
}

- (id)result
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(NSArray *)self->_suggestionSummaryResult count])
  {
    suggestionSummaryResult = self->_suggestionSummaryResult;
    v14 = @"suggestionSummary";
    v15[0] = suggestionSummaryResult;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v3 addEntriesFromDictionary:v5];
  }

  if ([(NSArray *)self->_insightSummaryResult count])
  {
    insightSummaryResult = self->_insightSummaryResult;
    v12 = @"insightSummary";
    v13 = insightSummaryResult;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v3 addEntriesFromDictionary:v7];
  }

  if ([v3 count])
  {
    v10 = @"insightsAndSuggestionsSummaryKey";
    v11 = v3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (id)getResultFromCacheForSuggestionResponseType:(int64_t)type
{
  v5 = PLBatteryUsageUIKeyFromConfiguration();
  responderService = [(PLBatteryUIInsightsAndSuggestionsSummary *)self responderService];
  responseCache = [responderService responseCache];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v9 = [responseCache objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v5];
  v11 = [v10 objectForKeyedSubscript:@"result"];

  return v11;
}

@end