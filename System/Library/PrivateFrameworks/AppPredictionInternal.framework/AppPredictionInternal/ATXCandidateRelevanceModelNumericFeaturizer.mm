@interface ATXCandidateRelevanceModelNumericFeaturizer
- (id)featureVectorForContext:(id)context candidate:(id)candidate;
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCandidateRelevanceModelNumericFeaturizer

- (id)featureVectorForContext:(id)context candidate:(id)candidate
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(ATXCandidateRelevanceModelNumericFeaturizer *)self numericFeatureValueForContext:context candidate:candidate];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  result = candidate;
  __break(1u);
  return result;
}

@end