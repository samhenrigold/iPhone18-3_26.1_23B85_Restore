@interface ATXTimelineRelevancePersonalizedConfig
- (ATXTimelineRelevancePersonalizedConfig)init;
- (ATXTimelineRelevancePersonalizedConfig)initWithPersonalizedConfiguration:(id)configuration;
- (id)_readPersonalizedConfiguration;
- (id)personalizedValueForParameter:(id)parameter forWidgetBundleIdentifier:(id)identifier kind:(id)kind;
- (void)_readPersonalizedConfiguration;
@end

@implementation ATXTimelineRelevancePersonalizedConfig

- (ATXTimelineRelevancePersonalizedConfig)init
{
  v7.receiver = self;
  v7.super_class = ATXTimelineRelevancePersonalizedConfig;
  v2 = [(ATXTimelineRelevancePersonalizedConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _readPersonalizedConfiguration = [(ATXTimelineRelevancePersonalizedConfig *)v2 _readPersonalizedConfiguration];
    personalizedConfiguration = v3->_personalizedConfiguration;
    v3->_personalizedConfiguration = _readPersonalizedConfiguration;
  }

  return v3;
}

- (ATXTimelineRelevancePersonalizedConfig)initWithPersonalizedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ATXTimelineRelevancePersonalizedConfig;
  v6 = [(ATXTimelineRelevancePersonalizedConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personalizedConfiguration, configuration);
  }

  return v7;
}

- (id)personalizedValueForParameter:(id)parameter forWidgetBundleIdentifier:(id)identifier kind:(id)kind
{
  parameterCopy = parameter;
  personalizedConfiguration = self->_personalizedConfiguration;
  kindCopy = kind;
  v11 = [(NSDictionary *)personalizedConfiguration objectForKeyedSubscript:identifier];
  v12 = [v11 objectForKeyedSubscript:kindCopy];

  v13 = v12;
  if (v12 || (v13 = v11) != 0)
  {
    v14 = [v13 objectForKeyedSubscript:parameterCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_readPersonalizedConfiguration
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"ATXTimelineRelevancePersonalizedConfig"];
  v3 = objc_autoreleasePoolPush();
  v19 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v2 options:0 error:&v19];
  v5 = v19;
  v6 = v5;
  if (v4)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = objc_autoreleasePoolPush();
    v18 = v6;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v10 fromData:v4 error:&v18];
    v13 = v18;

    objc_autoreleasePoolPop(v11);
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v16 = __atxlog_handle_timeline(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(ATXTimelineRelevancePersonalizedConfig *)v2 _readPersonalizedConfiguration];
      }
    }
  }

  else
  {
    v10 = __atxlog_handle_timeline(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = v2;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "ATXTimelineRelevancePersonalizedConfig does not exist at path: %{public}@: %{public}@", buf, 0x16u);
    }

    v12 = 0;
    v13 = v6;
  }

  objc_autoreleasePoolPop(v3);

  return v12;
}

- (void)_readPersonalizedConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Failed to read personalized configuration at path: %{public}@. Error: %{public}@", &v3, 0x16u);
}

@end