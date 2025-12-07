@interface SearchTagsRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)layoutSubviews;
@end

@implementation SearchTagsRibbonView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000442B4(selfCopy, v2);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000448B8(in, width, height);
  v10 = v9;
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
  swift_getObjectType();
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);

  selfCopy = self;
  v5 = sub_1004849E0(v3, 0);

  return v5 & 1;
}

@end