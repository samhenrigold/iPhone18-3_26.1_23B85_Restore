@interface PGFeatureExtractorAssetResolution
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetResolution

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  pixelWidth = [entityCopy pixelWidth];
  pixelHeight = [entityCopy pixelHeight];

  v8 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorAssetResolution *)self featureLength];

  *&v10 = (pixelHeight * pixelWidth);
  return [v8 vectorRepeatingFloat:featureLength count:v10];
}

- (id)featureNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"AssetResolution";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end