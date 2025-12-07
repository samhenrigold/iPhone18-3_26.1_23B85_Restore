@interface _UIGradientCarouselView
- (_TtC5UIKit23_UIGradientCarouselView)initWithCoder:(id)coder;
- (_TtC5UIKit23_UIGradientCarouselView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIGradientCarouselView

- (_TtC5UIKit23_UIGradientCarouselView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_animationKey);
  *v3 = 0xD000000000000010;
  v3[1] = 0x800000018A6B1330;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  type metadata accessor for _UIGradientCarouselView();
  v9.receiver = self;
  v9.super_class = v3;
  selfCopy = self;
  [(UIView *)&v9 layoutSubviews];
  [(UIView *)selfCopy bounds:v9.receiver];
  v6 = v5;
  [(UIView *)selfCopy bounds];
  if (v6 > v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKit23_UIGradientCarouselView_gradientLayer) setBounds_];
  sub_1891EE638();
}

- (_TtC5UIKit23_UIGradientCarouselView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end