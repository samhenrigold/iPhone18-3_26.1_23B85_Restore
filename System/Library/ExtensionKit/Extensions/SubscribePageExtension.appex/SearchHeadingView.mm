@interface SearchHeadingView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension17SearchHeadingView)initWithCoder:(id)coder;
- (void)didPressWithDetailButton:(id)button;
- (void)layoutSubviews;
@end

@implementation SearchHeadingView

- (_TtC22SubscribePageExtension17SearchHeadingView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics);
  v3[3] = &type metadata for CGFloat;
  v3[4] = &protocol witness table for CGFloat;
  *v3 = 0;
  v3[8] = &type metadata for CGFloat;
  v3[9] = &protocol witness table for CGFloat;
  v3[5] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001BBE78();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_1001BC148(in, width, height);
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

- (void)didPressWithDetailButton:(id)button
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  if (v3)
  {
    v4 = *&self->headingLabel[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler];
    selfCopy = self;
    v6 = sub_10001B5AC(v3, v4);
    v3(v6);

    sub_1000164A8(v3, v4);
  }
}

@end