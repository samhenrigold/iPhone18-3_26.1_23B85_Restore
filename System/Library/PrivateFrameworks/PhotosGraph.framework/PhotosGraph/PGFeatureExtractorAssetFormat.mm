@interface PGFeatureExtractorAssetFormat
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetFormat

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  pixelWidth = [entityCopy pixelWidth];
  pixelHeight = [entityCopy pixelHeight];

  v8 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorAssetFormat featureLength](self, "featureLength")}];
  v10 = v8;
  if (pixelWidth == pixelHeight)
  {
    v11 = 0;
  }

  else if (pixelHeight <= pixelWidth)
  {
    if (pixelWidth <= pixelHeight)
    {
      goto LABEL_8;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  LODWORD(v9) = 1.0;
  [v8 setFloat:v11 atIndex:v9];
LABEL_8:

  return v10;
}

- (id)featureNames
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"Square";
  v4[1] = @"Portrait";
  v4[2] = @"Landscape";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end