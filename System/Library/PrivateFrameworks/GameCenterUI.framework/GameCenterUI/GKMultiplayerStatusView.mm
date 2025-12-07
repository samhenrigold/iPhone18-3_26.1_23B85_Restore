@interface GKMultiplayerStatusView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityStatusLabel;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerStatusView

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  GKMultiplayerStatusView.measurements(fitting:in:)(in, width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerStatusView.layoutSubviews()();
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityStatusLabel
{
  v2 = sub_24E0C80C4();

  return v2;
}

@end