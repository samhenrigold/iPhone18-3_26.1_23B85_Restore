@interface PSCNAutocompleteFeedbackTracker
@end

@implementation PSCNAutocompleteFeedbackTracker

void __66___PSCNAutocompleteFeedbackTracker_logImpressionsFromAccumulator___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v21 = objc_opt_class();
  v20 = [*(a1 + 40) vendedSuggestionEvents];
  v19 = [v20 objectAtIndexedSubscript:*(a1 + 48)];
  v3 = [v19 vendedSuggestions];
  v18 = [*(a1 + 40) vendedSuggestionEvents];
  v17 = [v18 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = [v17 bundleIdentifier];
  v5 = [*(a1 + 40) vendedSuggestionEvents];
  v6 = [v5 objectAtIndexedSubscript:*(a1 + 48)];
  v7 = [v6 vendedSuggestions];
  v8 = [v7 suggestions];
  v9 = [v8 firstObject];
  v10 = [v9 trialID];
  v11 = [v21 defaultSubmodelImpressionWithFeedback:v3 submodel:v16 bundleID:v4 trialID:v10 isImplicit:*(*(a1 + 32) + 56)];
  v22 = [v11 mutableCopy];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) metricsForSubmodelImpressions];
  v14 = [v13 objectAtIndexedSubscript:*(a1 + 48)];
  v15 = [v14 objectForKeyedSubscript:v16];

  [v12 annotateImpression:v22 withStatistics:v15];
  (*(*(*(a1 + 32) + 40) + 16))();
}

@end