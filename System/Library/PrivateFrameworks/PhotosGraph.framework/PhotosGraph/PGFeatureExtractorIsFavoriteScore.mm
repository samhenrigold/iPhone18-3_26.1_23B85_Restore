@interface PGFeatureExtractorIsFavoriteScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorIsFavoriteScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  isFavorite = [entity isFavorite];
  v6 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorIsFavoriteScore *)self featureLength];
  *&v8 = isFavorite;

  return [v6 vectorRepeatingFloat:featureLength count:v8];
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"IsFavorite";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end