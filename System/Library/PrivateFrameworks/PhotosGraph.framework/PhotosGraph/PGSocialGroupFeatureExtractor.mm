@interface PGSocialGroupFeatureExtractor
- (PGSocialGroupFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGSocialGroupFeatureExtractor

- (PGSocialGroupFeatureExtractor)initWithError:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = @"SocialGroup";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = MEMORY[0x277D22C90];
  v6 = +[PGGraphMomentNode socialGroupInMoment];
  v12 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v5 chain:v7];

  v11.receiver = self;
  v11.super_class = PGSocialGroupFeatureExtractor;
  v9 = [(PGGraphFeatureExtractor *)&v11 initWithName:@"CHILD" featureNames:v4 relation:v8 labelForTargetBlock:&__block_literal_global_16272];

  return v9;
}

@end