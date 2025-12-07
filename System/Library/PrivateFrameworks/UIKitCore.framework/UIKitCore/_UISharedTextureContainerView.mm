@interface _UISharedTextureContainerView
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithFrame:(CGRect)frame;
@end

@implementation _UISharedTextureContainerView

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UISharedTextureContainerView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithCoder:(id)coder
{
  type metadata accessor for _UISharedTextureContainerView();
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