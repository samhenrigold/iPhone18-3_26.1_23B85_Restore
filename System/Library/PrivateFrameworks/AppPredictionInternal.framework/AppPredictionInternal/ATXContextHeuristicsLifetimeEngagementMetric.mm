@interface ATXContextHeuristicsLifetimeEngagementMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsLifetimeEngagementMetric

- (id)coreAnalyticsDictionary
{
  v29[10] = *MEMORY[0x277D85DE8];
  v28[0] = @"actionId";
  actionId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self actionId];
  v4 = actionId;
  if (!actionId)
  {
    actionId = [MEMORY[0x277CBEB68] null];
  }

  v27 = v4;
  v22 = actionId;
  v29[0] = actionId;
  v28[1] = @"contextType";
  contextType = [(ATXContextHeuristicsLifetimeEngagementMetric *)self contextType];
  v26 = contextType;
  if (!contextType)
  {
    contextType = [MEMORY[0x277CBEB68] null];
  }

  v21 = contextType;
  v29[1] = contextType;
  v28[2] = @"numShown";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsLifetimeEngagementMetric numShown](self, "numShown")}];
  v29[2] = v25;
  v28[3] = @"numEngaged";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsLifetimeEngagementMetric numEngaged](self, "numEngaged")}];
  v29[3] = v24;
  v28[4] = @"trialDeploymentId";
  trialDeploymentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialDeploymentId];
  v7 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    trialDeploymentId = [MEMORY[0x277CBEB68] null];
  }

  v20 = trialDeploymentId;
  v29[4] = trialDeploymentId;
  v28[5] = @"trialExperimentId";
  trialExperimentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialExperimentId];
  v9 = trialExperimentId;
  if (!trialExperimentId)
  {
    trialExperimentId = [MEMORY[0x277CBEB68] null];
  }

  v19 = trialExperimentId;
  v29[5] = trialExperimentId;
  v28[6] = @"trialTreatmentId";
  trialTreatmentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v29[6] = null;
  v28[7] = @"atxTrialDeploymentId";
  atxTrialDeploymentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialDeploymentId];
  null2 = atxTrialDeploymentId;
  if (!atxTrialDeploymentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v29[7] = null2;
  v28[8] = @"atxTrialExperimentId";
  atxTrialExperimentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialExperimentId];
  null3 = atxTrialExperimentId;
  if (!atxTrialExperimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v29[8] = null3;
  v28[9] = @"atxTrialTreatmentId";
  atxTrialTreatmentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialTreatmentId];
  null4 = atxTrialTreatmentId;
  if (!atxTrialTreatmentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v29[9] = null4;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  if (!atxTrialTreatmentId)
  {
  }

  if (!atxTrialExperimentId)
  {
  }

  if (!atxTrialDeploymentId)
  {
  }

  if (!trialTreatmentId)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v26)
  {
  }

  if (!v27)
  {
  }

  return v23;
}

@end