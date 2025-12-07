@interface PGFeatureExtractorAssetImportSource
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetImportSource

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetImportSource featureLength](self, "featureLength")}];
  importProperties = [entityCopy importProperties];

  importedBy = [importProperties importedBy];
  if (importedBy < 0xC || importedBy - 14 < 2 || importedBy == 13)
  {
    goto LABEL_2;
  }

  if (importedBy == 12)
  {
    LODWORD(v10) = 1.0;
    [v7 setFloat:v10 atIndex:?];
LABEL_2:
    LODWORD(v10) = 1.0;
    [v7 setFloat:v10 atIndex:?];
  }

  return v7;
}

- (id)featureNames
{
  v4[10] = *MEMORY[0x277D85DE8];
  v4[0] = @"ImportSourceUnknown";
  v4[1] = @"ImportSourceBackCamera";
  v4[2] = @"ImportSourceFrontCamera";
  v4[3] = @"ImportSourcePhotoKit";
  v4[4] = @"ImportSourceCameraConnectionKit";
  v4[5] = @"ImportSourcePhotosApp";
  v4[6] = @"ImportSourceLegacy";
  v4[7] = @"ImportSourceMomentShare";
  v4[8] = @"ImportSourcePhotoKitInternal";
  v4[9] = @"ImportSourceLegacyInternal";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:10];

  return v2;
}

@end