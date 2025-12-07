@interface UIRBDirectionalLightEffectView
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)update:(id)update;
@end

@implementation UIRBDirectionalLightEffectView

- (void)layoutSubviews
{
  type metadata accessor for UIRBDirectionalLightEffectView();
  v6.receiver = self;
  v6.super_class = v3;
  selfCopy = self;
  [(UIView *)&v6 layoutSubviews];
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView);
  [(UIView *)selfCopy bounds:v6.receiver];
  [v5 setFrame_];
  sub_189230C30();
}

- (void)update:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_189230D80(updateCopy);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_189230FA4();
}

@end