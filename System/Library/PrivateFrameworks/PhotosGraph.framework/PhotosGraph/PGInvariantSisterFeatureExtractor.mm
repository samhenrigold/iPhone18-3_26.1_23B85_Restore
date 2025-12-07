@interface PGInvariantSisterFeatureExtractor
- (PGInvariantSisterFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantSisterFeatureExtractor

- (PGInvariantSisterFeatureExtractor)initWithError:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = @"SISTER";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v16[0] = v6;
  v7 = +[PGGraphPersonNode sisterOfPerson];
  inverse = [v7 inverse];
  v16[1] = inverse;
  v9 = +[PGGraphMeNode filter];
  relation = [v9 relation];
  v16[2] = relation;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v12 = [v5 chain:v11];

  v15.receiver = self;
  v15.super_class = PGInvariantSisterFeatureExtractor;
  v13 = [(PGGraphFeatureExtractor *)&v15 initWithName:@"SISTER" featureNames:v4 relation:v12 labelForTargetBlock:&__block_literal_global_39927];

  return v13;
}

@end