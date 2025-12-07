@interface NLWorkoutConfigurationImageGenerator
+ (id)createBlastDoorDataSourceFromData:(id)data;
+ (id)createImageFromBlastDoorDataSource:(id)source scale:(double)scale;
+ (id)createImageFromData:(id)data;
- (NLWorkoutConfigurationImageGenerator)init;
@end

@implementation NLWorkoutConfigurationImageGenerator

+ (id)createBlastDoorDataSourceFromData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = specialized static WorkoutConfigurationImageGenerator.createBlastDoorDataSource(from:)(v4, v6);
  outlined consume of Data._Representation(v4, v6);

  return v7;
}

+ (id)createImageFromData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v8 = specialized static WorkoutConfigurationImageGenerator.createImage(from:)(v4, v6, v7);
  v10 = v9;
  outlined consume of Data._Representation(v4, v6);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v8, v10);
    v11 = isa;
  }

  return v11;
}

+ (id)createImageFromBlastDoorDataSource:(id)source scale:(double)scale
{
  sourceCopy = source;
  v6 = specialized static WorkoutConfigurationImageGenerator.createImage(from:scale:)(sourceCopy, scale);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v6, v8);
    v9 = isa;
  }

  return v9;
}

- (NLWorkoutConfigurationImageGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutConfigurationImageGenerator();
  return [(NLWorkoutConfigurationImageGenerator *)&v3 init];
}

@end