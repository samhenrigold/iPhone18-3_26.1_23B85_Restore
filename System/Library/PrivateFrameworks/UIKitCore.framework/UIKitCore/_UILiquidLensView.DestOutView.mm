@interface _UILiquidLensView.DestOutView
- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithCoder:(id)coder;
- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation _UILiquidLensView.DestOutView

- (void)didMoveToWindow
{
  _s11DestOutViewCMa();
  v5.receiver = self;
  v5.super_class = v3;
  selfCopy = self;
  [(UIView *)&v5 didMoveToWindow];
  sub_1891F8BC4();
}

- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation) = 0;
  _s11DestOutViewCMa();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation) = 0;
  _s11DestOutViewCMa();
  v9.receiver = self;
  v9.super_class = v5;
  coderCopy = coder;
  v7 = [(UIView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end