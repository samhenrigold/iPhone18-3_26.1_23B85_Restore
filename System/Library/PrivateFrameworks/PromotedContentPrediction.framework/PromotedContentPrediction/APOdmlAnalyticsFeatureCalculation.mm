@interface APOdmlAnalyticsFeatureCalculation
+ (id)_versionAndIdentifiersForNamespace:(id)namespace;
+ (void)sendEvent:(id)event additionalDetails:(id)details isCounterfactual:(BOOL)counterfactual;
@end

@implementation APOdmlAnalyticsFeatureCalculation

+ (void)sendEvent:(id)event additionalDetails:(id)details isCounterfactual:(BOOL)counterfactual
{
  counterfactualCopy = counterfactual;
  eventCopy = event;
  detailsCopy = details;
  v9 = MEMORY[0x277CCACA8];
  eventName = [self eventName];
  v11 = [v9 stringWithFormat:@"%@.%@", @"com.apple.ap.SearchAdsODML", eventName];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = kAPOdmlSearchResultsCounterfactualNamespace;
  if (!counterfactualCopy)
  {
    v13 = kAPOdmlSearchResultsRuntimeNamespace;
  }

  v14 = [self _versionAndIdentifiersForNamespace:*v13];

  if (eventCopy)
  {
    [v14 setValue:@"2" forKey:@"statusCode"];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(eventCopy, "code")];
    [v14 setValue:v15 forKey:@"statusDetails"];

    if (!detailsCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v14 setValue:@"1" forKey:@"statusCode"];
  if (detailsCopy)
  {
LABEL_5:
    [v14 addEntriesFromDictionary:detailsCopy];
  }

LABEL_6:
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];
  [self _analyticsSendEvent:v11 eventPayload:v16];
}

+ (id)_versionAndIdentifiersForNamespace:(id)namespace
{
  v3 = MEMORY[0x277CBEB38];
  namespaceCopy = namespace;
  dictionary = [v3 dictionary];
  v6 = [MEMORY[0x277D73660] clientWithIdentifier:238];
  v7 = [v6 experimentIdentifiersWithNamespaceName:namespaceCopy];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 4];
  [dictionary setValue:v8 forKey:@"ODMLVersion"];

  treatmentId = [v7 treatmentId];
  [dictionary setValue:treatmentId forKey:@"trialTreatmentID"];

  experimentId = [v7 experimentId];
  [dictionary setValue:experimentId forKey:@"trialExperimentID"];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v7, "deploymentId")];
  [dictionary setValue:v11 forKey:@"trialDeploymentID"];

  return dictionary;
}

@end