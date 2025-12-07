@interface PGInvariantPartnerMemoryNodeFeatureExtractor
- (PGInvariantPartnerMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantPartnerMemoryNodeFeatureExtractor

- (PGInvariantPartnerMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = +[PGInvariantPartnerMemoryNodeFeatureExtractor name];
  v19[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v7 relation];
  v18[0] = relation;
  v9 = +[PGGraphPersonNode partnerOfPerson];
  v18[1] = v9;
  v10 = +[PGGraphMeNode filter];
  relation2 = [v10 relation];
  v18[2] = relation2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v13 = [v6 chain:v12];

  v14 = +[PGInvariantPartnerMemoryNodeFeatureExtractor name];
  v17.receiver = self;
  v17.super_class = PGInvariantPartnerMemoryNodeFeatureExtractor;
  v15 = [(PGGraphMemoryNodeFeatureExtractor *)&v17 initWithName:v14 featureNames:v5 relation:v13 labelForTargetBlock:&__block_literal_global_33];

  return v15;
}

@end