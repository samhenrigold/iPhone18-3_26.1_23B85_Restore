@interface PGFeatureExtractorPlayCount
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorPlayCount

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  assetUserActivityProperties = [entity assetUserActivityProperties];
  playCount = [assetUserActivityProperties playCount];

  v7 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorPlayCount *)self featureLength];
  *&v9 = playCount;

  return [v7 vectorRepeatingFloat:featureLength count:v9];
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"PlayCount";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end