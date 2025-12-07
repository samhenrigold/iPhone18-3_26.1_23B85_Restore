@interface MetadataRibbonEditorsChoiceView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonEditorsChoiceView

- (_TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_id;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_itemType;
  v6 = sub_1007668DC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = self + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  *v7 = 0;
  v7[8] = 1;
  v8 = self + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  *v8 = 0;
  v8[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonEditorsChoiceView_allowsTruncation) = 2;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006A64D4();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  v10 = sub_1006A6794(in, v9, height);
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