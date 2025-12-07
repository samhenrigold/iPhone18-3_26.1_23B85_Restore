@interface PGSocialGroupMemoryNodeFeatureExtractor
- (PGSocialGroupMemoryNodeFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGSocialGroupMemoryNodeFeatureExtractor

- (PGSocialGroupMemoryNodeFeatureExtractor)initWithError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = @"SocialGroup";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphSocialGroupNode filter];
  relation = [v6 relation];
  v13 = relation;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v9 = [v5 chain:v8];

  v12.receiver = self;
  v12.super_class = PGSocialGroupMemoryNodeFeatureExtractor;
  v10 = [(PGGraphMemoryNodeFeatureExtractor *)&v12 initWithName:@"CHILD" featureNames:v4 relation:v9 labelForTargetBlock:&__block_literal_global_229];

  return v10;
}

@end