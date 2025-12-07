@interface PGInvariantPartnerFeatureExtractor
- (PGInvariantPartnerFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGInvariantPartnerFeatureExtractor

- (PGInvariantPartnerFeatureExtractor)initWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D275B8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v15[0] = v6;
  v7 = +[PGGraphPersonNode partnerOfPerson];
  v15[1] = v7;
  v8 = +[PGGraphMeNode filter];
  relation = [v8 relation];
  v15[2] = relation;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v11 = [v5 chain:v10];

  v14.receiver = self;
  v14.super_class = PGInvariantPartnerFeatureExtractor;
  v12 = [(PGGraphFeatureExtractor *)&v14 initWithName:@"Partner" featureNames:v4 relation:v11 labelForTargetBlock:&__block_literal_global_44439];

  return v12;
}

@end