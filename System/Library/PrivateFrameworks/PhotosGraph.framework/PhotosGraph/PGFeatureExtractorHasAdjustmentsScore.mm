@interface PGFeatureExtractorHasAdjustmentsScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorHasAdjustmentsScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  hasAdjustments = [entity hasAdjustments];
  v6 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorHasAdjustmentsScore *)self featureLength];
  *&v8 = hasAdjustments;

  return [v6 vectorRepeatingFloat:featureLength count:v8];
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"HasAdjustments";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end