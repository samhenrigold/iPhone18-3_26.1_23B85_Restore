@interface UpsellGridView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtension14UpsellGridView)initWithFrame:(CGRect)frame;
- (id)impressionItems;
- (void)layoutSubviews;
@end

@implementation UpsellGridView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005174C8();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_1005185F0(in, v9, height);
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

- (id)impressionItems
{
  sub_10051930C();

  v2.super.isa = sub_1007701AC().super.isa;

  return v2.super.isa;
}

- (_TtC20ProductPageExtension14UpsellGridView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end