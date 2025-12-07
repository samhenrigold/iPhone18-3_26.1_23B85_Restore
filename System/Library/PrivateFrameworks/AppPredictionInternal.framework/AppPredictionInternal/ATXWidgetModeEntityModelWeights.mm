@interface ATXWidgetModeEntityModelWeights
- (ATXWidgetModeEntityModelWeights)init;
- (double)classConditionalProbability;
- (double)globalPopularity;
- (double)modePopularity;
- (double)posteriorProbability;
- (double)weightForWidgetProbability;
- (id)abGroup;
- (int)numOfDays;
- (void)init;
@end

@implementation ATXWidgetModeEntityModelWeights

- (ATXWidgetModeEntityModelWeights)init
{
  v15.receiver = self;
  v15.super_class = ATXWidgetModeEntityModelWeights;
  v2 = [(ATXWidgetModeEntityModelWeights *)&v15 init];
  if (v2)
  {
    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    v4 = *(v2 + 2);
    *(v2 + 2) = mEMORY[0x277CEB6A8];

    widgetModeEntityModelWeights = [*(v2 + 2) widgetModeEntityModelWeights];
    v6 = [widgetModeEntityModelWeights count];

    if (v6)
    {
      v8 = __atxlog_handle_modes(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ATXWidgetModeEntityModelWeights *)v8 init];
      }

      widgetModeEntityModelWeights2 = [*(v2 + 2) widgetModeEntityModelWeights];
      v10 = *(v2 + 1);
      *(v2 + 1) = widgetModeEntityModelWeights2;

      v12 = __atxlog_handle_modes(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ATXWidgetModeEntityModelWeights *)v2 + 1 init];
      }
    }

    else
    {
      v13 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXWidgetModeEntityModelWeights" ofType:@"plist" specifiedABGroup:0];
      v12 = *(v2 + 1);
      *(v2 + 1) = v13;
    }
  }

  return v2;
}

- (double)classConditionalProbability
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"classConditionalProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)posteriorProbability
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"posteriorProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)globalPopularity
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"globalPopularity"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)modePopularity
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"modePopularity"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)weightForWidgetProbability
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"weightForWidgetProbability"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int)numOfDays
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"numOfDays"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (id)abGroup
{
  v2 = [(NSDictionary *)self->_widgetModeEntityModelWeights objectForKeyedSubscript:@"abGroup"];
  stringValue = [v2 stringValue];
  v4 = stringValue;
  if (stringValue)
  {
    v5 = stringValue;
  }

  else
  {
    v5 = @"default";
  }

  v6 = v5;

  return v5;
}

- (void)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXWidgetModeEntityModelWeights: %@", &v3, 0xCu);
}

@end