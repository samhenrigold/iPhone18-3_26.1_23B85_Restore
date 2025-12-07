@interface ATXContextHeuristicsRecentsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsRecentsMetric

- (id)coreAnalyticsDictionary
{
  v26[10] = *MEMORY[0x277D85DE8];
  v25[0] = @"recentType";
  recentType = [(ATXContextHeuristicsRecentsMetric *)self recentType];
  v24 = recentType;
  if (!recentType)
  {
    recentType = [MEMORY[0x277CBEB68] null];
  }

  v19 = recentType;
  v26[0] = recentType;
  v25[1] = @"recentAge";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsRecentsMetric recentAge](self, "recentAge")}];
  v26[1] = v23;
  v25[2] = @"numEngaged";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsRecentsMetric numEngaged](self, "numEngaged")}];
  v26[2] = v22;
  v25[3] = @"numSearched";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsRecentsMetric numSearched](self, "numSearched")}];
  v26[3] = v21;
  v25[4] = @"trialDeploymentId";
  trialDeploymentId = [(ATXContextHeuristicsRecentsMetric *)self trialDeploymentId];
  v5 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    trialDeploymentId = [MEMORY[0x277CBEB68] null];
  }

  v18 = trialDeploymentId;
  v26[4] = trialDeploymentId;
  v25[5] = @"trialExperimentId";
  trialExperimentId = [(ATXContextHeuristicsRecentsMetric *)self trialExperimentId];
  v7 = trialExperimentId;
  if (!trialExperimentId)
  {
    trialExperimentId = [MEMORY[0x277CBEB68] null];
  }

  v26[5] = trialExperimentId;
  v25[6] = @"trialTreatmentId";
  trialTreatmentId = [(ATXContextHeuristicsRecentsMetric *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v26[6] = null;
  v25[7] = @"atxTrialDeploymentId";
  atxTrialDeploymentId = [(ATXContextHeuristicsRecentsMetric *)self atxTrialDeploymentId];
  null2 = atxTrialDeploymentId;
  if (!atxTrialDeploymentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v26[7] = null2;
  v25[8] = @"atxTrialExperimentId";
  atxTrialExperimentId = [(ATXContextHeuristicsRecentsMetric *)self atxTrialExperimentId];
  null3 = atxTrialExperimentId;
  if (!atxTrialExperimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v26[8] = null3;
  v25[9] = @"atxTrialTreatmentId";
  atxTrialTreatmentId = [(ATXContextHeuristicsRecentsMetric *)self atxTrialTreatmentId];
  null4 = atxTrialTreatmentId;
  if (!atxTrialTreatmentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v26[9] = null4;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:10];
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

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v24)
  {
  }

  return v20;
}

@end