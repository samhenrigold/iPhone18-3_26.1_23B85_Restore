@interface OnboardingTrayView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtension18OnboardingTrayView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension18OnboardingTrayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation OnboardingTrayView

- (_TtC20ProductPageExtension18OnboardingTrayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems) = _swiftEmptyArrayStorage;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10071972C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_1007198D8(in, v9, height);
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

- (_TtC20ProductPageExtension18OnboardingTrayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end