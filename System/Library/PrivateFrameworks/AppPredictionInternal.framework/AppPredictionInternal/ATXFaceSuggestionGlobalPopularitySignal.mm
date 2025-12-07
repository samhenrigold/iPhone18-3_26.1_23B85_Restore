@interface ATXFaceSuggestionGlobalPopularitySignal
- (ATXFaceSuggestionGlobalPopularitySignal)initWithParameters:(id)parameters;
- (double)valueForDescriptor:(id)descriptor;
@end

@implementation ATXFaceSuggestionGlobalPopularitySignal

- (ATXFaceSuggestionGlobalPopularitySignal)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionGlobalPopularitySignal;
  v5 = [(ATXFaceSuggestionGlobalPopularitySignal *)&v9 init];
  if (v5)
  {
    globalPopularityScores = [parametersCopy globalPopularityScores];
    globalPopularityScores = v5->_globalPopularityScores;
    v5->_globalPopularityScores = globalPopularityScores;
  }

  return v5;
}

- (double)valueForDescriptor:(id)descriptor
{
  v15 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = [(NSDictionary *)self->_globalPopularityScores objectForKeyedSubscript:descriptorCopy];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    v9 = __atxlog_handle_lock_screen(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[ATXFaceSuggestionGlobalPopularitySignal valueForDescriptor:]";
      v13 = 2112;
      v14 = descriptorCopy;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: no global popularity score present for descriptor: %@", &v11, 0x16u);
    }

    v8 = 0.0;
  }

  return v8;
}

@end