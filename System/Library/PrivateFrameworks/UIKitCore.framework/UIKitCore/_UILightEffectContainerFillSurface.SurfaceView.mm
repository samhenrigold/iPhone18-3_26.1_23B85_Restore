@interface _UILightEffectContainerFillSurface.SurfaceView
- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithCoder:(id)coder;
- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UILightEffectContainerFillSurface.SurfaceView

- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UILightEffectContainerFillSurface.SurfaceView();
  v14.receiver = self;
  v14.super_class = v8;
  height = [(UIView *)&v14 initWithFrame:x, y, width, height];
  v10 = objc_opt_self();
  v11 = height;
  whiteColor = [v10 whiteColor];
  [(UIView *)v11 setBackgroundColor:whiteColor];

  return v11;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188DF3218();
}

- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end