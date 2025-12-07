@interface SessionRingsView
- (_TtC9SeymourUI16SessionRingsView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)displayHighlightWithDuration:(double)duration;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation SessionRingsView

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_20B810FC4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B812020();
}

- (_TtC9SeymourUI16SessionRingsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)displayHighlightWithDuration:(double)duration
{
  selfCopy = self;
  sub_20B813C5C(duration);
}

- (void)safeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionRingsView();
  v2 = v5.receiver;
  safeAreaInsetsDidChange = [(SessionRingsView *)&v5 safeAreaInsetsDidChange];
  v4 = sub_20B814BD8(safeAreaInsetsDidChange);
  sub_20B812538(v4);
}

@end