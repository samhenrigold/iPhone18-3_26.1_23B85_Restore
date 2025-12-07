@interface PGAudioMemoryNodeFeatureExtractor
- (PGAudioMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGAudioMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (version == 1)
  {
    v5[0] = @"ExcitementAudio";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (PGAudioMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  error = [(PGAudioMemoryNodeFeatureExtractor *)self labelsForVersion:version, error];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphAudioFeatureNode filter];
  relation = [v7 relation];
  v15[0] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v6 chain:v9];

  v11 = +[PGAudioMemoryNodeFeatureExtractor name];
  v14.receiver = self;
  v14.super_class = PGAudioMemoryNodeFeatureExtractor;
  v12 = [(PGGraphMemoryNodeFeatureExtractor *)&v14 initWithName:v11 featureNames:error relation:v10 labelForTargetBlock:&__block_literal_global_19237];

  return v12;
}

@end