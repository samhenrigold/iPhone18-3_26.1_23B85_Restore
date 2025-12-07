@interface CNMetricsUIReporter
- (id)emptyDictionaryForAction:(id)action andApplication:(id)application;
- (void)logSearchResultsFetchedforApplication:(id)application fromSuggestions:(BOOL)suggestions;
- (void)logSearchResultsSelectedforApplication:(id)application fromSuggestions:(BOOL)suggestions;
- (void)logUnknownContactGeminiViewDifferentChannelSelected:(BOOL)selected;
@end

@implementation CNMetricsUIReporter

- (void)logSearchResultsFetchedforApplication:(id)application fromSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  v8 = [v6 alloc];
  v13[0] = applicationCopy;
  v12[0] = @"application";
  v12[1] = @"isSuggestion";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:suggestionsCopy];
  v12[2] = @"isSelection";
  v13[1] = v9;
  v13[2] = MEMORY[0x277CBEC28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = [v8 initWithDictionary:v10];
  [(CNMetricsUIReporter *)self logSearchActionWithDictionary:v11];
}

- (void)logSearchResultsSelectedforApplication:(id)application fromSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  v8 = [v6 alloc];
  v13[0] = applicationCopy;
  v12[0] = @"application";
  v12[1] = @"isSuggestion";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:suggestionsCopy];
  v12[2] = @"isSelection";
  v13[1] = v9;
  v13[2] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = [v8 initWithDictionary:v10];
  [(CNMetricsUIReporter *)self logSearchActionWithDictionary:v11];
}

- (id)emptyDictionaryForAction:(id)action andApplication:(id)application
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  actionCopy = action;
  v8 = [v5 alloc];
  v12[0] = @"action";
  v12[1] = @"application";
  v13[0] = actionCopy;
  v13[1] = applicationCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [v8 initWithDictionary:v9];

  return v10;
}

- (void)logUnknownContactGeminiViewDifferentChannelSelected:(BOOL)selected
{
  selectedCopy = selected;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = @"differentSIMLineSelected";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:selectedCopy];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v5 initWithDictionary:v7];

  [(CNMetricsReporter *)self sendDictionary:v8 forEvent:@"unknownNumberSIMLinePicker" andLog:0];
}

@end