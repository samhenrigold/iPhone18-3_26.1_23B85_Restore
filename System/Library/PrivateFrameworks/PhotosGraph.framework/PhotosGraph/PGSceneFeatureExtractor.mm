@interface PGSceneFeatureExtractor
- (PGSceneFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGSceneFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  v6[13] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBF8];
  if (version > 2)
  {
    if (version == 3)
    {
      v3 = &unk_284486378;
    }

    else if (version == 4)
    {
      v6[0] = @"Snow";
      v6[1] = @"Sunset_Sunrise";
      v6[2] = @"Flower";
      v6[3] = @"Cityscape";
      v6[4] = @"Waterfall";
      v6[5] = @"Rainbow";
      v6[6] = @"Skateboarding";
      v6[7] = @"Forest";
      v6[8] = @"Airplane";
      v6[9] = @"Bird";
      v6[10] = @"Surfing";
      v6[11] = @"Baby";
      v6[12] = @"Coffee";
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:13];
    }
  }

  else
  {
    v4 = &unk_284486360;
    if (version != 2)
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    if (version == 1)
    {
      v3 = &unk_284486348;
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

- (PGSceneFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  error = [(PGSceneFeatureExtractor *)self labelsForVersion:version, error];
  v6 = +[PGGraphMomentNode sceneOfMoment];
  v9.receiver = self;
  v9.super_class = PGSceneFeatureExtractor;
  v7 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"Scene" featureNames:error relation:v6 labelForTargetBlock:&__block_literal_global_57723];

  return v7;
}

@end