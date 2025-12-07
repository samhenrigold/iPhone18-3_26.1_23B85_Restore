@interface PGInvariantCoworkerFeatureExtractor
- (PGInvariantCoworkerFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantCoworkerFeatureExtractor

- (PGInvariantCoworkerFeatureExtractor)initWithError:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D275A8];
  v4 = v17[0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphMomentNode personInMoment];
  v16[0] = v7;
  v8 = +[PGGraphPersonNode coworkerOfPerson];
  v16[1] = v8;
  v9 = +[PGGraphMeNode filter];
  relation = [v9 relation];
  v16[2] = relation;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v12 = [v6 chain:v11];

  v15.receiver = self;
  v15.super_class = PGInvariantCoworkerFeatureExtractor;
  v13 = [(PGGraphFeatureExtractor *)&v15 initWithName:v4 featureNames:v5 relation:v12 labelForTargetBlock:&__block_literal_global_22163];

  return v13;
}

@end