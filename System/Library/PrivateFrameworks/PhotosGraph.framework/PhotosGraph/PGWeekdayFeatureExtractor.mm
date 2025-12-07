@interface PGWeekdayFeatureExtractor
- (PGWeekdayFeatureExtractor)initWithError:(id *)error;
@end

@implementation PGWeekdayFeatureExtractor

- (PGWeekdayFeatureExtractor)initWithError:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = @"Weekday";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = +[PGGraphMomentNode weekdayOfMoment];
  v8.receiver = self;
  v8.super_class = PGWeekdayFeatureExtractor;
  v6 = [(PGGraphFeatureExtractor *)&v8 initWithName:@"Weekday" featureNames:v4 relation:v5 labelForTargetBlock:&__block_literal_global_18871];

  return v6;
}

@end