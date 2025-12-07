@interface PGFeatureExtractorShareCount
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorShareCount

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  assetUserActivityProperties = [entity assetUserActivityProperties];
  shareCount = [assetUserActivityProperties shareCount];

  v7 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorShareCount *)self featureLength];
  *&v9 = shareCount;

  return [v7 vectorRepeatingFloat:featureLength count:v9];
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"ShareCount";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end