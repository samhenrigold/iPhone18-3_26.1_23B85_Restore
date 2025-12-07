@interface PrivacyCategoryView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension19PrivacyCategoryView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PrivacyCategoryView

- (_TtC22SubscribePageExtension19PrivacyCategoryView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002E97AC();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_1002EA37C(in, v9, height);
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

@end