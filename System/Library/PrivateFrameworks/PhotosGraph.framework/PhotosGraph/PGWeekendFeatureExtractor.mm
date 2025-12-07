@interface PGWeekendFeatureExtractor
- (PGWeekendFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGWeekendFeatureExtractor

- (PGWeekendFeatureExtractor)initWithError:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = @"Weekend";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = +[PGGraphMomentNode weekendOfMoment];
  v8.receiver = self;
  v8.super_class = PGWeekendFeatureExtractor;
  v6 = [(PGGraphFeatureExtractor *)&v8 initWithName:@"Weekend" featureNames:v4 relation:v5 labelForTargetBlock:&__block_literal_global_56411];

  return v6;
}

@end