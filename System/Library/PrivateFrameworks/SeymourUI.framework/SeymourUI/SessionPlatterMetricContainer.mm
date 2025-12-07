@interface SessionPlatterMetricContainer
- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithCoder:(id)coder;
- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SessionPlatterMetricContainer

- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SessionPlatterMetricContainer();
  v2 = v7.receiver;
  [(SessionPlatterMetricContainer *)&v7 layoutSubviews];
  v3 = sub_20BD825A8();
  v4 = OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView;
  layer = [*&v2[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView] layer];
  [layer setAnchorPoint_];

  layer2 = [*&v2[v4] layer];
  [layer2 setPosition_];
}

- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end