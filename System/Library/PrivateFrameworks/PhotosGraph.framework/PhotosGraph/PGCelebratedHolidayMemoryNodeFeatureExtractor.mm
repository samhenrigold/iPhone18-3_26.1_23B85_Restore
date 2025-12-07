@interface PGCelebratedHolidayMemoryNodeFeatureExtractor
- (PGCelebratedHolidayMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGCelebratedHolidayMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_2844862D0;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCelebratedHolidayMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  error = [(PGCelebratedHolidayMemoryNodeFeatureExtractor *)self labelsForVersion:version, error];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphHolidayNode filter];
  relation = [v7 relation];
  v14[0] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = [v6 chain:v9];

  v13.receiver = self;
  v13.super_class = PGCelebratedHolidayMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v13 initWithName:@"CelebratedHoliday" featureNames:error relation:v10 labelForTargetBlock:&__block_literal_global_569];

  return v11;
}

@end