@interface SearchTagsRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation SearchTagsRibbonView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004EDC78();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9.n128_f64[0] = width;
  sub_1004EE27C(in, v9, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.var3 = v21;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (BOOL)hasContent
{
  swift_getObjectType();
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);

  selfCopy = self;
  v5 = sub_1000E99EC(v3, 0);

  return v5 & 1;
}

@end