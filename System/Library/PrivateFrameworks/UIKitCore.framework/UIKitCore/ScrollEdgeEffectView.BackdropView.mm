@interface ScrollEdgeEffectView.BackdropView
+ (Class)layerClass;
- (NSString)description;
- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithCoder:(id)coder;
- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithFrame:(CGRect)frame;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
@end

@implementation ScrollEdgeEffectView.BackdropView

+ (Class)layerClass
{
  sub_188FF7B1C();

  return swift_getObjCClassFromMetadata();
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
{
  layerCopy = layer;
  selfCopy = self;
  sub_188FF7A70(luma);
}

- (NSString)description
{
  selfCopy = self;
  sub_188FF778C();

  v3 = sub_18A4A7258();

  return v3;
}

- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma;
  *v9 = 0;
  v9[8] = 1;
  _s12BackdropViewCMa();
  v12.receiver = self;
  v12.super_class = v10;
  return [(UIView *)&v12 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithCoder:(id)coder
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma;
  *v6 = 0;
  v6[8] = 1;
  _s12BackdropViewCMa();
  v11.receiver = self;
  v11.super_class = v7;
  coderCopy = coder;
  v9 = [(UIView *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end