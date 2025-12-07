@interface SearchHeadingView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore17SearchHeadingView)initWithCoder:(id)coder;
- (void)didPressWithDetailButton:(id)button;
- (void)layoutSubviews;
@end

@implementation SearchHeadingView

- (_TtC8AppStore17SearchHeadingView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics);
  v3[3] = &type metadata for CGFloat;
  v3[4] = &protocol witness table for CGFloat;
  *v3 = 0;
  v3[8] = &type metadata for CGFloat;
  v3[9] = &protocol witness table for CGFloat;
  v3[5] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100444690();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_100444960(in, width, height);
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
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  if (v3)
  {
    v4 = *&self->headingLabel[OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler];
    selfCopy = self;
    v6 = sub_10000827C(v3, v4);
    v3(v6);

    sub_10001F63C(v3, v4);
  }
}

@end