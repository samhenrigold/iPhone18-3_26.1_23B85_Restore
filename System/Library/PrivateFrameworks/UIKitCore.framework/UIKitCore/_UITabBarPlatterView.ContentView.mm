@interface _UITabBarPlatterView.ContentView
- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithCoder:(id)coder;
- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithFrame:(CGRect)frame;
@end

@implementation _UITabBarPlatterView.ContentView

- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for _UITabBarPlatterView.ContentView();
  v10.receiver = self;
  v10.super_class = v8;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit20_UITabBarPlatterViewP33_022AA364308030F4627162921FD6D31A11ContentView)initWithCoder:(id)coder
{
  type metadata accessor for _UITabBarPlatterView.ContentView();
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