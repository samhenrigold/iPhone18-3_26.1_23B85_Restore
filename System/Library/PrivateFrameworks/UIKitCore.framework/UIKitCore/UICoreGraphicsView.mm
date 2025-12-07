@interface UICoreGraphicsView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC5UIKit18UICoreGraphicsView)initWithCoder:(id)coder;
- (_TtC5UIKit18UICoreGraphicsView)initWithFrame:(CGRect)frame;
@end

@implementation UICoreGraphicsView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  layer = [(UIView *)selfCopy layer];
  hasBeenCommitted = [(CALayer *)layer hasBeenCommitted];

  if (hasBeenCommitted)
  {
    v8 = type metadata accessor for UICoreGraphicsView();
    v12.receiver = selfCopy;
    v12.super_class = v9;
    v10 = [(UIView *)&v12 _shouldAnimatePropertyWithKey:keyCopy, v8];

    return v10;
  }

  else
  {

    return 0;
  }
}

- (_TtC5UIKit18UICoreGraphicsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for UICoreGraphicsView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5UIKit18UICoreGraphicsView)initWithCoder:(id)coder
{
  type metadata accessor for UICoreGraphicsView();
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