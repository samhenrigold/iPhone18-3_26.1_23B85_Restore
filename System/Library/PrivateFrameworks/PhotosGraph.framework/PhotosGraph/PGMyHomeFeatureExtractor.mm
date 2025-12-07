@interface PGMyHomeFeatureExtractor
- (PGMyHomeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGMyHomeFeatureExtractor

- (PGMyHomeFeatureExtractor)initWithError:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = @"Home";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode addressOfMoment];
  v16[0] = v6;
  v7 = +[PGGraphAddressNode homeOfAddress];
  v16[1] = v7;
  v8 = +[PGGraphHomeWorkNode ownerOfHomeWork];
  v16[2] = v8;
  v9 = +[PGGraphMeNode filter];
  relation = [v9 relation];
  v16[3] = relation;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v12 = [v5 chain:v11];

  v15.receiver = self;
  v15.super_class = PGMyHomeFeatureExtractor;
  v13 = [(PGGraphFeatureExtractor *)&v15 initWithName:@"MyHome" featureNames:v4 relation:v12 labelForTargetBlock:&__block_literal_global_35502];

  return v13;
}

__CFString *__42__PGMyHomeFeatureExtractor_initWithError___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isMeNode])
  {
    v2 = @"Home";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end