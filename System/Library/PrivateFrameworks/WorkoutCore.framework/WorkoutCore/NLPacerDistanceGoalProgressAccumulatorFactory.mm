@interface NLPacerDistanceGoalProgressAccumulatorFactory
+ (id)makeWithBuilder:(id)builder configuration:(id)configuration;
- (NLPacerDistanceGoalProgressAccumulatorFactory)init;
@end

@implementation NLPacerDistanceGoalProgressAccumulatorFactory

+ (id)makeWithBuilder:(id)builder configuration:(id)configuration
{
  v5 = *(configuration + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for PacerWorkoutConfiguration(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for PacerDistanceGoalProgressAccumulator());
    builderCopy = builder;
    v10 = v5;
    v11 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(builderCopy, v7);

    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000005ELL, 0x800000020B45ECA0, "WorkoutCore/PacerDistanceGoalProgressAccumulatorFactory.swift", 61, 2, 20, 0);
    __break(1u);
  }

  return result;
}

- (NLPacerDistanceGoalProgressAccumulatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulatorFactory();
  return [(NLPacerDistanceGoalProgressAccumulatorFactory *)&v3 init];
}

@end