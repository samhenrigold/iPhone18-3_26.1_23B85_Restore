@interface NTKGladiusStretchySecondHandData
- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)init;
- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)initWithDevice:(id)device;
- (double)sampleAtAngle:(double)angle includeBaseRadius:(BOOL)radius;
@end

@implementation NTKGladiusStretchySecondHandData

- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)initWithDevice:(id)device
{
  deviceCopy = device;
  v4 = sub_11F90(deviceCopy);

  return v4;
}

- (double)sampleAtAngle:(double)angle includeBaseRadius:(BOOL)radius
{
  selfCopy = self;
  sub_11C08(angle);
  v7 = v6;

  return v7;
}

- (_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end