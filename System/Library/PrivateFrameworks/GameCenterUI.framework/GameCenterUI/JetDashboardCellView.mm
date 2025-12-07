@interface JetDashboardCellView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSString)accessibilityLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation JetDashboardCellView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_24E017F7C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_24E019030(in, selfCopy, ObjectType, width, height);
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
  sub_24E0181BC();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_24E018934();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_24E018BB0(v4, v6);
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E018C64();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24E018CA8();

  return v2;
}

@end