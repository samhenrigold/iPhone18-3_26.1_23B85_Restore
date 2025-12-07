@interface _UISliderColorKnobView
+ (Class)layerClass;
- (_TtC5UIKit22_UISliderColorKnobView)initWithCoder:(id)coder;
- (_TtC5UIKit22_UISliderColorKnobView)initWithFrame:(CGRect)frame;
@end

@implementation _UISliderColorKnobView

+ (Class)layerClass
{
  type metadata accessor for _UISliderColorKnobLayer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKit22_UISliderColorKnobView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UISliderColorKnobView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5UIKit22_UISliderColorKnobView)initWithCoder:(id)coder
{
  type metadata accessor for _UISliderColorKnobView();
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