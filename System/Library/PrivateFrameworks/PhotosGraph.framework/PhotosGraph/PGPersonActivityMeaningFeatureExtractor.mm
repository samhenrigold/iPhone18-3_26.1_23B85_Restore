@interface PGPersonActivityMeaningFeatureExtractor
- (PGPersonActivityMeaningFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGPersonActivityMeaningFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  v6[12] = *MEMORY[0x277D85DE8];
  if (version == 1)
  {
    v6[0] = @"PersonBeachWater";
    v6[1] = @"PersonToys";
    v6[2] = @"PersonPlayground";
    v6[3] = @"PersonSoccer";
    v6[4] = @"PersonMartialArts";
    v6[5] = @"PersonActionSwimming";
    v6[6] = @"PersonActionPlayingOnASwing";
    v6[7] = @"PersonActionPlayingOnASlide";
    v6[8] = @"PersonActionHugging";
    v6[9] = @"PersonActionKissing";
    v6[10] = @"PersonActionJumpingOrLeaping";
    v6[11] = @"PersonActionRunningOrJogging";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:12];
    v4 = [MEMORY[0x277CBEBF8] arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (PGPersonActivityMeaningFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  error = [(PGPersonActivityMeaningFeatureExtractor *)self labelsForVersion:version, error];
  v6 = +[PGGraphMomentNode personActivityMeaningOfMoment];
  v9.receiver = self;
  v9.super_class = PGPersonActivityMeaningFeatureExtractor;
  v7 = [(PGGraphFeatureExtractor *)&v9 initWithName:@"PersonActivityMeaning" featureNames:error relation:v6 labelForTargetBlock:&__block_literal_global_8306];

  return v7;
}

@end