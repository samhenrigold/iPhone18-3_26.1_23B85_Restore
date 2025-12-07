@interface BaseSmallFriendLockupView
- (BOOL)accessibilityActivate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)didTapAccessoryButton;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BaseSmallFriendLockupView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_24E1E7F6C();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_24E1E7F88(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E1E7FEC(in, width, height);
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
  sub_24E1E80F8();
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  sub_24E1E864C();

  return 1;
}

- (void)didTapAccessoryButton
{
  selfCopy = self;
  sub_24E1E597C();
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E1E5A70();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24E1E5A7C();

  return v2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E1E8748(change);
}

@end