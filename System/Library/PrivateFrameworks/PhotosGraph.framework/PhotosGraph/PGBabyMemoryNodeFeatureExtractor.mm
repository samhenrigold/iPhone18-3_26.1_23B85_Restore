@interface PGBabyMemoryNodeFeatureExtractor
- (PGBabyMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGBabyMemoryNodeFeatureExtractor

- (PGBabyMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = @"Baby";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = [PGGraphPersonNode filterForAgeCategories:&unk_2844854A8 includingMe:0];
  relation = [v6 relation];
  v13 = relation;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v9 = [v5 chain:v8];

  v12.receiver = self;
  v12.super_class = PGBabyMemoryNodeFeatureExtractor;
  v10 = [(PGGraphMemoryNodeFeatureExtractor *)&v12 initWithName:@"Baby" featureNames:v4 relation:v9 labelForTargetBlock:&__block_literal_global_236];

  return v10;
}

@end