@interface ATXCandidateRelevanceModelTrainingCoordinator
- (ATXCandidateRelevanceModelTrainingCoordinator)init;
- (ATXCandidateRelevanceModelTrainingCoordinator)initWithConfigs:(id)configs;
- (void)trainUsingConfig:(id)config xpcActivity:(id)activity disregardDatasetMetadataRequirements:(BOOL)requirements;
- (void)trainWithXPCActivity:(id)activity disregardDatasetMetadataRequirements:(BOOL)requirements;
@end

@implementation ATXCandidateRelevanceModelTrainingCoordinator

- (ATXCandidateRelevanceModelTrainingCoordinator)init
{
  v3 = allRelevanceModelConfigs(self, a2);
  v4 = [(ATXCandidateRelevanceModelTrainingCoordinator *)self initWithConfigs:v3];

  return v4;
}

- (ATXCandidateRelevanceModelTrainingCoordinator)initWithConfigs:(id)configs
{
  configsCopy = configs;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelTrainingCoordinator;
  v6 = [(ATXCandidateRelevanceModelTrainingCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configs, configs);
  }

  return v7;
}

- (void)trainWithXPCActivity:(id)activity disregardDatasetMetadataRequirements:(BOOL)requirements
{
  requirementsCopy = requirements;
  v22 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v7 = __atxlog_handle_relevance_model(activityCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model training for all configs.", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_configs;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ATXCandidateRelevanceModelTrainingCoordinator *)self trainUsingConfig:*(*(&v15 + 1) + 8 * v14++) xpcActivity:activityCopy disregardDatasetMetadataRequirements:requirementsCopy, v15];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)trainUsingConfig:(id)config xpcActivity:(id)activity disregardDatasetMetadataRequirements:(BOOL)requirements
{
  requirementsCopy = requirements;
  activityCopy = activity;
  configCopy = config;
  v9 = [[ATXCandidateRelevanceModelTrainer alloc] initWithConfig:configCopy];

  [(ATXCandidateRelevanceModelTrainer *)v9 trainWithXPCActivity:activityCopy disregardDatasetMetadataRequirements:requirementsCopy];
}

@end