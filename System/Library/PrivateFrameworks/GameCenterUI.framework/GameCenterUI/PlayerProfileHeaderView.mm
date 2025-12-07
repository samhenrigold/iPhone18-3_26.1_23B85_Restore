@interface PlayerProfileHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityFriendStatusLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlayerProfileHeaderView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E2C92E4(in, width, height);
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
  sub_24E2C985C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E2C9B48(change, v6);
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E2CAB94();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityFriendStatusLabel
{
  v2 = sub_24E2CABD4();

  return v2;
}

@end