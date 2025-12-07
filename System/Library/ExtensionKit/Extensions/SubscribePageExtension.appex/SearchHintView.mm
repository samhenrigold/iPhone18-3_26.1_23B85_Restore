@interface SearchHintView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension14SearchHintView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension14SearchHintView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SearchHintView

- (_TtC22SubscribePageExtension14SearchHintView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_isHighlighted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10064FC90();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_100650604(in, width, height);
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

- (_TtC22SubscribePageExtension14SearchHintView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end