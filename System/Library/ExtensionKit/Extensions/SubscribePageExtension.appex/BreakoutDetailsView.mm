@interface BreakoutDetailsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension19BreakoutDetailsView)initWithFrame:(CGRect)frame;
- (void)didTapActionButton;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BreakoutDetailsView

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_100593C68(in, selfCopy, width, height);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100593C68(selfCopy, selfCopy, width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100592590();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(BreakoutDetailsView *)&v7 traitCollectionDidChange:changeCopy];
  contentView = [*&v5[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView] contentView];
  sub_10058FB5C();
  sub_1007539A4();
  [contentView setLayoutMargins:?];

  sub_10058EF24();
  sub_100590CD4();
  [v5 setNeedsLayout];
}

- (void)didTapActionButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    v3 = *&self->badgeLabel[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
    selfCopy = self;
    v5 = sub_10001B5AC(v2, v3);
    v2(v5);

    sub_1000164A8(v2, v3);
  }
}

- (_TtC22SubscribePageExtension19BreakoutDetailsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end