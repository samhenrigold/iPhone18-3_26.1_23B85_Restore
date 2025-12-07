@interface PGChildFeatureExtractor
- (PGChildFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGChildFeatureExtractor

- (PGChildFeatureExtractor)initWithError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = @"Child";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode personInMoment];
  v14[0] = v6;
  v7 = [PGGraphPersonNode filterForAgeCategories:&unk_2844857F0 includingMe:0];
  relation = [v7 relation];
  v14[1] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v5 chain:v9];

  v13.receiver = self;
  v13.super_class = PGChildFeatureExtractor;
  v11 = [(PGGraphFeatureExtractor *)&v13 initWithName:@"Child" featureNames:v4 relation:v10 labelForTargetBlock:&__block_literal_global_16239];

  return v11;
}

@end