@interface PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor
- (PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor

- (PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = +[PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor name];
  v21[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v6 relation];
  v20[0] = relation;
  v8 = [PGGraphPersonNode filterForBiologicalSex:2];
  relation2 = [v8 relation];
  v20[1] = relation2;
  v10 = +[PGGraphPersonNode partnerOfPerson];
  v20[2] = v10;
  v11 = +[PGGraphMeNode filter];
  relation3 = [v11 relation];
  v20[3] = relation3;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v14 = [v5 chain:v13];

  v15 = +[PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor name];
  v19.receiver = self;
  v19.super_class = PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor;
  v16 = [(PGGraphMemoryNodeFeatureExtractor *)&v19 initWithName:v15 featureNames:v4 relation:v14 labelForTargetBlock:&__block_literal_global_39];

  return v16;
}

@end