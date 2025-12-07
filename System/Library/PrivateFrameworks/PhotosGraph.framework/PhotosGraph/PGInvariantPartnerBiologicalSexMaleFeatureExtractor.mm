@interface PGInvariantPartnerBiologicalSexMaleFeatureExtractor
- (PGInvariantPartnerBiologicalSexMaleFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantPartnerBiologicalSexMaleFeatureExtractor

- (PGInvariantPartnerBiologicalSexMaleFeatureExtractor)initWithError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = +[PGInvariantPartnerBiologicalSexMaleFeatureExtractor name];
  v20[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v6 = MEMORY[0x277D22C90];
  v7 = +[PGGraphMomentNode personInMoment];
  v19[0] = v7;
  v8 = [PGGraphPersonNode filterForBiologicalSex:2];
  relation = [v8 relation];
  v19[1] = relation;
  v10 = +[PGGraphPersonNode partnerOfPerson];
  v19[2] = v10;
  v11 = +[PGGraphMeNode filter];
  relation2 = [v11 relation];
  v19[3] = relation2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v14 = [v6 chain:v13];

  v15 = +[PGInvariantPartnerBiologicalSexMaleFeatureExtractor name];
  v18.receiver = self;
  v18.super_class = PGInvariantPartnerBiologicalSexMaleFeatureExtractor;
  v16 = [(PGGraphFeatureExtractor *)&v18 initWithName:v15 featureNames:v5 relation:v14 labelForTargetBlock:&__block_literal_global_11];

  return v16;
}

@end