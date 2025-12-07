@interface GKMultiplayerStepperView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIButton)accessibilityDownButton;
- (UIButton)accessibilityUpButton;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerStepperView

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_24DFFD990(in, width, height);
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = 0.0;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v14;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DFFDC84();
}

- (UIButton)accessibilityDownButton
{
  v2 = sub_24DFFE08C();

  return v2;
}

- (UIButton)accessibilityUpButton
{
  v2 = sub_24DFFE0CC();

  return v2;
}

@end