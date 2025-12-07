@interface PGInvariantBrotherMemoryNodeFeatureExtractor
- (PGInvariantBrotherMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantBrotherMemoryNodeFeatureExtractor

- (PGInvariantBrotherMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = @"BROTHER";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v6 relation];
  v17[0] = relation;
  v8 = +[PGGraphPersonNode brotherOfPerson];
  inverse = [v8 inverse];
  v17[1] = inverse;
  v10 = +[PGGraphMeNode filter];
  relation2 = [v10 relation];
  v17[2] = relation2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v13 = [v5 chain:v12];

  v16.receiver = self;
  v16.super_class = PGInvariantBrotherMemoryNodeFeatureExtractor;
  v14 = [(PGGraphMemoryNodeFeatureExtractor *)&v16 initWithName:@"BROTHER" featureNames:v4 relation:v13 labelForTargetBlock:&__block_literal_global_7_38146];

  return v14;
}

@end