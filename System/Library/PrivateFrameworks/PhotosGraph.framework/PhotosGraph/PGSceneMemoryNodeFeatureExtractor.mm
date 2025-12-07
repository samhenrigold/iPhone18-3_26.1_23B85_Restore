@interface PGSceneMemoryNodeFeatureExtractor
- (PGSceneMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGSceneMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  v6[17] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBF8];
  if (version > 2)
  {
    if (version == 3)
    {
      v3 = &unk_2844863C0;
    }

    else if (version == 4)
    {
      v6[0] = @"Snow";
      v6[1] = @"SunriseSunset";
      v6[2] = @"Cityscape";
      v6[3] = @"Waterfall";
      v6[4] = @"Rainbow";
      v6[5] = @"Skateboarding";
      v6[6] = @"Forest";
      v6[7] = @"Airplane";
      v6[8] = @"Bird";
      v6[9] = @"Surfing";
      v6[10] = @"Coffee";
      v6[11] = @"Biking";
      v6[12] = @"Table";
      v6[13] = @"Cooking";
      v6[14] = @"SpringBloom";
      v6[15] = @"AutumnFoliage";
      v6[16] = @"PlayTime";
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:17];
    }
  }

  else
  {
    v4 = &unk_2844863A8;
    if (version != 2)
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    if (version == 1)
    {
      v3 = &unk_284486390;
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

- (PGSceneMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  error = [(PGSceneMemoryNodeFeatureExtractor *)self labelsForVersion:version, error];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphSceneFeatureNode filter];
  relation = [v7 relation];
  v14[0] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = [v6 chain:v9];

  v13.receiver = self;
  v13.super_class = PGSceneMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v13 initWithName:@"Scene" featureNames:error relation:v10 labelForTargetBlock:&__block_literal_global_156];

  return v11;
}

@end