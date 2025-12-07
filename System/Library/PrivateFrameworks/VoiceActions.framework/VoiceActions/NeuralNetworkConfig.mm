@interface NeuralNetworkConfig
- (NSString)description;
- (NSString)modelPath;
- (NeuralNetworkConfig)init;
- (float)logMinimum;
- (float)logThreshold;
- (void)setLogMinimum:(float)minimum;
- (void)setLogThreshold:(float)threshold;
- (void)setModelPath:(id)path;
@end

@implementation NeuralNetworkConfig

- (NSString)modelPath
{
  swift_beginAccess();

  v2 = sub_2723777FC();

  return v2;
}

- (void)setModelPath:(id)path
{
  v4 = sub_27237782C();
  v6 = v5;
  v7 = (self + OBJC_IVAR___NeuralNetworkConfig_modelPath);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (float)logThreshold
{
  v2 = (self + OBJC_IVAR___NeuralNetworkConfig_logThreshold);
  swift_beginAccess();
  return *v2;
}

- (void)setLogThreshold:(float)threshold
{
  v4 = (self + OBJC_IVAR___NeuralNetworkConfig_logThreshold);
  swift_beginAccess();
  *v4 = threshold;
}

- (float)logMinimum
{
  v2 = (self + OBJC_IVAR___NeuralNetworkConfig_logMinimum);
  swift_beginAccess();
  return *v2;
}

- (void)setLogMinimum:(float)minimum
{
  v4 = (self + OBJC_IVAR___NeuralNetworkConfig_logMinimum);
  swift_beginAccess();
  *v4 = minimum;
}

- (NeuralNetworkConfig)init
{
  v2 = (self + OBJC_IVAR___NeuralNetworkConfig_modelPath);
  *v2 = 0xD000000000000041;
  v2[1] = 0x800000027238BE80;
  *(self + OBJC_IVAR___NeuralNetworkConfig_logThreshold) = -1035468800;
  *(self + OBJC_IVAR___NeuralNetworkConfig_logMinimum) = -1027080192;
  v4.receiver = self;
  v4.super_class = type metadata accessor for NeuralNetworkConfig();
  return [(NeuralNetworkConfig *)&v4 init];
}

- (NSString)description
{
  v3 = sub_27237788C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_272376B3C();
  swift_allocObject();
  selfCopy = self;
  sub_272376B2C();
  type metadata accessor for NeuralNetworkConfig();
  sub_27227DA80(&qword_2808823A8, v5, type metadata accessor for NeuralNetworkConfig, &protocol conformance descriptor for NeuralNetworkConfig);
  v6 = sub_272376B1C();
  v8 = v7;

  sub_27237787C();
  sub_27237784C();
  if (v9)
  {
    sub_2721F05C8(v6, v8);

    v10 = sub_2723777FC();

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

@end