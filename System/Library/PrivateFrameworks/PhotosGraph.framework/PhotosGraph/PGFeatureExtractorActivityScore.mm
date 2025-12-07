@interface PGFeatureExtractorActivityScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorActivityScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  mediaAnalysisProperties = [entity mediaAnalysisProperties];
  [mediaAnalysisProperties activityScore];
  v7 = v6;
  v8 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorActivityScore *)self featureLength];
  LODWORD(v10) = v7;
  v11 = [v8 vectorRepeatingFloat:featureLength count:v10];

  return v11;
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"ActivityScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end