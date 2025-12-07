@interface _UIMorphAnimationContainerView.TransformView
+ (Class)layerClass;
- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithCoder:(id)coder;
- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithFrame:(CGRect)frame;
@end

@implementation _UIMorphAnimationContainerView.TransformView

+ (Class)layerClass
{
  sub_188F2A56C();

  return swift_getObjCClassFromMetadata();
}

- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithCoder:(id)coder
{
  type metadata accessor for _UIMorphAnimationContainerView.TransformView();
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