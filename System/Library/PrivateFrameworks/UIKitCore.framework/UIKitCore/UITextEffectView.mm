@interface UITextEffectView
- (_TtC5UIKit16UITextEffectView)initWithFrame:(CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation UITextEffectView

- (void)didMoveToSuperview
{
  type metadata accessor for UITextEffectView();
  v7.receiver = self;
  v7.super_class = v3;
  selfCopy = self;
  [(UIView *)&v7 didMoveToSuperview];
  v5 = [(UIView *)selfCopy _scroller:v7.receiver];
  if (v5)
  {
    v6 = v5;
    [v5 _addScrollViewScrollObserver_];
  }
}

- (void)didMoveToWindow
{
  selfCopy = self;
  window = [(UIView *)selfCopy window];
  if (window)
  {
  }

  else
  {
    sub_189002A68();
  }
}

- (void)layoutSubviews
{
  type metadata accessor for UITextEffectView();
  v5.receiver = self;
  v5.super_class = v3;
  selfCopy = self;
  [(UIView *)&v5 layoutSubviews];
  sub_18900264C();
}

- (_TtC5UIKit16UITextEffectView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  type metadata accessor for UITextEffectView();
  v8.receiver = self;
  v8.super_class = v5;
  scrollCopy = scroll;
  selfCopy = self;
  [(UIView *)&v8 _observeScrollViewDidScroll:scrollCopy];
  sub_18900264C();
}

@end