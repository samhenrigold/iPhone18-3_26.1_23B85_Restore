@interface ATXContextHeuristicsWeeklyStatisticsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsWeeklyStatisticsMetric

- (id)coreAnalyticsDictionary
{
  v39[25] = *MEMORY[0x277D85DE8];
  v38[0] = @"areSpotlightRecentsEnabled";
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXContextHeuristicsWeeklyStatisticsMetric areSpotlightRecentsEnabled](self, "areSpotlightRecentsEnabled")}];
  v39[0] = v37;
  v38[1] = @"areSpotlightSuggestionsEnabled";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXContextHeuristicsWeeklyStatisticsMetric areSpotlightSuggestionsEnabled](self, "areSpotlightSuggestionsEnabled")}];
  v39[1] = v36;
  v38[2] = @"numAppSuggestionsVisibleInSpotlight";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numAppSuggestionsVisibleInSpotlight](self, "numAppSuggestionsVisibleInSpotlight")}];
  v39[2] = v35;
  v38[3] = @"numAppLibraryAppSuggestionTaps";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numAppLibraryAppSuggestionTaps](self, "numAppLibraryAppSuggestionTaps")}];
  v39[3] = v34;
  v38[4] = @"numAppLibraryAppTaps";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numAppLibraryAppTaps](self, "numAppLibraryAppTaps")}];
  v39[4] = v33;
  v38[5] = @"numHomescreenAppSuggestionTaps";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numHomescreenAppSuggestionTaps](self, "numHomescreenAppSuggestionTaps")}];
  v39[5] = v32;
  v38[6] = @"numHomescreenAppTaps";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numHomescreenAppTaps](self, "numHomescreenAppTaps")}];
  v39[6] = v31;
  v38[7] = @"numLeftOfHomeAppSuggestionTaps";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numLeftOfHomeAppSuggestionTaps](self, "numLeftOfHomeAppSuggestionTaps")}];
  v39[7] = v30;
  v38[8] = @"numSpotlightAppSuggestionTaps";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightAppSuggestionTaps](self, "numSpotlightAppSuggestionTaps")}];
  v39[8] = v29;
  v38[9] = @"numSpotlightSearchAppTaps";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightSearchAppTaps](self, "numSpotlightSearchAppTaps")}];
  v39[9] = v28;
  v38[10] = @"numSpotlightActionSuggestionTaps";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightActionSuggestionTaps](self, "numSpotlightActionSuggestionTaps")}];
  v39[10] = v27;
  v38[11] = @"numRecentsTaps";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numRecentsTaps](self, "numRecentsTaps")}];
  v39[11] = v26;
  v38[12] = @"numSpotlightSearches";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightSearches](self, "numSpotlightSearches")}];
  v39[12] = v25;
  v38[13] = @"numSpotlightViews";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightViews](self, "numSpotlightViews")}];
  v39[13] = v24;
  v38[14] = @"numSpotlightUniqueDayVisits";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightUniqueDayVisits](self, "numSpotlightUniqueDayVisits")}];
  v39[14] = v23;
  v38[15] = @"percentageOfTimeSpotlightActionSuggestionAvailable";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric percentageOfTimeSpotlightActionSuggestionAvailable](self, "percentageOfTimeSpotlightActionSuggestionAvailable")}];
  v39[15] = v22;
  v38[16] = @"numCalendarEvents";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numCalendarEvents](self, "numCalendarEvents")}];
  v39[16] = v21;
  v38[17] = @"numCalendarEventsWithLink";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numCalendarEventsWithLink](self, "numCalendarEventsWithLink")}];
  v39[17] = v20;
  v38[18] = @"numCalendarEventsWithLocation";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numCalendarEventsWithLocation](self, "numCalendarEventsWithLocation")}];
  v39[18] = v19;
  v38[19] = @"trialDeploymentId";
  trialDeploymentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self trialDeploymentId];
  v4 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    trialDeploymentId = [MEMORY[0x277CBEB68] null];
  }

  v17 = trialDeploymentId;
  v39[19] = trialDeploymentId;
  v38[20] = @"trialExperimentId";
  trialExperimentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self trialExperimentId];
  v6 = trialExperimentId;
  if (!trialExperimentId)
  {
    trialExperimentId = [MEMORY[0x277CBEB68] null];
  }

  v39[20] = trialExperimentId;
  v38[21] = @"trialTreatmentId";
  trialTreatmentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v39[21] = null;
  v38[22] = @"atxTrialDeploymentId";
  atxTrialDeploymentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self atxTrialDeploymentId];
  null2 = atxTrialDeploymentId;
  if (!atxTrialDeploymentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v39[22] = null2;
  v38[23] = @"atxTrialExperimentId";
  atxTrialExperimentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self atxTrialExperimentId];
  null3 = atxTrialExperimentId;
  if (!atxTrialExperimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v39[23] = null3;
  v38[24] = @"atxTrialTreatmentId";
  atxTrialTreatmentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self atxTrialTreatmentId];
  null4 = atxTrialTreatmentId;
  if (!atxTrialTreatmentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v39[24] = null4;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:25];
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

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  return v18;
}

@end