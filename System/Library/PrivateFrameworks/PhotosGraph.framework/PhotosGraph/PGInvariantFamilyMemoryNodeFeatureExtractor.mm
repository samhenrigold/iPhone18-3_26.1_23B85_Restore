@interface PGInvariantFamilyMemoryNodeFeatureExtractor
- (PGInvariantFamilyMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantFamilyMemoryNodeFeatureExtractor

- (PGInvariantFamilyMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D275B0];
  v4 = v18[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v7 relation];
  v17[0] = relation;
  v9 = +[PGGraphPersonNode familyOfPerson];
  v17[1] = v9;
  v10 = +[PGGraphMeNode filter];
  relation2 = [v10 relation];
  v17[2] = relation2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v13 = [v6 chain:v12];

  v16.receiver = self;
  v16.super_class = PGInvariantFamilyMemoryNodeFeatureExtractor;
  v14 = [(PGGraphMemoryNodeFeatureExtractor *)&v16 initWithName:v4 featureNames:v5 relation:v13 labelForTargetBlock:&__block_literal_global_7];

  return v14;
}

@end