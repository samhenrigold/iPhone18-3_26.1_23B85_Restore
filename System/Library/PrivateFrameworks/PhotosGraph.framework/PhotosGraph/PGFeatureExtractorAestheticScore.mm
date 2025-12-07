@interface PGFeatureExtractorAestheticScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAestheticScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  [entity overallAestheticScore];
  v6 = v5;
  v7 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorAestheticScore *)self featureLength];
  LODWORD(v9) = v6;

  return [v7 vectorRepeatingFloat:featureLength count:v9];
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"AestheticScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end