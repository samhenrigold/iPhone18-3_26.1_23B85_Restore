@interface OnboardingTrayView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension18OnboardingTrayView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension18OnboardingTrayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation OnboardingTrayView

- (_TtC22SubscribePageExtension18OnboardingTrayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_itemViewLayoutItems) = _swiftEmptyArrayStorage;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006ECE64();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_1006ED010(in, v9, height);
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

- (_TtC22SubscribePageExtension18OnboardingTrayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end