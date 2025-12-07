@interface MetadataRibbonView
- (BOOL)hasContent;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension18MetadataRibbonView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension18MetadataRibbonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MetadataRibbonView

- (_TtC22SubscribePageExtension18MetadataRibbonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(MetadataRibbonView *)&v11 initWithFrame:x, y, width, height];
  [(MetadataRibbonView *)height setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  return height;
}

- (_TtC22SubscribePageExtension18MetadataRibbonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  MetadataRibbonView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  MetadataRibbonView.measurements(fitting:in:)(in, width, height);
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
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);

  selfCopy = self;
  v6 = sub_1000F0AA8(0, v4);

  return v6 & 1;
}

@end