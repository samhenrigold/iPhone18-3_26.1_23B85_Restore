@interface PGFeatureExtractorVideoScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorVideoScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  mediaAnalysisProperties = [entity mediaAnalysisProperties];
  [mediaAnalysisProperties videoScore];
  v7 = v6;
  v8 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorVideoScore *)self featureLength];
  LODWORD(v10) = v7;
  v11 = [v8 vectorRepeatingFloat:featureLength count:v10];

  return v11;
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"VideoScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end