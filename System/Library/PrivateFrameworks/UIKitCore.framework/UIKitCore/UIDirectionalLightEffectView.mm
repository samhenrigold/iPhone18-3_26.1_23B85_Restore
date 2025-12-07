@interface UIDirectionalLightEffectView
- (_TtC5UIKit28UIDirectionalLightEffectView)initWithCoder:(id)coder;
- (_TtC5UIKit28UIDirectionalLightEffectView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation UIDirectionalLightEffectView

- (_TtC5UIKit28UIDirectionalLightEffectView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimer;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView__isPaused) = 0;
  v5 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) initWithFrame_];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_idleTimerImpl) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit28UIDirectionalLightEffectView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  type metadata accessor for UIDirectionalLightEffectView();
  v6.receiver = self;
  v6.super_class = v3;
  selfCopy = self;
  [(UIView *)&v6 layoutSubviews];
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView);
  [(UIView *)selfCopy bounds:v6.receiver];
  [v5 setFrame_];
}

- (void)didMoveToSuperview
{
  type metadata accessor for UIDirectionalLightEffectView();
  v5.receiver = self;
  v5.super_class = v3;
  selfCopy = self;
  [(UIView *)&v5 didMoveToSuperview];
  sub_188E8691C();
}

@end