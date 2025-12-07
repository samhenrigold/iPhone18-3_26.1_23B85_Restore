@interface TagFacetRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtension18TagFacetRibbonView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation TagFacetRibbonView

- (_TtC20ProductPageExtension18TagFacetRibbonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews) = _swiftEmptyArrayStorage;
  sub_100765A7C();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsCalculator) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10026823C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_100268598(in, v9, height);
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

- (BOOL)hasContent
{
  type metadata accessor for RibbonBarItemCollectionViewCell(0);
  selfCopy = self;

  v4 = sub_1007701EC();

  return v4 & 1;
}

@end