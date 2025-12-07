@interface PGFeatureExtractorAssetMediaType
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetMediaType

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetMediaType featureLength](self, "featureLength")}];
  mediaType = [entityCopy mediaType];

  if (mediaType <= 3)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:mediaType atIndex:v9];
  }

  return v7;
}

- (id)featureNames
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"MediaTypeUnknown";
  v4[1] = @"Image";
  v4[2] = @"Video";
  v4[3] = @"Audio";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

@end