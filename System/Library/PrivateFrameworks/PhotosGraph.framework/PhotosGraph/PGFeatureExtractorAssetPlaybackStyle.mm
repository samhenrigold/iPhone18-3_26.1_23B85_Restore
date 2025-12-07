@interface PGFeatureExtractorAssetPlaybackStyle
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetPlaybackStyle

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetPlaybackStyle featureLength](self, "featureLength")}];
  playbackStyle = [entityCopy playbackStyle];

  if (playbackStyle <= 5)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:playbackStyle atIndex:v9];
  }

  return v7;
}

- (id)featureNames
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"Unsupported";
  v4[1] = @"Image";
  v4[2] = @"ImageAnimated";
  v4[3] = @"LivePhoto";
  v4[4] = @"Video";
  v4[5] = @"VideoLooping";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

@end