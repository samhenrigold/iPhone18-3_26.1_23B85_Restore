@interface PrimitiveTypedValueResultHostingView
- (BOOL)isSelected;
- (_TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView)initWithArrangedSubviews:(id)subviews;
- (_TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView)initWithFrame:(CGRect)frame;
- (void)setIsSelected:(BOOL)selected;
@end

@implementation PrimitiveTypedValueResultHostingView

- (BOOL)isSelected
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = selectedCopy;
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
  selfCopy = self;
  v9 = v6;
  v7(selectedCopy);
}

- (_TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView)initWithArrangedSubviews:(id)subviews
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end