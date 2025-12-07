@interface PGOverTheYearsMemoryNodeFeatureExtractor
- (PGOverTheYearsMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGOverTheYearsMemoryNodeFeatureExtractor

- (PGOverTheYearsMemoryNodeFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = @"OverTheYears";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphOverTheYearsNode filter];
  relation = [v7 relation];
  v14 = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v10 = [v6 chain:v9];

  v13.receiver = self;
  v13.super_class = PGOverTheYearsMemoryNodeFeatureExtractor;
  v11 = [(PGGraphMemoryNodeFeatureExtractor *)&v13 initWithName:@"OverTheYears" featureNames:v5 relation:v10 labelForTargetBlock:&__block_literal_global_33842];

  return v11;
}

@end