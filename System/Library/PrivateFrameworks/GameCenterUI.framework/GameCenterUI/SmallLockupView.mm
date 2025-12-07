@interface SmallLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIEdgeInsets)layoutMargins;
- (_TtC12GameCenterUI11ArtworkView)accessibilityArtworkView;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel;
- (void)layoutSubviews;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
@end

@implementation SmallLockupView

- (UIEdgeInsets)layoutMargins
{
  selfCopy = self;
  v3 = sub_24E034940(selfCopy);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  selfCopy = self;
  sub_24E034A0C();
}

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
  v9 = sub_24E034AAC(in, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E034C54();
}

- (_TtC12GameCenterUI11ArtworkView)accessibilityArtworkView
{
  v2 = sub_24E035A70();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityTitleLabel
{
  v2 = sub_24E035AB0();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24E035AF0();

  return v2;
}

@end