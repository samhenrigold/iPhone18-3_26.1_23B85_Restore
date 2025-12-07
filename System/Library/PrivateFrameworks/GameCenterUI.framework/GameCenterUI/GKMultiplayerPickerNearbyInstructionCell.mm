@interface GKMultiplayerPickerNearbyInstructionCell
+ (double)itemHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerPickerNearbyInstructionCell

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerPickerNearbyInstructionCell.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  GKMultiplayerPickerNearbyInstructionCell.measurements(fitting:in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

+ (double)itemHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment
{
  height = fitting.height;
  width = fitting.width;
  swift_getObjCClassMetadata();
  v6 = swift_unknownObjectRetain();
  v7.n128_f64[0] = width;
  static GKMultiplayerPickerNearbyInstructionCell.itemHeight(fitting:in:)(v6, v7, height);
  v9 = v8;
  swift_unknownObjectRelease();
  return v9;
}

@end