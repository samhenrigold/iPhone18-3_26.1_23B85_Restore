@interface BreakoutDetailsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore19BreakoutDetailsView)initWithFrame:(CGRect)frame;
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
  v9 = sub_10014D6EC(in, selfCopy, width, height);
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
  v6 = sub_10014D6EC(selfCopy, selfCopy, width, height);
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
  sub_10014BE4C(selfCopy, v2);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(BreakoutDetailsView *)&v7 traitCollectionDidChange:changeCopy];
  contentView = [*&v5[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView] contentView];
  sub_100149418();
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  [contentView setLayoutMargins:?];

  sub_1001487E0();
  sub_10014A590();
  [v5 setNeedsLayout];
}

- (void)didTapActionButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    v3 = *&self->badgeLabel[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
    selfCopy = self;
    v5 = sub_10000827C(v2, v3);
    v2(v5);

    sub_10001F63C(v2, v3);
  }
}

- (_TtC8AppStore19BreakoutDetailsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end