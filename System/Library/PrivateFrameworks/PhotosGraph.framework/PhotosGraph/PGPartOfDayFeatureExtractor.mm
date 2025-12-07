@interface PGPartOfDayFeatureExtractor
- (PGPartOfDayFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGPartOfDayFeatureExtractor

- (PGPartOfDayFeatureExtractor)initWithError:(id *)error
{
  v11[5] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D275E0];
  v11[0] = *MEMORY[0x277D275D0];
  v11[1] = v4;
  v5 = *MEMORY[0x277D275C8];
  v11[2] = *MEMORY[0x277D275C0];
  v11[3] = v5;
  v11[4] = *MEMORY[0x277D275D8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  v7 = +[PGGraphMomentNode partOfDayOfMoment];
  v10.receiver = self;
  v10.super_class = PGPartOfDayFeatureExtractor;
  v8 = [(PGGraphFeatureExtractor *)&v10 initWithName:@"PartOfDay" featureNames:v6 relation:v7 labelForTargetBlock:&__block_literal_global_55331];

  return v8;
}

@end