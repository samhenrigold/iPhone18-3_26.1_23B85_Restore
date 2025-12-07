@interface PGSeasonFeatureExtractor
- (PGSeasonFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGSeasonFeatureExtractor

- (PGSeasonFeatureExtractor)initWithError:(id *)error
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D275F8];
  v16[0] = *MEMORY[0x277D275F0];
  v16[1] = v4;
  v5 = *MEMORY[0x277D27600];
  v16[2] = *MEMORY[0x277D275E8];
  v16[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMomentNode dateOfMoment];
  v15[0] = v8;
  v9 = +[PGGraphDateNode seasonOfDate];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v7 chain:v10];

  v14.receiver = self;
  v14.super_class = PGSeasonFeatureExtractor;
  v12 = [(PGGraphFeatureExtractor *)&v14 initWithName:@"Season" featureNames:v6 relation:v11 labelForTargetBlock:&__block_literal_global_32956];

  return v12;
}

@end