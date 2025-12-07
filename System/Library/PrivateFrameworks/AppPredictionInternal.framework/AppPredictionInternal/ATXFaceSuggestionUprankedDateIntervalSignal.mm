@interface ATXFaceSuggestionUprankedDateIntervalSignal
- (ATXFaceSuggestionUprankedDateIntervalSignal)initWithParameters:(id)parameters;
- (double)valueForDescriptor:(id)descriptor;
@end

@implementation ATXFaceSuggestionUprankedDateIntervalSignal

- (ATXFaceSuggestionUprankedDateIntervalSignal)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionUprankedDateIntervalSignal;
  v5 = [(ATXFaceSuggestionUprankedDateIntervalSignal *)&v9 init];
  if (v5)
  {
    uprankedDateIntervals = [parametersCopy uprankedDateIntervals];
    uprankedDateIntervals = v5->_uprankedDateIntervals;
    v5->_uprankedDateIntervals = uprankedDateIntervals;
  }

  return v5;
}

- (double)valueForDescriptor:(id)descriptor
{
  v24 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  uprankedDateIntervals = self->_uprankedDateIntervals;
  if (uprankedDateIntervals)
  {
    extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
    v8 = [(NSDictionary *)uprankedDateIntervals objectForKeyedSubscript:extensionBundleIdentifier];

    if (v8)
    {
      v9 = objc_opt_new();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __66__ATXFaceSuggestionUprankedDateIntervalSignal_valueForDescriptor___block_invoke;
      v16[3] = &unk_27859CF70;
      v10 = v9;
      v17 = v10;
      v11 = [v8 bs_firstObjectPassingTest:v16];
      if (v11)
      {
        v12 = v11;
        v13 = __atxlog_handle_lock_screen(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = "[ATXFaceSuggestionUprankedDateIntervalSignal valueForDescriptor:]";
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = v5;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: descriptor has valid interval: %@, %@", buf, 0x20u);
        }

        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }
    }

    else
    {
      v14 = 0.0;
    }
  }

  else
  {
    v8 = __atxlog_handle_lock_screen(descriptorCopy);
    v14 = 0.0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionUprankedDateIntervalSignal valueForDescriptor:v8];
    }
  }

  return v14;
}

- (void)valueForDescriptor:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXFaceSuggestionUprankedDateIntervalSignal valueForDescriptor:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: no upranked date intervals found", &v1, 0xCu);
}

@end