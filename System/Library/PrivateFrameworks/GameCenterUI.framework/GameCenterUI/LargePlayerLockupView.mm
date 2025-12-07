@interface LargePlayerLockupView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LargePlayerLockupView

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_24E1F76A0(width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E1F807C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E1F8768(change);
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E1F9088();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24E1F90C8();

  return v2;
}

@end