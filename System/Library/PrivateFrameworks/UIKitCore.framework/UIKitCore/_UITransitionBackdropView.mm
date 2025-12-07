@interface _UITransitionBackdropView
+ (Class)layerClass;
- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation _UITransitionBackdropView

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1ED48EC00, 0x1E6979310);

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UITransitionBackdropView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithCoder:(id)coder
{
  type metadata accessor for _UITransitionBackdropView();
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