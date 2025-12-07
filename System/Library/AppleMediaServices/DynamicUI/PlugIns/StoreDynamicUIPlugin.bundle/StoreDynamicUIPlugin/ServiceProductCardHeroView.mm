@interface ServiceProductCardHeroView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
- (void)offerButtonActionWithSender:(id)sender;
- (void)tintColorDidChange;
@end

@implementation ServiceProductCardHeroView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_FFD5C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_FFF88(in);
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

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_100134(v2);
}

- (void)offerButtonActionWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_100494(v5);

  sub_3C04(v5);
}

@end