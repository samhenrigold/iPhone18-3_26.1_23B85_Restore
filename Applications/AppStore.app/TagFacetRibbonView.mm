@interface TagFacetRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC8AppStore18TagFacetRibbonView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation TagFacetRibbonView

- (_TtC8AppStore18TagFacetRibbonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_tagFacetViews) = _swiftEmptyArrayStorage;
  static TagFacetRibbonLayout.Metrics.standard.getter();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_ribbonBarItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsCalculator) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore18TagFacetRibbonView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005ECD7C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_1005ED0D8(in, width, height);
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

- (BOOL)hasContent
{
  type metadata accessor for RibbonBarItemCollectionViewCell(0);
  selfCopy = self;

  v4 = Array.isNotEmpty.getter();

  return v4 & 1;
}

@end